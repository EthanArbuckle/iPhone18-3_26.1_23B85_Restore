void sub_1BF00E27C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_3_14(a1, a5 + 8 * (a1 >> 6));
  *(v6[6] + 8 * v5) = v7;
  v8 = (v6[7] + 16 * v5);
  *v8 = v9;
  v8[1] = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_17(v6, v13);
  }
}

uint64_t sub_1BF00E2C8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF17BB6C();
  sub_1BF011978(v4, v1, v2);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF00E380(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1BF17B86C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t ScenePhaseManager.addObserver(_:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = _s13TeaFoundation18DisposableObserverCMa_0();
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  v8 = sub_1BF009D14(v7, a1);
  swift_beginAccess();

  MEMORY[0x1BFB52290](v9);
  sub_1BF005F5C(*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1BF17A59C();
  result = swift_endAccess();
  a2[3] = v6;
  a2[4] = &off_1F3DBE6D8;
  *a2 = v8;
  return result;
}

void Cache.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v52 = a1;
  v50 = a2;
  v6 = *v3;
  v51 = *(*v3 + 88);
  v7 = type metadata accessor for CacheEntry();
  OUTLINED_FUNCTION_1(v7);
  v49 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = OUTLINED_FUNCTION_30_7();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_1();
  v22 = v20 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v48 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v48 - v27;
  __swift_storeEnumTagSinglePayload(&v48 - v27, 1, 1, v7);
  v29 = v3[3];
  UnfairLock.lock()();
  OUTLINED_FUNCTION_10_9();
  v30 = v4[2];
  v31 = *(v6 + 80);
  v32 = *(v6 + 96);
  sub_1BF179EAC();
  swift_endAccess();
  v33 = *(v17 + 8);
  v33(v28, v14);
  (*(v17 + 32))(v28, v26, v14);
  os_unfair_lock_unlock(*(v29 + 16));
  if (a3 >= 0.0)
  {
    v34 = *(v17 + 16);
    OUTLINED_FUNCTION_17_11();
    v35();
    if (__swift_getEnumTagSinglePayload(v22, 1, v7) == 1)
    {
      v33(v28, v14);
      v33(v22, v14);
      v36 = 1;
      v37 = v51;
    }

    else
    {
      v38 = v49;
      (*(v49 + 32))(v13, v22, v7);
      v39 = sub_1BF0183E0(v7);
      v33(v28, v14);
      v40 = v39 < -a3 || v39 > a3;
      v37 = v51;
      if (!v40)
      {
        v44 = v50;
        (*(*(v51 - 8) + 16))(v50, v13, v51);
        v45 = *(v38 + 8);
        v46 = OUTLINED_FUNCTION_17_2();
        v47(v46);
        v36 = 0;
LABEL_11:
        __swift_storeEnumTagSinglePayload(v44, v36, 1, v37);
        return;
      }

      v41 = *(v38 + 8);
      v42 = OUTLINED_FUNCTION_17_2();
      v43(v42);
      v36 = 1;
    }

    v44 = v50;
    goto LABEL_11;
  }

  __break(1u);
}

void Date.addHours(_:calendar:)()
{
  v1 = OUTLINED_FUNCTION_12_13();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_0_40();
  sub_1BF00EAF0(0, v5, v6, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v11 = *MEMORY[0x1E6969A58];
  v12 = OUTLINED_FUNCTION_7_17();
  v13(v12);
  OUTLINED_FUNCTION_15_9();
  v14 = OUTLINED_FUNCTION_10_8();
  v15(v14);
  sub_1BF1794AC();
  OUTLINED_FUNCTION_4_16(v0);
  if (!v16)
  {
    OUTLINED_FUNCTION_6_19();
    v20 = *(v19 + 32);
    v21 = OUTLINED_FUNCTION_19_7();
    v22(v21);
    return;
  }

  OUTLINED_FUNCTION_23_4();
  if (!v16)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_22_5();
  if (!v16)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_4_16(v0);
  if (!v16)
  {
    OUTLINED_FUNCTION_0_40();
    sub_1BF05AC80(v0, v17, v18);
  }
}

void sub_1BF00EAF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BF00EB80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = sub_1BF014A1C(a1);
  v3();
}

uint64_t sub_1BF00EBDC(uint64_t a1)
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

void sub_1BF00ED3C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = *(*a3 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    a4(a1, Strong);
    DeferredPromise.resolve(_:)();
    swift_unknownObjectRelease();
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    sub_1BF095D40();
    v12 = swift_allocError();
    *v13 = xmmword_1BF17FB20;
    *(v13 + 16) = 2;
    DeferredPromise.reject(_:)();
  }
}

uint64_t sub_1BF00EF7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BF17981C();
  *a1 = result;
  return result;
}

unint64_t sub_1BF00EFCC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1BF01A86C(a5, a6);
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
    result = sub_1BF17B2FC();
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

uint64_t sub_1BF00F10C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = sub_1BEFE90AC(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB53020](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = *(v6 + 24);
          ObjectType = swift_getObjectType();
          (*(v7 + 40))(ObjectType, v7);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v9 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v10 = sub_1BEFE90AC(v9);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v10 == j)
    {

      v14 = *(a1 + 16);
      *(a1 + 16) = v15;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v9);
    }

    else
    {
      if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v12 = *(v9 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      v13 = *(v15 + 16);
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1BF00F314()
{
  OUTLINED_FUNCTION_77();
  v5 = v4;
  OUTLINED_FUNCTION_2_20();
  v6 = *(v5 + 16);
  v7 = sub_1BEFE90AC(v6);
  if (v7)
  {
    v0 = v7;
    if (v7 < 1)
    {
      goto LABEL_26;
    }

    v2 = v6 & 0xC000000000000001;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v0; ++i)
    {
      if (v2)
      {
        OUTLINED_FUNCTION_8_14();
        v1 = v9;
      }

      else
      {
        OUTLINED_FUNCTION_3_15();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v10 = *(v1 + 24);
          ObjectType = swift_getObjectType();
          (*(v10 + 8))(ObjectType, v10);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
  sub_1BEFE90AC(*(v5 + 16));
  OUTLINED_FUNCTION_7_14();
  for (j = 0; ; ++j)
  {
    if (v0 == j)
    {

      v14 = *(v5 + 16);
      *(v5 + 16) = v15;

      OUTLINED_FUNCTION_76_0();
      return;
    }

    if (v2)
    {
      OUTLINED_FUNCTION_8_14();
    }

    else
    {
      if (j >= *(v3 + 16))
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_3_15();
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      v13 = *(v15 + 16);
      OUTLINED_FUNCTION_4_13();
      sub_1BF17B36C();
      OUTLINED_FUNCTION_4_13();
      sub_1BF17B37C();
      sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1BF00F4E4(uint64_t a1, uint64_t a2)
{
  sub_1BF01A748(0, &qword_1ED8EAEA0, MEMORY[0x1E6977D78], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF00F578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BF01A748(0, a2, a3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_12(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BF00F5E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BF014DC0(a1, a2);
  }

  return a1;
}

uint64_t sub_1BF00F5F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BF014E18(a1, a2);
  }

  return a1;
}

uint64_t sub_1BF00F608(uint64_t a1, uint64_t a2)
{
  sub_1BF01A748(0, &qword_1ED8EAEA0, MEMORY[0x1E6977D78], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF00F69C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;

    sub_1BF01C888(a1, a2, a3, a4 & 1, a5, v15, a6, a7);
  }

  return result;
}

uint64_t sub_1BF00F750@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1BF17A12C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF17A10C();
  v12 = sub_1BF17A0CC();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    goto LABEL_3;
  }

  v77 = v11;
  v74 = a3;
  if (qword_1ED8EE9F0 != -1)
  {
    goto LABEL_66;
  }

  while (2)
  {
    v27 = sub_1BF1797FC();
    v72 = __swift_project_value_buffer(v27, qword_1ED8F5298);
    v28 = sub_1BF1797DC();
    v29 = sub_1BF17ACDC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1BEFE0000, v28, v29, "HttpParser: try to recover data", v30, 2u);
      MEMORY[0x1BFB547B0](v30, -1, -1);
    }

    v73 = v4;

    v31 = MEMORY[0x1BFB51150](a1, a2);
    if (v31 <= 1000)
    {
      if (v31 < 1)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v31 = 1000;
    }

    v78 = a1;
    v75 = a2 >> 62;
    v76 = BYTE6(a2);
    v32 = a2 >> 62;
LABEL_14:
    v33 = v31 - 100;
    v34 = 0;
    v35 = a1 >> 32;
    v36 = v78;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    switch(v32)
    {
      case 1uLL:
        goto LABEL_17;
      case 2uLL:
        v36 = *(a1 + 16);
        v35 = *(a1 + 24);
LABEL_17:
        if (v35 < v36)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          swift_once();
          continue;
        }

        if (v75 == 2)
        {
          v39 = *(a1 + 16);
          v38 = *(a1 + 24);
          v34 = v35;
          v37 = v36;
        }

        else
        {
          v34 = v35;
          v37 = v36;
          v38 = a1 >> 32;
          v39 = v78;
        }

LABEL_21:
        if (v38 < v34 || v34 < v39)
        {
          goto LABEL_61;
        }

        v41 = __OFSUB__(v34, v37);
        v42 = v34 - v37;
        if (v41)
        {
          goto LABEL_62;
        }

        if ((v42 & 0x8000000000000000) == 0 && v42 < v31)
        {
          v43 = a1 >> 32;
          switch(v32)
          {
            case 1uLL:
              goto LABEL_40;
            case 2uLL:
              v43 = *(a1 + 24);
              goto LABEL_41;
            default:
              goto LABEL_43;
          }
        }

        v41 = __OFADD__(v37, v31);
        v43 = v37 + v31;
        if (v41)
        {
          goto LABEL_64;
        }

        v44 = 0;
        v45 = 0;
        switch(v32)
        {
          case 1uLL:
            v44 = a1 >> 32;
            v45 = v78;
            break;
          case 2uLL:
            v45 = *(a1 + 16);
            v44 = *(a1 + 24);
            break;
          case 3uLL:
            break;
          default:
            v45 = 0;
            v44 = v76;
            break;
        }

        if (v44 < v43 || v43 < v45)
        {
          goto LABEL_65;
        }

        v47 = 0;
        switch(v32)
        {
          case 1uLL:
LABEL_40:
            v47 = v78;
            break;
          case 2uLL:
LABEL_41:
            v47 = *(a1 + 16);
            break;
          default:
            break;
        }

        if (v43 < v47)
        {
          goto LABEL_63;
        }

LABEL_43:
        v48 = a2;
        v4 = sub_1BF17930C();
        v50 = v49;
        sub_1BF17A10C();
        v14 = sub_1BF17A0CC();
        v15 = v51;
        sub_1BF014E18(v4, v50);
        if (!v15)
        {
          v31 = v33;
          a2 = v48;
          if (v33 == 0 || v33 >= 0xFFFFFFFFFFFFFF9CLL)
          {
            goto LABEL_45;
          }

          goto LABEL_14;
        }

        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v62 = sub_1BF1797DC();
        v63 = sub_1BF17ACDC();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v79 = v65;
          *v64 = 136446210;
          v66 = sub_1BF01A7AC(v14, v15, &v79);

          *(v64 + 4) = v66;
          _os_log_impl(&dword_1BEFE0000, v62, v63, "HttpParser: recovered data: [%{public}s]", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v65);
          MEMORY[0x1BFB547B0](v65, -1, -1);
          MEMORY[0x1BFB547B0](v64, -1, -1);
        }

        else
        {
        }

        v4 = v73;
        a3 = v74;
LABEL_3:
        v16 = sub_1BF00FE28(0x7FFFFFFFFFFFFFFFLL, 1u, v14, v15);
        v17 = v16;
        if (!v16[2])
        {

LABEL_45:
          sub_1BF0B62E0();
          swift_allocError();
          *v52 = 0;
          v52[1] = 0;
          return swift_willThrow();
        }

        v18 = v4;
        v20 = v16[4];
        v19 = v16[5];
        v21 = v16[6];
        v22 = v16[7];
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v23 = MEMORY[0x1BFB51F50](v20, v19, v21, v22);
        v25 = v24;

        sub_1BF010444(v23, v25, &v79);
        if (v18)
        {
        }

        v53 = sub_1BF01DD60(1, v17);
        v55 = v54;
        v57 = v56;
        v59 = v58;
        if ((v58 & 1) == 0)
        {
LABEL_47:
          sub_1BF01F948(v53, v55, v57, v59);
          v61 = v60;
          goto LABEL_56;
        }

        sub_1BF17B97C();
        swift_unknownObjectRetain_n();
        v67 = swift_dynamicCastClass();
        if (!v67)
        {
          swift_unknownObjectRelease();
          v67 = MEMORY[0x1E69E7CC0];
        }

        v68 = *(v67 + 16);

        if (__OFSUB__(v59 >> 1, v57))
        {
          __break(1u);
          goto LABEL_68;
        }

        if (v68 != (v59 >> 1) - v57)
        {
LABEL_68:
          swift_unknownObjectRelease();
          goto LABEL_47;
        }

        v61 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v61)
        {
          v61 = MEMORY[0x1E69E7CC0];
LABEL_56:
          swift_unknownObjectRelease();
        }

        v83 = MEMORY[0x1E69E7CC8];
        sub_1BF01FA5C(v61, &v83);

        v69 = v83;

        v70 = v81;
        v71 = v82;
        *a3 = v79;
        *(a3 + 8) = v80;
        *(a3 + 24) = v70;
        *(a3 + 32) = v69;
        *(a3 + 40) = v71;
        return result;
      case 3uLL:
        goto LABEL_21;
      default:
        v37 = 0;
        v39 = 0;
        v38 = v76;
        v34 = v76;
        goto LABEL_21;
    }
  }
}

