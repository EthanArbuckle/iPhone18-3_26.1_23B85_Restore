uint64_t sub_1C1A51380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SponsorshipAdPreviewConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SponsorshipAdPreviewConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1A5151C()
{
  result = qword_1EBF04DE8;
  if (!qword_1EBF04DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04DE8);
  }

  return result;
}

unint64_t sub_1C1A51574()
{
  result = qword_1EBF04DF0;
  if (!qword_1EBF04DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04DF0);
  }

  return result;
}

unint64_t sub_1C1A515CC()
{
  result = qword_1EBF04DF8;
  if (!qword_1EBF04DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04DF8);
  }

  return result;
}

uint64_t sub_1C1A51620()
{
  v0 = sub_1C1A6FC0C();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C1A5169C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1C1A6F9EC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1C1A6F9EC();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C1A5CA18(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C1A51794(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C1A6F9EC();
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

  v13 = sub_1C1A6F9EC();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C1A5CA18(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C1A5F92C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_1C1A51884(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1C19CADF4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_1C1A5FD20(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (*(result + 48) + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_1C19CADF4((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (*(result + 48) + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_1C19A93FC();
  *v1 = v4;
  return result;
}

char *sub_1C1A51B40(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C1A6F9EC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1C19AA2E8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1C69055B0](i, a1);
        sub_1C198FB8C(0, &qword_1EDE626B8);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1C19AA2E8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1C19916E4(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1C198FB8C(0, &qword_1EDE626B8);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1C19AA2E8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1C19916E4(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1A51D3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1C19AA3F0(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      sub_1C19A9E58(&qword_1EBF037B0);
      sub_1C19A9E58(&qword_1EBF037A0);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C19AA3F0((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

__n128 sub_1C1A51E6C()
{
  result = *MEMORY[0x1E69DDCE0];
  v1 = *(MEMORY[0x1E69DDCE0] + 16);
  xmmword_1EBF04E00 = *MEMORY[0x1E69DDCE0];
  *&qword_1EBF04E10 = v1;
  return result;
}

void sub_1C1A51E88()
{
  v0 = sub_1C1A6F39C();
  v1 = objc_opt_self();
  v2 = [v1 fontWithName:v0 size:13.0];

  if (!v2)
  {
    v2 = [v1 systemFontOfSize_];
  }

  qword_1EBF04E20 = v2;
}

void sub_1C1A51F28()
{
  v0 = sub_1C1A6F39C();
  v1 = objc_opt_self();
  v2 = [v1 fontWithName:v0 size:20.0];

  if (!v2)
  {
    v2 = [v1 boldSystemFontOfSize_];
  }

  qword_1EBF04E28 = v2;
}

id sub_1C1A51FF0(uint64_t a1)
{
  sub_1C1A52E7C();
  v3 = v2;
  v4 = 1.77777778;
  if (*(a1 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_style) != 1)
  {
    v4 = 1.0;
  }

  v5 = *(a1 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_elements);
  v6 = v2 * v4 * *(v5 + 16);
  v7 = type metadata accessor for CarouselBackgroundCollectionController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC17PromotedContentUI38CarouselBackgroundCollectionController_elements] = v5;
  v9 = &v8[OBJC_IVAR____TtC17PromotedContentUI38CarouselBackgroundCollectionController_contentSize];
  *v9 = v6;
  *(v9 + 1) = v3;
  v11.receiver = v8;
  v11.super_class = v7;

  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_1C1A520D0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  [v2 setScrollDirection_];
  [v2 setMinimumInteritemSpacing_];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setUserInteractionEnabled_];
  v4 = sub_1C1A51FD0();
  [v3 setDataSource_];

  [v3 setDelegate_];
  v5 = v3;
  [v5 setShowsHorizontalScrollIndicator_];
  [v5 setShowsVerticalScrollIndicator_];
  [v5 setDecelerationRate_];
  [v5 setClipsToBounds_];

  [v5 setScrollsToTop_];
  type metadata accessor for ImageCollectionViewCell();
  if (qword_1EDE612D8 != -1)
  {
    swift_once();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_1C1A6F39C();
  [v5 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v7];

  return v5;
}

id sub_1C1A522CC()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___blurView;
  v2 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___blurView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___blurView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1C1A523E4(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1C1A52464(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1C1A524C8(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  [v2 setScrollDirection_];
  v3 = [a1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  v5 = 0.0;
  if (v4 == 1)
  {
    v5 = 8.0;
  }

  if (v4 == 2)
  {
    v5 = 10.0;
  }

  [v2 setMinimumLineSpacing_];
  [v2 setSectionInset_];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor_];

  [v6 setDataSource_];
  [v6 setDelegate_];
  v8 = v6;
  [v8 setShowsHorizontalScrollIndicator_];
  [v8 setDecelerationRate_];
  [v8 setClipsToBounds_];

  [v8 setScrollsToTop_];
  v9 = qword_1EDE60CB8;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_1C1A6F39C();
  [v10 setAccessibilityHint_];

  type metadata accessor for SmallCarouselCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = sub_1C1A6F39C();
  [v10 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v13];

  type metadata accessor for SmallCTACarouselCollectionViewCell();
  v14 = swift_getObjCClassFromMetadata();
  v15 = sub_1C1A6F39C();
  [v10 registerClass:v14 forCellWithReuseIdentifier:v15];

  type metadata accessor for MediumCarouselCollectionViewCell();
  v16 = swift_getObjCClassFromMetadata();
  v17 = sub_1C1A6F39C();
  [v10 registerClass:v16 forCellWithReuseIdentifier:v17];

  type metadata accessor for MediumCTACarouselCollectionViewCell();
  v18 = swift_getObjCClassFromMetadata();
  v19 = sub_1C1A6F39C();
  [v10 registerClass:v18 forCellWithReuseIdentifier:v19];

  type metadata accessor for LargeCarouselCollectionViewCell();
  v20 = swift_getObjCClassFromMetadata();
  v21 = sub_1C1A6F39C();
  [v10 registerClass:v20 forCellWithReuseIdentifier:v21];

  type metadata accessor for LargeCTACarouselCollectionViewCell();
  v22 = swift_getObjCClassFromMetadata();
  v23 = sub_1C1A6F39C();
  [v10 registerClass:v22 forCellWithReuseIdentifier:v23];

  return v10;
}

id sub_1C1A528C0()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___logoImageView;
  v2 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___logoImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___logoImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setContentMode_];
    [v4 setOpaque_];
    [v4 setAccessibilityIgnoresInvertColors_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_1C1A52990()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___actionButton;
  v2 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___actionButton);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1C1A52A00(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1C19C9C6C(v4);
  }

  sub_1C19C9C7C(v2);
  return v3;
}

void *sub_1C1A52A00(uint64_t a1)
{
  v2 = sub_1C1A6F88C();
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_1C19A9E58(&qword_1EBF04388);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - v12;
  v14 = sub_1C1A6E12C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation;
  v20 = *(a1 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation);
  if (!v20)
  {
    (*(v15 + 56))(v13, 1, 1, v14, v16);
    goto LABEL_7;
  }

  v33 = v2;
  v21 = v20;
  sub_1C1A6E64C();

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
LABEL_7:
    v25 = &qword_1EBF04388;
    v26 = v13;
LABEL_10:
    sub_1C1991140(v26, v25);
    return 0;
  }

  (*(v15 + 32))(v18, v13, v14);
  v22 = *(a1 + v19);
  if (!v22)
  {
    (*(v15 + 8))(v18, v14);
    v27 = sub_1C1A6D48C();
    (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
    goto LABEL_9;
  }

  v23 = v22;
  sub_1C1A6E67C();

  v24 = sub_1C1A6D48C();
  if ((*(*(v24 - 8) + 48))(v10, 1, v24) == 1)
  {
    (*(v15 + 8))(v18, v14);
LABEL_9:
    v25 = &unk_1EBF04600;
    v26 = v10;
    goto LABEL_10;
  }

  sub_1C1991140(v10, &unk_1EBF04600);
  static UIButton.Configuration.mediumBorderless()();
  sub_1C1A6E10C();
  if (!v29)
  {
    sub_1C19FCC4C();
  }

  sub_1C1A6F87C();
  sub_1C198FB8C(0, &qword_1EDE60C68);
  v30 = v33;
  v31 = v34;
  (*(v34 + 16))(v4, v7, v33);
  v32 = sub_1C1A6F89C();
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  [v32 addTarget:a1 action:sel_didSelectActionButtonWithSender_ forControlEvents:64];
  (*(v31 + 8))(v7, v30);
  (*(v15 + 8))(v18, v14);
  return v32;
}

double sub_1C1A52E7C()
{
  v1 = v0 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage____adSize;
  if ((*(v0 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage____adSize + 16) & 1) == 0)
  {
    return *v1;
  }

  result = sub_1C1A52EC4(v0);
  *v1 = result;
  *(v1 + 8) = v3;
  *(v1 + 16) = 0;
  return result;
}

double sub_1C1A52EC4(uint64_t a1)
{
  v2 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v8 = sub_1C1A53194();
  v9 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation;
  v10 = *(a1 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation);
  if (v10)
  {
    v11 = v10;
    sub_1C1A6E61C();

    v12 = sub_1C1A6D48C();
    (*(*(v12 - 8) + 48))(v7, 1, v12);
  }

  else
  {
    v13 = sub_1C1A6D48C();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  sub_1C1991140(v7, &unk_1EBF04600);
  sub_1C1A534C4();
  v14 = *(a1 + v9);
  if (v14)
  {
    v15 = v14;
    sub_1C1A6E61C();

    v16 = sub_1C1A6D48C();
    (*(*(v16 - 8) + 48))(v4, 1, v16);
  }

  else
  {
    v17 = sub_1C1A6D48C();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  }

  sub_1C1991140(v4, &unk_1EBF04600);
  sub_1C1A539C4();
  sub_1C1A540C4();
  v18 = sub_1C1A52990();
  if (v18)
  {
  }

  sub_1C1A54614();
  sub_1C1A54884();
  return v8;
}

double sub_1C1A53194()
{
  v1 = &v0[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___adSizeWidth];
  if ((v0[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___adSizeWidth + 8] & 1) == 0)
  {
    return *v1;
  }

  result = sub_1C1A531DC(v0);
  *v1 = result;
  v1[8] = 0;
  return result;
}

double sub_1C1A531DC(char *a1)
{
  v2 = [*&a1[OBJC_IVAR___APPCPromotedContentView_promotedContent] bestRepresentation];
  if (v2)
  {
    [v2 adSize];
    v4 = v3;
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0.0;
  }

  v5 = sub_1C1A6EA0C();
  if (v5 == sub_1C1A6EA0C())
  {
    v6 = a1[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_style];
    v7 = [a1 traitCollection];
    v8 = [v7 horizontalSizeClass];

    if (v8)
    {
      if (v8 == 2)
      {
        if (v6)
        {
          if (v6 == 1)
          {
LABEL_15:
            v9 = 283.0;
            goto LABEL_19;
          }

          v9 = 356.0;
        }

        else
        {
          v9 = 260.0;
        }

LABEL_19:
        if (v4 < v9)
        {
          return v4;
        }

        goto LABEL_20;
      }

      if (v8 == 1)
      {
        if (v6)
        {
          if (v6 != 1)
          {
            v9 = 297.0;
            goto LABEL_19;
          }

          goto LABEL_15;
        }

        v9 = 148.0;
        goto LABEL_19;
      }
    }

    if (v4 < 0.0)
    {
      return v4;
    }

LABEL_20:
    if (v4 + -32.0 < 0.0)
    {
      return 0.0;
    }

    else
    {
      return v4 + -32.0;
    }
  }

  return v4;
}

double sub_1C1A53354()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if ((v2 - 1) > 1)
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v4 = sub_1C1A6F1BC();
    sub_1C1994600(v4, qword_1EDE665F0);
    v5 = sub_1C1A6F19C();
    v6 = sub_1C1A6F66C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_1C198D000, v5, v6, "Unable to determine collection view inset using trait collection: %ld.", v7, 0xCu);
      MEMORY[0x1C6906260](v7, -1, -1);
    }

    return *MEMORY[0x1E69DDCE0];
  }

  else
  {
    sub_1C1A6EA0C();
    sub_1C1A6EA0C();
    return 0.0;
  }
}

uint64_t sub_1C1A534C4()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v8 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation;
  v9 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation);
  if (v9)
  {
    v10 = v9;
    sub_1C1A6E61C();

    v11 = sub_1C1A6D48C();
    if ((*(*(v11 - 8) + 48))(v7, 1, v11) != 1)
    {
      return sub_1C1991140(v7, &unk_1EBF04600);
    }
  }

  else
  {
    v13 = sub_1C1A6D48C();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  sub_1C1991140(v7, &unk_1EBF04600);
  v14 = *(v1 + v8);
  if (!v14 || (v15 = v14, v16 = sub_1C1A6E5EC(), v18 = v17, v15, !v18))
  {

    v16 = 0;
    v18 = 0xE000000000000000;
  }

  if (qword_1EDE62748 != -1)
  {
    swift_once();
  }

  sub_1C19A9E58(&unk_1EBF03FD0);
  v19 = swift_allocObject();
  v42 = xmmword_1C1A73A30;
  *(v19 + 16) = xmmword_1C1A73A30;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1C199E518();
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  sub_1C1A6F3EC();
  v20 = sub_1C1A53194();
  v21 = *(v1 + v8);
  if (v21)
  {
    v22 = v21;
    sub_1C1A6E61C();

    v23 = sub_1C1A6D48C();
    if ((*(*(v23 - 8) + 48))(v4, 1, v23) == 1)
    {
      v24 = 4.0;
    }

    else
    {
      v24 = 0.0;
    }
  }

  else
  {
    v25 = sub_1C1A6D48C();
    (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
    v24 = 4.0;
  }

  sub_1C1991140(v4, &unk_1EBF04600);
  v26 = v20 + -32.0 - v24;
  if (qword_1EBF035D0 != -1)
  {
    swift_once();
  }

  v27 = qword_1EBF04E20;
  sub_1C19A9E58(&qword_1EBF03910);
  inited = swift_initStackObject();
  *(inited + 16) = v42;
  v29 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1C198FB8C(0, &qword_1EDE626C0);
  *(inited + 40) = v27;
  v30 = v27;
  v31 = v29;
  sub_1C19B6B90(inited);
  swift_setDeallocating();
  sub_1C1991140(inited + 32, &qword_1EBF03918);
  v32 = sub_1C1A6F39C();
  type metadata accessor for Key(0);
  sub_1C1A6065C(&qword_1EDE626E0, type metadata accessor for Key);
  v33 = sub_1C1A6F2FC();

  [v32 boundingRectWithSize:0 options:v33 attributes:0 context:{v26, 1.79769313e308}];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v43.origin.x = v35;
  v43.origin.y = v37;
  v43.size.width = v39;
  v43.size.height = v41;
  CGRectGetHeight(v43);
}

void sub_1C1A539C4()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&unk_1EBF04600);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v56 - v4;
  v6 = [v0 traitCollection];
  v7 = [v6 horizontalSizeClass];

  v8 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation;
  v9 = *&v0[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation];
  if (!v9 || (v10 = v9, sub_1C1A6E66C(), v12 = v11, v10, !v12))
  {

    if (v7 != 2)
    {
      goto LABEL_4;
    }

LABEL_8:
    v14 = sub_1C1A52990();
    if (v14)
    {
      v15 = v14;
      v16 = *&v1[v8];
      if (v16)
      {
        v17 = v16;
        sub_1C1A6E61C();

        v18 = sub_1C1A6D48C();
        if ((*(*(v18 - 8) + 48))(v5, 1, v18) != 1)
        {
          sub_1C1991140(v5, &unk_1EBF04600);
          [v15 sizeThatFits_];
          v40 = *&v1[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___adSizeWidth] + -32.0 - fmax(v39, 150.0) + -16.0;
          if (qword_1EBF035D8 != -1)
          {
            swift_once();
          }

          v41 = qword_1EBF04E28;
          sub_1C19A9E58(&qword_1EBF03910);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C1A73A30;
          v43 = *MEMORY[0x1E69DB648];
          *(inited + 32) = *MEMORY[0x1E69DB648];
          *(inited + 64) = sub_1C198FB8C(0, &qword_1EDE626C0);
          *(inited + 40) = v41;
          v44 = v41;
          v45 = v43;
          sub_1C19B6B90(inited);
          swift_setDeallocating();
          sub_1C1991140(inited + 32, &qword_1EBF03918);
          v46 = sub_1C1A6F39C();
          type metadata accessor for Key(0);
          sub_1C1A6065C(&qword_1EDE626E0, type metadata accessor for Key);
          v47 = sub_1C1A6F2FC();

          [v46 boundingRectWithSize:1 options:v47 attributes:0 context:{v40, 1.79769313e308}];
          v49 = v48;
          v51 = v50;
          v53 = v52;
          v55 = v54;

          v58.origin.x = v49;
          v58.origin.y = v51;
          v58.size.width = v53;
          v58.size.height = v55;
          CGRectGetHeight(v58);

          return;
        }
      }

      else
      {

        v23 = sub_1C1A6D48C();
        (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
      }

      sub_1C1991140(v5, &unk_1EBF04600);
    }

    v13 = sub_1C1A53194() + -32.0;
    if (qword_1EBF035D8 == -1)
    {
LABEL_20:
      v24 = qword_1EBF04E28;
      sub_1C19A9E58(&qword_1EBF03910);
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_1C1A73A30;
      v26 = *MEMORY[0x1E69DB648];
      *(v25 + 32) = *MEMORY[0x1E69DB648];
      *(v25 + 64) = sub_1C198FB8C(0, &qword_1EDE626C0);
      *(v25 + 40) = v24;
      v27 = v24;
      v28 = v26;
      sub_1C19B6B90(v25);
      swift_setDeallocating();
      sub_1C1991140(v25 + 32, &qword_1EBF03918);
      v29 = sub_1C1A6F39C();
      type metadata accessor for Key(0);
      sub_1C1A6065C(&qword_1EDE626E0, type metadata accessor for Key);
      v30 = sub_1C1A6F2FC();

      [v29 boundingRectWithSize:1 options:v30 attributes:0 context:{v13, 1.79769313e308}];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v57.origin.x = v32;
      v57.origin.y = v34;
      v57.size.width = v36;
      v57.size.height = v38;
      CGRectGetHeight(v57);

      return;
    }

LABEL_24:
    swift_once();
    goto LABEL_20;
  }

  if (v7 == 2)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v7 == 1)
  {
    v13 = sub_1C1A53194() + -32.0;
    if (qword_1EBF035D8 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v19 = sub_1C1A6F1BC();
  sub_1C1994600(v19, qword_1EDE665F0);
  v20 = sub_1C1A6F19C();
  v21 = sub_1C1A6F66C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v7;
    _os_log_impl(&dword_1C198D000, v20, v21, "Unable to determine headline height using trait collection: %ld.", v22, 0xCu);
    MEMORY[0x1C6906260](v22, -1, -1);
  }
}

uint64_t sub_1C1A540C4()
{
  v1 = *&v0[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_elements];
  v2 = sub_1C1A61878(v1);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0xE000000000000000;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = sub_1C1A61AE8(v1);
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v5 = v8;
  }

  v10 = [v0 traitCollection];
  v11 = [v10 horizontalSizeClass];

  v12 = v0[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_style];
  if (!v12)
  {

    v15 = sub_1C1A52990();
    if (v15)
    {

      v16 = 148.0;
      if (v11 != 1)
      {
        v16 = 0.0;
      }

      if (v11 == 2)
      {
        v17 = 260.0;
      }

      else
      {
        v17 = v16;
      }

      if (qword_1EBF03590 == -1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v34 = 148.0;
      if (v11 != 1)
      {
        v34 = 0.0;
      }

      if (v11 == 2)
      {
        v17 = 260.0;
      }

      else
      {
        v17 = v34;
      }

      if (qword_1EBF03590 == -1)
      {
        goto LABEL_22;
      }
    }

    swift_once();
LABEL_22:
    v18 = qword_1EBF07660;
    sub_1C19A9E58(&qword_1EBF03910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1A73A30;
    v20 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    *(inited + 64) = sub_1C198FB8C(0, &qword_1EDE626C0);
    *(inited + 40) = v18;
    v21 = v18;
    v22 = v20;
    sub_1C19B6B90(inited);
    swift_setDeallocating();
    sub_1C1991140(inited + 32, &qword_1EBF03918);
    v23 = sub_1C1A6F39C();
    type metadata accessor for Key(0);
    sub_1C1A6065C(&qword_1EDE626E0, type metadata accessor for Key);
    v24 = sub_1C1A6F2FC();

    [v23 boundingRectWithSize:1 options:v24 attributes:0 context:{v17 + -12.0, 1.79769313e308}];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v35.origin.x = v26;
    v35.origin.y = v28;
    v35.size.width = v30;
    v35.size.height = v32;
    CGRectGetHeight(v35);
  }

  v13 = sub_1C1A52990();
  if (v13)
  {
    v14 = v13;

    type metadata accessor for CarouselCollectionViewCell();
    sub_1C19AF60C(v4, v6, v12, v11);
  }

  else
  {
    type metadata accessor for CTACarouselCollectionViewCell();
    sub_1C19B0F2C(v4, v6, v9, v5, v12, v11);
  }
}

double sub_1C1A54614()
{
  v1 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_1C1A52990();
  result = 0.0;
  if (v4)
  {

    v6 = [v0 traitCollection];
    v7 = [v6 horizontalSizeClass];

    result = 28.0;
    if (v7 != 1)
    {
      if (v7 != 2)
      {
        if (qword_1EDE63990 != -1)
        {
          swift_once();
        }

        v11 = sub_1C1A6F1BC();
        sub_1C1994600(v11, qword_1EDE665F0);
        v12 = sub_1C1A6F19C();
        v13 = sub_1C1A6F66C();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 134217984;
          *(v14 + 4) = v7;
          _os_log_impl(&dword_1C198D000, v12, v13, "Unable to determine action button height contributing to ad height using trait collection %ld.", v14, 0xCu);
          MEMORY[0x1C6906260](v14, -1, -1);
        }

        return 0.0;
      }

      v8 = *&v0[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation];
      if (v8)
      {
        v9 = v8;
        sub_1C1A6E61C();

        v10 = sub_1C1A6D48C();
        if ((*(*(v10 - 8) + 48))(v3, 1, v10) != 1)
        {
          sub_1C1991140(v3, &unk_1EBF04600);
          return 0.0;
        }
      }

      else
      {
        v15 = sub_1C1A6D48C();
        (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
      }

      sub_1C1991140(v3, &unk_1EBF04600);
      return 28.0;
    }
  }

  return result;
}

double sub_1C1A54884()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 2)
  {
    v5 = sub_1C1A6EA0C();
    v6 = sub_1C1A6EA0C();
    result = 16.0;
    if (v5 == v6)
    {
      return 8.0;
    }
  }

  else if (v2 == 1)
  {
    v3 = sub_1C1A52990();
    if (v3)
    {

      return 16.0;
    }

    else
    {
      return 8.0;
    }
  }

  else
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v7 = sub_1C1A6F1BC();
    sub_1C1994600(v7, qword_1EDE665F0);
    v8 = sub_1C1A6F19C();
    v9 = sub_1C1A6F66C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v2;
      _os_log_impl(&dword_1C198D000, v8, v9, "Unable to determine bottom margin using trait collection: %ld.", v10, 0xCu);
      MEMORY[0x1C6906260](v10, -1, -1);
    }

    return 0.0;
  }

  return result;
}

void sub_1C1A54AB8(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for CarouselAdView();
  v21.receiver = v4;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, sel_frame);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v20.receiver = v4;
  v20.super_class = v9;
  objc_msgSendSuper2(&v20, sel_setFrame_, a1, a2, a3, a4);
  [v4 frame];
  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  if (!CGRectEqualToRect(v22, v23))
  {
    [v4 setNeedsLayout];
    [v4 layoutIfNeeded];
    v18 = sub_1C1A52444();
    v19 = [v18 collectionViewLayout];

    [v19 invalidateLayout];
  }
}

double sub_1C1A54C08()
{
  v0 = sub_1C1A6EA0C();
  if (v0 == sub_1C1A6EA0C())
  {
    return 10.0;
  }

  if (qword_1EDE633F0 != -1)
  {
    swift_once();
  }

  return *&xmmword_1EBF04E00;
}

void sub_1C1A54CA0()
{
  v1 = sub_1C19A9E58(&unk_1EBF050D0);
  *&v2 = MEMORY[0x1EEE9AC00](v1 - 8).n128_u64[0];
  v4 = aBlock - v3;
  v0[OBJC_IVAR___APPCPromotedContentView_shouldCollapseOnRotation] = 1;
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setOpaque_];
  v5 = [v0 layer];
  [v5 setAllowsGroupOpacity_];

  [v0 setClipsToBounds_];
  if ([*&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent] bestRepresentation])
  {
    sub_1C1A6E68C();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *&v0[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation];
      *&v0[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation] = v6;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_1C1A54FEC();
  [*&v0[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1C19FD224();
  v8 = [v0 traitCollection];
  v9 = [v8 horizontalSizeClass];

  sub_1C1A55808(v9);
  sub_1C1A59694(v9);
  v10 = sub_1C1A6F5AC();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_1C1A6F58C();
  v11 = v0;
  v12 = sub_1C1A6F57C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_1C1A6B6C8(0, 0, v4, &unk_1C1A78248, v13);

  sub_1C1A5A7D4();
  sub_1C1A59AC0();
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  aBlock[4] = sub_1C1A5F778;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C19B8FA0;
  aBlock[3] = &unk_1F4142BE0;
  v17 = _Block_copy(aBlock);
  v18 = v11;

  v19 = [v15 scheduledTimerWithTimeInterval:0 repeats:v17 block:1.0];
  _Block_release(v17);
}

void sub_1C1A54FEC()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v51 - v3;
  v5 = sub_1C19A9E58(&qword_1EBF03908);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v51 - v6;
  v8 = sub_1C19A9E58(&qword_1EBF04E60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v51 - v9;
  v11 = sub_1C1A6DD8C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C1A520B0();
  [v1 addSubview_];

  v15 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  sub_1C1A6EB6C();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    if (sub_1C1A6EB3C())
    {
      v16 = sub_1C19F5B18();
      [v1 addSubview_];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v17 = sub_1C1A522CC();
  [v1 addSubview_];

  if ([*&v1[v15] bestRepresentation])
  {
    sub_1C1A6E68C();
    if (!swift_dynamicCastClass())
    {
      swift_unknownObjectRelease();
      goto LABEL_17;
    }

    v51 = v11;
    v18 = v12;
    sub_1C1A6E63C();
    v19 = sub_1C1A6DDAC();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v7, 1, v19) == 1)
    {
      swift_unknownObjectRelease();
      sub_1C1991140(v7, &qword_1EBF03908);
      (*(v18 + 56))(v10, 1, 1, v51);
LABEL_15:
      sub_1C1991140(v10, &qword_1EBF04E60);
      goto LABEL_17;
    }

    v21 = sub_1C1A6DD9C();
    (*(v20 + 8))(v7, v19);
    if (*(v21 + 16))
    {
      v22 = v18;
      v23 = *(v18 + 16);
      v24 = v21 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v25 = v51;
      v23(v10, v24, v51);
      v26 = 0;
    }

    else
    {
      v26 = 1;
      v22 = v18;
      v25 = v51;
    }

    (*(v22 + 56))(v10, v26, 1, v25);
    if ((*(v22 + 48))(v10, 1, v25) == 1)
    {
      swift_unknownObjectRelease();
      goto LABEL_15;
    }

    v27 = v52;
    (*(v22 + 32))(v52, v10, v25);
    v28 = sub_1C1A5238C();
    [v1 addSubview_];

    v29 = *&v1[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___filterView];
    sub_1C1A6DD4C();
    v31 = (v30 / 255.0);
    sub_1C1A6DD7C();
    v33 = (v32 / 255.0);
    sub_1C1A6DD5C();
    v35 = (v34 / 255.0);
    sub_1C1A6DD6C();
    v37 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v31 green:v33 blue:v35 alpha:(v36 / 255.0)];
    [v29 setBackgroundColor_];

    swift_unknownObjectRelease();
    (*(v22 + 8))(v27, v25);
  }

LABEL_17:
  v38 = *&v1[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView];
  [v1 addSubview_];
  v39 = *&v1[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation];
  if (v39)
  {
    v40 = v39;
    sub_1C1A6E61C();

    v41 = sub_1C1A6D48C();
    if ((*(*(v41 - 8) + 48))(v4, 1, v41) != 1)
    {
      sub_1C1991140(v4, &unk_1EBF04600);
      v42 = sub_1C1A528C0();
      [v1 addSubview_];
      goto LABEL_22;
    }
  }

  else
  {
    v43 = sub_1C1A6D48C();
    (*(*(v43 - 8) + 56))(v4, 1, 1, v43);
  }

  sub_1C1991140(v4, &unk_1EBF04600);
  v44 = sub_1C1A523B8();
  [v1 addSubview_];

  v45 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___advertiserContainerView;
  [*&v1[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___advertiserContainerView] addSubview_];
  v46 = *&v1[v45];
  v42 = sub_1C1A523C4();
  [v46 addSubview_];

LABEL_22:
  v47 = sub_1C1A52398();
  [v1 addSubview_];

  v48 = sub_1C1A52444();
  [v1 addSubview_];

  v49 = sub_1C1A52990();
  if (v49)
  {
    v50 = v49;
    [v1 addSubview_];
  }
}

char *sub_1C1A55718()
{
  sub_1C19A9E58(&qword_1EBF03E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1A74A20;
  v2 = *&v0[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView];
  *(inited + 32) = v2;
  v3 = v2;
  *(inited + 40) = sub_1C1A52398();
  *(inited + 48) = sub_1C1A52444();
  *(inited + 56) = v0;
  v4 = v0;
  v5 = sub_1C1A52990();
  if (v5)
  {
    v6 = v5;
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_1C1A74830;
    *(v7 + 32) = v6;
    sub_1C1A5169C(v7, sub_1C1A5F524);
  }

  v8 = sub_1C1A51B40(inited);

  return v8;
}

void sub_1C1A55808(unsigned int (*a1)(void, void, void))
{
  v2 = sub_1C1A55D20();
  sub_1C1A5169C(v2, sub_1C1A5F384);
  v3 = sub_1C1A559A4();
  sub_1C1A5169C(v3, sub_1C1A5F384);
  v4 = sub_1C1A56274();
  sub_1C1A5169C(v4, sub_1C1A5F384);
  v5 = sub_1C1A56460();
  sub_1C1A5169C(v5, sub_1C1A5F384);
  v6 = sub_1C1A56764(a1);
  sub_1C1A5169C(v6, sub_1C1A5F384);
  v7 = sub_1C1A57120(a1);
  sub_1C1A5169C(v7, sub_1C1A5F384);
  v8 = sub_1C1A56D2C(a1);
  sub_1C1A5169C(v8, sub_1C1A5F384);
  v9 = sub_1C1A578B0(a1);
  sub_1C1A5169C(v9, sub_1C1A5F384);
  v10 = sub_1C1A58658(a1);
  sub_1C1A5169C(v10, sub_1C1A5F384);
  v11 = sub_1C1A58EB4(a1);
  sub_1C1A5169C(v11, sub_1C1A5F384);
  v12 = objc_opt_self();
  sub_1C198FB8C(0, &qword_1EDE626F0);
  v13 = sub_1C1A6F50C();

  [v12 activateConstraints_];
}

uint64_t sub_1C1A559A4()
{
  if (!*(*&v0[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_elements] + 16))
  {
    v6 = 0.0;
    v7 = 0.0;
    goto LABEL_20;
  }

  v1 = v0[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_style];
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    v5 = &unk_1C1A782E0;
  }

  else
  {
    v4 = 0.0;
    if (v3 != 2)
    {
      goto LABEL_8;
    }

    v5 = &unk_1C1A782F8;
  }

  v4 = v5[v1];
LABEL_8:
  v8 = [v0 traitCollection];
  v9 = [v8 horizontalSizeClass];

  if (v9 == 1)
  {
    v11 = &unk_1C1A78310;
    goto LABEL_12;
  }

  v10 = 0.0;
  if (v9 == 2)
  {
    v11 = &unk_1C1A78328;
LABEL_12:
    v10 = v11[v1];
  }

  sub_1C1A52E7C();
  v13 = 1.77777778;
  if (v1 != 1)
  {
    v13 = 1.0;
  }

  v14 = v13 * v12;
  sub_1C1A53354();
  v16 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage____adSize;
  v17 = vabdd_f64(*&v0[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage____adSize] * 0.5, v4 + v15);
  v18 = [v0 traitCollection];
  v19 = [v18 horizontalSizeClass];

  v20 = 0.0;
  if (v19 == 1)
  {
    v20 = 8.0;
  }

  if (v19 == 2)
  {
    v20 = 10.0;
  }

  v7 = v17 * (v14 / (v10 + v20));
  v6 = *&v0[v16] * 0.5 - v14 * 0.5;
LABEL_20:
  sub_1C19A9E58(&qword_1EBF03E88);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C1A74A20;
  v22 = sub_1C1A520B0();
  v23 = [v22 leadingAnchor];

  v24 = [v0 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:v6 - v7];

  *(v21 + 32) = v25;
  v26 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___backgroundCollectionView;
  v27 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___backgroundCollectionView] topAnchor];
  v28 = [v0 topAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v21 + 40) = v29;
  v30 = [*&v0[v26] trailingAnchor];
  v31 = [v0 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v21 + 48) = v32;
  v33 = [*&v0[v26] bottomAnchor];
  v34 = [v0 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v21 + 56) = v35;
  return v21;
}

uint64_t sub_1C1A55D20()
{
  v1 = sub_1C19A9E58(&qword_1EBF03908);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v31 - v2;
  v4 = sub_1C19A9E58(&qword_1EBF04E60);
  *&v5 = MEMORY[0x1EEE9AC00](v4 - 8).n128_u64[0];
  v7 = &v31 - v6;
  if ([*&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent] bestRepresentation])
  {
    sub_1C1A6E68C();
    if (swift_dynamicCastClass())
    {
      v8 = v0;
      sub_1C1A6E63C();
      v9 = sub_1C1A6DDAC();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v3, 1, v9) == 1)
      {
        swift_unknownObjectRelease();
        sub_1C1991140(v3, &qword_1EBF03908);
        v11 = sub_1C1A6DD8C();
        (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
      }

      else
      {
        v12 = sub_1C1A6DD9C();
        (*(v10 + 8))(v3, v9);
        if (*(v12 + 16))
        {
          v13 = sub_1C1A6DD8C();
          v14 = *(v13 - 8);
          (*(v14 + 16))(v7, v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);

          (*(v14 + 56))(v7, 0, 1, v13);
        }

        else
        {

          v13 = sub_1C1A6DD8C();
          (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
        }

        sub_1C1A6DD8C();
        if ((*(*(v13 - 8) + 48))(v7, 1, v13) != 1)
        {
          sub_1C1991140(v7, &qword_1EBF04E60);
          sub_1C19A9E58(&qword_1EBF03E88);
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_1C1A74A20;
          v17 = sub_1C1A5238C();
          v18 = [v17 leadingAnchor];

          v19 = [v8 leadingAnchor];
          v20 = [v18 constraintEqualToAnchor_];

          *(v16 + 32) = v20;
          v21 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___filterView;
          v22 = [*&v8[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___filterView] topAnchor];
          v23 = [v8 topAnchor];
          v24 = [v22 constraintEqualToAnchor_];

          *(v16 + 40) = v24;
          v25 = [*&v8[v21] trailingAnchor];
          v26 = [v8 trailingAnchor];
          v27 = [v25 constraintEqualToAnchor_];

          *(v16 + 48) = v27;
          v28 = [*&v8[v21] bottomAnchor];
          v29 = [v8 bottomAnchor];
          v30 = [v28 constraintEqualToAnchor_];

          *(v16 + 56) = v30;
          swift_unknownObjectRelease();
          return v16;
        }

        swift_unknownObjectRelease();
      }

      sub_1C1991140(v7, &qword_1EBF04E60);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C1A56274()
{
  sub_1C19A9E58(&qword_1EBF03E88);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C1A74A20;
  v2 = sub_1C1A522CC();
  v3 = [v2 leadingAnchor];

  v4 = [v0 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___blurView;
  v7 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___blurView] topAnchor];
  v8 = [v0 topAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  v10 = [*&v0[v6] trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v1 + 48) = v12;
  v13 = [*&v0[v6] bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v1 + 56) = v15;
  return v1;
}

uint64_t sub_1C1A56460()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = *&v0[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation];
  if (v5)
  {
    v6 = v5;
    sub_1C1A6E61C();

    v7 = sub_1C1A6D48C();
    if ((*(*(v7 - 8) + 48))(v4, 1, v7) != 1)
    {
      sub_1C1991140(v4, &unk_1EBF04600);
      sub_1C19A9E58(&qword_1EBF03E88);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1C1A74A20;
      v9 = sub_1C1A528C0();
      v10 = [v9 leadingAnchor];

      v11 = [v1 leadingAnchor];
      v12 = [v10 constraintEqualToAnchor:v11 constant:16.0];

      *(v8 + 32) = v12;
      v13 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___logoImageView;
      v14 = [*&v1[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___logoImageView] topAnchor];
      v15 = [v1 topAnchor];
      v16 = [v14 constraintEqualToAnchor:v15 constant:16.0];

      *(v8 + 40) = v16;
      v17 = [*&v1[v13] widthAnchor];
      v18 = [v17 constraintLessThanOrEqualToConstant_];

      *(v8 + 48) = v18;
      v19 = [*&v1[v13] heightAnchor];
      v20 = [v19 constraintEqualToConstant_];

      result = v8;
      *(v8 + 56) = v20;
      return result;
    }
  }

  else
  {
    v22 = sub_1C1A6D48C();
    (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  }

  sub_1C1991140(v4, &unk_1EBF04600);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C1A56764(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v45 - v5;
  v47 = MEMORY[0x1E69E7CC0];
  if ((a1 - 1) > 1)
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v10 = sub_1C1A6F1BC();
    sub_1C1994600(v10, qword_1EDE665F0);
    v11 = sub_1C1A6F19C();
    v12 = sub_1C1A6F66C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = a1;
      _os_log_impl(&dword_1C198D000, v11, v12, "Unable to determine constraints for advertiser label using trait collection: %ld.", v13, 0xCu);
      MEMORY[0x1C6906260](v13, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v7 = *&v1[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation];
  if (v7)
  {
    v8 = v7;
    sub_1C1A6E61C();

    v9 = sub_1C1A6D48C();
    if ((*(*(v9 - 8) + 48))(v6, 1, v9) != 1)
    {
      sub_1C1991140(v6, &unk_1EBF04600);
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v15 = sub_1C1A6D48C();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  sub_1C1991140(v6, &unk_1EBF04600);
  v46 = *(*&v2[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView] + OBJC_IVAR___APPrivacyMarker_privacyMarkerType);
  v16 = [objc_opt_self() sharedApplication];
  v17 = [v16 preferredContentSizeCategory];

  swift_beginAccess();
  _s17PromotedContentUI13PrivacyMarkerC07privacyE4Size4type12sizeCategory015minimumTappableG0So6CGSizeVAA0dE4TypeO_So09UIContentgJ0aAItFZ_0(&v46, v17);
  v19 = v18;

  sub_1C1A534C4();
  if (v19 > v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  sub_1C1A534C4();
  if (v22 >= v19)
  {
    v25 = 16.0;
  }

  else
  {
    sub_1C1A534C4();
    v24 = (v19 - v23) * -0.5 + 16.0;
    if (v24 < 0.0)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v24;
    }
  }

  sub_1C19A9E58(&qword_1EBF03E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1A74830;
  v27 = sub_1C1A523B8();
  v28 = [v27 topAnchor];

  v29 = [v2 topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:v25];

  *(inited + 32) = v30;
  sub_1C1A5169C(inited, sub_1C1A5F384);
  sub_1C19A9E58(&qword_1EBF03E88);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1C1A74A20;
  v32 = sub_1C1A523B8();
  v33 = [v32 leadingAnchor];

  v34 = [v2 leadingAnchor];
  v35 = [v33 constraintGreaterThanOrEqualToAnchor:v34 constant:16.0];

  *(v31 + 32) = v35;
  v36 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___advertiserContainerView;
  v37 = [*&v2[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___advertiserContainerView] trailingAnchor];
  v38 = [v2 trailingAnchor];
  v39 = [v37 constraintLessThanOrEqualToAnchor:v38 constant:-16.0];

  *(v31 + 40) = v39;
  v40 = [*&v2[v36] centerXAnchor];
  v41 = [v2 centerXAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v31 + 48) = v42;
  v43 = [*&v2[v36] heightAnchor];
  v44 = [v43 constraintEqualToConstant_];

  *(v31 + 56) = v44;
  sub_1C1A5169C(v31, sub_1C1A5F384);
  return v47;
}

uint64_t sub_1C1A56D2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29[-v5];
  v30 = MEMORY[0x1E69E7CC0];
  if ((a1 - 1) > 1)
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v10 = sub_1C1A6F1BC();
    sub_1C1994600(v10, qword_1EDE665F0);
    v11 = sub_1C1A6F19C();
    v12 = sub_1C1A6F66C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = a1;
      _os_log_impl(&dword_1C198D000, v11, v12, "Unable to determine constraints for advertiser label using trait collection: %ld.", v13, 0xCu);
      MEMORY[0x1C6906260](v13, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(v1 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation);
  if (v7)
  {
    v8 = v7;
    sub_1C1A6E61C();

    v9 = sub_1C1A6D48C();
    if ((*(*(v9 - 8) + 48))(v6, 1, v9) != 1)
    {
      sub_1C1991140(v6, &unk_1EBF04600);
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v15 = sub_1C1A6D48C();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  sub_1C1991140(v6, &unk_1EBF04600);
  sub_1C19A9E58(&qword_1EBF03E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1A753A0;
  v17 = sub_1C1A523C4();
  v18 = [v17 leadingAnchor];

  v19 = [*(v2 + OBJC_IVAR___APPCPromotedContentView_privacyMarkerView) trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:4.0];

  *(inited + 32) = v20;
  v21 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___advertiserLabel;
  v22 = [*(v2 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___advertiserLabel) trailingAnchor];
  v23 = sub_1C1A523B8();
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(inited + 40) = v25;
  v26 = [*(v2 + v21) centerYAnchor];
  v27 = [*(v2 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___advertiserContainerView) centerYAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(inited + 48) = v28;
  sub_1C1A5169C(inited, sub_1C1A5F384);
  return v30;
}

uint64_t sub_1C1A57120(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - v11;
  v64 = MEMORY[0x1E69E7CC0];
  if ((a1 - 1) <= 1)
  {
    v13 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation;
    v14 = *&v1[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation];
    if (v14)
    {
      v15 = v14;
      sub_1C1A6E61C();

      v16 = sub_1C1A6D48C();
      v17 = *(v16 - 8);
      v18 = *(v17 + 48);
      if (v18(v12, 1, v16) != 1)
      {
        v60 = v17;
        v62 = v18;
        sub_1C1991140(v12, &unk_1EBF04600);
        sub_1C19A9E58(&qword_1EBF03E88);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C1A75FC0;
        v19 = *&v2[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView];
        v20 = [v19 topAnchor];
        v21 = [v2 topAnchor];
        v22 = *&v2[v13];
        if (v22)
        {
          v23 = v22;
          sub_1C1A6E61C();

          if (v62(v9, 1, v16) == 1)
          {
            v24 = 0.0;
          }

          else
          {
            v24 = 8.0;
          }
        }

        else
        {
          (*(v60 + 56))(v9, 1, 1, v16);
          v24 = 0.0;
        }

        sub_1C1991140(v9, &unk_1EBF04600);
        v51 = [v20 constraintEqualToAnchor:v21 constant:v24];

        v52 = inited;
        *(inited + 32) = v51;
        v53 = [v19 trailingAnchor];
        v54 = [v2 trailingAnchor];
        v55 = *&v2[v13];
        if (v55)
        {
          v56 = v55;
          sub_1C1A6E61C();

          if (v62(v6, 1, v16) == 1)
          {
            v57 = 0.0;
          }

          else
          {
            v57 = 8.0;
          }
        }

        else
        {
          (*(v60 + 56))(v6, 1, 1, v16);
          v57 = 0.0;
        }

        sub_1C1991140(v6, &unk_1EBF04600);
        v58 = [v53 constraintEqualToAnchor:v54 constant:-v57];

        *(v52 + 40) = v58;
        v50 = v52;
        goto LABEL_22;
      }
    }

    else
    {
      v30 = sub_1C1A6D48C();
      (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
    }

    sub_1C1991140(v12, &unk_1EBF04600);
    v31 = *&v2[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView];
    v63 = v31[OBJC_IVAR___APPrivacyMarker_privacyMarkerType];
    v32 = [objc_opt_self() sharedApplication];
    v33 = [v32 preferredContentSizeCategory];

    swift_beginAccess();
    _s17PromotedContentUI13PrivacyMarkerC07privacyE4Size4type12sizeCategory015minimumTappableG0So6CGSizeVAA0dE4TypeO_So09UIContentgJ0aAItFZ_0(&v63, v33);
    v35 = v34;

    sub_1C19A9E58(&qword_1EBF03E88);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_1C1A74A20;
    v37 = [v31 leadingAnchor];
    v38 = sub_1C1A523B8();
    v39 = [v38 leadingAnchor];

    v40 = [v37 constraintEqualToAnchor_];
    *(v36 + 32) = v40;
    v41 = [v31 trailingAnchor];
    v42 = sub_1C1A523C4();
    v43 = [v42 leadingAnchor];

    v44 = [v41 constraintEqualToAnchor:v43 constant:-4.0];
    *(v36 + 40) = v44;
    v45 = [v31 centerYAnchor];
    v46 = [*&v2[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___advertiserContainerView] centerYAnchor];
    v47 = [v45 constraintEqualToAnchor_];

    *(v36 + 48) = v47;
    v48 = [v31 widthAnchor];
    v49 = [v48 constraintEqualToConstant_];

    *(v36 + 56) = v49;
    v50 = v36;
LABEL_22:
    sub_1C1A5169C(v50, sub_1C1A5F384);
    return v64;
  }

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v25 = sub_1C1A6F1BC();
  sub_1C1994600(v25, qword_1EDE665F0);
  v26 = sub_1C1A6F19C();
  v27 = sub_1C1A6F66C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a1;
    _os_log_impl(&dword_1C198D000, v26, v27, "Unable to determine constraints for privacy marker using trait collection: %ld.", v28, 0xCu);
    MEMORY[0x1C6906260](v28, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C1A578B0(unsigned int (*a1)(void, void, void))
{
  v2 = v1;
  v114 = a1;
  v3 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v110 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v109 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v109 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v109 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v109 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v109 = &v109 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v112 = &v109 - v19;
  v115 = sub_1C19A9E58(&qword_1EBF03E88);
  v20 = swift_allocObject();
  v113 = xmmword_1C1A74830;
  *(v20 + 16) = xmmword_1C1A74830;
  v21 = sub_1C1A52398();
  v22 = [v21 leadingAnchor];

  v23 = v2;
  v24 = [v2 leadingAnchor];
  v25 = [v22 constraintEqualToAnchor:v24 constant:16.0];

  v26 = v114;
  *(v20 + 32) = v25;
  v116 = v20;
  if (v26 == 2)
  {
    v51 = v13;
    v112 = v10;
    v114 = v7;
    v52 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation;
    v53 = *&v2[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation];
    if (v53)
    {
      v54 = v53;
      v55 = v51;
      sub_1C1A6E61C();

      v56 = sub_1C1A6D48C();
      v57 = *(v56 - 8);
      v58 = *(v57 + 48);
      if (v58(v51, 1, v56) != 1)
      {
        v114 = v58;
        sub_1C1991140(v51, &unk_1EBF04600);
        inited = swift_initStackObject();
        *(inited + 16) = v113;
        v60 = [*&v2[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___headlineLabel] topAnchor];
        v61 = sub_1C1A528C0();
        v62 = [v61 bottomAnchor];

        v63 = *&v2[v52];
        if (v63)
        {
          v64 = v63;
          v65 = v112;
          sub_1C1A6E61C();

          v66 = v65;
          if (v114(v65, 1, v56) == 1)
          {
            v67 = 8.0;
          }

          else
          {
            v67 = 12.0;
          }
        }

        else
        {
          v66 = v112;
          (*(v57 + 56))(v112, 1, 1, v56);
          v67 = 8.0;
        }

        sub_1C1991140(v66, &unk_1EBF04600);
        v89 = [v60 constraintEqualToAnchor:v62 constant:v67];
        v88 = &unk_1E8148000;
        goto LABEL_37;
      }
    }

    else
    {
      v79 = sub_1C1A6D48C();
      v55 = v51;
      (*(*(v79 - 8) + 56))(v51, 1, 1, v79);
    }

    sub_1C1991140(v55, &unk_1EBF04600);
    inited = swift_initStackObject();
    *(inited + 16) = v113;
    v60 = [*&v2[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___headlineLabel] topAnchor];
    v80 = sub_1C1A523C4();
    v62 = [v80 bottomAnchor];

    v81 = *&v2[v52];
    if (v81)
    {
      v82 = v81;
      v83 = v114;
      sub_1C1A6E61C();

      v84 = sub_1C1A6D48C();
      if ((*(*(v84 - 8) + 48))(v83, 1, v84) == 1)
      {
        v85 = 8.0;
      }

      else
      {
        v85 = 12.0;
      }
    }

    else
    {
      v87 = sub_1C1A6D48C();
      v83 = v114;
      (*(*(v87 - 8) + 56))(v114, 1, 1, v87);
      v85 = 8.0;
    }

    v88 = &unk_1E8148000;
    sub_1C1991140(v83, &unk_1EBF04600);
    v89 = [v60 constraintEqualToAnchor:v62 constant:v85];
LABEL_37:
    v92 = v89;

    *(inited + 32) = v92;
    sub_1C1A5169C(inited, sub_1C1A5F384);
    v93 = sub_1C1A52990();
    if (!v93)
    {
      v103 = swift_initStackObject();
      *(v103 + 16) = v113;
      v104 = [*&v2[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___headlineLabel] trailingAnchor];
      v105 = [v2 trailingAnchor];
      v106 = [v104 constraintEqualToAnchor:v105 constant:-16.0];

      *(v103 + 32) = v106;
      v91 = v103;
      goto LABEL_42;
    }

    v94 = v93;
    v95 = *&v2[v52];
    if (v95)
    {
      v96 = v95;
      v97 = v110;
      sub_1C1A6E61C();

      v98 = sub_1C1A6D48C();
      if ((*(*(v98 - 8) + 48))(v97, 1, v98) != 1)
      {
        sub_1C1991140(v97, &unk_1EBF04600);
        v99 = swift_initStackObject();
        *(v99 + 16) = v113;
        v100 = [*&v2[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___headlineLabel] trailingAnchor];
        v101 = [v94 v88[306]];
        v102 = [v100 constraintEqualToAnchor:v101 constant:-16.0];
LABEL_45:
        v108 = v102;

        *(v99 + 32) = v108;
        sub_1C1A5169C(v99, sub_1C1A5F384);

        return v116;
      }
    }

    else
    {
      v107 = sub_1C1A6D48C();
      v97 = v110;
      (*(*(v107 - 8) + 56))(v110, 1, 1, v107);
    }

    sub_1C1991140(v97, &unk_1EBF04600);
    v99 = swift_initStackObject();
    *(v99 + 16) = v113;
    v100 = [*&v2[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___headlineLabel] trailingAnchor];
    v101 = [v2 trailingAnchor];
    v102 = [v100 constraintEqualToAnchor:v101 constant:-16.0];
    goto LABEL_45;
  }

  if (v26 == 1)
  {
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_1C1A75FC0;
    v28 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___headlineLabel;
    v29 = [*&v2[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___headlineLabel] trailingAnchor];
    v30 = [v2 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:-16.0];

    *(v27 + 32) = v31;
    v32 = [*&v2[v28] bottomAnchor];
    v33 = sub_1C1A52444();
    v34 = [v33 topAnchor];

    v35 = [v32 constraintEqualToAnchor:v34 constant:-16.0];
    *(v27 + 40) = v35;
    sub_1C1A5169C(v27, sub_1C1A5F384);
    v36 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation;
    v37 = *&v2[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation];
    if (v37)
    {
      v38 = v37;
      v39 = v112;
      sub_1C1A6E61C();

      v40 = sub_1C1A6D48C();
      v41 = *(v40 - 8);
      v42 = *(v41 + 48);
      if (v42(v39, 1, v40) != 1)
      {
        v114 = v42;
        sub_1C1991140(v39, &unk_1EBF04600);
        v43 = swift_initStackObject();
        *(v43 + 16) = v113;
        v44 = [*&v23[v28] topAnchor];
        v45 = sub_1C1A528C0();
        v46 = [v45 bottomAnchor];

        v47 = *&v23[v36];
        if (v47)
        {
          v48 = v47;
          v49 = v109;
          sub_1C1A6E61C();

          v50 = v114(v49, 1, v40);
          goto LABEL_21;
        }

        v49 = v109;
        (*(v41 + 56))(v109, 1, 1, v40);
        goto LABEL_33;
      }
    }

    else
    {
      v73 = sub_1C1A6D48C();
      v39 = v112;
      (*(*(v73 - 8) + 56))(v112, 1, 1, v73);
    }

    sub_1C1991140(v39, &unk_1EBF04600);
    v43 = swift_initStackObject();
    *(v43 + 16) = v113;
    v44 = [*&v23[v28] topAnchor];
    v74 = sub_1C1A523C4();
    v46 = [v74 bottomAnchor];

    v75 = *&v23[v36];
    if (v75)
    {
      v76 = v75;
      v49 = v111;
      sub_1C1A6E61C();

      v77 = sub_1C1A6D48C();
      v50 = (*(*(v77 - 8) + 48))(v49, 1, v77);
LABEL_21:
      if (v50 == 1)
      {
        v78 = 8.0;
      }

      else
      {
        v78 = 12.0;
      }

      goto LABEL_34;
    }

    v86 = sub_1C1A6D48C();
    v49 = v111;
    (*(*(v86 - 8) + 56))(v111, 1, 1, v86);
LABEL_33:
    v78 = 8.0;
LABEL_34:
    sub_1C1991140(v49, &unk_1EBF04600);
    v90 = [v44 constraintEqualToAnchor:v46 constant:v78];

    *(v43 + 32) = v90;
    v91 = v43;
LABEL_42:
    sub_1C1A5169C(v91, sub_1C1A5F384);
    return v116;
  }

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v68 = sub_1C1A6F1BC();
  sub_1C1994600(v68, qword_1EDE665F0);
  v69 = sub_1C1A6F19C();
  v70 = sub_1C1A6F66C();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 134217984;
    *(v71 + 4) = v26;
    _os_log_impl(&dword_1C198D000, v69, v70, "Unable to determine constraints for headline label using trait collection: %ld.", v71, 0xCu);
    MEMORY[0x1C6906260](v71, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C1A58658(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v62 - v5;
  v63 = sub_1C19A9E58(&qword_1EBF03E88);
  v7 = swift_allocObject();
  v62 = xmmword_1C1A75FC0;
  *(v7 + 16) = xmmword_1C1A75FC0;
  v8 = sub_1C1A52444();
  v9 = [v8 leadingAnchor];

  v10 = [v2 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v7 + 32) = v11;
  v12 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___collectionView;
  v13 = [*&v2[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___collectionView] trailingAnchor];
  v14 = [v2 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v7 + 40) = v15;
  v64 = v7;
  if (a1 == 2)
  {
    v28 = sub_1C1A52990();
    if (!v28)
    {
      inited = swift_initStackObject();
      *(inited + 16) = v62;
      v49 = v12;
      v50 = [*&v2[v12] topAnchor];
      v51 = sub_1C1A52398();
      v52 = [v51 bottomAnchor];

      v53 = [v50 constraintEqualToAnchor:v52 constant:16.0];
      *(inited + 32) = v53;
      v54 = [*&v2[v49] bottomAnchor];
      v55 = [v2 bottomAnchor];
      v56 = [v54 constraintEqualToAnchor:v55 constant:-sub_1C1A54884()];

      *(inited + 40) = v56;
      goto LABEL_16;
    }

    v23 = v28;
    v29 = *&v2[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation];
    v30 = v12;
    if (v29)
    {
      v31 = v29;
      sub_1C1A6E61C();

      v32 = sub_1C1A6D48C();
      if ((*(*(v32 - 8) + 48))(v6, 1, v32) != 1)
      {
        sub_1C1991140(v6, &unk_1EBF04600);
        v24 = swift_initStackObject();
        *(v24 + 16) = v62;
        v33 = [*&v2[v30] topAnchor];
        v34 = sub_1C1A52398();
        v35 = [v34 bottomAnchor];

        v36 = [v33 constraintEqualToAnchor:v35 constant:16.0];
        *(v24 + 32) = v36;
        v37 = [*&v2[v30] bottomAnchor];
        v38 = [v2 bottomAnchor];
        v39 = [v37 constraintEqualToAnchor:v38 constant:-sub_1C1A54884()];
LABEL_19:
        v61 = v39;

        *(v24 + 40) = v61;
        goto LABEL_20;
      }
    }

    else
    {
      v57 = sub_1C1A6D48C();
      (*(*(v57 - 8) + 56))(v6, 1, 1, v57);
    }

    sub_1C1991140(v6, &unk_1EBF04600);
    v24 = swift_initStackObject();
    *(v24 + 16) = v62;
    v58 = [*&v2[v30] topAnchor];
    v59 = [v23 bottomAnchor];
    v60 = [v58 constraintEqualToAnchor:v59 constant:16.0];

    *(v24 + 32) = v60;
    v37 = [*&v2[v30] bottomAnchor];
    v38 = [v2 bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:-sub_1C1A54884()];
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    v16 = swift_initStackObject();
    v62 = xmmword_1C1A74830;
    *(v16 + 16) = xmmword_1C1A74830;
    v17 = v12;
    v18 = [*&v2[v12] topAnchor];
    v19 = sub_1C1A52398();
    v20 = [v19 bottomAnchor];

    v21 = [v18 constraintEqualToAnchor:v20 constant:16.0];
    *(v16 + 32) = v21;
    sub_1C1A5169C(v16, sub_1C1A5F384);
    v22 = sub_1C1A52990();
    if (v22)
    {
      v23 = v22;
      v24 = swift_initStackObject();
      *(v24 + 16) = v62;
      v25 = [*&v2[v17] bottomAnchor];
      v26 = [v23 &selRef_heightAnchor];
      v27 = [v25 constraintEqualToAnchor:v26 constant:-sub_1C1A54884()];

      *(v24 + 32) = v27;
LABEL_20:
      sub_1C1A5169C(v24, sub_1C1A5F384);

      return v64;
    }

    inited = swift_initStackObject();
    *(inited + 16) = v62;
    v46 = [*&v2[v12] bottomAnchor];
    v47 = [v2 bottomAnchor];
    v48 = [v46 constraintEqualToAnchor:v47 constant:-sub_1C1A54884()];

    *(inited + 32) = v48;
LABEL_16:
    sub_1C1A5169C(inited, sub_1C1A5F384);
    return v64;
  }

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v40 = sub_1C1A6F1BC();
  sub_1C1994600(v40, qword_1EDE665F0);
  v41 = sub_1C1A6F19C();
  v42 = sub_1C1A6F66C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = a1;
    _os_log_impl(&dword_1C198D000, v41, v42, "Unable to determine constraints for collection view using trait collection: %ld.", v43, 0xCu);
    MEMORY[0x1C6906260](v43, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C1A58EB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v59 - v5;
  v7 = sub_1C1A52990();
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  sub_1C19A9E58(&qword_1EBF03E88);
  v9 = swift_allocObject();
  v59 = xmmword_1C1A74830;
  *(v9 + 16) = xmmword_1C1A74830;
  v10 = v8;
  v11 = [v10 heightAnchor];
  v12 = [v11 constraintEqualToConstant_];

  *(v9 + 32) = v12;
  v60 = v9;
  if (a1 != 2)
  {
    if (a1 == 1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1A74A20;
      v14 = [v10 leadingAnchor];
      v15 = [v2 leadingAnchor];
      v16 = [v14 constraintEqualToAnchor:v15 constant:16.0];

      *(inited + 32) = v16;
      v17 = [v10 topAnchor];
      v18 = sub_1C1A52444();
      v19 = [v18 bottomAnchor];

      v20 = 0.0;
      if (*&v2[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___actionButton])
      {
        v20 = 16.0;
      }

      v21 = [v17 constraintEqualToAnchor:v19 constant:v20];

      *(inited + 40) = v21;
      v22 = [v10 trailingAnchor];
      v23 = [v2 trailingAnchor];
      v24 = [v22 constraintEqualToAnchor:v23 constant:-16.0];

      *(inited + 48) = v24;
      v25 = [v10 bottomAnchor];

      v26 = [v2 bottomAnchor];
      v27 = [v25 constraintEqualToAnchor:v26 constant:-sub_1C1A54884()];

      *(inited + 56) = v27;
      goto LABEL_21;
    }

    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v43 = sub_1C1A6F1BC();
    sub_1C1994600(v43, qword_1EDE665F0);
    v44 = sub_1C1A6F19C();
    v45 = sub_1C1A6F66C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134217984;
      *(v46 + 4) = a1;
      _os_log_impl(&dword_1C198D000, v44, v45, "Unable to determine constraints for action button using trait collection: %ld.", v46, 0xCu);
      MEMORY[0x1C6906260](v46, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  [v10 sizeThatFits_];
  v29 = fmax(v28, 150.0);
  v30 = swift_initStackObject();
  *(v30 + 16) = v59;
  v31 = [v10 widthAnchor];
  v32 = [v31 constraintEqualToConstant_];

  *(v30 + 32) = v32;
  sub_1C1A5169C(v30, sub_1C1A5F384);
  v33 = *&v2[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation];
  if (!v33)
  {
    v48 = sub_1C1A6D48C();
    (*(*(v48 - 8) + 56))(v6, 1, 1, v48);
    goto LABEL_17;
  }

  v34 = v33;
  sub_1C1A6E61C();

  v35 = sub_1C1A6D48C();
  if ((*(*(v35 - 8) + 48))(v6, 1, v35) == 1)
  {
LABEL_17:
    sub_1C1991140(v6, &unk_1EBF04600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1A753A0;
    v49 = [v10 topAnchor];
    v50 = sub_1C1A52398();
    v51 = [v50 bottomAnchor];

    v52 = 16.0;
    if (!*&v2[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___actionButton])
    {
      v52 = 0.0;
    }

    v53 = [v49 constraintEqualToAnchor:v51 constant:v52];

    *(inited + 32) = v53;
    v54 = [v10 bottomAnchor];
    v55 = sub_1C1A52444();
    v56 = [v55 topAnchor];

    v57 = [v54 constraintEqualToAnchor:v56 constant:-16.0];
    *(inited + 40) = v57;
    v39 = (inited + 48);
    v40 = [v10 centerXAnchor];

    v42 = [v2 centerXAnchor];
    goto LABEL_20;
  }

  sub_1C1991140(v6, &unk_1EBF04600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1A75FC0;
  v36 = [v10 trailingAnchor];
  v37 = [v2 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:-16.0];

  *(inited + 32) = v38;
  v39 = (inited + 40);
  v40 = [v10 centerYAnchor];

  v41 = sub_1C1A52398();
  v42 = [v41 centerYAnchor];

LABEL_20:
  v58 = [v40 constraintEqualToAnchor_];

  *v39 = v58;
LABEL_21:
  sub_1C1A5169C(inited, sub_1C1A5F384);

  return v60;
}

void sub_1C1A59694(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  if (a1 == 2)
  {
    v13 = sub_1C1A52990();
    if (!v13)
    {
      return;
    }

    v14 = v13;
    v15 = *(v1 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation);
    if (v15)
    {
      v16 = v15;
      sub_1C1A6E61C();

      v17 = sub_1C1A6D48C();
      if ((*(*(v17 - 8) + 48))(v6, 1, v17) != 1)
      {
        sub_1C1991140(v6, &unk_1EBF04600);
        LODWORD(v30) = 1148846080;
        [v14 setContentCompressionResistancePriority:0 forAxis:v30];

        return;
      }
    }

    else
    {

      v29 = sub_1C1A6D48C();
      (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
    }

    sub_1C1991140(v6, &unk_1EBF04600);
    return;
  }

  if (a1 == 1)
  {
    v10 = *(v1 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation);
    if (v10)
    {
      v11 = v10;
      sub_1C1A6E61C();

      v12 = sub_1C1A6D48C();
      if ((*(*(v12 - 8) + 48))(v9, 1, v12) != 1)
      {
        sub_1C1991140(v9, &unk_1EBF04600);
        return;
      }
    }

    else
    {
      v22 = sub_1C1A6D48C();
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    }

    sub_1C1991140(v9, &unk_1EBF04600);
    v23 = sub_1C1A523C4();
    LODWORD(v24) = 1148846080;
    [v23 setContentHuggingPriority:0 forAxis:v24];

    LODWORD(v25) = 1132068864;
    [*(v2 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___advertiserLabel) setContentCompressionResistancePriority:0 forAxis:v25];
    v26 = *(v2 + OBJC_IVAR___APPCPromotedContentView_privacyMarkerView);
    LODWORD(v27) = 1112014848;
    [v26 setContentHuggingPriority:0 forAxis:v27];
    LODWORD(v28) = 1144750080;
    [v26 setContentCompressionResistancePriority:0 forAxis:v28];
  }

  else
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v18 = sub_1C1A6F1BC();
    sub_1C1994600(v18, qword_1EDE665F0);
    v32 = sub_1C1A6F19C();
    v19 = sub_1C1A6F66C();
    if (os_log_type_enabled(v32, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = a1;
      _os_log_impl(&dword_1C198D000, v32, v19, "Unable to set content compression resistance priorities using trait collection: %ld.", v20, 0xCu);
      MEMORY[0x1C6906260](v20, -1, -1);
    }

    v21 = v32;
  }
}

void sub_1C1A59AC0()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&unk_1EBF04600);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v59 - v4;
  v6 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v7 = [*&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent] bestRepresentation];
  if (v7)
  {
    v8 = v7;
    sub_1C1A6E68C();
    if (swift_dynamicCastClass())
    {
      v9 = sub_1C1A6E5EC();
      v11 = MEMORY[0x1E69E6158];
      v12 = &unk_1E8148000;
      if (v10)
      {
        v13 = v9;
        v14 = v10;
        v62 = v8;
        if (qword_1EDE62748 != -1)
        {
          swift_once();
        }

        sub_1C19A9E58(&unk_1EBF03FD0);
        v15 = swift_allocObject();
        v61 = xmmword_1C1A73A30;
        *(v15 + 16) = xmmword_1C1A73A30;
        *(v15 + 56) = v11;
        v16 = sub_1C199E518();
        *(v15 + 64) = v16;
        *(v15 + 32) = v13;
        *(v15 + 40) = v14;
        v17 = sub_1C1A6F3EC();
        v19 = v18;
        v20 = sub_1C1A523C4();
        v21 = sub_1C1A6F39C();
        [v20 setText_];

        v60 = *&v1[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView];
        if (qword_1EDE60CA0 != -1)
        {
          swift_once();
        }

        v22 = swift_allocObject();
        *(v22 + 16) = v61;
        v23 = MEMORY[0x1E69E6158];
        *(v22 + 56) = MEMORY[0x1E69E6158];
        *(v22 + 64) = v16;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        sub_1C1A6F3EC();
        v24 = sub_1C1A6F39C();

        v12 = &unk_1E8148000;
        [v60 setAccessibilityLabel_];

        v11 = v23;
      }

      v25 = sub_1C1A52398();
      sub_1C1A6E66C();
      if (v26)
      {
        v27 = sub_1C1A6F39C();
      }

      else
      {
        v27 = 0;
      }

      [v25 setText_];

      v39 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___headlineLabel;
      v40 = *&v1[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___headlineLabel];
      v41 = *&v1[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation];
      if (v41)
      {
        v42 = v40;
        v43 = v41;
        sub_1C1A6E61C();

        v44 = sub_1C1A6D48C();
        if ((*(*(v44 - 8) + 48))(v5, 1, v44) == 1)
        {
          v45 = 1;
        }

        else
        {
          v45 = 4;
        }
      }

      else
      {
        v46 = sub_1C1A6D48C();
        v45 = 1;
        (*(*(v46 - 8) + 56))(v5, 1, 1, v46);
        v42 = v40;
      }

      sub_1C1991140(v5, &unk_1EBF04600);
      [v42 setTextAlignment_];

      v47 = sub_1C1A6E60C();
      if (v48)
      {
        v49 = v47;
        v50 = v48;
        v51 = v11;
        v52 = *&v1[v39];
        v53 = qword_1EDE60CB0;
        v54 = v52;
        if (v53 != -1)
        {
          swift_once();
        }

        sub_1C19A9E58(&unk_1EBF03FD0);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_1C1A73A30;
        *(v55 + 56) = v51;
        *(v55 + 64) = sub_1C199E518();
        *(v55 + 32) = v49;
        *(v55 + 40) = v50;
        sub_1C1A6F3EC();
        v56 = sub_1C1A6F39C();

        [v54 v12[188]];
      }

      v57 = sub_1C1A52444();
      [v57 reloadData];

      v58 = [*&v1[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___collectionView] collectionViewLayout];
      [v58 invalidateLayout];

      [v1 layoutIfNeeded];
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v28 = sub_1C1A6F1BC();
  sub_1C1994600(v28, qword_1EDE665F0);
  v29 = v0;
  v62 = sub_1C1A6F19C();
  v30 = sub_1C1A6F66C();

  if (os_log_type_enabled(v62, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v63 = v32;
    *v31 = 136315138;
    v33 = [*&v1[v6] identifier];
    v34 = sub_1C1A6F3CC();
    v36 = v35;

    v37 = sub_1C19A1884(v34, v36, &v63);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_1C198D000, v62, v30, "Representation data not available for carousel for promoted content with identifier %s.", v31, 0xCu);
    sub_1C199935C(v32);
    MEMORY[0x1C6906260](v32, -1, -1);
    MEMORY[0x1C6906260](v31, -1, -1);
  }

  else
  {
    v38 = v62;
  }
}

uint64_t sub_1C1A5A16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1C19A9E58(&unk_1EBF04600);
  v4[3] = swift_task_alloc();
  v5 = sub_1C1A6D48C();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_1C1A6F58C();
  v4[7] = sub_1C1A6F57C();
  v7 = sub_1C1A6F56C();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C1A5A298, v7, v6);
}

uint64_t sub_1C1A5A298()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation);
  if (!v1)
  {
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[3];

    (*(v7 + 56))(v8, 1, 1, v6);
    goto LABEL_5;
  }

  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v1;
  sub_1C1A6E61C();

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {

LABEL_5:
    sub_1C1991140(v0[3], &unk_1EBF04600);

    v9 = v0[1];

    return v9();
  }

  (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
  sub_1C1A6DFEC();
  v0[10] = sub_1C1A6DFDC();
  v13 = (*MEMORY[0x1E69C5F48] + MEMORY[0x1E69C5F48]);
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_1C1A5A474;
  v12 = v0[6];

  return v13(v12);
}

uint64_t sub_1C1A5A474(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_1C1A5A738;
  }

  else
  {
    v4[13] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_1C1A5A5C0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1C1A5A5C0()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];

  [v1 size];
  v7 = v6;
  [v1 size];
  if (v7 / v8 * 32.0 <= 150.0)
  {
    v9 = v7 / v8 * 32.0;
  }

  else
  {
    v9 = 150.0;
  }

  v10 = sub_1C1A528C0();
  v11 = [v10 widthAnchor];

  v12 = [v11 constraintEqualToConstant_];
  [v12 setActive_];

  [*(v5 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___logoImageView) setImage_];
  (*(v4 + 8))(v2, v3);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1C1A5A738()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_1C1A5A7D4()
{
  v1 = type metadata accessor for CarouselElement();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v34 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v3;
  v4 = sub_1C19A9E58(&unk_1EBF050D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_elements);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_1C1A6F58C();
    v32 = *(v2 + 80);
    v33 = v12;
    v31 = (v32 + 32) & ~v32;
    v13 = v10 + v31;
    v30 = *(v2 + 72);
    v14 = sub_1C1A6F5AC();
    v15 = *(v14 - 8);
    v16 = *(v15 + 56);
    v28 = v15 + 56;
    v29 = v16;
    v26 = (v15 + 8);
    v27 = (v15 + 48);
    v16(v9, 1, 1, v14);
    while (1)
    {
      v17 = v34;
      sub_1C19F4614(v13, v34);
      v18 = sub_1C1A6F57C();
      v19 = v31;
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = MEMORY[0x1E69E85E0];
      sub_1C1A60498(v17, v20 + v19);
      sub_1C1A605EC(v9, v6);
      LODWORD(v18) = (*v27)(v6, 1, v14);

      if (v18 == 1)
      {
        sub_1C1991140(v6, &unk_1EBF050D0);
      }

      else
      {
        sub_1C1A6F59C();
        (*v26)(v6, v14);
      }

      v21 = *(v20 + 16);
      swift_unknownObjectRetain();

      if (v21)
      {
        swift_getObjectType();
        v22 = sub_1C1A6F56C();
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      sub_1C1991140(v9, &unk_1EBF050D0);
      v25 = swift_allocObject();
      *(v25 + 16) = &unk_1C1A78270;
      *(v25 + 24) = v20;
      if (v24 | v22)
      {
        v36 = 0;
        v37 = 0;
        v38 = v22;
        v39 = v24;
      }

      swift_task_create();

      v13 += v30;
      if (!--v11)
      {
        break;
      }

      v29(v9, 1, 1, v14);
    }
  }
}

uint64_t sub_1C1A5AB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1C1A6F58C();
  v4[3] = sub_1C1A6F57C();
  v6 = sub_1C1A6F56C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C1A5ABF4, v6, v5);
}

uint64_t sub_1C1A5ABF4()
{
  v1 = v0[2];
  sub_1C1A6DFEC();
  v0[6] = sub_1C1A6DFDC();
  v2 = *(type metadata accessor for CarouselElement() + 24);
  v5 = (*MEMORY[0x1E69C5F48] + MEMORY[0x1E69C5F48]);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1C1A5ACCC;

  return v5(v1 + v2);
}

uint64_t sub_1C1A5ACCC(void *a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = sub_1C1A4D5F0;
  }

  else
  {

    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = sub_1C19C0B54;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

void sub_1C1A5AE20(uint64_t a1, void *a2)
{
  v3 = sub_1C1A52444();
  v4 = sub_1C1A6D6BC();
  v5 = [v3 cellForItemAtIndexPath_];

  if (v5)
  {
    type metadata accessor for CarouselCollectionViewCell();
    if (swift_dynamicCastClass())
    {
      v6 = sub_1C19AF868();
      [v6 setImage_];

      v7 = sub_1C19AF9EC();
      v8 = OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_image;
      v9 = *&v7[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_image];
      *&v7[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_image] = a2;
      v10 = a2;

      v11 = sub_1C1A1D500();
      v12 = *&v7[v8];
      [v11 setImage_];

      v5 = v11;
    }
  }

  v13 = sub_1C1A520B0();
  v14 = sub_1C1A6D6BC();
  v16 = [v13 cellForItemAtIndexPath_];

  if (v16)
  {
    type metadata accessor for ImageCollectionViewCell();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      [*(v15 + OBJC_IVAR____TtC17PromotedContentUI23ImageCollectionViewCell_imageView) setImage_];
    }
  }
}

id sub_1C1A5AFF4()
{
  v1 = sub_1C1A6F39C();
  [v0 setAccessibilityIdentifier_];

  [v0 setIsAccessibilityElement_];
  v2 = *&v0[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView];
  v3 = *MEMORY[0x1E69DD9B8];

  return [v2 setAccessibilityTraits_];
}

void sub_1C1A5B098()
{
  [v0 setReadiness_];
  v1 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  [objc_msgSend(*&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent] metricsHelper)];
  swift_unknownObjectRelease();
  v2 = [*&v0[v1] bestRepresentation];
  if (v2)
  {
    [v2 adSize];
    v4 = v3;
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0.0;
  }

  v5 = v0[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_style];
  v6 = [v0 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7)
  {
    if (v7 == 2)
    {
      if (v5)
      {
        if (v5 == 1)
        {
LABEL_14:
          v8 = 283.0;
          goto LABEL_18;
        }

        v8 = 356.0;
      }

      else
      {
        v8 = 260.0;
      }

LABEL_18:
      if (v4 >= v8)
      {
        return;
      }

      goto LABEL_19;
    }

    if (v7 == 1)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          v8 = 297.0;
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v8 = 148.0;
      goto LABEL_18;
    }
  }

  if (v4 >= 0.0)
  {
    return;
  }

LABEL_19:

  [v0 setReadiness_];
}

void sub_1C1A5B2A0(uint64_t a1)
{
  if (a1 == 100)
  {
    sub_1C1A5C008();
  }
}

void sub_1C1A5B2B0()
{
  if ((*(v0 + OBJC_IVAR___APPCPromotedContentView_customPrivacyHandling) & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR___APPCPromotedContentView_overriddenPrivacyMarkerPosition + 8) == 1)
    {
      v1 = [*(v0 + OBJC_IVAR___APPCPromotedContentView_promotedContent) bestRepresentation];
      if (!v1)
      {
        return;
      }

      v2 = [v1 privacyMarkerPosition];
      swift_unknownObjectRelease();
    }

    else
    {
      v2 = *(v0 + OBJC_IVAR___APPCPromotedContentView_overriddenPrivacyMarkerPosition);
    }

    v3 = sub_1C1A6E45C();
    v4 = sub_1C1A6E45C();
    v5 = *(v0 + OBJC_IVAR___APPCPromotedContentView_privacyMarkerView);
    if (v3 == v4)
    {

      [v5 setHidden_];
    }

    else
    {
      [v5 setHidden_];
      *&v5[OBJC_IVAR___APPrivacyMarker_privacyMarkerPosition] = v2;
      sub_1C19970C4();
    }
  }
}

void sub_1C1A5B3CC()
{
  v1 = sub_1C1A6EA0C();
  if (v1 == sub_1C1A6EA0C())
  {
    v2 = [v0 layer];
    [v2 setCornerRadius_];

    v3 = [objc_opt_self() mainScreen];
    [v3 nativeScale];
    v5 = v4;

    v6 = [v0 layer];
    if (qword_1EDE62688 != -1)
    {
      swift_once();
    }

    if (qword_1EDE62690)
    {
      v7 = [qword_1EDE62690 CGColor];
    }

    else
    {
      v7 = 0;
    }

    [v6 setBorderColor_];

    v8 = [v0 layer];
    [v8 setBorderWidth_];
  }
}

void sub_1C1A5B5E8(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_elements];
  if (*(v2 + 16))
  {
    v4 = *(type metadata accessor for CarouselElement() - 8);
    v5 = *(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
    [a1 center];
    [v1 convertPoint:v1 toCoordinateSpace:?];
    v8 = sub_1C1A41660(v6, v7);
    v11 = v10 & 1;

    sub_1C1A5BAC8(v8, v9, v11, v5);
  }

  else
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v12 = sub_1C1A6F1BC();
    sub_1C1994600(v12, qword_1EDE665F0);
    oslog = sub_1C1A6F19C();
    v13 = sub_1C1A6F66C();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C198D000, oslog, v13, "Unable to determine which element identifier to use for the interaction metric.", v14, 2u);
      MEMORY[0x1C6906260](v14, -1, -1);
    }
  }
}

void sub_1C1A5B780()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_1C1A6D48C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation;
  v14 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = v14;
  v26 = sub_1C1A6DB4C();

  if (v26)
  {
    sub_1C1A41A98(v26);
    v16 = v26;

    return;
  }

  v17 = *(v1 + v13);
  if (v17)
  {
    v18 = v17;
    sub_1C1A6E67C();

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v12, v4, v5);
      (*(v6 + 16))(v8, v12, v5);
      v19 = objc_allocWithZone(sub_1C1A6DE4C());
      v20 = sub_1C1A6DE3C();
      sub_1C1A43CB8(v20);

      (*(v6 + 8))(v12, v5);
      return;
    }
  }

  else
  {
LABEL_9:
    (*(v6 + 56))(v4, 1, 1, v5, v10);
  }

  sub_1C1991140(v4, &unk_1EBF04600);
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v21 = sub_1C1A6F1BC();
  sub_1C1994600(v21, qword_1EDE665F0);
  v22 = sub_1C1A6F19C();
  v23 = sub_1C1A6F66C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1C198D000, v22, v23, "Unable to perform an action as neither an actionURL nor a tapAction was present.", v24, 2u);
    MEMORY[0x1C6906260](v24, -1, -1);
  }
}

uint64_t sub_1C1A5BAC8(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4)
{
  v5 = v4;
  p_cache = _TtC17PromotedContentUI16AppStoreSettings.cache;
  if (a3)
  {
    v58.x = -1.0;
    v58.y = -1.0;
    v7 = NSStringFromCGPoint(v58);
    v8 = sub_1C1A6F3CC();
    v10 = v9;

    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v11 = sub_1C1A6F1BC();
    sub_1C1994600(v11, qword_1EDE665F0);
    v12 = v5;

    v13 = sub_1C1A6F19C();
    v14 = sub_1C1A6F66C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v56 = v16;
      *v15 = 136315394;
      v17 = [*&v12[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
      v18 = sub_1C1A6F3CC();
      v20 = v19;

      v21 = sub_1C19A1884(v18, v20, &v56);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      v22 = sub_1C19A1884(v8, v10, &v56);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_1C198D000, v13, v14, "Attempting to send an interacted metric without a normalized interaction point for promoted content with identifier %s. Using %s instead.", v15, 0x16u);
      swift_arrayDestroy();
      v23 = v16;
      p_cache = (_TtC17PromotedContentUI16AppStoreSettings + 16);
      MEMORY[0x1C6906260](v23, -1, -1);
      MEMORY[0x1C6906260](v15, -1, -1);
    }

    else
    {
    }

    *&a1 = -1.0;
    *&a2 = -1.0;
  }

  *&v59.x = a1;
  *&v59.y = a2;
  v26 = NSStringFromCGPoint(v59);
  v27 = sub_1C1A6F3CC();
  v29 = v28;

  [v5 frame];
  v30 = NSStringFromCGRect(v60);
  v31 = sub_1C1A6F3CC();
  v33 = v32;

  if (p_cache[306] != -1)
  {
    swift_once();
  }

  v34 = sub_1C1A6F1BC();
  sub_1C1994600(v34, qword_1EDE665F0);
  v35 = v5;

  v36 = sub_1C1A6F19C();
  v37 = sub_1C1A6F67C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56 = v39;
    *v38 = 136315906;
    v40 = sub_1C19A1884(v27, v29, &v56);

    *(v38 + 4) = v40;
    *(v38 + 12) = 2080;
    v41 = sub_1C19A1884(v31, v33, &v56);

    *(v38 + 14) = v41;
    *(v38 + 22) = 256;
    v42 = a4;
    *(v38 + 24) = a4;
    *(v38 + 25) = 2080;
    v43 = [*&v35[OBJC_IVAR___APPCPromotedContentView_promotedContent] identifier];
    v44 = sub_1C1A6F3CC();
    v46 = v45;

    v47 = sub_1C19A1884(v44, v46, &v56);

    *(v38 + 27) = v47;
    _os_log_impl(&dword_1C198D000, v36, v37, "Sending an interacted metric using interaction point %s in frame %s with element identifier %hhu for promoted content with identifier %s.", v38, 0x23u);
    swift_arrayDestroy();
    MEMORY[0x1C6906260](v39, -1, -1);
    MEMORY[0x1C6906260](v38, -1, -1);
  }

  else
  {

    v42 = a4;
  }

  v48 = [*&v35[OBJC_IVAR___APPCPromotedContentView_promotedContent] metricsHelper];
  *&v49 = *&a1;
  *&v50 = *&a2;
  [v48 interactedWithElementID:v42 atXPos:v49 yPos:v50];
  swift_unknownObjectRelease();
  v51 = &v35[OBJC_IVAR___APPCPromotedContentView_interactionDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v53 = *(v51 + 1);
    ObjectType = swift_getObjectType();
    (*(v53 + 8))(ObjectType, v53);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C1A5C008()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF04E48);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v57 - v6;
  v7 = sub_1C1A6D6EC();
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1A52444();
  v10 = [v9 indexPathsForVisibleItems];

  v67 = v7;
  v11 = sub_1C1A6F51C();

  v58 = sub_1C19F2210(v11);

  v68 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___collectionView;
  v12 = [*&v1[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___collectionView] visibleCells];
  sub_1C198FB8C(0, &qword_1EDE626E8);
  v13 = sub_1C1A6F51C();

  v69 = MEMORY[0x1E69E7CC0];
  if (v13 >> 62)
  {
    goto LABEL_16;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v4; v14; i = v4)
  {
    v15 = 0;
    v4 = (v13 & 0xC000000000000001);
    while (1)
    {
      if (v4)
      {
        v16 = MEMORY[0x1C69055B0](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = v68;
      v20 = *&v1[v68];
      [v17 frame];
      [v20 convertRect:*&v1[v19] toCoordinateSpace:?];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      [*&v1[v19] bounds];
      v71.origin.x = v22;
      v71.origin.y = v24;
      v71.size.width = v26;
      v71.size.height = v28;
      if (CGRectContainsRect(v70, v71))
      {
        sub_1C1A6FB2C();
        sub_1C1A6FB5C();
        sub_1C1A6FB6C();
        sub_1C1A6FB3C();
      }

      else
      {
      }

      ++v15;
      if (v18 == v14)
      {
        v29 = v69;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v14 = sub_1C1A6F9EC();
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_18:

  if (v29 < 0 || (v29 & 0x4000000000000000) != 0)
  {
    goto LABEL_40;
  }

  for (j = *(v29 + 16); j; j = sub_1C1A6F9EC())
  {
    v31 = 0;
    v62 = (v60 + 56);
    v63 = v29 & 0xC000000000000001;
    v32 = (v60 + 48);
    v33 = MEMORY[0x1E69E7CC0];
    v61 = (v60 + 32);
    v59 = v1;
    while (1)
    {
      if (v63)
      {
        v34 = MEMORY[0x1C69055B0](v31, v29);
      }

      else
      {
        if (v31 >= *(v29 + 16))
        {
          goto LABEL_39;
        }

        v34 = *(v29 + 8 * v31 + 32);
      }

      v35 = v34;
      v36 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v37 = v29;
      v38 = [*&v1[v68] indexPathForCell_];
      if (v38)
      {
        v39 = i;
        v40 = v38;
        sub_1C1A6D6CC();

        v41 = 0;
      }

      else
      {
        v41 = 1;
        v39 = i;
      }

      v42 = v41;
      v43 = v67;
      (*v62)(v39, v42, 1, v67);
      v44 = v39;
      v45 = v65;
      sub_1C1A60428(v44, v65);
      if ((*v32)(v45, 1, v43) == 1)
      {
        sub_1C1991140(v45, &qword_1EBF04E48);
        v29 = v37;
      }

      else
      {
        v46 = v43;
        v47 = *v61;
        (*v61)(v64, v45, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_1C19CB20C(0, *(v33 + 2) + 1, 1, v33);
        }

        v29 = v37;
        v49 = *(v33 + 2);
        v48 = *(v33 + 3);
        if (v49 >= v48 >> 1)
        {
          v33 = sub_1C19CB20C(v48 > 1, v49 + 1, 1, v33);
        }

        *(v33 + 2) = v49 + 1;
        v47(&v33[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v49], v64, v67);
        v1 = v59;
      }

      ++v31;
      if (v36 == j)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_42:

  v50 = sub_1C19F2210(v33);

  if (*(v50 + 16) <= *(v58 + 16) >> 3)
  {
    v69 = v58;
    sub_1C1A5CBB0(v50);
    v51 = v69;
  }

  else
  {
    v51 = sub_1C1A5D228(v50, v58);
  }

  v52 = v1;
  sub_1C1A5FE78(v50, v52);

  v53 = v52;
  sub_1C1A5FE78(v51, v53);

  v54 = [*&v53[OBJC_IVAR___APPCPromotedContentView_promotedContent] metricsHelper];
  v55 = sub_1C1A6F50C();

  v56 = sub_1C1A6F50C();

  [v54 updateElementsShownWithShown:v55 partiallyShown:v56];
  swift_unknownObjectRelease();
}

void sub_1C1A5C6A8()
{
  sub_1C19C9C6C(*(v0 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___actionButton));

  v1 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation);
}

id sub_1C1A5C788()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselAdView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CarouselAdView()
{
  result = qword_1EDE633C8;
  if (!qword_1EDE633C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C1A5C9C0()
{
  result = qword_1EBF04E30;
  if (!qword_1EBF04E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04E30);
  }

  return result;
}

uint64_t sub_1C1A5CA18(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C1A6F9EC();
LABEL_9:
  result = sub_1C1A6FB0C();
  *v1 = result;
  return result;
}

uint64_t sub_1C1A5CAB8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1C1A5DC8C(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_1C1A5CBB0(uint64_t a1)
{
  v3 = sub_1C19A9E58(&qword_1EBF04E48);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_1C1A6D6EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_1C1A5DD7C(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_1C1991140(v5, &qword_1EBF04E48);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C1A5CDCC(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v52 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v46 = a1;
    v47 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v45 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v46;
          v16 = v47;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v47 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v46;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v47 << 9) | (8 * v18)));
        v19 = sub_1C1A6FD9C();
        v20 = -1 << *(v6 + 32);
        v5 = v19 & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v49 = v45;
    v50 = v47;
    v51 = v11;
    v48[0] = v46;
    v48[1] = v8;
    v4 = (63 - v20) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();
      memcpy(v39, (v6 + 56), v14);
      v40 = sub_1C1A5E024(v39, v4, v6, v5, v48);

      MEMORY[0x1C6906260](v39, -1, -1);
      v45 = v49;
      v47 = v50;
      v6 = v40;
      goto LABEL_43;
    }

LABEL_18:
    v42 = v4;
    v43 = &v41;
    MEMORY[0x1EEE9AC00](v22);
    v5 = &v41 - v23;
    memcpy(&v41 - v23, (v6 + 56), v14);
    v24 = *(v6 + 16);
    *(v5 + 8 * v3) &= ~v2;
    v25 = v24 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v46;
LABEL_19:
    v44 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v47 << 9) | (8 * v29)));
      v30 = sub_1C1A6FD9C();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + 8 * v32) == v3)
        {
LABEL_20:
          v26 = *(v5 + 8 * v33);
          *(v5 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v44 - 1;
            if (__OFSUB__(v44, 1))
            {
              __break(1u);
            }

            if (v44 == 1)
            {

              v6 = MEMORY[0x1E69E7CD0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v47;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v47 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v47 + 1)
    {
      v37 = v47 + 1;
    }

    else
    {
      v37 = v12;
    }

    v47 = v37 - 1;
    v6 = sub_1C1A5E6B4(v5, v42, v44, v6);
LABEL_43:
    sub_1C19A93FC();
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v6;
}

uint64_t sub_1C1A5D228(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = sub_1C19A9E58(&qword_1EBF04E48);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v65 - v9);
  v11 = sub_1C1A6D6EC();
  MEMORY[0x1EEE9AC00](v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v65 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_1C1991140(v30, &qword_1EBF04E48);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_1C1A6065C(&qword_1EDE623A8, MEMORY[0x1E6969C28]);
    v32 = sub_1C1A6F34C();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_1C1A6065C(&qword_1EDE623A0, MEMORY[0x1E6969C28]);
    v36 = sub_1C1A6F38C();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_1C1991140(v24, &qword_1EBF04E48);
        a2 = sub_1C1A5E8A0(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_1C1A6F34C();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_1C1A6F38C();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_1C1A6F38C();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  sub_1C1A5E1E0(v63, v65, v80, v24, &v89);
  a2 = v64;

  MEMORY[0x1C6906260](v63, -1, -1);
LABEL_52:
  sub_1C19A93FC();
  return a2;
}

uint64_t sub_1C1A5DC8C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1C1A6FD9C();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C19F0494();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1C1A5EBC8(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1C1A5DD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C1A6D6EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1C1A6065C(&qword_1EDE623A8, MEMORY[0x1E6969C28]);
  v31 = a1;
  v10 = sub_1C1A6F34C();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1C1A6065C(&qword_1EDE623A0, MEMORY[0x1E6969C28]);
      v19 = sub_1C1A6F38C();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C19F0864();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1C1A5ED4C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1C1A5E024(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    result = sub_1C1A6FD9C();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v18)
      {
LABEL_2:
        v12 = v8[v21];
        v8[v21] = v12 & ~v22;
        if ((v12 & v22) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_1C1A5E6B4(v8, a2, v10, a3);
}

void sub_1C1A5E1E0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_1C19A9E58(&qword_1EBF04E48);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1C1A6D6EC();
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1C1991140(v11, &qword_1EBF04E48);
          v45 = v61;

          sub_1C1A5E8A0(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1C1A6065C(&qword_1EDE623A8, MEMORY[0x1E6969C28]);
        v35 = sub_1C1A6F34C();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1C1A6065C(&qword_1EDE623A0, MEMORY[0x1E6969C28]);
        v43 = sub_1C1A6F38C();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1C1A5E6B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1C19A9E58(&qword_1EBF04400);
  result = sub_1C1A6FAAC();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1C1A6FD9C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C1A5E8A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1C1A6D6EC();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1C19A9E58(&qword_1EBF043F0);
  result = sub_1C1A6FAAC();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1C1A6065C(&qword_1EDE623A8, MEMORY[0x1E6969C28]);
    result = sub_1C1A6F34C();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

unint64_t sub_1C1A5EBC8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C1A6F96C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1C1A6FD9C() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1C1A5ED4C(int64_t a1)
{
  v3 = sub_1C1A6D6EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1C1A6F96C();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_1C1A6065C(&qword_1EDE623A8, MEMORY[0x1E6969C28]);
        v23 = sub_1C1A6F34C();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t (*sub_1C1A5F054(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C69055B0](a2, a3);
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
    return sub_1C1A60820;
  }

  __break(1u);
  return result;
}

void (*sub_1C1A5F0D4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C69055B0](a2, a3);
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
    return sub_1C1A5F154;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1C1A5F15C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C69055B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1C1A5F1DC;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1A5F1E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1A6F9EC();
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
      result = sub_1C1A6F9EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1A607CC(&qword_1EBF03EF8, &qword_1EBF03EF0);
          for (i = 0; i != v6; ++i)
          {
            sub_1C19A9E58(&qword_1EBF03EF0);
            v9 = sub_1C1A5F054(v13, i, a3);
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
        sub_1C198FB8C(0, &qword_1EDE626A0);
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

uint64_t sub_1C1A5F384(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1A6F9EC();
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
      result = sub_1C1A6F9EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1A607CC(&qword_1EBF04E58, &qword_1EBF04E50);
          for (i = 0; i != v6; ++i)
          {
            sub_1C19A9E58(&qword_1EBF04E50);
            v9 = sub_1C1A5F0D4(v13, i, a3);
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
        sub_1C198FB8C(0, &qword_1EDE626F0);
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

uint64_t sub_1C1A5F524(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1A6F9EC();
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
      result = sub_1C1A6F9EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1A607CC(&qword_1EBF04E40, &qword_1EBF04E38);
          for (i = 0; i != v6; ++i)
          {
            sub_1C19A9E58(&qword_1EBF04E38);
            v9 = sub_1C1A5F054(v13, i, a3);
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
        sub_1C198FB8C(0, &qword_1EDE626B8);
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

uint64_t sub_1C1A5F6C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C19909C4;

  return sub_1C1A5A16C(a1, v4, v5, v6);
}

uint64_t sub_1C1A5F78C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1A6F9EC();
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
      result = sub_1C1A6F9EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1A607CC(&qword_1EBF04E78, &qword_1EBF04E70);
          for (i = 0; i != v6; ++i)
          {
            sub_1C19A9E58(&qword_1EBF04E70);
            v9 = sub_1C1A5F054(v13, i, a3);
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
        sub_1C198FB8C(0, &unk_1EBF043C0);
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

uint64_t sub_1C1A5F92C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1A6F9EC();
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
      result = sub_1C1A6F9EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1A607CC(&qword_1EDE62738, &qword_1EBF04E68);
          for (i = 0; i != v6; ++i)
          {
            sub_1C19A9E58(&qword_1EBF04E68);
            v9 = sub_1C1A5F15C(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_1C19A9E58(&qword_1EBF04478);
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

void *sub_1C1A5FAC8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1C1A5FBC8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C1A5FD20(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1C1A5FE78(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C1A6D6EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v31 = v2;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1C19AA308(0, v8, 0);
    v44 = v45;
    v42 = a1 + 56;
    v10 = sub_1C1A6F95C();
    v11 = *(a2 + OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_elements);
    v12 = type metadata accessor for CarouselElement();
    v13 = 0;
    v14 = *(v12 - 8);
    result = v12 - 8;
    v38 = v14;
    v39 = v11;
    v37 = v11 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v40 = v6 + 16;
    v35 = v5;
    v36 = (v6 + 8);
    v32 = a1 + 64;
    v33 = v8;
    v34 = v6;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v17 = v10 >> 6;
      if ((*(v42 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v41 = v13;
      v18 = *(a1 + 36);
      (*(v6 + 16))(v43, *(a1 + 48) + *(v6 + 72) * v10, v5);
      result = sub_1C1A6D6DC();
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if (result >= *(v39 + 16))
      {
        goto LABEL_26;
      }

      v19 = a1;
      v20 = *(v37 + *(v38 + 72) * result);
      result = (*v36)(v43, v5);
      v21 = v44;
      v45 = v44;
      v23 = *(v44 + 16);
      v22 = *(v44 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_1C19AA308((v22 > 1), v23 + 1, 1);
        v21 = v45;
      }

      *(v21 + 16) = v23 + 1;
      *(v21 + v23 + 32) = v20;
      a1 = v19;
      v15 = 1 << *(v19 + 32);
      if (v10 >= v15)
      {
        goto LABEL_27;
      }

      v24 = *(v42 + 8 * v17);
      if ((v24 & (1 << v10)) == 0)
      {
        goto LABEL_28;
      }

      v44 = v21;
      if (v18 != *(v19 + 36))
      {
        goto LABEL_29;
      }

      v25 = v24 & (-2 << (v10 & 0x3F));
      if (v25)
      {
        v15 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v16 = v33;
      }

      else
      {
        v26 = v17 << 6;
        v27 = v17 + 1;
        v16 = v33;
        v28 = (v32 + 8 * v17);
        while (v27 < (v15 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1C19B07E4(v10, v18, 0);
            v15 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_1C19B07E4(v10, v18, 0);
      }

LABEL_4:
      v13 = v41 + 1;
      v10 = v15;
      v6 = v34;
      v5 = v35;
      if (v41 + 1 == v16)
      {
        return v44;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1A60200(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_1C1A6F9EC();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_1C1A5CA18(result);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C198FB8C(0, &qword_1EDE626A0);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_1C1A60314()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setAccessibilityTraits_];
  [v0 setAdjustsFontForContentSizeCategory_];
  if (qword_1EBF035D8 != -1)
  {
    swift_once();
  }

  [v0 setFont_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

uint64_t sub_1C1A60428(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF04E48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1A60498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarouselElement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1A604FC(uint64_t a1)
{
  v4 = *(type metadata accessor for CarouselElement() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C19909C4;

  return sub_1C1A5AB5C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1C1A605EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&unk_1EBF050D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1A6065C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C1A606A4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setAccessibilityTraits_];
  [v0 setAdjustsFontForContentSizeCategory_];
  if (qword_1EBF035D0 != -1)
  {
    swift_once();
  }

  [v0 setFont_];
  [v0 setNumberOfLines_];
  [v0 setTextAlignment_];
  v1 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

uint64_t sub_1C1A607CC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C19A9F04(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_1C1A60824(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v3 += 8;
    v6 = sub_1C1A6DEAC();
  }

  while (v6 != sub_1C1A6DEAC());
  return v4 != 0;
}

void *sub_1C1A6088C(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = sub_1C19A9E58(&qword_1EBF04E80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v42 - v7;
  v56 = type metadata accessor for CarouselElement();
  v48 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1C1A6E23C();
  v57 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = v42 - v12;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___backgroundCollectionController] = 0;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___backgroundCollectionView] = 0;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___blurView] = 0;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___filterView] = 0;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___headlineLabel] = 0;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___advertiserContainerView] = 0;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___advertiserLabel] = 0;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___collectionView] = 0;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___logoImageView] = 0;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___actionButton] = 1;
  v13 = &a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage____adSize];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___adSizeWidth];
  *v14 = 0;
  v14[8] = 1;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_dataRepresentation] = 0;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_topMargin] = 0x4030000000000000;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_advertiserViewHorizontalMargin] = 0x4030000000000000;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_headlineHorizontalMargin] = 0x4030000000000000;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_logoImageViewHeight] = 0x4040000000000000;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_logoImageViewMaxWidth] = 0x4062C00000000000;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_logoImageViewLeadingMargin] = 0x4030000000000000;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_collectionViewTopMargin] = 0x4030000000000000;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_actionButtonHeight] = 0x403C000000000000;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_actionButtonHorizontalMargin] = 0x4030000000000000;
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_actionButtonMinimumWidth] = 0x4062C00000000000;
  ObjectType = swift_getObjectType();
  if (![a1 bestRepresentation])
  {
    goto LABEL_7;
  }

  sub_1C1A6E68C();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
LABEL_7:
    v17 = 2;
    goto LABEL_8;
  }

  v16 = sub_1C1A6E5FC();
  swift_unknownObjectRelease();
  if ((v16 - 22200) >= 3)
  {
    v17 = 2;
  }

  else
  {
    v17 = -70 - v16;
  }

LABEL_8:
  a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_style] = v17;
  v18 = [a1 bestRepresentation];
  if (v18)
  {
    v19 = v18;
    sub_1C1A6E68C();
    if (swift_dynamicCastClass())
    {
      v20 = sub_1C1A6E65C();
      if (v20)
      {
        v46 = a3;
        v21 = *(v20 + 16);
        if (v21)
        {
          v42[1] = v19;
          v42[2] = ObjectType;
          v43 = a1;
          v44 = a2;
          v22 = *(v57 + 16);
          v23 = *(v57 + 80);
          v45 = v20;
          v24 = v20 + ((v23 + 32) & ~v23);
          v50 = *(v57 + 72);
          v51 = v22;
          v57 += 16;
          v49 = (v57 - 8);
          v25 = (v48 + 48);
          v26 = MEMORY[0x1E69E7CC0];
          v27 = v8;
          v47 = v8;
          do
          {
            v28 = v51;
            v29 = v52;
            v30 = v54;
            v51(v52, v24, v54);
            v31 = v53;
            v28(v53, v29, v30);
            sub_1C19E53DC(v31, v27);
            (*v49)(v29, v30);
            if ((*v25)(v27, 1, v56) == 1)
            {
              sub_1C1A615E0(v27);
            }

            else
            {
              sub_1C1A60498(v27, v55);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v26 = sub_1C19CB234(0, v26[2] + 1, 1, v26);
              }

              v33 = v26[2];
              v32 = v26[3];
              if (v33 >= v32 >> 1)
              {
                v26 = sub_1C19CB234(v32 > 1, v33 + 1, 1, v26);
              }

              v26[2] = v33 + 1;
              sub_1C1A60498(v55, v26 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v33);
              v27 = v47;
            }

            v24 += v50;
            --v21;
          }

          while (v21);

          swift_unknownObjectRelease();
          a1 = v43;
          a2 = v44;
        }

        else
        {

          swift_unknownObjectRelease();
          v26 = MEMORY[0x1E69E7CC0];
        }

        a3 = v46;
        goto LABEL_30;
      }
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v34 = sub_1C1A6F1BC();
  sub_1C1994600(v34, qword_1EDE665F0);
  v35 = sub_1C1A6F19C();
  v36 = sub_1C1A6F66C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1C198D000, v35, v36, "Attempting to initialize a carousel ad view without a list of elements.", v37, 2u);
    MEMORY[0x1C6906260](v37, -1, -1);
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_30:
  *&a3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_elements] = v26;
  v38 = objc_allocWithZone(type metadata accessor for PrivacyMarker());
  v39 = PrivacyMarker.init(adjustsFontForContentSizeCategory:)(0);
  v40 = sub_1C19F6E34(a1, 0, v39, a2, a3);

  return v40;
}

void *sub_1C1A60F44(void *a1, void *a2)
{
  swift_getObjectType();
  [a1 serverUnfilledReason];
  v4 = sub_1C1A6DF6C();
  if (v4 != sub_1C1A6DF6C())
  {
    sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v5 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C1A73A30;
    v7 = [a1 identifier];
    v8 = sub_1C1A6F3CC();
    v10 = v9;

    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1C199E518();
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    sub_1C1A6F18C();

    v11 = [objc_opt_self() sharedApplication];
    goto LABEL_6;
  }

  if ([a1 bestRepresentation])
  {
    sub_1C1A6E33C();
    if (swift_dynamicCastClass())
    {
      sub_1C1A6E30C();
    }

    swift_unknownObjectRelease();
  }

  if ([a1 bestRepresentation] && (sub_1C1A6E68C(), v17 = swift_dynamicCastClass(), swift_unknownObjectRelease(), v17))
  {
    [a1 adType];
    v18 = sub_1C1A6DEAC();
    v19 = v18 != sub_1C1A6DEAC();
  }

  else
  {
    v19 = 0;
  }

  [a1 serverUnfilledReason];
  v20 = sub_1C1A6DF6C();
  if (v20 != sub_1C1A6DF6C() || ([a1 placeholder] & 1) != 0 || sub_1C1A60824(objc_msgSend(a1, sel_adType), &unk_1F413F240))
  {
    v21 = 0;
  }

  else
  {
    v42 = sub_1C1A6E05C();
    v21 = v42 == sub_1C1A6E05C() && !v19;
  }

  v11 = [objc_opt_self() sharedApplication];
  if (!v21)
  {
    [a1 adType];
    v35 = sub_1C1A6DEAC();
    if (v35 == sub_1C1A6DEAC())
    {
      v12 = objc_allocWithZone(type metadata accessor for NewsAdView());
      *&v12[OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_newsAdView] = 0;
      v12[OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_nativeArticleOnDisplay] = 0;
      v36 = OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_oldPercentageTimestamp;
      v37 = sub_1C1A6F25C();
      v38 = *(*(v37 - 8) + 56);
      v38(&v12[v36], 1, 1, v37);
      v38(&v12[OBJC_IVAR____TtC17PromotedContentUI10NewsAdView_newPercentageTimestamp], 1, 1, v37);
      goto LABEL_7;
    }

    v39 = sub_1C1A6E05C();
    if (v39 != sub_1C1A6E05C())
    {
      v12 = objc_allocWithZone(type metadata accessor for AppAdView());
      *&v12[OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___appView] = 0;
      *&v12[OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___topBorder] = 0;
      *&v12[OBJC_IVAR____TtC17PromotedContentUI9AppAdView____lazy_storage___bottomBorder] = 0;
      goto LABEL_7;
    }

    if (v19)
    {
      v40 = objc_allocWithZone(type metadata accessor for CarouselAdView());
      v41 = swift_unknownObjectRetain();
      v15 = sub_1C1A6088C(v41, v11, v40);
      swift_unknownObjectRelease();
      return v15;
    }

LABEL_6:
    v12 = objc_allocWithZone(type metadata accessor for PromotedContentView());
LABEL_7:
    v13 = a2;
    v14 = swift_unknownObjectRetain();
    v15 = sub_1C19F6E34(v14, 0, a2, v11, v12);
    swift_unknownObjectRelease();

    return v15;
  }

  v22 = sub_1C1A1CAB4(a1, [a1 isOutstreamVideoAd]);
  swift_unknownObjectRelease();
  v23 = objc_allocWithZone(type metadata accessor for WebAdView());
  v24 = OBJC_IVAR____TtC17PromotedContentUI9WebAdView_webView;
  *&v23[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_webView] = 0;
  *&v23[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_videoProgressMetricThresholds] = &unk_1F413F270;
  v23[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_webViewDebugging] = 0;
  *&v23[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_outstreamVisibleThreshold] = 50;
  *&v23[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_nonOutstreamVisibleThreshold] = 95;
  v25 = OBJC_IVAR____TtC17PromotedContentUI9WebAdView_mraidActionTypes;
  v26 = a2;
  swift_unknownObjectRetain();
  *&v23[v25] = sub_1C1A4D4A0(&unk_1F413F2A8);
  v27 = OBJC_IVAR____TtC17PromotedContentUI9WebAdView_videoProgressMetricStatus;
  *&v23[v27] = sub_1C19B7188(MEMORY[0x1E69E7CC0]);
  v28 = OBJC_IVAR____TtC17PromotedContentUI9WebAdView_unfairLock;
  *&v23[v28] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v23[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_navigationCoordinator] = 0;
  v23[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_isAppActive] = 1;
  v23[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_needToUpdateVisibility] = 0;
  v29 = *&v23[v24];
  *&v23[v24] = v22;
  v30 = v22;

  swift_unknownObjectRetain();
  v31 = v26;
  v32 = v30;
  v33 = sub_1C19F6E34(a1, v22, a2, v11, v23);
  swift_unknownObjectRelease();

  sub_1C198FB8C(0, &qword_1EDE63970);
  v34 = v33;
  LOBYTE(v33) = sub_1C19CEE94();

  swift_unknownObjectRelease();
  *(v34 + OBJC_IVAR____TtC17PromotedContentUI9WebAdView_webViewDebugging) = v33 & 1;

  return v34;
}

uint64_t sub_1C1A615E0(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF04E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppStoreInteractionType.hashValue.getter()
{
  v1 = *v0;
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](v1);
  return sub_1C1A6FDDC();
}

unint64_t sub_1C1A616D4()
{
  result = qword_1EBF04E88;
  if (!qword_1EBF04E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04E88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppStoreInteractionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppStoreInteractionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C1A61878(uint64_t a1)
{
  v2 = type metadata accessor for CarouselElement();
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = &v6[*(v3 + 32)];
    v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C19F4614(v9, v6);
      v14 = *v8;
      v13 = *(v8 + 1);

      sub_1C19F4678(v6);
      if (v13)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1C19CADF4(0, *(v11 + 2) + 1, 1, v11);
        }

        v16 = *(v11 + 2);
        v15 = *(v11 + 3);
        if (v16 >= v15 >> 1)
        {
          v11 = sub_1C19CADF4((v15 > 1), v16 + 1, 1, v11);
        }

        *(v11 + 2) = v16 + 1;
        v12 = &v11[16 * v16];
        *(v12 + 4) = v14;
        *(v12 + 5) = v13;
      }

      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v17 = *(v11 + 2);
  if (v17)
  {
    v18 = *(v11 + 4);

    if (v17 == 1)
    {
      v20 = v18;
    }

    else
    {
      v21 = v11 + 40;
      v22 = 1;
      v26 = v11 + 40;
      v27 = v17 - 1;
      while (2)
      {
        v23 = &v21[16 * v22];
        v24 = v22;
        while (1)
        {
          if (v24 >= *(v11 + 2))
          {
            __break(1u);
            return result;
          }

          v20 = *(v23 - 1);
          v22 = v24 + 1;

          v25 = sub_1C1A6F46C();
          if (sub_1C1A6F46C() < v25)
          {
            break;
          }

          v23 += 16;
          ++v24;
          if (v17 == v22)
          {
            v20 = v18;
            goto LABEL_22;
          }
        }

        v18 = v20;
        v21 = v26;
        if (v27 != v24)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  else
  {

    return 0;
  }

  return v20;
}

uint64_t sub_1C1A61AE8(uint64_t a1)
{
  v2 = type metadata accessor for CarouselElement();
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = &v6[*(v3 + 28)];
    v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C19F4614(v9, v6);
      v13 = *v8;
      v12 = *(v8 + 1);

      sub_1C19F4678(v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1C19CADF4(0, *(v11 + 2) + 1, 1, v11);
      }

      v15 = *(v11 + 2);
      v14 = *(v11 + 3);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v11 = sub_1C19CADF4((v14 > 1), v15 + 1, 1, v11);
      }

      *(v11 + 2) = v16;
      v17 = &v11[16 * v15];
      *(v17 + 4) = v13;
      *(v17 + 5) = v12;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
    v16 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v16)
    {

      return 0;
    }
  }

  v18 = *(v11 + 4);

  if (v16 == 1)
  {
    v20 = v18;
  }

  else
  {
    v21 = v11 + 40;
    v22 = 1;
    v26 = v11 + 40;
    v27 = v16 - 1;
    while (2)
    {
      v23 = &v21[16 * v22];
      v24 = v22;
      while (1)
      {
        if (v24 >= *(v11 + 2))
        {
          __break(1u);
          return result;
        }

        v20 = *(v23 - 1);
        v22 = v24 + 1;

        v25 = sub_1C1A6F46C();
        if (sub_1C1A6F46C() < v25)
        {
          break;
        }

        v23 += 16;
        ++v24;
        if (v16 == v22)
        {
          v20 = v18;
          goto LABEL_19;
        }
      }

      v18 = v20;
      v21 = v26;
      if (v27 != v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  return v20;
}

uint64_t sub_1C1A61D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7)
{
  v8 = v7;
  v57 = sub_1C1A6D5DC();
  v16 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v48 - v19;
  v20 = *a7;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  *(v8 + 72) = a6;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = 0x4014000000000000;
  if (a5)
  {
    v51 = v16;
    v52 = v23 + 16;
    v53 = v22 + 16;
    v54 = v21 + 16;
    v55 = v20;
    sub_1C1A6D5CC();
    v24 = dispatch_semaphore_create(3);
    v25 = sub_1C1A6F39C();
    v26 = [a5 BOOLForKey_];

    v27 = swift_allocObject();
    *(v27 + 16) = v22;
    *(v27 + 24) = v24;
    v63 = sub_1C1A62798;
    v64 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_1C1A62440;
    v62 = &unk_1F4142D60;
    v28 = _Block_copy(&aBlock);

    v29 = v24;

    v50 = v26;
    [v26 valueWithCompletion_];
    _Block_release(v28);
    v30 = sub_1C1A6F39C();
    v31 = [a5 BOOLForKey_];

    v32 = swift_allocObject();
    *(v32 + 16) = v21;
    *(v32 + 24) = v29;
    v63 = sub_1C1A62728;
    v64 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_1C1A62440;
    v62 = &unk_1F4142DB0;
    v33 = _Block_copy(&aBlock);
    v34 = v29;

    v49 = v31;
    [v31 valueWithCompletion_];
    _Block_release(v33);
    v35 = sub_1C1A6F39C();
    v36 = [a5 doubleForKey_];

    v37 = swift_allocObject();
    *(v37 + 16) = v23;
    *(v37 + 24) = v34;
    v63 = sub_1C1A62784;
    v64 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_1C1A62440;
    v62 = &unk_1F4142E00;
    v38 = _Block_copy(&aBlock);
    v39 = v34;

    [v36 valueWithCompletion_];
    _Block_release(v38);
    sub_1C1A6F73C();
    if ([objc_opt_self() isAppleInternalInstall])
    {
      v48 = v36;
      v40 = v56;
      sub_1C1A6D5CC();
      sub_1C1A6D50C();
      v42 = v41;
      v43 = *(v51 + 8);
      v44 = v57;
      v43(v40, v57);
      if (v42 > 0.1)
      {
        aBlock = 0;
        v60 = 0xE000000000000000;
        sub_1C1A6FACC();
        MEMORY[0x1C6904F50](0xD000000000000022, 0x80000001C1A83BA0);
        sub_1C1A6F5DC();
        v45 = sub_1C1A6F39C();
        v56 = v43;
        v46 = v45;

        APSimulateCrash();

        swift_unknownObjectRelease();
        (v56)(v58, v44);
LABEL_8:
        v20 = v55;
        goto LABEL_9;
      }

      v43(v58, v44);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v51 + 8))(v58, v57);
      swift_unknownObjectRelease();
    }

    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  *(v8 + 17) = *(v21 + 16);
  swift_beginAccess();
  *(v8 + 16) = *(v22 + 16);
  swift_beginAccess();
  *(v8 + 24) = *(v23 + 16);
  *(v8 + 32) = v20;

  return v8;
}

void sub_1C1A62440(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1C1A624D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = [a1 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  swift_beginAccess();
  *(a4 + 16) = v5;
  return sub_1C1A6F74C();
}

uint64_t sub_1C1A62540(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    [a1 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 5.0;
  }

  swift_beginAccess();
  *(a4 + 16) = v6;
  return sub_1C1A6F74C();
}

uint64_t sub_1C1A625AC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C1A62624(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    v2 = a1;
    v3 = a2;
    v4 = sub_1C1A6FCEC();
    a2 = v3;
    v5 = v4;
    a1 = v2;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64))
  {
    v6 = a1;
    v7 = a2;
    v8 = sub_1C1A6FCEC();
    a2 = v7;
    v9 = v8;
    a1 = v6;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 72);
  v11 = *(a2 + 72);

  return sub_1C1A27E38(v10, v11);
}

uint64_t sub_1C1A62744()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1C1A627CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrackedInstance();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1A62834()
{

  return swift_deallocClassInstance();
}

__n128 sub_1C1A62890(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C1A628A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C1A628EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1C1A62944()
{
  v1 = v0;
  result = sub_1C19A3828(0);
  if (*(v0 + OBJC_IVAR___APPCMetricsView_currentlyViewable) == 1)
  {
    *(v0 + OBJC_IVAR___APPCMetricsView_currentlyViewable) = 0;
    sub_1C19DF3D8();
    sub_1C1A6F64C();
    sub_1C199E4CC();
    v3 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C1A73A30;
    v6 = *(v1 + OBJC_IVAR___APPCMetricsView_identifier);
    v5 = *(v1 + OBJC_IVAR___APPCMetricsView_identifier + 8);
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1C199E518();
    *(v4 + 32) = v6;
    *(v4 + 40) = v5;

    sub_1C1A6F18C();
  }

  return result;
}

void sub_1C1A62AB4()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    sub_1C19DACB8(0, 0, 0);
  }

  else
  {
    v0 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1C19DACB8(0, sub_1C19A1494, v0);
  }
}

uint64_t sub_1C1A62B70()
{
  v1 = v0;
  sub_1C1A6F64C();
  sub_1C199E4CC();
  v2 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1A73A30;
  v4 = OBJC_IVAR___APPCMetricsView_promotedContent;
  v5 = [*(v1 + OBJC_IVAR___APPCMetricsView_promotedContent) identifier];
  v6 = sub_1C1A6F3CC();
  v8 = v7;

  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1C199E518();
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  sub_1C1A6F18C();

  *(v1 + OBJC_IVAR___APPCMetricsView_wasTapped) = 1;
  [objc_msgSend(*(v1 + v4) metricsHelper)];

  return swift_unknownObjectRelease();
}

uint64_t sub_1C1A62CFC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;

  v6 = sub_1C1A6DAFC();

  swift_beginAccess();
  *(v4 + 16) = v6;

  return v6;
}

uint64_t sub_1C1A62DE8(void *a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v8 = sub_1C1A6D62C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v13 = sub_1C1A6F1BC();
  sub_1C1994600(v13, qword_1EDE665F0);

  v14 = sub_1C1A6F19C();
  v15 = sub_1C1A6F67C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39 = a3;
    v18 = v17;
    v40[0] = v17;
    *v16 = 136315394;
    swift_beginAccess();
    v37 = a4;
    v38 = v9;
    v19 = v11;
    v20 = a2;
    v21 = v8;
    v22 = v12[4];
    v23 = v12[5];

    v24 = sub_1C19A1884(v22, v23, v40);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    swift_beginAccess();
    v25 = v12[8];
    v26 = v12[9];

    v27 = sub_1C19A1884(v25, v26, v40);
    v8 = v21;
    a2 = v20;
    v11 = v19;

    *(v16 + 14) = v27;
    v9 = v38;
    _os_log_impl(&dword_1C198D000, v14, v15, "[ContentProviderPlugin] Resolving content with AdamId %s received from context %s", v16, 0x16u);
    swift_arrayDestroy();
    v28 = v18;
    a3 = v39;
    MEMORY[0x1C6906260](v28, -1, -1);
    MEMORY[0x1C6906260](v16, -1, -1);
  }

  swift_beginAccess();
  if (*(a2 + 16))
  {
    v29 = *(a2 + 16);
  }

  else
  {
    sub_1C1A6D61C();
    v39 = sub_1C1A6D5EC();
    v31 = v30;
    (*(v9 + 8))(v11, v8);
    swift_beginAccess();
    v33 = v12[8];
    v32 = v12[9];
    swift_beginAccess();
    v35 = v12[10];
    v34 = v12[11];
    type metadata accessor for AppStoreRequestTask();
    v29 = swift_allocObject();
    *(v29 + 96) = 0;
    *(v29 + 64) = 0;
    *(v29 + 72) = 0;
    swift_unknownObjectWeakInit();
    *(v29 + 104) = 0;
    *(v29 + 112) = 0;
    *(v29 + 120) = 0;

    sub_1C1A6D5CC();
    *(v29 + 16) = v39;
    *(v29 + 24) = v31;
    *(v29 + 48) = v33;
    *(v29 + 56) = v32;
    *(v29 + 32) = v35;
    *(v29 + 40) = v34;
    *(v29 + 80) = 7005;
  }

  a3(v12, v29);
}

uint64_t sub_1C1A6318C()
{

  sub_1C199935C(v0 + 24);
  sub_1C199935C(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1C1A63200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[1] = a4;
  v7 = sub_1C1A6DD3C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1994048(v5 + 3, v5[6]);
  sub_1C1A6ED7C();
  *(*sub_1C1994048(v5 + 8, v5[11]) + 16) = a5;

  (*(v8 + 104))(v10, *MEMORY[0x1E69C5F10], v7);
  sub_1C1A6DB0C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1C1A63388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C1A6FDAC();
  sub_1C1A6F45C();
  v6 = sub_1C1A6FDDC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1C1A6FCEC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1C1A63480(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1C1A6FDAC();
  v3 = sub_1C1A6DECC();
  MEMORY[0x1C6905870](v3);
  v4 = sub_1C1A6FDDC();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = sub_1C1A6DECC();
    v9 = v8 == sub_1C1A6DECC();
    result = v9;
    if (v9)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void sub_1C1A63568()
{

  v1 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI9WebAdView_navigationCoordinator);
}

id WebAdView.__deallocating_deinit()
{
  v1 = v0;
  sub_1C1A6F65C();
  sub_1C199E4CC();
  v2 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1A73CD0;
  v4 = *&v1[OBJC_IVAR___APPCPromotedContentView_promotedContent];
  v5 = v1;
  v6 = [v4 journeyIdentifier];
  v7 = sub_1C1A6F3CC();
  v9 = v8;

  v10 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1C199E518();
  *(v3 + 64) = v11;
  *(v3 + 32) = v7;
  *(v3 + 40) = v9;
  v12 = [v5 description];
  v13 = sub_1C1A6F3CC();
  v15 = v14;

  *(v3 + 96) = v10;
  *(v3 + 104) = v11;
  *(v3 + 72) = v13;
  *(v3 + 80) = v15;
  sub_1C1A6F18C();

  v16 = *&v5[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_webView];
  if (v16)
  {
    v17 = v16;
    sub_1C1A65B5C();
  }

  v19.receiver = v5;
  v19.super_class = type metadata accessor for WebAdView();
  return objc_msgSendSuper2(&v19, sel_dealloc);
}

uint64_t sub_1C1A6386C()
{
  v1 = v0;
  sub_1C1A6F65C();
  sub_1C199E4CC();
  v2 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1A73CD0;
  v4 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v5 = [*&v1[OBJC_IVAR___APPCPromotedContentView_promotedContent] journeyIdentifier];
  v6 = sub_1C1A6F3CC();
  v8 = v7;

  v9 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1C199E518();
  *(v3 + 64) = v10;
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  v11 = [v1 description];
  v12 = sub_1C1A6F3CC();
  v14 = v13;

  *(v3 + 96) = v9;
  *(v3 + 104) = v10;
  *(v3 + 72) = v12;
  *(v3 + 80) = v14;
  sub_1C1A6F18C();

  v15 = OBJC_IVAR____TtC17PromotedContentUI9WebAdView_webView;
  v16 = *&v1[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_webView];
  if (v16)
  {
    v17 = v16;
    sub_1C1A65B5C();

    v18 = *&v1[v15];
    if (v18)
    {
      [v18 removeFromSuperview];
      v16 = *&v1[v15];
    }

    else
    {
      v16 = 0;
    }
  }

  *&v1[v15] = 0;

  [objc_msgSend(*&v1[v4] metricsHelper)];

  return swift_unknownObjectRelease();
}

void sub_1C1A63B28(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for WebAdView();
  v21.receiver = v4;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, sel_frame);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v20.receiver = v4;
  v20.super_class = v9;
  objc_msgSendSuper2(&v20, sel_setFrame_, a1, a2, a3, a4);
  [v4 frame];
  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  if (!CGRectEqualToRect(v22, v23))
  {
    v18 = *&v4[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_webView];
    if (v18)
    {
      v19 = v18;
      [v4 bounds];
      [v19 setFrame_];
    }
  }
}

void sub_1C1A63C34()
{
  sub_1C1999AD0();

  sub_1C1A63C5C();
}

void sub_1C1A63C5C()
{
  v1 = *&v0[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_webView];
  if (v1)
  {
    v2 = type metadata accessor for WebAdNavigationCoordinator();
    v3 = objc_allocWithZone(v2);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v12.receiver = v3;
    v12.super_class = v2;
    v4 = v1;
    v5 = objc_msgSendSuper2(&v12, sel_init);
    v6 = *&v0[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_navigationCoordinator];
    *&v0[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_navigationCoordinator] = v5;
    v7 = v5;

    v8 = v4;
    [v8 setNavigationDelegate_];

    v9 = OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_unfairLock;
    [*&v8[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_unfairLock] lock];
    *&v8[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView__processDelegate + 8] = &off_1F4140448;
    swift_unknownObjectWeakAssign();
    [*&v8[v9] unlock];
    [v8 setUIDelegate_];

    v10 = [*&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent] campaignText];
    if (v10)
    {
      v11 = v10;
      [v8 setRemoteInspectionNameOverride_];
    }

    [v0 insertSubview:v8 belowSubview:*&v0[OBJC_IVAR___APPCPromotedContentView_dimmerView]];
  }
}

uint64_t sub_1C1A63DF8()
{
  v1 = *&v0[OBJC_IVAR____TtC17PromotedContentUI9WebAdView_webView];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = *&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent];
  v3 = v1;
  if (![v2 isOutstreamVideoAd])
  {

LABEL_5:
    sub_1C19A9E58(&qword_1EBF03768);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C1A73CD0;
    *(v4 + 56) = type metadata accessor for PromotedContentView();
    *(v4 + 32) = v0;
    v5 = *&v0[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView];
    *(v4 + 88) = type metadata accessor for PrivacyMarker();
    *(v4 + 64) = v5;
    goto LABEL_6;
  }

  sub_1C19A9E58(&qword_1EBF03768);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1A74920;
  *(v4 + 56) = type metadata accessor for WebAdView();
  *(v4 + 32) = v0;
  *(v4 + 88) = type metadata accessor for PromotedContentWebView();
  *(v4 + 64) = v3;
  v5 = *&v0[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView];
  *(v4 + 120) = type metadata accessor for PrivacyMarker();
  *(v4 + 96) = v5;
LABEL_6:
  v6 = v5;
  v7 = v0;
  return v4;
}

uint64_t sub_1C1A63F3C(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 1;
  }

  v3 = v2;
  v5 = sub_1C1A6EA1C();
  v6 = [a2 tapAction];
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  v8 = sub_1C1A6EA1C();

  v9 = *(v3 + OBJC_IVAR____TtC17PromotedContentUI9WebAdView_mraidActionTypes);
  v10 = sub_1C1A63480(v5, v9) && sub_1C1A63480(v8, v9);
  v12 = sub_1C1A6DECC();
  v13 = sub_1C1A6DECC();
  result = 1;
  if (!v10 && v12 != v13)
  {
    sub_1C1A6F66C();
    sub_1C199E4CC();
    v14 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C1A73CD0;
    v16 = sub_1C1A6DEBC();
    v18 = v17;
    v19 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v20 = sub_1C199E518();
    *(v15 + 64) = v20;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v21 = sub_1C1A6DEBC();
    *(v15 + 96) = v19;
    *(v15 + 104) = v20;
    *(v15 + 72) = v21;
    *(v15 + 80) = v22;
    sub_1C1A6F18C();

    return 0;
  }

  return result;
}

uint64_t sub_1C1A6410C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___APPCPromotedContentView_visiblePercentage);
  *(v1 + OBJC_IVAR___APPCPromotedContentView_visiblePercentage) = a1;
  result = [*(v1 + OBJC_IVAR___APPCPromotedContentView_promotedContent) isOutstreamVideoAd];
  if (result)
  {
    if (v3 <= 49)
    {
      if (a1 < 50)
      {
        return result;
      }

      goto LABEL_7;
    }

    if (a1 > 49)
    {
      return result;
    }
  }

  else
  {
    if (v3 <= 94)
    {
      if (a1 < 95)
      {
        return result;
      }

LABEL_7:
      if ((*(v1 + OBJC_IVAR____TtC17PromotedContentUI9WebAdView_isAppActive) & 1) == 0)
      {
        *(v1 + OBJC_IVAR____TtC17PromotedContentUI9WebAdView_needToUpdateVisibility) = 1;
        return result;
      }

      v5 = 1;
      goto LABEL_13;
    }

    if (a1 >= 95)
    {
      return result;
    }
  }

  v5 = 0;
LABEL_13:

  return sub_1C1A21E48(v5);
}

