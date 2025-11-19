uint64_t sub_220F1FD44(uint64_t a1, double a2, double a3)
{
  result = type metadata accessor for SonifierDataState.OverlayFrames(0);
  v8 = *(v3 + *(result + 36));
  if (!v8)
  {
    v9 = 0;
    v10 = 1;
    return v9 | (v10 << 8);
  }

  v9 = 0;
  v10 = 1;
  if (a1 < 0 || *(v8 + 16) <= a1)
  {
    return v9 | (v10 << 8);
  }

  v11 = v8 + 16 * a1;
  v12 = *(v11 + 40);
  if (v12 >> 60 == 15)
  {
    v9 = 0;
    return v9 | (v10 << 8);
  }

  v13 = *(v3 + *(result + 20));
  if (v13 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v14 = a3 * v13;
  if ((a3 * v13) >> 64 != v14 >> 63)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v15 = v14 + a2;
  if (__OFADD__(v14, a2))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v16 = *(v11 + 32);
  v17 = OUTLINED_FUNCTION_0_30();
  sub_220E567FC(v17, v18);
  v19 = OUTLINED_FUNCTION_0_30();
  v20 = MEMORY[0x223D99670](v19);
  v10 = v15 >= v20;
  if (v15 >= v20)
  {
    v9 = 0;
LABEL_25:
    v22 = OUTLINED_FUNCTION_0_30();
    sub_220E56854(v22, v23);
    return v9 | (v10 << 8);
  }

  v21 = 0;
  switch(v12 >> 62)
  {
    case 1uLL:
      v21 = v16;
      break;
    case 2uLL:
      v21 = *(v16 + 16);
      break;
    default:
      break;
  }

  result = v21 + v15;
  if (!__OFADD__(v21, v15))
  {
    v9 = sub_220FC00F0();
    goto LABEL_25;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_220F1FF38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SonifierDataState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F1FF9C(uint64_t a1)
{
  v2 = type metadata accessor for SonifierDataState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_220F1FFF8(char a1, double a2)
{
  v2[OBJC_IVAR____TtC11WeatherMaps16VariableBlurView_style] = a1 & 1;
  *&v2[OBJC_IVAR____TtC11WeatherMaps16VariableBlurView_blurRadius] = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for VariableBlurView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220F20138();

  return v3;
}

void sub_220F20138()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps16VariableBlurView_style) == 1 && !UIAccessibilityIsReduceTransparencyEnabled();
  v3 = OUTLINED_FUNCTION_2_37();
  [v3 setAllowsHitTesting_];

  v4 = OUTLINED_FUNCTION_2_37();
  [v4 setMasksToBounds_];

  if (v2)
  {
    v5 = sub_220E1966C(0, &qword_27CF9EEE0);
    sub_220FC2700();
    v6 = sub_220F203AC();
    v7 = sub_220FC2A20();
    OUTLINED_FUNCTION_1_54();

    v8 = sub_220F20420();
    OUTLINED_FUNCTION_1_54();

    v9 = sub_220FC2A20();
    OUTLINED_FUNCTION_1_54();

    v10 = sub_220FC10D0();
    OUTLINED_FUNCTION_1_54();

    sub_220F20A54(0x656C626169726176, 0xEC00000072756C42, v6);
    [v1 setBackgroundColor_];
    v14 = OUTLINED_FUNCTION_2_37();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEA0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_220FC8E30;
    *(v11 + 56) = v5;
    *(v11 + 32) = v6;
    v12 = v6;
    sub_220F20AB8(v11, v14);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_2_37();
    [v13 setFilters_];

    v14 = [objc_opt_self() tertiarySystemBackgroundColor];
    [v1 setBackgroundColor_];
  }
}

id sub_220F203AC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_220FC26C0();

  v2 = [v0 initWithType_];

  return v2;
}

uint64_t sub_220F20420()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  [v0 setScale_];
  [v0 setPreferredRange_];
  v1 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithBounds:v0 format:{0.0, 0.0, 100.0, 100.0}];
  v2 = swift_allocObject();
  v2[1].i64[0] = 0;
  v2[1].i64[1] = 0;
  v2[2] = vdupq_n_s64(0x4059000000000000uLL);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_220F20A08;
  *(v3 + 24) = v2;
  v8[4] = sub_220F20A14;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_220F20820;
  v8[3] = &block_descriptor_19;
  v4 = _Block_copy(v8);

  v5 = [v1 imageWithActions_];
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v7 = [v5 CGImage];

    return v7;
  }

  return result;
}

void sub_220F20620(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  [v10 setBounds_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_220FC8E10;
  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  v14 = [v13 CGColor];

  type metadata accessor for CGColor(0);
  v16 = v15;
  *(v11 + 56) = v15;
  *(v11 + 32) = v14;
  v17 = [v12 whiteColor];
  v18 = [v17 colorWithAlphaComponent_];

  v19 = [v18 CGColor];
  *(v11 + 88) = v16;
  *(v11 + 64) = v19;
  sub_220F85FE0(v11, v10);
  v20 = [a1 CGContext];
  [v10 renderInContext_];
}

void sub_220F20820(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_220F2087C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VariableBlurView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for VariableBlurViewStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220F209B4()
{
  result = qword_27CF9EED8;
  if (!qword_27CF9EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EED8);
  }

  return result;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_220F20A54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_220FC26C0();

  [a3 setName_];
}

void sub_220F20AB8(uint64_t a1, void *a2)
{
  v3 = sub_220FC2960();

  [a2 setFilters_];
}

id sub_220F20B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  result = [swift_unknownObjectRetain() blitCommandEncoder];
  if (!result)
  {
    swift_unknownObjectRelease();
LABEL_6:
    sub_220F20DD0();
    swift_allocError();
    *v12 = 0;
    return swift_willThrow();
  }

  if ((a5 * a4) >> 64 == (a5 * a4) >> 63)
  {
    v9 = result;
    OUTLINED_FUNCTION_0_61();
    [v10 v11];
    [v9 endEncoding];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_220F20C34(void *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9 != a2 || [a1 pixelFormat] != a3)
  {
    LOBYTE(a5) = 2;
    goto LABEL_9;
  }

  if (a4 != 1)
  {
    LOBYTE(a5) = 1;
    goto LABEL_9;
  }

  if (!a5)
  {
LABEL_9:
    sub_220F20DD0();
    swift_allocError();
    *v18 = a5;
    return swift_willThrow();
  }

  result = [swift_unknownObjectRetain() blitCommandEncoder];
  if (!result)
  {
    swift_unknownObjectRelease();
    LOBYTE(a5) = 0;
    goto LABEL_9;
  }

  if ((a8 * a7) >> 64 == (a8 * a7) >> 63)
  {
    v15 = result;
    OUTLINED_FUNCTION_0_61();
    [v16 v17];
    [v15 endEncoding];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_220F20DD0()
{
  result = qword_27CF9EEF0;
  if (!qword_27CF9EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EEF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StencilError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_220F20F00(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_220F20F40(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_220F20F94()
{
  result = qword_27CF9EEF8;
  if (!qword_27CF9EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EEF8);
  }

  return result;
}

uint64_t WeatherMapDisplayMode.isInteractiveWithAnimatedSnapshot.getter()
{
  if ((*(v0 + 16) & 0x8000000000000000) != 0 && (*(v0 + 8) & 1) == 0)
  {
    return OUTLINED_FUNCTION_27();
  }

  else
  {
    return OUTLINED_FUNCTION_4_1();
  }
}

uint64_t static WeatherMapDisplayMode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v4)
      {
        if ((v7 & 1) == 0)
        {
          return OUTLINED_FUNCTION_4_1();
        }
      }

      else
      {
        if (v7)
        {
          return OUTLINED_FUNCTION_4_1();
        }

        if (v2 != v6 || v3 != v5)
        {
          return OUTLINED_FUNCTION_4_1();
        }
      }

      return *(a1 + 24) == *(a2 + 24);
    }

    return OUTLINED_FUNCTION_4_1();
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    return OUTLINED_FUNCTION_4_1();
  }

  if (LOBYTE(v3))
  {
    if ((LOBYTE(v5) & 1) == 0)
    {
      return OUTLINED_FUNCTION_4_1();
    }
  }

  else if (LOBYTE(v5) & 1 | (v2 != v6))
  {
    return OUTLINED_FUNCTION_4_1();
  }

  return OUTLINED_FUNCTION_27();
}

uint64_t static WeatherMapDisplayMode.SnapshotSizingBehavior.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return OUTLINED_FUNCTION_27();
    }

    return OUTLINED_FUNCTION_4_1();
  }

  if (*(a2 + 16))
  {
    return OUTLINED_FUNCTION_4_1();
  }

  return *(a1 + 8) == *(a2 + 8) && *a1 == *a2;
}

uint64_t static WeatherMapDisplayMode.SnapshotTransition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return OUTLINED_FUNCTION_27();
    }

    return OUTLINED_FUNCTION_4_1();
  }

  if (*(a2 + 8))
  {
    return OUTLINED_FUNCTION_4_1();
  }

  return *a1 == *a2;
}

uint64_t WeatherMapDisplayMode.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  if (v3 < 0)
  {
    MEMORY[0x223D9CFA0](1);
    if (LOBYTE(v2))
    {
      return MEMORY[0x223D9CFA0](0);
    }

    MEMORY[0x223D9CFA0](1);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v1;
    }

    else
    {
      v6 = 0.0;
    }
  }

  else
  {
    v4 = v0[3];
    MEMORY[0x223D9CFA0](0);
    if (v3)
    {
      MEMORY[0x223D9CFA0](1);
    }

    else
    {
      MEMORY[0x223D9CFA0](0);
      sub_220F21618(v1, v2);
    }

    if ((*&v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0.0;
    }
  }

  return MEMORY[0x223D9CFD0](*&v6);
}

uint64_t WeatherMapDisplayMode.hashValue.getter()
{
  sub_220FC3A40();
  WeatherMapDisplayMode.hash(into:)();
  return sub_220FC3A90();
}

uint64_t sub_220F2122C()
{
  sub_220FC3A40();
  WeatherMapDisplayMode.hash(into:)();
  return sub_220FC3A90();
}

uint64_t WeatherMapDisplayMode.SnapshotSizingBehavior.hash(into:)()
{
  if (*(v0 + 16))
  {
    return MEMORY[0x223D9CFA0](1);
  }

  v3 = *v0;
  v2 = *(v0 + 8);
  MEMORY[0x223D9CFA0](0);

  return sub_220F21618(v3, v2);
}

uint64_t WeatherMapDisplayMode.SnapshotSizingBehavior.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_220FC3A40();
  if (v3)
  {
    MEMORY[0x223D9CFA0](1);
  }

  else
  {
    MEMORY[0x223D9CFA0](0);
    sub_220F21618(v1, v2);
  }

  return sub_220FC3A90();
}

uint64_t sub_220F21368()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_220FC3A40();
  if (v3)
  {
    MEMORY[0x223D9CFA0](1);
  }

  else
  {
    MEMORY[0x223D9CFA0](0);
    sub_220F21618(v1, v2);
  }

  return sub_220FC3A90();
}

uint64_t WeatherMapDisplayMode.SnapshotTransition.hash(into:)()
{
  if (v0[1])
  {
    return MEMORY[0x223D9CFA0](0);
  }

  v2 = *v0;
  MEMORY[0x223D9CFA0](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x223D9CFD0](v3);
}

uint64_t WeatherMapDisplayMode.SnapshotTransition.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_220FC3A40();
  if (v2)
  {
    MEMORY[0x223D9CFA0](0);
  }

  else
  {
    MEMORY[0x223D9CFA0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x223D9CFD0](v3);
  }

  return sub_220FC3A90();
}

uint64_t sub_220F214A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_220FC3A40();
  if (v2)
  {
    MEMORY[0x223D9CFA0](0);
  }

  else
  {
    MEMORY[0x223D9CFA0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x223D9CFD0](v3);
  }

  return sub_220FC3A90();
}

uint64_t WeatherMapDisplayMode.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EF00);
  a1[4] = sub_220F21668();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220FC12A0();
}

uint64_t sub_220F215DC()
{
  sub_220F21948();

  return sub_220FC1290();
}

uint64_t sub_220F21618(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x223D9CFD0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x223D9CFD0](*&v3);
}

unint64_t sub_220F21668()
{
  result = qword_27CF9EF08;
  if (!qword_27CF9EF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9EF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EF08);
  }

  return result;
}

unint64_t sub_220F216D0()
{
  result = qword_2812C9F10;
  if (!qword_2812C9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9F10);
  }

  return result;
}

unint64_t sub_220F21728()
{
  result = qword_27CF9EF10;
  if (!qword_27CF9EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EF10);
  }

  return result;
}

unint64_t sub_220F21780()
{
  result = qword_27CF9EF18;
  if (!qword_27CF9EF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EF18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherMapDisplayMode(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for WeatherMapDisplayMode(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
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

uint64_t getEnumTagSinglePayload for WeatherMapDisplayMode.SnapshotTransition(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WeatherMapDisplayMode.SnapshotTransition(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_220F21900(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220F2191C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

unint64_t sub_220F21948()
{
  result = qword_27CF9EF20;
  if (!qword_27CF9EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EF20);
  }

  return result;
}

char *sub_220F21A10(const void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v7 = sub_220E3D488(0, 1);
  }

  else
  {
    v8 = objc_allocWithZone(type metadata accessor for BackgroundEffectView());
    v7 = sub_220FADE6C(0, 0, 0, 0, 1);
  }

  *&v2[OBJC_IVAR____TtC11WeatherMaps9ScaleView_backgroundEffectView] = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  if (sub_220FC2300())
  {
    v9 = *&v2[OBJC_IVAR____TtC11WeatherMaps9ScaleView_backgroundEffectView];
    *&v9[OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_cornerRadius] = 0x4030000000000000;
    v10 = v9;
    sub_220FADAEC();
  }

  memcpy(__dst, a1, 0x61uLL);
  v11 = objc_allocWithZone(type metadata accessor for MapScaleOverlayUIView());
  v12 = sub_220F762FC(__dst);
  v13 = OBJC_IVAR____TtC11WeatherMaps9ScaleView_scaleOverlayView;
  *&v3[OBJC_IVAR____TtC11WeatherMaps9ScaleView_scaleOverlayView] = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v3[v13] _setContinuousCornerRadius_];
  v26.receiver = v3;
  v26.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  if (DeviceSupportsMapsControlEffects())
  {
    [v14 addSubview_];
  }

  else
  {
    v15 = *&v14[OBJC_IVAR____TtC11WeatherMaps9ScaleView_scaleOverlayView];
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 tertiarySystemBackgroundColor];
    [v17 setBackgroundColor_];
  }

  [v14 addSubview_];
  v19 = qword_2812C5B30;
  v20 = v14;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_2812CE4B0;
  v22 = sub_220FBFF80();
  v24 = v23;

  sub_220FB51A4(v22, v24, v20);
  [v20 setAccessibilityContainerType_];
  [v20 setShouldGroupAccessibilityChildren_];

  return v20;
}

id sub_220F21D6C()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  [v0 bounds];
  return sub_220F21DC0(v1, v2);
}

id sub_220F21DC0(double a1, double a2)
{
  [*(v2 + OBJC_IVAR____TtC11WeatherMaps9ScaleView_backgroundEffectView) setFrame_];
  v5 = *(v2 + OBJC_IVAR____TtC11WeatherMaps9ScaleView_scaleOverlayView);

  return [v5 setFrame_];
}

void sub_220F21F90(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_220FC3480();
    sub_220EA9C1C();
    sub_220F2276C(&qword_2812C5B38, sub_220EA9C1C);
    sub_220FC2C40();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_220FC34F0() || (sub_220EA9C1C(), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_220EA9CB8();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x223D9BEA0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_220FC29C0();
      }

      sub_220FC29F0();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_220F22204()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = [v1 connectedScenes];

  sub_220EA9C1C();
  sub_220F2276C(&qword_2812C5B38, sub_220EA9C1C);
  v3 = sub_220FC2C10();

  sub_220F21F90(v3);
  v5 = v4;

  if (sub_220F43CDC(v5))
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223D9CB30](0, v5);
      goto LABEL_5;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v5 + 32);
LABEL_5:
      v7 = v6;

      v8 = [v7 _systemUserInterfaceStyle];

      return v8;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_2812C5EC8 != -1)
  {
LABEL_13:
    swift_once();
  }

  v9 = sub_220FC17A0();
  __swift_project_value_buffer(v9, qword_2812C5ED0);
  v10 = sub_220FC1780();
  v11 = sub_220FC2E10();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_220E15000, v10, v11, "Expected a window scene, but don't have one. This is a serious error.", v12, 2u);
    MEMORY[0x223D9DDF0](v12, -1, -1);
  }

  v13 = [v0 sharedApplication];
  sub_220FC2DD0();

  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v14 = sub_220FC2520();
  v8 = [v14 userInterfaceStyle];

  __swift_destroy_boxed_opaque_existential_0(v16);
  return v8;
}

uint64_t sub_220F22474()
{
  result = sub_220FC26C0();
  qword_2812CE4B8 = result;
  return result;
}

uint64_t UIUserInterfaceStyle.shortDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    if (a1 == 2)
    {
      v3 = 0xE400000000000000;
      v4 = 1802658148;
    }

    else if (a1 == 1)
    {
      v3 = 0xE500000000000000;
      v4 = 0x746867696CLL;
    }

    else
    {
      v3 = 0xE700000000000000;
      v4 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v3 = 0xEB00000000646569;
    v4 = 0x6669636570736E75;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E30;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  sub_220FC2600();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EF38);
  a2[4] = sub_220F22608();
  __swift_allocate_boxed_opaque_existential_1(a2);
  type metadata accessor for UIUserInterfaceStyle(0);
  return sub_220FC12A0();
}

unint64_t sub_220F22608()
{
  result = qword_2812C5F60;
  if (!qword_2812C5F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9EF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5F60);
  }

  return result;
}

uint64_t sub_220F226BC()
{
  sub_220F2276C(&unk_2812C5C60, type metadata accessor for UIUserInterfaceStyle);

  return sub_220FC1290();
}

unint64_t sub_220F22728(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_220F22748(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_220F2276C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL MapsConfiguration.windOverlayEnabled.getter()
{
  if (qword_2812CA0E8 != -1)
  {
    swift_once();
  }

  if ((sub_220FC0A50() & 1) == 0)
  {
    return (sub_220FC0DA0() & 1) == 0;
  }

  sub_220FC0AB0();
  sub_220FC0A90();
  if (qword_27CF9C150 != -1)
  {
    swift_once();
  }

  v0 = sub_220FC0A70();

  return v0 & 1;
}

id sub_220F22894(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_imageView] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_iconFontUsed] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_lowHighLabelsView] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_footerLabel] = 0;
  v4 = &v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 24) = *(a1 + 48);
  sub_220F2322C(a1, v9);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220F22970();
  sub_220F23288(a1);

  return v6;
}

void sub_220F22970()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model];
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 8];
  v5 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 16];
  v4 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 24];
  v7 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 32];
  v6 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 40];
  v8 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 48];
  if (v8 >> 14)
  {
    if (v8 >> 14 == 1)
    {
      *&v37 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model];
      *(&v37 + 1) = v3;
      v38 = v5;
      v39 = v4;
      v40 = v7;
      v41 = v6;
      v9 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotationLowHighLabelsView());
      sub_220F232DC(v2, v3, v5, v4, v7, v6, v8);

      v10 = v7;
      v11 = v6;
      v12 = sub_220F9607C(&v37);
      [v0 addSubview_];

      v13 = &OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_lowHighLabelsView;
    }

    else
    {
      v16 = objc_allocWithZone(MEMORY[0x277D756B8]);

      v17 = v5;
      v12 = [v16 init];
      v18 = sub_220FC26C0();
      [v12 setText_];

      sub_220E1966C(0, &qword_2812C5B80);
      v19 = sub_220FC3150();
      [v12 setFont_];
      [v12 setTextAlignment_];
      [v12 setTextColor_];
      [v12 setAdjustsFontSizeToFitWidth_];
      [v12 setMinimumScaleFactor_];
      [v1 addSubview_];

      v13 = &OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_footerLabel;
    }
  }

  else
  {
    v36 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 8];
    if (v7)
    {
      v14 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 32];
      v15 = v14;
    }

    else
    {
      v15 = *MEMORY[0x277D76938];
      v14 = 0;
    }

    sub_220E1966C(0, &qword_2812C5B50);
    sub_220F232DC(v2, v36, v5, v4, v7, v6, v8);
    v20 = v14;
    v21 = sub_220F6DF04(v2, v36, v15, -1, 0x8000, 0, v5);
    v23 = v22;

    v35 = v21;
    v24 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    v25 = v24;
    if (v4)
    {
      [v24 setTintColor_];
    }

    [v25 setContentMode_];
    [v25 sizeToFit];
    [v1 addSubview_];
    v26 = *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_imageView];
    *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_imageView] = v25;
    v34 = v25;

    if (v7)
    {
      v27 = sub_220FC2700();
      v29 = v28;
      if (v27 == sub_220FC2700() && v29 == v30)
      {
      }

      else
      {
        sub_220FC3940();
      }
    }

    sub_220E1966C(0, &qword_2812C5B80);
    v12 = sub_220FC3150();

    sub_220F233A4(v2, v36, v5, v4, v7, v6, v8);
    v13 = &OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_iconFontUsed;
  }

  v32 = *v13;
  v33 = *&v1[v32];
  *&v1[v32] = v12;
}

