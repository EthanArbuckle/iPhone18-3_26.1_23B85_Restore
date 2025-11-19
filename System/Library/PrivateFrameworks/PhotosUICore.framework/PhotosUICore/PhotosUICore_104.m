uint64_t sub_1A49A4040(uint64_t a1)
{
  sub_1A3C2F0BC(a1, &v15);
  sub_1A49A5D54();
  if (!swift_dynamicCast())
  {
LABEL_18:
    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  v2 = v12;
  v3 = *(v12 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers;
    v6 = v12 + 32;
    while (v4 < *(v2 + 16))
    {
      *&v12 = v4;
      sub_1A3C2F0BC(v6, &v12 + 8);
      v15 = v12;
      v16 = v13;
      v17 = v14;
      if (!v14)
      {
      }

      v11 = v12;
      sub_1A3C57128((&v15 + 8), &v12);
      v7 = *(v1 + v5);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1A59097F0](v11);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v7 + 8 * v11 + 32);
      }

      v9 = v8;
      ++v4;
      __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
      [v9 resumeChangeDeliveryAndBackgroundLoading_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(&v12);
      v6 += 32;
      if (v3 == v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
}

void sub_1A49A4284(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = sub_1A49A5AA4();
    [v2 setDataSource:v3 changeDetails:0];
  }
}

void sub_1A49A4354(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v7 >> 62)
  {
    v8 = sub_1A524E2B4();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 >= 1)
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1A59097F0](v9, v7);
        if (!a3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v11 = *(v7 + 8 * v9 + 32);
        if (!a3)
        {
LABEL_11:
          v10 = 0;
          goto LABEL_6;
        }
      }

      v10 = sub_1A524CF34();
LABEL_6:
      ++v9;
      [v11 setCurationEnabledForAllCollections:a1 & 1 curationLength:a2 collectionsToDiff:v10];

      if (v8 == v9)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1A49A4508()
{
  v1 = *(v0 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v1 >> 62)
  {
    v2 = sub_1A524E2B4();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1A59097F0](v4, v1);
        if (v3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
        if (v3)
        {
LABEL_11:
          v3 = 1;
          goto LABEL_6;
        }
      }

      v3 = [v5 forceAccurateAllSectionsIfNeeded];
LABEL_6:
      ++v4;

      if (v2 == v4)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1A49A4640(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers];
  if (v4 >> 62)
  {
    v9 = a1;
    v5 = sub_1A524E2B4();
    a1 = v9;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = a1;
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1A59097F0](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      [v7 *a3];
    }
  }
}

uint64_t sub_1A49A4BC4()
{
  v1 = *(v0 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v1 >> 62)
  {
    result = sub_1A524E2B4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1A59097F0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = [v3 sortDescriptors];

  if (!v5)
  {
    return 0;
  }

  sub_1A3C52C70(0, &qword_1EB126B60);
  v6 = sub_1A524CA34();

  return v6;
}

BOOL sub_1A49A4D68(SEL *a1)
{
  v3 = *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v3 >> 62)
  {
LABEL_15:
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1A59097F0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v9 = [v7 *a1];

    v5 = v6 + 1;
  }

  while (!v9);
  return v4 != v6;
}

void sub_1A49A4F64(char a1, SEL *a2)
{
  v5 = *(v2 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v5 >> 62)
  {
    v6 = sub_1A524E2B4();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1A59097F0](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 *a2];
    }
  }
}

void sub_1A49A5030(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v5 >> 62)
  {
    v6 = sub_1A524E2B4();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 >= 1)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A59097F0](v7, v5);
        if (!a2)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
        if (!a2)
        {
LABEL_11:
          v8 = 0;
          goto LABEL_6;
        }
      }

      v8 = sub_1A524CF34();
LABEL_6:
      ++v7;
      [v9 setFilterPredicate:a1 provideIncrementalChangeDetailsForAssetCollections:v8];

      if (v6 == v7)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1A49A51D4(char a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v5 >> 62)
  {
    v6 = sub_1A524E2B4();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 >= 1)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A59097F0](v7, v5);
        if (!a2)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
        if (!a2)
        {
LABEL_11:
          v8 = 0;
          goto LABEL_6;
        }
      }

      v8 = sub_1A524CF34();
LABEL_6:
      ++v7;
      [v9 setIncludeOthersInSocialGroupAssets:a1 & 1 provideIncrementalChangeDetailsForAssetCollections:v8];

      if (v6 == v7)
      {
        return;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1A49A5378(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = result;
  v9 = *(result + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v9 >> 62)
  {
    result = sub_1A524E2B4();
    v10 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return result;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    v11 = v8;
    for (i = 0; i != v10; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1A59097F0](i, v9);
      }

      else
      {
        v13 = *(v9 + 8 * i + 32);
      }

      v14 = v13;
      [v13 *a5];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A49A549C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v3 >> 62)
  {
    v4 = sub_1A524E2B4();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1A59097F0](v5, v3);
        if (!a1)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
        if (!a1)
        {
LABEL_11:
          v6 = 0;
          goto LABEL_6;
        }
      }

      v6 = sub_1A524CF34();
LABEL_6:
      ++v5;
      [v7 setAllowedUUIDs_];

      if (v4 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1A49A562C()
{
  v1 = *(v0 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v1 >> 62)
  {
    v2 = sub_1A524E2B4();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1A59097F0](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      sub_1A4892848();
      v6 = sub_1A524C3D4();
      sub_1A3FC306C(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v7 = sub_1A524C3D4();
      sub_1A3C5D0E8(0, &qword_1EB120790);
      v8 = sub_1A524CA14();
      [v5 setAllowedUUIDs:v6 manualOrderUUIDs:v7 forAssetCollections:v8];
    }

    while (v2 != v3);
  }
}

void sub_1A49A58D8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v4 >> 62)
  {
    v5 = sub_1A524E2B4();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1A59097F0](v6, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = sub_1A524CF34();
      if (a2)
      {
        v7 = sub_1A524CF34();
      }

      else
      {
        v7 = 0;
      }

      ++v6;
      [v9 setAllowedUUIDs:v10 provideIncrementalChangeDetailsForAssetCollections:v7];
    }

    while (v5 != v6);
  }
}

id sub_1A49A5AA4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v2 >> 62)
  {
    if (sub_1A524E2B4() >= 1)
    {
      v10 = sub_1A524E2B4();
      v8 = MEMORY[0x1E69E7CC0];
      if (!v10)
      {
LABEL_10:
        type metadata accessor for ConcatenatingAssetsDataSource();
        return ConcatenatingAssetsDataSource.__allocating_init(underlyingDataSources:mode:)(v8, *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_mode));
      }

      v3 = v10;
      v12 = MEMORY[0x1E69E7CC0];
      sub_1A524E554();
      if ((v3 & 0x8000000000000000) == 0)
      {
LABEL_4:
        v4 = 0;
        do
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x1A59097F0](v4, v2);
          }

          else
          {
            v5 = *(v2 + 8 * v4 + 32);
          }

          v6 = v5;
          ++v4;
          v7 = [v5 dataSource];

          sub_1A524E514();
          sub_1A524E564();
          sub_1A524E574();
          sub_1A524E524();
        }

        while (v3 != v4);
        v8 = v12;
        goto LABEL_10;
      }

      __break(1u);
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      v12 = MEMORY[0x1E69E7CC0];
      sub_1A524E554();
      goto LABEL_4;
    }
  }

  sub_1A3C52C70(0, &qword_1EB126A20);
  v11 = [swift_getObjCClassFromMetadata() emptyDataSource];

  return v11;
}

id ConcatenatingAssetsDataSourceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConcatenatingAssetsDataSourceManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConcatenatingAssetsDataSourceManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A49A5D54()
{
  if (!qword_1EB1467D0)
  {
    sub_1A3FC306C(255, &unk_1EB12C320, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
    sub_1A49A5DE0();
    v0 = sub_1A524E734();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1467D0);
    }
  }
}

unint64_t sub_1A49A5DE0()
{
  result = qword_1EB1467E0;
  if (!qword_1EB1467E0)
  {
    sub_1A3FC306C(255, &unk_1EB12C320, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1467E0);
  }

  return result;
}

void sub_1A49A5E60(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v3 >> 62)
  {
    v4 = sub_1A524E2B4();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1A59097F0](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      [v6 setFilterPredicate_];
    }
  }
}

void sub_1A49A5F2C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v3 >> 62)
  {
    v4 = sub_1A524E2B4();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1A59097F0](v5, v3);
        if (a1)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
        if (a1)
        {
LABEL_10:
          sub_1A3C52C70(0, &qword_1EB126B60);
          v8 = v7;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      v6 = v7;
      ++v5;
      [v7 setSortDescriptors_];

      if (v4 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1A49A60C8()
{
  v0 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v0);
  sub_1A524C174();
}

void sub_1A49A6550()
{
  if (!qword_1EB1468B8)
  {
    sub_1A43F465C();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1468B8);
    }
  }
}

void sub_1A49A66D4()
{
  v1 = [*v0 viewModel];
  v3[4] = sub_1A49A65A8;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1A3D7692C;
  v3[3] = &block_descriptor_3_13;
  v2 = _Block_copy(v3);
  [v1 performChanges_];
  _Block_release(v2);
}

