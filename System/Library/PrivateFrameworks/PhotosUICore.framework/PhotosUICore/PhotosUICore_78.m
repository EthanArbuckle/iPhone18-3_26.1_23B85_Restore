void sub_1A462612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v8 = a7;
  LODWORD(v10) = a6;
  v9 = *v7;
  sub_1A5245EC4();
}

uint64_t sub_1A46269A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager__changeDetailsRepository;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

uint64_t sub_1A4626A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedLibrarySuggestionsItemList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4626A9C(uint64_t a1)
{
  v2 = type metadata accessor for SharedLibrarySuggestionsItemList();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4626AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedLibrarySuggestionsItemList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A4626B7C()
{
  result = qword_1EB1786B0[0];
  if (!qword_1EB1786B0[0])
  {
    type metadata accessor for SharedLibrarySuggestionsItemListManager.Mutator(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1786B0);
  }

  return result;
}

uint64_t sub_1A4626BDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4626DE4()
{
  result = type metadata accessor for SharedLibrarySuggestionsItemList();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1A4626F08()
{
  result = sub_1A4626FA8();
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

uint64_t sub_1A4626FA8()
{
  result = qword_1EB128F50;
  if (!qword_1EB128F50)
  {
    type metadata accessor for SharedLibrarySuggestionsItemListManager.Mutator(255);
    type metadata accessor for SharedLibrarySuggestionsItemList();
    sub_1A4626B7C();
    sub_1A52456C4();
  }

  return result;
}

void sub_1A4627024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v6 = [v5 objectAtIndexPath_];
  v8[6] = &unk_1F19F6D78;
  v7 = swift_dynamicCastObjCProtocolUnconditional();
  swift_unknownObjectRetain();
  sub_1A42C08A0(v7, v8);
  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A46271E4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC12PhotosUICore39SharedLibrarySuggestionsItemListManager___instanceIdentifier);
  *v2 = v0[3];
  v2[1] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4627230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedLibrarySuggestionsItemList();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4627294()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EB176960 != -1)
    {
      swift_once();
    }

    v1 = sub_1A5246F24();
    __swift_project_value_buffer(v1, qword_1EB176968);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A4627608(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      if (qword_1EB176960 != -1)
      {
        swift_once();
      }

      v4 = sub_1A5246F24();
      __swift_project_value_buffer(v4, qword_1EB176968);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return result;
}

uint64_t sub_1A4627964(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a2 & 1) != 0 && ([*(result + 40) hasAnySuggestions] & 1) == 0)
    {
      swift_allocObject();
      swift_weakInit();
      sub_1A4626BDC(&qword_1EB129488, type metadata accessor for SharedLibrarySuggestionsItemListManager);
      sub_1A5245F44();
    }
  }

  return result;
}

uint64_t sub_1A4627B14()
{
  *(*(v0 + 16) + 96) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A4627B58()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1A4627C60(unint64_t a1)
{
  v13 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1A59097F0](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isEligibleForSpatialGenerationIncludingStereo_])
      {
        sub_1A524E514();
        sub_1A524E564();
        sub_1A524E574();
        v1 = &v13;
        sub_1A524E524();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v1 = v12;
        v8 = v13;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v9 = sub_1A4627E00(v8);
  v10 = (v1 + OBJC_IVAR___PXSpatialOverlayController_assetsToPrewarm);
  *v10 = v9;
  v10[1] = v11;

  sub_1A462843C();
}