void sub_220F22E20()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_iconFontUsed) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_lowHighLabelsView) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_footerLabel) = 0;
  sub_220FC3740();
  __break(1u);
}

void sub_220F22EC4()
{
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_imageView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_iconFontUsed];
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      v5 = sub_220F2309C();
      [v4 ascender];
      v7 = v5 - v6;
      v8 = sub_220F230C8();
      [v4 descender];
      v10 = v8 + v9;
      OUTLINED_FUNCTION_0_62();
      v11 = fmax(CGRectGetHeight(v19) - v10 - v7, 12.0);
      v12 = v3;
      OUTLINED_FUNCTION_0_62();
      CGRectGetWidth(v20);
      [v12 bounds];
      [v12 setBounds_];
      OUTLINED_FUNCTION_0_62();
      v13 = CGRectGetWidth(v21) * 0.5;
      OUTLINED_FUNCTION_0_62();
      [v12 setCenter_];

LABEL_7:
      return;
    }
  }

  v14 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_lowHighLabelsView];
  if (v14 || (v14 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_footerLabel]) != 0)
  {
    v12 = v14;
    OUTLINED_FUNCTION_1_1();
    MinX = CGRectGetMinX(v23);
    OUTLINED_FUNCTION_1_1();
    v16 = CGRectGetMinY(v24) + -2.0;
    OUTLINED_FUNCTION_1_1();
    Width = CGRectGetWidth(v25);
    OUTLINED_FUNCTION_1_1();
    [v12 setFrame_];
    goto LABEL_7;
  }
}

double sub_220F2309C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 48);
  result = 14.0;
  if ((v1 & 0x100) == 0)
  {
    result = 18.0;
  }

  if (v1 >= 0x4000)
  {
    return 18.0;
  }

  return result;
}

double sub_220F230C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 48);
  result = 8.0;
  if ((v1 & 0x100) == 0)
  {
    result = 5.0;
  }

  if (v1 >= 0x4000)
  {
    return 5.0;
  }

  return result;
}

void sub_220F232DC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, unsigned __int16 a7)
{
  switch(a7 >> 14)
  {
    case 1:

      v12 = a5;
      v9 = a6;
      goto LABEL_5;
    case 2:

      v9 = a3;
      goto LABEL_5;
    case 3:
      return;
    default:
      v8 = a5;

      v9 = a4;
LABEL_5:

      v13 = v9;
      return;
  }
}

void sub_220F233A4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, unsigned __int16 a7)
{
  switch(a7 >> 14)
  {
    case 1:

      v8 = a6;
      goto LABEL_5;
    case 2:

      v8 = a3;
      goto LABEL_5;
    case 3:
      return;
    default:

      v8 = a5;
LABEL_5:

      return;
  }
}

uint64_t sub_220F2346C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;

      sub_220F24E74(v17, a2, a3);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_220F235B4(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v9 = 0;
  v10 = *(a1 + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    v11 = *(type metadata accessor for WeatherMapAnnotatedLocationData(0) - 8);
    sub_220F2531C(a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++, a2, a3, a4);
  }

  while (!v4);
}

uint64_t sub_220F23694()
{
  type metadata accessor for WeatherMapAnnotation();
  v1 = sub_220FC2600();
  swift_beginAccess();
  *(v0 + 224) = v1;

  return sub_220F23708();
}

uint64_t sub_220F23708()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v116 = v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220FC1070();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v124 = v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  v9 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v10);
  v12 = v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v121 = v111 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v19 = v111 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = v111 - v22;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v119 = v9;
  v125 = v19;
  v117 = v6;
  v120 = v12;
  v123 = v5;
  swift_unknownObjectRelease();
  v132 = MEMORY[0x277D84FA0];
  v25 = MEMORY[0x277D84F90];
  v130 = MEMORY[0x277D84F90];
  v131 = MEMORY[0x277D84F90];
  swift_beginAccess();

  sub_220F2346C(v26, v1, &v132);

  sub_220F235B4(v27, v1, &v131, &v130);

  v112 = v25;
  v128[0] = v25;
  v28 = v132 + 56;
  v29 = 1 << *(v132 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v132 + 56);
  v32 = (v29 + 63) >> 6;
  v113 = v132;

  v33 = 0;
  v126 = v1;
LABEL_5:
  if (v31)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v32)
    {
      v46 = v113;

      v47 = 1 << *(v46 + 32);
      v48 = -1;
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      v49 = v48 & *(v46 + 56);
      v50 = (v47 + 63) >> 6;

      v51 = 0;
      if (v49)
      {
        goto LABEL_23;
      }

      while (1)
      {
        v52 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_68;
        }

        if (v52 >= v50)
        {
          break;
        }

        v49 = *(v28 + 8 * v52);
        ++v51;
        if (v49)
        {
          v51 = v52;
          do
          {
LABEL_23:
            v53 = (*(v113 + 48) + ((v51 << 10) | (16 * __clz(__rbit64(v49)))));
            v55 = *v53;
            v54 = v53[1];
            swift_beginAccess();

            v56 = sub_220F19120(v55, v54);
            if (v57)
            {
              v58 = v56;
              swift_isUniquelyReferenced_nonNull_native();
              v128[0] = *(v1 + 224);
              *(v1 + 224) = 0x8000000000000000;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EF88);
              v1 = v126;
              sub_220FC3710();
              v59 = v128[0];

              type metadata accessor for WeatherMapAnnotation();
              sub_220FC3730();
              *(v1 + 224) = v59;
            }

            v49 &= v49 - 1;
            swift_endAccess();
          }

          while (v49);
        }
      }

      v60 = v131;
      v61 = *(v131 + 16);
      v62 = MEMORY[0x277D84F90];
      v111[1] = v131;
      if (v61)
      {
        v129 = MEMORY[0x277D84F90];
        sub_220FC3670();
        v63 = v60 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
        v64 = *(v119 + 72);
        v65 = v125;
        do
        {
          sub_220F26AD4(v63, v23, type metadata accessor for WeatherMapAnnotatedLocationData);
          sub_220F26AD4(v23, v65, type metadata accessor for WeatherMapAnnotatedLocationData);
          LOBYTE(v128[0]) = *(v1 + 256);
          v66 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotation());
          sub_220FBF76C(v65, v128);
          sub_220F280A8(v23, type metadata accessor for WeatherMapAnnotatedLocationData);
          sub_220FC3640();
          sub_220FC3680();
          sub_220FC3690();
          sub_220FC3650();
          v63 += v64;
          --v61;
        }

        while (v61);
        v62 = v129;
      }

      v125 = sub_220F43CDC(v62);
      v67 = 0;
      v119 = v62 & 0xC000000000000001;
      v118 = v62 & 0xFFFFFFFFFFFFFF8;
      v115 = (v117 + 32);
      v114 = (v117 + 16);
      v68 = (v117 + 8);
      v69 = v123;
      v70 = v124;
      v117 = v62;
      while (2)
      {
        if (v125 == v67)
        {
          v98 = v112;
          if (sub_220F43CDC(v112) && swift_unknownObjectWeakLoadStrong())
          {
            v99 = sub_220F2B970(v98);
            sub_220F26B34(v1, v99);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          if (v125 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
          {
            v101 = Strong;
            v102 = sub_220F2B970(v62);
            sub_220F26D1C(v1, v102, v101);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          sub_220F245E4();
          sub_220F2482C();
          v103 = v130;
          if (sub_220F43CDC(v130))
          {
            v104 = swift_unknownObjectWeakLoadStrong();
            if (v104)
            {
              sub_220F2707C(v1, v103, v104);
              swift_unknownObjectRelease();
            }
          }

          v105 = *(v1 + 184);
          if (v105 && (v106 = v105, v107 = sub_220FBF098(), v109 = sub_220F282CC(v107, v108, v113), , v106, v109))
          {
            v110 = *(v1 + 184);
            *(v1 + 184) = 0;
          }

          else
          {
          }
        }

        if (v119)
        {
          v71 = MEMORY[0x223D9CB30](v67, v62);
        }

        else
        {
          if (v67 >= *(v118 + 16))
          {
            goto LABEL_70;
          }

          v71 = *(v62 + 8 * v67 + 32);
        }

        v72 = v71;
        if (__OFADD__(v67, 1))
        {
          goto LABEL_69;
        }

        v73 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
        swift_beginAccess();
        v74 = v72 + v73;
        v75 = v121;
        sub_220F26AD4(v74, v121, type metadata accessor for WeatherMapAnnotatedLocationData);
        v76 = v75;
        v77 = v120;
        sub_220F28100(v76, v120, type metadata accessor for WeatherMapAnnotatedLocationData);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v78 = v77;
          v79 = v116;
          sub_220F28100(v78, v116, type metadata accessor for WeatherMapAnnotatedLocation);
          (*v114)(v70, v79, v69);
          sub_220F280A8(v79, type metadata accessor for WeatherMapAnnotatedLocation);
        }

        else
        {
          (*v115)(v70, v77, v69);
        }

        v80 = sub_220FC1020();
        v82 = v81;
        (*v68)(v70, v69);
        swift_beginAccess();
        v83 = v72;
        swift_isUniquelyReferenced_nonNull_native();
        v127 = *(v1 + 224);
        v84 = v127;
        *(v1 + 224) = 0x8000000000000000;
        v85 = sub_220F19120(v80, v82);
        if (__OFADD__(v84[2], (v86 & 1) == 0))
        {
          goto LABEL_71;
        }

        v87 = v85;
        v88 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EF88);
        if (sub_220FC3710())
        {
          v89 = sub_220F19120(v80, v82);
          v1 = v126;
          if ((v88 & 1) != (v90 & 1))
          {
            goto LABEL_73;
          }

          v87 = v89;
          if ((v88 & 1) == 0)
          {
LABEL_44:
            v91 = v127;
            v127[(v87 >> 6) + 8] |= 1 << v87;
            v92 = (v91[6] + 16 * v87);
            *v92 = v80;
            v92[1] = v82;
            *(v91[7] + 8 * v87) = v83;
            v93 = v91[2];
            v94 = __OFADD__(v93, 1);
            v95 = v93 + 1;
            if (v94)
            {
              goto LABEL_72;
            }

            v91[2] = v95;
            goto LABEL_48;
          }
        }

        else
        {
          v1 = v126;
          if ((v88 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        v91 = v127;
        v96 = v127[7];
        v97 = *(v96 + 8 * v87);
        *(v96 + 8 * v87) = v83;

LABEL_48:
        *(v1 + 224) = v91;
        swift_endAccess();

        ++v67;
        v69 = v123;
        v70 = v124;
        v62 = v117;
        continue;
      }
    }

    v31 = *(v28 + 8 * v34);
    ++v33;
    if (v31)
    {
      v33 = v34;
LABEL_10:
      v35 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v36 = (*(v113 + 48) + ((v33 << 10) | (16 * v35)));
      v38 = *v36;
      v37 = v36[1];
      swift_beginAccess();
      v39 = *(v1 + 224);
      v40 = *(v39 + 16);

      if (v40 && (v41 = sub_220F19120(v38, v37), (v42 & 1) != 0))
      {
        v43 = *(*(v39 + 56) + 8 * v41);
        swift_endAccess();
        v44 = v43;

        MEMORY[0x223D9BEA0](v45);
        if (*((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_220FC29C0();
        }

        sub_220FC29F0();
        v112 = v128[0];
        v1 = v126;
      }

      else
      {
        swift_endAccess();

        v1 = v126;
      }

      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  result = sub_220FC3990();
  __break(1u);
  return result;
}

uint64_t sub_220F2425C(uint64_t a1, uint64_t a2)
{
  *(v2 + 216) = a2;
  swift_unknownObjectWeakAssign();
  sub_220F23694();

  return swift_unknownObjectRelease();
}

uint64_t sub_220F242A4()
{

  sub_220F355D4();
  v1 = v0;

  if ((v1 & 1) == 0)
  {

    return sub_220F23708();
  }

  return result;
}

uint64_t sub_220F24314(uint64_t a1)
{
  *(v1 + 232) = a1;
  sub_220F242A4();
}

void sub_220F24354(void *a1)
{
  v2 = *(v1 + 240);
  if (a1)
  {
    if (v2)
    {
      v3 = a1;
      sub_220E1966C(0, &unk_2812C5CB0);
      v4 = v2;
      v5 = v3;
      LOBYTE(v3) = sub_220FC3250();

      if (v3)
      {
        return;
      }
    }
  }

  else if (!v2)
  {
    return;
  }

  sub_220F23708();
}

void sub_220F24404(void *a1)
{
  v3 = *(v1 + 240);
  *(v1 + 240) = a1;
  v2 = a1;
  sub_220F24354(v3);
}

void sub_220F2445C(void *a1)
{
  v2 = *(v1 + 248);
  if (a1)
  {
    if (v2)
    {
      v3 = a1;
      sub_220E1966C(0, &qword_2812C5D00);
      v4 = v2;
      v5 = v3;
      LOBYTE(v3) = sub_220FC3250();

      if (v3)
      {
        return;
      }
    }
  }

  else if (!v2)
  {
    return;
  }

  sub_220F23708();
}

void sub_220F2450C(void *a1)
{
  v3 = *(v1 + 248);
  *(v1 + 248) = a1;
  v2 = a1;
  sub_220F2445C(v3);
}

unsigned __int8 *sub_220F24564(unsigned __int8 *result)
{
  v2 = *result;
  v3 = *(v1 + 256);
  switch(v2)
  {
    case 5:
      if (v3 == 5)
      {
        return result;
      }

      goto LABEL_9;
    case 4:
      if (v3 == 4)
      {
        return result;
      }

      goto LABEL_9;
    case 3:
      if (v3 == 3)
      {
        return result;
      }

      goto LABEL_9;
  }

  if (v2 != v3 || (v3 - 6) >= 0xFFFFFFFD)
  {
LABEL_9:
    sub_220F245E4();

    return sub_220F2482C();
  }

  return result;
}

void sub_220F245E4()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeatherMapAnnotationViewModel();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_zoomLevel);
  if (v10 >= 4.0)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (v10 >= 16.0)
  {
    v11 = 0;
  }

  *(v0 + 176) = v11;
  sub_220F2571C();
  v13 = v12;
  v14 = sub_220F43CDC(v12);
  v15 = 0;
  v20 = v13 & 0xC000000000000001;
  while (1)
  {
    if (v14 == v15)
    {

      return;
    }

    if (v20)
    {
      v16 = MEMORY[0x223D9CB30](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v18 = *&v16[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_mapAnnotation];
    v19 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
    swift_beginAccess();
    sub_220F26AD4(v18 + v19, v5, type metadata accessor for WeatherMapAnnotatedLocationData);
    sub_220F2587C(v5, [v17 isSelected], v9);
    sub_220F280A8(v5, type metadata accessor for WeatherMapAnnotatedLocationData);
    __swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
    sub_220EE695C(v17, v9, 1);
    sub_220F280A8(v9, type metadata accessor for WeatherMapAnnotationViewModel);

    ++v15;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_220F2482C()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v34[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = (&v34[-1] - v8);
  v10 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v34[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WeatherMapAnnotationViewModel();
  result = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v34[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 184);
  if (v19)
  {
    v33 = v6;
    v20 = *(v1 + 256);
    v21 = v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_overlay;
    swift_beginAccess();
    v22 = type metadata accessor for WeatherMapOverlay();
    if (__swift_getEnumTagSinglePayload(v21, 1, v22))
    {
      if (v20 != 6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v23 = *(v21 + 200);
      if (v20 == 6)
      {
        if (v23 != 6)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (v23 == 6)
        {
          goto LABEL_10;
        }

        switch(v20)
        {
          case 5:
            if (v23 != 5)
            {
              goto LABEL_10;
            }

            break;
          case 4:
            if (v23 != 4)
            {
              goto LABEL_10;
            }

            break;
          case 3:
            if (v23 != 3)
            {
              goto LABEL_10;
            }

            break;
          default:
            if ((v23 - 6) > 0xFFFFFFFC || v20 != v23)
            {
              goto LABEL_10;
            }

            break;
        }
      }
    }

    if (!__swift_getEnumTagSinglePayload(v21, 1, v22))
    {
      memcpy(v37, (v21 + 16), 0xB8uLL);
      v24 = v19;
      sub_220E56868(v37, v34);
      sub_220F1505C(v34);
      sub_220E56918(v37);
      memcpy(v36, v34, 0x60uLL);
LABEL_11:
      memcpy(v34, v36, 0x60uLL);
      __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
      v26 = OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView_annotation;
      v27 = *&v19[OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView_annotation];
      v28 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
      swift_beginAccess();
      sub_220F26AD4(v27 + v28, v13, type metadata accessor for WeatherMapAnnotatedLocationData);
      v35[0] = *(v1 + 256);
      v29 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_userInterfaceStyle;
      sub_220F6E0C4(v13, v35, v34, *(v1 + 176), *(v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_userInterfaceStyle), v18);
      sub_220F280A8(v13, type metadata accessor for WeatherMapAnnotatedLocationData);
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      v30 = *&v19[v26];
      v35[0] = *(v1 + 256);
      sub_220ED1C58(v30, v18, v35, v34, *(v1 + v29), v9);
      sub_220E3B2DC(v36, &qword_27CF9EF78);
      v31 = v33;
      sub_220F26AD4(v9, v33, type metadata accessor for WeatherMapAnnotationContentViewModel);
      sub_220E3CBBC(v31);

      sub_220F280A8(v9, type metadata accessor for WeatherMapAnnotationContentViewModel);
      return sub_220F280A8(v18, type metadata accessor for WeatherMapAnnotationViewModel);
    }

LABEL_10:
    memset(v36, 0, 96);
    v25 = v19;
    goto LABEL_11;
  }

  return result;
}

unsigned __int8 *sub_220F24C14(_BYTE *a1)
{
  v2 = *(v1 + 256);
  *(v1 + 256) = *a1;
  v4 = v2;
  return sub_220F24564(&v4);
}

uint64_t sub_220F24C48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v8 - v3;
  v5 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_overlay;
  swift_beginAccess();
  sub_220ED6038(v0 + v5, v4, &unk_27CF9EB80);
  v6 = type metadata accessor for WeatherMapOverlay();
  __swift_getEnumTagSinglePayload(v4, 1, v6);
  sub_220E3B2DC(v4, &unk_27CF9EB80);
  sub_220F245E4();
  return sub_220F2482C();
}

uint64_t sub_220F24D30(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_overlay;
  swift_beginAccess();
  sub_220F26628(a1, v1 + v3);
  swift_endAccess();
  sub_220F24C48();
  return sub_220E3B2DC(a1, &unk_27CF9EB80);
}

uint64_t sub_220F24DAC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_userInterfaceStyle) != result)
  {
    sub_220F245E4();

    return sub_220F2482C();
  }

  return result;
}

uint64_t sub_220F24DF0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_userInterfaceStyle);
  *(v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_userInterfaceStyle) = a1;
  return sub_220F24DAC(v2);
}

void sub_220F24E08(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_zoomLevel);
  if (v2 != a1)
  {
    v3 = *(v1 + 176);
    if (v2 >= 16.0)
    {
      if (!*(v1 + 176))
      {
        return;
      }
    }

    else if (v2 >= 4.0)
    {
      if (v3 == 1)
      {
        return;
      }
    }

    else if (v3 == 2)
    {
      return;
    }

    sub_220F245E4();
  }
}

void sub_220F24E5C(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_zoomLevel);
  *(v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_zoomLevel) = a1;
  sub_220F24E08(v2);
}

uint64_t sub_220F24E74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220FC1070();
  v48 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  v14 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EBA0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v41 - v24;
  v26 = *a1;
  v51 = a1[1];
  v52 = v26;
  v27 = *(a2 + 232);
  v47 = *(v27 + 16);
  if (v47)
  {
    v41 = a3;
    v42 = v25;
    v49 = v27 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v45 = (v48 + 4);
    v43 = v3;
    v44 = (v48 + 2);
    ++v48;

    v29 = 0;
    v50 = result;
    while (v29 < *(result + 16))
    {
      v30 = v14;
      sub_220F26AD4(v49 + *(v14 + 72) * v29, v21, type metadata accessor for WeatherMapAnnotatedLocationData);
      sub_220F26AD4(v21, v17, type metadata accessor for WeatherMapAnnotatedLocationData);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = v46;
        sub_220F28100(v17, v46, type metadata accessor for WeatherMapAnnotatedLocation);
        (*v44)(v13, v31, v10);
        sub_220F280A8(v31, type metadata accessor for WeatherMapAnnotatedLocation);
      }

      else
      {
        (*v45)(v13, v17, v10);
      }

      v32 = v10;
      v33 = sub_220FC1020();
      v35 = v34;
      (*v48)(v13, v32);
      if (v33 == v52 && v35 == v51)
      {

LABEL_16:

        v40 = v42;
        sub_220F28100(v21, v42, type metadata accessor for WeatherMapAnnotatedLocationData);
        __swift_storeEnumTagSinglePayload(v40, 0, 1, v54);
        return sub_220E3B2DC(v40, &unk_27CF9EBA0);
      }

      v37 = sub_220FC3940();

      if (v37)
      {
        goto LABEL_16;
      }

      ++v29;
      sub_220F280A8(v21, type metadata accessor for WeatherMapAnnotatedLocationData);
      v10 = v32;
      v14 = v30;
      result = v50;
      if (v47 == v29)
      {

        v25 = v42;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v38 = v25;
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v54);
    v39 = v51;

    sub_220E4A3E0(&v53, v52, v39);

    return sub_220E3B2DC(v38, &unk_27CF9EBA0);
  }

  return result;
}