uint64_t sub_1A49A67B8()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49A6B00(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadePeopleHomeView(0);
  sub_1A49B13D8(v0 + *(v11 + 64), v7, &qword_1EB128A80, sub_1A3D63A58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A49AFC64(v7, v10, sub_1A3D63A58);
  }

  else
  {
    sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  sub_1A49A6D7C(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  if ((*(*(v13 - 8) + 48))(v10, 1, v13) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A49AFC04(v10, sub_1A3D63A58);
  return 0;
}

void sub_1A49A6B00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49A6B64@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49A6B00(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A49B13D8(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

void sub_1A49A6D7C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A49A6DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1A524B694();
  *(a5 + 32) = v26;
  *(a5 + 40) = *(&v26 + 1);
  v10 = type metadata accessor for LemonadePeopleHomeView(0);
  v11 = v10[15];
  *(a5 + v11) = swift_getKeyPath();
  v12 = MEMORY[0x1E697DCB8];
  sub_1A49A6B00(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v13 = v10[16];
  *(a5 + v13) = swift_getKeyPath();
  sub_1A49A6B00(0, &qword_1EB128A80, sub_1A3D63A58, v12);
  swift_storeEnumTagMultiPayload();
  v14 = v10[17];
  *(a5 + v14) = swift_getKeyPath();
  sub_1A49A6B00(0, &qword_1EB128A90, MEMORY[0x1E69C2948], v12);
  swift_storeEnumTagMultiPayload();
  v15 = a5 + v10[18];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a5 + v10[19];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a5 + v10[20];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a5 + v10[21];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a5 + v10[22];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  v20 = v10[23];
  sub_1A440B51C(0);
  sub_1A524B694();
  *(a5 + v20) = v26;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  v21 = *(a1 + 16);
  *(swift_allocObject() + 16) = v21;
  type metadata accessor for LegacyPersonSuggestionBannerModel(0);
  v22 = v21;

  sub_1A5247C74();
  sub_1A49AEA74(0, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
  sub_1A5247C74();
  type metadata accessor for LemonadePeopleHomeView.SelectionState(0);
  sub_1A5247C74();
  sub_1A49A6D7C(0, &qword_1EB129FC0, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListManager);

  sub_1A5247C74();
  *(swift_allocObject() + 16) = v22;
  type metadata accessor for PhotoKitSocialGroupActionManager();
  v23 = v22;
  sub_1A5247C74();
  *(swift_allocObject() + 16) = v23;
  type metadata accessor for LemonadePeopleProgressStatus();
  v24 = v23;
  sub_1A5247C74();
  sub_1A5246F24();
  sub_1A5247C74();
  sub_1A49A6B00(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A3F54B78();
}

uint64_t sub_1A49A72EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for LegacyPersonSuggestionBannerModel(0);
  result = sub_1A3F283BC(v3);
  *a1 = result;
  return result;
}

uint64_t sub_1A49A7330@<X0>(uint64_t *a1@<X8>)
{
  sub_1A49AEA74(0, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
  swift_allocObject();
  result = sub_1A5242844();
  *a1 = result;
  return result;
}

uint64_t sub_1A49A739C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LemonadePeopleHomeView.SelectionState(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = sub_1A5241604();
  *a1 = v2;
  return result;
}

uint64_t sub_1A49A73EC()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_1A5241604();
  return v0;
}

uint64_t sub_1A49A7434@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeSocialGroupSectionProvider(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(a1 + 40);
  v9 = v8;
  sub_1A4965B64(v7, v8, 0, 0, 1, v6);
  v10 = sub_1A49AEAC8(&qword_1EB145E00, type metadata accessor for LemonadeSocialGroupSectionProvider);
  v11 = sub_1A3C66934(v6, v4, v10);
  result = sub_1A49AFC04(v6, type metadata accessor for LemonadeSocialGroupSectionProvider);
  *a2 = v11;
  return result;
}

id sub_1A49A7550@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for PhotoKitSocialGroupActionManager();
  v4 = v3;
  result = sub_1A4680978(MEMORY[0x1E69E7CC0], v4);
  *a1 = result;
  return result;
}

void sub_1A49A75BC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  type metadata accessor for LemonadePeopleHomeView(0);
  sub_1A49A6B00(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  v3 = v2;
  sub_1A5247C84();
  if (sub_1A3F546F4() == 4)
  {
    [*(v1 + 24) viewMode];
  }

  sub_1A49AF2F0(0, &qword_1EB1468C0, MEMORY[0x1E697DA80]);
  v4 = sub_1A5247C84();
  (*(*v5 + 280))(v4);
  sub_1A49A6D7C(0, &qword_1EB1365E0, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListImplementation);
  sub_1A427202C();
  sub_1A5246484();
}

void sub_1A49A77E8(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v74 = a4;
  v59 = a5;
  v56 = type metadata accessor for LemonadePeoplePlaceholderView(0);
  v55[37] = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55[36] = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AF1D8(0);
  v55[35] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v58 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55[34] = v55 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v57 = v55 - v14;
  sub_1A3E7CAB0();
  v55[33] = v15;
  v55[32] = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v55[31] = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A5249234();
  v62 = *(v17 - 8);
  v63 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v61 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for LemonadePeopleHomeView(0);
  v19 = *(v75 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v21 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE5A4();
  v66 = *(v22 - 8);
  v67 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v55[5] = v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE57C(0);
  v65 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v55[2] = v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE4DC();
  v55[13] = v26;
  v55[11] = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v55[1] = v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE414(0);
  v55[7] = v28;
  MEMORY[0x1EEE9AC00](v28);
  v55[8] = v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE444(0, &qword_1EB146920, sub_1A49AE414, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
  v55[6] = v30;
  MEMORY[0x1EEE9AC00](v30);
  v55[10] = v55 - v31;
  sub_1A49AE388();
  v55[9] = v32;
  MEMORY[0x1EEE9AC00](v32);
  v55[14] = v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE360(0);
  v64 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v55[12] = v55 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE25C();
  v55[19] = v36;
  v55[16] = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v55[15] = v55 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE120();
  v55[20] = v38;
  v55[18] = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v55[17] = v55 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49ADFB4();
  v55[23] = v40;
  v55[22] = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v55[21] = v55 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49ADD88();
  v60 = v42;
  v55[24] = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v71 = v55 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49ADAE0();
  v55[26] = v44;
  v55[25] = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v72 = v55 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AD804();
  v55[30] = v46;
  v55[29] = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v55[28] = v55 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v55[27] = v55 - v49;
  v55[0] = a1;
  sub_1A49B08D4(a1, v21, type metadata accessor for LemonadePeopleHomeView);
  v50 = *(v19 + 80);
  v51 = (v50 + 16) & ~v50;
  v52 = v51 + v20;
  v53 = ((v51 + v20) & 0xFFFFFFFFFFFFFFF8) + 8;
  v55[3] = (v51 + v20) & 0xFFFFFFFFFFFFFFF8;
  v69 = v50;
  v54 = swift_allocObject();
  v70 = v51;
  v73 = v21;
  sub_1A49AFC64(v21, v54 + v51, type metadata accessor for LemonadePeopleHomeView);
  v68 = v52;
  *(v54 + v52) = a2;
  v55[4] = v53;
  *(v54 + v53) = a3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49A90F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v66 = a4;
  v65 = a3;
  v77 = a1;
  v73 = a5;
  v70 = sub_1A5242D14();
  v6 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v60 - v9;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE804();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE7DC(0);
  v67 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE7AC(0);
  v69 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AEFD4(0, &qword_1EB146950, sub_1A49AE7AC, sub_1A49AEB10);
  v75 = *(v22 - 8);
  v76 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v74 = &v60 - v23;
  v24 = type metadata accessor for LemonadePeopleHomeView(0);
  v25 = a2 + *(v24 + 88);
  v26 = *(v25 + 8);
  if ((*(v25 + 32) & 1) == 0)
  {
    v64 = v24;
    v27 = v11;
    v28 = *v25;
    v30 = *(v25 + 16);
    v29 = *(v25 + 24);
    v63 = v30;
    v62 = v29;

    sub_1A524D254();
    v31 = sub_1A524A014();
    v61 = v10;
    v32 = a2;
    v33 = v31;
    sub_1A5246DF4();

    a2 = v32;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3F1D444(v28, v26, v63, v62, 0);
    (*(v27 + 8))(v13, v61);
    v26 = v80[1];
  }

  *v16 = sub_1A5249574();
  *(v16 + 1) = v26;
  v16[16] = 0;
  sub_1A49B136C(0, &unk_1EB146A98, sub_1A49AE898);
  sub_1A49A97E0(a2, v65 & 1, v66, &v16[*(v34 + 44)]);
  v35 = sub_1A524A074();
  v36 = v71;
  sub_1A49A6B64(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v71);
  v37 = v72;
  v38 = v70;
  (*(v6 + 104))(v72, *MEMORY[0x1E69C2210], v70);
  sub_1A5242D04();
  v39 = *(v6 + 8);
  v39(v37, v38);
  v39(v36, v38);
  sub_1A5247BC4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v68;
  sub_1A49AFE20(v16, v68, sub_1A49AE804);
  v49 = v48 + *(v67 + 36);
  *v49 = v35;
  *(v49 + 8) = v41;
  *(v49 + 16) = v43;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = 0;
  KeyPath = swift_getKeyPath();
  sub_1A49AFE20(v48, v21, sub_1A49AE7DC);
  v51 = v69;
  v52 = &v21[*(v69 + 36)];
  *v52 = KeyPath;
  v52[8] = 2;
  v53 = sub_1A49AEB10();
  v54 = v74;
  v55 = v77;
  sub_1A524A5E4();
  sub_1A49B084C(v21, sub_1A49AE7AC);
  v56 = *(a2 + 24);
  v80[3] = type metadata accessor for LemonadeNavigationContext(0);
  v80[4] = sub_1A49AEAC8(&qword_1EB125720, type metadata accessor for LemonadeNavigationContext);
  v80[0] = v56;

  v78 = v51;
  v79 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = v76;
  sub_1A458C30C(v55, v80, v76, OpaqueTypeConformance2);
  (*(v75 + 8))(v54, v58);
  return __swift_destroy_boxed_opaque_existential_0(v80);
}

uint64_t sub_1A49A97E0@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a3;
  v88 = a2;
  v92 = a4;
  v5 = type metadata accessor for LemonadePeopleHomePeopleSection();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v77 - v8;
  v9 = sub_1A5249234();
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadePeopleHomeGroupSection();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v90 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v77 - v14;
  v15 = sub_1A5244084();
  v86 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PersonSuggestionBanner.Style(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PersonSuggestionBanner(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A49AE9C0();
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AE98C(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v87 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v33 = *a1;
  v34 = *(*a1 + 40);
  v94 = &v77 - v35;
  if (!v34)
  {
    v77 = v20;
    v78 = v28;
    v79 = v21;
    v80 = v23;
    v81 = v17;
    v82 = v15;
    type metadata accessor for LemonadePeopleHomeView(0);
    sub_1A49A6B00(0, &qword_1EB146A68, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E697DA80]);
    v36 = sub_1A5247C84();
    v37 = (*(*v96 + 304))(v36);

    if (v37)
    {
      swift_unknownObjectRelease();
      v38 = sub_1A5247C84();
      v39 = (*(*v96 + 232))(v38);

      if ((v39 & 1) == 0)
      {
        sub_1A5247CA4();
        v40 = v96;
        v41 = v97;
        v42 = v98;
        v43 = sub_1A4001618();
        v44 = v77;
        sub_1A49B08D4(v43, v77, type metadata accessor for PersonSuggestionBanner.Style);
        v45 = sub_1A4000F0C();
        v46 = v80;
        sub_1A4000F28(v40, v41, v42, v44, v45, v47, v80);
        v48 = v81;
        sub_1A49A6B64(&qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E69C2948], v81);
        sub_1A49AEAC8(&qword_1EB12F5A0, type metadata accessor for PersonSuggestionBanner);
        v49 = v78;
        sub_1A524A784();
        (*(v86 + 8))(v48, v82);
        sub_1A49AFC04(v46, type metadata accessor for PersonSuggestionBanner);
        (*(v26 + 32))(v94, v49, v25);
      }
    }
  }

  (*(v26 + 56))(v32);
  v50 = *(v33 + 40);
  v51 = *(a1 + 32);
  v52 = *(a1 + 40);
  LOBYTE(v96) = v51;
  v97 = v52;
  sub_1A49B131C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  LODWORD(v86) = v99;
  v53 = a1;
  v54 = a1 + *(type metadata accessor for LemonadePeopleHomeView(0) + 80);
  v55 = *v54;
  if (*(v54 + 8) != 1)
  {

    sub_1A524D254();
    v56 = sub_1A524A014();
    sub_1A5246DF4();

    v57 = v83;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v55, 0);
    (*(v84 + 8))(v57, v85);
    LOBYTE(v55) = v96;
  }

  v58 = *(v53 + 24);
  sub_1A49AF264(0, &qword_1EB13A288, MEMORY[0x1E697DA80]);

  sub_1A5247C84();
  v59 = v96;

  v60 = v55 & 1;
  v61 = v95;
  sub_1A49FB088(v50 != 0, v86, v60, v88 & 1, v58, v33, v59, v95);
  v62 = *(v33 + 40) != 0;
  LOBYTE(v96) = v51;
  v97 = v52;
  sub_1A524B6A4();
  LOBYTE(v59) = v99;
  v63 = *(v33 + 40);
  v64 = v63;
  v65 = v89;
  v66 = v91;
  sub_1A455984C(v62, v59, v65, v58, v63, v91);
  v67 = sub_1A5249574();
  v68 = v94;
  v69 = v87;
  sub_1A3D2F380(v94, v87);
  v70 = v90;
  sub_1A49B08D4(v61, v90, type metadata accessor for LemonadePeopleHomeGroupSection);
  v71 = v93;
  sub_1A49B08D4(v66, v93, type metadata accessor for LemonadePeopleHomePeopleSection);
  v72 = v92;
  sub_1A3D2F380(v69, v92);
  sub_1A49AE8CC();
  v74 = v73;
  sub_1A49B08D4(v70, v72 + *(v73 + 48), type metadata accessor for LemonadePeopleHomeGroupSection);
  sub_1A49B08D4(v71, v72 + *(v74 + 64), type metadata accessor for LemonadePeopleHomePeopleSection);
  v75 = v72 + *(v74 + 80);
  *v75 = v67;
  *(v75 + 8) = 0x4034000000000000;
  *(v75 + 16) = 0;
  *(v75 + 24) = 0;
  *(v75 + 32) = 1;
  sub_1A49AFC04(v66, type metadata accessor for LemonadePeopleHomePeopleSection);
  sub_1A49AFC04(v95, type metadata accessor for LemonadePeopleHomeGroupSection);
  sub_1A49B084C(v68, sub_1A49AE98C);
  sub_1A49AFC04(v71, type metadata accessor for LemonadePeopleHomePeopleSection);
  sub_1A49AFC04(v70, type metadata accessor for LemonadePeopleHomeGroupSection);
  return sub_1A49B084C(v69, sub_1A49AE98C);
}

uint64_t sub_1A49AA160(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AA37C();
  v6 = *(a1 + *(type metadata accessor for LemonadePeopleHomeView(0) + 76) + 8);

  if ((v6 & 1) == 0)
  {
    sub_1A524D254();
    v7 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A49B131C(0, &qword_1EB1261A8, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1A52FC9F0;
  strcpy(v9, "social-groups");
  HIWORD(v9[1]) = -4864;
  sub_1A524E384();
  v9[0] = 0x656C706F6570;
  v9[1] = 0xE600000000000000;
  sub_1A524E384();
  sub_1A5242FA4();
}

uint64_t sub_1A49AA37C()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for LemonadePeopleHomeView(0) + 84) + 8);

  if ((v5 & 1) == 0)
  {
    sub_1A524D254();
    v6 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v11 = v1;
  v7 = *(*(*(v0 + 24) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  v8._object = 0x80000001A53F5E40;
  v8._countAndFlagsBits = 0xD000000000000017;
  LemonadeLocalizedPeopleAndPetsTitle(for:key:)(v7, v8);

  sub_1A5243DE4();

  if ((v5 & 1) == 0)
  {
    sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v11);
  }

  sub_1A49A6B00(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A3F546F4();

  sub_1A5243DF4();
}

void sub_1A49AA644(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(a1 + *(type metadata accessor for LemonadePeopleHomeView(0) + 76) + 8);

  if ((v6 & 1) == 0)
  {
    sub_1A524D254();
    v7 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5242FA4();

  v8 = *(a1 + 40);
  v9[16] = *(a1 + 32);
  v10 = v8;
  sub_1A49B131C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v9[15] == 1)
  {
    sub_1A49AA80C();
  }
}

void sub_1A49AA80C()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  LOBYTE(aBlock) = *(v0 + 32);
  v14 = v5;
  v19 = 0;
  sub_1A49B131C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v6 = *(v0 + *(type metadata accessor for LemonadePeopleHomeView(0) + 72) + 8);

  if ((v6 & 1) == 0)
  {
    sub_1A524D254();
    v7 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  sub_1A52441E4();

  v8 = sub_1A49A67B8();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 px_barAppearance];
    v17 = sub_1A49AD710;
    v18 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1A421179C;
    v16 = &block_descriptor_87_7;
    v11 = _Block_copy(&aBlock);
    [v10 performChangesWithAnimationOptions:0 changes:v11];

    _Block_release(v11);
  }
}

uint64_t sub_1A49AAA74()
{
  sub_1A3C52C70(0, &qword_1EB126A10);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  if ([v0 forceHideProcessingUI])
  {
    v1 = 0;
  }

  else if (sub_1A3F541D4())
  {
    v1 = 1;
  }

  else
  {
    v1 = [v0 forceShowProcessingUI];
  }

  return v1;
}

uint64_t sub_1A49AAB0C@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  v67 = a3;
  sub_1A49AF0C8();
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AF094(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LemonadePeopleHomeView(0);
  v66 = *(v14 - 8);
  v15 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = type metadata accessor for LemonadePeopleHomeNavigationBar();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v71 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49AF060(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v70 = &v55 - v23;
  if (*(*a1 + 40) || (a2 & 1) != 0)
  {
    v51 = v21;
    (*(v11 + 56))(v21, 1, 1, v10, v22);
    v52 = sub_1A49AEAC8(&qword_1EB146A10, sub_1A49AF094);
    v48 = v70;
    MEMORY[0x1A5904D00](v51, v10, v52);
    v49 = sub_1A49AF060;
    v50 = v51;
  }

  else
  {
    v61 = *(a1 + 32);
    v60 = *(a1 + 40);
    LOBYTE(v73[0]) = v61;
    *(&v73[0] + 1) = v60;
    v65 = v21;
    sub_1A49B131C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    v59 = v24;
    sub_1A524B6A4();
    v56 = v75;
    v58 = v14;
    v57 = MEMORY[0x1E697DA80];
    sub_1A49A6B00(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
    v64 = v13;
    v55 = v67;
    sub_1A5247C84();
    v25 = *&v73[0];
    sub_1A49B08D4(a1, &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeView);
    v63 = v10;
    v26 = *(v66 + 80);
    v66 = v19;
    v27 = (v26 + 16) & ~v26;
    v28 = swift_allocObject();
    v67 = a4;
    v29 = v28;
    sub_1A49AFC64(&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for LemonadePeopleHomeView);
    sub_1A49B08D4(a1, &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeView);
    v30 = swift_allocObject();
    v62 = v11;
    v31 = v30;
    sub_1A49AFC64(&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v27, type metadata accessor for LemonadePeopleHomeView);
    sub_1A48C0180(v56, v55, v25, sub_1A49B093C, v29, sub_1A49B0AE4, v31, v71);
    LOBYTE(v73[0]) = v61;
    *(&v73[0] + 1) = v60;
    sub_1A524B6A4();
    v61 = v75;
    sub_1A49A6B00(0, &qword_1EB146A70, type metadata accessor for LemonadePeopleHomeView.SelectionState, v57);
    sub_1A5247C84();
    v32 = *&v73[0];
    sub_1A49B08D4(a1, &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeView);
    v33 = swift_allocObject();
    sub_1A49AFC64(&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v27, type metadata accessor for LemonadePeopleHomeView);
    sub_1A49B08D4(a1, &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeView);
    v34 = swift_allocObject();
    sub_1A49AFC64(&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v27, type metadata accessor for LemonadePeopleHomeView);
    sub_1A49B08D4(a1, &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeView);
    v35 = swift_allocObject();
    v36 = v35 + v27;
    v19 = v66;
    sub_1A49AFC64(&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v36, type metadata accessor for LemonadePeopleHomeView);
    sub_1A4311908(v61, v32, sub_1A49B0AFC, v33, sub_1A49B0B58, v34, sub_1A49B1464, v35, v73);
    v37 = (v68 + *(v69 + 48));
    sub_1A49B08D4(v71, v68, type metadata accessor for LemonadePeopleHomeNavigationBar);
    v75 = *&v74[16];
    v76 = v74[24];
    v38 = v73[1];
    v39 = *v74;
    v37[2] = v73[2];
    v37[3] = v39;
    *(v37 + 57) = *&v74[9];
    *v37 = v73[0];
    v37[1] = v38;

    sub_1A49B08D4(&v75, v72, sub_1A430FE90);
    v40 = v64;
    sub_1A52495D4();
    v41 = v62;
    v42 = v65;
    v43 = v40;
    v44 = v40;
    v45 = v63;
    (*(v62 + 16))(v65, v43, v63);
    v46 = v41;
    (*(v41 + 56))(v42, 0, 1, v45);
    v47 = sub_1A49AEAC8(&qword_1EB146A10, sub_1A49AF094);
    v48 = v70;
    MEMORY[0x1A5904D00](v42, v45, v47);

    sub_1A49AFC04(&v75, sub_1A430FE90);
    sub_1A49AFC04(v42, sub_1A49AF060);
    (*(v46 + 8))(v44, v45);
    v49 = type metadata accessor for LemonadePeopleHomeNavigationBar;
    v50 = v71;
  }

  sub_1A49AFC04(v50, v49);
  v53 = sub_1A49AF130();
  MEMORY[0x1A5904CD0](v48, v19, v53);
  return sub_1A49AFC04(v48, sub_1A49AF060);
}

void sub_1A49AB3A4()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadePeopleHomeView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v14 - v6;
  v14[5] = sub_1A49AB9A0();
  v8 = *(*v0 + 16);
  sub_1A49AF2F0(0, &qword_1EB1468C0, MEMORY[0x1E697DA80]);
  v14[4] = v8;
  sub_1A5247C84();
  v9 = aBlock;
  sub_1A49AF264(0, &qword_1EB13A288, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v10 = aBlock;
  sub_1A49A67B8();
  sub_1A49A6B00(0, &qword_1EB146A20, type metadata accessor for PhotoKitSocialGroupActionManager, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A49B08D4(v1, v7, type metadata accessor for LemonadePeopleHomeView);
  sub_1A49B08D4(v7, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomeView);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1A49AFC64(v7, v12 + v11, type metadata accessor for LemonadePeopleHomeView);
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;

  PXPresentationEnvironmentForSender();
}

id sub_1A49AB9A0()
{
  sub_1A3E7CAB0();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for LemonadePeopleHomeView(0) + 72);
  v30 = v0;
  v11 = *(v0 + v10 + 8);

  v12 = MEMORY[0x1E69E7CC0];
  if ((v11 & 1) == 0)
  {
    sub_1A524D254();
    v13 = v12;
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    v12 = v13;
    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  sub_1A52441D4();

  v15 = sub_1A5241F14();
  (*(v3 + 8))(v5, v2);
  v33 = v12;
  if (v15 >> 62)
  {
LABEL_24:
    v16 = sub_1A524E2B4();
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  do
  {
    v29 = v18;
    v19 = v17;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1A59097F0](v19, v15);
      }

      else
      {
        if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v20 = *(v15 + 8 * v19 + 32);
      }

      v21 = v20;
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      sub_1A52430E4();
      v22 = v32;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v23 = PhotosModel.photokitObject.getter(v22);

      if (v23)
      {
        break;
      }

LABEL_8:
      __swift_destroy_boxed_opaque_existential_0(v31);
      ++v19;
      if (v17 == v16)
      {
        goto LABEL_25;
      }
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_8;
    }

    v24 = __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1A5907D70](v24);
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    v18 = v33;
  }

  while (v17 != v16);
LABEL_25:

  v25 = objc_opt_self();
  sub_1A3C52C70(0, &qword_1EB1265C0);
  v26 = sub_1A524CA14();

  v27 = [v25 peopleFetchResultFromFastEnumeration:v26 photoLibrary:*(*v30 + 16)];

  return v27;
}

void sub_1A49ABDB0()
{
  v0 = sub_1A49AB9A0();
  v1 = [v0 count];
  type metadata accessor for LemonadePeopleHomeView(0);
  sub_1A49A6B00(0, &qword_1EB146A70, type metadata accessor for LemonadePeopleHomeView.SelectionState, MEMORY[0x1E697DA80]);
  v3 = v2;
  sub_1A5247C84();
  v4 = v23;
  swift_beginAccess();
  v5 = (v1 > 0) ^ *(v23 + 16);
  v17 = v0;
  v18 = v3;
  if (v5)
  {
    KeyPath = swift_getKeyPath();
    v16[1] = v16;
    MEMORY[0x1EEE9AC00](KeyPath);
    v22 = v4;
    sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState);
    sub_1A52415C4();
  }

  else
  {
    *(v23 + 16) = v1 > 0;
  }

  sub_1A5247C84();
  v7 = v22;
  swift_beginAccess();
  if (((v1 > 0) ^ *(v7 + 17)))
  {
    v8 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v8);
    v21 = v7;
    sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState);
    sub_1A52415C4();
  }

  else
  {
    *(v7 + 17) = v1 > 0;
  }

  v9 = v17;
  sub_1A5247C84();
  v10 = v21;
  v11 = [v9 fetchedObjects];
  if (v11)
  {
    sub_1A3C52C70(0, &qword_1EB1265C0);
    v12 = sub_1A524CA34();

    if (v12 >> 62)
    {
      if (sub_1A524E2B4() >= 2)
      {
        goto LABEL_10;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
LABEL_10:
      type metadata accessor for PeopleMergeUtilities();
      LOBYTE(v11) = sub_1A3D76994(v12);
      goto LABEL_15;
    }

    LOBYTE(v11) = 0;
LABEL_15:

    swift_beginAccess();
    if ((v11 & 1) != *(v10 + 18))
    {
      goto LABEL_16;
    }

LABEL_12:
    *(v10 + 18) = v11 & 1;

    goto LABEL_17;
  }

  swift_beginAccess();
  if ((*(v10 + 18) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v13 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v13);
  v20 = v10;
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState);
  sub_1A52415C4();

LABEL_17:
  sub_1A5247C84();
  v14 = v20;
  swift_beginAccess();
  if (((v1 > 1) ^ *(v14 + 19)))
  {
    v15 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v15);
    v19 = v14;
    sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState);
    sub_1A52415C4();
  }

  else
  {

    *(v14 + 19) = v1 > 1;
  }
}

uint64_t sub_1A49AC3B8(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A49AC4DC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A49AC600(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 18) == v2)
  {
    *(v1 + 18) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A49AC724(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 19) == v2)
  {
    *(v1 + 19) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A49AC848(char a1, void *a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  if (a2)
  {
    type metadata accessor for LemonadePeopleHomeView(0);
    v14 = a2;
    sub_1A49A6B00(0, &qword_1EB146A78, MEMORY[0x1E69E9420], MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    v15 = a2;
    v16 = sub_1A5246F04();
    v17 = sub_1A524D244();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 67109378;
      *(v18 + 4) = a1 & 1;
      *(v18 + 8) = 2112;
      v20 = a2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 10) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1A3C1C000, v16, v17, "People Home View: Error presenting the create new Social Group view with success: %{BOOL}d and error: %@", v18, 0x12u);
      sub_1A3CB65E4(v19);
      MEMORY[0x1A590EEC0](v19, -1, -1);
      MEMORY[0x1A590EEC0](v18, -1, -1);
    }

    else
    {
    }

    v10 = v13;
  }

  else
  {
    type metadata accessor for LemonadePeopleHomeView(0);
    sub_1A49A6B00(0, &qword_1EB146A78, MEMORY[0x1E69E9420], MEMORY[0x1E697DA80]);
    if (a1)
    {
      sub_1A5247C84();
      v22 = sub_1A5246F04();
      v23 = sub_1A524D224();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 67109120;
        *(v24 + 4) = 1;
        _os_log_impl(&dword_1A3C1C000, v22, v23, "People Home View: Presented the create new Social Group view with success: %{BOOL}d", v24, 8u);
        MEMORY[0x1A590EEC0](v24, -1, -1);
      }

      v10 = v7;
    }

    else
    {
      sub_1A5247C84();
      v25 = sub_1A5246F04();
      v26 = sub_1A524D244();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 67109378;
        *(v27 + 8) = 2112;
        *(v27 + 10) = 0;
        *v28 = 0;
        _os_log_impl(&dword_1A3C1C000, v25, v26, "People Home View: Issue presenting the create new Social Group view with success: %{BOOL}d and error: %@", v27, 0x12u);
        sub_1A3CB65E4(v28);
        MEMORY[0x1A590EEC0](v28, -1, -1);
        MEMORY[0x1A590EEC0](v27, -1, -1);
      }
    }
  }

  (*(v5 + 8))(v10, v4);
  sub_1A49AA80C();
}

void sub_1A49ACC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  PXPresentationEnvironmentForSender();
}

uint64_t sub_1A49ACFC0()
{
  swift_getKeyPath();
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1A49AD074@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState);
  sub_1A52415D4();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1A49AD158()
{
  swift_getKeyPath();
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 17);
}

uint64_t sub_1A49AD20C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState);
  sub_1A52415D4();

  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1A49AD2F0()
{
  swift_getKeyPath();
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 18);
}

uint64_t sub_1A49AD3A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState);
  sub_1A52415D4();

  result = swift_beginAccess();
  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_1A49AD488()
{
  swift_getKeyPath();
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState);
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 19);
}

uint64_t sub_1A49AD53C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49AEAC8(&qword_1EB146A60, type metadata accessor for LemonadePeopleHomeView.SelectionState);
  sub_1A52415D4();

  result = swift_beginAccess();
  *a2 = *(v3 + 19);
  return result;
}

uint64_t sub_1A49AD620()
{
  v1 = OBJC_IVAR____TtCV12PhotosUICore22LemonadePeopleHomeView14SelectionState___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1A49AD6C0(void *a1)
{
  [a1 setPrefersTabBarVisible_];

  return [a1 setPrefersToolbarVisible_];
}

id sub_1A49AD710(void *a1)
{
  [a1 setPrefersTabBarVisible_];

  return [a1 setPrefersToolbarVisible_];
}

void sub_1A49AD794()
{
  if (!qword_1EB1468D8)
  {
    sub_1A49AD804();
    sub_1A49AF1D8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1468D8);
    }
  }
}

void sub_1A49AD804()
{
  if (!qword_1EB1468E0)
  {
    sub_1A49ADAE0();
    sub_1A49ADD88();
    sub_1A3E7CAB0();
    sub_1A49ADFB4();
    sub_1A49AEFD4(255, &qword_1EB1469E8, sub_1A49AF060, sub_1A49AF130);
    sub_1A49AE120();
    sub_1A49AE25C();
    sub_1A49AE360(255);
    type metadata accessor for PXPeopleProcessStatus(255);
    sub_1A49AEDA0(&qword_1EB1469C8, sub_1A49AE360, sub_1A49AED6C);
    sub_1A49AEAC8(&qword_1EB13A278, type metadata accessor for PXPeopleProcessStatus);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49AF060(255);
    sub_1A49AF130();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49AEAC8(&qword_1EB12D5D8, sub_1A3E7CAB0);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1468E0);
    }
  }
}

void sub_1A49ADAE0()
{
  if (!qword_1EB1468E8)
  {
    sub_1A49ADD88();
    sub_1A3E7CAB0();
    sub_1A49ADFB4();
    sub_1A49AEFD4(255, &qword_1EB1469E8, sub_1A49AF060, sub_1A49AF130);
    sub_1A49AE120();
    sub_1A49AE25C();
    sub_1A49AE360(255);
    type metadata accessor for PXPeopleProcessStatus(255);
    sub_1A49AEDA0(&qword_1EB1469C8, sub_1A49AE360, sub_1A49AED6C);
    sub_1A49AEAC8(&qword_1EB13A278, type metadata accessor for PXPeopleProcessStatus);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49AF060(255);
    sub_1A49AF130();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49AEAC8(&qword_1EB12D5D8, sub_1A3E7CAB0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1468E8);
    }
  }
}

void sub_1A49ADD88()
{
  if (!qword_1EB1468F0)
  {
    sub_1A49ADFB4();
    sub_1A49AEFD4(255, &qword_1EB1469E8, sub_1A49AF060, sub_1A49AF130);
    sub_1A49AE120();
    sub_1A49AE25C();
    sub_1A49AE360(255);
    type metadata accessor for PXPeopleProcessStatus(255);
    sub_1A49AEDA0(&qword_1EB1469C8, sub_1A49AE360, sub_1A49AED6C);
    sub_1A49AEAC8(&qword_1EB13A278, type metadata accessor for PXPeopleProcessStatus);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49AF060(255);
    sub_1A49AF130();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1468F0);
    }
  }
}

void sub_1A49ADFB4()
{
  if (!qword_1EB1468F8)
  {
    sub_1A49AE120();
    sub_1A49AE25C();
    sub_1A49AE360(255);
    type metadata accessor for PXPeopleProcessStatus(255);
    sub_1A49AEDA0(&qword_1EB1469C8, sub_1A49AE360, sub_1A49AED6C);
    sub_1A49AEAC8(&qword_1EB13A278, type metadata accessor for PXPeopleProcessStatus);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1468F8);
    }
  }
}

void sub_1A49AE120()
{
  if (!qword_1EB146900)
  {
    sub_1A49AE25C();
    sub_1A49AE360(255);
    type metadata accessor for PXPeopleProcessStatus(255);
    sub_1A49AEDA0(&qword_1EB1469C8, sub_1A49AE360, sub_1A49AED6C);
    sub_1A49AEAC8(&qword_1EB13A278, type metadata accessor for PXPeopleProcessStatus);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146900);
    }
  }
}

