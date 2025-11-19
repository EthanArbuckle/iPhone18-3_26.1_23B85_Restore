uint64_t static NSUnitTemperature.BaseWeatherFormatStyle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_9();
  sub_1BC96A034();
  if (v2)
  {
    v3 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle(0);
    v4 = OUTLINED_FUNCTION_104(v3[5]);
    if ((MEMORY[0x1BFB2B8A0](v4) & 1) != 0 && *(v1 + v3[6]) == *(v0 + v3[6]) && *(v1 + v3[7]) == *(v0 + v3[7]))
    {
      OUTLINED_FUNCTION_104(v3[8]);

      JUMPOUT(0x1BFB2B460);
    }
  }

  return 0;
}

BOOL WeatherConditionBackgroundManager.isVfxSceneLoaded.getter()
{
  sub_1BCE1A920();
  if (v1)
  {
  }

  return v1 != 0;
}

Swift::Void __swiftcall WeatherConditionPlaybackCoordinator.play(_:)(Swift::Bool a1)
{
  if (*(v1 + 16))
  {
    if (qword_1EDA1EE78 != -1)
    {
      swift_once();
    }

    v2 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v2, qword_1EDA1EE80);
    oslog = sub_1BCE1ACA0();
    v3 = sub_1BCE1D8B0();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BC940000, oslog, v3, "VFX play request was ignored because playback is blocked", v4, 2u);
      MEMORY[0x1BFB31B10](v4, -1, -1);
    }
  }

  else
  {
    v5 = a1;

    sub_1BC98F1A4(v5, 0, 0, 1.0);
  }
}

void sub_1BC98F1A4(char a1, void (*a2)(void), uint64_t a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BCE19060();
  v93 = *(v11 - 8);
  v12 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v83 - v14;

  sub_1BCE1A930();

  w0 = v95.w0;
  if (UIAccessibilityIsReduceMotionEnabled() && (v4[4] & 1) == 0)
  {
    v35 = *(v10 + 80);
    v36 = *(v10 + 88);
    v37 = v4[5];
    if (v37)
    {
      [v37 invalidate];
      v38 = v4[5];
    }

    else
    {
      v38 = 0;
    }

    v4[5] = 0;

    v78 = (*(v36 + 32))(v35, v36);
    (*(v36 + 16))(v35, v36, 0.0);
    (*(v36 + 40))(a4 == 0.0, v35, v36);
    if (qword_1EDA1EE78 != -1)
    {
      swift_once();
    }

    v79 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v79, qword_1EDA1EE80);
    v80 = sub_1BCE1ACA0();
    v81 = sub_1BCE1D8D0();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 67240704;
      *(v82 + 4) = v78 & 1;
      *(v82 + 8) = 1026;
      *(v82 + 10) = a4 == 0.0;
      *(v82 + 14) = 2050;
      *(v82 + 16) = a4;
      _os_log_impl(&dword_1BC940000, v80, v81, "Playback coordinator updated isFrozen state (reduce motion override); from=%{BOOL,public}d, to=%{BOOL,public}d, requestedTimeScale=%{public}f", v82, 0x18u);
      MEMORY[0x1BFB31B10](v82, -1, -1);
    }

    if (!a2)
    {
      goto LABEL_53;
    }

LABEL_52:
    a2();
LABEL_53:
    swift_unknownObjectRelease();
    return;
  }

  if ((a1 & 1) == 0)
  {
    v33 = v4[5];
    if (v33)
    {
      [v33 invalidate];
      v34 = v4[5];
    }

    else
    {
      v34 = 0;
    }

    v4[5] = 0;

    v72 = *(v10 + 80);
    v71 = *(v10 + 88);
    v73 = (*(v71 + 32))(v72, v71);
    (*(v71 + 16))(v72, v71, a4);
    (*(v71 + 40))(a4 == 0.0, v72, v71);
    if (qword_1EDA1EE78 != -1)
    {
      swift_once();
    }

    v74 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v74, qword_1EDA1EE80);
    v75 = sub_1BCE1ACA0();
    v76 = sub_1BCE1D8D0();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 67240704;
      *(v77 + 4) = v73 & 1;
      *(v77 + 8) = 1026;
      *(v77 + 10) = a4 == 0.0;
      *(v77 + 14) = 2050;
      *(v77 + 16) = a4;
      _os_log_impl(&dword_1BC940000, v75, v76, "Playback coordinator updated isFrozen state (not animated); from=%{BOOL,public}d, to=%{BOOL,public}d, timeScale=%{public}f", v77, 0x18u);
      MEMORY[0x1BFB31B10](v77, -1, -1);
    }

    if (a2)
    {
      a2();
    }

    goto LABEL_53;
  }

  v90 = a3;
  v91 = v15;
  v18 = *(v10 + 80);
  v17 = *(v10 + 88);
  v19 = (*(v17 + 8))(COERCE_SWIFT_DOUBLE(*&v18), v17);
  v20 = (*(v17 + 32))(COERCE_SWIFT_DOUBLE(*&v18), v17);
  v89 = w0;
  if (v19 == a4)
  {
    v21 = v20;
    if ((((a4 == 0.0) ^ v20) & 1) == 0)
    {
      if (qword_1EDA1EE78 != -1)
      {
        swift_once();
      }

      v22 = sub_1BCE1ACC0();
      __swift_project_value_buffer(v22, qword_1EDA1EE80);
      v23 = sub_1BCE1ACA0();
      v24 = sub_1BCE1D8D0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = COERCE_DOUBLE(swift_slowAlloc());
        v95.w0 = v26;
        *v25 = 136315650;
        if (a4 == 0.0)
        {
          v27 = 0x6573756170;
        }

        else
        {
          v27 = 2036427888;
        }

        v28 = a2;
        if (a4 == 0.0)
        {
          v29 = 0xE500000000000000;
        }

        else
        {
          v29 = 0xE400000000000000;
        }

        v30 = sub_1BC98FE38(v27, v29, &v95);
        a2 = v28;

        *(v25 + 4) = v30;
        *(v25 + 12) = 1026;
        *(v25 + 14) = v21 & 1;
        *(v25 + 18) = 2050;
        *(v25 + 20) = v19;
        _os_log_impl(&dword_1BC940000, v23, v24, "Playback coordinator requested animation to current state; type=%s, isFrozen=%{BOOL,public}d, timeScale=%{public}f", v25, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(*&v26);
        MEMORY[0x1BFB31B10](*&v26, -1, -1);
        MEMORY[0x1BFB31B10](v25, -1, -1);
      }

      v31 = v4[5];
      if (v31)
      {
        [v31 invalidate];
        v32 = v4[5];
      }

      else
      {
        v32 = 0;
      }

      v4[5] = 0;

      if (!a2)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  v87 = v17;
  if (qword_1EDA1EE78 != -1)
  {
    swift_once();
  }

  v39 = sub_1BCE1ACC0();
  __swift_project_value_buffer(v39, qword_1EDA1EE80);
  v40 = sub_1BCE1ACA0();
  v41 = sub_1BCE1D8D0();
  v42 = os_log_type_enabled(v40, v41);
  v88 = a2;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v86 = COERCE_DOUBLE(swift_slowAlloc());
    v95.w0 = v86;
    *v43 = 136315138;
    if (a4 == 0.0)
    {
      v44 = 0x6573756170;
    }

    else
    {
      v44 = 2036427888;
    }

    v45 = v11;
    if (a4 == 0.0)
    {
      v46 = 0xE500000000000000;
    }

    else
    {
      v46 = 0xE400000000000000;
    }

    v47 = sub_1BC98FE38(v44, v46, &v95);
    v11 = v45;

    *(v43 + 4) = v47;
    _os_log_impl(&dword_1BC940000, v40, v41, "Performing time scale animation on background; type=%s", v43, 0xCu);
    v48 = v86;
    __swift_destroy_boxed_opaque_existential_1(*&v86);
    MEMORY[0x1BFB31B10](*&v48, -1, -1);
    MEMORY[0x1BFB31B10](v43, -1, -1);
  }

  v86 = v18;
  v49 = v5[6];
  v50 = sub_1BCE1D6A0();
  [v49 setFromValue_];

  v51 = sub_1BCE1D6A0();
  [v49 setToValue_];

  v96.super.super.super.super.isa = v49;
  SpringModel.init(springAnimation:)(&v95, v96);
  sub_1BCE19050();
  v52 = v5[5];
  if (v52)
  {
    [v52 invalidate];
  }

  v85 = objc_opt_self();
  v53 = v93;
  (*(v93 + 16))(v92, v91, v11);
  v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v84 = v11;
  v55 = (v12 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 51) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v87;
  *(v59 + 16) = v86;
  *(v59 + 24) = v60;
  (*(v53 + 32))(v59 + v54, v92, v11);
  *(v59 + v55) = v5;
  v61 = (v59 + v56);
  v62 = *&v95.B;
  v63 = *&v95.w0;
  v61[1] = *&v95.wd;
  v61[2] = v62;
  *v61 = v63;
  v64 = (v59 + v57);
  *v64 = v19;
  v64[1] = a4;
  v65 = v88;
  *(v59 + v58) = v89;
  v66 = (v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8));
  v67 = v90;
  *v66 = v65;
  v66[1] = v67;
  aBlock[4] = sub_1BCA73F60;
  aBlock[5] = v59;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BCD7F200;
  aBlock[3] = &block_descriptor_2;
  v68 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1BCA74034(v65);

  v69 = [v85 scheduledTimerWithTimeInterval:1 repeats:v68 block:0.0333333333];
  _Block_release(v68);
  swift_unknownObjectRelease();
  (*(v93 + 8))(v91, v84);
  v70 = v5[5];
  v5[5] = v69;
}

uint64_t sub_1BC98FBD0()
{
  v1 = sub_1BCE19060();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 51) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1BC98FCB0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ForegroundEffectCoordinator();
  sub_1BC95D098(&qword_1EDA18A08, type metadata accessor for ForegroundEffectCoordinator);
  result = sub_1BCE1B500();
  *a1 = result;
  return result;
}

uint64_t sub_1BC98FDB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BC98FDF8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1BC98FE38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BC9901A4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1BC990578(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_1BC98FEFC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BC98FF50(a1, a2);
  sub_1BC990318(&unk_1F3B4C840);
  return v3;
}

uint64_t sub_1BC98FF50(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1BCE1D3E0())
  {
    result = sub_1BC9902A8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1BCE1DD10();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1BCE1DDA0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BC990068()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (*(v1 + 28) == 1)
    {
      if (qword_1EDA1BC90 != -1)
      {
        swift_once();
      }

      v2 = sub_1BCE1ACC0();
      __swift_project_value_buffer(v2, qword_1EDA1BC98);
      v3 = sub_1BCE1ACA0();
      v4 = sub_1BCE1D8D0();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_1BC940000, v3, v4, "The effect was updated while frozen - disabling FGFX rendering until the next VFX render.", v5, 2u);
        MEMORY[0x1BFB31B10](v5, -1, -1);
      }

      sub_1BCA30280();
    }
  }

  return result;
}

unint64_t sub_1BC9901A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BC98FEFC(a5, a6);
    *a1 = v9;
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
    result = sub_1BCE1DDA0();
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

void *sub_1BC9902A8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1BC990318(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1BCADEBA8(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

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

Swift::Void __swiftcall WeatherVFXConditionBackground.reset(animated:)(Swift::Bool animated)
{
  v2 = sub_1BCE1D050();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  sub_1BC9905D4();
  *v8 = sub_1BCE1D9B0();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v2);
  v9 = sub_1BCE1D070();
  (*(v4 + 8))(v8, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (animated)
  {
    if (qword_1EDA1E928 == -1)
    {
LABEL_4:

      goto LABEL_5;
    }

LABEL_7:
    OUTLINED_FUNCTION_1_10();
    goto LABEL_4;
  }

LABEL_5:
  sub_1BCE1B6E0();
}

uint64_t sub_1BC990578(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1BC9905D4()
{
  result = qword_1EDA1C128;
  if (!qword_1EDA1C128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA1C128);
  }

  return result;
}

uint64_t static BackgroundAnimationKind.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    if (v3 != 2)
    {
      v4 = v3 ^ v2 ^ 1;
      return v4 & 1;
    }

    goto LABEL_5;
  }

  if (v3 != 2)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v4 = 1;
  return v4 & 1;
}

uint64_t sub_1BC990658()
{
  result = sub_1BCE1CF10();
  qword_1EDA2F000 = result;
  return result;
}

uint64_t WeatherServiceConfigurationProvider.configuration.getter()
{
  v1 = sub_1BCE1AB50();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_1BCE1AAA0();
  return sub_1BC9907EC(v3);
}

uint64_t sub_1BC990780()
{
  WeatherVFXConditionBackground.isLoaded.setter();
  WeatherVFXConditionBackground.backgroundEffectModel.setter();
  return WeatherVFXConditionBackground.collisionEffectModel.setter();
}

uint64_t sub_1BC9907EC(uint64_t a1)
{
  sub_1BCE1AB00();
  sub_1BCE1AAD0();
  sub_1BCE1AAE0();
  sub_1BCE1AB40();
  sub_1BCE1AB30();
  sub_1BCE1AAC0();
  sub_1BCE1AB10();
  sub_1BCE1AB20();
  sub_1BCE1AAF0();
  sub_1BCE19DE0();
  v2 = sub_1BCE1AB50();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t WeatherVFXConditionBackground.isLoaded.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1BCE1B460();
}

uint64_t sub_1BC990974()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1BCE1B460();
}

uint64_t BackgroundAnimationData.Model.location.getter()
{
  OUTLINED_FUNCTION_19_1();
  sub_1BCE1A6F0();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_10_1();

  return v1(v0);
}

uint64_t BackgroundAnimationData.Model.options.getter()
{
  v2 = OUTLINED_FUNCTION_19_1();
  v3 = *(type metadata accessor for BackgroundAnimationData.Model(v2) + 48);
  memcpy(__dst, (v1 + v3), 0x59uLL);
  memcpy(v0, (v1 + v3), 0x59uLL);
  return sub_1BC96A9A0(__dst, &v5);
}

void static AttributedString.makeStyledString(markdown:font:color:)()
{
  OUTLINED_FUNCTION_20_0();
  v53 = v1;
  v54 = v2;
  v47 = v3;
  v48 = v4;
  v52 = v5;
  v6 = sub_1BCE18B80();
  v7 = OUTLINED_FUNCTION_14(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v45[1] = v8;
  OUTLINED_FUNCTION_13();
  sub_1BCE18AF0();
  OUTLINED_FUNCTION_2();
  v50 = v10;
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v49 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09490);
  OUTLINED_FUNCTION_14(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - v14;
  v46 = sub_1BCE189B0();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_7_16();
  v19 = sub_1BCE189C0();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  v26 = sub_1BCE189E0();
  v27 = OUTLINED_FUNCTION_14(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A48);
  v29 = OUTLINED_FUNCTION_14(v28);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v45 - v33;
  swift_getKeyPath();
  (*(v21 + 104))(v25, *MEMORY[0x1E6968750], v19);
  (*(v17 + 104))(v0, *MEMORY[0x1E6968728], v46);

  sub_1BCE189D0();
  v35 = sub_1BCE18E40();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v35);
  sub_1BC9922BC();
  sub_1BCE18AC0();
  v36 = v51;
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v51);
  sub_1BCBDA45C();
  v37 = OUTLINED_FUNCTION_44_4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, v38, v36);
  v41 = v49;
  v40 = v50;
  if (EnumTagSinglePayload == 1)
  {

    sub_1BCE18B70();
    sub_1BCE18B00();
    v42 = OUTLINED_FUNCTION_44_4();
    if (__swift_getEnumTagSinglePayload(v42, v43, v36) != 1)
    {
      sub_1BC94C05C(v31, &qword_1EBD09A48);
    }
  }

  else
  {
    (*(v50 + 32))(v49, v31, v36);
  }

  v44 = sub_1BC990F68();
  sub_1BC9910C0(v41, v44, v53, v54, v52);

  (*(v40 + 8))(v41, v36);
  sub_1BC94C05C(v34, &qword_1EBD09A48);
  OUTLINED_FUNCTION_21();
}

void *sub_1BC990F68()
{
  sub_1BCE19260();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_0();
  v1 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  sub_1BCE191B0();
  sub_1BCE19270();
  (*(v3 + 8))(v7, v1);
  LOBYTE(v7) = sub_1BCE19240();
  v8 = OUTLINED_FUNCTION_40();
  v9(v8);
  if (v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    return &unk_1F3B4D810;
  }
}

uint64_t sub_1BC9910C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v98 = a4;
  v138 = a3;
  v108 = a2;
  v128 = a1;
  v90 = a5;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ABD0);
  v134 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v97 = &v89 - v5;
  v6 = sub_1BCE18B80();
  v131 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v114 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1BCE18950();
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1BCE18C10();
  v129 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v101 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07978);
  v92 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v135 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v121 = &v89 - v12;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ABC8);
  v115 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v89 - v13;
  v127 = sub_1BCE18A60();
  v123 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BCE18A40();
  v109 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v117 = &v89 - v18;
  v125 = sub_1BCE18A70();
  v19 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A0C8);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v89 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ABD8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v89 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ABE0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v89 - v30;
  v132 = sub_1BCE18AF0();
  v32 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v116 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v136 = &v89 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v124 = &v89 - v37;
  sub_1BCE18AE0();
  v137 = swift_allocBox();
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v6);
  v99 = v31;
  v140 = v6;
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v6);
  v100 = v28;
  v39 = v101;
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v102);
  sub_1BCE18A90();
  v40 = v125;
  (*(v19 + 16))(v25, v21, v125);
  v41 = *(v23 + 44);
  v42 = sub_1BC992274(&qword_1EDA1F670, MEMORY[0x1E69687C8]);
  sub_1BCE1D6F0();
  (*(v19 + 8))(v21, v40);
  v130 = 0;
  ++v123;
  v113 = (v109 + 2);
  v112 = (v109 + 4);
  v111 = (v115 + 8);
  v110 = (v129 + 1);
  v129 = (v131 + 1);
  v89 = v32;
  v131 = (v32 + 8);
  v93 = (v134 + 8);
  ++v109;
  v115 = v41;
  v118 = v15;
  v94 = v25;
  v91 = v42;
  while (1)
  {
    v43 = v126;
    sub_1BCE1D750();
    sub_1BC992274(&qword_1EDA1F678, MEMORY[0x1E69687B0]);
    v44 = v127;
    v45 = v42;
    v46 = sub_1BCE1D210();
    (*v123)(v43, v44);
    if (v46)
    {
      break;
    }

    v47 = sub_1BCE1D780();
    v48 = v117;
    (*v113)(v117);
    v47(&v141, 0);
    sub_1BCE1D760();
    (*v112)(v133, v48, v15);
    swift_getKeyPath();
    sub_1BC9922BC();
    v49 = v119;
    sub_1BCE18A20();

    swift_getKeyPath();
    sub_1BC992320();
    v50 = v120;
    sub_1BCE18CD0();

    (*v111)(v49, v50);
    v51 = v141;
    v42 = v45;
    if (!v141)
    {
      v79 = v138;
      goto LABEL_11;
    }

    v52 = v108;

    v53 = v130;
    v54 = sub_1BCBD9E68(v51, v52);
    v55 = v53;
    LOBYTE(v52) = sub_1BCACBA1C(v54);

    if (v52)
    {
      v56 = v121;
      sub_1BCE18A30();
      v105 = sub_1BC957184(&qword_1EDA1C1D8, &qword_1EBD07978);
      sub_1BCE18B50();
      v57 = v56;
      v58 = v138;
      sub_1BC94C05C(v57, &qword_1EBD07978);
      sub_1BCE18BE0();
      (*v110)(v39, v122);
      sub_1BC992274(&qword_1EDA1EC28, MEMORY[0x1E6968678]);
      v141 = sub_1BCE1D480();
      v142 = v59;
      sub_1BC970820();
      v60 = sub_1BCE1DB60();
      v62 = v61;

      v63 = v114;
      sub_1BCE18B70();
      v64 = v116;
      sub_1BCE18B00();
      sub_1BCBD6400(v58, v98, v63);
      v65 = sub_1BC992274(&qword_1EDA1EC08, MEMORY[0x1E6968848]);
      v66 = v136;
      v67 = v132;
      v107 = v65;
      sub_1BCE18C50();
      v104 = *v129;
      v104(v63, v140);
      v106 = *v131;
      v106(v64, v67);
      v141 = v60;
      v142 = v62;
      v68 = v97;
      sub_1BCBD675C(v97);
      sub_1BCB963D0();
      sub_1BC957184(&qword_1EDA1BCF8, &qword_1EBD0ABD0);
      v69 = v102;
      v70 = v66;
      v71 = sub_1BCE1D1C0();
      (*v93)(v68, v69);

      v72 = sub_1BCBD1FF8(v71, v66);
      v130 = v55;

      v73 = *(v72 + 16);
      if (v73)
      {
        v74 = (*(v92 + 80) + 32) & ~*(v92 + 80);
        v103 = v72;
        v75 = v72 + v74;
        v134 = *(v92 + 72);
        v76 = v104;
        do
        {
          sub_1BCBDA45C();
          sub_1BC992434(v138, v63);
          v77 = sub_1BCE18B40();
          sub_1BCE18C00();
          v78 = v135;
          v76(v63, v140);
          v77(&v141, 0);
          v70 = v136;
          sub_1BC94C05C(v78, &qword_1EBD07978);
          v75 += v134;
          --v73;
        }

        while (v73);

        v42 = v91;
      }

      else
      {
      }

      v87 = v132;
      sub_1BCE18AA0();
      v15 = v118;
      (*v109)(v133, v118);
      v106(v70, v87);
      v39 = v101;
      v25 = v94;
    }

    else
    {
      v130 = v53;
      v79 = v138;
LABEL_11:
      v80 = v129;
      v81 = v121;
      v82 = v133;
      sub_1BCE18A30();
      sub_1BC957184(&qword_1EDA1C1D8, &qword_1EBD07978);
      sub_1BCE18B50();
      sub_1BC94C05C(v81, &qword_1EBD07978);
      v83 = v114;
      sub_1BC992434(v79, v114);
      sub_1BC992274(&qword_1EDA1BF60, MEMORY[0x1E6968968]);
      v84 = v116;
      v85 = v122;
      sub_1BCE18C50();
      (*v80)(v83, v140);
      (*v110)(v39, v85);
      sub_1BC992274(&qword_1EDA1EC08, MEMORY[0x1E6968848]);
      v86 = v132;
      sub_1BCE18AA0();
      (*v131)(v84, v86);
      v15 = v118;
      (*v109)(v82, v118);
    }
  }

  sub_1BC94C05C(v25, &qword_1EBD0A0C8);
  sub_1BC94C05C(v100, &qword_1EBD0ABD8);
  sub_1BC94C05C(v99, &qword_1EBD0ABE0);
  (*(v89 + 32))(v90, v124, v132);
}

uint64_t sub_1BC992274(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BC9922BC()
{
  result = qword_1EDA1EF78;
  if (!qword_1EDA1EF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EF78);
  }

  return result;
}

unint64_t sub_1BC992320()
{
  result = qword_1EDA1EDC0;
  if (!qword_1EDA1EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EDC0);
  }

  return result;
}

uint64_t static StyledVariableAttribute.name.getter()
{
  swift_beginAccess();
  v0 = *aStyles_0;

  return v0;
}

unint64_t sub_1BC9923E0()
{
  result = qword_1EDA1EDC8[0];
  if (!qword_1EDA1EDC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA1EDC8);
  }

  return result;
}

uint64_t sub_1BC992434@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ABE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  swift_projectBox();
  sub_1BCBDA45C();
  v10 = sub_1BCE18B80();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a2, v9, v10);
  }

  sub_1BC94C05C(v9, &qword_1EBD0ABE0);
  sub_1BCE18B70();
  v12[1] = a1;
  sub_1BC992630();

  sub_1BCE18BA0();
  (*(*(v10 - 8) + 16))(v6, a2, v10);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  swift_beginAccess();
  return sub_1BC992684();
}

unint64_t sub_1BC992630()
{
  result = qword_1EDA1EF80;
  if (!qword_1EDA1EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EF80);
  }

  return result;
}

uint64_t sub_1BC992684()
{
  OUTLINED_FUNCTION_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_4();
  (*(v3 + 40))(v0, v1);
  return v0;
}

