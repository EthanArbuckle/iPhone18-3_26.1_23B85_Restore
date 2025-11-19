uint64_t sub_1E3BE94E4(uint64_t a1)
{
  v1 = a1 - 1;
  if ((a1 - 1) > 2)
  {
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    type metadata accessor for SportsVoiceOverUtility();
    v2 = sub_1E38BA38C();
    sub_1E38BA390(v1 + 53, v2);
    OUTLINED_FUNCTION_60_0();
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3BE9548(unint64_t a1)
{
  if (a1 > 4)
  {
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    v1 = a1;
    type metadata accessor for SportsVoiceOverUtility();
    v2 = sub_1E38BA38C();
    sub_1E38BA390(v1 + 43, v2);
    OUTLINED_FUNCTION_60_0();
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3BE95AC(unint64_t a1)
{
  if (a1 > 3)
  {
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    v1 = a1;
    type metadata accessor for SportsVoiceOverUtility();
    v2 = sub_1E38BA38C();
    sub_1E38BA390(v1 | 0x30, v2);
    OUTLINED_FUNCTION_60_0();
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3BE9610(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SportsVoiceOverUtility();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = 17;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  sub_1E38EA7FC();

  v5 = sub_1E4205CB4();
  v6 = sub_1E38BAE70(v5);
  v7 = sub_1E38BA3C8(52, v5, v6);

  return v7;
}

uint64_t type metadata accessor for BaseballVoiceOverViewModel()
{
  result = qword_1EE295CE0;
  if (!qword_1EE295CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3BE9744()
{
  sub_1E3BE97D8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3BE97D8()
{
  if (!qword_1EE289FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D960);
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289FA8);
    }
  }
}

uint64_t sub_1E3BE983C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3BE9884()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3BE98D0(char a1)
{
  if (!a1)
  {
    return 0x6C62616C69617661;
  }

  if (a1 == 1)
  {
    return 0x6F53676E696D6F63;
  }

  return 0x616C696176616E75;
}

uint64_t sub_1E3BE9944(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6C62616C69617661;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6F53676E696D6F63;
    }

    else
    {
      v5 = 0x616C696176616E75;
    }

    if (v4 == 1)
    {
      v6 = 0xEA00000000006E6FLL;
    }

    else
    {
      v6 = 0xEB00000000656C62;
    }
  }

  else
  {
    v5 = 0x6C62616C69617661;
    v6 = 0xE900000000000065;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6F53676E696D6F63;
    }

    else
    {
      v3 = 0x616C696176616E75;
    }

    if (a2 == 1)
    {
      v2 = 0xEA00000000006E6FLL;
    }

    else
    {
      v2 = 0xEB00000000656C62;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BE9A78()
{
  sub_1E4206014();
}

uint64_t sub_1E3BE9B1C()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3BE9BCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3BE9884();
  *a1 = result;
  return result;
}

uint64_t sub_1E3BE9BFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3BE98D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3BE9C60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_1E3BE9D18()
{
  v1 = OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_titleLabel;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_1E3BE9D60()
{
  v1 = OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_textLabel;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3BE9DE0(uint64_t a1)
{
  v3 = &qword_1ECF34000;
  v4 = OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_buttonViews;
  swift_beginAccess();
  v5 = *&v1[v4];
  v53 = v1;
  *&v1[v4] = a1;
  if (v5)
  {
    v6 = sub_1E32AE9B0(v5);
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v6 == v7)
      {
        v3 = &qword_1ECF34000;
        goto LABEL_16;
      }

      if (v8)
      {
        v11 = v5;
        v12 = MEMORY[0x1E6911E60](v7, v5);
      }

      else
      {
        if (v7 >= *(v9 + 16))
        {
          goto LABEL_33;
        }

        v11 = v5;
        v12 = *(v5 + 8 * v7 + 32);
      }

      v13 = v12;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v12 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1E39ABB54(0, *(v10 + 2) + 1, 1, v10);
      }

      v23 = *(v10 + 2);
      v22 = *(v10 + 3);
      if (v23 >= v22 >> 1)
      {
        v10 = sub_1E39ABB54((v22 > 1), v23 + 1, 1, v10);
      }

      *(v10 + 2) = v23 + 1;
      v24 = &v10[32 * v23];
      *(v24 + 4) = v15;
      *(v24 + 5) = v17;
      *(v24 + 6) = v19;
      *(v24 + 7) = v21;
      [v13 removeFromSuperview];

      ++v7;
      v5 = v11;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v25 = v3[402];
    swift_beginAccess();
    v26 = *&v53[v25];
    if (v26)
    {
      v50 = v5;
      v27 = sub_1E32AE9B0(v26);
      v28 = v26 & 0xC000000000000001;
      v29 = v26 & 0xFFFFFFFFFFFFFF8;

      v30 = 0;
      v31 = (v10 + 56);
      v32 = 0.0;
      v33 = &selRef_textLayout;
      v34 = 0.0;
      v35 = 0.0;
      v36 = 0.0;
      v51 = v26 & 0xFFFFFFFFFFFFFF8;
      v52 = v26;
      while (v27 != v30)
      {
        if (v28)
        {
          v37 = MEMORY[0x1E6911E60](v30, v26);
        }

        else
        {
          if (v30 >= *(v29 + 16))
          {
            goto LABEL_35;
          }

          v37 = *(v26 + 8 * v30 + 32);
        }

        v38 = v37;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_34;
        }

        [v37 frame];
        v56.origin.x = 0.0;
        v56.origin.y = 0.0;
        v56.size.width = 0.0;
        v56.size.height = 0.0;
        if (CGRectEqualToRect(v54, v56))
        {
          v39 = v27;
          v40 = v28;
          v41 = v33;
          if (v30 >= *(v10 + 2))
          {
            v55.origin.x = v32;
            v55.origin.y = v34;
            v55.size.width = v35;
            v55.size.height = v36;
            MaxY = CGRectGetMaxY(v55);
            [v38 frame];
            v44 = &selRef_setDelayContentsChangeOperation_;
            [v38 setFrame_];
            [v38 frame];
          }

          else
          {
            v42 = *(v31 - 3);
            v43 = *(v31 - 2);
            v35 = *(v31 - 1);
            v36 = *v31;
            v44 = &selRef_setDelayContentsChangeOperation_;
          }

          [v38 v44[228]];
          v33 = v41;
          v28 = v40;
          v27 = v39;
          v29 = v51;
          v26 = v52;
        }

        [v38 frame];
        v32 = v46;
        v34 = v47;
        v35 = v48;
        v36 = v49;
        [v53 v33[466]];

        ++v30;
        v31 += 4;
      }
    }

    [v53 vui_setNeedsLayout];
  }
}

void sub_1E3BEA184(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for UIFactory();
  v4 = sub_1E373E010(17, a1);
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))();
  sub_1E3280A90(0, &qword_1EE23AD40);
  memset(__dst, 0, 40);
  v6 = sub_1E393D92C(v4, v5, __dst, 0);

  sub_1E325F748(__dst, &qword_1ECF296C0);
  sub_1E3BE9D9C(v6);
  v7 = sub_1E373E010(23, a1);
  OUTLINED_FUNCTION_1_169();
  v9 = (*(v8 + 144))();
  memset(__dst, 0, 40);
  v10 = sub_1E393D92C(v7, v9, __dst, 0);

  sub_1E325F748(__dst, &qword_1ECF296C0);
  sub_1E3BE9D54(v10);
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  v47 = 1;
  v48 = 0;
  sub_1E3DC12B0([v2 vuiUserInterfaceStyle], v45, __src);
  v11 = sub_1E373E010(91, a1);
  if (v11)
  {
    v12 = (*(*v11 + 464))(v11);
  }

  else
  {
    v12 = 0;
  }

  OUTLINED_FUNCTION_1_169();
  v14 = (*(v13 + 192))();
  OUTLINED_FUNCTION_1_169();
  v40 = (*(v15 + 120))();
  if (!v40)
  {
    type metadata accessor for ContentAvailabilityPlatterLayout();
    v40 = sub_1E4086CA4();
  }

  type metadata accessor for ContentAvailabilityPlatterView();
  memcpy(__dst, __src, 0x5AuLL);
  if (!v12)
  {
    goto LABEL_57;
  }

  v16 = v12 & 0xFFFFFFFFFFFFFF8;
  if (!(v12 >> 62))
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_57:
    v37 = 0;
    goto LABEL_58;
  }

LABEL_56:
  v17 = sub_1E4207384();
  if (!v17)
  {
    goto LABEL_57;
  }

LABEL_9:
  v18 = 0;
  v39 = MEMORY[0x1E69E7CC0];
  v55 = MEMORY[0x1E69E7CC0];
  v41 = v12;
  v42 = v12 & 0xC000000000000001;
  v43 = -v17;
LABEL_10:
  for (i = v18 + 4; v43 + i != 4; ++i)
  {
    v20 = i - 4;
    if (v42)
    {
      v21 = MEMORY[0x1E6911E60](i - 4, v12);
    }

    else
    {
      if (v20 >= *(v16 + 16))
      {
        goto LABEL_54;
      }

      v21 = *(v12 + 8 * i);
    }

    v18 = i - 3;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v14 && (v14 >> 62 ? (v22 = sub_1E4207384()) : (v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10)), v20 < v22))
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1E6911E60](i - 4, v14);
      }

      else
      {
        if (v20 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v23 = *(v14 + 8 * i);
      }

      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if ((*(*v21 + 392))())
    {
      type metadata accessor for ButtonLayout();
      v25 = swift_dynamicCastClass();
      if (!v25)
      {
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = v16;
    v54 = v21[49];
    v53 = 60;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v51 == v49 && v52 == v50)
    {
    }

    else
    {
      v28 = sub_1E42079A4();

      if ((v28 & 1) == 0)
      {
        if (!v25)
        {
          goto LABEL_40;
        }

        v29 = *(*v40 + 1800);

        v31 = v29(v30);
        goto LABEL_39;
      }
    }

    if (!v25)
    {
      goto LABEL_40;
    }

    v32 = *(*v40 + 1824);

    v31 = v32(v33);
LABEL_39:
    (*(*v25 + 1648))(v31);

LABEL_40:
    memcpy(v56, __dst, sizeof(v56));
    v57 = 1;
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
    sub_1E3F86D44();
    v16 = v26;
    if (v34)
    {
      v35 = v34;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v36 = v35;
        MEMORY[0x1E6910BF0]();
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();

        v39 = v55;
        v12 = v41;
        goto LABEL_10;
      }
    }

    v12 = v41;
  }

  v37 = v39;
  if (!sub_1E32AE9B0(v39))
  {

    v37 = 0;
  }

LABEL_58:

  sub_1E3BEAC88(__src);

  if (v37)
  {
    if (v37 >> 62)
    {
      sub_1E3280A90(0, &qword_1EE23AE80);

      v38 = sub_1E42076C4();
      swift_bridgeObjectRelease_n();
      v37 = v38;
    }

    else
    {

      sub_1E42079D4();
      sub_1E3280A90(0, &qword_1EE23AE80);
    }
  }

  sub_1E3BE9DE0(v37);
}

id sub_1E3BEA908()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_textLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_buttonViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_vibrantEffectView) = 0;
  v5 = type metadata accessor for ContentAvailabilityPlatterView();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3BEA9D8(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_layout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_textLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_buttonViews] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30ContentAvailabilityPlatterView_vibrantEffectView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ContentAvailabilityPlatterView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3BEAAA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentAvailabilityPlatterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3BEAB58()
{
  result = qword_1ECF34CA0;
  if (!qword_1ECF34CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34CA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContentAvailabilityType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3BEACDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_3_140(v6, v21);
  v8(v7);
  OUTLINED_FUNCTION_67_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(a1 + 16);
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
    v14 = OUTLINED_FUNCTION_67_0();
    return v15(v14);
  }

  else
  {
    OUTLINED_FUNCTION_37_1();
    (*(v17 + 32))(a2, v2, v10);
    OUTLINED_FUNCTION_114();
    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v10);
  }
}

uint64_t sub_1E3BEADF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_3_140(v6, v21);
  v8(v7);
  OUTLINED_FUNCTION_67_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(a1 + 24);
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_37_1();
    (*(v11 + 32))(a2, v2, v10);
    OUTLINED_FUNCTION_114();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v10);
    v19 = OUTLINED_FUNCTION_67_0();
    return v20(v19);
  }
}

uint64_t sub_1E3BEAF04()
{
  OUTLINED_FUNCTION_5_131();
  OUTLINED_FUNCTION_37_1();
  (*(v1 + 32))(v0);
  type metadata accessor for Either();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E3BEAF84()
{
  OUTLINED_FUNCTION_5_131();
  OUTLINED_FUNCTION_37_1();
  (*(v1 + 32))(v0);
  type metadata accessor for Either();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E3BEB000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v54 = a4;
  v51 = a5;
  v55 = a6;
  sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v49 = v10;
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v45 - v11;
  v57 = a3;
  v48 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v45 - v15;
  v16 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v22 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v45 - v27;
  sub_1E327F454(a1, v56);
  v29 = v53;
  sub_1E42065B4();
  if (v29)
  {

    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, a2);
    (*(v18 + 8))(v21, v16);
    sub_1E327F454(a1, v56);
    v33 = v52;
    v34 = v57;
    sub_1E42065B4();
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v34);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v42 = *(v48 + 32);
    v43 = v46;
    v42(v46, v33, v34);
    v42(v47, v43, v34);
    return sub_1E3BEAF84();
  }

  else
  {
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v38 = *(v22 + 32);
    v38(v28, v21, a2);
    v38(v25, v28, a2);
    return sub_1E3BEAF04();
  }
}

unint64_t sub_1E3BEB424()
{
  result = qword_1ECF34CA8;
  if (!qword_1ECF34CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34CA8);
  }

  return result;
}

uint64_t sub_1E3BEB478(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  OUTLINED_FUNCTION_1_19();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_171();
  v9 = v7 - v8;
  v11 = *(v10 + 16);
  OUTLINED_FUNCTION_1_19();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_0_171();
  v17 = v15 - v16;
  OUTLINED_FUNCTION_1_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_0_171();
  v21 = v19 - v20;
  (*(v22 + 16))(v19 - v20, v23, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v9, v21, v3);
    sub_1E4205D84();
    return (*(v5 + 8))(v9, v3);
  }

  else
  {
    (*(v13 + 32))(v17, v21, v11);
    sub_1E4205D84();
    return (*(v13 + 8))(v17, v11);
  }
}

uint64_t sub_1E3BEB70C(uint64_t a1)
{
  v2 = *(a1 + 24);
  OUTLINED_FUNCTION_1_19();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_171();
  v8 = v6 - v7;
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_1_19();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_0_171();
  v16 = v14 - v15;
  OUTLINED_FUNCTION_1_19();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_0_171();
  v20 = v18 - v19;
  (*(v21 + 16))(v18 - v19, v22, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v8, v20, v2);
    v23 = sub_1E4207944();
    (*(v4 + 8))(v8, v2);
  }

  else
  {
    (*(v12 + 32))(v16, v20, v10);
    v23 = sub_1E4207944();
    (*(v12 + 8))(v16, v10);
  }

  return v23;
}

unint64_t sub_1E3BEB954()
{
  result = qword_1ECF34CB0;
  if (!qword_1ECF34CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34CB0);
  }

  return result;
}