void sub_1A49AE25C()
{
  if (!qword_1EB146908)
  {
    sub_1A49AE360(255);
    type metadata accessor for PXPeopleProcessStatus(255);
    sub_1A49AEDA0(&qword_1EB1469C8, sub_1A49AE360, sub_1A49AED6C);
    sub_1A49AEAC8(&qword_1EB13A278, type metadata accessor for PXPeopleProcessStatus);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146908);
    }
  }
}

void sub_1A49AE388()
{
  if (!qword_1EB146918)
  {
    sub_1A49AE444(255, &qword_1EB146920, sub_1A49AE414, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146918);
    }
  }
}

void sub_1A49AE444(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_1A49B131C(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A49AE4DC()
{
  if (!qword_1EB146930)
  {
    sub_1A49AE57C(255);
    sub_1A49AECBC();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146930);
    }
  }
}

void sub_1A49AE5A4()
{
  if (!qword_1EB146940)
  {
    sub_1A49AE6B8();
    sub_1A49AEFD4(255, &qword_1EB146950, sub_1A49AE7AC, sub_1A49AEB10);
    sub_1A49AE7AC(255);
    sub_1A49AEB10();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5242CE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146940);
    }
  }
}

void sub_1A49AE6B8()
{
  if (!qword_1EB146948)
  {
    sub_1A49AEFD4(255, &qword_1EB146950, sub_1A49AE7AC, sub_1A49AEB10);
    sub_1A49AE7AC(255);
    sub_1A49AEB10();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146948);
    }
  }
}

void sub_1A49AE804()
{
  if (!qword_1EB146968)
  {
    sub_1A49AE898(255);
    sub_1A49AEAC8(&qword_1EB146998, sub_1A49AE898);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146968);
    }
  }
}

void sub_1A49AE8CC()
{
  if (!qword_1EB146978)
  {
    sub_1A49AE98C(255);
    type metadata accessor for LemonadePeopleHomeGroupSection();
    type metadata accessor for LemonadePeopleHomePeopleSection();
    sub_1A49AEA74(255, &qword_1EB146990, MEMORY[0x1E6981840], MEMORY[0x1E6981838], MEMORY[0x1E6981860]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB146978);
    }
  }
}

void sub_1A49AE9C0()
{
  if (!qword_1EB146988)
  {
    type metadata accessor for PersonSuggestionBanner(255);
    sub_1A49AEAC8(&qword_1EB12F5A0, type metadata accessor for PersonSuggestionBanner);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146988);
    }
  }
}

void sub_1A49AEA74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A49AEAC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A49AEB10()
{
  result = qword_1EB1469A0;
  if (!qword_1EB1469A0)
  {
    sub_1A49AE7AC(255);
    sub_1A49AEBA8();
    sub_1A49AEC58(&qword_1EB122120, &qword_1EB122118, &type metadata for LemonadeFeedContentsTopPaddingKind);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1469A0);
  }

  return result;
}

unint64_t sub_1A49AEBA8()
{
  result = qword_1EB1469A8;
  if (!qword_1EB1469A8)
  {
    sub_1A49AE7DC(255);
    sub_1A49AEAC8(&qword_1EB1469B0, sub_1A49AE804);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1469A8);
  }

  return result;
}

uint64_t sub_1A49AEC58(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A49B131C(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49AECBC()
{
  result = qword_1EB1469B8;
  if (!qword_1EB1469B8)
  {
    sub_1A49AE57C(255);
    sub_1A49AEAC8(&qword_1EB1469C0, sub_1A49AE5A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1469B8);
  }

  return result;
}

uint64_t sub_1A49AEDA0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49AEE24()
{
  result = qword_1EB1469D8;
  if (!qword_1EB1469D8)
  {
    v1 = MEMORY[0x1E69E6530];
    sub_1A49AE444(255, &qword_1EB146920, sub_1A49AE414, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
    sub_1A49AEEF0();
    sub_1A49AEC58(&qword_1EB1277C0, &unk_1EB1277B0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1469D8);
  }

  return result;
}

unint64_t sub_1A49AEEF0()
{
  result = qword_1EB1469E0;
  if (!qword_1EB1469E0)
  {
    sub_1A49AE414(255);
    sub_1A49AE57C(255);
    sub_1A49AECBC();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A49AEC58(&qword_1EB1277D0, &qword_1EB1277C8, MEMORY[0x1E69E6370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1469E0);
  }

  return result;
}

void sub_1A49AEFD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A49AF0C8()
{
  if (!qword_1EB146A00)
  {
    type metadata accessor for LemonadePeopleHomeNavigationBar();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB146A00);
    }
  }
}

unint64_t sub_1A49AF130()
{
  result = qword_1EB146A08;
  if (!qword_1EB146A08)
  {
    sub_1A49AF060(255);
    sub_1A49AEAC8(&qword_1EB146A10, sub_1A49AF094);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146A08);
  }

  return result;
}

void sub_1A49AF200(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A49AF264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A49AEA74(255, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A49AF2F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A49A6D7C(255, &qword_1EB129FC0, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListManager);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A49AF454()
{
  type metadata accessor for LemonadePhotoLibraryContext();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v1 <= 0x3F)
    {
      sub_1A49B131C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1A49A6B00(319, &qword_1EB146A68, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E697DA80]);
        if (v3 <= 0x3F)
        {
          sub_1A49AF264(319, &qword_1EB13A288, MEMORY[0x1E697DA80]);
          if (v4 <= 0x3F)
          {
            sub_1A49A6B00(319, &qword_1EB146A70, type metadata accessor for LemonadePeopleHomeView.SelectionState, MEMORY[0x1E697DA80]);
            if (v5 <= 0x3F)
            {
              sub_1A49AF2F0(319, &qword_1EB1468C0, MEMORY[0x1E697DA80]);
              if (v6 <= 0x3F)
              {
                sub_1A49A6B00(319, &qword_1EB146A20, type metadata accessor for PhotoKitSocialGroupActionManager, MEMORY[0x1E697DA80]);
                if (v7 <= 0x3F)
                {
                  sub_1A49A6B00(319, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
                  if (v8 <= 0x3F)
                  {
                    sub_1A49A6B00(319, &qword_1EB146A78, MEMORY[0x1E69E9420], MEMORY[0x1E697DA80]);
                    if (v9 <= 0x3F)
                    {
                      sub_1A49A6B00(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
                      if (v10 <= 0x3F)
                      {
                        sub_1A49A6B00(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
                        if (v11 <= 0x3F)
                        {
                          sub_1A49A6B00(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
                          if (v12 <= 0x3F)
                          {
                            sub_1A49A6B00(319, &qword_1EB124838, MEMORY[0x1E69C29F0], MEMORY[0x1E697DCC0]);
                            if (v13 <= 0x3F)
                            {
                              sub_1A49A6B00(319, &qword_1EB124868, MEMORY[0x1E69C2320], MEMORY[0x1E697DCC0]);
                              if (v14 <= 0x3F)
                              {
                                sub_1A49B131C(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                                if (v15 <= 0x3F)
                                {
                                  sub_1A49A6B00(319, &qword_1EB124848, MEMORY[0x1E69C28E8], MEMORY[0x1E697DCC0]);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1A49B131C(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1A49A6B00(319, &qword_1EB13A290, sub_1A440B51C, MEMORY[0x1E6981790]);
                                      if (v18 <= 0x3F)
                                      {
                                        swift_cvw_initStructMetadataWithLayoutString();
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A49AF968()
{
  result = sub_1A5241614();
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

void sub_1A49AFA08()
{
  if (!qword_1EB146A88)
  {
    sub_1A49AD760(255);
    sub_1A49AEAC8(&qword_1EB146A90, sub_1A49AD760);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146A88);
    }
  }
}

uint64_t sub_1A49AFC04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49AFC64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49AFCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadePeopleHomeView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + v7);
  v9 = *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_1A49A90F0(a1, v2 + v6, v8, v9, a2);
}

uint64_t sub_1A49AFDAC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LemonadePeopleHomeView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A49AFE20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_89Tm()
{
  v1 = type metadata accessor for LemonadePeopleHomeView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;

  v5 = v0 + v2 + v1[8];
  v6 = MEMORY[0x1E6981E90];
  sub_1A49A6B00(0, &qword_1EB146A28, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981E90]);
  (*(*(v7 - 8) + 8))(v5, v7);
  v8 = MEMORY[0x1E6981E98];
  sub_1A49A6B00(0, &qword_1EB1271F0, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981E98]);

  v9 = v0 + v2 + v1[9];
  sub_1A49AF264(0, &qword_1EB13A2A0, MEMORY[0x1E6981E90]);
  (*(*(v10 - 8) + 8))(v9, v10);
  sub_1A49AF264(0, &qword_1EB127298, MEMORY[0x1E6981E98]);

  v11 = v0 + v2 + v1[10];
  sub_1A49A6B00(0, &qword_1EB146A30, type metadata accessor for LemonadePeopleHomeView.SelectionState, v6);
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A49A6B00(0, &qword_1EB146A38, type metadata accessor for LemonadePeopleHomeView.SelectionState, v8);

  v13 = v0 + v2 + v1[11];
  sub_1A49AF2F0(0, &qword_1EB146A40, MEMORY[0x1E6981E90]);
  (*(*(v14 - 8) + 8))(v13, v14);
  sub_1A49AF2F0(0, &qword_1EB127250, MEMORY[0x1E6981E98]);

  v15 = v0 + v2 + v1[12];
  sub_1A49A6B00(0, &qword_1EB146A48, type metadata accessor for PhotoKitSocialGroupActionManager, v6);
  (*(*(v16 - 8) + 8))(v15, v16);
  sub_1A49A6B00(0, &qword_1EB127200, type metadata accessor for PhotoKitSocialGroupActionManager, v8);

  v17 = v0 + v2 + v1[13];
  sub_1A49A6B00(0, &qword_1EB121428, type metadata accessor for LemonadePeopleProgressStatus, v6);
  (*(*(v18 - 8) + 8))(v17, v18);
  sub_1A49A6B00(0, &qword_1EB127238, type metadata accessor for LemonadePeopleProgressStatus, v8);

  v19 = v0 + v2 + v1[14];
  v20 = MEMORY[0x1E69E9420];
  sub_1A49A6B00(0, &qword_1EB146A50, MEMORY[0x1E69E9420], v6);
  (*(*(v21 - 8) + 8))(v19, v21);
  sub_1A49A6B00(0, &qword_1EB146A58, v20, v8);

  v22 = v1[15];
  sub_1A49A6B00(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_1A5242D14();
    (*(*(v23 - 8) + 8))(v4 + v22, v23);
  }

  else
  {
  }

  v24 = v1[16];
  sub_1A49A6B00(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A49A6D7C(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    v26 = v25;
    v27 = *(v25 - 8);
    if (!(*(v27 + 48))(v4 + v24, 1, v25))
    {
      (*(v27 + 8))(v4 + v24, v26);
    }
  }

  else
  {
  }

  v28 = v1[17];
  sub_1A49A6B00(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = sub_1A5244084();
    (*(*(v29 - 8) + 8))(v4 + v28, v29);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v4 + v1[20]), *(v4 + v1[20] + 8));

  v30 = v4 + v1[22];
  sub_1A3F1D444(*v30, *(v30 + 8), *(v30 + 16), *(v30 + 24), *(v30 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A49B05E4(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for LemonadePeopleHomeView(0);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = v6 + *(*(v5 - 8) + 64);
  v8 = *(v2 + v7);
  v9 = v2 + v6;
  v10 = *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = *a1;
  v12 = *a2;
  sub_1A49A6B00(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A3C52C70(0, &qword_1EB126A10);
  v13 = [swift_getObjCClassFromMetadata() sharedInstance];
  if ([v13 forceHideProcessingUI])
  {

LABEL_3:
    v20 = *(v9 + *(v5 + 92));
    v19[0] = 0;
    goto LABEL_9;
  }

  if (sub_1A3F541D4())
  {

    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [v13 forceShowProcessingUI];

    if (v8 & 1 | ((v14 & 1) == 0))
    {
      goto LABEL_3;
    }
  }

  LOBYTE(v19[0]) = 1;
  sub_1A3F5CDFC(v19, v10, &v20);
  LOBYTE(v19[0]) = v20;
  v19[1] = *(&v20 + 1);
  sub_1A440B550();
  v16 = objc_allocWithZone(v15);
  v17 = sub_1A52485F4();
  v20 = *(v9 + *(v5 + 92));
  v19[0] = v17;
LABEL_9:
  sub_1A49A6B00(0, &qword_1EB13A290, sub_1A440B51C, MEMORY[0x1E6981790]);
  result = sub_1A524B6B4();
  if (v11 != v12)
  {
    return sub_1A49AA37C();
  }

  return result;
}

uint64_t sub_1A49B084C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49B08D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A49B093C()
{
  v1 = *(type metadata accessor for LemonadePeopleHomeView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  LOBYTE(aBlock) = v3;
  v10 = v4;
  sub_1A49B131C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v15 == 1)
  {
    sub_1A49AA80C();
  }

  else
  {
    LOBYTE(aBlock) = v3;
    v10 = v4;
    v15 = 1;
    sub_1A524B6B4();
    v5 = sub_1A49A67B8();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 px_barAppearance];
      v13 = sub_1A49AD6C0;
      v14 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v10 = 1107296256;
      v11 = sub_1A421179C;
      v12 = &block_descriptor_126_0;
      v8 = _Block_copy(&aBlock);
      [v7 performChangesWithAnimationOptions:0 changes:v8];

      _Block_release(v8);
    }
  }
}

uint64_t objectdestroy_40Tm_0()
{
  v1 = type metadata accessor for LemonadePeopleHomeView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[8];
  v4 = MEMORY[0x1E6981E90];
  sub_1A49A6B00(0, &qword_1EB146A28, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981E90]);
  (*(*(v5 - 8) + 8))(v3, v5);
  v6 = MEMORY[0x1E6981E98];
  sub_1A49A6B00(0, &qword_1EB1271F0, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981E98]);

  v7 = v2 + v1[9];
  sub_1A49AF264(0, &qword_1EB13A2A0, MEMORY[0x1E6981E90]);
  (*(*(v8 - 8) + 8))(v7, v8);
  sub_1A49AF264(0, &qword_1EB127298, MEMORY[0x1E6981E98]);

  v9 = v2 + v1[10];
  sub_1A49A6B00(0, &qword_1EB146A30, type metadata accessor for LemonadePeopleHomeView.SelectionState, v4);
  (*(*(v10 - 8) + 8))(v9, v10);
  sub_1A49A6B00(0, &qword_1EB146A38, type metadata accessor for LemonadePeopleHomeView.SelectionState, v6);

  v11 = v2 + v1[11];
  sub_1A49AF2F0(0, &qword_1EB146A40, MEMORY[0x1E6981E90]);
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A49AF2F0(0, &qword_1EB127250, MEMORY[0x1E6981E98]);

  v13 = v2 + v1[12];
  sub_1A49A6B00(0, &qword_1EB146A48, type metadata accessor for PhotoKitSocialGroupActionManager, v4);
  (*(*(v14 - 8) + 8))(v13, v14);
  sub_1A49A6B00(0, &qword_1EB127200, type metadata accessor for PhotoKitSocialGroupActionManager, v6);

  v15 = v2 + v1[13];
  sub_1A49A6B00(0, &qword_1EB121428, type metadata accessor for LemonadePeopleProgressStatus, v4);
  (*(*(v16 - 8) + 8))(v15, v16);
  sub_1A49A6B00(0, &qword_1EB127238, type metadata accessor for LemonadePeopleProgressStatus, v6);

  v17 = v2 + v1[14];
  v18 = MEMORY[0x1E69E9420];
  sub_1A49A6B00(0, &qword_1EB146A50, MEMORY[0x1E69E9420], v4);
  (*(*(v19 - 8) + 8))(v17, v19);
  sub_1A49A6B00(0, &qword_1EB146A58, v18, v6);

  v20 = v1[15];
  sub_1A49A6B00(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_1A5242D14();
    (*(*(v21 - 8) + 8))(v2 + v20, v21);
  }

  else
  {
  }

  v22 = v1[16];
  sub_1A49A6B00(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A49A6D7C(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    v24 = v23;
    v25 = *(v23 - 8);
    if (!(*(v25 + 48))(v2 + v22, 1, v23))
    {
      (*(v25 + 8))(v2 + v22, v24);
    }
  }

  else
  {
  }

  v26 = v1[17];
  sub_1A49A6B00(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_1A5244084();
    (*(*(v27 - 8) + 8))(v2 + v26, v27);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[20]), *(v2 + v1[20] + 8));

  v28 = v2 + v1[22];
  sub_1A3F1D444(*v28, *(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32));

  return swift_deallocObject();
}

void sub_1A49B131C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A49B136C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A49B13D8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A49A6B00(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_1A49B14C0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  v16 = objc_allocWithZone(v8);
  v17 = sub_1A49B3478(a1, a2, a3 & 1, a4 & 1, a5, a6, a7);
  (*(*(*(v8 + 11) - 8) + 8))(a2);
  (*(*(*(v8 + 10) - 8) + 8))(a1);
  return v17;
}

void sub_1A49B15B4(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v22 - v7;
  v11 = *((v10 & v9) + 0x68);
  v12 = *(v11 + 8);
  v13 = v12(v4, v11, v6);
  v14 = *((*v3 & *v1) + 0x78);
  swift_beginAccess();
  (*(v5 + 16))(v8, &v2[v14], v4);
  v15 = (v12)(v4, v11);
  (*(v5 + 8))(v8, v4);
  v16 = v13;
  v17 = v15;
  if (v13 == v15)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  if (v13)
  {
    v18 = v15 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {

    swift_unknownObjectRelease();
    v19 = swift_unknownObjectRelease();
LABEL_12:
    sub_1A49B1F2C(v19);
    sub_1A49B1E80(*&v2[*((*v3 & *v2) + 0xB0)] + 1);
    return;
  }

  v20 = [v16 isContentEqualTo:v17];
  v21 = v20;
  if (!v20)
  {
    v21 = [v17 isContentEqualTo:v16];
  }

  swift_unknownObjectRelease();
  v19 = swift_unknownObjectRelease();
  if (v21 != 2)
  {
    goto LABEL_12;
  }
}

uint64_t sub_1A49B1814@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x58) - 8) + 16))(a1, &v1[v5]);
}

uint64_t sub_1A49B18C8(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  sub_1A49B3798(a1);
  v5 = *(*(*((v4 & v3) + 0x58) - 8) + 8);

  return v5(a1);
}

void (*sub_1A49B1950(void *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[3] = v1;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v4[4] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[5] = v9;
  v11 = *(v9 + 64);
  if (v3)
  {
    v4[6] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
    v7 = *v6;
  }

  else
  {
    v4[6] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v5[7] = v12;
  v13 = *((v7 & *v1) + 0x78);
  swift_beginAccess();
  v14 = *(v10 + 16);
  v5[8] = v14;
  v5[9] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v12, &v1[v13], v8);
  return sub_1A49B1AE0;
}

void sub_1A49B1AE0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_1A49B3798(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_1A49B3798(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

void sub_1A49B1C1C(char a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != *(v1 + *((*v2 & *v1) + 0xA0)))
  {
    v6 = [v1 createAnimation];
    [v6 setDuration_];
    [v6 setCurve_];
    [v6 setScope_];
    v5 = sub_1A49B1D34();
    [v5 setNeedsUpdateOf_];
  }
}

id sub_1A49B1D34()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = *(v1 + 0xA8);
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *(v0 + v2);
  }

  else
  {
    v5 = objc_allocWithZone(off_1E7721940);
    v6 = v0;
    v11 = *(v1 + 80);
    v12 = *(v1 + 96);
    type metadata accessor for HighlightsItemLayout();
    v7 = [v5 initWithTarget:sub_1A524EA94() needsUpdateSelector:{sel_setNeedsUpdate, v11, v12}];

    swift_unknownObjectRelease();
    v8 = *(v0 + v2);
    *(v0 + v2) = v7;
    v4 = v7;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

void sub_1A49B1E80(__int16 a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (*(v1 + *((*v2 & *v1) + 0xB0)) != v4)
  {
    v5 = sub_1A49B1D34();
    [v5 setNeedsUpdateOf_];
  }
}

uint64_t sub_1A49B1F2C(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *(v4 + 0x58);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - v8;
  (*(v4 + 192))(v7);
  v10 = (*(*(v4 + 104) + 8))(v5);
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    sub_1A3C37560(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F9790;
    *(v11 + 32) = v10;
    sub_1A3D435C4();
    swift_unknownObjectRetain_n();
    sub_1A524CA14();

    PXDisplayAssetFetchResultFromArray();
  }

  *(v2 + *((*v3 & *v2) + 0x98)) = 0;
  return swift_unknownObjectRelease();
}

void sub_1A49B2144()
{
  v0 = sub_1A49B1D34();
  [v0 setNeedsUpdateOf_];
}

void sub_1A49B2190()
{
  [v0 referenceSize];
  [v0 setContentSize_];
  [v0 contentSize];
  sub_1A524D9A4();
}

id sub_1A49B22A0()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = sub_1A49B1D34();
  [v2 updateIfNeeded];

  v4 = *(v1 + 80);
  v5 = *(v1 + 96);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for HighlightsItemLayout();
  return objc_msgSendSuper2(&v6, sel_updateIfNeeded, v4, v5);
}

void sub_1A49B2340(void *a1)
{
  v1 = a1;
  sub_1A49B22A0();
}

void sub_1A49B2388(void *a1)
{
  v1 = a1;
  sub_1A49B23DC(&selRef_displayScaleDidChange);
}

void sub_1A49B23DC(SEL *a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HighlightsItemLayout();
  objc_msgSendSuper2(&v6, *a1, v4, v5);
  v3 = sub_1A49B1D34();
  [v3 setNeedsUpdateOf_];
}

void sub_1A49B247C(void *a1)
{
  v1 = a1;
  sub_1A49B23DC(&selRef_referenceSizeDidChange);
}

uint64_t sub_1A49B24D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  a1[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1, &v1[v2], v3);
}

id sub_1A49B2574()
{
  sub_1A49B24D0(v8);
  v0 = v9;
  if (v9)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v8, v9);
    v2 = *(v0 - 8);
    v3 = MEMORY[0x1EEE9AC00](v1);
    v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v2 + 16))(v5, v3);
    v6 = sub_1A524EA94();
    (*(v2 + 8))(v5, v0);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1A49B26A8(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  if ([v1 objectReferenceForSpriteIndex_])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v34[0] = v31;
  v34[1] = v32;
  sub_1A3EBECA4(v34, &v31);
  v5 = *(&v32 + 1);
  if (*(&v32 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1A524EA94();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(&v31);
  }

  else
  {
    v11 = 0;
  }

  v27 = [v1 spriteReferenceForSpriteIndex:a1 objectReference:v11];
  swift_unknownObjectRelease();
  type metadata accessor for HighlightsHitTestResult();
  v12 = *(v1 + *((*v3 & *v1) + 0x80));
  v13 = *((*v3 & *v1) + 0x70);
  v15 = v4[12];
  *(&v32 + 1) = v4[10];
  v14 = *(&v32 + 1);
  v33 = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v1 + v13, v14);
  v17 = *((*v3 & *v1) + 0xC0);
  v19 = v4[13];
  v29 = v4[11];
  v18 = v29;
  v30 = v19;
  __swift_allocate_boxed_opaque_existential_1(v28);
  v17();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *&v22 = v14;
  *(&v22 + 1) = v18;
  *&v23 = v15;
  *(&v23 + 1) = v19;
  *(v21 + 16) = v22;
  *(v21 + 32) = v23;
  *(v21 + 48) = v20;

  v24 = v1;
  v25 = sub_1A46B6308(v12, &v31, v28, v27, v1, sub_1A49B3918, v21);
  sub_1A3C35B00(v34);

  return v25;
}

id sub_1A49B29FC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = sub_1A49B26A8(a3);

  return v5;
}

void (*sub_1A49B2A48())()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  sub_1A49B1C1C(1);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *((v2 & v1) + 0x50);
  *(v5 + 24) = *(v3 + 88);
  *(v5 + 40) = *((v2 & v1) + 0x68);
  *(v5 + 48) = v4;
  return sub_1A49B3E34;
}

uint64_t sub_1A49B2B3C(uint64_t a1)
{
  v17 = a1;
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v16[1] = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16[2] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A524DF24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  v9 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  sub_1A3C2F0BC(v17, v18);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, v2);
    (*(v9 + 32))(v12, v8, v2);
    sub_1A5246224();
  }

  v14(v8, 1, 1, v2);
  (*(v6 + 8))(v8, v5);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1A49B2ED8(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  v3 = sub_1A49B2B3C(v5);

  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

id sub_1A49B2F44()
{
  v0 = [objc_opt_self() grayColor];

  return v0;
}

id sub_1A49B2F8C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a1;
  sub_1A49B3990(v6);

  v7 = sub_1A524C634();

  return v7;
}

uint64_t sub_1A49B30B0()
{
  sub_1A49B3CD8();

  return swift_unknownObjectRetain();
}

id sub_1A49B30D8()
{
  sub_1A49B3CD8();
  v0 = swift_unknownObjectRetain();

  return v0;
}

id sub_1A49B3118(void *a1)
{
  v2 = sub_1A52414C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  sub_1A49B3204();

  v7 = sub_1A5241414();
  (*(v3 + 8))(v5, v2);

  return v7;
}

id sub_1A49B3270()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HighlightsItemLayout();
  return objc_msgSendSuper2(&v4, sel_dealloc, v2, v3);
}

void sub_1A49B32E8(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x70)]);
  (*(*(*((v4 & v3) + 0x58) - 8) + 8))(&a1[*((*v2 & *a1) + 0x78)]);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = *&a1[*((*v2 & *a1) + 0xA8)];
}

id sub_1A49B3478(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  v11 = *v8;
  v12 = MEMORY[0x1E69E7D40];
  v13 = *MEMORY[0x1E69E7D40];
  *(v8 + *((v13 & v11) + 0x98)) = 0;
  *(v8 + *((*v12 & *v8) + 0xA0)) = 0;
  *(v8 + *((*v12 & *v8) + 0xA8)) = 0;
  *(v8 + *((*v12 & *v8) + 0xB0)) = 0;
  v14 = a3 & 1;
  v15 = a4 & 1;
  (*(*(*((v13 & v11) + 0x50) - 8) + 16))(v8 + *((*v12 & *v8) + 0x70), a1, *((v13 & v11) + 0x50));
  v16 = *((v13 & v11) + 0x58);
  (*(*(v16 - 8) + 16))(v8 + *((*v12 & *v8) + 0x78), a2, v16);
  *(v8 + *((*v12 & *v8) + 0x80)) = v14;
  *(v8 + *((*v12 & *v8) + 0x90)) = (*(*((v13 & v11) + 0x68) + 8))(v16, *((v13 & v11) + 0x68));
  v17 = v8 + *((*v12 & *v8) + 0x88);
  *v17 = v15;
  *(v17 + 1) = a5;
  *(v17 + 2) = a6;
  *(v17 + 3) = a7;
  v23.receiver = v8;
  v23.super_class = type metadata accessor for HighlightsItemLayout();
  v18 = objc_msgSendSuper2(&v23, sel_init);
  v19 = sub_1A49B1D34();
  [v19 addUpdateSelector:sel_updateContent needsUpdate:1];

  [v18 setContentSource_];
  sub_1A49B1F2C([v18 addSpriteCount:2 withInitialState:0]);

  return v18;
}

uint64_t sub_1A49B3798(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11[-v5];
  v9 = *((v8 & v7) + 0x78);
  swift_beginAccess();
  (*(v4 + 16))(v6, &v1[v9], v3);
  swift_beginAccess();
  (*(v4 + 24))(&v1[v9], a1, v3);
  swift_endAccess();
  sub_1A49B15B4(v6);
  return (*(v4 + 8))(v6, v3);
}

void (*sub_1A49B3918())()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1A49B2A48();

    return sub_1A49B3E34;
  }

  return result;
}

uint64_t sub_1A49B3990(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *(v3 + 0x58);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - v7;
  (*(v3 + 192))(v6);
  v9 = (*(*(v3 + 104) + 16))(*(v1 + *((*v2 & *v1) + 0x80)), v4);
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  if (v11)
  {
    return v9;
  }

  else
  {
    return 4271950;
  }
}

void sub_1A49B3B00()
{
  sub_1A49B418C(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FF950;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = v1;
  PXSystemFontOfSizeAndWeight();
}

uint64_t sub_1A49B3D34()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1A49B3E34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A49B1C1C(0);
  }
}

uint64_t sub_1A49B3E8C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(v0 + 6);
  Sprite.init(rect:mediaKind:)(2, &v29, v1, v2, v3, v4);
  v25 = v29;
  v26 = v30;
  v27 = v31;
  v28 = v32;
  v6 = MEMORY[0x1E69E7D40];
  SpriteConfiguration.mediaVersion(_:)(*(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0xB0)), &type metadata for Sprite, &protocol witness table for Sprite, v33);

  v7 = v34;
  v8 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  (*(v8 + 16))(&v29, v7, v8, 2.0);
  v9 = *(&v30 + 1);
  v10 = v31;
  __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
  LOBYTE(v5) = *(v5 + *((*v6 & *v5) + 0x88));
  v11 = sub_1A48F1CA4(v5);
  (*(v10 + 144))(&v25, v9, v10, v11);
  v12 = static SpriteBuilder.buildExpression(_:)(&v25);
  __swift_destroy_boxed_opaque_existential_0(&v25);
  __swift_destroy_boxed_opaque_existential_0(&v29);
  __swift_destroy_boxed_opaque_existential_0(v33);
  v13 = sub_1A48F1CA4(v5);
  v14 = sub_1A48F1CA4(v5);
  v36.origin.x = v1;
  v36.origin.y = v2;
  v36.size.width = v3;
  v36.size.height = v4;
  v37 = CGRectInset(v36, v13, v14);
  Sprite.init(rect:mediaKind:)(3, &v29, v37.origin.x, v37.origin.y, v37.size.width, v37.size.height);
  v25 = v29;
  v26 = v30;
  v27 = v31;
  v28 = v32;
  SpriteConfiguration.zPosition(_:)(&type metadata for Sprite, &protocol witness table for Sprite, 3.0);

  v15 = static SpriteBuilder.buildExpression(_:)(v33);
  __swift_destroy_boxed_opaque_existential_0(v33);
  sub_1A49B418C(0, &qword_1EB138D80, sub_1A42A59CC, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A52FC9F0;
  *(v16 + 32) = v12;
  *(v16 + 40) = v15;
  v23 = static SpriteBuilder.buildBlock(_:)(v16, v17, v18, v19, v20, v21, v22);

  return v23;
}

void sub_1A49B418C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49B42F0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A49B4350@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_1A49B43AC(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x98);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1A49B4410(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXPlacesMapOptionsController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

uint64_t sub_1A49B44F8()
{
  v1 = [*(v0 + OBJC_IVAR___PXPlacesMapOptionsController_mapModeController) mapStyle];

  return sub_1A49B5C34(v1);
}

uint64_t sub_1A49B4568()
{
  if (![*(v0 + OBJC_IVAR___PXPlacesMapOptionsController_mapModeController) supportsPerspectiveToggling])
  {
    return 0;
  }

  v1 = [*(v0 + OBJC_IVAR___PXPlacesMapOptionsController_mapFetchResultController) mapView];
  [v1 _zoomLevel];
  v3 = v2;
  v4 = [v1 _canEnter3DMode];
  v5 = [v1 _isPitched];
  v6 = [v1 _isShowingCuratedElevatedGround];

  v7 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))();
  v8 = PXMapOptionsMapStyle.usesImagery.getter(v7);

  if (v5)
  {
    return 1;
  }

  if (v4 && (v3 >= 16.0 ? (v10 = v6) : (v10 = 0), ((v10 | v8) & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A49B46E8()
{
  v1 = OBJC_IVAR___PXPlacesMapOptionsController_enableUserTrackingButton;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1A49B47E0(char a1)
{
  v3 = OBJC_IVAR___PXPlacesMapOptionsController_enableUserTrackingButton;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v4);
  if (result)
  {
    [result mapOptionsControllerDidInvalidateMapOptions_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A49B4884@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result & 1;
  return result;
}

void *sub_1A49B48E4(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PXPlacesMapOptionsController_enableUserTrackingButton;
  v5 = swift_beginAccess();
  *(v3 + v4) = v2;
  result = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x90))(v5);
  if (result)
  {
    [result mapOptionsControllerDidInvalidateMapOptions_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void PlacesMapOptionsController.init(mapModeController:mapFetchResultController:locationAuthorizationMonitor:)(void *a1, void *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR___PXPlacesMapOptionsController_enableUserTrackingButton] = 0;
  *&v3[OBJC_IVAR___PXPlacesMapOptionsController_currentChooseMapSheetController] = 0;
  v7 = &v3[OBJC_IVAR___PXPlacesMapOptionsController_locationAuthorizationMonitorObservation];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR___PXPlacesMapOptionsController_mapViewObservation];
  *v8 = 0;
  v8[1] = 0;
  *&v3[OBJC_IVAR___PXPlacesMapOptionsController_mapModeController] = a1;
  *&v3[OBJC_IVAR___PXPlacesMapOptionsController_mapFetchResultController] = a2;
  *&v3[OBJC_IVAR___PXPlacesMapOptionsController_locationAuthorizationMonitor] = a3;
  v25.receiver = v3;
  v25.super_class = type metadata accessor for PlacesMapOptionsController();
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = objc_msgSendSuper2(&v25, sel_init);
  v13 = MEMORY[0x1E69E7D40];
  v14 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x68);
  v15 = v12;
  v16 = v14();
  v17 = (v16 < 5) & (0x19u >> v16);
  v18 = OBJC_IVAR___PXPlacesMapOptionsController_enableUserTrackingButton;
  v19 = swift_beginAccess();
  *(v15 + v18) = v17;
  v20 = (*((*v13 & *v15) + 0x90))(v19);
  if (v20)
  {
    [v20 mapOptionsControllerDidInvalidateMapOptions_];
    swift_unknownObjectRelease();
  }

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v11;
  type metadata accessor for PlacesLocationAuthorizationMonitor();
  sub_1A49B68C0(&unk_1EB1252D8, type metadata accessor for PlacesLocationAuthorizationMonitor);
  v23 = v11;
  v24 = v15;
  sub_1A5245C54();
}

id PlacesMapOptionsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlacesMapOptionsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlacesMapOptionsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PlacesMapOptionsController.mapOptionsViewDidTapMapModeSettingsButton(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapOptionsChooseMapSheetController();
  v8 = _s12PhotosUICore22PeopleRemovalUtilitiesCACycfC_0();
  [v8 setModalPresentationStyle_];
  v9 = MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x90);
  v11 = swift_unknownObjectRetain();
  v10(v11);
  v12 = *((*v9 & *v8) + 0x78);
  v13 = swift_unknownObjectRetain();
  v12(v13, &off_1F1731688);
  v14 = sub_1A49B5C34([*(v2 + OBJC_IVAR___PXPlacesMapOptionsController_mapModeController) mapStyle]);
  (*((*v9 & *v8) + 0xA8))(v14);
  v15 = *(v2 + OBJC_IVAR___PXPlacesMapOptionsController_currentChooseMapSheetController);
  *(v2 + OBJC_IVAR___PXPlacesMapOptionsController_currentChooseMapSheetController) = v8;
  v16 = v8;

  v17 = [a1 window];
  v18 = [v17 rootViewController];

  v19 = v18;
  v20 = sub_1A3CB8D34();
  (*(v5 + 16))(v7, v20, v4);
  if (v19)
  {

    (*(v5 + 8))(v7, v4);
    [v19 px:v16 presentOverTopmostPresentedViewController:1 animated:0 completion:?];
  }

  else
  {
    v21 = sub_1A5246F04();
    v22 = sub_1A524D244();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24[1] = swift_slowAlloc();
      *v23 = 136315138;
      sub_1A3C2EF94();
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t PlacesMapOptionsController.mapOptionsViewDidTapPerspectiveButton(_:)()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v0 + OBJC_IVAR___PXPlacesMapOptionsController_mapModeController) toggle3DModeIfPossible];
  if ((result & 1) == 0)
  {
    v7 = sub_1A3CB8D34();
    (*(v2 + 16))(v5, v7, v1);
    v8 = sub_1A5246F04();
    v9 = sub_1A524D244();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11[1] = swift_slowAlloc();
      *v10 = 136315138;
      sub_1A3C2EF94();
    }

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

id PlacesMapOptionsController.chooseMapViewDidTapCardForMapStyle(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PXPlacesMapOptionsController_mapModeController);
  v3 = sub_1A49B6188(a1);

  return [v2 setMapStyle_];
}

void sub_1A49B56B4(void *a1, uint64_t a2)
{
  v4 = sub_1A5240E64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
    v13 = sub_1A3CB8D34();
    (*(v9 + 16))(v11, v13, v8);
    (*(v5 + 16))(v7, a2, v4);
    v14 = a1;
    v15 = sub_1A5246F04();
    v16 = sub_1A524D244();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v22 = v8;
      v18 = v17;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v18 = 136315394;
      sub_1A49B68C0(&qword_1EB12B000, MEMORY[0x1E6968FB0]);
      v19[3] = v16;
      sub_1A524EA44();
      (*(v5 + 8))(v7, v4);
      sub_1A3C2EF94();
    }

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1A49B5A28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1A524C3E4();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void PlacesMapOptionsController.mapSheetControllerDidTapDismiss(_:)(void *a1)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  v2 = *(v1 + OBJC_IVAR___PXPlacesMapOptionsController_currentChooseMapSheetController);
  *(v1 + OBJC_IVAR___PXPlacesMapOptionsController_currentChooseMapSheetController) = 0;
}

void sub_1A49B5BEC(void *a1)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  v2 = *(v1 + OBJC_IVAR___PXPlacesMapOptionsController_currentChooseMapSheetController);
  *(v1 + OBJC_IVAR___PXPlacesMapOptionsController_currentChooseMapSheetController) = 0;
}

