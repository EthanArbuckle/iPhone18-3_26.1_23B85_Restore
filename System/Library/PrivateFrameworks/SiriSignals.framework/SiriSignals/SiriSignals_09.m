void sub_231540538(void *a1, uint64_t a2)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = OUTLINED_FUNCTION_18_8();
  v11 = v10(v9);
  OUTLINED_FUNCTION_13_8(v11);
  OUTLINED_FUNCTION_22_7();
  v21 = v12;
  if (v4)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v13 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v13 >= v5)
    {
      goto LABEL_17;
    }

    v4 = *(v2 + 8 * v13);
    ++v3;
    if (v4)
    {
      v3 = v13;
LABEL_6:
      while (2)
      {
        if (!*(a2 + 16))
        {
LABEL_17:

          return;
        }

        v14 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        OUTLINED_FUNCTION_15_7(v12, v14);

        sub_231586274();
        v15 = sub_231586D44();
        v16 = ~(-1 << *(a2 + 32));
        do
        {
          OUTLINED_FUNCTION_21_7(v15);
          if ((v17 & 1) == 0)
          {

            goto LABEL_17;
          }

          OUTLINED_FUNCTION_27_1();
          v19 = v19 && v18 == v8;
          if (v19)
          {
            break;
          }

          v20 = sub_231586C44();
          v15 = v7 + 1;
        }

        while ((v20 & 1) == 0);

        v12 = v21;
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
}

void sub_231540690(void *a1, uint64_t a2)
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = OUTLINED_FUNCTION_18_8();
  v10 = v9(v8);
  OUTLINED_FUNCTION_13_8(v10);
  OUTLINED_FUNCTION_22_7();
LABEL_2:
  while (v4)
  {
    v12 = v4;
LABEL_8:
    v4 = (v12 - 1) & v12;
    if (*(a2 + 16))
    {
      v20 = v11;
      OUTLINED_FUNCTION_15_7(v11, __clz(__rbit64(v12)));

      sub_231586274();
      v14 = sub_231586D44();
      v15 = ~(-1 << *(a2 + 32));
      do
      {
        OUTLINED_FUNCTION_21_7(v14);
        if ((v16 & 1) == 0)
        {

          v11 = v20;
          goto LABEL_2;
        }

        OUTLINED_FUNCTION_27_1();
        v18 = v18 && v17 == v7;
        if (v18)
        {
          break;
        }

        v19 = sub_231586C44();
        v14 = 0;
      }

      while ((v19 & 1) == 0);

      return;
    }
  }

  while (1)
  {
    v13 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v13 >= v5)
    {

      return;
    }

    v12 = *(v2 + 8 * v13);
    ++v3;
    if (v12)
    {
      v3 = v13;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void *SignalGatherer.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t SignalGatherer.__deallocating_deinit()
{
  SignalGatherer.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_23154085C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_2315408B0(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 24))(a1, a2, v5, v6);
}

uint64_t sub_231540938(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  __swift_allocate_boxed_opaque_existential_1(&v11);
  OUTLINED_FUNCTION_11_2(a4);
  (*(v8 + 32))();
  v9 = *a3;
  *(v9 + 16) = a1 + 1;
  return sub_23149FD3C(&v11, v9 + 40 * a1 + 32);
}

uint64_t objectdestroy_2Tm(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDB0, &qword_23158D7A0);
  sub_2315409CC(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_2315409CC(v5);
  OUTLINED_FUNCTION_19_8();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_231540A60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

void sub_231540AA0(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

id sub_231540AAC(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

unint64_t sub_231540ACC()
{
  result = qword_27DD5BDC8;
  if (!qword_27DD5BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BDC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SignalGathererError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of SignalGatherer.gatherAsync(timeoutSeconds:onlyFromCache:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 200);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_231540EB8;

  return v10(a1, a2);
}

uint64_t sub_231540EB8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_231540FD4(uint64_t *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD8, &qword_23158D9A8) - 8) + 80);

  return sub_23153F3DC(a1);
}

uint64_t sub_231541050(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_11_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_11Tm()
{
  v1 = sub_231585FD4();
  OUTLINED_FUNCTION_4_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 80) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v9 = v0[7];

  v10 = v0[8];

  v11 = v0[9];

  (*(v3 + 8))(v0 + v5, v1);
  v12 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 10, v4 | 7);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_19_8();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2315411E8()
{
  v1 = sub_231585FD4();
  OUTLINED_FUNCTION_16_8(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_23153DEBC((v0 + 16), *(v0 + 56), *(v0 + 64), *(v0 + 72), v0 + v6, *(v0 + v7), *(v0 + v7 + 8), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 9));
}

unint64_t sub_231541298()
{
  result = qword_280D6FEB8;
  if (!qword_280D6FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6FEB8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_1(_OWORD *a1)
{
  sub_2314D6070(a1, v1);
}

Swift::Void __swiftcall SignalGatheringResults.extract(name:for:to:)(Swift::String name, Swift::String_optional a2, Swift::Int32 *to)
{
  OUTLINED_FUNCTION_0_80();
  v9 = sub_231541514(v4, v5, v6, v7, v8, SignalValue.valueInt());
  if ((v10 & 1) == 0)
  {
    v11 = 0x7FFFFFFFLL;
    if (v9 < 0x7FFFFFFF)
    {
      v11 = v9;
    }

    if (v11 <= 0xFFFFFFFF80000000)
    {
      LODWORD(v11) = 0x80000000;
    }

    *v3 = v11;
  }
}

Swift::Void __swiftcall SignalGatheringResults.extract(name:for:to:)(Swift::String name, Swift::String_optional a2, Swift::Bool *to)
{
  OUTLINED_FUNCTION_0_80();
  v9 = sub_231541514(v4, v5, v6, v7, v8, SignalValue.valueInt());
  if ((v10 & 1) == 0)
  {
    *v3 = v9 != 0;
  }
}

Swift::Void __swiftcall SignalGatheringResults.extract(name:for:to:)(Swift::String name, Swift::String_optional a2, Swift::UInt32 *to)
{
  OUTLINED_FUNCTION_0_80();
  v9 = sub_231541514(v4, v5, v6, v7, v8, SignalValue.valueInt());
  if ((v10 & 1) == 0)
  {
    v11 = 0xFFFFFFFFLL;
    if (v9 < 0xFFFFFFFFLL)
    {
      v11 = v9;
    }

    *v3 = v11 & ~(v11 >> 63);
  }
}

SiriSignals::SignalGatheringResults __swiftcall SignalGatheringResults.init(values:candidateAppBundleIds:)(Swift::OpaquePointer values, Swift::OpaquePointer candidateAppBundleIds)
{
  v2->_rawValue = values._rawValue;
  v2[1]._rawValue = candidateAppBundleIds._rawValue;
  result.candidateAppBundleIds = candidateAppBundleIds;
  result.values = values;
  return result;
}

uint64_t sub_231541514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(unint64_t, uint64_t))
{
  v7 = *v6;
  if (*(v7 + 16) && (v12 = sub_23149C888(a1, a2), (v13 & 1) != 0))
  {
    v14 = *(v7 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    if (a4)
    {
      sub_2314A5168(v15, v16);
      v17 = a5(a3, a4);
      sub_2314A5EEC(v15, v16);
    }

    else
    {
      return a6(v12, v13);
    }
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v18 = sub_231585FF4();
    __swift_project_value_buffer(v18, qword_280D72248);

    v19 = sub_231585FE4();
    v20 = sub_2315865E4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v21 = 136315138;
      *(v21 + 4) = sub_2314A22E8();
      _os_log_impl(&dword_231496000, v19, v20, "SignalValueExtractor: No SignalValue for [%s]", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x231931280](v23, -1, -1);
      MEMORY[0x231931280](v21, -1, -1);
    }

    return 0;
  }

  return v17;
}

uint64_t sub_231541740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(unint64_t, uint64_t))
{
  v11 = *v7;
  result = sub_231541514(a1, a2, a3, a4, a6, a7);
  if ((v10 & 1) == 0)
  {
    *a5 = result;
  }

  return result;
}

Swift::Void __swiftcall SignalGatheringResults.extract(name:for:to:)(Swift::String name, Swift::String_optional a2, Swift::Float *to)
{
  v8 = *v3;
  v5 = COERCE_DOUBLE(sub_231541514(name._countAndFlagsBits, name._object, a2.value._countAndFlagsBits, a2.value._object, SignalValue.value(for:), SignalValue.value()));
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    *to = v7;
  }
}

uint64_t sub_231541838(uint64_t a1)
{
  swift_beginAccess();

  sub_2314AAB1C(&v10, a1, v2, v3, v4, v5, v6, v7, v9);
  swift_endAccess();
}

uint64_t sub_23154189C()
{
  sub_231586D14();
  sub_2314AAAAC();
  return sub_231586D44();
}

uint64_t sub_231541924()
{
  sub_231586D14();
  v1 = *v0;
  sub_2314AAAAC();
  return sub_231586D44();
}

unint64_t sub_23154198C()
{
  result = qword_280D6E500;
  if (!qword_280D6E500)
  {
    _s4NodeCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E500);
  }

  return result;
}

uint64_t sub_2315419E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a2 + 16))();
  v6 = v5;
  v92 = *(v5 + 16);
  if (!v92)
  {
  }

  v94 = v5 + 32;
  v95 = a3 & 0xC000000000000001;
  swift_beginAccess();
  v7 = 0;
  v90 = a3 + 56;
  v89 = 136315394;
  v93 = v6;
  v91 = a3;
  v99 = v3;
  while (1)
  {
    if (v7 >= *(v6 + 16))
    {
      goto LABEL_57;
    }

    v100 = v7;
    v8 = (v94 + 16 * v7);
    v103 = *v8;
    v97 = v8[1];
    if (v95)
    {
      swift_unknownObjectRetain();
      sub_231586824();
      _s4NodeCMa();
      sub_23152B510();
      sub_231586554();
      v9 = v105;
      v10 = v106;
      v11 = v107;
      v12 = v108;
      v13 = v109;
    }

    else
    {
      v11 = ~(-1 << *(a3 + 32));
      v14 = *(a3 + 56);
      OUTLINED_FUNCTION_6_20();
      v13 = v15 & v16;

      v12 = 0;
      v9 = a3;
      v10 = v90;
    }

    v101 = v100 + 1;
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (1)
    {
      v24 = sub_231586894();
      if (!v24)
      {
        break;
      }

      v115 = v24;
      _s4NodeCMa();
      swift_dynamicCast();
      v23 = v104;
      v18 = v12;
      v21 = v13;
      if (!v104)
      {
        break;
      }

LABEL_16:
      if (v23[2] == v103)
      {
        OUTLINED_FUNCTION_10_13();

        if (qword_280D70420 == -1)
        {
          goto LABEL_50;
        }

        goto LABEL_58;
      }

      v12 = v18;
      v13 = v21;
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_19:
    OUTLINED_FUNCTION_10_13();
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v25 = sub_231585FF4();
    __swift_project_value_buffer(v25, qword_280D72248);
    v26 = sub_231585FE4();
    v27 = sub_2315865D4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v28 = 136315138;
      sub_231586D94();
      v29 = sub_2314A22E8();

      *(v28 + 4) = v29;
      _os_log_impl(&dword_231496000, v26, v27, "Creating new child node for signal %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v104);
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
      v30 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x231931280](v30);
    }

    _s4NodeCMa();
    OUTLINED_FUNCTION_11_14();
    v98 = sub_2314AAA54(v103, v97);
    v31 = *(v99 + 16);
    if ((v31 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_231586824();
      sub_23152B510();
      sub_231586554();
      v33 = v110;
      v32 = v111;
      v34 = v112;
      v35 = v113;
      v36 = v114;
    }

    else
    {
      v32 = v31 + 56;
      v37 = *(v31 + 56);
      v34 = ~(-1 << *(v31 + 32));
      OUTLINED_FUNCTION_6_20();
      v36 = v38 & v39;
      swift_bridgeObjectRetain_n();
      v35 = 0;
      v33 = v31;
    }

    v40 = (v34 + 64) >> 6;
    if ((v33 & 0x8000000000000000) == 0)
    {
LABEL_27:
      v41 = v35;
      v42 = v35;
      if (v36)
      {
LABEL_31:
        OUTLINED_FUNCTION_9_0();
        v45 = v44 & v43;
        v47 = *(*(v33 + 48) + ((v42 << 9) | (8 * v46)));

        if (v47)
        {
          goto LABEL_35;
        }
      }

      else
      {
        while (1)
        {
          v42 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_56;
          }

          if (v42 >= v40)
          {
            break;
          }

          ++v41;
          if (*(v32 + 8 * v42))
          {
            goto LABEL_31;
          }
        }
      }

LABEL_38:
      OUTLINED_FUNCTION_14_7();
      v6 = v93;
      a3 = v91;
      v49 = v103;
      goto LABEL_39;
    }

    while (1)
    {
      v48 = sub_231586894();
      if (!v48)
      {
        goto LABEL_38;
      }

      v115 = v48;
      swift_dynamicCast();
      v47 = v104;
      v42 = v35;
      v45 = v36;
      if (!v104)
      {
        goto LABEL_38;
      }

LABEL_35:
      if (v47[2] == a1)
      {
        break;
      }

      v35 = v42;
      v36 = v45;
      if ((v33 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }
    }

    OUTLINED_FUNCTION_14_7();

    v62 = sub_231585FE4();
    v63 = sub_2315865D4();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v64 = 136315138;
      v65 = v47[2];
      sub_231586D94();
      v66 = sub_2314A22E8();

      *(v64 + 4) = v66;
      _os_log_impl(&dword_231496000, v62, v63, "Found parentNode %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v104);
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
      v67 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x231931280](v67);
    }

    v68 = v98;
    v49 = v103;
    swift_beginAccess();
    swift_retain_n();
    sub_2314AAB1C(&v115, v98, v69, v70, v71, v72, v73, v74, v89);
    swift_endAccess();

    v75 = sub_231585FE4();
    v76 = sub_2315865D4();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v77 = v89;
      v78 = v47[2];
      sub_231586D94();
      v79 = sub_2314A22E8();

      *(v77 + 4) = v79;
      *(v77 + 12) = 2080;
      v80 = v98[2];
      sub_231586D94();
      v81 = sub_2314A22E8();

      *(v77 + 14) = v81;
      v68 = v98;
      _os_log_impl(&dword_231496000, v75, v76, "adding edge from %s to %s", v77, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
      v82 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x231931280](v82);
    }

    v6 = v93;
    a3 = v91;
    sub_231541838(v68);

LABEL_39:
    v50 = dynamic_cast_existential_1_conditional(v49);
    if (v50)
    {
      v52 = v50;
      v53 = v51;
      v104 = a3;
      v54 = *(v51 + 8);
      OUTLINED_FUNCTION_11_14();

      v55 = sub_2314AAA54(v52, v54);
      sub_2314AAB1C(&v115, v55, v56, v57, v58, v59, v60, v61, v89);

      sub_2315419E0(v52, v53, a3);
      if (v96)
      {
      }
    }

    v7 = v101;
    if (v101 == v92)
    {
    }
  }

LABEL_8:
  v17 = v12;
  v18 = v12;
  if (v13)
  {
LABEL_12:
    OUTLINED_FUNCTION_9_0();
    v21 = v20 & v19;
    v23 = *(*(v9 + 48) + ((v18 << 9) | (8 * v22)));

    if (!v23)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= ((v11 + 64) >> 6))
    {
      goto LABEL_19;
    }

    ++v17;
    if (*(v10 + 8 * v18))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  OUTLINED_FUNCTION_3();
  swift_once();
LABEL_50:
  v83 = sub_231585FF4();
  __swift_project_value_buffer(v83, qword_280D72248);
  v84 = sub_231585FE4();
  v85 = sub_2315865D4();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_231496000, v84, v85, "child node already has a dependency on the parent node, detected cycle", v86, 2u);
    v87 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x231931280](v87);
  }

  sub_2315425C0();
  swift_allocError();
  return swift_willThrow();
}