uint64_t sub_1E3BEB9B4()
{
  OUTLINED_FUNCTION_37_1();
  v4 = *(*(v3 - 8) + 64);
  if (v4 <= *(v2 + 64))
  {
    v4 = *(v2 + 64);
  }

  if (!v1)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (v1 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((v1 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(v0 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(v0 + v5);
      if (!*(v0 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(v0 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(v0 + v5);
  if (!*(v0 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *v0;
        break;
      case 3:
        LODWORD(v5) = *v0 | (*(v0 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *v0;
        break;
      default:
        LODWORD(v5) = *v0;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1E3BEBAF0(_BYTE *a1)
{
  OUTLINED_FUNCTION_37_1();
  v5 = *(v4 + 64);
  v7 = *(v6 - 8);
  if (*(v7 + 64) > v5)
  {
    v5 = *(v7 + 64);
  }

  v8 = v5 + 1;
  v9 = 8 * (v5 + 1);
  if (v3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((v3 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v2 > 0xFE)
  {
    v11 = v2 - 255;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v5 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!v2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = 0;
        if (!v2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (v2)
        {
LABEL_26:
          a1[v5] = -v2;
        }

        break;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EitherDecodingError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1E3BEBD6C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v4 = sub_1E327D33C(25705, 0xE200000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1E328438C(*(a1 + 56) + 32 * v4, &v17);
  if ((OUTLINED_FUNCTION_5_132() & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = v15;
  sub_1E3277E60(0x7475626972747461, 0xEA00000000007365, a1, &v17);

  if (!*(&v18 + 1))
  {

    v12 = &v17;
LABEL_15:
    result = sub_1E329505C(v12);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((OUTLINED_FUNCTION_5_132() & 1) == 0)
  {
LABEL_9:

LABEL_10:
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    goto LABEL_11;
  }

  sub_1E3277E60(1701667182, 0xE400000000000000, v15, &v15);

  if (!v16)
  {

    v12 = &v15;
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  result = sub_1E3BEBF48(v6, *(&v6 + 1), v13, v14, &v17);
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;
LABEL_11:
  *a2 = v8;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v11;
  return result;
}

uint64_t sub_1E3BEBEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 64;
  }

  v4 = sub_1E327D33C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 64;
  }
}

uint64_t sub_1E3BEBF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v42 = a4;
  v9 = sub_1E41FE624();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  v44 = a2;
  v45 = 44;
  v46 = 0xE100000000000000;
  sub_1E32822E0();
  v13 = sub_1E4207194();
  if (v13[2])
  {
    v15 = v13[4];
    v14 = v13[5];

    if (_MergedGlobals_215 != -1)
    {
      swift_once();
    }

    v16 = sub_1E3BEBEFC(v15, v14, qword_1EE28C208);

    if (v16 != 64)
    {
      sub_1E3BEC224(v16);
      v18 = v17;
      v20 = v19;
      sub_1E3BEC518(v16);
      OUTLINED_FUNCTION_2_137(v21, v22);
      v23 = v42;
      while (1)
      {
        v24 = sub_1E42060A4();
        if (!v25)
        {
          break;
        }

        v26 = v24;
        v27 = v25;
        if ((sub_1E4205DC4() & 1) == 0)
        {
          MEMORY[0x1E69109D0](v26, v27);
        }
      }

LABEL_18:

      v31 = v45;
      v30 = v46;
      goto LABEL_19;
    }
  }

  else
  {
  }

  sub_1E41FE614();
  a1 = sub_1E41FE5E4();
  a2 = v28;
  (*(v10 + 8))(v12, v9);
  v23 = v42;

  result = sub_1E3BECB58();
  if (result != 64)
  {
    v32 = result;
    sub_1E3BEC224(result);
    v18 = v33;
    v20 = v34;
    sub_1E3BEC518(v32);
    OUTLINED_FUNCTION_2_137(v35, v36);
    while (1)
    {
      v37 = sub_1E42060A4();
      if (!v38)
      {
        break;
      }

      v39 = v37;
      v40 = v38;
      if ((sub_1E4205DC4() & 1) == 0)
      {
        MEMORY[0x1E69109D0](v39, v40);
      }
    }

    goto LABEL_18;
  }

  v20 = 0x80000001E4275DB0;
  v30 = 0xE700000000000000;
  v31 = 0x6E776F6E6B6E55;
  v18 = 0xD00000000000001ALL;
LABEL_19:
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = v23;
  a5[4] = v18;
  a5[5] = v20;
  a5[6] = v31;
  a5[7] = v30;
  return result;
}

void sub_1E3BEC224(char a1)
{
  switch(a1)
  {
    case 2:
    case 4:
    case 6:
    case 7:
    case 57:
      OUTLINED_FUNCTION_1_38();
      break;
    case 12:
    case 21:
    case 51:
      OUTLINED_FUNCTION_0_172();
      break;
    case 15:
    case 18:
    case 19:
    case 37:
    case 38:
    case 39:
    case 40:
    case 42:
    case 43:
    case 44:
    case 45:
    case 47:
    case 48:
    case 59:
    case 63:
      OUTLINED_FUNCTION_23();
      break;
    default:
      return;
  }
}

void sub_1E3BEC518(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_1_38();
      break;
    case 44:
      OUTLINED_FUNCTION_0_172();
      break;
    case 50:
    case 52:
      OUTLINED_FUNCTION_23();
      break;
    default:
      return;
  }
}

uint64_t sub_1E3BECB58()
{
  v0 = sub_1E4207A04();

  if (v0 >= 0x40)
  {
    return 64;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3BECBAC()
{
  result = sub_1E4205CB4();
  qword_1EE28C208 = result;
  return result;
}

uint64_t sub_1E3BECBF8(char a1, char a2)
{
  sub_1E3BEC518(a1);
  v4 = v3;
  v6 = v5;
  sub_1E3BEC518(a2);
  if (v4 == v8 && v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E3BECC84(char a1)
{
  sub_1E4207B44();
  sub_1E3BEC518(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3BECCF0(uint64_t a1, char a2)
{
  sub_1E3BEC518(a2);
  sub_1E4206014();
}

uint64_t sub_1E3BECD4C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3BEC518(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3BECDAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3BECB58();
  *a1 = result;
  return result;
}

void sub_1E3BECDDC(void *a1@<X8>)
{
  sub_1E3BEC518(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1E3BECE08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3BECE48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibGenre.VideosUIGenre(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xC1)
  {
    if (a2 + 63 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 63) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 64;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x40;
  v5 = v6 - 64;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LibGenre.VideosUIGenre(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 63) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xC1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xC0)
  {
    v6 = ((a2 - 193) >> 8) + 1;
    *result = a2 + 63;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 63;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3BED010()
{
  result = qword_1ECF59F10[0];
  if (!qword_1ECF59F10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF59F10);
  }

  return result;
}

uint64_t *MetricsJetEngine.shared.unsafeMutableAddressor()
{
  if (qword_1EE2A2CE0 != -1)
  {
    OUTLINED_FUNCTION_5_133();
  }

  return &static MetricsJetEngine.shared;
}

uint64_t MetricsJetEngine.sharedPipeline.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___VUIMetricsJetEngine_sharedPipeline;
  swift_beginAccess();
  sub_1E42045D4();
  OUTLINED_FUNCTION_2();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

id MetricsJetEngine.wrappedPipeline.getter()
{
  v1 = OBJC_IVAR___VUIMetricsJetEngine_wrappedPipeline;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MetricsJetEngine.wrappedPipeline.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___VUIMetricsJetEngine_wrappedPipeline;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3BED308@<X0>(uint64_t *a1@<X8>)
{
  sub_1E42047A4();
  v2 = sub_1E4205C44();

  *a1 = v2;
  return result;
}

Swift::Void __swiftcall MetricsJetEngine.flushMetrics()()
{

  sub_1E4204914();
}

Swift::Bool __swiftcall MetricsJetEngine.isSharedContent(_:)(Swift::String_optional a1)
{
  if (!a1.value._object)
  {
    return 0;
  }

  object = a1.value._object;
  v3 = sub_1E3285D14();
  v4 = *((*MEMORY[0x1E69E7D40] & **v3) + 0x110);
  v5 = *v3;
  v6 = OUTLINED_FUNCTION_11_5();
  v7 = v4(v6, object);

  if (!v7)
  {
    return 0;
  }

  return 1;
}

uint64_t MetricsJetEngine.flushMetricsWithCompletion(_:)(uint64_t a1, uint64_t a2)
{

  sub_1E4204914();

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = sub_1E3280A90(0, &qword_1EE23B1D0);

  v6 = sub_1E4206A04();
  v8[3] = v5;
  v8[4] = MEMORY[0x1E69AB720];
  v8[0] = v6;
  sub_1E4204CB4();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

Swift::Void __swiftcall MetricsJetEngine.setMonitorsLifecycleEvents(_:)(Swift::Bool a1)
{

  sub_1E42048F4();
}

void static MetricsJetEngine.convertClickDataToLocationData(_:index:)()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E4205F14();
  sub_1E3277E60(v11, v12, v3, &v44);

  if (!v45)
  {
    v33 = &v44;
LABEL_13:
    sub_1E329505C(v33);
    goto LABEL_14;
  }

  v13 = MEMORY[0x1E69E6158];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v14 = *(&v42 + 1);
  v38 = v42;
  v15 = sub_1E4205F14();
  sub_1E3277E60(v15, v16, v3, &v42);

  if (!v43)
  {

    v33 = &v42;
    goto LABEL_13;
  }

  sub_1E329504C(&v42, &v44);
  v17 = sub_1E4205F14();
  sub_1E3277E60(v17, v18, v3, &v40);

  if (v41)
  {
    sub_1E329504C(&v40, &v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4298AD0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v20;
    *(inited + 72) = v13;
    *(inited + 48) = v38;
    *(inited + 56) = v14;
    *(inited + 80) = sub_1E4205F14();
    *(inited + 88) = v21;
    sub_1E328438C(&v44, inited + 96);
    *(inited + 128) = sub_1E4205F14();
    *(inited + 136) = v22;
    sub_1E328438C(&v42, inited + 144);
    *(inited + 176) = sub_1E4205F14();
    *(inited + 184) = v23;
    *(inited + 216) = MEMORY[0x1E69E6530];
    *(inited + 192) = v1;
    sub_1E4205CB4();
    v24 = sub_1E4205F14();
    sub_1E3277E60(v24, v25, v3, &v40);

    if (v41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_10:
        __swift_destroy_boxed_opaque_existential_1(&v42);
        __swift_destroy_boxed_opaque_existential_1(&v44);
        goto LABEL_17;
      }

      v26 = sub_1E4205F14();
      sub_1E3277E60(v26, v27, *&v39[0], &v40);

      if (v41)
      {
        v28 = MEMORY[0x1E69E6158];
        if (swift_dynamicCast())
        {
          v29 = v39[0];
          v30 = sub_1E4205F14();
          v32 = v31;
          v41 = v28;
          v40 = v29;
          sub_1E329504C(&v40, v39);
          swift_isUniquelyReferenced_nonNull_native();
          sub_1E32A87C0(v39, v30, v32);
        }

        goto LABEL_10;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v42);
    __swift_destroy_boxed_opaque_existential_1(&v44);
    sub_1E329505C(&v40);
    goto LABEL_17;
  }

  __swift_destroy_boxed_opaque_existential_1(&v44);

  sub_1E329505C(&v40);
LABEL_14:
  v34 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v34, v4);
  v35 = sub_1E41FFC94();
  v36 = sub_1E42067F4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1E323F000, v35, v36, "MetricsJetEngine:: convertClickDataToLocationData is missing targetId, targetType, or actionType in dict", v37, 2u);
    MEMORY[0x1E69143B0](v37, -1, -1);
  }

  (*(v6 + 8))(v10, v4);
  sub_1E4205CB4();
LABEL_17:
  OUTLINED_FUNCTION_25_2();
}

void static MetricsJetEngine.convertClickDataToImpressionsData(_:index:)()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E4205F14();
  sub_1E3277E60(v11, v12, v3, &v66);

  if (v67)
  {
    v13 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      v14 = v64;
      v15 = sub_1E4205F14();
      sub_1E3277E60(v15, v16, v3, &v64);

      if (*(&v65 + 1))
      {
        sub_1E329504C(&v64, &v66);
        v17 = sub_1E4205F14();
        v19 = v18;
        *(&v65 + 1) = v13;
        v64 = v14;
        sub_1E329504C(&v64, v63);

        swift_isUniquelyReferenced_nonNull_native();
        v62 = v3;
        sub_1E32A87C0(v63, v17, v19);

        v20 = v3;
        v21 = sub_1E4205F14();
        v23 = v22;
        sub_1E328438C(&v66, &v64);
        swift_isUniquelyReferenced_nonNull_native();
        *&v63[0] = v3;
        sub_1E32A87C0(&v64, v21, v23);

        v24 = sub_1E4205F14();
        v26 = v25;
        *(&v65 + 1) = MEMORY[0x1E69E6530];
        *&v64 = v1;
        OUTLINED_FUNCTION_11_98();
        v27 = OUTLINED_FUNCTION_4_143();
        sub_1E32A87C0(v27, v24, v26);

        v28 = sub_1E4205F14();
        OUTLINED_FUNCTION_7_137(v28, v29);

        if (*(&v65 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_21:
            v50 = sub_1E4205F14();
            v52 = v51;
            v53 = sub_1E327D33C(v50, v51);
            if (v54)
            {
              v55 = v53;
              swift_isUniquelyReferenced_nonNull_native();
              *&v63[0] = v20;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
              sub_1E4207644();
              v20 = *&v63[0];

              sub_1E329504C((*(v20 + 7) + 32 * v55), &v64);
              sub_1E4207664();
            }

            else
            {
              v64 = 0u;
              v65 = 0u;
            }

            sub_1E329505C(&v64);
            v56 = sub_1E4205F14();
            sub_1E327D33C(v56, v57);
            if (v58)
            {
              OUTLINED_FUNCTION_11_5();
              swift_isUniquelyReferenced_nonNull_native();
              *&v63[0] = v20;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
              v20 = v63;
              sub_1E4207644();
              OUTLINED_FUNCTION_14_107();
              sub_1E329504C((*(&v65 + 1) + 32 * v52), &v64);
              sub_1E4207664();
            }

            else
            {
              v64 = 0u;
              v65 = 0u;
            }

            sub_1E329505C(&v64);
            v59 = sub_1E4205F14();
            sub_1E327D33C(v59, v60);
            if (v61)
            {
              OUTLINED_FUNCTION_11_5();
              swift_isUniquelyReferenced_nonNull_native();
              *&v63[0] = v20;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
              sub_1E4207644();
              OUTLINED_FUNCTION_14_107();
              sub_1E329504C((*(&v65 + 1) + 32 * v52), &v64);
              sub_1E4207664();
            }

            else
            {
              v64 = 0u;
              v65 = 0u;
            }

            sub_1E329505C(&v64);
            __swift_destroy_boxed_opaque_existential_1(&v66);
            goto LABEL_14;
          }

          v30 = sub_1E4205F14();
          OUTLINED_FUNCTION_7_137(v30, v31);

          if (*(&v65 + 1))
          {
            v32 = MEMORY[0x1E69E6158];
            if (swift_dynamicCast())
            {
              v33 = v63[0];
              v34 = sub_1E4205F14();
              v36 = v35;
              *(&v65 + 1) = v32;
              v64 = v33;
              OUTLINED_FUNCTION_11_98();
              v37 = OUTLINED_FUNCTION_4_143();
              sub_1E32A87C0(v37, v34, v36);

              v20 = v3;
            }
          }

          else
          {
            sub_1E329505C(&v64);
          }

          v42 = sub_1E4205F14();
          OUTLINED_FUNCTION_7_137(v42, v43);

          if (*(&v65 + 1))
          {
            v44 = MEMORY[0x1E69E6158];
            if (swift_dynamicCast())
            {
              v45 = v63[0];
              v46 = sub_1E4205F14();
              v48 = v47;
              *(&v65 + 1) = v44;
              v64 = v45;
              OUTLINED_FUNCTION_11_98();
              v49 = OUTLINED_FUNCTION_4_143();
              sub_1E32A87C0(v49, v46, v48);

              v20 = v62;
            }

            goto LABEL_21;
          }
        }

        sub_1E329505C(&v64);
        goto LABEL_21;
      }

      sub_1E329505C(&v64);
    }
  }

  else
  {
    sub_1E329505C(&v66);
  }

  v38 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v38, v4);
  v39 = sub_1E41FFC94();
  v40 = sub_1E42067F4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1E323F000, v39, v40, "MetricsJetEngine:: convertClickDataToImpressionsData is missing targetId and / or targetType in dict", v41, 2u);
    MEMORY[0x1E69143B0](v41, -1, -1);
  }

  (*(v6 + 8))(v10, v4);
  sub_1E4205CB4();
LABEL_14:
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3BEE318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  sub_1E4205C64();
  a5();

  v6 = sub_1E4205C44();

  return v6;
}

id MetricsJetEngine.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsJetEngine();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3BEE484()
{
  v0 = sub_1E42047B4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34CC0);

  sub_1E4204794();
  return sub_1E4204CA4();
}

uint64_t sub_1E3BEE52C()
{
  v1 = v0;
  v35 = sub_1E4204C14();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34CE0);
  result = sub_1E4207444();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v1 = v6;
    return result;
  }

  v29 = v0;
  v30 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = v2 + 32;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      sub_1E373CBF0(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = *(v4 + 48) + *(v2 + 72) * (v14 | (v7 << 6));
    v18 = *(v2 + 32);
    v31 = *(v2 + 72);
    v32 = v18;
    v18(v34, v17, v35);
    sub_1E32A78B8(&qword_1EE23B6A0, MEMORY[0x1E69AB4A0]);
    result = sub_1E4205DA4();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = v32(*(v6 + 48) + v22 * v31, v34, v35);
    ++*(v6 + 16);
    v4 = v30;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E3BEE884()
{
  v1 = v0;
  v35 = sub_1E4204C34();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34CD0);
  result = sub_1E4207444();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v1 = v6;
    return result;
  }

  v29 = v0;
  v30 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = v2 + 32;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      sub_1E373CBF0(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = *(v4 + 48) + *(v2 + 72) * (v14 | (v7 << 6));
    v18 = *(v2 + 32);
    v31 = *(v2 + 72);
    v32 = v18;
    v18(v34, v17, v35);
    sub_1E32A78B8(&qword_1EE23B698, MEMORY[0x1E69AB4C0]);
    result = sub_1E4205DA4();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = v32(*(v6 + 48) + v22 * v31, v34, v35);
    ++*(v6 + 16);
    v4 = v30;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1E3BEEBDC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = v0;
  v5 = v4(0);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  v11 = *v0;
  v12 = sub_1E4207434();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v3;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v7 + 32;
    v29 = v7 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v7 + 72) * (v22 | (v17 << 6));
      (*(v7 + 16))(v10, *(v11 + 48) + v25, v5);
      (*(v7 + 32))(*(v13 + 48) + v25, v10, v5);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v3 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v13;
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3BEEE08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v4 = sub_1E327D33C(25705, 0xE200000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1E328438C(*(a1 + 56) + 32 * v4, &v20);
  if ((OUTLINED_FUNCTION_0_173() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = v18;
  sub_1E3277E60(0x6D614E7473726966, 0xE900000000000065, a1, &v20);
  if (!v21)
  {

LABEL_22:

    result = sub_1E329505C(&v20);
    goto LABEL_14;
  }

  if ((OUTLINED_FUNCTION_0_173() & 1) == 0)
  {
    goto LABEL_25;
  }

  v8 = v18;
  v7 = v19;
  sub_1E3277E60(0x656D614E7473616CLL, 0xE800000000000000, a1, &v20);
  if (!v21)
  {
LABEL_21:

    goto LABEL_22;
  }

  if ((OUTLINED_FUNCTION_0_173() & 1) == 0)
  {
    goto LABEL_24;
  }

  v10 = v18;
  v9 = v19;
  sub_1E3277E60(0x4E746E756F636361, 0xEB00000000656D61, a1, &v20);
  if (!v21)
  {

    goto LABEL_21;
  }

  if ((OUTLINED_FUNCTION_0_173() & 1) == 0)
  {

LABEL_24:

LABEL_25:

LABEL_13:

LABEL_14:
    v6 = 0;
    v15 = 0;
    v8 = 0;
    v7 = 0;
    v10 = 0;
    v9 = 0;
    v12 = 0;
    v11 = 0;
    v16 = 0;
    v17 = 0;
    v13 = 0;
    goto LABEL_15;
  }

  v12 = v18;
  v11 = v19;
  sub_1E3277E60(0xD000000000000010, 0x80000001E4276210, a1, &v20);
  if (!v21)
  {
    sub_1E329505C(&v20);
    goto LABEL_27;
  }

  if (!swift_dynamicCast())
  {
LABEL_27:
    v13 = 0;
    goto LABEL_28;
  }

  v13 = v18;
LABEL_28:
  sub_1E3277E60(0x634164756F6C4369, 0xEF6449746E756F63, a1, &v20);

  if (v21)
  {
    result = swift_dynamicCast();
    v16 = v18;
    v17 = v19;
    if (!result)
    {
      v16 = 0;
      v17 = 0;
    }
  }

  else
  {
    result = sub_1E329505C(&v20);
    v16 = 0;
    v17 = 0;
  }

  v15 = v19;
LABEL_15:
  *a2 = v6;
  a2[1] = v15;
  a2[2] = v8;
  a2[3] = v7;
  a2[4] = v10;
  a2[5] = v9;
  a2[6] = v12;
  a2[7] = v11;
  a2[8] = v13;
  a2[9] = v16;
  a2[10] = v17;
  return result;
}

double sub_1E3BEF124()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

void sub_1E3BEF19C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 88))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_1E3BEF238()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

void (*sub_1E3BEF2C8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_1E4200664();
  return sub_1E3844B40;
}

uint64_t sub_1E3BEF358()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3BEF3CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E188);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E3BEF4F4(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E188);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3BEF618;
}

void sub_1E3BEF618(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = OUTLINED_FUNCTION_34();
    v8(v7);
    sub_1E3BEF3CC(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E3BEF3CC(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E3BEF6C8()
{
  v1 = OBJC_IVAR____TtCV8VideosUI10EpicInline21EpicInlinePlatterInfo__vStackFrame;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E3BEF768()
{
  v0 = swift_allocObject();
  sub_1E3BEF7A0();
  return v0;
}

uint64_t sub_1E3BEF7A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v9 - v5;
  v7 = OBJC_IVAR____TtCV8VideosUI10EpicInline21EpicInlinePlatterInfo__vStackFrame;
  type metadata accessor for CGRect(0);
  memset(v9, 0, sizeof(v9));
  sub_1E4200634();
  (*(v3 + 32))(v0 + v7, v6, v1);
  return v0;
}

uint64_t sub_1E3BEF88C@<X0>(uint64_t *a1@<X8>)
{
  _s21EpicInlinePlatterInfoCMa(0);
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

unint64_t sub_1E3BEF8EC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1E3BEF930@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = *(_s17EpicInlinePlatterVMa(0) + 44);
  *(a4 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  swift_storeEnumTagMultiPayload();
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  type metadata accessor for LayoutGrid();
  *(a4 + 24) = sub_1E3A2579C(a5);
  *(a4 + 32) = a3;
  _s21EpicInlinePlatterInfoCMa(0);
  OUTLINED_FUNCTION_1_170();
  sub_1E3BEF8EC(v13);

  *(a4 + 40) = sub_1E42010C4();
  *(a4 + 48) = v14;
  type metadata accessor for BackgroundPlaybackModel(0);
  OUTLINED_FUNCTION_0_174();
  sub_1E3BEF8EC(v15);
  v16 = sub_1E42010C4();
  v18 = v17;

  *(a4 + 56) = v16;
  *(a4 + 64) = v18;
  return result;
}

uint64_t sub_1E3BEFAC4@<X0>(uint64_t a1@<X8>)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34CF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - v4;
  v6 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34D00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v30 - v18);
  if ((*(**(v1 + 64) + 360))(v17))
  {
    _s17EpicInlinePlatterVMa(0);
    sub_1E379EBAC(v14);
    (*(v8 + 104))(v11, *MEMORY[0x1E697DBA8], v6);
    v20 = sub_1E4200B34();
    v31 = a1;
    v21 = *(v8 + 8);
    v21(v11, v6);
    v21(v14, v6);
    *v19 = sub_1E4203DA4();
    v19[1] = v22;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34DB0);
    sub_1E3BF1028(v20 & 1, v19 + *(v23 + 44));
    sub_1E3BEFEF0(__src);
    memcpy(v19 + *(v15 + 36), __src, 0x8BuLL);
    sub_1E37E93E8(v19, v5, &qword_1ECF34D00);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34D08);
    sub_1E3BF0BF0();
    OUTLINED_FUNCTION_3_141();
    sub_1E3BF15FC(v24);
    v25 = v31;
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    sub_1E325F6F0(v19, &qword_1ECF34D00);
LABEL_8:
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34DA8);
    return __swift_storeEnumTagSinglePayload(v25, 0, 1, v29);
  }

  if ((*v1 & 1) == 0)
  {
    sub_1E3BEFEF0(__src);
    memcpy(v5, __src, 0x8BuLL);
    OUTLINED_FUNCTION_34();
    swift_storeEnumTagMultiPayload();
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34D08);
    sub_1E3BF0BF0();
    OUTLINED_FUNCTION_3_141();
    sub_1E3BF15FC(v28);
    sub_1E4201F44();
    goto LABEL_8;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34DA8);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v26);
}

uint64_t sub_1E3BEFEF0@<X0>(void *a1@<X8>)
{
  v4 = v2;
  v6 = objc_opt_self();
  if (([v6 isMac] & 1) != 0 || (sub_1E3A2511C(*(v4 + 24))) && *(v4 + 1) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD0);
    inited = swift_initStackObject();
    v120 = xmmword_1E4298AD0;
    *(inited + 16) = xmmword_1E4298AD0;
    sub_1E42036C4();
    OUTLINED_FUNCTION_11_99();
    OUTLINED_FUNCTION_6_19();

    *(inited + 32) = v3;
    sub_1E42036C4();
    OUTLINED_FUNCTION_11_99();
    OUTLINED_FUNCTION_6_19();

    *(inited + 40) = v3;
    sub_1E42036C4();
    sub_1E4203734();
    OUTLINED_FUNCTION_6_19();

    *(inited + 48) = v3;
    *(inited + 56) = sub_1E42036C4();
    OUTLINED_FUNCTION_7_138();
    result = (*(v8 + 360))();
    if ((result & 1) == 0)
    {
      v10 = *(v4 + 32);
      if (v10)
      {

        v11 = OUTLINED_FUNCTION_41_3();
        *(inited + 32) = OUTLINED_FUNCTION_13_101(v11, v12, v13, v14, v15, v16, v17, v18, v109, v111, v112, v114, v115, v117, v118, *(&v118 + 1), v119, *(&v119 + 1), xmmword_1E4298AD0);
        *(inited + 40) = sub_1E4203734();
        result = sub_1E4203734();
        *(inited + 48) = result;
        *(inited + 56) = v10;
      }
    }

    v19 = *(inited + 16);
    if (!v19)
    {
      v20 = a1;
LABEL_42:

      v66 = *(v4 + 8);
      v65 = *(v4 + 16);
      if (v65 >= v66)
      {
        CGAffineTransformMakeScale(__dst, 1.0, v65 / v66);
        OUTLINED_FUNCTION_9_98();
        CGAffineTransformMakeTranslation(__dst, 0.0, -(v65 * (v65 / v66) - v65));
      }

      else
      {
        CGAffineTransformMakeScale(__dst, v66 / v65, 1.0);
        OUTLINED_FUNCTION_9_98();
        CGAffineTransformMakeTranslation(__dst, -(v66 * (v66 / v65) - v66), 0.0);
      }

      v116 = *(v1 + 320);
      v110 = *(v1 + 288);
      v113 = *(v1 + 304);
      a1 = v20;
      sub_1E4203F14();
      sub_1E4203C24();
      sub_1E4201144();
      *v1 = v121;
      *(v1 + 16) = v122;
      v125[4] = v123;
      *(v1 + 56) = v120;
      *(v1 + 40) = v119;
      *(v1 + 88) = v110;
      *(v1 + 72) = v118;
      *(v1 + 120) = v116;
      *(v1 + 104) = v113;
      LOBYTE(v125[17]) = 1;
      sub_1E3BF1774(v125);
LABEL_79:
      memcpy(v128, v125, 0x8AuLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34D68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34DA0);
      sub_1E3BF0DEC();
      sub_1E3BF0F9C();
      OUTLINED_FUNCTION_82();
      sub_1E4201F44();
      memcpy(__src, v124, 0x8AuLL);
      sub_1E3BF176C(__src);
      memcpy(__dst, __src, 0x8BuLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34D58);
      sub_1E3BF0D60();
      OUTLINED_FUNCTION_82();
LABEL_80:
      sub_1E4201F44();
      memcpy(__dst, v128, 0x8BuLL);
      nullsub_1(v107, v108);
      memcpy(v128, __dst, 0x8BuLL);
      return memcpy(a1, v128, 0x8BuLL);
    }

    if (v19 <= 4)
    {
      v20 = a1;
      v21 = inited + 32;
      v22 = MEMORY[0x1E69E7CC0];
      v23 = &qword_1F5D775E8;
      do
      {

        v24 = sub_1E4203C14();
        v26 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = OUTLINED_FUNCTION_27();
          v22 = sub_1E392FDC8(v29, v30, v31, v22);
        }

        v1 = *(v22 + 2);
        v27 = *(v22 + 3);
        if (v1 >= v27 >> 1)
        {
          v32 = OUTLINED_FUNCTION_35(v27);
          v22 = sub_1E392FDC8(v32, v1 + 1, 1, v22);
        }

        *(v22 + 2) = v1 + 1;
        v28 = &v22[16 * v1];
        *(v28 + 4) = v24;
        *(v28 + 5) = v26;
        ++v23;
        v21 += 8;
        --v19;
      }

      while (v19);
      goto LABEL_42;
    }

    goto LABEL_83;
  }

  if (![v6 isTV])
  {
    if (*(v4 + 1))
    {
      if ((sub_1E3A24FDC(*(v4 + 24)) & 1) == 0)
      {
        sub_1E3BF172C(v128);
        return memcpy(a1, v128, 0x8BuLL);
      }

      v58 = 1;
      goto LABEL_34;
    }

LABEL_33:
    v58 = 0;
LABEL_34:
    OUTLINED_FUNCTION_7_138();
    v60 = (*(v59 + 360))();
    v61 = v60;
    if (v58)
    {
      if ((v60 & 1) != 0 || (v62 = *(v4 + 32)) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD0);
        v63 = OUTLINED_FUNCTION_41_3();
        *(v63 + 16) = xmmword_1E4298AD0;
        sub_1E42036C4();
        OUTLINED_FUNCTION_11_99();
        OUTLINED_FUNCTION_6_19();

        *(v63 + 32) = v3;
        sub_1E42036C4();
        OUTLINED_FUNCTION_11_99();
        OUTLINED_FUNCTION_6_19();

        *(v63 + 40) = v3;
        sub_1E42036C4();
        sub_1E4203734();
        OUTLINED_FUNCTION_6_19();

        *(v63 + 48) = v3;
        *(v63 + 56) = sub_1E42036C4();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD0);
        v63 = OUTLINED_FUNCTION_41_3();
        *(v63 + 16) = xmmword_1E4298AD0;

        *(v63 + 32) = sub_1E4203734();
        *(v63 + 40) = sub_1E4203734();
        *(v63 + 48) = sub_1E4203734();
        *(v63 + 56) = v62;
      }

      v129.origin.x = (*(**(v4 + 48) + 88))();
      y = v129.origin.y;
      MaxY = CGRectGetMaxY(v129);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38CC0);
      result = OUTLINED_FUNCTION_41_3();
      v69 = result;
      *(result + 16) = xmmword_1E4298AD0;
      *(result + 32) = 0;
      v70 = y + -20.0;
      if (v61)
      {
        v70 = y;
      }

      v71 = *(v4 + 16);
      *(result + 40) = v70 / v71;
      *(result + 48) = (y + 30.0) / v71;
      *(result + 56) = MaxY / v71;
      v72 = 4;
    }

    else
    {
      if ((v60 & 1) != 0 || (v64 = *(v4 + 32)) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD0);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_1E4297BD0;
        sub_1E42036C4();
        v73 = OUTLINED_FUNCTION_11_99();

        *(v63 + 32) = v73;
        sub_1E42036C4();
        v74 = sub_1E4203734();

        *(v63 + 40) = v74;
        *(v63 + 48) = sub_1E42036C4();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD0);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_1E4297BD0;

        *(v63 + 32) = sub_1E4203734();
        *(v63 + 40) = sub_1E4203734();
        *(v63 + 48) = v64;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1E42A73A0;
      v76 = *(v4 + 16);
      v77 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      *&v78 = v76 + -130.0;
      *(v75 + 32) = [v77 initWithFloat_];
      *(v75 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      *(v75 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v79 = objc_opt_self();
      sub_1E376948C();
      sub_1E42062A4();
      OUTLINED_FUNCTION_6_19();

      v80 = [v79 gradientLayerLocationsFromSpacings:&xmmword_1E4297000 height:v76];

      v81 = sub_1E42062B4();
      v82 = sub_1E32AE9B0(v81);
      if (v82)
      {
        v83 = v82;
        v128[0] = MEMORY[0x1E69E7CC0];
        result = sub_1E3887DC4(0, v82 & ~(v82 >> 63), 0);
        if (v83 < 0)
        {
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v84 = 0;
        v69 = v128[0];
        do
        {
          if ((v81 & 0xC000000000000001) != 0)
          {
            v85 = MEMORY[0x1E6911E60](v84, v81);
          }

          else
          {
            v85 = *(v81 + 8 * v84 + 32);
          }

          v86 = v85;
          [v85 floatValue];
          v88 = v87;

          v128[0] = v69;
          v90 = *(v69 + 16);
          v89 = *(v69 + 24);
          if (v90 >= v89 >> 1)
          {
            v91 = OUTLINED_FUNCTION_35(v89);
            sub_1E3887DC4(v91, v90 + 1, 1);
            v69 = v128[0];
          }

          ++v84;
          *(v69 + 16) = v90 + 1;
          *(v69 + 8 * v90 + 32) = v88;
        }

        while (v83 != v84);
      }

      else
      {

        v69 = MEMORY[0x1E69E7CC0];
      }

      v72 = *(v69 + 16);
      if (!v72)
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

    v92 = 0;
    while (1)
    {
      if (v72 - 1 == v92)
      {
        v94 = *(v63 + 16);
        if (v94)
        {
          if (v94 > v72)
          {
            goto LABEL_85;
          }

          v95 = MEMORY[0x1E69E7CC0];
          v96 = 32;
          do
          {

            v97 = sub_1E4203C14();
            v99 = v98;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v103 = OUTLINED_FUNCTION_27();
              v95 = sub_1E392FDC8(v103, v104, v105, v95);
            }

            v101 = *(v95 + 2);
            v100 = *(v95 + 3);
            if (v101 >= v100 >> 1)
            {
              v106 = OUTLINED_FUNCTION_35(v100);
              v95 = sub_1E392FDC8(v106, v101 + 1, 1, v95);
            }

            *(v95 + 2) = v101 + 1;
            v102 = &v95[16 * v101];
            *(v102 + 4) = v97;
            *(v102 + 5) = v99;
            v96 += 8;
            --v94;
          }

          while (v94);
        }

LABEL_77:

        sub_1E4203C24();
        sub_1E4201064();
        __src[0] = v128[0];
        *&__src[1] = *&v128[1];
        *&__src[3] = *&v128[3];
        LOBYTE(__src[5]) = 1;
        sub_1E3BF1720(__src);
        memcpy(__dst, __src, 0x8BuLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34D58);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34DA0);
        sub_1E3BF0D60();
        sub_1E3BF0F9C();
        OUTLINED_FUNCTION_82();
        goto LABEL_80;
      }

      if (v92 + 1 >= v72)
      {
        break;
      }

      v93 = v69 + 8 * v92++;
      if (*(v93 + 32) > *(v93 + 40))
      {
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (!*(v4 + 1))
  {
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD0);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1E4298AD0;
  sub_1E42036C4();
  OUTLINED_FUNCTION_11_99();
  OUTLINED_FUNCTION_6_19();

  *(v33 + 32) = v3;
  sub_1E42036C4();
  OUTLINED_FUNCTION_11_99();
  OUTLINED_FUNCTION_6_19();

  *(v33 + 40) = v3;
  sub_1E42036C4();
  sub_1E4203734();
  OUTLINED_FUNCTION_6_19();

  *(v33 + 48) = v3;
  *(v33 + 56) = sub_1E42036C4();
  OUTLINED_FUNCTION_7_138();
  result = (*(v34 + 360))();
  if ((result & 1) == 0)
  {
    v35 = *(v4 + 32);
    if (v35)
    {

      v36 = OUTLINED_FUNCTION_41_3();
      *(v33 + 32) = OUTLINED_FUNCTION_13_101(v36, v37, v38, v39, v40, v41, v42, v43, v109, v111, v112, v114, v115, v117, v118, *(&v118 + 1), v119, *(&v119 + 1), xmmword_1E4298AD0);
      *(v33 + 40) = sub_1E4203734();
      result = sub_1E4203734();
      *(v33 + 48) = result;
      *(v33 + 56) = v35;
    }
  }

  v44 = *(v33 + 16);
  if (!v44)
  {
    goto LABEL_78;
  }

  if (v44 <= 4)
  {
    v45 = v33 + 32;
    v46 = MEMORY[0x1E69E7CC0];
    v47 = &qword_1F5D77628;
    do
    {

      v48 = sub_1E4203C14();
      v50 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = OUTLINED_FUNCTION_27();
        v46 = sub_1E392FDC8(v54, v55, v56, v46);
      }

      v52 = *(v46 + 2);
      v51 = *(v46 + 3);
      if (v52 >= v51 >> 1)
      {
        v57 = OUTLINED_FUNCTION_35(v51);
        v46 = sub_1E392FDC8(v57, v52 + 1, 1, v46);
      }

      *(v46 + 2) = v52 + 1;
      v53 = &v46[16 * v52];
      *(v53 + 4) = v48;
      *(v53 + 5) = v50;
      ++v47;
      v45 += 8;
      --v44;
    }

    while (v44);
LABEL_78:

    sub_1E4203C24();
    sub_1E4201064();
    v125[0] = *&__dst[0].a;
    *&v125[1] = *&__dst[0].b;
    *&v125[3] = *&__dst[0].d;
    LOBYTE(v125[5]) = 1;
    sub_1E3BF1760(v125);
    goto LABEL_79;
  }

LABEL_87:
  __break(1u);
  return result;
}

unint64_t sub_1E3BF0BF0()
{
  result = qword_1ECF34D10;
  if (!qword_1ECF34D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34D00);
    sub_1E381F390(&unk_1ECF34D18);
    sub_1E381F390(&unk_1ECF34D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34D10);
  }

  return result;
}

unint64_t sub_1E3BF0CD4()
{
  result = qword_1ECF34D40;
  if (!qword_1ECF34D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34D48);
    sub_1E3BF0D60();
    sub_1E3BF0F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34D40);
  }

  return result;
}

unint64_t sub_1E3BF0D60()
{
  result = qword_1ECF34D50;
  if (!qword_1ECF34D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34D58);
    sub_1E3BF0DEC();
    sub_1E3BF0F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34D50);
  }

  return result;
}

unint64_t sub_1E3BF0DEC()
{
  result = qword_1ECF34D60;
  if (!qword_1ECF34D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34D68);
    sub_1E3BF0ED4(&unk_1ECF34D70);
    sub_1E3BF0F48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34D60);
  }

  return result;
}

unint64_t sub_1E3BF0ED4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v4);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3BF0F48()
{
  result = qword_1ECF34D90;
  if (!qword_1ECF34D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34D90);
  }

  return result;
}