uint64_t sub_1A49B5C34(uint64_t a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 2)
    {
      return 1;
    }

    else
    {
      sub_1A49B6908();
      v6 = swift_allocError();
      *v7 = a1;
      *(v7 + 8) = 0;
      swift_willThrow();
      v8 = sub_1A3CB8D34();
      (*(v3 + 16))(v5, v8, v2);
      v9 = v6;
      v10 = sub_1A5246F04();
      v11 = sub_1A524D244();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        v14 = v6;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v15;
        *v13 = v15;
        _os_log_impl(&dword_1A3C1C000, v10, v11, "Attempting to convert from unsupported enum case, this should not happen. Falling back to Standard: %@", v12, 0xCu);
        sub_1A3CB65E4(v13);
        MEMORY[0x1A590EEC0](v13, -1, -1);
        MEMORY[0x1A590EEC0](v12, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  return a1;
}

void sub_1A49B5E74(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  sub_1A46A3474();
  v12 = v3;
  sub_1A46A4194();
  if (sub_1A524E114())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = MEMORY[0x1E69E7D40];
      v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x68))(Strong);
      v8 = (v7 < 5) & (0x19u >> v7);
      v9 = OBJC_IVAR___PXPlacesMapOptionsController_enableUserTrackingButton;
      v10 = swift_beginAccess();
      *(v5 + v9) = v8;
      v11 = (*((*v6 & *v5) + 0x90))(v10);
      if (v11)
      {
        [v11 mapOptionsControllerDidInvalidateMapOptions_];
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1A49B5FBC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for PXPlacesMapViewChanged(0);
    sub_1A49B68C0(&qword_1EB120800, type metadata accessor for PXPlacesMapViewChanged);
    sub_1A524EE54();
  }

  return result;
}