unint64_t *sub_2315422E0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_2315437D4(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_231542358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_17_10();
  a29 = v31;
  a30 = v32;
  v33 = v30;
  v35 = v34;
  v52 = v36;
  v37 = *v30;
  v38 = *(*v30 + 40);
  sub_231586D14();
  sub_231545524(&a10, v35);
  sub_231586D44();
  v39 = *(v37 + 32);
  OUTLINED_FUNCTION_17_7();
  v42 = v41 & ~v40;
  if ((*(v37 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
  {
    v43 = ~v40;
    while (1)
    {
      v44 = 0xE800000000000000;
      v45 = 0x6449656C646E7562;
      switch(*(*(v37 + 48) + v42))
      {
        case 1:
          v45 = 0x6449797469746E65;
          break;
        case 2:
          v45 = 0x73556E69616D6F64;
          v44 = 0xED00006573614365;
          break;
        case 3:
          v45 = 0x7355646572616873;
          v44 = 0xEC00000064497265;
          break;
        case 4:
          v44 = 0xE600000000000000;
          v45 = 0x746E65746E69;
          break;
        default:
          break;
      }

      v46 = 0xE800000000000000;
      v47 = 0x6449656C646E7562;
      switch(v35)
      {
        case 1:
          v47 = 0x6449797469746E65;
          break;
        case 2:
          v47 = 0x73556E69616D6F64;
          v46 = 0xED00006573614365;
          break;
        case 3:
          v47 = 0x7355646572616873;
          v46 = 0xEC00000064497265;
          break;
        case 4:
          v46 = 0xE600000000000000;
          v47 = 0x746E65746E69;
          break;
        default:
          break;
      }

      if (v45 == v47 && v44 == v46)
      {
        break;
      }

      v49 = sub_231586C44();

      if (v49)
      {
        goto LABEL_21;
      }

      v42 = (v42 + 1) & v43;
      if (((*(v37 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    LOBYTE(v35) = *(*(v37 + 48) + v42);
  }

  else
  {
LABEL_19:
    v50 = *v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a10 = *v33;
    sub_231543504(v35, v42, isUniquelyReferenced_nonNull_native);
    *v33 = a10;
  }

  *v52 = v35;
  OUTLINED_FUNCTION_16_9();
}

unint64_t sub_2315425C0()
{
  result = qword_27DD5BDE8;
  if (!qword_27DD5BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BDE8);
  }

  return result;
}

uint64_t sub_231542614(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B110, &unk_231588040);
    v2 = sub_231586914();
    v16 = v2;
    sub_231586824();
    while (1)
    {
      if (!sub_231586894())
      {

        return v2;
      }

      _s4NodeCMa();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_2314AB120(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      sub_231586D14();
      sub_2314AAAAC();
      result = sub_231586D44();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2315427EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDF0, &qword_23158DAA8);
  result = sub_231586904();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
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
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_23149BEE0(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_231586D14();
    sub_231586274();

    result = sub_231586D44();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
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
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_231542AE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B108, &unk_23158C980);
  result = sub_231586904();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
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
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_23149BEE0(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_231586D14();
    sub_231586274();
    result = sub_231586D44();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_231542D3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_231586D14();
  sub_2314AAAAC();
  sub_231586D44();
  v5 = *(a2 + 32);
  OUTLINED_FUNCTION_17_7();
  result = sub_231586804();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_231542DDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDF0, &qword_23158DAA8);
  v2 = *v0;
  v3 = sub_2315868F4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_231542F1C()
{
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B108, &unk_23158C980);
  v6 = *v0;
  v7 = sub_2315868F4();
  if (*(v6 + 16))
  {
    v8 = OUTLINED_FUNCTION_5_23();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v1, 8 * v9);
    }

    OUTLINED_FUNCTION_3_30();
    while (v4)
    {
      OUTLINED_FUNCTION_15_8();
LABEL_15:
      v17 = v13 | (v2 << 6);
      v18 = (*(v6 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = (*(v7 + 48) + 16 * v17);
      *v20 = *v18;
      v20[1] = v19;
    }

    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + v2))
      {
        OUTLINED_FUNCTION_9_0();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

uint64_t sub_23154300C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDF0, &qword_23158DAA8);
  result = sub_231586904();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_231586D14();
        sub_231586274();

        result = sub_231586D44();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2315432D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B108, &unk_23158C980);
  result = sub_231586904();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_231586D14();

        sub_231586274();
        result = sub_231586D44();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_231543504(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    sub_2315427EC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_231542DDC();
      goto LABEL_26;
    }

    sub_23154300C(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_231586D14();
  sub_231545524(v23, v6);
  result = sub_231586D44();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = 0xE800000000000000;
      v14 = 0x6449656C646E7562;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v14 = 0x6449797469746E65;
          break;
        case 2:
          v14 = 0x73556E69616D6F64;
          v13 = 0xED00006573614365;
          break;
        case 3:
          v14 = 0x7355646572616873;
          v13 = 0xEC00000064497265;
          break;
        case 4:
          v13 = 0xE600000000000000;
          v14 = 0x746E65746E69;
          break;
        default:
          break;
      }

      v15 = 0xE800000000000000;
      v16 = 0x6449656C646E7562;
      switch(v6)
      {
        case 1:
          v16 = 0x6449797469746E65;
          break;
        case 2:
          v16 = 0x73556E69616D6F64;
          v15 = 0xED00006573614365;
          break;
        case 3:
          v16 = 0x7355646572616873;
          v15 = 0xEC00000064497265;
          break;
        case 4:
          v15 = 0xE600000000000000;
          v16 = 0x746E65746E69;
          break;
        default:
          break;
      }

      if (v14 == v16 && v13 == v15)
      {
        goto LABEL_29;
      }

      v18 = sub_231586C44();

      if (v18)
      {
        goto LABEL_30;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_26:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_29:

LABEL_30:
  result = sub_231586C74();
  __break(1u);
  return result;
}

void sub_2315437D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);

    v16 = sub_2314AB380();

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:

        sub_2314A7E2C(a1, a2, v4, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

_BYTE *storeEnumTagSinglePayload for SignalGraph.InitializationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_2315439C8()
{
  result = qword_27DD5BDF8;
  if (!qword_27DD5BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BDF8);
  }

  return result;
}

void sub_231543A1C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  v6 = (a3 + 32);
  if (v4)
  {
    while (1)
    {
      v16 = *v6;
      a1(&v15, &v16);
      if (v3)
      {

        return;
      }

      v7 = v15;
      v8 = *(v15 + 16);
      v9 = *(v5 + 16);
      if (__OFADD__(v9, v8))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v9 + v8 > *(v5 + 24) >> 1)
      {
        sub_2314F0CB4();
        v5 = v10;
      }

      if (*(v7 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v8)
        {
          goto LABEL_19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v11 = *(v5 + 16);
          v12 = __OFADD__(v11, v8);
          v13 = v11 + v8;
          if (v12)
          {
            goto LABEL_20;
          }

          *(v5 + 16) = v13;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_18;
        }
      }

      ++v6;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

uint64_t SignalListBuilder.__allocating_init(context:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_3();
  v2 = swift_allocObject();
  SignalListBuilder.init(context:)(a1);
  return v2;
}

void *SignalListBuilder.init(context:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[5];
  v1[2] = MEMORY[0x277D84F90];
  v1[6] = &type metadata for SignalComputationContext;
  v1[7] = &protocol witness table for SignalComputationContext;
  OUTLINED_FUNCTION_13_3();
  v5 = swift_allocObject();
  v1[3] = v5;
  *(v5 + 16) = v3;
  v6 = *(a1 + 1);
  *(v5 + 40) = *(a1 + 3);
  *(v5 + 24) = v6;
  *(v5 + 56) = v4;
  return v1;
}

uint64_t sub_231543C80(uint64_t *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

void *SignalListBuilder.__allocating_init()()
{
  OUTLINED_FUNCTION_13_3();
  result = swift_allocObject();
  result[6] = &type metadata for NoParameters;
  result[7] = &protocol witness table for NoParameters;
  result[2] = MEMORY[0x277D84F90];
  return result;
}

void *SignalListBuilder.__allocating_init(candidateBundleIds:)(uint64_t a1)
{
  type metadata accessor for SignalDefinitionParametersProvider.Builder();
  swift_initStackObject();
  SignalDefinitionParametersProvider.Builder.init()();
  sub_231539348(a1);

  sub_23149A740(__src);

  OUTLINED_FUNCTION_13_3();
  v2 = swift_allocObject();
  v2[6] = &type metadata for SignalDefinitionParametersProvider;
  v2[7] = &protocol witness table for SignalDefinitionParametersProvider;
  v3 = swift_allocObject();
  v2[3] = v3;
  memcpy((v3 + 16), __src, 0x50uLL);
  v2[2] = MEMORY[0x277D84F90];
  return v2;
}

uint64_t SignalListBuilder.withCommonSignals()@<X0>(uint64_t **a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B600, &qword_23158AAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23158DB70;
  *(inited + 32) = &type metadata for ClientLanguageSignal;
  *(inited + 40) = &protocol witness table for ClientLanguageSignal;
  *(inited + 48) = &type metadata for ClientLocaleSignal;
  *(inited + 56) = &protocol witness table for ClientLocaleSignal;
  *(inited + 64) = &type metadata for DeviceClassSignal;
  *(inited + 72) = &protocol witness table for DeviceClassSignal;
  *(inited + 80) = type metadata accessor for CalendarSignal();
  *(inited + 88) = &protocol witness table for CalendarSignal;
  *(inited + 96) = &type metadata for ClientInDayLightHourSignal;
  *(inited + 104) = &protocol witness table for ClientInDayLightHourSignal;
  *(inited + 112) = &type metadata for IsFirstPartyAppSignal;
  *(inited + 120) = &protocol witness table for IsFirstPartyAppSignal;
  *(inited + 128) = &type metadata for HashedLocationSignal;
  *(inited + 136) = &protocol witness table for HashedLocationSignal;
  *(inited + 144) = &type metadata for IsCarPlayConnectedSignal;
  *(inited + 152) = &protocol witness table for IsCarPlayConnectedSignal;
  *(inited + 160) = &type metadata for IsScreenLockedSignal;
  *(inited + 168) = &protocol witness table for IsScreenLockedSignal;
  *(inited + 176) = &type metadata for DeviceMotionStateSignal;
  *(inited + 184) = &protocol witness table for DeviceMotionStateSignal;
  *(inited + 192) = &type metadata for TotalTimeSpentInApp;
  *(inited + 200) = &protocol witness table for TotalTimeSpentInApp;
  *(inited + 208) = &type metadata for TimeTodaySpentInApp;
  *(inited + 216) = &protocol witness table for TimeTodaySpentInApp;
  *(inited + 224) = &type metadata for TimeSinceAppLastLaunchedSignal;
  *(inited + 232) = &protocol witness table for TimeSinceAppLastLaunchedSignal;
  *(inited + 240) = &type metadata for ForegroundAppBiomeSignal;
  *(inited + 248) = &protocol witness table for ForegroundAppBiomeSignal;
  *(inited + 256) = &type metadata for ForegroundAppInFocusSignal;
  *(inited + 264) = &protocol witness table for ForegroundAppInFocusSignal;
  *(inited + 272) = &type metadata for ClientWorkoutSignal;
  *(inited + 280) = &protocol witness table for ClientWorkoutSignal;
  SignalListBuilder.withSignals(ofTypes:)(inited, v6);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v6);
  a1[3] = v3;
  a1[4] = &protocol witness table for SignalListBuilder;
  *a1 = v1;
}

void SignalListBuilder.withSignals(ofTypes:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v16 = *v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = MEMORY[0x277D84F90];
    v6 = a1 + 40;
    while (1)
    {
      v7 = *(v6 - 8);
      v8 = (*(*v6 + 104))(v3 + 3);
      v9 = *(v8 + 16);
      v10 = *(v5 + 16);
      if (__OFADD__(v10, v9))
      {
        break;
      }

      v11 = v8;
      if (!swift_isUniquelyReferenced_nonNull_native() || v10 + v9 > *(v5 + 24) >> 1)
      {
        sub_2314F0CB4();
        v5 = v12;
      }

      if (*(v11 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v9)
        {
          goto LABEL_19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = *(v5 + 16);
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_20;
          }

          *(v5 + 16) = v15;
        }
      }

      else
      {

        if (v9)
        {
          goto LABEL_18;
        }
      }

      v6 += 16;
      if (!--v4)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_16:
    swift_beginAccess();
    sub_23152C7FC(v5);
    swift_endAccess();
    a2[3] = v16;
    a2[4] = &protocol witness table for SignalListBuilder;
    *a2 = v3;
  }
}

uint64_t SignalListBuilder.withDomainSignals(useCase:)@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v67 = a2;
  v64 = v3;
  v66 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_3_1();
  v65 = v7;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v62 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v62 - v12;
  v14 = sub_231585D34();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v62 = v17;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v62 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v62 - v22;
  LOBYTE(a1) = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE00, &qword_23158DB88);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_231588340;
  v25 = MEMORY[0x277D84F90];
  *(v24 + 32) = a1;
  v73 = v25;
  v74 = 0u;
  *v75 = 0u;
  *&v75[16] = v24;
  v71 = &type metadata for SignalComputationContext;
  v72 = &protocol witness table for SignalComputationContext;
  OUTLINED_FUNCTION_13_3();
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_1_36(v26);
  OUTLINED_FUNCTION_4_26(v27, *&v75[8]);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v70, v13);
  OUTLINED_FUNCTION_7_24(v13);
  if (v28)
  {
    sub_2314B5064(v13);
    v63 = MEMORY[0x277D84F90];
  }

  else
  {
    v29 = (v15[4])(v23, v13, v14);
    v15 = &v62;
    MEMORY[0x28223BE20](v29);
    OUTLINED_FUNCTION_2_31();
    *(v30 - 16) = v23;

    v31 = OUTLINED_FUNCTION_3_31();
    sub_231543A1C(v31, v32, v33);
    v63 = v34;

    OUTLINED_FUNCTION_5_24();
    v35(v23, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(v70);
  v71 = &type metadata for SignalComputationContext;
  v72 = &protocol witness table for SignalComputationContext;
  OUTLINED_FUNCTION_13_3();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_1_36(v36);
  OUTLINED_FUNCTION_4_26(v37, *&v75[8]);
  sub_2315144B0(v70, v11);
  OUTLINED_FUNCTION_7_24(v11);
  if (v28)
  {
    sub_2314B5064(v11);
    v43 = MEMORY[0x277D84F90];
  }

  else
  {
    v38 = (v15[4])(v21, v11, v14);
    v15 = &v62;
    MEMORY[0x28223BE20](v38);
    OUTLINED_FUNCTION_2_31();
    *(v39 - 16) = v21;

    v40 = OUTLINED_FUNCTION_3_31();
    v43 = sub_23150466C(v40, v41, v42);

    OUTLINED_FUNCTION_5_24();
    v44(v21, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(v70);
  v69 = v63;
  sub_23152C7FC(v43);
  v45 = v69;
  v71 = &type metadata for SignalComputationContext;
  v72 = &protocol witness table for SignalComputationContext;
  OUTLINED_FUNCTION_13_3();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_1_36(v46);
  OUTLINED_FUNCTION_4_26(v47, *&v75[8]);
  v48 = v65;
  sub_2315144B0(v70, v65);
  OUTLINED_FUNCTION_7_24(v48);
  if (v28)
  {
    sub_2314B5064(v48);
    v55 = MEMORY[0x277D84F90];
  }

  else
  {
    v49 = v62;
    v50 = (v15[4])(v62, v48, v14);
    MEMORY[0x28223BE20](v50);
    OUTLINED_FUNCTION_2_31();
    *(v51 - 16) = v49;

    v52 = OUTLINED_FUNCTION_3_31();
    v55 = sub_23150466C(v52, v53, v54);

    (v15[1])(v49, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(v70);
  v68 = v45;
  sub_23152C7FC(v55);
  sub_2314EDACC(&v73);
  v57 = v56;
  sub_2314C1D18(&v73);
  sub_23152C7FC(v57);
  v58 = v68;
  v59 = v64;
  swift_beginAccess();
  sub_23152C7FC(v58);
  swift_endAccess();
  v60 = v67;
  v67[3] = v66;
  v60[4] = &protocol witness table for SignalListBuilder;
  *v60 = v59;
}

uint64_t SignalListBuilder.withSignals(instances:)@<X0>(uint64_t **a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();

  sub_23152C7FC(v4);
  swift_endAccess();
  a1[3] = v3;
  a1[4] = &protocol witness table for SignalListBuilder;
  *a1 = v1;
}

void *SignalListBuilder.toSignalGatherer()()
{
  swift_beginAccess();
  v1 = v0[2];

  v3 = sub_231522034(v2);

  v4 = v0[6];
  v5 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v4);
  v6 = (*(v5 + 8))(v4, v5);
  type metadata accessor for SignalGatherer();
  swift_allocObject();
  return SignalGatherer.init(signals:candidateAppBundleIds:)(v3, v6);
}

uint64_t SignalListBuilder.toTrainingMessageProviding()@<X0>(uint64_t *a1@<X8>)
{
  v2 = SignalListBuilder.toSignalGatherer()();
  v3 = type metadata accessor for TrainingMessageProvider();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v3;
  a1[4] = &protocol witness table for TrainingMessageProvider;
  *a1 = result;
  return result;
}

uint64_t SignalListBuilder.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t SignalListBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

void *sub_231544A68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = SignalListBuilder.__allocating_init(candidateBundleIds:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_231544A90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SignalListBuilder.__allocating_init(context:)(a1);
  *a2 = result;
  return result;
}

void *sub_231544B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v12 = sub_231544CA0(v10, v11, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v12;
}

void *sub_231544CA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[6] = a3;
  a2[7] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 3);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  a2[2] = MEMORY[0x277D84F90];
  return a2;
}

void sub_231544E48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v28 = MEMORY[0x277D84F90];
    v27 = *(a1 + 16);
    sub_23152D598();
    v4 = sub_2315634C4(a1);
    v5 = v27;
    v6 = 0;
    v7 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v7 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_29;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_30;
        }

        ++v6;
        v9 = v4 & 0x3F;
        v10 = 0xE800000000000000;
        v11 = 0x6449656C646E7562;
        switch(*(*(a1 + 48) + v4))
        {
          case 1:
            v11 = 0x6449797469746E65;
            break;
          case 2:
            v11 = 0x73556E69616D6F64;
            v10 = 0xED00006573614365;
            break;
          case 3:
            v11 = 0x7355646572616873;
            v10 = 0xEC00000064497265;
            break;
          case 4:
            v10 = 0xE600000000000000;
            v11 = 0x746E65746E69;
            break;
          default:
            break;
        }

        v12 = *(v28 + 16);
        if (v12 >= *(v28 + 24) >> 1)
        {
          v25 = v2;
          v26 = v6;
          v24 = v3;
          sub_23152D598();
          v9 = v4 & 0x3F;
          v3 = v24;
          v2 = v25;
          v6 = v26;
          v7 = a1 + 56;
          v5 = v27;
        }

        *(v28 + 16) = v12 + 1;
        v13 = v28 + 16 * v12;
        *(v13 + 32) = v11;
        *(v13 + 40) = v10;
        if (v3)
        {
          goto LABEL_34;
        }

        v14 = 1 << *(a1 + 32);
        if (v4 >= v14)
        {
          goto LABEL_31;
        }

        v15 = *(v7 + 8 * v8);
        if ((v15 & (1 << v4)) == 0)
        {
          goto LABEL_32;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_33;
        }

        v16 = v15 & (-2 << v9);
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v8 << 6;
          v18 = v8 + 1;
          v19 = (a1 + 64 + 8 * v8);
          while (v18 < (v14 + 63) >> 6)
          {
            v21 = *v19++;
            v20 = v21;
            v17 += 64;
            ++v18;
            if (v21)
            {
              v22 = v6;
              sub_2314ABA68(v4, v2, 0);
              v7 = a1 + 56;
              v5 = v27;
              v6 = v22;
              v14 = __clz(__rbit64(v20)) + v17;
              goto LABEL_24;
            }
          }

          v23 = v6;
          sub_2314ABA68(v4, v2, 0);
          v7 = a1 + 56;
          v5 = v27;
          v6 = v23;
        }

LABEL_24:
        if (v6 == v5)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v14;
        if (v14 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_29:
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
  }
}

uint64_t sub_231545198()
{
  sub_231586274();
}

uint64_t sub_231545280()
{
  sub_231586274();
}

uint64_t sub_231545348()
{
  sub_231586274();
}

uint64_t sub_2315453F4(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_14_8();
  }

  sub_231586274();
}

uint64_t sub_231545464()
{
  sub_231586274();
}

uint64_t sub_231545524(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_13_9();
      break;
    default:
      break;
  }

  sub_231586274();
}

