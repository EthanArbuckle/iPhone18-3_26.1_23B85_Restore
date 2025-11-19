void sub_1DD55CC1C(uint64_t a1, void *a2)
{
  v3 = sub_1DD640258();

  [a2 setExcludingSourceBundleIds_];
}

void sub_1DD55CC90(uint64_t a1, void *a2)
{
  v3 = sub_1DD640258();
  [a2 setMatchingMappedTopicIds_];
}

uint64_t sub_1DD55CD08(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 && xpc_activity_should_defer(*a1))
  {
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v3 = sub_1DD63F9F8();
    __swift_project_value_buffer(v3, qword_1EE16F0C8);
    v4 = sub_1DD63F9D8();
    v5 = sub_1DD640368();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DD38D000, v4, v5, "Defer PSE collections.", v6, 2u);
      MEMORY[0x1E12B3DA0](v6, -1, -1);
    }
  }

  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v9 = swift_allocBox();
  v11 = v10;
  v12 = sub_1DD63D078();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  swift_beginAccess();
  if (v1)
  {
LABEL_9:
    if (!xpc_activity_should_defer(v1))
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_10:
    while ((*(v7 + 16) & 1) == 0)
    {
      v13 = swift_allocObject();
      v13[2] = v7;
      v13[3] = v9;
      v13[4] = v8;

      sub_1DD63F6C8();

      if (v1)
      {
        goto LABEL_9;
      }
    }
  }

  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v14 = sub_1DD63F9F8();
  __swift_project_value_buffer(v14, qword_1EE16F0C8);

  v15 = sub_1DD63F9D8();
  v16 = sub_1DD640368();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    swift_beginAccess();
    *(v17 + 4) = *(v8 + 16);

    _os_log_impl(&dword_1DD38D000, v15, v16, "Processed %lu PSE collections.", v17, 0xCu);
    MEMORY[0x1E12B3DA0](v17, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DD55D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v52 = sub_1DD63F708();
  v51 = *(v52 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1DD63D078();
  v57 = *(v8 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDDA8, &unk_1DD65B820);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v49[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v49[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v49[-v24];
  v26 = swift_projectBox();
  v27 = sub_1DD63F6E8() == 0;
  swift_beginAccess();
  v53 = a2;
  *(a2 + 16) = v27;
  v58 = a1;
  sub_1DD63F6F8();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v8);
  swift_beginAccess();
  v28 = *(v12 + 56);
  sub_1DD3B7EA0(v25, v15);
  sub_1DD3B7EA0(v26, &v15[v28]);
  if (__swift_getEnumTagSinglePayload(v15, 1, v8) == 1)
  {
    sub_1DD3ADFD0(v25, &qword_1ECCDEBC0, &qword_1DD6445A0);
    if (__swift_getEnumTagSinglePayload(&v15[v28], 1, v8) == 1)
    {
      sub_1DD3ADFD0(v15, &qword_1ECCDEBC0, &qword_1DD6445A0);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1DD3B7EA0(v15, v22);
  if (__swift_getEnumTagSinglePayload(&v15[v28], 1, v8) == 1)
  {
    sub_1DD3ADFD0(v25, &qword_1ECCDEBC0, &qword_1DD6445A0);
    (*(v57 + 8))(v22, v8);
LABEL_6:
    sub_1DD3ADFD0(v15, &qword_1ECCDDDA8, &unk_1DD65B820);
LABEL_7:
    v29 = sub_1DD63F6E8();
    v30 = v56;
    swift_beginAccess();
    v31 = *(v30 + 16);
    v32 = __CFADD__(v31, v29);
    v33 = v31 + v29;
    if (!v32)
    {
      *(v30 + 16) = v33;
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_17;
  }

  v34 = v57;
  v35 = v54;
  (*(v57 + 32))(v54, &v15[v28], v8);
  sub_1DD55D684();
  v50 = sub_1DD63FD98();
  v36 = *(v34 + 8);
  v36(v35, v8);
  sub_1DD3ADFD0(v25, &qword_1ECCDEBC0, &qword_1DD6445A0);
  v36(v22, v8);
  sub_1DD3ADFD0(v15, &qword_1ECCDEBC0, &qword_1DD6445A0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (qword_1EE166510 != -1)
  {
LABEL_17:
    swift_once();
  }

  v37 = sub_1DD63F9F8();
  __swift_project_value_buffer(v37, qword_1EE16F0C8);
  v38 = v51;
  v39 = v55;
  v40 = v52;
  (*(v51 + 16))(v55, v58, v52);
  v41 = sub_1DD63F9D8();
  v42 = sub_1DD640378();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    v44 = v54;
    sub_1DD63F6F8();
    sub_1DD63CF48();
    v46 = v45;
    (*(v57 + 8))(v44, v8);
    (*(v38 + 8))(v55, v40);
    *(v43 + 4) = v46;
    _os_log_impl(&dword_1DD38D000, v41, v42, "The PSE returned lastSessionEndDate does not change: %f", v43, 0xCu);
    MEMORY[0x1E12B3DA0](v43, -1, -1);
  }

  else
  {

    (*(v38 + 8))(v39, v40);
  }

  v47 = v53;
  swift_beginAccess();
  *(v47 + 16) = 1;
LABEL_15:
  sub_1DD63F6F8();
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v8);
  swift_beginAccess();
  return sub_1DD49FF04(v19, v26);
}

unint64_t sub_1DD55D684()
{
  result = qword_1EE166050;
  if (!qword_1EE166050)
  {
    sub_1DD63D078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE166050);
  }

  return result;
}

SiriInference::PresentedChoices __swiftcall PresentedChoices.init(choices:identifiers:)(Swift::OpaquePointer choices, Swift::OpaquePointer identifiers)
{
  v2->_rawValue = choices._rawValue;
  v2[1]._rawValue = identifiers._rawValue;
  result.identifiers = identifiers;
  result.choices = choices;
  return result;
}

void sub_1DD55D704(double a1)
{
  if (a1 != 0.0)
  {
    v1 = log10(fabs(a1));
    v2 = *&v1 & 0x7FFFFFFFFFFFFFFFLL;
    if (v1 < 0.0)
    {
      if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      if (v1 <= -9.22337204e18)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v3 = -2.0;
      v2 = 0x43E0000000000000;
      if (v1 < 9.22337204e18)
      {
LABEL_10:
        __exp10(v3 + v1);
        return;
      }

      __break(1u);
    }

    if (v2 <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v1 > -9.22337204e18)
      {
        v3 = -1.0;
        if (v1 < 9.22337204e18)
        {
          goto LABEL_10;
        }

LABEL_16:
        __break(1u);
        return;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_13;
  }
}

uint64_t sub_1DD55D7D8(uint64_t a1)
{
  v1 = 0;
  while (v1 != 10)
  {
    v2 = byte_1F58AAFA8[v1++ + 32];
    if (qword_1DD65B9D0[v2] >= a1)
    {
      return v2;
    }
  }

  return 9;
}

void sub_1DD55D81C(uint64_t a1)
{
  sub_1DD55D704(a1);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t getEnumTagSinglePayload for TimeIntervalBucket(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TimeIntervalBucket(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD55D9F4(uint64_t result)
{
  if (result)
  {
    switch(result)
    {
      case 0x1ELL:
        return 1;
      case 0x7FFFFFFFLL:
        return 9;
      case 0x258:
        return 3;
      case 0xE10:
        return 4;
      case 0x5460:
        return 5;
      case 0x15180:
        return 6;
      case 0x93A80:
        return 7;
      case 0x24EA00:
        return 8;
      case 0x78:
        return 2;
      default:
        return 10;
    }
  }

  return result;
}

uint64_t sub_1DD55DAD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD55D9F4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD55DB00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD55D87C(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1DD55DBF0()
{
  result = qword_1ECCDEBC8;
  if (!qword_1ECCDEBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDEBD0, qword_1DD65B8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEBC8);
  }

  return result;
}

unint64_t sub_1DD55DC58()
{
  result = qword_1ECCDEBD8;
  if (!qword_1ECCDEBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEBD8);
  }

  return result;
}

unint64_t sub_1DD55DCAC()
{
  result = qword_1ECCDEBE0;
  if (!qword_1ECCDEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEBE0);
  }

  return result;
}

uint64_t sub_1DD55DD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrivatizedHandleSignalSet(0);
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v10 = (v9 - v8);
  v249 = type metadata accessor for ContactResolver.HandleSignalSet(0);
  v11 = OUTLINED_FUNCTION_7(v249);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v16 = (v15 - v14);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  OUTLINED_FUNCTION_0(v245);
  v232 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  v248 = &v232 - v21;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD78, &unk_1DD644390);
  OUTLINED_FUNCTION_0(v244);
  v243 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v25);
  v246 = &v232 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  v28 = OUTLINED_FUNCTION_3(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v232 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE510, &qword_1DD65BA20);
  v37 = OUTLINED_FUNCTION_3(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v232 - v43;
  v45 = type metadata accessor for PrivatizedSignalSet(0);
  v46 = *(v45 + 100);
  v47 = sub_1DD63F378();
  v234 = v46;
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
  v237 = v45;
  v238 = *(v45 + 104);
  OUTLINED_FUNCTION_65_0();
  v247 = v47;
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v47);
  v54 = *(a1 + 304);
  *(a2 + 8) = *(a1 + 288);
  v55 = *(a1 + 320);
  *a2 = *(a1 + 280);
  *(a2 + 24) = v54;
  *(a2 + 40) = v55;
  *(a2 + 48) = *(a1 + 328);
  *(a2 + 49) = *(a1 + 332);
  *(a2 + 50) = *(a1 + 333);
  *(a2 + 51) = *(a1 + 334);
  *(a2 + 52) = *(a1 + 336);
  *(a2 + 53) = *(a1 + 337);
  *(a2 + 54) = *(a1 + 335);
  *(a2 + 55) = *(a1 + 338);
  *(a2 + 56) = *(a1 + 339);
  *(a2 + 57) = *(a1 + 340);
  sub_1DD55D704(*(a1 + 344));
  *(a2 + 64) = v56;
  sub_1DD55D704(*(a1 + 352));
  *(a2 + 72) = v57;
  *(a2 + 80) = *(a1 + 360);
  *(a2 + 81) = *(a1 + 361);
  *(a2 + 82) = *(a1 + 362);
  *(a2 + 83) = *(a1 + 363);
  sub_1DD55D81C(*(a1 + 368));
  *(a2 + 88) = v58;
  sub_1DD55D81C(*(a1 + 376));
  *(a2 + 96) = v59;
  sub_1DD55D81C(*(a1 + 384));
  *(a2 + 104) = v60;
  v61 = type metadata accessor for ContactResolver.SignalSet(0);
  v62 = v61[30];
  v236 = a1;
  sub_1DD4DDC08(a1 + v62, v35, &qword_1ECCDCB80, &qword_1DD64A0E0);
  v63 = sub_1DD63F148();
  OUTLINED_FUNCTION_27_22(v35);
  if (v64)
  {
    v66 = sub_1DD390754(v35, &qword_1ECCDCB80, &qword_1DD64A0E0);
    v67 = 1;
  }

  else
  {
    sub_1DD63F0D8();
    OUTLINED_FUNCTION_31_19();
    v66 = (*(v65 + 8))(v35, v63);
    v67 = 0;
  }

  OUTLINED_FUNCTION_38_14(v66, v67);
  sub_1DD4DDCBC(v44, a2 + v237[24], &qword_1ECCDE510, &qword_1DD65BA20);
  v68 = v236;
  v69 = v235;
  sub_1DD4DDC08(v236 + v61[31], v235, &qword_1ECCDCB80, &qword_1DD64A0E0);
  OUTLINED_FUNCTION_27_22(v69);
  if (v64)
  {
    sub_1DD390754(v69, &qword_1ECCDCB80, &qword_1DD64A0E0);
    OUTLINED_FUNCTION_43_15();
    v70 = v233;
  }

  else
  {
    v70 = v233;
    sub_1DD63F0D8();
    OUTLINED_FUNCTION_31_19();
    (*(v71 + 8))(v69, v63);
    OUTLINED_FUNCTION_43_15();
  }

  OUTLINED_FUNCTION_38_14(v72, v73);
  sub_1DD563F98(v70, a2 + v234);
  sub_1DD4DDC08(v68 + v61[32], v69, &qword_1ECCDCB80, &qword_1DD64A0E0);
  OUTLINED_FUNCTION_27_22(v69);
  if (v64)
  {
    v76 = sub_1DD390754(v69, &qword_1ECCDCB80, &qword_1DD64A0E0);
    v77 = 1;
    v74 = v239;
  }

  else
  {
    v74 = v239;
    sub_1DD63F0D8();
    OUTLINED_FUNCTION_31_19();
    v76 = (*(v75 + 8))(v69, v63);
    v77 = 0;
  }

  OUTLINED_FUNCTION_38_14(v76, v77);
  sub_1DD563F98(v74, a2 + v46);
  v78 = v237;
  *(a2 + v237[27]) = *(v68 + v61[34]);
  *(a2 + v78[28]) = *(v68 + v61[35]);
  *(a2 + v78[29]) = *(v68 + v61[36]);
  *(a2 + v78[30]) = *(v68 + v61[37]);
  *(a2 + v78[31]) = *(v68 + v61[38]);
  *(a2 + v78[32]) = *(v68 + v61[39]);
  *(a2 + v78[33]) = *(v68 + v61[40]);
  *(a2 + v78[34]) = *(v68 + v61[41]);
  *(a2 + v78[35]) = *(v68 + v61[42] + 9);
  v79 = v68 + v61[43];
  v81 = *(v79 + 16);
  v80 = *(v79 + 24);
  v82 = (a2 + v78[36]);
  *v82 = v81;
  v82[1] = v80;
  *(a2 + v78[37]) = *(v68 + v61[44]);
  *(a2 + v78[38]) = *(v68 + v61[45]);
  v83 = v68 + v61[33];
  v84 = *v83;
  v85 = *(v83 + 16);
  v86 = *(v83 + 32);
  v256 = *(v83 + 48);
  v254 = v85;
  v255 = v86;
  v253 = v84;

  sub_1DD585314(v251);
  v87 = a2 + v78[39];
  v88 = v251[1];
  *v87 = v251[0];
  *(v87 + 16) = v88;
  *(v87 + 32) = v251[2];
  *(v87 + 48) = v252;
  *(a2 + v78[41]) = *(v68 + v61[47]);
  *(a2 + v78[42]) = *(v68 + v61[48]);
  *(a2 + v78[43]) = *(v68 + v61[49] + 9);
  sub_1DD55D704(*(v68 + v61[50] + 16));
  *(a2 + v78[44]) = v89;
  *(a2 + v78[45]) = *(v68 + v61[51]);
  *(a2 + v78[46]) = *(v68 + v61[58]);
  *(a2 + v78[47]) = *(v68 + v61[56]);
  *(a2 + v78[48]) = *(v68 + v61[60]);
  type metadata accessor for MegadomeEntityFeatures();
  swift_allocObject();
  v90 = sub_1DD439928();
  v91 = v78[49];
  v235 = a2;
  *(a2 + v91) = v90;
  v92 = *(v68 + v61[61]);
  sub_1DD55D704(*(v92 + 16));
  v90[2] = v93;
  sub_1DD55D704(*(v92 + 24));
  v90[3] = v94;
  sub_1DD55D704(*(v92 + 32));
  v90[4] = v95;
  sub_1DD55D704(*(v92 + 40));
  v90[5] = v96;
  sub_1DD55D704(*(v92 + 48));
  v90[6] = v97;
  sub_1DD55D704(*(v92 + 56));
  v90[7] = v98;
  sub_1DD55D704(*(v92 + 64));
  v90[8] = v99;
  sub_1DD55D704(*(v92 + 72));
  v90[9] = v100;
  sub_1DD55D704(*(v92 + 80));
  v90[10] = v101;
  sub_1DD55D704(*(v92 + 88));
  v90[11] = v102;
  sub_1DD55D704(*(v92 + 96));
  v90[12] = v103;
  sub_1DD55D704(*(v92 + 104));
  v90[13] = v104;
  sub_1DD55D704(*(v92 + 112));
  v90[14] = v105;
  sub_1DD55D704(*(v92 + 120));
  v90[15] = v106;
  sub_1DD55D704(*(v92 + 128));
  v90[16] = v107;
  sub_1DD55D704(*(v92 + 136));
  v90[17] = v108;
  sub_1DD55D704(*(v92 + 144));
  v90[18] = v109;
  sub_1DD55D704(*(v92 + 152));
  v90[19] = v110;
  sub_1DD55D704(*(v92 + 160));
  v90[20] = v111;
  sub_1DD55D704(*(v92 + 168));
  v90[21] = v112;
  sub_1DD55D704(*(v92 + 176));
  v90[22] = v113;
  sub_1DD55D704(*(v92 + 184));
  v90[23] = v114;
  sub_1DD55D704(*(v92 + 192));
  v90[24] = v115;
  sub_1DD55D704(*(v92 + 200));
  v90[25] = v116;
  sub_1DD55D704(*(v92 + 208));
  v90[26] = v117;
  sub_1DD55D704(*(v92 + 216));
  v90[27] = v118;
  sub_1DD55D704(*(v92 + 224));
  v90[28] = v119;
  sub_1DD55D704(*(v92 + 232));
  v90[29] = v120;
  sub_1DD55D704(*(v92 + 240));
  v90[30] = v121;
  sub_1DD55D704(*(v92 + 248));
  v90[31] = v122;
  sub_1DD55D704(*(v92 + 256));
  v90[32] = v123;
  sub_1DD55D704(*(v92 + 264));
  v90[33] = v124;
  sub_1DD55D704(*(v92 + 272));
  v90[34] = v125;
  sub_1DD55D704(*(v92 + 280));
  v90[35] = v126;
  sub_1DD55D704(*(v92 + 288));
  v90[36] = v127;
  sub_1DD55D704(*(v92 + 296));
  v90[37] = v128;
  sub_1DD55D704(*(v92 + 304));
  v90[38] = v129;
  sub_1DD55D704(*(v92 + 312));
  v90[39] = v130;
  sub_1DD55D704(*(v92 + 320));
  v90[40] = v131;
  sub_1DD55D704(*(v92 + 328));
  v90[41] = v132;
  sub_1DD55D704(*(v92 + 336));
  v90[42] = v133;
  sub_1DD55D704(*(v92 + 344));
  v90[43] = v134;
  sub_1DD55D704(*(v92 + 352));
  v90[44] = v135;
  sub_1DD55D704(*(v92 + 360));
  v90[45] = v136;
  sub_1DD55D704(*(v92 + 368));
  v90[46] = v137;
  sub_1DD55D704(*(v92 + 376));
  v90[47] = v138;
  sub_1DD55D704(*(v92 + 384));
  v90[48] = v139;
  sub_1DD55D704(*(v92 + 392));
  v90[49] = v140;
  sub_1DD55D704(*(v92 + 400));
  v90[50] = v141;
  sub_1DD55D704(*(v92 + 408));
  v90[51] = v142;
  sub_1DD55D704(*(v92 + 416));
  v90[52] = v143;
  sub_1DD55D704(*(v92 + 424));
  v90[53] = v144;
  sub_1DD55D704(*(v92 + 432));
  v90[54] = v145;
  sub_1DD55D704(*(v92 + 440));
  v90[55] = v146;
  sub_1DD55D704(*(v92 + 448));
  v90[56] = v147;
  sub_1DD55D704(*(v92 + 456));
  v90[57] = v148;
  sub_1DD55D704(*(v92 + 464));
  v90[58] = v149;
  sub_1DD55D704(*(v92 + 472));
  v90[59] = v150;
  sub_1DD55D704(*(v92 + 480));
  v90[60] = v151;
  sub_1DD55D704(*(v92 + 488));
  v90[61] = v152;
  sub_1DD55D704(*(v92 + 496));
  v90[62] = v153;
  sub_1DD55D704(*(v92 + 504));
  v90[63] = v154;
  sub_1DD55D704(*(v92 + 512));
  v90[64] = v155;
  sub_1DD55D704(*(v92 + 520));
  v90[65] = v156;
  sub_1DD55D704(*(v92 + 528));
  v90[66] = v157;
  sub_1DD55D704(*(v92 + 536));
  v90[67] = v158;
  sub_1DD55D704(*(v92 + 544));
  v90[68] = v159;
  sub_1DD55D704(*(v92 + 552));
  v90[69] = v160;
  sub_1DD55D704(*(v92 + 560));
  v90[70] = v161;
  sub_1DD55D704(*(v92 + 568));
  v90[71] = v162;
  sub_1DD55D704(*(v92 + 576));
  v90[72] = v163;
  sub_1DD55D704(*(v92 + 584));
  v90[73] = v164;
  sub_1DD55D704(*(v92 + 592));
  v90[74] = v165;
  sub_1DD55D704(*(v92 + 600));
  v90[75] = v166;
  sub_1DD55D704(*(v92 + 608));
  v90[76] = v167;
  sub_1DD55D704(*(v92 + 616));
  v90[77] = v168;
  sub_1DD55D704(*(v92 + 624));
  v90[78] = v169;
  sub_1DD55D704(*(v92 + 632));
  v90[79] = v170;
  sub_1DD55D704(*(v92 + 640));
  v90[80] = v171;
  sub_1DD55D704(*(v92 + 648));
  v90[81] = v172;
  sub_1DD55D704(*(v92 + 656));
  v90[82] = v173;
  sub_1DD55D704(*(v92 + 664));
  v90[83] = v174;
  sub_1DD55D704(*(v92 + 672));
  v90[84] = v175;
  sub_1DD55D704(*(v92 + 680));
  v90[85] = v176;
  sub_1DD55D704(*(v92 + 688));
  v90[86] = v177;
  sub_1DD55D704(*(v92 + 696));
  v90[87] = v178;
  sub_1DD55D704(*(v92 + 704));
  v90[88] = v179;
  sub_1DD55D704(*(v92 + 712));
  v90[89] = v180;
  sub_1DD55D704(*(v92 + 720));
  v90[90] = v181;
  sub_1DD55D704(*(v92 + 728));
  v90[91] = v182;
  sub_1DD55D704(*(v92 + 736));
  v90[92] = v183;
  sub_1DD55D704(*(v92 + 744));
  v90[93] = v184;
  sub_1DD55D704(*(v92 + 752));
  v90[94] = v185;
  sub_1DD55D704(*(v92 + 760));
  v90[95] = v186;
  sub_1DD55D704(*(v92 + 768));
  v90[96] = v187;
  sub_1DD55D704(*(v92 + 776));
  v90[97] = v188;
  sub_1DD55D704(*(v92 + 784));
  v90[98] = v189;
  sub_1DD55D704(*(v92 + 792));
  v90[99] = v190;
  sub_1DD55D704(*(v92 + 800));
  v90[100] = v191;
  sub_1DD55D704(*(v92 + 808));
  v90[101] = v192;
  sub_1DD55D704(*(v92 + 816));
  v90[102] = v193;
  sub_1DD55D704(*(v92 + 824));
  v90[103] = v194;
  sub_1DD55D704(*(v92 + 832));
  v90[104] = v195;
  sub_1DD55D704(*(v92 + 840));
  v90[105] = v196;
  sub_1DD55D704(*(v92 + 848));
  v90[106] = v197;
  sub_1DD55D704(*(v92 + 856));
  v90[107] = v198;
  sub_1DD55D704(*(v92 + 864));
  v90[108] = v199;
  sub_1DD55D704(*(v92 + 872));
  v90[109] = v200;
  sub_1DD55D704(*(v92 + 880));
  v90[110] = v201;
  sub_1DD55D704(*(v92 + 888));
  v90[111] = v202;
  sub_1DD55D704(*(v92 + 896));
  v90[112] = v203;
  sub_1DD55D704(*(v92 + 904));
  v90[113] = v204;
  v90[114] = *(v92 + 912);
  v90[115] = *(v92 + 920);
  v90[116] = *(v92 + 928);
  sub_1DD55D704(*(v92 + 936));
  v90[117] = v205;
  sub_1DD55D704(*(v92 + 944));
  v90[118] = v206;
  sub_1DD55D704(*(v92 + 952));
  v90[119] = v207;
  sub_1DD55D704(*(v92 + 960));
  v90[120] = v208;
  v209 = *(v68 + 272);
  v210 = *(v209 + 16);
  v211 = MEMORY[0x1E69E7CC0];
  if (v210)
  {
    v250 = MEMORY[0x1E69E7CC0];
    sub_1DD42B7EC(0, v210, 0);
    OUTLINED_FUNCTION_3_51(&v256);
    v213 = v209 + v212;
    v238 = v63 - 8;
    v211 = v250;
    v239 = *(v214 + 72);
    v240 = v63;
    do
    {
      v215 = v248;
      sub_1DD4DDC08(v213, v248, &qword_1ECCDBBD8, &unk_1DD645A90);
      sub_1DD5640D4(v215 + *(v245 + 36), v16, type metadata accessor for ContactResolver.HandleSignalSet);
      *v10 = *v16;
      v10[1] = v16[1];
      v10[2] = v16[2];
      v10[3] = v16[3];
      v10[4] = v16[4];
      v216 = v242;
      sub_1DD4DDC08(&v16[v249[9]], v242, &qword_1ECCDCB80, &qword_1DD64A0E0);
      OUTLINED_FUNCTION_27_22(v216);
      if (v64)
      {
        sub_1DD390754(v216, &qword_1ECCDCB80, &qword_1DD64A0E0);
        v218 = 1;
        v217 = v241;
      }

      else
      {
        v217 = v241;
        sub_1DD63F0D8();
        (*(*(v63 - 8) + 8))(v216, v63);
        v218 = 0;
      }

      __swift_storeEnumTagSinglePayload(v217, v218, 1, v247);
      v219 = *(v244 + 36);
      sub_1DD4DDCBC(v217, &v10[v4[9]], &qword_1ECCDE510, &qword_1DD65BA20);
      v220 = v249;
      v221 = v16[v249[10]];
      v10[v4[10]] = v221;
      v10[v4[11]] = v221;
      v10[v4[12]] = v221;
      v10[v4[13]] = v16[v220[11]];
      v10[v4[14]] = v16[v220[12]];
      v10[v4[15]] = v16[v220[13]];
      v222 = v16[v220[14]];
      sub_1DD564134(v16, type metadata accessor for ContactResolver.HandleSignalSet);
      v10[v4[16]] = v222;
      v223 = v246;
      sub_1DD56418C(v10, &v246[v219]);
      v224 = v248;
      v226 = *(v248 + 56);
      v225 = *(v248 + 64);

      sub_1DD390754(v224, &qword_1ECCDBBD8, &unk_1DD645A90);
      *v223 = v226;
      v223[1] = v225;
      v250 = v211;
      v228 = *(v211 + 16);
      v227 = *(v211 + 24);
      if (v228 >= v227 >> 1)
      {
        sub_1DD42B7EC(v227 > 1, v228 + 1, 1);
        v223 = v246;
        v211 = v250;
      }

      *(v211 + 16) = v228 + 1;
      OUTLINED_FUNCTION_3_51(&v257);
      sub_1DD4DDCBC(v223, v211 + v229 + *(v230 + 72) * v228, &qword_1ECCDBD78, &unk_1DD644390);
      v213 += v239;
      --v210;
      v63 = v240;
    }

    while (v210);
    v68 = v236;
  }

  result = sub_1DD564134(v68, type metadata accessor for ContactResolver.SignalSet);
  *(v235 + v237[40]) = v211;
  return result;
}

void sub_1DD55EDF0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  sub_1DD55D704(*(a1 + 1));
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_16:

    return;
  }

  v14 = MEMORY[0x1E69E7CC0];
  sub_1DD42B80C(0, v3, 0);
  v4 = (v2 + 112);
  while (1)
  {
    v5 = *(v4 - 3);
    v6 = *(v4 - 2);
    v7 = *v4;
    if (*v4 != 0.0)
    {
      break;
    }

LABEL_13:
    v11 = *(v14 + 16);
    v12 = *(v14 + 24);

    if (v11 >= v12 >> 1)
    {
      sub_1DD42B80C(v12 > 1, v11 + 1, 1);
    }

    *(v14 + 16) = v11 + 1;
    v13 = v14 + 24 * v11;
    *(v13 + 32) = v5;
    *(v13 + 40) = v6;
    *(v13 + 48) = v7;
    v4 += 11;
    if (!--v3)
    {
      goto LABEL_16;
    }
  }

  v8 = log10(fabs(v7));
  if (v8 >= 0.0)
  {
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    if (v8 <= -9.22337204e18)
    {
      goto LABEL_21;
    }

    v9 = -1.0;
    if (v8 >= 9.22337204e18)
    {
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v8 <= -9.22337204e18)
    {
      goto LABEL_20;
    }

    v9 = -2.0;
    if (v8 >= 9.22337204e18)
    {
      goto LABEL_22;
    }

LABEL_12:
    v10 = __exp10(v9 + v8);
    v7 = v10 * round(v7 / v10);
    goto LABEL_13;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

BOOL sub_1DD55EFCC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1DD63F378();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE510, &qword_1DD65BA20);
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_4();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v73 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBE8, &qword_1DD65BA28);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v73 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v73 - v34;
  v36 = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 8), *(a2 + 8)), vceqq_s64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && ((*a1 ^ *a2) & 1) == 0 && *(a1 + 5) == *(a2 + 5))
  {
    if (a1[48] != a2[48])
    {
      return 0;
    }

    if (a1[49] != a2[49])
    {
      return 0;
    }

    if (a1[50] != a2[50])
    {
      return 0;
    }

    if (a1[51] != a2[51])
    {
      return 0;
    }

    if (a1[52] != a2[52])
    {
      return 0;
    }

    if (a1[53] != a2[53])
    {
      return 0;
    }

    if (a1[54] != a2[54])
    {
      return 0;
    }

    if (a1[55] != a2[55])
    {
      return 0;
    }

    if (a1[56] != a2[56])
    {
      return 0;
    }

    if (a1[57] != a2[57])
    {
      return 0;
    }

    if (*(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }

    if (*(a1 + 9) != *(a2 + 9))
    {
      return 0;
    }

    if (a1[80] != a2[80])
    {
      return 0;
    }

    v79 = v33;
    v80 = v32;
    v78 = v19;
    if (a1[81] != a2[81] || a1[82] != a2[82] || a1[83] != a2[83] || *(a1 + 11) != *(a2 + 11) || *(a1 + 12) != *(a2 + 12) || *(a1 + 13) != *(a2 + 13))
    {
      return 0;
    }

    v37 = type metadata accessor for PrivatizedSignalSet(0);
    v38 = *(v37 + 96);
    v75 = v37;
    v76 = v38;
    v77 = *(v80 + 48);
    sub_1DD4DDC08(&a1[v38], v35, &qword_1ECCDE510, &qword_1DD65BA20);
    sub_1DD4DDC08(&a2[v76], &v35[v77], &qword_1ECCDE510, &qword_1DD65BA20);
    OUTLINED_FUNCTION_105(v35);
    if (v39)
    {
      OUTLINED_FUNCTION_105(&v35[v77]);
      if (v39)
      {
        sub_1DD390754(v35, &qword_1ECCDE510, &qword_1DD65BA20);
        goto LABEL_33;
      }
    }

    else
    {
      sub_1DD4DDC08(v35, v25, &qword_1ECCDE510, &qword_1DD65BA20);
      OUTLINED_FUNCTION_105(&v35[v77]);
      if (!v39)
      {
        OUTLINED_FUNCTION_44_14();
        v74 = v35;
        v73 = v12;
        v41(v12, &v35[v77], v4);
        OUTLINED_FUNCTION_0_116();
        sub_1DD563408(v42);
        LODWORD(v77) = sub_1DD63FD98();
        v43 = *(v7 + 8);
        v43(v73, v4);
        v43(v25, v4);
        sub_1DD390754(v74, &qword_1ECCDE510, &qword_1DD65BA20);
        if ((v77 & 1) == 0)
        {
          return 0;
        }

LABEL_33:
        v44 = v75[25];
        v45 = *(v80 + 48);
        sub_1DD4DDC08(&a1[v44], v30, &qword_1ECCDE510, &qword_1DD65BA20);
        v77 = v45;
        sub_1DD4DDC08(&a2[v44], &v30[v45], &qword_1ECCDE510, &qword_1DD65BA20);
        OUTLINED_FUNCTION_105(v30);
        if (v39)
        {
          OUTLINED_FUNCTION_105(&v30[v77]);
          if (v39)
          {
            sub_1DD390754(v30, &qword_1ECCDE510, &qword_1DD65BA20);
LABEL_43:
            v54 = v75[26];
            v55 = v79;
            v56 = *(v80 + 48);
            sub_1DD4DDC08(&a1[v54], v79, &qword_1ECCDE510, &qword_1DD65BA20);
            sub_1DD4DDC08(&a2[v54], v55 + v56, &qword_1ECCDE510, &qword_1DD65BA20);
            OUTLINED_FUNCTION_105(v55);
            if (v39)
            {
              OUTLINED_FUNCTION_105(v79 + v56);
              if (v39)
              {
                sub_1DD390754(v79, &qword_1ECCDE510, &qword_1DD65BA20);
LABEL_56:
                OUTLINED_FUNCTION_30(v75[27]);
                if (v39)
                {
                  OUTLINED_FUNCTION_30(v75[28]);
                  if (v39)
                  {
                    OUTLINED_FUNCTION_30(v75[29]);
                    if (v39)
                    {
                      OUTLINED_FUNCTION_30(v75[30]);
                      if (v39)
                      {
                        OUTLINED_FUNCTION_30(v75[31]);
                        if (v39)
                        {
                          OUTLINED_FUNCTION_30(v75[32]);
                          if (v39)
                          {
                            OUTLINED_FUNCTION_30(v75[33]);
                            if (v39)
                            {
                              OUTLINED_FUNCTION_30(v75[34]);
                              if (v39)
                              {
                                OUTLINED_FUNCTION_30(v75[35]);
                                if (v39)
                                {
                                  v66 = v75[36];
                                  v67 = *&a1[v66];
                                  v68 = *&a1[v66 + 8];
                                  v69 = &a2[v66];
                                  v70 = v67 == *v69 && v68 == *(v69 + 1);
                                  if (v70 || (sub_1DD640CD8() & 1) != 0)
                                  {
                                    OUTLINED_FUNCTION_30(v75[37]);
                                    if (v39)
                                    {
                                      OUTLINED_FUNCTION_30(v75[38]);
                                      if (v39)
                                      {
                                        v71 = v75[39];
                                        v72 = *&a1[v71 + 16];
                                        v81[0] = *&a1[v71];
                                        v81[1] = v72;
                                        v81[2] = *&a1[v71 + 32];
                                        v82 = *&a1[v71 + 48];
                                        OUTLINED_FUNCTION_25_18(v71);
                                        if (sub_1DD585198(v81, v83) && (sub_1DD3C4410(*&a1[v75[40]], *&a2[v75[40]]) & 1) != 0)
                                        {
                                          OUTLINED_FUNCTION_30(v75[41]);
                                          if (v39)
                                          {
                                            OUTLINED_FUNCTION_30(v75[42]);
                                            if (v39)
                                            {
                                              OUTLINED_FUNCTION_30(v75[43]);
                                              if (v39)
                                              {
                                                if (*&a1[v75[44]] == *&a2[v75[44]])
                                                {
                                                  OUTLINED_FUNCTION_30(v75[45]);
                                                  if (v39)
                                                  {
                                                    OUTLINED_FUNCTION_30(v75[46]);
                                                    if (v39)
                                                    {
                                                      OUTLINED_FUNCTION_30(v75[47]);
                                                      if (v39)
                                                      {
                                                        if (*&a1[v75[48]] == *&a2[v75[48]])
                                                        {
                                                          type metadata accessor for MegadomeEntityFeatures();
                                                          return static MegadomeEntityFeatures.== infix(_:_:)(*&a1[v75[49]], *&a2[v75[49]]);
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
                }

                return 0;
              }
            }

            else
            {
              v57 = v79;
              sub_1DD4DDC08(v79, v78, &qword_1ECCDE510, &qword_1DD65BA20);
              OUTLINED_FUNCTION_105(v57 + v56);
              if (!v58)
              {
                OUTLINED_FUNCTION_44_14();
                v60 = v79;
                v61(v12, v79 + v56, v4);
                OUTLINED_FUNCTION_0_116();
                sub_1DD563408(v62);
                v63 = v78;
                OUTLINED_FUNCTION_40();
                v64 = sub_1DD63FD98();
                v65 = *(v7 + 8);
                v65(v12, v4);
                v65(v63, v4);
                sub_1DD390754(v60, &qword_1ECCDE510, &qword_1DD65BA20);
                if (v64)
                {
                  goto LABEL_56;
                }

                return 0;
              }

              (*(v7 + 8))(v78, v4);
            }

            v40 = v79;
LABEL_52:
            sub_1DD390754(v40, &qword_1ECCDEBE8, &qword_1DD65BA28);
            return 0;
          }
        }

        else
        {
          sub_1DD4DDC08(v30, v22, &qword_1ECCDE510, &qword_1DD65BA20);
          OUTLINED_FUNCTION_105(&v30[v77]);
          if (!v46)
          {
            OUTLINED_FUNCTION_44_14();
            v50(v12, &v30[v77], v4);
            OUTLINED_FUNCTION_0_116();
            sub_1DD563408(v51);
            LODWORD(v77) = OUTLINED_FUNCTION_48_14();
            v52 = *(v7 + 8);
            v52(v12, v4);
            v53 = OUTLINED_FUNCTION_47_10();
            (v52)(v53);
            sub_1DD390754(v30, &qword_1ECCDE510, &qword_1DD65BA20);
            if ((v77 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_43;
          }

          v47 = *(v7 + 8);
          v48 = OUTLINED_FUNCTION_47_10();
          v49(v48);
        }

        v40 = v30;
        goto LABEL_52;
      }

      (*(v7 + 8))(v25, v4);
    }

    v40 = v35;
    goto LABEL_52;
  }

  return v36;
}

uint64_t sub_1DD55F9B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001DD66B9C0 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x80000001DD66B9E0 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7365676775537369 && a2 == 0xEB00000000646574;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x80000001DD66BA60 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000021 && 0x80000001DD66BA80 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F636F7079487369 && a2 == 0xEC0000006D736972;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x80000001DD667400 == a2;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001DD667420 == a2;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x74536D6F72467369 && a2 == 0xEF68637261655364;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x4C4E6D6F72467369 && a2 == 0xEF68637261655358;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x52536D6F72467369 && a2 == 0xEF68637261655352;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x65726F6353786C6ELL && a2 == 0xE800000000000000;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x65726F6353727273 && a2 == 0xE800000000000000;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x746E656365527369 && a2 == 0xE800000000000000;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000014 && 0x80000001DD667040 == a2;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000015 && 0x80000001DD667060 == a2;
                                if (v20 || (sub_1DD640CD8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000013 && 0x80000001DD667080 == a2;
                                  if (v21 || (sub_1DD640CD8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x5279636E65636572 && a2 == 0xEB000000006B6E61;
                                    if (v22 || (sub_1DD640CD8() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000017 && 0x80000001DD6670A0 == a2;
                                      if (v23 || (sub_1DD640CD8() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000018 && 0x80000001DD6670C0 == a2;
                                        if (v24 || (sub_1DD640CD8() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x5379726F74736968 && a2 == 0xEC00000073746174;
                                          if (v25 || (sub_1DD640CD8() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000018 && 0x80000001DD66BAB0 == a2;
                                            if (v26 || (sub_1DD640CD8() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000019 && 0x80000001DD66BAD0 == a2;
                                              if (v27 || (sub_1DD640CD8() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x64726143654D7369 && a2 == 0xE800000000000000;
                                                if (v28 || (sub_1DD640CD8() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000010 && 0x80000001DD667110 == a2;
                                                  if (v29 || (sub_1DD640CD8() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD00000000000001ALL && 0x80000001DD66BB10 == a2;
                                                    if (v30 || (sub_1DD640CD8() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x6974616C65527369 && a2 == 0xEF7361696C416E6FLL;
                                                      if (v31 || (sub_1DD640CD8() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000019 && 0x80000001DD66BB30 == a2;
                                                        if (v32 || (sub_1DD640CD8() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x45696A6F6D457369 && a2 == 0xEF6465646E617078;
                                                          if (v33 || (sub_1DD640CD8() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000027 && 0x80000001DD66BB50 == a2;
                                                            if (v34 || (sub_1DD640CD8() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000027 && 0x80000001DD66BB80 == a2;
                                                              if (v35 || (sub_1DD640CD8() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000011 && 0x80000001DD66BBB0 == a2;
                                                                if (v36 || (sub_1DD640CD8() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000012 && 0x80000001DD66BBD0 == a2;
                                                                  if (v37 || (sub_1DD640CD8() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
                                                                    if (v38 || (sub_1DD640CD8() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD000000000000010 && 0x80000001DD66BBF0 == a2;
                                                                      if (v39 || (sub_1DD640CD8() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD000000000000013 && 0x80000001DD66BAF0 == a2;
                                                                        if (v40 || (sub_1DD640CD8() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD000000000000019 && 0x80000001DD672ED0 == a2;
                                                                          if (v41 || (sub_1DD640CD8() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD00000000000001ALL && 0x80000001DD66BC10 == a2;
                                                                            if (v42 || (sub_1DD640CD8() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD000000000000018 && 0x80000001DD66BC30 == a2;
                                                                              if (v43 || (sub_1DD640CD8() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000011 && 0x80000001DD66BC50 == a2;
                                                                                if (v44 || (sub_1DD640CD8() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD00000000000002ALL && 0x80000001DD66BC70 == a2;
                                                                                  if (v45 || (sub_1DD640CD8() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0x695353554C507369 && a2 == 0xEC0000006C616E67;
                                                                                    if (v46 || (sub_1DD640CD8() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0x6E67695333457369 && a2 == 0xEA00000000006C61;
                                                                                      if (v47 || (sub_1DD640CD8() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0x6143796C6E4F7369 && a2 == 0xEF6574616469646ELL;
                                                                                        if (v48 || (sub_1DD640CD8() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0xD000000000000017 && 0x80000001DD667590 == a2;
                                                                                          if (v49 || (sub_1DD640CD8() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else if (a1 == 0xD000000000000016 && 0x80000001DD66BD50 == a2)
                                                                                          {

                                                                                            return 45;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v51 = sub_1DD640CD8();

                                                                                            if (v51)
                                                                                            {
                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              return 46;
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
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD56070C(char a1)
{
  result = 0x7365676775537369;
  switch(a1)
  {
    case 1:
    case 18:
    case 44:
      result = 0xD000000000000017;
      break;
    case 2:
      return result;
    case 3:
    case 25:
    case 37:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0x6F636F7079487369;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
    case 32:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x74536D6F72467369;
      break;
    case 9:
      result = 0x4C4E6D6F72467369;
      break;
    case 10:
      result = 0x52536D6F72467369;
      break;
    case 11:
      v3 = 1400401006;
      goto LABEL_11;
    case 12:
      v3 = 1400009331;
LABEL_11:
      result = v3 | 0x65726F6300000000;
      break;
    case 13:
      result = 0x746E656365527369;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
    case 35:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0x5279636E65636572;
      break;
    case 19:
    case 21:
    case 38:
      result = 0xD000000000000018;
      break;
    case 20:
      result = 0x5379726F74736968;
      break;
    case 22:
    case 27:
    case 36:
      result = 0xD000000000000019;
      break;
    case 23:
      result = 0x64726143654D7369;
      break;
    case 24:
    case 34:
      result = 0xD000000000000010;
      break;
    case 26:
      result = 0x6974616C65527369;
      break;
    case 28:
      result = 0x45696A6F6D457369;
      break;
    case 29:
    case 30:
      result = 0xD000000000000027;
      break;
    case 31:
    case 39:
      result = 0xD000000000000011;
      break;
    case 33:
      result = 0x69726F7661467369;
      break;
    case 40:
      result = 0xD00000000000002ALL;
      break;
    case 41:
      result = 0x695353554C507369;
      break;
    case 42:
      result = 0x6E67695333457369;
      break;
    case 43:
      result = 0x6143796C6E4F7369;
      break;
    case 45:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

void sub_1DD560BC4()
{
  OUTLINED_FUNCTION_52_9();
  v83 = v2;
  v84 = v3;
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDECD8, &qword_1DD65BE30);
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32_6();
  v13 = v6[4];
  OUTLINED_FUNCTION_41_3(v6, v6[3]);
  sub_1DD564628();
  OUTLINED_FUNCTION_49_9();
  v14 = *(v4 + 40);
  v79[0] = *v4;
  *&v79[8] = *(v4 + 8);
  *&v79[24] = *(v4 + 24);
  *&v79[40] = v14;
  LOBYTE(v75) = 0;
  sub_1DD4338A8();
  OUTLINED_FUNCTION_5_72();
  sub_1DD640C68();
  if (v1)
  {
    v24 = *(v9 + 8);
    v25 = OUTLINED_FUNCTION_40();
    v26(v25);
  }

  else
  {
    v15 = *(v4 + 48);
    OUTLINED_FUNCTION_1_101(1);
    sub_1DD640C28();
    v16 = *(v4 + 49);
    OUTLINED_FUNCTION_1_101(2);
    sub_1DD640C28();
    v17 = *(v4 + 50);
    OUTLINED_FUNCTION_1_101(3);
    sub_1DD640C28();
    v18 = *(v4 + 51);
    OUTLINED_FUNCTION_1_101(4);
    sub_1DD640C28();
    v19 = *(v4 + 52);
    OUTLINED_FUNCTION_1_101(5);
    sub_1DD640C28();
    v20 = *(v4 + 53);
    OUTLINED_FUNCTION_1_101(6);
    sub_1DD640C28();
    v21 = *(v4 + 54);
    OUTLINED_FUNCTION_1_101(7);
    sub_1DD640C28();
    v22 = *(v4 + 55);
    OUTLINED_FUNCTION_1_101(8);
    sub_1DD640C28();
    v23 = *(v4 + 56);
    OUTLINED_FUNCTION_1_101(9);
    sub_1DD640C28();
    v27 = *(v4 + 57);
    OUTLINED_FUNCTION_1_101(10);
    sub_1DD640C28();
    v28 = *(v4 + 64);
    v79[0] = 11;
    OUTLINED_FUNCTION_12_16();
    sub_1DD640C38();
    v29 = *(v4 + 72);
    v79[0] = 12;
    OUTLINED_FUNCTION_12_16();
    sub_1DD640C38();
    v30 = *(v4 + 80);
    OUTLINED_FUNCTION_1_101(13);
    sub_1DD640C28();
    v31 = *(v4 + 81);
    OUTLINED_FUNCTION_1_101(14);
    sub_1DD640C28();
    v32 = *(v4 + 82);
    OUTLINED_FUNCTION_1_101(15);
    sub_1DD640C28();
    v33 = *(v4 + 83);
    OUTLINED_FUNCTION_1_101(16);
    sub_1DD640C28();
    v34 = *(v4 + 88);
    OUTLINED_FUNCTION_1_101(17);
    sub_1DD640C48();
    v35 = *(v4 + 96);
    OUTLINED_FUNCTION_1_101(18);
    sub_1DD640C48();
    v36 = *(v4 + 104);
    OUTLINED_FUNCTION_1_101(19);
    sub_1DD640C48();
    v82 = type metadata accessor for PrivatizedSignalSet(0);
    v37 = v82[24];
    v79[0] = 20;
    sub_1DD63F378();
    OUTLINED_FUNCTION_0_116();
    sub_1DD563408(v38);
    OUTLINED_FUNCTION_45_5();
    OUTLINED_FUNCTION_12_16();
    sub_1DD640C08();
    v39 = v82[25];
    v79[0] = 21;
    OUTLINED_FUNCTION_45_5();
    OUTLINED_FUNCTION_12_16();
    sub_1DD640C08();
    v40 = v82[26];
    v79[0] = 22;
    OUTLINED_FUNCTION_45_5();
    OUTLINED_FUNCTION_12_16();
    sub_1DD640C08();
    v41 = *(v4 + v82[27]);
    OUTLINED_FUNCTION_1_101(23);
    sub_1DD640C28();
    v42 = *(v4 + v82[28]);
    OUTLINED_FUNCTION_1_101(24);
    sub_1DD640C28();
    v43 = *(v4 + v82[29]);
    OUTLINED_FUNCTION_1_101(25);
    sub_1DD640C28();
    v44 = *(v4 + v82[30]);
    OUTLINED_FUNCTION_1_101(26);
    sub_1DD640C28();
    v45 = *(v4 + v82[31]);
    OUTLINED_FUNCTION_1_101(27);
    sub_1DD640C28();
    v46 = *(v4 + v82[32]);
    OUTLINED_FUNCTION_1_101(28);
    sub_1DD640C28();
    v47 = *(v4 + v82[33]);
    OUTLINED_FUNCTION_1_101(29);
    sub_1DD640C28();
    v48 = *(v4 + v82[34]);
    OUTLINED_FUNCTION_1_101(30);
    sub_1DD640C28();
    v49 = *(v4 + v82[35]);
    OUTLINED_FUNCTION_1_101(31);
    sub_1DD640C28();
    v50 = (v4 + v82[36]);
    v51 = *v50;
    v52 = v50[1];
    v79[0] = 32;
    OUTLINED_FUNCTION_12_16();
    sub_1DD640C18();
    v53 = *(v4 + v82[37]);
    OUTLINED_FUNCTION_1_101(33);
    sub_1DD640C28();
    v54 = *(v4 + v82[38]);
    v81 = 34;
    OUTLINED_FUNCTION_5_72();
    sub_1DD640C28();
    v55 = (v4 + v82[39]);
    v56 = v55[1];
    *v79 = *v55;
    *&v79[16] = v56;
    v58 = *v55;
    v57 = v55[1];
    *&v79[32] = v55[2];
    v80 = *(v55 + 6);
    v75 = v58;
    v76 = v57;
    v77 = v55[2];
    v78 = *(v55 + 6);
    v74[63] = 35;
    sub_1DD4338FC(v79, v74);
    sub_1DD433958();
    OUTLINED_FUNCTION_5_72();
    sub_1DD640C68();
    OUTLINED_FUNCTION_23_29();
    v72 = *(v4 + v82[40]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDECB0, &qword_1DD65BE28);
    OUTLINED_FUNCTION_22_0();
    sub_1DD56467C(v59);
    OUTLINED_FUNCTION_12_16();
    sub_1DD640C68();
    v63 = *(v4 + v82[41]);
    OUTLINED_FUNCTION_24_20(37);
    OUTLINED_FUNCTION_5_72();
    sub_1DD640C28();
    v64 = *(v4 + v82[42]);
    OUTLINED_FUNCTION_24_20(38);
    OUTLINED_FUNCTION_5_72();
    sub_1DD640C28();
    v65 = *(v4 + v82[43]);
    OUTLINED_FUNCTION_24_20(39);
    OUTLINED_FUNCTION_5_72();
    sub_1DD640C28();
    v66 = *(v4 + v82[44]);
    OUTLINED_FUNCTION_24_20(40);
    OUTLINED_FUNCTION_12_16();
    sub_1DD640C38();
    v67 = *(v4 + v82[45]);
    OUTLINED_FUNCTION_24_20(41);
    OUTLINED_FUNCTION_5_72();
    sub_1DD640C28();
    v68 = *(v4 + v82[46]);
    OUTLINED_FUNCTION_24_20(42);
    OUTLINED_FUNCTION_5_72();
    sub_1DD640C28();
    v69 = *(v4 + v82[47]);
    OUTLINED_FUNCTION_24_20(43);
    OUTLINED_FUNCTION_5_72();
    sub_1DD640C28();
    v70 = *(v4 + v82[48]);
    OUTLINED_FUNCTION_24_20(44);
    OUTLINED_FUNCTION_12_16();
    sub_1DD640C38();
    v73 = *(v4 + v82[49]);
    type metadata accessor for MegadomeEntityFeatures();
    OUTLINED_FUNCTION_19_29();
    sub_1DD563408(v71);
    OUTLINED_FUNCTION_12_16();
    sub_1DD640C68();
    v60 = *(v9 + 8);
    v61 = OUTLINED_FUNCTION_40();
    v62(v61);
  }

  OUTLINED_FUNCTION_53_9();
}

void sub_1DD561428()
{
  OUTLINED_FUNCTION_52_9();
  v107 = v1;
  v108 = v2;
  v96 = v0;
  v4 = v3;
  v95[0] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE510, &qword_1DD65BA20);
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v95 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v95 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDECA0, &qword_1DD65BE20);
  v20 = OUTLINED_FUNCTION_0(v19);
  v95[1] = v21;
  v95[2] = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v24);
  v25 = type metadata accessor for PrivatizedSignalSet(0);
  v26 = OUTLINED_FUNCTION_7(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2();
  v31 = v30 - v29;
  v33 = *(v32 + 100);
  v34 = sub_1DD63F378();
  v98 = v33;
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  v100 = v25;
  v101 = v31;
  v97 = *(v25 + 104);
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v34);
  v41 = v4[3];
  v42 = v4[4];
  v99 = v4;
  OUTLINED_FUNCTION_41_3(v4, v41);
  sub_1DD564628();
  v43 = v96;
  sub_1DD640ED8();
  if (v43)
  {
    OUTLINED_FUNCTION_29_20();
    v45 = v101;
    __swift_destroy_boxed_opaque_existential_1(v99);
    v46 = v100;
    sub_1DD390754(v45 + v98, &qword_1ECCDE510, &qword_1DD65BA20);
    sub_1DD390754(v45 + v97, &qword_1ECCDE510, &qword_1DD65BA20);
    if (v12)
    {
      v47 = *(v45 + v46[36] + 8);

      if (!v4)
      {
LABEL_5:
        if (!v43)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if (!v4)
    {
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_25_18(v46[39]);
    sub_1DD4339AC(v103);
    if (!v43)
    {
      goto LABEL_10;
    }

LABEL_9:
    v48 = *(v45 + v46[40]);

    goto LABEL_10;
  }

  v96 = v34;
  v44 = v15;
  LOBYTE(v102) = 0;
  sub_1DD439AAC();
  sub_1DD640B78();
  v49 = *&v103[40];
  v50 = v101;
  *v101 = v103[0];
  *(v50 + 8) = *&v103[8];
  *(v50 + 24) = *&v103[24];
  *(v50 + 40) = v49;
  OUTLINED_FUNCTION_7_52(1);
  *(v50 + 48) = sub_1DD640B38() & 1;
  OUTLINED_FUNCTION_7_52(2);
  *(v50 + 49) = sub_1DD640B38() & 1;
  OUTLINED_FUNCTION_7_52(3);
  *(v50 + 50) = sub_1DD640B38() & 1;
  OUTLINED_FUNCTION_7_52(4);
  *(v50 + 51) = sub_1DD640B38() & 1;
  OUTLINED_FUNCTION_7_52(5);
  *(v50 + 52) = sub_1DD640B38() & 1;
  OUTLINED_FUNCTION_7_52(6);
  *(v50 + 53) = sub_1DD640B38() & 1;
  OUTLINED_FUNCTION_7_52(7);
  *(v50 + 54) = sub_1DD640B38() & 1;
  OUTLINED_FUNCTION_7_52(8);
  *(v50 + 55) = sub_1DD640B38() & 1;
  v103[0] = 9;
  sub_1DD640B38();
  OUTLINED_FUNCTION_26_24();
  *(v52 + 56) = v51;
  OUTLINED_FUNCTION_2_88(10);
  sub_1DD640B38();
  OUTLINED_FUNCTION_26_24();
  *(v54 + 57) = v53;
  OUTLINED_FUNCTION_2_88(11);
  sub_1DD640B48();
  *(v101 + 64) = v55;
  OUTLINED_FUNCTION_2_88(12);
  sub_1DD640B48();
  *(v101 + 72) = v56;
  OUTLINED_FUNCTION_2_88(13);
  sub_1DD640B38();
  OUTLINED_FUNCTION_26_24();
  *(v58 + 80) = v57;
  OUTLINED_FUNCTION_2_88(14);
  sub_1DD640B38();
  OUTLINED_FUNCTION_26_24();
  *(v60 + 81) = v59;
  OUTLINED_FUNCTION_2_88(15);
  sub_1DD640B38();
  OUTLINED_FUNCTION_26_24();
  *(v62 + 82) = v61;
  OUTLINED_FUNCTION_2_88(16);
  sub_1DD640B38();
  OUTLINED_FUNCTION_26_24();
  *(v64 + 83) = v63;
  OUTLINED_FUNCTION_2_88(17);
  *(v101 + 88) = sub_1DD640B58();
  OUTLINED_FUNCTION_2_88(18);
  *(v101 + 96) = sub_1DD640B58();
  OUTLINED_FUNCTION_2_88(19);
  *(v101 + 104) = sub_1DD640B58();
  v103[0] = 20;
  OUTLINED_FUNCTION_0_116();
  sub_1DD563408(v65);
  OUTLINED_FUNCTION_56_4();
  sub_1DD640B18();
  sub_1DD4DDCBC(v18, v101 + v100[24], &qword_1ECCDE510, &qword_1DD65BA20);
  v103[0] = 21;
  OUTLINED_FUNCTION_56_4();
  sub_1DD640B18();
  sub_1DD563F98(v44, v101 + v98);
  v103[0] = 22;
  OUTLINED_FUNCTION_56_4();
  sub_1DD640B18();
  sub_1DD563F98(v12, v101 + v97);
  OUTLINED_FUNCTION_2_88(23);
  v66 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v66, v100[27]);
  OUTLINED_FUNCTION_2_88(24);
  v67 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v67, v100[28]);
  OUTLINED_FUNCTION_2_88(25);
  v68 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v68, v100[29]);
  OUTLINED_FUNCTION_2_88(26);
  v69 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v69, v100[30]);
  OUTLINED_FUNCTION_2_88(27);
  v70 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v70, v100[31]);
  OUTLINED_FUNCTION_2_88(28);
  v71 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v71, v100[32]);
  OUTLINED_FUNCTION_2_88(29);
  v72 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v72, v100[33]);
  OUTLINED_FUNCTION_2_88(30);
  v73 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v73, v100[34]);
  OUTLINED_FUNCTION_2_88(31);
  v74 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v74, v100[35]);
  OUTLINED_FUNCTION_2_88(32);
  v75 = sub_1DD640B28();
  v76 = (v101 + v100[36]);
  *v76 = v75;
  v76[1] = v77;
  OUTLINED_FUNCTION_2_88(33);
  v78 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v78, v100[37]);
  OUTLINED_FUNCTION_2_88(34);
  v79 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v79, v100[38]);
  v106 = 35;
  sub_1DD439B70();
  OUTLINED_FUNCTION_56_4();
  sub_1DD640B78();
  v80 = v101 + v100[39];
  v81 = *&v103[16];
  *v80 = *v103;
  *(v80 + 16) = v81;
  *(v80 + 32) = *&v103[32];
  *(v80 + 48) = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDECB0, &qword_1DD65BE28);
  v105 = 36;
  OUTLINED_FUNCTION_23_10();
  sub_1DD56467C(v82);
  OUTLINED_FUNCTION_56_4();
  sub_1DD640B78();
  *(v101 + v100[40]) = v102;
  OUTLINED_FUNCTION_3_71(37);
  v83 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v83, v100[41]);
  OUTLINED_FUNCTION_3_71(38);
  v84 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v84, v100[42]);
  OUTLINED_FUNCTION_3_71(39);
  v85 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v85, v100[43]);
  OUTLINED_FUNCTION_3_71(40);
  sub_1DD640B48();
  *(v101 + v100[44]) = v86;
  OUTLINED_FUNCTION_3_71(41);
  v87 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v87, v100[45]);
  OUTLINED_FUNCTION_3_71(42);
  v88 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v88, v100[46]);
  OUTLINED_FUNCTION_3_71(43);
  v89 = sub_1DD640B38();
  OUTLINED_FUNCTION_15_39(v89, v100[47]);
  OUTLINED_FUNCTION_3_71(44);
  sub_1DD640B48();
  *(v101 + v100[48]) = v90;
  type metadata accessor for MegadomeEntityFeatures();
  v105 = 45;
  OUTLINED_FUNCTION_19_29();
  sub_1DD563408(v91);
  OUTLINED_FUNCTION_56_4();
  sub_1DD640B78();
  v92 = OUTLINED_FUNCTION_10_45();
  v93(v92);
  v94 = v101;
  *(v101 + v100[49]) = v102;
  sub_1DD5640D4(v94, v95[0], type metadata accessor for PrivatizedSignalSet);
  __swift_destroy_boxed_opaque_existential_1(v99);
  sub_1DD564134(v94, type metadata accessor for PrivatizedSignalSet);
LABEL_10:
  OUTLINED_FUNCTION_53_9();
}

uint64_t sub_1DD561F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD55F9B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD561FB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD560704();
  *a1 = result;
  return result;
}

uint64_t sub_1DD561FE0(uint64_t a1)
{
  v2 = sub_1DD564628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD56201C(uint64_t a1)
{
  v2 = sub_1DD564628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD56208C(int a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6)
{
  if (((a1 ^ a3) & 1) != 0 || a5 != a6)
  {
    return 0;
  }

  else
  {
    return sub_1DD3C37FC(a2, a4);
  }
}

uint64_t sub_1DD5620B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001DD66BD70 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001DD66BE40 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001BLL && 0x80000001DD672EB0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

      if (v8)
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

unint64_t sub_1DD5621CC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000017;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0xD00000000000001BLL;
}

void sub_1DD562220()
{
  OUTLINED_FUNCTION_52_9();
  v21 = v1;
  v22 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEC70, &qword_1DD65BE08);
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17[-v13];
  v15 = v6[4];
  OUTLINED_FUNCTION_41_3(v6, v6[3]);
  sub_1DD5643DC();
  OUTLINED_FUNCTION_45_5();
  sub_1DD640EF8();
  v20 = 0;
  sub_1DD640C28();
  if (!v0)
  {
    v19 = 1;
    sub_1DD640C38();
    v18 = v4;
    v17[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEC48, &unk_1DD65BDF8);
    OUTLINED_FUNCTION_22_0();
    sub_1DD5644D8(v16);
    sub_1DD640C68();
  }

  (*(v9 + 8))(v14, v7);
  OUTLINED_FUNCTION_53_9();
}

void sub_1DD5623F4()
{
  OUTLINED_FUNCTION_52_9();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEC38, &qword_1DD65BDF0);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22_4();
  v6 = v1[4];
  OUTLINED_FUNCTION_41_3(v1, v1[3]);
  sub_1DD5643DC();
  OUTLINED_FUNCTION_37_16();
  OUTLINED_FUNCTION_30_16();
  sub_1DD640B38();
  OUTLINED_FUNCTION_30_16();
  sub_1DD640B48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEC48, &unk_1DD65BDF8);
  OUTLINED_FUNCTION_23_10();
  sub_1DD5644D8(v7);
  sub_1DD640B78();
  v8 = OUTLINED_FUNCTION_34_15();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_53_9();
}

uint64_t sub_1DD5625D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5620B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5625F8(uint64_t a1)
{
  v2 = sub_1DD5643DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD562634(uint64_t a1)
{
  v2 = sub_1DD5643DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD562670(uint64_t a1@<X8>)
{
  sub_1DD5623F4();
  if (!v1)
  {
    *a1 = v3 & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v4;
  }
}

double sub_1DD5626A8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1DD562220();
  return result;
}

uint64_t static PrivatizedHandleSignalSet.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = sub_1DD63F378();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE510, &qword_1DD65BA20);
  OUTLINED_FUNCTION_3(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBE8, &qword_1DD65BA28);
  OUTLINED_FUNCTION_7(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_22_4();
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4])
  {
    goto LABEL_27;
  }

  v44 = type metadata accessor for PrivatizedHandleSignalSet(0);
  v24 = *(v44 + 36);
  v25 = *(v20 + 48);
  sub_1DD4DDC08(&a1[v24], v2, &qword_1ECCDE510, &qword_1DD65BA20);
  sub_1DD4DDC08(&a2[v24], v2 + v25, &qword_1ECCDE510, &qword_1DD65BA20);
  OUTLINED_FUNCTION_105(v2);
  if (!v26)
  {
    sub_1DD4DDC08(v2, v19, &qword_1ECCDE510, &qword_1DD65BA20);
    OUTLINED_FUNCTION_105(v2 + v25);
    if (!v26)
    {
      OUTLINED_FUNCTION_44_14();
      v30(v13, v2 + v25, v5);
      OUTLINED_FUNCTION_0_116();
      sub_1DD563408(v31);
      v32 = OUTLINED_FUNCTION_48_14();
      v33 = *(v8 + 8);
      v33(v13, v5);
      v34 = OUTLINED_FUNCTION_47_10();
      (v33)(v34);
      sub_1DD390754(v2, &qword_1ECCDE510, &qword_1DD65BA20);
      if ((v32 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    v27 = *(v8 + 8);
    v28 = OUTLINED_FUNCTION_47_10();
    v29(v28);
LABEL_14:
    sub_1DD390754(v2, &qword_1ECCDEBE8, &qword_1DD65BA28);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_105(v2 + v25);
  if (!v26)
  {
    goto LABEL_14;
  }

  sub_1DD390754(v2, &qword_1ECCDE510, &qword_1DD65BA20);
LABEL_16:
  OUTLINED_FUNCTION_30(*(v44 + 40));
  if (v26)
  {
    OUTLINED_FUNCTION_30(*(v35 + 44));
    if (v26)
    {
      OUTLINED_FUNCTION_30(*(v36 + 48));
      if (v26)
      {
        OUTLINED_FUNCTION_30(*(v37 + 52));
        if (v26)
        {
          OUTLINED_FUNCTION_30(*(v38 + 56));
          if (v26)
          {
            OUTLINED_FUNCTION_30(*(v39 + 60));
            if (v26)
            {
              v41 = a1[*(v40 + 64)] ^ a2[*(v40 + 64)] ^ 1;
              return v41 & 1;
            }
          }
        }
      }
    }
  }

LABEL_27:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_1DD562A64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001DD66BDC0 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001DD66BDE0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4D79726575517369 && a2 == 0xEC00000068637461;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x80000001DD66BE00 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x5379726F74736968 && a2 == 0xEC00000073746174;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x746E656365527369 && a2 == 0xE800000000000000;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001DD672E70 == a2;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x80000001DD672E90 == a2;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7265666572507369 && a2 == 0xEF65707954646572;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x65776F6C6C417369 && a2 == 0xED00006570795464;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6954656361467369 && a2 == 0xEE00656C6261656DLL;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000011 && 0x80000001DD66BE20 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1DD640CD8();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_1DD562E78(char a1)
{
  result = 0x69726F7661467369;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x4D79726575517369;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0x5379726F74736968;
      break;
    case 6:
      result = 0x746E656365527369;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x7265666572507369;
      break;
    case 10:
      result = 0x65776F6C6C417369;
      break;
    case 11:
      result = 0x6954656361467369;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1DD563028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD562A64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD563050@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD562E70();
  *a1 = result;
  return result;
}

uint64_t sub_1DD563078(uint64_t a1)
{
  v2 = sub_1DD5633B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5630B4(uint64_t a1)
{
  v2 = sub_1DD5633B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PrivatizedHandleSignalSet.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBF8, &qword_1DD65BA30);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_32_6();
  v12 = a1[4];
  OUTLINED_FUNCTION_41_3(a1, a1[3]);
  sub_1DD5633B4();
  OUTLINED_FUNCTION_49_9();
  v13 = *v4;
  OUTLINED_FUNCTION_18_12();
  if (!v2)
  {
    v14 = v4[1];
    OUTLINED_FUNCTION_18_12();
    v15 = v4[2];
    OUTLINED_FUNCTION_18_12();
    v16 = v4[3];
    OUTLINED_FUNCTION_18_12();
    v17 = v4[4];
    OUTLINED_FUNCTION_18_12();
    v18 = type metadata accessor for PrivatizedHandleSignalSet(0);
    v19 = v18[9];
    sub_1DD63F378();
    OUTLINED_FUNCTION_0_116();
    sub_1DD563408(v20);
    sub_1DD640C08();
    v21 = v4[v18[10]];
    OUTLINED_FUNCTION_18_12();
    v22 = v4[v18[11]];
    OUTLINED_FUNCTION_18_12();
    v23 = v4[v18[12]];
    OUTLINED_FUNCTION_18_12();
    v24 = v4[v18[13]];
    OUTLINED_FUNCTION_18_12();
    v25 = v4[v18[14]];
    OUTLINED_FUNCTION_18_12();
    v26 = v4[v18[15]];
    OUTLINED_FUNCTION_18_12();
    v27 = v4[v18[16]];
    OUTLINED_FUNCTION_18_12();
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_1DD5633B4()
{
  result = qword_1ECCDEC00;
  if (!qword_1ECCDEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEC00);
  }

  return result;
}

unint64_t sub_1DD563408(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void PrivatizedHandleSignalSet.init(from:)()
{
  OUTLINED_FUNCTION_52_9();
  v53 = v1;
  v54 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE510, &qword_1DD65BA20);
  OUTLINED_FUNCTION_3(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v36 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEC10, &qword_1DD65BA38);
  OUTLINED_FUNCTION_0(v37);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  v38 = type metadata accessor for PrivatizedHandleSignalSet(0);
  v18 = OUTLINED_FUNCTION_7(v38);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v39 = (v22 - v21);
  v23 = v4[4];
  OUTLINED_FUNCTION_41_3(v4, v4[3]);
  sub_1DD5633B4();
  sub_1DD640ED8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    v36[0] = v6;
    v36[1] = v14;
    v52 = 0;
    OUTLINED_FUNCTION_56_4();
    v24 = sub_1DD640B38();
    v25 = v38;
    v26 = v39;
    *v39 = v24 & 1;
    v51 = 1;
    OUTLINED_FUNCTION_56_4();
    v26[1] = sub_1DD640B38() & 1;
    v50 = 2;
    OUTLINED_FUNCTION_56_4();
    v26[2] = sub_1DD640B38() & 1;
    v49 = 3;
    OUTLINED_FUNCTION_56_4();
    v26[3] = sub_1DD640B38() & 1;
    v48 = 4;
    OUTLINED_FUNCTION_56_4();
    v26[4] = sub_1DD640B38() & 1;
    sub_1DD63F378();
    v47 = 5;
    OUTLINED_FUNCTION_0_116();
    sub_1DD563408(v27);
    OUTLINED_FUNCTION_56_4();
    sub_1DD640B18();
    sub_1DD4DDCBC(v12, &v26[v25[9]], &qword_1ECCDE510, &qword_1DD65BA20);
    v46 = 6;
    OUTLINED_FUNCTION_56_4();
    v26[v25[10]] = sub_1DD640B38() & 1;
    v45 = 7;
    OUTLINED_FUNCTION_56_4();
    v26[v25[11]] = sub_1DD640B38() & 1;
    v44 = 8;
    OUTLINED_FUNCTION_56_4();
    v26[v25[12]] = sub_1DD640B38() & 1;
    v43 = 9;
    OUTLINED_FUNCTION_56_4();
    v28 = sub_1DD640B38();
    OUTLINED_FUNCTION_15_39(v28, v38[13]);
    v42 = 10;
    OUTLINED_FUNCTION_56_4();
    v29 = sub_1DD640B38();
    OUTLINED_FUNCTION_15_39(v29, v38[14]);
    v41 = 11;
    OUTLINED_FUNCTION_56_4();
    v30 = sub_1DD640B38();
    OUTLINED_FUNCTION_15_39(v30, v38[15]);
    v40 = 12;
    OUTLINED_FUNCTION_56_4();
    v31 = sub_1DD640B38();
    v32 = OUTLINED_FUNCTION_35_13();
    v33(v32);
    v34 = v31 & 1;
    v35 = v39;
    v39[v38[16]] = v34;
    sub_1DD5640D4(v35, v36[0], type metadata accessor for PrivatizedHandleSignalSet);
    __swift_destroy_boxed_opaque_existential_1(v4);
    sub_1DD564134(v35, type metadata accessor for PrivatizedHandleSignalSet);
  }

  OUTLINED_FUNCTION_53_9();
}

uint64_t sub_1DD563998(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEC98, &qword_1DD65BE18);
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_32_6();
  v8 = a1[4];
  OUTLINED_FUNCTION_41_3(a1, a1[3]);
  sub_1DD5645D4();
  sub_1DD640EF8();
  OUTLINED_FUNCTION_12_16();
  sub_1DD640C38();
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_40();
  return v11(v10);
}

void sub_1DD563AAC()
{
  OUTLINED_FUNCTION_52_9();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEC88, &qword_1DD65BE10);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_4();
  v7 = v2[4];
  OUTLINED_FUNCTION_41_3(v2, v2[3]);
  sub_1DD5645D4();
  OUTLINED_FUNCTION_37_16();
  if (!v0)
  {
    OUTLINED_FUNCTION_30_16();
    sub_1DD640B48();
    v8 = OUTLINED_FUNCTION_34_15();
    v9(v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_53_9();
}

void sub_1DD563C1C()
{
  sub_1DD563CB4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DD563CB4()
{
  if (!qword_1EE163980)
  {
    sub_1DD63F378();
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE163980);
    }
  }
}

uint64_t _s8TimeUnitOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PrivatizedHandleSignalSet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD563E74()
{
  result = qword_1ECCDEC20;
  if (!qword_1ECCDEC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEC20);
  }

  return result;
}

unint64_t sub_1DD563ECC()
{
  result = qword_1ECCDEC28;
  if (!qword_1ECCDEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEC28);
  }

  return result;
}

unint64_t sub_1DD563F24()
{
  result = qword_1ECCDEC30;
  if (!qword_1ECCDEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEC30);
  }

  return result;
}

uint64_t sub_1DD563F98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE510, &qword_1DD65BA20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD564008(uint64_t a1)
{
  v2 = sub_1DD5645D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD564044(uint64_t a1)
{
  v2 = sub_1DD5645D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD564080(void *a1@<X8>)
{
  sub_1DD563AAC();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1DD5640D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD564134(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD56418C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivatizedHandleSignalSet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DD564238()
{
  sub_1DD563CB4();
  if (v0 <= 0x3F)
  {
    sub_1DD564378();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MegadomeEntityFeatures();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD564378()
{
  if (!qword_1EE163900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBD78, &unk_1DD644390);
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE163900);
    }
  }
}

unint64_t sub_1DD5643DC()
{
  result = qword_1ECCDEC40;
  if (!qword_1ECCDEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEC40);
  }

  return result;
}

unint64_t sub_1DD564430()
{
  result = qword_1ECCDEC60;
  if (!qword_1ECCDEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEC60);
  }

  return result;
}

unint64_t sub_1DD564484()
{
  result = qword_1ECCDEC68;
  if (!qword_1ECCDEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEC68);
  }

  return result;
}

unint64_t sub_1DD5644D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDEC48, &unk_1DD65BDF8);
    sub_1DD56454C(v4);
    result = OUTLINED_FUNCTION_33_5();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD56454C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCAB8, &unk_1DD649FB0);
    sub_1DD564430();
    sub_1DD564484();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD5645D4()
{
  result = qword_1ECCDEC90;
  if (!qword_1ECCDEC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEC90);
  }

  return result;
}

unint64_t sub_1DD564628()
{
  result = qword_1ECCDECA8;
  if (!qword_1ECCDECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDECA8);
  }

  return result;
}

unint64_t sub_1DD56467C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDECB0, &qword_1DD65BE28);
    sub_1DD5646F0(v4);
    result = OUTLINED_FUNCTION_33_5();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD5646F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBD78, &unk_1DD644390);
    sub_1DD563408(&unk_1ECCDECC8);
    sub_1DD563408(&unk_1ECCDECD0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivatizedSignalSet.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD3)
  {
    if (a2 + 45 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 45) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 46;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2E;
  v5 = v6 - 46;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PrivatizedSignalSet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 45 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 45) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD2)
  {
    v6 = ((a2 - 211) >> 8) + 1;
    *result = a2 + 45;
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
          *result = a2 + 45;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrivatizedBgHandleSignalSet.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PrivatizedBgSignalSet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD564AC4()
{
  result = qword_1ECCDECF0;
  if (!qword_1ECCDECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDECF0);
  }

  return result;
}

unint64_t sub_1DD564B1C()
{
  result = qword_1ECCDECF8;
  if (!qword_1ECCDECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDECF8);
  }

  return result;
}

unint64_t sub_1DD564B74()
{
  result = qword_1ECCDED00;
  if (!qword_1ECCDED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDED00);
  }

  return result;
}

unint64_t sub_1DD564BCC()
{
  result = qword_1ECCDED08;
  if (!qword_1ECCDED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDED08);
  }

  return result;
}

unint64_t sub_1DD564C24()
{
  result = qword_1ECCDED10;
  if (!qword_1ECCDED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDED10);
  }

  return result;
}

unint64_t sub_1DD564C7C()
{
  result = qword_1ECCDED18;
  if (!qword_1ECCDED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDED18);
  }

  return result;
}

unint64_t sub_1DD564CD4()
{
  result = qword_1ECCDED20;
  if (!qword_1ECCDED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDED20);
  }

  return result;
}

unint64_t sub_1DD564D2C()
{
  result = qword_1ECCDED28;
  if (!qword_1ECCDED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDED28);
  }

  return result;
}

unint64_t sub_1DD564D84()
{
  result = qword_1ECCDED30;
  if (!qword_1ECCDED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDED30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_71@<X0>(char a1@<W8>)
{
  *(v1 - 152) = a1;
  result = v1 - 152;
  v3 = *(v1 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_45()
{
  v2 = *(v1 - 208);
  v3 = *(*(v1 - 216) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_35_13()
{
  v2 = *(v1 - 112);
  v3 = *(*(v1 - 120) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_37_16()
{

  return sub_1DD640ED8();
}

uint64_t OUTLINED_FUNCTION_38_14(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 - 232);

  return __swift_storeEnumTagSinglePayload(v2, a2, 1, v5);
}

uint64_t OUTLINED_FUNCTION_49_9()
{

  return sub_1DD640EF8();
}

void sub_1DD564F54(uint64_t *a1)
{
  v2 = *(type metadata accessor for UnstitchedTask() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC7B0(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1DD56643C(v6);
  *a1 = v3;
}

id ProcessUnstitchedIntents.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Void __swiftcall ProcessUnstitchedIntents.main()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1DD6408F8();
  sub_1DD636DBC(v2, v3, v0, ObjectType);
}

uint64_t sub_1DD5650C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v16[1] = a2;
  v19 = sub_1DD63F9C8();
  v2 = OUTLINED_FUNCTION_0(v19);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166218 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE16F0A0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD643F90;
  v11 = sub_1DD6408F8();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1DD392BD8();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  OUTLINED_FUNCTION_5_1();
  sub_1DD63F998();

  v14 = v18;
  sub_1DD56530C(v17);
  if (v14)
  {

    sub_1DD6404C8();
    OUTLINED_FUNCTION_5_1();
    sub_1DD63F9A8();
    result = (*(v4 + 8))(v8, v19);
    __break(1u);
  }

  else
  {
    sub_1DD6404C8();
    OUTLINED_FUNCTION_5_1();
    sub_1DD63F9A8();
    return (*(v4 + 8))(v8, v19);
  }

  return result;
}

void sub_1DD56530C(uint64_t a1)
{
  sub_1DD565480();
  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDED50, &qword_1DD65C1A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001DD672F20;
  v6 = *(a1 + OBJC_IVAR____TtC13SiriInference24ProcessUnstitchedIntents_stitchingSucceeded);
  *(inited + 48) = sub_1DD6402C8();
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x80000001DD672F40;
  v7 = *(a1 + OBJC_IVAR____TtC13SiriInference24ProcessUnstitchedIntents_stitchingSkipped);
  *(inited + 72) = sub_1DD6402C8();
  *(inited + 80) = 0x6E69686374697473;
  *(inited + 88) = 0xEF64656C69614667;
  v8 = *(a1 + OBJC_IVAR____TtC13SiriInference24ProcessUnstitchedIntents_stitchingFailed);
  *(inited + 96) = sub_1DD6402C8();
  sub_1DD5210EC();
  v9 = sub_1DD63FC88();
  sub_1DD4FC360(v9);
  v11 = v10;

  sub_1DD50DFD0(v4, v1 != 0, v11);

  sub_1DD39A630(v4, v1 != 0);
}

uint64_t sub_1DD565480()
{
  v2 = v0;
  v3 = type metadata accessor for CancellableStitcher();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDED58, &qword_1DD65C1B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v162 = &v139 - v9;
  v10 = sub_1DD63D078();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_1();
  v161 = v16;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v17);
  v160 = &v139 - v18;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v139 - v20;
  v22 = type metadata accessor for UnstitchedTask();
  v23 = OUTLINED_FUNCTION_0(v22);
  v164 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_1();
  v163 = v27;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v28);
  v165 = &v139 - v29;
  OUTLINED_FUNCTION_8_1();
  *&v31 = MEMORY[0x1EEE9AC00](v30).n128_u64[0];
  v33 = (&v139 - v32);
  result = [v2 isCancelled];
  if ((result & 1) == 0)
  {
    v157 = v21;
    v158 = v22;
    v156 = v6;
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v35 = sub_1DD63F9F8();
    v159 = __swift_project_value_buffer(v35, qword_1EE16F068);
    v36 = sub_1DD63F9D8();
    v37 = sub_1DD640368();
    if (os_log_type_enabled(v36, v37))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_10_46(&dword_1DD38D000, v38, v39, "processing unstitched ContactResolver intents");
      OUTLINED_FUNCTION_3_72();
    }

    result = sub_1DD5919A8(0, v166);
    if (!v1)
    {
      v47 = v166[0];
      sub_1DD58CE54(result, v40, v41, v42, v43, v44, v45, v46, v139, *(&v139 + 1), v140, v141, v142, *(&v142 + 1), v143, v144, v145, v146, v147, v148);
      v48 = 0;
      v153 = v13;
      v166[0] = v49;

      sub_1DD564F54(v166);

      v50 = v166[0];

      v51 = v50;
      v52 = sub_1DD63F9D8();
      v53 = sub_1DD640368();

      LODWORD(v150) = v53;
      v54 = os_log_type_enabled(v52, v53);
      v55 = v153;
      v152 = v2;
      v154 = v47;
      v155 = v51;
      if (v54)
      {
        v149 = v52;
        OUTLINED_FUNCTION_18_1();
        v57 = v56;
        v58 = swift_slowAlloc();
        v148 = OUTLINED_FUNCTION_62();
        v166[0] = v148;
        *v58 = *(v57 + 2704);
        v59 = *(v51 + 16);
        v60 = v51;
        v61 = MEMORY[0x1E69E7CC0];
        if (v59)
        {
          v146 = v58;
          v151 = v3;
          v145 = v10;
          v147 = 0;
          v167 = MEMORY[0x1E69E7CC0];
          sub_1DD42A2D4();
          v61 = v167;
          v62 = v60 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
          v63 = *(v164 + 72);
          do
          {
            sub_1DD566378(v62, v33);
            v65 = *v33;
            v64 = v33[1];

            OUTLINED_FUNCTION_0_117();
            sub_1DD5663DC(v33, v66);
            v167 = v61;
            v67 = *(v61 + 16);
            if (v67 >= *(v61 + 24) >> 1)
            {
              sub_1DD42A2D4();
              v61 = v167;
            }

            *(v61 + 16) = v67 + 1;
            v68 = v61 + 16 * v67;
            *(v68 + 32) = v65;
            *(v68 + 40) = v64;
            v62 += v63;
            --v59;
          }

          while (v59);
          v48 = v147;
          v10 = v145;
          v55 = v153;
          v3 = v151;
          v58 = v146;
        }

        v167 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
        v69 = sub_1DD63FE38();
        v71 = sub_1DD39565C(v69, v70, v166);

        *(v58 + 4) = v71;
        v72 = v149;
        _os_log_impl(&dword_1DD38D000, v149, v150, "unstitched tasks: %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v148);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();

        v51 = v155;
      }

      else
      {
      }

      v73 = v162;
      sub_1DD559028(v51, v162);
      v74 = v158;
      if (__swift_getEnumTagSinglePayload(v73, 1, v158) == 1)
      {

        sub_1DD566310(v73);
        v75 = sub_1DD63F9D8();
        v76 = sub_1DD640368();
        if (os_log_type_enabled(v75, v76))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_10_46(&dword_1DD38D000, v77, v78, "no intents to stitch.");
          OUTLINED_FUNCTION_3_72();
        }
      }

      v79 = *(v74 + 20);
      v162 = *(v55 + 16);
      v80 = v160;
      (v162)(v160, &v73[v79], v10);
      OUTLINED_FUNCTION_0_117();
      sub_1DD5663DC(v73, v81);
      v82 = v157;
      (*(v55 + 32))(v157, v80, v10);
      v83 = v161;
      (v162)(v161, v82, v10);
      v84 = sub_1DD5D6CEC(v83);
      if (v48)
      {
        (*(v55 + 8))(v82, v10);
      }

      v86 = v85;
      v87 = v84;

      v88 = sub_1DD63F9D8();
      v89 = sub_1DD640368();

      v90 = os_log_type_enabled(v88, v89);
      v160 = v87;
      v150 = v86;
      v151 = v3;
      if (v90)
      {
        OUTLINED_FUNCTION_18_1();
        v91 = v10;
        v92 = swift_slowAlloc();
        v93 = OUTLINED_FUNCTION_62();
        v167 = v93;
        *v92 = 136315138;
        v166[0] = v87;
        v166[1] = v86;

        v94 = sub_1DD63FE38();
        v96 = sub_1DD39565C(v94, v95, &v167);

        *(v92 + 4) = v96;
        _os_log_impl(&dword_1DD38D000, v88, v89, "stitchable interactions: %s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v93);
        OUTLINED_FUNCTION_3_72();
        v10 = v91;
        OUTLINED_FUNCTION_0_1();
      }

      v97 = v165;
      v98 = sub_1DD4AF680();
      v100 = v157;
      v101 = v163;
      v102 = v155;
      v148 = v98;
      v149 = v103;
      v145 = v10;
      v147 = *(v155 + 16);
      if (v147)
      {
        v104 = 0;
        v144 = OBJC_IVAR____TtC13SiriInference24ProcessUnstitchedIntents_stitchingFailed;
        v141 = OBJC_IVAR____TtC13SiriInference24ProcessUnstitchedIntents_stitchingSucceeded;
        v146 = v155 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
        *&v99 = 136315138;
        v142 = v99;
        *&v99 = 136446210;
        v139 = v99;
        while (1)
        {
          if (v104 >= *(v102 + 16))
          {
            __break(1u);
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v105 = *(v164 + 72);
          v162 = v104;
          sub_1DD566378(v146 + v105 * v104, v97);
          sub_1DD566378(v97, v101);
          v106 = sub_1DD63F9D8();
          v107 = sub_1DD640368();
          if (os_log_type_enabled(v106, v107))
          {
            OUTLINED_FUNCTION_18_1();
            v108 = swift_slowAlloc();
            v109 = OUTLINED_FUNCTION_62();
            v166[0] = v109;
            *v108 = v142;
            v110 = v101;
            v111 = *v101;
            v112 = v101[1];

            OUTLINED_FUNCTION_0_117();
            sub_1DD5663DC(v110, v113);
            v114 = sub_1DD39565C(v111, v112, v166);

            *(v108 + 4) = v114;
            _os_log_impl(&dword_1DD38D000, v106, v107, "stitching task. taskId=%s", v108, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v109);
            OUTLINED_FUNCTION_3_72();
            v97 = v165;
            OUTLINED_FUNCTION_0_1();
          }

          else
          {

            OUTLINED_FUNCTION_0_117();
            sub_1DD5663DC(v101, v115);
          }

          v116 = v151;
          sub_1DD566378(v97, v33);
          v117 = v156;
          v118 = (v156 + v116[8]);
          v118[3] = &type metadata for DESStore;
          v118[4] = &off_1F58B79E8;
          v119 = v148;
          v120 = v149;
          *v118 = v148;
          v118[1] = v120;
          v121 = v116[7];
          v122 = v160;

          v123 = v150;

          v161 = v119;

          v124 = v97;
          v125 = v154;

          sub_1DD63F4B8();
          v126 = (v117 + v116[10]);
          v126[3] = &type metadata for StitchedDataAnonymizer;
          v126[4] = &off_1F58C2760;
          *v126 = MEMORY[0x1E69E7CC8];
          v127 = v33[1];
          *v117 = *v33;
          v117[1] = v127;
          v128 = *(v33 + *(v158 + 24));

          OUTLINED_FUNCTION_0_117();
          sub_1DD5663DC(v33, v129);
          v117[2] = v128;
          v117[3] = v122;
          v117[4] = v123;
          *(v117 + v116[9]) = v125;
          v130 = v152;
          v131 = v152;
          sub_1DD3E01C0(v117, v131);
          v132 = v161;
          LOBYTE(v128) = sub_1DD6395C4();
          OUTLINED_FUNCTION_0_117();
          sub_1DD5663DC(v124, v133);
          OUTLINED_FUNCTION_1_102();
          if (v128)
          {
            break;
          }

          v134 = *&v130[v141];
          v135 = __OFADD__(v134, 1);
          v136 = v134 + 1;
          if (v135)
          {
            goto LABEL_41;
          }

          *&v130[v141] = v136;
          v100 = v157;
          v101 = v163;
          v97 = v165;
          v102 = v155;
          v104 = (v162 + 1);
          if (v147 == v162 + 1)
          {
            goto LABEL_37;
          }
        }

        (*(v153 + 8))(v157, v145);

        v137 = *&v131[OBJC_IVAR____TtC13SiriInference24ProcessUnstitchedIntents_stitchingSkipped];
        v135 = __OFADD__(v137, 1);
        v138 = v137 + 1;
        if (!v135)
        {
          *&v131[OBJC_IVAR____TtC13SiriInference24ProcessUnstitchedIntents_stitchingSkipped] = v138;
          return result;
        }

LABEL_42:
        __break(1u);

        __break(1u);
      }

      else
      {
LABEL_37:

        return (*(v153 + 8))(v100, v145);
      }
    }
  }

  return result;
}

id ProcessUnstitchedIntents.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC13SiriInference24ProcessUnstitchedIntents_stitchingSucceeded] = 0;
  *&v0[OBJC_IVAR____TtC13SiriInference24ProcessUnstitchedIntents_stitchingSkipped] = 0;
  *&v0[OBJC_IVAR____TtC13SiriInference24ProcessUnstitchedIntents_stitchingFailed] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

char *ProcessUnstitchedIntents.init(activity:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC13SiriInference24ProcessUnstitchedIntents_stitchingSucceeded) = 0;
  *(v1 + OBJC_IVAR____TtC13SiriInference24ProcessUnstitchedIntents_stitchingSkipped) = 0;
  *(v1 + OBJC_IVAR____TtC13SiriInference24ProcessUnstitchedIntents_stitchingFailed) = 0;
  return XPCActivityOperation.init(activity:)(a1);
}

id ProcessUnstitchedIntents.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DD566310(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDED58, &qword_1DD65C1B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD566378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnstitchedTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD5663DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DD56643C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1DD640CA8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for UnstitchedTask();
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for UnstitchedTask() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DD566788(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1DD56656C(0, v2, 1, a1);
  }
}

void sub_1DD56656C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for UnstitchedTask();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v33 = v20;
      v34 = a3;
      v31 = v23;
      v32 = v22;
      do
      {
        sub_1DD566378(v23, v17);
        sub_1DD566378(v20, v13);
        v24 = *(v8 + 20);
        v25 = sub_1DD63CFC8();
        sub_1DD5663DC(v13, type metadata accessor for UnstitchedTask);
        sub_1DD5663DC(v17, type metadata accessor for UnstitchedTask);
        if ((v25 & 1) == 0)
        {
          break;
        }

        if (!v35)
        {
          __break(1u);
          return;
        }

        v26 = v36;
        sub_1DD5674A0(v23, v36);
        swift_arrayInitWithTakeFrontToBack();
        sub_1DD5674A0(v26, v20);
        v20 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v34 + 1;
      v20 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DD566788(uint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v4;
  v104 = a1;
  v119 = type metadata accessor for UnstitchedTask();
  v113 = *(v119 - 8);
  v9 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v108 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v117 = &v101 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v118 = &v101 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v101 - v16;
  v115 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v95 = v20 + 16;
      v96 = *(v20 + 2);
      for (i = v20; v96 >= 2; v20 = i)
      {
        if (!*v115)
        {
          goto LABEL_141;
        }

        v97 = &v20[16 * v96];
        v98 = *v97;
        v20 = &v95[2 * v96];
        v99 = *(v20 + 1);
        sub_1DD56701C(*v115 + *(v113 + 72) * *v97, *v115 + *(v113 + 72) * *v20, *v115 + *(v113 + 72) * v99, v5);
        if (v6)
        {
          break;
        }

        if (v99 < v98)
        {
          goto LABEL_129;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_130;
        }

        *v97 = v98;
        *(v97 + 1) = v99;
        v100 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_131;
        }

        v96 = *v95 - 1;
        sub_1DD4EC4E4(v20 + 16, v100, v20);
        *v95 = v96;
      }

LABEL_113:

      return;
    }

LABEL_138:
    v20 = sub_1DD4EC2B8(v20);
    goto LABEL_105;
  }

  v103 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v109 = &v101 - v16;
  while (1)
  {
    v21 = v19++;
    i = v20;
    v105 = v21;
    if (v19 < v18)
    {
      v22 = *v115;
      v5 = *(v113 + 72);
      v23 = v21;
      v24 = *v115 + v5 * v19;
      v112 = v18;
      sub_1DD566378(v24, v17);
      v25 = v118;
      sub_1DD566378(v22 + v5 * v23, v118);
      v26 = *(v119 + 20);
      LODWORD(v111) = sub_1DD63CFC8();
      sub_1DD5663DC(v25, type metadata accessor for UnstitchedTask);
      sub_1DD5663DC(v17, type metadata accessor for UnstitchedTask);
      v27 = v112;
      v28 = v23 + 2;
      v114 = v5;
      v20 = (v22 + v5 * (v23 + 2));
      while (1)
      {
        v29 = v28;
        if (++v19 >= v27)
        {
          break;
        }

        sub_1DD566378(v20, v17);
        v5 = v118;
        sub_1DD566378(v24, v118);
        v30 = *(v119 + 20);
        v31 = sub_1DD63CFC8() & 1;
        sub_1DD5663DC(v5, type metadata accessor for UnstitchedTask);
        sub_1DD5663DC(v17, type metadata accessor for UnstitchedTask);
        v20 += v114;
        v24 += v114;
        v28 = v29 + 1;
        v27 = v112;
        if ((v111 & 1) != v31)
        {
          goto LABEL_9;
        }
      }

      v19 = v27;
LABEL_9:
      if (v111)
      {
        v21 = v105;
        if (v19 < v105)
        {
          goto LABEL_135;
        }

        if (v105 >= v19)
        {
          v20 = i;
          goto LABEL_32;
        }

        v102 = v6;
        if (v27 >= v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = v27;
        }

        v33 = v114 * (v32 - 1);
        v34 = v105;
        v35 = v114 * v32;
        v36 = v105 * v114;
        v37 = v19;
        v20 = i;
        do
        {
          if (v34 != --v37)
          {
            v5 = *v115;
            if (!*v115)
            {
              goto LABEL_142;
            }

            sub_1DD5674A0(v5 + v36, v108);
            v38 = v36 < v33 || v5 + v36 >= v5 + v35;
            if (v38)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v36 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1DD5674A0(v108, v5 + v33);
            v20 = i;
          }

          ++v34;
          v33 -= v114;
          v35 -= v114;
          v36 += v114;
        }

        while (v34 < v37);
        v6 = v102;
      }

      else
      {
        v20 = i;
      }

      v21 = v105;
    }

LABEL_32:
    v39 = v115[1];
    if (v19 < v39)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_134;
      }

      if (v19 - v21 < v103)
      {
        break;
      }
    }

LABEL_50:
    if (v19 < v21)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = *(v20 + 2);
      sub_1DD3BEB7C();
      v20 = v93;
    }

    v51 = *(v20 + 2);
    v52 = v51 + 1;
    if (v51 >= *(v20 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v20 = v94;
    }

    *(v20 + 2) = v52;
    v53 = v20 + 32;
    v54 = &v20[16 * v51 + 32];
    *v54 = v105;
    *(v54 + 1) = v19;
    v114 = *v104;
    if (!v114)
    {
      goto LABEL_143;
    }

    v55 = v17;
    if (v51)
    {
      i = v20;
      while (1)
      {
        v56 = v52 - 1;
        v57 = &v53[16 * v52 - 16];
        v58 = &v20[16 * v52];
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v59 = *(v20 + 4);
          v60 = *(v20 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_71:
          if (v62)
          {
            goto LABEL_120;
          }

          v74 = *v58;
          v73 = *(v58 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_123;
          }

          v78 = *(v57 + 1);
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_128;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v52 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        if (v52 < 2)
        {
          goto LABEL_122;
        }

        v81 = *v58;
        v80 = *(v58 + 1);
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_86:
        if (v77)
        {
          goto LABEL_125;
        }

        v83 = *v57;
        v82 = *(v57 + 1);
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_127;
        }

        if (v84 < v76)
        {
          goto LABEL_100;
        }

LABEL_93:
        if (v56 - 1 >= v52)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v115)
        {
          goto LABEL_140;
        }

        v88 = &v53[16 * v56 - 16];
        v89 = *v88;
        v5 = v56;
        v20 = &v53[16 * v56];
        v90 = *(v20 + 1);
        sub_1DD56701C(*v115 + *(v113 + 72) * *v88, *v115 + *(v113 + 72) * *v20, *v115 + *(v113 + 72) * v90, v114);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v90 < v89)
        {
          goto LABEL_115;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_116;
        }

        *v88 = v89;
        *(v88 + 1) = v90;
        if (v5 >= v6)
        {
          goto LABEL_117;
        }

        v52 = v6 - 1;
        sub_1DD4EC4E4(v20 + 16, v6 - 1 - v5, v20);
        v20 = i;
        *(i + 2) = v6 - 1;
        v91 = v6 > 2;
        v6 = 0;
        v55 = v109;
        if (!v91)
        {
          goto LABEL_100;
        }
      }

      v63 = &v53[16 * v52];
      v64 = *(v63 - 8);
      v65 = *(v63 - 7);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_118;
      }

      v68 = *(v63 - 6);
      v67 = *(v63 - 5);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_119;
      }

      v70 = *(v58 + 1);
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_121;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_124;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = *(v57 + 1);
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_132;
        }

        if (v61 < v87)
        {
          v56 = v52 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_71;
    }

LABEL_100:
    v18 = v115[1];
    v17 = v55;
    if (v19 >= v18)
    {
      goto LABEL_103;
    }
  }

  v40 = v21 + v103;
  if (__OFADD__(v21, v103))
  {
    goto LABEL_136;
  }

  if (v40 >= v39)
  {
    v40 = v115[1];
  }

  if (v40 < v21)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v19 == v40)
  {
    goto LABEL_50;
  }

  v102 = v6;
  v41 = *v115;
  v42 = *(v113 + 72);
  v5 = *v115 + v42 * (v19 - 1);
  v43 = -v42;
  v44 = v21 - v19;
  v106 = v42;
  v107 = v40;
  v45 = v41 + v19 * v42;
  v46 = v119;
LABEL_41:
  v114 = v19;
  v110 = v45;
  v111 = v44;
  v112 = v5;
  while (1)
  {
    sub_1DD566378(v45, v17);
    v47 = v118;
    sub_1DD566378(v5, v118);
    v48 = *(v46 + 20);
    v49 = sub_1DD63CFC8();
    sub_1DD5663DC(v47, type metadata accessor for UnstitchedTask);
    sub_1DD5663DC(v17, type metadata accessor for UnstitchedTask);
    if ((v49 & 1) == 0)
    {
      v46 = v119;
LABEL_48:
      v19 = v114 + 1;
      v5 = v112 + v106;
      v44 = v111 - 1;
      v45 = v110 + v106;
      if (v114 + 1 == v107)
      {
        v19 = v107;
        v6 = v102;
        v20 = i;
        v21 = v105;
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    if (!v41)
    {
      break;
    }

    v50 = v117;
    sub_1DD5674A0(v45, v117);
    v46 = v119;
    swift_arrayInitWithTakeFrontToBack();
    sub_1DD5674A0(v50, v5);
    v5 += v43;
    v45 += v43;
    v38 = __CFADD__(v44++, 1);
    if (v38)
    {
      goto LABEL_48;
    }
  }

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
}

void sub_1DD56701C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = type metadata accessor for UnstitchedTask();
  v8 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v19 = v15 / v14;
  v61 = a1;
  v60 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    sub_1DD3C1ECC(a2, v17 / v14, a4);
    v30 = a4 + v20 * v14;
    v31 = -v14;
    v32 = v30;
    v53 = a1;
    v54 = v31;
LABEL_36:
    v33 = a2 + v31;
    v34 = a3;
    v51 = v32;
    v55 = a2 + v31;
    v56 = a2;
    while (1)
    {
      if (v30 <= a4)
      {
        v61 = v56;
        v59 = v32;
        goto LABEL_58;
      }

      if (v56 <= a1)
      {
        break;
      }

      v52 = v32;
      v35 = a4;
      v36 = v34 + v31;
      v37 = v30 + v31;
      v38 = v30;
      v39 = v34;
      sub_1DD566378(v30 + v31, v12);
      v40 = v12;
      v41 = v57;
      sub_1DD566378(v33, v57);
      v42 = *(v58 + 20);
      v43 = sub_1DD63CFC8();
      v44 = v41;
      v12 = v40;
      sub_1DD5663DC(v44, type metadata accessor for UnstitchedTask);
      sub_1DD5663DC(v40, type metadata accessor for UnstitchedTask);
      if (v43)
      {
        v46 = v39 < v56 || v36 >= v56;
        a4 = v35;
        if (v46)
        {
          v47 = v55;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v52;
          a1 = v53;
          a3 = v36;
          a2 = v47;
          v31 = v54;
          v30 = v38;
        }

        else
        {
          v32 = v52;
          v16 = v39 == v56;
          v31 = v54;
          v48 = v55;
          a3 = v36;
          a2 = v55;
          v30 = v38;
          a1 = v53;
          if (!v16)
          {
            v49 = v52;
            swift_arrayInitWithTakeBackToFront();
            v30 = v38;
            a2 = v48;
            v32 = v49;
          }
        }

        goto LABEL_36;
      }

      v45 = v39 < v38 || v36 >= v38;
      a4 = v35;
      if (v45)
      {
        swift_arrayInitWithTakeFrontToBack();
        v34 = v36;
        v30 = v37;
        v32 = v37;
        v31 = v54;
        v33 = v55;
        a1 = v53;
      }

      else
      {
        v32 = v37;
        v16 = v38 == v39;
        v34 = v36;
        v30 = v37;
        v31 = v54;
        v33 = v55;
        a1 = v53;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v34 = v36;
          v30 = v37;
          v32 = v37;
        }
      }
    }

    v61 = v56;
    v59 = v51;
  }

  else
  {
    sub_1DD3C1ECC(a1, v15 / v14, a4);
    v56 = a4 + v19 * v14;
    v59 = v56;
    while (a4 < v56 && a2 < a3)
    {
      v22 = a3;
      sub_1DD566378(a2, v12);
      v23 = a2;
      v24 = v57;
      sub_1DD566378(a4, v57);
      v25 = *(v58 + 20);
      v26 = sub_1DD63CFC8();
      sub_1DD5663DC(v24, type metadata accessor for UnstitchedTask);
      sub_1DD5663DC(v12, type metadata accessor for UnstitchedTask);
      if (v26)
      {
        a2 = v23 + v14;
        v27 = a1 < v23 || a1 >= a2;
        v28 = v23;
        if (v27)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v22;
        }

        else
        {
          a3 = v22;
          if (a1 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v23;
          a3 = v22;
        }

        else
        {
          a2 = v23;
          a3 = v22;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v60 = a4 + v14;
        a4 += v14;
      }

      a1 += v14;
      v61 = a1;
    }
  }

LABEL_58:
  sub_1DD4EC404(&v61, &v60, &v59);
}

uint64_t sub_1DD5674A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnstitchedTask();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_3_72()
{

  JUMPOUT(0x1E12B3DA0);
}

void OUTLINED_FUNCTION_10_46(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

SiriInference::Proximity::Value_optional __swiftcall Proximity.Value.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t Proximity.Value.rawValue.getter()
{
  result = 28265;
  switch(*v0)
  {
    case 1:
      result = 28271;
      break;
    case 2:
      result = 1918985582;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD56761C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DD3AE138();
}

unint64_t sub_1DD56764C@<X0>(unint64_t *a1@<X8>)
{
  result = Proximity.Value.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static Proximity.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DD3AE138();
}

uint64_t sub_1DD56773C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD640CD8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD5677C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD56773C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD5677F4(uint64_t a1)
{
  v2 = sub_1DD567B40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD567830(uint64_t a1)
{
  v2 = sub_1DD567B40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Proximity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDED60, &qword_1DD65C1B8);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD567B40();
  sub_1DD640EF8();
  v15 = v11;
  sub_1DD567B94();
  sub_1DD640C68();
  return (*(v6 + 8))(v10, v3);
}

uint64_t Proximity.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDED78, &qword_1DD65C1C0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD567B40();
  sub_1DD640ED8();
  if (!v2)
  {
    sub_1DD567BE8();
    sub_1DD640B78();
    (*(v8 + 8))(v12, v5);
    *a2 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD567B40()
{
  result = qword_1ECCDED68;
  if (!qword_1ECCDED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDED68);
  }

  return result;
}

unint64_t sub_1DD567B94()
{
  result = qword_1ECCDED70;
  if (!qword_1ECCDED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDED70);
  }

  return result;
}

unint64_t sub_1DD567BE8()
{
  result = qword_1ECCDED80;
  if (!qword_1ECCDED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDED80);
  }

  return result;
}

unint64_t sub_1DD567C40()
{
  result = qword_1ECCDED88;
  if (!qword_1ECCDED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDED88);
  }

  return result;
}

_BYTE *sub_1DD567CA4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Proximity.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD567E30()
{
  result = qword_1ECCDED90;
  if (!qword_1ECCDED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDED90);
  }

  return result;
}

unint64_t sub_1DD567E88()
{
  result = qword_1ECCDED98;
  if (!qword_1ECCDED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDED98);
  }

  return result;
}

unint64_t sub_1DD567EE0()
{
  result = qword_1ECCDEDA0;
  if (!qword_1ECCDEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEDA0);
  }

  return result;
}

unint64_t sub_1DD567F34()
{
  result = qword_1ECCDEDA8;
  if (!qword_1ECCDEDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEDA8);
  }

  return result;
}

uint64_t sub_1DD567F90()
{
  v1 = sub_1DD63E1B8();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_0_118();
  v7 = *(v4 + 104);
  v7(v0, *MEMORY[0x1E69D1AB0], v1);
  v8 = sub_1DD63E1A8();
  v9 = *(v4 + 8);
  v9(v0, v1);
  if (v8 & 1) != 0 || (v7(v0, *MEMORY[0x1E69D1A80], v1), v10 = sub_1DD63E1A8(), v9(v0, v1), (v10))
  {
    v11 = 1;
  }

  else
  {
    v7(v0, *MEMORY[0x1E69D1A60], v1);
    v11 = sub_1DD63E1A8();
    v9(v0, v1);
  }

  return v11 & 1;
}

uint64_t TerminalElement.Qualifier.toQualifier()@<X0>(char *a1@<X8>)
{
  v3 = v1;
  v5 = sub_1DD63E1B8();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_118();
  (*(v8 + 16))(v2, v3, v5);
  result = (*(v8 + 88))(v2, v5);
  if (result == *MEMORY[0x1E69D1A58])
  {
    v12 = 8;
LABEL_19:
    *a1 = v12;
    return result;
  }

  if (result == *MEMORY[0x1E69D1A90])
  {
    v12 = 9;
    goto LABEL_19;
  }

  if (result == *MEMORY[0x1E69D1A98])
  {
    v12 = 10;
    goto LABEL_19;
  }

  if (result == *MEMORY[0x1E69D1A78])
  {
    v12 = 11;
    goto LABEL_19;
  }

  if (result == *MEMORY[0x1E69D1A48])
  {
    v12 = 12;
    goto LABEL_19;
  }

  if (result == *MEMORY[0x1E69D1A88])
  {
    v12 = 13;
    goto LABEL_19;
  }

  if (result == *MEMORY[0x1E69D1AB0])
  {
    v12 = 7;
    goto LABEL_19;
  }

  if (result == *MEMORY[0x1E69D1AB8])
  {
    v12 = 5;
    goto LABEL_19;
  }

  if (result == *MEMORY[0x1E69D1A80])
  {
    v12 = 3;
    goto LABEL_19;
  }

  if (result == *MEMORY[0x1E69D1A70])
  {
    *a1 = 0;
  }

  else
  {
    if (result == *MEMORY[0x1E69D1AA8])
    {
      v12 = 6;
      goto LABEL_19;
    }

    if (result == *MEMORY[0x1E69D1AA0])
    {
      v12 = 14;
      goto LABEL_19;
    }

    if (result == *MEMORY[0x1E69D1A68])
    {
      v12 = 15;
      goto LABEL_19;
    }

    if (result == *MEMORY[0x1E69D1A60])
    {
      v12 = 16;
      goto LABEL_19;
    }

    if (result == *MEMORY[0x1E69D1A50])
    {
      v12 = 17;
      goto LABEL_19;
    }

    if (result == *MEMORY[0x1E69D1AC0])
    {
      v12 = 18;
      goto LABEL_19;
    }

    if (result == *MEMORY[0x1E69D1A40])
    {
      v12 = 19;
      goto LABEL_19;
    }

    *a1 = 20;
    return (*(v8 + 8))(v2, v5);
  }

  return result;
}

uint64_t DateTime.Qualifier.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 2;
  switch(result)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v2 = 1;
LABEL_3:
      v3 = v2;
      break;
    case 2:
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    default:
      v3 = 20;
      break;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1DD5684C0()
{
  result = qword_1ECCDEDB0;
  if (!qword_1ECCDEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEDB0);
  }

  return result;
}

uint64_t sub_1DD56851C@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Qualifier.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s9QualifierOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5686D0()
{
  result = qword_1ECCDEDB8;
  if (!qword_1ECCDEDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEDB8);
  }

  return result;
}

SiriInference::Radius::Unit_optional __swiftcall Radius.Unit.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_32_1();
  v2 = sub_1DD640AA8();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

char *Radius.init(radius:unit:prefix:suffix:)@<X0>(char *result@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v5 = *result;
  v6 = *a2;
  v7 = *a3;
  *a4 = a5;
  *(a4 + 8) = v5;
  *(a4 + 9) = v6;
  *(a4 + 10) = v7;
  return result;
}

uint64_t Radius.Unit.rawValue.getter()
{
  result = 0x73656C696DLL;
  switch(*v0)
  {
    case 1:
      result = 0x73726574656DLL;
      break;
    case 2:
      result = 0x6574656D6F6C696BLL;
      break;
    case 3:
      result = 0x6C6163697475616ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD568850@<X0>(uint64_t *a1@<X8>)
{
  result = Radius.Unit.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Radius.Prefix.init(rawValue:)()
{
  OUTLINED_FUNCTION_32_1();
  v1 = sub_1DD640AA8();

  *v0 = v1 != 0;
  return result;
}

uint64_t sub_1DD568988(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return Radius.Prefix.init(rawValue:)();
}

uint64_t Radius.Suffix.init(rawValue:)()
{
  OUTLINED_FUNCTION_32_1();
  v1 = sub_1DD640AA8();

  *v0 = v1 != 0;
  return result;
}

uint64_t sub_1DD568A98(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return Radius.Suffix.init(rawValue:)();
}

uint64_t static Radius.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 9);
  v3 = *(a1 + 10);
  v4 = *(a2 + 9);
  v5 = *(a2 + 10);
  if ((sub_1DD3AE6F4(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (v3 & 1 | ((v4 & 1) == 0))
    {
      return v4 & v5;
    }
  }

  else if ((v4 | v3))
  {
    return (v4 ^ 1) & v5;
  }

  return v5 ^ 1;
}

uint64_t sub_1DD568C08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737569646172 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1953066613 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x786966667573 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DD568D5C(char a1)
{
  result = 0x737569646172;
  switch(a1)
  {
    case 1:
      result = 1953066613;
      break;
    case 2:
      result = 0x786966657270;
      break;
    case 3:
      result = 0x786966667573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD568DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD568C08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD568DF4(uint64_t a1)
{
  v2 = sub_1DD5692B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD568E30(uint64_t a1)
{
  v2 = sub_1DD5692B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Radius.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEDC0, &qword_1DD65C5F0);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v18 - v10;
  v12 = *v1;
  v13 = *(v1 + 8);
  v18 = *(v1 + 9);
  v19 = v13;
  v14 = *(v1 + 10);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5692B0();
  sub_1DD640EF8();
  v26 = 0;
  sub_1DD640C38();
  if (!v2)
  {
    v16 = v18;
    v25 = v19;
    v24 = 1;
    sub_1DD569304();
    OUTLINED_FUNCTION_10();
    sub_1DD640C68();
    v23 = v16;
    v22 = 2;
    sub_1DD569358();
    OUTLINED_FUNCTION_10();
    sub_1DD640C08();
    v21 = v14;
    v20 = 3;
    sub_1DD5693AC();
    OUTLINED_FUNCTION_10();
    sub_1DD640C08();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t Radius.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEDE8, &qword_1DD65C5F8);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5692B0();
  sub_1DD640ED8();
  if (!v2)
  {
    v20[15] = 0;
    sub_1DD640B48();
    v15 = v14;
    v20[13] = 1;
    sub_1DD569400();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B78();
    v16 = v20[14];
    v20[11] = 2;
    sub_1DD569454();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B18();
    v18 = v20[12];
    v20[9] = 3;
    sub_1DD5694A8();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B18();
    (*(v8 + 8))(v12, v5);
    v19 = v20[10];
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 9) = v18;
    *(a2 + 10) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD5692B0()
{
  result = qword_1ECCDEDC8;
  if (!qword_1ECCDEDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEDC8);
  }

  return result;
}

unint64_t sub_1DD569304()
{
  result = qword_1ECCDEDD0;
  if (!qword_1ECCDEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEDD0);
  }

  return result;
}

unint64_t sub_1DD569358()
{
  result = qword_1ECCDEDD8;
  if (!qword_1ECCDEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEDD8);
  }

  return result;
}

unint64_t sub_1DD5693AC()
{
  result = qword_1ECCDEDE0;
  if (!qword_1ECCDEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEDE0);
  }

  return result;
}

unint64_t sub_1DD569400()
{
  result = qword_1ECCDEDF0;
  if (!qword_1ECCDEDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEDF0);
  }

  return result;
}

unint64_t sub_1DD569454()
{
  result = qword_1ECCDEDF8;
  if (!qword_1ECCDEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEDF8);
  }

  return result;
}

unint64_t sub_1DD5694A8()
{
  result = qword_1ECCDEE00;
  if (!qword_1ECCDEE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEE00);
  }

  return result;
}

unint64_t sub_1DD569500()
{
  result = qword_1ECCDEE08;
  if (!qword_1ECCDEE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEE08);
  }

  return result;
}

unint64_t sub_1DD569558()
{
  result = qword_1ECCDEE10;
  if (!qword_1ECCDEE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEE10);
  }

  return result;
}

unint64_t sub_1DD5695B0()
{
  result = qword_1ECCDEE18;
  if (!qword_1ECCDEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEE18);
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Radius(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 11))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Radius(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

_BYTE *sub_1DD5696C0(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1DD569768(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD569848()
{
  result = qword_1ECCDEE20;
  if (!qword_1ECCDEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEE20);
  }

  return result;
}

unint64_t sub_1DD5698A0()
{
  result = qword_1ECCDEE28;
  if (!qword_1ECCDEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEE28);
  }

  return result;
}

unint64_t sub_1DD5698F8()
{
  result = qword_1ECCDEE30;
  if (!qword_1ECCDEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEE30);
  }

  return result;
}

unint64_t sub_1DD56994C()
{
  result = qword_1ECCDEE38;
  if (!qword_1ECCDEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEE38);
  }

  return result;
}

unint64_t sub_1DD5699A0()
{
  result = qword_1ECCDEE40;
  if (!qword_1ECCDEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEE40);
  }

  return result;
}

unint64_t sub_1DD5699F4()
{
  result = qword_1ECCDEE48[0];
  if (!qword_1ECCDEE48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCDEE48);
  }

  return result;
}

uint64_t sub_1DD569A6C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1DD569A94()
{
  sub_1DD569A6C();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD569B34()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1DD569B54()
{
  sub_1DD569B34();

  return swift_deallocClassInstance();
}

uint64_t Recommendation.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v35 - v8;
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = 1701736302;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v24 = OUTLINED_FUNCTION_4_74();
      v25(v24);
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      v36 = v27;
      v37 = v26;
      v28 = OUTLINED_FUNCTION_3_73();
      v29(v28);
      v23 = sub_1DD63FE38();
      goto LABEL_4;
    case 2u:
      v30 = *v16;
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      v36 = v32 + 2;
      v37 = v31;
      v35[1] = v30;
      sub_1DD640178();
      swift_getWitnessTable();
      v33 = sub_1DD63FE48();
      MEMORY[0x1E12B2260](v33);

      MEMORY[0x1E12B2260](41, 0xE100000000000000);
      v18 = v36;
      break;
    case 3u:
      return v18;
    default:
      v19 = OUTLINED_FUNCTION_4_74();
      v20(v19);
      v36 = 0x6E656469666E6F63;
      v37 = 0xEA00000000002874;
      v21 = OUTLINED_FUNCTION_3_73();
      v22(v21);
      v23 = sub_1DD63FE38();
LABEL_4:
      MEMORY[0x1E12B2260](v23);

      MEMORY[0x1E12B2260](41, 0xE100000000000000);
      v18 = v36;
      (*(v3 + 8))(v9, v1);
      break;
  }

  return v18;
}

unint64_t sub_1DD569EA4(char a1)
{
  result = 0x6E656469666E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD569F30()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD569F7C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DD3B003C();
}

uint64_t sub_1DD569FA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD569F30();
  *a2 = result;
  return result;
}

unint64_t sub_1DD569FD0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DD569EA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD569FFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD569F30();
  *a1 = result;
  return result;
}

uint64_t sub_1DD56A0E0(uint64_t a1)
{
  v2 = sub_1DD56AAA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static Recommendation<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v58 = a1;
  v59 = a2;
  OUTLINED_FUNCTION_7_0();
  v56 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v53 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v52 - v11;
  v57 = v12;
  v13 = type metadata accessor for Recommendation();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_4();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v52 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v52 - v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0(TupleTypeMetadata2);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_4();
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v52 - v35;
  v38 = *(v37 + 48);
  v55 = v16;
  v39 = *(v16 + 16);
  v39(&v52 - v35, v58, v13, v34);
  (v39)(&v36[v38], v59, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (v39)(v24, v36, v13);
      if (OUTLINED_FUNCTION_11_2() == 1)
      {
        v44 = v56;
        v43 = v57;
        v45 = v53;
        (*(v56 + 32))(v53, &v36[v38], v57);
        v42 = sub_1DD63FD98();
        v46 = *(v44 + 8);
        v46(v45, v43);
        v46(v24, v43);
        goto LABEL_14;
      }

      (*(v56 + 8))(v24, v57);
      goto LABEL_12;
    case 2u:
      (v39)(v21, v36, v13);
      v40 = *v21;
      if (OUTLINED_FUNCTION_11_2() == 2)
      {
        v41 = *&v36[v38];
        v42 = sub_1DD640188();

        goto LABEL_14;
      }

      goto LABEL_12;
    case 3u:
      if (OUTLINED_FUNCTION_11_2() != 3)
      {
        goto LABEL_12;
      }

      v42 = 1;
      goto LABEL_14;
    default:
      (v39)(v27, v36, v13);
      if (OUTLINED_FUNCTION_11_2())
      {
        (*(v56 + 8))(v27, v57);
LABEL_12:
        v42 = 0;
      }

      else
      {
        v48 = v56;
        v47 = v57;
        v49 = v52;
        (*(v56 + 32))(v52, &v36[v38], v57);
        v42 = sub_1DD63FD98();
        v50 = *(v48 + 8);
        v50(v49, v47);
        v50(v27, v47);
LABEL_14:
        v30 = v55;
        TupleTypeMetadata2 = v13;
      }

      (*(v30 + 8))(v36, TupleTypeMetadata2);
      return v42 & 1;
  }
}

uint64_t Recommendation<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v64 = a4;
  v6 = sub_1DD6405F8();
  v7 = OUTLINED_FUNCTION_0(v6);
  v58 = v8;
  v59 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v57 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v53 - v14;
  OUTLINED_FUNCTION_7_0();
  v56 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_4();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF50, &qword_1DD65CB70);
  OUTLINED_FUNCTION_0(v66);
  v63 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v53 - v29;
  v61 = a2;
  v31 = type metadata accessor for Recommendation();
  OUTLINED_FUNCTION_0(v31);
  v65 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v53 - v36;
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD56AAA4();
  v68 = v30;
  v39 = v67;
  sub_1DD640ED8();
  if (v39)
  {
    v40 = a1;
  }

  else
  {
    v53 = v21;
    v54 = v37;
    v67 = a1;
    v55 = v31;
    LOBYTE(v69) = 0;
    v41 = v60;
    v42 = v61;
    v43 = v66;
    sub_1DD640B78();
    v44 = OUTLINED_FUNCTION_8_55();
    v45(v44, v43);
    v46 = *(v56 + 32);
    v46(v24, v41, v42);
    v47 = v54;
    v46(v54, v24, v42);
    v48 = v64;
    v49 = v55;
    v50 = v67;
    v51 = v65;
    swift_storeEnumTagMultiPayload();
    (*(v51 + 32))(v48, v47, v49);
    v40 = v50;
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

unint64_t sub_1DD56AAA4()
{
  result = qword_1EE165FB8;
  if (!qword_1EE165FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165FB8);
  }

  return result;
}

uint64_t Recommendation<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v42 = a4;
  v43 = v6;
  OUTLINED_FUNCTION_7_0();
  v41 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  OUTLINED_FUNCTION_7_0();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF58, &qword_1DD65CB78);
  v25 = OUTLINED_FUNCTION_0(v24);
  v45 = v26;
  v46 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v29);
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD56AAA4();
  sub_1DD640EF8();
  (*(v18 + 16))(v23, v44, a2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v36 = v41;
      v37 = v43;
      (*(v41 + 32))(v13, v23, v43);
      LOBYTE(v49) = 1;
      OUTLINED_FUNCTION_5_73();
      (*(v36 + 8))(v13, v37);
      goto LABEL_6;
    case 2u:
      v49 = *v23;
      v48 = 2;
      sub_1DD640178();
      v47 = v42;
      swift_getWitnessTable();
      sub_1DD640C68();
      v33 = OUTLINED_FUNCTION_6_63();
      v34(v33);

    case 3u:
      LOBYTE(v49) = 3;
      sub_1DD640C28();
      goto LABEL_6;
    default:
      v31 = v41;
      v32 = v43;
      (*(v41 + 32))(v16, v23, v43);
      LOBYTE(v49) = 0;
      OUTLINED_FUNCTION_5_73();
      (*(v31 + 8))(v16, v32);
LABEL_6:
      v38 = OUTLINED_FUNCTION_6_63();
      return v39(v38);
  }
}

uint64_t sub_1DD56AED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v2 = sub_1DD640178();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1DD56AF58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 4)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
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
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 253;
}

void sub_1DD56B07C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for RecommendationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD56B320()
{
  result = qword_1ECCDEF60;
  if (!qword_1ECCDEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEF60);
  }

  return result;
}

unint64_t sub_1DD56B378()
{
  result = qword_1EE165FC0;
  if (!qword_1EE165FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165FC0);
  }

  return result;
}

unint64_t sub_1DD56B3D0()
{
  result = qword_1EE165FC8;
  if (!qword_1EE165FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165FC8);
  }

  return result;
}

unint64_t sub_1DD56B424()
{
  result = qword_1ECCDEF68;
  if (!qword_1ECCDEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDEF68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_47()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

void sub_1DD56B960(uint64_t a1)
{
  v1 = a1;
  if (sub_1DD3CC020(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF008, &qword_1DD65CEF0);
    OUTLINED_FUNCTION_34();
    v2 = sub_1DD640888();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v24 = sub_1DD3CC020(v1);
  if (v24)
  {
    v3 = 0;
    v4 = v2 + 56;
    v22 = v1;
    v23 = v1 & 0xC000000000000001;
    v21 = v1 + 32;
    while (1)
    {
      v5 = OUTLINED_FUNCTION_69_2();
      sub_1DD408BFC(v5);
      v6 = v23 ? MEMORY[0x1E12B2C10](v3, v1) : *(v21 + 8 * v3);
      v7 = v6;
      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        break;
      }

      v9 = *(v2 + 40);
      sub_1DD6405A8();
      v10 = *(v2 + 32);
      OUTLINED_FUNCTION_23_18();
      v13 = ~v12;
      while (1)
      {
        v14 = v11 & v13;
        v15 = (v11 & v13) >> 6;
        v16 = *(v4 + 8 * v15);
        v17 = 1 << (v11 & v13);
        if ((v17 & v16) == 0)
        {
          break;
        }

        sub_1DD39638C(0, &qword_1ECCDBA80, 0x1E69ACA48);
        v18 = *(*(v2 + 48) + 8 * v14);
        v19 = sub_1DD6405B8();

        if (v19)
        {

          goto LABEL_17;
        }

        v11 = v14 + 1;
      }

      *(v4 + 8 * v15) = v17 | v16;
      *(*(v2 + 48) + 8 * v14) = v7;
      OUTLINED_FUNCTION_56_9();
      if (v8)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v20;
LABEL_17:
      v1 = v22;
      if (v3 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_1DD56BB0C()
{
  OUTLINED_FUNCTION_40_11();
  OUTLINED_FUNCTION_9_1(v6);
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFD8, &qword_1DD65CEC0), OUTLINED_FUNCTION_34(), v7 = sub_1DD640888(), (v8 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_71_2();
    while (v2 < *(v0 + 16))
    {
      v9 = *(v4 + 8 * v2++);
      v10 = *(v7 + 40);
      sub_1DD640E28();
      MEMORY[0x1E12B3140](v9);
      v11 = sub_1DD640E78();
      v12 = ~(v5 << *(v7 + 32));
      while (1)
      {
        OUTLINED_FUNCTION_75_1(v11, v12);
        if (v17)
        {
          break;
        }

        if (*(*(v7 + 48) + 8 * v13) == v9)
        {
          goto LABEL_11;
        }

        v11 = v13 + 1;
      }

      *(v3 + 8 * v14) = v16 | v15;
      *(*(v7 + 48) + 8 * v13) = v9;
      OUTLINED_FUNCTION_56_9();
      if (v19)
      {
        goto LABEL_14;
      }

      *(v7 + 16) = v18;
LABEL_11:
      if (v2 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_41_13();
  }
}

void sub_1DD56BC10(uint64_t a1)
{
  OUTLINED_FUNCTION_9_1(a1);
  if (v2 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFC8, &qword_1DD65CEB0), OUTLINED_FUNCTION_34(), v3 = sub_1DD640888(), v4 = v3, (v28 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v3 + 56;
    v26 = v1;
    v27 = v1 + 32;
    while (v5 < *(v1 + 16))
    {
      v7 = *(v27 + 8 * v5++);
      v8 = *(v4 + 40);
      sub_1DD63FDD8();
      sub_1DD640E28();
      v29 = v7;
      sub_1DD63FD28();
      v9 = sub_1DD640E78();

      v10 = *(v4 + 32);
      OUTLINED_FUNCTION_23_18();
      v12 = ~v11;
      while (1)
      {
        v13 = v9 & v12;
        v14 = (v9 & v12) >> 6;
        v15 = *(v6 + 8 * v14);
        v16 = 1 << (v9 & v12);
        if ((v16 & v15) == 0)
        {
          break;
        }

        v17 = *(*(v4 + 48) + 8 * v13);
        v18 = sub_1DD63FDD8();
        v20 = v19;
        if (v18 == sub_1DD63FDD8() && v20 == v21)
        {

          goto LABEL_17;
        }

        v23 = OUTLINED_FUNCTION_80_1();

        if (v23)
        {

          goto LABEL_17;
        }

        v9 = v13 + 1;
      }

      *(v6 + 8 * v14) = v16 | v15;
      *(*(v4 + 48) + 8 * v13) = v29;
      OUTLINED_FUNCTION_56_9();
      if (v25)
      {
        goto LABEL_20;
      }

      *(v4 + 16) = v24;
LABEL_17:
      v1 = v26;
      if (v5 == v28)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_1DD56BDEC()
{
  OUTLINED_FUNCTION_18_4();
  v6 = v5;
  v7 = sub_1DD63D2B8();
  v8 = OUTLINED_FUNCTION_2_89(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17_33();
  v12 = MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_36_13(v12, v13, v14, v15, v16, v17, v18, v19, v37);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF70, &qword_1DD65CE58), OUTLINED_FUNCTION_34(), sub_1DD640888(), OUTLINED_FUNCTION_68_3(), v20))
  {
    OUTLINED_FUNCTION_13_41();
    while (v21 < *(v6 + 16))
    {
      v22 = OUTLINED_FUNCTION_16_40(v21);
      (v6)(v22);
      v23 = *(v3 + 40);
      OUTLINED_FUNCTION_8_56();
      sub_1DD57AFAC(&qword_1EE1637E0, v24);
      OUTLINED_FUNCTION_59_8();
      v25 = *(v3 + 32);
      OUTLINED_FUNCTION_23_18();
      while (1)
      {
        OUTLINED_FUNCTION_21_28(v26);
        if (v28)
        {
          break;
        }

        v29 = OUTLINED_FUNCTION_25_19();
        (v6)(v29);
        OUTLINED_FUNCTION_8_56();
        sub_1DD57AFAC(&unk_1ECCDC350, v30);
        OUTLINED_FUNCTION_53_10();
        v31 = OUTLINED_FUNCTION_49_10();
        (v3)(v31);
        if (v23)
        {
          (v3)(v38, v1);
          v3 = v4;
          goto LABEL_12;
        }

        v26 = v2 + 1;
        v3 = v4;
      }

      v32 = OUTLINED_FUNCTION_19_30(v27);
      v33(v32);
      v34 = *(v3 + 16);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_16;
      }

      *(v3 + 16) = v36;
LABEL_12:
      OUTLINED_FUNCTION_37_17();
      if (v28)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_17();
  }
}

void sub_1DD56BFD4(uint64_t a1)
{
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF78, &qword_1DD65CE60), OUTLINED_FUNCTION_34(), v2 = sub_1DD640888(), v3 = v2, (v4 = *(a1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    v7 = a1 + 32;
    v8 = *(v2 + 40);
    v9 = *(v2 + 32);
    OUTLINED_FUNCTION_23_18();
    v11 = ~v10;
    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v13 = *(v7 + 4 * v5++);
      for (i = MEMORY[0x1E12B3110](v8, v13, 4); ; i = v15 + 1)
      {
        v15 = i & v11;
        v16 = (i & v11) >> 6;
        v17 = *(v6 + 8 * v16);
        v18 = 1 << (i & v11);
        if ((v18 & v17) == 0)
        {
          break;
        }

        if (*(*(v3 + 48) + 4 * v15) == v13)
        {
          goto LABEL_11;
        }
      }

      *(v6 + 8 * v16) = v18 | v17;
      *(*(v3 + 48) + 4 * v15) = v13;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_14;
      }

      *(v3 + 16) = v21;
LABEL_11:
      if (v12 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

void sub_1DD56C10C()
{
  OUTLINED_FUNCTION_18_4();
  v6 = v5;
  v7 = sub_1DD63F8B8();
  v8 = OUTLINED_FUNCTION_2_89(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17_33();
  v12 = MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_36_13(v12, v13, v14, v15, v16, v17, v18, v19, v37);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEF80, &qword_1DD65CE68), OUTLINED_FUNCTION_34(), sub_1DD640888(), OUTLINED_FUNCTION_68_3(), v20))
  {
    OUTLINED_FUNCTION_13_41();
    while (v21 < *(v6 + 16))
    {
      v22 = OUTLINED_FUNCTION_16_40(v21);
      (v6)(v22);
      v23 = *(v3 + 40);
      OUTLINED_FUNCTION_6_64();
      sub_1DD57AFAC(&qword_1EE160338, v24);
      OUTLINED_FUNCTION_59_8();
      v25 = *(v3 + 32);
      OUTLINED_FUNCTION_23_18();
      while (1)
      {
        OUTLINED_FUNCTION_21_28(v26);
        if (v28)
        {
          break;
        }

        v29 = OUTLINED_FUNCTION_25_19();
        (v6)(v29);
        OUTLINED_FUNCTION_6_64();
        sub_1DD57AFAC(&qword_1ECCDD278, v30);
        OUTLINED_FUNCTION_53_10();
        v31 = OUTLINED_FUNCTION_49_10();
        (v3)(v31);
        if (v23)
        {
          (v3)(v38, v1);
          v3 = v4;
          goto LABEL_12;
        }

        v26 = v2 + 1;
        v3 = v4;
      }

      v32 = OUTLINED_FUNCTION_19_30(v27);
      v33(v32);
      v34 = *(v3 + 16);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_16;
      }

      *(v3 + 16) = v36;
LABEL_12:
      OUTLINED_FUNCTION_37_17();
      if (v28)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_17();
  }
}

void sub_1DD56C2F4()
{
  OUTLINED_FUNCTION_40_11();
  OUTLINED_FUNCTION_9_1(v2);
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE400, &unk_1DD6575E0), OUTLINED_FUNCTION_34(), v3 = sub_1DD640888(), v4 = v3, (v5 = *(v0 + 16)) != 0))
  {
    v6 = 0;
    v7 = v3 + 56;
    while (v6 < *(v0 + 16))
    {
      v8 = (v0 + 32 + 16 * v6);
      v10 = *v8;
      v9 = v8[1];
      ++v6;
      v11 = *(v4 + 40);
      sub_1DD640E28();

      sub_1DD63FD28();
      sub_1DD640E78();
      v12 = *(v4 + 32);
      OUTLINED_FUNCTION_23_18();
      v15 = ~v14;
      while (1)
      {
        v16 = v13 & v15;
        v17 = (v13 & v15) >> 6;
        if (((1 << (v13 & v15)) & *(v7 + 8 * v17)) == 0)
        {
          break;
        }

        v18 = (*(v4 + 48) + 16 * v16);
        v19 = *v18 == v10 && v18[1] == v9;
        if (v19 || (sub_1DD640CD8() & 1) != 0)
        {

          goto LABEL_16;
        }

        v13 = v16 + 1;
      }

      OUTLINED_FUNCTION_67_4(v17);
      v21 = (v20 + 16 * v16);
      *v21 = v10;
      v21[1] = v9;
      OUTLINED_FUNCTION_56_9();
      if (v23)
      {
        goto LABEL_19;
      }

      *(v4 + 16) = v22;
LABEL_16:
      if (v6 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    OUTLINED_FUNCTION_41_13();
  }
}

void sub_1DD56C450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_53_7();
  a31 = v34;
  a32 = v35;
  v37 = v36;
  if (sub_1DD3CC020(v36))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE410, &qword_1DD6575F8);
    OUTLINED_FUNCTION_34();
    v38 = sub_1DD640888();
  }

  else
  {
    v38 = MEMORY[0x1E69E7CD0];
  }

  v51 = sub_1DD3CC020(v37);
  if (v51)
  {
    OUTLINED_FUNCTION_61_8();
    while (1)
    {
      v39 = OUTLINED_FUNCTION_69_2();
      sub_1DD408BFC(v39);
      if (a10)
      {
        v40 = MEMORY[0x1E12B2C10](v33, v37);
      }

      else
      {
        v40 = *(a9 + 8 * v33);
      }

      v41 = __OFADD__(v33++, 1);
      if (v41)
      {
        break;
      }

      v42 = *(v38 + 40);
      sub_1DD640E28();
      sub_1DD48E664(&a12);
      sub_1DD640E78();
      v43 = *(v38 + 32);
      OUTLINED_FUNCTION_23_18();
      while (1)
      {
        OUTLINED_FUNCTION_74_1(v44);
        if (v46)
        {
          break;
        }

        type metadata accessor for DateTimeConstraint();
        v47 = OUTLINED_FUNCTION_93_1();
        v48 = sub_1DD48E554(v47, v40);

        if (v48)
        {

          goto LABEL_17;
        }

        v44 = v32 + 1;
      }

      OUTLINED_FUNCTION_67_4(v45);
      *(v49 + 8 * v32) = v40;
      OUTLINED_FUNCTION_56_9();
      if (v41)
      {
        goto LABEL_20;
      }

      *(v38 + 16) = v50;
LABEL_17:
      if (v33 == v51)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    OUTLINED_FUNCTION_54_8();
  }
}

void sub_1DD56C5AC()
{
  OUTLINED_FUNCTION_40_11();
  OUTLINED_FUNCTION_9_1(v6);
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFE0, &qword_1DD65CEC8), OUTLINED_FUNCTION_34(), v7 = sub_1DD640888(), (v8 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_71_2();
    while (v2 < *(v0 + 16))
    {
      v9 = *(v4 + v2++);
      v10 = *(v7 + 40);
      sub_1DD640E28();
      MEMORY[0x1E12B3140](v9);
      v11 = sub_1DD640E78();
      v12 = ~(v5 << *(v7 + 32));
      while (1)
      {
        OUTLINED_FUNCTION_75_1(v11, v12);
        if (v17)
        {
          break;
        }

        if (*(*(v7 + 48) + v13) == v9)
        {
          goto LABEL_11;
        }

        v11 = v13 + 1;
      }

      *(v3 + 8 * v14) = v16 | v15;
      *(*(v7 + 48) + v13) = v9;
      OUTLINED_FUNCTION_56_9();
      if (v19)
      {
        goto LABEL_14;
      }

      *(v7 + 16) = v18;
LABEL_11:
      if (v2 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_41_13();
  }
}

void sub_1DD56C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_53_7();
  a31 = v34;
  a32 = v35;
  v37 = v36;
  if (sub_1DD3CC020(v36))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF020, &qword_1DD65CF08);
    OUTLINED_FUNCTION_34();
    v38 = sub_1DD640888();
  }

  else
  {
    v38 = MEMORY[0x1E69E7CD0];
  }

  v51 = sub_1DD3CC020(v37);
  if (v51)
  {
    OUTLINED_FUNCTION_61_8();
    while (1)
    {
      v39 = OUTLINED_FUNCTION_69_2();
      sub_1DD408BFC(v39);
      if (a10)
      {
        v40 = MEMORY[0x1E12B2C10](v33, v37);
      }

      else
      {
        v40 = *(a9 + 8 * v33);
      }

      v41 = __OFADD__(v33++, 1);
      if (v41)
      {
        break;
      }

      v42 = *(v38 + 40);
      sub_1DD640E28();
      sub_1DD489FC8(&a12);
      sub_1DD640E78();
      v43 = *(v38 + 32);
      OUTLINED_FUNCTION_23_18();
      while (1)
      {
        OUTLINED_FUNCTION_74_1(v44);
        if (v46)
        {
          break;
        }

        type metadata accessor for DateTime();
        v47 = OUTLINED_FUNCTION_93_1();
        v48 = static DateTime.== infix(_:_:)(v47, v40);

        if (v48)
        {

          goto LABEL_17;
        }

        v44 = v32 + 1;
      }

      OUTLINED_FUNCTION_67_4(v45);
      *(v49 + 8 * v32) = v40;
      OUTLINED_FUNCTION_56_9();
      if (v41)
      {
        goto LABEL_20;
      }

      *(v38 + 16) = v50;
LABEL_17:
      if (v33 == v51)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    OUTLINED_FUNCTION_54_8();
  }
}

void sub_1DD56C80C(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    goto LABEL_65;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE408, &qword_1DD6575F0);
  OUTLINED_FUNCTION_34();
  v2 = sub_1DD640888();
  v3 = v2;
  v46 = *(v1 + 16);
  if (!v46)
  {
    goto LABEL_65;
  }

  v4 = 0;
  v5 = v2 + 56;
  v43 = v1;
  v44 = v1 + 32;
  v45 = v2;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_67;
    }

    v6 = v44 + 48 * v4;
    v8 = *v6;
    v7 = *(v6 + 8);
    v49 = *(v6 + 24);
    v50 = *(v6 + 16);
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
    v11 = *(v3 + 40);
    sub_1DD640E28();
    v48 = v9;
    if (v10)
    {
      if (v10 == 1)
      {
        MEMORY[0x1E12B3140](1);

        OUTLINED_FUNCTION_79_2();
        MEMORY[0x1E12B3140](v50);
        goto LABEL_12;
      }

      MEMORY[0x1E12B3140](2);

      OUTLINED_FUNCTION_79_2();
      goto LABEL_11;
    }

    MEMORY[0x1E12B3140](0);

    OUTLINED_FUNCTION_79_2();
    MEMORY[0x1E12B3140](v50);
    if (v9)
    {
      sub_1DD640E48();
LABEL_11:
      sub_1DD63FD28();
      goto LABEL_12;
    }

    sub_1DD640E48();
LABEL_12:
    sub_1DD640E78();
    v12 = *(v3 + 32);
    OUTLINED_FUNCTION_23_18();
    v14 = ~v13;
    v16 = v15 & ~v13;
    v17 = v16 >> 6;
    v18 = *(v5 + 8 * (v16 >> 6));
    v19 = 1 << v16;
    v20 = *(v3 + 48);
    if (((1 << v16) & v18) == 0)
    {
      break;
    }

    v47 = v4;
    while (1)
    {
      v21 = (v20 + 48 * v16);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      v25 = v21[3];
      if (*(v21 + 40))
      {
        if (*(v21 + 40) == 1)
        {
          if (v10 == 1)
          {
            v26 = v22 == v8 && v23 == v7;
            if (v26 || (OUTLINED_FUNCTION_77_1()) && v24 == v50)
            {
              v37 = OUTLINED_FUNCTION_51_9();
              v41 = v48;
              v42 = 1;
              goto LABEL_61;
            }
          }
        }

        else if (v10 == 2)
        {
          v30 = v22 == v8 && v23 == v7;
          if (v30 || (OUTLINED_FUNCTION_77_1() & 1) != 0)
          {
            v40 = v49;
            v39 = v50;
            if (v24 == v50 && v25 == v49)
            {
              v37 = v8;
              v38 = v7;
              v41 = v48;
              v42 = 2;
              goto LABEL_61;
            }

            if (sub_1DD640CD8())
            {
              v37 = OUTLINED_FUNCTION_51_9();
              v41 = v48;
              v42 = 2;
              goto LABEL_61;
            }
          }
        }

        goto LABEL_50;
      }

      if (v10)
      {
        goto LABEL_50;
      }

      v27 = v21[4];
      v28 = v22 == v8 && v23 == v7;
      if (!v28 && (OUTLINED_FUNCTION_77_1() & 1) == 0 || v24 != v50)
      {
        goto LABEL_50;
      }

      if (!v27)
      {
        break;
      }

      if (v48)
      {
        v41 = v48;
        v40 = v49;
        if (v25 == v49 && v27 == v48)
        {
          v37 = v8;
          v38 = v7;
          v39 = v50;
          v42 = 0;
          goto LABEL_61;
        }

        if (sub_1DD640CD8())
        {
          v37 = OUTLINED_FUNCTION_51_9();
          v41 = v48;
          goto LABEL_64;
        }
      }

LABEL_50:
      v16 = (v16 + 1) & v14;
      v17 = v16 >> 6;
      v18 = *(v5 + 8 * (v16 >> 6));
      v19 = 1 << v16;
      if ((v18 & (1 << v16)) == 0)
      {
        v32 = v45;
        v20 = *(v45 + 48);
        v1 = v43;
        v4 = v47;
        goto LABEL_55;
      }
    }

    if (v48)
    {
      goto LABEL_50;
    }

    v37 = OUTLINED_FUNCTION_51_9();
    v41 = 0;
LABEL_64:
    v42 = 0;
LABEL_61:
    sub_1DD41B1C8(v37, v38, v39, v40, v41, v42);
    v1 = v43;
    v3 = v45;
    v4 = v47;
LABEL_57:
    if (++v4 == v46)
    {
LABEL_65:

      return;
    }
  }

  v32 = v45;
LABEL_55:
  *(v5 + 8 * v17) = v18 | v19;
  v33 = v20 + 48 * v16;
  *v33 = v8;
  *(v33 + 8) = v7;
  *(v33 + 16) = v50;
  *(v33 + 24) = v49;
  *(v33 + 32) = v48;
  *(v33 + 40) = v10;
  v34 = *(v32 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (!v35)
  {
    v3 = v32;
    *(v32 + 16) = v36;
    goto LABEL_57;
  }

LABEL_67:
  __break(1u);
}

void sub_1DD56CC18()
{
  OUTLINED_FUNCTION_18_4();
  v6 = v5;
  v7 = sub_1DD63EA08();
  v8 = OUTLINED_FUNCTION_2_89(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17_33();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_36_13(v12, v13, v14, v15, v16, v17, v18, v19, v37);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFF8, &qword_1DD65CEE0), OUTLINED_FUNCTION_34(), sub_1DD640888(), OUTLINED_FUNCTION_68_3(), v20))
  {
    OUTLINED_FUNCTION_13_41();
    while (v21 < *(v6 + 16))
    {
      v22 = OUTLINED_FUNCTION_16_40(v21);
      (v6)(v22);
      v23 = *(v3 + 40);
      OUTLINED_FUNCTION_46_5();
      sub_1DD57AFAC(&qword_1ECCDD280, v24);
      OUTLINED_FUNCTION_59_8();
      v25 = *(v3 + 32);
      OUTLINED_FUNCTION_23_18();
      while (1)
      {
        OUTLINED_FUNCTION_21_28(v26);
        if (v28)
        {
          break;
        }

        v29 = OUTLINED_FUNCTION_25_19();
        (v6)(v29);
        OUTLINED_FUNCTION_46_5();
        sub_1DD57AFAC(&qword_1ECCDD288, v30);
        OUTLINED_FUNCTION_53_10();
        v31 = OUTLINED_FUNCTION_49_10();
        (v3)(v31);
        if (v23)
        {
          (v3)(v38, v1);
          v3 = v4;
          goto LABEL_12;
        }

        v26 = v2 + 1;
        v3 = v4;
      }

      v32 = OUTLINED_FUNCTION_19_30(v27);
      v33(v32);
      v34 = *(v3 + 16);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_16;
      }

      *(v3 + 16) = v36;
LABEL_12:
      OUTLINED_FUNCTION_37_17();
      if (v28)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_17();
  }
}

BOOL sub_1DD56CECC(uint64_t *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89_1();
  sub_1DD640E28();
  MEMORY[0x1E12B3140](a2);
  sub_1DD640E78();
  v7 = *(v4 + 32);
  OUTLINED_FUNCTION_27_23();
  while (1)
  {
    OUTLINED_FUNCTION_33_13(v8, v9);
    v12 = v11 & v10;
    if ((v11 & v10) == 0)
    {
      break;
    }

    if (*(*(v4 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }

    v8 = v3 + 1;
  }

  v13 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_26_25();
  v15 = sub_1DD573454(a2, v3, v14);
  OUTLINED_FUNCTION_60_6(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25);
LABEL_6:
  result = v12 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1DD56CF8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD416068(v32, a4);
  sub_1DD640E78();
  v10 = *(v8 + 32);
  OUTLINED_FUNCTION_23_18();
  v13 = v12 & ~v11;
  if ((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v31 = ~v11;
    v14 = *(v8 + 48);
    while (1)
    {
      v15 = (v14 + 24 * v13);
      result = *v15;
      v17 = v15[2];
      v18 = *v15 == a2 && v15[1] == a3;
      if (v18 || (result = OUTLINED_FUNCTION_82_2(), (result & 1) != 0))
      {
        v19 = *(v17 + 16);
        if (v19 == *(a4 + 16))
        {
          break;
        }
      }

LABEL_22:
      v13 = (v13 + 1) & v31;
      if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (v19)
    {
      v20 = v17 == a4;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
LABEL_24:

      v26 = (*(v8 + 48) + 24 * v13);
      v27 = v26[1];
      v28 = v26[2];
      *a1 = *v26;
      a1[1] = v27;
      a1[2] = v28;

      return 0;
    }

    else
    {
      v21 = (v17 + 40);
      v22 = (a4 + 40);
      while (v19)
      {
        result = *(v21 - 1);
        if (result != *(v22 - 1) || *v21 != *v22)
        {
          result = sub_1DD640CD8();
          if ((result & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v21 += 2;
        v22 += 2;
        if (!--v19)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_23:
    v24 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = *v29;

    sub_1DD57358C(a2, a3, a4, v13, isUniquelyReferenced_nonNull_native);
    *v29 = v32[0];
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    return 1;
  }

  return result;
}

void sub_1DD56D194()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_35_14(v4);
  v5 = sub_1DD63D2B8();
  v6 = OUTLINED_FUNCTION_2_89(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_75();
  OUTLINED_FUNCTION_8_56();
  sub_1DD57AFAC(v9, v10);
  OUTLINED_FUNCTION_22_28();
  OUTLINED_FUNCTION_0_119();
  while (1)
  {
    OUTLINED_FUNCTION_3_74(v11);
    if (v12)
    {
      OUTLINED_FUNCTION_81_2();
      v16 = OUTLINED_FUNCTION_12_35();
      v17(v16);
      v18 = OUTLINED_FUNCTION_10_48();
      sub_1DD573794(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_9_48();
      v22(v21);
      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_1_104();
    v3(v13);
    OUTLINED_FUNCTION_8_56();
    sub_1DD57AFAC(&unk_1ECCDC350, v14);
    OUTLINED_FUNCTION_23_30();
    v15 = OUTLINED_FUNCTION_15_40();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = OUTLINED_FUNCTION_34_16();
  v1(v23);
  v24 = OUTLINED_FUNCTION_11_43();
  v3(v24);
LABEL_7:
  OUTLINED_FUNCTION_17();
}

void sub_1DD56D300()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_35_14(v4);
  v5 = sub_1DD63C868();
  v6 = OUTLINED_FUNCTION_2_89(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_75();
  OUTLINED_FUNCTION_45_11();
  sub_1DD57AFAC(v9, v10);
  OUTLINED_FUNCTION_22_28();
  OUTLINED_FUNCTION_0_119();
  while (1)
  {
    OUTLINED_FUNCTION_3_74(v11);
    if (v12)
    {
      OUTLINED_FUNCTION_81_2();
      v16 = OUTLINED_FUNCTION_12_35();
      v17(v16);
      v18 = OUTLINED_FUNCTION_10_48();
      sub_1DD573A44(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_9_48();
      v22(v21);
      goto LABEL_7;
    }

    v13 = OUTLINED_FUNCTION_1_104();
    v3(v13);
    OUTLINED_FUNCTION_45_11();
    sub_1DD57AFAC(&qword_1ECCDF030, v14);
    OUTLINED_FUNCTION_23_30();
    v15 = OUTLINED_FUNCTION_15_40();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v23 = OUTLINED_FUNCTION_34_16();
  v1(v23);
  v24 = OUTLINED_FUNCTION_11_43();
  v3(v24);
LABEL_7:
  OUTLINED_FUNCTION_17();
}

void sub_1DD56D46C()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  v6 = *(*v0 + 40);
  sub_1DD640E28();
  v88 = *v2;
  v89 = *(v2 + 2);
  v7 = v89;
  v9 = *(&v88 + 1);
  v8 = v88;
  sub_1DD57F364(__dst, v88, v10, v11, v12, v13, v14, v15);
  v76 = v4;
  v74 = v0;
  if (v7 == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    sub_1DD640E48();
    if (v7)
    {
      MEMORY[0x1E12B3140](1);

      sub_1DD63FD28();
      v16 = v9;
      v17 = v7;
    }

    else
    {
      MEMORY[0x1E12B3140](0);
      v16 = v9;
      v17 = 0;
    }

    sub_1DD3EB430(v16, v17);
  }

  v18 = *(v2 + 40);
  v19 = *(v2 + 6);
  v20 = *(v2 + 7);
  v21 = *(v2 + 8);
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v24 = *(v2 + 11);
  v25 = *(v2 + 96);
  v26 = *(v2 + 97);
  v82 = *(v2 + 4);
  v83 = *(v2 + 3);
  v87[0] = v83;
  v87[1] = v82;
  v81 = v18;
  LOBYTE(v87[2]) = v18;
  *(&v87[2] + 1) = *(v2 + 41);
  v75 = v2;
  HIDWORD(v87[2]) = *(v2 + 11);
  v79 = v20;
  v80 = v19;
  v87[3] = v19;
  v87[4] = v20;
  v77 = v22;
  v78 = v21;
  v87[5] = v21;
  v87[6] = v22;
  v72 = v24;
  v73 = v23;
  v87[7] = v23;
  v87[8] = v24;
  v70 = v26;
  v71 = v25;
  LOBYTE(v87[9]) = v25;
  BYTE1(v87[9]) = v26;
  ContactHandle.hash(into:)();
  sub_1DD640E78();
  v27 = *(v5 + 32);
  OUTLINED_FUNCTION_23_18();
  v30 = v29 & ~v28;
  if (((*(v5 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
  {
LABEL_65:
    v67 = *v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __dst[0] = *v74;
    sub_1DD57AEA0(v75, v87);
    sub_1DD573CF4(v75, v30, isUniquelyReferenced_nonNull_native);
    *v74 = __dst[0];
    memcpy(v76, v75, 0x62uLL);
    goto LABEL_66;
  }

  v31 = ~v28;
  v84 = v8;
  while (1)
  {
    v32 = 104 * v30;
    memcpy(v87, (*(v5 + 48) + 104 * v30), 0x62uLL);
    v34 = v87[0];
    v33 = v87[1];
    v35 = v87[2];
    sub_1DD57AEA0(v87, __dst);

    v36 = OUTLINED_FUNCTION_1_8();
    sub_1DD3EB41C(v36, v37);
    sub_1DD57AEFC(&v88, __dst);
    if ((sub_1DD57D274(v34, v8) & 1) == 0)
    {
      goto LABEL_16;
    }

    if (v35 != 1)
    {
      if (v7 == 1)
      {
LABEL_14:
        OUTLINED_FUNCTION_83_2();
        v38 = OUTLINED_FUNCTION_1_8();
        sub_1DD3EB41C(v38, v39);
        v40 = OUTLINED_FUNCTION_1_8();
        sub_1DD3EB430(v40, v41);
        v42 = v9;
        v8 = v84;
        v43 = v7;
      }

      else
      {
        if (v35)
        {
          if (v7)
          {
            if (v33 == v9 && v35 == v7)
            {
              OUTLINED_FUNCTION_83_2();
              OUTLINED_FUNCTION_83_2();
              OUTLINED_FUNCTION_83_2();
            }

            else
            {
              OUTLINED_FUNCTION_1_8();
              v69 = sub_1DD640CD8();
              OUTLINED_FUNCTION_83_2();
              v47 = OUTLINED_FUNCTION_1_8();
              sub_1DD3EB41C(v47, v48);
              v49 = OUTLINED_FUNCTION_1_8();
              sub_1DD3EB41C(v49, v50);

              if ((v69 & 1) == 0)
              {
                v51 = OUTLINED_FUNCTION_1_8();
                sub_1DD3EB430(v51, v52);
                v8 = v84;
                goto LABEL_16;
              }
            }

            v8 = v84;
            goto LABEL_35;
          }

          sub_1DD3EB41C(v9, 0);
          v53 = OUTLINED_FUNCTION_1_8();
          sub_1DD3EB41C(v53, v54);
          v55 = OUTLINED_FUNCTION_1_8();
          sub_1DD3EB41C(v55, v56);
        }

        else
        {
          if (!v7)
          {
            sub_1DD3EB41C(v9, 0);
            sub_1DD3EB41C(v33, 0);
            swift_bridgeObjectRelease_n();
            goto LABEL_35;
          }

          sub_1DD3EB41C(v9, v7);
          sub_1DD3EB41C(v33, 0);
        }

        v42 = OUTLINED_FUNCTION_1_8();
      }

      sub_1DD3EB430(v42, v43);
LABEL_16:
      sub_1DD57AF58(&v88);

      v44 = OUTLINED_FUNCTION_1_8();
      sub_1DD3EB430(v44, v45);
LABEL_17:
      sub_1DD3EB488(v87);
      goto LABEL_18;
    }

    if (v7 != 1)
    {
      goto LABEL_14;
    }

    sub_1DD3EB41C(v9, 1);
    sub_1DD3EB41C(v33, 1);
LABEL_35:
    v57 = OUTLINED_FUNCTION_1_8();
    sub_1DD3EB430(v57, v58);
    sub_1DD57AF58(&v88);

    v59 = OUTLINED_FUNCTION_1_8();
    sub_1DD3EB430(v59, v60);
    v61 = v87[3] == v83 && v87[4] == v82;
    if (!v61 && (sub_1DD640CD8() & 1) == 0)
    {
      goto LABEL_17;
    }

    if (LOBYTE(v87[5]) != v81)
    {
      goto LABEL_17;
    }

    v62 = v87[6] == v80 && v87[7] == v79;
    if (!v62 && (sub_1DD640CD8() & 1) == 0)
    {
      goto LABEL_17;
    }

    v63 = v87[8] == v78 && v87[9] == v77;
    if (!v63 && (sub_1DD640CD8() & 1) == 0)
    {
      goto LABEL_17;
    }

    if (v87[10] == v73 && v87[11] == v72)
    {
      sub_1DD3EB488(v87);
      if (LOBYTE(v87[12]) != (v71 & 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v65 = sub_1DD640CD8();
      sub_1DD3EB488(v87);
      if (v65 & 1) == 0 || ((LOBYTE(v87[12]) ^ v71))
      {
        goto LABEL_18;
      }
    }

    if (BYTE1(v87[12]) != 2)
    {
      break;
    }

    if (v70 == 2)
    {
      goto LABEL_64;
    }

LABEL_18:
    v30 = (v30 + 1) & v31;
    if (((*(v5 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  if (v70 == 2 || ((BYTE1(v87[12]) ^ v70) & 1) != 0)
  {
    goto LABEL_18;
  }

LABEL_64:
  sub_1DD3EB488(v75);
  v66 = *(v5 + 48);
  memcpy(__dst, (v66 + v32), 0x62uLL);
  memcpy(v76, (v66 + v32), 0x62uLL);
  sub_1DD57AEA0(__dst, v85);
LABEL_66:
  OUTLINED_FUNCTION_17();
}