unint64_t sub_1BF00FE28(uint64_t a1, unsigned __int8 a2, uint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v6 = a4;
  v7 = a3;
  v10 = HIBYTE(a4) & 0xF;
  if (a1)
  {
    v11 = (a4 & 0x2000000000000000) != 0 ? HIBYTE(a4) & 0xF : a3 & 0xFFFFFFFFFFFFLL;
    if (v11)
    {
      v12 = 4 * v11;
      v47 = MEMORY[0x1E69E7CC0];
      v13 = 15;
      v5 = 4294959064;
LABEL_8:
      for (i = v13; ; i = sub_1BF17A1CC())
      {
        v9 = i >> 14;
        if (i >> 14 == v12)
        {
          break;
        }

        v15 = sub_1BF17A2EC();
        v8 = v16;
        result = sub_1BF0101F0(v15, v16);
        if ((result & 0x100000000) != 0)
        {
          __break(1u);
          return result;
        }

        v18 = result;

        v19 = (v18 - 14) <= 0xFFFFFFFB && (v18 - 8232) >= 2;
        if (!v19 || v18 == 133)
        {
          v4 = (v13 >> 14 == v9) & a2;
          if (v4 != 1)
          {
            if (v9 < v13 >> 14)
            {
              goto LABEL_45;
            }

            v20 = sub_1BF17A31C();
            v43 = v22;
            v44 = v21;
            v45 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = *(v47 + 16);
              sub_1BF0147C8();
              v47 = v26;
            }

            v8 = *(v47 + 16);
            v9 = v8 + 1;
            if (v8 >= *(v47 + 24) >> 1)
            {
              sub_1BF0147C8();
              v47 = v27;
            }

            *(v47 + 16) = v9;
            v24 = (v47 + 32 * v8);
            v24[4] = v20;
            v24[5] = v45;
            v24[6] = v44;
            v24[7] = v43;
          }

          v13 = sub_1BF17A1CC();
          if ((v4 & 1) != 0 || *(v47 + 16) != a1)
          {
            goto LABEL_8;
          }

          break;
        }
      }

      if (v13 >> 14 == v12 && (a2 & 1) != 0)
      {

        return v47;
      }

      if (v12 < v13 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = sub_1BF17A31C();
        v8 = v33;
        v9 = v34;
        v12 = v35;

        i = v47;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_40:
          v36 = *(i + 16);
          if (v36 >= *(i + 24) >> 1)
          {
            sub_1BF0147C8();
            i = v41;
          }

          *(i + 16) = v36 + 1;
          v37 = (i + 32 * v36);
          v37[4] = v7;
          v37[5] = v8;
          v37[6] = v9;
          v37[7] = v12;
          return i;
        }
      }

      v39 = *(i + 16);
      sub_1BF0147C8();
      i = v40;
      goto LABEL_40;
    }
  }

  if ((a4 & 0x2000000000000000) == 0)
  {
    v10 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v10 || (a2 & 1) == 0)
  {
    v4 = sub_1BF17A31C();
    v7 = v28;
    v8 = v29;
    v9 = v30;

    sub_1BF0147C8();
    i = v31;
    v5 = *(v31 + 16);
    v6 = v5 + 1;
    if (v5 < *(v31 + 24) >> 1)
    {
LABEL_37:
      *(i + 16) = v6;
      v32 = (i + 32 * v5);
      v32[4] = v4;
      v32[5] = v7;
      v32[6] = v8;
      v32[7] = v9;
      return i;
    }

LABEL_46:
    sub_1BF0147C8();
    i = v38;
    goto LABEL_37;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1BF0101F0(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1BF0103A4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_1BF17B1DC();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1BF17B2FC();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

unint64_t sub_1BF0103A4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1BF0B6154(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1BF0B61C4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

uint64_t sub_1BF010444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v63 = a3;
  v5 = sub_1BF178E2C();
  v6 = *(v5 - 8);
  v69 = v5;
  v70 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v68 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF013118();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v59 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v64 = v59 - v16;
  v17 = sub_1BF178D8C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  v74 = a2;
  v71 = 32;
  v72 = 0xE100000000000000;
  sub_1BF013170();
  if ((sub_1BF17AF8C() & 1) == 0)
  {
    goto LABEL_8;
  }

  v73 = a1;
  v74 = a2;
  v71 = 32;
  v72 = 0xE100000000000000;
  v22 = sub_1BF17AF2C();
  v23 = v22;
  if (v22[2] < 2uLL)
  {

LABEL_8:
    sub_1BF0B62E0();
    swift_allocError();
    *v34 = 0;
    v34[1] = 0;
    return swift_willThrow();
  }

  v24 = v22[7];
  v73 = v22[6];
  v74 = v24;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF178D6C();
  sub_1BF17AF6C();
  v26 = v25;
  (*(v18 + 8))(v21, v17);

  v62 = v23;
  if (!v26)
  {
    v28 = v23[6];
    v27 = v23[7];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  v29 = v64;
  v30 = v75;
  sub_1BF178EDC();

  sub_1BF01DBC0(v29, v15);
  v31 = sub_1BF178F0C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v31) == 1)
  {
    sub_1BF01F8EC(v15);
    v32 = 0;
    v33 = 0xE000000000000000;
  }

  else
  {
    v32 = sub_1BF178EAC();
    v36 = v15;
    v33 = v37;
    (*(*(v31 - 8) + 8))(v36, v31);
  }

  sub_1BF01DBC0(v29, v30);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    result = sub_1BF01F8EC(v30);
    v38 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v39 = sub_1BF178E5C();
    result = (*(*(v31 - 8) + 8))(v30, v31);
    v38 = MEMORY[0x1E69E7CC0];
    if (v39)
    {
      v40 = *(v39 + 16);
      if (v40)
      {
        v60 = v33;
        v61 = v32;
        v73 = MEMORY[0x1E69E7CC0];
        sub_1BF01DC24();
        v38 = v73;
        v41 = *(v70 + 16);
        v42 = *(v70 + 80);
        v59[1] = v39;
        v43 = v39 + ((v42 + 32) & ~v42);
        v66 = *(v70 + 72);
        v67 = v41;
        v70 += 16;
        v65 = (v70 - 8);
        do
        {
          v44 = v68;
          v45 = v69;
          v67(v68, v43, v69);
          v75 = sub_1BF178E0C();
          v47 = v46;
          v48 = sub_1BF178E1C();
          if (v49)
          {
            v50 = v48;
          }

          else
          {
            v50 = 0;
          }

          if (v49)
          {
            v51 = v49;
          }

          else
          {
            v51 = 0xE000000000000000;
          }

          (*v65)(v44, v45);
          v73 = v38;
          v52 = *(v38 + 16);
          if (v52 >= *(v38 + 24) >> 1)
          {
            sub_1BF01DC24();
            v38 = v73;
          }

          *(v38 + 16) = v52 + 1;
          v53 = (v38 + 32 * v52);
          v53[4] = v75;
          v53[5] = v47;
          v53[6] = v50;
          v53[7] = v51;
          v43 += v66;
          --v40;
        }

        while (v40);

        v29 = v64;
        v33 = v60;
        v32 = v61;
      }

      else
      {
      }
    }
  }

  if (v62[2])
  {
    v54 = v62[4];
    v55 = v62[5];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    LOBYTE(v54) = sub_1BF01DC58();
    v56 = sub_1BF179DAC();
    v57 = sub_1BF179DAC();
    result = sub_1BF01F8EC(v29);
    v58 = v63;
    *v63 = v32;
    v58[1] = v33;
    v58[2] = v38;
    *(v58 + 24) = v54 & 1;
    v58[4] = v56;
    v58[5] = v57;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF010A20()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_62_0();
  v7 = *v1;
  v8 = sub_1BF014CA8();
  OUTLINED_FUNCTION_1_5(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_52_0();
  sub_1BF010B10();
  if (OUTLINED_FUNCTION_14_4())
  {
    v11 = *v4;
    OUTLINED_FUNCTION_31_3();
    sub_1BF014CA8();
    OUTLINED_FUNCTION_11_2();
    if (!v13)
    {
      goto LABEL_14;
    }

    v6 = v12;
  }

  if (v5)
  {
    v14 = (*(*v4 + 56) + 16 * v6);
    v15 = v14[1];
    *v14 = v3;
    v14[1] = v2;
    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_58_0();
    sub_1BF01FAF4(v18, v19, v0, v3, v2, v20);
    OUTLINED_FUNCTION_26_2();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BF010B10()
{
  if (!qword_1ED8EADD0)
  {
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EADD0);
    }
  }
}

uint64_t sub_1BF010B6C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v25 = a2;
  v26 = a3;
  v6 = *(a4 + 16);
  if (v6)
  {
    v27 = MEMORY[0x1E69E7CC0];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF00DD60();
    v7 = v27;
    v8 = (a4 + 56);
    do
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v32 = *(v8 - 3);
      *&v33 = v9;
      swift_bridgeObjectRetain_n();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      MEMORY[0x1BFB52000](61, 0xE100000000000000);
      MEMORY[0x1BFB52000](v10, v11);

      v12 = v32;
      v27 = v7;
      v13 = *(v7 + 16);
      if (v13 >= *(v7 + 24) >> 1)
      {
        sub_1BF00DD60();
        v7 = v27;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v12;
      *(v14 + 40) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
    sub_1BEFF5158(0, &qword_1ED8EE9D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1BF01B738();
    v15 = sub_1BF179F7C();
    v17 = v16;

    v32 = 63;
    *&v33 = 0xE100000000000000;
    MEMORY[0x1BFB52000](v15, v17);

    MEMORY[0x1BFB52000](63, 0xE100000000000000);

    v18 = v25;
    v5 = v26;
  }

  else
  {
    v18 = a2;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  sub_1BF010E70(v18, v5, &v27);
  if (v27)
  {
    v32 = v27;
    v33 = v28;
    v34 = v29;
    v35 = v30;
    v36 = v31;
    v19 = sub_1BF012714(v18, v5);

    v24 = sub_1BF179DAC();
    sub_1BF01D33C(&v27, v23);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v20 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0133B0(v20, &v32, &v24, v19);

    v21 = v24;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    sub_1BF01D3C4(&v27);
  }

  else
  {

    return 0;
  }

  return v21;
}

void *sub_1BF010E70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_1BF012714(a1, a2);
  v57 = v6;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v56 = v7;
  swift_bridgeObjectRetain_n();
  v13 = 0;
  v14 = 0;
  v51 = (v5 + 40);
  v15 = MEMORY[0x1E69E7CC8];
  v52 = v12;
  v53 = v8;
  v54 = v5;
  if (!v11)
  {
    while (1)
    {
LABEL_4:
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        __break(1u);
        __break(1u);
        goto LABEL_51;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v16);
      ++v13;
      if (v11)
      {
        v13 = v16;
        goto LABEL_8;
      }
    }

    v48 = v62;
    sub_1BF0131C8(v15, 2u, v62);
    if (!v62[0])
    {
      v48 = v63;
      sub_1BF0131C8(v15, 1u, v63);
    }

    memcpy(__src, v48, sizeof(__src));
    return memcpy(a3, __src, 0x48uLL);
  }

  while (1)
  {
LABEL_8:
    memcpy(__dst, (*(v56 + 56) + 72 * (__clz(__rbit64(v11)) | (v13 << 6))), 0x48uLL);
    v60[0] = v57;
    sub_1BF013314(__dst, __src);
    v58 = v15;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF01A558(v60);
    v17 = v60[0];
    v59 = *(&__dst[0] + 1);
    v18 = *&__dst[0];
    v19 = *(v5 + 16);
    if (v19 != *(*&__dst[0] + 16))
    {
      goto LABEL_34;
    }

    if (v19 && v5 != *&__dst[0])
    {
      v20 = (*&__dst[0] + 40);
      v21 = v51;
      while (1)
      {
        v22 = *(v21 - 1) == *(v20 - 1) && *v21 == *v20;
        if (!v22 && (sub_1BF17B86C() & 1) == 0)
        {
          break;
        }

        v21 += 2;
        v20 += 2;
        if (!--v19)
        {
          goto LABEL_18;
        }
      }

LABEL_34:

      goto LABEL_35;
    }

LABEL_18:
    v23 = *(v17 + 16);
    if (v23 != *(v59 + 16))
    {
      goto LABEL_34;
    }

    v50 = a3;
    if (!v23 || v17 == v59)
    {
LABEL_33:

      v33 = *&__dst[4];
      v34 = *(&__dst[1] + 1);
      v35 = 2;
      v37 = __dst[2];
      v36 = __dst[3];
      a3 = v50;
      v14 = v58;
      goto LABEL_36;
    }

    v24 = (v17 + 56);
    v25 = (v59 + 56);
    v55 = v18;
    while (1)
    {
      v26 = v17;
      v27 = *(v24 - 1);
      v28 = *v24;
      v29 = *(v25 - 1);
      v30 = *v25;
      v31 = *(v24 - 3) == *(v25 - 3) && *(v24 - 2) == *(v25 - 2);
      if (!v31 && (sub_1BF17B86C() & 1) == 0)
      {
        break;
      }

      v32 = v27 == v29 && v28 == v30;
      if (!v32 && (sub_1BF17B86C() & 1) == 0)
      {
        break;
      }

      v24 += 4;
      v25 += 4;
      --v23;
      v17 = v26;
      v18 = v55;
      if (!v23)
      {
        goto LABEL_33;
      }
    }

    a3 = v50;
    v5 = v54;
    v18 = v55;
LABEL_35:
    v14 = v58;
    v38 = sub_1BF01E178(v18, v5);
    v33 = *&__dst[4];
    v34 = *(&__dst[1] + 1);
    v37 = __dst[2];
    v36 = __dst[3];
    v35 = v38 & 1;
LABEL_36:
    *__src = v18;
    *&__src[8] = v59;
    __src[16] = __dst[1];
    *&__src[24] = v34;
    *&__src[32] = v37;
    *&__src[48] = v36;
    *&__src[64] = v33;
    memcpy(v64, __src, sizeof(v64));
    sub_1BF013314(__dst, v60);
    swift_isUniquelyReferenced_nonNull_native();
    v60[0] = v14;
    v39 = sub_1BF01E288();
    if (__OFADD__(v14[2], (v40 & 1) == 0))
    {
      break;
    }

    v41 = v39;
    v42 = v40;
    sub_1BF01135C();
    if (sub_1BF17B43C())
    {
      v43 = sub_1BF01E288();
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_53;
      }

      v41 = v43;
    }

    v15 = v60[0];
    if (v42)
    {
      *(*(v60[0] + 56) + v41) = v35;
      sub_1BF0187DC(__src);
      sub_1BF0187DC(__dst);
    }

    else
    {
      *(v60[0] + 8 * (v41 >> 6) + 64) |= 1 << v41;
      memcpy((v15[6] + 72 * v41), v64, 0x48uLL);
      *(v15[7] + v41) = v35;
      sub_1BF0187DC(__dst);

      v45 = v15[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_52;
      }

      v15[2] = v47;
    }

    v11 &= v11 - 1;
    v8 = v53;
    v5 = v54;
    v12 = v52;
    v14 = 0;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);

  __break(1u);
LABEL_53:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

void sub_1BF01135C()
{
  if (!qword_1ED8EADE0)
  {
    sub_1BF0113C0();
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EADE0);
    }
  }
}

unint64_t sub_1BF0113C0()
{
  result = qword_1ED8EB118;
  if (!qword_1ED8EB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EB118);
  }

  return result;
}

void *sub_1BF011414(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1BF070F14(0, &unk_1ED8EAD48, sub_1BF01366C);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1BF0A90EC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1BF01366C();
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1BF011540(void *result, unsigned int a2)
{
  if (a2 > 2)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 3;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = ((2 * a2) & 2 | 1u) << 60;
    result[2] = 0;
    result[3] = 0;
  }

  return result;
}

uint64_t sub_1BF011574(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    sub_1BF014E18(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {

    return sub_1BF014E18(a1, a2);
  }
}

void sub_1BF0115C4()
{
  if (!qword_1ED8EAD38)
  {
    sub_1BF179B3C();
    sub_1BF01C404(&qword_1ED8EAEA8, MEMORY[0x1E6977D78]);
    v0 = sub_1BF17BBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EAD38);
    }
  }
}

void sub_1BF011664()
{
  OUTLINED_FUNCTION_18_1();
  if ((v6 & 1) == 0)
  {
    v7 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      sub_1BEFE4510(0, v5, v2, MEMORY[0x1E69E6F90]);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 16);
      if (v3)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
      if (v3)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_23();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_1_1();
    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_1BF011754(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1BF17BB6C();
  sub_1BF00DD94(v8, a1);
  sub_1BF01A6B4(v8, a2);
  v6 = sub_1BF17BB9C();

  return sub_1BF012D40(a1, a2, v6);
}

uint64_t sub_1BF0117D4(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1;
  }

  v6 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v6 = 11;
  }

  v7 = v6 | (v5 << 16);
  while (1)
  {
    v9 = ((a4 ^ a3) & 0xFFFFFFFFFFFFC000) != 0;
    if ((a4 ^ a3) < 0x4000)
    {
      break;
    }

    a4 = sub_1BF17AE8C();
    v10 = sub_1BF17AEDC();
    v12 = v11;
    if (v7 < 0x4000)
    {
      goto LABEL_18;
    }

    v13 = v10;
    v7 = sub_1BF17A1DC();
    if (v13 == sub_1BF17A2EC() && v12 == v14)
    {
    }

    else
    {
      v16 = sub_1BF17B86C();

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v7 >= 0x4000)
  {
    sub_1BF17A1DC();
    sub_1BF17A2EC();
LABEL_18:

    return v9;
  }

  return 1;
}

void sub_1BF011978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF00DD94(a1, a2);

  sub_1BF01A6B4(a1, a3);
}

uint64_t PromiseDeduper.promise(key:loggingKey:createBlock:)(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v56 = a2;
  v57 = a5;
  v9 = a1;
  v10 = *v5;
  v11 = *(*v5 + 80);
  v58 = *(v11 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v60 = &v53 - v13;
  v14 = v5[6];
  v15 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v14);
  (*(v15 + 8))(v14, v15);
  swift_beginAccess();
  v16 = v5[2];
  v17 = *(v10 + 88);
  type metadata accessor for Promise();
  v18 = *(v10 + 96);
  sub_1BF179EAC();
  v19 = v61;
  if (v61)
  {
    swift_endAccess();
    v20 = v6[6];
    v21 = v6[7];
    __swift_project_boxed_opaque_existential_1(v6 + 3, v20);
    OUTLINED_FUNCTION_4_35(v21);
    v22(v20, v21);
    if (a3)
    {
      if (qword_1ED8EF4B0 != -1)
      {
        OUTLINED_FUNCTION_0_74();
      }

      v23 = sub_1BF1797FC();
      __swift_project_value_buffer(v23, qword_1ED8F52B0);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v24 = sub_1BF1797DC();
      v25 = sub_1BF17ACDC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_70();
        v27 = OUTLINED_FUNCTION_44_0();
        v62[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_1BF01A7AC(v56, a3, v62);
        _os_log_impl(&dword_1BEFE0000, v24, v25, "Using existing Promise for key: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_28();
      }
    }
  }

  else
  {
    v59 = v18;
    v53 = v17;
    v55 = v12;
    v28 = swift_endAccess();
    v29 = a4;
    v54 = v9;
    if (a3)
    {
      if (qword_1ED8EF4B0 != -1)
      {
        OUTLINED_FUNCTION_0_74();
      }

      v30 = sub_1BF1797FC();
      __swift_project_value_buffer(v30, qword_1ED8F52B0);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v31 = sub_1BF1797DC();
      v32 = sub_1BF17ACDC();

      v33 = v31;
      if (os_log_type_enabled(v31, v32))
      {
        v34 = OUTLINED_FUNCTION_70();
        v35 = OUTLINED_FUNCTION_44_0();
        v62[0] = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_1BF01A7AC(v56, a3, v62);
        _os_log_impl(&dword_1BEFE0000, v33, v32, "Creating new Promise for key: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_28();
      }

      else
      {
      }

      v9 = v54;
    }

    v36 = v29(v28);
    v37 = v58;
    v38 = *(v58 + 16);
    v39 = v60;
    v38(v60, v9, v11);
    v56 = v38;
    v57 = v36;
    v61 = v36;
    swift_beginAccess();
    sub_1BF179E9C();

    sub_1BF179EBC();
    swift_endAccess();
    v40 = v6[6];
    v41 = v6[7];
    __swift_project_boxed_opaque_existential_1(v6 + 3, v40);
    OUTLINED_FUNCTION_4_35(v41);
    v42(v40, v41);
    v38(v39, v9, v11);
    v43 = v39;
    v44 = (*(v37 + 80) + 48) & ~*(v37 + 80);
    v45 = swift_allocObject();
    v46 = v53;
    v45[2] = v11;
    v45[3] = v46;
    v45[4] = v59;
    v45[5] = v6;
    v58 = *(v37 + 32);
    (v58)(v45 + v44, v43, v11);

    v47 = sub_1BF014EDC(v46, MEMORY[0x1E69E7CA8] + 8);
    Promise.then<A>(on:closure:)();

    v48 = v60;
    v56(v60, v54, v11);
    v49 = swift_allocObject();
    *(v49 + 2) = v11;
    *(v49 + 3) = v46;
    v50 = v58;
    *(v49 + 4) = v59;
    *(v49 + 5) = v6;
    v50(&v49[v44], v48, v11);
    v51 = qword_1ED8F0210;

    if (v51 != -1)
    {
      OUTLINED_FUNCTION_2_35();
    }

    sub_1BEFF77FC();

    return v57;
  }

  return v19;
}

uint64_t Array.mapToDictionary<A>(_:)()
{
  sub_1BF179CEC();
  sub_1BF17A65C();
  sub_1BF179E9C();
  OUTLINED_FUNCTION_7_0();
  swift_getWitnessTable();
  result = sub_1BF17A3EC();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF012104(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22[1] = a7;
  v22[3] = a1;
  v12 = sub_1BF17AE6C();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v22 - v15;
  v17 = *(a5 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a2, a5);
  a3(a2);
  if (v7)
  {
    return (*(v17 + 8))(v20, a5);
  }

  __swift_storeEnumTagSinglePayload(v16, 0, 1, a6);
  sub_1BF179E9C();
  return sub_1BF179EBC();
}

uint64_t sub_1BF0122D4(uint64_t a1, void *a2)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = *a2;
  __swift_project_boxed_opaque_existential_1(a2 + 3, v3);
  (*(v4 + 8))(v3, v4);
  if (!a2[8])
  {
    swift_beginAccess();
    v7 = v5[10];
    v6 = v5[11];
    type metadata accessor for Promise();
    v8 = v5[12];
    sub_1BF179E9C();
    sub_1BF179D7C();
    swift_endAccess();
  }

  return sub_1BF0304EC(a2);
}

uint64_t sub_1BF012434()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return sub_1BF179F8C() & 1;
}

uint64_t sub_1BF012460(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1BF1794AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = v8;
  v14 = *(v6 + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v22 = a1;
      v10 = v7;
      v13 = v5;
    }

    else
    {
      v22 = (a1 + v14) & ~v12;
    }

    return __swift_getEnumTagSinglePayload(v22, v10, v13);
  }

  v15 = (v14 & ~v12) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_24;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 2:
        v21 = *a1;
        break;
      case 3:
        v21 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v21 = *a1;
        break;
      default:
        v21 = *a1;
        break;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

uint64_t MockServer.get(path:requestHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1BF01C154(a1, a2, a3, a4);
}

{
  return sub_1BF01C154(a1, a2, a3, a4);
}

uint64_t sub_1BF0126D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF012714(uint64_t a1, unint64_t a2)
{
  v69 = 63;
  v70 = 0xE100000000000000;
  v66 = &v69;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v5 = sub_1BF0143EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1BF014764, v65, a1, a2);
  v6 = v5;
  v67 = MEMORY[0x1E69E7CC0];
  v68 = MEMORY[0x1E69E7CC0];
  v7 = v5[2];
  if (v7 >= 2)
  {
    v8 = v5[8];
    v9 = v5[9];
    v2 = v5[10];
    v10 = v5[11];
    v69 = 38;
    v70 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v5);
    v62 = &v69;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    a1 = sub_1BF01A1B0(0x7FFFFFFFFFFFFFFFLL, 1u, sub_1BF012F08, v61, v8, v9, v2, v10);
    sub_1BF012F24(a1, &v68, &v67);

    v7 = v6[2];
  }

  if (!v7)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    sub_1BF01C20C(a1);
    v18 = v60;
    goto LABEL_6;
  }

  v11 = v6[4];
  v12 = v6[5];
  v13 = v6[6];
  v14 = v6[7];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v69 = 47;
  v70 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v69;
  a1 = sub_1BF01A1B0(0x7FFFFFFFFFFFFFFFLL, 1u, sub_1BF01C1EC, v61, v11, v12, v13, v14);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v16 = MEMORY[0x1E69E7CC0];
  v17 = sub_1BF179DAC();
  v2 = *(a1 + 16);
  v64 = v17;
  if (!v2)
  {
    v18 = a1;
    goto LABEL_23;
  }

  v18 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_6:
  v19 = 0;
  v20 = (v18 + 56);
  v63 = a1;
  v21 = (a1 + 56);
  do
  {
    v22 = *(v21 - 3);
    v23 = *(v21 - 2);
    v24 = *(v21 - 1);
    a1 = *v21;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    if (sub_1BF00DC20(123, 0xE100000000000000, v22, v23) & 1) != 0 && (sub_1BF0117D4(125, 0xE100000000000000, v22, v23))
    {
      v25 = sub_1BF17AE9C();
      if (v26)
      {
        v25 = v23;
      }

      if (v23 >> 14 < v25 >> 14)
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

      v27 = v18;
      v28 = sub_1BF17AEFC();
      v30 = v29;

      if (__OFSUB__(sub_1BF17AECC(), 1))
      {
        goto LABEL_32;
      }

      v31 = sub_1BF17AE9C();
      if (v32)
      {
        v33 = v30;
      }

      else
      {
        v33 = v31;
      }

      if (v33 >> 14 < v28 >> 14)
      {
        goto LABEL_33;
      }

      v34 = sub_1BF17AEFC();
      v36 = v35;
      v38 = v37;
      v40 = v39;

      MEMORY[0x1BFB51F50](v34, v36, v38, v40);

      v41 = v64;
      swift_isUniquelyReferenced_nonNull_native();
      v69 = v41;
      sub_1BF00E13C();
      a1 = v69;
      v42 = sub_1BF17AEEC();
      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      if (v19 >= *(v27 + 16))
      {
        goto LABEL_35;
      }

      v18 = v27;
      v64 = a1;
      v46 = *v20;
      *(v20 - 3) = v42;
      *(v20 - 2) = v43;
      *(v20 - 1) = v44;
      *v20 = v45;
    }

    ++v19;
    v21 += 4;

    v20 += 4;
  }

  while (v2 != v19);
  v16 = MEMORY[0x1E69E7CC0];