uint64_t sub_2315455F0()
{
  sub_231586274();
}

uint64_t sub_23154566C()
{
  sub_231586274();
}

uint64_t sub_231545738()
{
  DomainUseCase.rawValue.getter();
  sub_231586274();
}

uint64_t sub_231545798()
{
  sub_231586274();
}

uint64_t sub_23154584C(uint64_t a1, char a2)
{
  sub_231586D14();
  MEMORY[0x231930A00](a2 & 1);
  return sub_231586D44();
}

uint64_t sub_2315458A8()
{
  sub_231586D14();
  DomainUseCase.rawValue.getter();
  OUTLINED_FUNCTION_11_15();

  return sub_231586D44();
}

uint64_t sub_231545910()
{
  sub_231586D14();
  sub_231586274();

  return sub_231586D44();
}

uint64_t sub_2315459A0(uint64_t a1, unsigned __int8 a2)
{
  sub_231586D14();
  MEMORY[0x231930A00](a2);
  return sub_231586D44();
}

uint64_t sub_2315459FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_231586D14();
  a3(a2);
  OUTLINED_FUNCTION_11_15();

  return sub_231586D44();
}

uint64_t sub_231545A50(uint64_t a1, char a2)
{
  sub_231586D14();
  if (!a2)
  {
    OUTLINED_FUNCTION_14_8();
  }

  sub_231586274();

  return sub_231586D44();
}

uint64_t sub_231545B1C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_231586D14();
  a3(v6, a2);
  return sub_231586D44();
}

uint64_t sub_231545B68(uint64_t a1, uint64_t a2)
{
  sub_231586D14();
  MEMORY[0x231930A00](a2);
  return sub_231586D44();
}

uint64_t SignalParameterization.init(types:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_231553E24(a1);
  *a2 = result;
  return result;
}