void sub_220F2531C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v40 = a4;
  v44 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v41 = &v40 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  v43 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220FC1070();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220F05E6C(v24);
  v25 = sub_220FC1020();
  v27 = v26;
  (*(v21 + 8))(v24, v20);
  swift_beginAccess();
  v28 = sub_220F6DAB0(v25, v27, *(a2 + 224));

  if (v28)
  {
    swift_endAccess();
    v29 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
    swift_beginAccess();
    sub_220F26AD4(v28 + v29, v19, type metadata accessor for WeatherMapAnnotatedLocationData);
    LOBYTE(v29) = sub_220F05FB8(v19, a1);
    sub_220F280A8(v19, type metadata accessor for WeatherMapAnnotatedLocationData);
    if ((v29 & 1) == 0)
    {
      sub_220FBEEAC(v15);
      v30 = sub_220FC0760();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v30);
      sub_220E3B2DC(v15, &qword_27CF9CEE8);
      if (EnumTagSinglePayload == 1)
      {
        v32 = v41;
        sub_220F05D10(v41);
        v33 = __swift_getEnumTagSinglePayload(v32, 1, v30);
        sub_220E3B2DC(v32, &qword_27CF9CEE8);
        if (v33 != 1)
        {
          v34 = v28;
          v35 = v40;
          MEMORY[0x223D9BEA0]();
          sub_220F09670(*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_220FC29F0();
        }
      }

      v36 = v42;
      sub_220F05D10(v42);
      sub_220FBF1BC(v36);
    }
  }

  else
  {
    swift_endAccess();
    v37 = v44;
    sub_220E45260();
    v38 = *(*v37 + 16);
    sub_220F095EC(v38);
    v39 = *v37;
    *(v39 + 16) = v38 + 1;
    sub_220F26AD4(a1, v39 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v38, type metadata accessor for WeatherMapAnnotatedLocationData);
  }
}

void sub_220F2571C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = MEMORY[0x277D84F90];
  if (Strong)
  {
    v2 = sub_220F26998();
    swift_unknownObjectRelease();
    v3 = sub_220F43CDC(v2);
    v4 = 0;
    while (1)
    {
      if (v3 == v4)
      {

        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223D9CB30](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      type metadata accessor for WeatherMapAnnotationView();
      if (swift_dynamicCastClass())
      {
        MEMORY[0x223D9BEA0]();
        if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_220FC29C0();
        }

        sub_220FC29F0();
        ++v4;
      }

      else
      {

        ++v4;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_220F2587C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v59 = a2;
  v7 = type metadata accessor for WeatherMapAnnotationViewModel();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 256);
  v12 = v3 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_overlay;
  swift_beginAccess();
  v13 = type metadata accessor for WeatherMapOverlay();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13))
  {
    if (v11 != 6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = *(v12 + 200);
    if (v11 == 6)
    {
      if (v14 != 6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (v14 == 6)
      {
        goto LABEL_9;
      }

      switch(v11)
      {
        case 5:
          if (v14 != 5)
          {
            goto LABEL_9;
          }

          break;
        case 4:
          if (v14 != 4)
          {
            goto LABEL_9;
          }

          break;
        case 3:
          if (v14 != 3)
          {
            goto LABEL_9;
          }

          break;
        default:
          if ((v14 - 6) > 0xFFFFFFFC || v11 != v14)
          {
            goto LABEL_9;
          }

          break;
      }
    }
  }

  if (!__swift_getEnumTagSinglePayload(v12, 1, v13))
  {
    memcpy(v63, (v12 + 16), 0xB8uLL);
    sub_220E56868(v63, v60);
    sub_220F1505C(v60);
    sub_220E56918(v63);
    memcpy(v62, v60, 0x60uLL);
    goto LABEL_10;
  }

LABEL_9:
  memset(v62, 0, 96);
LABEL_10:
  memcpy(v60, v62, 0x60uLL);
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v61 = *(v4 + 256);
  v15 = *(v4 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_zoomLevel);
  if (v15 >= 4.0)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 16.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_220F6E0C4(a1, &v61, v60, v17, *(v4 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_userInterfaceStyle), v10);
  sub_220E3B2DC(v62, &qword_27CF9EF78);
  v18 = *v10;
  v47 = *(v10 + 1);
  v48 = v18;
  v45 = *(v10 + 2);
  v19 = v10[24];
  v20 = v10[25];
  v58 = v10[27];
  v21 = *(v10 + 4);
  v22 = *(v10 + 5);
  v23 = *(v10 + 7);
  v56 = *(v10 + 6);
  v57 = v21;
  v50 = v23;
  v51 = v22;
  v24 = v10[64];
  v54 = v20;
  v55 = v24;
  sub_220F26AD4(&v10[v7[9]], a3 + v7[9], type metadata accessor for WeatherMapAnnotationBackground);
  v25 = v7[11];
  v49 = *&v10[v7[10]];
  v46 = *&v10[v25];
  v26 = v7[13];
  v44 = *&v10[v7[12]];
  v27 = *&v10[v26];
  v28 = *&v10[v26 + 8];
  v29 = &v10[v7[14]];
  v30 = *(v29 + 1);
  v52 = *v29;
  v53 = v27;
  v31 = v45;
  sub_220E5696C();

  v49 = v49;
  v46 = v46;
  v32 = v44;
  v33 = v28;

  v34 = v51;

  result = sub_220F280A8(v10, type metadata accessor for WeatherMapAnnotationViewModel);
  v36 = v47;
  *a3 = v48;
  *(a3 + 8) = v36;
  *(a3 + 16) = v31;
  *(a3 + 24) = v19;
  *(a3 + 25) = v54;
  *(a3 + 26) = v59 & 1;
  *(a3 + 27) = v58;
  v37 = v56;
  *(a3 + 32) = v57;
  *(a3 + 40) = v34;
  v39 = v49;
  v38 = v50;
  *(a3 + 48) = v37;
  *(a3 + 56) = v38;
  *(a3 + 64) = v55;
  *(a3 + v7[10]) = v39;
  *(a3 + v7[11]) = v46;
  *(a3 + v7[12]) = v32;
  v40 = (a3 + v7[13]);
  v41 = v52;
  *v40 = v53;
  v40[1] = v33;
  v42 = (a3 + v7[14]);
  *v42 = v41;
  v42[1] = v30;
  return result;
}

id *sub_220F25C58()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0((v0 + 7));
  __swift_destroy_boxed_opaque_existential_0((v0 + 12));
  __swift_destroy_boxed_opaque_existential_0((v0 + 17));

  sub_220E22990((v0 + 24));
  sub_220E22990((v0 + 26));

  sub_220E3B2DC(v0 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_overlay, &unk_27CF9EB80);
  return v0;
}

uint64_t sub_220F25CE8()
{
  sub_220F25C58();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for WeatherMapAnnotationManager()
{
  result = qword_27CF9EF68;
  if (!qword_27CF9EF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220F25D94()
{
  sub_220F25E80();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_220F25E80()
{
  if (!qword_2812CA010)
  {
    type metadata accessor for WeatherMapOverlay();
    v0 = sub_220FC33A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812CA010);
    }
  }
}

char *sub_220F25ED8(void *a1)
{
  v4 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_1_55();
  v7 = type metadata accessor for WeatherMapAnnotationViewModel();
  v8 = OUTLINED_FUNCTION_8_0(v7);
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_6_21();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21 - v12;
  v14 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_34();
  sub_220F26AD4(a1 + v14, v2, v15);
  sub_220F2587C(v2, 0, v13);
  OUTLINED_FUNCTION_5_24();
  OUTLINED_FUNCTION_3_33();
  sub_220F26AD4(v13, v1, v16);
  v17 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotationView());
  v18 = sub_220F86A3C(a1, v1, 0);
  OUTLINED_FUNCTION_0_63();
  sub_220F280A8(v13, v19);
  *&v18[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_dataSource + 8] = &off_283484958;
  swift_unknownObjectWeakAssign();
  *&v18[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_delegate + 8] = &off_283484930;
  swift_unknownObjectWeakAssign();
  return v18;
}

void sub_220F26060(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 184);
  v5 = 0uLL;
  if (v4)
  {
    v7 = v4;
    v8 = [v7 superview];
    if (v8)
    {
      v9 = v8;
      [v7 frame];
      [v9 convertRect:a1 toCoordinateSpace:?];
      v17 = v10;
      v18 = v11;
      v16 = v12;
      v19 = v13;

      *&v15 = v16;
      *&v5 = v17;
      v14 = 0;
      *(&v5 + 1) = v18;
      *(&v15 + 1) = v19;
    }

    else
    {

      v14 = 1;
      v15 = 0uLL;
      v5 = 0uLL;
    }
  }

  else
  {
    v14 = 1;
    v15 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = v15;
  *(a2 + 32) = v14;
}

id sub_220F26138(uint64_t a1)
{
  v4 = v1;
  v6 = type metadata accessor for WeatherMapAnnotationViewModel();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  MEMORY[0x28223BE20](v7, v8);
  v9 = OUTLINED_FUNCTION_1_55();
  v10 = type metadata accessor for WeatherMapAnnotationContentViewModel(v9);
  v11 = OUTLINED_FUNCTION_8_0(v10);
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_6_21();
  MEMORY[0x28223BE20](v13, v14);
  v16 = (&v32[-1] - v15);
  v17 = *(v1 + 256);
  v18 = v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_overlay;
  OUTLINED_FUNCTION_5_1();
  v19 = type metadata accessor for WeatherMapOverlay();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19))
  {
    if (v17 != 6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = *(v18 + 200);
    if (v17 == 6)
    {
      if (v20 != 6)
      {
LABEL_9:
        memset(v34, 0, 96);
        goto LABEL_10;
      }
    }

    else
    {
      if (v20 == 6)
      {
        goto LABEL_9;
      }

      switch(v17)
      {
        case 5:
          if (v20 != 5)
          {
            goto LABEL_9;
          }

          break;
        case 4:
          if (v20 != 4)
          {
            goto LABEL_9;
          }

          break;
        case 3:
          if (v20 != 3)
          {
            goto LABEL_9;
          }

          break;
        default:
          if ((v20 - 6) > 0xFFFFFFFC || v17 != v20)
          {
            goto LABEL_9;
          }

          break;
      }
    }
  }

  if (__swift_getEnumTagSinglePayload(v18, 1, v19))
  {
    goto LABEL_9;
  }

  memcpy(v35, (v18 + 16), 0xB8uLL);
  sub_220E56868(v35, v32);
  sub_220F1505C(v32);
  sub_220E56918(v35);
  memcpy(v34, v32, 0x60uLL);
LABEL_10:
  memcpy(v32, v34, 0x60uLL);
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v21 = *(a1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_mapAnnotation);
  v22 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_33();
  sub_220F26AD4(a1 + v22, v3, v23);
  v33[0] = *(v4 + 256);
  sub_220ED1C58(v21, v3, v33, v32, *(v4 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_userInterfaceStyle), v16);
  sub_220E3B2DC(v34, &qword_27CF9EF78);
  OUTLINED_FUNCTION_0_63();
  sub_220F280A8(v3, v24);
  sub_220F26AD4(v16, v2, type metadata accessor for WeatherMapAnnotationContentViewModel);
  v25 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotationContentView());
  v26 = sub_220E3CD30(v21, v2);
  sub_220F280A8(v16, type metadata accessor for WeatherMapAnnotationContentViewModel);
  v27 = *(v4 + 184);
  *(v4 + 184) = v26;
  v28 = v26;

  return v28;
}

void sub_220F2643C(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    goto LABEL_8;
  }

  v9 = v2;
  type metadata accessor for WeatherMapAnnotationContentView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

LABEL_8:
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v6 = sub_220FC17A0();
    __swift_project_value_buffer(v6, qword_2812C5ED0);
    v9 = sub_220FC1780();
    v7 = sub_220FC2E10();
    if (os_log_type_enabled(v9, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_220E15000, v9, v7, "Tap recognizer on annotation has incorrect view", v8, 2u);
      MEMORY[0x223D9DDF0](v8, -1, -1);
    }

    goto LABEL_12;
  }

  v4 = v3;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView_annotation);
    sub_220F2788C(v1, v5);

    swift_unknownObjectRelease();
    return;
  }

LABEL_12:
}

uint64_t sub_220F26628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F26698(uint64_t a1)
{
  v3 = *(v1 + 184);
  *(v1 + 184) = 0;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_220F27BBC(v1, *(a1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_mapAnnotation), result);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_220F2671C(void *a1)
{
  type metadata accessor for WeatherMapAnnotationContentView();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v5 = *(v1 + 184);
    *(v1 + 184) = v3;
    v4 = a1;
  }
}

uint64_t sub_220F26790(char *a1, int a2, char a3)
{
  v8 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  v9 = OUTLINED_FUNCTION_8_0(v8);
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_1_55();
  v11 = type metadata accessor for WeatherMapAnnotationViewModel();
  v12 = OUTLINED_FUNCTION_8_0(v11);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_mapAnnotation];
  v17 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_34();
  sub_220F26AD4(v16 + v17, v4, v18);
  sub_220F2587C(v4, a2, v15);
  OUTLINED_FUNCTION_5_24();
  __swift_project_boxed_opaque_existential_1((v3 + 136), *(v3 + 160));
  sub_220EE695C(a1, v15, a3);
  OUTLINED_FUNCTION_0_63();
  return sub_220F280A8(v15, v19);
}

uint64_t sub_220F268BC(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_overlayKind);
  v3 = *(v1 + 256);
  switch(v2)
  {
    case 5:
      return v3 != 5;
    case 4:
      return v3 != 4;
    case 3:
      return v3 != 3;
  }

  if ((v3 - 3) < 3)
  {
    return 1;
  }

  return v2 != v3;
}

uint64_t sub_220F26930(void *a1)
{
  v2 = [a1 _annotationViews];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_220FC2970();

  return v3;
}

uint64_t sub_220F26998()
{
  v0 = sub_220EF8494();
  v1 = sub_220F26930(v0);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = v1 + 32;
      do
      {
        sub_220E21408(v4, v8);
        sub_220E5D784(v8, &v6);
        sub_220E1966C(0, &qword_2812C5CE0);
        if ((swift_dynamicCast() & 1) != 0 && v7)
        {
          MEMORY[0x223D9BEA0]();
          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_220FC29C0();
          }

          sub_220FC29F0();
          v2 = v9;
        }

        v4 += 32;
        --v3;
      }

      while (v3);
    }
  }

  return v2;
}

uint64_t sub_220F26AD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_220F26B34(uint64_t a1, unint64_t a2)
{
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v3 = sub_220FC17A0();
  __swift_project_value_buffer(v3, qword_2812C5ED0);

  v4 = sub_220FC1780();
  v5 = sub_220FC2E30();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = sub_220F43CDC(a2);

    _os_log_impl(&dword_220E15000, v4, v5, "Removing annotations. count=%{public}ld", v6, 0xCu);
    MEMORY[0x223D9DDF0](v6, -1, -1);
  }

  else
  {
  }

  v7 = sub_220EF8494();

  if (a2 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EF90);
    sub_220FC3750();
  }

  else
  {
    sub_220FC3960();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EF90);
  v8 = sub_220FC2960();

  [v7 removeAnnotations_];
}

uint64_t sub_220F26D1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v22 - v7;
  v9 = sub_220FC1070();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v14 = sub_220FC17A0();
  __swift_project_value_buffer(v14, qword_2812C5ED0);

  v15 = sub_220FC1780();
  v16 = sub_220FC2E30();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    *(v17 + 4) = sub_220F43CDC(a2);

    _os_log_impl(&dword_220E15000, v15, v16, "Adding new annotations. count=%{public}ld", v17, 0xCu);
    MEMORY[0x223D9DDF0](v17, -1, -1);
  }

  else
  {
  }

  v18 = sub_220EF8494();

  if (a2 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EF90);
    sub_220FC3750();
  }

  else
  {
    sub_220FC3960();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EF90);
  v19 = sub_220FC2960();

  [v18 addAnnotations_];

  v20 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_selectedLocation;
  swift_beginAccess();
  sub_220ED6038(a3 + v20, v8, &unk_27CF9D6D0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_220E3B2DC(v8, &unk_27CF9D6D0);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_220EFE698(v13, 0);
  return (*(v10 + 8))(v13, v9);
}

void sub_220F2707C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v78 = a3;
  v80 = sub_220FC1070();
  v4 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v5);
  v59 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC10);
  MEMORY[0x28223BE20](v73, v7);
  v9 = &v58 - v8;
  v10 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v65 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v72, v13);
  v58 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v71 = &v58 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v70 = &v58 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v64 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v58 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v79 = &v58 - v30;
  v76 = a2;
  if (a2 >> 62)
  {
    goto LABEL_28;
  }

  v75 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v75)
  {
    v31 = v76;
    v74 = v76 & 0xC000000000000001;
    v69 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_selectedLocation;
    swift_beginAccess();
    v32 = 0;
    v66 = v31 & 0xFFFFFFFFFFFFFF8;
    v67 = (v4 + 32);
    v61 = (v4 + 16);
    v63 = (v4 + 8);
    v62 = v27;
    while (1)
    {
      if (v74)
      {
        v33 = MEMORY[0x223D9CB30](v32, v76);
      }

      else
      {
        if (v32 >= *(v66 + 16))
        {
          goto LABEL_27;
        }

        v33 = *(v76 + 8 * v32 + 32);
      }

      v34 = v33;
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        v75 = sub_220FC34C0();
        goto LABEL_3;
      }

      v4 = sub_220EF8494();
      v36 = [v4 viewForAnnotation_];

      if (v36)
      {
        break;
      }

LABEL_23:

      ++v32;
      if (v35 == v75)
      {
        return;
      }
    }

    sub_220ED6038(v78 + v69, v79, &unk_27CF9D6D0);
    v37 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
    swift_beginAccess();
    v38 = v70;
    sub_220F26AD4(v34 + v37, v70, type metadata accessor for WeatherMapAnnotatedLocationData);
    v39 = v38;
    v40 = v71;
    sub_220F28100(v39, v71, type metadata accessor for WeatherMapAnnotatedLocationData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v77 = v36;
    v68 = v37;
    if (EnumCaseMultiPayload == 1)
    {
      v42 = v40;
      v43 = v65;
      sub_220F28100(v42, v65, type metadata accessor for WeatherMapAnnotatedLocation);
      (*v61)(v27, v43, v80);
      sub_220F280A8(v43, type metadata accessor for WeatherMapAnnotatedLocation);
    }

    else
    {
      (*v67)(v27, v40, v80);
    }

    v44 = v80;
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v80);
    v45 = *(v73 + 48);
    sub_220ED6038(v79, v9, &unk_27CF9D6D0);
    sub_220ED6038(v27, &v9[v45], &unk_27CF9D6D0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v44) == 1)
    {
      sub_220E3B2DC(v27, &unk_27CF9D6D0);
      sub_220E3B2DC(v79, &unk_27CF9D6D0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v9[v45], 1, v80);
      v4 = v77;
      if (EnumTagSinglePayload == 1)
      {
        sub_220E3B2DC(v9, &unk_27CF9D6D0);
        goto LABEL_21;
      }
    }

    else
    {
      v47 = v64;
      sub_220ED6038(v9, v64, &unk_27CF9D6D0);
      if (__swift_getEnumTagSinglePayload(&v9[v45], 1, v80) != 1)
      {
        v50 = &v9[v45];
        v51 = v80;
        v52 = v59;
        (*v67)(v59, v50, v80);
        sub_220F28050();
        v60 = sub_220FC26B0();
        v53 = *v63;
        (*v63)(v52, v51);
        v54 = v47;
        v27 = v62;
        sub_220E3B2DC(v62, &unk_27CF9D6D0);
        sub_220E3B2DC(v79, &unk_27CF9D6D0);
        v53(v54, v51);
        sub_220E3B2DC(v9, &unk_27CF9D6D0);
        v4 = v77;
        if (v60)
        {
LABEL_21:
          if (([v4 isSelected] & 1) == 0)
          {
            v55 = v4;
            sub_220EF836C();
            v56 = v58;
            sub_220F26AD4(v34 + v68, v58, type metadata accessor for WeatherMapAnnotatedLocationData);
            v57 = v59;
            sub_220F05E6C(v59);
            sub_220F280A8(v56, type metadata accessor for WeatherMapAnnotatedLocationData);
            sub_220EFE698(v57, 1);

            (*v63)(v57, v80);
            return;
          }
        }

LABEL_22:

        goto LABEL_23;
      }

      v48 = v62;
      sub_220E3B2DC(v62, &unk_27CF9D6D0);
      sub_220E3B2DC(v79, &unk_27CF9D6D0);
      v49 = v47;
      v27 = v48;
      (*v63)(v49, v80);
      v4 = v77;
    }

    sub_220E3B2DC(v9, &qword_27CF9EC10);
    goto LABEL_22;
  }
}