unint64_t sub_1E3BF0F9C()
{
  result = qword_1ECF34D98;
  if (!qword_1ECF34D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34DA0);
    sub_1E3BCF590();
    sub_1E3BF0F48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34D98);
  }

  return result;
}

uint64_t sub_1E3BF1028@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34DE8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v22 - v9);
  if (a1)
  {
    sub_1E42036C4();
    v11 = sub_1E4203734();

    v22 = v11;
    v23 = 0;
  }

  else
  {
    sub_1E4203704();
    v12 = sub_1E4203734();

    v22 = v12;
    v23 = 1;
  }

  sub_1E4201F44();
  v13 = v24;
  v14 = v25;

  v15 = sub_1E42036E4();
  v16 = v10 + *(v4 + 36);
  sub_1E4203D24();
  v17 = sub_1E4202734();
  v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F658) + 36)] = v17;
  *v10 = v15;
  sub_1E37E93E8(v10, v7, &qword_1ECF34DE8);
  *a2 = v13;
  *(a2 + 8) = v14;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34DF0);
  sub_1E37E93E8(v7, a2 + *(v18 + 48), &qword_1ECF34DE8);
  v19 = OUTLINED_FUNCTION_34();
  sub_1E325F6F0(v19, v20);
  sub_1E325F6F0(v7, &qword_1ECF34DE8);
}

void sub_1E3BF1250()
{
  sub_1E3BF1598(319, &qword_1EE289F20, type metadata accessor for CGRect, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3BF1338()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_1E3BF177C(319, &qword_1ECF34DB8, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E3BF1470();
      if (v2 <= 0x3F)
      {
        sub_1E3BF1504();
        if (v3 <= 0x3F)
        {
          sub_1E3BF1598(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3BF1470()
{
  if (!qword_1ECF34DC0)
  {
    _s21EpicInlinePlatterInfoCMa(255);
    sub_1E3BEF8EC(&unk_1ECF34CE8);
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF34DC0);
    }
  }
}

void sub_1E3BF1504()
{
  if (!qword_1ECF34DC8)
  {
    type metadata accessor for BackgroundPlaybackModel(255);
    sub_1E3BEF8EC(&qword_1ECF34CF0);
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF34DC8);
    }
  }
}

void sub_1E3BF1598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3BF15FC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v4);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3BF1668()
{
  result = qword_1ECF34DE0;
  if (!qword_1ECF34DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34DA8);
    sub_1E3BF0BF0();
    sub_1E3BF15FC(&unk_1ECF34D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34DE0);
  }

  return result;
}

void sub_1E3BF172C(uint64_t a1)
{
  bzero(a1, 0x88uLL);
  *(a1 + 138) = -1;
  *(a1 + 136) = 0;
}

void sub_1E3BF177C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1E3BF1800()
{
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E3BF1840();

  return v1;
}

uint64_t sub_1E3BF1840()
{
  sub_1E3BF194C();
  sub_1E3BF1E04();
  v1 = sub_1E3BF1C2C();
  v2 = (*(*v0 + 1712))(v1);
  sub_1E3C37CBC(v2, 23);

  v4 = (*(*v0 + 1736))(v3);
  sub_1E3C37CBC(v4, 17);

  v6 = (*(*v0 + 1760))(v5);
  sub_1E3C37CBC(v6, 39);
}

uint64_t sub_1E3BF194C()
{
  OUTLINED_FUNCTION_2_138();
  v0 += 214;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_30();
  (*(v2 + 2056))(1, 0);

  (v1)(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 2080))(0, 0);

  (v1)(v5);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 2104))(0, 0);

  (v1)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 2176))(4, 0);

  (v1)(v9);
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1984))(5);

  (v1)(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 1696))(19);

  (v1)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1792))(10);

  v16 = (v1)(v15);
  v17 = *sub_1E3E5FD88();
  v18 = *(*v16 + 680);
  v19 = v17;
  v18(v17);
}

uint64_t sub_1E3BF1C2C()
{
  OUTLINED_FUNCTION_2_138();
  v0 += 220;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 1712))(1);

  (v1)(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 1808))(1);

  (v1)(v5);
  OUTLINED_FUNCTION_30();
  (*(v6 + 208))(0x403C000000000000, 0);

  (v1)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 312))(0x403C000000000000, 0);

  v10 = (v1)(v9);
  memset(v12, 0, 24);
  v12[3] = 0x4010000000000000;
  v13 = 0;
  (*(*v10 + 184))(v12);
}