void SignalParameterization.byBundleId.getter()
{
  OUTLINED_FUNCTION_17_10();
  v2 = *v0;
  if (*(*v0 + 16))
  {
    v3 = *(v2 + 40);
    sub_231586D14();
    sub_231586274();
    v4 = sub_231586D44();
    OUTLINED_FUNCTION_0_81(v4);
    if (v5)
    {
      OUTLINED_FUNCTION_3_32();
      while (2)
      {
        switch(*(*(v2 + 48) + v1))
        {
          case 1:
          case 4:
            goto LABEL_7;
          case 2:
            OUTLINED_FUNCTION_2_32();
            OUTLINED_FUNCTION_9_18();
            goto LABEL_7;
          case 3:
            OUTLINED_FUNCTION_12_12();
LABEL_7:
            v6 = OUTLINED_FUNCTION_16_10();

            if (v6)
            {
              break;
            }

            OUTLINED_FUNCTION_1_37();
            if ((v7 & 1) == 0)
            {
              break;
            }

            continue;
          default:

            goto LABEL_9;
        }

        break;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_16_9();
}

void SignalParameterization.byEntityId.getter()
{
  OUTLINED_FUNCTION_17_10();
  v2 = *v0;
  if (*(*v0 + 16))
  {
    v3 = *(v2 + 40);
    sub_231586D14();
    sub_231586274();
    v4 = sub_231586D44();
    OUTLINED_FUNCTION_0_81(v4);
    if (v5)
    {
      OUTLINED_FUNCTION_3_32();
      while (2)
      {
        switch(*(*(v2 + 48) + v1))
        {
          case 1:

            break;
          case 2:
            OUTLINED_FUNCTION_2_32();
            OUTLINED_FUNCTION_9_18();
            goto LABEL_7;
          case 3:
            OUTLINED_FUNCTION_12_12();
            goto LABEL_7;
          default:
LABEL_7:
            v6 = OUTLINED_FUNCTION_16_10();

            if (v6)
            {
              break;
            }

            OUTLINED_FUNCTION_1_37();
            if ((v7 & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

  OUTLINED_FUNCTION_16_9();
}

void SignalParameterization.byDomainUseCase.getter()
{
  OUTLINED_FUNCTION_17_10();
  v2 = *v0;
  if (*(*v0 + 16))
  {
    OUTLINED_FUNCTION_13_9();
    v3 = *(v2 + 40);
    sub_231586D14();
    sub_231586274();
    v4 = sub_231586D44();
    OUTLINED_FUNCTION_4_27(v4);
    if (v5)
    {
      OUTLINED_FUNCTION_6_21();
      while (2)
      {
        switch(*(*(v2 + 48) + v1))
        {
          case 1:
            OUTLINED_FUNCTION_5_25();
            goto LABEL_7;
          case 2:

            break;
          case 3:
            OUTLINED_FUNCTION_12_12();
            goto LABEL_7;
          default:
LABEL_7:
            v6 = OUTLINED_FUNCTION_15_9();

            if (v6)
            {
              break;
            }

            OUTLINED_FUNCTION_10_14();
            if ((v7 & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

  OUTLINED_FUNCTION_16_9();
}

void SignalParameterization.bySharedUserId.getter()
{
  OUTLINED_FUNCTION_17_10();
  v2 = *v0;
  if (*(*v0 + 16))
  {
    v3 = *(v2 + 40);
    sub_231586D14();
    sub_231586274();
    v4 = sub_231586D44();
    OUTLINED_FUNCTION_4_27(v4);
    if (v5)
    {
      OUTLINED_FUNCTION_6_21();
      while (2)
      {
        switch(*(*(v2 + 48) + v1))
        {
          case 1:
            OUTLINED_FUNCTION_5_25();
            goto LABEL_7;
          case 2:
            OUTLINED_FUNCTION_9_18();
            OUTLINED_FUNCTION_2_32();
            goto LABEL_7;
          case 3:

            break;
          default:
LABEL_7:
            v6 = OUTLINED_FUNCTION_15_9();

            if (v6)
            {
              break;
            }

            OUTLINED_FUNCTION_10_14();
            if ((v7 & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

  OUTLINED_FUNCTION_16_9();
}

void SignalParameterization.byIntent.getter()
{
  OUTLINED_FUNCTION_17_10();
  v2 = *v0;
  if (*(*v0 + 16))
  {
    v3 = *(v2 + 40);
    sub_231586D14();
    sub_231586274();
    v4 = sub_231586D44();
    OUTLINED_FUNCTION_0_81(v4);
    if (v5)
    {
      OUTLINED_FUNCTION_3_32();
      while (2)
      {
        switch(*(*(v2 + 48) + v1))
        {
          case 1:
            OUTLINED_FUNCTION_5_25();
            goto LABEL_7;
          case 2:
            OUTLINED_FUNCTION_9_18();
            OUTLINED_FUNCTION_2_32();
            goto LABEL_7;
          case 4:

            break;
          default:
LABEL_7:
            v6 = sub_231586C44();

            if (v6)
            {
              break;
            }

            OUTLINED_FUNCTION_1_37();
            if ((v7 & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

  OUTLINED_FUNCTION_16_9();
}

uint64_t SignalParameterization.description.getter()
{
  if (!*(*v0 + 16))
  {
    return 1701736302;
  }

  sub_231544E48(*v0);
  v4 = v1;

  sub_231546A58(&v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  sub_2314AA8B4(&qword_280D6FBF8, &qword_27DD5B0E8, &unk_231589320);
  v2 = sub_231586154();

  return v2;
}

uint64_t SignalParameterization.ParameterizationType.rawValue.getter()
{
  result = 0x6449656C646E7562;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_5_25();
      break;
    case 2:
      v2 = OUTLINED_FUNCTION_9_18();
      goto LABEL_6;
    case 3:
      v2 = OUTLINED_FUNCTION_12_12();
LABEL_6:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7355000000000000;
      break;
    case 4:
      result = 0x746E65746E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231546330(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = sub_231586864();
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_231586864();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  if (v7 < v5)
  {
    return 0;
  }

  if (v4)
  {

    sub_231586824();
    _s4NodeCMa();
    sub_23152B510();
    sub_231586554();
    v2 = v31;
    v8 = v32;
    v9 = v33;
    v10 = v34;
    v11 = v35;
  }

  else
  {
    v12 = -1 << *(v2 + 32);
    v8 = v2 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v2 + 56);

    v10 = 0;
  }

  result = _s4NodeCMa();
  v28 = v8;
  v16 = (v9 + 64) >> 6;
LABEL_15:
  while (v2 < 0)
  {
    if (!sub_231586894())
    {
LABEL_34:
      sub_2314A4B70();
      return 1;
    }

    swift_dynamicCast();
    v21 = v11;
    v19 = v30;
    v29 = v21;
    if (!v6)
    {
LABEL_26:
      v27 = v6;
      if (*(a1 + 16))
      {
        v22 = *(a1 + 40);
        sub_231586D14();
        sub_2314AAAAC();
        v23 = sub_231586D44();
        v24 = ~(-1 << *(a1 + 32));
        while (1)
        {
          v25 = v23 & v24;
          if (((*(a1 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
          {
            break;
          }

          v26 = sub_2314AB36C(*(*(a1 + 48) + 8 * v25), v19);
          v23 = v25 + 1;
          if (v26)
          {

            v6 = v27;
            v8 = v28;
            v11 = v29;
            goto LABEL_15;
          }
        }
      }

LABEL_32:
      sub_2314A4B70();
      return 0;
    }

LABEL_22:
    v20 = sub_2315868A4();

    v11 = v29;
    if ((v20 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v17 = v11;
  if (v11)
  {
LABEL_21:
    v29 = (v17 - 1) & v17;
    v19 = *(*(v2 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v17)))));
    v30 = v19;

    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v18 = v10;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v16)
    {
      goto LABEL_34;
    }

    v17 = *(v8 + 8 * v10);
    ++v18;
    if (v17)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231546630(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v27 = a1 + 56;

  v10 = 0;
  v25 = v4;
  v26 = v2;
  v24 = v8;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_10:
      if (!*(a1 + 16))
      {
        break;
      }

      v12 = *(*(v2 + 48) + (__clz(__rbit64(v7)) | (v11 << 6)));
      v13 = *(a1 + 40);
      sub_231586D14();
      sub_231545524(v28, v12);
      v14 = sub_231586D44();
      v15 = -1 << *(a1 + 32);
      v16 = v14 & ~v15;
      if (((*(v27 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v17 = ~v15;
      while (1)
      {
        v18 = 0xE800000000000000;
        v19 = 0x6449656C646E7562;
        switch(*(*(a1 + 48) + v16))
        {
          case 1:
            v19 = 0x6449797469746E65;
            break;
          case 2:
            v19 = 0x73556E69616D6F64;
            v18 = 0xED00006573614365;
            break;
          case 3:
            v19 = 0x7355646572616873;
            v18 = 0xEC00000064497265;
            break;
          case 4:
            v18 = 0xE600000000000000;
            v19 = 0x746E65746E69;
            break;
          default:
            break;
        }

        v20 = 0xE800000000000000;
        v21 = 0x6449656C646E7562;
        switch(v12)
        {
          case 1:
            v21 = 0x6449797469746E65;
            break;
          case 2:
            v21 = 0x73556E69616D6F64;
            v20 = 0xED00006573614365;
            break;
          case 3:
            v21 = 0x7355646572616873;
            v20 = 0xEC00000064497265;
            break;
          case 4:
            v20 = 0xE600000000000000;
            v21 = 0x746E65746E69;
            break;
          default:
            break;
        }

        if (v19 == v21 && v18 == v20)
        {
          break;
        }

        v23 = sub_231586C44();

        if (v23)
        {
          goto LABEL_31;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v27 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

LABEL_31:
      v10 = v11;
      v4 = v25;
      v2 = v26;
      v8 = v24;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_33:

    return 0;
  }

LABEL_7:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

SiriSignals::SignalParameterization::ParameterizationType_optional __swiftcall SignalParameterization.ParameterizationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231586B04();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_231546A1C@<X0>(uint64_t *a1@<X8>)
{
  result = SignalParameterization.ParameterizationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_231546A58(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231562A7C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_231546C4C(v6);
  *a1 = v2;
  return result;
}

unint64_t sub_231546AC8()
{
  result = qword_280D6D008;
  if (!qword_280D6D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6D008);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SignalParameterization.ParameterizationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231546C4C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231586C14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_2315863E4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_231546E08(v7, v8, a1, v4);
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
    return sub_231546D40(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_231546D40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_231586C44();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_231546E08(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_231586C44();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_231586C44()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_231586C44() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_2314F0BEC();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_2314F0BEC();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_23154743C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_231547310(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_231547310(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_231562458(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_23154743C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_23154743C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_2314AA8FC(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_231586C44() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_2314AA8FC(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_231586C44() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_2315475E8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_231547618()
{
  if (qword_280D6EB00 != -1)
  {
    OUTLINED_FUNCTION_0_72();
  }

  OUTLINED_FUNCTION_52();

  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_7_10();
  v2 = *(v0 + *(type metadata accessor for SelectedActionDisambiguationFrequencySignal() + 24));
  sub_231586A54();
  return 0;
}

uint64_t sub_231547714()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v3 = *v0;
  v2 = v0[1];
  *(inited + 32) = *v0;
  *(inited + 40) = v2;
  *(inited + 48) = v3;
  *(inited + 56) = v2;
  swift_bridgeObjectRetain_n();
  return sub_2315860F4();
}

uint64_t sub_231547794()
{
  memcpy(__dst, v0, 0x41uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = NowPlayingCountSignal.id.getter();
  *(inited + 40) = v2;
  v4 = __dst[0];
  v3 = __dst[1];
  if (__dst[1])
  {

    v9 = NowPlayingCountSignal.id.getter();
    v10 = v5;
    MEMORY[0x23192FF80](1029990703, 0xE400000000000000);
    MEMORY[0x23192FF80](v4, v3);

    v6 = v9;
    v7 = v10;
  }

  else
  {
    v6 = NowPlayingCountSignal.id.getter();
  }

  *(inited + 48) = v6;
  *(inited + 56) = v7;
  return sub_2315860F4();
}

uint64_t sub_2315478C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_27DD5AD88 != -1)
  {
    swift_once();
  }

  v2 = qword_27DD5B4D8;
  v1 = unk_27DD5B4E0;
  *(inited + 32) = qword_27DD5B4D8;
  *(inited + 40) = v1;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  swift_bridgeObjectRetain_n();
  return sub_2315860F4();
}

uint64_t sub_23154797C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  *(inited + 32) = (*(v3 + 8))(v2, v3);
  *(inited + 40) = v4;
  v5 = v0[3];
  v6 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v5);
  *(inited + 48) = (*(v6 + 8))(v5, v6);
  *(inited + 56) = v7;
  return sub_2315860F4();
}

uint64_t sub_231547A64()
{
  OUTLINED_FUNCTION_58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_36_1(inited, xmmword_231588340);
  return OUTLINED_FUNCTION_111();
}

uint64_t sub_231547AD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_109(inited, xmmword_231588340);
  return OUTLINED_FUNCTION_121();
}

uint64_t sub_231547B38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_66(inited, xmmword_231588340);
  return OUTLINED_FUNCTION_121();
}

uint64_t sub_231547B9C(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_3_5();
    swift_once();
  }

  v8 = *a3;
  v9 = *a4;
  *(inited + 32) = *a3;
  *(inited + 40) = v9;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  swift_bridgeObjectRetain_n();
  return OUTLINED_FUNCTION_111();
}

uint64_t sub_231547C50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](v1);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_280D6CB18 != -1)
  {
    swift_once();
  }

  v2 = qword_280D6CB20;
  v3 = *algn_280D6CB28;
  MEMORY[0x23192FF80](qword_280D6CB20, *algn_280D6CB28);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  v4 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](v4);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  MEMORY[0x23192FF80](v2, v3);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  return sub_2315860F4();
}

uint64_t sub_231547E2C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_280D6C988 != -1)
  {
    swift_once();
  }

  v4 = 0x636973754DLL;
  swift_beginAccess();
  v11 = qword_280D6C990;
  v13 = qword_280D6C998;
  v5 = 0xE500000000000000;
  v6 = 0x636973754DLL;
  switch(a2)
  {
    case 1:
      v7 = 1701079382;
      goto LABEL_8;
    case 2:
      v5 = 0xE700000000000000;
      v6 = 0x74736163646F50;
      break;
    case 3:
      v7 = 1768186194;
LABEL_8:
      v6 = v7 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 4:
      v6 = 0x6F6F626F69647541;
      v5 = 0xE90000000000006BLL;
      break;
    case 5:
      v5 = 0xE700000000000000;
      v6 = 0x6C6172656E6547;
      break;
    default:
      break;
  }

  MEMORY[0x23192FF80](v6, v5);

  MEMORY[0x23192FF80](0x6C616E676953, 0xE600000000000000);
  *(inited + 32) = v11;
  *(inited + 40) = v13;
  v12 = qword_280D6C990;
  v14 = qword_280D6C998;
  v8 = 0xE500000000000000;
  switch(a2)
  {
    case 0:
      break;
    case 1:
      v9 = 1701079382;
      goto LABEL_15;
    case 2:
      v8 = 0xE700000000000000;
      v4 = 0x74736163646F50;
      break;
    case 3:
      v9 = 1768186194;
LABEL_15:
      v4 = v9 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 4:
      v4 = 0x6F6F626F69647541;
      v8 = 0xE90000000000006BLL;
      break;
    case 5:
      v8 = 0xE700000000000000;
      v4 = 0x6C6172656E6547;
      break;
    default:
      JUMPOUT(0);
  }

  MEMORY[0x23192FF80](v4, v8);

  MEMORY[0x23192FF80](0x6C616E676953, 0xE600000000000000);
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  return sub_2315860F4();
}

uint64_t sub_2315480B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_27DD5AE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27DD5BB40;
  v2 = qword_27DD5BB48;

  MEMORY[0x23192FF80](v1, v2);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  v4 = qword_27DD5BB40;
  v3 = qword_27DD5BB48;

  MEMORY[0x23192FF80](v4, v3);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  return sub_2315860F4();
}

uint64_t sub_231548258()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_280D6EBB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280D6EBC0;
  v3 = qword_280D6EBC8;

  MEMORY[0x23192FF80](v2, v3);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  v4 = *(v0 + *(type metadata accessor for SelectedAppDisambiguationFrequencySignal() + 24));
  sub_231586A54();
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  v6 = qword_280D6EBC0;
  v5 = qword_280D6EBC8;

  MEMORY[0x23192FF80](v6, v5);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  return sub_2315860F4();
}

uint64_t sub_231548410()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_280D6EB00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280D6EB08;
  v3 = qword_280D6EB10;

  MEMORY[0x23192FF80](v2, v3);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  v4 = *(v0 + *(type metadata accessor for SelectedActionDisambiguationFrequencySignal() + 24));
  sub_231586A54();
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  v6 = qword_280D6EB08;
  v5 = qword_280D6EB10;

  MEMORY[0x23192FF80](v6, v5);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  return sub_2315860F4();
}

uint64_t SignalProviding.subSignalIDToCacheKeyMapping.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v4 = *(a2 + 16);
  v5 = OUTLINED_FUNCTION_18_3();
  *(inited + 32) = v6(v5);
  *(inited + 40) = v7;
  v8 = *(a2 + 24);
  v9 = OUTLINED_FUNCTION_18_3();
  *(inited + 48) = v10(v9);
  *(inited + 56) = v11;
  return sub_2315860F4();
}

uint64_t SignalProviding.adaptCached(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 8) = v3;
  return sub_2314A5168(v2, v3);
}

uint64_t sub_231548744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientInDayLightHourSignal;
  *(v0 + 64) = &protocol witness table for ClientInDayLightHourSignal;
  if (qword_27DD5AD58 != -1)
  {
    swift_once();
  }

  v1 = unk_27DD5B390;
  *(v0 + 32) = qword_27DD5B388;
  *(v0 + 40) = v1;

  return v0;
}

uint64_t sub_2315487F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientRegionSignal;
  *(v0 + 64) = &protocol witness table for ClientRegionSignal;
  *(v0 + 32) = swift_allocObject();
  ClientRegionSignal.init()();
  return v0;
}

uint64_t sub_231548878()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for ClientTimeRangeSignal;
  *(v0 + 64) = &protocol witness table for ClientTimeRangeSignal;
  if (qword_280D6D2F8 != -1)
  {
    swift_once();
  }

  v1 = *algn_280D6D308;
  *(v0 + 32) = qword_280D6D300;
  *(v0 + 40) = v1;

  return v0;
}

uint64_t sub_231548920()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for DeviceClassSignal;
  *(v0 + 64) = &protocol witness table for DeviceClassSignal;
  if (qword_280D6F8F8 != -1)
  {
    swift_once();
  }

  v1 = unk_280D6F908;
  *(v0 + 32) = qword_280D6F900;
  *(v0 + 40) = v1;

  return v0;
}

uint64_t sub_2315489C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Motion];
  swift_unknownObjectRelease();
  v2 = [v1 Activity];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for DeviceMotionStateSignal;
  *(v0 + 64) = &protocol witness table for DeviceMotionStateSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F258;
  v3[5] = qword_280D6F250;
  v3[6] = v4;
  v3[7] = &unk_28460FF28;
  v3[2] = v2;
  v3[3] = sub_2314E378C;
  v3[4] = 0;

  return v0;
}

uint64_t sub_231548CB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() CarPlay];
  swift_unknownObjectRelease();
  v2 = [v1 Connected];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for IsCarPlayConnectedSignal;
  *(v0 + 64) = &protocol witness table for IsCarPlayConnectedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F170 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F180;
  v3[5] = qword_280D6F178;
  v3[6] = v4;
  v3[2] = v2;
  v3[3] = sub_23151532C;
  v3[4] = 0;

  return v0;
}

uint64_t sub_231548E0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v2 = [v1 ScreenLocked];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for IsScreenLockedSignal;
  *(v0 + 64) = &protocol witness table for IsScreenLockedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F798 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F7A8;
  v3[5] = qword_280D6F7A0;
  v3[6] = v4;
  v3[7] = &unk_284610070;
  v3[2] = v2;
  v3[3] = sub_2315161B4;
  v3[4] = 0;

  return v0;
}

uint64_t sub_231548F70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Health];
  swift_unknownObjectRelease();
  v2 = [v1 Workout];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for ClientWorkoutSignal;
  *(v0 + 64) = &protocol witness table for ClientWorkoutSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_27DD5AE18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27DD5BA60;
  v3[5] = qword_27DD5BA58;
  v3[6] = v4;
  v3[7] = &unk_2846100C8;
  v3[2] = v2;
  v3[3] = sub_231517B34;
  v3[4] = 0;

  return v0;
}

void static SignalProviding.instances(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, ValueMetadata *a13, _UNKNOWN **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_43_0();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v31 = v30;
  v33 = *v32;
  v34 = v32[1];
  v35 = v32[2];
  v36 = v32[3];
  v37 = v32[4];
  v38 = v32[5];
  a13 = &type metadata for SignalComputationContext;
  a14 = &protocol witness table for SignalComputationContext;
  v39 = swift_allocObject();
  a10 = v39;
  v39[2] = v33;
  v39[3] = v34;
  v39[4] = v35;
  v39[5] = v36;
  v39[6] = v37;
  v39[7] = v38;
  v40 = *(v29 + 104);

  v40(&a10, v31, v29);
  __swift_destroy_boxed_opaque_existential_1(&a10);
  OUTLINED_FUNCTION_44();
}

uint64_t static SignalProviding.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_231549278(uint64_t (*a1)(void), uint64_t a2, void (*a3)(uint64_t (*)(), void, uint64_t))
{
  v6 = sub_2315859F4();
  v7 = OUTLINED_FUNCTION_19(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_231588340;
  *(v13 + 56) = a1(0);
  *(v13 + 64) = a2;
  __swift_allocate_boxed_opaque_existential_1((v13 + 32));
  sub_2315859E4();
  a3(sub_23149A718, 0, v12);
  return v13;
}

uint64_t sub_23154936C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Motion];
  swift_unknownObjectRelease();
  v2 = [v1 Activity];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for DeviceMotionStateSignal;
  *(v0 + 64) = &protocol witness table for DeviceMotionStateSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F258;
  v3[5] = qword_280D6F250;
  v3[6] = v4;
  v3[7] = &unk_284610608;
  v3[2] = v2;
  v3[3] = sub_2314E378C;
  v3[4] = 0;

  return v0;
}

uint64_t sub_2315494EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v7[3] = &type metadata for BiomeSQLQueryResultProvider;
  v7[4] = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v0 + 56) = &type metadata for ForegroundAppRecencySignal;
  *(v0 + 64) = &protocol witness table for ForegroundAppRecencySignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  if (qword_280D6F158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280D6F168;
  *(v1 + 16) = qword_280D6F160;
  *(v1 + 24) = v2;
  sub_2314A2C74(v7, v6);
  type metadata accessor for BiomeQueriesAppInFocus();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 16) = MEMORY[0x277D84F90];
  sub_23149FD3C(v6, v3 + 24);
  *(v1 + 32) = v3;
  *(v1 + 40) = sub_2314E03E4;
  *(v1 + 48) = 0;

  __swift_destroy_boxed_opaque_existential_1(v7);
  *(v1 + 56) = v4;
  *(v1 + 64) = -1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  return v0;
}

uint64_t sub_231549670()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v2 = [v1 ScreenLocked];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for IsScreenLockedSignal;
  *(v0 + 64) = &protocol witness table for IsScreenLockedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F798 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F7A8;
  v3[5] = qword_280D6F7A0;
  v3[6] = v4;
  v3[7] = &unk_284610688;
  v3[2] = v2;
  v3[3] = sub_2315161B4;
  v3[4] = 0;

  return v0;
}

uint64_t sub_2315497D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() Health];
  swift_unknownObjectRelease();
  v2 = [v1 Workout];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for ClientWorkoutSignal;
  *(v0 + 64) = &protocol witness table for ClientWorkoutSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_27DD5AE18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27DD5BA60;
  v3[5] = qword_27DD5BA58;
  v3[6] = v4;
  v3[7] = &unk_2846106E0;
  v3[2] = v2;
  v3[3] = sub_231517B34;
  v3[4] = 0;

  return v0;
}

uint64_t sub_231549944()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v6 = &type metadata for SubscriptionStatusProvider;
  v7 = &off_28461D0D8;
  *(v0 + 56) = &type metadata for MediaSubscriptionStatusSignal;
  *(v0 + 64) = &protocol witness table for MediaSubscriptionStatusSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  if (qword_280D6C970 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280D6C980;
  *(v1 + 16) = qword_280D6C978;
  *(v1 + 24) = v2;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 32) = &unk_284610788;
  *(v1 + 40) = v3;
  *(v1 + 48) = v3;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  sub_23149FD3C(&v5, v1 + 88);

  return v0;
}

uint64_t sub_231549A94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for NowPlayingSignal;
  *(v0 + 64) = &protocol witness table for NowPlayingSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  if (qword_280D6F918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280D6F928;
  *(v1 + 16) = qword_280D6F920;
  *(v1 + 24) = v2;
  *(v1 + 32) = &unk_2846107B8;
  v3 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();

  v7 = MEMORY[0x277D84F90];
  *(v1 + 40) = sub_231528564(MEMORY[0x277D84F90], sub_23149A718, 0, v6);
  *(v1 + 48) = v7;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  return v0;
}

uint64_t sub_231549BE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for NowPlayingStateSignal;
  *(v0 + 64) = &protocol witness table for NowPlayingStateSignal;
  if (qword_280D6F610 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_280D6F620;
  *(v0 + 32) = qword_280D6F618;
  *(v0 + 40) = v1;
  v2 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();

  *(v0 + 48) = sub_231528564(MEMORY[0x277D84F90], sub_23149A718, 0, v5);
  return v0;
}

uint64_t sub_231549D04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 Install];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeSinceAppLastInstalledSignal;
  *(v0 + 64) = &protocol witness table for TimeSinceAppLastInstalledSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6C958 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6C968;
  *(v3 + 16) = qword_280D6C960;
  *(v3 + 24) = v4;
  v5 = MEMORY[0x277D84F90];
  *(v3 + 32) = MEMORY[0x277D84F90];
  *(v3 + 40) = v2;
  *(v3 + 48) = sub_2314E03E4;
  *(v3 + 56) = 0;
  *(v3 + 64) = v5;
  *(v3 + 72) = -1;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 1;

  return v0;
}

uint64_t sub_231549E78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeSinceAppLastLaunchedSignal;
  *(v0 + 64) = &protocol witness table for TimeSinceAppLastLaunchedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F020 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6F030;
  *(v3 + 16) = qword_280D6F028;
  *(v3 + 24) = v4;
  *(v3 + 32) = v2;
  *(v3 + 40) = sub_2314E03E4;
  *(v3 + 48) = 0;
  *(v3 + 56) = MEMORY[0x277D84F90];
  *(v3 + 64) = -1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;

  return v0;
}

uint64_t sub_231549FEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeSpentInAppAffinityScore;
  *(v0 + 64) = &protocol witness table for TimeSpentInAppAffinityScore;
  if (qword_280D6C9A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_280D6C9B8;
  *(v0 + 32) = qword_280D6C9B0;
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;

  return v0;
}

uint64_t sub_23154A110()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeTodaySpentInApp;
  *(v0 + 64) = &protocol witness table for TimeTodaySpentInApp;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_27DD5AE50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27DD5C1A0;
  *(v3 + 16) = qword_27DD5C198;
  *(v3 + 24) = v4;
  *(v3 + 32) = v2;
  *(v3 + 40) = sub_2314E03E4;
  *(v3 + 48) = 0;
  *(v3 + 56) = MEMORY[0x277D84F90];
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;

  return v0;
}

uint64_t sub_23154A280()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TotalTimeSpentInApp;
  *(v0 + 64) = &protocol witness table for TotalTimeSpentInApp;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6D5F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280D6D608;
  *(v3 + 16) = qword_280D6D600;
  *(v3 + 24) = v4;
  v5 = MEMORY[0x277D84F90];
  *(v3 + 32) = v2;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 1;

  return v0;
}

uint64_t sub_23154A3DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for WifiStateSignal;
  *(v0 + 64) = &protocol witness table for WifiStateSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  v2 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v3 = [v2 Wireless];
  swift_unknownObjectRelease();
  v4 = [v3 WiFi];
  swift_unknownObjectRelease();
  if (qword_27DD5AE58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_27DD5C1B0;
  v5 = qword_27DD5C1B8;
  v1[2] = v4;
  v1[3] = sub_23151532C;
  v1[4] = 0;
  v1[5] = v6;
  v1[6] = v5;

  return v0;
}

uint64_t sub_23154A560()
{
  v1 = *v0;
  result = MEMORY[0x277D84F90];
  if (*(*v0 + 16))
  {
    OUTLINED_FUNCTION_89();
    v3 = (v1 + 32);
    result = v8;
    do
    {
      v4 = *v3++;
      switch(v4)
      {
        case 1:
        case 2:
          OUTLINED_FUNCTION_138();
          break;
        default:
          break;
      }

      v5 = OUTLINED_FUNCTION_139(result);
      if (v6)
      {
        OUTLINED_FUNCTION_143();
        v5 = v8;
      }

      result = OUTLINED_FUNCTION_106(v5);
    }

    while (!v7);
  }

  return result;
}

uint64_t sub_23154A66C(uint64_t a1)
{
  v34 = sub_231585B14();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionDisambiguationFrequencySignal();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = sub_23154A560();
  v36 = a1;
  v14 = sub_2314DCE50(sub_23155BBB4, v35, v13);

  v15 = *(v14 + 16);
  v16 = *(sub_23154A560() + 16);

  if (v15 == v16)
  {
    v38 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v17 = sub_231586154();
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v18 = sub_231585FF4();
    __swift_project_value_buffer(v18, qword_280D72248);
    sub_2314A6578();
    sub_2314A6578();
    v19 = a1;
    v20 = v34;
    (*(v2 + 16))(v5, v19, v34);
    v21 = sub_231585FE4();
    v22 = sub_2315865E4();
    if (os_log_type_enabled(v21, v22))
    {
      v33 = v22;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315650;
      v38 = 0;
      v39 = 0xE000000000000000;
      v40 = v24;
      if (qword_280D6EDE8 != -1)
      {
        swift_once();
      }

      MEMORY[0x23192FF80](qword_280D6EDF0, *algn_280D6EDF8);
      MEMORY[0x23192FF80](46, 0xE100000000000000);
      v37 = v12[*(v6 + 24)];
      sub_231586A54();
      sub_23155B9E0(v12, type metadata accessor for ActionDisambiguationFrequencySignal);
      v25 = sub_2314A22E8();

      *(v23 + 4) = v25;
      *(v23 + 12) = 2080;
      v26 = sub_23154A560();
      sub_23155B9E0(v10, type metadata accessor for ActionDisambiguationFrequencySignal);
      MEMORY[0x231930080](v26, MEMORY[0x277D837D0]);

      v27 = sub_2314A22E8();

      *(v23 + 14) = v27;
      *(v23 + 22) = 2080;
      sub_231585AF4();
      sub_231585E34();
      sub_2315860E4();

      (*(v2 + 8))(v5, v34);
      v28 = sub_2314A22E8();

      *(v23 + 24) = v28;
      _os_log_impl(&dword_231496000, v21, v33, "%s: >=1 of %s missing from interaction fields %s.", v23, 0x20u);
      v29 = v32;
      swift_arrayDestroy();
      MEMORY[0x231931280](v29, -1, -1);
      MEMORY[0x231931280](v23, -1, -1);
    }

    else
    {
      sub_23155B9E0(v10, type metadata accessor for ActionDisambiguationFrequencySignal);

      (*(v2 + 8))(v5, v20);
      sub_23155B9E0(v12, type metadata accessor for ActionDisambiguationFrequencySignal);
    }

    return 0;
  }

  return v17;
}

uint64_t sub_23154ABA4(uint64_t a1)
{
  v34 = sub_231585B14();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppDisambiguationFrequencySignal();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = sub_23154A560();
  v36 = a1;
  v14 = sub_2314DCE50(sub_23155BBB4, v35, v13);

  v15 = *(v14 + 16);
  v16 = *(sub_23154A560() + 16);

  if (v15 == v16)
  {
    v38 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v17 = sub_231586154();
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v18 = sub_231585FF4();
    __swift_project_value_buffer(v18, qword_280D72248);
    sub_2314A6578();
    sub_2314A6578();
    v19 = a1;
    v20 = v34;
    (*(v2 + 16))(v5, v19, v34);
    v21 = sub_231585FE4();
    v22 = sub_2315865E4();
    if (os_log_type_enabled(v21, v22))
    {
      v33 = v22;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315650;
      v38 = 0;
      v39 = 0xE000000000000000;
      v40 = v24;
      if (qword_280D6F000 != -1)
      {
        swift_once();
      }

      MEMORY[0x23192FF80](qword_280D6F008, *algn_280D6F010);
      MEMORY[0x23192FF80](46, 0xE100000000000000);
      v37 = v12[*(v6 + 24)];
      sub_231586A54();
      sub_23155B9E0(v12, type metadata accessor for AppDisambiguationFrequencySignal);
      v25 = sub_2314A22E8();

      *(v23 + 4) = v25;
      *(v23 + 12) = 2080;
      v26 = sub_23154A560();
      sub_23155B9E0(v10, type metadata accessor for AppDisambiguationFrequencySignal);
      MEMORY[0x231930080](v26, MEMORY[0x277D837D0]);

      v27 = sub_2314A22E8();

      *(v23 + 14) = v27;
      *(v23 + 22) = 2080;
      sub_231585AF4();
      sub_231585E34();
      sub_2315860E4();

      (*(v2 + 8))(v5, v34);
      v28 = sub_2314A22E8();

      *(v23 + 24) = v28;
      _os_log_impl(&dword_231496000, v21, v33, "%s: >=1 of %s missing from interaction fields %s.", v23, 0x20u);
      v29 = v32;
      swift_arrayDestroy();
      MEMORY[0x231931280](v29, -1, -1);
      MEMORY[0x231931280](v23, -1, -1);
    }

    else
    {
      sub_23155B9E0(v10, type metadata accessor for AppDisambiguationFrequencySignal);

      (*(v2 + 8))(v5, v20);
      sub_23155B9E0(v12, type metadata accessor for AppDisambiguationFrequencySignal);
    }

    return 0;
  }

  return v17;
}

uint64_t sub_23154B0DC(uint64_t a1)
{
  v2 = sub_231585B14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppDisambiguationResultSignal = type metadata accessor for LastAppDisambiguationResultSignal();
  v8 = *(*(AppDisambiguationResultSignal - 8) + 64);
  v9 = MEMORY[0x28223BE20](AppDisambiguationResultSignal - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v31 - v12);
  v14 = sub_231555378();
  v34 = a1;
  v15 = sub_2314DCE50(sub_23155BBB4, v33, v14);

  v16 = *(v15 + 16);
  v17 = *(sub_231555378() + 16);

  if (v16 == v17)
  {
    v35 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v18 = sub_231586154();
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v19 = sub_231585FF4();
    __swift_project_value_buffer(v19, qword_280D72248);
    sub_2314A6578();
    sub_2314A6578();
    (*(v3 + 16))(v6, a1, v2);
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v22 = 136315650;
      v31 = v2;
      v23 = *v13;
      v24 = v13[1];

      sub_23155B9E0(v13, type metadata accessor for LastAppDisambiguationResultSignal);
      v25 = sub_2314A22E8();

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = sub_231555378();
      sub_23155B9E0(v11, type metadata accessor for LastAppDisambiguationResultSignal);
      MEMORY[0x231930080](v26, MEMORY[0x277D837D0]);

      v27 = sub_2314A22E8();

      *(v22 + 14) = v27;
      *(v22 + 22) = 2080;
      sub_231585AF4();
      sub_231585E34();
      sub_2315860E4();

      (*(v3 + 8))(v6, v31);
      v28 = sub_2314A22E8();

      *(v22 + 24) = v28;
      _os_log_impl(&dword_231496000, v20, v21, "%s: >=1 of %s missing from interaction fields %s.", v22, 0x20u);
      v29 = v32;
      swift_arrayDestroy();
      MEMORY[0x231931280](v29, -1, -1);
      MEMORY[0x231931280](v22, -1, -1);
    }

    else
    {
      sub_23155B9E0(v11, type metadata accessor for LastAppDisambiguationResultSignal);

      (*(v3 + 8))(v6, v2);
      sub_23155B9E0(v13, type metadata accessor for LastAppDisambiguationResultSignal);
    }

    return 0;
  }

  return v18;
}

uint64_t sub_23154B5B4(uint64_t a1)
{
  v2 = sub_231585B14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppDisambiguationRecencySignal = type metadata accessor for LastAppDisambiguationRecencySignal();
  v8 = *(*(AppDisambiguationRecencySignal - 8) + 64);
  v9 = MEMORY[0x28223BE20](AppDisambiguationRecencySignal - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v31 - v12);
  v14 = sub_231555378();
  v34 = a1;
  v15 = sub_2314DCE50(sub_23155BBB4, v33, v14);

  v16 = *(v15 + 16);
  v17 = *(sub_231555378() + 16);

  if (v16 == v17)
  {
    v35 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v18 = sub_231586154();
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v19 = sub_231585FF4();
    __swift_project_value_buffer(v19, qword_280D72248);
    sub_2314A6578();
    sub_2314A6578();
    (*(v3 + 16))(v6, a1, v2);
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v22 = 136315650;
      v31 = v2;
      v23 = *v13;
      v24 = v13[1];

      sub_23155B9E0(v13, type metadata accessor for LastAppDisambiguationRecencySignal);
      v25 = sub_2314A22E8();

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = sub_231555378();
      sub_23155B9E0(v11, type metadata accessor for LastAppDisambiguationRecencySignal);
      MEMORY[0x231930080](v26, MEMORY[0x277D837D0]);

      v27 = sub_2314A22E8();

      *(v22 + 14) = v27;
      *(v22 + 22) = 2080;
      sub_231585AF4();
      sub_231585E34();
      sub_2315860E4();

      (*(v3 + 8))(v6, v31);
      v28 = sub_2314A22E8();

      *(v22 + 24) = v28;
      _os_log_impl(&dword_231496000, v20, v21, "%s: >=1 of %s missing from interaction fields %s.", v22, 0x20u);
      v29 = v32;
      swift_arrayDestroy();
      MEMORY[0x231931280](v29, -1, -1);
      MEMORY[0x231931280](v22, -1, -1);
    }

    else
    {
      sub_23155B9E0(v11, type metadata accessor for LastAppDisambiguationRecencySignal);

      (*(v3 + 8))(v6, v2);
      sub_23155B9E0(v13, type metadata accessor for LastAppDisambiguationRecencySignal);
    }

    return 0;
  }

  return v18;
}

uint64_t sub_23154BA8C(uint64_t a1)
{
  v2 = sub_231585B14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActionDisambiguationResultSignal = type metadata accessor for LastActionDisambiguationResultSignal();
  v8 = *(*(ActionDisambiguationResultSignal - 8) + 64);
  v9 = MEMORY[0x28223BE20](ActionDisambiguationResultSignal - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v31 - v12);
  v14 = sub_231555378();
  v34 = a1;
  v15 = sub_2314DCE50(sub_23155BBB4, v33, v14);

  v16 = *(v15 + 16);
  v17 = *(sub_231555378() + 16);

  if (v16 == v17)
  {
    v35 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v18 = sub_231586154();
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v19 = sub_231585FF4();
    __swift_project_value_buffer(v19, qword_280D72248);
    sub_2314A6578();
    sub_2314A6578();
    (*(v3 + 16))(v6, a1, v2);
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v22 = 136315650;
      v31 = v2;
      v23 = *v13;
      v24 = v13[1];

      sub_23155B9E0(v13, type metadata accessor for LastActionDisambiguationResultSignal);
      v25 = sub_2314A22E8();

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = sub_231555378();
      sub_23155B9E0(v11, type metadata accessor for LastActionDisambiguationResultSignal);
      MEMORY[0x231930080](v26, MEMORY[0x277D837D0]);

      v27 = sub_2314A22E8();

      *(v22 + 14) = v27;
      *(v22 + 22) = 2080;
      sub_231585AF4();
      sub_231585E34();
      sub_2315860E4();

      (*(v3 + 8))(v6, v31);
      v28 = sub_2314A22E8();

      *(v22 + 24) = v28;
      _os_log_impl(&dword_231496000, v20, v21, "%s: >=1 of %s missing from interaction fields %s.", v22, 0x20u);
      v29 = v32;
      swift_arrayDestroy();
      MEMORY[0x231931280](v29, -1, -1);
      MEMORY[0x231931280](v22, -1, -1);
    }

    else
    {
      sub_23155B9E0(v11, type metadata accessor for LastActionDisambiguationResultSignal);

      (*(v3 + 8))(v6, v2);
      sub_23155B9E0(v13, type metadata accessor for LastActionDisambiguationResultSignal);
    }

    return 0;
  }

  return v18;
}

uint64_t sub_23154BF64(uint64_t a1)
{
  v2 = sub_231585B14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActionDisambiguationRecencySignal = type metadata accessor for LastActionDisambiguationRecencySignal();
  v8 = *(*(ActionDisambiguationRecencySignal - 8) + 64);
  v9 = MEMORY[0x28223BE20](ActionDisambiguationRecencySignal - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v31 - v12);
  v14 = sub_231555378();
  v34 = a1;
  v15 = sub_2314DCE50(sub_23155BBB4, v33, v14);

  v16 = *(v15 + 16);
  v17 = *(sub_231555378() + 16);

  if (v16 == v17)
  {
    v35 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v18 = sub_231586154();
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v19 = sub_231585FF4();
    __swift_project_value_buffer(v19, qword_280D72248);
    sub_2314A6578();
    sub_2314A6578();
    (*(v3 + 16))(v6, a1, v2);
    v20 = sub_231585FE4();
    v21 = sub_2315865E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v22 = 136315650;
      v31 = v2;
      v23 = *v13;
      v24 = v13[1];

      sub_23155B9E0(v13, type metadata accessor for LastActionDisambiguationRecencySignal);
      v25 = sub_2314A22E8();

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = sub_231555378();
      sub_23155B9E0(v11, type metadata accessor for LastActionDisambiguationRecencySignal);
      MEMORY[0x231930080](v26, MEMORY[0x277D837D0]);

      v27 = sub_2314A22E8();

      *(v22 + 14) = v27;
      *(v22 + 22) = 2080;
      sub_231585AF4();
      sub_231585E34();
      sub_2315860E4();

      (*(v3 + 8))(v6, v31);
      v28 = sub_2314A22E8();

      *(v22 + 24) = v28;
      _os_log_impl(&dword_231496000, v20, v21, "%s: >=1 of %s missing from interaction fields %s.", v22, 0x20u);
      v29 = v32;
      swift_arrayDestroy();
      MEMORY[0x231931280](v29, -1, -1);
      MEMORY[0x231931280](v22, -1, -1);
    }

    else
    {
      sub_23155B9E0(v11, type metadata accessor for LastActionDisambiguationRecencySignal);

      (*(v3 + 8))(v6, v2);
      sub_23155B9E0(v13, type metadata accessor for LastActionDisambiguationRecencySignal);
    }

    return 0;
  }

  return v18;
}

uint64_t sub_23154C43C(uint64_t a1)
{
  v36 = sub_231585B14();
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v36);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SelectedAppDisambiguationFrequencySignal();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = sub_23154A560();
  v38 = a1;
  v14 = sub_2314DCE50(sub_23155AB5C, v37, v13);

  v15 = *(v14 + 16);
  v16 = *(sub_23154A560() + 16);

  if (v15 == v16)
  {
    v40 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v17 = sub_231586154();
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v18 = sub_231585FF4();
    __swift_project_value_buffer(v18, qword_280D72248);
    sub_2314A6578();
    sub_2314A6578();
    v19 = a1;
    v20 = v36;
    (*(v2 + 16))(v5, v19, v36);
    v21 = sub_231585FE4();
    v22 = sub_2315865E4();
    if (os_log_type_enabled(v21, v22))
    {
      v35 = v22;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = v24;
      *v23 = 136315650;
      v41 = 0;
      v42 = 0xE000000000000000;
      v43 = v24;
      if (qword_280D6EBB8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v26 = qword_280D6EBC0;
      v25 = qword_280D6EBC8;

      MEMORY[0x23192FF80](v26, v25);

      MEMORY[0x23192FF80](46, 0xE100000000000000);
      v39 = v12[*(v6 + 24)];
      sub_231586A54();
      sub_23155B9E0(v12, type metadata accessor for SelectedAppDisambiguationFrequencySignal);
      v27 = sub_2314A22E8();

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = sub_23154A560();
      sub_23155B9E0(v10, type metadata accessor for SelectedAppDisambiguationFrequencySignal);
      MEMORY[0x231930080](v28, MEMORY[0x277D837D0]);

      v29 = sub_2314A22E8();

      *(v23 + 14) = v29;
      *(v23 + 22) = 2080;
      sub_231585AF4();
      sub_231585E34();
      sub_2315860E4();

      (*(v2 + 8))(v5, v36);
      v30 = sub_2314A22E8();

      *(v23 + 24) = v30;
      _os_log_impl(&dword_231496000, v21, v35, "%s: >=1 of %s missing from interaction fields %s.", v23, 0x20u);
      v31 = v34;
      swift_arrayDestroy();
      MEMORY[0x231931280](v31, -1, -1);
      MEMORY[0x231931280](v23, -1, -1);
    }

    else
    {
      sub_23155B9E0(v10, type metadata accessor for SelectedAppDisambiguationFrequencySignal);

      (*(v2 + 8))(v5, v20);
      sub_23155B9E0(v12, type metadata accessor for SelectedAppDisambiguationFrequencySignal);
    }

    return 0;
  }

  return v17;
}

uint64_t sub_23154C9A0(uint64_t a1)
{
  v36 = sub_231585B14();
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v36);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SelectedActionDisambiguationFrequencySignal();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = sub_23154A560();
  v38 = a1;
  v14 = sub_2314DCE50(sub_23155BBB4, v37, v13);

  v15 = *(v14 + 16);
  v16 = *(sub_23154A560() + 16);

  if (v15 == v16)
  {
    v40 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v17 = sub_231586154();
  }

  else
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v18 = sub_231585FF4();
    __swift_project_value_buffer(v18, qword_280D72248);
    sub_2314A6578();
    sub_2314A6578();
    v19 = a1;
    v20 = v36;
    (*(v2 + 16))(v5, v19, v36);
    v21 = sub_231585FE4();
    v22 = sub_2315865E4();
    if (os_log_type_enabled(v21, v22))
    {
      v35 = v22;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = v24;
      *v23 = 136315650;
      v41 = 0;
      v42 = 0xE000000000000000;
      v43 = v24;
      if (qword_280D6EB00 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v26 = qword_280D6EB08;
      v25 = qword_280D6EB10;

      MEMORY[0x23192FF80](v26, v25);

      MEMORY[0x23192FF80](46, 0xE100000000000000);
      v39 = v12[*(v6 + 24)];
      sub_231586A54();
      sub_23155B9E0(v12, type metadata accessor for SelectedActionDisambiguationFrequencySignal);
      v27 = sub_2314A22E8();

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = sub_23154A560();
      sub_23155B9E0(v10, type metadata accessor for SelectedActionDisambiguationFrequencySignal);
      MEMORY[0x231930080](v28, MEMORY[0x277D837D0]);

      v29 = sub_2314A22E8();

      *(v23 + 14) = v29;
      *(v23 + 22) = 2080;
      sub_231585AF4();
      sub_231585E34();
      sub_2315860E4();

      (*(v2 + 8))(v5, v36);
      v30 = sub_2314A22E8();

      *(v23 + 24) = v30;
      _os_log_impl(&dword_231496000, v21, v35, "%s: >=1 of %s missing from interaction fields %s.", v23, 0x20u);
      v31 = v34;
      swift_arrayDestroy();
      MEMORY[0x231931280](v31, -1, -1);
      MEMORY[0x231931280](v23, -1, -1);
    }

    else
    {
      sub_23155B9E0(v10, type metadata accessor for SelectedActionDisambiguationFrequencySignal);

      (*(v2 + 8))(v5, v20);
      sub_23155B9E0(v12, type metadata accessor for SelectedActionDisambiguationFrequencySignal);
    }

    return 0;
  }

  return v17;
}

uint64_t sub_23154CF04()
{
  if (qword_280D6EBB8 != -1)
  {
    OUTLINED_FUNCTION_0_73();
  }

  OUTLINED_FUNCTION_52();

  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_7_10();
  v2 = *(v0 + *(type metadata accessor for SelectedAppDisambiguationFrequencySignal() + 24));
  sub_231586A54();
  return 0;
}

uint64_t sub_23154CFC8()
{
  if (qword_27DD5AE30 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_52();

  OUTLINED_FUNCTION_112();

  OUTLINED_FUNCTION_7_10();
  sub_231586A54();
  return 0;
}

uint64_t sub_23154D08C()
{
  if (qword_280D6C988 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_22_4();
  v2 = qword_280D6C990;

  v0 = OUTLINED_FUNCTION_18_3();
  MEMORY[0x23192FF80](v0);

  MEMORY[0x23192FF80](0x6C616E676953, 0xE600000000000000);
  return v2;
}

uint64_t sub_23154D1D4()
{
  v0 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](v0);

  OUTLINED_FUNCTION_7_10();
  if (qword_280D6CB18 != -1)
  {
    swift_once();
  }

  MEMORY[0x23192FF80](qword_280D6CB20, *algn_280D6CB28);
  OUTLINED_FUNCTION_7_10();
  sub_231586A54();
  return 0;
}

uint64_t sub_23154D2B0(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = *a3;
  v7 = *a4;

  return OUTLINED_FUNCTION_1_34();
}

uint64_t sub_23154D304()
{
  if (qword_27DD5AD88 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_3_10();
}

void sub_23154D3A8()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_129(v4, v5);
  v6 = type metadata accessor for ActionDisambiguationFrequencySignal();
  v7 = OUTLINED_FUNCTION_8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_128();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_57();
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_61();
  sub_2314E76F4(*(v1 + *(v6 + 24)), byte_28460FCD0);
  if (v16)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v17 = sub_231585FF4();
    __swift_project_value_buffer(v17, qword_280D72248);
    OUTLINED_FUNCTION_41_0();
    sub_2314A6578();
    v18 = sub_231585FE4();
    v19 = sub_2315865E4();
    if (OUTLINED_FUNCTION_83(v19))
    {
      v20 = OUTLINED_FUNCTION_22();
      v21 = OUTLINED_FUNCTION_47();
      *v20 = 136315138;
      OUTLINED_FUNCTION_27_2(v21);
      if (qword_280D6EDE8 != -1)
      {
        OUTLINED_FUNCTION_1();
      }

      OUTLINED_FUNCTION_151(&qword_280D6EDF0);
      OUTLINED_FUNCTION_7_10();
      OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_7_25();
      sub_23155B9E0(v2, v22);
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_114();
      *(v20 + 4) = v48;
      OUTLINED_FUNCTION_55(&dword_231496000, v23, v24, "Could not compute %s as bucketIndex is missing.");
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_44_0();
    }

    else
    {

      OUTLINED_FUNCTION_7_25();
      sub_23155B9E0(v2, v37);
    }

    sub_2315860F4();
    v38 = OUTLINED_FUNCTION_32_1();
    v0(v38);
    OUTLINED_FUNCTION_113();
  }

  else
  {
    sub_231585D04();
    OUTLINED_FUNCTION_17_11();
    sub_231585C84();
    v25 = OUTLINED_FUNCTION_123();
    v0(v25);
    v26 = OUTLINED_FUNCTION_122();
    v27(v26);
    v28 = *(v6 + 20);
    OUTLINED_FUNCTION_154();
    if (v2)
    {

      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v29 = sub_231585FF4();
      __swift_project_value_buffer(v29, qword_280D72248);
      OUTLINED_FUNCTION_41_0();
      sub_2314A6578();
      v30 = sub_231585FE4();
      v31 = sub_2315865E4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_22();
        v33 = OUTLINED_FUNCTION_47();
        *v32 = 136315138;
        OUTLINED_FUNCTION_27_2(v33);
        if (qword_280D6EDE8 != -1)
        {
          OUTLINED_FUNCTION_1();
        }

        OUTLINED_FUNCTION_151(&qword_280D6EDF0);
        OUTLINED_FUNCTION_7_10();
        v47 = *(v46 + *(v6 + 24));
        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_7_25();
        sub_23155B9E0(v46, v34);
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_114();
        *(v32 + 4) = v48;
        OUTLINED_FUNCTION_144(&dword_231496000, v35, v36, "Failed to fetch interactions for %s.");
        OUTLINED_FUNCTION_31_2();
        OUTLINED_FUNCTION_10();
      }

      else
      {

        OUTLINED_FUNCTION_7_25();
        sub_23155B9E0(v46, v45);
      }

      (v0)(v3, v11);
    }

    else
    {
      OUTLINED_FUNCTION_137();
      MEMORY[0x28223BE20](v39);
      OUTLINED_FUNCTION_34_2();
      sub_231563B14();
      sub_2315860F4();
      OUTLINED_FUNCTION_137();
      MEMORY[0x28223BE20](v40);
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_153(v41, v42, v43);
      OUTLINED_FUNCTION_3_19();
      v44 = OUTLINED_FUNCTION_32_1();
      v0(v44);
      OUTLINED_FUNCTION_113();
      (v0)(v3, v11);
    }
  }

  OUTLINED_FUNCTION_3_6();
}

void sub_23154D86C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_129(v4, v5);
  v6 = type metadata accessor for AppDisambiguationFrequencySignal();
  v7 = OUTLINED_FUNCTION_8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_128();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_57();
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_61();
  sub_2314E76F4(*(v1 + *(v6 + 24)), byte_28460FCD0);
  if (v16)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v17 = sub_231585FF4();
    __swift_project_value_buffer(v17, qword_280D72248);
    OUTLINED_FUNCTION_42_0();
    sub_2314A6578();
    v18 = sub_231585FE4();
    v19 = sub_2315865E4();
    if (OUTLINED_FUNCTION_83(v19))
    {
      v20 = OUTLINED_FUNCTION_22();
      v21 = OUTLINED_FUNCTION_47();
      *v20 = 136315138;
      OUTLINED_FUNCTION_27_2(v21);
      if (qword_280D6F000 != -1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      OUTLINED_FUNCTION_151(&qword_280D6F008);
      OUTLINED_FUNCTION_7_10();
      OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_10_15();
      sub_23155B9E0(v2, v22);
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_114();
      *(v20 + 4) = v48;
      OUTLINED_FUNCTION_55(&dword_231496000, v23, v24, "Could not compute %s as bucketIndex is missing.");
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_44_0();
    }

    else
    {

      OUTLINED_FUNCTION_10_15();
      sub_23155B9E0(v2, v37);
    }

    sub_2315860F4();
    v38 = OUTLINED_FUNCTION_32_1();
    v0(v38);
    OUTLINED_FUNCTION_113();
  }

  else
  {
    sub_231585D04();
    OUTLINED_FUNCTION_17_11();
    sub_231585C84();
    v25 = OUTLINED_FUNCTION_123();
    v0(v25);
    v26 = OUTLINED_FUNCTION_122();
    v27(v26);
    v28 = *(v6 + 20);
    OUTLINED_FUNCTION_154();
    if (v2)
    {

      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v29 = sub_231585FF4();
      __swift_project_value_buffer(v29, qword_280D72248);
      OUTLINED_FUNCTION_42_0();
      sub_2314A6578();
      v30 = sub_231585FE4();
      v31 = sub_2315865E4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_22();
        v33 = OUTLINED_FUNCTION_47();
        *v32 = 136315138;
        OUTLINED_FUNCTION_27_2(v33);
        if (qword_280D6F000 != -1)
        {
          OUTLINED_FUNCTION_0_2();
        }

        OUTLINED_FUNCTION_151(&qword_280D6F008);
        OUTLINED_FUNCTION_7_10();
        v47 = *(v46 + *(v6 + 24));
        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_10_15();
        sub_23155B9E0(v46, v34);
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_114();
        *(v32 + 4) = v48;
        OUTLINED_FUNCTION_144(&dword_231496000, v35, v36, "Failed to fetch interactions for %s.");
        OUTLINED_FUNCTION_31_2();
        OUTLINED_FUNCTION_10();
      }

      else
      {

        OUTLINED_FUNCTION_10_15();
        sub_23155B9E0(v46, v45);
      }

      (v0)(v3, v11);
    }

    else
    {
      OUTLINED_FUNCTION_137();
      MEMORY[0x28223BE20](v39);
      OUTLINED_FUNCTION_34_2();
      sub_231563B14();
      sub_2315860F4();
      OUTLINED_FUNCTION_137();
      MEMORY[0x28223BE20](v40);
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_153(v41, v42, v43);
      OUTLINED_FUNCTION_3_19();
      v44 = OUTLINED_FUNCTION_32_1();
      v0(v44);
      OUTLINED_FUNCTION_113();
      (v0)(v3, v11);
    }
  }

  OUTLINED_FUNCTION_3_6();
}