uint64_t sub_1A49B6188(uint64_t a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 1)
    {
      return 2;
    }

    else
    {
      sub_1A49B6908();
      v6 = swift_allocError();
      *v7 = a1;
      *(v7 + 8) = 1;
      swift_willThrow();
      v8 = sub_1A3CB8D34();
      (*(v3 + 16))(v5, v8, v2);
      v9 = v6;
      v10 = sub_1A5246F04();
      v11 = sub_1A524D244();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        v14 = v6;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v15;
        *v13 = v15;
        _os_log_impl(&dword_1A3C1C000, v10, v11, "Attempting to convert from unsupported enum case, this should not happen. Falling back to Standard: %@", v12, 0xCu);
        sub_1A3CB65E4(v13);
        MEMORY[0x1A590EEC0](v13, -1, -1);
        MEMORY[0x1A590EEC0](v12, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  return a1;
}

void _s12PhotosUICore26PlacesMapOptionsControllerC06chooseD28ViewDidTapAttributionWithURLyy10Foundation0M0VF_0(uint64_t a1)
{
  v2 = sub_1A5240E64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = [objc_opt_self() defaultWorkspace];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1A5240D44();
    (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    (*(v3 + 32))(v9 + v8, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    aBlock[4] = sub_1A49B6850;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A49B5A28;
    aBlock[3] = &block_descriptor_317;
    v10 = _Block_copy(aBlock);

    [v6 openURL:v7 configuration:0 completionHandler:v10];
    _Block_release(v10);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A49B6850(uint64_t a1, void *a2)
{
  v4 = *(sub_1A5240E64() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_1A49B56B4(a2, v5);
}

uint64_t sub_1A49B68C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A49B6908()
{
  result = qword_1EB146B50;
  if (!qword_1EB146B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146B50);
  }

  return result;
}

void sub_1A49B6984(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for LemonadeAlbumsView()
{
  result = qword_1EB189E00;
  if (!qword_1EB189E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A49B6BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for LemonadeAlbumsView();
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  sub_1A3F88738(0);
  swift_storeEnumTagMultiPayload();
  v10 = a4 + v8[6];
  *v10 = swift_getKeyPath();
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  v10[32] = 0;
  v11 = v8[7];
  *(a4 + v11) = swift_getKeyPath();
  sub_1A3F88AE4(0);
  swift_storeEnumTagMultiPayload();
  v12 = a4 + v8[13];
  sub_1A524B694();
  *(a4 + v8[9]) = a1;
  *(a4 + v8[8]) = a2;
  type metadata accessor for SharedAlbumsAvailabilityObserver();
  swift_retain_n();

  sub_1A5247C74();
  type metadata accessor for MacSyncedAlbumsAvailabilityObserver();

  sub_1A5247C74();
  sub_1A3C52C70(0, &qword_1EB120A70);

  sub_1A5247C74();

  *v12 = a3;
  *(v12 + 1) = 0;
  return result;
}

uint64_t sub_1A49B6E3C@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  a1(0);
  result = a2(*(v3 + 16));
  *a3 = result;
  return result;
}

id sub_1A49B6E90@<X0>(void *a1@<X8>)
{
  result = sub_1A49BFDA8(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_1A49B6EBC@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = sub_1A52440D4();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1A5249284();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadeAlbumsView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A49B763C();
  v9 = v8;
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49B85B0();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49B8680();
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49B8780();
  sub_1A49C03C4(v1, &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeAlbumsView);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_1A49B942C(&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for LemonadeAlbumsView);
  sub_1A524A044();
  sub_1A49B76A0();
  sub_1A49B837C();
  sub_1A5242CF4();
  LOBYTE(v64) = *(*(v1 + *(v5 + 32)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  LOBYTE(v60) = 3;
  if (static LemonadePresentationContext.== infix(_:_:)(&v64, &v60))
  {
    v19 = v1 + *(v5 + 52);
    v20 = *v19;
    v21 = *(v19 + 8);
    LOBYTE(v64) = v20;
    v65 = v21;
    sub_1A49BF2A0(0, &qword_1EB121C40, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
  }

  v22 = sub_1A524C634();
  v23 = PXLemonadeLocalizedString(v22);

  v24 = sub_1A524C674();
  v26 = v25;

  v64 = v24;
  v65 = v26;
  v27 = sub_1A49C042C(&qword_1EB146C20, sub_1A49B763C);
  v28 = sub_1A3D5F9DC();
  v29 = MEMORY[0x1E69E6158];
  sub_1A524ABB4();

  (*(v47 + 8))(v11, v9);
  v31 = v50;
  v30 = v51;
  v32 = v53;
  (*(v51 + 104))(v50, *MEMORY[0x1E697C438], v53);
  v64 = v9;
  v65 = v29;
  v66 = v27;
  v67 = v28;
  swift_getOpaqueTypeConformance2();
  v33 = v52;
  v34 = v49;
  sub_1A524AF34();
  (*(v30 + 8))(v31, v32);
  (*(v48 + 8))(v14, v34);
  KeyPath = swift_getKeyPath();
  v36 = *(**sub_1A44E6630() + 160);

  v36(&v63, v37);

  v62 = v63;
  v61 = 0;
  sub_1A424D8DC();
  sub_1A524C9C4();
  sub_1A524C9C4();
  v39 = v56;
  v38 = v57;
  if (v64 == v60)
  {
    v40 = MEMORY[0x1E69C2980];
  }

  else
  {
    v40 = MEMORY[0x1E69C2990];
  }

  v41 = v58;
  (*(v57 + 104))(v56, *v40, v58);
  sub_1A49C02DC(0, &qword_1EB146C48, sub_1A49B8680, sub_1A45C999C, MEMORY[0x1E697E830]);
  v43 = v59;
  v44 = (v59 + *(v42 + 36));
  sub_1A45C999C(0);
  (*(v38 + 32))(v44 + *(v45 + 28), v39, v41);
  *v44 = KeyPath;
  return (*(v54 + 32))(v43, v33, v55);
}

void sub_1A49B763C()
{
  if (!qword_1EB146B58)
  {
    sub_1A49B76A0();
    sub_1A49B837C();
    v0 = sub_1A5242CE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146B58);
    }
  }
}

void sub_1A49B76A0()
{
  if (!qword_1EB146B60)
  {
    sub_1A49B772C();
    sub_1A49BF2A0(255, &qword_1EB122118, &type metadata for LemonadeFeedContentsTopPaddingKind, MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146B60);
    }
  }
}

void sub_1A49B772C()
{
  if (!qword_1EB146B68)
  {
    sub_1A49B78B8();
    sub_1A49B8124();
    sub_1A49B79F4();
    sub_1A49B7B00();
    sub_1A49B7BD4();
    sub_1A49B7C6C();
    sub_1A49B7E2C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49B8254();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146B68);
    }
  }
}

void sub_1A49B78B8()
{
  if (!qword_1EB146B70)
  {
    sub_1A49B79F4();
    sub_1A49B7B00();
    sub_1A49B7BD4();
    sub_1A49B7C6C();
    sub_1A49B7E2C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146B70);
    }
  }
}

void sub_1A49B79F4()
{
  if (!qword_1EB146B78)
  {
    sub_1A49B7B00();
    sub_1A49B7BD4();
    sub_1A49B7C6C();
    sub_1A49B7E2C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146B78);
    }
  }
}

void sub_1A49B7B00()
{
  if (!qword_1EB146B80)
  {
    sub_1A49B7BD4();
    sub_1A49B7C6C();
    sub_1A49B7E2C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146B80);
    }
  }
}

void sub_1A49B7BD4()
{
  if (!qword_1EB146B88)
  {
    sub_1A49B7C6C();
    sub_1A49B7E2C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146B88);
    }
  }
}

void sub_1A49B7C6C()
{
  if (!qword_1EB146B90)
  {
    sub_1A49C02DC(255, &qword_1EB146B98, sub_1A49B7D08, sub_1A49B7DE4, MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146B90);
    }
  }
}

void sub_1A49B7D50()
{
  if (!qword_1EB146BA8)
  {
    type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider(255);
    sub_1A49C042C(&qword_1EB1297C8, type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider);
    v0 = type metadata accessor for LemonadeFeedContents();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146BA8);
    }
  }
}

unint64_t sub_1A49B7E2C()
{
  result = qword_1EB146BB8;
  if (!qword_1EB146BB8)
  {
    sub_1A49B7C6C();
    sub_1A49B7EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146BB8);
  }

  return result;
}

unint64_t sub_1A49B7EA4()
{
  result = qword_1EB146BC0;
  if (!qword_1EB146BC0)
  {
    sub_1A49C02DC(255, &qword_1EB146B98, sub_1A49B7D08, sub_1A49B7DE4, MEMORY[0x1E697F960]);
    sub_1A49B7F68();
    sub_1A49B8044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146BC0);
  }

  return result;
}

unint64_t sub_1A49B7F68()
{
  result = qword_1EB146BC8;
  if (!qword_1EB146BC8)
  {
    sub_1A49B7D08(255);
    sub_1A49C042C(&qword_1EB146BD0, sub_1A44FCA1C);
    sub_1A49C042C(&qword_1EB146BD8, sub_1A49B7D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146BC8);
  }

  return result;
}

unint64_t sub_1A49B8044()
{
  result = qword_1EB146BE0;
  if (!qword_1EB146BE0)
  {
    sub_1A49B7DE4(255);
    sub_1A49C042C(&qword_1EB146BE8, sub_1A44FCAE4);
    sub_1A49C042C(&qword_1EB129580, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146BE0);
  }

  return result;
}

void sub_1A49B8124()
{
  if (!qword_1EB146BF0)
  {
    sub_1A49BF16C(255, &qword_1EB146BF8, sub_1A49B81E8, &type metadata for LemonadeAlbumsViewSegment, type metadata accessor for LemonadeAlbumsTabBar);
    sub_1A49BF2A0(255, &qword_1EB1278A0, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146BF0);
    }
  }
}

unint64_t sub_1A49B81E8()
{
  result = qword_1EB146C00;
  if (!qword_1EB146C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146C00);
  }

  return result;
}

unint64_t sub_1A49B8254()
{
  result = qword_1EB146C08;
  if (!qword_1EB146C08)
  {
    sub_1A49B8124();
    sub_1A49B82EC();
    sub_1A49B854C(&qword_1EB1278A8, &qword_1EB1278A0, MEMORY[0x1E697DA60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146C08);
  }

  return result;
}

unint64_t sub_1A49B82EC()
{
  result = qword_1EB1E3D90[0];
  if (!qword_1EB1E3D90[0])
  {
    sub_1A49BF16C(255, &qword_1EB146BF8, sub_1A49B81E8, &type metadata for LemonadeAlbumsViewSegment, type metadata accessor for LemonadeAlbumsTabBar);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1E3D90);
  }

  return result;
}

unint64_t sub_1A49B837C()
{
  result = qword_1EB146C10;
  if (!qword_1EB146C10)
  {
    sub_1A49B76A0();
    sub_1A49B78B8();
    sub_1A49B8124();
    sub_1A49B79F4();
    sub_1A49B7B00();
    sub_1A49B7BD4();
    sub_1A49B7C6C();
    sub_1A49B7E2C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49B8254();
    swift_getOpaqueTypeConformance2();
    sub_1A49B854C(&qword_1EB122120, &qword_1EB122118, &type metadata for LemonadeFeedContentsTopPaddingKind);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146C10);
  }

  return result;
}

uint64_t sub_1A49B854C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A49BF2A0(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A49B85B0()
{
  if (!qword_1EB146C18)
  {
    sub_1A49B763C();
    sub_1A49C042C(&qword_1EB146C20, sub_1A49B763C);
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146C18);
    }
  }
}

void sub_1A49B8680()
{
  if (!qword_1EB146C28)
  {
    sub_1A49B85B0();
    sub_1A49B763C();
    sub_1A49C042C(&qword_1EB146C20, sub_1A49B763C);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146C28);
    }
  }
}

uint64_t sub_1A49B8780()
{
  v1 = type metadata accessor for LemonadeMacSyncedAlbumsFeature(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for LemonadeAlbumsView();
  v5 = *(*(v0 + *(v4 + 36)) + 16);
  v6 = (v0 + *(v4 + 52));
  v7 = *v6;
  v8 = *(v6 + 1);
  v21[0] = v7;
  v22 = v8;
  sub_1A49BF2A0(0, &qword_1EB121C40, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E6981790]);
  v9 = v5;
  sub_1A524B6A4();
  if (LOBYTE(v19[0]) > 1u)
  {
    if (LOBYTE(v19[0]) == 2)
    {
      v13 = v9;
      sub_1A3C512E0(v13, v21);
      *&v19[0] = v23;
      BYTE8(v19[0]) = BYTE8(v23);
      v14 = sub_1A3C445AC();
      v12 = sub_1A42E6C64(&type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, v14);

      sub_1A3FA0F6C(v21);
    }

    else
    {

      return 0;
    }
  }

  else if (LOBYTE(v19[0]))
  {
    v15 = v9;
    sub_1A3C41D90(v15, 0, 0, v3);
    v16 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
    v17 = sub_1A49C042C(&qword_1EB1297E0, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider);
    v12 = sub_1A42E6C64(v16, v17);

    sub_1A49C0474(v3, type metadata accessor for LemonadeMacSyncedAlbumsFeature);
  }

  else
  {
    v10 = v9;
    sub_1A3C41748(v10, 0, 0, v21);
    v19[0] = v23;
    v19[1] = v24;
    v20[0] = v25[0];
    *(v20 + 9) = *(v25 + 9);
    v11 = sub_1A3C51EF8();
    v12 = sub_1A42E6C64(&type metadata for LemonadeAlbumsFeature.ShelfProvider, v11);

    sub_1A3FA1280(v21);
  }

  return v12;
}

void sub_1A49B89E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[13] = a1;
  v26[19] = a3;
  v4 = type metadata accessor for LemonadeAlbumsView();
  v5 = *(v4 - 8);
  v26[20] = v4 - 8;
  MEMORY[0x1EEE9AC00](v4 - 8);
  v26[1] = v6;
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49B7C6C();
  v26[2] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = v10;
  sub_1A49B7BD4();
  v26[6] = v11;
  v26[9] = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v26[21] = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49B7B00();
  v14 = *(v13 - 8);
  v26[10] = v13;
  v26[11] = v14;
  MEMORY[0x1EEE9AC00](v13);
  v26[3] = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49B79F4();
  v26[7] = v16;
  v26[12] = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v26[4] = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49B78B8();
  v26[14] = *(v18 - 8);
  v26[15] = v18;
  MEMORY[0x1EEE9AC00](v18);
  v26[8] = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49B772C();
  v26[17] = *(v20 - 8);
  v26[18] = v20;
  MEMORY[0x1EEE9AC00](v20);
  v26[16] = v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A49B9514();
  sub_1A49B98A8(a2, v10);
  v26[5] = MEMORY[0x1E697DA80];
  sub_1A49C0360(0, &qword_1EB146C50, type metadata accessor for SharedAlbumsAvailabilityObserver, MEMORY[0x1E697DA80]);
  v23 = sub_1A5247C84();
  LOBYTE(v10) = (*(*v27 + 136))(v23);

  LOBYTE(v27) = v10 & 1;
  sub_1A49C03C4(a2, v7, type metadata accessor for LemonadeAlbumsView);
  v24 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  sub_1A49B942C(v7, v25 + v24, type metadata accessor for LemonadeAlbumsView);
  sub_1A49B7E2C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49B93BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, &qword_1EB120A70);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A49B942C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A49B9494(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadeAlbumsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1A49B89E8(a1, v6, a2);
}