void sub_1C1A641EC()
{
  v1 = v0;
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI9WebAdView_webView);
  if (v2 && (v3 = *(v2 + OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_webProcessProxy)) != 0)
  {
    v4 = *(v0 + OBJC_IVAR___APPCPromotedContentView_privacyMarkerView);
    swift_unknownObjectRetain();
    v5 = v4;
    sub_1C1A3BFA0(v5, v25);

    sub_1C1A6D23C();
    swift_allocObject();
    sub_1C1A6D22C();
    v26[2] = v25[2];
    v26[3] = v25[3];
    v26[4] = v25[4];
    v26[5] = v25[5];
    v26[0] = v25[0];
    v26[1] = v25[1];
    sub_1C1A221B4();
    v12 = sub_1C1A6D21C();
    v14 = v13;

    sub_1C19FE970(v25);
    v15 = objc_opt_self();
    v16 = sub_1C1A6D4AC();
    *&v26[0] = 0;
    v17 = [v15 JSONObjectWithData:v16 options:0 error:v26];

    if (v17)
    {
      v18 = *&v26[0];
      sub_1C1A6F92C();
      swift_unknownObjectRelease();
      sub_1C19A9E58(&qword_1EBF03DD0);
      if (swift_dynamicCast())
      {
        v19 = v24;
      }

      else
      {
        v19 = sub_1C19B7074(MEMORY[0x1E69E7CC0]);
      }

      sub_1C19CFDE0(v12, v14);
    }

    else
    {
      v20 = *&v26[0];
      v21 = sub_1C1A6D3BC();

      swift_willThrow();
      v22 = v21;
      sub_1C19CFDE0(v12, v14);
      v19 = sub_1C19B7074(MEMORY[0x1E69E7CC0]);
    }

    sub_1C1A1E190(v19);

    v23 = sub_1C1A6F2FC();

    [v3 contentSizeDidChange_];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C199E4CC();
    v6 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C1A73A30;
    v8 = [*(v1 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
    v9 = sub_1C1A6F3CC();
    v11 = v10;

    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1C199E518();
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    sub_1C1A6F18C();
  }
}

void sub_1C1A646CC()
{
  [v0 setIsAccessibilityElement_];
  v1 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  v2 = [*&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent] campaignText];
  [v0 setAccessibilityLabel_];

  if (![*&v0[v1] isOutstreamVideoAd])
  {
    [*&v0[v1] adType];
    sub_1C1A6DEAC();
    sub_1C1A6DEAC();
  }

  v3 = sub_1C1A6F39C();
  [v0 setAccessibilityIdentifier_];
}