void sub_23154DD30()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_130(v4, v5);
  v6 = type metadata accessor for SelectedAppDisambiguationFrequencySignal();
  v7 = OUTLINED_FUNCTION_8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_57();
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_61();
  sub_2314E76F4(*(v3 + *(v6 + 24)), byte_28460FCD0);
  if (v21)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v22 = sub_231585FF4();
    __swift_project_value_buffer(v22, qword_280D72248);
    OUTLINED_FUNCTION_40_0();
    sub_2314A6578();
    v23 = sub_231585FE4();
    v24 = sub_2315865E4();
    if (OUTLINED_FUNCTION_83(v24))
    {
      v25 = OUTLINED_FUNCTION_22();
      v26 = OUTLINED_FUNCTION_47();
      *v25 = 136315138;
      OUTLINED_FUNCTION_27_2(v26);
      if (qword_280D6EBB8 != -1)
      {
        OUTLINED_FUNCTION_0_73();
      }

      OUTLINED_FUNCTION_52();
      v27 = qword_280D6EBC8;

      v28 = OUTLINED_FUNCTION_124();
      MEMORY[0x23192FF80](v28, v27);

      OUTLINED_FUNCTION_7_10();
      OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_9_19();
      sub_23155B9E0(v0, v29);
      OUTLINED_FUNCTION_3_10();
      v30 = sub_2314A22E8();

      *(v25 + 4) = v30;
      OUTLINED_FUNCTION_55(&dword_231496000, v31, v32, "Could not compute %s as bucketIndex is missing.");
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_44_0();
    }

    else
    {

      OUTLINED_FUNCTION_9_19();
      sub_23155B9E0(v0, v49);
    }

    sub_2315860F4();
    v50 = OUTLINED_FUNCTION_32_1();
    v1(v50);
    OUTLINED_FUNCTION_113();
  }

  else
  {
    sub_231585D04();
    OUTLINED_FUNCTION_17_11();
    sub_231585C84();
    v33 = *(v17 + 8);
    v34 = OUTLINED_FUNCTION_39();
    v33(v34);
    v35 = OUTLINED_FUNCTION_136();
    v36(v35);
    v37 = *(v6 + 20);
    OUTLINED_FUNCTION_154();
    if (v0)
    {
      v60 = v33;

      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v38 = sub_231585FF4();
      __swift_project_value_buffer(v38, qword_280D72248);
      OUTLINED_FUNCTION_40_0();
      sub_2314A6578();
      v39 = sub_231585FE4();
      v40 = sub_2315865E4();
      if (OUTLINED_FUNCTION_21_4(v40))
      {
        v41 = v6;
        v42 = OUTLINED_FUNCTION_22();
        v43 = OUTLINED_FUNCTION_47();
        *v42 = 136315138;
        OUTLINED_FUNCTION_27_2(v43);
        if (qword_280D6EBB8 != -1)
        {
          OUTLINED_FUNCTION_0_73();
        }

        OUTLINED_FUNCTION_52();
        v44 = qword_280D6EBC8;

        v45 = OUTLINED_FUNCTION_124();
        MEMORY[0x23192FF80](v45, v44);

        OUTLINED_FUNCTION_7_10();
        OUTLINED_FUNCTION_135();
        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_9_19();
        sub_23155B9E0(v41, v46);
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_114();
        *(v42 + 4) = v63;
        OUTLINED_FUNCTION_142(&dword_231496000, v47, v48, "Failed to fetch interactions for %s.");
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_10();

        (v60)(v2, v14);
      }

      else
      {

        OUTLINED_FUNCTION_9_19();
        sub_23155B9E0(v12, v59);
        (v33)(v2, v14);
      }
    }

    else
    {
      OUTLINED_FUNCTION_134();
      MEMORY[0x28223BE20](v51);
      OUTLINED_FUNCTION_34_2();
      sub_231563B14();
      sub_2315860F4();
      OUTLINED_FUNCTION_134();
      MEMORY[0x28223BE20](v52);
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_153(v53, v54, v55);
      OUTLINED_FUNCTION_3_19();
      v56 = OUTLINED_FUNCTION_76();
      v57(v56);
      sub_2314A5EEC(v61, v62);
      v58 = OUTLINED_FUNCTION_39();
      v33(v58);
    }
  }

  OUTLINED_FUNCTION_3_6();
}