uint64_t sub_1A49B9514()
{
  v1 = v0;
  v2 = sub_1A5242D14();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for LemonadeAlbumsView();
  v9 = MEMORY[0x1E697DA80];
  sub_1A49C0360(0, &qword_1EB146C50, type metadata accessor for SharedAlbumsAvailabilityObserver, MEMORY[0x1E697DA80]);
  v10 = sub_1A5247C84();
  v11 = (*(*v27 + 136))(v10);

  sub_1A49C0360(0, &qword_1EB146C58, type metadata accessor for MacSyncedAlbumsAvailabilityObserver, v9);
  v12 = sub_1A5247C84();
  v13 = v27;
  v14 = (*((*MEMORY[0x1E69E7D40] & *v27) + 0xA0))(v12);

  sub_1A49BF2A0(0, &qword_1EB146C60, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1A52F8E10;
  *(v15 + 32) = 0;
  v16 = 1;
  if (v14)
  {
    v15 = sub_1A49BE2CC(1, 2, 1, v15);
    *(v15 + 16) = 2;
    *(v15 + 33) = 1;
    v16 = 2;
  }

  if (v11)
  {
    v17 = *(v15 + 24);
    if (v16 >= v17 >> 1)
    {
      v15 = sub_1A49BE2CC((v17 > 1), v16 + 1, 1, v15);
    }

    *(v15 + 16) = v16 + 1;
    *(v15 + v16 + 32) = 2;
    LOBYTE(v27) = *(*(v1 + *(v8 + 32)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
    v26 = 3;
    if (!static LemonadePresentationContext.== infix(_:_:)(&v27, &v26))
    {
      sub_1A3D61808(v7);
      v18 = v25;
      (*(v25 + 104))(v4, *MEMORY[0x1E69C2210], v2);
      v19 = sub_1A5242D04();
      v20 = *(v18 + 8);
      v20(v4, v2);
      v20(v7, v2);
      if ((v19 & 1) == 0)
      {
        v22 = *(v15 + 16);
        v21 = *(v15 + 24);
        if (v22 >= v21 >> 1)
        {
          v15 = sub_1A49BE2CC((v21 > 1), v22 + 1, 1, v15);
        }

        *(v15 + 16) = v22 + 1;
        *(v15 + v22 + 32) = 3;
      }
    }
  }

  return v15;
}

uint64_t sub_1A49B98A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v112 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView();
  MEMORY[0x1EEE9AC00](v112);
  v103 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E697F948];
  sub_1A49C02DC(0, &qword_1EB146CA0, sub_1A44FCAE4, type metadata accessor for LemonadeSharedAlbumsActivityFeedView, MEMORY[0x1E697F948]);
  v107 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v110 = &v95 - v6;
  sub_1A49B7DE4(0);
  v119 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v114 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FCAE4();
  v109 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider(0);
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v102 = (&v95 - v13);
  sub_1A49B7D50();
  v113 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider(0);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v100 = (&v95 - v18);
  sub_1A49C02DC(0, &qword_1EB146CA8, sub_1A49B7D08, sub_1A49B7DE4, v4);
  v116 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v118 = &v95 - v20;
  sub_1A49C02DC(0, &qword_1EB146CB0, sub_1A44FCA1C, sub_1A49B7D50, v4);
  v106 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v108 = &v95 - v22;
  sub_1A49B7D08(0);
  v117 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v111 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49C0360(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v115 = &v95 - v26;
  sub_1A44FCA1C();
  v105 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v95 - v34);
  v36 = type metadata accessor for LemonadeAlbumsView();
  v37 = *(a1 + v36[9]);
  v38 = *(v37 + 16);
  v39 = (a1 + v36[13]);
  v40 = *v39;
  v41 = *(v39 + 1);
  LOBYTE(v121) = v40;
  *(&v121 + 1) = v41;
  sub_1A49BF2A0(0, &qword_1EB121C40, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E6981790]);
  v42 = v38;
  sub_1A524B6A4();
  if (v124 > 1u)
  {
    if (v124 == 2)
    {
      v60 = *(v37 + 40);
      v61 = v60;
      v62 = v42;
      v63 = v102;
      sub_1A4244F30(v62, v60, v102);
      v64 = v99;
      sub_1A49C03C4(v63, v99, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);
      v65 = *(a1 + v36[8]);
      v66 = sub_1A52442E4();
      v67 = v115;
      (*(*(v66 - 8) + 56))(v115, 1, 1, v66);
      v123 = 0;
      v121 = 0u;
      v122 = 0u;
      v68 = sub_1A49C042C(&qword_1EB136130, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);

      v69 = v98;
      v70 = sub_1A3C30368();
      v71 = sub_1A3C5A374();
      v93 = v69;
      v72 = v104;
      sub_1A437CBD4(v64, v65, v67, 0, v70 & 1, &v121, 0, 0, v104, v71 & 1, v93, v68);
      sub_1A49C03C4(v72, v110, sub_1A44FCAE4);
      swift_storeEnumTagMultiPayload();
      sub_1A49C042C(&qword_1EB146BE8, sub_1A44FCAE4);
      sub_1A49C042C(&qword_1EB129580, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
      v73 = v114;
      sub_1A5249744();
      sub_1A49C03C4(v73, v118, sub_1A49B7DE4);
      swift_storeEnumTagMultiPayload();
      sub_1A49B7F68();
      sub_1A49B8044();
      sub_1A5249744();

      sub_1A49C0474(v73, sub_1A49B7DE4);
      sub_1A49C0474(v72, sub_1A44FCAE4);
      v58 = type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider;
      v59 = v63;
    }

    else
    {
      sub_1A4030F64(&v121);
      v124 = v121;
      v125 = v122;
      v89 = *(a1 + v36[8]);

      v90 = v103;
      sub_1A4031754(&v124, v89, v103);
      sub_1A49C03C4(v90, v110, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
      swift_storeEnumTagMultiPayload();
      sub_1A49C042C(&qword_1EB146BE8, sub_1A44FCAE4);
      sub_1A49C042C(&qword_1EB129580, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
      v91 = v114;
      sub_1A5249744();
      sub_1A49C03C4(v91, v118, sub_1A49B7DE4);
      swift_storeEnumTagMultiPayload();
      sub_1A49B7F68();
      sub_1A49B8044();
      sub_1A5249744();

      sub_1A49C0474(v91, sub_1A49B7DE4);
      v58 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView;
      v59 = v90;
    }
  }

  else if (v124)
  {
    sub_1A49B93BC(0, &qword_1EB146C88, MEMORY[0x1E697DA80]);
    v74 = v42;
    sub_1A5247C84();
    v75 = v121;
    v76 = *(v37 + 40);
    v77 = v76;
    v78 = v100;
    sub_1A43D8F98(v74, v75, v76, v100);
    v79 = v97;
    sub_1A49C03C4(v78, v97, type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider);
    v80 = *(a1 + v36[8]);
    v81 = sub_1A52442E4();
    v82 = v115;
    (*(*(v81 - 8) + 56))(v115, 1, 1, v81);
    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    v83 = sub_1A49C042C(&qword_1EB1297C8, type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider);

    v84 = v96;
    v85 = sub_1A3C30368();
    v86 = sub_1A3C5A374();
    v94 = v84;
    v87 = v101;
    sub_1A437CBD4(v79, v80, v82, 0, v85 & 1, &v121, 0, 0, v101, v86 & 1, v94, v83);
    sub_1A49C03C4(v87, v108, sub_1A49B7D50);
    swift_storeEnumTagMultiPayload();
    sub_1A49C042C(&qword_1EB146BD0, sub_1A44FCA1C);
    sub_1A49C042C(&qword_1EB146BD8, sub_1A49B7D50);
    v88 = v111;
    sub_1A5249744();
    sub_1A49C03C4(v88, v118, sub_1A49B7D08);
    swift_storeEnumTagMultiPayload();
    sub_1A49B7F68();
    sub_1A49B8044();
    sub_1A5249744();

    sub_1A49C0474(v88, sub_1A49B7D08);
    sub_1A49C0474(v87, sub_1A49B7D50);
    v58 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider;
    v59 = v78;
  }

  else
  {
    sub_1A49B93BC(0, &qword_1EB146C88, MEMORY[0x1E697DA80]);
    v43 = v42;
    v114 = v29;
    v44 = a1;
    v45 = v43;
    sub_1A5247C84();
    v46 = v121;
    v47 = *(v37 + 40);
    v48 = v47;
    v49 = v45;
    sub_1A45F1810(v45, v46, v47, v35);
    sub_1A49C03C4(v35, v32, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
    v50 = *(v44 + v36[8]);
    v51 = sub_1A52442E4();
    v52 = v115;
    (*(*(v51 - 8) + 56))(v115, 1, 1, v51);
    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    v53 = sub_1A49C042C(&qword_1EB12A250, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);

    v54 = sub_1A3C30368();
    v55 = sub_1A3C5A374();
    v56 = v114;
    sub_1A437CBD4(v32, v50, v52, 0, v54 & 1, &v121, 0, 0, v114, v55 & 1, v30, v53);
    sub_1A49C03C4(v56, v108, sub_1A44FCA1C);
    swift_storeEnumTagMultiPayload();
    sub_1A49C042C(&qword_1EB146BD0, sub_1A44FCA1C);
    sub_1A49C042C(&qword_1EB146BD8, sub_1A49B7D50);
    v57 = v111;
    sub_1A5249744();
    sub_1A49C03C4(v57, v118, sub_1A49B7D08);
    swift_storeEnumTagMultiPayload();
    sub_1A49B7F68();
    sub_1A49B8044();
    sub_1A5249744();

    sub_1A49C0474(v57, sub_1A49B7D08);
    sub_1A49C0474(v56, sub_1A44FCA1C);
    v58 = type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider;
    v59 = v35;
  }

  return sub_1A49C0474(v59, v58);
}

void sub_1A49BA940(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1A5249234();
  MEMORY[0x1EEE9AC00](v4);
  type metadata accessor for LemonadeAlbumsView();
  sub_1A49BF2A0(0, &qword_1EB121C40, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = a1;
  sub_1A49BF16C(0, &qword_1EB146BF8, sub_1A49B81E8, &type metadata for LemonadeAlbumsViewSegment, type metadata accessor for LemonadeAlbumsTabBar);
  v6 = v5;
  v7 = *(v5 + 40);
  *(a2 + v7) = swift_getKeyPath();
  sub_1A3F88738(0);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + *(v6 + 44);
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49BAC30@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v75 = sub_1A5249D04();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(a1 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v70 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  v6 = *(a1 + 16);
  v67 = *(a1 + 24);
  v7 = v67;
  type metadata accessor for UIKitSegmentedControl();
  v8 = sub_1A524CB74();
  sub_1A49BF010();
  v10 = v9;
  WitnessTable = swift_getWitnessTable();
  v12 = *(v7 + 8);
  v94 = v8;
  v95 = v6;
  v96 = v10;
  v97 = WitnessTable;
  v98 = v12;
  sub_1A524B9D4();
  sub_1A5249754();
  v13 = swift_getWitnessTable();
  sub_1A49BF114();
  v15 = v14;
  v16 = sub_1A5242084();
  v17 = sub_1A49C042C(&qword_1EB130108, sub_1A49BF114);
  v18 = sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
  v94 = v15;
  v95 = v16;
  v96 = v17;
  v97 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = swift_getWitnessTable();
  v91 = v13;
  v92 = v19;
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A5248804();
  v89 = swift_getWitnessTable();
  v90 = MEMORY[0x1E697E5D8];
  v87 = swift_getWitnessTable();
  v88 = MEMORY[0x1E697EBE0];
  swift_getWitnessTable();
  v20 = sub_1A524B894();
  v21 = sub_1A5248804();
  v22 = swift_getWitnessTable();
  v85 = v22;
  v86 = MEMORY[0x1E697EBF8];
  v23 = swift_getWitnessTable();
  v94 = v20;
  v95 = v21;
  v96 = v22;
  v97 = v23;
  swift_getOpaqueTypeMetadata2();
  v94 = v20;
  v95 = v21;
  v96 = v22;
  v97 = v23;
  v24 = swift_getOpaqueTypeConformance2();
  sub_1A5247D04();
  sub_1A5249754();
  v25 = sub_1A524B514();
  v60 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v58 - v26;
  sub_1A49BF16C(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  v28 = sub_1A5248804();
  v65 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v59 = v58 - v29;
  v30 = swift_getWitnessTable();
  v83 = v24;
  v84 = v30;
  v82 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v58[1] = v31;
  v32 = sub_1A3E754D0();
  v80 = v31;
  v81 = v32;
  v33 = swift_getWitnessTable();
  v66 = v28;
  v94 = v28;
  v95 = v33;
  v62 = v33;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v61 = v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v63 = v58 - v37;
  v38 = v6;
  v77 = v6;
  v39 = v67;
  v78 = v67;
  v40 = v68;
  v79 = v68;
  sub_1A524B504();
  v41 = v71;
  v42 = v70;
  v43 = v69;
  (*(v71 + 16))(v70, v40, v69);
  v44 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v38;
  *(v45 + 24) = v39;
  v46 = v59;
  v47 = v45 + v44;
  v48 = v73;
  (*(v41 + 32))(v47, v42, v43);
  sub_1A3E75420();
  sub_1A524ABE4();

  (*(v60 + 8))(v27, v25);
  sub_1A5249CE4();
  sub_1A49BF2A0(0, &qword_1EB12F500, MEMORY[0x1E6980D08], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  LOBYTE(v39) = sub_1A524A044();
  *(inited + 32) = v39;
  v50 = sub_1A524A024();
  *(inited + 33) = v50;
  sub_1A524A034();
  sub_1A524A034();
  if (sub_1A524A034() != v39)
  {
    sub_1A524A034();
  }

  sub_1A524A034();
  if (sub_1A524A034() != v50)
  {
    sub_1A524A034();
  }

  v51 = v61;
  v52 = v66;
  sub_1A524ABF4();
  (*(v74 + 8))(v48, v75);
  (*(v65 + 8))(v46, v52);
  v53 = *(v34 + 16);
  v54 = v63;
  v55 = OpaqueTypeMetadata2;
  v53(v63, v51, OpaqueTypeMetadata2);
  v56 = *(v34 + 8);
  v56(v51, v55);
  v53(v76, v54, v55);
  return (v56)(v54, v55);
}

uint64_t sub_1A49BB680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a1;
  v53 = a4;
  type metadata accessor for UIKitSegmentedControl();
  sub_1A524CB74();
  sub_1A49BF010();
  swift_getWitnessTable();
  v51 = a3;
  v69 = *(a3 + 8);
  sub_1A524B9D4();
  sub_1A5249754();
  WitnessTable = swift_getWitnessTable();
  sub_1A49BF114();
  sub_1A5242084();
  sub_1A49C042C(&qword_1EB130108, sub_1A49BF114);
  sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = WitnessTable;
  v63 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A5248804();
  v60 = swift_getWitnessTable();
  v61 = MEMORY[0x1E697E5D8];
  v58 = swift_getWitnessTable();
  v59 = MEMORY[0x1E697EBE0];
  swift_getWitnessTable();
  v7 = sub_1A524B894();
  v8 = sub_1A5248804();
  v56 = swift_getWitnessTable();
  v57 = MEMORY[0x1E697EBF8];
  v9 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = v7;
  v66 = v8;
  v67 = v56;
  v68 = v9;
  v49 = swift_getOpaqueTypeConformance2();
  v11 = sub_1A5247D04();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v45 - v18;
  v19 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - v24;
  v50 = sub_1A5249754();
  v26 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v28 = &v45 - v27;
  if (shouldUseNewCollectionsLayout()())
  {
    v29 = type metadata accessor for LemonadeAlbumsTabBar();
    sub_1A49BBE6C(v29);
    v30 = *(v19 + 16);
    v30(v25, v22, OpaqueTypeMetadata2);
    v31 = *(v19 + 8);
    v31(v22, OpaqueTypeMetadata2);
    v30(v22, v25, OpaqueTypeMetadata2);
    swift_getWitnessTable();
    v32 = v49;
    sub_1A3DF4798(v22, OpaqueTypeMetadata2);
    v31(v22, OpaqueTypeMetadata2);
    v31(v25, OpaqueTypeMetadata2);
  }

  else
  {
    v46 = v26;
    v33 = v12;
    v32 = v49;
    v34 = sub_1A524A024();
    sub_1A524A034();
    sub_1A524A034();
    v35 = sub_1A524A034();
    if (v35 != v34)
    {
      v35 = sub_1A524A034();
    }

    MEMORY[0x1EEE9AC00](v35);
    v37 = v51;
    v36 = v52;
    *(&v45 - 4) = a2;
    *(&v45 - 3) = v37;
    *(&v45 - 2) = v36;
    sub_1A5247D14();
    v52 = swift_getWitnessTable();
    v38 = *(v33 + 16);
    v39 = v47;
    v38(v47, v16, v11);
    v40 = *(v33 + 8);
    v40(v16, v11);
    v41 = v48;
    v38(v48, v39, v11);
    sub_1A3DF4890(v41, OpaqueTypeMetadata2, v11);
    v40(v41, v11);
    v40(v39, v11);
    v26 = v46;
  }

  v42 = swift_getWitnessTable();
  v54 = v32;
  v55 = v42;
  v43 = v50;
  swift_getWitnessTable();
  (*(v26 + 16))(v53, v28, v43);
  return (*(v26 + 8))(v28, v43);
}

uint64_t sub_1A49BBE6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for UIKitSegmentedControl();
  sub_1A524CB74();
  sub_1A49BF010();
  swift_getWitnessTable();
  v31 = *(v3 + 8);
  sub_1A524B9D4();
  sub_1A5249754();
  WitnessTable = swift_getWitnessTable();
  sub_1A49BF114();
  v27 = v5;
  v28 = sub_1A5242084();
  v29 = sub_1A49C042C(&qword_1EB130108, sub_1A49BF114);
  v30 = sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = WitnessTable;
  v25 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A5248804();
  v22 = swift_getWitnessTable();
  v23 = MEMORY[0x1E697E5D8];
  v20 = swift_getWitnessTable();
  v21 = MEMORY[0x1E697EBE0];
  swift_getWitnessTable();
  v6 = sub_1A524B894();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-v8];
  sub_1A5249574();
  v15 = v2;
  v16 = v3;
  v17 = v1;
  sub_1A524B884();
  v12 = v2;
  v13 = v3;
  v14 = v1;
  sub_1A5248804();
  v18 = swift_getWitnessTable();
  v19 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_1A524A4C4();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A49BC268@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  type metadata accessor for UIKitSegmentedControl();
  sub_1A524CB74();
  sub_1A49BF010();
  swift_getWitnessTable();
  v18[13] = *(a1 + 8);
  sub_1A524B9D4();
  sub_1A5249754();
  WitnessTable = swift_getWitnessTable();
  sub_1A49BF114();
  sub_1A5242084();
  sub_1A49C042C(&qword_1EB130108, sub_1A49BF114);
  sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
  v18[8] = swift_getOpaqueTypeConformance2();
  v18[6] = WitnessTable;
  v18[7] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A5248804();
  v18[4] = swift_getWitnessTable();
  v18[5] = MEMORY[0x1E697E5D8];
  v18[2] = swift_getWitnessTable();
  v18[3] = MEMORY[0x1E697EBE0];
  swift_getWitnessTable();
  v5 = sub_1A524B894();
  v6 = sub_1A5248804();
  v18[0] = swift_getWitnessTable();
  v18[1] = MEMORY[0x1E697EBF8];
  v18[9] = v5;
  v18[10] = v6;
  v18[11] = v18[0];
  v18[12] = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  v14 = type metadata accessor for LemonadeAlbumsTabBar();
  sub_1A49BBE6C(v14);
  v15 = *(v8 + 16);
  v15(v13, v10, OpaqueTypeMetadata2);
  v16 = *(v8 + 8);
  v16(v10, OpaqueTypeMetadata2);
  v15(a2, v13, OpaqueTypeMetadata2);
  return (v16)(v13, OpaqueTypeMetadata2);
}

uint64_t sub_1A49BC694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v90 = a1;
  v88 = a4;
  v86 = sub_1A5249A94();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v71 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC();
  v82 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v84 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v71 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  v74 = sub_1A5249234();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIKitSegmentedControl();
  v17 = sub_1A524CB74();
  sub_1A49BF010();
  v19 = v18;
  WitnessTable = swift_getWitnessTable();
  v21 = *(a3 + 8);
  v101 = v17;
  v102 = a2;
  v103 = v19;
  v104 = WitnessTable;
  v105 = v21;
  sub_1A524B9D4();
  sub_1A5249754();
  v22 = swift_getWitnessTable();
  sub_1A49BF114();
  v24 = v23;
  v25 = sub_1A5242084();
  v26 = sub_1A49C042C(&qword_1EB130108, sub_1A49BF114);
  v27 = sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
  v101 = v24;
  v102 = v25;
  v103 = v26;
  v104 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = swift_getWitnessTable();
  v98 = v22;
  v99 = v28;
  swift_getWitnessTable();
  v29 = sub_1A524B784();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v71 - v31;
  v33 = sub_1A5248804();
  v78 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v89 = &v71 - v34;
  v79 = v35;
  v81 = sub_1A5248804();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v76 = &v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v77 = &v71 - v38;
  sub_1A3C52C70(0, &qword_1EB126A10);
  v39 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v39 sectionedFeedTabBarItemSpacing];

  v91 = a2;
  v92 = a3;
  v40 = v90;
  v93 = v90;
  sub_1A5249314();
  v75 = v32;
  sub_1A524B774();
  v41 = v40 + *(type metadata accessor for LemonadeAlbumsTabBar() + 44);
  v42 = *v41;
  v43 = *(v41 + 8);
  v45 = *(v41 + 16);
  v44 = *(v41 + 24);
  if (*(v41 + 32) != 1)
  {

    sub_1A524D254();
    v46 = v30;
    v47 = sub_1A524A014();
    sub_1A5246DF4();

    v30 = v46;
    v48 = v72;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v42, v43, v45, v44, 0);
    (*(v73 + 8))(v48, v74);
  }

  v74 = swift_getWitnessTable();
  v49 = v75;
  sub_1A524B0C4();
  (*(v30 + 8))(v49, v29);
  sub_1A3DC7F98(v15);
  v50 = v85;
  v51 = v83;
  v52 = v86;
  (*(v85 + 104))(v83, *MEMORY[0x1E697FF40], v86);
  (*(v50 + 56))(v51, 0, 1, v52);
  v53 = *(v82 + 48);
  v54 = v87;
  sub_1A49C03C4(v15, v87, sub_1A3DC7D88);
  sub_1A49C03C4(v51, v54 + v53, sub_1A3DC7D88);
  v55 = *(v50 + 48);
  v56 = v55(v54, 1, v52);
  v57 = v84;
  if (v56 == 1)
  {
    sub_1A49C0474(v51, sub_1A3DC7D88);
    sub_1A49C0474(v15, sub_1A3DC7D88);
    if (v55(v54 + v53, 1, v52) == 1)
    {
      v58 = sub_1A3DC7D88;
    }

    else
    {
      v58 = sub_1A3DD0DCC;
    }
  }

  else
  {
    v90 = v15;
    sub_1A49C03C4(v54, v84, sub_1A3DC7D88);
    if (v55(v54 + v53, 1, v52) == 1)
    {
      sub_1A49C0474(v51, sub_1A3DC7D88);
      sub_1A49C0474(v90, sub_1A3DC7D88);
      (*(v50 + 8))(v57, v52);
      v58 = sub_1A3DD0DCC;
    }

    else
    {
      v59 = v71;
      (*(v50 + 32))(v71, v54 + v53, v52);
      sub_1A49C042C(&qword_1EB127B70, MEMORY[0x1E697FF50]);
      sub_1A524C594();
      v60 = *(v50 + 8);
      v60(v59, v52);
      sub_1A49C0474(v51, sub_1A3DC7D88);
      sub_1A49C0474(v90, sub_1A3DC7D88);
      v60(v57, v52);
      v58 = sub_1A3DC7D88;
    }
  }

  sub_1A49C0474(v54, v58);
  v96 = v74;
  v97 = MEMORY[0x1E697E5D8];
  v61 = v79;
  v62 = swift_getWitnessTable();
  v63 = v76;
  v64 = v89;
  sub_1A524B1A4();
  (*(v78 + 8))(v64, v61);
  v94 = v62;
  v95 = MEMORY[0x1E697EBE0];
  v65 = v81;
  swift_getWitnessTable();
  v66 = v80;
  v67 = *(v80 + 16);
  v68 = v77;
  v67(v77, v63, v65);
  v69 = *(v66 + 8);
  v69(v63, v65);
  v67(v88, v68, v65);
  return (v69)(v68, v65);
}

void sub_1A49BD268(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v7 = type metadata accessor for LemonadeAlbumsTabBar();
  v31 = *(v7 - 8);
  v29[1] = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v30 = v29 - v8;
  v9 = sub_1A524CB74();
  sub_1A49BF010();
  v11 = v10;
  WitnessTable = swift_getWitnessTable();
  v13 = *(a3 + 8);
  v34 = v11;
  v35 = v9;
  v45 = v9;
  v46 = a2;
  v47 = v11;
  v48 = WitnessTable;
  v33 = WitnessTable;
  v32 = v13;
  v49 = v13;
  v14 = sub_1A524B9D4();
  v37 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v36 = v29 - v16;
  v17 = sub_1A524B974();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = type metadata accessor for UIKitSegmentedControl();
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v38 = v20;
  v41 = v14;
  v21 = sub_1A5249754();
  v39 = *(v21 - 8);
  v40 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v43 = v29 - v23;
  v24 = MEMORY[0x1A590D320](v22);
  if (v24)
  {
    sub_1A524B974();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v44 = *(a1 + *(v7 + 36));
  MEMORY[0x1EEE9AC00](v24);
  v29[0] = swift_getKeyPath();
  v25 = v31;
  v26 = v30;
  (*(v31 + 16))(v30, a1, v7);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;
  (*(v25 + 32))(v28 + v27, v26, v7);
  sub_1A49BF114();
  sub_1A5242084();
  sub_1A49C042C(&qword_1EB130108, sub_1A49BF114);
  sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49BDBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a1;
  v68 = a4;
  v58 = a2;
  v65 = a5;
  v64 = sub_1A5242084();
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49BF114();
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v60 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v52 = v11;
  v54 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for LemonadeAlbumsTabBar();
  v13 = *(v53 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v53);
  v55 = v46 - v16;
  v17 = *(v13 + 16);
  v57 = v13 + 16;
  v59 = v17;
  v17(v15);
  v56 = *(v10 + 16);
  v56(v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v67, a3);
  sub_1A524CC54();
  v18 = sub_1A524CC44();
  v19 = *(v13 + 80);
  v20 = (v19 + 48) & ~v19;
  v21 = *(v10 + 80);
  v50 = v20;
  v22 = (v14 + v21 + v20) & ~v21;
  v51 = v19 | v21;
  v46[0] = v22;
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  v23[2] = v18;
  v23[3] = v24;
  v25 = v68;
  v23[4] = a3;
  v23[5] = v25;
  v26 = *(v13 + 32);
  v48 = v13 + 32;
  v49 = v26;
  v27 = v23 + v20;
  v28 = v55;
  v29 = v53;
  v26(v27, v55, v53);
  v30 = *(v10 + 32);
  v46[1] = v10 + 32;
  v47 = v30;
  v31 = v23 + v22;
  v32 = v54;
  v33 = a3;
  v30(v31, v54, a3);
  v34 = v29;
  (v59)(v28, v58, v29);
  v35 = v32;
  v36 = v67;
  v56(v32, v67, a3);
  v37 = sub_1A524CC44();
  v38 = v46[0];
  v39 = swift_allocObject();
  *(v39 + 2) = v37;
  *(v39 + 3) = MEMORY[0x1E69E85E0];
  *(v39 + 4) = v33;
  v40 = v68;
  *(v39 + 5) = v68;
  v49(&v39[v50], v28, v34);
  v47(&v39[v38], v35, v33);
  sub_1A524B944();
  v69 = v33;
  v70 = v40;
  v71 = v36;

  v41 = v60;
  sub_1A524B854();
  v42 = v61;
  sub_1A5247F14();
  sub_1A49C042C(&qword_1EB130108, sub_1A49BF114);
  sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
  v43 = v64;
  v44 = v62;
  sub_1A524A9E4();

  (*(v66 + 8))(v42, v43);
  return (*(v63 + 8))(v41, v44);
}

uint64_t sub_1A49BE1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeAlbumsTabBar();
  v8 = sub_1A524B974();
  MEMORY[0x1A5906C60](v8);
  v9 = sub_1A524C594();
  result = (*(v5 + 8))(v7, a2);
  *a3 = v9 & 1;
  return result;
}

char *sub_1A49BE2CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A49BF2A0(0, &qword_1EB146C60, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1A49BE3DC()
{
  result = qword_1EB146C68;
  if (!qword_1EB146C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146C68);
  }

  return result;
}

unint64_t sub_1A49BE434()
{
  result = qword_1EB146C70;
  if (!qword_1EB146C70)
  {
    sub_1A49BF2A0(255, &qword_1EB146C78, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146C70);
  }

  return result;
}

unint64_t sub_1A49BE4B0(uint64_t a1)
{
  result = sub_1A49BE4D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A49BE4D8()
{
  result = qword_1EB146C80;
  if (!qword_1EB146C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146C80);
  }

  return result;
}

void sub_1A49BE580()
{
  sub_1A49C0360(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A49C0360(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A49BF2A0(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A49C0360(319, &qword_1EB12F438, MEMORY[0x1E69C2998], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for LemonadeNavigationContext(319);
          if (v4 <= 0x3F)
          {
            type metadata accessor for LemonadePhotoLibraryContext();
            if (v5 <= 0x3F)
            {
              sub_1A49C0360(319, &qword_1EB146C50, type metadata accessor for SharedAlbumsAvailabilityObserver, MEMORY[0x1E697DA80]);
              if (v6 <= 0x3F)
              {
                sub_1A49C0360(319, &qword_1EB146C58, type metadata accessor for MacSyncedAlbumsAvailabilityObserver, MEMORY[0x1E697DA80]);
                if (v7 <= 0x3F)
                {
                  sub_1A49B93BC(319, &qword_1EB146C88, MEMORY[0x1E697DA80]);
                  if (v8 <= 0x3F)
                  {
                    sub_1A49BF2A0(319, &qword_1EB121C40, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1A49BE818()
{
  result = qword_1EB146C90;
  if (!qword_1EB146C90)
  {
    sub_1A49C02DC(255, &qword_1EB146C48, sub_1A49B8680, sub_1A45C999C, MEMORY[0x1E697E830]);
    sub_1A49B85B0();
    sub_1A49B763C();
    sub_1A49C042C(&qword_1EB146C20, sub_1A49B763C);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49C042C(&qword_1EB13E570, sub_1A45C999C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146C90);
  }

  return result;
}

void sub_1A49BE9B8()
{
  sub_1A524B974();
  if (v0 <= 0x3F)
  {
    sub_1A524CB74();
    if (v1 <= 0x3F)
    {
      sub_1A49C0360(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A49BF2A0(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A49BF2A0(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A49BEB08(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1A5249A94() - 8);
  v10 = *(v9 + 64);
  v11 = *(v6 + 80);
  if (!*(v9 + 84))
  {
    ++v10;
  }

  if (v10 <= 8)
  {
    v10 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_32;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((v12 + ((*(v6 + 64) + ((v11 + 16) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + 48) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v8 + 1;
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

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_32;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_32:
    v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      v23 = *(v6 + 48);

      return v23((v21 + v11 + 8) & ~v11, v7, v5);
    }

    else
    {
      v22 = *v21;
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void sub_1A49BED4C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1A5249A94() - 8);
  v12 = *(v11 + 64);
  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = (v14 + ((*(v8 + 64) + ((v13 + 16) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14;
  if (!*(v11 + 84))
  {
    ++v12;
  }

  if (v12 <= 8)
  {
    v12 = 8;
  }

  v16 = ((v12 + v15 + 48) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v19 = 0;
    v20 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (((v12 + v15 + 48) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a3 - v10 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_21:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_37;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      if (!a2)
      {
        return;
      }

LABEL_37:
      v22 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v24 = *(v25 + 56);

        v24((v22 + v13 + 8) & ~v13, a2, v9, v7);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v23 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v23 = (a2 - 1);
        }

        *v22 = v23;
      }

      return;
    }
  }

  if (v16)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  if (v16)
  {
    bzero(a1, v16);
    *a1 = ~v10 + a2;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

void sub_1A49BF010()
{
  if (!qword_1EB146C98)
  {
    sub_1A49BF114();
    sub_1A5242084();
    sub_1A49C042C(&qword_1EB130108, sub_1A49BF114);
    sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146C98);
    }
  }
}

void sub_1A49BF114()
{
  if (!qword_1EB130100)
  {
    v0 = sub_1A524B874();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130100);
    }
  }
}

void sub_1A49BF16C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A49BF1E0()
{
  type metadata accessor for LemonadeAlbumsTabBar();
  sub_1A49BF2A0(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void sub_1A49BF2A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A49BF308()
{
  type metadata accessor for LemonadeAlbumsTabBar();
  sub_1A49BF2A0(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A524BC74();
  type metadata accessor for UIKitSegmentedControl();
  sub_1A524CB74();
  sub_1A49BF010();
  swift_getWitnessTable();
  sub_1A524B9D4();
  sub_1A5249754();
  swift_getWitnessTable();
  sub_1A49BF114();
  sub_1A5242084();
  sub_1A49C042C(&qword_1EB130108, sub_1A49BF114);
  sub_1A49C042C(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8]);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getWitnessTable();
  return sub_1A524AFE4();
}

uint64_t objectdestroy_41Tm_0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LemonadeAlbumsTabBar();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));

  v4 = sub_1A524B974();
  (*(*(v1 - 8) + 8))(v3 + *(v4 + 32), v1);

  v5 = *(v2 + 40);
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5249A94();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v3 + *(v2 + 44);
  sub_1A3D35A84(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A49BF888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for LemonadeAlbumsTabBar() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1A49BDBA8(a1, v8, v5, v6, a2);
}

uint64_t sub_1A49BF924@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(*(type metadata accessor for LemonadeAlbumsTabBar() - 8) + 80);

  return sub_1A49BE1AC(v1 + ((v4 + 48) & ~v4), v3, a1);
}

uint64_t objectdestroy_48Tm()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for LemonadeAlbumsTabBar();
  v3 = *(*(v2 - 8) + 80);
  v14 = *(*(v2 - 8) + 64);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  swift_unknownObjectRelease();
  v6 = v0 + ((v3 + 48) & ~v3);

  v7 = sub_1A524B974();
  v8 = *(v4 + 8);
  v8(v6 + *(v7 + 32), v1);

  v9 = *(v2 + 40);
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A5249A94();
    v13 = *(v10 - 8);
    if (!(*(v13 + 48))(v6 + v9, 1, v10))
    {
      (*(v13 + 8))(v6 + v9, v10);
    }
  }

  else
  {
  }

  v11 = v6 + *(v2 + 44);
  sub_1A3D35A84(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32));

  v8(v0 + ((((v3 + 48) & ~v3) + v14 + v5) & ~v5), v1);

  return swift_deallocObject();
}

uint64_t sub_1A49BFC78(_BYTE *a1)
{
  v3 = *(v1 + 32);
  result = type metadata accessor for LemonadeAlbumsTabBar();
  if (*a1 == 1)
  {
    return sub_1A49BFFBC(v1 + ((((*(*(result - 8) + 80) + 48) & ~*(*(result - 8) + 80)) + *(*(result - 8) + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80)), result);
  }

  return result;
}

uint64_t sub_1A49BFD38@<X0>(uint64_t a1@<X8>)
{
  (*(*(v1 + 24) + 16))(*(v1 + 16));
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

id sub_1A49BFDA8(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [a1 librarySpecificFetchOptions];
  v8 = [v6 fetchRootAlbumCollectionListWithOptions_];

  v9 = [v8 firstObject];
  if (v9)
  {
    return v9;
  }

  v11 = sub_1A3C38A40();
  (*(v3 + 16))(v5, v11, v2);
  v12 = sub_1A5246F04();
  v13 = sub_1A524D254();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1A3C1C000, v12, v13, "could not access root album collection list", v14, 2u);
    MEMORY[0x1A590EEC0](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v15 = [a1 px_rootAlbumCollectionList];

  return v15;
}

uint64_t sub_1A49BFFBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  sub_1A524B974();
  return sub_1A524B904();
}

uint64_t sub_1A49C008C()
{
  type metadata accessor for LemonadeAlbumsView();
  v1 = *(v0 + 16);
  sub_1A49BF2A0(0, &qword_1EB121C40, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  v3 = 0;
  while (*(v1 + 16) != v3)
  {
    v4 = *(v1 + 32 + v3++);
    if (v4 == v5)
    {
      return result;
    }
  }

  return sub_1A524B6B4();
}

uint64_t sub_1A49C01A4(uint64_t a1, char *a2)
{
  type metadata accessor for LemonadeAlbumsView();
  v3 = *a2;
  sub_1A49BF2A0(0, &qword_1EB121C40, &type metadata for LemonadeAlbumsViewSegment, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  if (v5 == 1 && (v3 & 1) == 0)
  {
    return sub_1A524B6B4();
  }

  return result;
}

void sub_1A49C02DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A49C0360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49C03C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49C042C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A49C0474(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49C04D4()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1E40B8);
  __swift_project_value_buffer(v6, qword_1EB1E40B8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static HideAssetsIntent.title.modify())()
{
  if (qword_1EB1E40B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240BB4();
  __swift_project_value_buffer(v0, qword_1EB1E40B8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A49C0834()
{
  sub_1A49C3690(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1A5240BA4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A5240BB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1A5240094();
  __swift_allocate_value_buffer(v10, qword_1EB1E40D8);
  __swift_project_value_buffer(v10, qword_1EB1E40D8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1A5240BC4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1A52400A4();
}

uint64_t (*static HideAssetsIntent.description.modify())()
{
  if (qword_1EB1E40D0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240094();
  __swift_project_value_buffer(v0, qword_1EB1E40D8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static HideAssetsIntent.parameterSummary.getter()
{
  sub_1A49C3628(0, &qword_1EB146CB8, sub_1A49C0EE4, &type metadata for HideAssetsIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A49C3628(0, &qword_1EB146CC8, sub_1A49C0EE4, &type metadata for HideAssetsIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A49C0EE4();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A49C0F5C();
  sub_1A52402F4();

  sub_1A5240304();
  swift_getKeyPath();
  sub_1A49C0FE0();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A49C0EE4()
{
  result = qword_1EB146CC0;
  if (!qword_1EB146CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146CC0);
  }

  return result;
}

void sub_1A49C0F5C()
{
  if (!qword_1EB146CD0)
  {
    sub_1A3F57E84();
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146CD0);
    }
  }
}

void sub_1A49C0FE0()
{
  if (!qword_1EB146CD8)
  {
    sub_1A49C3628(255, &qword_1EB146CE0, sub_1A49C1078, &type metadata for HideAssetsIntentAction, MEMORY[0x1E695A1A0]);
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146CD8);
    }
  }
}

unint64_t sub_1A49C1078()
{
  result = qword_1EB146CE8;
  if (!qword_1EB146CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146CE8);
  }

  return result;
}

uint64_t HideAssetsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  v1 = MEMORY[0x1E69E6720];
  sub_1A49C3690(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v33 - v5;
  v41 = sub_1A5240334();
  v45 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49C3690(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v1);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v33 - v10;
  v11 = sub_1A5240BA4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v36 = sub_1A5240BB4();
  v17 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  sub_1A3F57E84();
  v37 = v18;
  sub_1A524C5B4();
  sub_1A5241244();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = *(v12 + 104);
  v20(v14, v19, v11);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v20(v14, v19, v11);
  v21 = v38;
  sub_1A5240BC4();
  v22 = *(v17 + 56);
  v23 = v21;
  v24 = v36;
  v22(v21, 0, 1, v36);
  v47 = 0;
  sub_1A5240174();
  v35 = *MEMORY[0x1E695A500];
  v25 = *(v45 + 104);
  v45 += 104;
  v34 = v25;
  v26 = v40;
  v27 = v41;
  v25(v40);
  sub_1A3FC2D54(&qword_1EB12EEC8, &qword_1EB12EEB8, &type metadata for AssetEntity);
  sub_1A3F58824();
  v28 = sub_1A5240034();
  v29 = v42;
  *v42 = v28;
  sub_1A49C3628(0, &qword_1EB146CE0, sub_1A49C1078, &type metadata for HideAssetsIntentAction, MEMORY[0x1E695A1A0]);
  v22(v23, 1, 1, v24);
  v46 = 0;
  v30 = sub_1A523FDB4();
  v31 = *(*(v30 - 8) + 56);
  v31(v43, 1, 1, v30);
  v31(v44, 1, 1, v30);
  v34(v26, v35, v27);
  sub_1A49C23BC();
  result = sub_1A523FF74();
  v29[1] = result;
  return result;
}

uint64_t HideAssetsIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = *v1;
  sub_1A524CC54();
  *(v2 + 64) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 72) = v4;
  *(v2 + 80) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A49C17E4, v4, v3);
}

uint64_t sub_1A49C17E4()
{
  v1 = v0[6];
  v2 = v0[7];
  v0[2] = v1;
  v0[3] = v2;
  sub_1A523FF44();
  v3 = *(v0[4] + 16);

  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  sub_1A49C0EE4();
  *v5 = v0;
  v5[1] = sub_1A3FC0434;
  v6 = v0[5];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v6, 0, 0, 0, 0, v3, 0, &unk_1A53795D0);
}

uint64_t sub_1A49C1944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_1A524CC54();
  v3[8] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A49C19E0, v5, v4);
}

uint64_t sub_1A49C19E0()
{
  sub_1A523FF44();
  if (*(v0 + 120))
  {
    v1 = sub_1A524EAB4();
  }

  else
  {
    v1 = 1;
  }

  v8 = *(v0 + 48);

  sub_1A523FF44();
  v2 = *(v0 + 32);
  *(v0 + 88) = v2;
  *(v0 + 16) = v8;
  sub_1A49C0EE4();
  v3 = AppIntent.px_intentName.getter();
  v5 = v4;
  *(v0 + 96) = v4;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1A3FC0824;

  return sub_1A49C24BC(v1 & 1, v2, v3, v5);
}

uint64_t sub_1A49C1B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return sub_1A49C24BC(a1, a2, a3, a4);
}

void (*HideAssetsIntent.assets.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

void (*HideAssetsIntent.action.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A49C1D88@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E40B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1E40B8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A49C1E4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return HideAssetsIntent.perform()(a1);
}

uint64_t sub_1A49C1EE8(uint64_t a1)
{
  v2 = sub_1A49C0EE4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t static HideAssetsIntentAction.typeDisplayRepresentation.getter()
{
  sub_1A49C3690(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_1A5240BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A5240BB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  sub_1A5240BC4();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_1A5240384();
}

PhotosUICore::HideAssetsIntentAction_optional __swiftcall HideAssetsIntentAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t HideAssetsIntentAction.rawValue.getter()
{
  if (*v0)
  {
    return 0x656469686E75;
  }

  else
  {
    return 1701079400;
  }
}

uint64_t sub_1A49C22AC@<X0>(char *a1@<X8>)
{
  v2 = sub_1A524E824();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A49C2310(uint64_t a1)
{
  v2 = sub_1A49C23BC();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1A49C2360(uint64_t a1)
{
  v2 = sub_1A49C3398();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1A49C23BC()
{
  result = qword_1EB146CF0;
  if (!qword_1EB146CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146CF0);
  }

  return result;
}

uint64_t sub_1A49C2410(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A49C1944(a1, v5, v4);
}

uint64_t sub_1A49C24BC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 112) = a1;
  v5 = sub_1A5246F24();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_1A524CC54();
  *(v4 + 64) = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  *(v4 + 72) = v7;
  *(v4 + 80) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A49C25B8, v7, v6);
}

void sub_1A49C25B8()
{
  if (!(PXAppIntentsAssets(for:)(*(v0 + 16)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A49C2928(uint64_t a1)
{
  sub_1A49C36F4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A49C375C();
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A49C37C8(v10, v6);
      result = sub_1A3FC1390(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_1A5240274();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _s12PhotosUICore22HideAssetsIntentActionO26caseDisplayRepresentationsSDyAC10AppIntents0H14RepresentationVGvgZ_0()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A49C3690(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = &v25 - v2;
  sub_1A49C3690(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v25 - v4;
  v38 = sub_1A5240BA4();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A5240BB4();
  v27 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A49C3690(0, &qword_1EB146D78, sub_1A49C36F4, MEMORY[0x1E69E6F90]);
  sub_1A49C36F4();
  v11 = v10;
  v40 = v10;
  v12 = *(v10 - 8);
  v35 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v30 = v14;
  *(v14 + 16) = xmmword_1A52FC9F0;
  v15 = v14 + v13;
  v34 = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_1A524C5B4();
  sub_1A5241244();
  v31 = *MEMORY[0x1E6968DF0];
  v16 = *(v5 + 104);
  v32 = v5 + 104;
  v33 = v16;
  v16(v39);
  sub_1A5240BC4();
  v17 = *(v41 + 56);
  v41 += 56;
  v28 = v17;
  v18 = v36;
  v17(v36, 1, 1, v9);
  v19 = sub_1A5240244();
  v26 = *(*(v19 - 8) + 56);
  v20 = v37;
  v26(v37, 1, 1, v19);
  v29 = v15;
  v21 = v20;
  sub_1A5240264();
  v22 = (v15 + v35);
  v35 = *(v40 + 48);
  *v22 = 1;
  sub_1A524C5B4();
  sub_1A5241244();
  v33(v39, v31, v38);
  sub_1A5240BC4();
  v28(v18, 1, 1, v27);
  v26(v21, 1, 1, v19);
  sub_1A5240264();
  v23 = sub_1A49C2928(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

unint64_t sub_1A49C30BC()
{
  result = qword_1EB146CF8;
  if (!qword_1EB146CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146CF8);
  }

  return result;
}

unint64_t sub_1A49C3114()
{
  result = qword_1EB146D00;
  if (!qword_1EB146D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D00);
  }

  return result;
}

unint64_t sub_1A49C3188()
{
  result = qword_1EB146D08;
  if (!qword_1EB146D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D08);
  }

  return result;
}

unint64_t sub_1A49C31E0()
{
  result = qword_1EB146D10;
  if (!qword_1EB146D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D10);
  }

  return result;
}

unint64_t sub_1A49C3238()
{
  result = qword_1EB146D18;
  if (!qword_1EB146D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D18);
  }

  return result;
}

unint64_t sub_1A49C3290()
{
  result = qword_1EB146D20;
  if (!qword_1EB146D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D20);
  }

  return result;
}

unint64_t sub_1A49C32E8()
{
  result = qword_1EB146D28;
  if (!qword_1EB146D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D28);
  }

  return result;
}

unint64_t sub_1A49C3340()
{
  result = qword_1EB146D30;
  if (!qword_1EB146D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D30);
  }

  return result;
}

unint64_t sub_1A49C3398()
{
  result = qword_1EB146D38;
  if (!qword_1EB146D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D38);
  }

  return result;
}

unint64_t sub_1A49C3444()
{
  result = qword_1EB146D40;
  if (!qword_1EB146D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D40);
  }

  return result;
}

unint64_t sub_1A49C349C()
{
  result = qword_1EB146D48;
  if (!qword_1EB146D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D48);
  }

  return result;
}

unint64_t sub_1A49C34F4()
{
  result = qword_1EB146D50;
  if (!qword_1EB146D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D50);
  }

  return result;
}

unint64_t sub_1A49C3598()
{
  result = qword_1EB146D68;
  if (!qword_1EB146D68)
  {
    sub_1A49C3628(255, &qword_1EB146D70, sub_1A49C0EE4, &type metadata for HideAssetsIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D68);
  }

  return result;
}

void sub_1A49C3628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A49C3690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A49C36F4()
{
  if (!qword_1EB146D80)
  {
    sub_1A5240274();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB146D80);
    }
  }
}

void sub_1A49C375C()
{
  if (!qword_1EB146D88)
  {
    sub_1A5240274();
    sub_1A49C34F4();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146D88);
    }
  }
}

uint64_t sub_1A49C37C8(uint64_t a1, uint64_t a2)
{
  sub_1A49C36F4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MapItem.init(id:assets:region:localizedTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  *(v9 + 56) = a1;
  *(v9 + 64) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a6;
  *(v9 + 32) = a7;
  *(v9 + 40) = a8;
  *(v9 + 48) = a9;
  *(v9 + 72) = a4;
  *(v9 + 80) = a5;
  return v9;
}

void MapItem.value.getter(void *a1@<X8>)
{
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t MapItem.diagnosticDescription.getter()
{
  sub_1A524E404();
  MEMORY[0x1A5907B60](4023401, 0xE300000000000000);
  MEMORY[0x1A5907B60](*(v0 + 56), *(v0 + 64));
  MEMORY[0x1A5907B60](0xD000000000000011, 0x80000001A53F6350);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  type metadata accessor for MKCoordinateRegion(0);
  sub_1A524E624();
  MEMORY[0x1A5907B60](0x737465737361202CLL, 0xEF3D746E756F632ELL);
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 count];
  }

  v2 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v2);

  return 0;
}

uint64_t MapItem.deinit()
{

  return v0;
}

uint64_t MapItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1A49C3A94(void *a1@<X8>)
{
  v3 = *(*v1 + 56);
  v2 = *(*v1 + 64);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49C3BB0()
{
  v1 = sub_1A5240FE4();
  v78 = *(v1 - 8);
  v79 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v77 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5240F74();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5240F84();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240FA4();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5240FC4();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1A5240F44();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241004();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v25 = sub_1A5241144();
  v81 = *(v25 - 8);
  v82 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v29 = MEMORY[0x1EEE9AC00](v28).n128_u64[0];
  v70 = &v60 - v30;
  if (([v0 respondsToSelector_] & 1) == 0 || (v31 = objc_msgSend(v0, sel_playbackStyle), (v31 - 1) >= 2) && (v31 - 4) >= 2 && v31 != 3)
  {
    [v0 mediaType];
  }

  v32 = sub_1A524C634();
  v33 = PXLocalizedString(v32);

  v80 = sub_1A524C674();
  v35 = v34;

  v36 = [v0 creationDate];
  if (!v36)
  {
    return v80;
  }

  v60 = v35;
  v37 = v36;
  sub_1A52410F4();

  v38 = v70;
  v39 = (*(v81 + 32))(v70, v27, v82);
  MEMORY[0x1A58FB740](v39);
  v40 = v61;
  sub_1A5240F34();
  sub_1A5240EF4();
  (*(v62 + 8))(v40, v63);
  v41 = *(v13 + 8);
  v41(v15, v12);
  v42 = v64;
  sub_1A5240FB4();
  sub_1A5240F24();
  (*(v65 + 8))(v42, v66);
  v41(v18, v12);
  v43 = v67;
  sub_1A5240F94();
  sub_1A5240F14();
  (*(v68 + 8))(v43, v69);
  v41(v21, v12);
  sub_1A49C4494();
  sub_1A5241124();
  v44 = (v41)(v24, v12);
  v68 = v84;
  v69 = v83;
  MEMORY[0x1A58FB740](v44);
  v45 = v72;
  sub_1A5240F64();
  v46 = v71;
  sub_1A5240F54();
  (*(v75 + 8))(v45, v76);
  sub_1A5240F04();
  (*(v73 + 8))(v46, v74);
  v41(v18, v12);
  v47 = v77;
  sub_1A5240FD4();
  sub_1A5240FF4();
  (*(v78 + 8))(v47, v79);
  v41(v21, v12);
  sub_1A5241124();
  v41(v24, v12);
  v48 = v83;
  v49 = v84;
  v50 = sub_1A524C634();
  v51 = PXLocalizedString(v50);

  sub_1A524C674();
  sub_1A3E072BC();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1A52FF950;
  v53 = MEMORY[0x1E69E6158];
  *(v52 + 56) = MEMORY[0x1E69E6158];
  v54 = sub_1A3D710E8();
  v55 = v60;
  *(v52 + 32) = v80;
  *(v52 + 40) = v55;
  *(v52 + 96) = v53;
  *(v52 + 104) = v54;
  v56 = v68;
  v57 = v69;
  *(v52 + 64) = v54;
  *(v52 + 72) = v57;
  *(v52 + 80) = v56;
  *(v52 + 136) = v53;
  *(v52 + 144) = v54;
  *(v52 + 112) = v48;
  *(v52 + 120) = v49;
  v58 = sub_1A524C6C4();

  (*(v81 + 8))(v38, v82);
  return v58;
}

unint64_t sub_1A49C4494()
{
  result = qword_1EB146D98;
  if (!qword_1EB146D98)
  {
    sub_1A5241004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D98);
  }

  return result;
}

void PhotosDynamicHeaderGeometryModel.headerMinimumHeight.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(&v6);
  v4 = (*(a2 + 32))(a1, a2);
  PhotosDynamicHeaderSpec.headerHeight(for:)(v4, v5);
}

uint64_t PhotosDynamicHeaderGeometryModel.mainContentCoveredFraction.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  v4 = *(a2 + 8);
  v4(a1, a2);
  (*(a2 + 24))(a1, a2);
  return (v4)(a1, a2);
}

uint64_t PhotosDynamicHeaderGeometryModel.previewContentInsets.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  v4 = *(a2 + 8);
  v6 = v5 - v4(a1, a2);
  PhotosDynamicHeaderGeometryModel.headerMinimumHeight.getter(a1, a2);
  if (v6 - v7 > 0.0)
  {
    (*(a2 + 56))(v9, a1, a2);
  }

  return (v4)(a1, a2);
}

uint64_t sub_1A49C4828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v34 = a2;
  v5 = *(a1 + 24);
  v6 = *(v5 - 8);
  v31 = a3;
  v32 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 32);
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, v23, a1, v20);
  v24 = (*(v19 + 88))(v22, a1);
  if (v24 == *off_1E7720FE8)
  {
    (*(v19 + 96))(v22, a1);
    (*(v15 + 32))(v17, v22, v14);
    v25 = sub_1A5242784();
    (*(v15 + 8))(v17, v14);
    return v25;
  }

  if (v24 == *off_1E7720FF8)
  {
    (*(v19 + 96))(v22, a1);
    v26 = v32;
    (*(v32 + 32))(v8, v22, v5);
    v25 = sub_1A5242784();
    (*(v26 + 8))(v8, v5);
    return v25;
  }

  if (v24 == *off_1E7720FF0)
  {
    (*(v19 + 96))(v22, a1);
    v27 = v30;
    (*(v30 + 32))(v12, v22, v10);
    v25 = sub_1A5242784();
    (*(v27 + 8))(v12, v10);
    return v25;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A49C4C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v31[1] = a6;
  v36 = a2;
  v37 = a5;
  v33 = a3;
  v7 = *(a1 + 24);
  v34 = *(v7 - 8);
  v35 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 32);
  v32 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v24, a1, v21);
  v25 = (*(v20 + 88))(v23, a1);
  if (v25 == *off_1E7720FE8)
  {
    (*(v20 + 96))(v23, a1);
    (*(v16 + 32))(v18, v23, v15);
    v26 = v37(v15, v36);
    (*(v16 + 8))(v18, v15);
    return v26;
  }

  v27 = v37;
  if (v25 == *off_1E7720FF8)
  {
    (*(v20 + 96))(v23, a1);
    v28 = v34;
    (*(v34 + 32))(v9, v23, v7);
    v26 = v27(v7, v33);
    (*(v28 + 8))(v9, v7);
    return v26;
  }

  if (v25 == *off_1E7720FF0)
  {
    (*(v20 + 96))(v23, a1);
    v29 = v32;
    (*(v32 + 32))(v13, v23, v11);
    v26 = v27(v11, v35);
    (*(v29 + 8))(v13, v11);
    return v26;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A49C5070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v31[1] = a6;
  v36 = a2;
  v37 = a5;
  v33 = a3;
  v7 = *(a1 + 24);
  v34 = *(v7 - 8);
  v35 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 32);
  v32 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v24, a1, v21);
  v25 = (*(v20 + 88))(v23, a1);
  if (v25 == *off_1E7720FE8)
  {
    (*(v20 + 96))(v23, a1);
    (*(v16 + 32))(v18, v23, v15);
    v26 = v37(v15, v36);
    (*(v16 + 8))(v18, v15);
    return v26 & 1;
  }

  v27 = v37;
  if (v25 == *off_1E7720FF8)
  {
    (*(v20 + 96))(v23, a1);
    v28 = v34;
    (*(v34 + 32))(v9, v23, v7);
    v26 = v27(v7, v33);
    (*(v28 + 8))(v9, v7);
    return v26 & 1;
  }

  if (v25 == *off_1E7720FF0)
  {
    (*(v20 + 96))(v23, a1);
    v29 = v32;
    (*(v32 + 32))(v13, v23, v11);
    v26 = v27(v11, v35);
    (*(v29 + 8))(v13, v11);
    return v26 & 1;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A49C55FC()
{
  sub_1A524EC94();
  sub_1A524DC04();
  return sub_1A524ECE4();
}

uint64_t sub_1A49C566C()
{
  sub_1A524EC94();
  sub_1A524DC04();
  return sub_1A524ECE4();
}

uint64_t sub_1A49C5708()
{
  if (!*(v0 + 56))
  {
    v2 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
    type metadata accessor for SharedLibraryStatusViewModel();
    sub_1A3C62B88(v2);
  }

  v1 = *(v0 + 56);

  return v1;
}

uint64_t (*sub_1A49C57F0(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1A49C5708();
  return sub_1A49C5838;
}

uint64_t sub_1A49C5848()
{
  v1 = *(v0 + 64);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1A49C58A8(v0);
    v3 = *(v0 + 64);
    *(v0 + 64) = v2;

    sub_1A41B617C(v3);
  }

  sub_1A41EDCF0(v1);
  return v2;
}

uint64_t sub_1A49C58A8(uint64_t a1)
{
  sub_1A3C47C38(0, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20[-1] - v3;
  v5 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A49C5FF8();
  (*(*v9 + 248))(v9);

  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_1A3C59944(v4, v8);
    v11 = type metadata accessor for LemonadeFixedShelvesDataSource();
    v12 = *(a1 + 16);
    sub_1A3C47C38(0, &qword_1EB126268, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6F90]);
    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1A52F8E10;
    sub_1A49C7794(v8, v14 + v13, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v15 = sub_1A3DC4DE4(v12, v14);
    sub_1A3C3B2D4();
    v16 = *(a1 + 24);

    v17 = sub_1A3C5A374();
    v18 = sub_1A3C3DD04(v16, v17 & 1);
    type metadata accessor for LemonadeShelvesViewModel(0);
    v20[3] = v11;
    v20[4] = sub_1A49C75B4(&qword_1EB1254B8, type metadata accessor for LemonadeFixedShelvesDataSource);
    v20[0] = v15;
    sub_1A3C5A7B8(v20, v18, 1u);
  }

  sub_1A3D3F02C(v4);
  return 0;
}

uint64_t sub_1A49C5B9C(uint64_t a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  return sub_1A41B617C(v2);
}

uint64_t (*sub_1A49C5BAC(uint64_t *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1A49C5848();
  return sub_1A49C5BF4;
}

uint64_t sub_1A49C5BF4(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 64);
  *(v2 + 64) = *a1;
  if (a2)
  {

    sub_1A41B617C(v3);
  }

  else
  {

    return sub_1A41B617C(v3);
  }
}

uint64_t sub_1A49C5C64()
{
  if (!*(v0 + 72))
  {
    v2 = sub_1A49C5FF8();
    v3 = (*(*v2 + 256))(v2);

    v4 = type metadata accessor for LemonadeFixedShelvesDataSource();
    v5 = sub_1A3DC4DE4(*(v0 + 16), v3);
    sub_1A3C3B2D4();
    v6 = *(v0 + 24);

    v7 = sub_1A3C5A374();
    v8 = sub_1A3C3DD04(v6, v7 & 1);
    type metadata accessor for LemonadeShelvesViewModel(0);
    v10[3] = v4;
    v10[4] = sub_1A49C75B4(&qword_1EB1254B8, type metadata accessor for LemonadeFixedShelvesDataSource);
    v10[0] = v5;
    sub_1A3C5A7B8(v10, v8, 1u);
  }

  v1 = *(v0 + 72);

  return v1;
}

uint64_t (*sub_1A49C5DD0(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1A49C5C64();
  return sub_1A49C5E18;
}

uint64_t sub_1A49C5E28()
{
  if (!*(v0 + 80))
  {
    sub_1A49C5EB4();
    [objc_allocWithZone(PXStorageTipCollectionViewDataSectionManager) initWithPhotoLibrary_];
    sub_1A412BBA0();
  }

  v1 = *(v0 + 80);

  return v1;
}

void sub_1A49C5EB4()
{
  if (!qword_1EB146DA0)
  {
    sub_1A3C52C70(255, &qword_1EB137500);
    sub_1A49C5F28();
    v0 = type metadata accessor for DataSectionItemListManager();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146DA0);
    }
  }
}

unint64_t sub_1A49C5F28()
{
  result = qword_1EB146DA8;
  if (!qword_1EB146DA8)
  {
    sub_1A3C52C70(255, &qword_1EB137500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146DA8);
  }

  return result;
}

uint64_t (*sub_1A49C5FA0(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1A49C5E28();
  return sub_1A49C5FE8;
}

uint64_t sub_1A49C5FF8()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    type metadata accessor for LemonadeFeatureLibrary(0);
    v1 = sub_1A3C4E89C(*(v0 + 16));
    *(v0 + 88) = v1;
  }

  return v1;
}

void sub_1A49C60D8(double a1)
{
  if (v1[18] == a1)
  {
    v1[18] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 472))(v3);
  }
}

uint64_t sub_1A49C61F4()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  v3 = -1;
  return sub_1A49C6374(v1);
}

uint64_t sub_1A49C622C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 464))();

  swift_beginAccess();
  return sub_1A49C7794(v1 + 96, a1, sub_1A49C74A0);
}