void Measurement<>.converted(rounded:)()
{
  OUTLINED_FUNCTION_20_0();
  v14 = v2;
  v15 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_15();
  v8 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_36_0();
  if (qword_1EDA1F658 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  sub_1BCE1A9F0();

  sub_1BCE1A3E0();
  sub_1BCE1A3A0();
  v12 = sub_1BCE1A410();
  sub_1BCE18680();

  if (v14)
  {
    sub_1BCE185E0();
    sub_1BCE185F0();
  }

  sub_1BCE185E0();
  if (v13 == 0.0)
  {
    sub_1BCE185F0();
  }

  (*(v6 + 32))(v15, v0, v4);

  (*(v10 + 8))(v1, v8);
  OUTLINED_FUNCTION_21();
}

double sub_1BC9928F0(double a1)
{
  v50 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v52 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();
  v49 = v7 - v8;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v45 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_2();
  v51 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_3();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_1();
  v46 = v19;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_1();
  v47 = v21;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_11_4();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v24);
  if (qword_1EDA1C5C0 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v48 = v17;
  v25 = type metadata accessor for WeatherDayVarianceViewStyle();
  __swift_project_value_buffer(v25, qword_1EDA1C5C8);
  OUTLINED_FUNCTION_18_24();
  sub_1BC993DE8(v1);
  swift_endAccess();
  if (qword_1EDA1F658 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  sub_1BCE1A9F0();

  v26 = sub_1BCE1A3E0();
  v27 = sub_1BCE1A3A0();
  sub_1BCE1A410();
  OUTLINED_FUNCTION_17_29();

  sub_1BCE185E0();
  if (v28 == 0.0)
  {
    OUTLINED_FUNCTION_13_40();
    sub_1BCE185F0();
  }

  v29 = OUTLINED_FUNCTION_4_64();
  v30(v29);
  v31 = OUTLINED_FUNCTION_8_56();
  v27(v31);
  v32 = OUTLINED_FUNCTION_7_59();
  v11(v32);
  sub_1BCE185E0();
  v34 = v33;
  v35 = OUTLINED_FUNCTION_15_34();
  v27(v35);
  OUTLINED_FUNCTION_16_32();
  sub_1BC9945F8(v46);
  swift_endAccess();

  sub_1BCE1A9F0();

  sub_1BCE1A3A0();
  sub_1BCE1A410();
  OUTLINED_FUNCTION_9_50();

  v36 = v26;
  sub_1BCE185E0();
  if (v37 == 0.0)
  {
    OUTLINED_FUNCTION_13_40();
    v36 = v26;
    sub_1BCE185F0();
  }

  v38 = OUTLINED_FUNCTION_14_29();
  v39(v38);
  v40 = OUTLINED_FUNCTION_15_34();
  v27(v40);
  v41 = OUTLINED_FUNCTION_6_58();
  v11(v41);
  sub_1BCE185E0();
  v43 = v42;
  (v27)(v36, v12);
  return (a1 - v34) / vabdd_f64(v34, v43);
}

uint64_t WeatherDayVarianceView.init(weekMaxTemp:weekMinTemp:dayHighTemp:dayLowTemp:currentTemp:isDaylight:temperatureGradient:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08438);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for WeatherDayVarianceView();
  *(a5 + v18[6]) = a6;
  *(a5 + v18[7]) = a7;
  *(a5 + v18[8]) = a8;
  *(a5 + v18[9]) = a9;
  v19 = a5 + v18[10];
  *v19 = a1;
  v19[8] = a2 & 1;
  *(a5 + v18[11]) = a3;
  *(a5 + v18[12]) = a4;
  v20 = sub_1BC992CEC(a1, a2 & 1, a8, a9);
  v36 = v21 & 1;
  v22 = sub_1BC992CEC(a1, a2 & 1, a6, a7);
  v35 = v23 & 1;

  v24 = sub_1BC9928F0(a9);
  v25 = sub_1BC99477C(a8, v24);
  v26 = a6 - a7;
  v27 = 0.0;
  v28 = 1.0;
  if (v26 > 0.0)
  {
    v27 = (a9 - a7) / v26;
    v28 = (a8 - a9) / v26;
  }

  v29 = Gradient.clipped(from:to:)(a4);

  v30 = Gradient.clipped(from:to:)(v29);

  v32 = round(a8) - round(a9);
  v33 = v32 >= 0.0;
  v34 = a5 + v18[5];
  *v34 = v20;
  if (v32 >= 1.0)
  {
    v33 = 0;
  }

  v34[8] = v36;
  if (a2)
  {
    v33 = 0;
  }

  *(v34 + 2) = v22;
  v34[24] = v35;
  *(v34 + 4) = v24;
  *(v34 + 5) = v25;
  *(v34 + 6) = v27;
  *(v34 + 7) = v28;
  *(v34 + 8) = v30;
  v34[72] = v33;
  return result;
}

uint64_t type metadata accessor for WeatherDayVarianceView()
{
  result = qword_1EDA1E850;
  if (!qword_1EDA1E850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1BC992F64(uint64_t a1, char a2, double result, double a4)
{
  if ((a2 & 1) == 0)
  {
    v4 = result - a4;
    if (v4 <= 0.0)
    {
      return a4 - *&a1 + 100.0;
    }

    else
    {
      return (*&a1 - a4) / v4 * 100.0;
    }
  }

  return result;
}

BOOL static WeatherConditionBackgroundModelFactoryInput.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v138 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v132 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v130 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  OUTLINED_FUNCTION_14(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_16();
  v131 = v9;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_16();
  v135 = v11;
  OUTLINED_FUNCTION_13();
  v141 = sub_1BCE19A10();
  OUTLINED_FUNCTION_2();
  v137 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v133 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC10);
  OUTLINED_FUNCTION_14(v15);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_10_16();
  v136 = v17;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC18);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10_16();
  v140 = v19;
  OUTLINED_FUNCTION_13();
  v20 = sub_1BCE1A6F0();
  OUTLINED_FUNCTION_2();
  v144 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v142 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC08);
  OUTLINED_FUNCTION_14(v24);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_10_16();
  v143 = v26;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_10_16();
  v146 = v28;
  OUTLINED_FUNCTION_13();
  v152 = sub_1BCE199D0();
  OUTLINED_FUNCTION_2();
  v149 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_1();
  v147 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08688);
  OUTLINED_FUNCTION_14(v32);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_10_16();
  v148 = v34;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B948);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_10_16();
  v151 = v36;
  OUTLINED_FUNCTION_13();
  type metadata accessor for BackgroundMoonData();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07870);
  OUTLINED_FUNCTION_14(v40);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v127 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v127 - v46;
  v48 = a1;
  v49 = *a1;
  v153 = a2;
  v50 = *a2;
  if (v49 == 2)
  {
    if (v50 != 2)
    {
      return 0;
    }

LABEL_6:
    v129 = v20;
    v52 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
    v53 = v153;
    if (sub_1BCE19010())
    {
      v54 = *(v52 + 24);
      v55 = &a1[v54];
      v56 = a1[v54 + 8];
      v57 = &v53[v54];
      v58 = v57[8];
      if (v56 != 2)
      {
        if (v58 == 2 || ((v56 ^ v58) & 1) != 0 || vabdd_f64(*v55, *v57) >= 0.0001)
        {
          return 0;
        }

LABEL_9:
        v128 = v52;
        v59 = *(v52 + 28);
        v60 = *(v44 + 48);
        sub_1BC952B1C(&v48[v59], v47, &qword_1EBD07870);
        sub_1BC952B1C(&v153[v59], &v47[v60], &qword_1EBD07870);
        OUTLINED_FUNCTION_4_5(v47);
        if (v61)
        {
          OUTLINED_FUNCTION_4_5(&v47[v60]);
          if (v61)
          {
            sub_1BC94C05C(v47, &qword_1EBD07870);
            goto LABEL_23;
          }
        }

        else
        {
          sub_1BC952B1C(v47, v43, &qword_1EBD07870);
          OUTLINED_FUNCTION_4_5(&v47[v60]);
          if (!v61)
          {
            sub_1BC993FA4(&v47[v60], v39, type metadata accessor for BackgroundMoonData);
            v64 = static BackgroundMoonData.== infix(_:_:)(v43, v39);
            sub_1BC969F2C(v39, type metadata accessor for BackgroundMoonData);
            sub_1BC969F2C(v43, type metadata accessor for BackgroundMoonData);
            sub_1BC94C05C(v47, &qword_1EBD07870);
            if ((v64 & 1) == 0)
            {
              return 0;
            }

LABEL_23:
            v65 = v151;
            v66 = *(v150 + 48);
            OUTLINED_FUNCTION_38_2();
            sub_1BC952B1C(v67, v68, v69);
            OUTLINED_FUNCTION_38_2();
            sub_1BC952B1C(v70, v71, v72);
            v73 = v152;
            OUTLINED_FUNCTION_29_0(v65, 1, v152);
            if (v61)
            {
              OUTLINED_FUNCTION_4_5(v65 + v66);
              if (v61)
              {
                sub_1BC94C05C(v65, &qword_1EBD08688);
LABEL_37:
                if (v48[*(v128 + 36)] != v153[*(v128 + 36)])
                {
                  return 0;
                }

                v65 = v146;
                v79 = *(v145 + 48);
                OUTLINED_FUNCTION_38_2();
                sub_1BC952B1C(v80, v81, v82);
                OUTLINED_FUNCTION_38_2();
                sub_1BC952B1C(v83, v84, v85);
                v86 = v129;
                OUTLINED_FUNCTION_29_0(v65, 1, v129);
                if (v61)
                {
                  OUTLINED_FUNCTION_4_5(v65 + v79);
                  if (v61)
                  {
                    sub_1BC94C05C(v65, &qword_1EBD0BC08);
                    goto LABEL_48;
                  }
                }

                else
                {
                  sub_1BC952B1C(v65, v143, &qword_1EBD0BC08);
                  OUTLINED_FUNCTION_4_5(v65 + v79);
                  if (!v87)
                  {
                    (*(v144 + 32))(v142, v65 + v79, v86);
                    sub_1BC994BC8(&unk_1EDA1BD40, 255, MEMORY[0x1E69E17A8]);
                    OUTLINED_FUNCTION_17_25();
                    v90 = OUTLINED_FUNCTION_14_25();
                    (unk_1BCE5D558)(v90);
                    v91 = OUTLINED_FUNCTION_63();
                    (unk_1BCE5D558)(v91);
                    sub_1BC94C05C(v65, &qword_1EBD0BC08);
                    if ((&qword_1EBD0BC08 & 1) == 0)
                    {
                      return 0;
                    }

LABEL_48:
                    v92 = v128;
                    v93 = *(v128 + 44);
                    memcpy(v157, &v48[v93], 0x59uLL);
                    memcpy(v156, &v48[v93], 0x59uLL);
                    v94 = *(v128 + 44);
                    v95 = v153;
                    memcpy(v158, &v153[v94], 0x59uLL);
                    memcpy(v155, &v153[v94], 0x59uLL);
                    sub_1BC96A9A0(v157, v154);
                    sub_1BC96A9A0(v158, v154);
                    LOBYTE(v94) = static WeatherConditionBackgroundOptions.== infix(_:_:)(v156, v155);
                    memcpy(v159, v155, 0x59uLL);
                    sub_1BC9812B4(v159);
                    memcpy(__dst, v156, 0x59uLL);
                    sub_1BC9812B4(__dst);
                    if ((v94 & 1) == 0)
                    {
                      return 0;
                    }

                    v96 = *(v92 + 48);
                    v97 = v48[v96];
                    v98 = v95[v96];
                    if (v97 >> 6)
                    {
                      if (v97 >> 6 != 1)
                      {
                        if (v98 != 128)
                        {
                          return 0;
                        }

                        goto LABEL_57;
                      }

                      if ((v98 & 0xC0) != 0x40)
                      {
                        return 0;
                      }
                    }

                    else if (v98 > 0x3F)
                    {
                      return 0;
                    }

                    if ((v98 ^ v97))
                    {
                      return 0;
                    }

LABEL_57:
                    v99 = v140;
                    v100 = *(v139 + 48);
                    OUTLINED_FUNCTION_38_2();
                    sub_1BC952B1C(v101, v102, v103);
                    OUTLINED_FUNCTION_38_2();
                    sub_1BC952B1C(v104, v105, v106);
                    v107 = v141;
                    OUTLINED_FUNCTION_29_0(v99, 1, v141);
                    if (v61)
                    {
                      OUTLINED_FUNCTION_4_5(v99 + v100);
                      if (v61)
                      {
                        sub_1BC94C05C(v99, &qword_1EBD0BC10);
LABEL_67:
                        v111 = v135;
                        v112 = *(v134 + 48);
                        OUTLINED_FUNCTION_38_2();
                        sub_1BC952B1C(v113, v114, v115);
                        OUTLINED_FUNCTION_38_2();
                        sub_1BC952B1C(v116, v117, v118);
                        OUTLINED_FUNCTION_29_0(v111, 1, v138);
                        if (v61)
                        {
                          OUTLINED_FUNCTION_29_0(v111 + v112, 1, v138);
                          if (v61)
                          {
                            sub_1BC94C05C(v111, &qword_1EBD07868);
                            return 1;
                          }
                        }

                        else
                        {
                          v119 = v131;
                          sub_1BC952B1C(v111, v131, &qword_1EBD07868);
                          OUTLINED_FUNCTION_29_0(v111 + v112, 1, v138);
                          if (!v120)
                          {
                            v121 = v132;
                            v122 = v111 + v112;
                            v123 = v130;
                            v124 = v138;
                            (*(v132 + 32))(v130, v122, v138);
                            sub_1BC994BC8(&qword_1EDA1EF38, 255, MEMORY[0x1E6969530]);
                            v125 = sub_1BCE1D210();
                            v126 = *(v121 + 8);
                            v126(v123, v124);
                            v126(v119, v124);
                            sub_1BC94C05C(v111, &qword_1EBD07868);
                            return (v125 & 1) != 0;
                          }

                          (*(v132 + 8))(v119, v138);
                        }

                        v62 = &qword_1EBD08E80;
                        v63 = v111;
                        goto LABEL_33;
                      }
                    }

                    else
                    {
                      v108 = v136;
                      sub_1BC952B1C(v99, v136, &qword_1EBD0BC10);
                      OUTLINED_FUNCTION_4_5(v99 + v100);
                      if (!v109)
                      {
                        (*(v137 + 32))(v133, v99 + v100, v107);
                        sub_1BC994BC8(&qword_1EDA1BEE0, 255, MEMORY[0x1E6984D68]);
                        sub_1BCE1D210();
                        v110 = OUTLINED_FUNCTION_14_25();
                        (unk_1BCE5D560)(v110);
                        (unk_1BCE5D560)(v108, v107);
                        sub_1BC94C05C(v99, &qword_1EBD0BC10);
                        if ((v107 & 1) == 0)
                        {
                          return 0;
                        }

                        goto LABEL_67;
                      }

                      (*(v137 + 8))(v108, v107);
                    }

                    v62 = &qword_1EBD0BC18;
                    v63 = v99;
LABEL_33:
                    sub_1BC94C05C(v63, v62);
                    return 0;
                  }

                  v88 = OUTLINED_FUNCTION_63();
                  v89(v88);
                }

                v62 = &qword_1EBD0BC20;
LABEL_32:
                v63 = v65;
                goto LABEL_33;
              }
            }

            else
            {
              sub_1BC952B1C(v65, v148, &qword_1EBD08688);
              OUTLINED_FUNCTION_4_5(v65 + v66);
              if (!v74)
              {
                (*(v149 + 32))(v147, v65 + v66, v73);
                sub_1BC994BC8(&qword_1EDA1EB78, 255, MEMORY[0x1E6984D30]);
                OUTLINED_FUNCTION_17_25();
                v77 = OUTLINED_FUNCTION_14_25();
                (unk_1BCE4EAA0)(v77);
                v78 = OUTLINED_FUNCTION_63();
                (unk_1BCE4EAA0)(v78);
                sub_1BC94C05C(v65, &qword_1EBD08688);
                if ((&qword_1EBD08688 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_37;
              }

              v75 = OUTLINED_FUNCTION_63();
              v76(v75);
            }

            v62 = &qword_1EBD0B948;
            goto LABEL_32;
          }

          sub_1BC969F2C(v43, type metadata accessor for BackgroundMoonData);
        }

        v62 = &qword_1EBD0BC28;
        v63 = v47;
        goto LABEL_33;
      }

      if (v58 == 2)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  result = 0;
  if (v50 != 2 && ((v50 ^ v49) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1BC993DE8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08690);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  sub_1BC994004(v1, &v11 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1BCBAB4F0(v5);
    v7 = [objc_opt_self() celsius];
    sub_1BCA301DC();
    sub_1BCE185D0();
    sub_1BCBAB4F0(v1);
    OUTLINED_FUNCTION_1_49();
    (*(v8 + 16))(v1, a1, v6);
    return OUTLINED_FUNCTION_4_36(v1, 0);
  }

  else
  {
    OUTLINED_FUNCTION_1_49();
    return (*(v10 + 32))(a1, v5, v6);
  }
}

uint64_t type metadata accessor for WeatherDayVarianceViewStyle()
{
  result = qword_1EDA1E798;
  if (!qword_1EDA1E798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC993FA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1BC994004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static BackgroundMoonData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_3();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E80);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_3();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53[-v24];
  if ((sub_1BCE19010() & 1) == 0)
  {
    goto LABEL_22;
  }

  v56 = v6;
  v26 = type metadata accessor for BackgroundMoonData();
  v57 = a2;
  v55 = v26;
  v27 = *(v26 + 20);
  v28 = *(v18 + 48);
  sub_1BC962464(a1 + v27, v25);
  sub_1BC962464(v57 + v27, &v25[v28]);
  OUTLINED_FUNCTION_8_0(v25);
  if (v29)
  {
    OUTLINED_FUNCTION_8_0(&v25[v28]);
    if (v29)
    {
      sub_1BC94C05C(v25, &qword_1EBD07868);
      goto LABEL_12;
    }

LABEL_10:
    v30 = v25;
LABEL_21:
    sub_1BC94C05C(v30, &qword_1EBD08E80);
LABEL_22:
    v41 = 0;
    return v41 & 1;
  }

  sub_1BC962464(v25, v17);
  OUTLINED_FUNCTION_8_0(&v25[v28]);
  if (v29)
  {
    (*(v56 + 8))(v17, v4);
    goto LABEL_10;
  }

  v31 = v56;
  (*(v56 + 32))(v10, &v25[v28], v4);
  OUTLINED_FUNCTION_0_91();
  sub_1BC9945B0(v32, v33);
  v54 = sub_1BCE1D210();
  v34 = *(v31 + 8);
  v34(v10, v4);
  v34(v17, v4);
  sub_1BC94C05C(v25, &qword_1EBD07868);
  if ((v54 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v35 = v55;
  v36 = v55[6];
  v37 = *(v18 + 48);
  sub_1BC962464(a1 + v36, v22);
  v38 = v57 + v36;
  v39 = v57;
  sub_1BC962464(v38, v22 + v37);
  OUTLINED_FUNCTION_8_0(v22);
  if (v29)
  {
    OUTLINED_FUNCTION_8_0(v22 + v37);
    if (v29)
    {
      sub_1BC94C05C(v22, &qword_1EBD07868);
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  sub_1BC962464(v22, v14);
  OUTLINED_FUNCTION_8_0(v22 + v37);
  if (v40)
  {
    (*(v56 + 8))(v14, v4);
LABEL_20:
    v30 = v22;
    goto LABEL_21;
  }

  v43 = v56;
  (*(v56 + 32))(v10, v22 + v37, v4);
  OUTLINED_FUNCTION_0_91();
  sub_1BC9945B0(v44, v45);
  v46 = sub_1BCE1D210();
  v47 = *(v43 + 8);
  v47(v10, v4);
  v47(v14, v4);
  v39 = v57;
  sub_1BC94C05C(v22, &qword_1EBD07868);
  if ((v46 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  OUTLINED_FUNCTION_10_53(v35[7]);
  if (!v29)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_10_53(v35[8]);
  if (!v29)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_10_53(v35[9]);
  if (!v29)
  {
    goto LABEL_22;
  }

  v48 = v35[10];
  v49 = *(a1 + v48);
  v50 = *(a1 + v48 + 8);
  v51 = (v39 + v48);
  if (v49 == *v51 && v50 == v51[1])
  {
    v41 = 1;
  }

  else
  {
    v41 = sub_1BCE1E090();
  }

  return v41 & 1;
}

uint64_t sub_1BC994520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC994568(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC9945B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC9945F8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08690);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(type metadata accessor for WeatherDayVarianceViewStyle() + 20);
  sub_1BC994004(v1 + v6, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    sub_1BCBAB4F0(v5);
    v8 = [objc_opt_self() celsius];
    sub_1BCA301DC();
    sub_1BCE185D0();
    sub_1BCBAB4F0(v1 + v6);
    OUTLINED_FUNCTION_1_49();
    (*(v9 + 16))(v1 + v6, a1, v7);
    return OUTLINED_FUNCTION_4_36(v1 + v6, 0);
  }

  else
  {
    OUTLINED_FUNCTION_1_49();
    return (*(v11 + 32))(a1, v5, v7);
  }
}

double sub_1BC99477C(double a1, double a2)
{
  v52 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v54 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  v51 = v9 - v10;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v47 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_2();
  v53 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_1();
  v48 = v21;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_1();
  v49 = v23;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_11_4();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v26);
  if (qword_1EDA1C5C0 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v50 = v19;
  v27 = type metadata accessor for WeatherDayVarianceViewStyle();
  __swift_project_value_buffer(v27, qword_1EDA1C5C8);
  OUTLINED_FUNCTION_18_24();
  sub_1BC993DE8(v2);
  swift_endAccess();
  if (qword_1EDA1F658 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  sub_1BCE1A9F0();

  v28 = sub_1BCE1A3E0();
  v29 = sub_1BCE1A3A0();
  sub_1BCE1A410();
  OUTLINED_FUNCTION_17_29();

  sub_1BCE185E0();
  if (v30 == 0.0)
  {
    OUTLINED_FUNCTION_13_40();
    sub_1BCE185F0();
  }

  v31 = OUTLINED_FUNCTION_4_64();
  v32(v31);
  v33 = OUTLINED_FUNCTION_8_56();
  v29(v33);
  v34 = OUTLINED_FUNCTION_7_59();
  v13(v34);
  sub_1BCE185E0();
  v36 = v35;
  v37 = OUTLINED_FUNCTION_15_34();
  v29(v37);
  OUTLINED_FUNCTION_16_32();
  sub_1BC9945F8(v48);
  swift_endAccess();

  sub_1BCE1A9F0();

  sub_1BCE1A3A0();
  sub_1BCE1A410();
  OUTLINED_FUNCTION_9_50();

  v38 = v28;
  sub_1BCE185E0();
  if (v39 == 0.0)
  {
    OUTLINED_FUNCTION_13_40();
    v38 = v28;
    sub_1BCE185F0();
  }

  v40 = OUTLINED_FUNCTION_14_29();
  v41(v40);
  v42 = OUTLINED_FUNCTION_15_34();
  v29(v42);
  v43 = OUTLINED_FUNCTION_6_58();
  v13(v43);
  sub_1BCE185E0();
  v45 = v44;
  (v29)(v38, v14);
  return (a1 - v36) / vabdd_f64(v36, v45) - a2;
}

uint64_t sub_1BC994B80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC994BC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC994C10(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BC994C58()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_26_5(v1, v2, v3);
  v4 = sub_1BCE19540();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_0();
  v41 = v8;
  OUTLINED_FUNCTION_15();
  v10 = MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_4(v10, v11, v12, v13, v14, v15, v16, v17, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16_17();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CA0) - 8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_12_17();
  v22(v21);
  v23 = v4;
  OUTLINED_FUNCTION_3_29();
  v24 = &off_1BCE4F8E0;
  sub_1BC957184(v25, &qword_1EBD085A8);
  sub_1BCE1D4B0();
  v26 = *(v19 + 44);
  OUTLINED_FUNCTION_2_21();
  sub_1BC957184(v27, &qword_1EBD085A8);
  OUTLINED_FUNCTION_21_9();
  while (1)
  {
    OUTLINED_FUNCTION_29_2();
    sub_1BCE1D750();
    if (*&v0[v26] == v40)
    {
      sub_1BC94C05C(v0, &qword_1EBD08CA0);
      v34 = 1;
      v24 = v37;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_23_7();
    v28 = OUTLINED_FUNCTION_19_10();
    v29(v28);
    (v0)(&v40, 0);
    OUTLINED_FUNCTION_30_0();
    v30 = OUTLINED_FUNCTION_11_18();
    v23(v30);
    v31 = v38(v0);
    if (v39)
    {
      MEMORY[0xC00052CC8](v41, v6);
      sub_1BC94C05C(v0, &qword_1EBD08CA0);
      goto LABEL_10;
    }

    if (v31)
    {
      break;
    }

    v32 = OUTLINED_FUNCTION_18_11();
    v33(v32);
  }

  sub_1BC94C05C(v0, &qword_1EBD08CA0);
  v35 = OUTLINED_FUNCTION_17_11();
  v23(v35);
  v23 = v6;
  v34 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v24, v34, 1, v23);
LABEL_10:
  OUTLINED_FUNCTION_17_1();
}

uint64_t sub_1BC994F48()
{
  v0 = sub_1BCE19060();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BCE193E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE19390();
  sub_1BCE194F0();
  v8 = sub_1BCE19380();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

char *sub_1BC9950E0(char *a1, int64_t a2, char a3)
{
  result = sub_1BCA157E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t Gradient.clipped(from:to:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1BC9950E0(0, v1, 0);
    v3 = a1 + 40;
    do
    {

      v4 = sub_1BCE1CE50();
      v6 = v5;
      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1BC9950E0((v7 > 1), v8 + 1, 1);
      }

      *(v11 + 16) = v8 + 1;
      v9 = v11 + 16 * v8;
      *(v9 + 32) = v4;
      *(v9 + 40) = v6;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return sub_1BCE1CE60();
}

uint64_t ScaledValue.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = sub_1BCE1B7E0();
  OUTLINED_FUNCTION_3_6();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  OUTLINED_FUNCTION_3_6();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v20 - v16;
  v20[0] = *(a1 + 40);
  sub_1BCC334D4(v8);
  sub_1BC996260();
  (*(v5 + 8))(v8, v3);
  sub_1BCE1D170();
  sub_1BCE1D6E0();
  v18 = *(v11 + 8);
  v18(v14, v9);
  sub_1BCE1DE40();
  return (v18)(v17, v9);
}

uint64_t ForegroundEffect.init(for:at:currentWeather:weatherCondition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v120 = a5;
  sub_1BCE188F0();
  OUTLINED_FUNCTION_2();
  v115 = v10;
  v116 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v114 = v12 - v11;
  sub_1BCE19470();
  OUTLINED_FUNCTION_2();
  v112 = v14;
  v113 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v117 = v19;
  v118 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v119 = (v21 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08688);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v109 - v23;
  v25 = sub_1BCE199D0();
  OUTLINED_FUNCTION_2();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v109 - v32;
  sub_1BC996B70(a4, v24);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    sub_1BC996FF0(a4);
    sub_1BCE196E0();
    OUTLINED_FUNCTION_0_4();
    (*(v34 + 8))(a3);
    sub_1BCE19060();
    OUTLINED_FUNCTION_0_4();
    (*(v35 + 8))(a2);
    sub_1BCE1A6F0();
    OUTLINED_FUNCTION_0_4();
    (*(v36 + 8))(a1);
    result = sub_1BC996FF0(v24);
LABEL_10:
    v47 = 4;
    goto LABEL_11;
  }

  v109 = a3;
  v110 = a2;
  v111 = a1;
  (*(v27 + 32))(v33, v24, v25);
  (*(v27 + 16))(v30, v33, v25);
  v38 = (*(v27 + 88))(v30, v25);
  v39 = v27;
  if (v38 == *MEMORY[0x1E6984CE0])
  {
    goto LABEL_4;
  }

  if (v38 == *MEMORY[0x1E6984C08])
  {
    goto LABEL_8;
  }

  if (v38 == *MEMORY[0x1E6984C10])
  {
    goto LABEL_4;
  }

  v54 = v38 == *MEMORY[0x1E6984CC0] || v38 == *MEMORY[0x1E6984C98] || v38 == *MEMORY[0x1E6984CC8];
  v55 = v119;
  if (v54)
  {
    goto LABEL_21;
  }

  if (v38 == *MEMORY[0x1E6984CD8])
  {
    goto LABEL_24;
  }

  if (v38 == *MEMORY[0x1E6984CE8])
  {
    goto LABEL_4;
  }

  if (v38 == *MEMORY[0x1E6984CA0])
  {
    goto LABEL_8;
  }

  v55 = v119;
  if (v38 == *MEMORY[0x1E6984C58])
  {
    goto LABEL_24;
  }

  if (v38 == *MEMORY[0x1E6984C28])
  {
LABEL_32:
    sub_1BC996FF0(a4);
    sub_1BCE196E0();
    OUTLINED_FUNCTION_0_4();
    (*(v77 + 8))(v109);
    sub_1BCE19060();
    OUTLINED_FUNCTION_0_4();
    (*(v78 + 8))(v110);
    sub_1BCE1A6F0();
    OUTLINED_FUNCTION_0_4();
    (*(v79 + 8))(v111);
    v80 = OUTLINED_FUNCTION_2_56();
    result = v81(v80);
    v47 = 1;
    goto LABEL_11;
  }

  if (v38 == *MEMORY[0x1E6984CD0])
  {
    goto LABEL_21;
  }

  if (v38 == *MEMORY[0x1E6984C78] || v38 == *MEMORY[0x1E6984C80])
  {
LABEL_8:
    sub_1BC996FF0(a4);
    sub_1BCE196E0();
    OUTLINED_FUNCTION_0_4();
    (*(v48 + 8))(v109);
    sub_1BCE19060();
    OUTLINED_FUNCTION_0_4();
    (*(v49 + 8))(v110);
    sub_1BCE1A6F0();
    OUTLINED_FUNCTION_0_4();
    (*(v50 + 8))(v111);
    v51 = *(v39 + 8);
    v52 = v33;
LABEL_9:
    result = v51(v52, v25);
    goto LABEL_10;
  }

  if (v38 == *MEMORY[0x1E6984D10])
  {
    goto LABEL_42;
  }

  if (v38 == *MEMORY[0x1E6984D18])
  {
LABEL_4:
    v40 = v109;
    v41 = sub_1BCC22554();
    sub_1BC996FF0(a4);
    sub_1BCE196E0();
    OUTLINED_FUNCTION_0_4();
    (*(v42 + 8))(v40);
    sub_1BCE19060();
    OUTLINED_FUNCTION_0_4();
    (*(v43 + 8))(v110);
    sub_1BCE1A6F0();
    OUTLINED_FUNCTION_0_4();
    (*(v44 + 8))(v111);
    v45 = OUTLINED_FUNCTION_2_56();
    result = v46(v45);
    goto LABEL_5;
  }

  if (v38 == *MEMORY[0x1E6984C70])
  {
    goto LABEL_8;
  }

  if (v38 == *MEMORY[0x1E6984D20])
  {
    goto LABEL_42;
  }

  if (v38 == *MEMORY[0x1E6984C60])
  {
    goto LABEL_8;
  }

  v101 = v38 == *MEMORY[0x1E6984C18] || v38 == *MEMORY[0x1E6984C30] || v38 == *MEMORY[0x1E6984C38];
  v55 = v119;
  if (v101)
  {
    goto LABEL_21;
  }

  if (v38 == *MEMORY[0x1E6984C88] || v38 == *MEMORY[0x1E6984C68] || v38 == *MEMORY[0x1E6984CA8])
  {
    goto LABEL_32;
  }

  if (v38 == *MEMORY[0x1E6984CB0])
  {
    goto LABEL_8;
  }

  if (v38 == *MEMORY[0x1E6984C90])
  {
    goto LABEL_4;
  }

  if (v38 == *MEMORY[0x1E6984C40])
  {
    goto LABEL_42;
  }

  if (v38 == *MEMORY[0x1E6984C20])
  {
    goto LABEL_4;
  }

  if (v38 == *MEMORY[0x1E6984C00] || v38 == *MEMORY[0x1E6984C48])
  {
    goto LABEL_32;
  }

  if (v38 == *MEMORY[0x1E6984C50])
  {
LABEL_42:
    sub_1BC996FF0(a4);
    sub_1BCE196E0();
    OUTLINED_FUNCTION_0_4();
    (*(v95 + 8))(v109);
    sub_1BCE19060();
    OUTLINED_FUNCTION_0_4();
    (*(v96 + 8))(v110);
    sub_1BCE1A6F0();
    OUTLINED_FUNCTION_0_4();
    (*(v97 + 8))(v111);
    v98 = OUTLINED_FUNCTION_2_56();
    result = v99(v98);
    v47 = 2;
    goto LABEL_11;
  }

  v55 = v119;
  if (v38 != *MEMORY[0x1E6984CB8])
  {
    if (v38 != *MEMORY[0x1E6984D28])
    {
      sub_1BC996FF0(a4);
      sub_1BCE196E0();
      OUTLINED_FUNCTION_0_4();
      (*(v105 + 8))(v109);
      sub_1BCE19060();
      OUTLINED_FUNCTION_0_4();
      (*(v106 + 8))(v110);
      sub_1BCE1A6F0();
      OUTLINED_FUNCTION_0_4();
      (*(v107 + 8))(v111);
      v108 = *(v39 + 8);
      v108(v33, v25);
      result = (v108)(v30, v25);
      goto LABEL_10;
    }

LABEL_24:
    sub_1BC996FF0(a4);
    sub_1BCE196E0();
    OUTLINED_FUNCTION_0_4();
    (*(v69 + 8))(v109);
    sub_1BCE19060();
    OUTLINED_FUNCTION_0_4();
    (*(v70 + 8))(v110);
    sub_1BCE1A6F0();
    OUTLINED_FUNCTION_0_4();
    (*(v71 + 8))(v111);
    v72 = OUTLINED_FUNCTION_2_56();
    result = v73(v72);
    v47 = 0;
    goto LABEL_11;
  }

LABEL_21:
  v119 = v33;
  v56 = v111;
  sub_1BCE1A6E0();
  sub_1BCE192A0();
  (*(v112 + 8))(v17, v113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08570);
  v57 = sub_1BCE193C0();
  OUTLINED_FUNCTION_2();
  v59 = v58;
  v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1BCE3E050;
  (*(v59 + 104))(v61 + v60, *MEMORY[0x1E6969A58], v57);
  sub_1BC94FCF8();
  v62 = v114;
  v63 = v110;
  sub_1BCE192E0();

  v64 = sub_1BCE18850();
  LOBYTE(v57) = v65;
  (*(v115 + 8))(v62, v116);
  if (v57)
  {
    sub_1BC996FF0(a4);
    sub_1BCE196E0();
    OUTLINED_FUNCTION_0_4();
    (*(v66 + 8))(v109);
    sub_1BCE19060();
    OUTLINED_FUNCTION_0_4();
    (*(v67 + 8))(v63);
    sub_1BCE1A6F0();
    OUTLINED_FUNCTION_0_4();
    (*(v68 + 8))(v56);
LABEL_27:
    (*(v117 + 8))(v55, v118);
    v51 = *(v39 + 8);
    v52 = v119;
    goto LABEL_9;
  }

  if (v64 < 5)
  {
    sub_1BC996FF0(a4);
    sub_1BCE196E0();
    OUTLINED_FUNCTION_0_4();
    (*(v74 + 8))(v109);
    sub_1BCE19060();
    OUTLINED_FUNCTION_0_4();
    (*(v75 + 8))(v63);
    sub_1BCE1A6F0();
    OUTLINED_FUNCTION_0_4();
    (*(v76 + 8))(v111);
    goto LABEL_27;
  }

  v82 = v25;
  v83 = v64 > 8;
  v84 = v111;
  v85 = v119;
  v86 = v109;
  if (v83)
  {
    sub_1BC996FF0(a4);
    sub_1BCE196E0();
    OUTLINED_FUNCTION_0_4();
    (*(v91 + 8))(v86);
    sub_1BCE19060();
    OUTLINED_FUNCTION_0_4();
    (*(v92 + 8))(v63);
    sub_1BCE1A6F0();
    OUTLINED_FUNCTION_0_4();
    (*(v93 + 8))(v84);
    (*(v117 + 8))(v55, v118);
    result = (*(v39 + 8))(v85, v82);
    goto LABEL_10;
  }

  v87 = v55;
  v41 = sub_1BCC22554();
  sub_1BC996FF0(a4);
  sub_1BCE196E0();
  OUTLINED_FUNCTION_0_4();
  (*(v88 + 8))(v86);
  sub_1BCE19060();
  OUTLINED_FUNCTION_0_4();
  (*(v89 + 8))(v63);
  sub_1BCE1A6F0();
  OUTLINED_FUNCTION_0_4();
  (*(v90 + 8))(v84);
  (*(v117 + 8))(v87, v118);
  result = (*(v39 + 8))(v85);
LABEL_5:
  if (!v41)
  {
    goto LABEL_10;
  }

  v47 = 3;
LABEL_11:
  *v120 = v47;
  return result;
}

uint64_t sub_1BC996260()
{
  v1 = v0;
  v2 = sub_1BCE1B7E0();
  OUTLINED_FUNCTION_3_6();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v1, v2, v6);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x1E697E6C0])
  {
    return 1;
  }

  if (v9 == *MEMORY[0x1E697E6C8])
  {
    return 2;
  }

  if (v9 == *MEMORY[0x1E697E6D0])
  {
    return 3;
  }

  if (v9 == *MEMORY[0x1E697E6D8])
  {
    return 4;
  }

  if (v9 == *MEMORY[0x1E697E6E0])
  {
    return 5;
  }

  (*(v4 + 8))(v8, v2);
  return 0;
}

uint64_t sub_1BC9963F4(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_14_9(*a1);
  }

  sub_1BCE19060();
  v5 = OUTLINED_FUNCTION_105(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

uint64_t sub_1BC99646C(uint64_t a1)
{
  v3 = type metadata accessor for WeatherProviderAttribution(0);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(0);
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetailsCacheEntry(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ACB8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v17 = *(v1 + 16);
  v57 = a1;
  os_unfair_lock_lock(v17 + 6);
  sub_1BC997884(&v17[4], v16);
  os_unfair_lock_unlock(v17 + 6);
  sub_1BC95DCE8();
  if (__swift_getEnumTagSinglePayload(v13, 1, v8) == 1)
  {
    sub_1BC94C05C(v13, &qword_1EBD0ACB8);
    sub_1BC94C05C(v16, &qword_1EBD0ACB8);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v42 = 0;
    v43 = v16;
    sub_1BCBED070();
    v44 = v10;
    v19 = *v10 + 56;
    v20 = 1 << *(*v10 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(*v10 + 56);
    v23 = ((v20 + 63) >> 6);
    v48 = *v10;

    v24 = 0;
    v25 = MEMORY[0x1E69E7CC0];
    v45 = v23;
    v46 = v19;
    v47 = v5;
    v26 = v51;
    if (v22)
    {
      while (1)
      {
        v56 = v25;
LABEL_11:
        v28 = v49;
        sub_1BC962A04();
        v29 = *v28;
        v54 = v28[1];
        v55 = v29;
        v30 = *(v26 + 20);
        v31 = v53;
        v32 = *(v53 + 20);
        v33 = sub_1BCE18E40();
        v34 = *(*(v33 - 8) + 32);
        v35 = &v47[v32];
        v36 = v47;
        v34(v35, v28 + v30, v33);
        v34(&v36[*(v31 + 24)], v28 + *(v26 + 24), v33);
        v37 = v54;
        *v36 = v55;
        *(v36 + 1) = v37;
        v25 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BCB65FA0();
          v25 = v39;
        }

        v38 = *(v25 + 16);
        v23 = v45;
        v19 = v46;
        if (v38 >= *(v25 + 24) >> 1)
        {
          sub_1BCB65FA0();
          v25 = v40;
        }

        v22 &= v22 - 1;
        *(v25 + 16) = v38 + 1;
        sub_1BCBED070();
        if (!v22)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v27 >= v23)
      {
        break;
      }

      v22 = *(v19 + 8 * v27);
      ++v24;
      if (v22)
      {
        v56 = v25;
        v24 = v27;
        goto LABEL_11;
      }
    }

    v58[0] = v25;

    v23 = v42;
    sub_1BCBE9370(v58);
    if (!v23)
    {

      sub_1BC94C05C(v43, &qword_1EBD0ACB8);
      sub_1BCBED0C8(v44, type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetailsCacheEntry);
      return v58[0];
    }

LABEL_20:

    __break(1u);
  }

  return result;
}

uint64_t sub_1BC996990@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1BCE196E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08688);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  if ((sub_1BC997058(v9, v12) & 1) == 0)
  {
    goto LABEL_4;
  }

  v13 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
  sub_1BC952B1C(a1 + *(v13 + 32), v11, &qword_1EBD08688);
  v14 = sub_1BCE199D0();
  if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
  {
    sub_1BC94C05C(v11, &qword_1EBD08688);
LABEL_4:
    sub_1BCE199E0();
    sub_1BCE196D0();
    return (*(v5 + 8))(v7, v4);
  }

  return (*(*(v14 - 8) + 32))(a2, v11, v14);
}

uint64_t sub_1BC996B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WeatherDayVarianceView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08C40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v32 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08C48);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08C50);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08C58);
  OUTLINED_FUNCTION_2();
  v15 = v14;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = v1 + *(type metadata accessor for WeatherDayVarianceView() + 20);
  if (*(v19 + 72) == 1)
  {
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    v22 = sub_1BC99BA18();
    v23 = sub_1BCE1CAB0();
    __dst[0] = v20;
    LOBYTE(__dst[1]) = v21;
    __dst[2] = v23;
    __dst[3] = v22;
    LOBYTE(__dst[4]) = 0;
    v24 = sub_1BC997830();
    sub_1BCE1C750();

    (*(v15 + 16))(v12, v18, v13);
    swift_storeEnumTagMultiPayload();
    __dst[0] = &type metadata for HorizontalBarPointView;
    __dst[1] = v24;
    swift_getOpaqueTypeConformance2();
    v25 = sub_1BCACEBE8();
    __dst[0] = v32;
    __dst[1] = v25;
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_3_28();
    sub_1BCE1BF60();
    return (*(v15 + 8))(v18, v13);
  }

  else
  {
    memcpy(__dst, v19, 0x49uLL);
    memcpy(v4, v19, 0x49uLL);
    v27 = v32;
    v28 = *(v32 + 44);
    sub_1BCACEB8C(__dst, &v35);
    sub_1BCACE3A0(v1, &v4[v28]);
    v29 = sub_1BCACEBE8();
    sub_1BCE1C750();
    sub_1BC94C05C(v4, &qword_1EBD08C40);
    v30 = v33;
    (*(v6 + 16))(v12, v9, v33);
    swift_storeEnumTagMultiPayload();
    v31 = sub_1BC997830();
    v35 = &type metadata for HorizontalBarPointView;
    v36 = v31;
    swift_getOpaqueTypeConformance2();
    v35 = v27;
    v36 = v29;
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_3_28();
    sub_1BCE1BF60();
    return (*(v6 + 8))(v9, v30);
  }
}

uint64_t sub_1BC996FF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC997058(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 58);
  if (v3 == 2)
  {
    if (qword_1EDA1BDC0 != -1)
    {
      swift_once();
    }

    sub_1BC994BC8(&qword_1EDA1B288, a2, type metadata accessor for WeatherConditionBackgroundModelFactory);
    sub_1BCE1A1A0();
    LOBYTE(v3) = v5;
    *(v2 + 58) = v5;
  }

  return v3 & 1;
}

void sub_1BC997158()
{
  OUTLINED_FUNCTION_107_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1BCE19060();
    v5 = OUTLINED_FUNCTION_105(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1BC9971F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BCE1D800();
  if (*(*a1 + 16) && (sub_1BC95511C(), (v4 & 1) != 0))
  {
    v5 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetailsCacheEntry(0);
    sub_1BC962A04();
    v6 = a2;
    v7 = 0;
    v8 = v5;
  }

  else
  {
    v8 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetailsCacheEntry(0);
    v6 = a2;
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
}

uint64_t sub_1BC9972DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v46 = a1;
  v47 = a2;
  v48 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v37 - v4;
  v5 = sub_1BCE1A000();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BCE196E0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08688);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_1BCE199D0();
  v45 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v44 = &v37 - v21;
  if (sub_1BC997058(v20, v22))
  {
    v38 = v10;
    v39 = v6;
    v40 = v9;
    v23 = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
    sub_1BC952B1C(v46 + *(v23 + 32), v15, &qword_1EBD08688);
    v24 = v16;
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      sub_1BC94C05C(v15, &qword_1EBD08688);
    }

    else
    {
      v26 = v44;
      v25 = v45;
      (*(v45 + 32))(v44, v15, v24);
      (*(v25 + 16))(v19, v26, v24);
      v27 = (*(v25 + 88))(v19, v24);
      if (v27 == *MEMORY[0x1E6984CC0] || v27 == *MEMORY[0x1E6984CB8])
      {
        sub_1BCE199E0();
        sub_1BCE196B0();
        (*(v38 + 8))(v12, v40);
        v29 = v41;
        sub_1BCE19FF0();
        (*(v39 + 8))(v8, v5);
        v30 = v26;
        v31 = v43;
        v32 = sub_1BCE185C0();
        v33 = *(v42 + 8);
        v33(v29, v31);
        v34 = [objc_opt_self() metersPerSecond];
        sub_1BC949AE8();
        sub_1BCE185D0();
        sub_1BCE18680();

        v33(v29, v31);
        return (*(v45 + 8))(v30, v24);
      }

      v36 = *(v25 + 8);
      v36(v19, v24);
      v36(v26, v24);
    }

    v6 = v39;
    v9 = v40;
    v10 = v38;
  }

  sub_1BCE199E0();
  sub_1BCE196B0();
  (*(v10 + 8))(v12, v9);
  sub_1BCE19FF0();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1BC997830()
{
  result = qword_1EDA1D270;
  if (!qword_1EDA1D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1D270);
  }

  return result;
}

uint64_t sub_1BC9978A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a4;
  v87 = a3;
  v85 = a2;
  v90 = a1;
  v81 = sub_1BCE19470();
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BCE1DA50();
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1BCE19060();
  v68 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v65 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E80);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v77 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v75 = &v64 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v76 = &v64 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v74 = &v64 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v73 = &v64 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v72 = &v64 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v71 = &v64 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v70 = &v64 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v89 = &v64 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v88 = &v64 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v66 = &v64 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v64 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CA8);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v64 - v37;
  v39 = sub_1BCE1A170();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v64 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v64 - v44;
  sub_1BC952B1C(v90, v38, &qword_1EBD08CA8);
  v46 = sub_1BCE19540();
  if (__swift_getEnumTagSinglePayload(v38, 1, v46) == 1)
  {
    v90 = v39;
    v64 = a5;
    sub_1BC94C05C(v38, &qword_1EBD08CA8);
    v48 = v85;
    v47 = v86;
    v49 = v87;
    if (*(v85 + 56))
    {
      goto LABEL_15;
    }

    if (qword_1EDA1BD90 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v11, qword_1EDA1BD98);
    v51 = v68;
    (*(v68 + 16))(v35, v49, v47);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v47);
    v52 = *(v67 + 48);
    v53 = v69;
    sub_1BC952B1C(v50, v69, &qword_1EBD07868);
    sub_1BC952B1C(v35, v53 + v52, &qword_1EBD07868);
    if (__swift_getEnumTagSinglePayload(v53, 1, v47) == 1)
    {
      sub_1BC94C05C(v35, &qword_1EBD07868);
      if (__swift_getEnumTagSinglePayload(v53 + v52, 1, v47) == 1)
      {
        sub_1BC94C05C(v53, &qword_1EBD07868);
        goto LABEL_15;
      }
    }

    else
    {
      v58 = v66;
      sub_1BC952B1C(v53, v66, &qword_1EBD07868);
      if (__swift_getEnumTagSinglePayload(v53 + v52, 1, v47) != 1)
      {
        v59 = v65;
        (*(v51 + 32))(v65, v53 + v52, v47);
        sub_1BC994BC8(&qword_1EDA1EF38, 255, MEMORY[0x1E6969530]);
        LODWORD(v67) = sub_1BCE1D210();
        v60 = *(v51 + 8);
        v60(v59, v47);
        sub_1BC94C05C(v35, &qword_1EBD07868);
        v60(v58, v47);
        sub_1BC94C05C(v53, &qword_1EBD07868);
        if (v67)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }

      sub_1BC94C05C(v35, &qword_1EBD07868);
      (*(v51 + 8))(v58, v47);
    }

    sub_1BC94C05C(v53, &qword_1EBD08E80);