void sub_23154E264()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_130(v4, v5);
  v6 = type metadata accessor for SelectedActionDisambiguationFrequencySignal();
  v7 = OUTLINED_FUNCTION_8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_57();
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_61();
  sub_2314E76F4(*(v3 + *(v6 + 24)), byte_28460FCD0);
  if (v21)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v22 = sub_231585FF4();
    __swift_project_value_buffer(v22, qword_280D72248);
    OUTLINED_FUNCTION_39_1();
    sub_2314A6578();
    v23 = sub_231585FE4();
    v24 = sub_2315865E4();
    if (OUTLINED_FUNCTION_83(v24))
    {
      v25 = OUTLINED_FUNCTION_22();
      v26 = OUTLINED_FUNCTION_47();
      *v25 = 136315138;
      OUTLINED_FUNCTION_27_2(v26);
      if (qword_280D6EB00 != -1)
      {
        OUTLINED_FUNCTION_0_72();
      }

      OUTLINED_FUNCTION_52();
      v27 = qword_280D6EB10;

      v28 = OUTLINED_FUNCTION_124();
      MEMORY[0x23192FF80](v28, v27);

      OUTLINED_FUNCTION_7_10();
      OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_8_21();
      sub_23155B9E0(v0, v29);
      OUTLINED_FUNCTION_3_10();
      v30 = sub_2314A22E8();

      *(v25 + 4) = v30;
      OUTLINED_FUNCTION_55(&dword_231496000, v31, v32, "Could not compute %s as bucketIndex is missing.");
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_44_0();
    }

    else
    {

      OUTLINED_FUNCTION_8_21();
      sub_23155B9E0(v0, v49);
    }

    sub_2315860F4();
    v50 = OUTLINED_FUNCTION_32_1();
    v1(v50);
    OUTLINED_FUNCTION_113();
  }

  else
  {
    sub_231585D04();
    OUTLINED_FUNCTION_17_11();
    sub_231585C84();
    v33 = *(v17 + 8);
    v34 = OUTLINED_FUNCTION_39();
    v33(v34);
    v35 = OUTLINED_FUNCTION_136();
    v36(v35);
    v37 = *(v6 + 20);
    OUTLINED_FUNCTION_154();
    if (v0)
    {
      v60 = v33;

      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v38 = sub_231585FF4();
      __swift_project_value_buffer(v38, qword_280D72248);
      OUTLINED_FUNCTION_39_1();
      sub_2314A6578();
      v39 = sub_231585FE4();
      v40 = sub_2315865E4();
      if (OUTLINED_FUNCTION_21_4(v40))
      {
        v41 = v6;
        v42 = OUTLINED_FUNCTION_22();
        v43 = OUTLINED_FUNCTION_47();
        *v42 = 136315138;
        OUTLINED_FUNCTION_27_2(v43);
        if (qword_280D6EB00 != -1)
        {
          OUTLINED_FUNCTION_0_72();
        }

        OUTLINED_FUNCTION_52();
        v44 = qword_280D6EB10;

        v45 = OUTLINED_FUNCTION_124();
        MEMORY[0x23192FF80](v45, v44);

        OUTLINED_FUNCTION_7_10();
        OUTLINED_FUNCTION_135();
        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_8_21();
        sub_23155B9E0(v41, v46);
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_114();
        *(v42 + 4) = v63;
        OUTLINED_FUNCTION_142(&dword_231496000, v47, v48, "Failed to fetch interactions for %s.");
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_10();

        (v60)(v2, v14);
      }

      else
      {

        OUTLINED_FUNCTION_8_21();
        sub_23155B9E0(v12, v59);
        (v33)(v2, v14);
      }
    }

    else
    {
      OUTLINED_FUNCTION_134();
      MEMORY[0x28223BE20](v51);
      OUTLINED_FUNCTION_34_2();
      sub_231563B14();
      sub_2315860F4();
      OUTLINED_FUNCTION_134();
      MEMORY[0x28223BE20](v52);
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_153(v53, v54, v55);
      OUTLINED_FUNCTION_3_19();
      v56 = OUTLINED_FUNCTION_76();
      v57(v56);
      sub_2314A5EEC(v61, v62);
      v58 = OUTLINED_FUNCTION_39();
      v33(v58);
    }
  }

  OUTLINED_FUNCTION_3_6();
}

void sub_23154E7B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2314E2694();
}

uint64_t sub_23154E7CC(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = *(v2 + 24);
  v5 = sub_2314CE1D0();
  if (v5)
  {
    v7 = v5;
    v8 = 1;
    a2(&v7);
    return sub_2314A5EEC(v7, v8);
  }

  else
  {
    v7 = -1;
    v8 = 0;
    return (a2)(&v7);
  }
}

void sub_23154E88C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2314E284C();
}

void sub_23154E904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  *v6 = v3[2];
  *&v6[9] = *(v3 + 41);
  TotalTimeSpentInApp.value(completion:)(a2, a3);
}

uint64_t sub_23154E950(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t))
{
  if (a7)
  {
    v20 = a4;
    a8(a6, a7);
    OUTLINED_FUNCTION_96();
  }

  OUTLINED_FUNCTION_95();
  v9 = a2();
  v17 = OUTLINED_FUNCTION_75(v9, v10, v11, v12, v13, v14, v15, v16, v20);

  return sub_2314A5EEC(v17, v18);
}

void sub_23154E9D8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_2314E2A04();
}

void sub_23154E9F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2314E2BBC();
}

uint64_t sub_23154EA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = v4 + *(a4(0) + 20);
  v6 = OUTLINED_FUNCTION_18_3();
  return CalendarSignal.value(completion:)(v6);
}

uint64_t sub_23154EA50(uint64_t a1, void (*a2)(uint64_t *))
{
  v5 = -1;
  v6 = 0;
  a2(&v5);
  v2 = v5;
  v3 = v6;

  return sub_2314A5EEC(v2, v3);
}

uint64_t sub_23154EAB4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a7;
  v12 = 1;

  a2(&v11);
  v8 = v11;
  v9 = v12;

  return sub_2314A5EEC(v8, v9);
}

uint64_t sub_23154EB6C(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = sub_2314CE450();
  if (v3)
  {
    v5 = v3;
    v6 = 1;
    a2(&v5);
    return sub_2314A5EEC(v5, v6);
  }

  else
  {
    v5 = -1;
    v6 = 0;
    return (a2)(&v5);
  }
}

uint64_t sub_23154EBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 56);
  v8 = swift_allocObject();
  v9 = v4[1];
  *(v8 + 16) = *v4;
  *(v8 + 32) = v9;
  v10 = v4[3];
  *(v8 + 48) = v4[2];
  *(v8 + 64) = v10;
  *(v8 + 80) = a2;
  *(v8 + 88) = a3;
  sub_2314BC914(v4, &v12);

  sub_2314BC6A8(sub_23155BBA0, v8);
}

uint64_t sub_23154ECD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = v4[3];
  v8 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  return (*(v8 + 24))(a2, a3, v7, v8);
}

void sub_23154ED3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2314E2D74();
}

void sub_23154ED6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 4);
  ForegroundAppBiomeSignal.value(completion:)(a2, a3);
}

void sub_23154EDB0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2314E2F2C();
}

uint64_t sub_23154EF9C(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v3 = -1;
  v4 = 0;
  return a2(&v3);
}

uint64_t sub_23154EFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((v3 + 72), *(v3 + 96));
  sub_2315216FC(v3, v8);
  v6 = swift_allocObject();
  memcpy(v6 + 2, v8, 0x70uLL);
  v6[16] = a2;
  v6[17] = a3;

  sub_2315773B4(sub_23155BB9C, v6);
}

void sub_23154F1A4()
{
  OUTLINED_FUNCTION_100();
  if (v1)
  {

    OUTLINED_FUNCTION_22_8();
    v2 = v0();
    v10 = OUTLINED_FUNCTION_75(v2, v3, v4, v5, v6, v7, v8, v9, v12);
    sub_2314A5EEC(v10, v11);
  }
}

void sub_23154F1F8()
{
  OUTLINED_FUNCTION_100();
  if (v1)
  {

    OUTLINED_FUNCTION_22_8();
    v2 = v0();
    v10 = OUTLINED_FUNCTION_75(v2, v3, v4, v5, v6, v7, v8, v9, v12);
    sub_2314A5EEC(v10, v11);
  }
}

uint64_t sub_23154F2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ActionDisambiguationFrequencySignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  sub_23154D3A8();
}

uint64_t sub_23154F40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AppDisambiguationFrequencySignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  sub_23154D86C();
}

uint64_t sub_23154F550(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v34 = sub_231585884();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v34);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2315859B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2315856B4();
  v35 = *(v15 - 8);
  v36 = v15;
  v16 = *(v35 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CalendarSignal();
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2314A6578();
  v38 = a3;

  v24 = sub_231585984();
  v25 = *(v20 + 36);
  v26 = *(v4 + 32);
  (*(v4 + 24))(v24);
  sub_231585964();
  (*(v6 + 8))(v9, v34);
  (*(v11 + 8))(v14, v10);
  switch(*(v4 + 16))
  {
    case 1:
      v27 = sub_231585684();
      break;
    case 2:
      v27 = sub_231585694();
      break;
    case 3:
      v27 = sub_231585674();
      break;
    default:
      v27 = sub_2315856A4();
      break;
  }

  if (v28)
  {
    v29 = -1;
  }

  else
  {
    v29 = v27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v31 = v23[1];
  *(inited + 32) = *v23;
  *(inited + 40) = v31;
  *(inited + 48) = v29;
  *(inited + 56) = 0;

  sub_2315860F4();
  v37();

  (*(v35 + 8))(v18, v36);

  return sub_23155B9E0(v23, type metadata accessor for CalendarSignal);
}

uint64_t sub_23154F8E4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 24);

  v8 = sub_23155AC08(v4, v11);
  v9 = sub_2314CE1D0(v8);
  if (v9)
  {
    sub_2315565A0(v9, 1u, a2, a3, v4);
  }

  else
  {
    sub_2315565A0(-1, 0, a2, a3, v4);
  }

  return sub_23155AC64(v4);
}