uint64_t sub_1A4627E00(unint64_t a1)
{
  v5 = sub_1A3C6E9EC();
  v6 = sub_1A4629164(v16, a1, 0, 1, v5);
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    v8 = sub_1A524E2B4();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v16[0];
  if (v16[0] != v8)
  {
    if ((v16[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (v7)
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          v1 = a1;
        }

        else
        {
          v1 = a1 & 0xFFFFFFFFFFFFFF8;
        }

        if (sub_1A524E2B4() < 0)
        {
          goto LABEL_33;
        }

        v10 = sub_1A524E2B4();
      }

      else
      {
        v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v10 >= v9)
      {
        if ((a1 & 0xC000000000000001) != 0 && v9)
        {
          sub_1A3DB58C8();
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        __break(1u);
        swift_unknownObjectRelease();
        sub_1A4621CC0(v1, v14, v2, v3);
        v2 = v11;
        swift_unknownObjectRelease();
        v16[1] = v6;
        v16[2] = v2;
        if (v8 < v9)
        {
          break;
        }

        if (v7)
        {
          v12 = sub_1A524E2B4();
        }

        else
        {
          v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v12 < v8)
        {
          goto LABEL_31;
        }

        if (!v15)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        if (v9 < v8)
        {
          sub_1A3DB58C8();
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }
    }
  }

  sub_1A3D35BE4(a1);
  return v6;
}

uint64_t sub_1A46281AC()
{
  if (!*(v0 + OBJC_IVAR___PXSpatialOverlayController____lazy_storage___overlayViewController))
  {
    ObjectType = swift_getObjectType();
    sub_1A462AC34(0, &qword_1EB12A180, sub_1A3D435C4, type metadata accessor for OverlayViewController);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = ObjectType;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    OverlayViewController.__allocating_init(producer:recycler:)();
  }

  v1 = *(v0 + OBJC_IVAR___PXSpatialOverlayController____lazy_storage___overlayViewController);

  return v1;
}

void sub_1A462843C()
{
  v1 = OBJC_IVAR___PXSpatialOverlayController_contentSourcesByAsset;
  swift_beginAccess();
  if ((*(v0 + v1) & 0xC000000000000001) != 0)
  {
    sub_1A524E694();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4628C94(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_1A524E6B4();

    if (v3)
    {
      type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource();
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1A4307020(a1);
    if (v5)
    {
    }
  }

  return 0;
}

uint64_t sub_1A4628D44(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PXSpatialOverlayController_contentSourcesByAsset;
  swift_beginAccess();
  v5 = sub_1A4628C94(a1, *(v2 + v4));
  if (v5)
  {
    v6 = v5;
    swift_endAccess();
    v7 = *(v2 + OBJC_IVAR___PXSpatialOverlayController_currentPresentation);
    if (v7)
    {
      v8 = *(*(v7 + 16) + 16);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = a1;
    v11 = v10;
    if (v8 == a1)
    {

      swift_unknownObjectRelease();
      return v6;
    }

    if (v9 && v10)
    {
      v12 = [v9 isContentEqualTo:v10];
      if (!v12)
      {
        v12 = [v11 isContentEqualTo:v9];
      }

      swift_unknownObjectRelease();
      if (v12 == 2)
      {
        return v6;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_endAccess();
  }

  type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource();
  v13 = a1;
  v6 = sub_1A43015D8(v13);
  swift_beginAccess();
  v14 = *(v2 + v4);
  if ((v14 & 0xC000000000000001) == 0)
  {

    goto LABEL_23;
  }

  if (v14 < 0)
  {
    v15 = *(v2 + v4);
  }

  else
  {
    v15 = v14 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1A524E2B4();
  if (!__OFADD__(result, 1))
  {
    *(v2 + v4) = sub_1A4629780(v15, result + 1);
LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v2 + v4);
    sub_1A4629BF8(v6, v13, isUniquelyReferenced_nonNull_native);
    *(v2 + v4) = v18;
    swift_endAccess();
    return v6;
  }

  __break(1u);
  return result;
}

void sub_1A4628F3C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1CAF38);
  __swift_project_value_buffer(v0, qword_1EB1CAF38);
  sub_1A5246EF4();
}

uint64_t sub_1A46290C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = sub_1A524E2B4();
    if (v1)
    {
LABEL_3:
      sub_1A444496C(v1, 0);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_3;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A4629164(unint64_t *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = a2 >> 62;
  if (a2 >> 62)
  {
    v19 = a3;
    v20 = a4;
    v9 = sub_1A524E2B4();
    a4 = v20;
    a3 = v19;
  }

  else
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  v11 = MEMORY[0x1A5901C30](v9);
  if (v11 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 4)
  {
    if (v8)
    {
      if (sub_1A524E2B4() >= 2)
      {
        v15 = sub_1A4629EBC(a2);
        goto LABEL_21;
      }

      v14 = sub_1A524E2B4();
    }

    else
    {
      v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14 >= 2)
      {
        v15 = sub_1A4629294((a2 & 0xFFFFFFFFFFFFFF8) + 32, v14);
LABEL_21:
        v18 = v15;
        result = 0;
        goto LABEL_22;
      }
    }

    result = 0;
    *a1 = v14;
    return result;
  }

  v16 = MEMORY[0x1A5901C40]();
  sub_1A4629530(&v21, a2, (v16 + 16));
  result = v16;
  v18 = v21;
LABEL_22:
  *a1 = v18;
  return result;
}

uint64_t sub_1A4629294(uint64_t a1, uint64_t a2)
{
  v8 = sub_1A3D35BE4(MEMORY[0x1E69E7CC0]);
  result = sub_1A524E554();
  if (!a2)
  {
    v5 = 0;
LABEL_9:

    return v5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = *(a1 + 8 * v5);
      if (sub_1A462938C(v6, v8))
      {
        break;
      }

      ++v5;
      v7 = v6;
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();

      if (a2 == v5)
      {
        v5 = a2;
        goto LABEL_9;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

BOOL sub_1A462938C(uint64_t a1, uint64_t a2)
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

    sub_1A3DB58C8();
    v6 = *v3++;
    v7 = v6;
    v8 = sub_1A524DBF4();
  }

  while ((v8 & 1) == 0);
  return v4 != 0;
}

uint64_t sub_1A4629408(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_1A524DBE4();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A5246834();
    v7 = sub_1A5246864();
    if ((v8 & 1) == 0)
    {
      sub_1A3DB58C8();
      do
      {
        v9 = *(a2 + 8 * v7);
        v10 = sub_1A524DBF4();

        if (v10)
        {
          break;
        }

        sub_1A5246884();
        v7 = sub_1A5246864();
      }

      while ((v11 & 1) == 0);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1A4629530(void *a1, int64_t a2, void *a3)
{
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v4 = sub_1A462A938(a2, sub_1A462AC98);
  }

  else
  {
    v4 = sub_1A46295B0((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a3);
  }

  *a1 = v5;
  return v4 & 1;
}

uint64_t sub_1A46295B0(uint64_t result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    v3 = a3;
    v4 = result;
    for (i = 0; ; ++i)
    {
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v17 = i + 1;
      v6 = *(v4 + 8 * i);
      result = sub_1A524DBE4();
      if (__OFSUB__(1 << *v3, 1))
      {
        goto LABEL_16;
      }

      sub_1A5246834();

      v7 = sub_1A5246864();
      if ((v8 & 1) == 0)
      {
        break;
      }

LABEL_4:
      result = sub_1A5246874();
      v3 = a3;
      if (v17 == a2)
      {
        return 1;
      }
    }

    v9 = v7;
    sub_1A3DB58C8();
    v10 = v9;
    while (1)
    {
      v11 = *(v4 + 8 * i);
      v12 = *(v4 + 8 * v10);
      v13 = v11;
      LOBYTE(v11) = sub_1A524DBF4();

      if (v11)
      {
        return 0;
      }

      sub_1A5246884();
      v10 = sub_1A5246864();
      if (v14)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1A4629780(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A462A220();
    v2 = sub_1A524E784();
    v19 = v2;
    sub_1A524E694();
    v3 = sub_1A524E6C4();
    if (v3)
    {
      v4 = v3;
      sub_1A3DB58C8();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1A4629994(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1A524DBE4();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1A524E6C4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1A4629994(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A462A220();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1A524DBE4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_1A4629BF8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A4307020(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1A4629994(v13, a3 & 1);
      v8 = sub_1A4307020(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1A3DB58C8();
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1A4629D64();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void *sub_1A4629D64()
{
  v1 = v0;
  sub_1A462A220();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

uint64_t sub_1A4629EBC(int64_t a1)
{
  v1 = sub_1A4629F04(a1);
  v2 = v1[2];

  return sub_1A4629294((v1 + 4), v2);
}

void *sub_1A4629F04(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1A46290C8(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_1A4629FC0(void *a1)
{
  v2 = sub_1A5246B54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v16[-1] - v8;
  if ([a1 mediaType] == 1 && (v10 = sub_1A5241C44(), v16[3] = v10, v16[4] = sub_1A462A8F0(&qword_1EB1292F0, MEMORY[0x1E69BDD60]), boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16), (*(*(v10 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD58], v10), LOBYTE(v10) = sub_1A5241704(), __swift_destroy_boxed_opaque_existential_0(v16), (v10 & 1) != 0))
  {
    sub_1A5246B94();
    (*(v3 + 104))(v5, *MEMORY[0x1E69C1B88], v2);
    sub_1A462A8F0(&qword_1EB12EDD8, MEMORY[0x1E69C1B90]);
    v12 = sub_1A524C534();
    v13 = *(v3 + 8);
    v13(v5, v2);
    v13(v9, v2);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_1A462A220()
{
  if (!qword_1EB13F3F0)
  {
    sub_1A3DB58C8();
    type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource();
    sub_1A462A8F0(&qword_1EB1205D0, sub_1A3DB58C8);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F3F0);
    }
  }
}

id sub_1A462A2CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  v1 = Strong;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *&v1[OBJC_IVAR___PXSpatialOverlayController_currentPresentation];
    if (!v4)
    {
      swift_unknownObjectRetain();
      goto LABEL_22;
    }

    v5 = *(v4[2] + 16);
    swift_unknownObjectRetain();

    v6 = v5;
    v7 = v3;
    v8 = v7;
    if (v5 == v3)
    {
    }

    else
    {
      if (!v6)
      {

LABEL_21:

LABEL_22:
        if (qword_1EB1CAF30 != -1)
        {
          swift_once();
        }

        v19 = sub_1A5246F24();
        __swift_project_value_buffer(v19, qword_1EB1CAF38);
        swift_unknownObjectRetain();
        v20 = sub_1A5246F04();
        v21 = sub_1A524D224();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          swift_slowAlloc();
          *v22 = 136315138;
          sub_1A3D435C4();
          swift_unknownObjectRetain();
          sub_1A524C714();
          sub_1A3C2EF94();
        }

        sub_1A4628D44(v3);
        sub_1A462A85C();

        sub_1A455556C();
      }

      v9 = [v6 isContentEqualTo:v7];
      if (!v9)
      {
        v9 = [v8 isContentEqualTo:v6];
      }

      if (v9 != 2)
      {
        goto LABEL_21;
      }
    }

    if (qword_1EB1CAF30 != -1)
    {
      swift_once();
    }

    v12 = sub_1A5246F24();
    __swift_project_value_buffer(v12, qword_1EB1CAF38);
    swift_unknownObjectRetain();
    v13 = sub_1A5246F04();
    v14 = sub_1A524D224();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      swift_slowAlloc();
      *v15 = 136315138;
      sub_1A3D435C4();
      swift_unknownObjectRetain();
      sub_1A524C714();
      sub_1A3C2EF94();
    }

    v16 = *(*v4[2] + 392);

    v16(v17);

    v11 = (*(*v4 + 200))(v18);

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  return v11;
}

void sub_1A462A7B4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___PXSpatialOverlayController_currentPresentation);
    if (v4)
    {
      v5 = *(*v4 + 216);

      v5(a1);
    }
  }
}

void sub_1A462A85C()
{
  if (!qword_1EB13F400)
  {
    type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource();
    sub_1A462A8F0(&qword_1EB13F408, type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource);
    v0 = type metadata accessor for SpatialPresentation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F400);
    }
  }
}

uint64_t sub_1A462A8F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A462A938(int64_t a1, void (*a2)(uint64_t *__return_ptr, void *, uint64_t))
{
  v4 = sub_1A4629F04(a1);
  v5 = v4[2];

  a2(&v8, v4 + 4, v5);
  if (!v2)
  {
    v6 = v8;
  }

  return v6 & 1;
}

void sub_1A462A9B4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return;
  }

  v5 = v3;
  v6 = a2;
  v7 = a1;
  v30 = a3 >> 1;
  while (v6 < v4)
  {
    v8 = *(v7 + 8 * v6);
    v10 = *v5;
    v9 = v5[1];
    v11 = (v9 + 32);
    v12 = *(v9 + 16);
    if (*v5)
    {
      v13 = v8;

      sub_1A4629408(v13, v11, v12, (v10 + 16));
      v15 = v14;

      if ((v15 & 1) == 0)
      {

        goto LABEL_5;
      }
    }

    else
    {
      v16 = v8;
      if (v12)
      {
        v17 = v16;
        sub_1A3DB58C8();
        while (1)
        {
          v18 = *v11;
          v19 = sub_1A524DBF4();

          if (v19)
          {
            break;
          }

          ++v11;
          if (!--v12)
          {
            v4 = v30;
            v7 = a1;
            goto LABEL_15;
          }
        }

        v4 = v30;
        v7 = a1;
        goto LABEL_5;
      }
    }

LABEL_15:
    v20 = v8;
    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
    v21 = v5[1];
    v22 = *(v21 + 16);
    if (!v10)
    {
      if (v22 > 0xF)
      {
        v23 = 0;
LABEL_22:
        v24 = MEMORY[0x1A5901C30](v22);
        if (v23 <= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v23;
        }

        v26 = sub_1A3FB60D4(v21, v25, 0, v23);

        *v5 = v26;
        goto LABEL_5;
      }

      goto LABEL_31;
    }

    swift_beginAccess();
    if (MEMORY[0x1A5901C00](*(v10 + 16) & 0x3FLL) >= v22)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v28 = *v5;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v28)
        {
          goto LABEL_35;
        }

        v29 = sub_1A52468B4();

        *v5 = v29;
        v28 = v29;
      }

      if (!v28)
      {
        goto LABEL_34;
      }

      sub_1A5246854();
LABEL_31:

      goto LABEL_5;
    }

    v23 = *(v10 + 24) & 0x3FLL;
    if (v22 > 0xF || v23)
    {
      goto LABEL_22;
    }

    *v5 = 0;
LABEL_5:
    if (++v6 == v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1A462AC34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A462AC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1A46295B0(a1, a2, *(v3 + 16));
  if (!v4)
  {
    *a3 = result & 1;
    *(a3 + 8) = v7;
  }

  return result;
}

uint64_t UIViewController.firstDescendant(where:)(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1A462BA50;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1A3D9C868;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D9A79C;
  aBlock[3] = &block_descriptor_228;
  v7 = _Block_copy(aBlock);

  [v2 px:0 enumerateDescendantViewControllersWithOptions:v7 usingBlock:?];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

void sub_1A462AE3C(void *a1, _BYTE *a2, uint64_t (*a3)(void), uint64_t a4, void **a5)
{
  if (a3())
  {
    v8 = *a5;
    *a5 = a1;
    v9 = a1;

    *a2 = 1;
  }
}

uint64_t UIViewController.firstDescendant<A>(ofType:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v9[2] = a2;
  v11 = 0;
  v4 = swift_allocObject();
  v4[2] = sub_1A462BA5C;
  v4[3] = v9;
  v4[4] = &v11;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A462BD4C;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1A42A5D18;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D9A79C;
  aBlock[3] = &block_descriptor_14_4;
  v6 = _Block_copy(aBlock);

  [v3 px:0 enumerateDescendantViewControllersWithOptions:v6 usingBlock:?];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
    return result;
  }

  v8 = v11;

  if (v8)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id UIViewController.firstAncestor(where:)(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  result = [v3 parentViewController];
  if (result || (result = [v3 presentingViewController]) != 0)
  {
    v7 = result;
    if (a1())
    {
      return v7;
    }

    else
    {
      v8 = swift_allocObject();
      *(v8 + 16) = a1;
      *(v8 + 24) = a2;
      v11[4] = sub_1A462BA80;
      v11[5] = v8;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1107296256;
      v11[2] = sub_1A462B1B0;
      v11[3] = &block_descriptor_20_2;
      v9 = _Block_copy(v11);

      v10 = [v7 firstAncestorWithWhere_];

      _Block_release(v9);
      LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

      if (v9)
      {
        __break(1u);
      }

      else
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t sub_1A462B1B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

id sub_1A462B1F4(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  _Block_copy(v4);
  v5 = a1;
  v6 = sub_1A462BB78(v5, v4);
  _Block_release(v4);
  _Block_release(v4);

  return v6;
}

id UIViewController.platformView.getter()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void UIViewController.mainScrollView.getter()
{
  v1 = v0;
  if (![v0 contentScrollViewForEdge_])
  {
    v2 = [v0 view];
    if (!v2)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v3 = v2;
    v4 = UIView.firstDescendant(where:)(sub_1A462B72C, 0);
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        v8 = v5;
        [v7 frame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v17 = [v7 superview];

        if (v17)
        {
          [v3 convertRect:v17 fromCoordinateSpace:{v10, v12, v14, v16}];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;

          [v3 bounds];
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v33 = v32;
          [v3 safeAreaInsets];
          v36 = UIEdgeInsetsInsetRect(v27, v29, v31, v33, v34, v35);
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v45.origin.x = v19;
          v45.origin.y = v21;
          v45.size.width = v23;
          v45.size.height = v25;
          v46.origin.x = v36;
          v46.origin.y = v38;
          v46.size.width = v40;
          v46.size.height = v42;
          CGRectIntersection(v45, v46);
          PXRectArea();
        }

        goto LABEL_11;
      }
    }

    sub_1A462BAAC();
    swift_allocError();
    *v43 = v1;
    *(v43 + 8) = 0;
    v44 = v1;
    swift_willThrow();
  }
}

uint64_t UIView.firstDescendant<A>(ofType:)(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  result = UIView.firstDescendant(where:)(sub_1A462BD50, v4);
  if (result)
  {
    v3 = result;
    result = swift_dynamicCastUnknownClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t UIView.firstDescendant(where:)(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1A462BB00;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1A42A5D18;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D9A79C;
  aBlock[3] = &block_descriptor_29_5;
  v7 = _Block_copy(aBlock);

  [v2 px:v7 enumerateDescendantSubviewsUsingBlock:?];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

uint64_t UIView.ancestors<A>(ofType:maxCount:)(uint64_t a1, uint64_t a2, char a3)
{
  v13 = MEMORY[0x1E69E7CC0];
  v6 = v3;
  v7 = 0;
  while (1)
  {
    v10 = v6;
    v6 = [v6 superview];

    if (!v6)
    {
      break;
    }

    if ((a3 & 1) == 0 && v7 < a2)
    {

      break;
    }

    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      v11 = v6;
      MEMORY[0x1A5907D70]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      result = sub_1A524CAE4();
    }

    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      return result;
    }
  }

  sub_1A441CDE8();
  v12 = sub_1A524E804();

  result = v12;
  if (!v12)
  {
    return sub_1A524CAB4();
  }

  return result;
}

void UIView.ancestors(maxCount:where:)(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  v13 = MEMORY[0x1E69E7CC0];
  v7 = v3;
  v8 = 0;
  while (1)
  {
    v10 = [v7 superview];

    if (!v10)
    {
      break;
    }

    if ((a2 & 1) == 0 && v8 < a1)
    {

      return;
    }

    v7 = v10;
    v11 = a3();

    if (v11)
    {
      v12 = v7;
      MEMORY[0x1A5907D70]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
    }

    if (__OFADD__(v8++, 1))
    {
      __break(1u);
      return;
    }
  }
}

double *UICoordinateSpace.convertOptional(_:to:)@<X0>(double *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *result;
  v6 = result[1];
  v7 = result[2];
  v8 = result[3];
  v9 = *(result + 32);
  if ((v9 & 1) == 0)
  {
    result = [v3 convertRect:a2 toCoordinateSpace:{v5, v6, v7, v8}];
  }

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9 & 1;
  return result;
}

unint64_t sub_1A462BAAC()
{
  result = qword_1EB1CAF50[0];
  if (!qword_1EB1CAF50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CAF50);
  }

  return result;
}

void sub_1A462BB00(void *a1, _BYTE *a2)
{
  v5 = *(v2 + 32);
  if ((*(v2 + 16))())
  {
    v6 = *v5;
    *v5 = a1;
    v7 = a1;

    *a2 = 1;
  }
}

uint64_t sub_1A462BB78(void *a1, uint64_t a2)
{
  v11[2] = a2;
  v4 = [a1 parentViewController];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [a1 presentingViewController];
    if (!v5)
    {
      return v5;
    }
  }

  if ((*(a2 + 16))(a2, v5))
  {
    return v5;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = sub_1A462BD18;
  *(v6 + 24) = v11;
  aBlock[4] = sub_1A462BD60;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A462B1B0;
  aBlock[3] = &block_descriptor_37_4;
  v7 = _Block_copy(aBlock);

  v8 = [v5 firstAncestorWithWhere_];

  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for GenerativeStoryInternalMenuView()
{
  result = qword_1EB1CB070;
  if (!qword_1EB1CB070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A462BDB0@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  sub_1A462F714(0, &qword_1EB13F418, sub_1A462C9D4, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v86 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v87 = v69 - v3;
  v4 = type metadata accessor for GenerativeStoryInternalMenuView();
  v75 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v77 = v5;
  v78 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A462CC50();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v70 = (v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A462CC14(0);
  v71 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v72 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A462CBD8(0);
  v82 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v73 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A462CAFC();
  v84 = v12;
  v76 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v88 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A462C9D4();
  v85 = v14;
  v80 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v79 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5242D14();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v69 - v21;
  v74 = v4;
  v81 = *(v4 + 20);
  sub_1A3D61808(v69 - v21);
  v23 = *MEMORY[0x1E69C2200];
  v24 = *(v17 + 104);
  v24(v19, v23, v16);
  v69[1] = sub_1A5242D04();
  v25 = *(v17 + 8);
  v25(v19, v16);
  v25(v22, v16);
  sub_1A3D61808(v22);
  v24(v19, v23, v16);
  sub_1A5242D04();
  v25(v19, v16);
  v25(v22, v16);
  v26 = sub_1A462D6D8()[2];

  if (v26)
  {
    v27 = v82;
    v28 = sub_1A5249574();
    v29 = v70;
    *v70 = v28;
    *(v29 + 8) = 0;
    *(v29 + 16) = 1;
    sub_1A462FA54(0, &qword_1EB13F508, sub_1A462CCE4);
    sub_1A462DA54(v1, v29 + *(v30 + 44));
    v31 = sub_1A5248894();
    sub_1A462F1B8(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52FC9F0;
    v33 = sub_1A524A0B4();
    *(inited + 32) = v33;
    v34 = sub_1A524A074();
    *(inited + 33) = v34;
    v35 = sub_1A524A0A4();
    sub_1A524A0A4();
    if (sub_1A524A0A4() != v33)
    {
      v35 = sub_1A524A0A4();
    }

    sub_1A524A0A4();
    if (sub_1A524A0A4() != v34)
    {
      v35 = sub_1A524A0A4();
    }

    v36 = v72;
    sub_1A462FE40(v29, v72, sub_1A462CC50);
    v37 = v36 + *(v71 + 36);
    *v37 = v31;
    *(v37 + 8) = v35;
    sub_1A524BC04();
    sub_1A5248AD4();
    v38 = v73;
    sub_1A462FE40(v36, v73, sub_1A462CC14);
    v39 = (v38 + *(v27 + 36));
    v40 = v98;
    v41 = v100;
    v42 = v101;
    v39[4] = v99;
    v39[5] = v41;
    v39[6] = v42;
    v43 = v96;
    *v39 = v95;
    v39[1] = v43;
    v39[2] = v97;
    v39[3] = v40;
    sub_1A4497E7C();
    sub_1A524BD44();
    sub_1A524BCD4();

    MEMORY[0x1EEE9AC00](v44);
    sub_1A462F714(0, &qword_1EB13F4C8, sub_1A462D3F0, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    v46 = v45;
    v47 = sub_1A462D424();
    v48 = sub_1A462D554();
    sub_1A524B184();

    sub_1A462FFD4(v38, sub_1A462CBD8);
    v49 = v1 + *(v74 + 32);
    v50 = *v49;
    v51 = *(v49 + 8);
    v93 = v50;
    v94 = v51;
    sub_1A462F1B8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6C4();
    v52 = v78;
    sub_1A4630034(v1, v78, type metadata accessor for GenerativeStoryInternalMenuView);
    v53 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v54 = swift_allocObject();
    sub_1A462FE40(v52, v54 + v53, type metadata accessor for GenerativeStoryInternalMenuView);
    v89 = v27;
    v90 = v46;
    v91 = v47;
    v92 = v48;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v68 = sub_1A462D684();
    v56 = v79;
    v57 = v84;
    v58 = v88;
    sub_1A524AFF4();

    (*(v76 + 8))(v58, v57);
    v59 = v80;
    v60 = v85;
    (*(v80 + 16))(v87, v56, v85);
    swift_storeEnumTagMultiPayload();
    v89 = v57;
    v90 = &type metadata for GenerativeStoryInternalSuggestionListView;
    v91 = OpaqueTypeConformance2;
    v92 = v68;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    return (*(v59 + 8))(v56, v60);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A462F714(255, &qword_1EB13F4C8, sub_1A462D3F0, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    v63 = v62;
    v64 = sub_1A462D424();
    v65 = sub_1A462D554();
    *&v95 = v82;
    *(&v95 + 1) = v63;
    *&v96 = v64;
    *(&v96 + 1) = v65;
    v66 = swift_getOpaqueTypeConformance2();
    v67 = sub_1A462D684();
    *&v95 = v84;
    *(&v95 + 1) = &type metadata for GenerativeStoryInternalSuggestionListView;
    *&v96 = v66;
    *(&v96 + 1) = v67;
    swift_getOpaqueTypeConformance2();
    return sub_1A5249744();
  }
}

void sub_1A462C9D4()
{
  if (!qword_1EB13F420)
  {
    sub_1A462CAFC();
    sub_1A462CBD8(255);
    sub_1A462F714(255, &qword_1EB13F4C8, sub_1A462D3F0, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A462D424();
    sub_1A462D554();
    swift_getOpaqueTypeConformance2();
    sub_1A462D684();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13F420);
    }
  }
}

void sub_1A462CAFC()
{
  if (!qword_1EB13F428)
  {
    sub_1A462CBD8(255);
    sub_1A462F714(255, &qword_1EB13F4C8, sub_1A462D3F0, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A462D424();
    sub_1A462D554();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13F428);
    }
  }
}

void sub_1A462CC50()
{
  if (!qword_1EB13F440)
  {
    sub_1A462CCE4(255);
    sub_1A462D63C(&qword_1EB13F4C0, sub_1A462CCE4);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F440);
    }
  }
}

void sub_1A462CD18()
{
  if (!qword_1EB13F450)
  {
    sub_1A462D200(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A462CDC4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13F450);
    }
  }
}

void sub_1A462CE00()
{
  if (!qword_1EB13F460)
  {
    sub_1A462CE94();
    sub_1A462D63C(&qword_1EB13F4B8, sub_1A462CE94);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F460);
    }
  }
}

void sub_1A462CE94()
{
  if (!qword_1EB13F468)
  {
    sub_1A462D194(255, &qword_1EB13F470, sub_1A462CF10);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F468);
    }
  }
}

void sub_1A462CF10()
{
  if (!qword_1EB13F478)
  {
    sub_1A462CF9C();
    sub_1A462D030();
    sub_1A462D2C8();
    sub_1A462D378();
    v0 = sub_1A524A2F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F478);
    }
  }
}

void sub_1A462CF9C()
{
  if (!qword_1EB13F480)
  {
    sub_1A3E429B4();
    sub_1A462D200(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F480);
    }
  }
}

void sub_1A462D030()
{
  if (!qword_1EB13F488)
  {
    sub_1A462D110(255, &qword_1EB13F490, MEMORY[0x1E69E62F8]);
    sub_1A462D200(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A462D254();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F488);
    }
  }
}

void sub_1A462D110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A462D194(255, &qword_1EB13F498, sub_1A3C3637C);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A462D194(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A462D200(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A462D254()
{
  result = qword_1EB13F4A0;
  if (!qword_1EB13F4A0)
  {
    sub_1A462D110(255, &qword_1EB13F490, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F4A0);
  }

  return result;
}

unint64_t sub_1A462D2C8()
{
  result = qword_1EB13F4A8;
  if (!qword_1EB13F4A8)
  {
    sub_1A462CF9C();
    sub_1A462D63C(&qword_1EB1274F0, sub_1A3E429B4);
    sub_1A3F33024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F4A8);
  }

  return result;
}

unint64_t sub_1A462D378()
{
  result = qword_1EB13F4B0;
  if (!qword_1EB13F4B0)
  {
    sub_1A462D030();
    sub_1A3D6E520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F4B0);
  }

  return result;
}

unint64_t sub_1A462D424()
{
  result = qword_1EB13F4D8;
  if (!qword_1EB13F4D8)
  {
    sub_1A462CBD8(255);
    sub_1A462D4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F4D8);
  }

  return result;
}

unint64_t sub_1A462D4A4()
{
  result = qword_1EB13F4E0;
  if (!qword_1EB13F4E0)
  {
    sub_1A462CC14(255);
    sub_1A462D63C(&qword_1EB13F4E8, sub_1A462CC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F4E0);
  }

  return result;
}

unint64_t sub_1A462D554()
{
  result = qword_1EB13F4F0;
  if (!qword_1EB13F4F0)
  {
    sub_1A462F714(255, &qword_1EB13F4C8, sub_1A462D3F0, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A462D63C(&qword_1EB13F4F8, sub_1A462D3F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F4F0);
  }

  return result;
}

uint64_t sub_1A462D63C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A462D684()
{
  result = qword_1EB13F500;
  if (!qword_1EB13F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F500);
  }

  return result;
}

void *sub_1A462D6D8()
{
  v1 = type metadata accessor for GenerativeStoryInternalMenuView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A3C52C70(0, &qword_1EB126860);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [ObjCClassFromMetadata sharedInstance];
  v6 = [v5 suggestionToolEnabled];

  if (v6)
  {
    sub_1A4630034(v0, &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryInternalMenuView);
    v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v8 = swift_allocObject();
    sub_1A462FE40(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for GenerativeStoryInternalMenuView);
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1A462FD34;
    *(v9 + 24) = v8;
    v10 = sub_1A462FBD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1A462FBD8((v11 > 1), v12 + 1, 1, v10);
    }

    v10[2] = v12 + 1;
    v13 = &v10[4 * v12];
    v13[4] = 0x6C6C61206E7552;
    v13[5] = 0xE700000000000000;
    v13[6] = sub_1A3DDBE10;
    v13[7] = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v14 = [ObjCClassFromMetadata sharedInstance];
  v15 = [v14 displayPromptListButton];

  if (v15)
  {
    sub_1A4630034(v0, &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryInternalMenuView);
    v16 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v17 = swift_allocObject();
    sub_1A462FE40(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for GenerativeStoryInternalMenuView);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1A462FBC0;
    *(v18 + 24) = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1A462FBD8(0, v10[2] + 1, 1, v10);
    }

    v20 = v10[2];
    v19 = v10[3];
    if (v20 >= v19 >> 1)
    {
      v10 = sub_1A462FBD8((v19 > 1), v20 + 1, 1, v10);
    }

    v10[2] = v20 + 1;
    v21 = &v10[4 * v20];
    v21[4] = 0x6974736567677553;
    v21[5] = 0xEF7473694C206E6FLL;
    v21[6] = sub_1A3C7146C;
    v21[7] = v18;
  }

  return v10;
}

uint64_t sub_1A462DA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A462CF10();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  sub_1A462CE00();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A462CDC4(0);
  v53 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v54 = &v48 - v20;
  sub_1A524BC74();
  sub_1A52481F4();
  v51 = v58;
  v50 = v60;
  v49 = v62;
  v48 = v63;
  v66 = 1;
  v65 = v59;
  v64 = v61;
  *v14 = sub_1A5249314();
  *(v14 + 1) = 0;
  v14[16] = 1;
  sub_1A462FA54(0, &qword_1EB13F520, sub_1A462CE94);
  v22 = &v14[*(v21 + 44)];
  v56 = a1;
  sub_1A462CF9C();
  sub_1A462D030();
  sub_1A462D2C8();
  sub_1A462D378();
  sub_1A524A2E4();
  v57 = 1;
  v23 = *(v6 + 16);
  v23(v8, v11, v5);
  v24 = v57;
  *v22 = 0;
  v22[8] = v24;
  sub_1A462D194(0, &qword_1EB13F470, sub_1A462CF10);
  v23(&v22[*(v25 + 48)], v8, v5);
  v26 = *(v6 + 8);
  v26(v11, v5);
  v26(v8, v5);
  LOBYTE(v8) = sub_1A524A0B4();
  v27 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v8)
  {
    v27 = sub_1A524A0A4();
  }

  sub_1A5247BC4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v52;
  sub_1A462FE40(v14, v52, sub_1A462CE00);
  v37 = v54;
  v38 = v36 + *(v53 + 36);
  *v38 = v27;
  *(v38 + 8) = v29;
  *(v38 + 16) = v31;
  *(v38 + 24) = v33;
  *(v38 + 32) = v35;
  *(v38 + 40) = 0;
  sub_1A462FE40(v36, v37, sub_1A462CDC4);
  v39 = v66;
  v40 = v65;
  v41 = v64;
  v42 = v55;
  sub_1A4630034(v37, v55, sub_1A462CDC4);
  *a2 = 0;
  *(a2 + 8) = v39;
  *(a2 + 16) = v51;
  *(a2 + 24) = v40;
  *(a2 + 32) = v50;
  *(a2 + 40) = v41;
  v43 = v48;
  *(a2 + 48) = v49;
  *(a2 + 56) = v43;
  sub_1A462CD18();
  v45 = v44;
  sub_1A4630034(v42, a2 + *(v44 + 48), sub_1A462CDC4);
  v46 = a2 + *(v45 + 64);
  *v46 = 0;
  *(v46 + 8) = 1;
  sub_1A462FFD4(v37, sub_1A462CDC4);
  return sub_1A462FFD4(v42, sub_1A462CDC4);
}

uint64_t sub_1A462DF78(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = sub_1A3D6069C;
  v6[5] = v5;
  sub_1A3D5F9DC();
  swift_bridgeObjectRetain_n();

  return sub_1A524B754();
}

void sub_1A462E054(uint64_t a1@<X8>)
{
  sub_1A5249434();
  sub_1A524B604();
  v2 = sub_1A524B434();
  sub_1A462CF9C();
  *(a1 + *(v3 + 36)) = v2;
}

uint64_t sub_1A462E0C4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for GenerativeStoryInternalMenuView();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = sub_1A5242D14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24[-v11];
  result = (*(**(a1 + *(v3 + 28)) + 1624))(v10);
  if (result)
  {
    v27 = *(result + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_internalSuggestionViewModel);

    v14 = a1 + *(v3 + 32);
    v15 = *v14;
    v16 = *(v14 + 8);
    v30 = v15;
    v31 = v16;
    sub_1A462F1B8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6C4();
    v26 = *(&v32 + 1);
    v17 = v32;
    v25 = v33;
    sub_1A3D61808(v12);
    (*(v6 + 104))(v8, *MEMORY[0x1E69C2200], v5);
    v18 = sub_1A5242D04();
    v19 = *(v6 + 8);
    v19(v8, v5);
    v19(v12, v5);
    sub_1A4630034(a1, &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for GenerativeStoryInternalMenuView);
    v20 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v21 = swift_allocObject();
    sub_1A462FE40(&v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v20, type metadata accessor for GenerativeStoryInternalMenuView);
    result = sub_1A47FF5F8(v27, v17, v26, v25, v18 & 1, sub_1A462F9E4, v21, &v32);
    v22 = v33;
    v23 = v29;
    *v29 = v32;
    v23[1] = v22;
    v23[2] = v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A462E410(uint64_t a1, uint64_t a2)
{
  sub_1A43C7D38(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4499C00(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4630034(a1, v9, sub_1A4499C00);
  v10 = type metadata accessor for GenerativeStorySuggestion(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    v11 = sub_1A4499C00;
    v12 = v9;
  }

  else
  {
    v13 = v9[2];
    sub_1A462FFD4(v9, type metadata accessor for GenerativeStorySuggestion);
    v14 = *(a2 + *(type metadata accessor for GenerativeStoryInternalMenuView() + 28));
    (*(*v14 + 2136))(v13);
    v15 = [v13 string];
    v16 = sub_1A524C674();
    v18 = v17;

    v19 = sub_1A5244854();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    (*(*v14 + 1896))(v16, v18, v6);

    v11 = sub_1A43C7D38;
    v12 = v6;
  }

  sub_1A462FFD4(v12, v11);
  v20 = type metadata accessor for GenerativeStoryInternalMenuView();
  return (*(**(a2 + *(v20 + 28)) + 592))(0);
}

uint64_t sub_1A462E6E4(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A462FEA8(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A462FDC0(a1, v8, &qword_1EB128A80, sub_1A3D63A58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A462FE40(v8, v11, sub_1A3D63A58);
  }

  else
  {
    sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A3D63A8C(0);
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
  {
    sub_1A5245C94();
  }

  return sub_1A462FFD4(v11, sub_1A3D63A58);
}

uint64_t sub_1A462EA08(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeStoryInternalMenuView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1A4630034(a1, v5, type metadata accessor for GenerativeStoryInternalMenuView);
  sub_1A524CC54();
  v10 = sub_1A524CC44();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_1A462FE40(v5, v12 + v11, type metadata accessor for GenerativeStoryInternalMenuView);
  sub_1A3D4D930(0, 0, v8, &unk_1A5352108, v12);
}

uint64_t sub_1A462EBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A462EC78, v6, v5);
}

uint64_t sub_1A462EC78()
{
  v1 = v0[6];
  v2 = type metadata accessor for GenerativeStoryInternalMenuView();
  v0[10] = v2;
  result = (*(**(v1 + *(v2 + 28)) + 1624))();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_internalSuggestionViewModel);
    v0[11] = v4;

    v6 = (*(*v4 + 168) + **(*v4 + 168));
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_1A462EE10;

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A462EE10()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1A462EF54, v3, v2);
}

uint64_t sub_1A462EF54()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  v3 = (v2 + *(v1 + 32));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 16) = *v3;
  *(v0 + 24) = v5;
  sub_1A462F1B8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

  sub_1A524B6A4();
  v6 = *(v0 + 104);
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 105) = (v6 & 1) == 0;
  sub_1A524B6B4();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A462F050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  v12 = MEMORY[0x1E697DCB8];
  sub_1A462FEA8(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for GenerativeStoryInternalMenuView();
  v14 = v13[5];
  *(a6 + v14) = swift_getKeyPath();
  sub_1A462FEA8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v12);
  swift_storeEnumTagMultiPayload();
  *(a6 + v13[6]) = a1;
  *(a6 + v13[7]) = a2;
  v15 = a6 + v13[8];
  result = sub_1A524B694();
  *v15 = v18;
  *(v15 + 1) = v19;
  v17 = a6 + v13[9];
  *v17 = a3;
  *(v17 + 1) = a4;
  v17[16] = a5;
  return result;
}