LABEL_12:
    if (*(v48 + 57) != 1)
    {
      v55 = 1;
      v56 = v64;
LABEL_16:
      v57 = v90;
      return __swift_storeEnumTagSinglePayload(v56, v55, 1, v57);
    }

LABEL_15:
    sub_1BCE1A6A0();
    v61 = v78;
    sub_1BCE1A6E0();
    v62 = v82;
    sub_1BCE1DA60();
    (*(v79 + 8))(v61, v81);
    __swift_storeEnumTagSinglePayload(v88, 1, 1, v47);
    __swift_storeEnumTagSinglePayload(v89, 1, 1, v47);
    __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
    sub_1BCE1DA40();
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v47);
    sub_1BCE1DA30();
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v47);
    __swift_storeEnumTagSinglePayload(v76, 1, 1, v47);
    __swift_storeEnumTagSinglePayload(v75, 1, 1, v47);
    __swift_storeEnumTagSinglePayload(v77, 1, 1, v47);
    v56 = v64;
    sub_1BCE1A140();
    (*(v83 + 8))(v62, v84);
    v55 = 0;
    goto LABEL_16;
  }

  sub_1BCE194E0();
  (*(*(v46 - 8) + 8))(v38, v46);
  v54 = *(v40 + 32);
  v54(v45, v43, v39);
  v54(a5, v45, v39);
  v55 = 0;
  v56 = a5;
  v57 = v39;
  return __swift_storeEnumTagSinglePayload(v56, v55, 1, v57);
}

uint64_t sub_1BC9982F8(uint64_t a1)
{
  v2 = type metadata accessor for WeatherProviderAttribution(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v17 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v15 - v5);
  v7 = 0;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  while (v8 != v7)
  {
    sub_1BC962A04();
    v10 = *v6 == 0x655720656C707041 && v6[1] == 0xED00007265687461;
    if (v10 || (sub_1BCE1E090() & 1) != 0)
    {
      sub_1BCBED0C8(v6, type metadata accessor for WeatherProviderAttribution);
      ++v7;
    }

    else
    {
      sub_1BCBED070();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BCA15418();
        v9 = v18;
      }

      v12 = *(v9 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v9 + 24) >> 1)
      {
        v15 = *(v9 + 16);
        v16 = v12 + 1;
        sub_1BCA15418();
        v13 = v16;
        v9 = v18;
      }

      ++v7;
      *(v9 + 16) = v13;
      sub_1BCBED070();
    }
  }

  return v9;
}

uint64_t sub_1BC998540(uint64_t a1)
{
  v1 = sub_1BC99646C(a1);
  v2 = sub_1BC9982F8(v1);

  return v2;
}

uint64_t sub_1BC9985A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC998620@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A38);
  sub_1BC998984();
  sub_1BCE1C840();
  if (a1)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  sub_1BC9985A0(v6, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A40);
  *(a2 + *(result + 36)) = v7;
  return result;
}

uint64_t HorizontalBarPointView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BCE1BCA0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v7;
  v14 = *(v1 + 32);
  v8 = swift_allocObject();
  v9 = *(v1 + 16);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v1 + 32);
  (*(v4 + 104))(v6, *MEMORY[0x1E697F3A0], v3);
  sub_1BC99893C(v13, v12);
  sub_1BCE1CCE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A920);
  sub_1BCE1CCD0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A928);
  *(a1 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_1BC9988B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t RoundedCornersShape.init(corners:radius:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_1BC998984()
{
  result = qword_1EDA1E9B0;
  if (!qword_1EDA1E9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1E9B0);
  }

  return result;
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

uint64_t static Image.TemplateRenderingMode.macSafeOriginal.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6981688];
  v3 = sub_1BCE1CBF0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void TimeStyle.formatTime(_:periodSymbols:font:)()
{
  OUTLINED_FUNCTION_20_0();
  v4 = OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_1BCE19280();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_26();
  sub_1BCE19270();
  v14 = *(v11 + 8);
  v13 = v11 + 8;
  v14(v0, v9);
  v15 = sub_1BCE19240();
  v16 = OUTLINED_FUNCTION_18_1();
  v17(v16);
  if (v15)
  {
    OUTLINED_FUNCTION_19_17();
    v3 = MEMORY[0x1E69E7CC0];
    v4 = MEMORY[0x1E69E6158];
LABEL_3:
    v19 = v18 + 16 * v9;
    while (v13 != v9)
    {
      if (v9 >= v13)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_20;
      }

      sub_1BC970820();
      OUTLINED_FUNCTION_6_31();
      ++v9;
      v19 += 16;
      if ((v21 & 1) == 0)
      {
        v8 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_13_24();
          v3 = v24;
        }

        v23 = v3[2];
        v22 = v3[3];
        v9 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          OUTLINED_FUNCTION_12_26(v22);
          v3 = v25;
        }

        OUTLINED_FUNCTION_7_36();
        goto LABEL_3;
      }
    }

    if (v3[2])
    {
      v26 = v3[4];
      v27 = v3[5];

      sub_1BC998D2C(v2, v1, v28, v26, v27);
      OUTLINED_FUNCTION_31();
      goto LABEL_18;
    }

    sub_1BC970820();
    OUTLINED_FUNCTION_22_15();
    OUTLINED_FUNCTION_21_15();
    OUTLINED_FUNCTION_2_41();
  }

  else
  {
    sub_1BC970820();
    OUTLINED_FUNCTION_22_15();
    OUTLINED_FUNCTION_21_15();
    OUTLINED_FUNCTION_2_41();
  }

  sub_1BCE1C610();
  OUTLINED_FUNCTION_31();
  sub_1BC998CF4(v3, v4, v8 & 1);

LABEL_18:
  OUTLINED_FUNCTION_5_36();
  OUTLINED_FUNCTION_21();
}

uint64_t sub_1BC998CF4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1BC998D2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v82 = a3;
  v8 = sub_1BCE1C640();
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a5 >> 14 == 4 * v11)
  {
    v85 = sub_1BCE1D4A0();
    v86 = v12;
    v87 = v13;
    v88 = v14;
    sub_1BC999280();
    v15 = sub_1BCE1C6A0();
    v78 = v16;
    v79 = v15;
    v76 = v17;
    v77 = v18;
    v85 = sub_1BCE1D4A0();
    v86 = v19;
    v87 = v20;
    v88 = v21;
    v22 = sub_1BCE1DB60();
    v24 = v23;

    v83 = v22;
    v84 = v24;
    sub_1BC970820();
    v25 = sub_1BCE1C6A0();
    v27 = v26;
    v29 = v28;
    sub_1BCE1C630();
    v30 = sub_1BCE1C670();
    v32 = v31;
    v34 = v33;
    sub_1BC998CF4(v25, v27, v29 & 1);

    (*(v80 + 8))(v10, v81);
    v36 = v78;
    v35 = v79;
    v37 = sub_1BCE1C5E0();
    v81 = v38;
    v40 = v39;
    sub_1BC998CF4(v30, v32, v34 & 1);

    sub_1BC998CF4(v35, v36, v76 & 1);

    v41 = v81;
    v42 = v37;
    v43 = sub_1BCE1C610();
    v44 = v40 & 1;
    v45 = v42;
  }

  else
  {
    v85 = sub_1BCE1D4A0();
    v86 = v46;
    v87 = v47;
    v88 = v48;
    v79 = sub_1BC999280();
    v49 = sub_1BCE1DB60();
    v51 = v50;

    v83 = v49;
    v84 = v51;
    sub_1BC970820();
    v52 = sub_1BCE1C6A0();
    v54 = v53;
    v56 = v55;
    sub_1BCE1C630();
    v57 = sub_1BCE1C670();
    v77 = v58;
    v78 = v57;
    v76 = v59;
    sub_1BC998CF4(v52, v54, v56 & 1);

    (*(v80 + 8))(v10, v81);

    v85 = sub_1BCD1421C(a5, a1, a2);
    v86 = v60;
    v87 = v61;
    v88 = v62;
    v63 = sub_1BCE1C6A0();
    v65 = v64;
    v67 = v66;
    v69 = v77;
    v68 = v78;
    v81 = sub_1BCE1C5E0();
    v41 = v70;
    v72 = v71;
    sub_1BC998CF4(v63, v65, v67 & 1);

    sub_1BC998CF4(v68, v69, v76 & 1);

    v73 = v81;
    v43 = sub_1BCE1C610();
    v44 = v72 & 1;
    v45 = v73;
  }

  sub_1BC998CF4(v45, v41, v44);

  return v43;
}

uint64_t SunriseSunsetModel.init(currentWeather:dailyForecast:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BCE196E0();
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a3, a1);
  v7 = *(type metadata accessor for SunriseSunsetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085A8);
  OUTLINED_FUNCTION_4();
  v9 = *(v8 + 32);

  return v9(a3 + v7, a2);
}

unint64_t sub_1BC999280()
{
  result = qword_1EDA1C3D8;
  if (!qword_1EDA1C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1C3D8);
  }

  return result;
}

uint64_t type metadata accessor for SunriseSunsetModel()
{
  result = qword_1EDA1A4B0;
  if (!qword_1EDA1A4B0)
  {
    return swift_getSingletonMetadata();
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

uint64_t ScaledValue.init(wrappedValue:step:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B318);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for ScaledValue();
  v9 = a4 + v8[9];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v12 = *(*(a3 - 8) + 32);
  v12(a4 + v8[10], a1, a3);
  v10 = a4 + v8[11];

  return (v12)(v10, a2, a3);
}

uint64_t sub_1BC999484@<X0>(void *a1@<X8>)
{
  result = sub_1BCE1B980();
  *a1 = v3;
  return result;
}

uint64_t sub_1BC9994B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC999520(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1BC999564()
{
  sub_1BC999664();
  if (v0 <= 0x3F)
  {
    sub_1BC9996D4();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BC999604()
{
  OUTLINED_FUNCTION_9();
  v1(0);
  OUTLINED_FUNCTION_0_3();
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  return v0;
}

void sub_1BC999664()
{
  if (!qword_1EDA1EA40)
  {
    sub_1BCE1B7E0();
    v0 = sub_1BCE1B4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1EA40);
    }
  }
}

void sub_1BC9996D4()
{
  if (!qword_1EDA1EA50)
  {
    v0 = sub_1BCE1B4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1EA50);
    }
  }
}

WeatherUI::CollisionViewMetrics __swiftcall CollisionViewMetrics.init(vfxViewWidth:gapWidth:leadingPadding:componentWidths:)(Swift::Float vfxViewWidth, Swift::Float gapWidth, Swift::Float leadingPadding, Swift::OpaquePointer componentWidths)
{
  *v4 = vfxViewWidth;
  *(v4 + 4) = gapWidth;
  *(v4 + 8) = leadingPadding;
  *(v4 + 16) = componentWidths;
  result.componentWidths = componentWidths;
  result.leadingPadding = leadingPadding;
  result.gapWidth = gapWidth;
  result.vfxViewWidth = vfxViewWidth;
  return result;
}

uint64_t sub_1BC999734(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_10_1();
  v5(v4);
  return v3;
}

__n128 VFXLoadRequest.init(backgroundObserver:lastModel:model:gradient:dynamicTypeSize:targetWindowSizeClass:collisionViewMetrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X3>, uint64_t a4@<X4>, char *a5@<X5>, __n128 *a6@<X6>, char *a7@<X8>)
{
  v11 = *a5;
  v18 = *a6;
  v12 = a6[1].n128_u64[0];
  *a7 = a1;
  v13 = type metadata accessor for VFXLoadRequest(0);
  sub_1BC999734(a2, &a7[v13[5]], &qword_1EBD0C458);
  OUTLINED_FUNCTION_10_43();
  sub_1BC9526CC();
  memcpy(&a7[v13[7]], a3, 0x68uLL);
  v14 = v13[8];
  sub_1BCE1B7E0();
  OUTLINED_FUNCTION_4();
  (*(v15 + 32))(&a7[v14], a4);
  a7[v13[9]] = v11;
  v16 = &a7[v13[10]];
  result = v18;
  *v16 = v18;
  v16[1].n128_u64[0] = v12;
  return result;
}