void sub_220F2788C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
  swift_beginAccess();
  sub_220F26AD4(a2 + v11, v6, type metadata accessor for WeatherMapAnnotatedLocationData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220F28100(v6, v10, type metadata accessor for WeatherMapAnnotatedLocation);
    if (swift_unknownObjectWeakLoadStrong())
    {

      v12 = sub_220FC1020();
      v14 = v13;
      MEMORY[0x28223BE20](v12, v13);
      *(&v23 - 4) = v15;
      *(&v23 - 3) = v14;
      *(&v23 - 8) = 257;
      sub_220F32B5C(sub_220E81A10);
      swift_unknownObjectRelease();
    }

    sub_220F280A8(v10, type metadata accessor for WeatherMapAnnotatedLocation);
  }

  else
  {
    sub_220F280A8(v6, type metadata accessor for WeatherMapAnnotatedLocationData);
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v16 = sub_220FC17A0();
    __swift_project_value_buffer(v16, qword_2812C5ED0);
    v17 = a2;
    v18 = sub_220FC1780();
    v19 = sub_220FC2E10();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_220E15000, v18, v19, "Tapped location annotation that was still loading. annotation=%{public}@", v20, 0xCu);
      sub_220E3B2DC(v21, &qword_27CF9EF80);
      MEMORY[0x223D9DDF0](v21, -1, -1);
      MEMORY[0x223D9DDF0](v20, -1, -1);
    }
  }
}

uint64_t sub_220F27BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_220FC1070();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC10);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v38 - v11;
  v13 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v40 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v38 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v38 - v26;
  v28 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
  swift_beginAccess();
  sub_220F26AD4(a2 + v28, v16, type metadata accessor for WeatherMapAnnotatedLocationData);
  sub_220F05E6C(v27);
  sub_220F280A8(v16, type metadata accessor for WeatherMapAnnotatedLocationData);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v5);
  v29 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_selectedLocation;
  swift_beginAccess();
  v30 = *(v9 + 56);
  sub_220ED6038(v27, v12, &unk_27CF9D6D0);
  v41 = a3;
  sub_220ED6038(a3 + v29, &v12[v30], &unk_27CF9D6D0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) != 1)
  {
    sub_220ED6038(v12, v23, &unk_27CF9D6D0);
    if (__swift_getEnumTagSinglePayload(&v12[v30], 1, v5) != 1)
    {
      v32 = v42;
      v33 = v39;
      (*(v42 + 32))(v39, &v12[v30], v5);
      sub_220F28050();
      v34 = sub_220FC26B0();
      v35 = *(v32 + 8);
      v35(v33, v5);
      sub_220E3B2DC(v27, &unk_27CF9D6D0);
      v35(v23, v5);
      result = sub_220E3B2DC(v12, &unk_27CF9D6D0);
      if ((v34 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_220E3B2DC(v27, &unk_27CF9D6D0);
    (*(v42 + 8))(v23, v5);
    return sub_220E3B2DC(v12, &qword_27CF9EC10);
  }

  sub_220E3B2DC(v27, &unk_27CF9D6D0);
  if (__swift_getEnumTagSinglePayload(&v12[v30], 1, v5) != 1)
  {
    return sub_220E3B2DC(v12, &qword_27CF9EC10);
  }

  sub_220E3B2DC(v12, &unk_27CF9D6D0);
LABEL_8:
  v36 = v40;
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v5);
  v37 = v41;
  swift_beginAccess();
  sub_220EA01C0(v36, v37 + v29);
  return swift_endAccess();
}

unint64_t sub_220F28050()
{
  result = qword_2812CA078;
  if (!qword_2812CA078)
  {
    sub_220FC1070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CA078);
  }

  return result;
}

uint64_t sub_220F280A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220F28100(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

__n128 *sub_220F281A0(__n128 *result, __n128 *a2, double a3, double a4, float a5, __n128 a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v6 = a2;
      do
      {
        v6->n128_f64[0] = a3;
        v6->n128_f64[1] = a4;
        v6[1].n128_f32[0] = a5;
        v6[2] = a6;
        v6 += 3;
        result = (result - 1);
      }

      while (result);
    }

    return a2;
  }

  return result;
}