void sub_1A462F1B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A462F208(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = (v5 + *(type metadata accessor for GenerativeStoryInternalMenuView() + 36));
  v7 = *v6;
  v8 = v6[1];
  LOBYTE(v6) = *(v6 + 16);
  v13 = v7;
  v14 = v8;
  v15 = v6;
  sub_1A462F1B8(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v12);
  if (v12)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  sub_1A462D3F0(0);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  sub_1A462F714(0, &qword_1EB13F4C8, sub_1A462D3F0, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
  *(a2 + *(v11 + 36)) = v9;
}

uint64_t sub_1A462F338@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for GenerativeStoryInternalMenuView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A462E0C4(v4, a1);
}

void sub_1A462F3EC()
{
  sub_1A462FEA8(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A462FEA8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A3C52C70(319, &qword_1EB126BF0);
      if (v2 <= 0x3F)
      {
        type metadata accessor for GenerativeStoryCreationViewModel(319);
        if (v3 <= 0x3F)
        {
          sub_1A462F1B8(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1A462F1B8(319, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1A462F588()
{
  result = qword_1EB13F510;
  if (!qword_1EB13F510)
  {
    sub_1A462F714(255, &qword_1EB13F518, sub_1A462C9D4, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A462CAFC();
    sub_1A462CBD8(255);
    sub_1A462F714(255, &qword_1EB13F4C8, sub_1A462D3F0, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A462D424();
    sub_1A462D554();
    swift_getOpaqueTypeConformance2();
    sub_1A462D684();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F510);
  }

  return result;
}

void sub_1A462F714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t objectdestroyTm_67()
{
  v1 = type metadata accessor for GenerativeStoryInternalMenuView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_1A462FEA8(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v5 = v4;
    v6 = *(v4 - 8);
    if (!(*(v6 + 48))(v0 + v2, 1, v4))
    {
      (*(v6 + 8))(v0 + v2, v5);
    }
  }

  else
  {
  }

  v7 = *(v1 + 20);
  sub_1A462FEA8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5242D14();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A462F9E4(uint64_t a1)
{
  v3 = *(type metadata accessor for GenerativeStoryInternalMenuView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A462E410(a1, v4);
}

void sub_1A462FA54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A462FAC0()
{
  sub_1A462D6D8();
  swift_getKeyPath();
  sub_1A462D110(0, &qword_1EB13F490, MEMORY[0x1E69E62F8]);
  sub_1A462D200(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  sub_1A462D254();
  sub_1A3D6E520();
  return sub_1A524B9B4();
}

void *sub_1A462FBD8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A462D110(0, &qword_1EB13F528, MEMORY[0x1E69E6F90]);
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
    sub_1A462D194(0, &qword_1EB13F498, sub_1A3C3637C);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A462FD4C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GenerativeStoryInternalMenuView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A462FDC0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A462FEA8(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A462FE40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A462FEA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A462FF0C()
{
  v2 = *(type metadata accessor for GenerativeStoryInternalMenuView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A462EBE0(v4, v5, v6, v0 + v3);
}

uint64_t sub_1A462FFD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4630034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t transformSupportedAttributes(for:)()
{
  sub_1A4630258();
  sub_1A4114188();
  return sub_1A5240784();
}

void sub_1A4630114()
{
  sub_1A46302AC(0, &qword_1EB13F538, sub_1A4630258);
  sub_1A5240794();
  if (v2)
  {
    v0 = v2;
    v2 = sub_1A524B284();
    sub_1A3EE4384();
    sub_1A52407A4();
  }

  sub_1A46302AC(0, &qword_1EB13F540, sub_1A4114188);
  sub_1A5240794();
  if (v2)
  {
    v1 = v2;
    sub_1A524A284();
    sub_1A3EE43D8();
    sub_1A52407A4();
  }
}

unint64_t sub_1A4630258()
{
  result = qword_1EB13F530;
  if (!qword_1EB13F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F530);
  }

  return result;
}

void sub_1A46302AC(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1A52407B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

PhotosUICore::PhotosLaunchConfiguration __swiftcall PhotosLaunchConfiguration.init()()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1A524C634();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (qword_1EB15B750 != -1)
  {
    swift_once();
  }

  v5 = sub_1A5246F24();
  __swift_project_value_buffer(v5, qword_1EB15B758);
  sub_1A3EBECA4(v25, &v23);
  v6 = sub_1A5246F04();
  v7 = sub_1A524D264();
  v8 = os_log_type_enabled(v6, v7);
  v9 = MEMORY[0x1E69E7CA0];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 136315138;
    sub_1A3EBECA4(&v23, &v20);
    sub_1A3C37060(0, &qword_1EB126130, v9 + 8, MEMORY[0x1E69E6720]);
    sub_1A524C714();
    sub_1A3C35B00(&v23);
    sub_1A3C2EF94();
  }

  sub_1A3C35B00(&v23);
  sub_1A3EBECA4(v25, &v23);
  if (!*(&v24 + 1))
  {
    sub_1A3C35B00(&v23);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_1A3C7E8B0();
    v12 = [swift_getObjCClassFromMetadata() sharedInstance];
    if ([v12 enableCuratedLibrary])
    {
      v13 = [v12 enableTabs] ^ 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v12 enableShelves];

    v15.i32[1] = -1;
    v15.i16[0] = v13;
    v15.i16[1] = v14;
    v16 = vand_s8(v15, 0x1000100010001);
    goto LABEL_19;
  }

  if ((v20 != 0x6B6E616C62 || v21 != 0xE500000000000000) && (sub_1A524EAB4() & 1) == 0)
  {
    if (v20 == 0xD000000000000010 && 0x80000001A53E0DA0 == v21 || (sub_1A524EAB4() & 1) != 0)
    {

      v11 = 0;
      v19 = 0x1000000000001;
      goto LABEL_20;
    }

    if (v20 == 0x4F7365766C656873 && v21 == 0xEB00000000796C6ELL)
    {

LABEL_29:
      v16 = 0x10000;
LABEL_19:
      v19 = v16;
      v11 = 1;
      goto LABEL_20;
    }

    v18 = sub_1A524EAB4();

    if (v18)
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  v11 = 0;
  v19 = 0;
LABEL_20:
  v17 = sub_1A3C35B00(v25);
  *v1 = vuzp1_s8(v19, v19).u32[0];
  *(v1 + 4) = v11;
  return v17;
}

char *sub_1A4630760()
{
  if (qword_1EB173B20 != -1)
  {
    swift_once();
  }

  return &byte_1EB173B28;
}

uint64_t static PhotosLaunchConfiguration.current.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EB173B20 != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

  v1 = byte_1EB173B29;
  v2 = byte_1EB173B2A;
  v3 = byte_1EB173B2B;
  v4 = byte_1EB173B2C;
  *a1 = byte_1EB173B28;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  return result;
}

void sub_1A4630868()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B758);
  __swift_project_value_buffer(v0, qword_1EB15B758);
  sub_1A5246EF4();
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotosLaunchConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotosLaunchConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1A4630A00()
{
  result = qword_1EB18D650[0];
  if (!qword_1EB18D650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB18D650);
  }

  return result;
}

void (*EnvironmentValues.photoLibrary.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1A4630A00();
  sub_1A5249244();
  return sub_1A4630AD4;
}

unint64_t sub_1A4630B00()
{
  result = qword_1EB1885F8[0];
  if (!qword_1EB1885F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1885F8);
  }

  return result;
}

uint64_t (*EnvironmentValues.navigationContext.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1A4630B00();
  sub_1A5249244();
  return sub_1A4630BD4;
}

uint64_t sub_1A4630BD4(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1A5249254();
  }

  sub_1A5249254();
}

unint64_t sub_1A4630C88()
{
  result = qword_1EB1865A0[0];
  if (!qword_1EB1865A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1865A0);
  }

  return result;
}

void (*EnvironmentValues.pickerConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1A4630C88();
  sub_1A5249244();
  return sub_1A4630D5C;
}

uint64_t sub_1A4630D88(void (*a1)(void))
{
  a1();
  sub_1A5249244();
  return v2;
}

unint64_t sub_1A4630DD0()
{
  result = qword_1EB1CB118[0];
  if (!qword_1EB1CB118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1CB118);
  }

  return result;
}

void (*EnvironmentValues.collectionList.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1A4630DD0();
  sub_1A5249244();
  return sub_1A4630EEC;
}

void sub_1A4630EF8(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_1A5249254();
    v5 = *a1;
  }

  else
  {
    sub_1A5249254();
  }
}

uint64_t sub_1A4630FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A44FD29C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A4631034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A46310FC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A4631098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4444E20();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1A46310FC()
{
  result = qword_1EB125A10;
  if (!qword_1EB125A10)
  {
    sub_1A3F17950(255);
    sub_1A44FD6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125A10);
  }

  return result;
}

uint64_t type metadata accessor for LemonadeSharedLibrarySuggestionCell()
{
  result = qword_1EB1CB230;
  if (!qword_1EB1CB230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A46311C0(uint64_t a1, void *a2)
{
  v4 = sub_1A5244084();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  sub_1A463358C();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v13[1] = v14;
  sub_1A4633F64(0, &qword_1EB13F638, sub_1A4633620);
  sub_1A46313FC(a2, a1, v13 + *(v15 + 44));
  type metadata accessor for LemonadeSharedLibrarySuggestionCell();
  sub_1A3F75AC0(v10);
  sub_1A5243F24();
  v16 = *(v5 + 8);
  v16(v10, v4);
  sub_1A4633C0C(&qword_1EB13F630, sub_1A463358C);
  sub_1A524A784();
  v16(v7, v4);
  return sub_1A4633F04(v13, sub_1A463358C);
}

uint64_t sub_1A46313FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v76 = a2;
  v86 = a3;
  sub_1A4633690(0);
  v84 = *(v4 - 8);
  v85 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A463377C(0);
  v73 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v69 - v9;
  sub_1A4609F3C();
  v71 = v11;
  v70 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4633748(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v74 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v69 - v16;
  sub_1A463365C(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v83 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v69 - v20;
  v21 = sub_1A5243834();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B7A4(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v69 - v26;
  v79 = sub_1A5243EC4();
  v28 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v69 - v32;
  v75 = a1;
  v34 = *a1;
  (*(*v34 + 200))(v31);
  v87 = 0u;
  v88 = 0u;
  v89 = 1;
  v35 = sub_1A52429A4();
  (*(*(v35 - 8) + 56))(v27, 1, 1, v35);
  (*(v22 + 104))(v24, *MEMORY[0x1E69C2678], v21);
  v80 = v33;
  v36 = sub_1A5243ED4();
  v37 = (*(*v34 + 152))(v36);
  v39 = (*(*v34 + 248))();
  v40 = v38;
  if ((v37 & 1) == 0)
  {
    if (!v38)
    {
      v59 = 1;
      v42 = v82;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v38)
  {
LABEL_5:
    v46 = v69;
    sub_1A5242CC4();
    v45 = v70;
    v44 = v71;
    v43 = v72;
    (*(v70 + 32))(v72, v46, v71);
    v41 = 0;
    v42 = v82;
    goto LABEL_6;
  }

  v41 = 1;
  v42 = v82;
  v44 = v71;
  v43 = v72;
  v45 = v70;
LABEL_6:
  (*(v45 + 56))(v43, v41, 1, v44);
  *v10 = sub_1A5249584();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_1A4633F64(0, &qword_1EB13F640, sub_1A463384C);
  sub_1A4631CCC(v37 & 1, v40 != 0, v39, v40, v75, v76, &v10[*(v47 + 44)]);

  v48 = sub_1A524A064();
  v49 = v74;
  v50 = &v10[*(v73 + 36)];
  *v50 = v48;
  __asm { FMOV            V0.2D, #10.0 }

  *(v50 + 8) = _Q0;
  *(v50 + 24) = _Q0;
  v50[40] = 0;
  sub_1A463412C(v43, v49, sub_1A4633748);
  v56 = v77;
  sub_1A463412C(v10, v77, sub_1A463377C);
  v57 = v78;
  sub_1A463412C(v49, v78, sub_1A4633748);
  sub_1A46336CC(0, &qword_1EB13F588, sub_1A4633748, sub_1A463377C);
  sub_1A463412C(v56, v57 + *(v58 + 48), sub_1A463377C);
  sub_1A4633F04(v10, sub_1A463377C);
  sub_1A4633F04(v43, sub_1A4633748);
  sub_1A4633F04(v56, sub_1A463377C);
  sub_1A4633F04(v49, sub_1A4633748);
  sub_1A46340C4(v57, v42, sub_1A4633690);
  v59 = 0;
LABEL_7:
  (*(v84 + 56))(v42, v59, 1, v85);
  v60 = *(v28 + 16);
  v62 = v80;
  v61 = v81;
  v63 = v79;
  v60(v81, v80, v79);
  v64 = v83;
  sub_1A463412C(v42, v83, sub_1A463365C);
  v65 = v86;
  v60(v86, v61, v63);
  sub_1A46336CC(0, &qword_1EB13F570, MEMORY[0x1E69C2928], sub_1A463365C);
  sub_1A463412C(v64, &v65[*(v66 + 48)], sub_1A463365C);
  sub_1A4633F04(v42, sub_1A463365C);
  v67 = *(v28 + 8);
  v67(v62, v63);
  sub_1A4633F04(v64, sub_1A463365C);
  return (v67)(v61, v63);
}

uint64_t sub_1A4631CCC@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v125 = a6;
  v137 = a5;
  v154 = a4;
  v136 = a3;
  LODWORD(v153) = a2;
  v146 = a7;
  sub_1A4633C88();
  v151 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4609AF0(0);
  v127 = v12;
  v126 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4633D10(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v129 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v114 - v18;
  sub_1A4633B2C(0, &qword_1EB12C9C0, sub_1A3DF14C0, sub_1A41E5550);
  v142 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v132 = &v114 - v21;
  sub_1A4609C28();
  v143 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v122 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v133 = &v114 - v25;
  sub_1A4609BA4();
  v135 = v26;
  v134 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v131 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4609B24();
  v144 = v28;
  v123 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v141 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v130 = &v114 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v145 = &v114 - v33;
  sub_1A4633C54(0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v150 = &v114 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v114 - v37;
  sub_1A4633918();
  v40 = v39;
  v152 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v140 = &v114 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4633AC4(0);
  v43 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v138 = &v114 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v114 - v46;
  sub_1A4633994();
  MEMORY[0x1EEE9AC00](v48 - 8);
  v139 = (&v114 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v114 - v51;
  sub_1A46338E4(0);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v148 = &v114 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v128 = v19;
  v149 = v38;
  v124 = v14;
  v147 = &v114 - v56;
  if (a1)
  {
    *v52 = sub_1A5249314();
    *(v52 + 1) = 0;
    v52[16] = 1;
    sub_1A4633F64(0, &qword_1EB13F648, sub_1A4633A28);
    v118 = &v52[*(v57 + 44)];
    v58 = [objc_opt_self() px:*MEMORY[0x1E69DDD08] preferredFontForTextStyle:32770 withSymbolicTraits:0 options:?];
    v59 = sub_1A524C634();
    v60 = PXLocalizedSharedLibraryString(v59);
    v120 = v11;
    v61 = v60;

    v62 = sub_1A524C674();
    v64 = v63;

    aBlock = v62;
    v157 = v64;
    sub_1A3D5F9DC();
    v65 = sub_1A524A464();
    v67 = v66;
    LOBYTE(v61) = v68;
    v119 = v40;
    v117 = v58;
    sub_1A524A284();
    v69 = sub_1A524A3C4();
    v121 = v9;
    v70 = v69;
    v116 = v71;
    v72 = v43;
    v74 = v73;
    v115 = v75;

    sub_1A3E04DF4(v65, v67, v61 & 1);

    LOBYTE(v65) = sub_1A524A064();
    LOBYTE(v61) = v74 & 1;
    LOBYTE(aBlock) = v74 & 1;
    v155 = 0;
    sub_1A4633AF8(0);
    v77 = &v47[*(v76 + 36)];
    sub_1A524BBB4();
    LOBYTE(v67) = sub_1A524A064();
    sub_1A41CD494(0);
    v77[*(v78 + 36)] = v67;
    v38 = v149;
    *v47 = v70;
    v9 = v121;
    *(v47 + 1) = v116;
    v47[16] = v61;
    *(v47 + 3) = v115;
    v47[32] = v65;
    *(v47 + 40) = xmmword_1A53522F0;
    *(v47 + 56) = xmmword_1A53522F0;
    v47[72] = 0;
    v79 = &v47[*(v72 + 36)];
    v80 = *(sub_1A5248A14() + 20);
    v81 = *MEMORY[0x1E697F468];
    v82 = sub_1A52494A4();
    (*(*(v82 - 8) + 104))(&v79[v80], v81, v82);
    __asm { FMOV            V0.2D, #4.0 }

    *v79 = _Q0;
    sub_1A3E42C88();
    *&v79[*(v88 + 36)] = 256;
    v89 = v138;
    sub_1A46342B4(v47, v138, sub_1A4633AC4);
    v90 = v118;
    *v118 = 0;
    v90[8] = 1;
    v91 = v90;
    sub_1A4633A5C();
    sub_1A46342B4(v89, &v91[*(v92 + 48)], sub_1A4633AC4);

    sub_1A4634064(v47, sub_1A4633AC4);
    sub_1A4634064(v89, sub_1A4633AC4);
    v93 = v139;
    sub_1A46342B4(v52, v139, sub_1A4633994);
    v94 = v140;
    sub_1A46342B4(v93, v140, sub_1A4633994);
    sub_1A46341FC(0, &qword_1EB13F5C8, sub_1A4633994);
    v96 = v94 + *(v95 + 48);
    *v96 = 0;
    *(v96 + 8) = 1;
    sub_1A4634064(v52, sub_1A4633994);
    sub_1A4634064(v93, sub_1A4633994);
    v97 = v147;
    sub_1A4634194(v94, v147, sub_1A4633918);
    result = (*(v152 + 56))(v97, 0, 1, v119);
  }

  else
  {
    v97 = &v114 - v56;
    result = (*(v152 + 56))(&v114 - v56, 1, 1, v40);
  }

  v99 = v154;
  if (v153)
  {
    if (v154)
    {
      KeyPath = swift_getKeyPath();
      v101 = v132;
      v102 = &v132[*(v142 + 36)];
      sub_1A41E5550(0);
      v153 = v103;
      v104 = *(v103 + 28);
      v105 = *MEMORY[0x1E6980FA8];
      v106 = sub_1A524A354();
      v107 = *(v106 - 8);
      v108 = *(v107 + 104);
      LODWORD(v152) = v105;
      v140 = v107 + 104;
      v139 = v108;
      (v108)(v102 + v104, v105, v106);
      *v102 = swift_getKeyPath();
      *v101 = v136;
      *(v101 + 1) = v99;
      v109 = MEMORY[0x1E69E7CC0];
      v101[16] = 0;
      *(v101 + 3) = v109;
      *(v101 + 4) = KeyPath;
      *(v101 + 5) = 2;
      v101[48] = 0;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
  }

  else
  {
    (*(v9 + 56))(v38, 1, 1, v151);
    v110 = v148;
    sub_1A46342B4(v97, v148, sub_1A46338E4);
    v111 = v150;
    sub_1A463412C(v38, v150, sub_1A4633C54);
    v112 = v146;
    sub_1A46342B4(v110, v146, sub_1A46338E4);
    sub_1A46336CC(0, &qword_1EB13F5B0, sub_1A46338E4, sub_1A4633C54);
    sub_1A463412C(v111, v112 + *(v113 + 48), sub_1A4633C54);
    sub_1A4633F04(v38, sub_1A4633C54);
    sub_1A4634064(v97, sub_1A46338E4);
    sub_1A4633F04(v111, sub_1A4633C54);
    return sub_1A4634064(v110, sub_1A46338E4);
  }

  return result;
}

double sub_1A4632F48()
{
  v0 = sub_1A524C634();
  sub_1A3C6B7A4(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  v2 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v3 = objc_opt_self();
  v4 = *MEMORY[0x1E69DDD28];
  v5 = v2;
  v6 = [v3 preferredFontForTextStyle_];
  *(inited + 64) = sub_1A4634268();
  *(inited + 40) = v6;
  sub_1A3C8BCC0(inited);
  swift_setDeallocating();
  sub_1A4634064(inited + 32, sub_1A3C8BC40);
  type metadata accessor for Key(0);
  sub_1A4633C0C(&unk_1EB1208B0, type metadata accessor for Key);
  v7 = sub_1A524C3D4();

  [v0 sizeWithAttributes_];
  v9 = v8;

  return v9;
}

double sub_1A4633108(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1A524C674();
  v3 = v1(v2);

  return v3;
}

uint64_t sub_1A4633164@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for LemonadeSharedLibrarySuggestionCell() + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_1A3C6B7A4(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A4633214@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A46342B4(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeSharedLibrarySuggestionCell);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1A4634194(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LemonadeSharedLibrarySuggestionCell);
  *a2 = sub_1A463431C;
  a2[1] = v7;
  return result;
}

void sub_1A4633350()
{
  type metadata accessor for LemonadeSharedLibrarySuggestionModel();
  if (v0 <= 0x3F)
  {
    sub_1A3C6B7A4(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A4633404()
{
  if (!qword_1EB13F550)
  {
    sub_1A46334D8();
    sub_1A463358C();
    sub_1A4633C0C(&qword_1EB13F630, sub_1A463358C);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248414();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F550);
    }
  }
}

void sub_1A46334D8()
{
  if (!qword_1EB13F558)
  {
    sub_1A463358C();
    sub_1A4633C0C(&qword_1EB13F630, sub_1A463358C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13F558);
    }
  }
}

void sub_1A463358C()
{
  if (!qword_1EB13F560)
  {
    sub_1A4633620(255);
    sub_1A4633C0C(&qword_1EB13F628, sub_1A4633620);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F560);
    }
  }
}

void sub_1A46336CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A46337B8()
{
  if (!qword_1EB13F5A0)
  {
    sub_1A463384C(255);
    sub_1A4633C0C(&qword_1EB13F620, sub_1A463384C);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F5A0);
    }
  }
}

void sub_1A4633888(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A46336CC(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4633918()
{
  if (!qword_1EB13F5C0)
  {
    sub_1A46341FC(255, &qword_1EB13F5C8, sub_1A4633994);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F5C0);
    }
  }
}

void sub_1A4633994()
{
  if (!qword_1EB13F5D0)
  {
    sub_1A4633A28(255);
    sub_1A4633C0C(&qword_1EB13F5F8, sub_1A4633A28);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F5D0);
    }
  }
}

void sub_1A4633A5C()
{
  if (!qword_1EB13F5E0)
  {
    sub_1A4633AC4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13F5E0);
    }
  }
}

void sub_1A4633B2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4633BA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A4633C0C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4633C88()
{
  if (!qword_1EB13F608)
  {
    sub_1A46336CC(255, &qword_1EB13F610, sub_1A4609B24, sub_1A4633D10);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13F608);
    }
  }
}

uint64_t objectdestroyTm_68()
{
  v1 = (type metadata accessor for LemonadeSharedLibrarySuggestionCell() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_1A3C6B7A4(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5244084();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A4633E84(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeSharedLibrarySuggestionCell() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1A46311C0(a1, v4);
}

uint64_t sub_1A4633F04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4633F64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A4633FD0(uint64_t a1, uint64_t a2)
{
  sub_1A4633B2C(0, &qword_1EB12C9C0, sub_1A3DF14C0, sub_1A41E5550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4634064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A46340C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A463412C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4634194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A46341FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1A4634268()
{
  result = qword_1EB120610;
  if (!qword_1EB120610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB120610);
  }

  return result;
}

uint64_t sub_1A46342B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1A46344D8@<D0>(void *a1@<X8>)
{

  return sub_1A41840CC(v2, a1);
}

id sub_1A4634510@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  *a2 = v3;
  type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();

  return v3;
}

uint64_t sub_1A4634588(uint64_t a1)
{
  v1 = *((*(*a1 + 144))() + 16);

  v2 = [v1 name];

  v3 = sub_1A524C674();
  return v3;
}

unint64_t sub_1A4634628(uint64_t a1)
{
  v2 = sub_1A3C54394(&qword_1EB129A08, type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider);

  return sub_1A42E6E80(a1, v2);
}

uint64_t StoryAsyncPlayer.Options.hashValue.getter()
{
  sub_1A524EC94();
  sub_1A524ECB4();
  return sub_1A524ECE4();
}

uint64_t sub_1A4634784()
{
  sub_1A524EC94();
  sub_1A524ECB4();
  return sub_1A524ECE4();
}

uint64_t sub_1A46347F8()
{
  sub_1A524EC94();
  sub_1A524ECB4();
  return sub_1A524ECE4();
}

void StoryAsyncPlayer.init(configuration:options:)(void *a1, char *a2)
{
  v3 = v2;
  v5 = *a2;
  sub_1A52411B4();
  v6 = v2 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_aspectRatio;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_backgroundColor;
  *(v3 + v7) = [objc_opt_self() blackColor];
  *(v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_displayScaleFactor) = 0x3FF0000000000000;
  v8 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_desiredInlinePlayState;
  v9 = *MEMORY[0x1E69C1EF0];
  v10 = sub_1A52425F4();
  (*(*(v10 - 8) + 104))(v3 + v8, v9, v10);
  v11 = (v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_onPlaybackFinished);
  *v11 = 0;
  v11[1] = 0;
  v12 = v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_mainPresenter) = 0;
  v13 = (v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize);
  *v13 = 0;
  v13[1] = 0;
  v14 = v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_lastReferenceSize;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_sessionState;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_session) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_onSessionLoad) = MEMORY[0x1E69E7CC0];
  if (qword_1EB18ABC0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EB18ABC8;
  v35 = a1;
  v17 = [a1 copyWithStoryQueue_];
  [v17 setSongsProducerKind_];
  [v17 setOptions_];
  sub_1A3C52C70(0, &qword_1EB12B180);
  v18 = sub_1A524D474();
  MEMORY[0x1EEE9AC00](v18);
  v34[16] = v5;
  v19 = objc_allocWithZone(PXGHostingController);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1A4639BAC;
  *(v20 + 24) = v34;
  v40 = sub_1A3D78DD0;
  v41 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1A3D77CC4;
  v39 = &block_descriptor_230;
  v21 = _Block_copy(&aBlock);

  v22 = [v19 initWithClientQueue:v18 layoutQueue:v16 initialConfiguration:v21];

  _Block_release(v21);

  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    v23 = [objc_allocWithZone(PXStoryExtendedTraitCollection) initWithLayoutReferenceSize:100.0 displayScale:{100.0, 1.0}];
    *(v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_traitCollection) = v23;
    *(v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue) = v16;
    *(v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyConfiguration) = v17;
    *(v3 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_hostingController) = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = v17;
    *(v24 + 24) = v3;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1A4639BBC;
    *(v25 + 24) = v24;
    v40 = sub_1A3D7B4F8;
    v41 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1A3D77CC4;
    v39 = &block_descriptor_10_10;
    v26 = _Block_copy(&aBlock);
    v27 = v17;
    v28 = v16;
    v29 = v22;

    [v29 performChanges_];
    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v31 = swift_allocObject();
      swift_weakInit();
      v40 = sub_1A4639CCC;
      v41 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v37 = 1107296256;
      v38 = sub_1A3C2E0D0;
      v39 = &block_descriptor_16_8;
      v32 = _Block_copy(&aBlock);

      [v29 setOnPresentersDidChange_];
      _Block_release(v32);
      if (qword_1EB18AC90 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_9:
  swift_once();
LABEL_6:
  sub_1A463B040(0, &qword_1EB128C58, type metadata accessor for StoryAsyncPlayer, off_1E7721228);
  __swift_project_value_buffer(v33, qword_1EB18AC98);
  swift_beginAccess();
  sub_1A52464B4();
}

uint64_t StoryAsyncPlayer.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_id;
  v4 = sub_1A52411C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A4634F60()
{
  swift_getMetatypeMetadata();
  v2 = sub_1A524C714();
  MEMORY[0x1A5907B60](45, 0xE100000000000000);
  sub_1A52411C4();
  sub_1A4639DDC(&qword_1EB126020, MEMORY[0x1E69695A8]);
  v0 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v0);

  return v2;
}

uint64_t sub_1A4635060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

void sub_1A4635104(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState + 8);
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState);
  *v2 = a1;
  *(v2 + 8) = v3;
  sub_1A4637ABC(v4, v3);
}

void (*sub_1A4635128(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2);
  return sub_1A463515C;
}

void sub_1A463515C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] + a1[2];
  v3 = *(v2 + 8);
  v4 = *v2;
  *v2 = v1;
  *(v2 + 8) = v3;
  sub_1A4637ABC(v4, v3);
}