void WeatherConditionBackgroundManager.addLoadRequest(_:)()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C438);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v42 - v6;
  v43 = type metadata accessor for VFXLoadRequest(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v42 - v13;
  v15 = sub_1BCE1D050();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = (v20 - v19);
  sub_1BC947608(0, &qword_1EDA1C128);
  *v21 = sub_1BCE1D9B0();
  (*(v17 + 104))(v21, *MEMORY[0x1E69E8020], v15);
  v22 = sub_1BCE1D070();
  (*(v17 + 8))(v21, v15);
  if (v22)
  {
    if (qword_1EDA1EE78 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_2_74();
LABEL_3:
  v23 = sub_1BCE1ACC0();
  __swift_project_value_buffer(v23, qword_1EDA1EE80);
  sub_1BC9694D8();
  sub_1BC9694D8();
  v24 = sub_1BCE1ACA0();
  v25 = sub_1BCE1D8D0();
  if (os_log_type_enabled(v24, v25))
  {
    v42[1] = v1;
    v26 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    v44[0] = v42[0];
    *v26 = 141558531;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    v27 = v43;
    v28 = BackgroundAnimationData.Model.description.getter();
    v30 = v29;
    OUTLINED_FUNCTION_9_44();
    sub_1BC99A150(v14, v31);
    v32 = sub_1BC98FE38(v28, v30, v44);

    *(v26 + 14) = v32;
    *(v26 + 22) = 2082;
    v33 = 0xE700000000000000;
    v34 = 0x746361706D6F43;
    switch(*(v11 + *(v27 + 36)))
    {
      case 1:
        v33 = 0xE800000000000000;
        v34 = 0x7469617274726F50;
        break;
      case 2:
        v34 = 0x70616373646E614CLL;
        goto LABEL_10;
      case 3:
        v34 = 0x6469776172746C55;
LABEL_10:
        v33 = 0xE900000000000065;
        break;
      case 4:
        v33 = 0xE600000000000000;
        v34 = 0x726574736F50;
        break;
      case 5:
        v33 = 0xE500000000000000;
        v34 = 0x6863746157;
        break;
      case 6:
        v33 = 0xE600000000000000;
        v34 = 0x76656C67614DLL;
        break;
      case 7:
        OUTLINED_FUNCTION_30_14();
        v33 = 0xEA00000000006E69;
        break;
      case 8:
        OUTLINED_FUNCTION_30_14();
        v33 = 0xEA00000000007861;
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_9_44();
    sub_1BC99A150(v11, v35);
    v36 = sub_1BC98FE38(v34, v33, v44);

    *(v26 + 24) = v36;
    _os_log_impl(&dword_1BC940000, v24, v25, "Adding VFX background load request for model=%{private,mask.hash}s size=%{public}s", v26, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_27_0();
  }

  else
  {

    sub_1BC99A150(v11, type metadata accessor for VFXLoadRequest);
    sub_1BC99A150(v14, type metadata accessor for VFXLoadRequest);
  }

  v37 = v3 + *(v43 + 24);
  v38 = v37 + *(type metadata accessor for BackgroundAnimationData.Model(0) + 48);
  v39 = *(v38 + 16);
  v40 = *(v38 + 24);
  sub_1BC9694D8();
  v41 = type metadata accessor for Request(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v41);
  OUTLINED_FUNCTION_8_5();
  sub_1BC9775B8(v39, v40);
  sub_1BC99A50C(v7, v39, v40);
  swift_endAccess();
  OUTLINED_FUNCTION_21();
}

uint64_t BackgroundAnimationData.Model.description.getter()
{
  sub_1BCE1DD50();
  MEMORY[0x1BFB2FB00](0x697469646E6F6328, 0xEB000000003D6E6FLL);
  v1 = type metadata accessor for BackgroundAnimationData.Model(0);
  sub_1BCE199D0();
  sub_1BC994C10(&qword_1EDA1EB70, MEMORY[0x1E6984D30]);
  v2 = sub_1BCE1E050();
  MEMORY[0x1BFB2FB00](v2);

  MEMORY[0x1BFB2FB00](0x4B64756F6C63202CLL, 0xEC0000003D646E69);
  sub_1BCE1DE00();
  MEMORY[0x1BFB2FB00](0x746176656C65202CLL, 0xEC0000003D6E6F69);
  v3 = sub_1BCE1D650();
  MEMORY[0x1BFB2FB00](v3);

  MEMORY[0x1BFB2FB00](0x444977656976202CLL, 0xE90000000000003DLL);
  v4 = v0 + *(v1 + 48);
  v5 = *(v4 + 24);
  v6 = 0x6E6F697461636F6CLL;
  v7 = 0xEE00726577656956;
  switch(v5)
  {
    case 0:
      break;
    case 1:
      v7 = 0xEF77656976657250;
      break;
    case 2:
      v7 = 0x80000001BCE8F5E0;
      v6 = 0xD000000000000015;
      break;
    case 3:
      v7 = 0xEB00000000776569;
      v6 = OUTLINED_FUNCTION_12_3();
      break;
    case 4:
      v7 = 0xE600000000000000;
      v6 = 0x726574736F70;
      break;
    default:
      MEMORY[0x1BFB2FB00](*(v4 + 16), v5);
      v6 = 0x2D7473696CLL;
      v7 = 0xE500000000000000;
      break;
  }

  MEMORY[0x1BFB2FB00](v6, v7);

  MEMORY[0x1BFB2FB00](41, 0xE100000000000000);
  return 0;
}

uint64_t static NSUnitLength.BaseWeatherFormatStyle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_9();
  sub_1BC986D6C();
  if ((v2 & 1) != 0 && v1[8] == v0[8] && v1[9] == v0[9] && v1[10] == v0[10])
  {
    v3 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle(0);
    v4 = OUTLINED_FUNCTION_104(v3[8]);
    if ((MEMORY[0x1BFB2B8A0](v4) & 1) != 0 && v1[v3[9]] == v0[v3[9]])
    {
      OUTLINED_FUNCTION_104(v3[10]);

      JUMPOUT(0x1BFB2B460);
    }
  }

  return 0;
}

uint64_t sub_1BC99A150(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void PrimaryDividerStyle.makeBody(configuration:)()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_18_7(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_17_7();
  sub_1BCE1CAB0();
  sub_1BCE1CAE0();

  sub_1BCE1C0C0();
  v5 = sub_1BCE1C230();
  if (v5 == sub_1BCE1C230())
  {
    if (v0)
    {
      *v2 = v1;
    }

    else
    {

      sub_1BCE1D8C0();
      v6 = sub_1BCE1C1F0();
      OUTLINED_FUNCTION_5_13();

      sub_1BCE1BC10();
      OUTLINED_FUNCTION_11_11();
      v7 = OUTLINED_FUNCTION_3_18();
      v8(v7);
    }

    sub_1BCE1CEE0();
    OUTLINED_FUNCTION_7_17();
    OUTLINED_FUNCTION_10_12();
    *&v14[22] = *(v2 + 80);
    *&v14[6] = *(v2 + 64);
    OUTLINED_FUNCTION_1_11(*v14, *&v14[16]);
    OUTLINED_FUNCTION_15_8();
  }

  else
  {
    if (v0)
    {
      *v2 = v1;
    }

    else
    {

      sub_1BCE1D8C0();
      v9 = sub_1BCE1C1F0();
      OUTLINED_FUNCTION_5_13();

      sub_1BCE1BC10();
      OUTLINED_FUNCTION_11_11();
      v10 = OUTLINED_FUNCTION_3_18();
      v11(v10);
    }

    sub_1BCE1CEE0();
    OUTLINED_FUNCTION_7_17();
    OUTLINED_FUNCTION_13_11();
    v12 = *(v2 + 96);
    *(v2 + 32) = *(v2 + 80);
    *(v2 + 48) = v12;
    *(v2 + 16) = *(v2 + 64);
    OUTLINED_FUNCTION_1_11(v15, v16);
    OUTLINED_FUNCTION_16_13();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08520);
  sub_1BC99ACD4();
  OUTLINED_FUNCTION_12_13();
  memcpy(v13, v17, 0x41uLL);
  OUTLINED_FUNCTION_21();
}

void sub_1BC99A3E8()
{
  sub_1BC99B968();
  if (v0 <= 0x3F)
  {
    sub_1BC99AD8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t static DividerShape.role.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6981F28];
  sub_1BCE1CF40();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1BC99A50C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C438);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for Request(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_1BC94C05C(a1, &qword_1EBD0C438);
    sub_1BCCD7138(v10);
    sub_1BC977830(a2, a3);
    return sub_1BC94C05C(v10, &qword_1EBD0C438);
  }

  else
  {
    sub_1BC9526CC();
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1BC99A8BC(v13, a2);
    result = sub_1BC977830(a2, a3);
    *v4 = v17;
  }

  return result;
}

unint64_t sub_1BC99A6B8()
{
  OUTLINED_FUNCTION_11_12();
  switch(v0)
  {
    case 0:
      v1 = 1;
      goto LABEL_7;
    case 1:
      v1 = 2;
      goto LABEL_7;
    case 2:
      v1 = 3;
      goto LABEL_7;
    case 3:
      v1 = 4;
      goto LABEL_7;
    case 4:
      v1 = 5;
LABEL_7:
      MEMORY[0x1BFB30850](v1);
      break;
    default:
      MEMORY[0x1BFB30850](0);
      sub_1BCE1D370();
      break;
  }

  sub_1BCE1E150();
  v2 = OUTLINED_FUNCTION_10_2();

  return sub_1BC99A9E4(v2, v3, v4);
}

unint64_t sub_1BC99A7A4()
{
  result = qword_1EDA1EA00;
  if (!qword_1EDA1EA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09A30);
    sub_1BC998984();
    sub_1BC99B7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EA00);
  }

  return result;
}

unint64_t sub_1BC99A830()
{
  result = qword_1EDA1E9E0;
  if (!qword_1EDA1E9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD09A40);
    sub_1BC99A7A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1E9E0);
  }

  return result;
}

void sub_1BC99A8BC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_14(a1, a2);
  sub_1BC99A6B8();
  OUTLINED_FUNCTION_0_24();
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_1BCE1E0F0();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_16_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085D0);
  if (OUTLINED_FUNCTION_3_21())
  {
    OUTLINED_FUNCTION_10_2();
    sub_1BC99A6B8();
    OUTLINED_FUNCTION_5_15();
    if (!v8)
    {
      goto LABEL_12;
    }

    v4 = v7;
  }

  if (v5)
  {
    v9 = *(*v3 + 56);
    v10 = type metadata accessor for Request(0);
    sub_1BCA9C4CC(v2, v9 + *(*(v10 - 8) + 72) * v4, type metadata accessor for Request);
    OUTLINED_FUNCTION_18_8();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_19();
    sub_1BC99AC5C(v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_18_8();

    sub_1BC9775B8(v16, v17);
  }
}

unint64_t sub_1BC99A9E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v8 = ~v4;
  while (2)
  {
    v9 = (*(v3 + 48) + 16 * v5);
    v10 = *v9;
    v11 = v9[1];
    switch(v11)
    {
      case 0uLL:
        if (a2)
        {
          sub_1BC9775B8(a1, a2);
          v11 = 0;
          goto LABEL_16;
        }

        v14 = *v9;
        v15 = 0;
        goto LABEL_32;
      case 1uLL:
        if (a2 == 1)
        {
          v14 = *v9;
          v15 = 1;
          goto LABEL_32;
        }

        sub_1BC9775B8(a1, a2);
        v11 = 1;
        goto LABEL_16;
      case 2uLL:
        if (a2 == 2)
        {
          v14 = *v9;
          v15 = 2;
          goto LABEL_32;
        }

        sub_1BC9775B8(a1, a2);
        v11 = 2;
        goto LABEL_16;
      case 3uLL:
        if (a2 == 3)
        {
          v14 = *v9;
          v15 = 3;
          goto LABEL_32;
        }

        sub_1BC9775B8(a1, a2);
        v11 = 3;
        goto LABEL_16;
      case 4uLL:
        if (a2 == 4)
        {
          v14 = *v9;
          v15 = 4;
          goto LABEL_32;
        }

        sub_1BC9775B8(a1, a2);
        v11 = 4;
        goto LABEL_16;
      default:
        if (a2 < 5)
        {
          sub_1BC9775B8(a1, a2);
          sub_1BC9775B8(v10, v11);
LABEL_16:
          sub_1BC977830(v10, v11);
          sub_1BC977830(a1, a2);
LABEL_17:
          v5 = (v5 + 1) & v8;
          if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
          {
            return v5;
          }

          continue;
        }

        if (v10 != a1 || v11 != a2)
        {
          v13 = sub_1BCE1E090();
          sub_1BC9775B8(a1, a2);
          sub_1BC9775B8(v10, v11);
          sub_1BC977830(v10, v11);
          sub_1BC977830(a1, a2);
          if (v13)
          {
            return v5;
          }

          goto LABEL_17;
        }

        sub_1BC9775B8(a1, a2);
        sub_1BC9775B8(a1, a2);
        v14 = a1;
        v15 = a2;
LABEL_32:
        sub_1BC977830(v14, v15);
        sub_1BC977830(a1, a2);
        return v5;
    }
  }
}

void sub_1BC99AC5C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_7_52(a1, a2, a3, a4, a5);
  v8 = (v7 + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  v11 = type metadata accessor for Request(0);
  OUTLINED_FUNCTION_14(v11);
  OUTLINED_FUNCTION_0_67();
  sub_1BC9526CC();
  OUTLINED_FUNCTION_23_26();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }
}

unint64_t sub_1BC99ACD4()
{
  result = qword_1EDA1BB28;
  if (!qword_1EDA1BB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08520);
    sub_1BC957184(&qword_1EDA1BC40, &qword_1EBD08528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BB28);
  }

  return result;
}

void sub_1BC99AD8C()
{
  if (!qword_1EDA1C200)
  {
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1C200);
    }
  }
}

Swift::Void __swiftcall WeatherConditionBackgroundManager.executeRequests(forcePrepare:)(Swift::Bool forcePrepare)
{
  v2 = v1;
  v80 = forcePrepare;
  v87 = sub_1BCE1CFF0();
  OUTLINED_FUNCTION_2();
  v86 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_31(v6 - v5);
  v7 = sub_1BCE1D020();
  OUTLINED_FUNCTION_2();
  v84 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_31(v11 - v10);
  v89 = sub_1BCE1D040();
  OUTLINED_FUNCTION_2();
  v82 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3();
  v79 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = OUTLINED_FUNCTION_3_31(&v75 - v17);
  v19 = type metadata accessor for VFXLoadRequest(v18);
  v20 = OUTLINED_FUNCTION_14(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_0();
  v23 = OUTLINED_FUNCTION_3_31(v22 - v21);
  v24 = type metadata accessor for Request(v23);
  OUTLINED_FUNCTION_2();
  v93 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_3();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v92 = &v75 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C440);
  v33 = OUTLINED_FUNCTION_14(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3();
  v96 = (v34 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v75 - v37;
  v39 = sub_1BCE1D050();
  OUTLINED_FUNCTION_2();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_0();
  v45 = (v44 - v43);
  sub_1BC947608(0, &qword_1EDA1C128);
  *v45 = sub_1BCE1D9B0();
  (*(v41 + 104))(v45, *MEMORY[0x1E69E8020], v39);
  v46 = sub_1BCE1D070();
  v48 = *(v41 + 8);
  v47 = v41 + 8;
  v48(v45, v39);
  if ((v46 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
LABEL_22:
    v96 = qword_1EDA1E5F8;
    v68 = v79;
    sub_1BCE1D030();
    v69 = v81;
    sub_1BCE1D060();
    v97 = *(v82 + 8);
    v97(v68, v89);
    v70 = swift_allocObject();
    *(v70 + 16) = v76;
    *(v70 + 24) = v47;
    *(v70 + 32) = v88;
    *(v70 + 40) = v80;
    aBlock[4] = sub_1BC99C8EC;
    aBlock[5] = v70;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BC97FFC4;
    aBlock[3] = &block_descriptor_4;
    v71 = _Block_copy(aBlock);

    v72 = v83;
    sub_1BCE1D000();
    v98 = MEMORY[0x1E69E7CC0];
    sub_1BC94DDD8(&qword_1EDA1E910, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D38);
    sub_1BC94DD84(&qword_1EDA1C240, &qword_1EBD07D38);
    v73 = v85;
    v74 = v87;
    sub_1BCE1DC30();
    MEMORY[0x1BFB300D0](v69, v72, v73, v71);
    _Block_release(v71);
    (*(v86 + 8))(v73, v74);
    (*(v84 + 8))(v72, v77);
    v97(v69, v89);

    return;
  }

  swift_beginAccess();
  v49 = *(v2 + 144);
  OUTLINED_FUNCTION_8_5();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C448);
  sub_1BCE1D150();
  swift_endAccess();
  sub_1BCE1A780();
  OUTLINED_FUNCTION_8_5();
  sub_1BC94E37C();
  sub_1BCE1A910();
  swift_endAccess();
  sub_1BCE1A790();
  if (*(v49 + 16))
  {
    v47 = v24;
    v76 = v2;
    v77 = v7;
    v88 = swift_allocObject();
    *(v88 + 16) = 0;
    v50 = v49 + 64;
    v51 = 1 << *(v49 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v49 + 64);
    v54 = (v51 + 63) >> 6;
    v95 = v49;

    v55 = 0;
    v56 = 0.0;
    v94 = v47;
    v90 = v38;
    v91 = v29;
    v97 = (v49 + 64);
LABEL_6:
    v57 = v96;
    if (!v53)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v58 = v55;
LABEL_12:
      v59 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v60 = (*(v95 + 48) + 16 * (v59 | (v58 << 6)));
      v50 = *v60;
      v61 = v60[1];
      sub_1BC9694D8();
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C450);
      v57 = v96;
      *v96 = v50;
      *(v57 + 8) = v61;
      OUTLINED_FUNCTION_0_67();
      sub_1BC9526CC();
      __swift_storeEnumTagSinglePayload(v57, 0, 1, v62);
      sub_1BC9775B8(v50, v61);
      v47 = v94;
      v38 = v90;
      v29 = v91;
LABEL_13:
      sub_1BC999734(v57, v38, &qword_1EBD0C440);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C450);
      v63 = OUTLINED_FUNCTION_26_16();
      if (__swift_getEnumTagSinglePayload(v63, 1, v50) == 1)
      {
        break;
      }

      sub_1BC977830(*v38, *(v38 + 1));
      OUTLINED_FUNCTION_0_67();
      sub_1BC9526CC();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v65 = v78;
        sub_1BC9526CC();
        VFXLoadRequest.hasSignificantlyChanged.getter();
        v47 = v94;
        v67 = WeatherVFXConditionBackground.startLoading(hasSignificantlyChanged:)(v66 & 1);
        if (v56 <= v67)
        {
          v56 = v67;
        }

        sub_1BC99A150(v65, type metadata accessor for VFXLoadRequest);
        *(v88 + 16) = v56;
        v50 = v97;
        goto LABEL_6;
      }

      sub_1BC99A150(v29, type metadata accessor for Request);
      v50 = v97;
      if (!v53)
      {
LABEL_8:
        while (1)
        {
          v58 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            break;
          }

          if (v58 >= v54)
          {
            v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C450);
            __swift_storeEnumTagSinglePayload(v57, 1, 1, v64);
            v53 = 0;
            goto LABEL_13;
          }

          v53 = *(v50 + 8 * v58);
          ++v55;
          if (v53)
          {
            v55 = v58;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_25;
      }
    }

    v47 = v95;

    if (qword_1EDA1E5F0 != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }
}

uint64_t sub_1BC99B7B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

unint64_t sub_1BC99B7FC()
{
  result = qword_1EDA1EE68;
  if (!qword_1EDA1EE68)
  {
    sub_1BCE1C180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1EE68);
  }

  return result;
}

uint64_t WeatherDayVarianceViewStyle.gradientTrack.getter()
{
  v2 = *(type metadata accessor for WeatherDayVarianceViewStyle() + 24);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A20);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BCE3E030;
    sub_1BCE1CA90();
    sub_1BCE1CAE0();
    OUTLINED_FUNCTION_3_47();
    *(v4 + 32) = v1;
    sub_1BCE1CA90();
    sub_1BCE1CAE0();
    OUTLINED_FUNCTION_3_47();
    *(v4 + 40) = v1;
    v3 = MEMORY[0x1BFB2F5B0](v4);
    *(v0 + v2) = v3;
  }

  return v3;
}

void sub_1BC99B968()
{
  if (!qword_1EDA1EA48)
  {
    sub_1BCE1D0D0();
    v0 = sub_1BCE1B4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1EA48);
    }
  }
}

uint64_t sub_1BC99B9C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC99BA18()
{
  v1 = v0;
  v2 = sub_1BCE1D0D0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  sub_1BCACE034(&v17 - v7);
  sub_1BCE1D0B0();
  sub_1BC99BC9C();
  v9 = sub_1BCE1D210();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if (v9)
  {
    if (qword_1EDA1C5C0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for WeatherDayVarianceViewStyle();
    __swift_project_value_buffer(v11, qword_1EDA1C5C8);
    swift_beginAccess();
    v12 = WeatherDayVarianceViewStyle.accentableGradientTrack.getter();
  }

  else if (*(v1 + *(type metadata accessor for WeatherDayVarianceView() + 44)) == 1)
  {
    if (qword_1EDA1C5C0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for WeatherDayVarianceViewStyle();
    __swift_project_value_buffer(v13, qword_1EDA1C5C8);
    swift_beginAccess();
    v12 = WeatherDayVarianceViewStyle.gradientTrack.getter();
  }

  else
  {
    if (qword_1EDA1C5C0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for WeatherDayVarianceViewStyle();
    __swift_project_value_buffer(v14, qword_1EDA1C5C8);
    swift_beginAccess();
    v12 = WeatherDayVarianceViewStyle.nightGradientTrack.getter();
  }

  v15 = v12;
  swift_endAccess();
  return v15;
}

unint64_t sub_1BC99BC9C()
{
  result = qword_1EDA1C3F8[0];
  if (!qword_1EDA1C3F8[0])
  {
    sub_1BCE1D0D0();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA1C3F8);
  }

  return result;
}

uint64_t sub_1BC99BCF4()
{
  sub_1BCE1E100();
  VFXEffectViewID.hash(into:)();
  return sub_1BCE1E150();
}

uint64_t VFXEffectViewID.hash(into:)()
{
  switch(*(v0 + 8))
  {
    case 0:
      v1 = 1;
      goto LABEL_7;
    case 1:
      v1 = 2;
      goto LABEL_7;
    case 2:
      v1 = 3;
      goto LABEL_7;
    case 3:
      v1 = 4;
      goto LABEL_7;
    case 4:
      v1 = 5;
LABEL_7:
      result = MEMORY[0x1BFB30850](v1);
      break;
    default:
      MEMORY[0x1BFB30850](0);

      result = sub_1BCE1D370();
      break;
  }

  return result;
}

uint64_t sub_1BC99BE20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void VFXLoadRequest.hasSignificantlyChanged.getter()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0;
  v2 = sub_1BCE199D0();
  OUTLINED_FUNCTION_2();
  v29 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C458);
  OUTLINED_FUNCTION_14(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  v12 = type metadata accessor for BackgroundAnimationData.Model(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v28 - v18;
  v20 = type metadata accessor for VFXLoadRequest(0);
  sub_1BC9660CC(v1 + *(v20 + 20), v11, &qword_1EBD0C458);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1BC94C05C(v11, &qword_1EBD0C458);
  }

  else
  {
    OUTLINED_FUNCTION_10_43();
    sub_1BC9526CC();
    sub_1BC94DDD8(&qword_1EDA1EB78, 255, MEMORY[0x1E6984D30]);
    if ((sub_1BCE1D210() & 1) != 0 && (sub_1BC9694D8(), v21 = v12[6], v28[1] = v1, v22 = *(v29 + 16), v22(v7, v16 + v21, v2), v23 = *(v16 + v12[8]), v31 = *(v16 + v12[9]), LOBYTE(v29) = sub_1BC9672EC(v7, &v31, v23), LODWORD(v29) = v29, sub_1BC99A150(v16, type metadata accessor for BackgroundAnimationData.Model), sub_1BC9694D8(), v22(v7, v16 + v12[6], v2), v24 = *(v16 + v12[8]), v30 = *(v16 + v12[9]), v25 = sub_1BC9672EC(v7, &v30, v24), sub_1BC99A150(v16, type metadata accessor for BackgroundAnimationData.Model), v29 == v25))
    {
      VFXLoadRequest.hasLocationChanged.getter();
      OUTLINED_FUNCTION_5_54();
      sub_1BC99A150(v19, v26);
    }

    else
    {
      OUTLINED_FUNCTION_5_54();
      sub_1BC99A150(v19, v27);
    }
  }

  OUTLINED_FUNCTION_21();
}

Swift::Double __swiftcall WeatherVFXConditionBackground.startLoading(hasSignificantlyChanged:)(Swift::Bool hasSignificantlyChanged)
{
  v2 = v1;
  v35 = hasSignificantlyChanged;
  v3 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v34 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = sub_1BCE1D050();
  OUTLINED_FUNCTION_2();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_0();
  v23 = (v22 - v21);
  sub_1BC9905D4();
  *v23 = sub_1BCE1D9B0();
  (*(v19 + 104))(v23, *MEMORY[0x1E69E8020], v17);
  v24 = sub_1BCE1D070();
  (*(v19 + 8))(v23, v17);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((WeatherVFXConditionBackground.isLoaded.getter() & 1) != 0 && v35)
  {
    sub_1BCE19050();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v3);
    v25 = OBJC_IVAR____TtC9WeatherUI29WeatherVFXConditionBackground_fadeOutAnimationStartDate;
    OUTLINED_FUNCTION_8_5();
    sub_1BCA7B550(v16, v2 + v25);
    swift_endAccess();
    if (qword_1EDA1E928 == -1)
    {
LABEL_5:
      sub_1BCE1B6E0();
      return 0.8;
    }

LABEL_17:
    OUTLINED_FUNCTION_1_10();
    goto LABEL_5;
  }

  sub_1BCE19050();
  v27 = OBJC_IVAR____TtC9WeatherUI29WeatherVFXConditionBackground_fadeOutAnimationStartDate;
  swift_beginAccess();
  sub_1BC952ABC(v2 + v27, v13, &qword_1EBD07868);
  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    sub_1BCE18F50();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v3);
    v29 = v34;
    if (EnumTagSinglePayload != 1)
    {
      sub_1BC94C05C(v13, &qword_1EBD07868);
    }
  }

  else
  {
    v29 = v34;
    (*(v34 + 32))(v7, v13, v3);
  }

  sub_1BCE18F90();
  v31 = v30;
  v32 = *(v29 + 8);
  v32(v7, v3);
  v32(v10, v3);
  v33 = v31 >= 0.8 || v31 <= 0.0;
  result = 0.8 - v31;
  if (v33)
  {
    return 0.0;
  }

  return result;
}

unint64_t sub_1BC99C5AC()
{
  result = qword_1EDA1B840;
  if (!qword_1EDA1B840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD08558);
    sub_1BC99ACD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B840);
  }

  return result;
}

uint64_t sub_1BC99C630()
{
  v7 = sub_1BCE1D9A0();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BCE1D980();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1BCE1D020();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1BC947608(0, &qword_1EDA1C128);
  sub_1BCE1D010();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1BC94DDD8(&qword_1EDA1C130, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D78);
  sub_1BC94DD84(&qword_1EDA1C210, &qword_1EBD07D78);
  sub_1BCE1DC30();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1BCE1D9D0();
  qword_1EDA1E5F8 = result;
  return result;
}

unint64_t sub_1BC99C898()
{
  result = qword_1EDA1E9C8;
  if (!qword_1EDA1E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1E9C8);
  }

  return result;
}

uint64_t sub_1BC99C908(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v89 = v1;
  v90 = v2;
  v4 = v3;
  v6 = v5;
  v96 = type metadata accessor for WeatherConditionConfigurationModel();
  MEMORY[0x1EEE9AC00](v96);
  v103 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for VFXLoadRequest(0);
  v97 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BCE1AC50();
  isUniquelyReferenced_nonNull_native = *(v9 - 8);
  v11 = *(isUniquelyReferenced_nonNull_native + 64);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v85 - v13;
  sub_1BCE1A780();
  swift_beginAccess();
  v98 = v6;
  v14 = *(v6 + 152);

  sub_1BCE1A790();

  v15 = sub_1BC99D76C(v4, v14);

  if (!v15[2])
  {
  }

  v91 = v15;
  if (qword_1EDA1EE78 != -1)
  {
LABEL_23:
    swift_once();
  }

  v16 = sub_1BCE1ACC0();
  __swift_project_value_buffer(v16, qword_1EDA1EE80);
  v17 = v91;

  v18 = sub_1BCE1ACA0();
  v19 = sub_1BCE1D8D0();

  v20 = os_log_type_enabled(v18, v19);
  v86 = isUniquelyReferenced_nonNull_native;
  v87 = v9;
  v85 = v11;
  if (v20)
  {
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v107[0] = v21;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    type metadata accessor for Request(0);
    sub_1BC94E37C();

    v22 = sub_1BCE1D140();
    isUniquelyReferenced_nonNull_native = v23;

    v24 = sub_1BC98FE38(v22, isUniquelyReferenced_nonNull_native, v107);

    *(v9 + 14) = v24;
    _os_log_impl(&dword_1BC940000, v18, v19, "Executing VFX background requests; requests=%{private,mask.hash}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1BFB31B10](v21, -1, -1);
    MEMORY[0x1BFB31B10](v9, -1, -1);
  }

  v25 = *(v98 + 184);
  sub_1BCE1AC40();
  sub_1BCE1DA00();
  sub_1BCE1AC30();
  v26 = sub_1BC99FD58(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C468);
  sub_1BC94E37C();
  v27 = sub_1BCE1D130();
  v28 = *(v26 + 16);
  if (!v28)
  {
LABEL_18:
    v73 = swift_allocObject();
    *(v73 + 16) = MEMORY[0x1E69E7CC0];
    v74 = v98;
    v75 = WeatherConditionBackgroundManager.vfxScene.getter();
    v76 = swift_allocObject();
    *(v76 + 16) = v75;
    *(v76 + 24) = v26;
    *(v76 + 32) = v27;
    *(v76 + 40) = v74;
    v77 = v90;
    *(v76 + 48) = v73;
    *(v76 + 56) = v77;
    *(v76 + 64) = v89 & 1;
    *(v76 + 72) = v91;
    v78 = v75;

    sub_1BCE1ADB0();

    v80 = v86;
    v79 = v87;
    v81 = v88;
    (*(v86 + 16))(v88, v92, v87);
    v82 = (*(v80 + 80) + 40) & ~*(v80 + 80);
    v83 = swift_allocObject();
    *(v83 + 2) = v73;
    *(v83 + 3) = v74;
    *(v83 + 4) = v26;
    (*(v80 + 32))(&v83[v82], v81, v79);

    sub_1BCE1ADB0();

    (*(v80 + 8))(v92, v79);
  }

  v29 = 0;
  v30 = *(v97 + 80);
  v94 = v26;
  v95 = v26 + ((v30 + 32) & ~v30);
  v93 = v28 - 1;
  while (1)
  {
    if (v29 >= v28)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v99 = v29;
    v31 = v102;
    sub_1BC9694D8();
    v32 = v31 + *(v104 + 24);
    v33 = type metadata accessor for BackgroundAnimationData.Model(0);
    v34 = v33[6];
    v35 = sub_1BCE199D0();
    v36 = v103;
    (*(*(v35 - 8) + 16))(v103, v32 + v34, v35);
    v37 = v33[7];
    v101 = v27;
    v38 = v96;
    v39 = *(v96 + 20);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860);
    (*(*(v40 - 8) + 16))(v36 + v39, v32 + v37, v40);
    v41 = *(v32 + v33[8]);
    v100 = *(v32 + v33[9]);
    v42 = v32 + v33[10];
    v43 = *v42;
    LOBYTE(v39) = *(v42 + 8);
    v44 = v33[5];
    v45 = v38[9];
    v46 = sub_1BCE19060();
    (*(*(v46 - 8) + 16))(v36 + v45, v32 + v44, v46);
    sub_1BC9660CC(v32 + v33[14], v36 + v38[10], &qword_1EBD07868);
    sub_1BC9660CC(v32 + v33[15], v36 + v38[11], &qword_1EBD07868);
    sub_1BCE1A6E0();
    sub_1BC9660CC(v32 + v33[11], v36 + v38[13], &qword_1EBD07870);
    v47 = v32 + v33[12];
    LOBYTE(v33) = *(v47 + 33);
    v48 = v104;
    v49 = *(v104 + 32);
    v50 = v38[15];
    v51 = sub_1BCE1B7E0();
    (*(*(v51 - 8) + 16))(v36 + v50, v31 + v49, v51);
    v52 = *(v31 + *(v48 + 36));
    v53 = *(v47 + 34);
    v54 = v31 + *(v48 + 40);
    v55 = *(v54 + 16);
    *(v36 + v38[6]) = v41;
    *(v36 + v38[7]) = v100;
    v56 = v36 + v38[8];
    *v56 = v43;
    *(v56 + 8) = v39;
    *(v36 + v38[14]) = v33;
    *(v36 + v38[16]) = v52;
    *(v36 + v38[17]) = v53;
    v57 = v36 + v38[18];
    *v57 = *v54;
    *(v57 + 16) = v55;
    v9 = *(v47 + 16);
    v58 = *(v47 + 24);
    v59 = *(v98 + 88);
    v11 = *(v98 + 96);
    __swift_project_boxed_opaque_existential_1((v98 + 64), v59);
    v60 = *(v11 + 8);

    v60(v107, v36, v59, v11);
    v61 = v101;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v61;
    v62 = sub_1BC99A6B8();
    if (__OFADD__(v61[2], (v63 & 1) == 0))
    {
      goto LABEL_21;
    }

    v64 = v62;
    v65 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C470);
    if (sub_1BCE1DE10())
    {
      break;
    }

LABEL_12:
    if (v65)
    {
      v27 = v106;
      v68 = (v106[7] + 2336 * v64);
      memcpy(v105, v68, sizeof(v105));
      memcpy(v68, v107, 0x918uLL);
      sub_1BC94C05C(v105, &qword_1EBD0C468);
      sub_1BC99A150(v103, type metadata accessor for WeatherConditionConfigurationModel);
    }

    else
    {
      v27 = v106;
      v106[(v64 >> 6) + 8] |= 1 << v64;
      v69 = (v27[6] + 16 * v64);
      *v69 = v9;
      v69[1] = v58;
      memcpy((v27[7] + 2336 * v64), v107, 0x918uLL);
      sub_1BC9775B8(v9, v58);
      sub_1BC99A150(v103, type metadata accessor for WeatherConditionConfigurationModel);
      v70 = v27[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_22;
      }

      v27[2] = v72;
    }

    sub_1BC99A150(v102, type metadata accessor for VFXLoadRequest);
    v26 = v94;
    if (v93 == v99)
    {
      goto LABEL_18;
    }

    v28 = *(v94 + 16);
    v29 = v99 + 1;
  }

  v66 = sub_1BC99A6B8();
  if ((v65 & 1) == (v67 & 1))
  {
    v64 = v66;
    goto LABEL_12;
  }

  result = sub_1BCE1E0F0();
  __break(1u);
  return result;
}