void sub_1C1A64834()
{
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = [v1 mainBundle];
  sub_1C1996754();
  LOBYTE(v1) = sub_1C1A6F7BC();

  if (v1)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v4 = sub_1C1A6D31C();
    v6 = v5;

    qword_1EDE66528 = v4;
    unk_1EDE66530 = v6;
  }
}

void sub_1C1A64980()
{
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = [v1 mainBundle];
  sub_1C1996754();
  LOBYTE(v1) = sub_1C1A6F7BC();

  if (v1)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v4 = sub_1C1A6D31C();
    v6 = v5;

    qword_1EDE66518 = v4;
    unk_1EDE66520 = v6;
  }
}

void sub_1C1A64AD4()
{
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = [v1 mainBundle];
  sub_1C1996754();
  LOBYTE(v1) = sub_1C1A6F7BC();

  if (v1)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v4 = sub_1C1A6D31C();
    v6 = v5;

    qword_1EDE664D0 = v4;
    *algn_1EDE664D8 = v6;
  }
}

void sub_1C1A64C2C()
{
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = [v1 mainBundle];
  sub_1C1996754();
  LOBYTE(v1) = sub_1C1A6F7BC();

  if (v1)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v4 = sub_1C1A6D31C();
    v6 = v5;

    qword_1EDE664A0 = v4;
    *algn_1EDE664A8 = v6;
  }
}