void *sub_1A4635198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 256))(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1A4635204(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return (*(*v3 + 264))(&v5);
}

uint64_t sub_1A463526C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_aspectRatio;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_1A46352C4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_aspectRatio;
  result = swift_beginAccess();
  v6 = *v4;
  v7 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  if (v7 == 1)
  {
    if (v6 != 0.0)
    {
      if (v2 == 0.0)
      {
        v8 = 0;
      }

      else
      {
        v8 = v3;
      }

      if (v8 == 1)
      {
        return result;
      }

      return sub_1A4637E00();
    }

    if (v2 == 0.0)
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    if ((v10 & 1) == 0)
    {
      return sub_1A4637E00();
    }
  }

  else
  {
    if (v6 == v2)
    {
      v9 = v3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return sub_1A4637E00();
    }
  }

  return result;
}

void (*sub_1A463536C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_aspectRatio;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_1A463540C;
}

void sub_1A463540C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 40) + *(*a1 + 48);
  v5 = *(*a1 + 32);
  v6 = *v4;
  v7 = *(v4 + 8);
  *v4 = v3;
  *(v4 + 8) = v5;
  if ((a2 & 1) == 0)
  {
    if (v7)
    {
      if (v6 != 0.0)
      {
LABEL_4:
        if (v3 == 0.0)
        {
          v5 = 0;
        }

        if (v5)
        {
          goto LABEL_18;
        }

LABEL_17:
        sub_1A4637E00();
        goto LABEL_18;
      }

      goto LABEL_10;
    }

LABEL_14:
    if (v6 != v3)
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!v7)
  {
    goto LABEL_14;
  }

  if (v6 != 0.0)
  {
    goto LABEL_4;
  }

LABEL_10:
  if (v3 != 0.0)
  {
    v5 = 0;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:

  free(v2);
}

uint64_t sub_1A46354B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

id sub_1A4635564()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_backgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A46355B8(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_backgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  v6 = v4;
  v7 = v5;
  if (v4 == a1)
  {
  }

  else
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      sub_1A4637E00();
    }
  }
}

void (*sub_1A4635668(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_backgroundColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1A4635704;
}

void sub_1A4635704(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 24);
  v5 = *v4;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v4;
  v9 = v5;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    v12 = v8;
    v13 = v11;
    v14 = v13;
    if (v8 == v5)
    {
    }

    else
    {
      v15 = [v12 isEqual:v13];

      if ((v15 & 1) == 0)
      {
        sub_1A4637E00();
      }
    }

    v18 = *v4;
  }

  else
  {
    v16 = v8;
    v17 = v10;
    v18 = v17;
    if (v8 == v5)
    {
    }

    else
    {
      v19 = [v16 isEqual:v17];

      if ((v19 & 1) == 0)
      {
        sub_1A4637E00();
      }
    }
  }

  free(v3);
}

double sub_1A46358C8()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_displayScaleFactor;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A463590C(double a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_displayScaleFactor;
  swift_beginAccess();
  *(v1 + v3) = a1;
  PXFloatApproximatelyEqualToFloat();
}

void (*sub_1A4635970(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_displayScaleFactor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A4635A04;
}

uint64_t static StoryAsyncPlayer.AspectRatio.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
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

uint64_t sub_1A4635AB0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
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

uint64_t sub_1A4635B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  sub_1A463B040(0, &qword_1EB124B48, type metadata accessor for StoryAsyncPlayer, off_1E7721028);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4635BFC, 0, 0);
}

void sub_1A4635BFC()
{
  *(v0 + 16) = *(v0 + 56);
  type metadata accessor for StoryAsyncPlayer();

  sub_1A5245A64();
}

uint64_t sub_1A4635D50()
{

  return MEMORY[0x1EEE6DFA0](sub_1A4635E68, 0, 0);
}

uint64_t sub_1A4635E68()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A4635EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v36 = a4;
  v37 = a5;
  v43 = a2;
  v40 = sub_1A524BEE4();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1A524BF64();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524CBF4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  sub_1A463B040(0, &qword_1EB124B48, type metadata accessor for StoryAsyncPlayer, off_1E7721028);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v20 = &v33 - v19;
  (*(v16 + 16))(&v33 - v19, a3, v15, v18);
  (*(v11 + 16))(v13, a1, v10);
  v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v11 + 80) + v22 + 16) & ~*(v11 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v34;
  (*(v16 + 32))(v24 + v21, v20, v15);
  v25 = (v24 + v22);
  v26 = v37;
  *v25 = v36;
  v25[1] = v26;
  (*(v11 + 32))(v24 + v23, v13, v10);
  aBlock[4] = sub_1A463AABC;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_151_0;
  v27 = _Block_copy(aBlock);

  v28 = v35;
  sub_1A524BF14();
  v44 = MEMORY[0x1E69E7CC0];
  sub_1A4639DDC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v29 = MEMORY[0x1E69E7F60];
  sub_1A463B040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2AA28(&qword_1EB12B1B0, &qword_1EB12B1C0, v29);
  v30 = v38;
  v31 = v40;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v28, v30, v27);
  _Block_release(v27);
  (*(v42 + 8))(v30, v31);
  (*(v39 + 8))(v28, v41);
}

void sub_1A46363D8()
{
  v0 = sub_1A524CBF4();
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A463B040(0, &qword_1EB124B48, type metadata accessor for StoryAsyncPlayer, off_1E7721028);
  sub_1A5245A74();
}

uint64_t sub_1A463671C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v14(*(v13 + 72), v10);
  (*(v6 + 16))(v8, v12, a5);
  sub_1A524CBF4();
  sub_1A524CBE4();
  return (*(v6 + 8))(v12, a5);
}

void sub_1A4636858(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1A4059450();
}

void static StoryAsyncPlayer.alivePlayers.getter()
{
  sub_1A463B040(0, &qword_1EB128C58, type metadata accessor for StoryAsyncPlayer, off_1E7721228);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - v3;
  if (qword_1EB18AC90 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v1, qword_1EB18AC98);
  swift_beginAccess();
  (*(v2 + 16))(v4, v5, v1);
  sub_1A52464D4();
}

void sub_1A4636A50(void *a1)
{
  v2 = v1;
  v4 = sub_1A524BEE4();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A524BF64();
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524C634();
  v11 = [a1 beginCollectionOperationWithName:v10 timeout:600.0];

  v19[0] = *(v2 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue);
  v12 = swift_allocObject();
  v19[1] = v11;
  v20 = a1;
  v12[2] = a1;
  v12[3] = v2;
  v12[4] = v11;
  aBlock[4] = sub_1A4639D7C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_26_3;
  v13 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_1A524BF14();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1A4639DDC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v14 = MEMORY[0x1E69E7F60];
  sub_1A463B040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2AA28(&qword_1EB12B1B0, &qword_1EB12B1C0, v14);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v13);
  _Block_release(v13);
  (*(v22 + 8))(v6, v4);
  (*(v7 + 8))(v9, v21);

  v15 = [objc_allocWithZone(off_1E7721970) initWithRootProvider_];
  v16 = sub_1A524C634();
  [v15 setName_];

  sub_1A3C52C70(0, &unk_1EB120A90);
  v17 = [swift_getObjCClassFromMetadata() sharedInstance];
  v18 = [v17 includeImagesInVisualDiagnosticsForTTR];

  [v15 setIsPrivateDataAllowed_];
  [v20 addSubprovider_];
  swift_unknownObjectRelease();
}