uint64_t sub_220F281D0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_220FC3A40();
  sub_220EB33C0(v14);
  sub_220FC3A90();
  OUTLINED_FUNCTION_3_34();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = *(a2 + 48) + 48 * v5;
    v10 = *v9 == *a1 && *(v9 + 8) == *(a1 + 8);
    v11 = v10 && *(v9 + 16) == *(a1 + 16);
    v12 = v11 && *(v9 + 24) == *(a1 + 24);
    if (v12 && *(v9 + 32) == *(a1 + 32) && *(v9 + 40) == *(a1 + 40))
    {
      break;
    }

    v5 = (v5 + 1) & v8;
    if (((*(v4 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_220F282CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_220FC3A40();
  OUTLINED_FUNCTION_20_12();
  sub_220FC27D0();
  v6 = sub_220FC3A90();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_220FC3940();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void sub_220F283B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (*(a4 + 16))
  {
    sub_220FC3A40();
    OUTLINED_FUNCTION_20_12();
    sub_220EEBB30(v9, v10, v11, a3);
    sub_220FC3A90();
    OUTLINED_FUNCTION_3_34();
    if (v12)
    {
      do
      {
        v15 = OUTLINED_FUNCTION_21_9();
        v19 = v16 == a1 && v13 == a2 && v14 == a3;
        if (v15 == a5 && v19)
        {
          break;
        }

        OUTLINED_FUNCTION_8_21();
      }

      while ((v21 & 1) != 0);
    }
  }
}

void sub_220F28488(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v78 = *MEMORY[0x277D85DE8];
  v8 = sub_220FC1160();
  MEMORY[0x28223BE20](v8 - 8, v9);
  sub_220FC1150();
  sub_220FC1180();
  swift_allocObject();
  *(v4 + 40) = sub_220FC1170();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D960);
  sub_220E304BC();
  v10 = MEMORY[0x277D84F90];
  *(v4 + 48) = OUTLINED_FUNCTION_22_11();
  *(v4 + 56) = OUTLINED_FUNCTION_22_11();
  *(v4 + 72) = 0;
  v72 = v4 + 72;
  *(v4 + 80) = 0;
  *(v4 + 88) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
  *(v4 + 120) = 0;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0;
  *(v4 + 216) = 1;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0;
  *(v4 + 224) = 0;
  *(v4 + 248) = 1;
  *(v4 + 256) = v10;
  *(v4 + 264) = 0;
  *(v4 + 272) = v10;
  *(v4 + 280) = 0;
  *(v4 + 288) = dispatch_semaphore_create(2);
  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  *(v4 + 160) = (*(v12 + 40))(v11, v12);
  v13 = OUTLINED_FUNCTION_0_64();
  v14(v13);
  OUTLINED_FUNCTION_5_25();
  *(v4 + 128) = *(v15 + 16);
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0(&v76);
  if (DeviceIsVerySlow())
  {
    v16 = 0;
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_220F44860();
    swift_unknownObjectRelease();
  }

  *(v5 + 168) = v16;
  v17 = *(v5 + 128);
  v18 = a3[3];
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v18);
  v20 = *(v19 + 40);
  swift_unknownObjectRetain();
  v21 = v20(v18, v19);
  MTLSizeMake(a4, a4, &v76);
  v22 = v76;
  v23 = v77;
  type metadata accessor for OverlayTexturePool();
  swift_allocObject();
  *(v5 + 64) = sub_220F412B8(v17, v21, v22, *(&v22 + 1), v23, 16, 7, 5, 0x7261702D646E6977, 0xED0000656C636974, 0);
  *(v5 + 16) = a1;
  OUTLINED_FUNCTION_12_15();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EFA0);
  swift_allocObject();

  *(v5 + 24) = sub_220FC13C0();
  swift_endAccess();
  *(v5 + 32) = a4;
  v24 = OUTLINED_FUNCTION_0_64();
  v25(v24);
  OUTLINED_FUNCTION_5_25();
  *(v5 + 144) = *(v26 + 24);
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0(&v76);
  sub_220E1E2A8(a3, &v76);
  type metadata accessor for TrailEffectRenderer();
  swift_allocObject();
  v27 = sub_220E45424(&v76);
  if (v74)
  {

LABEL_6:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v74)
    {
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if (!v74)
    {
    }

    swift_deallocPartialClassInstance();
    goto LABEL_11;
  }

  *(v5 + 296) = v27;
  v28 = [objc_opt_self() sharedCaptureManager];
  v29 = [v28 newCaptureScopeWithCommandQueue_];

  *(v5 + 136) = v29;
  swift_unknownObjectRetain();
  v30 = sub_220FC26C0();
  [v29 setLabel_];
  swift_unknownObjectRelease();

  v31 = OUTLINED_FUNCTION_0_64();
  v32(v31);
  OUTLINED_FUNCTION_5_25();
  v34 = *(v33 + 72);
  swift_unknownObjectRetain();
  v35 = sub_220FC26C0();
  v36 = [v34 newFunctionWithName_];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&v76);
  v37 = OUTLINED_FUNCTION_0_64();
  v38(v37);
  OUTLINED_FUNCTION_5_25();
  v40 = *(v39 + 72);
  swift_unknownObjectRetain();
  v41 = sub_220FC26C0();
  v42 = [v40 newFunctionWithName_];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&v76);
  v43 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  sub_220EF50DC(0xD00000000000001BLL, 0x8000000220FE3400, v43);
  [v43 setVertexFunction_];
  [v43 setFragmentFunction_];
  v44 = [v43 colorAttachments];
  v45 = [v44 objectAtIndexedSubscript_];

  if (v45)
  {
    [v45 setPixelFormat_];

    v46 = [v43 vertexBuffers];
    v47 = [v46 objectAtIndexedSubscript_];

    if (v47)
    {
      [v47 setMutability_];

      if (*(v5 + 168))
      {
        v48 = sub_220FC3940();

        if ((v48 & 1) == 0)
        {
          [v43 setRasterSampleCount_];
        }
      }

      else
      {
      }

      v49 = *(v5 + 128);
      *&v76 = 0;
      v50 = [v49 newRenderPipelineStateWithDescriptor:v43 error:&v76];
      v51 = v76;
      if (!v50)
      {
        v52 = v76;
        sub_220FBFFE0();

        swift_willThrow();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_6;
      }

      *(v5 + 152) = v50;
      if (*(v5 + 168))
      {
        if (*(v5 + 168) != 1)
        {
          v55 = v51;

          goto LABEL_27;
        }
      }

      else
      {
        OUTLINED_FUNCTION_5_2();
        OUTLINED_FUNCTION_3_2();
      }

      OUTLINED_FUNCTION_16_11();
      v53 = sub_220FC3940();
      v54 = v51;

      if ((v53 & 1) == 0)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_36:
        *v72 = 0;
        *(v72 + 8) = 0;
        *(v72 + 16) = 0;
        __swift_destroy_boxed_opaque_existential_0(a3);
        return;
      }

LABEL_27:
      v56 = OUTLINED_FUNCTION_0_64();
      v57(v56);
      OUTLINED_FUNCTION_5_25();
      v59 = *(v58 + 72);
      swift_unknownObjectRetain();
      v60 = sub_220FC26C0();
      v61 = [v59 newFunctionWithName_];

      swift_unknownObjectRelease();
      if (!v61)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_0(&v76);
        goto LABEL_36;
      }

      __swift_destroy_boxed_opaque_existential_0(&v76);
      v62 = *(v5 + 128);
      *&v76 = 0;
      v63 = [v62 newComputePipelineStateWithFunction:v61 error:&v76];
      v64 = v76;
      if (!v63)
      {
        v71 = v76;
        sub_220FBFFE0();

        swift_willThrow();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
LABEL_11:
        __swift_destroy_boxed_opaque_existential_0(a3);
        return;
      }

      v65 = v63;
      *(v5 + 184) = v63;
      v66 = v64;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v67 = [v65 maxTotalThreadsPerThreadgroup];
      v68 = [v65 threadExecutionWidth];
      if (v68)
      {
        if (v67 != 0x8000000000000000 || v68 != -1)
        {
          MTLSizeMake([v65 threadExecutionWidth], v67 / v68, &v76);
          v73 = v76;
          v70 = v77;
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          *(v5 + 192) = v73;
          *(v5 + 208) = v70;
          *(v5 + 216) = 0;
          goto LABEL_36;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_220F28F64()
{
  v1 = v0;
  v2 = 2;
  do
  {
    v3 = *(v1 + 288);
    sub_220FC30B0();

    --v2;
  }

  while (v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_220F29038()
{
  sub_220F28F64();

  return MEMORY[0x2821FE8D8](v0, 304, 7);
}

void sub_220F29090(uint64_t a1, uint64_t a2, char **a3, char *a4)
{
  v146 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12, v13);
  v148 = v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v145 = v142 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v21 = v142 - v20;
  v167.origin.x = OUTLINED_FUNCTION_0_0();
  Width = CGRectGetWidth(v167);
  v150 = *(v4 + 32);
  v168.origin.x = OUTLINED_FUNCTION_0_0();
  Height = CGRectGetHeight(v168);
  v24 = *(*(v4 + 16) + 32);
  if (!v24)
  {
    if (*&a3 != 0.0)
    {
      (a3)(Height);
    }

    return;
  }

  v25 = Height;
  v26 = *(v4 + 288);
  v151 = v4;
  v27 = v26;
  sub_220FC30A0();

  OUTLINED_FUNCTION_7_19();
  v28 = *(v27 + 280);
  v114 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v114)
  {
    goto LABEL_138;
  }

  v30 = v150;
  Width = Width * v150;
  v7 = v25 * v150;
  v6 = v29 % 2;
  *(v27 + 280) = v29 % 2;
  v31 = *(v27 + 120);
  v144 = a4;
  v149 = v24;
  if (v31 && (*(v27 + 112) & 1) == 0 && *(v27 + 96) == Width && *(v27 + 104) == v7 && *(v27 + 264) == v24)
  {
    goto LABEL_25;
  }

  if (qword_27CF9C000 != -1)
  {
    OUTLINED_FUNCTION_0_39();
  }

  v32 = v11;
  v33 = __swift_project_value_buffer(v11, qword_27CF9CBE0);
  sub_220E335D0(v33, v21);
  v11 = sub_220FC17A0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v11);
  v27 = v151;
  if (EnumTagSinglePayload != 1)
  {

    v27 = sub_220FC1780();
    v35 = sub_220FC2E30();

    if (!os_log_type_enabled(v27, v35))
    {

LABEL_23:
      OUTLINED_FUNCTION_12();
      (*(v42 + 8))(v21, v11);
      OUTLINED_FUNCTION_7_19();
      goto LABEL_24;
    }

    v147 = *&a3;
    *&a3 = COERCE_DOUBLE(swift_slowAlloc());
    v36 = swift_slowAlloc();
    aBlock = v36;
    *a3 = 134218754;
    *(a3 + 4) = v24;
    *(a3 + 6) = 2048;
    if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_146:
      __break(1u);
    }

    else if (Width > -9.22337204e18)
    {
      if (Width < 9.22337204e18)
      {
        *(a3 + 14) = Width;
        *(a3 + 11) = 2048;
        if (COERCE_UNSIGNED_INT64(fabs(v25 * v30)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v7 > -9.22337204e18)
          {
            if (v7 >= 9.22337204e18)
            {
              __break(1u);
              return;
            }

            v37 = v36;
            a3[3] = v7;
            *(a3 + 16) = 2080;
            OUTLINED_FUNCTION_13_15();
            v159 = *(v38 + 168);
            v39 = sub_220FC2750();
            v41 = sub_220E20FF8(v39, v40, &aBlock);

            *(a3 + 34) = v41;
            _os_log_impl(&dword_220E15000, v27, v35, "[wind particle] making buffers: particles=%ld (%ldx%ld) [msaa=%s]", a3, 0x2Au);
            __swift_destroy_boxed_opaque_existential_0(v37);
            MEMORY[0x223D9DDF0](v37, -1, -1);
            MEMORY[0x223D9DDF0](a3, -1, -1);

            *&a3 = v147;
            v24 = v149;
            goto LABEL_23;
          }

LABEL_150:
          __break(1u);
LABEL_151:
          OUTLINED_FUNCTION_0_39();
LABEL_51:
          v83 = __swift_project_value_buffer(v11, qword_27CF9CBE0);
          v84 = v145;
          sub_220E335D0(v83, v145);
          v85 = sub_220FC17A0();
          if (__swift_getEnumTagSinglePayload(v84, 1, v85) == 1)
          {
            v86 = sub_220E45DAC(v84);
            if (*&a3 == 0.0)
            {
              goto LABEL_120;
            }
          }

          else
          {
            v137 = sub_220FC1780();
            v138 = sub_220FC2E30();
            if (os_log_type_enabled(v137, v138))
            {
              v6 = swift_slowAlloc();
              *v6 = 0;
              OUTLINED_FUNCTION_58_0(&dword_220E15000, v139, v140, "[wind particle] could not create render pass descriptor");
              OUTLINED_FUNCTION_25_12();
            }

            OUTLINED_FUNCTION_12();
            v86 = (*(v141 + 8))(v84, v85);
            if (*&a3 == 0.0)
            {
              goto LABEL_120;
            }
          }

          (a3)(v86);
LABEL_120:
          swift_unknownObjectRelease();
          goto LABEL_121;
        }

LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    __break(1u);
    goto LABEL_148;
  }

  sub_220E45DAC(v21);
LABEL_24:
  sub_220F2A084(v24, Width, v25 * v30);
  *(v27 + 96) = Width;
  *(v27 + 104) = v7;
  *(v27 + 112) = 0;
  *(v27 + 264) = v24;
  v6 = *(v27 + 280);
  v11 = v32;
LABEL_25:
  swift_beginAccess();
  v5 = *(v27 + 272);
  sub_220F227B4(v6, (v5 & 0xC000000000000001) == 0, v5);
  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_139;
  }

  v43 = *(v5 + 8 * v6 + 32);
  swift_unknownObjectRetain();
  while (1)
  {
    swift_endAccess();
    OUTLINED_FUNCTION_19_11();
    swift_beginAccess();

    sub_220FC13E0();

    if (BYTE1(aBlock) == 1)
    {
      v44 = [swift_unknownObjectRetain() contents];
      v45 = v43;
      if (qword_27CF9C0E8 != -1)
      {
        swift_once();
      }

      v46 = sub_220F281A0(v149, v44, *&qword_27CFAF5F0, *algn_27CFAF5F8, *&dword_27CFAF600, xmmword_27CFAF610);
      OUTLINED_FUNCTION_19_11();
      v47 = *(v21 + 16);
      swift_beginAccess();
      v48 = *(v47 + 16);
      v49 = sub_220F43CDC(v48);
      if (v49)
      {
        v50 = v49;
        v143 = v11;
        v147 = Width;
        if (v49 < 1)
        {
          __break(1u);
          goto LABEL_146;
        }

        v51 = v7;
        v52 = a3;
        v53 = v147;
        v54 = v51;

        v55 = 0;
        v21 = &v46[1];
        do
        {
          if ((v48 & 0xC000000000000001) != 0)
          {
            v56 = MEMORY[0x223D9CB30](v55, v48);
          }

          else
          {
          }

          v57 = *(v56 + OBJC_IVAR____TtC11WeatherMaps8Particle_bucket);
          if (v57)
          {
            v58 = *(v57 + 32);
            v59 = *(v57 + 16);
          }

          else
          {
            v58 = 0;
            v59 = 0uLL;
          }

          ++v55;
          *&v60 = v56[27] * v53;
          *(&v60 + 1) = v56[28] * v54;
          *&v61 = v56[25] * v53;
          *(&v61 + 1) = v56[26] * v54;
          *(v21 - 16) = v60;
          *(v21 - 8) = v61;
          *v21 = v58;
          *(v21 + 16) = v59;

          v21 += 48;
        }

        while (v50 != v55);

        OUTLINED_FUNCTION_19_11();
        a3 = v52;
        HIDWORD(Width) = HIDWORD(v147);
        v11 = v143;
      }
    }

    v6 = *(v21 + 136);
    [v6 beginScope];
    v147 = COERCE_DOUBLE([*(v21 + 144) commandBuffer]);
    if (v147 == 0.0)
    {
      if (qword_27CF9C000 != -1)
      {
        goto LABEL_144;
      }

      goto LABEL_47;
    }

    v62 = *(v21 + 120);
    if (!v62)
    {
      if (qword_27CF9C000 != -1)
      {
        goto LABEL_151;
      }

      goto LABEL_51;
    }

    v143 = v6;
    v63 = v62;
    swift_unknownObjectRetain();
    v64 = sub_220FC26C0();
    v65 = v147;
    [*&v147 setLabel_];

    v66 = swift_allocObject();
    swift_weakInit();
    v157 = sub_220F2B700;
    v158 = v66;
    aBlock = MEMORY[0x277D85DD0];
    v154 = 1107296256;
    v155 = sub_220F2A93C;
    v156 = &block_descriptor_20;
    v67 = _Block_copy(&aBlock);

    v68 = a3;
    *&a3 = COERCE_DOUBLE(&selRef_handleVoiceOverStatusDidChangeWithNotification_);
    [*&v65 addCompletedHandler_];
    _Block_release(v67);
    v69 = swift_allocObject();
    v11 = v144;
    *(v69 + 16) = v68;
    *(v69 + 24) = v11;
    v157 = sub_220F1B1C0;
    v158 = v69;
    aBlock = MEMORY[0x277D85DD0];
    v154 = 1107296256;
    v155 = sub_220F2A93C;
    v156 = &block_descriptor_14_1;
    v70 = _Block_copy(&aBlock);
    sub_220E1AADC(v68);

    [*&v65 addCompletedHandler_];
    _Block_release(v70);
    swift_unknownObjectRetain();
    v145 = v63;
    OUTLINED_FUNCTION_7_19();
    sub_220F2A99C(v71, v72, v73, v74, v75, v76);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_13_15();
    v78 = *(v77 + 168);
    v142[1] = v43;
    if (!v78)
    {
      OUTLINED_FUNCTION_3_2();
LABEL_59:
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_16_11();
      v92 = sub_220FC3940();

      if ((v92 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_62;
    }

    if (v78 == 1)
    {
      goto LABEL_59;
    }

LABEL_62:
    OUTLINED_FUNCTION_13_15();
    v94 = *(v93 + 184);
    if (v94)
    {
      OUTLINED_FUNCTION_13_15();
      if ((*(v95 + 248) & 1) == 0)
      {
        OUTLINED_FUNCTION_13_15();
        if ((*(v96 + 216) & 1) == 0)
        {
          OUTLINED_FUNCTION_19_11();
          v97 = v164;
          a3 = vars0;
          v98 = vars8;
          v99 = v161;
          v11 = v162;
          v100 = v163;
          swift_unknownObjectRetain();
          v101 = [*&v147 computeCommandEncoder];
          if (v101)
          {
            v102 = v101;
            v103 = sub_220FC26C0();
            v149 = v100;
            v104 = v103;
            [v102 setLabel_];

            [v102 setComputePipelineState_];
            [v102 setTexture:v160 atIndex:0];
            [v102 setTexture:v145 atIndex:1];
            aBlock = v97;
            v154 = a3;
            v155 = v98;
            v152[0] = v99;
            v152[1] = v11;
            v152[2] = v149;
            [v102 dispatchThreadgroups:&aBlock threadsPerThreadgroup:v152];
            [v102 endEncoding];
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }
      }
    }

LABEL_68:
    LODWORD(Width) = *(a1 + 128);
    v6 = *(a1 + 112);
    v149 = *(a1 + 120);
    v169.origin.x = OUTLINED_FUNCTION_0_0();
    v105 = CGRectGetWidth(v169);
    if ((*&v105 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    v7 = -9.22337204e18;
    p_aBlock = v151;
    if (v105 <= -9.22337204e18)
    {
      goto LABEL_141;
    }

    if (v105 >= 9.22337204e18)
    {
      goto LABEL_142;
    }

    v107 = v105;
    if (v105 < 0)
    {
      goto LABEL_143;
    }

    if (!v107)
    {
LABEL_115:
      [*&v147 commit];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      [v143 endScope];
      goto LABEL_122;
    }

    v21 = 0;
    v108 = 0.0;
    if (*&Width != 0.0)
    {
      v108 = *&Width;
    }

    *&v148 = v108;
    v5 = 0x7FEFFFFFFFFFFFFFLL;
    v144 = v107;
    while (1)
    {
      v170.origin.x = OUTLINED_FUNCTION_0_0();
      CGRectGetHeight(v170);
      OUTLINED_FUNCTION_10_17();
      if (!(v110 ^ v114 | v120))
      {
        break;
      }

      if (v109 <= -9.22337204e18)
      {
        goto LABEL_134;
      }

      if (v109 >= 9.22337204e18)
      {
        goto LABEL_135;
      }

      a3 = v109;
      if (v109 < 0)
      {
        goto LABEL_136;
      }

      if (*&a3 != 0.0)
      {
        if ((v21 * v150) >> 64 != (v21 * v150) >> 63)
        {
          goto LABEL_137;
        }

        v111 = 0;
        while (1)
        {
          v171.origin.x = OUTLINED_FUNCTION_0_0();
          CGRectGetMinX(v171);
          OUTLINED_FUNCTION_10_17();
          if (!(v110 ^ v114 | v120))
          {
            break;
          }

          if (v112 <= -9.22337204e18)
          {
            goto LABEL_124;
          }

          if (v112 >= 9.22337204e18)
          {
            goto LABEL_125;
          }

          a1 = v21 + v112;
          if (__OFADD__(v21, v112))
          {
            goto LABEL_126;
          }

          v172.origin.x = OUTLINED_FUNCTION_0_0();
          CGRectGetMinY(v172);
          OUTLINED_FUNCTION_10_17();
          if (!(v110 ^ v114 | v120))
          {
            goto LABEL_127;
          }

          if (v113 <= -9.22337204e18)
          {
            goto LABEL_128;
          }

          if (v113 >= 9.22337204e18)
          {
            goto LABEL_129;
          }

          v11 = v111 + v113;
          if (__OFADD__(v111, v113))
          {
            goto LABEL_130;
          }

          v114 = __OFSUB__(a1, v149);
          if (a1 >= v149)
          {
            a1 -= v149;
            if (v114)
            {
              goto LABEL_132;
            }
          }

          if ((v111 * v150) >> 64 != (v111 * v150) >> 63)
          {
            goto LABEL_131;
          }

          if (*(*(p_aBlock[2] + 176) + 16))
          {
            sub_220FC3A40();
            p_aBlock = &aBlock;
            MEMORY[0x223D9CFA0](a1);
            MEMORY[0x223D9CFA0](v11);
            MEMORY[0x223D9CFA0](v6);
            sub_220FC3A70();
            sub_220FC3A90();
            OUTLINED_FUNCTION_7_19();
            OUTLINED_FUNCTION_3_34();
            if (v115)
            {
              while (1)
              {
                v118 = OUTLINED_FUNCTION_21_9();
                v120 = v119 == a1 && v116 == v11;
                v121 = v120 && v117 == v6;
                if (v121 && v118 == *&Width)
                {
                  break;
                }

                OUTLINED_FUNCTION_8_21();
                if ((v123 & 1) == 0)
                {
                  goto LABEL_113;
                }
              }

              OUTLINED_FUNCTION_7_19();
              sub_220F2ACD8();
              OUTLINED_FUNCTION_7_19();
              if (v124)
              {
                OUTLINED_FUNCTION_7_19();
                sub_220F2AE08(v125, v126, v131, v132, v133, v134, v135, v136, v127, v128, v129, v130);
                OUTLINED_FUNCTION_7_19();
                swift_unknownObjectRelease();
              }
            }
          }

LABEL_113:
          v111 = (v111 + 1);
          v5 = 0x7FEFFFFFFFFFFFFFLL;
          if (v111 == a3)
          {
            goto LABEL_114;
          }
        }

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
        break;
      }

LABEL_114:
      if (++v21 == v144)
      {
        goto LABEL_115;
      }
    }

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
LABEL_139:
    v43 = MEMORY[0x223D9CB30](v6, v5);
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  OUTLINED_FUNCTION_0_39();
LABEL_47:
  v79 = __swift_project_value_buffer(v11, qword_27CF9CBE0);
  v80 = v148;
  sub_220E335D0(v79, v148);
  v81 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v80, 1, v81) == 1)
  {
    v82 = sub_220E45DAC(v80);
    if (*&a3 == 0.0)
    {
      goto LABEL_121;
    }

    goto LABEL_57;
  }

  v87 = sub_220FC1780();
  v88 = sub_220FC2E30();
  if (os_log_type_enabled(v87, v88))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    OUTLINED_FUNCTION_58_0(&dword_220E15000, v89, v90, "[wind particle] could not create command buffer");
    OUTLINED_FUNCTION_25_12();
  }

  OUTLINED_FUNCTION_12();
  v82 = (*(v91 + 8))(v80, v81);
  if (*&a3 != 0.0)
  {
LABEL_57:
    (a3)(v82);
  }

LABEL_121:
  [v6 endScope];
LABEL_122:
  swift_unknownObjectRelease();
}

id sub_220F2A084(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = *(v3 + 168);
  v9 = &unk_220FC8000;
  if ((v8 - 1) > 1)
  {
    result = objc_opt_self();
    if (a2 <= -9.22337204e18)
    {
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (a2 >= 9.22337204e18)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_77;
    }

    if (a3 <= -9.22337204e18)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (a3 >= 9.22337204e18)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v12 = [result texture2DDescriptorWithPixelFormat:*(v3 + 160) width:a2 height:a3 mipmapped:0];
    [v12 setUsage_];
    v48 = *(v4 + 128);
    v13 = [v48 newTextureWithDescriptor_];

    *(v4 + 120) = v13;
    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v48 = *(v3 + 128);
  if ([v48 supportsFamily_])
  {
    v10 = *(v3 + 160);
  }

  else
  {
    v10 = 70;
  }

  result = objc_opt_self();
  if (a2 <= -9.22337204e18)
  {
    goto LABEL_74;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_78;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v47 = a1;
  v14 = result;
  v15 = [result &selRef:v10 setDepthStencilState:{a2, a3, 0} + 3];
  [v15 setStorageMode_];
  [v15 setTextureType_];
  if (v8 == 2)
  {
    v16 = sub_220FC3940();

    if (v16)
    {
      v17 = 5;
    }

    else
    {
      v17 = 3;
    }
  }

  else
  {

    v17 = 5;
  }

  [v15 setUsage_];
  *(v3 + 120) = [v48 newTextureWithDescriptor_];
  swift_unknownObjectRelease();
  v18 = *(v3 + 120);
  if (v18)
  {
    swift_unknownObjectRetain();
    v19 = sub_220FC26C0();
    [v18 setLabel_];
    swift_unknownObjectRelease();
  }

  v20 = [v14 texture2DDescriptorWithPixelFormat:*(v4 + 160) width:a2 height:a3 mipmapped:0];
  [v20 setTextureType_];
  [v20 setSampleCount_];
  if (v8 == 2)
  {
    v21 = sub_220FC3940();

    if (v21)
    {
      v22 = 4;
    }

    else
    {
      v22 = 5;
    }

    [v20 setUsage_];
    v23 = sub_220FC3940();

    if ((v23 & 1) == 0)
    {
      v24 = 2;
      goto LABEL_33;
    }
  }

  else
  {

    [v20 setUsage_];
  }

  v24 = 3;
LABEL_33:
  [v20 setStorageMode_];
  *(v4 + 176) = [v48 &off_278456310 + 7];
  swift_unknownObjectRelease();
  v25 = *(v4 + 176);
  if (v25)
  {
    swift_unknownObjectRetain();
    v26 = sub_220FC26C0();
    [v25 setLabel_];
    swift_unknownObjectRelease();
  }

  if (!v8)
  {
    v9 = &unk_220FC8000;
    a1 = v47;
    goto LABEL_39;
  }

  v9 = &unk_220FC8000;
  a1 = v47;
  if (v8 == 1)
  {
LABEL_39:
    v27 = sub_220FC3940();

    if ((v27 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_42;
  }

LABEL_42:
  if ((*(v4 + 216) & 1) == 0)
  {
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v28 = v9[419];
    if (a2 <= v28)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (a2 >= 9.22337204e18)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v29 = *(v4 + 192);
    v30 = a2 + v29;
    if (__OFADD__(a2, v29))
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v31 = __OFSUB__(v30, 1);
    v32 = v30 - 1;
    if (v31)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    if (!v29)
    {
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v32 == 0x8000000000000000 && v29 == -1)
    {
      goto LABEL_95;
    }

    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_89;
    }

    if (a3 <= v28)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (a3 >= 9.22337204e18)
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v34 = *(v4 + 200);
    v35 = a3 + v34;
    if (__OFADD__(a3, v34))
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v31 = __OFSUB__(v35, 1);
    v36 = v35 - 1;
    if (v31)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (!v34)
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      return result;
    }

    if (v36 == 0x8000000000000000 && v34 == -1)
    {
      goto LABEL_96;
    }

    result = MTLSizeMake(v32 / v29, v36 / v34, &v49);
    v38 = v50;
    *(v4 + 224) = v49;
    *(v4 + 240) = v38;
    *(v4 + 248) = 0;
  }

LABEL_64:
  v39 = *(v4 + 296);
  *(v39 + 40) = a2;
  *(v39 + 48) = a3;
  *(v39 + 56) = 0;
  v40 = 48 * a1;
  if ((a1 * 48) >> 64 != (48 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_73;
  }

  swift_beginAccess();
  *(v4 + 272) = MEMORY[0x277D84F90];

  v41 = 0;
  do
  {
    v42 = v41;
    result = [v48 newBufferWithLength:v40 options:0];
    if (result)
    {
      v43 = result;
      sub_220FC35C0();

      v44 = sub_220FC38F0();
      MEMORY[0x223D9BD60](v44);

      v45 = sub_220FC26C0();

      [v43 setLabel_];

      swift_beginAccess();
      v46 = swift_unknownObjectRetain();
      MEMORY[0x223D9BEA0](v46);
      if (*((*(v4 + 272) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 272) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_220FC29C0();
      }

      sub_220FC29F0();
      swift_endAccess();
      result = swift_unknownObjectRelease();
    }

    v41 = 1;
  }

  while ((v42 & 1) == 0);
  return result;
}

void sub_220F2A8D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 288);

    sub_220FC30B0();
  }
}

uint64_t sub_220F2A93C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_220F2A99C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v27 - v15;
  sub_220F2B214(a3);
  v18 = v17;
  v19 = [a1 renderCommandEncoderWithDescriptor_];
  if (!v19)
  {
    if (qword_27CF9C000 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  v20 = v19;
  [v19 setRenderPipelineState_];
  [v20 setVertexBuffer:a2 offset:0 atIndex:1];
  if (a5 <= -1.0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a5 >= 4294967300.0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  if (a6 > -1.0)
  {
    if (a6 < 4294967300.0)
    {
      LODWORD(v21) = a5;
      HIDWORD(v21) = a6;
      v27[0] = v21;
      [v20 setVertexBytes:v27 length:8 atIndex:2];
      [v20 drawPrimitives:4 vertexStart:0 vertexCount:4 instanceCount:a4];
      [v20 endEncoding];
      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_19;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  swift_once();
LABEL_10:
  v22 = __swift_project_value_buffer(v13, qword_27CF9CBE0);
  sub_220E335D0(v22, v16);
  v23 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v16, 1, v23) == 1)
  {

    sub_220E45DAC(v16);
  }

  else
  {
    v24 = sub_220FC1780();
    v25 = sub_220FC2E30();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_220E15000, v24, v25, "[wind particle] could not create render command encoder", v26, 2u);
      MEMORY[0x223D9DDF0](v26, -1, -1);
    }

    (*(*(v23 - 8) + 8))(v16, v23);
  }
}

uint64_t sub_220F2ACD8()
{
  v1 = v0;
  OUTLINED_FUNCTION_14_13();
  sub_220FC1130();
  OUTLINED_FUNCTION_26_10();
  v2 = OUTLINED_FUNCTION_6_22();
  v7 = sub_220F62AB8(v3, v4, v5, v6, v2);
  swift_endAccess();
  if (v7)
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_26_10();
    v8 = OUTLINED_FUNCTION_6_22();
    v13 = sub_220F62AB8(v9, v10, v11, v12, v8);
    swift_endAccess();
  }

  else
  {

    sub_220F40E94();

    OUTLINED_FUNCTION_12_15();
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v1 + 48);
    OUTLINED_FUNCTION_24_11();
    *(v1 + 48) = v19;
    swift_endAccess();
    v14 = OUTLINED_FUNCTION_6_22();
    v13 = sub_220F62AB8(v15, v16, v17, v19, v14);
  }

  sub_220FC1140();
  return v13;
}

uint64_t sub_220F2AE08(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v21 = sub_220F2B120();
  v22 = *(v12 + 32);

  v23.n128_f64[0] = a3;
  v24.n128_f64[0] = a4;
  v25.n128_f32[0] = v22;
  sub_220E4586C(a1, a2, v21, a12, v23, v24, a5, a6, v25, a8);

  sub_220F2B074();

  return swift_unknownObjectRelease();
}

uint64_t sub_220F2AF28()
{
  sub_220FC1130();
  OUTLINED_FUNCTION_9_18();
  v0 = OUTLINED_FUNCTION_4_35();
  if (sub_220F62AB8(v1, v2, v3, v4, v0))
  {
    swift_endAccess();
    OUTLINED_FUNCTION_12_15();
    swift_beginAccess();
    OUTLINED_FUNCTION_4_35();
    sub_220E96CB8(v5, v6, v7, v8, v9, v10, v11, v12, v28, v29);
    swift_endAccess();
    swift_unknownObjectRelease();

    sub_220F40D8C();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
  }

  OUTLINED_FUNCTION_9_18();
  v13 = OUTLINED_FUNCTION_4_35();
  v18 = sub_220F62AB8(v14, v15, v16, v17, v13);
  swift_endAccess();
  if (v18)
  {
    OUTLINED_FUNCTION_12_15();
    swift_beginAccess();
    OUTLINED_FUNCTION_4_35();
    sub_220E96CB8(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return sub_220FC1140();
}

uint64_t sub_220F2B074()
{
  OUTLINED_FUNCTION_14_13();
  sub_220FC1130();
  OUTLINED_FUNCTION_12_15();
  swift_beginAccess();
  swift_unknownObjectRetain();
  swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_24_11();
  *(v0 + 56) = v2;
  swift_endAccess();
  return sub_220FC1140();
}

uint64_t sub_220F2B120()
{
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_20_12();
  v5 = sub_220F62AB8(v1, v2, v3, v4, v0);
  swift_endAccess();
  sub_220FC1140();
  return v5;
}

BOOL sub_220F2B190()
{
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_20_12();
  v5 = sub_220F62AB8(v1, v2, v3, v4, v0);
  swift_endAccess();
  if (v5)
  {
    swift_unknownObjectRelease();
  }

  sub_220FC1140();
  return v5 != 0;
}

void sub_220F2B214(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
  v4 = *(v1 + 168);
  v5 = [v3 colorAttachments];
  v6 = [v5 objectAtIndexedSubscript_];

  if ((v4 - 1) > 1)
  {
    if (v6)
    {
      [v6 setTexture_];

      v13 = [v3 colorAttachments];
      v14 = [v13 objectAtIndexedSubscript_];

      if (v14)
      {
        [v14 setLoadAction_];

        v15 = [v3 colorAttachments];
        v16 = [v15 objectAtIndexedSubscript_];

        if (v16)
        {
          [v16 setClearColor_];

          v17 = [v3 colorAttachments];
          v18 = [v17 objectAtIndexedSubscript_];

          if (v18)
          {
            [v18 setStoreAction_];

            return;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (!v6)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v6 setLoadAction_];

  v7 = [v3 colorAttachments];
  v8 = [v7 objectAtIndexedSubscript_];

  if (!v8)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v8 setClearColor_];

  v9 = [v3 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript_];

  if (!v10)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v4 == 2)
  {
    v11 = sub_220FC3940();

    if (v11)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {

    v12 = 2;
  }

  [v10 setStoreAction_];

  v19 = [v3 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  if (!v20)
  {
    goto LABEL_34;
  }

  v21 = *(v1 + 176);
  swift_unknownObjectRetain();
  [v20 setTexture_];
  swift_unknownObjectRelease();

  v22 = [v3 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  if (!v23)
  {
LABEL_35:
    __break(1u);
    return;
  }

  if (v4 == 2)
  {
    v24 = sub_220FC3940();

    if ((v24 & 1) == 0)
    {
      v25 = 0;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v25 = *(v1 + 120);
  swift_unknownObjectRetain();
LABEL_22:
  [v23 setResolveTexture_];

  swift_unknownObjectRelease();
  if (v4 == 1)
  {
  }

  else
  {
    v26 = sub_220FC3940();

    if ((v26 & 1) == 0)
    {
      return;
    }
  }

  [v3 setTileWidth_];
  [v3 setTileHeight_];
  [v3 setImageblockSampleLength_];
}

void sub_220F2B6E8()
{
  xmmword_27CFAF610 = 0uLL;
  qword_27CFAF5F0 = 0;
  *algn_27CFAF5F8 = 0;
  dword_27CFAF600 = 0;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_11_15()
{

  return sub_220FC1130();
}

uint64_t OUTLINED_FUNCTION_22_11()
{

  return sub_220FC2600();
}

unint64_t OUTLINED_FUNCTION_24_11()
{

  return sub_220E97818();
}

uint64_t OUTLINED_FUNCTION_26_10()
{

  return swift_beginAccess();
}

unint64_t sub_220F2B804(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
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
    result = sub_220FC2800();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_220FC28D0();

      return v7;
    }
  }

  __break(1u);
  return result;
}

int64_t sub_220F2B8D8(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_220F439F8(0, result, *(a2 + 16), a2);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_220F30E20(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220F2B970(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_220FC34C0();
    if (v4)
    {
      v5 = v4;
      v2 = sub_220F2F4F0(v4, 0);
      sub_220F38418((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

void *sub_220F2BA04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_220F2F420(*(a1 + 16), 0);
  v4 = sub_220F30E8C(&v6, v3 + 4, v2, a1);
  sub_220EA9CB8();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_220F2BA94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = *a1;
  v5 = *(*a1 + 16);
  v70 = a1;
  if (!v5)
  {
    v78 = MEMORY[0x277D84F90];
LABEL_20:
    v61 = *(a1 + 9);
    v62 = *(a1 + 7);
    v55 = *(a1 + 88);
    v75 = a1[12];
    v68 = a1[13];
    v65 = a1[14];
    v50 = *(a1 + 120);
    v23 = a1[16];
    v60 = *(a1 + 10);
    v44 = *(a1 + 9);
    v24 = *(a1 + 176);
    v73 = a1[23];
    v67 = a1[24];
    v25 = *(a1 + 208);
    v26 = a1[27];
    v27 = a1[28];
    v63 = a1[29];
    v64 = a1[25];
    v83 = a1[30];
    v77 = a1[31];
    v69 = a1[32];
    v66 = a1[33];
    v46 = a1[34];
    v28 = a1[35];
    v53 = *(a1 + 353);
    if (a1[6])
    {
      v80 = a1[28];
      v29 = a1[27];
      v30 = a1[35];
      v31 = *(a1 + 208);
      v32 = *(a1 + 176);
      v57 = a1[2];
      v58 = a1[1];
      v33 = a1[5];

      OUTLINED_FUNCTION_9_19();
      v34 = sub_220FC25E0();
      v59 = v33;
      if (!v33)
      {

        v59 = sub_220F2BA04(v35);
      }

      v24 = v32;
      v25 = v31;
      v28 = v30;
      v26 = v29;
      v27 = v80;
    }

    else
    {
      v57 = 0;
      v58 = 0;
      v34 = 0;
      v59 = 0;
    }

    v81 = 0u;
    if (v23)
    {
      OUTLINED_FUNCTION_9_19();
      LOBYTE(v87) = v55 & 1;
      v49 = v55 & 1;
      v51 = v50 & 1;
      v52 = sub_220FC25E0();
    }

    else
    {
      v75 = 0;
      v68 = 0;
      v65 = 0;
      v51 = 0;
      v52 = 0;
      v49 = 0;
      v61 = 0uLL;
      v62 = 0uLL;
    }

    v56 = v34;
    if (v27)
    {
      OUTLINED_FUNCTION_9_19();
      v48 = sub_220FC25E0();
      LOBYTE(v87) = v24 & 1;
      v36 = v24 & 1;
      v37 = v25 & 1;
      if (v26)
      {
        v38 = v26;
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
      }

      v81 = v44;
      if (v28)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v73 = 0;
      v67 = 0;
      v63 = 0;
      v64 = 0;
      v48 = 0;
      v38 = 0;
      v83 = 0;
      v37 = 0;
      v36 = 0;
      v60 = 0u;
      if (v28)
      {
LABEL_33:
        sub_220F30094();

        OUTLINED_FUNCTION_9_19();
        v39 = sub_220FC25F0();
        v40 = sub_220F2DAE8(v39);

        v41 = v46 & 1;
LABEL_36:
        if (v53)
        {
          v42 = 0;
          v43 = 0;
          v71 = 0u;
          v54 = 0u;
          v45 = 0u;
          v47 = 0u;
        }

        else
        {
          sub_220F2C230((v70 + 36), v84);
          v54 = v84[1];
          v71 = v84[0];
          v45 = v84[3];
          v47 = v84[2];
          v42 = v85;
          v43 = v86;
        }

        result = sub_220F2D4B0(v78);
        *a2 = result;
        *(a2 + 8) = v58;
        *(a2 + 16) = v57;
        *(a2 + 24) = v56;
        *(a2 + 32) = v59;
        *(a2 + 56) = v61;
        *(a2 + 40) = v62;
        *(a2 + 72) = v49;
        *(a2 + 80) = v75;
        *(a2 + 88) = v68;
        *(a2 + 96) = v65;
        *(a2 + 104) = v51;
        *(a2 + 112) = v52;
        *(a2 + 136) = v60;
        *(a2 + 120) = v81;
        *(a2 + 152) = v36;
        *(a2 + 160) = v73;
        *(a2 + 168) = v67;
        *(a2 + 176) = v64;
        *(a2 + 184) = v37;
        *(a2 + 192) = v48;
        *(a2 + 200) = v38;
        *(a2 + 208) = v63;
        *(a2 + 216) = v83;
        *(a2 + 224) = v77;
        *(a2 + 232) = v69;
        *(a2 + 240) = v66;
        *(a2 + 248) = v41;
        *(a2 + 256) = v40;
        *(a2 + 264) = v71;
        *(a2 + 280) = v54;
        *(a2 + 296) = v47;
        *(a2 + 312) = v45;
        *(a2 + 328) = v42;
        *(a2 + 336) = v43;
        return result;
      }
    }

    v77 = 0;
    v69 = 0;
    v66 = 0;
    v41 = 0;
    v40 = 0;
    goto LABEL_36;
  }

  v87 = MEMORY[0x277D84F90];
  sub_220F0B238(0, v5, 0);
  v6 = 0;
  v74 = v5;
  v76 = v4 + 32;
  v7 = v87;
  while (1)
  {
    v8 = (v76 + 40 * v6);
    v9 = v8[1];
    v10 = v8[3];
    v82 = *v8;
    v79 = *(v8 + 32);
    if (v79 != 1)
    {
      break;
    }

    v12 = sub_220F2EC0C(v11);
    if (v3)
    {
    }

    v13 = v12;

LABEL_14:
    v87 = v7;
    v21 = *(v7 + 16);
    v20 = *(v7 + 24);

    if (v21 >= v20 >> 1)
    {
      sub_220F0B238((v20 > 1), v21 + 1, 1);
      v7 = v87;
    }

    ++v6;
    *(v7 + 16) = v21 + 1;
    v22 = v7 + 48 * v21;
    *(v22 + 32) = v82;
    *(v22 + 40) = v9;
    *(v22 + 48) = v82;
    *(v22 + 56) = v9;
    *(v22 + 64) = v13;
    *(v22 + 72) = v79 ^ 1;
    if (v6 == v74)
    {
      v78 = v7;
      a1 = v70;
      goto LABEL_20;
    }
  }

  v14 = *(v10 + 16);
  if (!v14)
  {

LABEL_13:
    v18 = objc_allocWithZone(MEMORY[0x277CD4ED8]);
    sub_220E1966C(0, &qword_2812C5AE0);
    v19 = sub_220FC2960();

    v13 = [v18 initWithPolygons_];

    goto LABEL_14;
  }

  result = sub_220FC3670();
  v16 = 0;
  while (v16 < *(v10 + 16))
  {

    sub_220F2EC0C(v17);
    if (v3)
    {
    }

    ++v16;

    sub_220FC3640();
    sub_220FC3680();
    OUTLINED_FUNCTION_45_4();
    sub_220FC3690();
    result = sub_220FC3650();
    if (v14 == v16)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220F2C230@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v220 = a1;
  v221 = a2;
  v267 = sub_220FC0040();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_1();
  v266 = v6;
  v7 = sub_220FC03E0();
  MEMORY[0x28223BE20](v7 - 8, v8);
  OUTLINED_FUNCTION_1();
  v265 = v9;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E568);
  OUTLINED_FUNCTION_6();
  v11 = v10;
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_3_3();
  v263 = v14;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v15, v16);
  v262 = &v218[-v17];
  v261 = sub_220FC3910();
  OUTLINED_FUNCTION_6();
  v19 = v18;
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_1();
  v260 = v22;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048);
  OUTLINED_FUNCTION_6();
  v24 = v23;
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_3_3();
  v235 = v27;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v28, v29);
  OUTLINED_FUNCTION_8_22();
  v234 = v30;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v31, v32);
  OUTLINED_FUNCTION_8_22();
  v250 = v33;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v218[-v36];
  MEMORY[0x28223BE20](v38, v39);
  OUTLINED_FUNCTION_8_22();
  v251 = v40;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v218[-v43];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC28);
  OUTLINED_FUNCTION_6();
  v231 = v46;
  v232 = v45;
  MEMORY[0x28223BE20](v45, v47);
  OUTLINED_FUNCTION_3_3();
  v230 = v48;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v218[-v51];
  v241 = sub_220FC0EA0();
  OUTLINED_FUNCTION_6();
  v54 = v53;
  MEMORY[0x28223BE20](v55, v56);
  OUTLINED_FUNCTION_3_3();
  v236 = v57;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v58, v59);
  OUTLINED_FUNCTION_8_22();
  v239 = v60;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v61, v62);
  OUTLINED_FUNCTION_8_22();
  v233 = v63;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v64, v65);
  v243 = &v218[-v66];
  v67 = sub_220FC0E90();
  v245 = *(v67 + 16);
  if (!v245)
  {

    v208 = MEMORY[0x277D84F90];
LABEL_64:
    sub_220F06C58();
    v209 = sub_220FC2600();
    v210 = sub_220F2D564(v208);
    result = sub_220F2EB88(v210, v209);
    v213 = v220;
    v212 = v221;
    v215 = *(v220 + 56);
    v216 = *(v220 + 64);
    LOBYTE(__dst[0]) = *(v220 + 32);
    v214 = __dst[0];
    LOBYTE(v279) = v216;
    v217 = *(v220 + 16);
    *v221 = *v220;
    v212[1] = v217;
    *(v212 + 32) = v214;
    *(v212 + 33) = v282[0];
    *(v212 + 9) = *(v282 + 3);
    *(v212 + 40) = *(v213 + 40);
    *(v212 + 7) = v215;
    *(v212 + 64) = v216;
    *(v212 + 65) = v280;
    *(v212 + 17) = *(&v280 + 3);
    *(v212 + 9) = result;
    return result;
  }

  v249 = v37;
  v68 = 0;
  v244 = v67 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
  v247 = v54 + 16;
  v238 = (v54 + 88);
  v246 = (v54 + 8);
  v259 = (v19 + 104);
  v258 = v19 + 8;
  v229 = *MEMORY[0x277D7AA98];
  v256 = (v11 + 8);
  v257 = v3 + 8;
  v271 = (v24 + 8);
  v225 = (v54 + 32);
  v223 = *MEMORY[0x277D7AAB8];
  p_vtable = _TtC11WeatherMaps28WeatherMapCameraFocusFactory.vtable;
  v222 = *MEMORY[0x277D7AAB0];
  v240 = *MEMORY[0x277D7AAC8];
  v219 = *MEMORY[0x277D7AAC0];
  v255 = *MEMORY[0x277D84670];
  v242 = MEMORY[0x277D84F90];
  v70 = v241;
  v71 = v243;
  v72 = v67;
  v252 = v44;
  v227 = v54;
  v228 = v52;
  v226 = v67;
  while (v68 < *(v72 + 16))
  {
    v73 = *(v54 + 72);
    v248 = v68;
    v74 = *(v54 + 16);
    v74(v71, v244 + v73 * v68, v70);
    if (p_vtable[502] != -1)
    {
      swift_once();
    }

    v75 = qword_2812CE5D8;
    if (qword_2812C9FA0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v70, qword_2812CE5C0);
    if (!*(v75 + 16) || (v76 = sub_220F1914C(), (v77 & 1) == 0))
    {
      v86 = OUTLINED_FUNCTION_5_26();
      v87(v86, v70);
      goto LABEL_61;
    }

    memcpy(__dst, (*(v75 + 56) + 96 * v76), 0x60uLL);
    v78 = objc_opt_self();
    sub_220E31B58(__dst, v282);
    v79 = [v78 metersPerSecond];
    v80 = v71;
    v81 = v79;
    v82 = v233;
    v74(v233, v80, v70);
    v83 = *v238;
    v84 = (*v238)(v82, v70);
    if (v84 == v229)
    {
      v85 = [v78 milesPerHour];
LABEL_21:
      v88 = v85;
      goto LABEL_22;
    }

    if (v84 == v223)
    {
      v85 = [v78 kilometersPerHour];
      goto LABEL_21;
    }

    if (v84 == v222)
    {
      v85 = [v78 metersPerSecond];
      goto LABEL_21;
    }

    if (v84 != v240)
    {
      if (v84 != v219)
      {
        goto LABEL_67;
      }

      v85 = [v78 knots];
      goto LABEL_21;
    }

    sub_220E1966C(0, &qword_2812C5D00);
    v88 = sub_220FC2D80();
LABEL_22:
    v273 = v88;
    v89 = v243;
    v74(v239, v243, v70);
    v90 = v236;
    v74(v236, v89, v70);
    v237 = v83(v90, v70);
    if (v237 != v240)
    {
      (*v246)(v236, v70);
    }

    memcpy(v282, __dst, sizeof(v282));
    v283 = v81;
    sub_220E1966C(0, &qword_2812C5B20);
    sub_220EE5BFC(v282, &v280, &qword_27CF9EFC0);
    v91 = v81;
    sub_220FC3250();
    v272 = v91;

    v92 = __dst[7];
    v93 = *(__dst[7] + 16);
    v94 = v268;
    if (v93)
    {
      v270 = sub_220E1966C(0, &qword_2812C5D00);
      v95 = v92 + 64;
      v278 = MEMORY[0x277D84F90];
      v96 = v251;
      do
      {
        v98 = *(v95 - 32);
        v97 = *(v95 - 24);
        v99 = *(v95 - 8);
        v275 = *(v95 - 16);
        v100 = v272;
        v277 = v99;

        sub_220FBFC70();
        sub_220FBFCD0();
        v101 = sub_220FBFC60();
        LOBYTE(v99) = sub_220FC2D70();

        v276 = v93;
        if (v99)
        {

          v274 = v97;
        }

        else
        {
          sub_220FBFC80();
          v102 = OUTLINED_FUNCTION_5_26();
          v103 = v261;
          v104(v102, v255, v261);
          sub_220FC2BC0();
          v106 = v105;
          v107 = OUTLINED_FUNCTION_5_26();
          v108(v107, v103);
          v279 = v106;
          sub_220FC0380();
          sub_220ED192C();
          v109 = v263;
          sub_220FC0000();
          v110 = v266;
          sub_220FC0030();
          v111 = v262;
          v112 = v264;
          MEMORY[0x223D99560](v110, v264);
          v113 = OUTLINED_FUNCTION_5_26();
          v114(v113, v267);
          v115 = *v256;
          v116 = v109;
          v96 = v251;
          (*v256)(v116, v112);
          sub_220ED1980();
          sub_220FC25A0();
          v117 = v112;
          v94 = v268;
          v115(v111, v117);
          v98 = v280;
          v274 = v281;
        }

        sub_220FBFC80();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_6_1();
          sub_220F3799C();
          v278 = v128;
        }

        v119 = *(v278 + 16);
        v118 = *(v278 + 24);
        if (v119 >= v118 >> 1)
        {
          OUTLINED_FUNCTION_3_35(v118);
          sub_220F3799C();
          v278 = v129;
        }

        v120 = *v271;
        (*v271)(v96, v94);
        v121 = OUTLINED_FUNCTION_45_4();
        (v120)(v121);
        v122 = v278;
        *(v278 + 16) = v119 + 1;
        v123 = (v122 + 56 * v119);
        v124 = v274;
        v125 = v275;
        v123[4] = v98;
        v123[5] = v124;
        v127 = v276;
        v126 = v277;
        v123[6] = v125;
        v123[7] = v126;
        OUTLINED_FUNCTION_10_18(v123);
        v95 += 56;
        v93 = v127 - 1;
      }

      while (v93);
    }

    else
    {
      v278 = MEMORY[0x277D84F90];
    }

    v130 = __dst[8];
    if (__dst[8])
    {
      v131 = *(__dst[8] + 16);
      if (v131)
      {

        v253 = sub_220E1966C(0, &qword_2812C5D00);
        v224 = v130;
        v132 = v130 + 64;
        v133 = MEMORY[0x277D84F90];
        v134 = v249;
        v135 = v250;
        do
        {
          v136 = *(v132 - 24);
          v276 = *(v132 - 32);
          v137 = *(v132 - 8);
          v274 = *(v132 - 16);
          v138 = v272;

          v270 = v136;

          sub_220FBFC70();
          v139 = v134;
          sub_220FBFCD0();
          v140 = sub_220FBFC60();
          v141 = sub_220FC2D70();

          v275 = v131;
          v277 = v137;
          if (v141)
          {

            v134 = v139;
          }

          else
          {
            sub_220FBFC80();
            v142 = *v259;
            v254 = v133;
            v143 = v261;
            v142(v260, v255, v261);
            sub_220FC2BC0();
            v145 = v144;
            v146 = OUTLINED_FUNCTION_5_26();
            v147(v146, v143);
            v279 = v145;
            sub_220FC0380();
            v276 = sub_220ED192C();
            v148 = v263;
            sub_220FC0000();
            v149 = v266;
            sub_220FC0030();
            v150 = v262;
            v151 = v264;
            MEMORY[0x223D99560](v149, v264);
            v152 = OUTLINED_FUNCTION_5_26();
            v153(v152, v267);
            v154 = *v256;
            v135 = v250;
            (*v256)(v148, v151);
            sub_220ED1980();
            sub_220FC25A0();
            v155 = v150;
            v134 = v249;
            v154(v155, v151);
            v133 = v254;
            v276 = v280;
            v269 = v281;
          }

          sub_220FBFC80();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_1();
            sub_220F3799C();
            v133 = v165;
          }

          v157 = *(v133 + 16);
          v156 = *(v133 + 24);
          if (v157 >= v156 >> 1)
          {
            OUTLINED_FUNCTION_3_35(v156);
            sub_220F3799C();
            v158 = v166;
          }

          else
          {
            v158 = v133;
          }

          v159 = *v271;
          v160 = v268;
          (*v271)(v135, v268);
          v159(v134, v160);
          v133 = v158;
          *(v158 + 16) = v157 + 1;
          v161 = (v158 + 56 * v157);
          v162 = v275;
          v163 = v269;
          v161[4] = v276;
          v161[5] = v163;
          v164 = v277;
          v161[6] = v274;
          v161[7] = v164;
          OUTLINED_FUNCTION_10_18(v161);
          v132 += 56;
          v131 = v162 - 1;
        }

        while (v131);

        v94 = v160;
      }

      else
      {
        v133 = MEMORY[0x277D84F90];
      }

      v254 = v133;
    }

    else
    {
      v254 = 0;
    }

    sub_220E1966C(0, &qword_2812C5D00);
    v167 = v272;
    sub_220FBFC70();
    v168 = v234;
    sub_220FBFCD0();
    v169 = *v271;
    v170 = OUTLINED_FUNCTION_45_4();
    v169(v170);
    sub_220FBFC80();
    v172 = v171;
    (v169)(v168, v94);
    v277 = v167;
    sub_220FBFC70();
    sub_220FBFCD0();
    v173 = OUTLINED_FUNCTION_45_4();
    v169(v173);
    sub_220FBFC80();
    v175 = v174;
    (v169)(v168, v94);
    v176 = __dst[5];
    if (__dst[6])
    {
      v280 = __dst[5];
      v281 = __dst[6];

      MEMORY[0x223D9BD60](10272, 0xE200000000000000);
      v177 = v239;
      v178 = sub_220FC0E80();
      MEMORY[0x223D9BD60](v178);

      MEMORY[0x223D9BD60](41, 0xE100000000000000);
      v176 = v280;
      v179 = v281;
      v180 = v241;
    }

    else
    {
      v179 = 0;
      v180 = v241;
      v177 = v239;
    }

    v181 = v273;
    v182 = [v273 symbol];
    v183 = sub_220FC2700();
    v185 = v184;
    (*v246)(v177, v180);
    v186 = v277;

    sub_220E31784(__dst);
    sub_220E31784(__dst);
    if (v172 > v175)
    {
      goto LABEL_66;
    }

    v187 = v237 != v240;
    v188 = __dst[9];
    v189 = v180;
    v190 = v179;
    v191 = __dst[4];
    v192 = v230;
    v193 = v230 + *(v232 + 48);
    (*v225)(v230, v243, v189);
    *v193 = v183;
    *(v193 + 8) = v185;
    *(v193 + 16) = 0;
    *(v193 + 24) = 0;
    *(v193 + 32) = v191;
    *(v193 + 33) = v187;
    *(v193 + 34) = v279;
    *(v193 + 38) = WORD2(v279);
    *(v193 + 40) = v176;
    *(v193 + 48) = v190;
    v194 = v254;
    *(v193 + 56) = v278;
    *(v193 + 64) = v194;
    *(v193 + 72) = v188;
    *(v193 + 76) = *(&v280 + 3);
    *(v193 + 73) = v280;
    *(v193 + 80) = v172;
    *(v193 + 88) = v175;
    v195 = v228;
    sub_220EEECFC(v192, v228, &qword_27CF9EC28);
    v196 = v242;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v200 = OUTLINED_FUNCTION_6_1();
      sub_220F37A60(v200, v201, v202, v196);
      v196 = v203;
    }

    v72 = v226;
    v54 = v227;
    p_vtable = (_TtC11WeatherMaps28WeatherMapCameraFocusFactory + 24);
    v198 = *(v196 + 16);
    v197 = *(v196 + 24);
    v242 = v196;
    v71 = v243;
    v70 = v241;
    if (v198 >= v197 >> 1)
    {
      v204 = OUTLINED_FUNCTION_3_35(v197);
      sub_220F37A60(v204, v205, v206, v242);
      v242 = v207;
    }

    v199 = v242;
    *(v242 + 16) = v198 + 1;
    sub_220EEECFC(v195, v199 + ((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v198, &qword_27CF9EC28);
LABEL_61:
    v68 = v248 + 1;
    if (v248 + 1 == v245)
    {

      v208 = v242;
      goto LABEL_64;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = sub_220FC3930();
  __break(1u);
  return result;
}

uint64_t sub_220F2D4B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EFE0);
    v1 = sub_220FC3780();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_220F30118(v2, 1, &v4);

  return v4;
}

uint64_t sub_220F2D564(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EFD8);
    v2 = sub_220FC3780();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_220F307F0(a1, 1, &v4);
  return v4;
}

uint64_t sub_220F2D60C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v6 = result;
  v7 = a4;
  v8 = *(result + 56);
  v9 = *(result + 64);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    goto LABEL_24;
  }

  v31 = result;
  v32 = *(result + 56);
  v37 = MEMORY[0x277D84F90];
  result = sub_220F0B140(0, v10, 0);
  v11 = v37;
  v13 = (v9 + 64);
  do
  {
    v15 = *(v13 - 4);
    v14 = *(v13 - 3);
    v16 = *(v13 - 2);
    v17 = *(v13 - 1);
    v18 = *v13;
    if (!v14)
    {

      goto LABEL_19;
    }

    MEMORY[0x28223BE20](result, v12);
    if ((v14 & 0x1000000000000000) == 0)
    {
      if ((v14 & 0x2000000000000000) != 0)
      {
        *&v38 = v15;
        *(&v38 + 1) = v14 & 0xFFFFFFFFFFFFFFLL;
        swift_bridgeObjectRetain_n();

        if (v15 < 0x21u && ((0x100003E01uLL >> v15) & 1) != 0)
        {
          goto LABEL_15;
        }

LABEL_13:
        v20 = _swift_stdlib_strtod_clocale();
        if (v20)
        {
          v21 = *v20 == 0;
LABEL_16:
          v36 = v21;
          goto LABEL_17;
        }

LABEL_15:
        v21 = 0;
        goto LABEL_16;
      }

      if ((v15 & 0x1000000000000000) != 0)
      {
        v19 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        swift_bridgeObjectRetain_n();

        if (v19 < 0x21 && ((0x100003E01uLL >> v19) & 1) != 0)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    swift_bridgeObjectRetain_n();

    sub_220FC35B0();
LABEL_17:

    if (v36)
    {
      *&v38 = 0;
      sub_220ED192C();
      v15 = sub_220FC2590();
      v23 = v22;

      v14 = v23;
    }

LABEL_19:
    v37 = v11;
    v25 = *(v11 + 16);
    v24 = *(v11 + 24);
    if (v25 >= v24 >> 1)
    {
      result = sub_220F0B140((v24 > 1), v25 + 1, 1);
      v11 = v37;
    }

    *(v11 + 16) = v25 + 1;
    v26 = v11 + 56 * v25;
    *(v26 + 32) = v15;
    *(v26 + 40) = v14;
    *(v26 + 48) = v16;
    *(v26 + 56) = v17;
    *(v26 + 64) = v18;
    *(v26 + 72) = 0;
    *(v26 + 80) = 1;
    v13 += 5;
    --v10;
  }

  while (v10);
  v7 = a4;
  v4 = a3;
  v5 = a2;
  v8 = v32;
  v6 = v31;
LABEL_24:
  v27 = *(v6 + 40);
  v28 = *(v6 + 48);
  if (v27 > v28)
  {
    __break(1u);
  }

  else
  {
    v38 = *v6;
    v30 = *(v6 + 16);
    v29 = *(v6 + 24);
    sub_220F30FE8(&v38, &v37);
    *v7 = *v6;
    *(v7 + 16) = v5;
    *(v7 + 24) = v4;
    *(v7 + 32) = v8;
    *(v7 + 33) = 0;
    *(v7 + 40) = v30;
    *(v7 + 48) = v29;
    *(v7 + 56) = v11;
    *(v7 + 64) = 0;
    *(v7 + 72) = 0;
    *(v7 + 80) = v27;
    *(v7 + 88) = v28;
  }

  return result;
}

void *sub_220F2D920(uint64_t *a1, void *a2, uint64_t *a3, void *__src)
{
  v6 = *a3;
  v7 = a3[1];
  memcpy(__dst, __src, sizeof(__dst));
  *a1 = v6;
  a1[1] = v7;

  sub_220F2D60C(__dst, v6, v7, __srca);
  return memcpy(a2, __srca, 0x60uLL);
}

void *sub_220F2D9A8(void *a1, void *a2, uint64_t *a3, void *__src)
{
  v7 = *a3;
  v6 = a3[1];
  memcpy(__dst, __src, sizeof(__dst));
  *a1 = v7;
  a1[1] = v6;

  sub_220F2D60C(__dst, 0, 0, __srca);
  return memcpy(a2, __srca, 0x60uLL);
}

void *sub_220F2DA30(_BYTE *a1, _OWORD *a2, int a3, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));

  result = sub_220FB9938();
  if (result == 4)
  {
    *a1 = 4;
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
  }

  else
  {
    *a1 = result;
    sub_220F2D60C(__dst, 0, 0, __srca);
    return memcpy(a2, __srca, 0x60uLL);
  }

  return result;
}

uint64_t sub_220F2DAE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D050);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v184 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v184 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v191 = &v184 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v184 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v184 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v184 - v24;
  MEMORY[0x28223BE20](v26, v27);
  v190 = &v184 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v193 = &v184 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v204 = &v184 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v197 = (&v184 - v37);
  if (!*(a1 + 16))
  {
  }

  sub_220F2F218(a1, __src);
  if (!__src[1])
  {
  }

  v233 = __src[0];
  v234 = __src[1];
  memcpy(v235, &__src[2], sizeof(v235));
  v38 = *(a1 + 16);

  v205 = v2;
  v187 = v21;
  v188 = v25;
  v192 = v10;
  v189 = v3;
  v185 = v6;
  v196 = v17;
  if (!v38 || (sub_220F191E0(1), v39 = a1, (v40 & 1) == 0))
  {
    v186 = a1;
    v41 = v235[10];
    v42 = objc_opt_self();
    memcpy(v232, __src, sizeof(v232));
    sub_220EE5BFC(v232, &v220, &qword_27CF9EFB0);
    v43 = [v42 celsius];
    sub_220E1966C(0, &qword_2812C5B20);
    sub_220EE5BFC(__src, &v220, &qword_27CF9EFB8);
    v44 = v41;
    LOBYTE(v42) = sub_220FC3250();

    if (v42)
    {

      sub_220E31784(&v233);
      v45 = *&v235[8];
      v46 = *&v235[9];
      v47 = v235[7];
      v48 = v235[6];
      v49 = v235[5];
      v202 = v235[3];
      v203 = v235[4];
      v50 = BYTE1(v235[2]);
      v51 = v235[2];
      v52 = v235[0];
      v53 = v235[1];
      v54 = v233;
      v55 = v234;
      sub_220E31B58(&v233, &v220);
    }

    else
    {
      v198 = v44;
      v199 = v43;
      v57 = v235[5];
      v58 = *(v235[5] + 16);
      if (v58)
      {
        v195 = (v3 + 8);
        v194 = sub_220E1966C(0, &unk_2812C5CB0);
        v59 = v57 + 64;
        v60 = MEMORY[0x277D84F90];
        v61 = v204;
        do
        {
          v203 = *(v59 - 16);
          v204 = v58;
          v62 = *(v59 - 8);
          v63 = v198;

          sub_220FBFC70();
          sub_220FBFCD0();
          v64 = sub_220FBFCE0();
          v201 = v65;
          v202 = v64;

          sub_220FBFC80();
          v67 = v66;
          v200 = v62;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_220F3799C();
            v60 = v75;
          }

          v68 = *(v60 + 16);
          if (v68 >= *(v60 + 24) >> 1)
          {
            sub_220F3799C();
            v60 = v76;
          }

          v69 = *v195;
          v70 = v205;
          (*v195)(v61, v205);
          v69(v197, v70);
          *(v60 + 16) = v68 + 1;
          v71 = v60 + 56 * v68;
          v72 = v201;
          *(v71 + 32) = v202;
          *(v71 + 40) = v72;
          v73 = v204;
          v74 = v200;
          *(v71 + 48) = v203;
          *(v71 + 56) = v74;
          *(v71 + 64) = v67;
          *(v71 + 72) = 0;
          *(v71 + 80) = 1;
          v59 += 56;
          v58 = v73 - 1;
        }

        while (v58);
      }

      else
      {
        v60 = MEMORY[0x277D84F90];
      }

      v194 = v60;
      v77 = v235[6];
      if (v235[6])
      {
        v78 = *(v235[6] + 16);
        if (v78)
        {
          v197 = (v189 + 8);

          v195 = sub_220E1966C(0, &unk_2812C5CB0);
          v184 = v77;
          v79 = v77 + 64;
          v80 = MEMORY[0x277D84F90];
          v81 = v190;
          v82 = v197;
          do
          {
            v202 = *(v79 - 16);
            v203 = v78;
            v83 = *(v79 - 8);
            v84 = v198;

            sub_220FBFC70();
            sub_220FBFCD0();
            v85 = sub_220FBFCE0();
            v200 = v86;
            v201 = v85;

            sub_220FBFC80();
            v88 = v87;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_220F3799C();
              v80 = v95;
            }

            v89 = *(v80 + 2);
            if (v89 >= *(v80 + 3) >> 1)
            {
              sub_220F3799C();
              v204 = v96;
            }

            else
            {
              v204 = v80;
            }

            v90 = *v82;
            v91 = v205;
            (*v82)(v81, v205);
            v90(v193, v91);
            v80 = v204;
            *(v204 + 2) = v89 + 1;
            v92 = &v80[56 * v89];
            v93 = v200;
            *(v92 + 4) = v201;
            *(v92 + 5) = v93;
            v94 = v203;
            *(v92 + 6) = v202;
            *(v92 + 7) = v83;
            *(v92 + 8) = v88;
            *(v92 + 9) = 0;
            v92[80] = 1;
            v79 += 56;
            v78 = v94 - 1;
          }

          while (v78);

          v97 = v91;
        }

        else
        {
          v204 = MEMORY[0x277D84F90];
          v97 = v205;
        }

        v100 = v198;
        v99 = v187;
        v98 = v188;
      }

      else
      {
        v204 = 0;
        v97 = v205;
        v99 = v187;
        v98 = v188;
        v100 = v198;
      }

      sub_220E1966C(0, &unk_2812C5CB0);
      v101 = v100;
      sub_220FBFC70();
      v102 = v199;
      sub_220FBFCD0();
      v103 = *(v189 + 8);
      v103(v99, v97);
      sub_220FBFC80();
      v45 = v104;
      v103(v98, v97);
      v105 = v101;
      v106 = v97;
      v107 = v105;
      sub_220FBFC70();
      sub_220FBFCD0();
      v103(v99, v106);
      sub_220FBFC80();
      v46 = v108;
      v103(v98, v106);
      v109 = v235[3];
      v203 = v235[4];

      v110 = [v102 symbol];
      v54 = sub_220FC2700();
      v55 = v111;

      sub_220E31784(&v233);
      result = sub_220E31784(&v233);
      if (v45 > v46)
      {
        __break(1u);
        goto LABEL_64;
      }

      v47 = v235[7];
      v51 = v235[2];
      v220 = v54;
      v221 = v55;
      v222 = 0;
      v223 = 0;
      v224 = LOBYTE(v235[2]);
      v202 = v109;
      v225 = v109;
      v226 = v203;
      v49 = v194;
      v48 = v204;
      v227 = v194;
      v228 = v204;
      v229 = v235[7];
      v230 = v45;
      v231 = v46;
      sub_220E31B58(&v220, &v207);
      v52 = 0;
      v53 = 0;
      v50 = 0;
    }

    v220 = v54;
    v221 = v55;
    v222 = v52;
    v223 = v53;
    LOBYTE(v224) = v51;
    HIBYTE(v224) = v50;
    v225 = v202;
    v226 = v203;
    v227 = v49;
    v228 = v48;
    v229 = v47;
    v230 = v45;
    v231 = v46;
    v207 = v54;
    v208 = v55;
    v209 = v52;
    v210 = v53;
    v211 = v51;
    v212 = v50;
    v213 = v202;
    v214 = v203;
    v215 = v49;
    v216 = v48;
    v217 = v47;
    v218 = v45;
    v219 = v46;
    sub_220E31784(&v207);
    a1 = v186;
    swift_isUniquelyReferenced_nonNull_native();
    v206 = a1;
    sub_220E98014();
    v39 = v206;
    v3 = v189;
  }

  if (*(a1 + 16))
  {
    sub_220F191E0(2);
    if (v112)
    {
      sub_220E3B2DC(__src, &qword_27CF9EFB8);
      return v39;
    }
  }

  v194 = v39;
  v113 = v235[10];
  v114 = objc_opt_self();
  sub_220EE5BFC(__src, v232, &qword_27CF9EFB8);
  v115 = [v114 fahrenheit];
  sub_220E1966C(0, &qword_2812C5B20);
  sub_220EE5BFC(__src, v232, &qword_27CF9EFB8);
  v116 = v113;
  LOBYTE(v114) = sub_220FC3250();

  if (v114)
  {

    sub_220E31784(&v233);
    v117 = *&v235[8];
    v118 = *&v235[9];
    v119 = v235[7];
    v120 = v235[6];
    v121 = v235[5];
    v203 = v235[3];
    v205 = v235[4];
    v122 = BYTE1(v235[2]);
    v123 = v235[2];
    v124 = v235[0];
    v125 = v235[1];
    v126 = v233;
    v127 = v234;
    sub_220E31B58(&v233, v232);
LABEL_62:
    v232[0] = v126;
    v232[1] = v127;
    v232[2] = v124;
    v232[3] = v125;
    LOBYTE(v232[4]) = v123;
    BYTE1(v232[4]) = v122;
    v232[5] = v203;
    v232[6] = v205;
    v232[7] = v121;
    v232[8] = v120;
    LOBYTE(v232[9]) = v119;
    *&v232[10] = v117;
    *&v232[11] = v118;
    v207 = v126;
    v208 = v127;
    v209 = v124;
    v210 = v125;
    v211 = v123;
    v212 = v122;
    v213 = v203;
    v214 = v205;
    v215 = v121;
    v216 = v120;
    v217 = v119;
    v218 = v117;
    v219 = v118;
    sub_220E31784(&v207);
    v183 = v194;
    swift_isUniquelyReferenced_nonNull_native();
    v206 = v183;
    sub_220E98014();
    sub_220E3B2DC(__src, &qword_27CF9EFB8);
    return v206;
  }

  v198 = v116;
  v199 = v115;
  v128 = v235[5];
  v129 = *(v235[5] + 16);
  if (v129)
  {
    v197 = (v3 + 8);
    v195 = sub_220E1966C(0, &unk_2812C5CB0);
    v130 = v128 + 64;
    v131 = MEMORY[0x277D84F90];
    v132 = v191;
    do
    {
      v203 = *(v130 - 16);
      v204 = v129;
      v133 = *(v130 - 8);
      v134 = v116;

      sub_220FBFC70();
      sub_220FBFCD0();
      v135 = sub_220FBFCE0();
      v201 = v136;

      sub_220FBFC80();
      v138 = v137;
      v200 = v133;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F3799C();
        v131 = v148;
      }

      v140 = *(v131 + 16);
      v139 = *(v131 + 24);
      v202 = v135;
      if (v140 >= v139 >> 1)
      {
        sub_220F3799C();
        v141 = v149;
      }

      else
      {
        v141 = v131;
      }

      v142 = *v197;
      v143 = v205;
      (*v197)(v132, v205);
      v142(v196, v143);
      v131 = v141;
      *(v141 + 16) = v140 + 1;
      v144 = v141 + 56 * v140;
      v145 = v201;
      *(v144 + 32) = v202;
      *(v144 + 40) = v145;
      v146 = v204;
      v147 = v200;
      *(v144 + 48) = v203;
      *(v144 + 56) = v147;
      *(v144 + 64) = v138;
      *(v144 + 72) = 0;
      *(v144 + 80) = 1;
      v130 += 56;
      v129 = v146 - 1;
      v116 = v198;
    }

    while (v129);
  }

  else
  {
    v131 = MEMORY[0x277D84F90];
  }

  v150 = v235[6];
  v195 = v131;
  if (v235[6])
  {
    v151 = *(v235[6] + 16);
    if (v151)
    {
      v197 = (v189 + 8);

      v196 = sub_220E1966C(0, &unk_2812C5CB0);
      v193 = v150;
      v152 = v150 + 64;
      v153 = MEMORY[0x277D84F90];
      v154 = v185;
      do
      {
        v202 = *(v152 - 2);
        v155 = *(v152 - 1);
        v156 = v198;

        sub_220FBFC70();
        sub_220FBFCD0();
        v157 = sub_220FBFCE0();
        v200 = v158;

        sub_220FBFC80();
        v160 = v159;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_220F3799C();
          v153 = v169;
        }

        v162 = *(v153 + 2);
        v161 = *(v153 + 3);
        v203 = v151;
        v204 = v153;
        v201 = v157;
        if (v162 >= v161 >> 1)
        {
          sub_220F3799C();
          v204 = v170;
        }

        v163 = *v197;
        v164 = v205;
        (*v197)(v154, v205);
        v163(v192, v164);
        v166 = v203;
        v165 = v204;
        *(v204 + 2) = v162 + 1;
        v153 = v165;
        v167 = &v165[56 * v162];
        v168 = v200;
        *(v167 + 4) = v201;
        *(v167 + 5) = v168;
        *(v167 + 6) = v202;
        *(v167 + 7) = v155;
        *(v167 + 8) = v160;
        *(v167 + 9) = 0;
        v167[80] = 1;
        v152 += 56;
        v151 = v166 - 1;
      }

      while (v151);

      v171 = v164;
    }

    else
    {
      v204 = MEMORY[0x277D84F90];
      v171 = v205;
    }

    v116 = v198;
  }

  else
  {
    v204 = 0;
    v171 = v205;
  }

  v173 = v187;
  v172 = v188;
  sub_220E1966C(0, &unk_2812C5CB0);
  v174 = v116;
  sub_220FBFC70();
  v175 = v199;
  sub_220FBFCD0();
  v176 = *(v189 + 8);
  v176(v173, v171);
  sub_220FBFC80();
  v117 = v177;
  v176(v172, v171);
  v203 = v174;
  sub_220FBFC70();
  sub_220FBFCD0();
  v176(v173, v171);
  sub_220FBFC80();
  v118 = v178;
  v176(v172, v171);
  v179 = v235[3];
  v205 = v235[4];

  v180 = [v175 symbol];
  v126 = sub_220FC2700();
  v127 = v181;
  v182 = v203;

  sub_220E31784(&v233);
  result = sub_220E31784(&v233);
  if (v117 <= v118)
  {
    v119 = v235[7];
    v123 = v235[2];
    v232[0] = v126;
    v232[1] = v127;
    v232[2] = 0;
    v232[3] = 0;
    LOWORD(v232[4]) = LOBYTE(v235[2]);
    v203 = v179;
    v232[5] = v179;
    v232[6] = v205;
    v121 = v195;
    v120 = v204;
    v232[7] = v195;
    v232[8] = v204;
    LOBYTE(v232[9]) = v235[7];
    *&v232[10] = v117;
    *&v232[11] = v118;
    sub_220E31B58(v232, &v207);
    v124 = 0;
    v125 = 0;
    v122 = 0;
    goto LABEL_62;
  }

LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_220F2EB88(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_220F3043C(a1, sub_220F30D2C, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

id sub_220F2EC0C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return [objc_allocWithZone(MEMORY[0x277CD4F18]) init];
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v44 = MEMORY[0x277D84F90];

    result = sub_220F0B180(0, v3, 0);
    v6 = 0;
    v7 = v44;
    while (v6 < *(v2 + 16))
    {
      v8 = *(v2 + 8 * v6 + 32);
      if (v8[1].i64[0] != 2)
      {

        sub_220FC35C0();

        v12 = sub_220FC38F0();
        MEMORY[0x223D9BD60](v12);

        MEMORY[0x223D9BD60](0x64616574736E6920, 0xE800000000000000);
        sub_220F31444();
        swift_allocError();
        *v13 = 0xD000000000000028;
        v13[1] = 0x8000000220FE3480;
        swift_willThrow();
      }

      v9 = v8[2];
      v11 = *(v44 + 16);
      v10 = *(v44 + 24);
      if (v11 >= v10 >> 1)
      {
        v42 = v9;
        result = sub_220F0B180((v10 > 1), v11 + 1, 1);
        v9 = v42;
      }

      ++v6;
      *(v44 + 16) = v11 + 1;
      *(v44 + 16 * v11 + 32) = vextq_s8(v9, v9, 8uLL);
      if (v3 == v6)
      {

        goto LABEL_13;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_13:

  result = sub_220F2B8D8(1, a1);
  v17 = v16 >> 1;
  v18 = (v16 >> 1) - v15;
  if (__OFSUB__(v16 >> 1, v15))
  {
    goto LABEL_44;
  }

  if (v18)
  {
    v19 = v14;
    v20 = v15;
    v45 = v4;
    result = sub_220FC3670();
    if ((v18 & 0x8000000000000000) != 0)
    {
LABEL_45:
      __break(1u);
      return result;
    }

    v21 = 0;
    v39 = v17;
    v40 = v19;
    v41 = v18;
    while (!__OFADD__(v21, 1))
    {
      if (v20 >= v17 || v21 >= v18)
      {
        goto LABEL_42;
      }

      v43 = v21 + 1;
      v23 = *(v19 + 8 * v20);
      v24 = *(v23 + 16);
      if (v24)
      {

        result = sub_220F0B180(0, v24, 0);
        v25 = 0;
        while (v25 < *(v23 + 16))
        {
          v26 = *(v23 + 8 * v25 + 32);
          if (v26[1].i64[0] != 2)
          {

            sub_220FC35C0();

            v34 = sub_220FC38F0();
            MEMORY[0x223D9BD60](v34);

            MEMORY[0x223D9BD60](0x64616574736E6920, 0xE800000000000000);
            sub_220F31444();
            swift_allocError();
            *v35 = 0xD000000000000028;
            v35[1] = 0x8000000220FE3480;
            swift_willThrow();

            swift_unknownObjectRelease();
          }

          v27 = v26[2];
          v29 = *(v4 + 16);
          v28 = *(v4 + 24);
          v30 = v29 + 1;
          if (v29 >= v28 >> 1)
          {
            v38 = v27;
            result = sub_220F0B180((v28 > 1), v29 + 1, 1);
            v27 = v38;
          }

          ++v25;
          *(v4 + 16) = v30;
          *(v4 + 16 * v29 + 32) = vextq_s8(v27, v27, 8uLL);
          if (v24 == v25)
          {
            v17 = v39;
            v19 = v40;
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

      v30 = *(v4 + 16);
LABEL_31:
      v31 = [objc_opt_self() polygonWithCoordinates:v4 + 32 count:v30];

      sub_220FC3640();
      sub_220FC3680();
      sub_220FC3690();
      result = sub_220FC3650();
      if (__OFADD__(v20++, 1))
      {
        goto LABEL_43;
      }

      v21 = v43;
      v18 = v41;
      v4 = MEMORY[0x277D84F90];
      if (v43 == v41)
      {
        swift_unknownObjectRelease();
        v33 = v45;
        goto LABEL_36;
      }
    }

    goto LABEL_41;
  }

  swift_unknownObjectRelease();
  v33 = MEMORY[0x277D84F90];
LABEL_36:
  v36 = *(v7 + 16);
  if (!sub_220F43CDC(v33))
  {

    v33 = 0;
  }

  sub_220E1966C(0, &qword_2812C5AE0);
  v37 = sub_220F2F16C(v7 + 32, v36, v33);

  return v37;
}

id sub_220F2F16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_220E1966C(0, &qword_2812C5AE0);
    v5 = sub_220FC2960();
  }

  else
  {
    v5 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() polygonWithCoordinates:a1 count:a2 interiorPolygons:v5];

  return v6;
}

id sub_220F2F218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0uLL;
  if (*(a1 + 16))
  {
    v5 = sub_220F191E0(0);
    if (v6)
    {
LABEL_3:
      memcpy(__dst, (*(a1 + 56) + 96 * v5), sizeof(__dst));
      v7 = objc_opt_self();
      sub_220E31B58(__dst, v22);
      v8 = [v7 celsius];
LABEL_13:
      result = v8;
      v3 = __dst[0];
      v10 = __dst[1];
      v11 = __dst[2];
      v12 = __dst[3];
      v13 = __dst[4];
      v14 = __dst[5];
      goto LABEL_15;
    }

    if (*(a1 + 16))
    {
      v15 = sub_220F191E0(2);
      if (v16)
      {
        memcpy(__dst, (*(a1 + 56) + 96 * v15), sizeof(__dst));
        v17 = objc_opt_self();
        sub_220E31B58(__dst, v22);
        v8 = [v17 fahrenheit];
        goto LABEL_13;
      }

      if (*(a1 + 16))
      {
        v5 = sub_220F191E0(1);
        if (v18)
        {
          goto LABEL_3;
        }

        if (*(a1 + 16))
        {
          v19 = sub_220F191E0(3);
          if (v20)
          {
            memcpy(__dst, (*(a1 + 56) + 96 * v19), sizeof(__dst));
            v21 = objc_opt_self();
            sub_220E31B58(__dst, v22);
            v8 = [v21 kelvin];
            goto LABEL_13;
          }
        }
      }
    }

    result = 0;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v3 = 0uLL;
    goto LABEL_15;
  }

  result = 0;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
LABEL_15:
  *a2 = v3;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  *(a2 + 96) = result;
  return result;
}

void *sub_220F2F420(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D070);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_220F2F4F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DBB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

size_t sub_220F2F5BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_220F2F6DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220F2F7DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EFE0);
  v37 = a2;
  result = sub_220FC3770();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v36 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      sub_220E49DD8(0, (v35 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(v5 + 56) + 32 * v18;
    v22 = *(v21 + 8);
    v39 = *v21;
    v40 = *v19;
    v23 = *(v21 + 16);
    v38 = *(v21 + 24);
    if ((v37 & 1) == 0)
    {
      v24 = v23;
    }

    sub_220FC3A40();
    sub_220FC27D0();
    result = sub_220FC3A90();
    v25 = -1 << *(v7 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v7 + 48) + 16 * v28);
    *v33 = v40;
    v33[1] = v20;
    v34 = *(v7 + 56) + 32 * v28;
    *v34 = v39;
    *(v34 + 8) = v22;
    *(v34 + 16) = v23;
    *(v34 + 24) = v38;
    ++*(v7 + 16);
    v5 = v36;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v14 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_220F2FAB0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_220FC0EA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EFD8);
  v49 = a2;
  result = sub_220FC3770();
  v12 = result;
  if (!*(v10 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v12;
    return result;
  }

  v63 = v9;
  v46[0] = v2;
  v13 = 0;
  v14 = (v10 + 64);
  v15 = 1 << *(v10 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v10 + 64);
  v18 = (v15 + 63) >> 6;
  v46[1] = v6 + 16;
  v48 = v6;
  v50 = (v6 + 32);
  v19 = result + 64;
  v47 = v10;
  if (!v17)
  {
LABEL_7:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v46[0];
      goto LABEL_33;
    }

    v45 = 1 << *(v10 + 32);
    v3 = v46[0];
    if (v45 >= 64)
    {
      sub_220E49DD8(0, (v45 + 63) >> 6, v14);
    }

    else
    {
      *v14 = -1 << v45;
    }

    *(v10 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_12:
    v23 = v20 | (v13 << 6);
    v24 = *(v10 + 48);
    v62 = *(v48 + 72);
    if (v49)
    {
      (*(v48 + 32))(v63, v24 + v62 * v23, v5);
      v25 = *(v10 + 56) + 96 * v23;
      v26 = *(v25 + 8);
      v53 = *v25;
      v51 = v26;
      v27 = *(v25 + 24);
      v55 = *(v25 + 16);
      v52 = v27;
      v54 = *(v25 + 32);
      v56 = *(v25 + 33);
      v28 = *(v25 + 48);
      v59 = *(v25 + 40);
      v57 = v28;
      v29 = *(v25 + 64);
      v58 = *(v25 + 56);
      v60 = v29;
      v61 = *(v25 + 72);
      v30 = *(v25 + 80);
      v31 = *(v25 + 88);
    }

    else
    {
      (*(v48 + 16))(v63, v24 + v62 * v23, v5);
      memcpy(__dst, (*(v10 + 56) + 96 * v23), sizeof(__dst));
      v30 = __dst[10];
      v31 = __dst[11];
      v61 = LOBYTE(__dst[9]);
      v60 = __dst[8];
      v58 = __dst[7];
      v59 = __dst[5];
      v57 = __dst[6];
      v56 = BYTE1(__dst[4]);
      v54 = LOBYTE(__dst[4]);
      v55 = __dst[2];
      v52 = __dst[3];
      v53 = __dst[0];
      v51 = __dst[1];
      sub_220E31B58(__dst, &v64);
    }

    sub_220F06C58();
    result = sub_220FC2640();
    v32 = -1 << *(v12 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v19 + 8 * (v33 >> 6))) == 0)
    {
      break;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v19 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v19 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    result = (*v50)(*(v12 + 48) + v62 * v35, v63, v5);
    v40 = *(v12 + 56) + 96 * v35;
    v41 = v51;
    *v40 = v53;
    *(v40 + 8) = v41;
    v42 = v52;
    *(v40 + 16) = v55;
    *(v40 + 24) = v42;
    *(v40 + 32) = v54;
    *(v40 + 33) = v56;
    *(v40 + 38) = v65;
    *(v40 + 34) = v64;
    v43 = v57;
    *(v40 + 40) = v59;
    *(v40 + 48) = v43;
    v44 = v60;
    *(v40 + 56) = v58;
    *(v40 + 64) = v44;
    *(v40 + 72) = v61;
    *(v40 + 73) = __dst[0];
    *(v40 + 76) = *(__dst + 3);
    *(v40 + 80) = v30;
    *(v40 + 88) = v31;
    ++*(v12 + 16);
    v10 = v47;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  v36 = 0;
  v37 = (63 - v32) >> 6;
  while (++v34 != v37 || (v36 & 1) == 0)
  {
    v38 = v34 == v37;
    if (v34 == v37)
    {
      v34 = 0;
    }

    v36 |= v38;
    v39 = *(v19 + 8 * v34);
    if (v39 != -1)
    {
      v35 = __clz(__rbit64(~v39)) + (v34 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_220F30094()
{
  result = qword_2812C7DF8[0];
  if (!qword_2812C7DF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812C7DF8);
  }

  return result;
}

void sub_220F30118(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v29 = *(a1 + 16);
  for (i = (a1 + 72); ; i += 48)
  {
    if (v29 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_220FC3990();
      __break(1u);
      goto LABEL_22;
    }

    v31 = v4;
    v7 = *(i - 5);
    v6 = *(i - 4);
    v9 = *(i - 3);
    v8 = *(i - 2);
    v10 = *(i - 1);
    v32 = *i;
    v11 = *a3;
    v28 = v10;

    v33 = v8;

    v13 = sub_220F19120(v7, v6);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_19;
    }

    v17 = v12;
    if (v11[3] < v16)
    {
      break;
    }

    if (a2)
    {
      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EFE8);
      sub_220FC3720();
      if (v17)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v21 = (v20[6] + 16 * v13);
    *v21 = v7;
    v21[1] = v6;
    v22 = v20[7] + 32 * v13;
    *v22 = v9;
    *(v22 + 8) = v33;
    *(v22 + 16) = v10;
    *(v22 + 24) = v32;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v20[2] = v25;
    v4 = v31 + 1;
    a2 = 1;
  }

  sub_220F2F7DC(v16, a2 & 1);
  v18 = sub_220F19120(v7, v6);
  if ((v17 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v13 = v18;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_220FC35C0();
  MEMORY[0x223D9BD60](0xD00000000000001BLL, 0x8000000220FE3460);
  sub_220FC3700();
  MEMORY[0x223D9BD60](39, 0xE100000000000000);
  sub_220FC3740();
  __break(1u);
}

uint64_t sub_220F3043C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  v41 = sub_220FC0EA0();
  v9 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v10);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EFC8);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v38 - v15;
  sub_220F31060(a1, a2, a3, v49);
  v45 = v49[0];
  v46 = v49[1];
  v47 = v49[2];
  v48 = v50;
  v17 = (v9 + 32);
  v39 = (v9 + 8);
  v40 = v9;
  v38[1] = a1;

  v38[0] = a3;

  while (1)
  {
    sub_220F3109C(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC28);
    if (__swift_getEnumTagSinglePayload(v16, 1, v18) == 1)
    {
      sub_220EA9CB8();
    }

    v19 = *(v18 + 48);
    v20 = *v17;
    (*v17)(v12, v16, v41);
    memcpy(v44, &v16[v19], sizeof(v44));
    v21 = *v51;
    v23 = sub_220F1914C();
    v24 = *(v21 + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (*(v21 + 24) >= v26)
    {
      if (a4)
      {
        if (v22)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EFD0);
        sub_220FC3720();
        if (v27)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_220F2FAB0(v26, a4 & 1);
      v28 = sub_220F1914C();
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_18;
      }

      v23 = v28;
      if (v27)
      {
LABEL_10:
        v30 = *v51;
        v31 = 3 * v23;
        memcpy(v42, (*(*v51 + 56) + 32 * v31), sizeof(v42));
        sub_220E31B58(v42, v43);
        sub_220E31784(v44);
        (*v39)(v12, v41);
        v32 = (*(v30 + 56) + 32 * v31);
        memcpy(v43, v32, sizeof(v43));
        memcpy(v32, v42, 0x60uLL);
        sub_220E31784(v43);
        goto LABEL_14;
      }
    }

    v33 = *v51;
    *(*v51 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    v20((v33[6] + *(v40 + 72) * v23), v12, v41);
    memcpy((v33[7] + 96 * v23), v44, 0x60uLL);
    v34 = v33[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_17;
    }

    v33[2] = v36;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_220FC3990();
  __break(1u);
  return result;
}

void sub_220F307F0(uint64_t a1, char a2, void *a3)
{
  v46 = a3;
  v6 = sub_220FC0EA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC28);
  MEMORY[0x28223BE20](v10, v11);
  v44 = &v39 - v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
LABEL_17:

    return;
  }

  v39 = v3;
  v16 = 0;
  v43 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v17 = *(v12 + 48);
  v41 = v7;
  v42 = v17;
  v45 = (v7 + 32);
  v40 = v15 - 1;
  while (1)
  {
    if (v16 >= v15)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_220FC3990();
      __break(1u);
      goto LABEL_22;
    }

    v18 = a2;
    v19 = v13;
    v20 = v44;
    sub_220EE5BFC(v43 + *(v13 + 72) * v16, v44, &qword_27CF9EC28);
    v21 = *v45;
    v22 = v6;
    (*v45)(v47, v20, v6);
    memcpy(__dst, (v20 + v42), 0x60uLL);
    v23 = *v46;
    v25 = sub_220F1914C();
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_19;
    }

    v29 = v24;
    if (v23[3] < v28)
    {
      break;
    }

    if (v18)
    {
      if (v24)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EFD0);
      sub_220FC3720();
      if (v29)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v32 = v47;
    v33 = *v46;
    *(*v46 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v6 = v22;
    v21((v33[6] + *(v41 + 72) * v25), v32, v22);
    memcpy((v33[7] + 96 * v25), __dst, 0x60uLL);
    v34 = v33[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_20;
    }

    v33[2] = v36;
    if (v40 == v16)
    {
      goto LABEL_17;
    }

    v15 = *(a1 + 16);
    ++v16;
    a2 = 1;
    v13 = v19;
  }

  sub_220F2FAB0(v28, v18 & 1);
  v30 = sub_220F1914C();
  if ((v29 & 1) != (v31 & 1))
  {
    goto LABEL_21;
  }

  v25 = v30;
  if ((v29 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v37 = swift_allocError();
  swift_willThrow();

  v51 = v37;
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_220E31784(__dst);
    (*(v41 + 8))(v47, v22);

    return;
  }

LABEL_22:
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_220FC35C0();
  MEMORY[0x223D9BD60](0xD00000000000001BLL, 0x8000000220FE3460);
  sub_220FC3700();
  MEMORY[0x223D9BD60](39, 0xE100000000000000);
  sub_220FC3740();
  __break(1u);
}

uint64_t sub_220F30C98(uint64_t a1, void *a2, uint64_t a3, const void *a4)
{
  v8 = sub_220FC0EA0();
  (*(*(v8 - 8) + 16))(a1, a3, v8);
  memcpy(a2, a4, 0x60uLL);
  return sub_220E31B58(a4, &v10);
}

uint64_t sub_220F30D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE00) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC28) + 48);
  memcpy(v7, (a1 + v4), sizeof(v7));
  return sub_220F30C98(a2, (a2 + v5), a1, v7);
}