void sub_1C1A64D88()
{
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = [v1 mainBundle];
  sub_1C1996754();
  LOBYTE(v1) = sub_1C1A6F7BC();

  if (v1)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v4 = sub_1C1A6D31C();
    v6 = v5;

    qword_1EDE664C0 = v4;
    *algn_1EDE664C8 = v6;
  }
}

void sub_1C1A64EE4()
{
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = [v1 mainBundle];
  sub_1C1996754();
  LOBYTE(v1) = sub_1C1A6F7BC();

  if (v1)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v4 = sub_1C1A6D31C();
    v6 = v5;

    qword_1EDE664B0 = v4;
    *algn_1EDE664B8 = v6;
  }
}

void sub_1C1A65048()
{
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = [v1 mainBundle];
  sub_1C1996754();
  LOBYTE(v1) = sub_1C1A6F7BC();

  if (v1)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v4 = sub_1C1A6D31C();
    v6 = v5;

    qword_1EDE66490 = v4;
    *algn_1EDE66498 = v6;
  }
}

void sub_1C1A651A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = sub_1C1A6F39C();
    if (a4)
    {
LABEL_3:
      v9 = sub_1C1A6F2FC();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, v8, a3 & 1);
}

uint64_t sub_1C1A65254()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_unfairLock;
  [*(v0 + OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_unfairLock) lock];
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C199E4CC();
    v3 = sub_1C1A6F8EC();
    sub_1C1A6F18C();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  [*(v1 + v2) unlock];
  return Strong;
}