uint64_t sub_1A4636EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A52425F4();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*(**a2 + 360))(v7);
}

uint64_t sub_1A4636FF0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_desiredInlinePlayState;
  swift_beginAccess();
  v4 = sub_1A52425F4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1A4637078(uint64_t a1)
{
  v3 = sub_1A52425F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_desiredInlinePlayState;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v10, a1, v3);
  swift_endAccess();
  (*(v4 + 16))(v9, v1 + v10, v3);
  (*(v4 + 32))(v6, v9, v3);
  v11 = (*(v4 + 88))(v6, v3);
  v12 = 0;
  if (v11 != *MEMORY[0x1E69C1EF0] && v11 != *MEMORY[0x1E69C1EF8] && v11 != *MEMORY[0x1E69C1EE0])
  {
    if (v11 == *MEMORY[0x1E69C1EE8])
    {
      v12 = 1;
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v12 = 0;
    }
  }

  (*(*v1 + 240))(v12);
  return (*(v4 + 8))(a1, v3);
}

void (*sub_1A46372A4(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1A52425F4();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_desiredInlinePlayState;
  v5[7] = v9;
  v5[8] = v10;
  swift_beginAccess();
  return sub_1A46373BC;
}

void sub_1A46373BC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v5 = v3[6];
    v4 = v3[7];
    goto LABEL_15;
  }

  v6 = v3[7];
  v8 = v3[5];
  v7 = v3[6];
  v9 = v3[4];
  (*(v8 + 16))(v6, v3[3] + v3[8], v9);
  (*(v8 + 32))(v7, v6, v9);
  v10 = (*(v8 + 88))(v7, v9);
  if (v10 == *MEMORY[0x1E69C1EF0] || v10 == *MEMORY[0x1E69C1EF8] || v10 == *MEMORY[0x1E69C1EE0])
  {
    goto LABEL_13;
  }

  if (v10 != *MEMORY[0x1E69C1EE8])
  {
    (*(v3[5] + 8))(v3[6], v3[4]);
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v13 = 1;
LABEL_14:
  v5 = v3[6];
  v4 = v3[7];
  (*(*v3[3] + 240))(v13);
LABEL_15:
  free(v4);
  free(v5);

  free(v3);
}

uint64_t sub_1A4637524@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 376))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3C7146C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A46375BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 384);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A463767C()
{
  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_onPlaybackFinished);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1);
  return v2;
}

uint64_t sub_1A46376D8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_onPlaybackFinished);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C784D4(v6, v7);
}

uint64_t sub_1A46377B0()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF24();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A4639DDC(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A463B040(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C2AA28(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB18ABC8 = result;
  return result;
}

void sub_1A4637A34()
{
  sub_1A463B040(0, &qword_1EB128C58, type metadata accessor for StoryAsyncPlayer, off_1E7721228);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB18AC98);
  __swift_project_value_buffer(v1, qword_1EB18AC98);
  type metadata accessor for StoryAsyncPlayer();
  sub_1A52464E4();
}

void sub_1A4637ABC(uint64_t a1, int a2)
{
  v5 = sub_1A524BEE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState);
  v15 = *(v2 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState + 8);
  if (v14 != a1 || ((v15 ^ a2) & 1) != 0)
  {
    v20 = *(v2 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue);
    v21 = v11;
    v22 = v10;
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v14;
    *(v17 + 32) = v15;
    aBlock[4] = sub_1A463AF20;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_187_0;
    v18 = _Block_copy(aBlock);

    sub_1A524BF14();
    v23 = MEMORY[0x1E69E7CC0];
    sub_1A4639DDC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v19 = MEMORY[0x1E69E7F60];
    sub_1A463B040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C2AA28(&qword_1EB12B1B0, &qword_1EB12B1C0, v19);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v13, v8, v18);
    _Block_release(v18);
    (*(v6 + 8))(v8, v5);
    (*(v21 + 8))(v13, v22);
  }
}

uint64_t sub_1A4637E00()
{
  v1 = sub_1A524BEE4();
  v41 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v43 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524BF64();
  v42 = *(v3 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_mainPresenter;
  v8 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_mainPresenter);
  if (v8)
  {
    v8 = [v8 size];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = 0.0;
    v12 = 0.0;
  }

  v13 = (*(*v0 + 256))(&aBlock, v8);
  if (v46 == 1)
  {
    v14 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize;
    if (aBlock != 0.0)
    {
      if (*(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize) == v10)
      {
        v10 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize);
        v12 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize + 8);
      }

      else if (*(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize + 8) == v12)
      {
        v10 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize);
        v12 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize + 8);
      }
    }
  }

  else
  {
    v10 = MEMORY[0x1A590D2F0](v13, aBlock, v10, v12);
    v12 = v15;
    v14 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_referenceSize;
  }

  v16 = (v0 + v14);
  *v16 = v10;
  v16[1] = v12;
  sub_1A3C52C70(0, &qword_1EB126A10);
  v17 = [swift_getObjCClassFromMetadata() sharedInstance];
  v18 = [v17 inlinePlaybackSimulateMainPresenterDisappearanceOnDismissal];

  if (v18)
  {
    v19 = (v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_lastReferenceSize);
    if ((*(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_lastReferenceSize + 16) & 1) == 0 && v10 < *v19 && v12 < v19[1])
    {
      v10 = 0.0;
      v12 = 0.0;
    }
  }

  v20 = v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_lastReferenceSize;
  *v20 = v10;
  *(v20 + 8) = v12;
  *(v20 + 16) = 0;
  v21 = *(v0 + v7);
  if (v21)
  {
    v21 = [v21 displayScale];
    if (v22 <= 0.0)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = v22;
    }
  }

  else
  {
    v23 = 1.0;
  }

  v24 = v23 * (*(*v0 + 304))(v21);
  if (*(v0 + v7))
  {
    sub_1A524DA74();
  }

  v25 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_hostingController);
  v26 = swift_allocObject();
  *(v26 + 16) = v0;
  *(v26 + 24) = v10;
  *(v26 + 32) = v12;
  *(v26 + 40) = v24;
  *(v26 + 48) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1A463AD08;
  *(v27 + 24) = v26;
  v49 = sub_1A3D7B4F8;
  v50 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1A3D77CC4;
  v48 = &block_descriptor_167_0;
  v28 = _Block_copy(&aBlock);

  [v25 performChanges_];
  _Block_release(v28);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  else
  {
    v30 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState);
    v31 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState + 8);
    *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_sessionState + 8) = 0;
    sub_1A4637ABC(v30, v31);
    if (v24 > 0.0)
    {
      v40[1] = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue);
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = v24;
      v49 = sub_1A463ADE8;
      v50 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v46 = 1107296256;
      v47 = sub_1A3C2E0D0;
      v48 = &block_descriptor_174_0;
      v34 = _Block_copy(&aBlock);

      v35 = v6;
      sub_1A524BF14();
      v44 = MEMORY[0x1E69E7CC0];
      sub_1A4639DDC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
      v40[0] = v3;
      v36 = v41;
      v37 = v1;
      v38 = MEMORY[0x1E69E7F60];
      sub_1A463B040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C2AA28(&qword_1EB12B1B0, &qword_1EB12B1C0, v38);
      v39 = v43;
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v35, v39, v34);
      _Block_release(v34);
      (*(v36 + 8))(v39, v37);
      (*(v42 + 8))(v35, v40[0]);
    }
  }

  return result;
}

void sub_1A463847C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_hostingController) presenters];
  sub_1A463AA58();
  v2 = sub_1A524CA34();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
    v4 = 0;
    goto LABEL_16;
  }

  v3 = sub_1A524E2B4();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      __break(1u);
      return;
    }

    v4 = *(v2 + 32);
    swift_unknownObjectRetain();
    if (v3 >= 1)
    {
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = MEMORY[0x1A59097F0](0, v2);
  if (v3 < 1)
  {
    goto LABEL_24;
  }

LABEL_6:
  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1A59097F0](i, v2);
    }

    else
    {
      v6 = *(v2 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v6 size];
    v8 = v7;
    v10 = v9;
    v11 = [v4 size];
    if (MEMORY[0x1A590D220](v11, v8, v10, v12, v13))
    {
      swift_unknownObjectRelease();
      v4 = v6;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

LABEL_16:

  v14 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_mainPresenter);
  *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_mainPresenter) = v4;
  swift_unknownObjectRetain();
  v15 = v14;
  v16 = v4;
  if (v14 == v4)
  {
  }

  else
  {
    v17 = [v15 isEqual:v16];

    if ((v17 & 1) == 0)
    {
      sub_1A4637E00();
    }
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

void sub_1A4638680()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_traitCollection);
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_hostingController);
  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyConfiguration);
  v4 = v1;
  v5 = [v2 clientQueue];
  type metadata accessor for StoryAsyncPlayer.StoryAsyncSession();
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  *(v6 + 144) = 1;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  *(v6 + 24) = v5;
  v5;
  v7 = [v3 storyQueue];
  *(v6 + 32) = v7;
  *(v6 + 96) = v3;
  *(v6 + 104) = v4;
  v8 = objc_allocWithZone(PXStoryModel);
  v22 = v7;
  v21 = v3;
  v9 = [v8 initWithConfiguration:v21 extendedTraitCollection:v4];
  *(v6 + 72) = v9;
  v10 = objc_allocWithZone(PXStoryPacingAutoIncrementingTimeSource);
  v11 = v9;
  *(v6 + 112) = [objc_allocWithZone(PXStoryPacingController) initWithModel:v11 timeSource:objc_msgSend(v10 cueSource:{sel_initWithLayoutQueue_, v22), 0}];
  v12 = v11;
  v13 = [v21 mediaProvider];
  v14 = [objc_allocWithZone(PXStoryResourcesPreloadingController) initWithModel:v12 mediaProvider:v13];

  [v14 setIsPreloadingEnabled_];
  v27 = sub_1A4638C5C;
  v28 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1A421179C;
  v26 = &block_descriptor_135_4;
  v15 = _Block_copy(&aBlock);
  [v14 performChanges_];
  _Block_release(v15);
  *(v6 + 120) = v14;
  v16 = objc_allocWithZone(PXStoryBufferingController);
  v14;
  v17 = [v16 initWithModel_];
  *(v6 + 128) = v17;
  v18 = objc_allocWithZone(PXStorySongController);
  v19 = v17;
  *(v6 + 136) = [v18 initWithModel_];
  v27 = sub_1A4638C6C;
  v28 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1A3D59380;
  v26 = &block_descriptor_138_1;
  v20 = _Block_copy(&aBlock);
  [v12 performChanges_];
  _Block_release(v20);
  *(v6 + 16) = [objc_allocWithZone(PXStoryLayout) initWithModel_];
  swift_allocObject();
  swift_weakInit();

  sub_1A524D1A4();
}

uint64_t sub_1A4638C2C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

id sub_1A4638C6C(void *a1)
{
  [a1 setDesiredPlayState_];

  return [a1 setMusicReadinessStatus_];
}

void sub_1A4638CBC(uint64_t a1, int a2)
{
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  if (v4 != a1 || ((v5 ^ a2) & 1) != 0)
  {
    v6 = a2 & 1;
    sub_1A4638F4C();
    v7 = *(v2 + 160);
    *(v2 + 160) = v6;
    if (v7 != v6)
    {
      sub_1A463903C();
    }

    v8 = *(v2 + 72);
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = v6;
    v11[4] = sub_1A463A7F8;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1A3D59380;
    v11[3] = &block_descriptor_131_4;
    v10 = _Block_copy(v11);

    [v8 performChanges_];
    _Block_release(v10);
  }
}

id sub_1A4638E00(void *a1)
{
  v3 = *(v1 + 72);
  v4 = PXStoryDiagnosticDescriptionForAllHUDTypes(v3, 1);
  if (!v4)
  {
    sub_1A524C674();
    v4 = sub_1A524C634();
  }

  v5 = sub_1A524C634();
  [a1 addAttachmentWithText:v4 name:v5];

  [a1 addSubprovider_];
  v6 = *(v1 + 112);

  return [a1 addSubprovider_];
}

uint64_t sub_1A4638EE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  a4(a3);
  swift_unknownObjectRelease();
}

void sub_1A4638F4C()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 144);
    *(v0 + 144) = 0;
    if (v1 == 1)
    {
      sub_1A463903C();
    }

    *(v0 + 152) = 0;
  }

  else if (!*(v0 + 152))
  {
    swift_allocObject();
    swift_weakInit();
    sub_1A52458E4();
  }
}

void sub_1A463903C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 17) = v2;
  v16 = sub_1A463A6D4;
  v17 = v4;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1A421179C;
  v15 = &block_descriptor_110_2;
  v5 = _Block_copy(&v12);

  [v3 performChanges_];
  _Block_release(v5);
  v6 = *(v0 + 120);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v16 = sub_1A463B0F0;
  v17 = v7;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1A421179C;
  v15 = &block_descriptor_116_0;
  v8 = _Block_copy(&v12);

  [v6 performChanges_];
  _Block_release(v8);
  v9 = *(v0 + 128);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v16 = sub_1A463A6F0;
  v17 = v10;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1A421179C;
  v15 = &block_descriptor_122_0;
  v11 = _Block_copy(&v12);

  [v9 performChanges_];
  _Block_release(v11);
}

uint64_t sub_1A4639250()
{
  v1 = sub_1A524BEE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v0 + 96) options];
  if ((result & 0x800) != 0)
  {
    v11 = *(v0 + 72);
    result = [v11 isAtPlaybackEnd];
    if (result)
    {
      v24 = sub_1A46395C4;
      v25 = 0;
      v18 = v6;
      aBlock = MEMORY[0x1E69E9820];
      v21 = 1107296256;
      v22 = sub_1A3D59380;
      v23 = &block_descriptor_101_2;
      v12 = _Block_copy(&aBlock);
      v17 = v2;
      v13 = v12;
      [v11 performChanges_];
      _Block_release(v13);
      v24 = sub_1A463A678;
      v25 = v0;
      aBlock = MEMORY[0x1E69E9820];
      v21 = 1107296256;
      v22 = sub_1A3C2E0D0;
      v23 = &block_descriptor_104_0;
      v14 = _Block_copy(&aBlock);

      sub_1A524BF14();
      v19 = MEMORY[0x1E69E7CC0];
      sub_1A4639DDC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
      v15 = MEMORY[0x1E69E7F60];
      sub_1A463B040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C2AA28(&qword_1EB12B1B0, &qword_1EB12B1C0, v15);
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v9, v4, v14);
      _Block_release(v14);
      (*(v17 + 8))(v4, v1);
      (*(v18 + 8))(v9, v5);
    }
  }

  return result;
}

id sub_1A46395C4(void *a1)
{
  [a1 rewindToBeginning];

  return [a1 setDesiredPlayState_];
}

uint64_t sub_1A4639610()
{
  sub_1A3C784D4(*(v0 + 56), *(v0 + 64));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t StoryAsyncPlayer.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_id;
  v2 = sub_1A52411C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_desiredInlinePlayState;
  v4 = sub_1A52425F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1A3C784D4(*(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_onPlaybackFinished), *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_onPlaybackFinished + 8));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t StoryAsyncPlayer.__deallocating_deinit()
{
  StoryAsyncPlayer.deinit();

  return swift_deallocClassInstance();
}

void (*sub_1A463988C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 368))();
  return sub_1A3E62A10;
}

void (*sub_1A463997C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 392))();
  return sub_1A3E658B0;
}

double sub_1A4639A64@<D0>(uint64_t a1@<X8>)
{
  MEMORY[0x1A58FDC30](v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double sub_1A4639AA8@<D0>(uint64_t a1@<X8>)
{
  MEMORY[0x1A58FDC40](v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1A4639AEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_id;
  v5 = sub_1A52411C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_1A4639BBC(void *a1)
{
  v3 = [*(v1 + 16) mediaProvider];
  [a1 setMediaProvider_];

  v4 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_1A463AFDC;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1A3F6EAB4;
  v6[3] = &block_descriptor_191;
  v5 = _Block_copy(v6);

  [a1 setRootLayoutPromise_];
  _Block_release(v5);
}

uint64_t sub_1A4639CCC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A463847C();
  }

  return result;
}

uint64_t type metadata accessor for StoryAsyncPlayer()
{
  result = qword_1EB18AB10;
  if (!qword_1EB18AB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1A4639D7C()
{
  v1 = *(v0 + 32);
  [*(v0 + 16) addSubprovider_];

  return [v1 endWithSuccess:1 error:0];
}

uint64_t sub_1A4639DDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A4639E28()
{
  result = qword_1EB13F780;
  if (!qword_1EB13F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F780);
  }

  return result;
}

uint64_t sub_1A4639F14()
{
  result = sub_1A52411C4();
  if (v1 <= 0x3F)
  {
    result = sub_1A52425F4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of StoryAsyncPlayer.withStoryModel<A>(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 328) + **(*v4 + 328));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1A3D60150;

  return v12(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for StoryAsyncPlayer.StoryAsyncSession.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for StoryAsyncPlayer.StoryAsyncSession.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_1A463A678()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 64);

    v1(v3);

    sub_1A3C784D4(v1, v2);
  }
}

uint64_t sub_1A463A700()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 152))
    {
      sub_1A52458E4();
    }
  }

  return result;
}

void *sub_1A463A808(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A463B040(0, &qword_1EB13F7F0, sub_1A463ACAC, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1A3C3637C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A463A954()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 376))(result);
    v3 = v2;

    if (v1)
    {
      v1(result);
      return sub_1A3C784D4(v1, v3);
    }
  }

  return result;
}

uint64_t sub_1A463A9FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a2 & 0x40000000000) != 0)
    {
      sub_1A4639250();
    }
  }

  return result;
}

unint64_t sub_1A463AA58()
{
  result = qword_1EB126808;
  if (!qword_1EB126808)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB126808);
  }

  return result;
}

void sub_1A463AABC()
{
  sub_1A463B040(0, &qword_1EB124B48, type metadata accessor for StoryAsyncPlayer, off_1E7721028);
  sub_1A524CBF4();

  sub_1A46363D8();
}

uint64_t sub_1A463ABE8(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(sub_1A524CBF4() - 8);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return sub_1A463671C(a1, v5, v6, v7, v3);
}

unint64_t sub_1A463ACAC()
{
  result = qword_1EB13F7F8;
  if (!qword_1EB13F7F8)
  {
    type metadata accessor for StoryAsyncPlayer.StoryAsyncSession();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB13F7F8);
  }

  return result;
}

id sub_1A463AD08(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = (*(**(v1 + 16) + 280))();
  [a1 setBackgroundColor_];

  [a1 setReferenceSize_];
  [a1 setDisplayScale_];

  return [a1 setIsVisible_];
}

uint64_t sub_1A463ADE8()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_traitCollection);
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    aBlock[4] = sub_1A463AF10;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A421179C;
    aBlock[3] = &block_descriptor_180;
    v5 = _Block_copy(aBlock);
    v6 = v3;

    [v6 performChanges_];
    _Block_release(v5);
  }

  return result;
}