uint64_t sub_23154F990()
{

  v0 = sub_231586174();
  MGGetSInt32Answer();

  sub_231556A88();
}

uint64_t sub_23154FA44()
{
  OUTLINED_FUNCTION_118();
  if (v1)
  {
    v2 = v0;

    v3 = OUTLINED_FUNCTION_3_5();
    v2(v3);
    OUTLINED_FUNCTION_96();
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }
  }

  else
  {

    v7 = -1;
  }

  sub_231556A88();
  sub_2314A5EEC(v7, 0);

  OUTLINED_FUNCTION_117();
}

uint64_t sub_23154FB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  memcpy(v6 + 4, v3, 0x49uLL);
  memcpy(__dst, v3, sizeof(__dst));

  sub_23155A900(v3, &v8);
  TimeTodaySpentInApp.value(completion:)(sub_23155A8F4, v6);
}

uint64_t sub_23154FBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = v3[1];
  *(v6 + 32) = *v3;
  *(v6 + 48) = v7;
  v9 = *v3;
  v8 = v3[1];
  *(v6 + 64) = v3[2];
  *(v6 + 73) = *(v3 + 41);
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v11[4] = v9;
  v11[5] = v8;
  v12[0] = v3[2];
  *(v12 + 9) = *(v3 + 41);

  sub_23155A898(v3, v11);
  TotalTimeSpentInApp.value(completion:)(sub_23155A88C, v6);
}

uint64_t sub_23154FC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(v3 + 16);
  *(v6 + 32) = *v3;
  *(v6 + 48) = v7;
  v8 = *(v3 + 24);
  *(v6 + 64) = *(v3 + 32);
  v9 = *(v3 + 16);

  sub_23155AF74(v3, v11);
  sub_2314E2A04();
}

void sub_23154FD4C()
{
  OUTLINED_FUNCTION_93();
  v49 = v1;
  v50 = v2;
  v4 = v3;
  v6 = v5;
  v48 = v7;
  v45 = sub_231585884();
  v8 = OUTLINED_FUNCTION_4_1(v45);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_2315859B4();
  v17 = OUTLINED_FUNCTION_4_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v25 = sub_2315856B4();
  v26 = OUTLINED_FUNCTION_4_1(v25);
  v46 = v27;
  v47 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  v33 = (v4(0) - 8);
  v34 = *(*v33 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v35);
  v37 = (&v45 - v36);
  sub_2314A6578();
  v38 = v0 + v33[7];
  v49 = v6;

  sub_231585984();
  LODWORD(v6) = *(type metadata accessor for CalendarSignal() + 28);
  v39 = *(v38 + 32);
  (*(v38 + 24))();
  sub_231585964();
  (*(v10 + 8))(v15, v45);
  (*(v19 + 8))(v24, v16);
  switch(*(v38 + 16))
  {
    case 1:
      v40 = sub_231585684();
      break;
    case 2:
      v40 = sub_231585694();
      break;
    case 3:
      v40 = sub_231585674();
      break;
    default:
      v40 = sub_2315856A4();
      break;
  }

  if (v41)
  {
    v42 = -1;
  }

  else
  {
    v42 = v40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v44 = v37[1];
  *(inited + 32) = *v37;
  *(inited + 40) = v44;
  *(inited + 48) = v42;
  *(inited + 56) = 0;

  sub_2315860F4();
  v48();

  (*(v46 + 8))(v32, v47);

  sub_23155B9E0(v37, v50);
  OUTLINED_FUNCTION_3_6();
}

uint64_t sub_231550084(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = a4;
  *(inited + 40) = a5;
  *(inited + 48) = -1;
  *(inited + 56) = 0;

  sub_2315860F4();
  a2();
}

uint64_t sub_231550144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainFrequencySignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  DomainFrequencySignal.value(completion:)(sub_23155B554, v9);
}

uint64_t sub_231550288(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = a4;
  *(inited + 40) = a5;
  *(inited + 48) = a7;
  *(inited + 56) = 1;
  swift_bridgeObjectRetain_n();

  sub_2315860F4();
  a2();
}

uint64_t sub_231550360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  memcpy(v6 + 4, v3, 0x41uLL);
  memcpy(__dst, v3, sizeof(__dst));

  sub_231525A94(v3, &v8);
  NowPlayingCountSignal.value(completion:)(sub_23155ACB8);
}

uint64_t sub_23155040C()
{

  if (sub_2314CE450(v0))
  {
    sub_231556A88();
  }

  else
  {
    sub_231556A88();
  }
}

uint64_t sub_231550510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *(v3 + 16);
  *(v7 + 32) = *v3;
  *(v7 + 48) = v8;
  v9 = *(v3 + 48);
  *(v7 + 64) = *(v3 + 32);
  *(v7 + 80) = v9;
  v10 = *(v3 + 56);
  v11 = swift_allocObject();
  v12 = v4[1];
  *(v11 + 16) = *v4;
  *(v11 + 32) = v12;
  v13 = v4[3];
  *(v11 + 48) = v4[2];
  *(v11 + 64) = v13;
  *(v11 + 80) = sub_23155B7E4;
  *(v11 + 88) = v7;
  sub_2314BC914(v4, v15);
  sub_2314BC914(v4, v15);

  sub_2314BC6A8(sub_2314BC364, v11);
}

uint64_t sub_231550610(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;

  v10 = a4;

  DomainDefaultAppSignal.value(completion:)(sub_23155B5E4);
}

uint64_t sub_2315506C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2315583CC(v3, v12);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = v12[1];
  *(v6 + 32) = v12[0];
  *(v6 + 48) = v7;
  *(v6 + 64) = v13;
  v8 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v8);
  v10 = *(v9 + 24);

  v10(sub_23155A138, v6, v8, v9);
}

uint64_t sub_231550798(uint64_t a1, void (*a2)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_67(inited, xmmword_231588340)[3].n128_u8[8] = 0;

  sub_2315860F4();
  OUTLINED_FUNCTION_102();
  a2();
}

void sub_23155084C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_43_0();
  a25 = v29;
  a26 = v30;
  OUTLINED_FUNCTION_80(v30, v31, v32, v33);
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_126(v34);
  *(v35 + 64) = *(v27 + 2);
  v36 = *v27;
  v37 = v27[1];
  v38 = v27[2];

  v28(v27, &a9);
  v39 = OUTLINED_FUNCTION_105();
  v26(v39);

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2315508C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainRecencyRankSignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  DomainRecencyRankSignal.value(completion:)(sub_23155B528, v9);
}

uint64_t sub_231550A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainUserPersonaSignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  DomainUserPersonaSignal.value(completion:)(sub_23155B08C, v9);
}

uint64_t sub_231550B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v13[7] = a7;

  ForegroundWarmAppSignal.value(completion:)(sub_23155AFD0);
}

uint64_t sub_231550C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(v3 + 16);
  *(v6 + 32) = *v3;
  *(v6 + 48) = v7;
  *(v6 + 64) = *(v3 + 32);
  v8 = *(v3 + 16);
  v11 = *v3;
  v12 = v8;
  v13 = *(v3 + 32);

  sub_231505824(v3, v10);
  ForegroundAppBiomeSignal.value(completion:)(sub_23155AF68, v6);
}

void sub_231550CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_43_0();
  a25 = v29;
  a26 = v30;
  OUTLINED_FUNCTION_80(v30, v31, v32, v33);
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_126(v34);
  *(v35 + 64) = v27[4];
  v36 = *v27;
  v37 = v27[1];
  v38 = v27[2];

  v28(v27, &a10);
  v39 = OUTLINED_FUNCTION_105();
  v26(v39);

  OUTLINED_FUNCTION_44();
}

uint64_t sub_231550D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DomainAffinityScoreSignal();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_2314A6578();
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_2314A65D0();

  DomainAffinityScoreSignal.valueForApps(bundleIDs:completion:)(a1, sub_23155B6BC, v10);
}

uint64_t sub_231550E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v22 = a4;
  v19 = a3;
  v20 = sub_231585884();
  v4 = *(v20 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_231585994();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2315859B4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_231585984();
  (*(v9 + 104))(v12, *MEMORY[0x277CC9980], v8);
  sub_231585874();
  sub_2315859A4();
  (*(v4 + 8))(v7, v20);
  (*(v9 + 8))(v12, v8);
  sub_231556A88();
  (*(v14 + 8))(v17, v13);
}

uint64_t sub_231551128(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v5 = a4;
  v6 = INIntent.isRequestByContactLabel()();
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v7 = sub_231585FF4();
  __swift_project_value_buffer(v7, qword_280D72248);
  v8 = v5;
  v9 = sub_231585FE4();
  v10 = sub_2315865D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315394;
    if (qword_27DD5ADA0 != -1)
    {
      swift_once();
    }

    v13 = sub_2314A22E8();

    *(v11 + 4) = v13;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v6;
    _os_log_impl(&dword_231496000, v9, v10, "%s value: %ld", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x231931280](v12, -1, -1);
    MEMORY[0x231931280](v11, -1, -1);
  }

  else
  {
  }

  sub_231556B28();
}

uint64_t sub_231551358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainTotalFrequencySignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  DomainTotalFrequencySignal.value(completion:)(sub_23155B0B8, v9);
}

uint64_t sub_23155149C()
{

  if (sub_2314CCBB0())
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v0 = sub_231585FF4();
    __swift_project_value_buffer(v0, qword_280D72248);

    v1 = sub_231585FE4();
    v2 = sub_2315865D4();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v3 = 136315394;

      v4 = sub_2314A22E8();

      *(v3 + 4) = v4;
      *(v3 + 12) = 2080;
      sub_2315860E4();
      v5 = sub_2314A22E8();

      *(v3 + 14) = v5;
      _os_log_impl(&dword_231496000, v1, v2, "%s value: %s", v3, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231931280](v7, -1, -1);
      MEMORY[0x231931280](v3, -1, -1);
    }

    sub_231556A88();
  }

  else
  {
    sub_231556A88();
  }
}

uint64_t sub_2315517C0()
{
  v1 = v0;
  v2 = v0[2];

  sub_23155AFDC(v1, v13);
  if (sub_2314CD40C())
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v3 = sub_231585FF4();
    __swift_project_value_buffer(v3, qword_280D72248);
    sub_23155AFDC(v1, v13);

    v4 = sub_231585FE4();
    v5 = sub_2315865D4();
    sub_23155B038(v1);

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13[0] = v7;
      *v6 = 136315394;
      v8 = *v1;
      v9 = v1[1];

      v10 = sub_2314A22E8();

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      sub_2315860E4();
      v11 = sub_2314A22E8();

      *(v6 + 14) = v11;
      _os_log_impl(&dword_231496000, v4, v5, "%s value: %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231931280](v7, -1, -1);
      MEMORY[0x231931280](v6, -1, -1);
    }

    sub_2315569E8();
  }

  else
  {
    sub_2315569E8();
  }

  return sub_23155B038(v1);
}

uint64_t sub_231551A14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v5 = a4;
  v6 = INIntent.isRequestByHandleType()();
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v7 = sub_231585FF4();
  __swift_project_value_buffer(v7, qword_280D72248);
  v8 = v5;
  v9 = sub_231585FE4();
  v10 = sub_2315865D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315394;
    if (qword_27DD5AD98 != -1)
    {
      swift_once();
    }

    v13 = sub_2314A22E8();

    *(v11 + 4) = v13;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v6;
    _os_log_impl(&dword_231496000, v9, v10, "%s value: %ld", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x231931280](v12, -1, -1);
    MEMORY[0x231931280](v11, -1, -1);
  }

  else
  {
  }

  sub_231556B28();
}

uint64_t sub_231551C44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5)
{
  v5 = a5;
  v9 = a5 >> 8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = v5;
  *(v10 + 41) = v9;

  v11 = a4;
  DomainTaskAbandonmentSignal.value(completion:)(sub_23155B420, v10);
}

uint64_t sub_231551D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a6;

  v12 = a6;
  TimeSpentInAppAffinityScore.value(completion:)(sub_23155A95C, v11);
}

uint64_t sub_231551DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToContactRecencySignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  DomainToContactRecencySignal.value(completion:)(sub_23155B2EC, v9);
}

uint64_t sub_231551F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_2315216FC(v3, __src);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  memcpy(v7 + 4, __src, 0x70uLL);
  __swift_project_boxed_opaque_existential_1((v4 + 72), *(v4 + 96));
  sub_2315216FC(v4, v10);
  v8 = swift_allocObject();
  memcpy(v8 + 2, v10, 0x70uLL);
  v8[16] = sub_23155ACD0;
  v8[17] = v7;

  sub_2315773B4(sub_231521734, v8);
}

uint64_t sub_231552028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToContactFrequencySignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  DomainToContactFrequencySignal.value(completion:)(sub_23155B344, v9);
}

uint64_t sub_23155216C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  memcpy(v6 + 4, v3, 0x49uLL);
  memcpy(__dst, v3, sizeof(__dst));

  sub_23155A9C0(v3, &v8);
  TimeSinceAppLastLaunchedSignal.value(completion:)(sub_23155A8F4, v6);
}

uint64_t sub_231552218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  memcpy(v6 + 4, v3, 0x51uLL);
  memcpy(__dst, v3, sizeof(__dst));

  sub_23155AA70(v3, &v8);
  TimeSinceAppLastInstalledSignal.value(completion:)(sub_23155AA64, v6);
}

uint64_t sub_2315522C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToContactRecencyRankSignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  DomainToContactRecencyRankSignal.value(completion:)(sub_23155B318, v9);
}

uint64_t sub_231552408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToHandleAffinityScoreSignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  DomainToHandleAffinityScoreSignal.value(completion:)(sub_23155B164, v9);
}

uint64_t sub_23155254C(uint64_t a1, void (*a2)(void))
{
  AppDisambiguationResultSignal = type metadata accessor for LastAppDisambiguationResultSignal();
  v4 = *(*(AppDisambiguationResultSignal - 8) + 64);
  MEMORY[0x28223BE20](AppDisambiguationResultSignal - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2314A6578();
  sub_23155597C();
  if (v7)
  {
    v8 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_231588340;
    v10 = v6[1];
    *(inited + 32) = *v6;
    *(inited + 40) = v10;
    *(inited + 48) = v8;
    *(inited + 56) = 1;

    sub_2315860F4();
    a2();
  }

  return sub_23155B9E0(v6, type metadata accessor for LastAppDisambiguationResultSignal);
}

uint64_t sub_2315526EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a6;
  *(v13 + 56) = a7;

  v14 = a4;

  NotificationsCountByContactSignal.value(completion:)(sub_23155ACC4, v13);
}

uint64_t sub_2315527BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToContactAffinityScoreSignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  DomainToContactAffinityScoreSignal.value(completion:)(sub_23155B39C, v9);
}

uint64_t sub_231552900(uint64_t a1, void (*a2)(void))
{
  AppDisambiguationRecencySignal = type metadata accessor for LastAppDisambiguationRecencySignal();
  v4 = *(*(AppDisambiguationRecencySignal - 8) + 64);
  MEMORY[0x28223BE20](AppDisambiguationRecencySignal - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2314A6578();
  sub_23155597C();
  if (v8)
  {
    v9 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_231588340;
    v11 = v6[1];
    *(inited + 32) = *v6;
    *(inited + 40) = v11;
    *(inited + 48) = v9;
    *(inited + 56) = 1;

    sub_2315860F4();
    a2();
  }

  return sub_23155B9E0(v6, type metadata accessor for LastAppDisambiguationRecencySignal);
}

uint64_t sub_231552A9C(uint64_t a1, void (*a2)(void))
{
  ActionDisambiguationResultSignal = type metadata accessor for LastActionDisambiguationResultSignal();
  v4 = *(*(ActionDisambiguationResultSignal - 8) + 64);
  MEMORY[0x28223BE20](ActionDisambiguationResultSignal - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2314A6578();
  sub_23155597C();
  if (v7)
  {
    v8 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_231588340;
    v10 = v6[1];
    *(inited + 32) = *v6;
    *(inited + 40) = v10;
    *(inited + 48) = v8;
    *(inited + 56) = 1;

    sub_2315860F4();
    a2();
  }

  return sub_23155B9E0(v6, type metadata accessor for LastActionDisambiguationResultSignal);
}

uint64_t sub_231552C3C(uint64_t a1, void (*a2)(void))
{
  ActionDisambiguationRecencySignal = type metadata accessor for LastActionDisambiguationRecencySignal();
  v4 = *(*(ActionDisambiguationRecencySignal - 8) + 64);
  MEMORY[0x28223BE20](ActionDisambiguationRecencySignal - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2314A6578();
  sub_23155597C();
  if (v8)
  {
    v9 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_231588340;
    v11 = v6[1];
    *(inited + 32) = *v6;
    *(inited + 40) = v11;
    *(inited + 48) = v9;
    *(inited + 56) = 1;

    sub_2315860F4();
    a2();
  }

  return sub_23155B9E0(v6, type metadata accessor for LastActionDisambiguationRecencySignal);
}

uint64_t sub_231552DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToContactFrequencyByIntentSignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  DomainToContactFrequencyByIntentSignal.value(completion:)(sub_23155B370, v9);
}

uint64_t sub_231552F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UsedSignal = type metadata accessor for DomainToContactTimeSinceLastUsedSignal();
  v6 = *(UsedSignal - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](UsedSignal - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  DomainToContactTimeSinceLastUsedSignal.value(completion:)(sub_23155B2C0, v9);
}

uint64_t sub_231553060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainTotalFrequencyByCountryCodeSignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  DomainTotalFrequencyByCountryCodeSignal.value(completion:)(sub_23155B138, v9);
}

uint64_t sub_2315531A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DomainToContactAffinityScoreByNameSignal();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_2314A6578();
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_2314A65D0();

  DomainToContactAffinityScoreByNameSignal.valueForApps(bundleIDs:completion:)(a1, sub_23155B3C8, v10);
}

uint64_t sub_2315532F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SelectedAppDisambiguationFrequencySignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  sub_23154DD30();
}

uint64_t sub_231553434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  DomainToContactAffinityScoreByIntentSignal.value(completion:)(sub_23155B3F4, v9);
}

uint64_t sub_231553578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DomainToContactTotalFrequencyByIntentSignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  DomainToContactTotalFrequencyByIntentSignal.value(completion:)(sub_23155B190, v9);
}