uint64_t sub_1E3BF1E04()
{
  OUTLINED_FUNCTION_2_138();
  v0 += 217;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_30();
  (*(v2 + 1696))(19);

  v4 = (v1)(v3);
  v5 = *sub_1E3E5FD88();
  v6 = *(*v4 + 680);
  v7 = v5;
  v6(v5);
}

uint64_t sub_1E3BF1F50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_children;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

void sub_1E3BF201C(void *a1)
{
  OUTLINED_FUNCTION_37();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1E3BF2108(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_manager);
  OUTLINED_FUNCTION_3_0();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1E3BF21AC()
{
  v1 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_canBeSelected;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3BF21E0(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_canBeSelected;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3BF226C()
{
  v1 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_collapsable;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3BF22A0(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_collapsable;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3BF232C()
{
  v1 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_editable;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3BF2360(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_editable;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3BF23EC()
{
  v1 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_showHeader;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3BF2420(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_showHeader;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3BF24AC()
{
  v1 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_hasDivider;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3BF24E0(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_hasDivider;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3BF2634()
{
  v1 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_showsImageInFavorites;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3BF2668(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_showsImageInFavorites;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3BF2764()
{
  OUTLINED_FUNCTION_29_0();
  v1 = *v0;

  return v1;
}

uint64_t sub_1E3BF27B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  OUTLINED_FUNCTION_3_0();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1E3BF2850()
{
  v1 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isPinnedInFavorites;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3BF2884(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isPinnedInFavorites;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3BF2910()
{
  v1 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isShownInFavoritesByDefault;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3BF2944(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isShownInFavoritesByDefault;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3BF29D0()
{
  v1 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isEditableInFavorites;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3BF2A04(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isEditableInFavorites;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void sub_1E3BF2B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_unknownObjectWeakInit();
  v11 = (v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_defaultChildSelectionIdentifier);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_manager);
  *v12 = 0;
  v12[1] = 0;
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_imageViewModel) = 0;
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_secondaryImageViewModel) = 0;
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_favoritesImageViewModel) = 0;
  v13 = (v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_favoritesTitle);
  *v13 = 0;
  v13[1] = 0;
  v186 = sub_1E4205F14();
  v187 = v14;
  v15 = OUTLINED_FUNCTION_12_90();
  OUTLINED_FUNCTION_6_120(v15, v16, v17, v18, v19, v20, v21, v22, a1, a2, a3, v170);
  sub_1E375D84C(v185);
  if (v188)
  {
    if (OUTLINED_FUNCTION_4_144())
    {
      v23 = v183;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E329505C(&v186);
  }

  v23 = 0;
LABEL_6:
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_collapsable) = v23;
  v186 = sub_1E4205F14();
  v187 = v24;
  v25 = OUTLINED_FUNCTION_12_90();
  OUTLINED_FUNCTION_6_120(v25, v26, v27, v28, v29, v30, v31, v32, v138, v149, v160, v171);
  sub_1E375D84C(v185);
  if (v188)
  {
    if (OUTLINED_FUNCTION_4_144())
    {
      v33 = v183;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1E329505C(&v186);
  }

  v33 = 0;
LABEL_11:
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_editable) = v33;
  v186 = sub_1E4205F14();
  v187 = v34;
  v35 = OUTLINED_FUNCTION_12_90();
  OUTLINED_FUNCTION_6_120(v35, v36, v37, v38, v39, v40, v41, v42, v139, v150, v161, v172);
  sub_1E375D84C(v185);
  if (v188)
  {
    if (OUTLINED_FUNCTION_4_144())
    {
      v43 = v183;
      goto LABEL_16;
    }
  }

  else
  {
    sub_1E329505C(&v186);
  }

  v43 = 0;
LABEL_16:
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_showHeader) = v43;
  v186 = sub_1E4205F14();
  v187 = v44;
  v45 = OUTLINED_FUNCTION_12_90();
  OUTLINED_FUNCTION_6_120(v45, v46, v47, v48, v49, v50, v51, v52, v140, v151, v162, v173);
  sub_1E375D84C(v185);
  if (v188)
  {
    if (OUTLINED_FUNCTION_4_144())
    {
      v53 = v183;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1E329505C(&v186);
  }

  v53 = 0;
LABEL_21:
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_hasDivider) = v53;
  v186 = sub_1E4205F14();
  v187 = v54;
  v55 = OUTLINED_FUNCTION_12_90();
  OUTLINED_FUNCTION_6_120(v55, v56, v57, v58, v59, v60, v61, v62, v141, v152, v163, a4);
  sub_1E375D84C(v185);
  if (v188)
  {
    if (OUTLINED_FUNCTION_4_144())
    {
      v63 = v183;
      goto LABEL_26;
    }
  }

  else
  {
    sub_1E329505C(&v186);
  }

  v63 = 0;
LABEL_26:
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_canBeSelected) = v63;
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_children) = a9;
  v186 = sub_1E4205F14();
  v187 = v64;
  v65 = OUTLINED_FUNCTION_12_90();
  OUTLINED_FUNCTION_6_120(v65, v66, v67, v68, v69, v70, v71, v72, v142, v153, v164, v174);
  sub_1E375D84C(v185);
  if (v188)
  {
    v73 = OUTLINED_FUNCTION_4_144();
    if (v73)
    {
      v74 = v183;
    }

    else
    {
      v74 = 0;
    }

    if (v73)
    {
      v75 = v184;
    }

    else
    {
      v75 = 0;
    }
  }

  else
  {
    sub_1E329505C(&v186);
    v74 = 0;
    v75 = 0;
  }

  OUTLINED_FUNCTION_3_0();
  *v11 = v74;
  v11[1] = v75;

  v186 = sub_1E4205F14();
  v187 = v76;
  v77 = OUTLINED_FUNCTION_12_90();
  OUTLINED_FUNCTION_6_120(v77, v78, v79, v80, v81, v82, v83, v84, v143, v154, v165, v175);
  sub_1E375D84C(v185);
  if (v188)
  {
    if (OUTLINED_FUNCTION_7_139())
    {
      v85 = v181;
      goto LABEL_39;
    }
  }

  else
  {
    sub_1E329505C(&v186);
  }

  v85 = 0;
LABEL_39:
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_showsImageInFavorites) = v85;
  v186 = sub_1E4205F14();
  v187 = v86;
  v87 = OUTLINED_FUNCTION_12_90();
  OUTLINED_FUNCTION_6_120(v87, v88, v89, v90, v91, v92, v93, v94, v144, v155, v166, v176);
  sub_1E375D84C(v185);
  if (v188)
  {
    v95 = OUTLINED_FUNCTION_7_139();
    if (v95)
    {
      v96 = v181;
    }

    else
    {
      v96 = 0;
    }

    if (v95)
    {
      v97 = v182;
    }

    else
    {
      v97 = 0;
    }
  }

  else
  {
    sub_1E329505C(&v186);
    v96 = 0;
    v97 = 0;
  }

  OUTLINED_FUNCTION_3_0();
  *v13 = v96;
  v13[1] = v97;

  v186 = sub_1E4205F14();
  v187 = v98;
  v99 = OUTLINED_FUNCTION_12_90();
  OUTLINED_FUNCTION_6_120(v99, v100, v101, v102, v103, v104, v105, v106, v145, v156, v167, v177);
  sub_1E375D84C(v185);
  if (v188)
  {
    if (OUTLINED_FUNCTION_7_139())
    {
      v107 = v180;
    }

    else
    {
      v107 = 0;
    }
  }

  else
  {
    sub_1E329505C(&v186);
    v107 = 0;
  }

  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isPinnedInFavorites) = v107;
  v186 = sub_1E4205F14();
  v187 = v108;
  v109 = OUTLINED_FUNCTION_12_90();
  OUTLINED_FUNCTION_6_120(v109, v110, v111, v112, v113, v114, v115, v116, v146, v157, v168, v178);
  sub_1E375D84C(v185);
  if (v188)
  {
    if (OUTLINED_FUNCTION_7_139())
    {
      v117 = v180;
      goto LABEL_57;
    }
  }

  else
  {
    sub_1E329505C(&v186);
  }

  v117 = 0;
LABEL_57:
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isShownInFavoritesByDefault) = v117;
  v186 = sub_1E4205F14();
  v187 = v118;
  v119 = OUTLINED_FUNCTION_12_90();
  OUTLINED_FUNCTION_6_120(v119, v120, v121, v122, v123, v124, v125, v126, v147, v158, v169, v179);
  sub_1E375D84C(v185);
  if (!v188)
  {
    sub_1E329505C(&v186);
    goto LABEL_61;
  }

  if (!OUTLINED_FUNCTION_7_139())
  {
LABEL_61:
    v127 = 1;
    goto LABEL_62;
  }

  v127 = v180;
LABEL_62:
  *(v9 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_isEditableInFavorites) = v127;
  sub_1E3D48EDC();
  v129 = v128;
  v130 = OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_children;
  swift_beginAccess();
  v131 = *&v129[v130];
  v132 = sub_1E32AE9B0(v131);
  v133 = v129;

  for (i = 0; ; ++i)
  {
    if (v132 == i)
    {

      return;
    }

    if ((v131 & 0xC000000000000001) != 0)
    {
      v135 = MEMORY[0x1E6911E60](i, v131);
    }

    else
    {
      if (i >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v135 = *(v131 + 8 * i + 32);
    }

    v136 = v135;
    if (__OFADD__(i, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_3_0();
    swift_unknownObjectWeakAssign();
  }

  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t sub_1E3BF3200(uint64_t a1)
{
  sub_1E3294F34(a1, v12);
  if (!v13)
  {
    sub_1E329505C(v12);
    goto LABEL_7;
  }

  v2 = type metadata accessor for RemoteSidebarItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    return v8 & 1;
  }

  v3 = v11;
  v10.receiver = v1;
  v10.super_class = v2;
  if (!objc_msgSendSuper2(&v10, sel_isEqual_, v11))
  {

    goto LABEL_7;
  }

  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 392))();
  v7 = (*((*v4 & *v3) + 0x188))();
  v8 = sub_1E3BF334C(v6, v7);

  return v8 & 1;
}

uint64_t sub_1E3BF334C(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v18 = 0;
      return v18 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v18 = 1;
      return v18 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for RemoteSidebarItem();
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E6911E60](v11 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v14 = *(a1 + 8 * v11);
      }

      v15 = v14;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1E6911E60](v11 - 4, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v16 = *(a2 + 8 * v11);
      }

      v17 = v16;
      v18 = sub_1E4206F64();

      if (v18)
      {
        ++v11;
        if (v13 != i)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void sub_1E3BF3578(unint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 408))(v5);
  v4 = sub_1E37EF010(a1);
  v3(v5, 0);
  OUTLINED_FUNCTION_3_0();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1E3BF3634(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21();
  v5 = (*(v4 + 408))(v8);
  sub_1E37EFABC(a2, *v6);
  sub_1E3BF3FBC(a2, a2, a1);
  v5(v8, 0);
  OUTLINED_FUNCTION_3_0();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E3BF3744()
{

  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI17RemoteSidebarItem_parent);

  swift_unknownObjectRelease();
}

id sub_1E3BF37EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteSidebarItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3BF38D4()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 392))();
}

uint64_t sub_1E3BF3928@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  result = (*(v2 + 416))();
  *a1 = result;
  return result;
}

uint64_t sub_1E3BF3984()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 440))();
}

uint64_t sub_1E3BF39D8()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 464))();
}

uint64_t sub_1E3BF3A2C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 488))() & 1;
}

uint64_t sub_1E3BF3A84()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 512))();
}

uint64_t sub_1E3BF3ADC()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 520))() & 1;
}

uint64_t sub_1E3BF3B34()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 544))() & 1;
}

uint64_t sub_1E3BF3B8C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 568))() & 1;
}

uint64_t sub_1E3BF3BE4()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 592))() & 1;
}

uint64_t sub_1E3BF3C3C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 616))();
}

uint64_t sub_1E3BF3C90()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 640))();
}

uint64_t sub_1E3BF3CE4()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 664))() & 1;
}

uint64_t sub_1E3BF3D3C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 688))();
}

uint64_t sub_1E3BF3D90()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 712))();
}

uint64_t sub_1E3BF3DE4()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 736))() & 1;
}

uint64_t sub_1E3BF3E3C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 760))() & 1;
}

uint64_t sub_1E3BF3E94()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 784))() & 1;
}

uint64_t sub_1E3BF3EEC()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 816))();
}

uint64_t sub_1E3BF3F40()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 824))();
}