uint64_t sub_1A463AF20()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_sessionState;
    v5 = *(result + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_sessionState);
    v6 = *(result + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_sessionState + 8);
    *v4 = v1;
    *(v4 + 8) = v2;
    if (v5 != v1 || ((v2 ^ v6) & 1) != 0)
    {
      if (*(result + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_session))
      {

        sub_1A4638CBC(v1, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1A463AFDC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A4638680();
  }

  return 0;
}

void sub_1A463B040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id PXAddToBookmarksAction.init(objects:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithObjects_];
  swift_unknownObjectRelease();
  return v1;
}

id PXAddToBookmarksAction.init(objects:)(void *a1)
{
  v2 = v1;
  swift_unknownObjectRetain();
  v4 = sub_1A3F9ECF0();
  swift_unknownObjectRelease();
  *&v2[OBJC_IVAR___PXAddToBookmarksAction_bookmarks] = v4;
  if ([a1 firstObject])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    sub_1A3C52C70(0, &qword_1EB1265D0);
    if (swift_dynamicCast())
    {
      v5 = v16;
      result = [v16 photoLibrary];
      if (result)
      {
        v7 = result;
        v15.receiver = v2;
        v15.super_class = PXAddToBookmarksAction;
        v8 = objc_msgSendSuper2(&v15, sel_initWithPhotoLibrary_, result);

        swift_unknownObjectRelease();
        return v8;
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  else
  {
    sub_1A3C35B00(v19);
  }

  if (qword_1EB1CB460 != -1)
  {
    swift_once();
  }

  v9 = sub_1A5246F24();
  __swift_project_value_buffer(v9, qword_1EB1CB468);
  v10 = sub_1A524D244();
  swift_unknownObjectRetain();
  v11 = sub_1A5246F04();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    *&v19[0] = swift_slowAlloc();
    *v12 = 136315138;
    v13 = [a1 description];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  swift_unknownObjectRelease();

  type metadata accessor for PXAddToBookmarksAction(v14);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1A463B628(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(v6 + 24);
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    do
    {
      sub_1A3C58DE8(v12, v9, type metadata accessor for LemonadeBookmark);
      v14 = v9[16];
      sub_1A3C58DE8(&v9[v11], v4, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      sub_1A3C58334(v9, type metadata accessor for LemonadeBookmark);
      sub_1A42E16DC(v14, v4);
      sub_1A3C58334(v4, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      v12 += v13;
      --v10;
    }

    while (v10);
  }
}

void sub_1A463B800(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  _Block_copy(v4);
  a1;
  sub_1A463B9D4();
}

void sub_1A463B954()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1CB468);
  __swift_project_value_buffer(v0, qword_1EB1CB468);
  sub_1A5246EF4();
}

id sub_1A463BB64()
{
  v1 = (v0 + OBJC_IVAR___PXPeopleNamingItem_backingObject);
  if (*(v0 + OBJC_IVAR___PXPeopleNamingItem_backingObject + 8))
  {
    return 0;
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

id sub_1A463BC00()
{
  v1 = (v0 + OBJC_IVAR___PXPeopleNamingItem_backingObject);
  if (*(v0 + OBJC_IVAR___PXPeopleNamingItem_backingObject + 8) != 2)
  {
    return 0;
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

uint64_t PeopleNamingItem.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___PXPeopleNamingItem_backingObject);
  v2 = *(v0 + OBJC_IVAR___PXPeopleNamingItem_backingObject + 8);
  v3 = [v1 *off_1E772B290[v2]];
  v4 = sub_1A524C674();

  sub_1A463BCF4(v1, v2);
  return v4;
}

void sub_1A463BCF4(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

id PeopleNamingItem.init(person:searchString:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    sub_1A524C674();
  }

  v6 = _s12PhotosUICore16PeopleNamingItemC5title3for12searchStringSo012NSAttributedI0C15attributedTitle_Si17highlightLocationtSS_SStFZ_0();
  v8 = v7;

  *&v1[OBJC_IVAR___PXPeopleNamingItem_title] = v6;
  *&v1[OBJC_IVAR___PXPeopleNamingItem_highlightLocation] = v8;
  *&v1[OBJC_IVAR___PXPeopleNamingItem_subtitle] = 0;
  v9 = &v1[OBJC_IVAR___PXPeopleNamingItem_backingObject];
  *v9 = a1;
  v9[8] = 0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id PeopleNamingItem.__allocating_init(face:)(uint64_t a1)
{
  v3 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = objc_allocWithZone(v1);
  sub_1A3C52C70(0, &qword_1EB126A40);
  sub_1A5240714();
  *&v4[OBJC_IVAR___PXPeopleNamingItem_title] = sub_1A524D624();
  *&v4[OBJC_IVAR___PXPeopleNamingItem_highlightLocation] = sub_1A52403B4();
  *&v4[OBJC_IVAR___PXPeopleNamingItem_subtitle] = 0;
  v5 = &v4[OBJC_IVAR___PXPeopleNamingItem_backingObject];
  *v5 = a1;
  v5[8] = 1;
  v7.receiver = v4;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id PeopleNamingItem.init(face:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1A3C52C70(0, &qword_1EB126A40);
  sub_1A5240714();
  *&v1[OBJC_IVAR___PXPeopleNamingItem_title] = sub_1A524D624();
  *&v1[OBJC_IVAR___PXPeopleNamingItem_highlightLocation] = sub_1A52403B4();
  *&v1[OBJC_IVAR___PXPeopleNamingItem_subtitle] = 0;
  v5 = &v1[OBJC_IVAR___PXPeopleNamingItem_backingObject];
  *v5 = a1;
  v5[8] = 1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id PeopleNamingItem.init(contact:searchString:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_opt_self() stringFromContact:a1 style:0];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1A524C674();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = _s12PhotosUICore16PeopleNamingItemC5title3for12searchStringSo012NSAttributedI0C15attributedTitle_Si17highlightLocationtSS_SStFZ_0();
      v12 = v11;

      *&v1[OBJC_IVAR___PXPeopleNamingItem_title] = v10;
      *&v1[OBJC_IVAR___PXPeopleNamingItem_highlightLocation] = v12;
      v13 = v10;
      v14 = _s12PhotosUICore16PeopleNamingItemC8subtitle3forSo18NSAttributedStringCSgSo9CNContactC_tFZ_0();

      *&v1[OBJC_IVAR___PXPeopleNamingItem_subtitle] = v14;
      v15 = &v1[OBJC_IVAR___PXPeopleNamingItem_backingObject];
      *v15 = a1;
      v15[8] = 2;
      v17.receiver = v1;
      v17.super_class = ObjectType;
      return objc_msgSendSuper2(&v17, sel_init);
    }
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1A463C2E4()
{
  v1 = [v0 emailAddresses];
  sub_1A3C52C70(0, &qword_1EB13F838);
  v2 = sub_1A524CA34();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_6:
    v5 = v4;

    v6 = [v5 value];
    v7 = sub_1A524C674();

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A463C400()
{
  v1 = [v0 phoneNumbers];
  sub_1A3C52C70(0, &qword_1EB13F838);
  v2 = sub_1A524CA34();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:

    return 0;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](0, v2);
LABEL_6:
    v5 = v4;

    v6 = [v5 value];
    v7 = [v6 stringValue];
    v8 = sub_1A524C674();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      return v8;
    }

    goto LABEL_11;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id PeopleNamingItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeopleNamingItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12PhotosUICore16PeopleNamingItemC5title3for12searchStringSo012NSAttributedI0C15attributedTitle_Si17highlightLocationtSS_SStFZ_0()
{
  sub_1A40E9154();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  v1 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 secondaryLabelColor];
  *(inited + 64) = sub_1A3C52C70(0, &qword_1EB1205C0);
  *(inited + 40) = v4;
  sub_1A3C8BCC0(inited);
  swift_setDeallocating();
  sub_1A3FE17B0(inited + 32);
  v5 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v6 = sub_1A524C634();
  type metadata accessor for Key(0);
  sub_1A3C8C10C(&unk_1EB1208B0);
  v7 = sub_1A524C3D4();

  v8 = [v5 initWithString:v6 attributes:v7];

  v9 = sub_1A524C634();
  v10 = sub_1A524C634();
  v11 = [v9 px:v10 rangeOfSubstringIgnoringCaseAndDiacritics:?];
  v13 = v12;

  if (v11 == sub_1A52403B4())
  {
    sub_1A52403B4();
  }

  else
  {
    v14 = [v2 labelColor];
    [v8 addAttribute:v3 value:v14 range:{v11, v13}];
  }

  [v8 copy];
  sub_1A524E0B4();

  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &qword_1EB126A40);
  swift_dynamicCast();
  return v16;
}

uint64_t _s12PhotosUICore16PeopleNamingItemC8subtitle3forSo18NSAttributedStringCSgSo9CNContactC_tFZ_0()
{
  v0 = sub_1A463C2E4();
  if (!v1 || ((v2 = v1 & 0x2000000000000000, v3 = HIBYTE(v1) & 0xF, v4 = v0 & 0xFFFFFFFFFFFFLL, (v1 & 0x2000000000000000) != 0) ? (v5 = HIBYTE(v1) & 0xF) : (v5 = v0 & 0xFFFFFFFFFFFFLL), !v5))
  {
    v6 = sub_1A463C400();
    v8 = v7;

    if (!v8)
    {
      return 0;
    }

    v2 = v8 & 0x2000000000000000;
    v3 = HIBYTE(v8) & 0xF;
    v4 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (v9)
  {
    v10 = _s12PhotosUICore16PeopleNamingItemC5title3for12searchStringSo012NSAttributedI0C15attributedTitle_Si17highlightLocationtSS_SStFZ_0();

    return v10;
  }

  return 0;
}

uint64_t CNContact.requestFaceCropImage(withTargetSize:displayScale:cropFactor:style:cacheResult:synchronous:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, unint64_t))
{
  v6 = sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
  a5(0, v6);

  return 0;
}

uint64_t sub_1A463CAFC(int a1, int a2, int a3, int a4, int a5, int a6, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
  v8 = sub_1A524C3D4();

  v7[2](v7, 0, v8);

  _Block_release(v7);
  return 0;
}

id sub_1A463CBC4(void *a1)
{
  v1 = a1;
  v2 = [v1 name];
  if (v2)
  {
    v3 = v2;
    sub_1A524C674();

    v4 = sub_1A524C634();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

uint64_t _sSo9CNContactC12PhotosUICoreE16px_localizedNameSSSgvg_0()
{
  v1 = [v0 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1A524C674();

  return v3;
}

id sub_1A463CCC0(void *a1)
{
  v1 = a1;
  v2 = [v1 identifier];
  if (!v2)
  {
    sub_1A524C674();
    v2 = sub_1A524C634();
  }

  return v2;
}

uint64_t CNContact.px_localIdentifier.getter()
{
  v1 = [v0 identifier];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t Array.sortedByRegrouping<A>(by:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a1;
  v61 = a2;
  v53 = sub_1A524DF24();
  v49 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v11 = &v44 - v10;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v44 - v16;
  v17 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v47 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v45 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v65 = &v44 - v25;
  v26 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v27 = sub_1A524CAB4();
  v62 = a5;
  v56 = a6;
  v28 = sub_1A3C3DFB4(v27, a5, v26, a6);

  v70 = v28;
  v63 = sub_1A524CB74();
  v29 = sub_1A524CAB4();
  v69 = v29;
  v54 = a3;
  if (!sub_1A524CAF4())
  {
    goto LABEL_17;
  }

  v30 = 0;
  v64 = (v17 + 16);
  v58 = (v12 + 48);
  v59 = (v17 + 32);
  v51 = (v12 + 32);
  v50 = (v12 + 8);
  v57 = (v17 + 8);
  v46 = (v12 + 16);
  ++v49;
  v31 = v54;
  v32 = v55;
  v52 = v11;
  while (1)
  {
    v35 = sub_1A524CAD4();
    sub_1A524CA64();
    if (v35)
    {
      v36 = *(v17 + 16);
      v36(v65, (v31 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v30), a4);
      v37 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    result = sub_1A524E474();
    if (v45 != 8)
    {
      break;
    }

    v66 = result;
    v36 = *v64;
    (*v64)(v65, &v66, a4);
    swift_unknownObjectRelease();
    v37 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
LABEL_15:
      __break(1u);
LABEL_16:
      v29 = v69;
LABEL_17:
      v68 = v29;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_7:
    (*v59)(v22, v65, a4);
    v60(v22);
    v38 = v62;
    if ((*v58)(v11, 1, v62) == 1)
    {
      (*v49)(v11, v53);
      sub_1A463DA5C(a4, a4);
      swift_allocObject();
      v33 = sub_1A524CA54();
      v36(v34, v22, a4);
      v66 = v33;
      sub_1A524CB74();
      sub_1A524CB14();
      (*(v17 + 8))(v22, a4);
    }

    else
    {
      (*v51)(v32, v11, v38);
      sub_1A524C484();
      if (v67)
      {
        (*v46)(v48, v32, v38);
        v66 = sub_1A524CAF4();
        v67 = 0;
        sub_1A524C454();
        v39 = v38;
        sub_1A524C494();
        sub_1A463DA5C(a4, a4);
        swift_allocObject();
        v40 = sub_1A524CA54();
        v36(v41, v22, a4);
        v66 = v40;
        sub_1A524CB74();
        sub_1A524CB14();
        v32 = v55;
        (*v50)(v55, v39);
        (*(v17 + 8))(v22, a4);
      }

      else
      {
        v42 = v66;
        v36(v47, v22, a4);
        sub_1A524CB74();
        sub_1A524CAA4();
        sub_1A463DAC4(v42, v69);
        sub_1A524CB14();
        v32 = v55;
        (*v50)(v55, v38);
        (*v57)(v22, a4);
      }

      v11 = v52;
      v31 = v54;
    }

    ++v30;
    if (v37 == sub_1A524CAF4())
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t Array.sortByRegrouping<A>(by:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = Array.sortedByRegrouping<A>(by:)(a1, a2, *v5, *(a3 + 16), a4, a5);

  *v5 = v6;
  return result;
}

uint64_t Array.enumerateSlices(startIndex:handler:)(uint64_t a1, void (*a2)())
{
  result = sub_1A524CAF4();
  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result == a1)
  {
    return result;
  }

  v5 = result;
  if (result <= a1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1A524CB74();
  sub_1A3FC337C();
  v6 = a1;
  do
  {
    v7 = v6 + 1;
    swift_getWitnessTable();
    sub_1A3C5F4E8(&qword_1EB120D80, sub_1A3FC337C);
    sub_1A524C564();
    a2();
    result = swift_unknownObjectRelease();
    v6 = v7;
  }

  while (v5 != v7);
  return result;
}

uint64_t Array<A>.containsOptional(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A524DF24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  v10 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  if ((*(v10 + 48))(v9, 1, a3) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v15 = 0;
  }

  else
  {
    (*(v10 + 32))(v14, v9, a3);
    v17[1] = a2;
    sub_1A524CB74();
    swift_getWitnessTable();
    v15 = sub_1A524C9B4();
    (*(v10 + 8))(v14, a3);
  }

  return v15 & 1;
}

void sub_1A463DA5C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    sub_1A3CB8F68();
  }

  else
  {

    sub_1A524EA54();
  }
}

uint64_t sub_1A463DAC4(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A463DB18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A524CA94();
  *a1 = result;
  return result;
}

uint64_t sub_1A463DB54@<X0>(void *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v47 = a4;
  v44 = a3;
  v55 = a1;
  v42 = a18;
  v43 = a19;
  v53 = a7;
  v54 = a15;
  v51 = a6;
  v52 = a14;
  v49 = a5;
  v50 = a13;
  v48 = a12;
  v45 = a10;
  v46 = a11;
  sub_1A463F968(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v41 - v23;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  v25 = type metadata accessor for LemonadePlaceholderView();
  v26 = v25[5];
  sub_1A42545B4(0);
  sub_1A5247C74();
  if (a2)
  {
    v27 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
    v41 = a8;
    *(swift_allocObject() + 16) = v27;
    a8 = v41;
  }

  sub_1A5247C74();

  result = sub_1A4254A90(v24, a9 + v26);
  *(a9 + v25[6]) = a2 & 1;
  *(a9 + v25[7]) = v44 & 1;
  *(a9 + v25[8]) = v47 & 1;
  v29 = (a9 + v25[9]);
  v30 = v51;
  *v29 = v49;
  v29[1] = v30;
  v31 = (a9 + v25[10]);
  *v31 = v53;
  v31[1] = a8;
  v32 = (a9 + v25[11]);
  v33 = v46;
  *v32 = v45;
  v32[1] = v33;
  v34 = (a9 + v25[12]);
  v35 = v50;
  *v34 = v48;
  v34[1] = v35;
  v36 = (a9 + v25[13]);
  v37 = v54;
  *v36 = v52;
  v36[1] = v37;
  v38 = (a9 + v25[14]);
  *v38 = a16;
  v38[1] = a17;
  v39 = (a9 + v25[15]);
  v40 = v43;
  *v39 = v42;
  v39[1] = v40;
  return result;
}

uint64_t type metadata accessor for LemonadePlaceholderView()
{
  result = qword_1EB185D10;
  if (!qword_1EB185D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A463DE38@<X0>(uint64_t a1@<X8>)
{
  v11[3] = a1;
  sub_1A463F89C(0, &qword_1EB122BF8, sub_1A463E17C, MEMORY[0x1E697F948]);
  v11[2] = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v11 - v3;
  sub_1A463E17C();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadePlaceholderView();
  v11[1] = v11;
  v14 = v1;
  v13 = v1;
  v12 = v1;
  sub_1A463E258();
  sub_1A3DF14C0();
  sub_1A463E2C0(0);
  sub_1A463E3C4();
  sub_1A405D614();
  sub_1A463E4D8(&qword_1EB1226C0, sub_1A463E2C0, sub_1A463E4A4);
  sub_1A52499D4();
  (*(v7 + 16))(v4, v9, v6);
  swift_storeEnumTagMultiPayload();
  sub_1A463E37C(&qword_1EB122248, sub_1A463E17C);
  sub_1A5249744();
  return (*(v7 + 8))(v9, v6);
}

void sub_1A463E17C()
{
  if (!qword_1EB122240)
  {
    sub_1A463E258();
    sub_1A3DF14C0();
    sub_1A463E2C0(255);
    sub_1A463E3C4();
    sub_1A405D614();
    sub_1A463E4D8(&qword_1EB1226C0, sub_1A463E2C0, sub_1A463E4A4);
    v0 = sub_1A52499E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122240);
    }
  }
}

void sub_1A463E258()
{
  if (!qword_1EB123CB0)
  {
    sub_1A3E429B4();
    sub_1A3EBB1B4();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123CB0);
    }
  }
}

void sub_1A463E2F4()
{
  if (!qword_1EB1226D0)
  {
    sub_1A463F89C(255, &qword_1EB1226D8, sub_1A419A40C, MEMORY[0x1E697F960]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1226D0);
    }
  }
}

uint64_t sub_1A463E37C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A463E3C4()
{
  result = qword_1EB123CB8;
  if (!qword_1EB123CB8)
  {
    sub_1A463E258();
    sub_1A463E37C(&qword_1EB1274F0, sub_1A3E429B4);
    sub_1A463E37C(&qword_1EB1277A0, sub_1A3EBB1B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123CB8);
  }

  return result;
}

uint64_t sub_1A463E4D8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A463E554()
{
  result = qword_1EB1226E0;
  if (!qword_1EB1226E0)
  {
    sub_1A463F89C(255, &qword_1EB1226D8, sub_1A419A40C, MEMORY[0x1E697F960]);
    sub_1A3D93850();
    sub_1A5249E64();
    sub_1A463E37C(&qword_1EB127490, sub_1A3D93850);
    sub_1A463E37C(&qword_1EB127A50, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1226E0);
  }

  return result;
}

void sub_1A463E6AC()
{
  sub_1A3E429B4();
  MEMORY[0x1EEE9AC00](v0);
  type metadata accessor for LemonadePlaceholderView();
  sub_1A463F968(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A463E908()
{
  type metadata accessor for LemonadePlaceholderView();
  sub_1A463F968(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A463EA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A463E2F4();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LemonadePlaceholderView();
  if (*(a1 + *(v9 + 56) + 8) || (v11 = v9, sub_1A463F968(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]), v12 = sub_1A5247C84(), v16) && (v13 = (*(*v16 + 144))(v12), , v13) && (v9 = v11, (*(a1 + *(v11 + 24)))) && (*(a1 + *(v9 + 28)) & 1) == 0)
  {
    sub_1A463EC70(v8);
    sub_1A3D16B34(v8, a2);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(v6 + 56))(a2, v10, 1, v5);
}

uint64_t sub_1A463EC70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  sub_1A463F89C(0, &qword_1EB13F840, sub_1A419A40C, MEMORY[0x1E697F948]);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v41 - v4;
  v49 = sub_1A5249E64();
  v45 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadePlaceholderView();
  v42 = *(v6 - 1);
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A3D93850();
  v46 = v8;
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  sub_1A419A40C();
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  sub_1A463F968(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  v16 = sub_1A5247C84();
  if (v53 && (v17 = (*(*v53 + 144))(v16), , v17) && *(v1 + v6[6]) == 1)
  {
    v53 = sub_1A3C38BD4();
    v54 = v18;
    sub_1A463F904(v1, &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v20 = swift_allocObject();
    sub_1A463F9CC(&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    sub_1A3D5F9DC();
    sub_1A524B754();
    v21 = v44;
    sub_1A5249E54();
    v22 = sub_1A463E37C(&qword_1EB127490, sub_1A3D93850);
    v23 = sub_1A463E37C(&qword_1EB127A50, MEMORY[0x1E697CB70]);
    v24 = v46;
    v25 = v49;
    sub_1A524A934();
    (*(v45 + 8))(v21, v25);
    (*(v43 + 8))(v11, v24);
    v27 = v47;
    v26 = v48;
    (*(v47 + 16))(v51, v15, v48);
    swift_storeEnumTagMultiPayload();
    v53 = v24;
    v54 = v25;
    v55 = v22;
    v56 = v23;
    swift_getOpaqueTypeConformance2();
    v28 = v52;
    sub_1A5249744();
    (*(v27 + 8))(v15, v26);
    v38 = 0;
  }

  else
  {
    v29 = (v1 + v6[15]);
    v30 = *v29;
    if (*v29)
    {
      v31 = v29[1];
      v32 = (v1 + v6[14]);
      v33 = v32[1];
      if (v33)
      {
        v34 = *v32;
        v35 = v33;
      }

      else
      {
        v34 = 0;
        v35 = 0xE000000000000000;
      }

      v53 = v34;
      v54 = v35;
      sub_1A463F904(v2, &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v36 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = v30;
      *(v37 + 24) = v31;
      sub_1A463F9CC(&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
      sub_1A3C66EE8(v30);
      sub_1A3C66EE8(v30);
      sub_1A3D5F9DC();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v38 = 1;
    v28 = v52;
  }

  sub_1A463F89C(0, &qword_1EB1226D8, sub_1A419A40C, MEMORY[0x1E697F960]);
  return (*(*(v39 - 8) + 56))(v28, v38, 1, v39);
}

uint64_t sub_1A463F4C4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a3;
  LOBYTE(a3) = *(a3 + 8);

  if ((a3 & 1) == 0)
  {
    sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v9 = v12[1];
  }

  a1(v9);
}

void sub_1A463F654()
{
  sub_1A463F968(319, &qword_1EB124880, MEMORY[0x1E69C1D78], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A463F968(319, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      sub_1A405D488(319, &qword_1EB126FA0);
      if (v2 <= 0x3F)
      {
        sub_1A463F968(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A463F7C4()
{
  result = qword_1EB122730;
  if (!qword_1EB122730)
  {
    sub_1A463F89C(255, &qword_1EB122728, sub_1A463E17C, MEMORY[0x1E697F960]);
    sub_1A463E37C(&qword_1EB122248, sub_1A463E17C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122730);
  }

  return result;
}

void sub_1A463F89C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A463F904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadePlaceholderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A463F968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A463F9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadePlaceholderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A463FA30()
{
  v1 = *(type metadata accessor for LemonadePlaceholderView() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1A463F4C4(v2, v3, v4);
}

uint64_t sub_1A463FA94()
{
  type metadata accessor for LemonadePlaceholderView();
  sub_1A463F968(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  if (v1)
  {
    [*(v1 + 24) setViewMode_];
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

void sub_1A463FBC0(void *a1)
{
  if (sub_1A4643524(a1))
  {

    sub_1A463FC08(a1);
  }
}

void sub_1A463FC08(uint64_t isEscapingClosureAtFileLocation)
{
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126860);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v8 = [v7 allowRadarRequestAlerts];

  if (v8)
  {
    sub_1A3C52C70(0, &qword_1EB126BB0);
    v9 = [swift_getObjCClassFromMetadata() sharedInstance];
    v10 = [v9 canShowInternalUI];

    if (!v10)
    {
      return;
    }

    v11 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    *(v3 + 24) = v1;
    v6 = swift_allocObject();
    *(v6 + 2) = sub_1A46437C8;
    *(v6 + 3) = v3;
    aBlock[4] = sub_1A3D78DD0;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D35A90;
    aBlock[3] = &block_descriptor_232;
    v12 = _Block_copy(aBlock);
    v13 = isEscapingClosureAtFileLocation;

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v14 = sub_1A3C4A780();
  (*(v4 + 16))(v6, v14, v3);
  v15 = isEscapingClosureAtFileLocation;
  v16 = sub_1A5246F04();
  v17 = sub_1A524D224();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v18 = 136315138;
    sub_1A46432AC(isEscapingClosureAtFileLocation);
    sub_1A3C2EF94();
  }

  (*(v4 + 8))(v6, v3);
}

void sub_1A463FFB4()
{
  sub_1A3C52C70(0, &qword_1EB126860);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v0 setAllowRadarRequestAlerts_];
}

uint64_t sub_1A4640028(void *a1)
{
  sub_1A3C56888(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1A524C634();
  v7 = [a1 beginCollectionOperationWithName:v6 timeout:100.0];

  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = a1;
  v9[6] = v7;

  swift_unknownObjectRetain();
  sub_1A3D4D930(0, 0, v5, &unk_1A5352AF8, v9);
}

uint64_t sub_1A46401B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_1A5240CB4();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v8 = sub_1A524C6F4();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v9 = sub_1A5240E64();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  sub_1A3C56888(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v10 = sub_1A5246F24();
  v6[34] = v10;
  v6[35] = *(v10 - 8);
  v6[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4640488, 0, 0);
}

uint64_t sub_1A4640488()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[8];
  v8 = sub_1A3C4A780();
  (*(v2 + 16))(v1, v8, v3);
  v9 = *(v6 + 56);
  v0[37] = v9;
  v0[38] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v4, 1, 1, v5);
  v10 = *v7 + 1408;
  v0[39] = *v10;
  v0[40] = v10 & 0xFFFFFFFFFFFFLL | 0xEA03000000000000;
  v0[41] = sub_1A524CC54();
  v0[42] = sub_1A524CC44();
  v12 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A46405B8, v12, v11);
}

uint64_t sub_1A46405B8()
{
  v1 = *(v0 + 312);

  *(v0 + 344) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4640638, 0, 0);
}

uint64_t sub_1A4640638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 344);
  if (v4)
  {
    v5 = (*(*v4 + 280))();

    *(v3 + 48) = v5;
    sub_1A3CB6B78(0, &qword_1EB125460, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A44D617C();
    sub_1A52463B4();
  }

  __break(1u);
  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1A46409E4()
{
  v1 = *(v0 + 352);

  *(v0 + 376) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4640A64, 0, 0);
}

uint64_t sub_1A4640A64()
{
  if (!*(v0 + 376))
  {
    goto LABEL_4;
  }

  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  sub_1A5245504();

  v5 = *(v4 + 32);
  v5(v1, v2, v3);
  sub_1A5245264();
  sub_1A5245244();
  v6 = *(v0 + 256);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v8 + 8))(*(v0 + 240), v7);
    sub_1A4643CC8(v6, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
LABEL_4:
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v14 = *(v0 + 216);
  v13 = *(v0 + 224);
  v5(v13, v6, v7);
  (*(v8 + 16))(v14, v13, v7);
  v9 = sub_1A3ECD488(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = v9[2];
  v15 = v9[3];
  if (v16 >= v15 >> 1)
  {
    v9 = sub_1A3ECD488(v15 > 1, v16 + 1, 1, v9);
  }

  v23 = *(v0 + 296);
  v17 = *(v0 + 264);
  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  v21 = *(v0 + 136);
  v20 = *(v0 + 144);
  (*(v20 + 8))(*(v0 + 240), v21);
  sub_1A4643CC8(v17, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  v9[2] = v16 + 1;
  v5(v9 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v16, v19, v21);
  v5(v17, v18, v21);
  v23(v17, 0, 1, v21);
LABEL_5:
  *(v0 + 384) = 0;
  *(v0 + 392) = v9;
  v10 = **(v0 + 64) + 1088;
  *(v0 + 400) = *v10;
  *(v0 + 408) = v10 & 0xFFFFFFFFFFFFLL | 0x472A000000000000;
  *(v0 + 416) = sub_1A524CC44();
  v12 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4640EE4, v12, v11);
}

uint64_t sub_1A4640EE4()
{
  v1 = *(v0 + 400);

  *(v0 + 424) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4640F64, 0, 0);
}

uint64_t sub_1A4640F64()
{
  v1 = *(v0 + 392);
  if (!*(v0 + 424))
  {
    goto LABEL_4;
  }

  if (*(v1 + 2))
  {

    v1 = *(v0 + 392);
LABEL_4:
    v2 = *(v0 + 384);
    goto LABEL_5;
  }

  v13 = *(v0 + 384);
  sub_1A52454B4();
  if (v13)
  {
    v15 = *(v0 + 280);
    v14 = *(v0 + 288);
    v17 = *(v0 + 264);
    v16 = *(v0 + 272);

    sub_1A4643CC8(v17, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    (*(v15 + 8))(v14, v16);

    v18 = *(v0 + 80);
    v19 = sub_1A5240B74();
    [v18 endWithSuccess:0 error:v19];

    goto LABEL_20;
  }

  (*(*(v0 + 144) + 16))(*(v0 + 200), *(v0 + 208), *(v0 + 136));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v0 + 392);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v40 = sub_1A3ECD488(0, *(v1 + 2) + 1, 1, *(v0 + 392));
  }

  v42 = *(v40 + 2);
  v41 = *(v40 + 3);
  if (v42 >= v41 >> 1)
  {
    v40 = sub_1A3ECD488(v41 > 1, v42 + 1, 1, v40);
  }

  v50 = *(v0 + 296);
  v43 = *(v0 + 264);
  v45 = *(v0 + 200);
  v44 = *(v0 + 208);
  v46 = *(v0 + 136);
  v47 = *(v0 + 144);

  sub_1A4643CC8(v43, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v40 + 2) = v42 + 1;
  v48 = *(v47 + 32);
  v48(&v40[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v42], v45, v46);
  v48(v43, v44, v46);
  v50(v43, 0, 1, v46);
  v2 = 0;
  v1 = v40;
LABEL_5:
  *(v0 + 432) = v2;
  *(v0 + 440) = v1;
  v3 = *(v0 + 248);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  sub_1A4643B24(*(v0 + 264), v3, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(*(v0 + 144) + 32))(*(v0 + 192), *(v0 + 248), *(v0 + 136));
    *(v0 + 448) = sub_1A524CC44();
    v8 = sub_1A524CBC4();
    v10 = v12;
    v11 = sub_1A4641598;
    goto LABEL_9;
  }

  sub_1A4643CC8(*(v0 + 248), &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v0 + 504) = v2;
  sub_1A3C52C70(0, &qword_1EB126860);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 uploadVisualDiagnostics];

  if (v7)
  {
    *(v0 + 512) = sub_1A524CC44();
    v8 = sub_1A524CBC4();
    v10 = v9;
    v11 = sub_1A4642590;
LABEL_9:

    return MEMORY[0x1EEE6DFA0](v11, v8, v10);
  }

  v20 = sub_1A5246F04();
  v21 = sub_1A524D224();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1A3C1C000, v20, v21, "Skip uploading visualDiagnostics to TTR", v22, 2u);
    MEMORY[0x1A590EEC0](v22, -1, -1);
  }

  v23 = *(v0 + 440);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = *(v0 + 144);
    v27 = *(v25 + 16);
    v26 = v25 + 16;
    v51 = v27;
    v28 = v23 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v29 = *(v26 + 56);
    do
    {
      v30 = *(v0 + 152);
      v31 = *(v0 + 136);
      v32 = *(v0 + 72);
      v51(v30, v28, v31);
      v33 = sub_1A5240D44();
      (*(v26 - 8))(v30, v31);
      [v32 addAttachment_];

      v28 += v29;
      --v24;
    }

    while (v24);
  }

  v35 = *(v0 + 280);
  v34 = *(v0 + 288);
  v37 = *(v0 + 264);
  v36 = *(v0 + 272);
  [*(v0 + 80) endWithSuccess:1 error:0];
  sub_1A4643CC8(v37, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  (*(v35 + 8))(v34, v36);
LABEL_20:

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1A4641598()
{
  v1 = *(v0 + 400);

  *(v0 + 456) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4641618, 0, 0);
}

uint64_t sub_1A4641618()
{
  if (*(v0 + 456))
  {
    v1 = *(v0 + 432);
    sub_1A52454A4();
    *(v0 + 464) = v1;
    if (v1)
    {
      v3 = *(v0 + 280);
      v2 = *(v0 + 288);
      v5 = *(v0 + 264);
      v4 = *(v0 + 272);
      v6 = *(v0 + 192);
      v8 = *(v0 + 136);
      v7 = *(v0 + 144);

      (*(v7 + 8))(v6, v8);
      sub_1A4643CC8(v5, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      (*(v3 + 8))(v2, v4);

      v9 = *(v0 + 80);
      v10 = sub_1A5240B74();
      [v9 endWithSuccess:0 error:v10];

LABEL_16:

      v37 = *(v0 + 8);

      return v37();
    }

    v17 = **(v0 + 64) + 1136;
    *(v0 + 472) = *v17;
    *(v0 + 480) = v17 & 0xFFFFFFFFFFFFLL | 0x349D000000000000;
    *(v0 + 488) = sub_1A524CC44();
    v13 = sub_1A524CBC4();
    v15 = v18;
    v16 = sub_1A4641ADC;
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 192), *(v0 + 136));
    *(v0 + 504) = *(v0 + 432);
    sub_1A3C52C70(0, &qword_1EB126860);
    v11 = [swift_getObjCClassFromMetadata() sharedInstance];
    v12 = [v11 uploadVisualDiagnostics];

    if ((v12 & 1) == 0)
    {
      v19 = sub_1A5246F04();
      v20 = sub_1A524D224();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1A3C1C000, v19, v20, "Skip uploading visualDiagnostics to TTR", v21, 2u);
        MEMORY[0x1A590EEC0](v21, -1, -1);
      }

      v22 = *(v0 + 440);
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = *(v0 + 144);
        v26 = *(v24 + 16);
        v25 = v24 + 16;
        v39 = v26;
        v27 = v22 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
        v28 = *(v25 + 56);
        do
        {
          v29 = *(v0 + 152);
          v30 = *(v0 + 136);
          v31 = *(v0 + 72);
          v39(v29, v27, v30);
          v32 = sub_1A5240D44();
          (*(v25 - 8))(v29, v30);
          [v31 addAttachment_];

          v27 += v28;
          --v23;
        }

        while (v23);
      }

      v34 = *(v0 + 280);
      v33 = *(v0 + 288);
      v36 = *(v0 + 264);
      v35 = *(v0 + 272);
      [*(v0 + 80) endWithSuccess:1 error:0];
      sub_1A4643CC8(v36, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      (*(v34 + 8))(v33, v35);
      goto LABEL_16;
    }

    *(v0 + 512) = sub_1A524CC44();
    v13 = sub_1A524CBC4();
    v15 = v14;
    v16 = sub_1A4642590;
  }

  return MEMORY[0x1EEE6DFA0](v16, v13, v15);
}

uint64_t sub_1A4641ADC()
{
  v1 = *(v0 + 472);

  *(v0 + 496) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4641B5C, 0, 0);
}

uint64_t sub_1A4641B5C()
{
  if (*(v0 + 496))
  {
    v1 = *(v0 + 464);
    sub_1A52451D4();
    if (v1)
    {
      v2 = *(v0 + 280);
      v3 = *(v0 + 288);
      v5 = *(v0 + 264);
      v4 = *(v0 + 272);
      v6 = *(v0 + 192);
      v8 = *(v0 + 136);
      v7 = *(v0 + 144);

      (*(v7 + 8))(v6, v8);
      sub_1A4643CC8(v5, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      (*(v2 + 8))(v3, v4);

      v9 = *(v0 + 80);
      v10 = sub_1A5240B74();
      [v9 endWithSuccess:0 error:v10];

LABEL_27:

      v75 = *(v0 + 8);

      return v75();
    }

    v18 = *(v0 + 120);
    v19 = *(v0 + 128);
    v20 = *(v0 + 112);
    sub_1A524C6D4();
    v21 = sub_1A524C684();
    v23 = v22;

    (*(v18 + 8))(v19, v20);
    v24 = *MEMORY[0x1E6968F70];
    if (v23 >> 60 == 15)
    {
      v25 = *(*(v0 + 96) + 104);
    }

    else
    {
      v27 = *(v0 + 96);
      v28 = *(v0 + 104);
      v29 = *(v0 + 88);
      *(v0 + 32) = 0x2E7363697274654DLL;
      *(v0 + 40) = 0xEB00000000747874;
      v30 = v24;
      v78 = *(v27 + 104);
      v78(v28);
      sub_1A3D5F9DC();
      sub_1A5240E44();
      (*(v27 + 8))(v28, v29);
      sub_1A5240EB4();
      v31 = v21;
      v77 = v30;
      v32 = sub_1A5246F04();
      v33 = sub_1A524D264();
      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 184);
      v36 = v0;
      v39 = v0 + 136;
      v37 = *(v0 + 136);
      v38 = *(v39 + 8);
      if (v34)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1A3C1C000, v32, v33, "Successfully saved event recorder metrics to Metrics.txt in storydiagnostics", v40, 2u);
        MEMORY[0x1A590EEC0](v40, -1, -1);
      }

      sub_1A3DB556C(v31, v23);

      (*(v38 + 8))(v35, v37);
      v0 = v36;
      v25 = v78;
      v24 = v77;
    }

    v41 = *(v0 + 96);
    v42 = *(v0 + 104);
    v43 = *(v0 + 88);
    *(v0 + 16) = 0xD000000000000016;
    *(v0 + 24) = 0x80000001A53DB140;
    v25(v42, v24, v43);
    sub_1A3D5F9DC();
    sub_1A5240E44();
    (*(v41 + 8))(v42, v43);
    sub_1A52451C4();
    v44 = sub_1A5246F04();
    v45 = sub_1A524D264();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 192);
    v48 = *(v0 + 176);
    v49 = *(v0 + 136);
    v50 = *(v0 + 144);
    if (v46)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1A3C1C000, v44, v45, "Successfully saved performance diagram to PerformanceDiagram.pdf in storydiagnostics", v51, 2u);
      MEMORY[0x1A590EEC0](v51, -1, -1);
    }

    else
    {
    }

    v52 = *(v50 + 8);
    v52(v48, v49);
    v52(v47, v49);
    v26 = 0;
  }

  else
  {
    v11 = sub_1A5246F04();
    v12 = sub_1A524D264();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 192);
    v15 = *(v0 + 136);
    v16 = *(v0 + 144);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A3C1C000, v11, v12, "No event recorder, skipping writing performance diagram or metrics file", v17, 2u);
      MEMORY[0x1A590EEC0](v17, -1, -1);
    }

    else
    {
    }

    (*(v16 + 8))(v14, v15);
    v26 = *(v0 + 464);
  }

  *(v0 + 504) = v26;
  sub_1A3C52C70(0, &qword_1EB126860);
  v53 = [swift_getObjCClassFromMetadata() sharedInstance];
  v54 = [v53 uploadVisualDiagnostics];

  if (!v54)
  {
    v57 = sub_1A5246F04();
    v58 = sub_1A524D224();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1A3C1C000, v57, v58, "Skip uploading visualDiagnostics to TTR", v59, 2u);
      MEMORY[0x1A590EEC0](v59, -1, -1);
    }

    v60 = *(v0 + 440);
    v61 = *(v60 + 16);
    if (v61)
    {
      v62 = *(v0 + 144);
      v64 = *(v62 + 16);
      v63 = v62 + 16;
      v79 = v64;
      v65 = v60 + ((*(v63 + 64) + 32) & ~*(v63 + 64));
      v66 = *(v63 + 56);
      do
      {
        v67 = *(v0 + 152);
        v68 = *(v0 + 136);
        v69 = *(v0 + 72);
        v79(v67, v65, v68);
        v70 = sub_1A5240D44();
        (*(v63 - 8))(v67, v68);
        [v69 addAttachment_];

        v65 += v66;
        --v61;
      }

      while (v61);
    }

    v72 = *(v0 + 280);
    v71 = *(v0 + 288);
    v74 = *(v0 + 264);
    v73 = *(v0 + 272);
    [*(v0 + 80) endWithSuccess:1 error:0];
    sub_1A4643CC8(v74, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    (*(v72 + 8))(v71, v73);
    goto LABEL_27;
  }

  *(v0 + 512) = sub_1A524CC44();
  v56 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4642590, v56, v55);
}