uint64_t sub_2315536BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SelectedActionDisambiguationFrequencySignal();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2314A6578();
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_2314A65D0();

  sub_23154E264();
}

void SignalProviding.subSignalValueForApps(bundleIDs:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = *(v25 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v35, v20, v36);
  v37 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v38 = swift_allocObject();
  *(v38 + 2) = v26;
  *(v38 + 3) = v24;
  *(v38 + 4) = v30;
  *(v38 + 5) = v28;
  (*(v33 + 32))(&v38[v37], v35, v26);
  v39 = *(v24 + 8);
  v40 = *(v39 + 32);

  v40(v32, sub_2315575FC, v38, v26, v39);

  OUTLINED_FUNCTION_3_6();
}

double static SignalProviding.debounceIntervalSeconds.getter()
{
  v0 = sub_2314A1DFC(5, 1);

  return v0;
}

uint64_t sub_231553A64(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  if (a6)
  {
    v19 = a3;
    a7(a5, a6);
    OUTLINED_FUNCTION_96();
  }

  OUTLINED_FUNCTION_95();
  v8 = a1();
  v16 = OUTLINED_FUNCTION_75(v8, v9, v10, v11, v12, v13, v14, v15, v19);

  return sub_2314A5EEC(v16, v17);
}

uint64_t sub_231553AEC(uint64_t (*a1)(uint64_t *))
{
  v12 = -1;
  v13 = 0;
  v1 = a1(&v12);
  v9 = OUTLINED_FUNCTION_75(v1, v2, v3, v4, v5, v6, v7, v8, v12);

  return sub_2314A5EEC(v9, v10);
}

double sub_231553B9C()
{
  OUTLINED_FUNCTION_108();

  return OUTLINED_FUNCTION_97();
}

double SignalProviding.cacheExpirationPolicy()()
{
  OUTLINED_FUNCTION_108();

  return OUTLINED_FUNCTION_97();
}

uint64_t static SignalProviding.instances()(uint64_t a1, uint64_t a2)
{
  v4[3] = &type metadata for NoParameters;
  v4[4] = &protocol witness table for NoParameters;
  v2 = (*(a2 + 104))(v4, a1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

void static SignalProviding.instances(with:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v4 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v4, qword_280D72248);
  v5 = sub_231585FE4();
  v6 = sub_2315865E4();
  if (OUTLINED_FUNCTION_21_4(v6))
  {
    v7 = OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_47();
    *v7 = 136315138;
    (*(v1 + 120))(v3, v1);
    sub_2314A22E8();
    OUTLINED_FUNCTION_3_19();
    *(v7 + 4) = v1;
    _os_log_impl(&dword_231496000, v5, v6, "Signal: %s does not implement instances(with _: SignalDefinitionParametersProviding), returning empty list", v7, 0xCu);
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_119();
}

void sub_231553EBC()
{
  OUTLINED_FUNCTION_118();
  v1 = v0;
  v2 = 0;
  MEMORY[0x231930210](*(v0 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = (*(v1 + 48) + ((v7 << 10) | (16 * v8)));
    v10 = *v9;
    v11 = v9[1];

    sub_2314A00A4();
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      OUTLINED_FUNCTION_117();
      return;
    }

    v5 = *(v1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_231553FC8(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_231585B14() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_2315542DC(uint64_t a1, void (*a2)(_BOOL8 *))
{
  v3 = *v2;
  v4 = v2[1];
  return sub_23154EDC8(a1, a2);
}

uint64_t sub_2315544AC(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = *v2;
  v4 = v2[1];
  return sub_23154EA50(a1, a2);
}

void sub_231554544(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231558528();
}

uint64_t sub_2315545DC(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v3 = *v2;
  v4 = v2[1];
  return sub_23154E854(a1, a2);
}

uint64_t sub_2315545E4()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23154F990();
}

uint64_t sub_2315546B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_231585884();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  sub_231585B04();
  sub_2315857F4();
  v12 = v11;
  v13 = v11;
  v14 = *(v8 + 8);
  v15 = OUTLINED_FUNCTION_39();
  result = v16(v15);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = -v12;
  if (__OFSUB__(0, v12))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v19 = *(a3(0) + 24);
  result = 1;
  switch(*(a2 + v19))
  {
    case 1:
      v20 = v18 < 600;
      goto LABEL_14;
    case 2:
      v20 = v18 < 3600;
      goto LABEL_14;
    case 3:
      v21 = 21600;
      goto LABEL_13;
    case 4:
      v21 = 86400;
      goto LABEL_13;
    case 5:
      v21 = 604800;
      goto LABEL_13;
    case 6:
      v21 = 2419200;
LABEL_13:
      v20 = v18 < v21;
      goto LABEL_14;
    case 7:
      return result;
    default:
      v20 = v18 < 120;
LABEL_14:
      result = v20;
      break;
  }

  return result;
}

uint64_t sub_231554868(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(a2);
  if (v6)
  {
    v7 = result;
    v8 = v6;
    v9 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *a1;
    v25 = *a1;
    v11 = OUTLINED_FUNCTION_3_5();
    v13 = sub_23149C888(v11, v12);
    if (__OFADD__(*(v10 + 16), (v14 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v15 = v13;
      v16 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      if (sub_231586A64())
      {
        v17 = OUTLINED_FUNCTION_3_5();
        v19 = sub_23149C888(v17, v18);
        if ((v16 & 1) != (v20 & 1))
        {
LABEL_14:
          result = sub_231586C84();
          __break(1u);
          return result;
        }

        v15 = v19;
      }

      *a1 = v25;
      if (v16)
      {
      }

      else
      {
        result = sub_231575360(v15, v7, v8, 0, v25);
      }

      v21 = *(v25 + 56);
      v22 = *(v21 + 8 * v15);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (!v23)
      {
        *(v21 + 8 * v15) = v24;
        return result;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_2315549DC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2315478C4();
}

uint64_t sub_231554A08(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = *v2;
  v4 = v2[1];
  return sub_23154EC9C(a1, a2);
}

uint64_t sub_231554A90()
{
  v1 = *v0;
  OUTLINED_FUNCTION_48();
  return sub_231547B9C(v2, v3, v4, v5);
}

uint64_t sub_231554AF4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_47_0();
  return sub_231547B9C(v2, v3, v4, v5);
}

uint64_t sub_231554B58()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  return sub_231547C50();
}

uint64_t sub_231554B68()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  return sub_23154D1D4();
}

uint64_t sub_23155501C()
{
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_63(v0, v1, v2, v3, v4, v5, v6, v7, v11);
  v8 = OUTLINED_FUNCTION_18_9();
  return sub_23154EE84(v8, v9);
}

uint64_t sub_23155505C()
{
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_63(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  OUTLINED_FUNCTION_18_9();
  return sub_2315517C0();
}

uint64_t sub_231555378()
{
  v1 = OUTLINED_FUNCTION_101();
  v3 = *(v0 + *(v2(v1) + 24));
  result = MEMORY[0x277D84F90];
  if (*(v3 + 16))
  {
    OUTLINED_FUNCTION_89();
    v5 = (v3 + 32);
    result = v10;
    do
    {
      v6 = *v5++;
      switch(v6)
      {
        case 1:
        case 2:
          OUTLINED_FUNCTION_138();
          break;
        default:
          break;
      }

      v7 = OUTLINED_FUNCTION_139(result);
      if (v8)
      {
        OUTLINED_FUNCTION_143();
        v7 = v10;
      }

      result = OUTLINED_FUNCTION_106(v7);
    }

    while (!v9);
  }

  return result;
}

void sub_23155553C()
{
  OUTLINED_FUNCTION_99();
  if (v1)
  {

    OUTLINED_FUNCTION_22_8();
    v2 = v0();
    v10 = OUTLINED_FUNCTION_75(v2, v3, v4, v5, v6, v7, v8, v9, v12);
    sub_2314A5EEC(v10, v11);
  }
}

void sub_231555794()
{
  OUTLINED_FUNCTION_99();
  if (v1)
  {

    OUTLINED_FUNCTION_22_8();
    v2 = v0();
    v10 = OUTLINED_FUNCTION_75(v2, v3, v4, v5, v6, v7, v8, v9, v12);
    sub_2314A5EEC(v10, v11);
  }
}

void sub_23155597C()
{
  OUTLINED_FUNCTION_93();
  v22[1] = v2;
  v22[2] = v3;
  v22[0] = v4;
  v5 = v0;
  v7 = (v6(0) - 8);
  v8 = *(*v7 + 64);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v9);
  v10 = sub_231585D14();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v16);
  v18 = v22 - v17;
  sub_231585D04();
  OUTLINED_FUNCTION_17_11();
  sub_231585C84();
  v19 = *(v13 + 8);
  v19(v18, v10);
  (*(v13 + 32))(v18, v1, v10);
  v20 = v7[7];
  v21 = sub_231585CF4();
  v24 = sub_2315860F4();
  v23 = sub_2315860F4();
  MEMORY[0x28223BE20](v23);
  v22[-4] = v5;
  v22[-3] = &v23;
  v22[-2] = &v24;
  sub_2315031C0(v22[0], &v22[-6], v21);
  OUTLINED_FUNCTION_3_19();

  v19(v18, v10);
  OUTLINED_FUNCTION_3_6();
}

uint64_t sub_231555CD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v51 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A0, &qword_23158A530);
  v11 = OUTLINED_FUNCTION_19(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_0();
  v49 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  v19 = sub_231585884();
  v20 = OUTLINED_FUNCTION_4_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  result = a6(a1);
  if (v29)
  {
    v30 = result;
    v31 = v29;
    v50 = v6;
    sub_231585B04();
    v32 = sub_23149C774();
    (*(v22 + 8))(v27, v19);
    v33 = sub_23149CA24(v30, v31, *a3);
    if (v34)
    {
      v35 = *a3;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_82();
      *a3 = v52;
      v36 = sub_231585AF4();
      sub_231566A14(0xD000000000000018, 0x8000000231590120, v36, v18);

      v37 = sub_231585E34();
      if (__swift_getEnumTagSinglePayload(v18, 1, v37) == 1)
      {
        v38 = v18;
LABEL_8:
        sub_23155B0E4(v38, &qword_27DD5B4A0, &qword_23158A530);
        goto LABEL_13;
      }

      v43 = v18;
      sub_231585E24();
      OUTLINED_FUNCTION_103();
      (*(v44 + 8))(v18, v37);
    }

    else
    {
      if (v33 >= v32)
      {
      }

      v39 = *a3;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_82();
      *a3 = v52;
      v40 = sub_231585AF4();
      v41 = v49;
      sub_231566A14(0xD000000000000018, 0x8000000231590120, v40, v49);

      v42 = sub_231585E34();
      if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
      {
        v38 = v41;
        goto LABEL_8;
      }

      v43 = v41;
      sub_231585E24();
      OUTLINED_FUNCTION_103();
      (*(v45 + 8))(v41, v42);
    }

    if ((v43 & 1) == 0)
    {
      v46 = v51;
      v47 = *v51;
      swift_isUniquelyReferenced_nonNull_native();
      v52 = *v46;
      sub_23157562C();
      *v46 = v52;
    }

LABEL_13:
    sub_231561874(v30, v31);
  }

  return result;
}

uint64_t sub_23155612C(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v3 = *v2;
  v4 = v2[2];
  v5 = *(v2 + 8);
  return sub_23154EF9C(a1, a2);
}

uint64_t sub_231556190()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 8);
  return sub_2315480B0();
}

void sub_23155620C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[2];
  v6 = v3[3];
  v7 = *(v3 + 8);
  sub_23154F158(a1, a2, a3);
}

uint64_t sub_23155622C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_87(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x41uLL);
  return sub_231547794();
}

uint64_t sub_231556268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_87(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x41uLL);
  return sub_23154D368();
}

uint64_t sub_2315562A0()
{
  OUTLINED_FUNCTION_14_9();
  memcpy(v0, v1, 0x41uLL);
  v2 = OUTLINED_FUNCTION_18_9();
  return sub_23154EB18(v2, v3);
}

uint64_t sub_2315562E4()
{
  OUTLINED_FUNCTION_14_9();
  memcpy(v0, v1, 0x41uLL);
  v2 = OUTLINED_FUNCTION_18_9();
  return sub_231550360(v2, v3, v4);
}

uint64_t sub_23155634C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_87(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x41uLL);
  return sub_231547714();
}

uint64_t sub_231556388()
{
  OUTLINED_FUNCTION_14_9();
  memcpy(v0, v1, 0x41uLL);
  v2 = OUTLINED_FUNCTION_18_9();
  return sub_23154E7CC(v2, v3);
}

uint64_t sub_2315563CC()
{
  OUTLINED_FUNCTION_14_9();
  memcpy(v0, v1, 0x41uLL);
  v2 = OUTLINED_FUNCTION_18_9();
  return sub_23154F8E4(v2, v3, v4);
}

uint64_t sub_231556414(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  return sub_23154EB6C(a1, a2);
}

uint64_t sub_231556420()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_23155040C();
}

BOOL static SignalProviding.cacheable()(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 72))() + 16);

  return v2 != 0;
}

uint64_t sub_23155653C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v7 = OUTLINED_FUNCTION_146(a1);

  return a4(v7, v5, v4, v6);
}

uint64_t sub_2315565A0(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, __int128 *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  v13 = *a5;
  v10 = v13;
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = v10;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_23155A1A0(&v13, &v12);
  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_231556674(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, const void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  memcpy(__dst, a5, sizeof(__dst));
  *(inited + 32) = NowPlayingCountSignal.id.getter();
  *(inited + 40) = v10;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_231556750(uint64_t a1, unsigned __int8 a2, void (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_27DD5AD88 != -1)
  {
    swift_once();
  }

  v7 = unk_27DD5B4E0;
  *(inited + 32) = qword_27DD5B4D8;
  *(inited + 40) = v7;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_23155684C(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v10 = a5[3];
  v11 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v10);
  *(inited + 32) = (*(v11 + 8))(v10, v11);
  *(inited + 40) = v12;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_231556948()
{
  OUTLINED_FUNCTION_26_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_29_2(inited, xmmword_231588340, *(v1 + 24), v3, v4, v5, v6, v7, v8, v9, v11);
  OUTLINED_FUNCTION_150();
  sub_2315860F4();
  OUTLINED_FUNCTION_132();
  v0();
}

uint64_t sub_2315569E8()
{
  OUTLINED_FUNCTION_26_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_29_2(inited, xmmword_231588340, *v1, v3, v4, v5, v6, v7, v8, v9, v11);
  OUTLINED_FUNCTION_150();
  sub_2315860F4();
  OUTLINED_FUNCTION_132();
  v0();
}

void sub_231556A88()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_20_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_67(inited, xmmword_231588340)[3].n128_u8[8] = v1;

  OUTLINED_FUNCTION_148();
  sub_2315860F4();
  OUTLINED_FUNCTION_102();
  v0();

  OUTLINED_FUNCTION_115();
}

void sub_231556B28()
{
  OUTLINED_FUNCTION_116();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (*v5 != -1)
  {
    swift_once();
  }

  v13 = *v1;
  *(inited + 32) = *v3;
  *(inited + 40) = v13;
  *(inited + 48) = v11;
  *(inited + 56) = v9;

  sub_2314A5168(v11, v9);
  sub_2315860F4();
  v7();

  OUTLINED_FUNCTION_115();
}

uint64_t sub_231556C10(uint64_t a1, unsigned __int8 a2, void (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v7 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](v7);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_280D6CB18 != -1)
  {
    swift_once();
  }

  MEMORY[0x23192FF80](qword_280D6CB20, *algn_280D6CB28);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_231556D98(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, uint64_t a5, char a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_280D6C988 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_280D6C990;
  v16 = qword_280D6C998;
  v11 = 0xE500000000000000;
  v12 = 0x636973754DLL;
  switch(a6)
  {
    case 1:
      v13 = 1701079382;
      goto LABEL_8;
    case 2:
      v11 = 0xE700000000000000;
      v12 = 0x74736163646F50;
      break;
    case 3:
      v13 = 1768186194;
LABEL_8:
      v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 4:
      v11 = 0xE90000000000006BLL;
      v12 = 0x6F6F626F69647541;
      break;
    case 5:
      v11 = 0xE700000000000000;
      v12 = 0x6C6172656E6547;
      break;
    default:
      break;
  }

  MEMORY[0x23192FF80](v12, v11);

  MEMORY[0x23192FF80](0x6C616E676953, 0xE600000000000000);
  *(inited + 32) = v15;
  *(inited + 40) = v16;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_231556F88(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  v10 = a5[1];
  *(inited + 32) = *a5;
  *(inited + 40) = v10;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_231557050(uint64_t a1, unsigned __int8 a2, void (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_27DD5AE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_27DD5BB40;
  v8 = qword_27DD5BB48;

  MEMORY[0x23192FF80](v7, v8);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_2315571D8(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_280D6EBB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_280D6EBC0;
  v11 = qword_280D6EBC8;

  MEMORY[0x23192FF80](v10, v11);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  v13 = *(a5 + *(type metadata accessor for SelectedAppDisambiguationFrequencySignal() + 24));
  sub_231586A54();
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_231557370(uint64_t a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  if (qword_280D6EB00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = qword_280D6EB08;
  v11 = qword_280D6EB10;

  MEMORY[0x23192FF80](v10, v11);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  v13 = *(a5 + *(type metadata accessor for SelectedActionDisambiguationFrequencySignal() + 24));
  sub_231586A54();
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2314A5168(a1, a2);
  sub_2315860F4();
  a3();
}

uint64_t sub_231557508(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = (*(*(a6 + 8) + 8))(a5);
  *(inited + 40) = v12;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_2314A5168(v9, v10);
  sub_2315860F4();
  a2();
}

uint64_t SignalProviding.getValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_231557660, 0, 0);
}

uint64_t sub_231557660()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_231557758;
  v5 = *(v0 + 16);

  return MEMORY[0x2822007B8](v5, 0, 0, 0x65756C6156746567, 0xEA00000000002928, sub_231557DDC, v2, &type metadata for SignalValue);
}

uint64_t sub_231557758()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_231557868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE20, qword_23158DE30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(*(a4 + 8) + 24))(sub_23155BA98, v13, a3);
}

uint64_t sub_2315579D8(uint64_t a1)
{
  sub_2314A5168(*a1, *(a1 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE20, qword_23158DE30);
  return sub_231586484();
}

uint64_t sub_231557A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_87(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x51uLL);
  return sub_231547714();
}