uint64_t sub_1C1A6547C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  [v4 frame];
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  result = CGRectEqualToRect(v22, v23);
  if ((result & 1) == 0)
  {
    sub_1C1A6F65C();
    sub_1C199E4CC();
    v11 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C1A73CD0;
    v13 = [v5 description];
    v14 = sub_1C1A6F3CC();
    v16 = v15;

    v17 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v18 = sub_1C199E518();
    *(v12 + 64) = v18;
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    [v5 frame];
    v19 = sub_1C1A6F76C();
    *(v12 + 96) = v17;
    *(v12 + 104) = v18;
    *(v12 + 72) = v19;
    *(v12 + 80) = v20;
    sub_1C1A6F18C();
  }

  return result;
}

uint64_t sub_1C1A65648()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for PromotedContentWebView();
  objc_msgSendSuper2(&v18, sel_didMoveToSuperview);
  sub_1C1A6F65C();
  sub_1C199E4CC();
  v2 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1A73CD0;
  v4 = [v1 description];
  v5 = sub_1C1A6F3CC();
  v7 = v6;

  v8 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1C199E518();
  *(v3 + 64) = v9;
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v10 = [v1 superview];
  if (!v10)
  {
    v16 = (v3 + 72);
    *(v3 + 96) = v8;
    *(v3 + 104) = v9;
    goto LABEL_5;
  }

  v11 = v10;
  v12 = [v10 debugDescription];

  v13 = sub_1C1A6F3CC();
  v15 = v14;

  v16 = (v3 + 72);
  *(v3 + 96) = v8;
  *(v3 + 104) = v9;
  if (!v15)
  {
LABEL_5:
    *v16 = 1701736270;
    v15 = 0xE400000000000000;
    goto LABEL_6;
  }

  *v16 = v13;