uint64_t sub_1A49C6374(uint64_t a1)
{
  swift_beginAccess();
  sub_1A49C7794(v1 + 96, v7, sub_1A49C74A0);
  sub_1A49C7794(v7, v11, sub_1A49C74A0);
  sub_1A49C7794(a1, &v12, sub_1A49C74A0);
  if (v11[40] == 255)
  {
    if (v13[24] == 255)
    {
      sub_1A49C76D0(v11, sub_1A49C74A0);
      sub_1A49C76D0(v7, sub_1A49C74A0);
      goto LABEL_7;
    }

LABEL_9:
    sub_1A49C76D0(v11, sub_1A49C7730);
    sub_1A49C76D0(v7, sub_1A49C74A0);
LABEL_10:
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 472))(v5);

    return sub_1A49C76D0(a1, sub_1A49C74A0);
  }

  sub_1A49C7794(v11, v10, sub_1A49C74A0);
  if (v13[24] == 255)
  {
    sub_1A3F6857C(v10);
    goto LABEL_9;
  }

  v8 = v12;
  v9[0] = *v13;
  *(v9 + 9) = *&v13[9];
  sub_1A4579798();
  v3 = sub_1A524C594();
  sub_1A3F6857C(&v8);
  sub_1A3F6857C(v10);
  sub_1A49C76D0(v11, sub_1A49C74A0);
  sub_1A49C76D0(v7, sub_1A49C74A0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_1A49C7794(a1, v11, sub_1A49C74A0);
  swift_beginAccess();
  sub_1A49C74F0(v11, v1 + 96);
  swift_endAccess();
  return sub_1A49C76D0(a1, sub_1A49C74A0);
}