_BYTE *sub_220F30DB4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

unint64_t sub_220F30E20(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_220F30E8C(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220F31060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_220F3109C(uint64_t a1@<X8>)
{
  v42 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE00);
  MEMORY[0x28223BE20](v40, v2);
  v4 = &v36 - v3;
  v5 = sub_220FC0EA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EDF8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v36 - v16;
  v20 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v22 = v1[3];
  v23 = v1[4];
  v37 = v4;
  v41 = v21;
  if (v23)
  {
    v39 = v13;
    v24 = v22;
LABEL_7:
    v38 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v24 << 6);
    (*(v6 + 16))(v9, *(v20 + 48) + *(v6 + 72) * v25, v5, v17);
    memcpy(__dst, (*(v20 + 56) + 96 * v25), 0x60uLL);
    v26 = v40;
    v27 = *(v40 + 48);
    (*(v6 + 32))(v18, v9, v5);
    memcpy(&v18[v27], __dst, 0x60uLL);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v26);
    sub_220E31B58(__dst, v43);
    v28 = v38;
    v13 = v39;
LABEL_8:
    *v1 = v20;
    v1[1] = v19;
    v1[2] = v41;
    v1[3] = v22;
    v1[4] = v28;
    v29 = v1[5];
    sub_220EEECFC(v18, v13, &qword_27CF9EDF8);
    v30 = 1;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v26);
    v32 = v42;
    if (EnumTagSinglePayload != 1)
    {
      v33 = v13;
      v34 = v37;
      sub_220EEECFC(v33, v37, &qword_27CF9EE00);
      v29(v34);
      sub_220E3B2DC(v34, &qword_27CF9EE00);
      v30 = 0;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC28);
    __swift_storeEnumTagSinglePayload(v32, v30, 1, v35);
  }

  else
  {
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= ((v21 + 64) >> 6))
      {
        v26 = v40;
        __swift_storeEnumTagSinglePayload(&v36 - v16, 1, 1, v40);
        v28 = 0;
        goto LABEL_8;
      }

      v23 = *(v19 + 8 * v24);
      ++v22;
      if (v23)
      {
        v39 = v13;
        v22 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

unint64_t sub_220F31444()
{
  result = qword_27CF9EFF0;
  if (!qword_27CF9EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EFF0);
  }

  return result;
}