LABEL_6:
  *(v3 + 80) = v15;
  sub_1C1A6F18C();
}

id sub_1C1A6588C()
{
  v1 = v0;
  sub_1C1A6F65C();
  sub_1C199E4CC();
  v2 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  v4.receiver = v1;
  v4.super_class = type metadata accessor for PromotedContentWebView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1C1A65AA0()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_remoteObjectInterface;
  swift_beginAccess();
  sub_1C19C5408(v0 + v1, v5);
  v2 = v6;
  result = sub_1C19C5478(v5);
  if (!v2)
  {
    v4 = [v0 registerExportedObjectInterface_];
    sub_1C1A6F92C();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1C1A669D0(v5, v0 + v1);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C1A65B5C()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_remoteObjectInterface;
  swift_beginAccess();
  sub_1C19C5408(v0 + v1, &v3);
  if (!*(&v4 + 1))
  {
    return sub_1C19C5478(&v3);
  }

  sub_1C19916E4(&v3, &v5);
  sub_1C1994048(&v5, v6);
  [v0 unregisterExportedObject:v0 interface:sub_1C1A6FCDC()];
  swift_unknownObjectRelease();
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_1C1A669D0(&v3, v0 + v1);
  swift_endAccess();
  return sub_1C199935C(&v5);
}

uint64_t sub_1C1A65C9C()
{
  v1 = v0;
  sub_1C1A6F64C();
  sub_1C199E4CC();
  v2 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  v3 = [v1 remoteObjectProxyWithInterface];
  *&v1[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_webProcessProxy] = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  v4 = sub_1C1A6F39C();

  v5 = sub_1C1A6F63C();
  [v3 setWebViewProcessAdIdentifier:v4 maxRequestCount:v5];

  result = swift_unknownObjectRelease();
  v1[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_browserContextControllerDidLoad] = 1;
  return result;
}

uint64_t sub_1C1A65E40()
{
  v1 = v0;
  sub_1C1A6F64C();
  sub_1C199E4CC();
  v2 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  v3 = OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_unfairLock;
  [*&v1[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_unfairLock] lock];
  *&v1[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView__processDelegate + 8] = 0;
  swift_unknownObjectWeakAssign();
  [*&v1[v3] unlock];
  *&v1[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_webProcessProxy] = 0;
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_remoteObjectInterface;
  swift_beginAccess();
  sub_1C19C5408(&v1[v4], &v6);
  if (!v7)
  {
    return sub_1C19C5478(&v6);
  }

  sub_1C19916E4(&v6, &v8);
  sub_1C1994048(&v8, v9);
  [v1 unregisterExportedObject:v1 interface:sub_1C1A6FCDC()];
  swift_unknownObjectRelease();
  return sub_1C199935C(&v8);
}

uint64_t sub_1C1A664B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_1C1A6F3CC();
    v9 = v8;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  v9 = 0;
  if (a4)
  {
LABEL_3:
    v4 = sub_1C1A6F31C();
  }

LABEL_4:

  v6(v7, v9, a3, v4);
}