void sub_1E3BF3FBC(uint64_t a1, uint64_t a2, char *a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  if (sub_1E32AE9B0(*v3) < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = 1 - v8;
  if (__OFSUB__(1, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1E32AE9B0(v7);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1E3797CDC(v12);

  sub_1E3BF4078(a1, a2, 1, a3);
}

void sub_1E3BF4078(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  type metadata accessor for RemoteSidebarItem();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = sub_1E4207384();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = sub_1E4207384();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_1E3BF41B8()
{
  v1 = v0;
  sub_1E39DF25C();
  if (sub_1E39DFA50())
  {
    OUTLINED_FUNCTION_2_139();

    sub_1E4148884(v2);
  }

  else
  {
    OUTLINED_FUNCTION_2_139();

    sub_1E3D54258(v3);
  }

  swift_beginAccess();
  v4 = *(v0 + 280);

  v5 = *sub_1E3E5FDEC();
  v6 = *(*v4 + 680);
  v7 = v5;
  v6(v5);

  v8 = *(v1 + 280);
  LOBYTE(v33) = 11;

  v9 = sub_1E3C3DE00(&unk_1F5D999E0);
  OUTLINED_FUNCTION_0_175(v9, v10, v11, v12, v13, v14, v15, v16, v33, v34, v35, SLOBYTE(v36), v37, v38, v39, v40, v41, v42);
  v17 = OUTLINED_FUNCTION_1_171();
  (*(*v8 + 1600))(&v33, 23, v17 & 1, &unk_1F5D999E0);

  v18 = *(v1 + 280);
  LOBYTE(v33) = 4;
  v46 = 1;
  v45 = 1;
  v44 = 1;
  v43 = 1;

  v19 = sub_1E3C3DE00(&unk_1F5D99950);
  OUTLINED_FUNCTION_0_175(v19, v20, v21, v22, v23, v24, v25, v26, v33, v34, v35, SLOBYTE(v36), v37, v38, v39, v40, v41, v42);
  v27 = OUTLINED_FUNCTION_1_171();
  (*(*v18 + 1600))(&v33, 22, v27 & 1, &unk_1F5D99950);

  swift_beginAccess();
  v28 = *(v1 + 288);

  v36 = sub_1E3952C40();
  v37 = v29;
  v38 = v30;
  v39 = v31;
  LOBYTE(v40) = 0;
  (*(*v28 + 184))(&v36);
}

void *sub_1E3BF4440(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = v4;
  return result;
}

uint64_t sub_1E3BF4480@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECF714F0;
  return result;
}

void sub_1E3BF44D8()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = sub_1E3741090(1163022157, 0xE400000000000000, v0);
    v4 = v3;

    if (v4)
    {
      sub_1E32822E0();
      v2 = sub_1E42071D4();
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    qword_1ECF714F8 = v2;
    qword_1ECF71500 = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3BF45B8()
{
  type metadata accessor for FocusableText();
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  sub_1E32752B0(&qword_1EE28A190, &qword_1ECF2D3C0);
  return sub_1E42006B4();
}

uint64_t type metadata accessor for FocusableText()
{
  result = qword_1EE2A6D50;
  if (!qword_1EE2A6D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1E3BF4698()
{
  v0 = sub_1E4202A14();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = type metadata accessor for FocusableText();
  sub_1E3746E10(v13);
  sub_1E3E3B878();
  v16 = v15;
  (*(v9 + 8))(v13, v7);
  if (!v16)
  {
    sub_1E4202854();
  }

  sub_1E3BF6EB8(v6);
  v17 = sub_1E42027B4();

  (*(v2 + 8))(v6, v0);
  CTFontGetAscent(v17);
  CTFontGetDescent(v17);
  VUIRoundValue();
  OUTLINED_FUNCTION_4_145(*(v14 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F38);
  sub_1E42038F4();
  v18 = 0.0;
  if (*&v20 != 1)
  {
    OUTLINED_FUNCTION_4_145(*(v14 + 44));
    sub_1E42038F4();
    v18 = v20 - (v20 + v20);
  }

  OUTLINED_FUNCTION_4_145(*(v14 + 44));
  sub_1E42038F4();

  return v18;
}

uint64_t sub_1E3BF4978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v12 = type metadata accessor for FocusableText();
  v13 = v12[8];
  *(a6 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  OUTLINED_FUNCTION_19_77();
  v14 = v12[9];
  *(a6 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  OUTLINED_FUNCTION_19_77();
  v15 = v12[10];
  *(a6 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34E80);
  OUTLINED_FUNCTION_19_77();
  type metadata accessor for CGSize(0);
  v16 = OUTLINED_FUNCTION_12_91();
  OUTLINED_FUNCTION_9_99(v16, v17, v18, v19, v20, v21, v22, v23, v61, v64, v24, v67);
  v25 = OUTLINED_FUNCTION_12_91();
  OUTLINED_FUNCTION_9_99(v25, v26, v27, v28, v29, v30, v31, v32, v62, v65, v33, v67);
  v34 = a6 + v12[13];
  LOBYTE(v63) = 0;
  sub_1E42038E4();
  *v34 = v67;
  *(v34 + 1) = *(&v67 + 1);
  v35 = OUTLINED_FUNCTION_12_91();
  OUTLINED_FUNCTION_9_99(v35, v36, v37, v38, v39, v40, v41, v42, v63, v66, v43, v67);
  v44 = v12[15];
  type metadata accessor for NSWritingDirection();
  sub_1E42038E4();
  *(a6 + v44) = v67;
  v45 = v12[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0);
  swift_allocObject();
  *(a6 + v45) = sub_1E4200544();
  *a6 = a1;
  v46 = a6 + v12[16];
  *v46 = a3;
  *(v46 + 1) = a4;
  v46[16] = a5;
  if (!a2)
  {

    v48 = sub_1E3C27528();

    if (v48)
    {
      type metadata accessor for TextLayout();
      v47 = swift_dynamicCastClass();
      if (v47)
      {
        goto LABEL_7;
      }
    }

    type metadata accessor for TextLayout();
    v47 = sub_1E383BCC0();
    goto LABEL_7;
  }

  v47 = a2;
LABEL_7:
  a6[1] = v47;
  type metadata accessor for TextLayout();

  v49 = sub_1E383BCC0();
  a6[2] = v49;
  v50 = *(*v49 + 1648);

  v50(v47);
  OUTLINED_FUNCTION_36();
  (*(v51 + 2056))(0, 1);
  OUTLINED_FUNCTION_36();
  (*(v52 + 2104))(0, 1);
  OUTLINED_FUNCTION_36();
  (*(v53 + 2080))(0, 1);

  v54 = sub_1E383BCC0();
  a6[3] = v54;
  v55 = *(*v54 + 1648);

  v55(v47);

  OUTLINED_FUNCTION_36();
  (*(v56 + 1696))(14);
  OUTLINED_FUNCTION_36();
  (*(v57 + 1792))(6);
  v58 = [objc_opt_self() secondaryLabelColor];
  OUTLINED_FUNCTION_36();
  (*(v59 + 680))();
}

uint64_t sub_1E3BF4DFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v122 = a1;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34ED8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v121 = v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v107 = v6;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EA0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v106 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v105 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EE0);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v118 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EE8);
  OUTLINED_FUNCTION_0_10();
  v114 = v15;
  v115 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v111 = v17;
  OUTLINED_FUNCTION_138();
  v124 = type metadata accessor for FocusableText();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v110 = v21;
  v23 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EF0);
  OUTLINED_FUNCTION_0_10();
  v112 = v25;
  v113 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v123 = v27;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v126 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34E98);
  v31 = OUTLINED_FUNCTION_17_2(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_5();
  v116 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v117 = &v105 - v34;
  v36 = *v1;
  v35 = v1[1];

  v37 = OUTLINED_FUNCTION_18();

  sub_1E3FAC790(v38, v35, v37, v137);
  sub_1E3BF7138(v1, v23);
  v39 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v40 = swift_allocObject();
  sub_1E3BF719C(v23, v40 + v39);
  sub_1E3BD9530();
  v41 = OUTLINED_FUNCTION_51_1();
  sub_1E40AB6EC(v41 & 1);

  v143 = v137[0];
  v144[0] = v137[1];
  *(v144 + 9) = *(&v137[1] + 9);
  sub_1E38E12E4(&v143);
  v42 = v1[2];

  v43 = OUTLINED_FUNCTION_18();
  sub_1E3FAC790(v36, v42, v43, v142);
  sub_1E4203DA4();
  sub_1E42015C4();
  memcpy(v137, v142, 0xA0uLL);
  LOWORD(v137[10]) = 256;
  sub_1E3BF7138(v2, v23);
  v44 = swift_allocObject();
  sub_1E3BF719C(v23, v44 + v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EF8);
  sub_1E3BF73F0();
  v45 = OUTLINED_FUNCTION_51_1();
  v46 = v111;
  sub_1E40AB6EC(v45 & 1);

  memcpy(v138, v137, 0xA2uLL);
  sub_1E325F6F0(v138, &qword_1ECF34EF8);
  v47 = sub_1E4203DA4();
  v49 = v48;
  v50 = v126;
  v51 = v126 + *(v125 + 36);
  (*(v114 + 32))(v51, v46, v115);
  v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EB8) + 36));
  *v52 = v47;
  v52[1] = v49;
  (*(v112 + 32))(v50, v123, v113);
  v53 = v124;
  v54 = (v2 + *(v124 + 52));
  v55 = *v54;
  v56 = *(v54 + 1);
  LODWORD(v114) = v55;
  LOBYTE(v137[0]) = v55;
  v115 = v56;
  *(&v137[0] + 1) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  OUTLINED_FUNCTION_15_95();
  v113 = v57;
  sub_1E42038F4();
  LODWORD(v112) = LOBYTE(v136[0]);
  v58 = sub_1E4203DA4();
  v110 = v59;
  v111 = v58;
  v60 = sub_1E42036C4();
  v137[0] = OUTLINED_FUNCTION_10_93(v2 + *(v53 + 44));
  *&v137[1] = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  OUTLINED_FUNCTION_15_95();
  sub_1E42038F4();
  sub_1E4203EC4();
  sub_1E3BF4698();
  sub_1E4203EC4();
  v137[0] = 0x3FF0000000000000uLL;
  *&v137[1] = 0;
  *(&v137[1] + 1) = 0x3FF0000000000000;
  v137[2] = 0uLL;
  sub_1E4202B14();
  sub_1E3BF7928(v136);
  v63 = v127;
  v62 = v128;
  v64 = v129;
  v65 = v130;
  v109 = v131;
  sub_1E3BF4698();
  v66 = *(v53 + 60);
  v123 = v2;
  v137[0] = *(v2 + v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F38);
  OUTLINED_FUNCTION_15_95();
  sub_1E42038F4();
  v67 = v136[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E378);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1E4298AD0;
  if (v67 == 1)
  {
    sub_1E42036E4();
  }

  else
  {
    sub_1E42036C4();
  }

  *(v68 + 32) = sub_1E4203C14();
  *(v68 + 40) = v69;
  sub_1E42036E4();
  *(v68 + 48) = sub_1E4203C14();
  *(v68 + 56) = v70;
  sub_1E42036E4();
  *(v68 + 64) = sub_1E4203C14();
  *(v68 + 72) = v71;
  if (v67 == 1)
  {
    sub_1E42036C4();
  }

  else
  {
    sub_1E42036E4();
  }

  *(v68 + 80) = sub_1E4203C14();
  *(v68 + 88) = v72;
  sub_1E4203F74();
  sub_1E4203F84();
  sub_1E4203C24();
  sub_1E4201064();
  sub_1E4203DA4();
  sub_1E4200D94();
  v73 = OUTLINED_FUNCTION_26_60();
  OUTLINED_FUNCTION_26_60();
  v75 = v74;
  *&v135[0] = v60;
  WORD4(v135[0]) = 256;
  *(v135 + 10) = v140[0];
  HIWORD(v135[0]) = v140[1];
  *&v135[1] = v63;
  *(&v135[1] + 1) = v62;
  *&v135[2] = v64;
  *(&v135[2] + 1) = v65;
  v76 = v109;
  LOBYTE(v135[3]) = v109;
  *(&v135[3] + 1) = 257;
  *(&v145[2] + 15) = *(&v135[2] + 15);
  v145[2] = v135[2];
  v145[1] = v135[1];
  v145[0] = v135[0];
  memcpy(v136, v141, 0x58uLL);
  *&v136[11] = v73;
  v136[12] = v75;
  memcpy(&v145[3] + 8, v136, 0x68uLL);
  memcpy(v137, v141, 0x58uLL);
  *(&v137[5] + 1) = v73;
  *&v137[6] = v75;
  sub_1E3743538(v135, &v127, &qword_1ECF34F58);
  sub_1E3743538(v136, &v127, &qword_1ECF34F60);
  OUTLINED_FUNCTION_92_0();
  sub_1E325F6F0(v77, v78);
  v127 = v60;
  LOWORD(v128) = 256;
  *(&v128 + 2) = v140[0];
  HIWORD(v128) = v140[1];
  v129 = v63;
  v130 = v62;
  v131 = v64;
  v132 = v65;
  v133 = v76;
  v134 = 257;
  sub_1E325F6F0(&v127, &qword_1ECF34F58);
  memcpy(v139, v145, sizeof(v139));
  memcpy(v140, v145, sizeof(v140));
  sub_1E3743538(v139, v137, &qword_1ECF34F30);
  sub_1E325F6F0(v140, &qword_1ECF34F30);
  memcpy(&v141[2], v139, 0xA0uLL);
  v141[0] = v111;
  v141[1] = v110;
  v79 = v118;
  v80 = v123;
  sub_1E3BF67B0(v118);
  v137[0] = *(v80 + *(v124 + 60));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F38);
  OUTLINED_FUNCTION_15_95();
  sub_1E42038F4();
  if (v112)
  {
    v81 = v136[0];
    v82 = sub_1E4203DA4();
    v84 = v83;
    memcpy(v135, v141, sizeof(v135));
    v136[0] = v82;
    v136[1] = v84;
    memcpy(&v136[2], v141, 0xB0uLL);
    v85 = v107;
    sub_1E3743538(v126, v107, &qword_1ECF34EB0);
    memcpy((v85 + *(v105 + 36)), v136, 0xC0uLL);
    *&v137[0] = v82;
    *(&v137[0] + 1) = v84;
    memcpy(&v137[1], v135, 0xB0uLL);
    sub_1E3743538(v141, &v127, &qword_1ECF34F40);
    sub_1E3743538(v136, &v127, &qword_1ECF34EC0);
    sub_1E325F6F0(v137, &qword_1ECF34EC0);
    if (v81 == 1)
    {
      v86 = sub_1E4201D54();
    }

    else
    {
      v86 = sub_1E4201D64();
    }

    v89 = v86;
    v90 = sub_1E4201B24();
    v91 = v106;
    v92 = v106 + *(v119 + 36);
    sub_1E3743538(v79, v92, &qword_1ECF34EE0);
    v93 = (v92 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34EC8) + 36));
    *v93 = v89;
    v93[1] = v90;
    sub_1E3741EA0(v85, v91, &qword_1ECF34EA8);
    v94 = v91;
    v95 = v108;
    sub_1E3741EA0(v94, v108, &qword_1ECF34EA0);
    sub_1E3743538(v95, v121, &qword_1ECF34EA0);
    swift_storeEnumTagMultiPayload();
    sub_1E3BF6118();
    sub_1E3BF6288();
    sub_1E4201F44();
    sub_1E325F6F0(v95, &qword_1ECF34EA0);
    sub_1E325F6F0(v79, &qword_1ECF34EE0);
    v88 = v126;
  }

  else
  {
    v87 = v126;
    sub_1E3743538(v126, v121, &qword_1ECF34EB0);
    swift_storeEnumTagMultiPayload();
    sub_1E3BF6118();
    sub_1E3BF6288();
    sub_1E4201F44();
    sub_1E325F6F0(v79, &qword_1ECF34EE0);
    v88 = v87;
  }

  sub_1E325F6F0(v88, &qword_1ECF34EB0);
  OUTLINED_FUNCTION_92_0();
  sub_1E3741EA0(v96, v97, v98);
  sub_1E325F6F0(v141, &qword_1ECF34F40);
  LOBYTE(v137[0]) = v114;
  *(&v137[0] + 1) = v115;
  OUTLINED_FUNCTION_15_95();
  sub_1E42038F4();
  v99 = v136[0];
  v100 = v122;
  OUTLINED_FUNCTION_92_0();
  sub_1E3741EA0(v101, v102, v103);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34E90);
  *(v100 + *(result + 36)) = v99;
  return result;
}

uint64_t sub_1E3BF5C2C()
{
  type metadata accessor for TextViewModel();
  OUTLINED_FUNCTION_39_6();
  if (!(!v2 & v1))
  {
    type metadata accessor for TextLayout();
    OUTLINED_FUNCTION_39_6();
    if (!(!v2 & v1))
    {
      sub_1E3BF5EC0(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      OUTLINED_FUNCTION_39_6();
      if (!(!v2 & v1))
      {
        sub_1E3BF5EC0(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        OUTLINED_FUNCTION_39_6();
        if (!(!v2 & v1))
        {
          sub_1E3BF5EC0(319, &qword_1EE289E88, MEMORY[0x1E6980E88], MEMORY[0x1E697DCC0]);
          OUTLINED_FUNCTION_39_6();
          if (!(!v2 & v1))
          {
            sub_1E3BF5EC0(319, &qword_1EE288648, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
            OUTLINED_FUNCTION_39_6();
            if (!(!v2 & v1))
            {
              sub_1E3BF5F24(319, &qword_1EE288668, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
              if (v4 > 0x3F)
              {
                return v3;
              }

              else
              {
                sub_1E3BF5EC0(319, &qword_1EE288658, type metadata accessor for NSWritingDirection, MEMORY[0x1E6981790]);
                OUTLINED_FUNCTION_39_6();
                if (!(!v2 & v1))
                {
                  sub_1E3BF5F24(319, &qword_1EE288418, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
                  OUTLINED_FUNCTION_39_6();
                  if (!(!v2 & v1))
                  {
                    sub_1E3BF5F74();
                    OUTLINED_FUNCTION_39_6();
                    if (!(!v2 & v1))
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
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

  return v0;
}

void sub_1E3BF5EC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E3BF5F24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1E3BF5F74()
{
  if (!qword_1EE28A188)
  {
    v0 = sub_1E4200554();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE28A188);
    }
  }
}

unint64_t sub_1E3BF5FD4()
{
  result = qword_1EE289B18;
  if (!qword_1EE289B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34E90);
    sub_1E3BF608C();
    sub_1E32752B0(&qword_1EE288838, &qword_1ECF34ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B18);
  }

  return result;
}

unint64_t sub_1E3BF608C()
{
  result = qword_1EE288EC0;
  if (!qword_1EE288EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34E98);
    sub_1E3BF6118();
    sub_1E3BF6288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288EC0);
  }

  return result;
}

unint64_t sub_1E3BF6118()
{
  result = qword_1EE2894C8;
  if (!qword_1EE2894C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34EA0);
    sub_1E3BF61D0();
    sub_1E32752B0(&qword_1EE289378, &qword_1ECF34EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2894C8);
  }

  return result;
}

unint64_t sub_1E3BF61D0()
{
  result = qword_1EE289618;
  if (!qword_1EE289618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34EA8);
    sub_1E3BF6288();
    sub_1E32752B0(&qword_1EE2889F8, &qword_1ECF34EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289618);
  }

  return result;
}

unint64_t sub_1E3BF6288()
{
  result = qword_1EE2899F0;
  if (!qword_1EE2899F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34EB0);
    sub_1E3BD9530();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289238, &qword_1ECF34EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899F0);
  }

  return result;
}

void sub_1E3BF636C(uint64_t *a1, double a2, double a3)
{
  v6 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = type metadata accessor for FocusableText();
  v14 = (a1 + v13[11]);
  v15 = v14[1];
  v16 = v14[2];
  *&v49 = *v14;
  *(&v49 + 1) = v15;
  *&v50 = v16;
  *&v47 = a2;
  *(&v47 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E4203904();
  OUTLINED_FUNCTION_10_93(a1 + v13[12]);
  sub_1E42038F4();
  *(&v49 + 1) = v15;
  *&v50 = v16;
  sub_1E42038F4();
  v17 = a1 + v13[13];
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v49) = v18;
  *(&v49 + 1) = v19;
  LOBYTE(v47) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E4203904();
  v20 = *a1;
  swift_beginAccess();
  v21 = *(v20 + 280);
  if (v21)
  {
    v44 = *(v20 + 280);
    v45 = v6;
    v22 = v44;
  }

  else
  {
    OUTLINED_FUNCTION_18();
    v23 = sub_1E3C287F4(0);
    if (!v23)
    {
      return;
    }

    v44 = v23;
    v45 = v6;
    v22 = v23;
    v21 = 0;
  }

  v24 = *MEMORY[0x1E69DB688];
  v25 = v21;
  if ([v22 attribute:v24 atIndex:0 effectiveRange:0])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  if (*(&v48 + 1))
  {
    v26 = v8;
    sub_1E3BF79D4();
    if (swift_dynamicCast())
    {
      v27 = v46;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v26 = v8;
    sub_1E325F6F0(&v49, &unk_1ECF296E0);
    v27 = 0;
  }

  type metadata accessor for LanguageAwareString();
  v28 = v27;
  v29 = v22;
  v30 = sub_1E3D36A44();
  v31 = LanguageAwareString.__allocating_init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(v29, v27, v30 & 1);
  v32 = a1[1];
  sub_1E3746E10(v12);
  sub_1E3BF797C();
  OUTLINED_FUNCTION_92_0();
  v34 = sub_1E37B89FC(v33);
  v36 = v35;
  v37 = (*(v26 + 8))(v12, v45);
  if (v36)
  {
    v38 = 1;
  }

  else
  {
    v38 = v34;
  }

  v39 = (*(*v32 + 2168))(v37);
  if (v38 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v40)
    {
      v41 = 4;
    }

    else
    {
      v41 = v39;
    }

    (*((*MEMORY[0x1E69E7D40] & *v31) + 0x258))(-1, v38, v41, 1, a2);
    v42 = (a1 + v13[15]);
    v43 = v42[1];
    *&v49 = *v42;
    *(&v49 + 1) = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F38);
    sub_1E4203904();
  }
}

uint64_t sub_1E3BF67B0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  if (qword_1ECF5A1D0 != -1)
  {
    v5 = OUTLINED_FUNCTION_2_140();
  }

  if (qword_1ECF71500)
  {
    v8 = *v1;
    MEMORY[0x1EEE9AC00](v5);
    *(&v15 - 4) = v1;
    *(&v15 - 3) = v9;
    *(&v15 - 2) = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F50);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C2B8);
    v15 = MEMORY[0x1E6981148];
    v16 = MEMORY[0x1E6981138];
    OUTLINED_FUNCTION_5_134();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v15 = v11;
    v16 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v13 = OUTLINED_FUNCTION_51_1();
    sub_1E40424BC(v8, v13 & 1, sub_1E3BF75E8, v7);
    sub_1E3741EA0(v7, a1, &qword_1ECF34F48);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }
}

uint64_t sub_1E3BF69CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v6 = type metadata accessor for FocusableText();
  v7 = v6 - 8;
  v62 = *(v6 - 8);
  v61 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v59 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_138();
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v56 = v10;
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v51 = v12 - v11;
  OUTLINED_FUNCTION_138();
  v55 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v53 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v50 = v16 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8);
  OUTLINED_FUNCTION_0_10();
  v60 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v64 = v19;
  OUTLINED_FUNCTION_138();
  v20 = sub_1E4201324();
  v52 = v20;
  v54 = *(v20 - 8);
  v21 = v54;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v49 = v23 - v22;
  v65 = *(v3 + *(v7 + 68));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F38);
  sub_1E42038F4();
  v25 = MEMORY[0x1E697E7D8];
  if (v68 != 1)
  {
    v25 = MEMORY[0x1E697E7D0];
  }

  (*(v21 + 104))(v24, *v25, v20);
  *&v65 = a1;
  *(&v65 + 1) = a2;
  sub_1E32822E0();

  v26 = sub_1E4202C44();
  v28 = v27;
  v48[1] = v29;
  *&v65 = v26;
  *(&v65 + 1) = v27;
  v31 = v30 & 1;
  v66 = v30 & 1;
  v67 = v29;
  v48[0] = v3;
  v32 = *(v3 + 24);
  v33 = v50;
  sub_1E3746E10(v50);
  v34 = MEMORY[0x1E6981148];
  v35 = MEMORY[0x1E6981138];
  v36 = j__OUTLINED_FUNCTION_18();
  v37 = v51;
  sub_1E37B5FBC(v51);
  v38 = j__OUTLINED_FUNCTION_18() & 1;
  v39 = v32;
  v40 = v49;
  sub_1E37B6028(v39, v33, v49, v36, v37, v38, v34, v35, v64);
  (*(v56 + 8))(v37, v57);
  (*(v53 + 8))(v33, v55);
  sub_1E37434B8(v26, v28, v31);

  v41 = v59;
  sub_1E3BF7138(v48[0], v59);
  v42 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v43 = swift_allocObject();
  sub_1E3BF719C(v41, v43 + v42);
  *&v65 = v34;
  *(&v65 + 1) = v35;
  OUTLINED_FUNCTION_5_134();
  swift_getOpaqueTypeConformance2();
  v44 = v58;
  v45 = OUTLINED_FUNCTION_51_1();
  v46 = v64;
  sub_1E40AB6EC(v45 & 1);

  (*(v60 + 8))(v46, v44);
  return (*(v54 + 8))(v40, v52);
}

uint64_t sub_1E3BF6EB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34E80);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E3743538(v2, &v17 - v9, &qword_1ECF34E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4202A14();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4206804();
    v14 = sub_1E42026D4();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E3270FC8(0x747865746E6F43, 0xE700000000000000, &v18);
      _os_log_impl(&dword_1E323F000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E69143B0](v16, -1, -1);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E3BF7138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusableText();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3BF719C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusableText();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3BF7200()
{
  v3 = OUTLINED_FUNCTION_18_70();
  OUTLINED_FUNCTION_17_2(v3);
  v5 = (v0 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  sub_1E3BF636C(v5, v2, v1);
}

uint64_t sub_1E3BF7268()
{
  v2 = (OUTLINED_FUNCTION_18_70() - 8);
  v3 = v0 + ((*(*v2 + 80) + 16) & ~*(*v2 + 80));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  OUTLINED_FUNCTION_24_58(v4, v5, v6, v7, v8, v9, v10, v11, v1);
  sub_1E4203904();
  OUTLINED_FUNCTION_17_81();
  OUTLINED_FUNCTION_10_93(v3 + v2[13]);
  OUTLINED_FUNCTION_17_81();
  LOBYTE(v28) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  OUTLINED_FUNCTION_24_58(v12, v13, v14, v15, v16, v17, v18, v19, v28);
  sub_1E4203904();
  OUTLINED_FUNCTION_17_81();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  OUTLINED_FUNCTION_24_58(v20, v20, v21, v22, v23, v24, v25, v26, v29);
  return sub_1E4203AA4();
}

unint64_t sub_1E3BF73F0()
{
  result = qword_1ECF34F00;
  if (!qword_1ECF34F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34EF8);
    sub_1E3BF747C();
    sub_1E3BF7594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34F00);
  }

  return result;
}

unint64_t sub_1E3BF747C()
{
  result = qword_1ECF34F08;
  if (!qword_1ECF34F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34F10);
    sub_1E3BF7508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34F08);
  }

  return result;
}