uint64_t sub_1A4642590()
{
  v1 = *(v0 + 400);

  *(v0 + 520) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4642610, 0, 0);
}

uint64_t sub_1A4642610()
{
  if (!*(v0 + 520))
  {
    v3 = sub_1A5246F04();
    v9 = sub_1A524D224();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, v9, "Skip uploading visualDiagnostics to TTR", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    goto LABEL_7;
  }

  v1 = *(v0 + 504);
  sub_1A5245264();
  sub_1A5245224();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A5246F04();
    v4 = sub_1A524D244();

    if (!os_log_type_enabled(v3, v4))
    {

      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1A3C1C000, v3, v4, "Error generating visual diagnostics. %@", v5, 0xCu);
    sub_1A3CB65E4(v6);
    MEMORY[0x1A590EEC0](v6, -1, -1);
    MEMORY[0x1A590EEC0](v5, -1, -1);

LABEL_7:
LABEL_12:
    v17 = *(v0 + 440);
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = *(v0 + 144);
      v21 = *(v19 + 16);
      v20 = v19 + 16;
      v33 = v21;
      v22 = v17 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
      v23 = *(v20 + 56);
      do
      {
        v24 = *(v0 + 152);
        v25 = *(v0 + 136);
        v26 = *(v0 + 72);
        v33(v24, v22, v25);
        v27 = sub_1A5240D44();
        (*(v20 - 8))(v24, v25);
        [v26 addAttachment_];

        v22 += v23;
        --v18;
      }

      while (v18);
    }

    v29 = *(v0 + 280);
    v28 = *(v0 + 288);
    v31 = *(v0 + 264);
    v30 = *(v0 + 272);
    [*(v0 + 80) endWithSuccess:1 error:0];
    sub_1A4643CC8(v31, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    (*(v29 + 8))(v28, v30);

    v32 = *(v0 + 8);

    return v32();
  }

  v11 = *(v0 + 64);
  v12 = sub_1A52454D4();
  *(v0 + 528) = v12;
  type metadata accessor for GenerativeStoryVisualDiagnosticsProvider();
  v13 = *(v11 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary);
  v14 = swift_task_alloc();
  *(v0 + 536) = v14;
  *v14 = v0;
  v14[1] = sub_1A4642AB0;
  v15 = *(v0 + 168);

  return sub_1A3F6BDB0(v12, v15, v13);
}