void sub_1C1A666EC(void *a1, uint64_t a2, SEL *a3)
{
  v6 = a1;
  v4 = sub_1C1A65254();
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector_])
    {
      [v5 *a3];
    }

    swift_unknownObjectRelease();
  }
}

void sub_1C1A66860(void *a1, float a2, uint64_t a3, SEL *a4)
{
  v9 = a1;
  v6 = sub_1C1A65254();
  if (v6)
  {
    v7 = v6;
    if ([v6 respondsToSelector_])
    {
      *&v8 = a2;
      [v7 *a4];
    }

    swift_unknownObjectRelease();
  }
}

void sub_1C1A66934(void *a1, float a2, float a3, uint64_t a4, SEL *a5)
{
  v12 = a1;
  v8 = sub_1C1A65254();
  if (v8)
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      *&v10 = a2;
      *&v11 = a3;
      [v9 *a5];
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C1A669D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF03BD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C1A66A40()
{
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView__processDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_webProcessProxy) = 0;
  v1 = (v0 + OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_remoteObjectInterface);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_browserContextControllerDidLoad) = 0;
  v2 = OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_unfairLock;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  sub_1C1A6FB8C();
  __break(1u);
}

uint64_t sub_1C1A66B0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0065676175676ELL;
  v3 = 0x614C656369766544;
  v4 = a1;
  v5 = 0x72656B72614D6441;
  v6 = 0xED00006874646957;
  v7 = 0x72656B72614D6441;
  v8 = 0xEE00746867696548;
  if (a1 != 4)
  {
    v7 = 0xD000000000000015;
    v8 = 0x80000001C1A790C0;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x657A6953746E6F46;
  if (a1 != 1)
  {
    v10 = 0x615272656E726F43;
    v9 = 0xEC00000073756964;
  }

  if (!a1)
  {
    v10 = 0x614C656369766544;
    v9 = 0xEE0065676175676ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xED00006874646957;
      if (v11 != 0x72656B72614D6441)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEE00746867696548;
      if (v11 != 0x72656B72614D6441)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0x80000001C1A790C0;
      if (v11 != 0xD000000000000015)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x657A6953746E6F46)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x615272656E726F43;
      v2 = 0xEC00000073756964;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1C1A6FCEC();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1C1A66D28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6E65746E6F437061;
    }

    else
    {
      v5 = 0x747865746E6F63;
    }

    if (v2)
    {
      v6 = 0xE900000000000074;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v3 = 0x6F724665726F7473;
    v4 = 0xEA0000000000746ELL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
      v4 = 0x80000001C1A79180;
    }

    if (a1 == 2)
    {
      v5 = 0x7472617473;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x6E65746E6F437061;
    }

    else
    {
      v11 = 0x747865746E6F63;
    }

    if (a2)
    {
      v10 = 0xE900000000000074;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x6F724665726F7473;
    v8 = 0x80000001C1A79180;
    if (a2 == 3)
    {
      v8 = 0xEA0000000000746ELL;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v9 = 0x7472617473;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1C1A6FCEC();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1C1A66EC8()
{
  sub_1C1A6FDAC();
  sub_1C1A6F45C();

  return sub_1C1A6FDDC();
}

uint64_t sub_1C1A66FB4()
{
  sub_1C1A6F45C();
}

uint64_t sub_1C1A6708C()
{
  sub_1C1A6FDAC();
  sub_1C1A6F45C();

  return sub_1C1A6FDDC();
}

uint64_t sub_1C1A67174@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1A6854C();
  *a1 = result;
  return result;
}

void sub_1C1A671A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x747865746E6F63;
  v5 = 0xE500000000000000;
  v6 = 0x7472617473;
  v7 = 0xEA0000000000746ELL;
  v8 = 0x6F724665726F7473;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001C1A79180;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E65746E6F437061;
    v3 = 0xE900000000000074;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1C1A6724C()
{
  v1 = *v0;
  v2 = 0x747865746E6F63;
  v3 = 0x7472617473;
  v4 = 0x6F724665726F7473;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E65746E6F437061;
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

uint64_t sub_1C1A672F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1A6854C();
  *a1 = result;
  return result;
}

uint64_t sub_1C1A67324(uint64_t a1)
{
  v2 = sub_1C1A680F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1A67360(uint64_t a1)
{
  v2 = sub_1C1A680F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1C1A6739C(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_1C1A6D5DC();
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C19A9E58(&qword_1EBF05010);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  sub_1C1994048(a1, a1[3]);
  sub_1C1A680F8();
  v9 = v38;
  sub_1C1A6FDFC();
  if (v9)
  {
    goto LABEL_2;
  }

  v35 = v4;
  v36 = a1;
  v38 = v6;
  LOBYTE(v45) = 0;
  sub_1C1A6814C();
  sub_1C1A6FC5C();
  v6 = v41;
  v10 = v42;
  v11 = sub_1C198FB8C(0, &qword_1EDE60C88);
  sub_1C198FB8C(0, &qword_1EDE60C60);
  v12 = sub_1C1A6F69C();
  v13 = v38;
  v31 = v11;
  v33 = v10;
  v34 = v6;
  a1 = v36;
  if (v12)
  {
    v32 = v12;
    LOBYTE(v45) = 1;
    sub_1C1A6FC3C();
    v29 = v8;
    v30 = v5;
    v15 = v42;
    if (v42 >> 60 == 15)
    {
      v16 = MEMORY[0x1E69E7CC0];
      v17 = v2;
      v18 = v35;
LABEL_15:
      v23 = v40;
      *&v40[OBJC_IVAR____TtC17PromotedContentUI15AppStoreSession_apContentData] = v16;
      objc_allocWithZone(sub_1C1A6E9EC());
      v24 = v32;

      *&v23[OBJC_IVAR____TtC17PromotedContentUI15AppStoreSession_context] = sub_1C1A6E93C();
      LOBYTE(v41) = 2;
      sub_1C1A68248(&qword_1EDE623B8);
      v25 = v18;
      v26 = v29;
      v27 = v30;
      sub_1C1A6FC5C();
      (v38)[1](v26, v27);
      sub_1C19CFDE0(v34, v33);

      v28 = v40;
      (*(v37 + 32))(&v40[OBJC_IVAR____TtC17PromotedContentUI15AppStoreSession_start], v25, v17);
      v44.receiver = v28;
      v44.super_class = ObjectType;
      v6 = objc_msgSendSuper2(&v44, sel_init);
      sub_1C199935C(v36);
      return v6;
    }

    v19 = v41;
    sub_1C19A9E58(&qword_1EBF05020);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C1A73CD0;
    *(v20 + 32) = sub_1C198FB8C(0, &qword_1EDE60C80);
    *(v20 + 40) = sub_1C198FB8C(0, &qword_1EDE62710);
    sub_1C1A6F6AC();
    v21 = v2;

    if (v43)
    {
      sub_1C19A9E58(&qword_1EBF05028);
      v22 = swift_dynamicCast();
      v18 = v35;
      v17 = v21;
      if (v22)
      {
        v16 = v45;
        sub_1C1A0DB38(v19, v15);
        goto LABEL_15;
      }
    }

    else
    {
      sub_1C19C5478(&v41);
      v18 = v35;
      v17 = v21;
    }

    sub_1C1A0DB38(v19, v15);
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  sub_1C1A681A0();
  swift_allocError();
  swift_willThrow();
  sub_1C19CFDE0(v34, v33);
  (v13)[1](v8, v5);
LABEL_2:
  sub_1C199935C(a1);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_1C1A67A3C(void *a1)
{
  v3 = v1;
  v43 = *MEMORY[0x1E69E9840];
  v5 = sub_1C19A9E58(&qword_1EBF05030);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v33 - v7;
  sub_1C1994048(a1, a1[3]);
  sub_1C1A680F8();
  sub_1C1A6FE0C();
  v39 = v3;
  sub_1C1A6E9EC();
  if (swift_dynamicCastClass())
  {
    v9 = sub_1C1A6E9BC();
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_opt_self();
  v41 = v9;
  sub_1C19A9E58(&qword_1EBF05038);
  v11 = sub_1C1A6F90C();
  v41 = 0;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v41];
  swift_unknownObjectRelease();
  v13 = v41;
  if (v12)
  {
    v38 = v6;
    v14 = sub_1C1A6D4CC();
    v16 = v15;

    v41 = v14;
    v42 = v16;
    v40 = 0;
    sub_1C1A681F4();
    sub_1C1A6FCAC();
    if (v2)
    {
      (*(v38 + 8))(v8, v5);

      v17 = v14;
      v18 = v16;
      return sub_1C19CFDE0(v17, v18);
    }

    v34 = v5;
    v35 = v14;
    v36 = v16;
    v37 = v9;
    sub_1C198FB8C(0, &qword_1EDE62710);
    v21 = sub_1C1A6F50C();
    v41 = 0;
    v22 = [v10 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v41];

    v23 = v41;
    if (v22)
    {
      v24 = sub_1C1A6D4CC();
      v26 = v25;

      v41 = v24;
      v42 = v26;
      v27 = v26;
      v40 = 1;
      v28 = v34;
      sub_1C1A6FCAC();
      v30 = v36;
      v29 = v37;
      v31 = v38;
      v33[1] = OBJC_IVAR____TtC17PromotedContentUI15AppStoreSession_start;
      LOBYTE(v41) = 2;
      sub_1C1A6D5DC();
      sub_1C1A68248(&qword_1EDE623C0);
      sub_1C1A6FCAC();
      (*(v31 + 8))(v8, v28);

      sub_1C19CFDE0(v24, v27);
      v17 = v35;
      v18 = v30;
      return sub_1C19CFDE0(v17, v18);
    }

    v32 = v23;
    sub_1C1A6D3BC();

    swift_willThrow();
    sub_1C19CFDE0(v35, v36);
    return (*(v38 + 8))(v8, v34);
  }

  else
  {
    v20 = v13;
    sub_1C1A6D3BC();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t type metadata accessor for AppStoreSession()
{
  result = qword_1EDE61F60;
  if (!qword_1EDE61F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1A67FDC()
{
  result = sub_1C1A6D5DC();
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

id sub_1C1A68084@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_1C1A6739C(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C1A680F8()
{
  result = qword_1EDE61F90[0];
  if (!qword_1EDE61F90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE61F90);
  }

  return result;
}

unint64_t sub_1C1A6814C()
{
  result = qword_1EDE623C8;
  if (!qword_1EDE623C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE623C8);
  }

  return result;
}

unint64_t sub_1C1A681A0()
{
  result = qword_1EBF05018;
  if (!qword_1EBF05018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF05018);
  }

  return result;
}

unint64_t sub_1C1A681F4()
{
  result = qword_1EDE623D0;
  if (!qword_1EDE623D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE623D0);
  }

  return result;
}

uint64_t sub_1C1A68248(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C1A6D5DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppStoreSession.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppStoreSession.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C1A683F0()
{
  result = qword_1EBF05040;
  if (!qword_1EBF05040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF05040);
  }

  return result;
}

unint64_t sub_1C1A68448()
{
  result = qword_1EBF05048;
  if (!qword_1EBF05048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF05048);
  }

  return result;
}

unint64_t sub_1C1A684A0()
{
  result = qword_1EDE61F80;
  if (!qword_1EDE61F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE61F80);
  }

  return result;
}

unint64_t sub_1C1A684F8()
{
  result = qword_1EDE61F88;
  if (!qword_1EDE61F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE61F88);
  }

  return result;
}

uint64_t sub_1C1A6854C()
{
  v0 = sub_1C1A6FC0C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C1A68598(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_1C1A685F8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 64) = v3;
  *(v4 + 72) = v2;
}

uint64_t sub_1C1A68658()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1C1A686A4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
}

uint64_t sub_1C1A68704()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1C1A68750()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1C1A6879C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 80) = v3;
  *(v4 + 88) = v2;
}

uint64_t sub_1C1A687FC()
{
  swift_beginAccess();
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_1C1A68848()
{
  v1 = [*(v0 + 16) impressionId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C1A6F3CC();

  return v3;
}

uint64_t sub_1C1A688B0()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = *(v0 + 16);
  v3 = [v2 transparencyDetailsDictionary];
  sub_1C1A6F31C();

  v4 = sub_1C1A6F2FC();

  v18[0] = 0;
  v5 = [v1 dataWithJSONObject:v4 options:0 error:v18];

  v6 = v18[0];
  if (v5)
  {
    v7 = sub_1C1A6D4CC();
    v9 = v8;

    v10 = sub_1C1A6D4BC();
    sub_1C19CFDE0(v7, v9);
  }

  else
  {
    v11 = v6;
    v12 = sub_1C1A6D3BC();

    swift_willThrow();
    sub_1C1A6F66C();
    sub_1C199E4CC();
    v13 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C1A73A30;
    v15 = [v2 transparencyDetailsDictionary];
    v16 = sub_1C1A6F31C();

    *(v14 + 56) = sub_1C19A9E58(&qword_1EBF04910);
    *(v14 + 64) = sub_1C1A69F14();
    *(v14 + 32) = v16;
    sub_1C1A6F18C();

    return 0;
  }

  return v10;
}

uint64_t sub_1C1A68B50()
{
  if (*(v0 + 24))
  {
    return sub_1C1A6E77C() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1A68BB4(uint64_t (*a1)(void))
{
  if (*(v1 + 24))
  {
    return a1();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1A68BEC()
{
  if (*(v0 + 24))
  {
    return sub_1C1A6E78C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1A68C2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C1A6D5DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C19A9E58(&qword_1EBF038A8);
  *&v8 = MEMORY[0x1EEE9AC00](v7 - 8).n128_u64[0];
  v10 = &v15 - v9;
  v11 = [*(v1 + 16) receivedReferenceTime];
  if (v11)
  {
    v12 = v11;
    sub_1C1A6D59C();

    v13 = *(v4 + 32);
    v13(v10, v6, v3);
    (*(v4 + 56))(v10, 0, 1, v3);
    return (v13)(a1, v10, v3);
  }

  else
  {
    (*(v4 + 56))(v10, 1, 1, v3);
    sub_1C1A6D5CC();
    result = (*(v4 + 48))(v10, 1, v3);
    if (result != 1)
    {
      return sub_1C1991140(v10, &qword_1EBF038A8);
    }
  }

  return result;
}

uint64_t sub_1C1A68E28(SEL *a1)
{
  v2 = [*(v1 + 16) *a1];
  v3 = sub_1C1A6F3CC();

  return v3;
}

uint64_t sub_1C1A68E80()
{
  sub_1C1A6FACC();

  swift_beginAccess();
  v1 = v0[4];
  v2 = v0[5];

  MEMORY[0x1C6904F50](v1, v2);

  MEMORY[0x1C6904F50](0x61646174656D202CLL, 0xEC000000203A6174);
  swift_beginAccess();
  v4 = v0[6];
  v3 = v0[7];

  MEMORY[0x1C6904F50](v4, v3);

  return 0x203A64496D616441;
}

uint64_t sub_1C1A68F7C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 96);
  return result;
}

uint64_t sub_1C1A68FC0(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 96) = v2;
  return result;
}

uint64_t sub_1C1A69060()
{
  sub_1C1A6EB6C();
  result = swift_dynamicCastClass();
  if (result)
  {
    return sub_1C1A6EABC();
  }

  return result;
}

uint64_t sub_1C1A690A8()
{
  v0 = sub_1C1A6D62C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v4 = sub_1C19E93F8();
  if (v4)
  {
    v5 = v4;
    sub_1C1A6E7DC();
  }

  else
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v6 = sub_1C1A6F1BC();
    sub_1C1994600(v6, qword_1EDE665F0);
    v7 = sub_1C1A6F19C();
    v8 = sub_1C1A6F66C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C198D000, v7, v8, "Ad didn't have an iAdId associated with it", v9, 2u);
      MEMORY[0x1C6906260](v9, -1, -1);
    }

    sub_1C1A6D61C();
  }

  v10 = sub_1C1A6D5EC();
  (*(v1 + 8))(v3, v0);
  return v10;
}

uint64_t sub_1C1A692A4(uint64_t (*a1)(void), const char *a2)
{
  v4 = sub_1C1A6D62C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = sub_1C19E93F8();
  if (!v8 || (v9 = v8, v10 = a1(), v12 = v11, v9, !v12))
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v13 = sub_1C1A6F1BC();
    sub_1C1994600(v13, qword_1EDE665F0);
    v14 = sub_1C1A6F19C();
    v15 = sub_1C1A6F66C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C198D000, v14, v15, a2, v16, 2u);
      MEMORY[0x1C6906260](v16, -1, -1);
    }

    sub_1C1A6D61C();
    v10 = sub_1C1A6D5EC();
    (*(v5 + 8))(v7, v4);
  }

  return v10;
}