unint64_t sub_1E3BF7508()
{
  result = qword_1ECF34F18;
  if (!qword_1ECF34F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34F20);
    sub_1E3BD9530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34F18);
  }

  return result;
}

unint64_t sub_1E3BF7594()
{
  result = qword_1ECF34F28;
  if (!qword_1ECF34F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34F28);
  }

  return result;
}

uint64_t objectdestroyTm_28()
{
  v1 = type metadata accessor for FocusableText();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  v7 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4202A14();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v2 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E3BF7890()
{
  v2 = OUTLINED_FUNCTION_18_70();
  v3 = OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_10_93(v0 + *(v3 + 64) + ((*(v4 + 80) + 16) & ~*(v4 + 80)));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  OUTLINED_FUNCTION_24_58(v5, v5, v6, v7, v8, v9, v10, v11, v1);
  return sub_1E4203904();
}

unint64_t sub_1E3BF797C()
{
  result = qword_1EE2844B8[0];
  if (!qword_1EE2844B8[0])
  {
    type metadata accessor for FocusableText();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2844B8);
  }

  return result;
}

unint64_t sub_1E3BF79D4()
{
  result = qword_1EE23B298;
  if (!qword_1EE23B298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B298);
  }

  return result;
}

uint64_t sub_1E3BF7A80(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_1E4202034();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

uint64_t sub_1E3BF7B00(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1E4202034();

  return __swift_project_value_buffer(v3, a2);
}

void sub_1E3BF7B54()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  memcpy(v20, v1, sizeof(v20));
  v13 = *(*v3 + 392);

  v15 = v13(v14);
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = v15;
  if (*v15 != _TtC8VideosUI22UpNextLockupCellLayout)
  {

LABEL_4:
    type metadata accessor for UpNextLockupCellLayout();
    v16 = sub_1E3A2246C();
  }

  type metadata accessor for ContextMenuModel();
  sub_1E3E6CDBC();

  sub_1E4207414();
  (*(v8 + 104))(v12, *MEMORY[0x1E697E660], v6);
  v17 = OUTLINED_FUNCTION_35_5();
  v19 = sub_1E4188148(v17, v18);
  *v5 = v3;
  v5[1] = v16;
  memcpy(v5 + 2, v20, 0xC3uLL);
  v5[27] = v19;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BF7D30()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v19[1] = v2;
  v3 = OUTLINED_FUNCTION_146();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F70);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  sub_1E3BF7ED4();
  v10 = *(v1 + 216);
  v11 = sub_1E3BF8368();
  sub_1E4187EA8(v10, v4, v11);
  sub_1E325F6F0(v7, &qword_1ECF34F68);
  v12 = *(v1 + 8);
  v19[2] = v4;
  v19[3] = v11;
  OUTLINED_FUNCTION_3_8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_35_5();
  v14 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_5();
  v15 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_5();
  v16 = OUTLINED_FUNCTION_51_1() & 1;
  sub_1E383F6D4(v12, v14 & 1, v15 & 1, 0, v16, v8, OpaqueTypeConformance2);
  v17 = OUTLINED_FUNCTION_74();
  v18(v17);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BF7ED4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  Lockup = type metadata accessor for ListUpNextLockup(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  v14 = v2[1];
  swift_beginAccess();
  v15 = *v2;
  if (*(v14 + 177) == 1)
  {
    memcpy(v39, v2 + 2, 0xC3uLL);
    v16 = Lockup;
    v17 = *(Lockup + 28);
    *(v10 + v17) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
    swift_storeEnumTagMultiPayload();
    *v10 = v15;
    memcpy(v10 + 1, v39, 0xC3uLL);
    v10[26] = v14;
    v18 = *(*v15 + 488);

    v19 = sub_1E375C1CC(v39, v38);
    v20 = v18(v19);
    if (v20 && (v21 = sub_1E373E010(67, v20), , v21))
    {

      v22 = 1;
    }

    else
    {
      v22 = 0;
    }

    *(v10 + *(v16 + 32)) = v22;
    sub_1E3BFC940(v10, v13, type metadata accessor for ListUpNextLockup);
    sub_1E3BFBE88(v13, v0, type metadata accessor for ListUpNextLockup);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_102();
    sub_1E3BFC068(v33, v34);
    sub_1E3BF84C8();
    sub_1E4201F44();
    sub_1E3BFBEE4(v13, type metadata accessor for ListUpNextLockup);
    goto LABEL_22;
  }

  v37[2] = Lockup;
  memcpy(v39, v2 + 2, 0xC3uLL);

  sub_1E375C1CC(v39, v38);
  v23 = *(*v15 + 488);

  v25 = v23(v24);

  if (!v25)
  {
    v32 = 0;
LABEL_21:
    *v0 = v15;
    memcpy(v0 + 1, v39, 0xC3uLL);
    v0[26] = v14;
    v0[27] = v32;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_102();
    sub_1E3BFC068(v35, v36);
    sub_1E3BF84C8();
    sub_1E4201F44();
LABEL_22:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v37[0] = v0;
  v37[1] = v4;
  v26 = 1 << *(v25 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v25 + 64);
  v29 = (v26 + 63) >> 6;

  v30 = 0;
  if (v28)
  {
    while (1)
    {
      v31 = v30;
LABEL_13:
      v32 = *(*(v25 + 56) + 8 * (__clz(__rbit64(v28)) | (v31 << 6)));

      if (sub_1E385050C())
      {
        break;
      }

      v28 &= v28 - 1;
      v30 = v31;
      if (!v28)
      {
        goto LABEL_10;
      }
    }

LABEL_19:
    v0 = v37[0];
    goto LABEL_21;
  }

LABEL_10:
  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v29)
    {

      v32 = 0;
      goto LABEL_19;
    }

    v28 = *(v25 + 64 + 8 * v31);
    ++v30;
    if (v28)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_1E3BF8368()
{
  result = qword_1ECF34F78;
  if (!qword_1ECF34F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34F68);
    sub_1E3BF83EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34F78);
  }

  return result;
}

unint64_t sub_1E3BF83EC()
{
  result = qword_1ECF34F80;
  if (!qword_1ECF34F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34F88);
    sub_1E3BFC068(&qword_1ECF5A280, type metadata accessor for ListUpNextLockup);
    sub_1E3BF84C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34F80);
  }

  return result;
}

unint64_t sub_1E3BF84C8()
{
  result = qword_1ECF5A288;
  if (!qword_1ECF5A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5A288);
  }

  return result;
}

uint64_t sub_1E3BF8558(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 224))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3BF8598(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E3BF8648()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UpNextLockupCellLayout();
    if (v1 <= 0x3F)
    {
      sub_1E38D5D68();
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E3BF8704()
{
  OUTLINED_FUNCTION_9_4();
  v7 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35078);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35080);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_4();
  v12 = *v0;
  memcpy(v44, v7 + 1, 0xC3uLL);

  sub_1E375C1CC(v44, &v33);
  type metadata accessor for UpnextCardMetada(0);
  sub_1E3BFC068(&qword_1ECF5A3B0, type metadata accessor for UpnextCardMetada);
  sub_1E390F194(v12, v44, 0, sub_1E3BFBF3C, v2);
  v13 = v7[26];
  swift_beginAccess();
  v14 = v13[18];
  if (v14 && (v15 = *(*v14 + 152), v16 = , v15(v42, v16), v3 = v42[0], v4 = v42[1], v5 = v42[2], v6 = v42[3], , (v43 & 1) == 0))
  {
    v17.n128_u64[0] = v3;
    v18.n128_u64[0] = v4;
    v19.n128_u64[0] = v5;
    v20.n128_u64[0] = v6;
    j_nullsub_1(v17, v18, v19, v20);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v21 = v7[27];
  v22 = sub_1E4202734();
  v23 = sub_1E4203D44();
  v25 = v24;
  v31 = 0;
  v32[0] = v21;
  LOBYTE(v32[1]) = v22;
  v32[2] = v3;
  v32[3] = v4;
  v32[4] = v5;
  v32[5] = v6;
  LOBYTE(v32[6]) = 0;
  v32[7] = v23;
  v32[8] = v24;
  sub_1E3741EA0(v2, v1, &qword_1ECF35078);
  memcpy((v1 + *(v10 + 36)), v32, 0x48uLL);
  v33 = v21;
  v34 = v22;
  v35 = v3;
  v36 = v4;
  v37 = v5;
  v38 = v6;
  v39 = 0;
  v40 = v23;
  v41 = v25;

  sub_1E3743538(v32, v29, &qword_1ECF35088);
  v26 = sub_1E325F6F0(&v33, &qword_1ECF35088);
  (*(*v13 + 552))(v29, v26);
  if (v30)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = *v29;
  }

  v28 = sub_1E3BFC0AC();
  sub_1E391F8C0(v10, v28, v27);
  sub_1E325F6F0(v1, &qword_1ECF35080);
  OUTLINED_FUNCTION_10_3();
}

void *sub_1E3BF8A8C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350C8);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_4();
  *v1 = sub_1E4201D54();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350D0);
  sub_1E3BF8BA8();
  sub_1E4203DB4();
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_17_82();
  sub_1E42015C4();
  OUTLINED_FUNCTION_21_1();
  sub_1E3741EA0(v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350D8);
  return memcpy((a1 + *(v8 + 36)), __src, 0x70uLL);
}

void sub_1E3BF8BA8()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v72 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350E0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_2();
  v61[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31_2();
  v61[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17_3(v61 - v9);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350F8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v13);
  v14 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v63 = *(type metadata accessor for UpnextCardMetada(0) + 28);
  sub_1E3746E10(v20);
  v64 = sub_1E3B02B0C();
  v21 = *(v16 + 8);
  v67 = v14;
  v65 = v16 + 8;
  v62 = v21;
  v21(v20, v14);
  v74 = v3;
  v73 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35108);
  v22 = sub_1E3BFC670();
  v79 = &type metadata for UpnextPlaybackStatus;
  v80 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = type metadata accessor for StateIndicatorAndContextMenuButton(255);
  OUTLINED_FUNCTION_14_108();
  v26 = sub_1E3BFC068(v24, v25);
  v79 = v23;
  v80 = v26;
  swift_getOpaqueTypeConformance2();
  sub_1E3DE5EA0(sub_1E3BFC5E8, sub_1E3BFC668, v1);
  sub_1E4202764();
  v27 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v28)
  {
    v27 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  v30 = *(v29 + 176);
  v30(v75);
  if ((v76 & 1) == 0)
  {
    v33.n128_u64[0] = v75[2];
    v34.n128_u64[0] = v75[3];
    v31.n128_u64[0] = v75[0];
    v32.n128_u64[0] = v75[1];
    j_nullsub_1(v31, v32, v33, v34);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v1, v0, &qword_1ECF350E0);
  OUTLINED_FUNCTION_141();
  v36 = (v0 + v35);
  *v36 = v27;
  OUTLINED_FUNCTION_11_4(v36);
  v37 = sub_1E4202784();
  v38 = sub_1E4202774();
  sub_1E4202774();
  v39 = sub_1E4202774();
  v40 = v69;
  if (v39 != v37)
  {
    v38 = sub_1E4202774();
  }

  v30(v77);
  if ((v78 & 1) == 0)
  {
    v43.n128_u64[0] = v77[2];
    v44.n128_u64[0] = v77[3];
    v41.n128_u64[0] = v77[0];
    v42.n128_u64[0] = v77[1];
    j_nullsub_1(v41, v42, v43, v44);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v0, v40, &qword_1ECF350E8);
  OUTLINED_FUNCTION_141();
  v46 = (v40 + v45);
  *v46 = v38;
  OUTLINED_FUNCTION_11_4(v46);
  v47 = sub_1E4202754();
  v48 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v47)
  {
    v48 = sub_1E4202774();
  }

  v30(&v79);
  if ((v83 & 1) == 0)
  {
    v51.n128_u64[0] = v81;
    v52.n128_u64[0] = v82;
    v49.n128_u64[0] = v79;
    v50.n128_u64[0] = v80;
    j_nullsub_1(v49, v50, v51, v52);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v53 = v66;
  sub_1E3741EA0(v40, v66, &qword_1ECF350F0);
  OUTLINED_FUNCTION_141();
  v55 = (v53 + v54);
  *v55 = v48;
  OUTLINED_FUNCTION_11_4(v55);
  v56 = v70;
  sub_1E3741EA0(v53, v70, &qword_1ECF350F8);
  sub_1E3746E10(v20);
  LOBYTE(v53) = sub_1E3B02B0C();
  v62(v20, v67);
  v57 = v71;
  sub_1E3743538(v56, v71, &qword_1ECF350F8);
  v58 = v72;
  *v72 = 0;
  *(v58 + 8) = 0;
  *(v58 + 9) = v64 & 1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35110);
  sub_1E3743538(v57, v58 + *(v59 + 48), &qword_1ECF350F8);
  v60 = v58 + *(v59 + 64);
  *v60 = 0;
  v60[8] = 0;
  v60[9] = (v53 & 1) == 0;
  sub_1E325F6F0(v56, &qword_1ECF350F8);
  sub_1E325F6F0(v57, &qword_1ECF350F8);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3BF9220(uint64_t a1)
{
  v2 = type metadata accessor for StateIndicatorAndContextMenuButton(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = *(a1 + 8);
  LOBYTE(v4) = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 8) = v7;
  *(v6 + 16) = v4;

  sub_1E42038E4();
  *(v6 + 24) = v14;
  *(v6 + 32) = v15;
  sub_1E3929B88();
  sub_1E4200CD4();
  v8 = *(v2 + 36);
  *(v6 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  sub_1E4203684();
  OUTLINED_FUNCTION_14_108();
  sub_1E3BFC068(v9, v10);
  OUTLINED_FUNCTION_74();
  sub_1E3D414C8(v11, v12);

  return sub_1E3BFBEE4(v6, type metadata accessor for StateIndicatorAndContextMenuButton);
}

void sub_1E3BF93F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  type metadata accessor for TextBadge();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFD8);
  OUTLINED_FUNCTION_0_10();
  v33 = v32;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_49_2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33808);
  v36 = OUTLINED_FUNCTION_17_2(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_4_6();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &a9 - v41;
  if (v24)
  {

    OUTLINED_FUNCTION_18();
    sub_1E3FC96D0(v24, 0, v30);
    sub_1E3BFCA50(qword_1EE23BBE8, type metadata accessor for TextBadge);
    View.accessibilityIdentifier(key:location:)();
    sub_1E3BFBEE4(v30, type metadata accessor for TextBadge);
    (*(v33 + 32))(v42, v20, v31);
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  __swift_storeEnumTagSinglePayload(v42, v43, 1, v31);
  sub_1E3743538(v42, v39, &qword_1ECF33808);
  OUTLINED_FUNCTION_21_1();
  sub_1E3743538(v44, v45, v46);
  v47 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35168) + 48);
  *v47 = 0;
  *(v47 + 8) = 1;
  OUTLINED_FUNCTION_39_35();
  sub_1E325F6F0(v48, v49);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F6F0(v50, v51);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BF9684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlaybackStatus(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  if (a1)
  {

    sub_1E413D6F4(v9, v8);
    sub_1E3BFC940(v8, a2, type metadata accessor for PlaybackStatus);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_1E3BF9774@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v35[2] = a1;
  v35[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34F98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v35 - v7;
  v9 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_8();
  (*(v16 + 176))(v36);
  if (v37)
  {
    v17 = *(MEMORY[0x1E69DDCE0] + 16);
  }

  else
  {
    v17 = *&v36[2];
  }

  if (v37)
  {
    v18 = *MEMORY[0x1E69DDCE0];
  }

  else
  {
    v18 = *v36;
  }

  type metadata accessor for ListUpNextLockup(0);
  sub_1E3746E10(v15);
  v19 = sub_1E3B02B0C();
  (*(v11 + 8))(v15, v9);
  if (v19)
  {
    *v8 = sub_1E4201D54();
    *(v8 + 1) = 0;
    v8[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FC0);
    sub_1E3BF9AF0();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v20, v21, v22);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_1();
    sub_1E328FCF4(v23, v24);
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    *v2 = sub_1E4201B84();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FA8);
    sub_1E3BFA7C4(v3, v18, v17);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v27, v28, v29);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E328FCF4(v30, v31);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_21_1();
  }

  sub_1E328FCF4(v25, v26);
  OUTLINED_FUNCTION_46_32();
  sub_1E4201F44();
  OUTLINED_FUNCTION_21_1();
  return sub_1E325F6F0(v32, v33);
}

void sub_1E3BF9AF0()
{
  OUTLINED_FUNCTION_21_5();
  v7 = v6;
  v35 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FC8);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26_2();
  v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FE0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v34 - v23;
  *v12 = sub_1E4201D54();
  *(v12 + 1) = 0;
  v12[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FE8);
  sub_1E3BF9E90();
  v25 = sub_1E4202744();
  v26 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v25)
  {
    v26 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v12, v2, &qword_1ECF34FC8);
  v27 = v2 + *(v13 + 36);
  *v27 = v26;
  *(v27 + 8) = v7;
  *(v27 + 16) = v3;
  *(v27 + 24) = v4;
  *(v27 + 32) = v5;
  *(v27 + 40) = 0;
  v28 = sub_1E4202754();
  v29 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v28)
  {
    v29 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v2, v0, &qword_1ECF34FD0);
  v30 = (v0 + *(v15 + 36));
  *v30 = v29;
  OUTLINED_FUNCTION_11_4(v30);
  sub_1E4203D84();
  OUTLINED_FUNCTION_17_82();
  OUTLINED_FUNCTION_33_7();
  sub_1E3741EA0(v0, v1, &qword_1ECF34FD8);
  OUTLINED_FUNCTION_141();
  memcpy((v1 + v31), v36, 0x70uLL);
  sub_1E3741EA0(v1, v24, &qword_1ECF34FE0);
  v32 = sub_1E3FFE5B8(0, 1);
  sub_1E3743538(v24, v20, &qword_1ECF34FE0);
  v33 = v35;
  sub_1E3743538(v20, v35, &qword_1ECF34FE0);
  *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FF0) + 48)) = v32;
  sub_1E325F6F0(v24, &qword_1ECF34FE0);
  sub_1E325F6F0(v20, &qword_1ECF34FE0);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3BF9E90()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v53 = v3;
  v50 = type metadata accessor for StateIndicatorAndContextMenuButton(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v48 - v6;
  v8 = type metadata accessor for StackedTextViews(0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34FF8) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v48[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35000);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v48 - v15;
  v48[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35008);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v48 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v22);
  sub_1E3BFA418(v0);
  *(v0 + *(v12 + 44)) = 0;
  sub_1E4202754();
  v23 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v24)
  {
    v23 = sub_1E4202774();
  }

  v25 = v2[26];
  OUTLINED_FUNCTION_8();
  v27 = *(v26 + 152);

  v27(&v59, v28);

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v29 = OUTLINED_FUNCTION_74();
  sub_1E3741EA0(v29, v30, v31);
  OUTLINED_FUNCTION_141();
  v33 = &v16[v32];
  *v33 = v23;
  OUTLINED_FUNCTION_11_4(v33);
  sub_1E4203DB4();
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_17_82();
  OUTLINED_FUNCTION_33_7();
  sub_1E3741EA0(v16, v20, &qword_1ECF35000);
  OUTLINED_FUNCTION_141();
  memcpy(&v20[v34], v60, 0x70uLL);
  v35 = v55;
  sub_1E3741EA0(v20, v55, &qword_1ECF35008);
  v36 = v51;
  sub_1E3BFA644(v51);
  v37 = *v2;
  v38 = *(v2 + *(type metadata accessor for ListUpNextLockup(0) + 32));
  *v7 = v37;
  *(v7 + 1) = v25;
  v7[16] = v38;
  v56 = 0;

  sub_1E42038E4();
  v39 = v58;
  v7[24] = v57;
  *(v7 + 4) = v39;
  v40 = v50;
  v57 = 0x4032000000000000;
  sub_1E3929B88();
  sub_1E4200CD4();
  v41 = *(v40 + 36);
  *&v7[v41] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v42 = v35;
  v43 = v49;
  sub_1E3743538(v42, v49, &qword_1ECF35008);
  v44 = v52;
  sub_1E3BFBE88(v36, v52, type metadata accessor for StackedTextViews);
  v45 = v54;
  sub_1E3BFBE88(v7, v54, type metadata accessor for StateIndicatorAndContextMenuButton);
  v46 = v53;
  sub_1E3743538(v43, v53, &qword_1ECF35008);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35010);
  sub_1E3BFBE88(v44, v46 + *(v47 + 48), type metadata accessor for StackedTextViews);
  sub_1E3BFBE88(v45, v46 + *(v47 + 64), type metadata accessor for StateIndicatorAndContextMenuButton);
  sub_1E3BFBEE4(v7, type metadata accessor for StateIndicatorAndContextMenuButton);
  sub_1E3BFBEE4(v36, type metadata accessor for StackedTextViews);
  sub_1E325F6F0(v55, &qword_1ECF35008);
  sub_1E3BFBEE4(v45, type metadata accessor for StateIndicatorAndContextMenuButton);
  sub_1E3BFBEE4(v44, type metadata accessor for StackedTextViews);
  sub_1E325F6F0(v43, &qword_1ECF35008);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3BFA418@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  if (sub_1E39C408C(39))
  {
    type metadata accessor for ImageViewModel();
    OUTLINED_FUNCTION_20_2();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      OUTLINED_FUNCTION_8();
      v10 = *(v9 + 1968);

      v12 = v10(v11);

      j__OUTLINED_FUNCTION_51_1();
      v13 = j__OUTLINED_FUNCTION_18();
      v21 = j__OUTLINED_FUNCTION_18() & 1;
      v14 = OUTLINED_FUNCTION_17_82();
      sub_1E3EB9C0C(v14, 0, 1, 0, 0, 1, v15, 2, v16, v19, v20, 0, 1, v12, 1, v13 & 1, v21);
      v17 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v8, v22, 0, v17 & 1, 0, 0, v1);

      sub_1E375C31C(v22);
      (*(v5 + 32))(a1, v1, v3);
      return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
    }
  }

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
}