uint64_t sub_1A4642AB0()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_1A4642F04;
  }

  else
  {
    v2 = sub_1A4642BE4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4642BE4()
{
  (*(*(v0 + 144) + 16))(*(v0 + 160), *(v0 + 168), *(v0 + 136));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 440);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1A3ECD488(0, v2[2] + 1, 1, *(v0 + 440));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1A3ECD488(v3 > 1, v4 + 1, 1, v2);
  }

  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);

  (*(v8 + 8))(v5, v7);
  v2[2] = v4 + 1;
  (*(v8 + 32))(v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4, v6, v7);
  v9 = v2[2];
  if (v9)
  {
    v10 = *(v0 + 144);
    v12 = *(v10 + 16);
    v11 = v10 + 16;
    v25 = v12;
    v13 = v2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v14 = *(v11 + 56);
    do
    {
      v15 = *(v0 + 152);
      v16 = *(v0 + 136);
      v17 = *(v0 + 72);
      v25(v15, v13, v16);
      v18 = sub_1A5240D44();
      (*(v11 - 8))(v15, v16);
      [v17 addAttachment_];

      v13 += v14;
      --v9;
    }

    while (v9);
  }

  v20 = *(v0 + 280);
  v19 = *(v0 + 288);
  v22 = *(v0 + 264);
  v21 = *(v0 + 272);
  [*(v0 + 80) endWithSuccess:1 error:0];
  sub_1A4643CC8(v22, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  (*(v20 + 8))(v19, v21);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1A4642F04()
{
  (*(*(v0 + 144) + 8))(*(v0 + 168), *(v0 + 136));
  v1 = *(v0 + 544);
  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D244();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1A3C1C000, v3, v4, "Error generating visual diagnostics. %@", v5, 0xCu);
    sub_1A3CB65E4(v6);
    MEMORY[0x1A590EEC0](v6, -1, -1);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 440);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(v0 + 144);
    v13 = *(v11 + 16);
    v12 = v11 + 16;
    v26 = v13;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v15 = *(v12 + 56);
    do
    {
      v16 = *(v0 + 152);
      v17 = *(v0 + 136);
      v18 = *(v0 + 72);
      v26(v16, v14, v17);
      v19 = sub_1A5240D44();
      (*(v12 - 8))(v16, v17);
      [v18 addAttachment_];

      v14 += v15;
      --v10;
    }

    while (v10);
  }

  v21 = *(v0 + 280);
  v20 = *(v0 + 288);
  v23 = *(v0 + 264);
  v22 = *(v0 + 272);
  [*(v0 + 80) endWithSuccess:1 error:0];
  sub_1A4643CC8(v23, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  (*(v21 + 8))(v20, v22);

  v24 = *(v0 + 8);

  return v24();
}

unint64_t sub_1A46432AC(void *a1)
{
  v2 = sub_1A5244B34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v6 = a1;
  sub_1A3DBD9A0();
  if (swift_dynamicCast())
  {
    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69C1168])
    {
      (*(v3 + 96))(v5, v2);
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD00000000000001ALL, 0x80000001A53E1410);
      v14 = a1;
      v7 = a1;
      v8 = sub_1A524C714();
      MEMORY[0x1A5907B60](v8);

      MEMORY[0x1A5907B60](0xD00000000000007CLL, 0x80000001A53E1430);
      v9 = v15;
      v10 = sub_1A5244DD4();
      (*(*(v10 - 8) + 8))(v5, v10);

      return v9;
    }

    (*(v3 + 8))(v5, v2);
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1A524E404();

  v15 = 0xD00000000000001ALL;
  v16 = 0x80000001A53E1410;
  v17 = a1;
  v12 = a1;
  v13 = sub_1A524C714();
  MEMORY[0x1A5907B60](v13);

  return v15;
}

uint64_t sub_1A4643524(void *a1)
{
  v2 = sub_1A5244B34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1;
  v6 = a1;
  sub_1A3DBD9A0();
  if (swift_dynamicCast())
  {
    v7 = (*(v3 + 88))(v5, v2);
    if (v7 == *MEMORY[0x1E69C1168])
    {
      (*(v3 + 96))(v5, v2);
      v8 = sub_1A5244DD4();
      (*(*(v8 - 8) + 8))(v5, v8);
LABEL_9:
      v10 = v14;
LABEL_10:

      return 1;
    }

    if (v7 == *MEMORY[0x1E69C1178])
    {
      (*(v3 + 96))(v5, v2);

      sub_1A4643C24();
      sub_1A4643CC8(v5 + *(v9 + 48), &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      goto LABEL_9;
    }

    if (v7 == *MEMORY[0x1E69C1140] || v7 == *MEMORY[0x1E69C1148])
    {
      (*(v3 + 8))(v5, v2);
      goto LABEL_9;
    }

    if (v7 == *MEMORY[0x1E69C1180])
    {
      goto LABEL_9;
    }

    (*(v3 + 8))(v5, v2);
  }

  v16 = a1;
  v12 = a1;
  if (swift_dynamicCast())
  {
    if (!v15)
    {
      v10 = v16;
      goto LABEL_10;
    }

    sub_1A440B338(v14, v15);
  }

  return 0;
}

void sub_1A46437C8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1A524C634();
  [a1 setTitle_];

  v5 = sub_1A46432AC(v3);
  MEMORY[0x1A5907B60](v5);

  v6 = sub_1A524C634();

  [a1 setMessage_];

  v7 = sub_1A524C634();
  v8 = swift_allocObject();
  swift_weakInit();
  v17 = sub_1A4643BA4;
  v18 = v8;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A3C2E0D0;
  v16 = &block_descriptor_24_3;
  v9 = _Block_copy(&v13);

  [a1 addActionWithTitle:v7 style:0 action:v9];
  _Block_release(v9);

  v10 = sub_1A524C634();
  v17 = sub_1A463FFB4;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A3C2E0D0;
  v16 = &block_descriptor_27_7;
  v11 = _Block_copy(&v13);
  [a1 addActionWithTitle:v10 style:0 action:v11];
  _Block_release(v11);

  v12 = sub_1A524C634();
  [a1 addActionWithTitle:v12 style:1 action:0];
}

uint64_t sub_1A4643A6C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A46401B8(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A4643B24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C56888(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4643BA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 1048))(1);
  }

  return result;
}

void sub_1A4643C24()
{
  if (!qword_1EB13F848)
  {
    sub_1A3DBD9A0();
    sub_1A3C56888(255, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13F848);
    }
  }
}

uint64_t sub_1A4643CC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C56888(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void OverlayViewController.addOverlay(for:to:animationDuration:animations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v13[2] = a3;
  v15 = a1;
  v14 = *(*v3 + 80);
  v13[5] = *(v14 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13[1] = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v13[4] = v13 - v7;
  v8 = sub_1A4644B44();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_1EB186F70;
  swift_beginAccess();
  (*(v9 + 16))(v11, v4 + v12, v8);
  sub_1A52464D4();
}

void sub_1A46444B0(uint64_t a1, id a2)
{
  [a2 addSubview_];
  swift_beginAccess();
  sub_1A4644B44();
  sub_1A52464B4();
}

void OverlayViewController.removeOverlay(from:animationDuration:animations:)(uint64_t a1)
{
  v2 = v1;
  v8[6] = a1;
  v3 = sub_1A4644B44();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1EB186F70;
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v7, v3);
  sub_1A52464D4();
}

uint64_t OverlayViewController.deinit()
{
  v1 = qword_1EB186F70;
  v2 = sub_1A4644B44();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1A3C33378(*(v0 + qword_1EB16A3E0));
  v3 = qword_1EB16A3F0;
  v4 = sub_1A5246F24();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t OverlayViewController.__deallocating_deinit()
{
  OverlayViewController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A4644B44()
{
  result = qword_1EB128C48;
  if (!qword_1EB128C48)
  {
    sub_1A441CDE8();
    sub_1A52464F4();
  }

  return result;
}

id sub_1A4644B9C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = [v1 removeFromSuperview];
  v4 = *(v2 + qword_1EB16A3E0);
  if (v4)
  {
    return v4(v1);
  }

  return result;
}

uint64_t sub_1A4644BF8()
{
  result = sub_1A4644B44();
  if (v1 <= 0x3F)
  {
    result = sub_1A5246F24();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A4644D74(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1A4644DBC()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1A4644DE4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState();
  result = sub_1A52478D4();
  *a1 = result;
  return result;
}

void *sub_1A4644E20()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for PhotosDetailsTimeWidgetView() + 20);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t type metadata accessor for PhotosDetailsTimeWidgetView()
{
  result = qword_1EB173350;
  if (!qword_1EB173350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4644FCC()
{
  type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

void sub_1A4644FF4(char a1)
{
  type metadata accessor for PhotosDetailsTimeWidgetView();
  sub_1A464FE68(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v5 & 1) == 0)
  {
    type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState();
    sub_1A46507B8(&qword_1EB12AB50, v2, type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState);
    v3 = sub_1A5247EB4();
    (*(*v3 + 96))(0);
  }

  sub_1A524B6A4();
  if (v5 != (a1 & 1))
  {
    sub_1A524B6A4();
    if (v5 == 1 && (_UIApplicationIsExtension() & 1) == 0)
    {
      v4 = [objc_opt_self() px_sharedApplication];
      [v4 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
    }
  }
}

void sub_1A46451D4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1A4650B00(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for PhotosDetailsTimeWidgetView();
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  *(a2 + v4[6]) = 0x403C000000000000;
  v6 = a2 + v4[8];
  *v6 = sub_1A4644FCC;
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = (a2 + v4[7]);
  type metadata accessor for PhotosDetailsTimeWidgetViewModel();
  sub_1A46507B8(&qword_1EB12AA58, 255, type metadata accessor for PhotosDetailsTimeWidgetViewModel);
  v8 = a1;
  *v7 = sub_1A5248494();
  v7[1] = v9;
  v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x140);
  v11 = v8;
  v12 = v10();

  sub_1A4411614(v12);
  v13 = a2 + v4[9];
  sub_1A524B694();

  *v13 = v15;
  *(v13 + 1) = v16;
  v14 = a2 + v4[10];
  *v14 = 0;
  *(v14 + 1) = 0;
}

uint64_t sub_1A46453C8@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  sub_1A46465F4(0);
  v78 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647F84(0);
  v82 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647FC0(0);
  v91 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v86 = (&v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v90 = (&v72 - v10);
  sub_1A46510FC(0, &qword_1EB122BD8, sub_1A4647FFC, sub_1A4647FC0, MEMORY[0x1E697F948]);
  v94 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v72 - v12;
  v99 = sub_1A5249764();
  v85 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v83 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1A52486A4();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1A52489A4();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PhotosDetailsTimeWidgetView();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v19;
  v21 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A464842C(0);
  v23 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46482B0();
  v98 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v77 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46481A0();
  v100 = v28;
  v84 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v92 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647FFC();
  v93 = v30;
  v89 = *(v30 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v88 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v17;
  v33 = (*((*MEMORY[0x1E69E7D40] & **(v1 + *(v17 + 28) + 8)) + 0x140))(v31);
  v96 = v21;
  v95 = v20;
  if (v33 != 5)
  {
    *v4 = sub_1A5249584();
    *(v4 + 1) = 0x4018000000000000;
    v4[16] = 0;
    sub_1A4651180(0, &qword_1EB124488, sub_1A46466C8);
    sub_1A464A870(v1, &v4[*(v70 + 44)]);
  }

  v90 = type metadata accessor for PhotosDetailsTimeWidgetView;
  sub_1A4651348(v1, v21, type metadata accessor for PhotosDetailsTimeWidgetView);
  v87 = *(v18 + 80);
  v34 = (v87 + 16) & ~v87;
  v82 = v34;
  v35 = swift_allocObject();
  v86 = type metadata accessor for PhotosDetailsTimeWidgetView;
  v36 = sub_1A465044C(v21, v35 + v34, type metadata accessor for PhotosDetailsTimeWidgetView);
  MEMORY[0x1EEE9AC00](v36);
  v73 = v1;
  sub_1A464849C(0);
  sub_1A4648720();
  sub_1A524B704();
  v25[*(v23 + 36)] = sub_1A3E948B8() & 1;
  v37 = v74;
  sub_1A5248994();
  sub_1A4648810();
  sub_1A46507B8(&qword_1EB122F70, 255, MEMORY[0x1E697C248]);
  v38 = v77;
  v39 = v76;
  sub_1A524A934();
  (*(v75 + 8))(v37, v39);
  sub_1A465125C(v25, sub_1A464842C);
  sub_1A46510FC(0, &qword_1EB123F48, sub_1A4648354, sub_1A3E744F4, MEMORY[0x1E697E830]);
  v41 = (v38 + *(v40 + 36));
  sub_1A3E744F4(0);
  sub_1A5248AF4();
  *v41 = swift_getKeyPath();
  sub_1A4248EC0(v15);
  v42 = v79;
  sub_1A4394B64(v15, v79, &off_1EE6E6C90);
  v43 = *(v80 + 8);
  v44 = v81;
  v43(v15, v81);
  sub_1A4248EC0(v15);
  v45 = sub_1A4394B64(v15, v42, &off_1EE6E6C90);
  (v43)(v15, v44, v45);
  sub_1A524BC74();
  sub_1A52481F4();
  v46 = v98;
  v47 = (v38 + *(v98 + 36));
  v48 = v109;
  *v47 = v108;
  v47[1] = v48;
  v47[2] = v110;
  v49 = v83;
  sub_1A5248B84();
  v50 = sub_1A46501CC(&qword_1EB1237E8, sub_1A46482B0, sub_1A46488C4);
  v51 = sub_1A46507B8(&qword_1EB122360, 255, MEMORY[0x1E697C658]);
  v52 = v99;
  sub_1A524A974();
  (*(v85 + 8))(v49, v52);
  sub_1A465125C(v38, sub_1A46482B0);
  v53 = v73;
  v54 = v73 + *(v42 + 40);
  v55 = *v54;
  v56 = *(v54 + 8);
  v106 = v55;
  v107 = v56;
  sub_1A464FE68(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v57 = v53;
  v58 = v96;
  sub_1A4651348(v57, v96, v90);
  v59 = v82;
  v60 = swift_allocObject();
  sub_1A465044C(v58, v60 + v59, v86);
  sub_1A4648A40(0);
  v62 = v61;
  v102 = v46;
  v103 = v52;
  v104 = v50;
  v105 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = sub_1A4648A74(&qword_1EB125F48, sub_1A4648A40, sub_1A46475D4);
  v64 = v88;
  v65 = v100;
  v66 = v92;
  sub_1A524B1B4();

  (*(v84 + 8))(v66, v65);
  v67 = v89;
  v68 = v93;
  (*(v89 + 16))(v97, v64, v93);
  swift_storeEnumTagMultiPayload();
  v102 = v65;
  v103 = v62;
  v104 = OpaqueTypeConformance2;
  v105 = v71;
  swift_getOpaqueTypeConformance2();
  sub_1A46501CC(&qword_1EB1232A8, sub_1A4647FC0, sub_1A464F59C);
  sub_1A5249744();
  return (*(v67 + 8))(v64, v68);
}