void sub_1C1A69478()
{
  v1 = [*(v0 + 16) expirationDate];
  sub_1C1A6D59C();
}

uint64_t sub_1C1A694D8()
{
  if (*(v0 + 24))
  {
    return sub_1C1A6E7CC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1A69508()
{
  if (*(v0 + 24))
  {
    return sub_1C1A6E7FC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1A69538()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  result = sub_1C1A6E76C();
  if (result)
  {
    v2 = result;
    sub_1C19A9E58(&qword_1EBF04BA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1A73A30;
    sub_1C1A6FA6C();
    sub_1C19A9E58(&qword_1EBF05058);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C1A73A30;
    *(v4 + 32) = v2;
    *(inited + 96) = sub_1C19A9E58(&unk_1EBF05060);
    *(inited + 72) = v4;
    v5 = sub_1C19B72D4(inited);
    swift_setDeallocating();
    sub_1C1991140(inited + 32, &qword_1EBF03C68);
    return v5;
  }

  return result;
}

uint64_t sub_1C1A69658()
{
  if (*(v0 + 24))
  {
    return sub_1C1A6E79C();
  }

  else
  {
    return 0;
  }
}

uint64_t AppStoreAd.deinit()
{
  swift_unknownObjectRelease();

  sub_1C1991140(v0 + OBJC_IVAR____TtC17PromotedContentUI10AppStoreAd_frequencyStorageType, &qword_1EBF03E48);
  return v0;
}

uint64_t AppStoreAd.__deallocating_deinit()
{
  AppStoreAd.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C1A69788()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_1C1A697EC()
{
  sub_1C1A6EB6C();
  result = swift_dynamicCastClass();
  if (result)
  {
    return sub_1C1A6EABC();
  }

  return result;
}

void sub_1C1A69838(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) identifier];
  v4 = sub_1C1A6F3CC();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1C1A698A0()
{
  v1 = [*(v0 + 16) journeyIdentifier];
  v2 = sub_1C1A6F3CC();

  return v2;
}

uint64_t AppStoreAd.installAttribution.getter()
{
  if (*(v0 + 24))
  {
    return sub_1C1A6E7BC();
  }

  else
  {
    return 0;
  }
}

uint64_t AppStoreAd.frequencyCapIdentifier.getter()
{
  swift_beginAccess();
  v4 = v0[4];

  MEMORY[0x1C6904F50](124, 0xE100000000000000);
  swift_beginAccess();
  v2 = v0[6];
  v1 = v0[7];

  MEMORY[0x1C6904F50](v2, v1);

  return v4;
}

uint64_t sub_1C1A69A04()
{
  if (*(*v0 + 24))
  {
    return sub_1C1A6E7BC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1A69A38()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF03E48);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v27 = sub_1C1A6ED3C();
  v5 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1A6D5DC();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = v0[5];
  v34 = v0[4];
  v35 = v11;

  MEMORY[0x1C6904F50](124, 0xE100000000000000);
  swift_beginAccess();
  v12 = v0[6];
  v13 = v0[7];

  MEMORY[0x1C6904F50](v12, v13);

  v28 = v35;
  v29 = v34;
  v14 = v0[2];
  sub_1C1A6EB6C();
  if (swift_dynamicCastClass())
  {
    sub_1C1A6EB2C();
  }

  v15 = [v14 impressionId];
  v33 = v4;
  if (v15)
  {
    v16 = v15;
    v26 = sub_1C1A6F3CC();
  }

  else
  {
    v26 = 0;
  }

  sub_1C1A6D56C();
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  sub_1C1A6EE2C();
  swift_allocObject();
  sub_1C1A6EE1C();
  v30 = v10;
  sub_1C1A6EE0C();
  v17 = [v14 journeyIdentifier];
  sub_1C1A6F3CC();

  sub_1C1A6ED2C();
  sub_1C1A6ED1C();
  (*(v5 + 8))(v7, v27);
  sub_1C1A6EEAC();
  swift_allocObject();

  sub_1C1A6EE9C();
  v18 = [v14 journeyIdentifier];
  sub_1C1A6F3CC();

  [objc_opt_self() daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v19 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v20 = sub_1C1A6ECAC();
  swift_allocObject();
  v21 = sub_1C1A6EC9C();
  v36 = v20;
  v37 = MEMORY[0x1E6989D88];
  v34 = v21;
  v22 = sub_1C1A6EEFC();
  swift_allocObject();
  v23 = sub_1C1A6EEEC();
  v36 = v22;
  v37 = MEMORY[0x1E6989E20];
  v34 = v23;
  sub_1C1A6A5A0(v1 + OBJC_IVAR____TtC17PromotedContentUI10AppStoreAd_frequencyStorageType, v33);
  if (v1[3])
  {
    sub_1C1A6E7BC();
  }

  sub_1C1A6E5DC();
  swift_allocObject();
  v24 = sub_1C1A6E56C();

  (*(v31 + 8))(v30, v32);
  return v24;
}

unint64_t sub_1C1A69F14()
{
  result = qword_1EBF05050;
  if (!qword_1EBF05050)
  {
    sub_1C19A9F04(&qword_1EBF04910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF05050);
  }

  return result;
}

uint64_t sub_1C1A69F78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1C19A9E58(&qword_1EBF03E48);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  v21 = 4;
  v15 = sub_1C1A6E4BC();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a6, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  type metadata accessor for AppStoreAd();
  v17 = swift_allocObject();
  v18 = sub_1C1A6A104(a1, a2, a3, a4, a5, &v21, v14, v17);
  (*(v16 + 8))(a6, v15);
  return v18;
}

uint64_t sub_1C1A6A104(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8)
{
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v44 = a3;
  v12 = sub_1C19A9E58(&qword_1EBF03E48);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42 - v13;
  v48 = sub_1C1A6E4BC();
  v15 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v42 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  v20 = *a6;
  *(a8 + 80) = 0;
  *(a8 + 96) = 4;
  *(a8 + 88) = 0;
  *(a8 + 104) = 0;
  *(a8 + 112) = 0;
  *(a8 + 16) = a1;
  swift_unknownObjectRetain();
  *(a8 + 24) = sub_1C19E93F8();
  if (v20 == 4)
  {
    if ([a1 serverUnfilledReason] == 200)
    {
      LOBYTE(v20) = 4;
    }

    else
    {
      LOBYTE(v20) = 3;
    }
  }

  v47 = a1;
  swift_beginAccess();
  *(a8 + 96) = v20;
  v21 = *(a8 + 24);
  if (v21)
  {
    v22 = v21;
    v23 = sub_1C1A6E7EC();
    v25 = v24;

    *(a8 + 32) = v23;
    v26 = *(a8 + 24);
    *(a8 + 40) = v25;
    if (v26)
    {
      v27 = v26;
      v28 = sub_1C1A6E80C();
      v30 = v29;

      if (v30)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    *(a8 + 32) = 0;
    *(a8 + 40) = 0xE000000000000000;
  }

  v28 = 0;
  v30 = 0xE000000000000000;
LABEL_11:
  *(a8 + 48) = v28;
  *(a8 + 56) = v30;
  swift_beginAccess();
  v31 = v44;
  *(a8 + 80) = v43;
  *(a8 + 88) = v31;

  v32 = v46;
  *(a8 + 64) = v45;
  *(a8 + 72) = v32;
  sub_1C1A6A5A0(a7, a8 + OBJC_IVAR____TtC17PromotedContentUI10AppStoreAd_frequencyStorageType);
  sub_1C1A6A5A0(a7, v14);
  v33 = v48;
  if ((*(v15 + 48))(v14, 1, v48) == 1)
  {
    swift_unknownObjectRelease();
    sub_1C1991140(v14, &qword_1EBF03E48);
  }

  else
  {
    v34 = v19;
    (*(v15 + 32))(v19, v14, v33);
    v46 = type metadata accessor for VisibilityTimingTracker();
    swift_beginAccess();
    v35 = *(a8 + 40);
    v45 = *(a8 + 32);
    v43 = v35;
    swift_beginAccess();
    v36 = *(a8 + 56);
    v44 = *(a8 + 48);

    v37 = [v47 metricsHelper];
    swift_getObjectType();
    v38 = v42;
    (*(v15 + 16))(v42, v34, v33);
    v39 = sub_1C19E5124(v45, v43, v44, v36, v37, v38);
    swift_unknownObjectRelease();
    (*(v15 + 8))(v34, v33);
    *(a8 + 104) = v39;
  }

  sub_1C1A6E73C();
  sub_1C1A6E72C();
  sub_1C1A69A38();
  v40 = [*(a8 + 16) journeyIdentifier];
  sub_1C1A6F3CC();

  sub_1C1A6E70C();

  sub_1C1991140(a7, &qword_1EBF03E48);
  return a8;
}

uint64_t sub_1C1A6A5A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF03E48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AppStoreAd()
{
  result = qword_1EDE62308;
  if (!qword_1EDE62308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1A6A670()
{
  sub_1C1A6AC4C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C1A6AC4C()
{
  if (!qword_1EDE62378)
  {
    sub_1C1A6E4BC();
    v0 = sub_1C1A6F91C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE62378);
    }
  }
}

void sub_1C1A6AD34()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  v3 = 148.0;
  if (v2 != 1)
  {
    v3 = 0.0;
  }

  if (v2 == 2)
  {
    v4 = 260.0;
  }

  else
  {
    v4 = v3;
  }

  v81 = objc_opt_self();
  sub_1C19A9E58(&qword_1EBF03E88);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C1A75930;
  v6 = sub_1C19AF868();
  v7 = [v6 leadingAnchor];

  v8 = [v0 contentView];
  v9 = [v8 &off_1E8148528 + 1];

  v10 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView;
  v12 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView] topAnchor];
  v13 = [v0 contentView];
  v14 = [v13 topAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v5 + 40) = v15;
  v16 = [*&v0[v11] trailingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 &selRef_didImpress + 4];

  v19 = [v16 constraintEqualToAnchor_];
  *(v5 + 48) = v19;
  v20 = [*&v0[v11] heightAnchor];
  v21 = [v20 constraintEqualToConstant_];

  *(v5 + 56) = v21;
  v22 = sub_1C19AF980();
  v23 = [v22 leadingAnchor];

  v24 = [v0 contentView];
  v25 = [v24 leadingAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  *(v5 + 64) = v26;
  v27 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView;
  v28 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView] topAnchor];
  v29 = [*&v0[v11] bottomAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v5 + 72) = v30;
  v31 = [*&v0[v27] trailingAnchor];
  v32 = [v0 contentView];
  v33 = [v32 trailingAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v5 + 80) = v34;
  v35 = [*&v0[v27] &selRef_addUnfilledReason_ + 5];
  v36 = [v0 contentView];
  v37 = [v36 &selRef_addUnfilledReason_ + 5];

  v38 = [v35 constraintEqualToAnchor_];
  *(v5 + 88) = v38;
  v39 = sub_1C19AF98C();
  v40 = [v39 leadingAnchor];

  v41 = [*&v0[v27] leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:6.0];

  *(v5 + 96) = v42;
  v43 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel;
  v44 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel] topAnchor];
  v45 = [*&v0[v27] topAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:6.0];

  *(v5 + 104) = v46;
  v47 = [*&v0[v43] trailingAnchor];
  v48 = [*&v0[v27] trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:-6.0];

  *(v5 + 112) = v49;
  v50 = [*&v0[v43] &selRef_addUnfilledReason_ + 5];
  v51 = [*&v0[v27] &selRef_addUnfilledReason_ + 5];
  v52 = [v50 constraintLessThanOrEqualToAnchor:v51 constant:-6.0];

  *(v5 + 120) = v52;
  v53 = sub_1C19AF9EC();
  v54 = [v53 leadingAnchor];

  v55 = [*&v0[v27] leadingAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  *(v5 + 128) = v56;
  v57 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView;
  v58 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView] topAnchor];
  v59 = [*&v0[v27] topAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v5 + 136) = v60;
  v61 = [*&v0[v57] trailingAnchor];
  v62 = [*&v0[v27] trailingAnchor];
  v63 = [v61 constraintEqualToAnchor_];

  *(v5 + 144) = v63;
  v64 = [*&v0[v57] bottomAnchor];
  v65 = [*&v0[v27] bottomAnchor];
  v66 = [v64 constraintEqualToAnchor_];

  *(v5 + 152) = v66;
  v67 = sub_1C19AFAB0();
  v68 = [v67 leadingAnchor];

  v69 = [*&v0[v27] leadingAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v5 + 160) = v70;
  v71 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView;
  v72 = [*&v0[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView] topAnchor];
  v73 = [*&v0[v27] topAnchor];
  v74 = [v72 constraintEqualToAnchor_];

  *(v5 + 168) = v74;
  v75 = [*&v0[v71] trailingAnchor];
  v76 = [*&v0[v27] trailingAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  *(v5 + 176) = v77;
  v78 = [*&v0[v71] bottomAnchor];
  v79 = [*&v0[v27] bottomAnchor];
  v80 = [v78 constraintEqualToAnchor_];

  *(v5 + 184) = v80;
  sub_1C19C2864();
  v82 = sub_1C1A6F50C();

  [v81 activateConstraints_];
}

id sub_1C1A6B670()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallCarouselCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1A6B6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C19A9E58(&unk_1EBF050D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1C1A605EC(a3, v22 - v9);
  v11 = sub_1C1A6F5AC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1C1A6C828(v10);
  }

  else
  {
    sub_1C1A6F59C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C1A6F56C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1C1A6F43C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1C1A6C828(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1A6C828(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

char *sub_1C1A6B968(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C1A6D6EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v58 = v8;
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C19A9E58(&unk_1EBF050D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v51 - v11;
  v12 = type metadata accessor for CarouselElement();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v57 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  v18 = sub_1C1A52990();
  if (v18)
  {
  }

  v59 = v9;
  v19 = sub_1C1A6F39C();

  v20 = sub_1C1A6D6BC();
  v21 = [a1 dequeueReusableCellWithReuseIdentifier:v19 forIndexPath:v20];

  type metadata accessor for CarouselCollectionViewCell();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    v56 = v21;
    v24 = *&v3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_elements];
    v25 = sub_1C1A6D6DC();
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v25 < *(v24 + 16))
    {
      v26 = v24;
      v27 = v7;
      v28 = *(v13 + 80);
      v29 = v6;
      v53 = v6;
      v30 = (v28 + 32) & ~v28;
      v51 = v26;
      sub_1C19F4614(v26 + v30 + *(v13 + 72) * v25, v17);
      v31 = sub_1C1A6F5AC();
      (*(*(v31 - 8) + 56))(v60, 1, 1, v31);
      v32 = v57;
      sub_1C19F4614(v17, v57);
      v33 = v27[2];
      v55 = v23;
      v34 = v59;
      v33(v59, a2, v29);
      sub_1C1A6F58C();
      v52 = v3;
      v35 = sub_1C1A6F57C();
      v36 = (v14 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = *(v27 + 80);
      v54 = a2;
      v38 = (v36 + v37 + 8) & ~v37;
      v39 = swift_allocObject();
      v40 = MEMORY[0x1E69E85E0];
      *(v39 + 16) = v35;
      *(v39 + 24) = v40;
      sub_1C1A60498(v32, v39 + v30);
      v42 = v52;
      v41 = v53;
      *(v39 + v36) = v52;
      v7 = v55;
      (v27[4])(v39 + v38, v34, v41);
      sub_1C1A6B6E4(0, 0, v60, &unk_1C1A78C18, v39);

      (*((*MEMORY[0x1E69E7D40] & *v7) + 0x140))(v17, v42, &off_1F4140D80);
      v43 = qword_1EDE60C98;
      v14 = v56;
      if (v43 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_14:
    swift_once();
LABEL_7:
    sub_1C19A9E58(&unk_1EBF03FD0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1C1A73CD0;
    result = sub_1C1A6D6DC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v46 = MEMORY[0x1E69E6530];
      v47 = MEMORY[0x1E69E65A8];
      *(v44 + 56) = MEMORY[0x1E69E6530];
      *(v44 + 64) = v47;
      *(v44 + 32) = result + 1;
      v48 = *(v51 + 16);
      *(v44 + 96) = v46;
      *(v44 + 104) = v47;
      *(v44 + 72) = v48;
      sub_1C1A6F3EC();
      v49 = sub_1C1A6F39C();

      [v7 setAccessibilityHint_];

      sub_1C19F4678(v17);
      return v7;
    }

    return result;
  }

  v50 = objc_allocWithZone(MEMORY[0x1E69DC7F8]);

  return [v50 init];
}

uint64_t sub_1C1A6BF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  sub_1C1A6F58C();
  v6[22] = sub_1C1A6F57C();
  v8 = sub_1C1A6F56C();
  v6[23] = v8;
  v6[24] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C1A6C024, v8, v7);
}

uint64_t sub_1C1A6C024()
{
  v1 = v0[19];
  sub_1C1A6DFEC();
  v0[25] = sub_1C1A6DFDC();
  v2 = *(type metadata accessor for CarouselElement() + 24);
  v5 = (*MEMORY[0x1E69C5F48] + MEMORY[0x1E69C5F48]);
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_1C1A6C0FC;

  return v5(v1 + v2);
}

uint64_t sub_1C1A6C0FC(uint64_t a1)
{
  v3 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v4 = v3[23];
    v5 = v3[24];
    v6 = sub_1C1A6C4D4;
  }

  else
  {

    v4 = v3[23];
    v5 = v3[24];
    v6 = sub_1C1A6C218;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1C1A6C218()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C1A6C334;
  v2 = swift_continuation_init();
  v0[17] = sub_1C19A9E58(&unk_1EBF050E0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C1A6C544;
  v0[13] = &unk_1F4143100;
  v0[14] = v2;
  [v1 prepareForDisplayWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C1A6C334()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1C1A6C43C, v2, v1);
}

uint64_t sub_1C1A6C43C()
{

  v1 = *(v0 + 144);
  if (v1)
  {
    sub_1C1A5AE20(*(v0 + 168), *(v0 + 144));
  }

  else
  {
    sub_1C1A5AE20(*(v0 + 168), *(v0 + 216));
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C1A6C4D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C1A6C544(uint64_t a1, void *a2)
{
  v3 = sub_1C1994048((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1C1A6C6BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CarouselElement() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1C1A6D6EC() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1C19909C4;

  return sub_1C1A6BF88(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_1C1A6C828(uint64_t a1)
{
  v2 = sub_1C19A9E58(&unk_1EBF050D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C1A6C890()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = 0.0;
  v7[0] = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if ([v0 getHue:v7 saturation:&v6 brightness:&v5 alpha:&v4])
  {
    if (v6 + 0.5 <= 1.0)
    {
      v1 = v6 + 0.5;
    }

    else
    {
      v1 = 1.0;
    }

    return [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithHue:v7[0] saturation:v1 brightness:v5 * 0.75 alpha:v4];
  }

  else
  {

    return v3;
  }
}

void sub_1C1A6C9A4(void *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    v6 = sub_1C1A6C890();
  }

  else
  {
    v6 = a1;
  }

  v7 = *(v2 + OBJC_IVAR___APPrivacyMarker_markerView);
  v8 = v6;
  [v7 setBackgroundColor_];
  [v7 setTintColor_];
}

void sub_1C1A6CA80(void *a1)
{
  sub_1C1A6C9A4(a1);
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = *(v1 + OBJC_IVAR___APPrivacyMarker_markerView);
  v5 = [v4 layer];
  v6 = objc_opt_self();
  v7 = &selRef_whiteColor;
  if (v3 != 2)
  {
    v7 = &selRef_systemPurpleColor;
  }

  v8 = [v6 *v7];
  v9 = [v8 CGColor];

  [v5 setBorderColor_];
  v10 = [v4 layer];
  [v10 setBorderWidth_];
}

uint64_t sub_1C1A6CBC8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

unint64_t sub_1C1A6CC10()
{
  sub_1C19A9E58(&qword_1EBF04858);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1A74AF0;
  *(inited + 32) = sub_1C1A6F3CC();
  *(inited + 40) = v1;
  *(inited + 48) = 0x30303066666623;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 64) = sub_1C1A6F3CC();
  *(inited + 72) = v2;
  *(inited + 80) = 0x30306666303023;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_1C1A6F3CC();
  *(inited + 104) = v3;
  *(inited + 112) = 0x66663030666623;
  *(inited + 120) = 0xE700000000000000;
  *(inited + 128) = sub_1C1A6F3CC();
  *(inited + 136) = v4;
  *(inited + 144) = 0x66663030303823;
  *(inited + 152) = 0xE700000000000000;
  v5 = sub_1C19B7074(inited);
  swift_setDeallocating();
  sub_1C19A9E58(&unk_1EBF04860);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_1C1A6CD50(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v10;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v51[0] = v17;
    v51[1] = v18;
    v51[2] = v20;
    v51[3] = v21;

    a2(&v47, v51);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = *v52;
    v28 = sub_1C1991010(v47, v48);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v46 & 1) == 0)
      {
        sub_1C1A4A7A4();
      }
    }

    else
    {
      sub_1C1A48A70(v31, v46 & 1);
      v33 = sub_1C1991010(v22, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v52;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v42;
    v6 = v43;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_1C19A93FC();
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1C1A6FD3C();
  __break(1u);
  return result;
}

id sub_1C1A6CFF0()
{
  v5[1] = *MEMORY[0x1E69E9840];
  if ((sub_1C1A6F4BC() & 1) != 0 && sub_1C1A6F46C() == 7)
  {
    v0 = objc_allocWithZone(MEMORY[0x1E696AE88]);
    v1 = sub_1C1A6F39C();
    v2 = [v0 initWithString_];

    sub_1C1A6F47C();
    sub_1C1A6F8CC();
    v5[0] = 0;
    [v2 scanHexLongLong_];
    if ((LOBYTE(v5[0]) | BYTE1(v5[0])) | BYTE2(v5[0]))
    {
      v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:BYTE2(v5[0]) / 255.0 green:BYTE1(v5[0]) / 255.0 blue:LOBYTE(v5[0]) / 255.0 alpha:1.0];

      return v3;
    }
  }

  return 0;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}