LABEL_23:

  v47 = *(v18 + 16);
  if (v47)
  {
    v69 = v16;
    sub_1BF00DD60();
    v48 = v69;
    v49 = (v18 + 56);
    do
    {
      v50 = *(v49 - 3);
      v51 = *(v49 - 2);
      v52 = *(v49 - 1);
      v53 = *v49;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v54 = MEMORY[0x1BFB51F50](v50, v51, v52, v53);
      v56 = v55;

      v69 = v48;
      v57 = *(v48 + 16);
      if (v57 >= *(v48 + 24) >> 1)
      {
        sub_1BF00DD60();
        v48 = v69;
      }

      *(v48 + 16) = v57 + 1;
      v58 = v48 + 16 * v57;
      *(v58 + 32) = v54;
      *(v58 + 40) = v56;
      v49 += 4;
      --v47;
    }

    while (v47);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v48;
}

uint64_t sub_1BF012C4C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF17B6DC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1BF17A57C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BF0B7088(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BF012FDC(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_1BF012D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v29 = ~v5;
    v7 = *(a1 + 16);
    v30 = *(v3 + 48);
    v25 = (a1 + 40);
    v26 = (a2 + 56);
    do
    {
      v8 = (v30 + 16 * v6);
      v9 = *v8;
      if (*(*v8 + 16) == v7)
      {
        v10 = v8[1];
        if (!v7 || v9 == a1)
        {
LABEL_13:
          v15 = *(v10 + 16);
          if (v15 == *(a2 + 16))
          {
            if (!v15 || v10 == a2)
            {
              return v6;
            }

            v16 = (v10 + 56);
            for (i = v26; ; i += 4)
            {
              v18 = *(v16 - 1);
              v19 = *v16;
              v20 = *(i - 1);
              v21 = *i;
              v22 = *(v16 - 3) == *(i - 3) && *(v16 - 2) == *(i - 2);
              if (!v22 && (sub_1BF17B86C() & 1) == 0)
              {
                break;
              }

              v23 = v18 == v20 && v19 == v21;
              if (!v23 && (sub_1BF17B86C() & 1) == 0)
              {
                break;
              }

              v16 += 4;
              if (!--v15)
              {
                return v6;
              }
            }
          }
        }

        else
        {
          v11 = (v9 + 40);
          v12 = v25;
          v13 = v7;
          while (1)
          {
            v14 = *(v11 - 1) == *(v12 - 1) && *v11 == *v12;
            if (!v14 && (sub_1BF17B86C() & 1) == 0)
            {
              break;
            }

            v11 += 2;
            v12 += 2;
            if (!--v13)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v6 = (v6 + 1) & v29;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1BF012F24(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v6 = *(result + 16);
  v7 = (result + 56);
  if (v6)
  {
    while (1)
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 3);
      v11 = v8;
      v12 = v9;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF00DDFC(&v10, a2, a3);
      if (v3)
      {
        break;
      }

      v7 += 4;
      if (!--v6)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1BF012FDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = (*a4 + 32 * a3 - 32);
    v5 = result - a3;
    while (2)
    {
      v19 = v4;
      v20 = a3;
      v6 = (v22 + 32 * a3);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
      v18 = v5;
      do
      {
        v11 = v4[2];
        v12 = v4[3];
        v13 = v7 == *v4 && v8 == v4[1];
        if (v13 || (v21 = v4[2], result = sub_1BF17B86C(), v11 = v21, (result & 1) != 0))
        {
          if (v9 == v11 && v10 == v12)
          {
            break;
          }
        }

        result = sub_1BF17B86C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v22)
        {
          __break(1u);
          return result;
        }

        v7 = v4[4];
        v8 = v4[5];
        v9 = v4[6];
        v10 = v4[7];
        v15 = *(v4 + 1);
        *(v4 + 2) = *v4;
        *(v4 + 3) = v15;
        *v4 = v7;
        v4[1] = v8;
        v4[2] = v9;
        v4[3] = v10;
        v4 -= 4;
      }

      while (!__CFADD__(v5++, 1));
      a3 = v20 + 1;
      v4 = v19 + 4;
      v5 = v18 - 1;
      if (v20 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BF013118()
{
  if (!qword_1ED8EE420)
  {
    sub_1BF178F0C();
    v0 = sub_1BF17AE6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EE420);
    }
  }
}

unint64_t sub_1BF013170()
{
  result = qword_1ED8EF248[0];
  if (!qword_1ED8EF248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EF248);
  }

  return result;
}

uint64_t sub_1BF0131C8@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result;
  v5 = 0;
  v6 = result + 64;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = a2;
  v10 = v8 & *(result + 64);
  v11 = (v7 + 63) >> 6;
  if (v10)
  {
    while (1)
    {
      v12 = v5;
LABEL_8:
      v13 = __clz(__rbit64(v10)) | (v12 << 6);
      result = memcpy(__dst, (*(v3 + 48) + 72 * v13), sizeof(__dst));
      if (*(*(v3 + 56) + v13) == v9)
      {
        break;
      }

      v10 &= v10 - 1;
      v5 = v12;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v21 = *__dst;
    v22 = *&__dst[16];
    v19 = *&__dst[32];
    v20 = *&__dst[48];
    v14 = *&__dst[64];
    result = sub_1BF013314(__dst, v23);
    v17 = v19;
    v18 = v20;
    v15 = v21;
    v16 = v22;
LABEL_12:
    *a3 = v15;
    *(a3 + 16) = v16;
    *(a3 + 32) = v17;
    *(a3 + 48) = v18;
    *(a3 + 64) = v14;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        v14 = 0;
        v15 = 0uLL;
        v16 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
        goto LABEL_12;
      }

      v10 = *(v6 + 8 * v12);
      ++v5;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BF013370(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1BF0133B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v5 = a2;
  v6 = a1;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v43 = a4 + 32;
  v12 = 0;
  v40 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  while (v10)
  {
    v13 = v10;
LABEL_10:
    v10 = (v13 - 1) & v13;
    v15 = *(v5 + 40);
    if (*(v15 + 16))
    {
      v16 = __clz(__rbit64(v13)) | (v12 << 6);
      v17 = *(*(v6 + 48) + 8 * v16);
      v48 = *(*(v6 + 56) + 16 * v16 + 8);
      v18 = sub_1BF00088C(v17);
      if (v19)
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        if (v17 >= *(v4 + 16))
        {
          goto LABEL_26;
        }

        v44 = v10;
        v20 = (*(v15 + 56) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = (v43 + 16 * v17);
        v24 = v23[1];
        v46 = *v23;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v25 = *a3;
        swift_isUniquelyReferenced_nonNull_native();
        v49 = *a3;
        v45 = v21;
        v26 = sub_1BF014CA8();
        if (__OFADD__(v49[2], (v27 & 1) == 0))
        {
          goto LABEL_27;
        }

        v28 = v26;
        v29 = v27;
        sub_1BF010B10();
        if (sub_1BF17B43C())
        {
          v30 = sub_1BF014CA8();
          if ((v29 & 1) != (v31 & 1))
          {
            goto LABEL_29;
          }

          v28 = v30;
        }

        if (v29)
        {
          v32 = (v49[7] + 16 * v28);
          v33 = v32[1];
          *v32 = v46;
          v32[1] = v24;
        }

        else
        {
          v49[(v28 >> 6) + 8] |= 1 << v28;
          v34 = (v49[6] + 16 * v28);
          *v34 = v45;
          v34[1] = v22;
          v35 = (v49[7] + 16 * v28);
          *v35 = v46;
          v35[1] = v24;
          v36 = v49[2];
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            goto LABEL_28;
          }

          v49[2] = v38;
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        }

        *a3 = v49;

        v5 = a2;
        v4 = a4;
        v6 = v40;
        v10 = v44;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      sub_1BF0187DC(v5);
    }

    v13 = *(v7 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

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
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

void sub_1BF01366C()
{
  if (!qword_1ED8EAE90)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8EAE90);
    }
  }
}

uint64_t sub_1BF0136C8(unint64_t *a1)
{
  v70 = sub_1BF17A12C();
  v73 = *(v70 - 8);
  v2 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v72 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v71 = a1[3];
  v79 = xmmword_1BF17EBD0;
  v80 = xmmword_1BF17EBD0;
  v74 = 0x312E312F50545448;
  v75 = 0xE900000000000020;
  v69 = v5 & 0x3000000000000000;
  v7 = 200;
  if ((v5 & 0x3000000000000000) == 0x3000000000000000)
  {
    v7 = 404;
  }

  v78 = v7;
  if ((v5 & 0x3000000000000000) == 0x3000000000000000)
  {
    v8 = 0x6E756F4620746F4ELL;
  }

  else
  {
    v8 = 19279;
  }

  if ((v5 & 0x3000000000000000) == 0x3000000000000000)
  {
    v9 = 0xE900000000000064;
  }

  else
  {
    v9 = 0xE200000000000000;
  }

  v10 = sub_1BF17B6FC();
  MEMORY[0x1BFB52000](v10);

  MEMORY[0x1BFB52000](32, 0xE100000000000000);
  MEMORY[0x1BFB52000](v8, v9);

  i = v74;
  v12 = v75;
  sub_1BF0201A4();
  v14 = v13;
  v15 = *(v13 + 16);
  v16 = *(v13 + 24) >> 1;
  v17 = (v15 + 1);
  if (v16 > v15)
  {
    goto LABEL_10;
  }

LABEL_43:
  OUTLINED_FUNCTION_0_34();
  v14 = v61;
  v16 = *(v61 + 24) >> 1;
LABEL_10:
  *(v14 + 16) = v17;
  v18 = v14 + 16 * v15;
  *(v18 + 32) = i;
  *(v18 + 40) = v12;
  v19 = v15 + 2;
  if (v16 < (v15 + 2))
  {
    sub_1BF0201A4();
    v14 = v62;
  }

  *(v14 + 16) = v19;
  v20 = v14 + 16 * v17;
  *(v20 + 32) = 0xD000000000000019;
  *(v20 + 40) = 0x80000001BF18D7E0;
  if ((v15 + 3) > *(v14 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_34();
    v14 = v63;
  }

  *(v14 + 16) = v15 + 3;
  v21 = v14 + 16 * v19;
  *(v21 + 32) = 0xD000000000000011;
  *(v21 + 40) = 0x80000001BF18D800;
  v67 = v5;
  v68 = v4;
  v74 = v4;
  v75 = v5;
  v66[1] = v6;
  v76 = v6;
  v77 = v71;
  v17 = &v74;
  v22 = sub_1BF013D20();
  v6 = v22;
  v5 = 0;
  v23 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v4 = v25 & *(v22 + 64);
  for (i = (v24 + 63) >> 6; v4; *(v34 + 40) = v33)
  {
LABEL_21:
    v27 = (v5 << 10) | (16 * __clz(__rbit64(v4)));
    v28 = (*(v6 + 48) + v27);
    v29 = v28[1];
    v30 = (*(v6 + 56) + v27);
    v32 = *v30;
    v31 = v30[1];
    v74 = *v28;
    v75 = v29;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    MEMORY[0x1BFB52000](8250, 0xE200000000000000);
    MEMORY[0x1BFB52000](v32, v31);

    v15 = v74;
    v33 = v75;
    v12 = *(v14 + 16);
    v17 = (v12 + 1);
    if (v12 >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_34();
      v14 = v35;
    }

    v4 &= v4 - 1;
    *(v14 + 16) = v17;
    v34 = v14 + 16 * v12;
    *(v34 + 32) = v15;
  }

  while (1)
  {
    v26 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v26 >= i)
    {
      break;
    }

    v4 = *(v23 + 8 * v26);
    ++v5;
    if (v4)
    {
      v5 = v26;
      goto LABEL_21;
    }
  }

  if (v69 == 0x3000000000000000)
  {
    v36 = *(v14 + 16);
    v37 = v36 + 1;
    v38 = v70;
    v39 = 0xD000000000000011;
    if (v36 >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_34();
      v14 = v64;
    }

    v40 = 0x80000001BF18D820;
  }

  else
  {
    v38 = v70;
    v41 = v67;
    if ((v67 & 0x2000000000000000) != 0)
    {
      v41 = v67 & 0xDFFFFFFFFFFFFFFFLL;
      v42 = v68;
      sub_1BF014DC0(v68, v67 & 0xDFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v42 = v68;
      sub_1BF0C0E94(v68, v67);
    }

    v43 = v79;
    *&v79 = v42;
    *(&v79 + 1) = v41;
    v44 = v41;
    sub_1BF014DC0(v42, v41);
    sub_1BF014E18(v43, *(&v43 + 1));
    v45 = v72;
    sub_1BF17A10C();
    v46 = sub_1BF17A0BC();
    v48 = v47;
    (*(v73 + 8))(v45, v38);
    if (v48 >> 60 != 15)
    {
      sub_1BF17939C();
      sub_1BF00F5F4(v46, v48);
    }

    v74 = 0;
    v75 = 0xE000000000000000;
    sub_1BF17B1EC();

    v74 = 0xD000000000000010;
    v75 = 0x80000001BF18D840;
    v78 = MEMORY[0x1BFB51150](v79, *(&v79 + 1));
    v49 = sub_1BF17B6FC();
    MEMORY[0x1BFB52000](v49);

    v39 = v74;
    v40 = v75;
    v36 = *(v14 + 16);
    v37 = v36 + 1;
    if (v36 >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_34();
      v14 = v65;
    }

    sub_1BF014E18(v42, v44);
  }

  *(v14 + 16) = v37;
  v50 = v14 + 16 * v36;
  *(v50 + 32) = v39;
  *(v50 + 40) = v40;
  v74 = v14;
  sub_1BF02027C();
  sub_1BF01B738();
  v51 = sub_1BF179F7C();
  v53 = v52;

  v74 = v51;
  v75 = v53;
  MEMORY[0x1BFB52000](2573, 0xE200000000000000);
  MEMORY[0x1BFB52000](2573, 0xE200000000000000);
  v54 = v72;
  sub_1BF17A10C();
  v55 = sub_1BF17A0BC();
  v57 = v56;

  (*(v73 + 8))(v54, v38);
  if (v57 >> 60 != 15)
  {
    sub_1BF17939C();
    sub_1BF00F5F4(v55, v57);
  }

  v58 = v79;
  if (!sub_1BF0202CC(v79, *(&v79 + 1)))
  {
    sub_1BF17939C();
  }

  v59 = v80;
  sub_1BF014E18(v58, *(&v58 + 1));
  return v59;
}

uint64_t sub_1BF013D20()
{
  v2 = v0[1];
  v1 = v0[2];
  v3 = v0[3];
  v4 = sub_1BF179DAC();
  if ((~v2 & 0x3000000000000000) != 0)
  {
    if ((v2 & 0x2000000000000000) != 0)
    {
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_1BF010A20();
  }

  return v4;
}

uint64_t sub_1BF013E14(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_1BF011574(a1, a2);
  }

  return a1;
}

uint64_t sub_1BF013E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BF01A748(0, &qword_1ED8EAEA0, MEMORY[0x1E6977D78], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = sub_1BF179B3C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  sub_1BF00F4E4(a2, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1BF00F578(v10, &qword_1ED8EAEA0, MEMORY[0x1E6977D78]);
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v19 = sub_1BF1797FC();
    __swift_project_value_buffer(v19, qword_1ED8F5298);

    v20 = sub_1BF1797DC();
    v21 = sub_1BF17ACDC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39[0] = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_1BF01A7AC(*(a3 + 40), *(a3 + 48), v39);
      _os_log_impl(&dword_1BEFE0000, v20, v21, "SocketConnection:[%{public}s] handled request", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1BFB547B0](v23, -1, -1);
      MEMORY[0x1BFB547B0](v22, -1, -1);
    }
  }

  else
  {
    v38 = a4;
    (*(v12 + 32))(v18, v10, v11);
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v24 = sub_1BF1797FC();
    __swift_project_value_buffer(v24, qword_1ED8F5298);
    v25 = *(v12 + 16);
    v25(v16, v18, v11);

    v26 = sub_1BF1797DC();
    v27 = sub_1BF17ACBC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39[0] = v37;
      *v28 = 136446466;
      *(v28 + 4) = sub_1BF01A7AC(*(a3 + 40), *(a3 + 48), v39);
      *(v28 + 12) = 2114;
      sub_1BF01C404(&qword_1ED8EAEA8, MEMORY[0x1E6977D78]);
      swift_allocError();
      v25(v29, v16, v11);
      v30 = _swift_stdlib_bridgeErrorToNSError();
      v31 = *(v12 + 8);
      v31(v16, v11);
      *(v28 + 14) = v30;
      v32 = v36;
      *v36 = v30;
      _os_log_impl(&dword_1BEFE0000, v26, v27, "SocketConnection:[%{public}s] failed to handle request with error: %{public}@", v28, 0x16u);
      sub_1BF02F424(v32, sub_1BF082F84);
      MEMORY[0x1BFB547B0](v32, -1, -1);
      v33 = v37;
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1BFB547B0](v33, -1, -1);
      MEMORY[0x1BFB547B0](v28, -1, -1);

      v31(v18, v11);
    }

    else
    {

      v34 = *(v12 + 8);
      v34(v16, v11);
      v34(v18, v11);
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BF01D634();
  }

  return result;
}

unint64_t sub_1BF014364()
{
  result = qword_1ED8F0BE8;
  if (!qword_1ED8F0BE8)
  {
    sub_1BF01A748(255, qword_1ED8F0BF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8F0BE8);
  }

  return result;
}

uint64_t sub_1BF0143EC(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_1BF17A31C();
    OUTLINED_FUNCTION_6_15();
    sub_1BF0147C8();
    v15 = v30;
    v8 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v31 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v32 = (v15 + 32 * v8);
      v32[4] = v6;
      v32[5] = v10;
      v32[6] = v11;
      v32[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1BF0147C8();
    v15 = v33;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v43 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v41 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v41;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_5_11();
      v17 = sub_1BF17A2EC();
      v11 = v18;
      v44[0] = v17;
      v44[1] = v18;
      v19 = v45(v44);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_5_11();
      v16 = sub_1BF17A1CC();
    }

    v22 = (v41 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v41 >> 14)
    {
      break;
    }

    v42 = sub_1BF17A31C();
    v37 = v24;
    v38 = v23;
    v36 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v43 + 16);
      OUTLINED_FUNCTION_24_0();
      sub_1BF0147C8();
      v43 = v28;
    }

    v12 = *(v43 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v43 + 24) >> 1)
    {
      sub_1BF0147C8();
      v43 = v29;
    }

    *(v43 + 16) = v11;
    v26 = (v43 + 32 * v12);
    v26[4] = v42;
    v26[5] = v38;
    v26[6] = v37;
    v26[7] = v36;
LABEL_20:
    OUTLINED_FUNCTION_5_11();
    v16 = sub_1BF17A1CC();
    if ((v22 & 1) == 0 && *(v43 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v43;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_1BF17A31C();
        OUTLINED_FUNCTION_6_15();
        v15 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v31 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v34 = *(v15 + 16);
      OUTLINED_FUNCTION_24_0();
      sub_1BF0147C8();
      v15 = v35;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF014784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1BF17B86C() & 1;
  }
}

void sub_1BF0147C8()
{
  OUTLINED_FUNCTION_41_2();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_16_4(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1BEFEC638(0, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_33_2(v12);
    OUTLINED_FUNCTION_24_6(v13);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v14 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    if (v3 != v0 || &v15[32 * v2] <= v14)
    {
      memmove(v14, v15, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_27_1()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[13];
  return v0[16];
}

uint64_t OUTLINED_FUNCTION_27_4@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 120) = &a2 - a1;

  return sub_1BF1794AC();
}

uint64_t OUTLINED_FUNCTION_27_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_27_10()
{
  *(v1 - 96) = v0;

  return sub_1BF179F1C();
}

uint64_t sub_1BF014974(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1BF1797FC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_1ED8EFC00 != -1)
  {
    OUTLINED_FUNCTION_0_51();
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return sub_1BF1797EC();
}

uint64_t sub_1BF014A1C(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  v5 = *(v4 + 80);
  v6 = type metadata accessor for Seal.Resolution();
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  OUTLINED_FUNCTION_15_15();
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    OUTLINED_FUNCTION_20(v5);
    (*(v14 + 16))(v13, a1, v5);
    swift_storeEnumTagMultiPayload();
    sub_1BF006BE0();
    OUTLINED_FUNCTION_11_16();
    (*(v8 + 8))(v13, v6);
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return OUTLINED_FUNCTION_31_1();
}

uint64_t sub_1BF014B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_assert_not_owner(*(a1 + 16));
  type metadata accessor for Seal.Handler();
  v5 = sub_1BF17A4EC();
  v11 = v5;
  result = sub_1BF17A5AC();
  if (v5 != result)
  {
    do
    {
      v7 = sub_1BF17A58C();
      sub_1BF17A51C();
      if (v7)
      {
        v8 = *(a2 + 32 + 8 * v5);
      }

      else
      {
        v8 = sub_1BF17B23C();
      }

      sub_1BF17A62C();
      v10 = *(v8 + 16);
      v9 = *(v8 + 24);

      v10(a3);

      result = sub_1BF17A5AC();
      v5 = v11;
    }

    while (v11 != result);
  }

  return result;
}

unint64_t sub_1BF014CA8()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_30_1();
  sub_1BF179F3C();
  sub_1BF17BB9C();
  v0 = OUTLINED_FUNCTION_41_0();

  return sub_1BF014D0C(v0, v1, v2);
}

unint64_t sub_1BF014D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1BF17B86C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1BF014DC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BF014E18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t DeferredPromise.resolve(_:)()
{
  if (*(v0 + 24))
  {

    sub_1BF014F34();

    v1 = *(v0 + 24);
  }

  *(v0 + 24) = 0;
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return sub_1BF17A51C();
}

uint64_t OUTLINED_FUNCTION_44_2()
{
}

uint64_t sub_1BF014F34()
{
  OUTLINED_FUNCTION_124();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 16);

    v3 = sub_1BF014A1C(v0);
    OUTLINED_FUNCTION_121();

    v3(v4);
  }

  return result;
}

void sub_1BF014FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BF015010(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17AE6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF015064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BF0150C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17AE6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF01511C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BF0151A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  switch(a2 >> 62)
  {
    case 1uLL:
      *(v4 + 32) = a1 >> 32;
      v5 = a1;
      break;
    case 2uLL:
      *(v4 + 32) = *(a1 + 24);
      v5 = *(a1 + 16);
      break;
    case 3uLL:
      v5 = 0;
      *(v4 + 32) = 0;
      break;
    default:
      v5 = 0;
      *(v4 + 32) = BYTE6(a2);
      break;
  }

  *(v4 + 40) = v5;
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  return v4;
}

uint64_t sub_1BF01522C()
{
  sub_1BF017FD8();
  v3 = v0[4];
  result = v0[5];
  if (result >= v3)
  {
LABEL_26:
    v35 = v0[7];
    v9 = result - v35;
    if (__OFSUB__(result, v35))
    {
      __break(1u);
      goto LABEL_29;
    }

LABEL_21:
    v26 = v0[6];
    sub_1BF053D1C();
    swift_allocError();
    *v27 = v26;
    *(v27 + 8) = v9;
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
    v28 = 15;
LABEL_24:
    *(v27 + 48) = v28;
    swift_willThrow();
    return v9;
  }

  v4 = v0[2];
  v5 = v0[3];
  result = sub_1BF17931C();
  if (result != 93)
  {
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1BF015ECC(&v36);
      if (v1)
      {

        return v9;
      }

      v10 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF017104(0, *(v9 + 16) + 1, 1, v9);
        v9 = v20;
      }

      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1BF017104(v11 > 1, v12 + 1, 1, v9);
        v9 = v21;
      }

      *(v9 + 16) = v12 + 1;
      *(v9 + 8 * v12 + 32) = v10;
      if (v0[5] >= v3)
      {

        v24 = v0[5];
        v25 = v0[7];
        v9 = v24 - v25;
        if (__OFSUB__(v24, v25))
        {
          goto LABEL_31;
        }

        goto LABEL_21;
      }

      v13 = v0[2];
      v14 = v0[3];
      result = sub_1BF17931C();
      if (result == 93)
      {
        v22 = v0[5];
        v7 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v7)
        {
          goto LABEL_30;
        }

        v0[5] = v23;
        return v9;
      }

      v15 = v0[2];
      v16 = v0[3];
      v17 = v0[5];
      result = sub_1BF17931C();
      if (result != 44)
      {
        break;
      }

      v18 = v0[5];
      v7 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (v7)
      {
        __break(1u);
        goto LABEL_26;
      }

      v0[5] = v19;
    }

    v29 = v0[5];
    v30 = v0[7];
    v31 = v29 - v30;
    if (__OFSUB__(v29, v30))
    {
      goto LABEL_32;
    }

    v32 = v0[6];
    v33 = sub_1BF053B14();
    v9 = v34;
    sub_1BF053D1C();
    swift_allocError();
    *v27 = v32;
    *(v27 + 8) = v31;
    *(v27 + 16) = v33;
    *(v27 + 24) = v9;
    *(v27 + 32) = 0;
    *(v27 + 40) = 0;
    v28 = 4;
    goto LABEL_24;
  }

  v6 = v0[5];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    v0[5] = v8;
    return MEMORY[0x1E69E7CC0];
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1BF015484()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_4_6(v2, v3);
  v4 = sub_1BF014CA8();
  OUTLINED_FUNCTION_1_5(v4, v5);
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_19_4();
  sub_1BF0171B4();
  v7 = OUTLINED_FUNCTION_10_7();
  if (v7)
  {
    OUTLINED_FUNCTION_24_4();
    sub_1BF014CA8();
    OUTLINED_FUNCTION_8_2();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_22_2(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_55();

    return sub_1BF017214(v12);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_13_4();
    sub_1BEFF6D1C(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_55();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t sub_1BF015544@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v101 = a5;
  v109 = a3;
  v107 = a1;
  v103 = a6;
  sub_1BF01511C(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v106 = v95 - v12;
  v105 = sub_1BF17923C();
  v13 = OUTLINED_FUNCTION_1(v105);
  v98 = v14;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v97 = v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v96 = v95 - v19;
  v108 = sub_1BF1794AC();
  v20 = OUTLINED_FUNCTION_12(v108);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v100 = v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BF17AE6C();
  v25 = OUTLINED_FUNCTION_1(v24);
  v102 = v26;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v25);
  v31 = v95 - v30;
  v104 = a4;
  v99 = *(a4 - 8);
  v32 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v34 = v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v36 = *(v7 + 6);
  v35 = *(v7 + 7);
  if (v36)
  {
    v37 = *(v7 + 7);
  }

  else
  {
    v37 = 0;
  }

  type metadata accessor for JSONParser();
  swift_allocObject();
  v38 = v109;
  sub_1BF0151A4(a2, v109, v36, v37);
  sub_1BF009984(v36);
  sub_1BF014DC0(a2, v38);
  v39 = v110;
  sub_1BF015DC4(&v111);
  if (v39)
  {
  }

  v110 = 0;
  v41 = v105;
  v42 = v106;
  v95[0] = v34;
  v95[1] = v31;
  v109 = v24;

  v43 = v111;
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v44 = *(v7 + 2);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v46 = *(v7 + 3);
  v45 = *(v7 + 4);
  v47 = v7[40];
  if (v108 == v107)
  {
    v111 = *(v7 + 3);
    v112 = v45;
    v113 = v47;
    v116 = v43;
    v62 = v46;
    v63 = v47;
    v64 = v45;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF01730C(v62, v64, v63);
    v53 = v43;
    v65 = v110;
    sub_1BF051984(&v116, MEMORY[0x1E69E7CC0], v44, v100);
    v41 = v65;

    sub_1BF00A8F8(v62, v64, v63);
    if (v65)
    {
      v66 = v43;
      return sub_1BF017214(v66);
    }

    v110 = 0;
    v107 = v7;
    OUTLINED_FUNCTION_5_45();
    v49 = v104;
    v76 = swift_dynamicCast();
    v75 = v102;
    if (v76)
    {
      v77 = 0;
      v78 = 0;
    }

    else
    {
      v77 = OUTLINED_FUNCTION_16_21();
    }

    __swift_storeEnumTagSinglePayload(v77, v78, 1, v49);
    v82 = v103;
    v74 = v109;
    OUTLINED_FUNCTION_28_12();
  }

  else
  {
    if (v41 == v107)
    {
      v49 = v104;
      if (v43 >> 61 != 2)
      {
LABEL_22:
        v73 = OUTLINED_FUNCTION_5_45();
        __swift_storeEnumTagSinglePayload(v73, 1, 1, v49);
        v74 = v109;
        v75 = v102;
LABEL_34:
        (*(v75 + 8))(v41, v74);
        v89 = *(v7 + 2);
        v90 = *(v7 + 3);
        v91 = *(v7 + 4);
        v114 = &type metadata for _JSONDecoder;
        v92 = v7[40];
        v115 = sub_1BF0172B8();
        v93 = swift_allocObject();
        v111 = v93;
        *(v93 + 48) = MEMORY[0x1E69E7CC0];
        *(v93 + 56) = v89;
        *(v93 + 16) = v43;
        *(v93 + 24) = v90;
        *(v93 + 32) = v91;
        *(v93 + 40) = v92;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF01730C(v90, v91, v92);
        return sub_1BF17A8BC();
      }

      v68 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v67 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v53 = v41;
      v69 = *(v7 + 3);
      v100 = *(v7 + 4);
      LODWORD(v108) = v47;
      sub_1BF01730C(v69, v100, v47);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v41 = v42;
      sub_1BF1791FC();
      v70 = OUTLINED_FUNCTION_16_21();
      if (__swift_getEnumTagSinglePayload(v70, v71, v53) == 1)
      {
        sub_1BF0F698C(v42);
        sub_1BF05350C();
        OUTLINED_FUNCTION_26_10();
        *v72 = MEMORY[0x1E69E7CC0];
        *(v72 + 8) = v68;
        *(v72 + 16) = v67;
        *(v72 + 80) = 9;
        swift_willThrow();
        v59 = OUTLINED_FUNCTION_24_14();
        goto LABEL_20;
      }

      v107 = v7;
      v83 = OUTLINED_FUNCTION_24_14();
      sub_1BF00A8F8(v83, v84, v85);

      v86 = *(v98 + 32);
      v7 = v96;
      v86(v96, v42, v53);
      v86(v97, v7, v53);
      OUTLINED_FUNCTION_5_45();
      if (swift_dynamicCast())
      {
        v81 = v42;
        v80 = 0;
      }

      else
      {
        v81 = OUTLINED_FUNCTION_16_21();
      }
    }

    else
    {
      v48 = v107 == MEMORY[0x1E6969080] && (v43 & 0xE000000000000000) == 0x4000000000000000;
      v49 = v104;
      if (!v48)
      {
        goto LABEL_22;
      }

      v51 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v50 = *((v43 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v52 = *(v7 + 3);
      v53 = *(v7 + 4);
      v54 = v7[40];
      sub_1BF01730C(v52, v53, v54);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v108 = v51;
      v55 = sub_1BF1792BC();
      if (v56 >> 60 == 15)
      {
        sub_1BF05350C();
        OUTLINED_FUNCTION_26_10();
        v57 = v108;
        *v58 = MEMORY[0x1E69E7CC0];
        *(v58 + 8) = v57;
        *(v58 + 16) = v50;
        *(v58 + 80) = 6;
        swift_willThrow();
        v59 = v52;
        v60 = v53;
        v61 = v54;
LABEL_20:
        sub_1BF00A8F8(v59, v60, v61);
        v66 = v43;
        return sub_1BF017214(v66);
      }

      v41 = v55;
      v79 = v56;
      v107 = v7;
      sub_1BF00A8F8(v52, v53, v54);

      v111 = v41;
      v112 = v79;
      OUTLINED_FUNCTION_5_45();
      v80 = swift_dynamicCast() ^ 1;
      v81 = v41;
    }

    __swift_storeEnumTagSinglePayload(v81, v80, 1, v49);
    v74 = v109;
    v75 = v102;
    OUTLINED_FUNCTION_28_12();
    v82 = v103;
  }

  v87 = OUTLINED_FUNCTION_16_21();
  if (__swift_getEnumTagSinglePayload(v87, v88, v49) == 1)
  {
    v7 = v107;
    goto LABEL_34;
  }

  sub_1BF017214(v43);
  v94 = *(v7 + 4);
  v94(v53, v41, v49);
  return (v94)(v82, v53, v49);
}

uint64_t sub_1BF015D78()
{
  sub_1BF017214(*(v0 + 16));
  sub_1BF00A8F8(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  v3 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void sub_1BF015DC4(unint64_t *a1@<X8>)
{
  sub_1BF015ECC(&v16);
  if (!v2)
  {
    v4 = v16;
    v5 = v1[5];
    if (v5 == v1[4])
    {
      *a1 = v16;
    }

    else
    {
      v6 = v1[7];
      v7 = v5 - v6;
      if (__OFSUB__(v5, v6))
      {
        __break(1u);
      }

      else
      {
        v8 = v1[6];
        v9 = sub_1BF163F94(v5, v1[2], v1[3]);
        v11 = v10;
        v12 = sub_1BF016E04(v9, v10);
        v14 = v13;
        sub_1BF014E18(v9, v11);
        sub_1BF053D1C();
        swift_allocError();
        *v15 = v8;
        *(v15 + 8) = v7;
        *(v15 + 16) = v12;
        *(v15 + 24) = v14;
        *(v15 + 32) = 0;
        *(v15 + 40) = 0;
        *(v15 + 48) = 1;
        swift_willThrow();
        sub_1BF017214(v4);
      }
    }
  }
}

void sub_1BF015ECC(uint64_t *a1@<X8>)
{
  sub_1BF017FD8();
  v5 = v1[4];
  v4 = v1[5];
  if (v4 == v5)
  {
    v45 = v1[7];
    v46 = v4 - v45;
    if (__OFSUB__(v4, v45))
    {
      __break(1u);
      return;
    }

    v47 = v1[6];
    sub_1BF053D1C();
    swift_allocError();
    *v29 = v47;
    *(v29 + 8) = v46;
    *(v29 + 16) = xmmword_1BF18A600;
LABEL_50:
    *(v29 + 32) = 0;
    *(v29 + 40) = 0;
    v30 = 4;
    goto LABEL_51;
  }

  v6 = v1[2];
  v7 = v1[3];
  v8 = sub_1BF17931C();
  switch(v8)
  {
    case '""':
      v18 = v1[5];
      v10 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (!v10)
      {
        v1[5] = v19;
        v20 = swift_allocObject();
        v21 = sub_1BF016A60();
        if (!v2)
        {
          *(v20 + 16) = v21;
          *(v20 + 24) = v22;
          v12 = v20 | 0x4000000000000000;
          goto LABEL_23;
        }

LABEL_20:
        swift_deallocUninitializedObject();
        return;
      }

      goto LABEL_55;
    case '[':
      v14 = v1[5];
      v10 = __OFADD__(v14, 1);
      v15 = v14 + 1;
      if (!v10)
      {
        v1[5] = v15;
        v16 = swift_allocObject();
        v17 = sub_1BF01522C();
        if (!v2)
        {
          *(v16 + 16) = v17;
          v12 = v16 | 0x2000000000000000;
          goto LABEL_23;
        }

        goto LABEL_20;
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    case '{':
      v9 = v1[5];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (!v10)
      {
        v1[5] = v11;
        v12 = swift_allocObject();
        v13 = sub_1BF016408();
        if (!v2)
        {
          *(v12 + 16) = v13;
LABEL_23:
          sub_1BF017FD8();
          *a1 = v12;
          return;
        }

        goto LABEL_20;
      }

      goto LABEL_56;
  }

  if ((v8 - 58) > 0xF5u)
  {
LABEL_19:
    v23 = swift_allocObject();
    v24 = sub_1BF018E80();
    if (!v2)
    {
      *(v23 + 16) = v24;
      *(v23 + 24) = v25;
      v12 = v23 | 0x6000000000000000;
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v8 == 116)
  {
    v34 = v1[5];
    if (__OFADD__(v34, 4))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v5 >= v34 + 4)
    {
      v1[5] = v34 + 1;
      if (qword_1ED8EE5C0 == -1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v35 = v1[7];
      a1 = (v34 - v35);
      if (!__OFSUB__(v34, v35))
      {
        v36 = v1[6];
        sub_1BF053D1C();
        swift_allocError();
        *v29 = v36;
        *(v29 + 8) = a1;
        *(v29 + 16) = 0u;
        *(v29 + 32) = 0u;
        v30 = 7;
        goto LABEL_51;
      }

      __break(1u);
    }

    swift_once();
LABEL_47:
    sub_1BF0199B4(qword_1ED8EE5C8, *algn_1ED8EE5D0);
    if (!v2)
    {
      v12 = 0x8000000000000000;
      goto LABEL_23;
    }

    return;
  }

  if (v8 != 102)
  {
    if (v8 != 110)
    {
      if (v8 == 45)
      {
        goto LABEL_19;
      }

      v37 = v1[5];
      v38 = v1[7];
      v39 = v37 - v38;
      if (__OFSUB__(v37, v38))
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v40 = v1[6];
      v41 = sub_1BF053B14();
      if (v2)
      {
        return;
      }

      v43 = v41;
      v44 = v42;
      sub_1BF053D1C();
      swift_allocError();
      *v29 = v40;
      *(v29 + 8) = v39;
      *(v29 + 16) = v43;
      *(v29 + 24) = v44;
      goto LABEL_50;
    }

    v31 = v1[5];
    if (__OFADD__(v31, 4))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v5 >= v31 + 4)
    {
      v1[5] = v31 + 1;
      if (qword_1ED8EE5E0 == -1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v32 = v1[7];
      a1 = (v31 - v32);
      if (!__OFSUB__(v31, v32))
      {
        v33 = v1[6];
        sub_1BF053D1C();
        swift_allocError();
        *v29 = v33;
        *(v29 + 8) = a1;
        *(v29 + 16) = 0u;
        *(v29 + 32) = 0u;
        v30 = 6;
        goto LABEL_51;
      }

      __break(1u);
    }

    swift_once();
LABEL_44:
    sub_1BF0199B4(qword_1ED8EE5E8, qword_1ED8EE5F0);
    if (!v2)
    {
      v12 = 0x8000000000000010;
      goto LABEL_23;
    }

    return;
  }

  v26 = v1[5];
  if (__OFADD__(v26, 5))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v5 >= v26 + 5)
  {
    v1[5] = v26 + 1;
    if (qword_1ED8ED828 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_62;
  }

  v27 = v1[7];
  a1 = (v26 - v27);
  if (!__OFSUB__(v26, v27))
  {
    v28 = v1[6];
    sub_1BF053D1C();
    swift_allocError();
    *v29 = v28;
    *(v29 + 8) = a1;
    *(v29 + 16) = 0u;
    *(v29 + 32) = 0u;
    v30 = 5;
LABEL_51:
    *(v29 + 48) = v30;
    swift_willThrow();
    return;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  swift_once();
LABEL_41:
  sub_1BF0199B4(qword_1ED8ED830, qword_1ED8ED838[0]);
  if (!v2)
  {
    v12 = 0x8000000000000008;
    goto LABEL_23;
  }
}

uint64_t sub_1BF016394()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF0163CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF016408()
{
  v5 = v0;
  sub_1BF017FD8();
  v7 = v0[4];
  result = v0[5];
  if (result >= v7)
  {
    v35 = v0[7];
    v36 = result - v35;
    if (!__OFSUB__(result, v35))
    {
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_27;
  }

  v8 = v0[2];
  v9 = v0[3];
  result = sub_1BF17931C();
  if (result == 125)
  {
LABEL_27:
    v37 = v5[5];
    v14 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (!v14)
    {
      v5[5] = v38;
      return sub_1BF179DAC();
    }

    __break(1u);
    goto LABEL_49;
  }

  sub_1BF017FD8();
  result = v0[5];
  if (result >= v7)
  {
    v39 = v0[7];
    v36 = result - v39;
    if (!__OFSUB__(result, v39))
    {
LABEL_30:
      v40 = v5[6];
      sub_1BF053D1C();
      swift_allocError();
      *v41 = v40;
      *(v41 + 8) = v36;
      *(v41 + 16) = 0u;
      *(v41 + 32) = 0u;
      v42 = 18;
LABEL_31:
      *(v41 + 48) = v42;
      swift_willThrow();
      return v2;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v10 = v0[2];
  v11 = v0[3];
  result = sub_1BF17931C();
  if (result == 34)
  {
    v13 = v0[5];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (!v14)
    {
      v0[5] = v15;
      v16 = sub_1BF016A60();
      if (v1)
      {
        return v2;
      }

      v18 = v16;
      v2 = v17;
      v19 = v0[8];
      if (v19)
      {
        v20 = v0[9];

        v18 = v19(v18, v2);
        v22 = v21;
        sub_1BEFE52DC(v19);

        v2 = v22;
      }

      sub_1BF017FD8();
      sub_1BF016F04(58);
      sub_1BF017FD8();
      sub_1BF015ECC(&v70);
      v23 = v70;
      sub_1BF017FD8();
      if (v5[5] < v7)
      {
        if (sub_1BF017118(0x7Du))
        {
          sub_1BF019BB4();
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1BF17DEF0;
          *(inited + 32) = v18;
          *(inited + 40) = v2;
          *(inited + 48) = v23;
          return sub_1BF179DAC();
        }

        sub_1BF016F04(44);
        v25 = MEMORY[0x1BFB51B60](4, MEMORY[0x1E69E6158], &type metadata for JSON, MEMORY[0x1E69E6168]);
        sub_1BF01716C(v23);
        swift_isUniquelyReferenced_nonNull_native();
        v70 = v25;
        sub_1BF015484();

        v2 = v70;
        v69 = v23;
        while (1)
        {
          sub_1BF017FD8();
          if (v5[5] >= v7)
          {
            v47 = v23;

            v48 = v5[5];
            v49 = v5[7];
            v50 = v48 - v49;
            if (!__OFSUB__(v48, v49))
            {
              goto LABEL_46;
            }

            __break(1u);
LABEL_40:
            v47 = v23;

            v51 = v5[5];
            v52 = v5[7];
            v53 = v51 - v52;
            if (__OFSUB__(v51, v52))
            {
              goto LABEL_51;
            }

            v2 = v5[6];
            v64 = sub_1BF053B14();
            v66 = v65;
            sub_1BF053D1C();
            swift_allocError();
            *v67 = v2;
            *(v67 + 8) = v53;
            *(v67 + 16) = v64;
            *(v67 + 24) = v66;
            *(v67 + 32) = 0;
            *(v67 + 40) = 0;
            v68 = 2;
            goto LABEL_47;
          }

          v26 = v5[2];
          v27 = v5[3];
          if (sub_1BF17931C() != 34)
          {
            goto LABEL_40;
          }

          v28 = v5[5];
          v14 = __OFADD__(v28, 1);
          v29 = v28 + 1;
          if (v14)
          {
            break;
          }

          v5[5] = v29;
          v30 = sub_1BF016A60();
          v32 = v31;
          v33 = v5[8];
          if (v33)
          {
            v34 = v5[9];

            v33(v30, v32);
            sub_1BEFE52DC(v33);

            v23 = v69;
          }

          sub_1BF017FD8();
          sub_1BF016F04(58);
          sub_1BF017FD8();
          sub_1BF015ECC(&v70);
          v4 = v70;
          sub_1BF01716C(v70);
          swift_isUniquelyReferenced_nonNull_native();
          v70 = v2;
          sub_1BF015484();

          v2 = v70;
          if (v5[5] >= v7)
          {
            goto LABEL_43;
          }

          sub_1BF017214(v4);
          if ((sub_1BF017118(0x2Cu) & 1) == 0)
          {
            sub_1BF016F04(125);
            sub_1BF017214(v23);
            return v2;
          }
        }

        __break(1u);
LABEL_43:
        v54 = v23;

        v55 = v5[5];
        v56 = v5[7];
        v57 = v55 - v56;
        if (__OFSUB__(v55, v56))
        {
          goto LABEL_52;
        }

        v58 = v5[6];
        sub_1BF053D1C();
        swift_allocError();
        *v59 = v58;
        *(v59 + 8) = v57;
        *(v59 + 16) = 0u;
        *(v59 + 32) = 0u;
        *(v59 + 48) = 18;
        swift_willThrow();
        sub_1BF017214(v54);
        v60 = v4;
LABEL_23:
        sub_1BF017214(v60);
        return v2;
      }

      v47 = v23;

      v61 = v5[5];
      v62 = v5[7];
      v50 = v61 - v62;
      if (!__OFSUB__(v61, v62))
      {
LABEL_46:
        v63 = v5[6];
        sub_1BF053D1C();
        swift_allocError();
        *v67 = v63;
        *(v67 + 8) = v50;
        *(v67 + 16) = 0u;
        *(v67 + 32) = 0u;
        v68 = 18;
LABEL_47:
        *(v67 + 48) = v68;
        swift_willThrow();
        v60 = v47;
        goto LABEL_23;
      }

      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_36;
  }

  v43 = v0[5];
  v44 = v0[7];
  v2 = v43 - v44;
  if (!__OFSUB__(v43, v44))
  {
    v3 = v0[6];
    result = sub_1BF053B14();
    if (v1)
    {
      return v2;
    }

LABEL_36:
    v45 = result;
    v46 = v12;
    sub_1BF053D1C();
    swift_allocError();
    *v41 = v3;
    *(v41 + 8) = v2;
    *(v41 + 16) = v45;
    *(v41 + 24) = v46;
    *(v41 + 32) = 0;
    *(v41 + 40) = 0;
    v42 = 2;
    goto LABEL_31;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1BF016A60()
{
  v2 = v0;
  v55 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = 0xE000000000000000;
  v3 = v0[4];
LABEL_2:
  v4 = v0[5];
  v5 = v4;
  while (2)
  {
    if (v5 >= v3)
    {

      v36 = v0[5];
      v37 = v0[7];
      v38 = v36 - v37;
      if (!__OFSUB__(v36, v37))
      {
        v39 = v2[6];
        sub_1BF053D1C();
        swift_allocError();
        *v40 = v39;
        *(v40 + 8) = v38;
        *(v40 + 16) = 0u;
        *(v40 + 32) = 0u;
        *(v40 + 48) = 19;
        result = swift_willThrow();
        goto LABEL_37;
      }

      goto LABEL_54;
    }

    v6 = v0[2];
    v7 = v0[3];
    switch(v7 >> 62)
    {
      case 1uLL:
        if (v5 >= v6 >> 32 || v5 < v6)
        {
          goto LABEL_44;
        }

        v14 = sub_1BF178F3C();
        if (!v14)
        {
          goto LABEL_52;
        }

        v10 = v14;
        v15 = sub_1BF178F5C();
        v12 = v5 - v15;
        if (!__OFSUB__(v5, v15))
        {
          goto LABEL_19;
        }

        goto LABEL_46;
      case 2uLL:
        if (v5 < *(v6 + 16))
        {
          goto LABEL_42;
        }

        if (v5 >= *(v6 + 24))
        {
          goto LABEL_45;
        }

        v9 = sub_1BF178F3C();
        if (!v9)
        {
          goto LABEL_53;
        }

        v10 = v9;
        v11 = sub_1BF178F5C();
        v12 = v5 - v11;
        if (__OFSUB__(v5, v11))
        {
          goto LABEL_47;
        }

LABEL_19:
        v8 = *(v10 + v12);
LABEL_20:
        v16 = v0[5];
        if (v8 != 34)
        {
          if (v8 != 92)
          {
            v5 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
            }

            v0[5] = v5;
            continue;
          }

          if (v4 != v16)
          {
            if (v16 < v4)
            {
              goto LABEL_50;
            }

            v17 = v0[2];
            v18 = v0[3];
            v19 = sub_1BF17930C();
            v21 = v20;
            v22 = sub_1BF016E04(v19, v20);
            if (v1)
            {
              goto LABEL_33;
            }

            v24 = v22;
            v25 = v23;
            sub_1BF014E18(v19, v21);
            MEMORY[0x1BFB52000](v24, v25);
          }

          v26 = sub_1BF0250CC();
          if (v1)
          {

            goto LABEL_37;
          }

          MEMORY[0x1BFB51FF0](v26);

          goto LABEL_2;
        }

        if (v4 == v16)
        {
          goto LABEL_35;
        }

        if (v16 < v4)
        {
          goto LABEL_49;
        }

        v27 = v0[2];
        v28 = v0[3];
        v19 = sub_1BF17930C();
        v21 = v29;
        v30 = sub_1BF016E04(v19, v29);
        if (!v1)
        {
          v33 = v30;
          v34 = v31;
          sub_1BF014E18(v19, v21);
          MEMORY[0x1BFB52000](v33, v34);

          v4 = v0[5];
LABEL_35:
          if (!__OFADD__(v4, 1))
          {
            v0[5] = v4 + 1;
            result = v53;
            goto LABEL_37;
          }

          goto LABEL_48;
        }

LABEL_33:

        result = sub_1BF014E18(v19, v21);
LABEL_37:
        v35 = *MEMORY[0x1E69E9840];
        return result;
      case 3uLL:
        goto LABEL_51;
      default:
        if (v5 >= BYTE6(v7))
        {
          goto LABEL_43;
        }

        v41 = v0[2];
        v42 = BYTE2(v6);
        v43 = BYTE3(v6);
        v44 = BYTE4(v6);
        v45 = BYTE5(v6);
        v46 = BYTE6(v6);
        v47 = HIBYTE(v6);
        v48 = v7;
        v49 = BYTE2(v7);
        v50 = BYTE3(v7);
        v51 = BYTE4(v7);
        v52 = BYTE5(v7);
        v8 = *(&v41 + v5);
        goto LABEL_20;
    }
  }
}

uint64_t sub_1BF016E04(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BF17A12C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1BF17A10C();
  result = sub_1BF17A0CC();
  if (!v8)
  {
    v9 = v2[5];
    v10 = v2[7];
    v11 = v9 - v10;
    if (__OFSUB__(v9, v10))
    {
      __break(1u);
    }

    else
    {
      v12 = v2[6];
      sub_1BF053D1C();
      swift_allocError();
      *v13 = v12;
      *(v13 + 8) = v11;
      *(v13 + 16) = a1;
      *(v13 + 24) = a2;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 48) = 12;
      swift_willThrow();
      return sub_1BF014DC0(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1BF016F04(uint64_t a1)
{
  result = v1[5];
  if (result >= v1[4])
  {
    v14 = v1[7];
    v15 = result - v14;
    if (!__OFSUB__(result, v14))
    {
      v16 = v1[6];
      sub_1BF164358(0, &qword_1ED8EF478, MEMORY[0x1E69E6F90]);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BF17DEF0;
      *(v17 + 32) = a1;
      v18 = sub_1BF16422C(v17);
      v20 = v19;

      if (!v2)
      {
        sub_1BF053D1C();
        swift_allocError();
        *v21 = v16;
        *(v21 + 8) = v15;
        *(v21 + 16) = v18;
        *(v21 + 24) = v20;
        *(v21 + 32) = 0;
        *(v21 + 40) = 0;
        *(v21 + 48) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v8 = v1[2];
  v9 = v1[3];
  result = sub_1BF17931C();
  if (result == a1)
  {
    v11 = v1[5];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (!v12)
    {
      v1[5] = v13;
      return result;
    }

    __break(1u);
    goto LABEL_13;
  }

  v22 = v1[5];
  v23 = v1[7];
  v4 = v22 - v23;
  if (__OFSUB__(v22, v23))
  {
    goto LABEL_16;
  }

  v5 = v1[6];
  sub_1BF164358(0, &qword_1ED8EF478, MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BF17DEF0;
  *(v24 + 32) = a1;
  v3 = sub_1BF16422C(v24);
  a1 = v25;

  if (!v2)
  {
    result = sub_1BF053B14();
LABEL_13:
    v26 = result;
    v27 = v10;
    sub_1BF053D1C();
    swift_allocError();
    *v28 = v5;
    *(v28 + 8) = v4;
    *(v28 + 16) = v3;
    *(v28 + 24) = a1;
    *(v28 + 32) = v26;
    *(v28 + 40) = v27;
    *(v28 + 48) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BF017118(unsigned __int8 a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  result = sub_1BF17931C();
  if (result != a1)
  {
    return result == a1;
  }

  v7 = v1[5];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    v1[5] = v9;
    return result == a1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF01716C(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:

      break;
    default:
      return result;
  }

  return result;
}

void sub_1BF0171B4()
{
  if (!qword_1ED8EF720)
  {
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EF720);
    }
  }
}

unint64_t sub_1BF017214(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:

      break;
    default:
      return result;
  }

  return result;
}

void *sub_1BF01725C()
{
  sub_1BF014E18(v0[2], v0[3]);
  v1 = v0[9];
  sub_1BEFE52DC(v0[8]);
  return v0;
}

uint64_t sub_1BF017284()
{
  sub_1BF01725C();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

unint64_t sub_1BF0172B8()
{
  result = qword_1ED8EF9B0;
  if (!qword_1ED8EF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF9B0);
  }

  return result;
}

id sub_1BF01730C(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

uint64_t sub_1BF017344()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = *v0 >> 61;
  if (v3)
  {
    sub_1BF05350C();
    swift_allocError();
    v6 = 0xE500000000000000;
    v7 = 0x7961727261;
    switch(v3)
    {
      case 2:
        v6 = 0xE600000000000000;
        v7 = 0x676E69727473;
        break;
      case 3:
        v6 = 0xE600000000000000;
        v7 = 0x7265626D756ELL;
        break;
      case 4:
        v6 = 0xE400000000000000;
        v7 = 1702195828;
        v8 = 0xE500000000000000;
        v9 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v9 = 1819047278;
          v8 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v7 = v9;
          v6 = v8;
        }

        break;
      default:
        break;
    }

    *v5 = v2;
    *(v5 + 8) = v7;
    *(v5 + 16) = v6;
    *(v5 + 80) = 1;
    swift_willThrow();
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  else
  {
    v10 = *(v1 + 16);
    v11 = v0[5];
    v12 = v0[1];
    v13 = v0[2];
    v14 = *(v0 + 24);
    v15 = v0[4];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF01730C(v12, v13, v14);
    type metadata accessor for JSONKeyedDecodingContainer();
    swift_getWitnessTable();
    return sub_1BF17B64C();
  }
}

uint64_t sub_1BF017550()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t get_enum_tag_for_layout_string_13TeaFoundation01_A11JSONDecoderC20DateDecodingStrategyO(uint64_t a1)
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

uint64_t sub_1BF0175BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v101 = a5;
  v106 = a1;
  v102 = a6;
  sub_1BF01511C(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v95 = &v84 - v12;
  v105 = sub_1BF17923C();
  v94 = *(v105 - 8);
  v13 = *(v94 + 64);
  v14 = MEMORY[0x1EEE9AC00](v105);
  v93 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v84 - v16;
  v104 = sub_1BF1794AC();
  v17 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v97 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1BF17AE6C();
  v98 = *(v99 - 8);
  v19 = *(v98 + 64);
  v20 = MEMORY[0x1EEE9AC00](v99);
  v100 = &v84 - v21;
  v103 = a4;
  v96 = *(a4 - 8);
  v22 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v6 + 8);
  v27 = *(v6 + 16);
  v26 = *(v6 + 24);
  v28 = *(v6 + 32);
  v29 = *(v6 + 40);
  v108 = *v6;
  v109 = v25;
  v110 = v27;
  v111 = v26;
  LOBYTE(v112) = v28;
  v113 = v29;
  v30 = v107;
  result = sub_1BF018248(a2, a3, &v114);
  if (!v30)
  {
    v85 = v24;
    v90 = v27;
    v89 = 0;
    v91 = v28;
    v107 = v25;
    v32 = v29;
    v88 = a3;
    v87 = a2;
    v33 = v114;
    if (v104 == v106)
    {
      v46 = v90;
      v108 = v90;
      v109 = v26;
      v47 = v91;
      LOBYTE(v110) = v91;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v48 = v107;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF01730C(v46, v26, v47);
      v49 = v89;
      sub_1BF051984(&v114, MEMORY[0x1E69E7CC0], v48, v97);
      v50 = v49;
      if (!v49)
      {
        v86 = v26;
        v106 = v33;
        v63 = v100;
        v64 = v103;
        if (swift_dynamicCast())
        {
          v65 = v63;
          v66 = 0;
        }

        else
        {
          v65 = v63;
          v66 = 1;
        }

        __swift_storeEnumTagSinglePayload(v65, v66, 1, v64);
        v61 = v87;
        v39 = v90;
        v59 = v63;
        goto LABEL_27;
      }

      sub_1BF00A8F8(v46, v26, v47);
    }

    else
    {
      v34 = v91;
      v35 = v26;
      if (v105 != v106)
      {
        if (v106 != MEMORY[0x1E6969080] || (v114 & 0xE000000000000000) != 0x4000000000000000)
        {
          goto LABEL_17;
        }

        v38 = *((v114 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v37 = *((v114 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v39 = v90;
        sub_1BF01730C(v90, v26, v34);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v40 = sub_1BF1792BC();
        v42 = v34;
        v43 = v33;
        if (v41 >> 60 == 15)
        {
          sub_1BF00A8F8(v39, v26, v42);

          sub_1BF05350C();
          swift_allocError();
          *v44 = v29;
          *(v44 + 8) = v38;
          *(v44 + 16) = v37;
          *(v44 + 80) = 6;
          swift_willThrow();
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          v45 = v33;
          return sub_1BF017214(v45);
        }

        v67 = v40;
        v68 = v41;
        v86 = v35;
        v106 = v43;

        v108 = v67;
        v109 = v68;
        v59 = v100;
        v64 = v103;
        v69 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v59, v69 ^ 1u, 1, v64);
        v61 = v87;
        v50 = v89;
LABEL_27:
        v74 = v96;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v64);
        v62 = v88;
        if (EnumTagSinglePayload != 1)
        {
          sub_1BF00A8F8(v39, v86, v91);

          sub_1BF017214(v106);
          v82 = *(v74 + 32);
          v83 = v85;
          v82(v85, v59, v64);
          return (v82)(v102, v83, v64);
        }

        v89 = v50;
        v60 = v107;
        goto LABEL_29;
      }

      if (v114 >> 61 != 2)
      {
LABEL_17:
        v106 = v114;
        v59 = v100;
        __swift_storeEnumTagSinglePayload(v100, 1, 1, v103);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v60 = v107;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v39 = v90;
        v86 = v26;
        sub_1BF01730C(v90, v26, v34);
        v61 = v87;
        v62 = v88;
LABEL_29:
        (*(v98 + 8))(v59, v99);
        sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BF17DEF0;
        v77 = *(v62 + 16);
        *(inited + 56) = v77;
        *(inited + 64) = *(v62 + 24);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        (*(*(v77 - 8) + 16))(boxed_opaque_existential_0, v61, v77);
        v108 = v29;
        v79 = v106;
        sub_1BF01716C(v106);
        sub_1BF02967C(inited);
        v80 = v108;
        v111 = &type metadata for _JSONDecoder;
        v112 = sub_1BF0172B8();
        v81 = swift_allocObject();
        v108 = v81;
        *(v81 + 16) = v79;
        *(v81 + 24) = v39;
        *(v81 + 32) = v86;
        *(v81 + 40) = v91;
        *(v81 + 48) = v80;
        *(v81 + 56) = v60;
        sub_1BF17A8BC();
        v45 = v79;
        return sub_1BF017214(v45);
      }

      v52 = *((v114 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v51 = *((v114 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v53 = v105;
      v106 = v32;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v54 = v90;
      sub_1BF01730C(v90, v35, v34);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v55 = v95;
      v104 = v52;
      sub_1BF1791FC();
      if (__swift_getEnumTagSinglePayload(v55, 1, v53) != 1)
      {
        v86 = v35;
        v106 = v33;

        v70 = *(v94 + 32);
        v71 = v92;
        v70(v92, v55, v53);
        v70(v93, v71, v53);
        v59 = v100;
        v64 = v103;
        if (swift_dynamicCast())
        {
          v72 = v59;
          v73 = 0;
        }

        else
        {
          v72 = v59;
          v73 = 1;
        }

        __swift_storeEnumTagSinglePayload(v72, v73, 1, v64);
        v61 = v87;
        v29 = v32;
        v50 = v89;
        v39 = v90;
        goto LABEL_27;
      }

      sub_1BF00A8F8(v54, v35, v34);
      v56 = v106;

      sub_1BF0F698C(v55);
      sub_1BF05350C();
      swift_allocError();
      v57 = v104;
      *v58 = v56;
      *(v58 + 8) = v57;
      *(v58 + 16) = v51;
      *(v58 + 80) = 9;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    v45 = v33;
    return sub_1BF017214(v45);
  }

  return result;
}

void sub_1BF017FD8()
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = v0[4];
  v2 = v0[5];
  while (v2 < v1)
  {
    v3 = v0[2];
    v4 = v0[3];
    switch(v4 >> 62)
    {
      case 1uLL:
        if (v2 >= v3 >> 32 || v2 < v3)
        {
          goto LABEL_32;
        }

        v11 = sub_1BF178F3C();
        if (!v11)
        {
          goto LABEL_39;
        }

        v7 = v11;
        v12 = sub_1BF178F5C();
        v9 = v2 - v12;
        if (!__OFSUB__(v2, v12))
        {
          goto LABEL_18;
        }

        goto LABEL_34;
      case 2uLL:
        if (v2 < *(v3 + 16))
        {
          goto LABEL_31;
        }

        if (v2 >= *(v3 + 24))
        {
          goto LABEL_33;
        }

        v6 = sub_1BF178F3C();
        if (!v6)
        {
          goto LABEL_40;
        }

        v7 = v6;
        v8 = sub_1BF178F5C();
        v9 = v2 - v8;
        if (__OFSUB__(v2, v8))
        {
          goto LABEL_35;
        }

LABEL_18:
        v5 = *(v7 + v9);
LABEL_19:
        switch(v5)
        {
          case 9:
            goto LABEL_23;
          case 10:
            v14 = v0[5];
            v0[7] = v14;
            v2 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_36;
            }

            v0[5] = v2;
            v15 = v0[6];
            v16 = __OFADD__(v15, 1);
            v17 = v15 + 1;
            if (v16)
            {
              goto LABEL_37;
            }

            v0[6] = v17;
            break;
          case 13:
          case 32:
LABEL_23:
            v13 = v0[5];
            v2 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
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
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
            }

            v0[5] = v2;
            break;
          default:
            goto LABEL_28;
        }

        break;
      case 3uLL:
        goto LABEL_38;
      default:
        if (v2 >= BYTE6(v4))
        {
          goto LABEL_30;
        }

        v19 = v0[2];
        v20 = BYTE2(v3);
        v21 = BYTE3(v3);
        v22 = BYTE4(v3);
        v23 = BYTE5(v3);
        v24 = BYTE6(v3);
        v25 = HIBYTE(v3);
        v26 = v4;
        v27 = BYTE2(v4);
        v28 = BYTE3(v4);
        v29 = BYTE4(v4);
        v30 = BYTE5(v4);
        v5 = *(&v19 + v2);
        goto LABEL_19;
    }
  }

LABEL_28:
  v18 = *MEMORY[0x1E69E9840];
}

unint64_t get_enum_tag_for_layout_string_13TeaFoundation4JSONO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

unint64_t sub_1BF018248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = v3[5];
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  sub_1BF17BCBC();
  if (*(v6 + 16))
  {
    v10 = sub_1BF014CA8();
    v12 = v11;

    if (v12)
    {
      v13 = *(*(v6 + 56) + 8 * v10);
      *a3 = v13;
      return sub_1BF01716C(v13);
    }
  }

  else
  {
  }

  sub_1BF05350C();
  swift_allocError();
  v16 = v15;
  v15[3] = v8;
  v15[4] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a1, v8);
  v16[5] = v7;
  *(v16 + 80) = 3;
  swift_willThrow();
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t OnlyOnceDeferredPromise.__deallocating_deinit()
{
  OnlyOnceDeferredPromise.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void *OnlyOnceDeferredPromise.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

double sub_1BF0183E0(uint64_t a1)
{
  v2 = sub_1BF1794AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  v7 = *(a1 + 28);
  sub_1BF1793DC();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t ShortDescription.init(name:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (!a2)
  {
    result = sub_1BF17BD4C();
  }

  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1BF01855C(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  result = sub_1BEFE90AC(v6);
  if (result)
  {
    v8 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v8; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFB53020](i, v6);
      }

      else
      {
        v10 = *(v6 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v10 + 24);
          ObjectType = swift_getObjectType();
          LOBYTE(v20) = a2;
          v19 = a3;
          (*(v11 + 8))(&v20, &v19, ObjectType, v11);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v13 = *(a1 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  v14 = sub_1BEFE90AC(v13);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v14 == j)
    {

      v18 = *(a1 + 16);
      *(a1 + 16) = v20;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v13);
    }

    else
    {
      if (j >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v16 = *(v13 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      v17 = *(v20 + 16);
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1BF018790(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BF17A65C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void Cache.subscript.setter()
{
  OUTLINED_FUNCTION_32();
  v3 = v1;
  v73 = v4;
  v6 = v5;
  OUTLINED_FUNCTION_5_27();
  v69 = v7;
  v8 = *(v0 + 88);
  v9 = type metadata accessor for CacheEntry();
  v10 = sub_1BF17AE6C();
  v11 = OUTLINED_FUNCTION_1(v10);
  v63 = v12;
  v64 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_30();
  v70 = v16;
  v17 = *(v0 + 80);
  OUTLINED_FUNCTION_2_3();
  v71 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_30();
  v66 = v22;
  v67 = v9;
  v23 = *(v9 - 8);
  OUTLINED_FUNCTION_0();
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_3();
  v29 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v63 - v33;
  OUTLINED_FUNCTION_2_3();
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4_1();
  v42 = v40 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v63 - v44;
  v65 = v46;
  v47 = *(v46 + 16);
  v72 = v6;
  v68 = v48;
  v47(v34, v6);
  if (__swift_getEnumTagSinglePayload(v34, 1, v8) == 1)
  {
    v49 = *(v65 + 8);
    v50 = v68;
    v49(v34, v68);
    v51 = *(v3 + 24);
    UnfairLock.lock()();
    OUTLINED_FUNCTION_7_2();
    v52 = *(v69 + 96);
    OUTLINED_FUNCTION_25_9();
    sub_1BF179E9C();
    v53 = v70;
    v54 = v73;
    sub_1BF179D7C();
    swift_endAccess();
    (*(v63 + 8))(v53, v64);
    os_unfair_lock_unlock(*(v51 + 16));
    (*(v71 + 8))(v54, v17);
    v49(v72, v50);
  }

  else
  {
    (*(v36 + 32))(v45, v34, v8);
    (*(v36 + 16))(v42, v45, v8);
    sub_1BF01BEC4(v42, v8, v2);
    v63 = *(v3 + 24);
    UnfairLock.lock()();
    v55 = v71;
    (*(v71 + 16))(v66, v73, v17);
    v56 = *(v25 + 16);
    v57 = v2;
    v64 = v2;
    v58 = v67;
    v56(v70, v57, v67);
    OUTLINED_FUNCTION_127();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v58);
    OUTLINED_FUNCTION_7_2();
    v62 = *(v69 + 96);
    OUTLINED_FUNCTION_25_9();
    sub_1BF179E9C();
    sub_1BF179EBC();
    swift_endAccess();
    os_unfair_lock_unlock(*(v63 + 16));
    (*(v55 + 8))(v73, v17);
    (*(v65 + 8))(v72, v68);
    (*(v25 + 8))(v64, v58);
    (*(v36 + 8))(v45, v8);
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF018D68(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF01A558(&v4);
  return a1;
}

uint64_t sub_1BF018DD8()
{
  v0 = sub_1BF1797FC();
  __swift_allocate_value_buffer(v0, qword_1ED8F5298);
  OUTLINED_FUNCTION_3_24();
  if (qword_1ED8EFC00 != -1)
  {
    OUTLINED_FUNCTION_0_51();
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return OUTLINED_FUNCTION_1_39();
}

void *sub_1BF018E60(void *a1, int64_t a2, char a3)
{
  result = sub_1BF011414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1BF018E80()
{
  v1 = v0;
  v148 = *MEMORY[0x1E69E9840];
  v2 = v0[5];
  v3 = MEMORY[0x1BFB51150](v0[2], v0[3]);
  v4 = v0[5];
  if (v2 < v3)
  {
    v5 = v1[2];
    v6 = v1[3];
    v7 = sub_1BF17931C();
    v4 = v1[5];
    if (v7 == 45)
    {
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        goto LABEL_147;
      }

      v1[5] = v4;
    }
  }

  v9 = MEMORY[0x1BFB51150](v1[2], v1[3]);
  v10 = v1[5];
  if (v4 >= v9)
  {
    goto LABEL_17;
  }

  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[5];
  if (sub_1BF17931C() != 48)
  {
    v32 = v1[2];
    v33 = v1[3];
    v34 = v1[5];
    v35 = sub_1BF17931C();
    v15 = v1[5];
    if ((v35 - 58) >= 0xF7u)
    {
      v46 = v1[2];
      v45 = v1[3];
      v47 = __OFSUB__(HIDWORD(v46), v46);
      v133 = v47;
      v48 = BYTE6(v45);
      v49 = v45 >> 62;
      while (1)
      {
        v50 = v48;
        switch(v49)
        {
          case 1uLL:
            v50 = HIDWORD(v46) - v46;
            if (v133)
            {
              goto LABEL_144;
            }

            goto LABEL_32;
          case 2uLL:
            v52 = *(v46 + 16);
            v51 = *(v46 + 24);
            v8 = __OFSUB__(v51, v52);
            v50 = v51 - v52;
            if (!v8)
            {
              goto LABEL_32;
            }

            goto LABEL_143;
          case 3uLL:
            if (v15 < 0)
            {
              break;
            }

            goto LABEL_9;
          default:
LABEL_32:
            if (v15 >= v50)
            {
              goto LABEL_9;
            }

            break;
        }

        v53 = v1[2];
        v54 = v1[3];
        switch(v54 >> 62)
        {
          case 1uLL:
            if (v15 >= v53 >> 32 || v15 < v53)
            {
              goto LABEL_137;
            }

            v61 = sub_1BF178F3C();
            if (!v61)
            {
LABEL_175:
              __break(1u);
LABEL_176:
              __break(1u);
LABEL_177:
              __break(1u);
LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
LABEL_182:
              __break(1u);
              JUMPOUT(0x1BF019824);
            }

            v57 = v61;
            v62 = sub_1BF178F5C();
            v59 = v15 - v62;
            if (!__OFSUB__(v15, v62))
            {
              goto LABEL_50;
            }

            goto LABEL_139;
          case 2uLL:
            if (v15 < *(v53 + 16))
            {
              goto LABEL_135;
            }

            if (v15 >= *(v53 + 24))
            {
              goto LABEL_138;
            }

            v56 = sub_1BF178F3C();
            if (!v56)
            {
              goto LABEL_176;
            }

            v57 = v56;
            v58 = sub_1BF178F5C();
            v59 = v15 - v58;
            if (__OFSUB__(v15, v58))
            {
              goto LABEL_140;
            }

LABEL_50:
            v55 = *(v57 + v59);
LABEL_51:
            v15 = v1[5];
            if ((v55 - 58) < 0xFFFFFFF6)
            {
              goto LABEL_9;
            }

            v8 = __OFADD__(v15++, 1);
            if (v8)
            {
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
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
LABEL_144:
              __break(1u);
LABEL_145:
              __break(1u);
LABEL_146:
              __break(1u);
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
LABEL_170:
              __break(1u);
LABEL_171:
              __break(1u);
LABEL_172:
              __break(1u);
LABEL_173:
              __break(1u);
            }

            v1[5] = v15;
            break;
          case 3uLL:
            __break(1u);
            goto LABEL_175;
          default:
            if (v15 >= BYTE6(v54))
            {
              goto LABEL_136;
            }

            v136 = v1[2];
            v137 = BYTE2(v53);
            v138 = BYTE3(v53);
            v139 = BYTE4(v53);
            v140 = BYTE5(v53);
            v141 = BYTE6(v53);
            v142 = HIBYTE(v53);
            v143 = v54;
            v144 = BYTE2(v54);
            v145 = BYTE3(v54);
            v146 = BYTE4(v54);
            v147 = BYTE5(v54);
            v55 = *(&v136 + v15);
            goto LABEL_51;
        }
      }
    }

    v36 = v1[7];
    v27 = v15 - v36;
    if (__OFSUB__(v15, v36))
    {
      goto LABEL_156;
    }

    if (v15 < v2)
    {
      goto LABEL_157;
    }

    v37 = v1[6];
    v38 = v1[2];
    v39 = v1[3];
    v40 = v1[5];
    v41 = sub_1BF17930C();
    v43 = v42;
    sub_1BF053D1C();
    swift_allocError();
    *v44 = v37;
    goto LABEL_100;
  }

  v14 = v1[5];
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    goto LABEL_148;
  }

  v1[5] = v15;
LABEL_9:
  v16 = MEMORY[0x1BFB51150](v1[2], v1[3]);
  v17 = v1[5];
  if (v15 < v16)
  {
    v18 = v1[2];
    v19 = v1[3];
    v20 = v1[5];
    v21 = sub_1BF17931C();
    v17 = v1[5];
    if (v21 == 46)
    {
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_167;
      }

      v1[5] = v22;
      if (v22 < MEMORY[0x1BFB51150](v1[2], v1[3]))
      {
        v23 = v1[2];
        v24 = v1[3];
        v25 = v1[5];
        if ((sub_1BF17931C() - 58) >= 0xF6u)
        {
          v64 = v1[2];
          v63 = v1[3];
          v17 = v1[5];
          v65 = __OFSUB__(HIDWORD(v64), v64);
          v134 = v65;
          v66 = BYTE6(v63);
          v67 = v63 >> 62;
          while (1)
          {
            v68 = v66;
            switch(v67)
            {
              case 1uLL:
                v68 = HIDWORD(v64) - v64;
                if (v134)
                {
                  goto LABEL_169;
                }

                goto LABEL_62;
              case 2uLL:
                v70 = *(v64 + 16);
                v69 = *(v64 + 24);
                v8 = __OFSUB__(v69, v70);
                v68 = v69 - v70;
                if (!v8)
                {
                  goto LABEL_62;
                }

                goto LABEL_168;
              case 3uLL:
                if (v17 < 0)
                {
                  goto LABEL_65;
                }

                goto LABEL_84;
              default:
LABEL_62:
                if (v17 >= v68)
                {
                  goto LABEL_84;
                }

LABEL_65:
                v71 = v1[2];
                v72 = v1[3];
                switch(v72 >> 62)
                {
                  case 1uLL:
                    if (v17 >= v71 >> 32 || v17 < v71)
                    {
                      goto LABEL_160;
                    }

                    v79 = sub_1BF178F3C();
                    if (!v79)
                    {
                      goto LABEL_181;
                    }

                    v75 = v79;
                    v80 = sub_1BF178F5C();
                    v77 = v17 - v80;
                    if (!__OFSUB__(v17, v80))
                    {
                      goto LABEL_80;
                    }

                    goto LABEL_162;
                  case 2uLL:
                    if (v17 < *(v71 + 16))
                    {
                      goto LABEL_158;
                    }

                    if (v17 >= *(v71 + 24))
                    {
                      goto LABEL_161;
                    }

                    v74 = sub_1BF178F3C();
                    if (!v74)
                    {
                      goto LABEL_182;
                    }

                    v75 = v74;
                    v76 = sub_1BF178F5C();
                    v77 = v17 - v76;
                    if (__OFSUB__(v17, v76))
                    {
                      goto LABEL_163;
                    }

LABEL_80:
                    v73 = *(v75 + v77);
LABEL_81:
                    v17 = v1[5];
                    if ((v73 - 58) < 0xFFFFFFF6)
                    {
                      goto LABEL_84;
                    }

                    v8 = __OFADD__(v17++, 1);
                    if (v8)
                    {
                      goto LABEL_146;
                    }

                    v1[5] = v17;
                    break;
                  case 3uLL:
                    goto LABEL_180;
                  default:
                    if (v17 >= BYTE6(v72))
                    {
                      goto LABEL_159;
                    }

                    v136 = v1[2];
                    v137 = BYTE2(v71);
                    v138 = BYTE3(v71);
                    v139 = BYTE4(v71);
                    v140 = BYTE5(v71);
                    v141 = BYTE6(v71);
                    v142 = HIBYTE(v71);
                    v143 = v72;
                    v144 = BYTE2(v72);
                    v145 = BYTE3(v72);
                    v146 = BYTE4(v72);
                    v147 = BYTE5(v72);
                    v73 = *(&v136 + v17);
                    goto LABEL_81;
                }

                break;
            }
          }
        }
      }

      v26 = v1[5];
      v10 = v1[7];
      v27 = v26 - v10;
      if (__OFSUB__(v26, v10))
      {
        goto LABEL_172;
      }

      if (v26 < v2)
      {
        __break(1u);
LABEL_17:
        v28 = v1[7];
        v27 = v10 - v28;
        if (__OFSUB__(v10, v28))
        {
          goto LABEL_141;
        }

        if (v10 < v2)
        {
          goto LABEL_142;
        }

        v29 = v1[6];
        v30 = v1[2];
        v31 = v1[3];
        goto LABEL_99;
      }

LABEL_98:
      v29 = v1[6];
      v103 = v1[2];
      v104 = v1[3];
LABEL_99:
      v41 = sub_1BF17930C();
      v43 = v105;
      sub_1BF053D1C();
      swift_allocError();
      *v44 = v29;
LABEL_100:
      *(v44 + 8) = v27;
      *(v44 + 16) = v41;
      *(v44 + 24) = v43;
      *(v44 + 32) = 0;
      *(v44 + 40) = 0;
      *(v44 + 48) = 10;
      swift_willThrow();
      goto LABEL_101;
    }
  }

LABEL_84:
  if (v17 < MEMORY[0x1BFB51150](v1[2], v1[3]))
  {
    v81 = v1[2];
    v82 = v1[3];
    v83 = v1[5];
    if (sub_1BF17931C() == 101 || (v84 = v1[2], v85 = v1[3], v86 = v1[5], sub_1BF17931C() == 69))
    {
      v87 = v1[5];
      v88 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        goto LABEL_164;
      }

      v1[5] = v88;
      v89 = MEMORY[0x1BFB51150](v1[2], v1[3]);
      v90 = v1[5];
      if (v88 < v89)
      {
        v91 = v1[2];
        v92 = v1[3];
        v93 = v1[5];
        if (sub_1BF17931C() == 45 || (v94 = v1[2], v95 = v1[3], v96 = v1[5], sub_1BF17931C() == 43))
        {
          v97 = v1[5];
          v90 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
            goto LABEL_173;
          }

          v1[5] = v90;
        }

        else
        {
          v90 = v1[5];
        }
      }

      if (v90 < MEMORY[0x1BFB51150](v1[2], v1[3]))
      {
        v98 = v1[2];
        v99 = v1[3];
        v100 = v1[5];
        if ((sub_1BF17931C() - 58) >= 0xF6u)
        {
          v109 = v1[2];
          v108 = v1[3];
          v110 = v1[5];
          v111 = __OFSUB__(HIDWORD(v109), v109);
          v135 = v111;
          v112 = BYTE6(v108);
          v113 = v108 >> 62;
          while (1)
          {
            v114 = v112;
            switch(v113)
            {
              case 1uLL:
                v114 = HIDWORD(v109) - v109;
                if (v135)
                {
                  goto LABEL_166;
                }

                goto LABEL_110;
              case 2uLL:
                v116 = *(v109 + 16);
                v115 = *(v109 + 24);
                v8 = __OFSUB__(v115, v116);
                v114 = v115 - v116;
                if (!v8)
                {
                  goto LABEL_110;
                }

                goto LABEL_165;
              case 3uLL:
                if (v110 < 0)
                {
                  goto LABEL_113;
                }

                goto LABEL_132;
              default:
LABEL_110:
                if (v110 >= v114)
                {
                  goto LABEL_132;
                }

LABEL_113:
                v117 = v1[2];
                v118 = v1[3];
                switch(v118 >> 62)
                {
                  case 1uLL:
                    if (v110 >= v117 >> 32 || v110 < v117)
                    {
                      goto LABEL_152;
                    }

                    v125 = sub_1BF178F3C();
                    if (!v125)
                    {
                      goto LABEL_178;
                    }

                    v121 = v125;
                    v126 = sub_1BF178F5C();
                    v123 = v110 - v126;
                    if (!__OFSUB__(v110, v126))
                    {
                      goto LABEL_128;
                    }

                    goto LABEL_154;
                  case 2uLL:
                    if (v110 < *(v117 + 16))
                    {
                      goto LABEL_150;
                    }

                    if (v110 >= *(v117 + 24))
                    {
                      goto LABEL_153;
                    }

                    v120 = sub_1BF178F3C();
                    if (!v120)
                    {
                      goto LABEL_179;
                    }

                    v121 = v120;
                    v122 = sub_1BF178F5C();
                    v123 = v110 - v122;
                    if (__OFSUB__(v110, v122))
                    {
                      goto LABEL_155;
                    }

LABEL_128:
                    v119 = *(v121 + v123);
LABEL_129:
                    if ((v119 - 58) < 0xFFFFFFF6)
                    {
                      goto LABEL_132;
                    }

                    v127 = v1[5];
                    v110 = v127 + 1;
                    if (__OFADD__(v127, 1))
                    {
                      goto LABEL_145;
                    }

                    v1[5] = v110;
                    break;
                  case 3uLL:
                    goto LABEL_177;
                  default:
                    if (v110 >= BYTE6(v118))
                    {
                      goto LABEL_151;
                    }

                    v136 = v1[2];
                    v137 = BYTE2(v117);
                    v138 = BYTE3(v117);
                    v139 = BYTE4(v117);
                    v140 = BYTE5(v117);
                    v141 = BYTE6(v117);
                    v142 = HIBYTE(v117);
                    v143 = v118;
                    v144 = BYTE2(v118);
                    v145 = BYTE3(v118);
                    v146 = BYTE4(v118);
                    v147 = BYTE5(v118);
                    v119 = *(&v136 + v110);
                    goto LABEL_129;
                }

                break;
            }
          }
        }
      }

      v101 = v1[5];
      v102 = v1[7];
      v27 = v101 - v102;
      if (__OFSUB__(v101, v102))
      {
        goto LABEL_170;
      }

      if (v101 < v2)
      {
        goto LABEL_171;
      }

      goto LABEL_98;
    }
  }

LABEL_132:
  if (v1[5] < v2)
  {
    goto LABEL_149;
  }

  v128 = v1[2];
  v129 = v1[3];
  v130 = sub_1BF17930C();
  v132 = v131;
  v41 = sub_1BF016E04(v130, v131);
  sub_1BF014E18(v130, v132);
LABEL_101:
  v106 = *MEMORY[0x1E69E9840];
  return v41;
}

uint64_t sub_1BF019884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  v7 = sub_1BF17A12C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF17A10C();
  v12 = sub_1BF17A0BC();
  v14 = v13;
  result = (*(v8 + 8))(v11, v7);
  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a4 = v12;
    *a5 = v14;
  }

  return result;
}

uint64_t sub_1BF0199B4(uint64_t a1, uint64_t a2)
{
  v6 = sub_1BF17A12C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[5];
  result = MEMORY[0x1BFB51150](a1, a2);
  if (__OFADD__(v10, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v10 + result < v10)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = sub_1BF17930C();
  v14 = v13;
  v15 = MEMORY[0x1BFB51120]();
  sub_1BF014E18(v12, v14);
  if (v15)
  {
    result = MEMORY[0x1BFB51150](a1, a2);
    v16 = v2[5];
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (!v17)
    {
      v2[5] = v18;
      return result;
    }

    goto LABEL_15;
  }

  v19 = v2[2];
  v20 = v2[3];
  v21 = v2[5];
  result = MEMORY[0x1BFB51150](a1, a2);
  if (__OFADD__(v21, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v21 + result < v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = sub_1BF17930C();
  v24 = v23;
  v25 = sub_1BF016E04(v22, v23);
  v27 = v26;
  result = sub_1BF014E18(v22, v24);
  if (!v3)
  {
    v28 = v2[5];
    v29 = v2[7];
    v30 = v28 - v29;
    if (__OFSUB__(v28, v29))
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v31 = v2[6];
    sub_1BF17A10C();
    result = sub_1BF17A0CC();
    if (!v32)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v33 = result;
    v34 = v32;
    sub_1BF053D1C();
    swift_allocError();
    *v35 = v31;
    *(v35 + 8) = v30;
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    *(v35 + 32) = v25;
    *(v35 + 40) = v27;
    *(v35 + 48) = 3;
    return swift_willThrow();
  }

  return result;
}

void sub_1BF019BB4()
{
  if (!qword_1ED8EF878)
  {
    sub_1BF019C0C();
    v0 = sub_1BF17B70C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EF878);
    }
  }
}

void sub_1BF019C0C()
{
  if (!qword_1ED8EF898[0])
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1ED8EF898);
    }
  }
}

void Cache.subscript.getter()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v25 = v3;
  v4 = *v0;
  v5 = *(*v0 + 88);
  v6 = type metadata accessor for CacheEntry();
  v7 = sub_1BF17AE6C();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_1();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v17 = 1;
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  v18 = v0[3];
  UnfairLock.lock()();
  OUTLINED_FUNCTION_10_9();
  v19 = v2[2];
  v20 = *(v4 + 80);
  v21 = *(v4 + 96);
  sub_1BF179EAC();
  swift_endAccess();
  (*(v10 + 40))(v1, v15, v7);
  os_unfair_lock_unlock(*(v18 + 16));
  if (!__swift_getEnumTagSinglePayload(v1, 1, v6))
  {
    (*(*(v5 - 8) + 16))(v25, v1, v5);
    v17 = 0;
  }

  __swift_storeEnumTagSinglePayload(v25, v17, 1, v5);
  v22 = *(v10 + 8);
  v23 = OUTLINED_FUNCTION_17_2();
  v24(v23);
  OUTLINED_FUNCTION_26_2();
}

{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_5_27();
  v3 = *(v2 + 88);
  v4 = OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_68(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_30();
  v58 = v8;
  v9 = type metadata accessor for CacheEntry();
  v57 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1(v57);
  v50 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_3();
  v62 = v9;
  v15 = *(v9 - 8);
  v14 = v9 - 8;
  v60 = v15;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_30();
  v56 = v18;
  OUTLINED_FUNCTION_2_43();
  v20 = *(v19 + 80);
  OUTLINED_FUNCTION_2_3();
  v22 = v21;
  v24 = *(v23 + 64);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v55 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_10_21();
  v59 = v28;
  OUTLINED_FUNCTION_2_43();
  v64 = *(v29 + 96);
  v68 = sub_1BF179CEC();
  v63 = v0;
  v30 = *(v0 + 24);
  UnfairLock.lock()();
  OUTLINED_FUNCTION_8_25();
  v31 = sub_1BF17A4EC();
  v67 = v31;
  OUTLINED_FUNCTION_8_25();
  if (v31 == sub_1BF17A5AC())
  {
LABEL_12:
    os_unfair_lock_unlock(*(v30 + 16));
    OUTLINED_FUNCTION_26_2();
    return;
  }

  v49 = v30;
  v48 = v24;
  v65 = (v22 + 16);
  v32 = v59;
  v53 = (v60 + 4);
  v54 = v3;
  v51 = v60 + 1;
  v52 = v3 - 8;
  v60 = (v22 + 8);
  v61 = (v22 + 32);
  ++v50;
  while (1)
  {
    OUTLINED_FUNCTION_8_25();
    v33 = sub_1BF17A58C();
    sub_1BF17A51C();
    if ((v33 & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_21_9();
    v36 = *(v22 + 16);
    v36(v32, (v34 + v35 * v31), v20);
LABEL_5:
    v37 = v62;
    OUTLINED_FUNCTION_28_8();
    sub_1BF17A62C();
    (*v61)(v14, v32, v20);
    OUTLINED_FUNCTION_10_9();
    OUTLINED_FUNCTION_19_11();
    sub_1BF179EAC();
    if (__swift_getEnumTagSinglePayload(v1, 1, v37) == 1)
    {
      (*v50)(v1, v57);
      swift_endAccess();
    }

    else
    {
      v38 = *v53;
      v39 = v56;
      OUTLINED_FUNCTION_17_11();
      v40();
      swift_endAccess();
      v36(v55, v14, v20);
      v41 = v54;
      (*(*(v54 - 8) + 16))(v58, v39, v54);
      OUTLINED_FUNCTION_127();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
      OUTLINED_FUNCTION_25_9();
      sub_1BF179E9C();
      sub_1BF179EBC();
      v45 = v39;
      v32 = v59;
      (*v51)(v45, v37);
    }

    (*v60)(v14, v20);
    OUTLINED_FUNCTION_8_25();
    v46 = sub_1BF17A5AC();
    v31 = v67;
    if (v67 == v46)
    {
      v30 = v49;
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_28_8();
  v47 = sub_1BF17B23C();
  if (v48 == 8)
  {
    v66 = v47;
    v36 = *v65;
    (*v65)(v32, &v66, v20);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
}

void *sub_1BF019E60()
{
  type metadata accessor for MockServer();
  v0 = swift_allocObject();
  result = MockServer.init()();
  qword_1ED8EC858 = v0;
  return result;
}

void *MockServer.init()()
{
  v1 = v0;
  v15 = sub_1BF17AD4C();
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = sub_1BF17AD1C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v9 = sub_1BF179BBC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_2_0();
  v11 = MEMORY[0x1E69E7CC0];
  v0[2] = 0;
  v0[3] = v11;
  v12 = v11;
  sub_1BEFF6E88();
  sub_1BF179B9C();
  v16 = v12;
  sub_1BF01A150();
  sub_1BF00D358(0, qword_1ED8F0BF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1BF014364();
  sub_1BF17B0BC();
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8090], v15);
  v0[4] = sub_1BF17AD9C();
  type metadata accessor for HttpParser();
  v0[5] = swift_allocObject();
  type metadata accessor for HttpRouter();
  v13 = swift_allocObject();
  sub_1BF01C0AC();
  *(v13 + 16) = sub_1BF179DAC();
  v1[6] = v13;
  v1[7] = dispatch_semaphore_create(0);
  v16 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v1[8] = UnfairLock.init(options:)(&v16);
  return v1;
}

unint64_t sub_1BF01A150()
{
  result = qword_1ED8F0BE0;
  if (!qword_1ED8F0BE0)
  {
    sub_1BF17AD1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8F0BE0);
  }

  return result;
}

uint64_t sub_1BF01A1B0(uint64_t a1, unsigned __int8 a2, uint64_t (*a3)(void *), uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v47[3] = a7;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v16 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v16 != v13)
  {
    v8 = a4;
    v45 = MEMORY[0x1E69E7CC0];
    v10 = a5;
    do
    {
      v43 = v10;
      while (1)
      {
        v17 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v10 = v43;
          goto LABEL_24;
        }

        v12 = a8;
        v18 = sub_1BF17AEDC();
        a8 = v19;
        v47[0] = v18;
        v47[1] = v19;
        v20 = a3(v47);
        if (v9)
        {

          return a8;
        }

        v21 = v20;

        if (v21)
        {
          break;
        }

        a8 = v12;
        v10 = sub_1BF17AE7C();
      }

      v23 = (v43 >> 14 == v17) & a2;
      a8 = v12;
      if (!v23)
      {
        if (v17 < v43 >> 14)
        {
          __break(1u);
          return result;
        }

        v44 = sub_1BF17AEFC();
        v39 = v25;
        v40 = v24;
        v38 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v45 + 16);
          OUTLINED_FUNCTION_24_0();
          sub_1BF0147C8();
          v45 = v30;
        }

        v27 = *(v45 + 16);
        if (v27 >= *(v45 + 24) >> 1)
        {
          sub_1BF0147C8();
          v45 = v31;
        }

        *(v45 + 16) = v27 + 1;
        v28 = (v45 + 32 * v27);
        v28[4] = v44;
        v28[5] = v40;
        v28[6] = v39;
        v28[7] = v38;
        a8 = v12;
      }

      v10 = sub_1BF17AE7C();
    }

    while (v23 || *(v45 + 16) != a1);
LABEL_24:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v45;
    }

    a8 = v45;
    if (v13 >= v10 >> 14)
    {
      sub_1BF17AEFC();
      OUTLINED_FUNCTION_12_10();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_32:
      v14 = *(a8 + 16);
      v33 = *(a8 + 24);
LABEL_33:
      v11 = v14 + 1;
      if (v14 < v33 >> 1)
      {
LABEL_34:
        *(a8 + 16) = v11;
        v34 = (a8 + 32 * v14);
        v34[4] = v8;
        v34[5] = v10;
        v34[6] = v12;
        v34[7] = v13;
        return a8;
      }

LABEL_37:
      sub_1BF0147C8();
      a8 = v35;
      goto LABEL_34;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    v36 = *(a8 + 16);
    OUTLINED_FUNCTION_24_0();
    sub_1BF0147C8();
    a8 = v37;
    goto LABEL_32;
  }

  if (v16 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v16)
    {
      sub_1BF17AEFC();
      OUTLINED_FUNCTION_12_10();

      sub_1BF0147C8();
      a8 = v32;
      v14 = *(v32 + 16);
      v33 = *(v32 + 24);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_39;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BF01A558(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF012C38(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1BF012C4C(v6);
  *a1 = v2;
  return result;
}

void sub_1BF01A5C4()
{
  OUTLINED_FUNCTION_18_1();
  if ((v6 & 1) == 0)
  {
    v7 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      sub_1BEFE4510(0, v5, v2, MEMORY[0x1E69E6F90]);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 32);
      if (v3)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
      if (v3)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_23();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_1_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF01A6B4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_21(a1, a2);
  if (v2)
  {
    v4 = (v3 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF179F3C();
      sub_1BF179F3C();

      v4 += 4;
      --v2;
    }

    while (v2);
  }
}

void sub_1BF01A748(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BF01A7AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_62_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = sub_1BF00EFCC(v11, 0, 0, 1, v4, v3);
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
    v11[0] = v4;
    v11[1] = v3;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1BF0075BC(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_1BF01A86C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BF01A91C(a1, a2);
  sub_1BF01C5C8(&unk_1F3DB64D0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *sub_1BF01A8B8(uint64_t a1, uint64_t a2)
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

  sub_1BF01C578();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1BF01A91C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1BF17A24C())
  {
    result = sub_1BF01A8B8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1BF17B1AC();
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
          OUTLINED_FUNCTION_49();
          result = sub_1BF17B2FC();
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
    OUTLINED_FUNCTION_49();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BF01AA2C(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v95 = a5;
  v97 = a1;
  sub_1BF01A748(0, &qword_1ED8EAEA0, MEMORY[0x1E6977D78], MEMORY[0x1E69E6720]);
  v92 = *(v10 - 8);
  v11 = *(v92 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v94 = &v83[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v93 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v83[-v14];
  v16 = sub_1BF179B3C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v83[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v83[-v22];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v96 = result;
  sub_1BF00F4E4(v95, v15);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v91 = a3;
  if (EnumTagSinglePayload == 1)
  {
    sub_1BF00F578(v15, &qword_1ED8EAEA0, MEMORY[0x1E6977D78]);
  }

  else
  {
    LODWORD(v89) = a4;
    (*(v17 + 32))(v23, v15, v16);
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v26 = sub_1BF1797FC();
    __swift_project_value_buffer(v26, qword_1ED8F5298);
    v87 = *(v17 + 16);
    v87(v21, v23, v16);
    v27 = v96;

    v28 = sub_1BF1797DC();
    v29 = sub_1BF17ACBC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v90 = a2;
      v31 = v30;
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v102[0] = v86;
      *v31 = 136446466;
      v84 = v29;
      v88 = a6;
      v33 = *(v27 + 40);
      v32 = *(v27 + 48);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v34 = sub_1BF01A7AC(v33, v32, v102);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2114;
      sub_1BF01C404(&qword_1ED8EAEA8, MEMORY[0x1E6977D78]);
      swift_allocError();
      v87(v35, v21, v16);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      v37 = *(v17 + 8);
      v37(v21, v16);
      *(v31 + 14) = v36;
      v38 = v85;
      *v85 = v36;
      a6 = v88;
      _os_log_impl(&dword_1BEFE0000, v28, v84, "SocketConnection:[%{public}s] receive data with error: %{public}@", v31, 0x16u);
      sub_1BF02F424(v38, sub_1BF082F84);
      MEMORY[0x1BFB547B0](v38, -1, -1);
      v39 = v86;
      __swift_destroy_boxed_opaque_existential_1(v86);
      MEMORY[0x1BFB547B0](v39, -1, -1);
      v40 = v31;
      a2 = v90;
      MEMORY[0x1BFB547B0](v40, -1, -1);

      v37(v23, v16);
    }

    else
    {

      v41 = *(v17 + 8);
      v41(v21, v16);
      v41(v23, v16);
    }

    a4 = v89;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v42 = sub_1BF1797FC();
    __swift_project_value_buffer(v42, qword_1ED8F5298);
    v43 = v96;

    v44 = sub_1BF1797DC();
    v45 = sub_1BF17ACBC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v102[0] = v47;
      *v46 = 136446466;
      v48 = *(v43 + 40);
      v49 = *(v43 + 48);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v50 = sub_1BF01A7AC(v48, v49, v102);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2082;
      if (a4)
      {
        v51 = 1702195828;
      }

      else
      {
        v51 = 0x65736C6166;
      }

      if (a4)
      {
        v52 = 0xE400000000000000;
      }

      else
      {
        v52 = 0xE500000000000000;
      }

      v53 = sub_1BF01A7AC(v51, v52, v102);

      *(v46 + 14) = v53;
      _os_log_impl(&dword_1BEFE0000, v44, v45, "SocketConnection:[%{public}s] receive data with empty data, isComplete:[%{public}s]", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB547B0](v47, -1, -1);
      MEMORY[0x1BFB547B0](v46, -1, -1);
    }

    goto LABEL_42;
  }

  sub_1BF014DC0(v97, a2);
  if (qword_1ED8EE9F0 != -1)
  {
    swift_once();
  }

  v54 = sub_1BF1797FC();
  __swift_project_value_buffer(v54, qword_1ED8F5298);
  v55 = v96;

  v56 = v97;
  sub_1BF00F5E0(v97, a2);
  v57 = sub_1BF1797DC();
  v58 = sub_1BF17ACDC();

  sub_1BF00F5F4(v56, a2);
  if (os_log_type_enabled(v57, v58))
  {
    v88 = a6;
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v104 = v60;
    *v59 = 136446722;
    v61 = *(v55 + 40);
    v62 = *(v55 + 48);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v63 = sub_1BF01A7AC(v61, v62, &v104);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2082;
    if (a4)
    {
      v64 = 1702195828;
    }

    else
    {
      v64 = 0x65736C6166;
    }

    if (a4)
    {
      v65 = 0xE400000000000000;
    }

    else
    {
      v65 = 0xE500000000000000;
    }

    v66 = sub_1BF01A7AC(v64, v65, &v104);

    *(v59 + 14) = v66;
    *(v59 + 22) = 2082;
    v67 = v97;
    sub_1BF014DC0(v97, a2);
    v68 = sub_1BF01C6AC(v67, a2);
    if (v69)
    {
      v70 = v68;
      v71 = v69;
      sub_1BF00F5F4(v97, a2);
LABEL_41:
      v74 = sub_1BF01A7AC(v70, v71, &v104);

      *(v59 + 24) = v74;
      _os_log_impl(&dword_1BEFE0000, v57, v58, "SocketConnection:[%{public}s] receive data, isComplete:[%{public}s], content:[%{public}s]", v59, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB547B0](v60, -1, -1);
      MEMORY[0x1BFB547B0](v59, -1, -1);
      sub_1BF00F5F4(v97, a2);

      goto LABEL_42;
    }

    LODWORD(v89) = a4;
    v100 = v97;
    v101 = a2;
    sub_1BF014DC0(v97, a2);
    sub_1BF086BDC();
    if (swift_dynamicCast())
    {
      sub_1BEFE87B0(v98, v102);
      __swift_project_boxed_opaque_existential_1(v102, v103);
      if (sub_1BF17B55C())
      {
        sub_1BF00F5F4(v97, a2);
        __swift_project_boxed_opaque_existential_1(v102, v103);
        sub_1BF17B54C();
        v71 = *(&v98[0] + 1);
        v70 = *&v98[0];
        __swift_destroy_boxed_opaque_existential_1(v102);
LABEL_40:
        LOBYTE(a4) = v89;
        goto LABEL_41;
      }

      __swift_destroy_boxed_opaque_existential_1(v102);
    }

    else
    {
      v99 = 0;
      memset(v98, 0, sizeof(v98));
      sub_1BF00F578(v98, &qword_1ED8EAD98, sub_1BF086BDC);
    }

    v72 = v97;
    v70 = sub_1BF0869B0(v97, a2);
    v71 = v73;
    sub_1BF00F5F4(v72, a2);
    goto LABEL_40;
  }

  sub_1BF00F5F4(v97, a2);
LABEL_42:
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v76 = *(Strong + 56);
    if (v76)
    {
      v89 = *(Strong + 64);
      sub_1BF009984(v76);

      v77 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v78 = v94;
      v79 = v95;
      sub_1BF00F4E4(v95, v94);
      v80 = (*(v92 + 80) + 16) & ~*(v92 + 80);
      v81 = (v93 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
      v90 = a2;
      v82 = swift_allocObject();
      sub_1BF00F608(v78, v82 + v80);
      *(v82 + v81) = v96;
      *(v82 + ((v81 + 15) & 0xFFFFFFFFFFFFFFF8)) = v77;

      v76(v97, v90, v91, a4 & 1, v79, sub_1BF02F2C8, v82);

      sub_1BEFE52DC(v76);
    }
  }
}

uint64_t sub_1BF01B600()
{
  OUTLINED_FUNCTION_1_7();
  sub_1BF01A748(0, v1, v2, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = sub_1BF179B3C();
  if (!__swift_getEnumTagSinglePayload(v0 + v5, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v5, v7);
  }

  v8 = (v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v8);

  v11 = *(v0 + v9);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v4 | 7);
}

unint64_t sub_1BF01B738()
{
  result = qword_1ED8EE9C0;
  if (!qword_1ED8EE9C0)
  {
    sub_1BF018790(255, &qword_1ED8EE9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EE9C0);
  }

  return result;
}

unint64_t sub_1BF01B7A0()
{
  result = qword_1ED8EB110;
  if (!qword_1ED8EB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EB110);
  }

  return result;
}

uint64_t sub_1BF01B7F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF01B844(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void))
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 24);
  v7 = *(a1 + 2);
  v8 = *(a3 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v20 = *(a1 + 24);
    v21 = *a1;
    v22 = *(a1 + 2);
    v23 = *(a1 + 1);
    v24 = a2;
    v25 = a4;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1BF018E60(0, v8, 0);
    v9 = v26;
    v11 = (a3 + 56);
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      v26 = v9;
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v17 >= v16 >> 1)
      {
        sub_1BF018E60((v16 > 1), v17 + 1, 1);
        v9 = v26;
      }

      *(v9 + 16) = v17 + 1;
      v18 = (v9 + 32 * v17);
      v18[4] = v12;
      v18[5] = v13;
      v18[6] = v14;
      v18[7] = v15;
      v11 += 4;
      --v8;
    }

    while (v8);
    a4 = v25;
    a2 = v24;
    v7 = v22;
    v5 = v23;
    v4 = v21;
    v6 = v20;
  }

  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  a4(&v26, a2, v9);
}

uint64_t Array.sorting<A>(on:by:)()
{
  sub_1BF17A65C();
  OUTLINED_FUNCTION_7_0();
  swift_getWitnessTable();
  return sub_1BF17A40C();
}

uint64_t sub_1BF01BA6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a8 - 8);
  v13 = *(v12 + 64);
  v14 = (MEMORY[0x1EEE9AC00])();
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v24 - v18;
  v20(v17);
  a5(a2);
  v21 = a3(v19, v16);
  v22 = *(v12 + 8);
  v22(v16, a8);
  v22(v19, a8);
  return v21 & 1;
}

void sub_1BF01BBF4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_1BF1794AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 64) + v14;
  v16 = (v15 & ~v14) + *(*(v10 - 8) + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 < a2)
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        return;
      case 2:
        *&a1[v16] = v20;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        return;
      default:
        return;
    }
  }

  switch(v18)
  {
    case 1:
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x1BF01BE9CLL);
    case 4:
      *&a1[v16] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v9 >= v12)
        {
          v24 = a1;
          v25 = a2;
          v12 = v9;
          v10 = v7;
        }

        else
        {
          v24 = &a1[v15] & ~v14;
          v25 = a2;
        }

        __swift_storeEnumTagSinglePayload(v24, v25, v12, v10);
      }

      return;
  }
}

uint64_t sub_1BF01BEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *(a2 - 8);
  (*(v9 + 16))(a3, a1, a2);
  v6 = a3 + *(type metadata accessor for CacheEntry() + 28);
  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  v7 = *(v9 + 8);

  return v7(a1, a2);
}

uint64_t ReferenceCountedLazy.init(options:loadBlock:)()
{
  OUTLINED_FUNCTION_29_10();
  v4 = *v3;
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 96);
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_4_0();
  *(v0 + *(v13 + 120)) = 0;
  v20 = 1;
  v14 = type metadata accessor for UnfairLock();
  swift_allocObject();
  UnfairLock.init(options:)(&v20);
  OUTLINED_FUNCTION_4_0();
  v16 = (v0 + *(v15 + 104));
  v16[3] = v14;
  v16[4] = &protocol witness table for UnfairLock;
  *v16 = v17;
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  OUTLINED_FUNCTION_4_0();
  *(v0 + *(v18 + 112)) = v4;
  return v0;
}

unint64_t sub_1BF01C0AC()
{
  result = qword_1ED8EAFF0;
  if (!qword_1ED8EAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EAFF0);
  }

  return result;
}

unint64_t sub_1BF01C100()
{
  result = qword_1ED8EAFE8;
  if (!qword_1ED8EAFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EAFE8);
  }

  return result;
}

uint64_t sub_1BF01C154(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = *(v4 + 48);

  sub_1BF00DAA8(1, a1, a2);
}

uint64_t sub_1BF01C248()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_27_2();
  v4 = v3;
  OUTLINED_FUNCTION_62_0();
  v7 = OUTLINED_FUNCTION_6_4(v5, v6);
  v9 = sub_1BF011754(v7, v8);
  OUTLINED_FUNCTION_1_5(v9, v10);
  if (v12)
  {
    __break(1u);
LABEL_13:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v13 = v11;
  sub_1BF01C340();
  if (OUTLINED_FUNCTION_10_7())
  {
    v14 = *v2;
    sub_1BF011754(v0, v4);
    OUTLINED_FUNCTION_11_2();
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if (v13)
  {
    v16 = *(*v2 + 56);
    OUTLINED_FUNCTION_55();

    return sub_1BF00E310(v17, v18);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_40_1();
    sub_1BF01C3A4(v21, v22, v4, v1, v23);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    OUTLINED_FUNCTION_55();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BF01C340()
{
  if (!qword_1ED8EADD8)
  {
    sub_1BF01C0AC();
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EADD8);
    }
  }
}

void sub_1BF01C3A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_0_29(a1, a2, a3, a4, a5);
  memcpy((v7 + 72 * v6), v8, 0x48uLL);
  OUTLINED_FUNCTION_12_11();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

uint64_t sub_1BF01C404(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1BF01C44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  type metadata accessor for HttpResponseConverter();
  v4[5] = swift_allocObject();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *(a1 + 56) = sub_1BF01B730;
  *(a1 + 64) = v6;

  sub_1BEFE52DC(v7);

  sub_1BF01EBA0();

  return v4;
}

uint64_t sub_1BF01C540()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1BF01C578()
{
  if (!qword_1ED8EF478)
  {
    v0 = sub_1BF17B70C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EF478);
    }
  }
}

uint64_t sub_1BF01C5C8(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1BF081F5C(result, v8, 1, v3);
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

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BF01C6AC(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v4 = a1;
      if (sub_1BF178F3C() && __OFSUB__(v4, sub_1BF178F5C()))
      {
        goto LABEL_14;
      }

LABEL_9:
      sub_1BF178F4C();
LABEL_10:
      result = sub_1BF17A18C();
      v6 = *MEMORY[0x1E69E9840];
      return result;
    case 2uLL:
      v2 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (sub_1BF178F3C() && __OFSUB__(v2, sub_1BF178F5C()))
      {
        goto LABEL_13;
      }

      if (!__OFSUB__(v3, v2))
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    default:
      goto LABEL_10;
  }
}

uint64_t sub_1BF01C888(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a7;
  *(v13 + 24) = a8;
  if (a2 >> 60 == 15)
  {
    v14 = qword_1ED8EE9F0;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = sub_1BF1797FC();
    __swift_project_value_buffer(v15, qword_1ED8F5298);

    v16 = sub_1BF1797DC();
    v17 = sub_1BF17ACBC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v78 = v19;
      *v18 = 136446210;
      v20 = a6[2];
      v21 = *(v20 + 40);
      v22 = *(v20 + 48);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v23 = sub_1BF01A7AC(v21, v22, &v78);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1BEFE0000, v16, v17, "HttpConnectionHandler:[%{public}s] no data", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1BFB547B0](v19, -1, -1);
      MEMORY[0x1BFB547B0](v18, -1, -1);
    }

    a7(258);

    goto LABEL_7;
  }

  v25 = a6[3];

  sub_1BF00F5E0(a1, a2);
  sub_1BF00F750(a1, a2, &v78);
  v74 = a7;
  v70 = a2;
  v73 = v13;
  v26 = v78;
  v27 = v79;
  v28 = v80;
  v29 = v81;
  v31 = v82;
  v30 = v83;
  v32 = a6[4];
  v33 = sub_1BF010B6C(v81, v78, v79, v80);
  if (v33)
  {
    v78 = v26;
    v79 = v27;
    v80 = v28;
    v81 = v29;
    v63 = v31;
    v82 = v31;
    v83 = v30;
    v36 = v33;
    v37 = v34;
    v67 = v35;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    v67(&v75, &v78, v36, v37);

    v38 = v75;
    v39 = a6[5];
    v65 = *(&v75 + 1);
    v78 = v26;
    v79 = v27;
    v80 = v28;
    v81 = v29;
    v82 = v63;
    v83 = v30;
    v64 = sub_1BF0136C8(&v75);
    v41 = v40;

    if (v41 >> 60 != 15)
    {
      v72 = a1;
      v57 = a6[2];
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = swift_allocObject();
      v59[2] = v58;
      v59[3] = v64;
      v59[4] = v41;
      v59[5] = sub_1BF020680;
      v59[6] = v73;

      sub_1BF00F5E0(v64, v41);

      sub_1BF01D444(v64, v41, sub_1BF02060C, v59);
      sub_1BF00F5F4(v72, v70);

      sub_1BF00F5F4(v64, v41);
      sub_1BF013E14(v38, v65);
    }

    v74(257);
    sub_1BF013E14(v38, v65);
  }

  else
  {
    v66 = v29;
    v68 = v26;
    v69 = v27;
    v42 = v30;
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v43 = sub_1BF1797FC();
    __swift_project_value_buffer(v43, qword_1ED8F5298);

    v44 = sub_1BF1797DC();
    v45 = sub_1BF17ACDC();

    v71 = a1;
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v78 = v47;
      *v46 = 136446210;
      v48 = a6[2];
      v49 = *(v48 + 40);
      v50 = *(v48 + 48);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v51 = sub_1BF01A7AC(v49, v50, &v78);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_1BEFE0000, v44, v45, "HttpConnectionHandler:[%{public}s] no route", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1BFB547B0](v47, -1, -1);
      v52 = v46;
      a1 = v71;
      MEMORY[0x1BFB547B0](v52, -1, -1);
    }

    v53 = a6[5];
    v75 = xmmword_1BF18AA40;
    v76 = 0;
    v77 = 0;
    v78 = v68;
    v79 = v69;
    v80 = v28;
    v81 = v66;
    v82 = v31;
    v83 = v42;
    v54 = sub_1BF0136C8(&v75);
    v56 = v55;

    if (v56 >> 60 != 15)
    {
      v60 = a6[2];
      v61 = swift_allocObject();
      swift_weakInit();
      v62 = swift_allocObject();
      v62[2] = v61;
      v62[3] = sub_1BF020680;
      v62[4] = v73;

      sub_1BF01D444(v54, v56, sub_1BF032E00, v62);
      sub_1BF00F5F4(v71, v70);

      sub_1BF00F5F4(v54, v56);

      goto LABEL_7;
    }

    v74(257);
  }

  sub_1BF00F5F4(a1, v70);

LABEL_7:
}

uint64_t sub_1BF01D27C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF01D2B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF01D2F4()
{
  v1 = v0[2];

  sub_1BF014E18(v0[3], v0[4]);
  v2 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF01D33C(uint64_t a1, uint64_t a2)
{
  sub_1BEFF5158(0, &qword_1ED8EB108, &type metadata for Route, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF01D3C4(uint64_t a1)
{
  sub_1BEFF5158(0, &qword_1ED8EB108, &type metadata for Route, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF01D444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_1BF1799BC();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v16 = (v15 - v14);
  v17 = *(v5 + 16);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 2) = v18;
  *(v19 + 3) = a3;
  *(v19 + 4) = a4;
  *v16 = sub_1BF02F2BC;
  v16[1] = v19;
  (*(v11 + 104))(v16, *MEMORY[0x1E6977BF8], v8);
  sub_1BF1799AC();

  sub_1BF17999C();
  sub_1BF1799DC();

  (*(v11 + 8))(v16, v8);
}

uint64_t sub_1BF01D5F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF01D634()
{
  v1 = v0;
  if (qword_1ED8EE9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF1797FC();
  __swift_project_value_buffer(v2, qword_1ED8F5298);

  v3 = sub_1BF1797DC();
  v4 = sub_1BF17ACDC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1BF01A7AC(v1[5], v1[6], &v9);
    _os_log_impl(&dword_1BEFE0000, v3, v4, "SocketConnection:[%{public}s] stop", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB547B0](v6, -1, -1);
    MEMORY[0x1BFB547B0](v5, -1, -1);
  }

  v7 = v1[2];
  return sub_1BF179A0C();
}

uint64_t (*sub_1BF01D77C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0554AC;
}

void *sub_1BF01D7F4(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = sub_1BF17AD4C();
  v5 = OUTLINED_FUNCTION_1(v4);
  v34 = v6;
  v35 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = sub_1BF17AD1C();
  v13 = OUTLINED_FUNCTION_12(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = sub_1BF179BBC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_2_0();
  v18 = sub_1BF1794FC();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  v3[4] = 0x10000;
  sub_1BF1794EC();
  v27 = sub_1BF1794BC();
  v29 = v28;
  (*(v21 + 8))(v26, v18);
  v3[5] = v27;
  v3[6] = v29;
  v3[7] = 0;
  v3[8] = 0;
  v3[2] = a1;
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);

  v30 = a2;
  sub_1BF179B8C();
  sub_1BF01C404(&qword_1ED8F0BE0, MEMORY[0x1E69E8030]);
  sub_1BF01A748(0, qword_1ED8F0BF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1BF014364();
  sub_1BF17B0BC();
  (*(v34 + 104))(v11, *MEMORY[0x1E69E8090], v35);
  v31 = sub_1BF17AD9C();

  v3[3] = v31;
  return v3;
}

uint64_t sub_1BF01DB38()
{
  v1 = *(v0 + 16);
  swift_allocObject();
  swift_weakInit();

  sub_1BF179A1C();
}

uint64_t sub_1BF01DBC0(uint64_t a1, uint64_t a2)
{
  sub_1BF013118();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BF01DC24()
{
  v1 = *v0;
  OUTLINED_FUNCTION_6_0();
  sub_1BF01A5C4();
  *v0 = v2;
}

uint64_t sub_1BF01DC58()
{
  v0 = sub_1BF17A15C();
  v2 = v1;

  if (v0 == 7628135 && v2 == 0xE300000000000000)
  {

    v4 = 1;
  }

  else
  {
    v4 = sub_1BF17B86C();
  }

  return v4 & 1;
}

int64_t sub_1BF01DCE8(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1BF01DDD4(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      sub_1BF01DD68(result, v3, a2);
      OUTLINED_FUNCTION_7_11();
      return OUTLINED_FUNCTION_10_15();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF01DD68(unint64_t result, uint64_t a2, uint64_t a3)
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
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

LABEL_10:
  __break(1u);
  return result;
}