uint64_t sub_1E3BFA644@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E4299720;
  if (!sub_1E39C408C(23))
  {
    goto LABEL_5;
  }

  v3 = j__OUTLINED_FUNCTION_18();
  v4 = sub_1E39C26D0(0, v3 & 1);

  if (v4 && *v4 != _TtC8VideosUI13TextViewModel)
  {

LABEL_5:
    v4 = 0;
  }

  *(v2 + 32) = v4;
  v5 = sub_1E39C408C(15);
  if (!v5)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v6 = j__OUTLINED_FUNCTION_18();
  v7 = sub_1E39C26D0(0, v6 & 1);

  if (v7 && *v7 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_10;
  }

LABEL_11:
  *(v2 + 40) = v7;
  v8 = sub_1E404034C(v5);
  v9 = j__OUTLINED_FUNCTION_18() & 1;

  return sub_1E403E654(v2, v8, v9, a1);
}

void sub_1E3BFAD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21_5();
  a25 = v29;
  a26 = v33;
  v35 = v34;
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35048);
  OUTLINED_FUNCTION_17_2(v38);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_31_2();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35050);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_26_2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35058);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_4_6();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &a9 - v49;
  *v28 = sub_1E4201B84();
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35060);
  sub_1E3BFB040();
  v51 = sub_1E4202744();
  v52 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v51)
  {
    v52 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v28, v26, &qword_1ECF35048);
  v53 = v26 + *(v40 + 36);
  *v53 = v52;
  *(v53 + 8) = v35;
  *(v53 + 16) = v30;
  *(v53 + 24) = v31;
  *(v53 + 32) = v32;
  *(v53 + 40) = 0;
  v54 = sub_1E4202754();
  v55 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v54)
  {
    v55 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v26, v27, &qword_1ECF35050);
  v56 = (v27 + *(v42 + 36));
  *v56 = v55;
  OUTLINED_FUNCTION_11_4(v56);
  OUTLINED_FUNCTION_69_0();
  sub_1E3741EA0(v57, v58, v59);
  v60 = sub_1E3FFE5B8(0, 1);
  OUTLINED_FUNCTION_69_0();
  sub_1E3743538(v61, v62, v63);
  *v37 = 0;
  *(v37 + 8) = 0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35068);
  OUTLINED_FUNCTION_69_0();
  sub_1E3743538(v65, v66, v67);
  v68 = v37 + *(v64 + 64);
  *v68 = 0;
  *(v68 + 8) = 0;
  *(v37 + *(v64 + 80)) = v60;
  OUTLINED_FUNCTION_59_19(v50);
  OUTLINED_FUNCTION_59_19(v46);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3BFB040()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for StateIndicatorAndContextMenuButton(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29[-v10];
  v12 = type metadata accessor for StackedTextViews(0);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29[-v18];
  sub_1E3BFA644(&v29[-v18]);
  v20 = *v1;
  v21 = v1[26];
  v22 = *(v1 + *(type metadata accessor for ListUpNextLockup(0) + 32));
  *v11 = v20;
  *(v11 + 1) = v21;
  v11[16] = v22;
  v29[15] = 0;

  sub_1E42038E4();
  v23 = v31;
  v11[24] = v30;
  *(v11 + 4) = v23;
  v30 = 0x4032000000000000;
  sub_1E3929B88();
  sub_1E4200CD4();
  v24 = *(v5 + 44);
  *&v11[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  sub_1E3BFBE88(v19, v16, type metadata accessor for StackedTextViews);
  sub_1E3BFBE88(v11, v8, type metadata accessor for StateIndicatorAndContextMenuButton);
  sub_1E3BFBE88(v16, v3, type metadata accessor for StackedTextViews);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35070);
  v26 = v3 + *(v25 + 48);
  *v26 = 0;
  *(v26 + 8) = 0;
  sub_1E3BFBE88(v8, v3 + *(v25 + 64), type metadata accessor for StateIndicatorAndContextMenuButton);
  sub_1E3BFBEE4(v11, type metadata accessor for StateIndicatorAndContextMenuButton);
  sub_1E3BFBEE4(v19, type metadata accessor for StackedTextViews);
  v27 = OUTLINED_FUNCTION_32_0();
  sub_1E3BFBEE4(v27, v28);
  sub_1E3BFBEE4(v16, type metadata accessor for StackedTextViews);
  OUTLINED_FUNCTION_25_2();
}

__objc2_class **sub_1E3BFB2DC()
{
  result = sub_1E39C408C(233);
  if (result)
  {
    if (*result != _TtC8VideosUI31DownloadStateIndicatorViewModel)
    {

      return 0;
    }
  }

  return result;
}

void *sub_1E3BFB344@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4201B84();
  v11 = 0;
  sub_1E3BFB41C(v1, __src);
  memcpy(__dst, __src, 0xA3uLL);
  memcpy(v13, __src, sizeof(v13));
  sub_1E3743538(__dst, v8, &qword_1ECF35118);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F6F0(v4, v5);
  memcpy(&v10[7], __dst, 0xA3uLL);
  v6 = v11;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  result = memcpy((a1 + 17), v10, 0xAAuLL);
  *(a1 + 187) = 257;
  return result;
}

void *sub_1E3BFB41C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  type metadata accessor for StateIndicatorAndContextMenuButton(0);
  sub_1E3746E10(v9);
  v10 = sub_1E3B02B0C();
  (*(v5 + 8))(v9, v3);
  if (v10)
  {
    if (*(a1 + 16) == 1)
    {
      v11 = *a1;
      v12 = *(*(a1 + 8) + 152);

      sub_1E397F070(v11, v12, v101);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350B0);
      sub_1E4200CE4();
      sub_1E4203DA4();
      sub_1E4200D94();
      v84[0] = v101[0];
      v84[1] = v101[1];
      LOBYTE(v84[2]) = v102;
      memcpy(v100, v84, 0x58uLL);
    }

    else
    {
      v100[10] = 0;
      OUTLINED_FUNCTION_35_41(0);
    }

    LOBYTE(v100[11]) = 0;
    v20 = sub_1E3BFB2DC();
    if (v20)
    {
      v21 = v20;
      v22 = *(a1 + 24);
      v23 = *(a1 + 32);
      LOBYTE(v109[0]) = v22;
      *(&v109[0] + 1) = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
      OUTLINED_FUNCTION_38_34();
      sub_1E42038F4();
      v81 = v99[0];
      if (v99[0])
      {
        OUTLINED_FUNCTION_8();
        v25 = *(v24 + 152);

        v25(v103, v26);

        OUTLINED_FUNCTION_36_37();
      }

      else
      {
        v82 = 0;
      }

      v99[0] = v22;
      *&v99[8] = v23;

      sub_1E4203914();
      OUTLINED_FUNCTION_49_32();
      sub_1E3F66914(v21, 0, v57, v58, v59, v60);
      v61 = v104;
      v62 = v105;
      v63 = v22;
      v64 = v106;
      v65 = v107;
      v66 = v108;
      LOBYTE(v109[0]) = v63;
      *(&v109[0] + 1) = v23;
      OUTLINED_FUNCTION_38_34();
      sub_1E42038F4();
      if (v99[0])
      {
        v67 = 1.0;
      }

      else
      {
        v67 = 0.0;
      }

      LOBYTE(v109[0]) = v81 ^ 1;

      sub_1E3908F18(v64, v65);

      v68 = v109[0];

      sub_1E3909004(v64, v65);
      *&v95[0] = v82;
      BYTE8(v95[0]) = 0;
      BYTE9(v95[0]) = v68;
      *&v95[1] = v61;
      *(&v95[1] + 1) = v62;
      *&v95[2] = v64;
      *(&v95[2] + 1) = v65;
      LOBYTE(v95[3]) = v66;
      *(&v95[3] + 1) = v67;
    }

    else
    {
      memset(v95, 0, 64);
    }

    memcpy(v96, v100, 0x59uLL);
    v89 = v95[0];
    v90 = v95[1];
    v91 = v95[2];
    v92 = v95[3];
    memcpy(v97, v100, 0x59uLL);
    memcpy(v85, v100, 0x59uLL);
    v86[0] = v95[0];
    v86[1] = v95[1];
    v87 = v95[2];
    v88 = v95[3];
    v85[6] = v95[0];
    v85[7] = v95[1];
    v85[8] = v95[2];
    v85[9] = v95[3];
    sub_1E3743538(v100, v109, &qword_1ECF35150);
    OUTLINED_FUNCTION_69_0();
    sub_1E3743538(v69, v70, v71);
    sub_1E3743538(v97, v109, &qword_1ECF35150);
    OUTLINED_FUNCTION_69_0();
    sub_1E3743538(v72, v73, v74);
    OUTLINED_FUNCTION_59_19(&v89);
    memcpy(v98, v96, 0x59uLL);
    sub_1E325F6F0(v98, &qword_1ECF35150);
    memcpy(v99, v85, 0xA0uLL);
    sub_1E3BFC7A0(v99);
    memcpy(v109, v99, 0xA3uLL);
    v75 = OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35130);
    sub_1E328FCF4(&qword_1ECF35138, &qword_1ECF35128);
    sub_1E328FCF4(&qword_1ECF35140, &qword_1ECF35130);
    sub_1E4201F44();
    OUTLINED_FUNCTION_59_19(v95);
    v56 = &qword_1ECF35150;
  }

  else
  {
    v13 = sub_1E3BFB2DC();
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 24);
      v16 = *(a1 + 32);
      LOBYTE(v109[0]) = v15;
      *(&v109[0] + 1) = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
      OUTLINED_FUNCTION_38_34();
      sub_1E42038F4();
      v80 = v99[0];
      if (v99[0])
      {
        OUTLINED_FUNCTION_8();
        v18 = *(v17 + 152);

        v18(v103, v19);

        OUTLINED_FUNCTION_36_37();
      }

      else
      {
        v82 = 0;
      }

      v99[0] = v15;
      *&v99[8] = v16;

      sub_1E4203914();
      OUTLINED_FUNCTION_49_32();
      sub_1E3F66914(v14, 0, v27, v28, v29, v30);
      v31 = v104;
      v32 = v106;
      v78 = v107;
      v79 = v105;
      v77 = v108;
      LOBYTE(v109[0]) = v15;
      *(&v109[0] + 1) = v16;
      OUTLINED_FUNCTION_38_34();
      sub_1E42038F4();
      if (v15)
      {
        v33 = 1.0;
      }

      else
      {
        v33 = 0.0;
      }

      LOBYTE(v109[0]) = v15;
      *(&v109[0] + 1) = v16;
      OUTLINED_FUNCTION_38_34();
      sub_1E42038F4();
      sub_1E4203DA4();
      sub_1E4200D94();
      v98[0] = v80 ^ 1;
      *v99 = v31;
      *&v99[8] = v79;
      *&v99[16] = v32;
      *&v99[24] = v78;
      v99[32] = v77;
      *&v99[40] = v33;
      *&v99[48] = *v94;
      *&v99[64] = *&v94[16];
      *&v99[80] = *&v94[32];
      sub_1E3743538(v99, v109, &qword_1ECF35148);

      memcpy(&v93[6], v99, 0x60uLL);
      v34 = v98[0];
      *&v109[0] = v31;
      *(&v109[0] + 1) = v79;
      *&v109[1] = v32;
      *(&v109[1] + 1) = v78;
      LOBYTE(v109[2]) = v77;
      *(&v109[2] + 1) = v33;
      v109[3] = *v94;
      v109[4] = *&v94[16];
      v109[5] = *&v94[32];
      sub_1E325F6F0(v109, &qword_1ECF35148);
      v100[0] = v82;
      LOBYTE(v100[1]) = 0;
      BYTE1(v100[1]) = v34;
      memcpy(&v100[1] + 2, v93, 0x66uLL);
    }

    else
    {
      memset(&v100[10], 0, 32);
      OUTLINED_FUNCTION_35_41(0);
    }

    if (*(a1 + 16) == 1)
    {
      v35 = *(a1 + 8);
      OUTLINED_FUNCTION_8();
      v37 = *(v36 + 152);

      v37(v86, v38);

      if (v87)
      {
        v39 = 0;
      }

      else
      {
        v39 = *(&v86[0] + 1);
      }

      v40 = *a1;
      v41 = *(v35 + 152);

      sub_1E397F070(v40, v41, &v89);
      v43 = *(&v89 + 1);
      v42 = v89;
      v45 = *(&v90 + 1);
      v44 = v90;
      LOBYTE(v109[0]) = 0;
      v99[0] = v91;
      v46 = v91;

      OUTLINED_FUNCTION_146();
      sub_1E380E99C();

      OUTLINED_FUNCTION_146();
      sub_1E389BF58();
    }

    else
    {
      v39 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
    }

    memcpy(v95, v100, sizeof(v95));
    memcpy(v96, v100, sizeof(v96));
    memcpy(v97, v100, sizeof(v97));
    sub_1E3743538(v100, v109, &qword_1ECF35120);
    v47 = OUTLINED_FUNCTION_6_121();
    sub_1E3BFC6C4(v47, v48, v49);
    sub_1E3743538(v96, v109, &qword_1ECF35120);
    v50 = OUTLINED_FUNCTION_6_121();
    sub_1E3BFC6C4(v50, v51, v52);
    v53 = OUTLINED_FUNCTION_6_121();
    sub_1E3BFC72C(v53, v54, v55);
    memcpy(v98, v95, sizeof(v98));
    sub_1E325F6F0(v98, &qword_1ECF35120);
    memcpy(v99, v97, 0x70uLL);
    *&v99[112] = v39;
    *&v99[120] = 0;
    *&v99[128] = v42;
    *&v99[136] = v43;
    *&v99[144] = v44;
    *&v99[152] = v45;
    *&v99[160] = v46;
    sub_1E3BFC794(v99);
    memcpy(v109, v99, 0xA3uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35130);
    sub_1E328FCF4(&qword_1ECF35138, &qword_1ECF35128);
    sub_1E328FCF4(&qword_1ECF35140, &qword_1ECF35130);
    OUTLINED_FUNCTION_39_35();
    sub_1E4201F44();
    sub_1E3BFC72C(v39, 0, v42);
    v56 = &qword_1ECF35120;
  }

  sub_1E325F6F0(v100, v56);
  memcpy(v109, v94, 0xA3uLL);
  return memcpy(a2, v109, 0xA3uLL);
}

uint64_t sub_1E3BFBE88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3BFBEE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E3BFBF3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *v3;
  v5 = v3[26];

  v6 = *(type metadata accessor for UpnextCardMetada(0) + 28);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *a1 = v4;
  *(a1 + 8) = v5;
  v7 = *(*v4 + 488);

  v9 = v7(v8);

  if (v9 && (v11 = sub_1E373E010(67, v9), result = , v11))
  {

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 16) = v12;
  return result;
}

uint64_t sub_1E3BFC068(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3BFC0AC()
{
  result = qword_1ECF35090;
  if (!qword_1ECF35090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35080);
    sub_1E328FCF4(&qword_1ECF35098, &qword_1ECF35078);
    sub_1E328FCF4(&qword_1ECF350A0, &qword_1ECF35088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35090);
  }

  return result;
}

void sub_1E3BFC1B8()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UpNextLockupCellLayout();
    if (v1 <= 0x3F)
    {
      sub_1E3AB40E8();
      if (v2 <= 0x3F)
      {
        sub_1E3BFC284();
        if (v3 <= 0x3F)
        {
          sub_1E38D5D68();
          if (v4 <= 0x3F)
          {
            OUTLINED_FUNCTION_72();
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3BFC284()
{
  if (!qword_1EE289DC0)
  {
    sub_1E3929B88();
    v0 = sub_1E4200CF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289DC0);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_61();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  v5 = OUTLINED_FUNCTION_60_4(*(v4 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v8 = OUTLINED_FUNCTION_60_4(*(v7 + 28));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

void sub_1E3BFC420()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UpNextLockupCellLayout();
    if (v1 <= 0x3F)
    {
      sub_1E38D5D68();
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E3BFC4BC()
{
  result = qword_1ECF350B8;
  if (!qword_1ECF350B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF350C0);
    sub_1E328FCF4(&qword_1ECF34FB0, &qword_1ECF34FA0);
    sub_1E328FCF4(&qword_1ECF34FB8, &qword_1ECF34F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF350B8);
  }

  return result;
}

uint64_t sub_1E3BFC5E8@<X0>(uint64_t a1@<X8>)
{
  sub_1E39C408C(96);
  sub_1E42036D4();
  sub_1E3BFC670();
  sub_1E3D414C8(&type metadata for UpnextPlaybackStatus, a1);
}

unint64_t sub_1E3BFC670()
{
  result = qword_1ECF5A560;
  if (!qword_1ECF5A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5A560);
  }

  return result;
}

uint64_t sub_1E3BFC6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return sub_1E380E99C();
  }

  return result;
}

uint64_t sub_1E3BFC72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return sub_1E389BF58();
  }

  return result;
}

unint64_t sub_1E3BFC7B8()
{
  result = qword_1ECF35170;
  if (!qword_1ECF35170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF350D8);
    sub_1E328FCF4(&qword_1ECF35178, &qword_1ECF350C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35170);
  }

  return result;
}

unint64_t sub_1E3BFC870()
{
  result = qword_1ECF35180;
  if (!qword_1ECF35180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35188);
    sub_1E328FCF4(&qword_1ECF35190, &qword_1ECF35198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35180);
  }

  return result;
}

uint64_t sub_1E3BFC940(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

unint64_t sub_1E3BFC99C()
{
  result = qword_1EE282118[0];
  if (!qword_1EE282118[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29600);
    sub_1E3BFCA50(qword_1EE282150, type metadata accessor for PlaybackStatus);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE282118);
  }

  return result;
}