uint64_t sub_220F314C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F038);
  sub_220E453D4(&qword_2812C5E90, &qword_27CF9F038);
  return sub_220FC19D0();
}

uint64_t sub_220F31554()
{
  if (*(*(v0 + *(type metadata accessor for WeatherMapStore.ViewModel(0) + 52)) + 16) && (sub_220F1908C(*v0, v0[1], v0[2], v0[3]), (v1 & 1) != 0))
  {
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

void sub_220F315B4()
{
  OUTLINED_FUNCTION_29_2();
  v3 = v2;
  v4 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v6 = v5;
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_17_11();
  v10 = (v0 + *(type metadata accessor for WeatherMapStore.ViewModel(v9) + 36));
  v11 = v10[1];
  if (v11)
  {
    v12 = 0;
    v13 = *v10;
    v14 = *(v0 + 40);
    v26 = *(v14 + 16);
    while (1)
    {
      if (v26 == v12)
      {
        v24 = v3;
        v25 = 1;
        goto LABEL_17;
      }

      if (v12 >= *(v14 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_26_11();
      (*(v6 + 16))(v1, v14 + v15 + *(v6 + 72) * v12, v4);
      if (sub_220FC1020() == v13 && v11 == v16)
      {

LABEL_16:
        (*(v6 + 32))(v3, v1, v4);
        v24 = v3;
        v25 = 0;
LABEL_17:
        __swift_storeEnumTagSinglePayload(v24, v25, 1, v4);
        OUTLINED_FUNCTION_22();
        return;
      }

      v18 = sub_220FC3940();

      if (v18)
      {
        goto LABEL_16;
      }

      (*(v6 + 8))(v1, v4);
      ++v12;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }
}

void sub_220F317A4(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = v1 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  swift_beginAccess();
  v4 = *(v3 + 48);
  switch(v2)
  {
    case 3:
      if (v4 == 3)
      {
        return;
      }

      break;
    case 4:
      if (v4 == 4)
      {
        return;
      }

      break;
    case 5:
      if (v4 == 5)
      {
        return;
      }

      break;
    default:
      if ((v4 - 3) >= 3)
      {
        return;
      }

      break;
  }

  if ((*(v3 + 16) & 0x8000000000000000) == 0 || (*(v1 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_overlayIsTransitioning) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_overlayIsTransitioning) = 1;
    *(v3 + 48) = v2;
    sub_220F318B0();
  }
}