uint64_t sub_1BC99D3A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BC99D3E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t type metadata accessor for WeatherConditionConfigurationModel()
{
  result = qword_1EDA1E4D0;
  if (!qword_1EDA1E4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC99D4E4()
{
  sub_1BCE199D0();
  if (v0 <= 0x3F)
  {
    sub_1BC949A20(319, &qword_1EDA1EF88, sub_1BC949AE8, MEMORY[0x1E6968070]);
    if (v1 <= 0x3F)
    {
      sub_1BCE19060();
      if (v2 <= 0x3F)
      {
        sub_1BC949A20(319, &qword_1EDA1EF30, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1BCE19470();
          if (v4 <= 0x3F)
          {
            sub_1BC949A20(319, qword_1EDA1D6B0, type metadata accessor for BackgroundMoonData, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1BCE1B7E0();
              if (v6 <= 0x3F)
              {
                sub_1BC99D6C8();
                if (v7 <= 0x3F)
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

void sub_1BC99D6C8()
{
  if (!qword_1EDA1D450[0])
  {
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, qword_1EDA1D450);
    }
  }
}

unint64_t sub_1BC99D718()
{
  result = qword_1EDA1A390;
  if (!qword_1EDA1A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1A390);
  }

  return result;
}

unint64_t *sub_1BC99D76C(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v4 = sub_1BCCD7628(v12, v7, v4, a2);
      MEMORY[0x1BFB31B10](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = (v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1BC99E464(0, v7, v9);

  v10 = sub_1BC99D930(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1BC99D930(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v93 = a4;
  v77 = a2;
  v79 = a1;
  v5 = type metadata accessor for VFXLoadRequest(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v74 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C460);
  MEMORY[0x1EEE9AC00](v78);
  v86 = &v72[-v7];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C488);
  MEMORY[0x1EEE9AC00](v91);
  v95 = &v72[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C438);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v72[-v15];
  v17 = type metadata accessor for Request(0);
  v89 = *(v17 - 8);
  v90 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v72[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v72[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v83 = &v72[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v25 = 0;
  v94 = a3;
  v26 = *(a3 + 64);
  v80 = 0;
  v81 = a3 + 64;
  v27 = 1 << *(a3 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v82 = (v27 + 63) >> 6;
  v84 = v13;
  v85 = v16;
  v92 = &v72[-v24];
LABEL_4:
  if (v29)
  {
    v30 = v13;
    v31 = __clz(__rbit64(v29));
    v98 = (v29 - 1) & v29;
    goto LABEL_11;
  }

  v32 = v25;
  while (1)
  {
    v25 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_66:
      __break(1u);
      JUMPOUT(0x1BC99E3FCLL);
    }

    if (v25 >= v82)
    {
      break;
    }

    v33 = *(v81 + 8 * v25);
    ++v32;
    if (v33)
    {
      v30 = v13;
      v31 = __clz(__rbit64(v33));
      v98 = (v33 - 1) & v33;
LABEL_11:
      v34 = v31 | (v25 << 6);
      v35 = (*(v94 + 48) + 16 * v34);
      v37 = *v35;
      v36 = v35[1];
      v88 = v34;
      sub_1BC9694D8();
      sub_1BC9694D8();
      v38 = v90;
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v90);
      v39 = *(v93 + 16);
      v96 = v37;
      v97 = v36;
      if (v39)
      {
        sub_1BC9775B8(v37, v36);
        sub_1BC99A6B8();
        if (v40)
        {
          sub_1BC9694D8();
          v41 = v30;
          v42 = 0;
        }

        else
        {
          v41 = v30;
          v42 = 1;
        }

        __swift_storeEnumTagSinglePayload(v41, v42, 1, v38);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v30, 1, 1, v38);
        sub_1BC9775B8(v37, v36);
      }

      v13 = v30;
      v43 = *(v91 + 48);
      v44 = v16;
      v45 = v16;
      v46 = v95;
      sub_1BC9660CC(v44, v95, &qword_1EBD0C438);
      sub_1BC9660CC(v30, &v46[v43], &qword_1EBD0C438);
      if (__swift_getEnumTagSinglePayload(v46, 1, v38) == 1)
      {
        sub_1BC94C05C(v30, &qword_1EBD0C438);
        sub_1BC94C05C(v45, &qword_1EBD0C438);
        v67 = __swift_getEnumTagSinglePayload(&v46[v43], 1, v38) == 1;
        v47 = v46;
        v16 = v45;
        v48 = v97;
        if (!v67)
        {
LABEL_25:
          v54 = &qword_1EBD0C488;
          goto LABEL_49;
        }

LABEL_20:
        sub_1BC94C05C(v47, &qword_1EBD0C438);
        sub_1BC99A150(v92, type metadata accessor for Request);
        sub_1BC977830(v96, v48);
        *(v79 + ((v88 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v88;
        v49 = __OFADD__(v80++, 1);
        v29 = v98;
        if (v49)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v50 = v87;
        sub_1BC9660CC(v46, v87, &qword_1EBD0C438);
        if (__swift_getEnumTagSinglePayload(&v46[v43], 1, v38) == 1)
        {
          v51 = v84;
          sub_1BC94C05C(v84, &qword_1EBD0C438);
          v52 = v85;
          sub_1BC94C05C(v85, &qword_1EBD0C438);
          v53 = v50;
          v13 = v51;
          sub_1BC99A150(v53, type metadata accessor for Request);
          v47 = v46;
          v16 = v52;
          v48 = v97;
          goto LABEL_25;
        }

        sub_1BC9526CC();
        v55 = &v86[*(v78 + 48)];
        sub_1BC9694D8();
        sub_1BC9694D8();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v48 = v97;
        if (EnumCaseMultiPayload == 1)
        {
          v57 = v76;
          sub_1BC9694D8();
          v59 = *v57;
          v58 = v57[1];
          v60 = swift_getEnumCaseMultiPayload();
          v13 = v84;
          if (v60 == 1)
          {
            v62 = *v55;
            v61 = v55[1];
            v16 = v85;
            switch(v58)
            {
              case 0uLL:
                if (v61)
                {
                  v58 = 0;
LABEL_46:
                  sub_1BC977830(v59, v58);
                  sub_1BC977830(v62, v61);
LABEL_47:
                  sub_1BC99A150(v86, type metadata accessor for Request);
                  goto LABEL_48;
                }

                sub_1BC977830(v59, 0);
                v68 = v62;
                v69 = 0;
                break;
              case 1uLL:
                if (v61 != 1)
                {
                  v58 = 1;
                  goto LABEL_46;
                }

                sub_1BC977830(v59, 1uLL);
                v68 = v62;
                v69 = 1;
                break;
              case 2uLL:
                if (v61 != 2)
                {
                  v58 = 2;
                  goto LABEL_46;
                }

                sub_1BC977830(v59, 2uLL);
                v68 = v62;
                v69 = 2;
                break;
              case 3uLL:
                if (v61 != 3)
                {
                  v58 = 3;
                  goto LABEL_46;
                }

                sub_1BC977830(v59, 3uLL);
                v68 = v62;
                v69 = 3;
                break;
              case 4uLL:
                if (v61 != 4)
                {
                  v58 = 4;
                  goto LABEL_46;
                }

                sub_1BC977830(v59, 4uLL);
                v68 = v62;
                v69 = 4;
                break;
              default:
                if (v61 < 5)
                {
                  goto LABEL_46;
                }

                v67 = v59 == v62 && v58 == v61;
                if (!v67)
                {
                  v73 = sub_1BCE1E090();
                  sub_1BC977830(v59, v58);
                  sub_1BC977830(v62, v61);
                  if (v73)
                  {
                    goto LABEL_63;
                  }

                  goto LABEL_47;
                }

                sub_1BC977830(v59, v58);
                v68 = v59;
                v69 = v58;
                break;
            }

            sub_1BC977830(v68, v69);
LABEL_63:
            sub_1BC99A150(v86, type metadata accessor for Request);
            sub_1BC99A150(v83, type metadata accessor for Request);
            sub_1BC94C05C(v13, &qword_1EBD0C438);
            sub_1BC94C05C(v16, &qword_1EBD0C438);
            sub_1BC99A150(v87, type metadata accessor for Request);
            v47 = v95;
            goto LABEL_20;
          }

          sub_1BC977830(v59, v58);
        }

        else
        {
          v63 = v75;
          sub_1BC9694D8();
          v64 = swift_getEnumCaseMultiPayload();
          v13 = v84;
          if (v64 != 1)
          {
            v65 = v74;
            sub_1BC9526CC();
            v66 = static VFXLoadRequest.== infix(_:_:)();
            sub_1BC99A150(v65, type metadata accessor for VFXLoadRequest);
            sub_1BC99A150(v63, type metadata accessor for VFXLoadRequest);
            v16 = v85;
            if (v66)
            {
              goto LABEL_63;
            }

            goto LABEL_47;
          }

          sub_1BC99A150(v63, type metadata accessor for VFXLoadRequest);
        }

        v16 = v85;
        sub_1BC94C05C(v86, &qword_1EBD0C460);
LABEL_48:
        sub_1BC99A150(v83, type metadata accessor for Request);
        sub_1BC94C05C(v13, &qword_1EBD0C438);
        sub_1BC94C05C(v16, &qword_1EBD0C438);
        sub_1BC99A150(v87, type metadata accessor for Request);
        v47 = v95;
        v54 = &qword_1EBD0C438;
LABEL_49:
        sub_1BC94C05C(v47, v54);
        v29 = v98;
        sub_1BC99A150(v92, type metadata accessor for Request);
        sub_1BC977830(v96, v48);
      }

      goto LABEL_4;
    }
  }

  v70 = sub_1BC99F254(v79, v77, v80, v94);

  return v70;
}

unint64_t sub_1BC99E410()
{
  result = qword_1EDA1ACD8;
  if (!qword_1EDA1ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1ACD8);
  }

  return result;
}

uint64_t sub_1BC99E464(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1BCE44170;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL static VFXLoadRequest.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_12_0();
  v3 = type metadata accessor for VFXLoadRequest(v2);
  if ((static BackgroundAnimationData.Model.== infix(_:_:)(v1 + *(v3 + 24), v0 + *(v3 + 24)) & 1) == 0 || (sub_1BCE1B7D0() & 1) == 0 || (sub_1BC970874() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v3 + 40);
  v5 = (v1 + v4);
  v6 = *(v1 + v4 + 16);
  v7 = (v0 + v4);
  v8 = v7[2];
  if (!v6)
  {
    if (!v8)
    {

      return *v1 == *v0;
    }

LABEL_13:

    return 0;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = *v7;
  if (COERCE_FLOAT(*v5) != COERCE_FLOAT(*v7) || ((v10 = v7[1], COERCE_FLOAT(HIDWORD(*v5)) == *(&v9 + 1)) ? (v11 = v5[2] == *&v10) : (v11 = 0), !v11))
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    return 0;
  }

  if ((sub_1BC99F1F0(v6, v8) & 1) == 0)
  {
    return 0;
  }

  return *v1 == *v0;
}

uint64_t static BackgroundAnimationData.Model.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BCE19060();
  v71 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v68 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  v9 = OUTLINED_FUNCTION_14(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3();
  v67 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08E80);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3();
  v69 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v64 - v19;
  type metadata accessor for BackgroundMoonData();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_24_15();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07870);
  v22 = OUTLINED_FUNCTION_14(v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v64 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC28);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v64 - v27;
  if ((sub_1BCE1A6B0() & 1) == 0)
  {
    goto LABEL_22;
  }

  v66 = v14;
  v29 = type metadata accessor for BackgroundAnimationData.Model(0);
  if ((sub_1BCE19010() & 1) == 0)
  {
    goto LABEL_22;
  }

  if ((sub_1BC99EE9C() & 1) == 0)
  {
    goto LABEL_22;
  }

  v65 = v5;
  sub_1BC949AE8();
  if ((sub_1BCE185B0() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (*(a1 + v29[8]) != *(a2 + v29[8]))
  {
    goto LABEL_22;
  }

  if (*(a1 + v29[9]) != *(a2 + v29[9]))
  {
    goto LABEL_22;
  }

  v30 = v29[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = a2 + v30;
  if (v32 != *(v33 + 8) || vabdd_f64(*v31, *v33) >= 0.0001)
  {
    goto LABEL_22;
  }

  v64 = v29;
  v34 = *(v25 + 48);
  sub_1BC99F06C();
  sub_1BC99F06C();
  OUTLINED_FUNCTION_21_1(v28);
  if (v36)
  {
    OUTLINED_FUNCTION_21_1(&v28[v34]);
    v35 = v65;
    if (v36)
    {
      sub_1BC94C05C(v28, &qword_1EBD07870);
      goto LABEL_20;
    }

LABEL_17:
    v37 = &qword_1EBD0BC28;
    v38 = v28;
LABEL_18:
    sub_1BC94C05C(v38, v37);
    goto LABEL_22;
  }

  sub_1BC99F06C();
  OUTLINED_FUNCTION_21_1(&v28[v34]);
  v35 = v65;
  if (v36)
  {
    sub_1BC969F84(v24, type metadata accessor for BackgroundMoonData);
    goto LABEL_17;
  }

  sub_1BC999604();
  v39 = static BackgroundMoonData.== infix(_:_:)(v24, v2);
  sub_1BC969F84(v2, type metadata accessor for BackgroundMoonData);
  sub_1BC969F84(v24, type metadata accessor for BackgroundMoonData);
  sub_1BC94C05C(v28, &qword_1EBD07870);
  if ((v39 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  v40 = v64;
  v41 = v64[12];
  memcpy(v76, (a1 + v41), 0x59uLL);
  memcpy(v75, (a1 + v41), 0x59uLL);
  v42 = v64[12];
  memcpy(v77, (a2 + v42), 0x59uLL);
  memcpy(v74, (a2 + v42), 0x59uLL);
  sub_1BC96A9A0(v76, v73);
  sub_1BC96A9A0(v77, v73);
  LOBYTE(v42) = static WeatherConditionBackgroundOptions.== infix(_:_:)(v75, v74);
  memcpy(v78, v74, 0x59uLL);
  sub_1BC9812B4(v78);
  memcpy(__dst, v75, 0x59uLL);
  sub_1BC9812B4(__dst);
  if ((v42 & 1) == 0 || *(a1 + v40[13]) != *(a2 + v40[13]))
  {
    goto LABEL_22;
  }

  v45 = *(v66 + 48);
  v46 = v72;
  sub_1BC99F06C();
  OUTLINED_FUNCTION_17_27();
  OUTLINED_FUNCTION_17_0(v46);
  if (v36)
  {
    OUTLINED_FUNCTION_17_0(v46 + v45);
    if (!v36)
    {
      goto LABEL_39;
    }

    sub_1BC94C05C(v46, &qword_1EBD07868);
  }

  else
  {
    v47 = v70;
    sub_1BC99F06C();
    OUTLINED_FUNCTION_17_0(v46 + v45);
    if (v48)
    {
LABEL_38:
      (*(v71 + 8))(v47, v35);
LABEL_39:
      v37 = &qword_1EBD08E80;
      v38 = v46;
      goto LABEL_18;
    }

    v49 = v71;
    v50 = v68;
    (*(v71 + 32))(v68, v46 + v45, v35);
    OUTLINED_FUNCTION_8_54();
    sub_1BC994C10(v51, v52);
    v53 = sub_1BCE1D210();
    v54 = *(v49 + 8);
    v54(v50, v35);
    v54(v47, v35);
    sub_1BC94C05C(v46, &qword_1EBD07868);
    if ((v53 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v55 = *(v66 + 48);
  v46 = v69;
  sub_1BC99F06C();
  OUTLINED_FUNCTION_17_27();
  OUTLINED_FUNCTION_17_0(v46);
  if (v36)
  {
    OUTLINED_FUNCTION_17_0(v46 + v55);
    if (v36)
    {
      sub_1BC94C05C(v46, &qword_1EBD07868);
LABEL_41:
      v43 = *(a1 + v64[16]) ^ *(a2 + v64[16]) ^ 1;
      return v43 & 1;
    }

    goto LABEL_39;
  }

  v47 = v67;
  sub_1BC99F06C();
  OUTLINED_FUNCTION_17_0(v46 + v55);
  if (v56)
  {
    goto LABEL_38;
  }

  v57 = v71;
  v58 = v46 + v55;
  v59 = v68;
  (*(v71 + 32))(v68, v58, v35);
  OUTLINED_FUNCTION_8_54();
  sub_1BC994C10(v60, v61);
  v62 = sub_1BCE1D210();
  v63 = *(v57 + 8);
  v63(v59, v35);
  v63(v47, v35);
  sub_1BC94C05C(v46, &qword_1EBD07868);
  if (v62)
  {
    goto LABEL_41;
  }

LABEL_22:
  v43 = 0;
  return v43 & 1;
}

uint64_t View.isHidden(_:defaultAccessibilityHidden:)(char a1, char a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x1BFB2F100](v4, a3, &type metadata for IsHidden);
}

uint64_t sub_1BC99EEF4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  v3 = OUTLINED_FUNCTION_22_3();
  sub_1BC99EFC8(v3, v4);
  sub_1BCE1D520();
  sub_1BCE1D520();
  if (v10 == v8 && v11 == v9)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1BCE1E090();
  }

  return v6 & 1;
}

uint64_t sub_1BC99EFC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC99F010(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_10_1();
  v5(v4);
  return a2;
}

uint64_t sub_1BC99F06C()
{
  OUTLINED_FUNCTION_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_0_3();
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  return v0;
}

unint64_t sub_1BC99F0C0()
{
  result = qword_1EDA1ACD0;
  if (!qword_1EDA1ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1ACD0);
  }

  return result;
}

double sub_1BC99F114@<D0>(uint64_t a1@<X8>)
{
  DividerShape.path(in:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

unint64_t sub_1BC99F158()
{
  result = qword_1EDA1A398[0];
  if (!qword_1EDA1A398[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA1A398);
  }

  return result;
}

double DividerShape.path(in:)@<D0>(uint64_t a1@<X8>)
{
  sub_1BCE1CF30();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1BC99F1F0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC99F254(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Request(0);
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v36 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (*(a4 + 16) != a3)
  {
    v38 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C490);
    v12 = sub_1BCE1DE90();
    v13 = v12;
    if (a2 < 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = *a1;
    }

    v15 = 0;
    v16 = v12 + 64;
    v37 = a4;
    while (1)
    {
      if (v14)
      {
        v17 = __clz(__rbit64(v14));
        v41 = (v14 - 1) & v14;
        goto LABEL_16;
      }

      v18 = v15;
      do
      {
        v15 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          JUMPOUT(0x1BC99F610);
        }

        if (v15 >= a2)
        {
          return v13;
        }

        v19 = a1[v15];
        ++v18;
      }

      while (!v19);
      v17 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_16:
      v20 = (*(a4 + 48) + 16 * (v17 | (v15 << 6)));
      v21 = *v20;
      v22 = v20[1];
      v42 = *(v40 + 72);
      sub_1BC9694D8();
      sub_1BC9526CC();
      sub_1BCE1E100();
      switch(v22)
      {
        case 0:
          v23 = 1;
          goto LABEL_22;
        case 1:
          v23 = 2;
          goto LABEL_22;
        case 2:
          v23 = 3;
          goto LABEL_22;
        case 3:
          v23 = 4;
          goto LABEL_22;
        case 4:
          v23 = 5;
LABEL_22:
          MEMORY[0x1BFB30850](v23);
          break;
        default:
          MEMORY[0x1BFB30850](0);

          sub_1BCE1D370();
          break;
      }

      v24 = sub_1BCE1E150();
      v25 = -1 << *(v13 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) != 0)
      {
        v28 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = 0;
        v30 = (63 - v25) >> 6;
        do
        {
          if (++v27 == v30 && (v29 & 1) != 0)
          {
            goto LABEL_39;
          }

          v31 = v27 == v30;
          if (v27 == v30)
          {
            v27 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v27);
        }

        while (v32 == -1);
        v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      }

      *(v16 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v33 = (*(v13 + 48) + 16 * v28);
      *v33 = v21;
      v33[1] = v22;
      sub_1BC9526CC();
      ++*(v13 + 16);
      if (__OFSUB__(a3--, 1))
      {
        goto LABEL_40;
      }

      a4 = v37;
      v14 = v41;
      if (!a3)
      {
        return v13;
      }
    }
  }

  return a4;
}

uint64_t sub_1BC99F62C()
{
  v0 = type metadata accessor for VFXLoadRequest(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Request(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC9694D8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(v5 + 1);
    v14 = 0x2865766F6D6552;
    v15 = 0xE700000000000000;
    v7 = 0x6E6F697461636F6CLL;
    v8 = 0xEE00726577656956;
    switch(v6)
    {
      case 0uLL:
        break;
      case 1uLL:
        v8 = 0xEF77656976657250;
        break;
      case 2uLL:
        v8 = 0x80000001BCE8F5E0;
        v7 = 0xD000000000000015;
        break;
      case 3uLL:
        v8 = 0xEB00000000776569;
        v7 = 0x5674736554786676;
        break;
      case 4uLL:
        v8 = 0xE600000000000000;
        v7 = 0x726574736F70;
        break;
      default:
        v12 = 0x2D7473696CLL;
        v13 = 0xE500000000000000;
        MEMORY[0x1BFB2FB00](0xEE00726577656956, v6);
        sub_1BC977830(0xEE00726577656956, v6);
        v7 = v12;
        v8 = v13;
        break;
    }

    MEMORY[0x1BFB2FB00](v7, v8);

    MEMORY[0x1BFB2FB00](41, 0xE100000000000000);
    return v14;
  }

  else
  {
    sub_1BC9526CC();
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1BCE1DD50();
    MEMORY[0x1BFB2FB00](0x646F6D2864616F4CLL, 0xEB000000003A6C65);
    v9 = BackgroundAnimationData.Model.description.getter();
    MEMORY[0x1BFB2FB00](v9);

    MEMORY[0x1BFB2FB00](0x3A657A6973202CLL, 0xE700000000000000);
    LOBYTE(v12) = v2[*(v0 + 36)];
    sub_1BCE1DE00();
    MEMORY[0x1BFB2FB00](41, 0xE100000000000000);
    v10 = v14;
    sub_1BC99A150(v2, type metadata accessor for VFXLoadRequest);
  }

  return v10;
}

uint64_t sub_1BC99F964(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BCE1B820();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = sub_1BCE1B900();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(a4 + 32))
  {
    v14 = a2 * 0.5;
  }

  else
  {
    v14 = a2;
  }

  v15 = *(v11 + 28);
  v16 = *MEMORY[0x1E697F468];
  v17 = sub_1BCE1BD60();
  (*(*(v17 - 8) + 104))(v13 + v15, v16, v17);
  *v13 = v14 * 0.5;
  v13[1] = v14 * 0.5;
  sub_1BCE1B8F0();
  sub_1BC99FCA8(v13);
  sub_1BCE1B800();
  sub_1BCE1B7F0();
  sub_1BC99FD04(v21);
  v18 = *(v7 + 8);
  result = v18(v9, v6);
  if ((*(a4 + 8) & 1) == 0)
  {
    sub_1BCE1B830();
    sub_1BCE1C4F0();
    sub_1BCE1CAA0();
    sub_1BCE1B810();

    sub_1BCE1B7F0();
    sub_1BC99FD04(v22);
    v18(v9, v6);
    sub_1BCE1B830();
    sub_1BCE1C4F0();
    sub_1BCE1B810();
    sub_1BCE1B7F0();
    sub_1BC99FD04(v23);
    return v18(v9, v6);
  }

  return result;
}

uint64_t sub_1BC99FCA8(uint64_t a1)
{
  v2 = sub_1BCE1B900();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC99FD58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C478);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for VFXLoadRequest(0);
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Request(0);
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = v16;
    if (!v13)
    {
      break;
    }

LABEL_8:
    sub_1BC9694D8();
    sub_1BC9526CC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1BC99A150(v9, type metadata accessor for Request);
      v18 = 1;
    }

    else
    {
      sub_1BC9526CC();
      v18 = 0;
    }

    v13 &= v13 - 1;
    __swift_storeEnumTagSinglePayload(v4, v18, 1, v5);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      result = sub_1BC94C05C(v4, &qword_1EBD0C478);
    }

    else
    {
      sub_1BC9526CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BC9A04A8();
        v27 = v21;
      }

      v19 = *(v27 + 16);
      v20 = v19 + 1;
      if (v19 >= *(v27 + 24) >> 1)
      {
        v23 = *(v27 + 16);
        v24 = v19 + 1;
        sub_1BC9A04A8();
        v20 = v24;
        v27 = v22;
      }

      *(v27 + 16) = v20;
      result = sub_1BC9526CC();
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return v27;
    }

    v13 = *(a1 + 64 + 8 * v16);
    ++v17;
    if (v13)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

double sub_1BC9A014C@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  RoundedCornersShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_1BC9A01A4(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C458);
    OUTLINED_FUNCTION_1();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      type metadata accessor for BackgroundAnimationData.Model(0);
      OUTLINED_FUNCTION_1();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        v10 = sub_1BCE1B7E0();
        v11 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

double RoundedCornersShape.path(in:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = [objc_opt_self() bezierPathWithRoundedRect:*(v5 + 1) byRoundingCorners:a2 cornerRadii:{a3, a4, a5, *v5, *v5}];
  v8 = [v7 CGPath];
  sub_1BCE1C510();

  result = *&v10;
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  return result;
}

void *sub_1BC9A0398(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C458);
    OUTLINED_FUNCTION_1();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      type metadata accessor for BackgroundAnimationData.Model(0);
      OUTLINED_FUNCTION_1();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = sub_1BCE1B7E0();
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_1BC9A04A8()
{
  OUTLINED_FUNCTION_1_37();
  if (v4)
  {
    OUTLINED_FUNCTION_0_39();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_12_23();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_43();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_19_15(v2, v5, &qword_1EBD09C70, &unk_1BCE52860);
  v8 = OUTLINED_FUNCTION_13_20();
  type metadata accessor for VFXLoadRequest(v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_2_37(v9);
    sub_1BCA1515C(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_32();
  }
}

void *WeatherConditionConfigurationManager.load(for:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v117 = v2;
  v118 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07870);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v115 - v6;
  v116 = type metadata accessor for BackgroundMoonData();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v115 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BCE199D0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WeatherConditionConfigurationModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v115 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v115 - v22;
  sub_1BC9A0F54(v4, &v115 - v22);
  (*(v11 + 16))(v13, v23, v10);
  LOBYTE(v130) = v23[v14[7]];
  OUTLINED_FUNCTION_8_25();
  v26 = sub_1BC9672EC(v13, v24, v25);
  OUTLINED_FUNCTION_0_33();
  sub_1BC9A0FB8(v23, v27);
  LOBYTE(v130) = *(v4 + v14[16]);
  OUTLINED_FUNCTION_7_32();
  OUTLINED_FUNCTION_8_25();
  sub_1BC9A1160(v35, v26, v28, v29, v30, v31, v32, v33, v34);
  if (v129[0] == 2.8)
  {
    v36 = v4 + v14[8];
    v37 = *v36;
    sub_1BC9A0F54(v4, v20);
    v38 = LOBYTE(v129[205]);
    sub_1BC9A5B94(&v20[v14[13]], v7);
    v39 = v116;
    v40 = v4;
    if (__swift_getEnumTagSinglePayload(v7, 1, v116) == 1)
    {
      OUTLINED_FUNCTION_0_33();
      sub_1BC9A0FB8(v20, v41);
      sub_1BCB1F31C(v7);
    }

    else
    {
      v56 = v7;
      v57 = v115;
      sub_1BC9A5C04(v56, v115);
      if (v37 <= 9.0 && (v38 & 1) != 0 && *(v57 + *(v39 + 28)) > 9.0)
      {
        v58 = (v57 + *(v39 + 40));
        if (*v58 == 0x736168506E6F6F6DLL && v58[1] == 0xEA00000000003065)
        {
          OUTLINED_FUNCTION_1_29();
          sub_1BC9A0FB8(v57, v114);
        }

        else
        {
          v60 = sub_1BCE1E090();
          OUTLINED_FUNCTION_1_29();
          sub_1BC9A0FB8(v57, v61);
          if ((v60 & 1) == 0)
          {
            v62 = v20[v14[17]];
            OUTLINED_FUNCTION_0_33();
            sub_1BC9A0FB8(v20, v63);
            v64 = v62 == 0;
LABEL_20:
            OUTLINED_FUNCTION_4_26(v128);
            v68 = *(v36 + 8);
            v126[292] = *v36;
            v127 = v68;
            LOBYTE(v130) = v64 != 2;
            OUTLINED_FUNCTION_7_32();
            OUTLINED_FUNCTION_8_25();
            sub_1BC9A5C68(v69);
            memcpy(v122, v128, 0x918uLL);
            sub_1BC9A7A5C(v122);
            sub_1BC9A7BE0(v4, v37 > 9.0, v126);
            OUTLINED_FUNCTION_2_27();
            OUTLINED_FUNCTION_7_32();
            sub_1BC9A8D50(v126);
            OUTLINED_FUNCTION_8_25();
            memcpy(v70, v71, 0x918uLL);
            sub_1BC9A7A5C(&v123);
            OUTLINED_FUNCTION_2_27();
            OUTLINED_FUNCTION_6_23();
            sub_1BC9A8FB4(v4);
            OUTLINED_FUNCTION_8_25();
            memcpy(v72, v73, 0x918uLL);
            sub_1BC9A7A5C(&v124);
            OUTLINED_FUNCTION_2_27();
            OUTLINED_FUNCTION_6_23();
            sub_1BC9A96C8(v4);
            OUTLINED_FUNCTION_8_25();
            memcpy(v74, v75, 0x918uLL);
            sub_1BC9A7A5C(&v125);
            OUTLINED_FUNCTION_2_27();
            OUTLINED_FUNCTION_6_23();
            sub_1BC9AA044(v76);
            OUTLINED_FUNCTION_8_25();
            memcpy(v77, v78, 0x918uLL);
            sub_1BC9A7A5C(v126);
            OUTLINED_FUNCTION_2_27();
            v79 = v14[15];
            v80 = *(v4 + v14[14]);
            OUTLINED_FUNCTION_4_26(v121);
            if (v80)
            {
              v81 = 0.5;
              if ((v132 | v131))
              {
                v81 = 0.75;
              }

              *&v121[2] = v81;
              v82 = OUTLINED_FUNCTION_5_26();
              sub_1BC9A67F4(v82, v120);
              v83 = OUTLINED_FUNCTION_5_26();
              sub_1BCD6BD98(v83, v121, v40 + v79);
              v85 = v84;
              v86 = OUTLINED_FUNCTION_5_26();
              sub_1BC9A7A5C(v86);
              v121[9] = v85;
            }

            else
            {
              v121[2] = 0x3FE8000000000000;
            }

            memcpy(v129, v121, sizeof(v129));
            OUTLINED_FUNCTION_7_32();
            sub_1BC9AA148(v40);
            memcpy(v120, v121, 0x918uLL);
            sub_1BC9A7A5C(v120);
            if (MADimFlashingLightsEnabled())
            {
              LOBYTE(v129[204]) = 0;
            }

            if (*(v40 + v14[17]) == 3)
            {
              sub_1BCB1F384();
              v87 = sub_1BCE1D900();
              if (v87)
              {
                v88 = v87;
                v89 = sub_1BCE1D240();
                v90 = [v88 integerForKey_];

                if (v90 >= 1)
                {
                  *&v129[3] = v90;
                }

                v91 = v88;
                v92 = sub_1BCE1D240();
                v93 = [v91 BOOLForKey_];

                if (v93)
                {
                  HIBYTE(v129[205]) = 0;
                }

                v94 = v91;
                v95 = sub_1BCE1D240();
                v96 = OUTLINED_FUNCTION_3_37(v95);

                if (v96)
                {
                  BYTE4(v129[204]) = 0;
                }

                v97 = v94;
                v98 = OUTLINED_FUNCTION_10_22();
                v99 = OUTLINED_FUNCTION_3_37(v98);

                if (v99)
                {
                  HIBYTE(v129[203]) = 0;
                }

                v100 = v94;
                v101 = sub_1BCE1D240();
                v102 = OUTLINED_FUNCTION_3_37(v101);

                if (v102)
                {
                  BYTE4(v129[205]) = 0;
                }

                v103 = v100;
                v104 = sub_1BCE1D240();
                v105 = OUTLINED_FUNCTION_3_37(v104);

                if (v105)
                {
                  LOWORD(v129[204]) = 0;
                }

                v106 = v103;
                v107 = OUTLINED_FUNCTION_10_22();
                v108 = OUTLINED_FUNCTION_3_37(v107);

                if (v108)
                {
                  WORD1(v129[204]) = 0;
                }
              }
            }

            OUTLINED_FUNCTION_4_26(v119);
            GEOLocationCoordinate2DMake(v119, v109);
            v110 = v119;
            return memcpy(v117, v110, 0x918uLL);
          }
        }

        OUTLINED_FUNCTION_0_33();
        v67 = v20;
      }

      else
      {
        OUTLINED_FUNCTION_0_33();
        sub_1BC9A0FB8(v20, v65);
        OUTLINED_FUNCTION_1_29();
        v67 = v57;
      }

      sub_1BC9A0FB8(v67, v66);
    }

    v64 = 2;
    goto LABEL_20;
  }

  if (qword_1EDA1EE78 != -1)
  {
    swift_once();
  }

  v42 = sub_1BCE1ACC0();
  __swift_project_value_buffer(v42, qword_1EDA1EE80);
  OUTLINED_FUNCTION_2_27();
  v43 = v17;
  sub_1BC9A0F54(v4, v17);
  v44 = OUTLINED_FUNCTION_5_26();
  sub_1BC9A67F4(v44, v128);
  v45 = sub_1BCE1ACA0();
  v46 = sub_1BCE1D8B0();
  v47 = OUTLINED_FUNCTION_5_26();
  sub_1BC9A7A5C(v47);
  if (os_log_type_enabled(v45, v46))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v128[0] = v49;
    *v48 = 134349570;
    v50 = OUTLINED_FUNCTION_5_26();
    sub_1BC9A7A5C(v50);
    *(v48 + 4) = v130;
    *(v48 + 12) = 2050;
    *(v48 + 14) = 0x4006666666666666;
    *(v48 + 22) = 2082;
    sub_1BCB1F2C4();
    v51 = sub_1BCE1E050();
    v53 = v52;
    OUTLINED_FUNCTION_0_33();
    sub_1BC9A0FB8(v43, v54);
    v55 = sub_1BC98FE38(v51, v53, v128);

    *(v48 + 24) = v55;
    _os_log_impl(&dword_1BC940000, v45, v46, "Trying to load configuration with mismatching version, found: %{public}f expected: %{public}f, condition: %{public}s", v48, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x1BFB31B10](v49, -1, -1);
    MEMORY[0x1BFB31B10](v48, -1, -1);
  }

  else
  {
    v111 = OUTLINED_FUNCTION_5_26();
    sub_1BC9A7A5C(v111);

    OUTLINED_FUNCTION_0_33();
    sub_1BC9A0FB8(v17, v112);
  }

  sub_1BCB1F2BC(v128);
  v110 = v128;
  return memcpy(v117, v110, 0x918uLL);
}

uint64_t sub_1BC9A0F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherConditionConfigurationModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC9A0FB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_1BC9A1010@<D0>(uint64_t a1@<X8>, char a2@<W0>)
{
  switch(a2)
  {
    case 1:
      sub_1BCC24EC4(a1);
      break;
    case 2:
      sub_1BCC55444(a1);
      break;
    case 3:
      *&result = sub_1BC9A31D8(a1).n128_u64[0];
      break;
    case 4:
      result = sub_1BCCBCAF0(a1);
      break;
    case 5:
      sub_1BCA5DCCC(a1);
      break;
    case 6:
      sub_1BCAD8DE4(a1);
      break;
    case 7:
      sub_1BCBBA260(a1);
      break;
    case 8:
    case 33:
      sub_1BCA75714(a1);
      break;
    case 9:
      sub_1BCA49E28(a1);
      break;
    case 10:
      sub_1BCB48C48(a1);
      break;
    case 11:
      sub_1BCBBCD58(a1);
      break;
    case 12:
      *&result = sub_1BCD96F04(a1).n128_u64[0];
      break;
    case 13:
      sub_1BCA8AFFC(a1);
      break;
    case 14:
      sub_1BCAC9780(a1);
      break;
    case 15:
      sub_1BCA0F7B0(a1);
      break;
    case 16:
      *&result = sub_1BCC23850(a1).n128_u64[0];
      break;
    case 17:
      *&result = sub_1BCE04354(a1).n128_u64[0];
      break;
    case 18:
      *&result = sub_1BCDC0504(a1).n128_u64[0];
      break;
    case 19:
      sub_1BCC953C0(a1);
      break;
    case 20:
      sub_1BCA400BC(a1);
      break;
    case 21:
      sub_1BCCEB228(a1);
      break;
    case 22:
      *&result = sub_1BCB22150(a1).n128_u64[0];
      break;
    case 23:
      *&result = sub_1BCB87710(a1).n128_u64[0];
      break;
    case 24:
      *&result = sub_1BCC255E4(a1).n128_u64[0];
      break;
    case 25:
      *&result = sub_1BCCA3D74(a1).n128_u64[0];
      break;
    case 26:
      *&result = sub_1BCA0AD38(a1).n128_u64[0];
      break;
    case 27:
      sub_1BCA997E0(a1);
      break;
    case 28:
      sub_1BCB484AC(a1);
      break;
    case 29:
      sub_1BCD09718(a1);
      break;
    case 30:
      sub_1BCB51740(a1);
      break;
    case 31:
      result = sub_1BCA38EAC(a1);
      break;
    case 32:
      sub_1BCA9F0B4(a1);
      break;
    case 34:
      sub_1BCACF180(a1);
      break;
    case 35:
      sub_1BCE066DC(a1);
      break;
    case 36:
      sub_1BCC230B0(a1);
      break;
    case 37:
      *&result = sub_1BCC9D99C(a1).n128_u64[0];
      break;
    default:
      result = sub_1BCB5100C(a1);
      break;
  }

  return result;
}

double sub_1BC9A1160@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, _BYTE *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  switch(*a3)
  {
    case 1:
      result = sub_1BCB1ECFC(a1, a2);
      break;
    case 2:
      result = sub_1BCB1EDB4(a1, a2);
      break;
    case 3:
      result = sub_1BCB1EE6C(a1, a2);
      break;
    case 4:
      sub_1BCB1EF24(a1, a2);
      break;
    case 5:
      result = sub_1BCB1EFDC(a2, a3, a4, a5, a6, a7, a8, a9, a1);
      break;
    case 6:
      sub_1BCB1F094(a1, a2);
      break;
    case 7:
      result = sub_1BCB1F14C(a1, a2, a3, a4, a5, a6, a7, a8, a9);
      break;
    case 8:
      result = sub_1BCB1F204(a1, a2);
      break;
    default:
      result = sub_1BC9A1010(a1, a2);
      break;
  }

  return result;
}

__n128 sub_1BC9A11CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3C830;
  *(v0 + 64) = 0x432A000043480000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3C840;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  __asm { FMOV            V2.2D, #0.5 }

  *(v0 + 208) = _Q2;
  *(v0 + 224) = xmmword_1BCE3D910;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = result;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = result;
  *(v0 + 368) = xmmword_1BCE3D920;
  *(v0 + 384) = 0x3F4CCCCD3F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = result;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = result;
  *(v0 + 448) = result;
  *(v0 + 464) = result;
  *(v0 + 480) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 624) = result;
  *(v0 + 640) = result;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 704) = result;
  *(v0 + 720) = result;
  *(v0 + 736) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 1008) = result;
  *(v0 + 1024) = result;
  *(v0 + 1040) = result;
  *(v0 + 1056) = result;
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1168) = 0x4170000000000000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v11;
  *(v0 + 1260) = *&v11[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000043480000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = 0u;
  *(v0 + 1408) = 0u;
  *(v0 + 1424) = _Q2;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = result;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = result;
  *(v0 + 1584) = xmmword_1BCE3D920;
  *(v0 + 1600) = 0x3F4CCCCD3F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = result;
  *(v0 + 1664) = result;
  *(v0 + 1680) = result;
  *(v0 + 1696) = result;
  *(v0 + 1712) = result;
  *(v0 + 1728) = result;
  *(v0 + 1744) = result;
  *(v0 + 1760) = result;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 1824) = result;
  *(v0 + 1840) = result;
  *(v0 + 1856) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1920) = result;
  *(v0 + 1936) = result;
  *(v0 + 1952) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 2208) = result;
  *(v0 + 2224) = result;
  *(v0 + 2240) = result;
  *(v0 + 2256) = result;
  *(v0 + 2272) = result;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 2384) = 0x4170000000000000;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v12;
  *(v0 + 2476) = *&v12[3];
  *(v0 + 2480) = xmmword_1BCE3CB30;
  *(v0 + 2496) = 0x447A000044160000;
  *(v0 + 2504) = 1061997773;
  *(v0 + 2512) = xmmword_1BCE3CA60;
  *(v0 + 2528) = result;
  *(v0 + 2544) = xmmword_1BCE3D930;
  *(v0 + 2560) = xmmword_1BCE3CA80;
  *(v0 + 2576) = xmmword_1BCE3D940;
  *(v0 + 2592) = xmmword_1BCE3D950;
  *(v0 + 2608) = 0u;
  *(v0 + 2624) = 0u;
  *(v0 + 2640) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 2656) = xmmword_1BCE3D960;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2704) = result;
  *(v0 + 2720) = result;
  *(v0 + 2736) = result;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2768) = xmmword_1BCE3CAD0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  v7 = vdupq_n_s32(0x3F59999Au);
  *(v0 + 2800) = v7;
  *(v0 + 2816) = 0x3F4CCCCD3F59999ALL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = result;
  *(v0 + 2880) = result;
  *(v0 + 2896) = result;
  *(v0 + 2912) = result;
  *(v0 + 2928) = result;
  *(v0 + 2944) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3008) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 3056) = result;
  *(v0 + 3072) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000000000000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v13;
  *(v0 + 3692) = *&v13[3];
  *(v0 + 4656) = result;
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4704) = result;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4640) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4544) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4448) = result;
  *(v0 + 4272) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4352) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4256) = result;
  *(v0 + 3696) = xmmword_1BCE3CB30;
  *(v0 + 4096) = result;
  *(v0 + 4112) = result;
  *(v0 + 4128) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 4048) = result;
  *(v0 + 4064) = 0x3FE5555540000000;
  *(v0 + 4072) = 1065353216;
  *(v0 + 4080) = result;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4016) = vdupq_n_s32(0x3F5DDDDEu);
  *(v0 + 4032) = 0x3DCCCCCD3F5DDDDELL;
  *(v0 + 3968) = xmmword_1BCE3D9F0;
  *(v0 + 3984) = xmmword_1BCE3DA00;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 3920) = result;
  *(v0 + 3936) = result;
  *(v0 + 3952) = xmmword_1BCE3D9E0;
  *(v0 + 3856) = vdupq_n_s64(0x3FEB079E00000000uLL);
  *(v0 + 3872) = xmmword_1BCE3D9D0;
  *(v0 + 3888) = result;
  *(v0 + 3904) = result;
  *(v0 + 3712) = 0x4496000044160000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3824) = 0u;
  *(v0 + 3840) = 0u;
  *(v0 + 3792) = xmmword_1BCE3D9B0;
  *(v0 + 3808) = xmmword_1BCE3D9C0;
  *(v0 + 3760) = xmmword_1BCE3D990;
  *(v0 + 3776) = xmmword_1BCE3D9A0;
  *(v0 + 3728) = xmmword_1BCE3D970;
  *(v0 + 3744) = xmmword_1BCE3D980;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = result;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000000000000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4905) = *v14;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v14[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4944) = xmmword_1BCE3DA10;
  *(v0 + 4960) = xmmword_1BCE3DA20;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3DA30;
  *(v0 + 5024) = xmmword_1BCE3DA40;
  *(v0 + 5040) = xmmword_1BCE644B0;
  *(v0 + 5056) = xmmword_1BCE644C0;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5152) = result;
  *(v0 + 5168) = xmmword_1BCE3DA80;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  v8 = vdupq_n_s32(0x3F666666u);
  *(v0 + 5232) = v8;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = result;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = result;
  *(v0 + 5312) = result;
  *(v0 + 5328) = result;
  *(v0 + 5344) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5488) = result;
  *(v0 + 5504) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000000000000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v15;
  *(v0 + 6124) = *&v15[3];
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6152) = 1060739482;
  *(v0 + 6160) = xmmword_1BCE3DA90;
  *(v0 + 6176) = xmmword_1BCE3DAA0;
  *(v0 + 6192) = xmmword_1BCE3DAB0;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6256) = xmmword_1BCE644D0;
  *(v0 + 6272) = xmmword_1BCE644E0;
  *(v0 + 6288) = result;
  *(v0 + 6384) = xmmword_1BCE3DAF0;
  *(v0 + 6400) = xmmword_1BCE3DB00;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3DB20;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7552) = result;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 8848) = xmmword_1BCE3DB40;
  *(v0 + 9616) = xmmword_1BCE47D00;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1151500288;
  *(v0 + 11008) = 1151500288;
  *(v0 + 7376) = xmmword_1BCE3DB10;
  *(v0 + 9808) = xmmword_1BCE3DB10;
  *(v0 + 11024) = xmmword_1BCE3DB10;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  *(v0 + 8592) = xmmword_1BCE3DB30;
  *(v0 + 12240) = xmmword_1BCE3DB30;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 9600) = xmmword_1BCE3D4B0;
  *(v0 + 13248) = xmmword_1BCE3D4B0;
  *(v0 + 13264) = xmmword_1BCE47D10;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = xmmword_1BCE3DB50;
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3DB60;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 13520) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 13536) = xmmword_1BCE3CD80;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 6368) = result;
  *(v0 + 6448) = v8;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = result;
  *(v0 + 6528) = result;
  *(v0 + 6544) = result;
  *(v0 + 6560) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6720) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v16;
  *(v0 + 7340) = *&v16[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = 0u;
  *(v0 + 7488) = 0u;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = result;
  *(v0 + 14656) = 0x44480000443B8000;
  *(v0 + 14672) = xmmword_1BCE3DB70;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3DB80;
  *(v0 + 14720) = xmmword_1BCE3DB90;
  *(v0 + 14736) = xmmword_1BCE3DBA0;
  *(v0 + 14752) = xmmword_1BCE3DBB0;
  *(v0 + 14768) = xmmword_1BCE644F0;
  *(v0 + 14784) = xmmword_1BCE64500;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14880) = xmmword_1BCE3DBE0;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x44C8000044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3DBF0;
  *(v0 + 15936) = xmmword_1BCE3DC00;
  *(v0 + 15952) = xmmword_1BCE3DC10;
  *(v0 + 15968) = xmmword_1BCE3DC20;
  *(v0 + 15984) = xmmword_1BCE64510;
  *(v0 + 16000) = xmmword_1BCE64520;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16096) = xmmword_1BCE3DC50;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 7664) = v8;
  *(v0 + 8880) = v8;
  *(v0 + 10096) = v8;
  *(v0 + 11312) = v8;
  *(v0 + 12528) = v8;
  *(v0 + 13744) = v8;
  *(v0 + 14960) = v8;
  *(v0 + 16176) = v8;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D445C8321;
  *(v0 + 17104) = xmmword_1BCE3D1A0;
  *(v0 + 17120) = xmmword_1BCE3D1B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17312) = xmmword_1BCE3DC70;
  *(v0 + 7616) = xmmword_1BCE3C8C0;
  *(v0 + 8832) = xmmword_1BCE3C8C0;
  *(v0 + 10048) = xmmword_1BCE3C8C0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 12480) = xmmword_1BCE3C8C0;
  *(v0 + 13696) = xmmword_1BCE3C8C0;
  *(v0 + 14912) = xmmword_1BCE3C8C0;
  *(v0 + 16128) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 17392) = v7;
  *(v0 + 17408) = 0x3DCCCCCD3F59999ALL;
  *(v0 + 17424) = xmmword_1BCE3DC80;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3DC90;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3DCA0;
  *(v0 + 18368) = xmmword_1BCE3D290;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D3C0;
  *(v0 + 18528) = xmmword_1BCE3D3D0;
  *(v0 + 18544) = xmmword_1BCE3DCC0;
  *(v0 + 18560) = xmmword_1BCE3CBC0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  v9 = vdupq_n_s32(0x3F4CCCCDu);
  *(v0 + 18592) = xmmword_1BCE3DCD0;
  *(v0 + 18608) = v9;
  *(v0 + 18624) = v9.i64[0];
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19328) = xmmword_1BCE3E580;
  *(v0 + 19360) = xmmword_1BCE3E580;
  __asm { FMOV            V25.2D, #0.25 }

  *(v0 + 20528) = _Q25;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 19504) = xmmword_1BCE3C830;
  *(v0 + 20720) = xmmword_1BCE3C830;
  *(v0 + 19520) = 0x432A000043480000;
  *(v0 + 20736) = 0x432A000043480000;
  *(v0 + 19536) = xmmword_1BCE3C840;
  *(v0 + 20752) = xmmword_1BCE3C840;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 8688) = 0u;
  *(v0 + 8704) = 0u;
  *(v0 + 9904) = 0u;
  *(v0 + 9920) = 0u;
  *(v0 + 11120) = 0u;
  *(v0 + 11136) = 0u;
  *(v0 + 12336) = 0u;
  *(v0 + 12352) = 0u;
  *(v0 + 13552) = 0u;
  *(v0 + 13568) = 0u;
  *(v0 + 17200) = 0u;
  *(v0 + 17216) = 0u;
  *(v0 + 18416) = 0u;
  *(v0 + 18432) = 0u;
  *(v0 + 19632) = 0u;
  *(v0 + 19648) = 0u;
  *(v0 + 20848) = 0u;
  *(v0 + 20864) = 0u;
  *(v0 + 18448) = _Q2;
  *(v0 + 19664) = _Q2;
  *(v0 + 20880) = _Q2;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3D920;
  *(v0 + 21040) = xmmword_1BCE3D920;
  *(v0 + 19840) = 0x3F4CCCCD3F800000;
  *(v0 + 21056) = 0x3F4CCCCD3F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 18192) = 0x4170000000000000;
  *(v0 + 19408) = 0x4170000000000000;
  *(v0 + 20624) = 0x4170000000000000;
  *(v0 + 21840) = 0x4170000000000000;
  *(v0 + 7568) = result;
  *(v0 + 7584) = result;
  *(v0 + 7600) = result;
  *(v0 + 18080) = result;
  *(v0 + 17984) = result;
  *(v0 + 18000) = result;
  *(v0 + 18016) = result;
  *(v0 + 18032) = result;
  *(v0 + 18048) = result;
  *(v0 + 18064) = result;
  *(v0 + 17888) = result;
  *(v0 + 17904) = result;
  *(v0 + 17920) = result;
  *(v0 + 17936) = result;
  *(v0 + 17952) = result;
  *(v0 + 17968) = result;
  *(v0 + 17792) = result;
  *(v0 + 17808) = result;
  *(v0 + 17824) = result;
  *(v0 + 17840) = result;
  *(v0 + 17856) = result;
  *(v0 + 17872) = result;
  *(v0 + 17696) = result;
  *(v0 + 17712) = result;
  *(v0 + 17728) = result;
  *(v0 + 17744) = result;
  *(v0 + 17760) = result;
  *(v0 + 17776) = result;
  *(v0 + 17600) = result;
  *(v0 + 17616) = result;
  *(v0 + 17632) = result;
  *(v0 + 17648) = result;
  *(v0 + 17664) = result;
  *(v0 + 17680) = result;
  *(v0 + 7728) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 7744) = result;
  *(v0 + 17448) = 1065353216;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 17488) = result;
  *(v0 + 17504) = result;
  *(v0 + 7760) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 17416) = 0x3FEF1F1F40000000;
  *(v0 + 17440) = 0;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 17280) = result;
  *(v0 + 17296) = result;
  *(v0 + 17328) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 7920) = result;
  *(v0 + 17264) = result;
  *(v0 + 7936) = result;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 17064) = 1;
  *(v0 + 17065) = *v24;
  *(v0 + 17068) = *&v24[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 16992) = result;
  *(v0 + 17008) = result;
  *(v0 + 17024) = result;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 8048) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 8112) = result;
  *(v0 + 16800) = result;
  *(v0 + 16816) = result;
  *(v0 + 16832) = result;
  *(v0 + 16848) = result;
  *(v0 + 16864) = result;
  *(v0 + 16704) = result;
  *(v0 + 16720) = result;
  *(v0 + 16736) = result;
  *(v0 + 16752) = result;
  *(v0 + 16768) = result;
  *(v0 + 16784) = result;
  *(v0 + 16608) = result;
  *(v0 + 16624) = result;
  *(v0 + 16640) = result;
  *(v0 + 16656) = result;
  *(v0 + 16672) = result;
  *(v0 + 16688) = result;
  *(v0 + 16512) = result;
  *(v0 + 16528) = result;
  *(v0 + 16544) = result;
  *(v0 + 16560) = result;
  *(v0 + 16576) = result;
  *(v0 + 16592) = result;
  *(v0 + 16416) = result;
  *(v0 + 16432) = result;
  *(v0 + 16448) = result;
  *(v0 + 16464) = result;
  *(v0 + 16480) = result;
  *(v0 + 16496) = result;
  *(v0 + 16320) = result;
  *(v0 + 16336) = result;
  *(v0 + 16352) = result;
  *(v0 + 16368) = result;
  *(v0 + 0x4000) = result;
  *(v0 + 16400) = result;
  *(v0 + 8128) = result;
  *(v0 + 16240) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 8176) = result;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 8240) = result;
  *(v0 + 16112) = result;
  *(v0 + 8256) = result;
  *(v0 + 8272) = result;
  *(v0 + 8288) = result;
  *(v0 + 16016) = result;
  *(v0 + 16048) = result;
  *(v0 + 16064) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 8432) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 15849) = *v23;
  *(v0 + 15880) = 1061997773;
  *(v0 + 8480) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 15852) = *&v23[3];
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 15808) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 15728) = result;
  *(v0 + 15744) = result;
  *(v0 + 8553) = *v17;
  *(v0 + 15616) = result;
  *(v0 + 15632) = result;
  *(v0 + 15648) = result;
  *(v0 + 15520) = result;
  *(v0 + 15536) = result;
  *(v0 + 15552) = result;
  *(v0 + 15568) = result;
  *(v0 + 15584) = result;
  *(v0 + 15600) = result;
  *(v0 + 15424) = result;
  *(v0 + 15440) = result;
  *(v0 + 15456) = result;
  *(v0 + 15472) = result;
  *(v0 + 15488) = result;
  *(v0 + 15504) = result;
  *(v0 + 15328) = result;
  *(v0 + 15344) = result;
  *(v0 + 15360) = result;
  *(v0 + 15376) = result;
  *(v0 + 15392) = result;
  *(v0 + 15408) = result;
  *(v0 + 15232) = result;
  *(v0 + 15248) = result;
  *(v0 + 15264) = result;
  *(v0 + 15280) = result;
  *(v0 + 15296) = result;
  *(v0 + 15312) = result;
  *(v0 + 15136) = result;
  *(v0 + 15152) = result;
  *(v0 + 15168) = result;
  *(v0 + 15184) = result;
  *(v0 + 15200) = result;
  *(v0 + 15216) = result;
  *(v0 + 8552) = 0;
  *(v0 + 15072) = result;
  *(v0 + 15088) = result;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 8556) = *&v17[3];
  *(v0 + 15016) = 0;
  *(v0 + 15024) = result;
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = result;
  *(v0 + 8656) = result;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 8672) = result;
  *(v0 + 8720) = result;
  *(v0 + 8752) = result;
  *(v0 + 8768) = result;
  *(v0 + 14848) = result;
  *(v0 + 14896) = result;
  *(v0 + 8784) = result;
  *(v0 + 8800) = result;
  *(v0 + 8816) = result;
  *(v0 + 8864) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = result;
  *(v0 + 8960) = result;
  *(v0 + 8976) = result;
  *(v0 + 14633) = *v22;
  *(v0 + 14664) = 1061158912;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v22[3];
  *(v0 + 8992) = result;
  *(v0 + 14528) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
  *(v0 + 14432) = result;
  *(v0 + 14512) = result;
  *(v0 + 14336) = result;
  *(v0 + 14352) = result;
  *(v0 + 14368) = result;
  *(v0 + 14384) = result;
  *(v0 + 14400) = result;
  *(v0 + 14416) = result;
  *(v0 + 14240) = result;
  *(v0 + 14256) = result;
  *(v0 + 14272) = result;
  *(v0 + 14288) = result;
  *(v0 + 14304) = result;
  *(v0 + 14320) = result;
  *(v0 + 14144) = result;
  *(v0 + 14160) = result;
  *(v0 + 14176) = result;
  *(v0 + 14192) = result;
  *(v0 + 14208) = result;
  *(v0 + 14224) = result;
  *(v0 + 14048) = result;
  *(v0 + 14064) = result;
  *(v0 + 14080) = result;
  *(v0 + 14096) = result;
  *(v0 + 14112) = result;
  *(v0 + 14128) = result;
  *(v0 + 13952) = result;
  *(v0 + 13968) = result;
  *(v0 + 13984) = result;
  *(v0 + 14000) = result;
  *(v0 + 14016) = result;
  *(v0 + 14032) = result;
  *(v0 + 13856) = result;
  *(v0 + 13872) = result;
  *(v0 + 13888) = result;
  *(v0 + 13904) = result;
  *(v0 + 13920) = result;
  *(v0 + 13936) = result;
  *(v0 + 9072) = result;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 9152) = result;
  *(v0 + 13616) = result;
  *(v0 + 13632) = result;
  *(v0 + 13648) = result;
  *(v0 + 13664) = result;
  *(v0 + 13680) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 13584) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13417) = *v21;
  *(v0 + 13420) = *&v21[3];
  *(v0 + 13448) = 1060320051;
  *(v0 + 9360) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 13296) = result;
  *(v0 + 13312) = result;
  *(v0 + 13136) = result;
  *(v0 + 13152) = result;
  *(v0 + 13168) = result;
  *(v0 + 13184) = result;
  *(v0 + 13200) = result;
  *(v0 + 13216) = result;
  *(v0 + 13040) = result;
  *(v0 + 13056) = result;
  *(v0 + 13072) = result;
  *(v0 + 13088) = result;
  *(v0 + 13104) = result;
  *(v0 + 13120) = result;
  *(v0 + 12944) = result;
  *(v0 + 12960) = result;
  *(v0 + 12976) = result;
  *(v0 + 12992) = result;
  *(v0 + 13008) = result;
  *(v0 + 13024) = result;
  *(v0 + 12848) = result;
  *(v0 + 12864) = result;
  *(v0 + 12880) = result;
  *(v0 + 12896) = result;
  *(v0 + 12912) = result;
  *(v0 + 12928) = result;
  *(v0 + 12752) = result;
  *(v0 + 12768) = result;
  *(v0 + 12784) = result;
  *(v0 + 12800) = result;
  *(v0 + 12816) = result;
  *(v0 + 12832) = result;
  *(v0 + 12656) = result;
  *(v0 + 12672) = result;
  *(v0 + 12688) = result;
  *(v0 + 12704) = result;
  *(v0 + 12720) = result;
  *(v0 + 12736) = result;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = result;
  *(v0 + 12608) = result;
  *(v0 + 12624) = result;
  *(v0 + 12640) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 9472) = result;
  *(v0 + 12496) = result;
  *(v0 + 12512) = result;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 9488) = result;
  *(v0 + 12400) = result;
  *(v0 + 12416) = result;
  *(v0 + 12432) = result;
  *(v0 + 12448) = result;
  *(v0 + 12464) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 9536) = result;
  *(v0 + 12304) = result;
  *(v0 + 12320) = result;
  *(v0 + 12368) = result;
  *(v0 + 9552) = result;
  *(v0 + 9568) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 12288) = result;
  *(v0 + 12160) = result;
  *(v0 + 12201) = *v20;
  *(v0 + 12232) = 1061158912;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 12204) = *&v20[3];
  *(v0 + 9696) = result;
  *(v0 + 9712) = result;
  *(v0 + 12096) = result;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 9728) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 12000) = result;
  *(v0 + 12080) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11984) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11696) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11600) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 9768) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 9769) = *v18;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 9772) = *&v18[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9936) = result;
  *(v0 + 9968) = result;
  *(v0 + 9984) = result;
  *(v0 + 11296) = result;
  *(v0 + 10000) = result;
  *(v0 + 11152) = result;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 11232) = result;
  *(v0 + 10016) = result;
  *(v0 + 10080) = result;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v19;
  *(v0 + 10988) = *&v19[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10240) = result;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10288) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10304) = result;
  *(v0 + 10720) = result;
  *(v0 + 10736) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10624) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10528) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10432) = result;
  *(v0 + 10448) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10336) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10320) = result;
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
  *(v0 + 18480) = result;
  *(v0 + 18496) = result;
  *(v0 + 18640) = result;
  *(v0 + 18672) = result;
  *(v0 + 18688) = result;
  *(v0 + 18704) = result;
  *(v0 + 18720) = result;
  *(v0 + 18736) = result;
  *(v0 + 18752) = result;
  *(v0 + 18768) = result;
  *(v0 + 18784) = result;
  *(v0 + 18800) = result;
  *(v0 + 18816) = result;
  *(v0 + 18832) = result;
  *(v0 + 18848) = result;
  *(v0 + 18864) = result;
  *(v0 + 18880) = result;
  *(v0 + 18896) = result;
  *(v0 + 18912) = result;
  *(v0 + 18928) = result;
  *(v0 + 18944) = result;
  *(v0 + 18960) = result;
  *(v0 + 18976) = result;
  *(v0 + 18992) = result;
  *(v0 + 19008) = result;
  *(v0 + 19024) = result;
  *(v0 + 19040) = result;
  *(v0 + 19056) = result;
  *(v0 + 19072) = result;
  *(v0 + 19088) = result;
  *(v0 + 19104) = result;
  *(v0 + 19120) = result;
  *(v0 + 19136) = result;
  *(v0 + 19152) = result;
  *(v0 + 19168) = result;
  *(v0 + 19184) = result;
  *(v0 + 19200) = result;
  *(v0 + 19216) = result;
  *(v0 + 19232) = result;
  *(v0 + 19248) = result;
  *(v0 + 19264) = result;
  *(v0 + 19280) = result;
  *(v0 + 19296) = result;
  *(v0 + 19376) = result;
  *(v0 + 19392) = result;
  *(v0 + 19424) = result;
  *(v0 + 19440) = result;
  *(v0 + 19456) = result;
  *(v0 + 19696) = result;
  *(v0 + 19712) = result;
  *(v0 + 19728) = result;
  *(v0 + 19744) = result;
  *(v0 + 19760) = result;
  *(v0 + 19776) = result;
  *(v0 + 19808) = result;
  *(v0 + 19856) = result;
  *(v0 + 19888) = result;
  *(v0 + 19904) = result;
  *(v0 + 19920) = result;
  *(v0 + 19936) = result;
  *(v0 + 19952) = result;
  *(v0 + 19968) = result;
  *(v0 + 19984) = result;
  *(v0 + 20000) = result;
  *(v0 + 20016) = result;
  *(v0 + 20032) = result;
  *(v0 + 20048) = result;
  *(v0 + 20064) = result;
  *(v0 + 20080) = result;
  *(v0 + 20096) = result;
  *(v0 + 20112) = result;
  *(v0 + 20128) = result;
  *(v0 + 20144) = result;
  *(v0 + 20160) = result;
  *(v0 + 20176) = result;
  *(v0 + 20192) = result;
  *(v0 + 20208) = result;
  *(v0 + 20224) = result;
  *(v0 + 20240) = result;
  *(v0 + 20256) = result;
  *(v0 + 20272) = result;
  *(v0 + 20288) = result;
  *(v0 + 20304) = result;
  *(v0 + 20320) = result;
  *(v0 + 20336) = result;
  *(v0 + 20352) = result;
  *(v0 + 20368) = result;
  *(v0 + 20384) = result;
  *(v0 + 20400) = result;
  *(v0 + 20416) = result;
  *(v0 + 20432) = result;
  *(v0 + 20448) = result;
  *(v0 + 20464) = result;
  *(v0 + 20480) = result;
  *(v0 + 20496) = result;
  *(v0 + 20512) = result;
  *(v0 + 20592) = result;
  *(v0 + 20608) = result;
  *(v0 + 20640) = result;
  *(v0 + 20656) = result;
  *(v0 + 20672) = result;
  *(v0 + 20912) = result;
  *(v0 + 20928) = result;
  *(v0 + 20944) = result;
  *(v0 + 20960) = result;
  *(v0 + 20976) = result;
  *(v0 + 20992) = result;
  *(v0 + 21024) = result;
  *(v0 + 21072) = result;
  *(v0 + 21104) = result;
  *(v0 + 21120) = result;
  *(v0 + 21136) = result;
  *(v0 + 21152) = result;
  *(v0 + 21168) = result;
  *(v0 + 21184) = result;
  *(v0 + 21200) = result;
  *(v0 + 21216) = result;
  *(v0 + 21232) = result;
  *(v0 + 21248) = result;
  *(v0 + 21264) = result;
  *(v0 + 21280) = result;
  *(v0 + 21296) = result;
  *(v0 + 21312) = result;
  *(v0 + 21328) = result;
  *(v0 + 21344) = result;
  *(v0 + 21360) = result;
  *(v0 + 21376) = result;
  *(v0 + 21392) = result;
  *(v0 + 21408) = result;
  *(v0 + 21424) = result;
  *(v0 + 21440) = result;
  *(v0 + 21456) = result;
  *(v0 + 21472) = result;
  *(v0 + 21488) = result;
  *(v0 + 21504) = result;
  *(v0 + 21520) = result;
  *(v0 + 21536) = result;
  *(v0 + 21552) = result;
  *(v0 + 21568) = result;
  *(v0 + 21584) = result;
  *(v0 + 21600) = result;
  *(v0 + 21616) = result;
  *(v0 + 21632) = result;
  *(v0 + 21648) = result;
  *(v0 + 21664) = result;
  *(v0 + 21680) = result;
  *(v0 + 21696) = result;
  *(v0 + 21712) = result;
  *(v0 + 21728) = result;
  *(v0 + 21808) = result;
  *(v0 + 21824) = result;
  *(v0 + 21856) = result;
  *(v0 + 21872) = result;
  *(v0 + 21888) = result;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FF0000000000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000015;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v25;
  *(v0 + 18284) = *&v25[3];
  *(v0 + 18312) = 1036831948;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FF0000000000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v26;
  *(v0 + 19500) = *&v26[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FF0000000000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v27;
  *(v0 + 20716) = *&v27[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FF0000000000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

__n128 sub_1BC9A31D8@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BC9A11CC();
  v4 = v3;
  sub_1BC9A38E0();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 25;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42D2000042480000;
  *(a1 + 72) = 0xC409800000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B03126F3F800000;
  *(a1 + 400) = xmmword_1BCE3D850;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3D860;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = result;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F8000003F000000;
  *(a1 + 720) = 0x400000003FC00000;
  *(a1 + 728) = 0;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F8000003F000000;
  *(a1 + 848) = 0x400000003FC00000;
  *(a1 + 856) = 0;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3D890;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF53202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE792E0;
  *(a1 + 928) = 6;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F000000;
  *(a1 + 976) = 0x411970A44106E147;
  *(a1 + 984) = 1083022496;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x617274736F746C41;
  *(a1 + 1160) = 0xEF53202D20737574;
  *(a1 + 1168) = 0xD000000000000013;
  *(a1 + 1176) = 0x80000001BCE792E0;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE3BFA0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3E550;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 0x433F5DD841700000;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(a1 + 1634) = 16843009;
  *(a1 + 1637) = 16843009;
  *(a1 + 1656) = 0;
  *(a1 + 1641) = 0;
  *(a1 + 1649) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C7B0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3D8E0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F8000003E99999ALL;
  *(a1 + 2008) = 0x3F8000003F4CCCCDLL;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 8;
  *(a1 + 2208) = 0x417000003F333333;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE4F540;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
  return result;
}

double sub_1BC9A38E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3D330;
  *(v0 + 64) = 0x432A000043C80000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3DCE0;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE3C8A0;
  *(v0 + 192) = xmmword_1BCE3C8B0;
  __asm { FMOV            V8.2D, #0.5 }

  *(v0 + 208) = _Q8;
  *(v0 + 224) = xmmword_1BCE3D910;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 240) = _Q0;
  *(v0 + 256) = _Q0;
  *(v0 + 272) = _Q0;
  *(v0 + 288) = _Q0;
  *(v0 + 304) = _Q0;
  *(v0 + 320) = xmmword_1BCE3C8C0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = _Q0;
  *(v0 + 368) = xmmword_1BCE3C900;
  *(v0 + 384) = 0x3F3333333F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = _Q0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = _Q0;
  *(v0 + 448) = _Q0;
  *(v0 + 464) = _Q0;
  *(v0 + 480) = _Q0;
  *(v0 + 496) = _Q0;
  *(v0 + 512) = _Q0;
  *(v0 + 528) = _Q0;
  *(v0 + 544) = _Q0;
  *(v0 + 560) = _Q0;
  *(v0 + 576) = _Q0;
  *(v0 + 592) = _Q0;
  *(v0 + 608) = _Q0;
  *(v0 + 624) = _Q0;
  *(v0 + 640) = _Q0;
  *(v0 + 656) = _Q0;
  *(v0 + 672) = _Q0;
  *(v0 + 688) = _Q0;
  *(v0 + 704) = _Q0;
  *(v0 + 720) = _Q0;
  *(v0 + 736) = _Q0;
  *(v0 + 752) = _Q0;
  *(v0 + 768) = _Q0;
  *(v0 + 784) = _Q0;
  *(v0 + 800) = _Q0;
  *(v0 + 816) = _Q0;
  *(v0 + 832) = _Q0;
  *(v0 + 848) = _Q0;
  *(v0 + 864) = _Q0;
  *(v0 + 880) = _Q0;
  *(v0 + 896) = _Q0;
  *(v0 + 912) = _Q0;
  *(v0 + 928) = _Q0;
  *(v0 + 944) = _Q0;
  *(v0 + 960) = _Q0;
  *(v0 + 976) = _Q0;
  *(v0 + 992) = _Q0;
  *(v0 + 1008) = _Q0;
  *(v0 + 1024) = _Q0;
  *(v0 + 1040) = _Q0;
  *(v0 + 1056) = _Q0;
  v13 = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1072) = v13;
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = xmmword_1BCE3D350;
  *(v0 + 1152) = _Q0;
  *(v0 + 1168) = 0x4120000042FA0000;
  *(v0 + 1176) = 0x3FEB89F080000000;
  *(v0 + 1184) = xmmword_1BCE3D360;
  *(v0 + 1200) = _Q0;
  *(v0 + 1216) = xmmword_1BCE3D370;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v14;
  *(v0 + 1260) = *&v14[3];
  *(v0 + 1264) = xmmword_1BCE3D330;
  *(v0 + 1280) = 0x432A000043C80000;
  *(v0 + 1288) = 1040242952;
  v12 = vdupq_n_s64(0x3FD7575760000000uLL);
  *(v0 + 1296) = v12;
  *(v0 + 1312) = xmmword_1BCE3D340;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE3C8A0;
  *(v0 + 1408) = xmmword_1BCE3C8B0;
  *(v0 + 1424) = _Q8;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = _Q0;
  *(v0 + 1472) = _Q0;
  *(v0 + 1488) = _Q0;
  *(v0 + 1504) = _Q0;
  *(v0 + 1520) = _Q0;
  *(v0 + 1536) = xmmword_1BCE3C8C0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = _Q0;
  *(v0 + 1584) = xmmword_1BCE3C900;
  *(v0 + 1600) = 0x3F3333333F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q0;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = _Q0;
  *(v0 + 1664) = _Q0;
  *(v0 + 1680) = _Q0;
  *(v0 + 1696) = _Q0;
  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  *(v0 + 1760) = _Q0;
  *(v0 + 1776) = _Q0;
  *(v0 + 1792) = _Q0;
  *(v0 + 1808) = _Q0;
  *(v0 + 1824) = _Q0;
  *(v0 + 1840) = _Q0;
  *(v0 + 1856) = _Q0;
  *(v0 + 1872) = _Q0;
  *(v0 + 1888) = _Q0;
  *(v0 + 1904) = _Q0;
  *(v0 + 1920) = _Q0;
  *(v0 + 1936) = _Q0;
  *(v0 + 1952) = _Q0;
  *(v0 + 2400) = xmmword_1BCE3D380;
  *(v0 + 2432) = xmmword_1BCE3D390;
  *(v0 + 3568) = xmmword_1BCE3D3E0;
  *(v0 + 3648) = xmmword_1BCE3DD10;
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 3712) = 0x447A000044480000;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = xmmword_1BCE3CAB0;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3952) = _Q0;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 4016) = xmmword_1BCE3CAE0;
  *(v0 + 4048) = xmmword_1BCE3CAF0;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = _Q0;
  *(v0 + 4096) = _Q0;
  *(v0 + 4112) = _Q0;
  *(v0 + 4128) = _Q0;
  *(v0 + 4144) = _Q0;
  *(v0 + 4160) = _Q0;
  *(v0 + 4176) = _Q0;
  *(v0 + 4192) = _Q0;
  *(v0 + 4208) = _Q0;
  *(v0 + 4224) = _Q0;
  *(v0 + 4240) = _Q0;
  *(v0 + 4256) = _Q0;
  *(v0 + 4272) = _Q0;
  *(v0 + 4288) = _Q0;
  *(v0 + 4304) = _Q0;
  *(v0 + 4320) = _Q0;
  *(v0 + 4336) = _Q0;
  *(v0 + 4352) = _Q0;
  *(v0 + 4368) = _Q0;
  *(v0 + 4384) = _Q0;
  *(v0 + 4400) = _Q0;
  *(v0 + 4416) = _Q0;
  *(v0 + 4432) = _Q0;
  *(v0 + 4448) = _Q0;
  *(v0 + 4464) = _Q0;
  *(v0 + 4480) = _Q0;
  *(v0 + 4496) = _Q0;
  *(v0 + 4512) = _Q0;
  *(v0 + 4528) = _Q0;
  *(v0 + 4544) = _Q0;
  *(v0 + 4560) = _Q0;
  *(v0 + 4576) = _Q0;
  *(v0 + 4592) = _Q0;
  *(v0 + 4608) = _Q0;
  *(v0 + 4624) = _Q0;
  *(v0 + 4640) = _Q0;
  *(v0 + 4656) = _Q0;
  *(v0 + 4672) = _Q0;
  *(v0 + 4688) = _Q0;
  *(v0 + 4704) = _Q0;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = xmmword_1BCE3D410;
  *(v0 + 4800) = _Q0;
  *(v0 + 4816) = 0x41A0000041F00000;
  *(v0 + 4824) = 0x3FE8000000000000;
  *(v0 + 4832) = xmmword_1BCE3DD20;
  *(v0 + 4848) = xmmword_1BCE3DD00;
  *(v0 + 4864) = xmmword_1BCE3DD30;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v17;
  *(v0 + 4908) = *&v17[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5040) = _Q0;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5232) = xmmword_1BCE3CC00;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 5056) = xmmword_1BCE3CBA0;
  *(v0 + 5072) = _Q0;
  *(v0 + 6000) = xmmword_1BCE3D410;
  *(v0 + 6032) = 0x4170000041A00000;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = _Q0;
  *(v0 + 6048) = xmmword_1BCE3DD20;
  *(v0 + 6080) = xmmword_1BCE3D460;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6448) = xmmword_1BCE3CCF0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7264) = xmmword_1BCE3DD40;
  *(v0 + 7280) = xmmword_1BCE3D480;
  *(v0 + 7296) = xmmword_1BCE3D490;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3CD60;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 7440) = xmmword_1BCE3CD70;
  *(v0 + 7456) = xmmword_1BCE3CD80;
  *(v0 + 7552) = _Q0;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7664) = xmmword_1BCE3CDB0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8480) = xmmword_1BCE3DD50;
  *(v0 + 8512) = xmmword_1BCE3D4C0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 8624) = xmmword_1BCE3CE00;
  *(v0 + 9696) = xmmword_1BCE3D4D0;
  *(v0 + 9728) = xmmword_1BCE3D4F0;
  *(v0 + 9584) = xmmword_1BCE3CE20;
  *(v0 + 10800) = xmmword_1BCE3CE20;
  *(v0 + 10944) = xmmword_1BCE3D500;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1151500288;
  *(v0 + 11008) = 1151500288;
  *(v0 + 9840) = xmmword_1BCE3CE50;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 9856) = xmmword_1BCE3CE60;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  v7 = vdupq_n_s32(0x3F666666u);
  *(v0 + 8880) = v7;
  *(v0 + 10096) = v7;
  *(v0 + 11312) = v7;
  *(v0 + 10816) = xmmword_1BCE3CE90;
  *(v0 + 12032) = xmmword_1BCE3CE90;
  *(v0 + 9616) = xmmword_1BCE3CE30;
  *(v0 + 12048) = xmmword_1BCE3CE30;
  *(v0 + 12160) = xmmword_1BCE3D510;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A0000044A8C000;
  *(v0 + 12224) = 0x41A0000044A8C000;
  _Q1 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = _Q1;
  *(v0 + 8592) = _Q1;
  *(v0 + 9808) = _Q1;
  *(v0 + 11024) = _Q1;
  *(v0 + 12240) = _Q1;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 12528) = xmmword_1BCE3CEF0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 10832) = xmmword_1BCE3CEA0;
  *(v0 + 13264) = xmmword_1BCE3CEA0;
  *(v0 + 13376) = xmmword_1BCE3D520;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 6400) = xmmword_1BCE3CCC0;
  *(v0 + 7616) = xmmword_1BCE3CCC0;
  *(v0 + 8832) = xmmword_1BCE3CCC0;
  *(v0 + 10048) = xmmword_1BCE3CCC0;
  *(v0 + 12480) = xmmword_1BCE3CCC0;
  *(v0 + 13696) = xmmword_1BCE3CCC0;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13744) = xmmword_1BCE3CF70;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 12016) = xmmword_1BCE3CEB0;
  *(v0 + 13232) = xmmword_1BCE3CEB0;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 9600) = xmmword_1BCE3CBB0;
  *(v0 + 13248) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 9632) = xmmword_1BCE3CBC0;
  *(v0 + 10848) = xmmword_1BCE3CBC0;
  *(v0 + 12064) = xmmword_1BCE3CBC0;
  *(v0 + 13280) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 14560) = xmmword_1BCE3DD60;
  *(v0 + 8496) = xmmword_1BCE3D4B0;
  *(v0 + 14576) = xmmword_1BCE3D4B0;
  *(v0 + 14592) = xmmword_1BCE3D540;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 4040) = 0x3FEFBFBFC0000000;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4032) = 1062836634;
  *(v0 + 1968) = _Q0;
  *(v0 + 1984) = _Q0;
  *(v0 + 3888) = _Q0;
  *(v0 + 3904) = _Q0;
  *(v0 + 3920) = _Q0;
  *(v0 + 3936) = _Q0;
  *(v0 + 2000) = _Q0;
  *(v0 + 2016) = _Q0;
  *(v0 + 2032) = _Q0;
  *(v0 + 3840) = xmmword_1BCE3CAC0;
  *(v0 + 2048) = _Q0;
  *(v0 + 2064) = _Q0;
  *(v0 + 2080) = _Q0;
  *(v0 + 2096) = _Q0;
  *(v0 + 2112) = _Q0;
  *(v0 + 3744) = _Q0;
  *(v0 + 2128) = _Q0;
  *(v0 + 2144) = _Q0;
  *(v0 + 3689) = *v16;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3488) = _Q0;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3692) = *&v16[3];
  v11 = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3504) = v11;
  *(v0 + 3632) = xmmword_1BCE3DD00;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3608) = 0x3FEB439580000000;
  *(v0 + 3616) = xmmword_1BCE3DCF0;
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3584) = _Q0;
  *(v0 + 3600) = 0x4120000042B40000;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3392) = _Q0;
  *(v0 + 3408) = _Q0;
  *(v0 + 3424) = _Q0;
  *(v0 + 3440) = _Q0;
  *(v0 + 3456) = _Q0;
  *(v0 + 3472) = _Q0;
  *(v0 + 3296) = _Q0;
  *(v0 + 3312) = _Q0;
  *(v0 + 3328) = _Q0;
  *(v0 + 3344) = _Q0;
  *(v0 + 3360) = _Q0;
  *(v0 + 3376) = _Q0;
  *(v0 + 3200) = _Q0;
  *(v0 + 3216) = _Q0;
  *(v0 + 3232) = _Q0;
  *(v0 + 3248) = _Q0;
  *(v0 + 3264) = _Q0;
  *(v0 + 3280) = _Q0;
  *(v0 + 3104) = _Q0;
  *(v0 + 3120) = _Q0;
  *(v0 + 3136) = _Q0;
  *(v0 + 3152) = _Q0;
  *(v0 + 3168) = _Q0;
  *(v0 + 3184) = _Q0;
  *(v0 + 3008) = _Q0;
  *(v0 + 3024) = _Q0;
  *(v0 + 3040) = _Q0;
  *(v0 + 3056) = _Q0;
  *(v0 + 3072) = _Q0;
  *(v0 + 3088) = _Q0;
  *(v0 + 2912) = _Q0;
  *(v0 + 2928) = _Q0;
  *(v0 + 2944) = _Q0;
  *(v0 + 2960) = _Q0;
  *(v0 + 2976) = _Q0;
  *(v0 + 2992) = _Q0;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = _Q0;
  *(v0 + 2880) = _Q0;
  *(v0 + 2896) = _Q0;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2832) = _Q0;
  *(v0 + 2848) = 0;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  *(v0 + 2816) = 0x3F3333333F4CCCCDLL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2672) = _Q0;
  *(v0 + 2688) = _Q0;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2640) = _Q8;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = _Q0;
  *(v0 + 2608) = xmmword_1BCE3C9B0;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2528) = _Q0;
  *(v0 + 2473) = *v15;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2476) = *&v15[3];
  *(v0 + 2480) = xmmword_1BCE3D330;
  *(v0 + 2496) = 0x4396000043FA0000;
  *(v0 + 2160) = _Q0;
  *(v0 + 2176) = _Q0;
  *(v0 + 2240) = _Q0;
  *(v0 + 2256) = _Q0;
  *(v0 + 2416) = _Q0;
  *(v0 + 2368) = _Q0;
  *(v0 + 2384) = 0x4120000042FA0000;
  *(v0 + 2392) = 0x3FEBA9FBE0000000;
  v9 = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2272) = _Q0;
  *(v0 + 2288) = v9;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2352) = xmmword_1BCE3D350;
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2192) = _Q0;
  *(v0 + 2208) = _Q0;
  *(v0 + 2224) = _Q0;
  *(v0 + 5120) = _Q0;
  *(v0 + 5136) = _Q0;
  *(v0 + 5152) = _Q0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = _Q0;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = _Q0;
  *(v0 + 5312) = _Q0;
  *(v0 + 5328) = _Q0;
  *(v0 + 5344) = _Q0;
  *(v0 + 5360) = _Q0;
  *(v0 + 5376) = _Q0;
  *(v0 + 5392) = _Q0;
  *(v0 + 5408) = _Q0;
  *(v0 + 5424) = _Q0;
  *(v0 + 5440) = _Q0;
  *(v0 + 5456) = _Q0;
  *(v0 + 5472) = _Q0;
  *(v0 + 5488) = _Q0;
  *(v0 + 5504) = _Q0;
  *(v0 + 5520) = _Q0;
  *(v0 + 5536) = _Q0;
  *(v0 + 5552) = _Q0;
  *(v0 + 5568) = _Q0;
  *(v0 + 5584) = _Q0;
  *(v0 + 5600) = _Q0;
  *(v0 + 5616) = _Q0;
  *(v0 + 5632) = _Q0;
  *(v0 + 5648) = _Q0;
  *(v0 + 5664) = _Q0;
  *(v0 + 5680) = _Q0;
  *(v0 + 5696) = _Q0;
  *(v0 + 5712) = _Q0;
  *(v0 + 5728) = _Q0;
  *(v0 + 5744) = _Q0;
  *(v0 + 5760) = _Q0;
  *(v0 + 5776) = _Q0;
  *(v0 + 5792) = _Q0;
  *(v0 + 5808) = _Q0;
  *(v0 + 5824) = _Q0;
  *(v0 + 5840) = _Q0;
  *(v0 + 5856) = _Q0;
  *(v0 + 5872) = _Q0;
  *(v0 + 5888) = _Q0;
  *(v0 + 5904) = _Q0;
  *(v0 + 5920) = _Q0;
  *(v0 + 6016) = _Q0;
  *(v0 + 6040) = 0x3FE7333340000000;
  *(v0 + 6064) = _Q0;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v18;
  *(v0 + 6124) = *&v18[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = _Q0;
  *(v0 + 6272) = _Q0;
  *(v0 + 6288) = _Q0;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = _Q0;
  *(v0 + 6336) = _Q0;
  *(v0 + 6352) = _Q0;
  *(v0 + 6368) = _Q0;
  *(v0 + 6384) = xmmword_1BCE3CCB0;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = _Q0;
  *(v0 + 6528) = _Q0;
  *(v0 + 6544) = _Q0;
  *(v0 + 6560) = _Q0;
  *(v0 + 6576) = _Q0;
  *(v0 + 6592) = _Q0;
  *(v0 + 6608) = _Q0;
  *(v0 + 6624) = _Q0;
  *(v0 + 6640) = _Q0;
  *(v0 + 6656) = _Q0;
  *(v0 + 6672) = _Q0;
  *(v0 + 6688) = _Q0;
  *(v0 + 6704) = _Q0;
  *(v0 + 6720) = _Q0;
  *(v0 + 6736) = _Q0;
  *(v0 + 6752) = _Q0;
  *(v0 + 6768) = _Q0;
  *(v0 + 6784) = _Q0;
  *(v0 + 6800) = _Q0;
  *(v0 + 6816) = _Q0;
  *(v0 + 6832) = _Q0;
  *(v0 + 6848) = _Q0;
  *(v0 + 6864) = _Q0;
  *(v0 + 6880) = _Q0;
  *(v0 + 6896) = _Q0;
  *(v0 + 6912) = _Q0;
  *(v0 + 6928) = _Q0;
  *(v0 + 6944) = _Q0;
  *(v0 + 6960) = _Q0;
  *(v0 + 6976) = _Q0;
  *(v0 + 6992) = _Q0;
  *(v0 + 7008) = _Q0;
  *(v0 + 7024) = _Q0;
  *(v0 + 7040) = _Q0;
  *(v0 + 7056) = _Q0;
  *(v0 + 7072) = _Q0;
  *(v0 + 7088) = _Q0;
  *(v0 + 7104) = _Q0;
  *(v0 + 7120) = _Q0;
  *(v0 + 7136) = _Q0;
  *(v0 + 7216) = _Q0;
  *(v0 + 7232) = _Q0;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FE369D020000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v19;
  *(v0 + 7340) = *&v19[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = _Q0;
  *(v0 + 7488) = _Q0;
  *(v0 + 7504) = _Q0;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = _Q0;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14896) = xmmword_1BCE3D020;
  *(v0 + 14912) = xmmword_1BCE3D030;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14960) = xmmword_1BCE3D050;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15776) = xmmword_1BCE3DD70;
  *(v0 + 15808) = xmmword_1BCE3D560;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 16000) = xmmword_1BCE3CBA0;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 7600) = xmmword_1BCE3CCB0;
  *(v0 + 8816) = xmmword_1BCE3CCB0;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 12464) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16112) = xmmword_1BCE3D120;
  *(v0 + 16128) = xmmword_1BCE3D130;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 16176) = xmmword_1BCE3D140;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 16944) = xmmword_1BCE3D570;
  *(v0 + 16960) = xmmword_1BCE3D580;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 16992) = xmmword_1BCE3DD80;
  *(v0 + 17008) = xmmword_1BCE3DD90;
  *(v0 + 17024) = xmmword_1BCE3DDA0;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D44160000;
  *(v0 + 17104) = xmmword_1BCE3D5B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE3D200;
  *(v0 + 17216) = xmmword_1BCE3CAC0;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE3D210;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18160) = xmmword_1BCE3D5C0;
  *(v0 + 18176) = xmmword_1BCE3D5D0;
  __asm { FMOV            V1.2S, #20.0 }

  *(v0 + 18192) = _Q1.i64[0];
  *(v0 + 18208) = xmmword_1BCE3DDB0;
  *(v0 + 9712) = xmmword_1BCE3D4E0;
  *(v0 + 10928) = xmmword_1BCE3D4E0;
  *(v0 + 12144) = xmmword_1BCE3D4E0;
  *(v0 + 13360) = xmmword_1BCE3D4E0;
  *(v0 + 15792) = xmmword_1BCE3D4E0;
  *(v0 + 18224) = xmmword_1BCE3D4E0;
  *(v0 + 18240) = xmmword_1BCE3DDC0;
  *(v0 + 18304) = 0x4396000043FA0000;
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3C980;
  *(v0 + 18368) = xmmword_1BCE3C990;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18416) = xmmword_1BCE3C9B0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D3C0;
  *(v0 + 18528) = xmmword_1BCE3D3D0;
  *(v0 + 18544) = xmmword_1BCE3C9E0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = 0x3F3333333F4CCCCDLL;
  *(v0 + 19312) = v11;
  *(v0 + 19328) = xmmword_1BCE3CA20;
  *(v0 + 19344) = xmmword_1BCE3CA30;
  *(v0 + 19360) = xmmword_1BCE3CA40;
  *(v0 + 19376) = xmmword_1BCE3D600;
  *(v0 + 19408) = 0x4120000042B40000;
  *(v0 + 19424) = xmmword_1BCE3DCF0;
  *(v0 + 19440) = xmmword_1BCE3DD00;
  *(v0 + 19456) = xmmword_1BCE3DDE0;
  *(v0 + 19536) = v12;
  *(v0 + 19552) = xmmword_1BCE3D340;
  *(v0 + 20528) = v9;
  *(v0 + 20544) = xmmword_1BCE3C940;
  *(v0 + 20560) = xmmword_1BCE3C950;
  *(v0 + 20576) = xmmword_1BCE3C960;
  *(v0 + 20640) = xmmword_1BCE3D630;
  *(v0 + 20672) = xmmword_1BCE3D640;
  *(v0 + 18288) = xmmword_1BCE3D330;
  *(v0 + 19504) = xmmword_1BCE3D330;
  *(v0 + 20720) = xmmword_1BCE3D330;
  *(v0 + 19520) = 0x432A000043C80000;
  *(v0 + 20736) = 0x432A000043C80000;
  *(v0 + 20752) = xmmword_1BCE3DCE0;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 19632) = xmmword_1BCE3C8A0;
  *(v0 + 20848) = xmmword_1BCE3C8A0;
  *(v0 + 19648) = xmmword_1BCE3C8B0;
  *(v0 + 20864) = xmmword_1BCE3C8B0;
  *(v0 + 10912) = _Q8;
  *(v0 + 12128) = _Q8;
  *(v0 + 13344) = _Q8;
  *(v0 + 17504) = _Q0;
  *(v0 + 18064) = _Q0;
  *(v0 + 18080) = _Q0;
  *(v0 + 17968) = _Q0;
  *(v0 + 17984) = _Q0;
  *(v0 + 18000) = _Q0;
  *(v0 + 18016) = _Q0;
  *(v0 + 18032) = _Q0;
  *(v0 + 18048) = _Q0;
  *(v0 + 17872) = _Q0;
  *(v0 + 17888) = _Q0;
  *(v0 + 17904) = _Q0;
  *(v0 + 17920) = _Q0;
  *(v0 + 17936) = _Q0;
  *(v0 + 17952) = _Q0;
  *(v0 + 17776) = _Q0;
  *(v0 + 17792) = _Q0;
  *(v0 + 17808) = _Q0;
  *(v0 + 17824) = _Q0;
  *(v0 + 17840) = _Q0;
  *(v0 + 17856) = _Q0;
  *(v0 + 17680) = _Q0;
  *(v0 + 17696) = _Q0;
  *(v0 + 17712) = _Q0;
  *(v0 + 17728) = _Q0;
  *(v0 + 17744) = _Q0;
  *(v0 + 17760) = _Q0;
  *(v0 + 17584) = _Q0;
  *(v0 + 17600) = _Q0;
  *(v0 + 17616) = _Q0;
  *(v0 + 17632) = _Q0;
  *(v0 + 17648) = _Q0;
  *(v0 + 17664) = _Q0;
  *(v0 + 17520) = _Q0;
  *(v0 + 17536) = _Q0;
  *(v0 + 17552) = _Q0;
  *(v0 + 17568) = _Q0;
  *(v0 + 18448) = _Q8;
  *(v0 + 19664) = _Q8;
  *(v0 + 20880) = _Q8;
  *(v0 + 17456) = _Q0;
  *(v0 + 17472) = _Q0;
  *(v0 + 17488) = _Q0;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 665496235;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 17296) = _Q0;
  *(v0 + 17312) = _Q0;
  *(v0 + 17328) = _Q0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 18432) = xmmword_1BCE3C8C0;
  *(v0 + 18560) = xmmword_1BCE3C8C0;
  *(v0 + 19776) = xmmword_1BCE3C8C0;
  *(v0 + 20992) = xmmword_1BCE3C8C0;
  *(v0 + 17264) = _Q0;
  *(v0 + 17280) = _Q0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 17120) = _Q0;
  *(v0 + 19840) = 0x3F3333333F800000;
  *(v0 + 21056) = 0x3F3333333F800000;
  *(v0 + 21744) = v13;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3C920;
  *(v0 + 17065) = *v27;
  *(v0 + 17068) = *&v27[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 21792) = xmmword_1BCE3C930;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 20592) = xmmword_1BCE3D350;
  *(v0 + 21808) = xmmword_1BCE3D350;
  *(v0 + 20624) = 0x4120000042FA0000;
  *(v0 + 21840) = 0x4120000042FA0000;
  *(v0 + 21856) = xmmword_1BCE3D360;
  *(v0 + 16984) = 0x3FE8000000000000;
  *(v0 + 7568) = _Q0;
  *(v0 + 16832) = _Q0;
  *(v0 + 16848) = _Q0;
  *(v0 + 16864) = _Q0;
  *(v0 + 16736) = _Q0;
  *(v0 + 16752) = _Q0;
  *(v0 + 16768) = _Q0;
  *(v0 + 16784) = _Q0;
  *(v0 + 16800) = _Q0;
  *(v0 + 16816) = _Q0;
  *(v0 + 16640) = _Q0;
  *(v0 + 16656) = _Q0;
  *(v0 + 16672) = _Q0;
  *(v0 + 16688) = _Q0;
  *(v0 + 16704) = _Q0;
  *(v0 + 16720) = _Q0;
  *(v0 + 16544) = _Q0;
  *(v0 + 16560) = _Q0;
  *(v0 + 16576) = _Q0;
  *(v0 + 16592) = _Q0;
  *(v0 + 16608) = _Q0;
  *(v0 + 16624) = _Q0;
  *(v0 + 16448) = _Q0;
  *(v0 + 16464) = _Q0;
  *(v0 + 16480) = _Q0;
  *(v0 + 16496) = _Q0;
  *(v0 + 16512) = _Q0;
  *(v0 + 16528) = _Q0;
  *(v0 + 16352) = _Q0;
  *(v0 + 16368) = _Q0;
  *(v0 + 0x4000) = _Q0;
  *(v0 + 16400) = _Q0;
  *(v0 + 16416) = _Q0;
  *(v0 + 16432) = _Q0;
  *(v0 + 7584) = _Q0;
  *(v0 + 16272) = _Q0;
  *(v0 + 16288) = _Q0;
  *(v0 + 16304) = _Q0;
  *(v0 + 16320) = _Q0;
  *(v0 + 16336) = _Q0;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = _Q0;
  *(v0 + 16256) = _Q0;
  *(v0 + 7728) = _Q0;
  *(v0 + 7744) = _Q0;
  *(v0 + 7760) = _Q0;
  *(v0 + 7776) = _Q0;
  *(v0 + 7792) = _Q0;
  *(v0 + 7808) = _Q0;
  *(v0 + 7824) = _Q0;
  *(v0 + 7840) = _Q0;
  *(v0 + 16016) = _Q0;
  *(v0 + 16048) = _Q0;
  *(v0 + 16064) = _Q0;
  *(v0 + 16096) = _Q0;
  *(v0 + 7856) = _Q0;
  *(v0 + 7872) = _Q0;
  *(v0 + 7888) = _Q0;
  *(v0 + 7904) = _Q0;
  *(v0 + 7920) = _Q0;
  *(v0 + 15984) = _Q0;
  *(v0 + 7936) = _Q0;
  *(v0 + 7952) = _Q0;
  *(v0 + 7968) = _Q0;
  *(v0 + 7984) = _Q0;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v26;
  *(v0 + 15852) = *&v26[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 8000) = _Q0;
  *(v0 + 8016) = _Q0;
  *(v0 + 8032) = _Q0;
  *(v0 + 8048) = _Q0;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 8064) = _Q0;
  *(v0 + 8080) = _Q0;
  *(v0 + 15728) = _Q0;
  *(v0 + 15744) = _Q0;
  *(v0 + 15768) = 0x3FE4CCCCC0000000;
  *(v0 + 8096) = _Q0;
  *(v0 + 8112) = _Q0;
  *(v0 + 15600) = _Q0;
  *(v0 + 15616) = _Q0;
  *(v0 + 15632) = _Q0;
  *(v0 + 15648) = _Q0;
  *(v0 + 15504) = _Q0;
  *(v0 + 15520) = _Q0;
  *(v0 + 15536) = _Q0;
  *(v0 + 15552) = _Q0;
  *(v0 + 15568) = _Q0;
  *(v0 + 15584) = _Q0;
  *(v0 + 15408) = _Q0;
  *(v0 + 15424) = _Q0;
  *(v0 + 15440) = _Q0;
  *(v0 + 15456) = _Q0;
  *(v0 + 15472) = _Q0;
  *(v0 + 15488) = _Q0;
  *(v0 + 15312) = _Q0;
  *(v0 + 15328) = _Q0;
  *(v0 + 15344) = _Q0;
  *(v0 + 15360) = _Q0;
  *(v0 + 15376) = _Q0;
  *(v0 + 15392) = _Q0;
  *(v0 + 15216) = _Q0;
  *(v0 + 15232) = _Q0;
  *(v0 + 15248) = _Q0;
  *(v0 + 15264) = _Q0;
  *(v0 + 15280) = _Q0;
  *(v0 + 15296) = _Q0;
  *(v0 + 15120) = _Q0;
  *(v0 + 15136) = _Q0;
  *(v0 + 15152) = _Q0;
  *(v0 + 15168) = _Q0;
  *(v0 + 15184) = _Q0;
  *(v0 + 15200) = _Q0;
  *(v0 + 8128) = _Q0;
  *(v0 + 15040) = _Q0;
  *(v0 + 15056) = _Q0;
  *(v0 + 15072) = _Q0;
  *(v0 + 15088) = _Q0;
  *(v0 + 15104) = _Q0;
  *(v0 + 8144) = _Q0;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = _Q0;
  *(v0 + 8160) = _Q0;
  *(v0 + 8176) = _Q0;
  *(v0 + 0x2000) = _Q0;
  *(v0 + 8208) = _Q0;
  *(v0 + 8224) = _Q0;
  *(v0 + 14880) = _Q0;
  *(v0 + 8240) = _Q0;
  *(v0 + 8256) = _Q0;
  *(v0 + 14784) = _Q0;
  *(v0 + 14800) = _Q0;
  *(v0 + 14832) = _Q0;
  *(v0 + 14848) = _Q0;
  *(v0 + 8272) = _Q0;
  *(v0 + 8288) = _Q0;
  *(v0 + 8304) = _Q0;
  *(v0 + 8320) = _Q0;
  *(v0 + 14768) = _Q0;
  *(v0 + 8336) = _Q0;
  *(v0 + 8352) = _Q0;
  *(v0 + 8432) = _Q0;
  *(v0 + 14633) = *v25;
  *(v0 + 8448) = _Q0;
  *(v0 + 14632) = 1;
  *(v0 + 14636) = *&v25[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 8472) = 0x3FE0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 8553) = *v20;
  *(v0 + 14552) = 0x3FE0000000000000;
  *(v0 + 8552) = 0;
  *(v0 + 8556) = *&v20[3];
  *(v0 + 8584) = 1061158912;
  *(v0 + 14512) = _Q0;
  *(v0 + 14528) = _Q0;
  *(v0 + 8640) = _Q0;
  *(v0 + 14368) = _Q0;
  *(v0 + 14384) = _Q0;
  *(v0 + 14400) = _Q0;
  *(v0 + 14416) = _Q0;
  *(v0 + 14432) = _Q0;
  *(v0 + 14272) = _Q0;
  *(v0 + 14288) = _Q0;
  *(v0 + 14304) = _Q0;
  *(v0 + 14320) = _Q0;
  *(v0 + 14336) = _Q0;
  *(v0 + 14352) = _Q0;
  *(v0 + 14176) = _Q0;
  *(v0 + 14192) = _Q0;
  *(v0 + 14208) = _Q0;
  *(v0 + 14224) = _Q0;
  *(v0 + 14240) = _Q0;
  *(v0 + 14256) = _Q0;
  *(v0 + 14080) = _Q0;
  *(v0 + 14096) = _Q0;
  *(v0 + 14112) = _Q0;
  *(v0 + 14128) = _Q0;
  *(v0 + 14144) = _Q0;
  *(v0 + 14160) = _Q0;
  *(v0 + 13984) = _Q0;
  *(v0 + 14000) = _Q0;
  *(v0 + 14016) = _Q0;
  *(v0 + 14032) = _Q0;
  *(v0 + 14048) = _Q0;
  *(v0 + 14064) = _Q0;
  *(v0 + 13888) = _Q0;
  *(v0 + 13904) = _Q0;
  *(v0 + 13920) = _Q0;
  *(v0 + 13936) = _Q0;
  *(v0 + 13952) = _Q0;
  *(v0 + 13968) = _Q0;
  *(v0 + 8656) = _Q0;
  *(v0 + 13808) = _Q0;
  *(v0 + 13824) = _Q0;
  *(v0 + 13840) = _Q0;
  *(v0 + 13856) = _Q0;
  *(v0 + 13872) = _Q0;
  *(v0 + 8672) = _Q0;
  *(v0 + 8688) = _Q0;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 8704) = _Q0;
  *(v0 + 8720) = _Q0;
  *(v0 + 8752) = _Q0;
  *(v0 + 13648) = _Q0;
  *(v0 + 13664) = _Q0;
  *(v0 + 13680) = _Q0;
  *(v0 + 8768) = _Q0;
  *(v0 + 8784) = _Q0;
  *(v0 + 13568) = _Q0;
  *(v0 + 13584) = _Q0;
  *(v0 + 13616) = _Q0;
  *(v0 + 13632) = _Q0;
  *(v0 + 8800) = _Q0;
  *(v0 + 8864) = _Q0;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 13552) = _Q0;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = _Q0;
  *(v0 + 8960) = _Q0;
  *(v0 + 13448) = 1060320051;
  *(v0 + 8976) = _Q0;
  *(v0 + 8992) = _Q0;
  *(v0 + 9008) = _Q0;
  *(v0 + 13417) = *v24;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v24[3];
  *(v0 + 9024) = _Q0;
  *(v0 + 9040) = _Q0;
  *(v0 + 9056) = _Q0;
  *(v0 + 13296) = _Q0;
  *(v0 + 13312) = _Q0;
  *(v0 + 13336) = 0x3FE0000000000000;
  *(v0 + 9072) = _Q0;
  *(v0 + 9088) = _Q0;
  *(v0 + 9104) = _Q0;
  *(v0 + 13184) = _Q0;
  *(v0 + 13200) = _Q0;
  *(v0 + 13216) = _Q0;
  *(v0 + 13088) = _Q0;
  *(v0 + 13104) = _Q0;
  *(v0 + 13120) = _Q0;
  *(v0 + 13136) = _Q0;
  *(v0 + 13152) = _Q0;
  *(v0 + 13168) = _Q0;
  *(v0 + 12992) = _Q0;
  *(v0 + 13008) = _Q0;
  *(v0 + 13024) = _Q0;
  *(v0 + 13040) = _Q0;
  *(v0 + 13056) = _Q0;
  *(v0 + 13072) = _Q0;
  *(v0 + 12896) = _Q0;
  *(v0 + 12912) = _Q0;
  *(v0 + 12928) = _Q0;
  *(v0 + 12944) = _Q0;
  *(v0 + 12960) = _Q0;
  *(v0 + 12976) = _Q0;
  *(v0 + 12800) = _Q0;
  *(v0 + 12816) = _Q0;
  *(v0 + 12832) = _Q0;
  *(v0 + 12848) = _Q0;
  *(v0 + 12864) = _Q0;
  *(v0 + 12880) = _Q0;
  *(v0 + 12704) = _Q0;
  *(v0 + 12720) = _Q0;
  *(v0 + 12736) = _Q0;
  *(v0 + 12752) = _Q0;
  *(v0 + 12768) = _Q0;
  *(v0 + 12784) = _Q0;
  *(v0 + 12608) = _Q0;
  *(v0 + 12624) = _Q0;
  *(v0 + 12640) = _Q0;
  *(v0 + 12656) = _Q0;
  *(v0 + 12672) = _Q0;
  *(v0 + 12688) = _Q0;
  *(v0 + 9120) = _Q0;
  *(v0 + 9136) = _Q0;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = _Q0;
  *(v0 + 9152) = _Q0;
  *(v0 + 9168) = _Q0;
  *(v0 + 9184) = _Q0;
  *(v0 + 12448) = _Q0;
  *(v0 + 12496) = _Q0;
  *(v0 + 12512) = _Q0;
  *(v0 + 9200) = _Q0;
  *(v0 + 12352) = _Q0;
  *(v0 + 12368) = _Q0;
  *(v0 + 12400) = _Q0;
  *(v0 + 12416) = _Q0;
  *(v0 + 12432) = _Q0;
  *(v0 + 9216) = _Q0;
  *(v0 + 9232) = _Q0;
  *(v0 + 12288) = _Q0;
  *(v0 + 12304) = _Q0;
  *(v0 + 12320) = _Q0;
  *(v0 + 12336) = _Q0;
  *(v0 + 9248) = _Q0;
  *(v0 + 9264) = _Q0;
  *(v0 + 9280) = _Q0;
  *(v0 + 9296) = _Q0;
  *(v0 + 12200) = 1;
  *(v0 + 12201) = *v23;
  *(v0 + 12204) = *&v23[3];
  *(v0 + 12232) = 1061158912;
  *(v0 + 9312) = _Q0;
  *(v0 + 9328) = _Q0;
  *(v0 + 12120) = 0x3FE0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 9344) = _Q0;
  *(v0 + 9360) = _Q0;
  *(v0 + 9376) = _Q0;
  *(v0 + 9392) = _Q0;
  *(v0 + 12080) = _Q0;
  *(v0 + 12096) = _Q0;
  *(v0 + 9408) = _Q0;
  *(v0 + 11936) = _Q0;
  *(v0 + 11952) = _Q0;
  *(v0 + 11968) = _Q0;
  *(v0 + 11984) = _Q0;
  *(v0 + 12000) = _Q0;
  *(v0 + 11840) = _Q0;
  *(v0 + 11856) = _Q0;
  *(v0 + 11872) = _Q0;
  *(v0 + 11888) = _Q0;
  *(v0 + 11904) = _Q0;
  *(v0 + 11920) = _Q0;
  *(v0 + 11744) = _Q0;
  *(v0 + 11760) = _Q0;
  *(v0 + 11776) = _Q0;
  *(v0 + 11792) = _Q0;
  *(v0 + 11808) = _Q0;
  *(v0 + 11824) = _Q0;
  *(v0 + 11648) = _Q0;
  *(v0 + 11664) = _Q0;
  *(v0 + 11680) = _Q0;
  *(v0 + 11696) = _Q0;
  *(v0 + 11712) = _Q0;
  *(v0 + 11728) = _Q0;
  *(v0 + 11552) = _Q0;
  *(v0 + 11568) = _Q0;
  *(v0 + 11584) = _Q0;
  *(v0 + 11600) = _Q0;
  *(v0 + 11616) = _Q0;
  *(v0 + 11632) = _Q0;
  *(v0 + 11456) = _Q0;
  *(v0 + 11472) = _Q0;
  *(v0 + 11488) = _Q0;
  *(v0 + 11504) = _Q0;
  *(v0 + 11520) = _Q0;
  *(v0 + 11536) = _Q0;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = _Q0;
  *(v0 + 11392) = _Q0;
  *(v0 + 11408) = _Q0;
  *(v0 + 11424) = _Q0;
  *(v0 + 11440) = _Q0;
  *(v0 + 9424) = _Q0;
  *(v0 + 9440) = _Q0;
  *(v0 + 9456) = _Q0;
  *(v0 + 11296) = _Q0;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 9472) = _Q0;
  *(v0 + 9488) = _Q0;
  *(v0 + 9504) = _Q0;
  *(v0 + 11200) = _Q0;
  *(v0 + 11216) = _Q0;
  *(v0 + 11232) = _Q0;
  *(v0 + 9520) = _Q0;
  *(v0 + 9536) = _Q0;
  *(v0 + 11120) = _Q0;
  *(v0 + 11136) = _Q0;
  *(v0 + 11152) = _Q0;
  *(v0 + 11184) = _Q0;
  *(v0 + 9552) = _Q0;
  *(v0 + 9568) = _Q0;
  *(v0 + 9648) = _Q0;
  *(v0 + 9664) = _Q0;
  *(v0 + 9688) = 0x3FD9999980000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9769) = *v21;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10985) = *v22;
  *(v0 + 11016) = 1061997773;
  *(v0 + 9768) = 0;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10988) = *&v22[3];
  *(v0 + 9772) = *&v21[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = _Q0;
  *(v0 + 10880) = _Q0;
  *(v0 + 10904) = 0x3FE0000000000000;
  *(v0 + 9920) = _Q0;
  *(v0 + 9936) = _Q0;
  *(v0 + 9968) = _Q0;
  *(v0 + 9984) = _Q0;
  *(v0 + 10784) = _Q0;
  *(v0 + 10864) = _Q0;
  *(v0 + 10688) = _Q0;
  *(v0 + 10704) = _Q0;
  *(v0 + 10720) = _Q0;
  *(v0 + 10736) = _Q0;
  *(v0 + 10752) = _Q0;
  *(v0 + 10768) = _Q0;
  *(v0 + 10592) = _Q0;
  *(v0 + 10608) = _Q0;
  *(v0 + 10624) = _Q0;
  *(v0 + 10640) = _Q0;
  *(v0 + 10656) = _Q0;
  *(v0 + 10672) = _Q0;
  *(v0 + 10496) = _Q0;
  *(v0 + 10512) = _Q0;
  *(v0 + 10528) = _Q0;
  *(v0 + 10544) = _Q0;
  *(v0 + 10560) = _Q0;
  *(v0 + 10576) = _Q0;
  *(v0 + 10400) = _Q0;
  *(v0 + 10416) = _Q0;
  *(v0 + 10432) = _Q0;
  *(v0 + 10448) = _Q0;
  *(v0 + 10464) = _Q0;
  *(v0 + 10480) = _Q0;
  *(v0 + 10304) = _Q0;
  *(v0 + 10320) = _Q0;
  *(v0 + 10336) = _Q0;
  *(v0 + 10352) = _Q0;
  *(v0 + 10368) = _Q0;
  *(v0 + 10384) = _Q0;
  *(v0 + 10208) = _Q0;
  *(v0 + 10224) = _Q0;
  *(v0 + 10240) = _Q0;
  *(v0 + 10256) = _Q0;
  *(v0 + 10272) = _Q0;
  *(v0 + 10288) = _Q0;
  *(v0 + 10000) = _Q0;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = _Q0;
  *(v0 + 10176) = _Q0;
  *(v0 + 10192) = _Q0;
  *(v0 + 10016) = _Q0;
  *(v0 + 10080) = _Q0;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 18336) = _Q0;
  *(v0 + 18400) = _Q0;
  *(v0 + 18480) = _Q0;
  *(v0 + 18496) = _Q0;
  *(v0 + 18640) = _Q0;
  *(v0 + 18672) = _Q0;
  *(v0 + 18688) = _Q0;
  *(v0 + 18704) = _Q0;
  *(v0 + 18720) = _Q0;
  *(v0 + 18736) = _Q0;
  *(v0 + 18752) = _Q0;
  *(v0 + 18768) = _Q0;
  *(v0 + 18784) = _Q0;
  *(v0 + 18800) = _Q0;
  *(v0 + 18816) = _Q0;
  *(v0 + 18832) = _Q0;
  *(v0 + 18848) = _Q0;
  *(v0 + 18864) = _Q0;
  *(v0 + 18880) = _Q0;
  *(v0 + 18896) = _Q0;
  *(v0 + 18912) = _Q0;
  *(v0 + 18928) = _Q0;
  *(v0 + 18944) = _Q0;
  *(v0 + 18960) = _Q0;
  *(v0 + 18976) = _Q0;
  *(v0 + 18992) = _Q0;
  *(v0 + 19008) = _Q0;
  *(v0 + 19024) = _Q0;
  *(v0 + 19040) = _Q0;
  *(v0 + 19056) = _Q0;
  *(v0 + 19072) = _Q0;
  *(v0 + 19088) = _Q0;
  *(v0 + 19104) = _Q0;
  *(v0 + 19120) = _Q0;
  *(v0 + 19136) = _Q0;
  *(v0 + 19152) = _Q0;
  *(v0 + 19168) = _Q0;
  *(v0 + 19184) = _Q0;
  *(v0 + 19200) = _Q0;
  *(v0 + 19216) = _Q0;
  *(v0 + 19232) = _Q0;
  *(v0 + 19248) = _Q0;
  *(v0 + 19264) = _Q0;
  *(v0 + 19280) = _Q0;
  *(v0 + 19296) = _Q0;
  *(v0 + 19392) = _Q0;
  *(v0 + 19696) = _Q0;
  *(v0 + 19712) = _Q0;
  *(v0 + 19728) = _Q0;
  *(v0 + 19744) = _Q0;
  *(v0 + 19760) = _Q0;
  *(v0 + 19808) = _Q0;
  *(v0 + 19856) = _Q0;
  *(v0 + 19888) = _Q0;
  *(v0 + 19904) = _Q0;
  *(v0 + 19920) = _Q0;
  *(v0 + 19936) = _Q0;
  *(v0 + 19952) = _Q0;
  *(v0 + 19968) = _Q0;
  *(v0 + 19984) = _Q0;
  *(v0 + 20000) = _Q0;
  *(v0 + 20016) = _Q0;
  *(v0 + 20032) = _Q0;
  *(v0 + 20048) = _Q0;
  *(v0 + 20064) = _Q0;
  *(v0 + 20080) = _Q0;
  *(v0 + 20096) = _Q0;
  *(v0 + 20112) = _Q0;
  *(v0 + 20128) = _Q0;
  *(v0 + 20144) = _Q0;
  *(v0 + 20160) = _Q0;
  *(v0 + 20176) = _Q0;
  *(v0 + 20192) = _Q0;
  *(v0 + 20208) = _Q0;
  *(v0 + 20224) = _Q0;
  *(v0 + 20240) = _Q0;
  *(v0 + 20256) = _Q0;
  *(v0 + 20272) = _Q0;
  *(v0 + 20288) = _Q0;
  *(v0 + 20304) = _Q0;
  *(v0 + 20320) = _Q0;
  *(v0 + 20336) = _Q0;
  *(v0 + 20352) = _Q0;
  *(v0 + 20368) = _Q0;
  *(v0 + 20384) = _Q0;
  *(v0 + 20400) = _Q0;
  *(v0 + 20416) = _Q0;
  *(v0 + 20432) = _Q0;
  *(v0 + 20448) = _Q0;
  *(v0 + 20464) = _Q0;
  *(v0 + 20480) = _Q0;
  *(v0 + 20496) = _Q0;
  *(v0 + 20512) = _Q0;
  *(v0 + 20608) = _Q0;
  *(v0 + 20656) = _Q0;
  *(v0 + 20912) = _Q0;
  *(v0 + 20928) = _Q0;
  *(v0 + 20944) = _Q0;
  *(v0 + 20960) = _Q0;
  *(v0 + 20976) = _Q0;
  *(v0 + 21024) = _Q0;
  *(v0 + 21072) = _Q0;
  *(v0 + 21104) = _Q0;
  *(v0 + 21120) = _Q0;
  *(v0 + 21136) = _Q0;
  *(v0 + 21152) = _Q0;
  *(v0 + 21168) = _Q0;
  *(v0 + 21184) = _Q0;
  *(v0 + 21200) = _Q0;
  *(v0 + 21216) = _Q0;
  *(v0 + 21232) = _Q0;
  *(v0 + 21248) = _Q0;
  *(v0 + 21264) = _Q0;
  *(v0 + 21280) = _Q0;
  *(v0 + 21296) = _Q0;
  *(v0 + 21312) = _Q0;
  *(v0 + 21328) = _Q0;
  *(v0 + 21344) = _Q0;
  *(v0 + 21360) = _Q0;
  *(v0 + 21376) = _Q0;
  *(v0 + 21392) = _Q0;
  *(v0 + 21408) = _Q0;
  *(v0 + 21424) = _Q0;
  *(v0 + 21440) = _Q0;
  *(v0 + 21456) = _Q0;
  *(v0 + 21472) = _Q0;
  *(v0 + 21488) = _Q0;
  *(v0 + 21504) = _Q0;
  *(v0 + 21520) = _Q0;
  *(v0 + 21536) = _Q0;
  *(v0 + 21552) = _Q0;
  *(v0 + 21568) = _Q0;
  *(v0 + 21584) = _Q0;
  *(v0 + 21600) = _Q0;
  *(v0 + 21616) = _Q0;
  *(v0 + 21632) = _Q0;
  *(v0 + 21648) = _Q0;
  *(v0 + 21664) = _Q0;
  *(v0 + 21680) = _Q0;
  *(v0 + 21696) = _Q0;
  *(v0 + 21712) = _Q0;
  *(v0 + 21728) = _Q0;
  *(v0 + 21824) = _Q0;
  *(v0 + 21872) = _Q0;
  result = 0.799999952;
  *(v0 + 21888) = xmmword_1BCE3D370;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FE99999A0000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000015;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v28;
  *(v0 + 18284) = *&v28[3];
  *(v0 + 18312) = 1036831949;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FEAE14760000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v29;
  *(v0 + 19500) = *&v29[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FEB89F0C0000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v30;
  *(v0 + 20716) = *&v30[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FEB89F080000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}