double sub_1A49C664C()
{
  swift_getKeyPath();
  (*(*v0 + 464))();

  return v0[18];
}

BOOL sub_1A49C672C(uint64_t a1)
{
  v3 = *(*v1 + 232);
  v3();
  v4 = sub_1A42C1FA8(a1);

  if (v4)
  {
    (v3)(v5);
    v6 = &off_1F17032D0;
  }

  else
  {
    type metadata accessor for LemonadeNullNavigationParticipant();
    sub_1A3D76DF4();
    v6 = &off_1F170C3C0;
  }

  swift_getObjectType();
  v7 = (v6[3])(a1);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1A49C6814(uint64_t a1)
{
  v3 = *(*v1 + 232);
  v3();
  v4 = sub_1A42C1FA8(a1);

  if (v4)
  {
    (v3)(v5);
    v6 = &off_1F17032D0;
  }

  else
  {
    type metadata accessor for LemonadeNullNavigationParticipant();
    sub_1A3D76DF4();
    v6 = &off_1F170C3C0;
  }

  swift_getObjectType();
  v7 = (v6[4])();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1A49C68FC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  sub_1A524CC54();
  v3[11] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[12] = v5;
  v3[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A49C6998, v5, v4);
}

uint64_t sub_1A49C6998()
{
  v17 = v0;
  v1 = *(v0 + 64);
  v2 = *(**(v0 + 80) + 232);
  v2();
  LOBYTE(v1) = sub_1A42C1FA8(v1);

  if (v1)
  {
    v4 = (v2)(v3);
    v5 = &off_1F17032D0;
  }

  else
  {
    type metadata accessor for LemonadeNullNavigationParticipant();
    v4 = sub_1A3D76DF4();
    v5 = &off_1F170C3C0;
  }

  *(v0 + 112) = v4;
  ObjectType = swift_getObjectType();
  v7 = (v2)();

  if (v4 == v7)
  {
    v9 = *(v0 + 64);
    (v2)(v8);
    sub_1A42C1E00(v9, &v16);

    if (v16 != 24)
    {
      v10 = *(v0 + 80);
      *(v0 + 16) = v16;
      *(v0 + 56) = 0;
      (*(*v10 + 312))(v0 + 16);
      sub_1A3F6857C(v0 + 16);
    }
  }

  v15 = (v5[6] + *v5[6]);
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_1A47058A8;
  v13 = *(v0 + 64);
  v12 = *(v0 + 72);

  return v15(v13, v12, ObjectType, v5);
}

uint64_t sub_1A49C6C00(uint64_t a1)
{
  v2 = v1;
  sub_1A3C47C38(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
  v4 = *(type metadata accessor for LemonadeNavigationDestination() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52F8E10;
  *(v6 + v5) = v2;
  swift_storeEnumTagMultiPayload();
  v7 = *(*v2 + 232);

  v7(v8);
  v9 = sub_1A42C1FA8(a1);

  if (v9)
  {
    v7(v10);
    v11 = &off_1F17032D0;
  }

  else
  {
    type metadata accessor for LemonadeNullNavigationParticipant();
    sub_1A3D76DF4();
    v11 = &off_1F170C3C0;
  }

  swift_getObjectType();
  v12 = (v11[7])();
  swift_unknownObjectRelease();
  sub_1A49C6DE8(v12);
  return v6;
}

uint64_t sub_1A49C6DE8(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_1A4249320(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for LemonadeNavigationDestination();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A49C7054()
{

  sub_1A41B617C(*(v0 + 64));

  sub_1A49C76D0(v0 + 96, sub_1A49C74A0);
  v1 = OBJC_IVAR____TtC12PhotosUICore24LemonadeAccountViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A49C7120()
{
  sub_1A49C7054();

  return swift_deallocClassInstance();
}

uint64_t sub_1A49C71D0(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 448) + **(*v2 + 448));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A3FBBB04;

  return v8(a1, a2);
}

void sub_1A49C732C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 56) = xmmword_1A5301350;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = -1;
  *(v3 + 144) = 0x3FE0000000000000;
  sub_1A5241604();
  *(v3 + 16) = a1;
  if (a3)
  {
    v8 = a1;
    *(v3 + 24) = a3;
    if (a2)
    {
LABEL_3:

      v9 = 0;
      v10 = a2;
      goto LABEL_6;
    }
  }

  else
  {
    type metadata accessor for LemonadePhotoLibraryContext();
    *(v3 + 24) = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(a1, 0, 0);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v11 = objc_allocWithZone(PXFooterViewModelController);

  v9 = [v11 initWithPhotoLibrary:a1 provideLibraryCounts:1 provideCloudQuotaOffers:0];
  [v9 setIsActive_];
  v10 = [v9 footerViewModel];
LABEL_6:
  *(v4 + 32) = v10;
  *(v4 + 40) = v9;
  v12 = v10;
  type metadata accessor for LemonadeStatusViewVisibility();
  v13 = a2;
  sub_1A3D38898(v12);
}

double sub_1A49C7490()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 144) = result;
  return result;
}

void sub_1A49C74A0()
{
  if (!qword_1EB129778)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB129778);
    }
  }
}

uint64_t sub_1A49C74F0(uint64_t a1, uint64_t a2)
{
  sub_1A49C74A0();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A49C7554()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  sub_1A49C766C(v1, v2 + 96);
  return swift_endAccess();
}

uint64_t sub_1A49C75B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A49C7600()
{
  result = qword_1EB146DB8;
  if (!qword_1EB146DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146DB8);
  }

  return result;
}

uint64_t sub_1A49C766C(uint64_t a1, uint64_t a2)
{
  sub_1A49C74A0();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A49C76D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A49C7730()
{
  if (!qword_1EB146F50)
  {
    sub_1A49C74A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB146F50);
    }
  }
}

uint64_t sub_1A49C7794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49C77FC()
{
  swift_getKeyPath();
  (*(*v0 + 656))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollToTopSignal);
}

uint64_t sub_1A49C7868@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_1A49C78DC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollToTopSignal) != result)
  {
    v2 = result;
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    v5 = v1;
    v6 = v2;
    (*(*v1 + 664))(v4);
  }

  return result;
}

uint64_t sub_1A49C79DC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 656))();

  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollTargetIdentifier;
  swift_beginAccess();
  return sub_1A4579B00(v1 + v3, a1);
}

uint64_t sub_1A49C7B00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollTargetIdentifier;
  swift_beginAccess();
  sub_1A4579B00(v1 + v3, v8);
  sub_1A4579B00(v8, v12);
  sub_1A4579B00(a1, &v13);
  if (v12[40] == 255)
  {
    if (v14[24] == 255)
    {
      sub_1A4579A80(v12);
      sub_1A4579A80(v8);
      goto LABEL_7;
    }

LABEL_9:
    sub_1A49CC080(v12, sub_1A49C7730);
    sub_1A4579A80(v8);
LABEL_10:
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 664))(v6);

    return sub_1A4579A80(a1);
  }

  sub_1A4579B00(v12, v11);
  if (v14[24] == 255)
  {
    sub_1A3F6857C(v11);
    goto LABEL_9;
  }

  v9 = v13;
  v10[0] = *v14;
  *(v10 + 9) = *&v14[9];
  sub_1A4579798();
  v4 = sub_1A524C594();
  sub_1A3F6857C(&v9);
  sub_1A3F6857C(v11);
  sub_1A4579A80(v12);
  sub_1A4579A80(v8);
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_1A4579B00(a1, v12);
  swift_beginAccess();
  sub_1A49C74F0(v12, v1 + v3);
  swift_endAccess();
  return sub_1A4579A80(a1);
}

double sub_1A49C7D38()
{
  swift_getKeyPath();
  (*(*v0 + 656))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollAnimationDuration);
}

void sub_1A49C7E20(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollAnimationDuration) == a1)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollAnimationDuration) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 664))(v3);
  }
}

void sub_1A49C7F18(void *a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  sub_1A5243B24();
  swift_allocObject();
  *(v6 + 48) = sub_1A5243B14();
  *(v6 + 64) = *sub_1A44DAFD8();
  *(v6 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollToTopSignal) = 0;
  v7 = v6 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollTargetIdentifier;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 40) = -1;
  *(v6 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollAnimationDuration) = 0x3FE0000000000000;
  *(v6 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel_verticalMargin) = 0;
  v8 = (v6 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___containerSafeAreaInsets);
  *v8 = 0u;
  v8[1] = 0u;
  v9 = (v6 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___containerSize);
  *v9 = 0;
  v9[1] = 0;
  *(v6 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___horizontalSizeClass) = 2;
  *(v6 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___verticalSizeClass) = 0;
  *(v6 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___orientation) = 1;
  sub_1A5241604();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for LemonadePhotoLibraryContext();
  v10 = a1;
  swift_unknownObjectRetain();
  v11 = a3;
  v12 = PHPhotoLibrary.lemonadeBookmarksManager.getter();
  LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v10, a3, v12);
  sub_1A3C3B2D4();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v11;
  v15 = v11;
  v16 = LemonadeShelvesLoader.__allocating_init(itemListManagerProvider:gradualDelivery:)(sub_1A49CB908, v14, 1);
  v17 = type metadata accessor for LemonadePickerShelvesDataSource();
  v18 = sub_1A499F720(v10, v15);
  type metadata accessor for LemonadeShelvesViewModel(0);
  aBlock[3] = v17;
  aBlock[4] = sub_1A49CC0E0(&unk_1EB146DC0, type metadata accessor for LemonadePickerShelvesDataSource);
  aBlock[0] = v18;

  sub_1A3C5A7B8(aBlock, v16, 2u);
}

float64_t sub_1A49C8350(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___containerSafeAreaInsets);
  swift_beginAccess();
  v6.f64[0] = a1;
  v6.f64[1] = a2;
  v7.f64[0] = a3;
  v7.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v5, v6), vceqq_f64(v5[1], v7)))))
  {
    v5->f64[0] = a1;
    v5->f64[1] = a2;
    result = a4;
    v5[1].f64[0] = a3;
    v5[1].f64[1] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v4 + 664))();
  }

  return result;
}

uint64_t sub_1A49C8498(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___containerSize);
  result = swift_beginAccess();
  if (*v5 == a1 && v5[1] == a2)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 664))(v9);
  }

  return result;
}

uint64_t sub_1A49C85B0(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___horizontalSizeClass;
  swift_beginAccess();
  sub_1A3F17D14();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 664))(v6);
  }

  return result;
}