uint64_t sub_1E3BFCA50(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static VUITVExtension.variant.getter()
{
  v0 = objc_opt_self();
  if ([v0 isRunningInTVProductPageExtension])
  {
    return 0xD000000000000016;
  }

  if ([v0 isRunningInTVAppExtension])
  {
    return 0x7478457070417674;
  }

  return 0;
}

uint64_t TVExtensionConfig.variant.setter()
{
  OUTLINED_FUNCTION_156();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

double variable initialization expression of TVExtensionConfig.askToBuy@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1E4297170;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t sub_1E3BFCC0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF351B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TVExtensionConfig.appConfig.getter()
{
  v0 = OUTLINED_FUNCTION_32_0();
  sub_1E37EA628(v0, v1);
  return OUTLINED_FUNCTION_32_0();
}

uint64_t TVExtensionConfig.appConfig.setter()
{
  OUTLINED_FUNCTION_156();
  result = sub_1E37E9E48(*(v1 + 64), *(v1 + 72));
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t TVExtensionConfig.init(askToBuy:appConfig:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1E3BFCFA0();
  v15 = static VUITVExtension.variant.getter();
  if (v16)
  {
    v17 = v15;
    v18 = a2;
    v20 = *a1;
    v19 = a1[1];
    v22 = a1[2];
    v21 = a1[3];
    v24 = a1[4];
    v23 = a1[5];
    v36 = v15;
    v37 = v16;
    v38 = v20;
    v39 = v19;
    v40 = v22;
    v41 = v21;
    v42 = v24;
    v43 = v23;
    v34 = v18;
    v44 = v18;
    v45 = a3;
    v25 = v16;
    sub_1E3A60EE0(&v36, v35);
    v26 = v25;
    v32 = v19;
    v33 = a3;
  }

  else
  {
    sub_1E37E9E48(a2, a3);
    sub_1E325F748(a1, &qword_1ECF351B0);
    v27 = Logger.tvExtension.unsafeMutableAddressor();
    (*(v10 + 16))(v14, v27, v8);
    v28 = sub_1E41FFC94();
    v29 = sub_1E42067F4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      MEMORY[0x1E69143B0](v30, -1, -1);
    }

    (*(v10 + 8))(v14, v8);
    v34 = 0;
    v23 = 0;
    v24 = 0;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v17 = 0;
    v32 = 0;
    v33 = 0;
    a3 = 1;
    v19 = 1;
    v25 = 1;
    v26 = 0;
  }

  v36 = v17;
  v37 = v26;
  v38 = v20;
  v39 = v19;
  v40 = v22;
  v41 = v21;
  v42 = v24;
  v43 = v23;
  v44 = v34;
  v45 = a3;
  result = sub_1E3A60F90(&v36);
  *a4 = v17;
  a4[1] = v25;
  a4[2] = v20;
  a4[3] = v32;
  a4[4] = v22;
  a4[5] = v21;
  a4[6] = v24;
  a4[7] = v23;
  a4[8] = v34;
  a4[9] = v33;
  return result;
}

unint64_t sub_1E3BFCFA0()
{
  result = qword_1ECF351B8;
  if (!qword_1ECF351B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF351B8);
  }

  return result;
}

uint64_t sub_1E3BFCFE4()
{
  OUTLINED_FUNCTION_155();
  v3 = v1 == 0x746E6169726176 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x7975426F546B7361 && v0 == 0xE800000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x69666E6F43707061 && v0 == 0xE900000000000067)
    {

      return 2;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_0_54();

      if (v7)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1E3BFD0D4(char a1)
{
  if (!a1)
  {
    return 0x746E6169726176;
  }

  if (a1 == 1)
  {
    return 0x7975426F546B7361;
  }

  return 0x69666E6F43707061;
}

uint64_t sub_1E3BFD138@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3BFCFE4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3BFD160()
{
  sub_1E3BFEA34();
  v0 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1E3BFD198()
{
  sub_1E3BFEA34();
  v0 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t TVExtensionConfig.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF351C0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3BFEA34();
  OUTLINED_FUNCTION_23_59();
  OUTLINED_FUNCTION_13_103();
  sub_1E4207894();
  if (!v1)
  {
    sub_1E3BFEA88();
    OUTLINED_FUNCTION_13_103();
    sub_1E42078A4();
    sub_1E3BFEADC();
    OUTLINED_FUNCTION_13_103();
    sub_1E42078A4();
  }

  return (*(v6 + 8))(v2, v4);
}

void *TVExtensionConfig.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF351D8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1E3BFEA34();
  sub_1E4207C04();
  if (v2)
  {
    OUTLINED_FUNCTION_11_100();
    __swift_destroy_boxed_opaque_existential_1(a1);
    v34 = 0;
    v35 = 0;
    v36 = v10;
    v37 = 1;
    v38 = a2;
    v39 = v30;
    v40 = v6;
    v41 = v9;
    v42 = xmmword_1E4297170;
    return sub_1E3A60F90(&v34);
  }

  else
  {
    LOBYTE(v34) = 0;
    v28 = sub_1E4207804();
    v29 = v11;
    LOBYTE(__src[0]) = 1;
    sub_1E3BFEB30();
    OUTLINED_FUNCTION_22_62(&type metadata for AskToBuyConfig, __src);
    v25 = a2;
    v12 = v34;
    v13 = v35;
    v14 = v36;
    v30 = v37;
    v26 = v38;
    v27 = v39;
    v43 = 2;
    sub_1E3BFEB84();
    OUTLINED_FUNCTION_22_62(&type metadata for AppConfig, &v43);
    v15 = OUTLINED_FUNCTION_5_135();
    v16(v15);
    v24 = v32;
    v23 = v33;
    v17 = v28;
    __src[0] = v28;
    v18 = v29;
    __src[1] = v29;
    __src[2] = v12;
    __src[3] = v13;
    __src[4] = v14;
    v19 = v30;
    v20 = v26;
    __src[5] = v30;
    __src[6] = v26;
    __src[7] = v27;
    __src[8] = v32;
    __src[9] = v33;
    sub_1E3A60EE0(__src, &v34);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v34 = v17;
    v35 = v18;
    v36 = v12;
    v37 = v13;
    v38 = v14;
    v39 = v19;
    v40 = v20;
    v41 = v27;
    *&v42 = v24;
    *(&v42 + 1) = v23;
    sub_1E3A60F90(&v34);
    return memcpy(v25, __src, 0x50uLL);
  }
}

void *sub_1E3BFD688@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = TVExtensionConfig.init(from:)(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

uint64_t AskToBuyConfig.prompt.setter()
{
  OUTLINED_FUNCTION_156();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AskToBuyConfig.approveTitle.setter()
{
  OUTLINED_FUNCTION_156();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AskToBuyConfig.declineTitle.setter()
{
  OUTLINED_FUNCTION_156();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void __swiftcall AskToBuyConfig.init(prompt:approveTitle:declineTitle:)(VideosUI::AskToBuyConfig *__return_ptr retstr, Swift::String_optional prompt, Swift::String_optional approveTitle, Swift::String_optional declineTitle)
{
  retstr->prompt = prompt;
  retstr->approveTitle = approveTitle;
  retstr->declineTitle = declineTitle;
}

uint64_t sub_1E3BFD888()
{
  OUTLINED_FUNCTION_155();
  v3 = v1 == 0x74706D6F7270 && v2 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x5465766F72707061 && v0 == 0xEC000000656C7469;
    if (v5 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x54656E696C636564 && v0 == 0xEC000000656C7469)
    {

      return 2;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_0_54();

      if (v7)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1E3BFD978(char a1)
{
  if (!a1)
  {
    return 0x74706D6F7270;
  }

  if (a1 == 1)
  {
    return 0x5465766F72707061;
  }

  return 0x54656E696C636564;
}

uint64_t sub_1E3BFD9E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3BFD888();
  *a1 = result;
  return result;
}

uint64_t sub_1E3BFDA0C()
{
  sub_1E3BFEBD8();
  v0 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1E3BFDA44()
{
  sub_1E3BFEBD8();
  v0 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t AskToBuyConfig.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF351F0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3BFEBD8();
  OUTLINED_FUNCTION_23_59();
  OUTLINED_FUNCTION_13_103();
  sub_1E4207894();
  if (!v1)
  {
    OUTLINED_FUNCTION_13_103();
    sub_1E4207894();
    OUTLINED_FUNCTION_13_103();
    sub_1E4207894();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t AskToBuyConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF351F8);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3BFEBD8();
  sub_1E4207C04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v11 = OUTLINED_FUNCTION_17_83();
  v13 = v12;
  v24 = 1;
  v21 = OUTLINED_FUNCTION_17_83();
  v22 = v14;
  v23 = 2;
  v15 = OUTLINED_FUNCTION_17_83();
  v16 = v10;
  v18 = v17;
  (*(v7 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  v20 = v22;
  a2[2] = v21;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

double sub_1E3BFDDA0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  AskToBuyConfig.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t AppConfig.source.getter()
{
  OUTLINED_FUNCTION_155();

  return v0;
}

uint64_t AppConfig.source.setter()
{
  OUTLINED_FUNCTION_156();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t static AppConfig.createAppConfiguration(url:)(uint64_t a1)
{
  v63 = a1;
  v2 = sub_1E41FDF74();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v60 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35200);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_2_5();
  v59 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v54 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  v17 = sub_1E41FE004();
  OUTLINED_FUNCTION_0_10();
  v62 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v61 = v21 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_26_2();
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v30 = v29;
  sub_1E3BFEC2C();
  if (__swift_getEnumTagSinglePayload(v1, 1, v30) == 1)
  {
    v31 = &unk_1ECF363C0;
    v32 = v1;
LABEL_22:
    sub_1E325F748(v32, v31);
    return 0;
  }

  (*(v24 + 32))(v28, v1, v30);
  sub_1E41FDFB4();
  v33 = v24;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    (*(v24 + 8))(v28, v30);
    v31 = &qword_1ECF304A8;
    v32 = v16;
    goto LABEL_22;
  }

  v63 = v28;
  (*(v62 + 32))(v61, v16, v17);
  result = sub_1E41FDF84();
  if (result)
  {
    v35 = result;
    v55 = v24;
    v56 = v30;
    v57 = v17;
    v36 = 0;
    v37 = *(result + 16);
    while (1)
    {
      if (v37 == v36)
      {

        v44 = v58;
        v47 = v58;
        v48 = 1;
        goto LABEL_19;
      }

      if (v36 >= *(v35 + 16))
      {
        break;
      }

      (*(v4 + 16))(v9, v35 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v36, v2);
      v38 = sub_1E41FDF54();
      v40 = v39;
      v41 = TVAppExtensionSource.ParamName.unsafeMutableAddressor();
      if (v38 == *v41 && v40 == *(v41 + 1))
      {

LABEL_18:

        v44 = v58;
        (*(v4 + 32))(v58, v9, v2);
        v47 = v44;
        v48 = 0;
LABEL_19:
        __swift_storeEnumTagSinglePayload(v47, v48, 1, v2);
        v45 = v59;
        v46 = v60;
        v30 = v56;
        v17 = v57;
        v33 = v55;
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_78_0();
      v43 = sub_1E42079A4();

      if (v43)
      {
        goto LABEL_18;
      }

      result = (*(v4 + 8))(v9, v2);
      ++v36;
    }

    __break(1u);
  }

  else
  {
    v44 = v58;
    __swift_storeEnumTagSinglePayload(v58, 1, 1, v2);
    v45 = v59;
    v46 = v60;
LABEL_20:
    sub_1E3BFEC2C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v2);
    v50 = v63;
    if (EnumTagSinglePayload == 1)
    {
      sub_1E325F748(v44, &qword_1ECF35200);
      (*(v62 + 8))(v61, v17);
      (*(v33 + 8))(v50, v30);
      v32 = v45;
      v31 = &qword_1ECF35200;
      goto LABEL_22;
    }

    (*(v4 + 32))(v46, v45, v2);
    v51 = sub_1E41FDF64();
    v53 = v52;
    (*(v4 + 8))(v46, v2);
    sub_1E325F748(v44, &qword_1ECF35200);
    (*(v62 + 8))(v61, v17);
    (*(v33 + 8))(v50, v30);
    if (v53)
    {
      return v51;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3BFE4A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E42079A4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E3BFE52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E3BFE4A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E3BFE558()
{
  sub_1E3BFEC8C();
  v0 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1E3BFE590()
{
  sub_1E3BFEC8C();
  v0 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t AppConfig.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35208);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3BFEC8C();
  sub_1E4207C14();
  sub_1E4207894();
  return (*(v4 + 8))(v7, v2);
}

uint64_t AppConfig.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35210);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3BFEC8C();
  sub_1E4207C04();
  if (!v1)
  {
    v9 = sub_1E4207804();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1E3BFE844@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AppConfig.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1E3BFE88C()
{
  v12[4] = *MEMORY[0x1E69E9840];
  sub_1E41FDE54();
  swift_allocObject();
  sub_1E41FDE44();
  sub_1E41FDE34();

  if (!v0)
  {
    v2 = objc_opt_self();
    OUTLINED_FUNCTION_78_0();
    v3 = sub_1E41FE454();
    v12[0] = 0;
    v4 = [v2 JSONObjectWithData:v3 options:4 error:v12];

    if (v4)
    {
      v5 = v12[0];
      sub_1E4207264();
      v6 = OUTLINED_FUNCTION_78_0();
      sub_1E38DCCB0(v6, v7);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if (swift_dynamicCast())
      {
        return v11;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v8 = v12[0];
      sub_1E41FE274();

      swift_willThrow();
      v9 = OUTLINED_FUNCTION_78_0();
      return sub_1E38DCCB0(v9, v10);
    }
  }

  return result;
}

unint64_t sub_1E3BFEA34()
{
  result = qword_1ECF5A5F0;
  if (!qword_1ECF5A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5A5F0);
  }

  return result;
}

unint64_t sub_1E3BFEA88()
{
  result = qword_1ECF351C8;
  if (!qword_1ECF351C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF351C8);
  }

  return result;
}

unint64_t sub_1E3BFEADC()
{
  result = qword_1ECF351D0;
  if (!qword_1ECF351D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF351D0);
  }

  return result;
}

unint64_t sub_1E3BFEB30()
{
  result = qword_1ECF351E0;
  if (!qword_1ECF351E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF351E0);
  }

  return result;
}

unint64_t sub_1E3BFEB84()
{
  result = qword_1ECF351E8;
  if (!qword_1ECF351E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF351E8);
  }

  return result;
}

unint64_t sub_1E3BFEBD8()
{
  result = qword_1ECF5A5F8;
  if (!qword_1ECF5A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5A5F8);
  }

  return result;
}

uint64_t sub_1E3BFEC2C()
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

unint64_t sub_1E3BFEC8C()
{
  result = qword_1ECF5A600[0];
  if (!qword_1ECF5A600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5A600);
  }

  return result;
}

uint64_t sub_1E3BFECEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_9_100();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v3);
}

uint64_t sub_1E3BFED34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_2_109(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3BFEDA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_9_100();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v3);
}

uint64_t sub_1E3BFEDE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_2_109(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3BFEE4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_9_100();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v3);
}

uint64_t sub_1E3BFEE94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_2_109(result, a2);
    }
  }

  return result;
}

_BYTE *sub_1E3BFEEE8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1E3BFEFA0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3BFF07C()
{
  result = qword_1ECF5AA10[0];
  if (!qword_1ECF5AA10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5AA10);
  }

  return result;
}

unint64_t sub_1E3BFF0D4()
{
  result = qword_1ECF5AC20[0];
  if (!qword_1ECF5AC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5AC20);
  }

  return result;
}

unint64_t sub_1E3BFF12C()
{
  result = qword_1ECF5AE30[0];
  if (!qword_1ECF5AE30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5AE30);
  }

  return result;
}

unint64_t sub_1E3BFF184()
{
  result = qword_1ECF5AF40;
  if (!qword_1ECF5AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5AF40);
  }

  return result;
}

unint64_t sub_1E3BFF1DC()
{
  result = qword_1ECF5AF48[0];
  if (!qword_1ECF5AF48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5AF48);
  }

  return result;
}

unint64_t sub_1E3BFF234()
{
  result = qword_1ECF5AFD0;
  if (!qword_1ECF5AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5AFD0);
  }

  return result;
}

unint64_t sub_1E3BFF28C()
{
  result = qword_1ECF5AFD8[0];
  if (!qword_1ECF5AFD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5AFD8);
  }

  return result;
}

unint64_t sub_1E3BFF2E4()
{
  result = qword_1ECF5B060;
  if (!qword_1ECF5B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5B060);
  }

  return result;
}

unint64_t sub_1E3BFF33C()
{
  result = qword_1ECF5B068[0];
  if (!qword_1ECF5B068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5B068);
  }

  return result;
}

uint64_t sub_1E3BFF3A0()
{
  OUTLINED_FUNCTION_0_177();
  swift_allocObject();
  return sub_1E3BFF40C();
}

uint64_t sub_1E3BFF40C()
{
  OUTLINED_FUNCTION_0_177();
  *(v1 + 328) = v6;
  v7 = v6;
  v8 = sub_1E37ECC80(39, v5, v4, v3, 0, v2, v0);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_1E3BFF4F4()
{
  v0 = sub_1E37ED784();

  return MEMORY[0x1EEE6BDC0](v0, 336, 7);
}

id sub_1E3BFF560(uint64_t a1, uint64_t a2)
{
  sub_1E327F454(a1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  v4 = type metadata accessor for LibFamilySharingPlayableMediaEntity();
  OUTLINED_FUNCTION_0_178(v4, v5, v6, v4, v7, v8, v9, v10, v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1E327F454(a1, v35);
    v14 = type metadata accessor for LibMPBaseMediaEntity();
    OUTLINED_FUNCTION_0_178(v14, v15, v16, v17, v18, v19, v20, v21, v33);
    if (swift_dynamicCast())
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88);
      if (OUTLINED_FUNCTION_1_173() || (, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58), OUTLINED_FUNCTION_1_173()))
      {
        __swift_destroy_boxed_opaque_existential_1(v35);
        sub_1E38F5EEC(a2, v35);
        if (v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32760);
          type metadata accessor for LibMPSeasonMediaEntity();
          if (swift_dynamicCast())
          {
            v22 = *(v34 + OBJC_IVAR____TtC8VideosUI22LibMPSeasonMediaEntity_mediaCollection);

LABEL_17:
            v13 = [swift_getObjCClassFromMetadata() viewModelWithMPMediaItem:*(v34 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) seasonMediaItemCollection:v22];

LABEL_18:
            sub_1E38F5F5C(a2);
            __swift_destroy_boxed_opaque_existential_1(a1);

            return v13;
          }
        }

        else
        {
          sub_1E38F5F5C(v35);
        }

        v22 = 0;
        goto LABEL_17;
      }

      type metadata accessor for LibMPShowMediaEntity();
      v30 = swift_dynamicCastClass();
      if (v30)
      {
        v13 = [swift_getObjCClassFromMetadata() viewModelWithMPMediaItemCollection_];
        goto LABEL_18;
      }

      sub_1E3BFF8E8();
      v36 = v14;
      v37 = sub_1E3BFF92C();
      v35[0] = v34;

      v11 = sub_1E3DE95C8(v35);
      __swift_destroy_boxed_opaque_existential_1(v35);
      if (v11)
      {
        v12 = [swift_getObjCClassFromMetadata() viewModelWithMPMediaItemCollection_];
        goto LABEL_3;
      }
    }

    else
    {
      sub_1E327F454(a1, v35);
      v23 = type metadata accessor for LibSidebandPlayableMediaEntity();
      OUTLINED_FUNCTION_0_178(v23, v24, v25, v23, v26, v27, v28, v29, v34);
      if (swift_dynamicCast())
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v13 = [swift_getObjCClassFromMetadata() viewModelWithVideoManagedObject_];
        }

        goto LABEL_4;
      }
    }

    sub_1E38F5F5C(a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return 0;
  }

  v11 = sub_1E402AAA4(v33);
  v12 = [swift_getObjCClassFromMetadata() viewModelWithVideosPlayable_];
LABEL_3:
  v13 = v12;

LABEL_4:
  sub_1E38F5F5C(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}