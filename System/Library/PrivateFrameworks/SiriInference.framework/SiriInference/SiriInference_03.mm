void *sub_1DD3C8F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a4;
  v57 = a3;
  v56 = type metadata accessor for ContactResolver.SignalSet(0);
  v6 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1DD63CD18();
  v9 = *(v8 - 8);
  v54 = v8;
  v55 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Contact();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v50[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v50[-v18];
  v20 = *(a1 + 8);
  v59 = *a1;
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = (a2 + *(type metadata accessor for AsrE3CandidateExpander() + 20));
  v24 = v23[3];
  v25 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v26 = v61;
  result = (*(v25 + 24))(v20, v21, v24, v25);
  if (!v26)
  {
    v61 = v21;
    v53 = v12;
    if (result)
    {
      v28 = v17;
      v29 = v19;
      v52 = result;
      sub_1DD40B108();
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v30 = sub_1DD63F9F8();
      __swift_project_value_buffer(v30, qword_1EE16F068);
      sub_1DD3C96F0(v19, v28, type metadata accessor for Contact);

      v31 = sub_1DD63F9D8();
      v32 = sub_1DD640368();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = v28;
        v34 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v63[0] = v61;
        *v34 = 136315394;
        v35 = v29;
        v36 = v53;
        v59 = v31;
        Contact.nameComponents.getter();
        v37 = sub_1DD63CCF8();
        v39 = v38;
        v51 = v32;
        v40 = v36;
        v29 = v35;
        (*(v55 + 8))(v40, v54);
        sub_1DD3C9638(v33, type metadata accessor for Contact);
        v41 = sub_1DD39565C(v37, v39, v63);

        *(v34 + 4) = v41;
        *(v34 + 12) = 2048;
        *(v34 + 14) = v22;
        v42 = v59;
        _os_log_impl(&dword_1DD38D000, v59, v51, "[UCG][ASR-E3] Euclid candidate found: %s, with score: %f", v34, 0x16u);
        v43 = v61;
        __swift_destroy_boxed_opaque_existential_1(v61);
        MEMORY[0x1E12B3DA0](v43, -1, -1);
        MEMORY[0x1E12B3DA0](v34, -1, -1);
      }

      else
      {

        sub_1DD3C9638(v28, type metadata accessor for Contact);
      }

      v45 = v60;
      v46 = v57;
      v47 = v58;
      v48 = v56;
      sub_1DD43038C(v58);

      memcpy(v63, v47 + 8, 0x108uLL);
      sub_1DD3C9478(v46, &v62);
      sub_1DD3C9580(v63);
      memcpy(v47 + 8, v46, 0x108uLL);
      v47[*(v48 + 232)] = 1;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD3C96F0(v47, v45 + *(v49 + 36), type metadata accessor for ContactResolver.SignalSet);
      sub_1DD3C95D4(v29, v45);
      __swift_storeEnumTagSinglePayload(v45, 0, 1, v49);
      return sub_1DD3C9638(v47, type metadata accessor for ContactResolver.SignalSet);
    }

    else
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      return __swift_storeEnumTagSinglePayload(v60, 1, 1, v44);
    }
  }

  return result;
}

uint64_t sub_1DD3C94D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DD3C9510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3C95D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Contact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3C9638(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1DD3C96F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for AsrPhoneticSequenceFetcher()
{
  result = qword_1ECCDBF98;
  if (!qword_1ECCDBF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD3C97F8()
{
  sub_1DD63D168();
  if (v0 <= 0x3F)
  {
    sub_1DD3C987C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD3C987C()
{
  if (!qword_1EE1601E8)
  {
    sub_1DD39638C(255, &qword_1EE1601F0, 0x1E698D228);
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1601E8);
    }
  }
}

uint64_t sub_1DD3C98E4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(type metadata accessor for AsrPhoneticSequenceFetcher() + 20));
  if (!v3)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v74 = sub_1DD63F9F8();
    __swift_project_value_buffer(v74, qword_1EE16F068);
    v66 = sub_1DD63F9D8();
    v75 = sub_1DD640378();
    if (os_log_type_enabled(v66, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1DD38D000, v66, v75, "[AsrPhoneticSequenceFetcher] could not fetch speech lattice", v76, 2u);
      OUTLINED_FUNCTION_0_1();
    }

LABEL_76:

    return 0;
  }

  v4 = v3;
  v5 = [v4 recognition];
  v6 = &qword_1DD643000;
  if (!v5 || (v7 = sub_1DD3CA4C0(v5)) == 0)
  {
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_70;
  }

  v8 = v7;
  v78 = v4;
  v4 = 0;
  v86 = v7 & 0xC000000000000001;
  v87 = sub_1DD3CC020(v7);
  v79 = MEMORY[0x1E69E7CC0];
  v85 = v8 & 0xFFFFFFFFFFFFFF8;
  v6 = &unk_1EE165000;
  v80 = v8;
  while (1)
  {
LABEL_5:
    if (v87 == v4)
    {

      return v79;
    }

    if (v86)
    {
      v9 = MEMORY[0x1E12B2C10](v4, v8);
    }

    else
    {
      if (v4 >= *(v85 + 16))
      {
        goto LABEL_83;
      }

      v9 = *(v8 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      goto LABEL_82;
    }

    v84 = v4 + 1;
    v90 = v9;
    v10 = sub_1DD3CA3EC(v9, &selRef_interpretations, &qword_1EE1601A8, 0x1E698D220);
    if (v10)
    {
      break;
    }

    OUTLINED_FUNCTION_3_14();
    if (!v13)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v14 = sub_1DD63F9F8();
    __swift_project_value_buffer(v14, qword_1EE16F068);
    v15 = sub_1DD63F9D8();
    v16 = sub_1DD640378();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_54();
      *v17 = 134349056;
      *(v17 + 4) = v4;
      _os_log_impl(&dword_1DD38D000, v15, v16, "[AsrPhoneticSequenceFetcher] interpretations is nil for phrase %{public}ld, skipping phrase", v17, 0xCu);
      OUTLINED_FUNCTION_0_1();
    }

LABEL_20:
    ++v4;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFF8;
  v89 = v10;
  if (v10 >> 62)
  {
    v64 = v10 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1DD6407B8();
    v11 = v64;
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {

    goto LABEL_20;
  }

  v18 = 0;
  v82 = v11;
  v81 = v12;
  while (1)
  {
    if ((v89 & 0xC000000000000001) != 0)
    {
      v19 = v18;
      v20 = MEMORY[0x1E12B2C10](v18, v89);
    }

    else
    {
      if (v18 >= *(v11 + 16))
      {
        goto LABEL_85;
      }

      v19 = v18;
      v20 = *(v89 + 32 + 8 * v18);
    }

    v88 = v20;
    v21 = __OFADD__(v19, 1);
    v4 = v19 + 1;
    if (v21)
    {
      goto LABEL_84;
    }

    v83 = v4;
    v22 = sub_1DD3CA3EC(v20, &selRef_tokens, &qword_1ECCDBFB0, 0x1E698D248);
    if (v22)
    {
      break;
    }

    OUTLINED_FUNCTION_3_14();
    if (!v13)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v53 = sub_1DD63F9F8();
    __swift_project_value_buffer(v53, qword_1EE16F068);
    v4 = v88;
    v54 = sub_1DD63F9D8();
    v55 = sub_1DD640378();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = OUTLINED_FUNCTION_54();
      v57 = swift_slowAlloc();
      v98[0] = v57;
      *v56 = 136315138;
      v58 = [v4 description];
      v59 = sub_1DD63FDD8();
      v61 = v60;

      v62 = v59;
      v8 = v80;
      v63 = sub_1DD39565C(v62, v61, v98);

      *(v56 + 4) = v63;
      v6 = &unk_1EE165000;
      _os_log_impl(&dword_1DD38D000, v54, v55, "[AsrPhoneticSequenceFetcher] no tokens found for interpretation %s, skipping", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {
    }

LABEL_65:
    v11 = v82;
    v18 = v83;
    if (v83 == v81)
    {

      v4 = v84;
      goto LABEL_5;
    }
  }

  v23 = v22;
  v24 = 0;
  v96 = v22 & 0xC000000000000001;
  v97 = sub_1DD3CC020(v22);
  v94 = v23;
  v95 = v23 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    v25 = v24;
LABEL_30:
    if (v97 == v25)
    {

      v8 = v80;
      goto LABEL_65;
    }

    if (v96)
    {
      v26 = MEMORY[0x1E12B2C10](v25, v23);
    }

    else
    {
      if (v25 >= *(v95 + 16))
      {
        goto LABEL_81;
      }

      v26 = *(v23 + 8 * v25 + 32);
    }

    v27 = v26;
    v24 = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      v28 = sub_1DD3CA460(v26, &selRef_text);
      if (v29)
      {
        v30 = v28;
        v31 = v29;
        v32 = sub_1DD3CA460(v27, &selRef_phoneSequence);
        if (v33)
        {
          v4 = v32;
          v34 = v33;
          OUTLINED_FUNCTION_3_14();
          if (!v13)
          {
            OUTLINED_FUNCTION_0_2();
            swift_once();
          }

          v35 = sub_1DD63F9F8();
          __swift_project_value_buffer(v35, qword_1EE16F068);

          v36 = sub_1DD63F9D8();
          v37 = sub_1DD640368();

          v91 = v4;
          if (os_log_type_enabled(v36, v37))
          {
            v4 = OUTLINED_FUNCTION_54();
            v38 = swift_slowAlloc();
            v98[0] = v38;
            *v4 = 136315138;
            *(v4 + 4) = sub_1DD39565C(v30, v31, v98);
            _os_log_impl(&dword_1DD38D000, v36, v37, "[AsrPhoneticSequenceFetcher] interpretation.token.text: %s", v4, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v38);
            v6 = &unk_1EE165000;
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_0_1();
          }

          v98[0] = a1;
          v98[1] = a2;
          sub_1DD3B7F10();
          if (sub_1DD6406D8())
          {

            v42 = v79;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v50 = *(v79 + 16);
              sub_1DD3BE2A4();
              v42 = v51;
            }

            v43 = *(v42 + 16);
            if (v43 >= *(v42 + 24) >> 1)
            {
              sub_1DD3BE2A4();
              v42 = v52;
            }

            *(v42 + 16) = v43 + 1;
            v79 = v42;
            v44 = v42 + 16 * v43;
            v4 = v91;
            *(v44 + 32) = v91;
            *(v44 + 40) = v34;

            v45 = sub_1DD63F9D8();
            v46 = sub_1DD640368();

            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v4 = swift_slowAlloc();
              v98[0] = v4;
              *v47 = 136315394;
              v48 = sub_1DD39565C(v30, v31, v98);

              *(v47 + 4) = v48;
              *(v47 + 12) = 2080;
              v49 = sub_1DD39565C(v91, v34, v98);

              *(v47 + 14) = v49;
              _os_log_impl(&dword_1DD38D000, v45, v46, "[AsrPhoneticSequenceFetcher] Contact name token found: %s, phone sequence: %s", v47, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_0_1();
            }

            else
            {
            }

            v6 = &unk_1EE165000;
            v23 = v94;
            continue;
          }

          v23 = v94;
          goto LABEL_49;
        }

        v23 = v94;
      }

      OUTLINED_FUNCTION_3_14();
      if (!v13)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v39 = sub_1DD63F9F8();
      __swift_project_value_buffer(v39, qword_1EE16F068);
      v4 = sub_1DD63F9D8();
      v40 = sub_1DD640378();
      if (os_log_type_enabled(v4, v40))
      {
        v41 = OUTLINED_FUNCTION_54();
        *v41 = 134217984;
        *(v41 + 4) = v25;
        _os_log_impl(&dword_1DD38D000, v4, v40, "[AsrPhoneticSequenceFetcher] no text or phone sequence found for token at index %ld, skipping", v41, 0xCu);
        OUTLINED_FUNCTION_0_1();
      }

LABEL_49:
      ++v25;
      goto LABEL_30;
    }

    break;
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  OUTLINED_FUNCTION_0_2();
  swift_once();
LABEL_70:
  v65 = sub_1DD63F9F8();
  __swift_project_value_buffer(v65, qword_1EE16F068);
  v66 = v4;
  v67 = sub_1DD63F9D8();
  v68 = sub_1DD640378();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = OUTLINED_FUNCTION_54();
    v70 = swift_slowAlloc();
    v98[0] = v70;
    *v69 = v6[338];
    sub_1DD3CA538(v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFA8, &unk_1DD6444A0);
    v71 = sub_1DD63FE38();
    v73 = sub_1DD39565C(v71, v72, v98);

    *(v69 + 4) = v73;
    _os_log_impl(&dword_1DD38D000, v67, v68, "[AsrPhoneticSequenceFetcher] speech package does not contain any phrases: %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();

    goto LABEL_76;
  }

  return 0;
}

id sub_1DD3CA34C(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    sub_1DD3CA5A4(a1, a2, result);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD3CA3EC(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1DD39638C(0, a3, a4);
  v8 = sub_1DD640118();

  return v8;
}

uint64_t sub_1DD3CA460(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1DD63FDD8();

  return v4;
}

uint64_t sub_1DD3CA4C0(void *a1)
{
  v2 = [a1 phrases];

  if (!v2)
  {
    return 0;
  }

  sub_1DD39638C(0, &unk_1EE160220, 0x1E698D230);
  v3 = sub_1DD640118();

  return v3;
}

uint64_t sub_1DD3CA538(void *a1)
{
  v1 = [a1 dictionaryRepresentation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FC58();

  return v3;
}

void sub_1DD3CA5A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD63FDA8();

  [a3 setPhoneSequence_];
}

uint64_t sub_1DD3CA614(uint64_t a1)
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

id *sub_1DD3CA6B8()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t sub_1DD3CA738()
{
  sub_1DD3CA6B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DD3CA7D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = xmmword_1DD644500;
  *(inited + 48) = 0;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  DateTime.Date.init(withDay:month:)(1, 3);
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_34();
  v2 = DateTime.init(withDate:)(v1);
  swift_allocObject();
  DateTime.Date.init(withDay:month:)(31, 5);
  OUTLINED_FUNCTION_1_11();
  v3 = OUTLINED_FUNCTION_34();
  v4 = DateTime.init(withDate:)(v3);
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v2, v4);
  OUTLINED_FUNCTION_1_11();
  v5 = OUTLINED_FUNCTION_34();
  *(inited + 56) = DateTime.init(occurringIn:)(v5);
  *(inited + 64) = xmmword_1DD644510;
  *(inited + 80) = 1;
  v34 = 2;
  type metadata accessor for DateTime.Date.Holiday();
  swift_allocObject();
  DateTime.Date.Holiday.init(with:name:calendarSystem:)(0x757165686372616DLL, 0xEC000000786F6E69, 0x714520686372614DLL, 0xED0000786F6E6975, &v34);
  OUTLINED_FUNCTION_2_10();
  v6 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v6);
  OUTLINED_FUNCTION_1_11();
  v7 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v7);
  OUTLINED_FUNCTION_3_15();
  DateTime.Date.Holiday.init(with:name:calendarSystem:)(0x736C6F73656E756ALL, 0xEC00000065636974, 0x6C6F5320656E754ALL, 0xED00006563697473, &v34);
  OUTLINED_FUNCTION_2_10();
  v8 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v8);
  OUTLINED_FUNCTION_1_11();
  v9 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v9);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_1_11();
  v10 = OUTLINED_FUNCTION_34();
  v11 = DateTime.init(occurringIn:)(v10);
  *(inited + 96) = 0;
  *(inited + 104) = 0;
  *(inited + 88) = v11;
  *(inited + 112) = 1;
  v12 = OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_5_2(v12, 0x80000001DD668D10, 0xD000000000000011, 0x80000001DD66A460, v13, v14, v15, v16, v28, *v30, *&v30[4], v30[6], v34);
  OUTLINED_FUNCTION_2_10();
  v17 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v17);
  OUTLINED_FUNCTION_1_11();
  v18 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v18);
  v19 = OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_5_2(v19, 0x80000001DD668D30, 0xD000000000000011, 0x80000001DD66A480, v20, v21, v22, v23, v29, v31, v32, v33, v34);
  OUTLINED_FUNCTION_2_10();
  v24 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v24);
  OUTLINED_FUNCTION_1_11();
  v25 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v25);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_1_11();
  v26 = OUTLINED_FUNCTION_34();
  *(inited + 120) = DateTime.init(occurringIn:)(v26);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return swift_allocObject();
}

id sub_1DD3CAB14()
{
  result = [objc_allocWithZone(type metadata accessor for BackgroundQueue()) init];
  qword_1EE166630 = result;
  return result;
}

id static BackgroundQueue.shared.getter()
{
  if (qword_1EE166628 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE166630;

  return v1;
}

id sub_1DD3CABA0()
{
  v16 = sub_1DD640478();
  v0 = OUTLINED_FUNCTION_0(v16);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v8 = sub_1DD640438();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v10 = sub_1DD63FBD8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_2();
  sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  sub_1DD63FB98();
  sub_1DD3CBF88(&qword_1EE166488, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3CBFCC(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD640718();
  (*(v2 + 104))(v7, *MEMORY[0x1E69E8098], v16);
  v12 = sub_1DD6404A8();
  v13 = objc_allocWithZone(type metadata accessor for BackgroundQueue());
  v14 = sub_1DD3CAE38(v12);
  swift_getObjectType();
  OUTLINED_FUNCTION_6_9();
  swift_deallocPartialClassInstance();
  return v14;
}

id sub_1DD3CAE38(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13SiriInference15BackgroundQueue_lock;
  *&v2[v4] = dispatch_semaphore_create(1);
  *&v2[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_pauseRequests] = 0;
  v5 = OBJC_IVAR____TtC13SiriInference15BackgroundQueue_queue;
  *&v2[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_queue] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFF0, &qword_1DD644568);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = a1;
  *&v2[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_queueKey] = sub_1DD63FB48();
  *&v2[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_queueKeyValue] = v9;
  v10 = *&v2[v5];
  v15 = v9;
  v16 = 0;

  v11 = v10;
  sub_1DD640468();

  v14.receiver = v2;
  v14.super_class = type metadata accessor for BackgroundQueue();
  v12 = objc_msgSendSuper2(&v14, sel_init);
  [v12 setMaxConcurrentOperationCount_];
  [v12 setUnderlyingQueue_];

  return v12;
}

void sub_1DD3CAF74()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13SiriInference15BackgroundQueue_lock;
  v3 = *&v0[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_lock];
  sub_1DD6404F8();

  sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  v4 = *&v1[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_queueKey];
  sub_1DD640458();
  v5 = MEMORY[0x1E69E7CC0];
  if ((v69 & 1) == 0 && v67 == *&v1[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_queueKeyValue])
  {
    type metadata accessor for InferenceError();
    swift_initStackObject();
    sub_1DD4DE96C(0, 0, 0xE000000000000000, 0xD000000000000078, 0x80000001DD66A4A0, 0x29286573756170, 0xE700000000000000, 52, v5, 2);
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v6 = sub_1DD63F9F8();
    __swift_project_value_buffer(v6, qword_1EE16F0C8);
    sub_1DD4DEB78();

    goto LABEL_49;
  }

  v7 = OBJC_IVAR____TtC13SiriInference15BackgroundQueue_pauseRequests;
  v8 = *&v1[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_pauseRequests];
  v9 = __CFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_51;
  }

  *&v1[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_pauseRequests] = v10;
  if (v10 >= 2)
  {
    if (qword_1EE166510 == -1)
    {
LABEL_9:
      v11 = sub_1DD63F9F8();
      __swift_project_value_buffer(v11, qword_1EE16F0C8);
      v12 = v1;
      v13 = sub_1DD63F9D8();
      v14 = sub_1DD640358();
      if (!OUTLINED_FUNCTION_2_4(v14))
      {

LABEL_49:
        v61 = *&v1[v2];
        sub_1DD640508();

        return;
      }

      v15 = OUTLINED_FUNCTION_5_10();
      *v15 = 67109120;
      v15[1] = *&v1[v7];

      OUTLINED_FUNCTION_7_7(&dword_1DD38D000, v16, v17, "background queue is already paused. count=%u");
      goto LABEL_45;
    }

LABEL_51:
    OUTLINED_FUNCTION_0_17();
    swift_once();
    goto LABEL_9;
  }

  v63 = v2;
  [v1 setSuspended_];
  v68 = v5;
  v18 = [v1 operations];
  sub_1DD39638C(0, &qword_1ECCDBFD8, 0x1E696ADC0);
  OUTLINED_FUNCTION_6_9();
  v19 = sub_1DD640118();

  v20 = sub_1DD3CBDE8(v19);
  v65 = v1;
  v62 = v7;
  if (v20)
  {
    v21 = v20;
    if (v20 < 1)
    {
      __break(1u);
      goto LABEL_53;
    }

    v22 = 0;
    v23 = v19 & 0xC000000000000001;
    v24 = &off_1E8655000;
    v25 = qword_1EE16F0C8;
    v26 = &off_1E8655000;
    v66 = v20;
    v64 = v19;
    do
    {
      if (v23)
      {
        v27 = MEMORY[0x1E12B2C10](v22, v19);
      }

      else
      {
        v27 = *(v19 + 8 * v22 + 32);
      }

      v28 = v27;
      if ([v27 v24[506]])
      {
        if (qword_1EE166510 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        v29 = sub_1DD63F9F8();
        __swift_project_value_buffer(v29, v25);
        v30 = v28;
        v31 = sub_1DD63F9D8();
        v32 = sub_1DD640358();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = v23;
          v34 = v24;
          v35 = v25;
          v36 = swift_slowAlloc();
          v37 = v26;
          v38 = OUTLINED_FUNCTION_5_10();
          *v36 = 138543362;
          *(v36 + 4) = v30;
          *v38 = v30;
          v39 = v30;
          _os_log_impl(&dword_1DD38D000, v31, v32, "cancelling operation %{public}@", v36, 0xCu);
          sub_1DD3CBE0C(v38);
          v26 = v37;
          OUTLINED_FUNCTION_0_1();
          v25 = v35;
          v24 = v34;
          v23 = v33;
          v19 = v64;
          v21 = v66;
          OUTLINED_FUNCTION_0_1();
        }

        [v30 v26[509]];
        v40 = v30;
        MEMORY[0x1E12B23F0]();
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD640138();
        }

        sub_1DD640168();

        v5 = v68;
      }

      else
      {
      }

      ++v22;
    }

    while (v21 != v22);
  }

  v41 = sub_1DD3CBDE8(v5);
  v1 = v65;
  if (!v41)
  {
LABEL_41:

    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v57 = sub_1DD63F9F8();
    __swift_project_value_buffer(v57, qword_1EE16F0C8);
    v58 = v1;
    v13 = sub_1DD63F9D8();
    v59 = sub_1DD640358();
    v2 = v63;
    if (!OUTLINED_FUNCTION_2_4(v59))
    {

      v13 = v58;
      goto LABEL_48;
    }

    v60 = OUTLINED_FUNCTION_5_10();
    *v60 = 67240192;
    *(v60 + 4) = *&v1[v62];

    _os_log_impl(&dword_1DD38D000, v13, v19, "paused background queue. count=%{public}u", v60, 8u);
LABEL_45:
    OUTLINED_FUNCTION_0_1();
LABEL_48:

    goto LABEL_49;
  }

  v19 = v41;
  if (v41 >= 1)
  {
    for (i = 0; i != v19; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x1E12B2C10](i, v5);
      }

      else
      {
        v43 = *(v5 + 8 * i + 32);
      }

      v44 = v43;
      [v43 waitUntilFinished];
      swift_getObjectType();
      v45 = OUTLINED_FUNCTION_6_9();
      if (dynamic_cast_existential_1_conditional(v45))
      {
        v47 = v46;
        v48 = qword_1EE166510;
        v49 = v44;
        if (v48 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        v50 = sub_1DD63F9F8();
        __swift_project_value_buffer(v50, qword_1EE16F0C8);
        v51 = v49;
        v52 = sub_1DD63F9D8();
        v53 = sub_1DD640358();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = OUTLINED_FUNCTION_5_10();
          *v54 = 138543362;
          *(v54 + 4) = v51;
          *v55 = v51;
          _os_log_impl(&dword_1DD38D000, v52, v53, "re-enqueuing cancelled operation %{public}@", v54, 0xCu);
          sub_1DD3CBE0C(v55);
          v1 = v65;
          OUTLINED_FUNCTION_0_1();
          OUTLINED_FUNCTION_0_1();
        }

        else
        {

          v52 = v51;
        }

        ObjectType = swift_getObjectType();
        v44 = (*(v47 + 8))(ObjectType, v47);
        [v1 addOperation_];
      }
    }

    goto LABEL_41;
  }

LABEL_53:
  __break(1u);
}

void sub_1DD3CB6AC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13SiriInference15BackgroundQueue_lock;
  v3 = *&v0[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_lock];
  sub_1DD6404F8();

  v4 = OBJC_IVAR____TtC13SiriInference15BackgroundQueue_pauseRequests;
  v5 = *&v1[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_pauseRequests];
  if (v5)
  {
    v6 = v5 - 1;
    *&v1[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_pauseRequests] = v6;
    if (v6)
    {
      if (qword_1EE166510 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      v7 = sub_1DD63F9F8();
      __swift_project_value_buffer(v7, qword_1EE16F0C8);
      v8 = v1;
      v9 = sub_1DD63F9D8();
      v10 = sub_1DD640358();
      if (!OUTLINED_FUNCTION_2_4(v10))
      {

        v9 = v8;
        goto LABEL_13;
      }

      v11 = OUTLINED_FUNCTION_5_10();
      *v11 = 67240192;
      v11[1] = *&v1[v4];

      OUTLINED_FUNCTION_7_7(&dword_1DD38D000, v12, v13, "BackgroundQueue still paused. count=%{public}u");
    }

    else
    {
      [v1 setSuspended_];
      if (qword_1EE166510 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      v14 = sub_1DD63F9F8();
      __swift_project_value_buffer(v14, qword_1EE16F0C8);
      v9 = sub_1DD63F9D8();
      v15 = sub_1DD640358();
      if (!os_log_type_enabled(v9, v15))
      {
        goto LABEL_13;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DD38D000, v9, v15, "resuming BackgroundQueue", v16, 2u);
    }

    OUTLINED_FUNCTION_0_1();
LABEL_13:
  }

  v17 = *&v1[v2];
  sub_1DD640508();
}

uint64_t sub_1DD3CB8A0(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v44 = sub_1DD63FB78();
  v3 = OUTLINED_FUNCTION_0(v44);
  v46 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v45 = sub_1DD63FBD8();
  v10 = OUTLINED_FUNCTION_0(v45);
  v43 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  v17 = sub_1DD63FB58();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v25 = (v24 - v23);
  v26 = sub_1DD63FC18();
  v42 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v40 - v32;
  sub_1DD63FBE8();
  *v25 = v41;
  (*(v20 + 104))(v25, *MEMORY[0x1E69E7F48], v17);
  sub_1DD63FBF8();
  (*(v20 + 8))(v25, v17);
  v34 = *(v27 + 8);
  v34(v31, v26);
  v41 = *&v2[OBJC_IVAR____TtC13SiriInference15BackgroundQueue_queue];
  v35 = swift_allocObject();
  *(v35 + 16) = v2;
  aBlock[4] = sub_1DD3CBE74;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD3CBCD0;
  aBlock[3] = &block_descriptor_0;
  v36 = _Block_copy(aBlock);
  v37 = v2;
  sub_1DD63FBA8();
  v47 = MEMORY[0x1E69E7CC0];
  sub_1DD3CBF88(&qword_1EE163978, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
  sub_1DD3CBFCC(&qword_1EE1638E0, &qword_1ECCDBFE8, &qword_1DD64F0F0);
  v38 = v44;
  sub_1DD640718();
  MEMORY[0x1E12B2750](v33, v16, v9, v36);
  _Block_release(v36);
  (*(v46 + 8))(v9, v38);
  (*(v43 + 8))(v16, v45);
  v34(v33, v42);
}

uint64_t sub_1DD3CBCD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id BackgroundQueue.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundQueue();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD3CBDE8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1DD6407B8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1DD3CBE0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF90, &qword_1DD6445B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD3CBF88(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_6_9();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD3CBFCC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD3CC024(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v43 = a3;
  v39 = a1;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v38 = *(matched - 8);
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](matched - 8);
  OUTLINED_FUNCTION_1_4();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v42 = sub_1DD63F9C8();
  v14 = OUTLINED_FUNCTION_0(v42);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v21 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  LODWORD(v41) = sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DD643F90;
  v23 = sub_1DD6408F8();
  v25 = v24;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1DD392BD8();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  v40 = v21;
  v41 = v20;
  sub_1DD63F998();

  v26 = v39;
  v27 = *(v39 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    v37 = v16;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1DD42B564();
    v28 = v46;
    v29 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v30 = v26 + v29;
    v31 = *(v38 + 72);
    do
    {
      sub_1DD3CD140(v30, v10);
      sub_1DD3CC39C(v10, a2 & 1, v43 & 1, v44, v45, v13);
      sub_1DD3CD1A4(v10);
      v46 = v28;
      v33 = *(v28 + 16);
      v32 = *(v28 + 24);
      if (v33 >= v32 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v32);
        sub_1DD42B564();
        v28 = v46;
      }

      *(v28 + 16) = v33 + 1;
      sub_1DD3CD200(v13, v28 + v29 + v33 * v31);
      v30 += v31;
      --v27;
    }

    while (v27);
    v34 = v42;
    v16 = v37;
  }

  else
  {
    v34 = v42;
  }

  sub_1DD6404C8();
  v35 = v41;
  sub_1DD63F9A8();
  (*(v16 + 8))(v35, v34);
  return v28;
}

void sub_1DD3CC39C(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v152 = a5;
  v154 = a4;
  v153 = a3;
  v158 = a2;
  v156 = a6;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v9 = matched - 8;
  v10 = *(*(matched - 8) + 64);
  MEMORY[0x1EEE9AC00](matched);
  OUTLINED_FUNCTION_1_4();
  v155 = v11 - v12;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v13);
  v163 = &v151 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v168 = OUTLINED_FUNCTION_0(v15);
  v169 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v168);
  OUTLINED_FUNCTION_1_4();
  v160 = (v19 - v20);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v21);
  v166 = &v151 - v22;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v23);
  v165 = &v151 - v24;
  OUTLINED_FUNCTION_8_1();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v151 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v164 = &v151 - v29;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v151 - v31;
  v33 = 0;
  v34 = *(v9 + 28);
  v157 = a1;
  v35 = a1 + v34;
  v167 = *(v35 + 216);
  v36 = *(v35 + 272);
  v37 = *(v36 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v37 == v33)
    {
      v52 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      v53 = *(v38 + 16);
      while (v53 != v52)
      {
        if (v52 >= *(v38 + 16))
        {
          goto LABEL_109;
        }

        OUTLINED_FUNCTION_2_11();
        v56 = v55 & ~v54;
        v58 = *(v57 + 72);
        sub_1DD3CDD14(v38 + v56 + v58 * v52, v28, &qword_1ECCDBBD8, &unk_1DD645A90);
        if (!v167 || (v59 = v28 + *(v168 + 36), (*(v59 + 3) & 1) != 0) || *(v59 + 4) == 1)
        {
          sub_1DD3CD2CC(v28, v165);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v171[0] = v6;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DD42B5CC(0, *(v6 + 16) + 1, 1);
            v6 = v171[0];
          }

          v62 = *(v6 + 16);
          v61 = *(v6 + 24);
          v63 = v62 + 1;
          if (v62 >= v61 >> 1)
          {
            v64 = OUTLINED_FUNCTION_1_0(v61);
            v66 = v65;
            sub_1DD42B5CC(v64, v65, 1);
            v63 = v66;
            v6 = v171[0];
          }

          ++v52;
          *(v6 + 16) = v63;
          sub_1DD3CD2CC(v165, v6 + v56 + v62 * v58);
        }

        else
        {
          sub_1DD3CD264(v28);
          ++v52;
        }
      }

      v28 = *(v6 + 16);
      v167 = v28 - 1;
      v67 = &unk_1EE165000;
      v161 = v6;
      if (!((v28 > 1) | v158 & 1) || ((v28 == 0) & v158) != 0)
      {
        if (qword_1EE165FB0 != -1)
        {
          goto LABEL_113;
        }

        goto LABEL_56;
      }

      if (v28)
      {
        v173 = MEMORY[0x1E69E7CC0];
        sub_1DD42B5AC();
        v68 = 0;
        v159 = v6 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
        v69 = v173;
        while (v68 < *(v6 + 16))
        {
          v70 = v160;
          sub_1DD3CDD14(v159 + v169[9] * v68, v160, &qword_1ECCDBBD8, &unk_1DD645A90);
          v71 = &v70[*(v168 + 36)];
          v72 = type metadata accessor for ContactResolver.HandleSignalSet(0);
          v73 = v72[12];
          v74 = -999;
          if (!v71[v72[14]])
          {
            v74 = 0;
          }

          v75 = 256;
          if (!v71[v72[13]])
          {
            v75 = 0;
          }

          v165 = v75;
          v166 = v74;
          v76 = v72[11];
          if (v71[v72[10]])
          {
            v77 = 3;
          }

          else
          {
            v77 = 0;
          }

          v78 = 128;
          if (!v71[v73])
          {
            v78 = 0;
          }

          v163 = v78;
          v164 = v77;
          v79 = 64;
          if (!v71[v76])
          {
            v79 = 0;
          }

          v162 = v79;
          if (v71[2])
          {
            v80 = 32;
          }

          else
          {
            v80 = 0;
          }

          if (v71[3])
          {
            v81 = 16;
          }

          else
          {
            v81 = 0;
          }

          if (v71[4])
          {
            v82 = 8;
          }

          else
          {
            v82 = 0;
          }

          if (v71[1])
          {
            v83 = 2;
          }

          else
          {
            v83 = 0;
          }

          memcpy(v170, v70, 0x4AuLL);
          memcpy(v171, v70, 0x4AuLL);
          sub_1DD3C6A40(v170, v172);
          sub_1DD3CD264(v70);
          v173 = v69;
          v28 = v69[2];
          v84 = v69[3];
          if (v28 >= v84 >> 1)
          {
            OUTLINED_FUNCTION_1_0(v84);
            sub_1DD42B5AC();
            v69 = v173;
          }

          v85 = (((v165 | v166) + v164) | v163 | v162 | v80) + v81 + v82 + v83;
          v69[2] = v28 + 1;
          v86 = &v69[11 * v28];
          memcpy(v86 + 4, v171, 0x50uLL);
          v86[14] = v85;
          if (v167 == v68)
          {

            v67 = &unk_1EE165000;
            goto LABEL_69;
          }

          ++v68;
          v6 = v161;
        }

        goto LABEL_111;
      }

      v69 = MEMORY[0x1E69E7CC0];
LABEL_69:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD5869B8(v69);
        v69 = v150;
      }

      v107 = v69[2];
      v171[0] = (v69 + 4);
      v171[1] = v107;
      sub_1DD3CD33C(v171);
      if (v67[502] != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v108 = sub_1DD63F9F8();
      v168 = __swift_project_value_buffer(v108, qword_1EE16F068);
      v109 = sub_1DD63F9D8();
      v110 = sub_1DD640368();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v171[0] = v112;
        *v111 = 136315138;

        v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD68, &qword_1DD6440E8);
        v114 = MEMORY[0x1E12B2430](v69, v113);
        v116 = v115;

        v117 = sub_1DD39565C(v114, v116, v171);

        *(v111 + 4) = v117;
        _os_log_impl(&dword_1DD38D000, v109, v110, "scored handles: %s", v111, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v112);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      v118 = v69[2];
      if (v118)
      {
        v6 = v69[14];
        if (!__OFSUB__(v6, v154))
        {
          v119 = (v6 - v154) & ~((v6 - v154) >> 63);

          v120 = 0;
          v121 = MEMORY[0x1E69E7CC0];
          v28 = 88;
          v169 = v69;
LABEL_78:
          v122 = 88 * v120 + 32;
          while (v118 != v120)
          {
            if (v120 >= v69[2])
            {
              goto LABEL_110;
            }

            memcpy(v171, v69 + v122, 0x58uLL);
            if (v171[10] >= v119)
            {
              sub_1DD3CDD14(v171, v170, &qword_1ECCDBD68, &qword_1DD6440E8);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_6_10();
                v121 = v124;
              }

              v123 = *(v121 + 24);
              if (*(v121 + 16) >= v123 >> 1)
              {
                OUTLINED_FUNCTION_1_0(v123);
                sub_1DD3BEE1C();
                v121 = v125;
              }

              ++v120;
              OUTLINED_FUNCTION_4_10();
              v69 = v169;
              goto LABEL_78;
            }

            v122 += 88;
            ++v120;
          }

          v126 = v155;
          sub_1DD3CD140(v157, v155);
          if ((v158 & 1) == 0 || *(v121 + 16) <= 1uLL && (v153 & 1) == 0)
          {
            v127 = sub_1DD3C6AF0(v121);

            v128 = *(type metadata accessor for Contact() + 80);
            v129 = *(v126 + v128);

            *(v126 + v128) = v127;
LABEL_107:
            v149 = v156;
            swift_beginAccess();
            sub_1DD3CD140(v126, v149);
            sub_1DD3CD1A4(v126);

            return;
          }

          if (!__OFSUB__(v6, v152))
          {
            v130 = (v6 - v152) & ~((v6 - v152) >> 63);
            v6 = v69[2];

            v131 = 0;
            v132 = MEMORY[0x1E69E7CC0];
            v28 = &qword_1DD6440E8;
LABEL_94:
            v133 = 88 * v131 + 32;
            while (v6 != v131)
            {
              if (v131 >= v69[2])
              {
                goto LABEL_112;
              }

              memcpy(v171, v69 + v133, 0x58uLL);
              if (v171[10] >= v130)
              {
                sub_1DD3CDD14(v171, v170, &qword_1ECCDBD68, &qword_1DD6440E8);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_6_10();
                  v132 = v135;
                }

                v134 = *(v132 + 24);
                if (*(v132 + 16) >= v134 >> 1)
                {
                  OUTLINED_FUNCTION_1_0(v134);
                  sub_1DD3BEE1C();
                  v132 = v136;
                }

                ++v131;
                OUTLINED_FUNCTION_4_10();
                v69 = v169;
                goto LABEL_94;
              }

              v133 += 88;
              ++v131;
            }

            v137 = sub_1DD3C6AF0(v132);

            v138 = *(type metadata accessor for Contact() + 80);
            v126 = v155;
            v139 = *(v155 + v138);

            *(v126 + v138) = v137;
            v140 = sub_1DD63F9D8();
            v141 = sub_1DD640368();
            if (os_log_type_enabled(v140, v141))
            {
              v142 = swift_slowAlloc();
              v143 = swift_slowAlloc();
              v171[0] = v143;
              *v142 = 136315138;

              v145 = MEMORY[0x1E12B2430](v144, &type metadata for ContactHandle);
              v147 = v146;

              v148 = sub_1DD39565C(v145, v147, v171);

              *(v142 + 4) = v148;
              _os_log_impl(&dword_1DD38D000, v140, v141, "[Unified Disambiguation] Returning all acceptable handles for this request: %s", v142, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v143);
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_0_1();
            }

            goto LABEL_107;
          }

LABEL_116:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_116;
    }

    if (v33 >= *(v36 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_2_11();
    v6 = v40 & ~v39;
    v42 = *(v41 + 72);
    sub_1DD3CDD14(v36 + v6 + v42 * v33, v32, &qword_1ECCDBBD8, &unk_1DD645A90);
    v43 = &v32[*(v168 + 36)];
    if (v43[*(type metadata accessor for ContactResolver.HandleSignalSet(0) + 48)] == 1)
    {
      sub_1DD3CD2CC(v32, v164);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v171[0] = v38;
      if ((v44 & 1) == 0)
      {
        sub_1DD42B5CC(0, *(v38 + 16) + 1, 1);
        v38 = v171[0];
      }

      v46 = *(v38 + 16);
      v45 = *(v38 + 24);
      v47 = v46 + 1;
      if (v46 >= v45 >> 1)
      {
        v48 = OUTLINED_FUNCTION_1_0(v45);
        v50 = v49;
        v162 = v51;
        sub_1DD42B5CC(v48, v49, 1);
        v47 = v50;
        v46 = v162;
        v38 = v171[0];
      }

      ++v33;
      *(v38 + 16) = v47;
      sub_1DD3CD2CC(v164, v38 + v6 + v46 * v42);
    }

    else
    {
      sub_1DD3CD264(v32);
      ++v33;
    }
  }

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
  OUTLINED_FUNCTION_0_5();
LABEL_56:
  v87 = sub_1DD63F9F8();
  __swift_project_value_buffer(v87, qword_1EE16F068);

  v88 = sub_1DD63F9D8();
  v89 = sub_1DD640368();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v171[0] = v91;
    *v90 = 136315138;
    v92 = MEMORY[0x1E12B2430](v6, v168);
    v94 = sub_1DD39565C(v92, v93, v171);

    *(v90 + 4) = v94;
    _os_log_impl(&dword_1DD38D000, v88, v89, "allowed handles: %s", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v91);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  v95 = v163;
  sub_1DD3CD140(v157, v163);
  if (v28)
  {
    v172[0] = MEMORY[0x1E69E7CC0];
    sub_1DD42B518();
    v96 = v172[0];
    OUTLINED_FUNCTION_2_11();
    v99 = v161 + (v98 & ~v97);
    for (i = *(v100 + 72); ; v99 += i)
    {
      v102 = v166;
      sub_1DD3CDD14(v99, v166, &qword_1ECCDBBD8, &unk_1DD645A90);
      memcpy(v171, v102, 0x4AuLL);
      sub_1DD3C6A40(v171, v170);
      sub_1DD3CD264(v102);
      v172[0] = v96;
      v104 = *(v96 + 16);
      v103 = *(v96 + 24);
      if (v104 >= v103 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v103);
        sub_1DD42B518();
        v96 = v172[0];
      }

      *(v96 + 16) = v104 + 1;
      memcpy((v96 + 80 * v104 + 32), v171, 0x4AuLL);
      if (!v167)
      {
        break;
      }

      --v167;
    }
  }

  else
  {

    v96 = MEMORY[0x1E69E7CC0];
  }

  v105 = *(type metadata accessor for Contact() + 80);
  v106 = *(v95 + v105);

  *(v95 + v105) = v96;
  sub_1DD3CD200(v95, v156);
}

uint64_t sub_1DD3CD140(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  (*(*(matched - 8) + 16))(a2, a1, matched);
  return a2;
}

uint64_t sub_1DD3CD1A4(uint64_t a1)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  (*(*(matched - 8) + 8))(a1, matched);
  return a1;
}

uint64_t sub_1DD3CD200(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  (*(*(matched - 8) + 32))(a2, a1, matched);
  return a2;
}

uint64_t sub_1DD3CD264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD3CD2CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1DD3CD33C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD640CA8();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD68, &qword_1DD6440E8);
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DD3CD520(v7, v8, a1, v4);
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
    return sub_1DD3CD440(0, v2, 1, a1);
  }

  return result;
}

char *sub_1DD3CD440(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 88 * a3;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        if (*(v10 - 1) >= v10[10])
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 11, 0x58uLL);
        result = memcpy(v10 - 11, __dst, 0x58uLL);
        v10 -= 11;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 88;
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

void sub_1DD3CD520(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v81 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 88 * v6 + 80);
        v10 = 88 * v8;
        v11 = *a3 + 88 * v8;
        v12 = *(v11 + 80);
        v13 = (v11 + 256);
        v14 = v8 + 2;
        v15 = v9;
        while (1)
        {
          v16 = v14;
          if (++v6 >= v5)
          {
            break;
          }

          v17 = *v13;
          v13 += 11;
          v18 = (v12 < v9) ^ (v15 >= v17);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v6 = v5;
LABEL_9:
        if (v12 < v9)
        {
          if (v6 < v8)
          {
            goto LABEL_110;
          }

          if (v8 < v6)
          {
            if (v5 >= v16)
            {
              v5 = v16;
            }

            v19 = 88 * v5 - 88;
            v20 = v6;
            v21 = v8;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                memcpy(__dst, (v22 + v10), sizeof(__dst));
                memmove((v22 + v10), (v22 + v19), 0x58uLL);
                memcpy((v22 + v19), __dst, 0x58uLL);
              }

              ++v21;
              v19 -= 88;
              v10 += 88;
            }

            while (v21 < v20);
            v5 = a3[1];
          }
        }
      }

      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_109;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_111;
          }

          if (v8 + a4 >= v5)
          {
            v23 = v5;
          }

          else
          {
            v23 = v8 + a4;
          }

          if (v23 < v8)
          {
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
            return;
          }

          if (v6 != v23)
          {
            v77 = v7;
            v24 = *a3;
            v25 = *a3 + 88 * v6;
            v26 = v8 - v6;
            do
            {
              v27 = v26;
              v28 = v25;
              do
              {
                if (*(v28 - 1) >= v28[10])
                {
                  break;
                }

                if (!v24)
                {
                  goto LABEL_113;
                }

                memcpy(__dst, v28, sizeof(__dst));
                memcpy(v28, v28 - 11, 0x58uLL);
                memcpy(v28 - 11, __dst, 0x58uLL);
                v28 -= 11;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v25 += 88;
              --v26;
            }

            while (v6 != v23);
            v6 = v23;
            v7 = v77;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_108;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = v7[2];
        sub_1DD3BEB7C();
        v7 = v73;
      }

      v30 = v7[2];
      v31 = v30 + 1;
      if (v30 >= v7[3] >> 1)
      {
        sub_1DD3BEB7C();
        v7 = v74;
      }

      v7[2] = v31;
      v32 = v7 + 4;
      v33 = &v7[2 * v30 + 4];
      *v33 = v8;
      v33[1] = v6;
      v78 = *a1;
      if (!*a1)
      {
        goto LABEL_116;
      }

      if (v30)
      {
        while (1)
        {
          v34 = v31 - 1;
          v35 = &v32[2 * v31 - 2];
          v36 = &v7[2 * v31];
          if (v31 >= 4)
          {
            break;
          }

          if (v31 == 3)
          {
            v37 = v7[4];
            v38 = v7[5];
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_57:
            if (v40)
            {
              goto LABEL_98;
            }

            v52 = *v36;
            v51 = v36[1];
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_101;
            }

            v56 = v35[1];
            v57 = v56 - *v35;
            if (__OFSUB__(v56, *v35))
            {
              goto LABEL_104;
            }

            if (__OFADD__(v54, v57))
            {
              goto LABEL_106;
            }

            if (v54 + v57 >= v39)
            {
              if (v39 < v57)
              {
                v34 = v31 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v31 < 2)
          {
            goto LABEL_100;
          }

          v59 = *v36;
          v58 = v36[1];
          v47 = __OFSUB__(v58, v59);
          v54 = v58 - v59;
          v55 = v47;
LABEL_72:
          if (v55)
          {
            goto LABEL_103;
          }

          v61 = *v35;
          v60 = v35[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_105;
          }

          if (v62 < v54)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v34 - 1 >= v31)
          {
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
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_112;
          }

          if (!*a3)
          {
            goto LABEL_114;
          }

          v66 = v7;
          v67 = &v32[2 * v34 - 2];
          v68 = *v67;
          v69 = &v32[2 * v34];
          v70 = v69[1];
          sub_1DD3CDB70((*a3 + 88 * *v67), (*a3 + 88 * *v69), (*a3 + 88 * v70), v78);
          if (v4)
          {
            goto LABEL_91;
          }

          if (v70 < v68)
          {
            goto LABEL_93;
          }

          v71 = v66[2];
          if (v34 > v71)
          {
            goto LABEL_94;
          }

          *v67 = v68;
          v67[1] = v70;
          if (v34 >= v71)
          {
            goto LABEL_95;
          }

          v31 = v71 - 1;
          memmove(&v32[2 * v34], v69 + 2, 16 * (v71 - 1 - v34));
          v7 = v66;
          v66[2] = v71 - 1;
          if (v71 <= 2)
          {
            goto LABEL_86;
          }
        }

        v41 = &v32[2 * v31];
        v42 = *(v41 - 8);
        v43 = *(v41 - 7);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_96;
        }

        v46 = *(v41 - 6);
        v45 = *(v41 - 5);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_97;
        }

        v48 = v36[1];
        v49 = v48 - *v36;
        if (__OFSUB__(v48, *v36))
        {
          goto LABEL_99;
        }

        v47 = __OFADD__(v39, v49);
        v50 = v39 + v49;
        if (v47)
        {
          goto LABEL_102;
        }

        if (v50 >= v44)
        {
          v64 = *v35;
          v63 = v35[1];
          v47 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v47)
          {
            goto LABEL_107;
          }

          if (v39 < v65)
          {
            v34 = v31 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v81 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_117;
  }

  sub_1DD3CDA38(&v81, *a1, a3);
LABEL_91:
}

uint64_t sub_1DD3CDA38(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1DD3CDB70((*a3 + 88 * *v4), (*a3 + 88 * *v9), (*a3 + 88 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1DD3CDB70(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 88;
  v9 = (a3 - a2) / 88;
  if (v8 < v9)
  {
    sub_1DD3C1C2C(a1, (a2 - a1) / 88, a4);
    v10 = &v4[88 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v4 + 10) >= *(v6 + 10))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 88;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 88;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 88;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v12, 0x58uLL);
    goto LABEL_13;
  }

  sub_1DD3C1C2C(a2, (a3 - a2) / 88, a4);
  v10 = &v4[88 * v9];
LABEL_15:
  for (v5 -= 88; v10 > v4 && v6 > v7; v5 -= 88)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v15 = v6 - 88;
      v13 = v5 + 88 == v6;
      v6 -= 88;
      if (!v13)
      {
        memmove(v5, v15, 0x58uLL);
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 88)
    {
      memmove(v5, v10 - 88, 0x58uLL);
    }

    v10 -= 88;
  }

LABEL_28:
  v16 = (v10 - v4) / 88;
  if (v6 != v4 || v6 >= &v4[88 * v16])
  {
    memmove(v6, v4, 88 * v16);
  }

  return 1;
}

uint64_t sub_1DD3CDD14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DD3CDD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = type metadata accessor for ContactResolver.SignalSet(0);
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = type metadata accessor for Contact();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v16 = OUTLINED_FUNCTION_0(v56);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v48 - v21;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v23 = OUTLINED_FUNCTION_0(matched);
  v55 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  v30 = *v2;
  v31 = *(v2 + 1);
  v32 = *(v2 + 2);
  v33 = *(a1 + 16);
  v34 = MEMORY[0x1E69E7CC0];
  if (v33)
  {
    v49 = v30;
    v50 = v32;
    v51 = v31;
    v59 = MEMORY[0x1E69E7CC0];
    sub_1DD42B564();
    v34 = v59;
    v35 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v53 = *(v18 + 72);
    v54 = v4;
    while (1)
    {
      v36 = v57;
      sub_1DD3C68F8(v35, v57);
      sub_1DD3CE214(v36, v15, type metadata accessor for Contact);
      v37 = v36 + *(v56 + 36);
      sub_1DD3CE214(v37, v10, type metadata accessor for ContactResolver.SignalSet);
      if (*(v37 + 361) != 1)
      {
        break;
      }

      v38 = *(v37 + 368) * -0.001 + 1.01;
      v39 = v37 + v4[33];
      if (*(v39 + 9) & 1) != 0 && (*(v39 + 8))
      {
        goto LABEL_9;
      }

LABEL_10:
      if (*(v37 + v4[44]) == 1)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (*(v37 + v4[36]) == 1)
      {
        goto LABEL_15;
      }

LABEL_16:
      sub_1DD3CE274();
      v41 = MEMORY[0x1E69E7CC0];
      v42 = sub_1DD63FC88();
      sub_1DD3C6968(v57);
      v43 = v15;
      sub_1DD3CE2C8(v15, v29, type metadata accessor for Contact);
      v44 = v10;
      sub_1DD3CE2C8(v10, v29 + matched[5], type metadata accessor for ContactResolver.SignalSet);
      v45 = v29 + matched[6];
      *v45 = 0;
      *(v45 + 8) = 0;
      *(v45 + 16) = v41;
      *(v29 + matched[7]) = v42;
      *(v29 + matched[8]) = v38;
      *(v29 + matched[9]) = 1;
      v59 = v34;
      v46 = *(v34 + 16);
      if (v46 >= *(v34 + 24) >> 1)
      {
        sub_1DD42B564();
        v34 = v59;
      }

      *(v34 + 16) = v46 + 1;
      sub_1DD3CE2C8(v29, v34 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v46, type metadata accessor for ContactMatchRuntimeData);
      v35 += v53;
      --v33;
      v10 = v44;
      v15 = v43;
      v4 = v54;
      if (!v33)
      {
        v32 = v50;
        v31 = v51;
        LOBYTE(v30) = v49;
        goto LABEL_23;
      }
    }

    v40 = v37 + v4[33];
    if (*(v40 + 9) != 1)
    {
      v38 = 0.0;
      if ((*(v37 + v4[44]) & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_13:
      v38 = v38 + 0.5;
      goto LABEL_14;
    }

    v38 = 0.0;
    if ((*(v40 + 8) & 1) == 0)
    {
      if ((*(v37 + v4[44]) & 1) == 0)
      {
LABEL_21:
        if ((*(v37 + v4[36]) & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_15:
        v38 = v38 + 1.0;
        goto LABEL_16;
      }

      goto LABEL_13;
    }

LABEL_9:
    v38 = v38 + 1.0;
    goto LABEL_10;
  }

LABEL_23:
  v58 = v30;
  sub_1DD426AF4(v34, &v58, v31, v32, v52);
}

uint64_t sub_1DD3CE214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1DD3CE274()
{
  result = qword_1EE165290;
  if (!qword_1EE165290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165290);
  }

  return result;
}

uint64_t sub_1DD3CE2C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DD3CE328()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  type metadata accessor for DateTime();
  swift_allocObject();
  OUTLINED_FUNCTION_1_12();
  *(inited + 56) = OUTLINED_FUNCTION_0_18(9, v1, v2, v3, v4, v5, v6, v7);
  *(inited + 64) = xmmword_1DD643620;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_12();
  *(inited + 88) = OUTLINED_FUNCTION_0_18(10, v8, v9, v10, v11, v12, v13, v14);
  *(inited + 96) = xmmword_1DD643660;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_12();
  *(inited + 120) = OUTLINED_FUNCTION_0_18(10, v15, v16, v17, v18, v19, v20, v21);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

void sub_1DD3CE424(void *a1)
{
  sub_1DD3D00A4(a1);
  [a1 handlingStatus];
  sub_1DD3CE4D0(a1);
  if (v1)
  {
  }
}

void sub_1DD3CE4D0(void *a1)
{
  v2 = MEMORY[0x1E12B3350]();
  sub_1DD3CF890(a1, &v3, &v4);
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1DD3CE548(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v83 = a7;
  v93 = a6;
  v81 = a5;
  v82 = a4;
  v89 = a1;
  v9 = sub_1DD63D078();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v80 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v80 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v80 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v80 - v26;
  v28 = swift_allocObject();
  v88 = v28;
  *(v28 + 16) = MEMORY[0x1E69E7CC0];
  v29 = v28 + 16;
  v95 = a2;
  v96 = v12;
  v31 = *(v12 + 16);
  v30 = v12 + 16;
  v31(v27, a2, v9);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v9);
  v92 = a3;
  v94 = v31;
  v31(v24, a3, v9);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v9);
  v32 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v33 = sub_1DD5982F0(v27, v24, 0, 0, 0);
  v87 = v29;
  v84 = v33;
  if (v89)
  {
    v91 = v89;
  }

  else
  {
    v34 = v33;
    v35 = [BiomeLibrary() App];
    swift_unknownObjectRelease();
    v36 = [v35 Intent];
    swift_unknownObjectRelease();
    v91 = [v36 publisherWithOptions_];
  }

  v37 = v94;
  v94(v90, v95, v9);
  v38 = v30;
  v39 = v80;
  v37(v80, v92, v9);
  v40 = v96;
  v41 = *(v96 + 80);
  v42 = (v41 + 32) & ~v41;
  v43 = (v14 + v41 + v42) & ~v41;
  v44 = v43 + v14;
  v45 = swift_allocObject();
  v46 = v81;
  v81 = v38;
  v47 = v93;
  *(v45 + 16) = v46;
  *(v45 + 24) = v47;
  v48 = *(v40 + 32);
  v48(v45 + v42, v90, v9);
  v48(v45 + v43, v39, v9);
  *(v45 + v44) = v82;
  v49 = v88;
  *(v45 + (v44 & 0xFFFFFFFFFFFFFFF8) + 8) = v88;
  v101 = sub_1DD3CFEF0;
  v102 = v45;
  aBlock = MEMORY[0x1E69E9820];
  v98 = 1107296256;
  v99 = sub_1DD3CF7E8;
  v100 = &block_descriptor_1;
  v50 = _Block_copy(&aBlock);

  v51 = v89;

  v52 = v91;
  v53 = [v91 filterWithIsIncluded_];
  _Block_release(v50);
  v101 = nullsub_1;
  v102 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v98 = 1107296256;
  v99 = sub_1DD59B528;
  v100 = &block_descriptor_6;
  v54 = _Block_copy(&aBlock);
  v55 = swift_allocObject();
  v56 = v83;
  *(v55 + 16) = v49;
  *(v55 + 24) = v56;
  v101 = sub_1DD3CFFBC;
  v102 = v55;
  aBlock = MEMORY[0x1E69E9820];
  v98 = 1107296256;
  v99 = sub_1DD3CF7E8;
  v100 = &block_descriptor_12;
  v57 = _Block_copy(&aBlock);

  v58 = [v53 sinkWithCompletion:v54 shouldContinue:v57];
  _Block_release(v57);
  _Block_release(v54);

  if (qword_1EE166258 != -1)
  {
    swift_once();
  }

  v59 = sub_1DD63F9F8();
  __swift_project_value_buffer(v59, qword_1EE16F0A8);
  v60 = v85;
  v61 = v94;
  v94(v85, v95, v9);
  v62 = v86;
  v61(v86, v92, v9);

  v63 = sub_1DD63F9D8();
  v64 = sub_1DD640368();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    aBlock = v95;
    *v65 = 134218498;
    swift_beginAccess();
    *(v65 + 4) = *(*(v49 + 16) + 16);

    *(v65 + 12) = 2080;
    sub_1DD3D016C(&qword_1EE1663F8, MEMORY[0x1E6969530]);
    v66 = sub_1DD640CB8();
    v91 = v52;
    v68 = v67;
    v69 = *(v96 + 8);
    v69(v60, v9);
    v70 = sub_1DD39565C(v66, v68, &aBlock);

    *(v65 + 14) = v70;
    *(v65 + 22) = 2080;
    v71 = v86;
    v72 = sub_1DD640CB8();
    v74 = v73;
    v69(v71, v9);
    v49 = v88;
    v75 = sub_1DD39565C(v72, v74, &aBlock);

    *(v65 + 24) = v75;
    _os_log_impl(&dword_1DD38D000, v63, v64, "Biome: Fetched %ld interaction events with Date between %s and %s", v65, 0x20u);
    v76 = v95;
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v76, -1, -1);
    MEMORY[0x1E12B3DA0](v65, -1, -1);
  }

  else
  {

    v77 = *(v96 + 8);
    v77(v62, v9);
    v77(v60, v9);
  }

  swift_beginAccess();
  v78 = *(v49 + 16);

  return v78;
}

uint64_t sub_1DD3CEE10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v81 = sub_1DD63D078();
  v12 = *(v81 - 8);
  v13 = *(v12 + 64);
  *&v14 = MEMORY[0x1EEE9AC00](v81).n128_u64[0];
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 eventBody];
  if (!v17)
  {
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v25 = sub_1DD63F9F8();
    __swift_project_value_buffer(v25, qword_1EE16F0A8);
    v26 = sub_1DD63F9D8();
    v27 = sub_1DD640368();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1DD38D000, v26, v27, "Skipping BMStoreEvent that lacks a BMAppIntent eventBody", v28, 2u);
      MEMORY[0x1E12B3DA0](v28, -1, -1);
    }

    return 0;
  }

  v18 = v17;
  v80 = v12;
  v19 = [v17 absoluteTimestamp];
  if (!v19)
  {
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v29 = sub_1DD63F9F8();
    __swift_project_value_buffer(v29, qword_1EE16F0A8);
    v30 = sub_1DD63F9D8();
    v31 = sub_1DD640368();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1DD38D000, v30, v31, "Skipping BMStoreEvent that lacks a BMAppIntent absoluteTimestamp", v32, 2u);
      MEMORY[0x1E12B3DA0](v32, -1, -1);
    }

    return 0;
  }

  v20 = v19;
  sub_1DD63D048();

  if (!a3)
  {
    goto LABEL_27;
  }

  v21 = sub_1DD3D00A4(v18);
  if (!v22)
  {

    goto LABEL_22;
  }

  if (v21 == a2 && v22 == a3)
  {

    goto LABEL_27;
  }

  v24 = sub_1DD640CD8();

  if ((v24 & 1) == 0)
  {
LABEL_22:
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v33 = sub_1DD63F9F8();
    __swift_project_value_buffer(v33, qword_1EE16F0A8);
    v34 = v18;
    v35 = sub_1DD63F9D8();
    v36 = sub_1DD640368();

    if (!os_log_type_enabled(v35, v36))
    {

LABEL_46:
      (*(v80 + 8))(v16, v81);
      return 0;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v83 = v38;
    *v37 = 136315138;
    v82[0] = sub_1DD3D00A4(v34);
    v82[1] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
    v40 = sub_1DD63FE38();
    v42 = sub_1DD39565C(v40, v41, &v83);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_1DD38D000, v35, v36, "Skipping BMAppIntent. event intentClass=%s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E12B3DA0](v38, -1, -1);
    MEMORY[0x1E12B3DA0](v37, -1, -1);

LABEL_45:
    goto LABEL_46;
  }

LABEL_27:
  sub_1DD63CF48();
  v44 = v43;
  sub_1DD63CF48();
  v46 = v45;
  sub_1DD63CF48();
  if (v46 < v44 || v47 < v46)
  {
    v49 = v47;
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v50 = sub_1DD63F9F8();
    __swift_project_value_buffer(v50, qword_1EE16F0A8);
    v51 = sub_1DD63F9D8();
    v52 = sub_1DD640368();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134218496;
      *(v53 + 4) = v46;
      *(v53 + 12) = 2048;
      *(v53 + 14) = v44;
      *(v53 + 22) = 2048;
      *(v53 + 24) = v49;
      _os_log_impl(&dword_1DD38D000, v51, v52, "Skipping BMAppIntent, out of date range. %f not in [%f, %f]", v53, 0x20u);
      MEMORY[0x1E12B3DA0](v53, -1, -1);
      v54 = v18;
    }

    else
    {
      v54 = v51;
      v51 = v18;
    }

    v60 = v80;

    (*(v60 + 8))(v16, v81);
    return 0;
  }

  v55 = v18;
  sub_1DD3CE424(v55);
  v61 = v56;
  v62 = v57;
  v63 = v58;
  v64 = v59;
  v65 = v55;
  if (a6 != 2 && [v55 donatedBySiri]!= (a6 & 1))
  {
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v66 = sub_1DD63F9F8();
    __swift_project_value_buffer(v66, qword_1EE16F0A8);

    v67 = v64;
    v35 = sub_1DD63F9D8();
    v68 = sub_1DD640368();

    if (!os_log_type_enabled(v35, v68))
    {

      goto LABEL_46;
    }

    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v82[0] = v70;
    *v69 = 136315138;
    LOBYTE(v83) = [v67 _donatedBySiri];
    v71 = sub_1DD63FE38();
    v73 = sub_1DD39565C(v71, v72, v82);

    *(v69 + 4) = v73;
    _os_log_impl(&dword_1DD38D000, v35, v68, "Skipping BMAppIntent. event isDonatedBySiri=%s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x1E12B3DA0](v70, -1, -1);
    MEMORY[0x1E12B3DA0](v69, -1, -1);

    goto LABEL_45;
  }

  swift_beginAccess();

  v75 = v64;
  sub_1DD3BDF64();
  v76 = *(*(a7 + 16) + 16);
  sub_1DD3BE128(v76);
  v77 = *(a7 + 16);
  *(v77 + 16) = v76 + 1;
  v78 = (v77 + 32 * v76);
  v78[4] = v61;
  v78[5] = v62;
  v78[6] = v63;
  v78[7] = v75;
  *(a7 + 16) = v77;
  swift_endAccess();

  (*(v80 + 8))(v16, v81);
  return 1;
}

uint64_t sub_1DD3CF7E8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

void sub_1DD3CF890(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1DD3D0108(a1);
  if (v8 >> 60 == 15)
  {
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD63F9F8();
    __swift_project_value_buffer(v9, qword_1EE16F0A8);
    v10 = a1;
    v11 = sub_1DD63F9D8();
    v12 = sub_1DD640378();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_1DD38D000, v11, v12, "Biome: BMIntentEvent serialized INInteraction is invalid. event=%@", v13, 0xCu);
      sub_1DD3CBE0C(v14);
      MEMORY[0x1E12B3DA0](v14, -1, -1);
      MEMORY[0x1E12B3DA0](v13, -1, -1);
    }

    type metadata accessor for InferenceError();
    swift_allocObject();
    v16 = sub_1DD4DE96C(2, 0, 0xE000000000000000, 0xD00000000000006BLL, 0x80000001DD66A620, 0xD000000000000027, 0x80000001DD66A690, 93, MEMORY[0x1E69E7CC0], 1);
    sub_1DD3D016C(&qword_1EE1663F0, type metadata accessor for InferenceError);
    v17 = swift_allocError();
    *v18 = v16;
    swift_willThrow();
    goto LABEL_9;
  }

  v19 = v7;
  v20 = v8;
  v21 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_1DD3D01B4(v19, v20);
  v22 = sub_1DD3CFFC4(v19, v20);
  v17 = v3;
  if (v3)
  {
LABEL_8:
    sub_1DD3AD77C(v19, v20);
LABEL_9:
    *a2 = v17;
    return;
  }

  v23 = v22;
  sub_1DD3D020C();
  v24 = *MEMORY[0x1E696A508];
  sub_1DD63FDD8();
  v25 = sub_1DD640528();

  if (!v25)
  {
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v37 = sub_1DD63F9F8();
    __swift_project_value_buffer(v37, qword_1EE16F0A8);
    v38 = a1;
    v39 = sub_1DD63F9D8();
    v40 = sub_1DD640378();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v38;
      *v42 = v38;
      v43 = v38;
      _os_log_impl(&dword_1DD38D000, v39, v40, "Biome: BMIntentEvent serialized INInteraction is invalid. event=%@", v41, 0xCu);
      sub_1DD3CBE0C(v42);
      MEMORY[0x1E12B3DA0](v42, -1, -1);
      MEMORY[0x1E12B3DA0](v41, -1, -1);
    }

    type metadata accessor for InferenceError();
    swift_allocObject();
    v44 = sub_1DD4DE96C(2, 0, 0xE000000000000000, 0xD00000000000006BLL, 0x80000001DD66A620, 0xD000000000000027, 0x80000001DD66A690, 100, MEMORY[0x1E69E7CC0], 1);
    sub_1DD3D016C(&qword_1EE1663F0, type metadata accessor for InferenceError);
    v17 = swift_allocError();
    *v45 = v44;
    swift_willThrow();

    goto LABEL_8;
  }

  if (qword_1EE166258 != -1)
  {
    swift_once();
  }

  v26 = sub_1DD63F9F8();
  __swift_project_value_buffer(v26, qword_1EE16F0A8);
  v27 = v25;
  v28 = sub_1DD63F9D8();
  v29 = sub_1DD640368();

  if (os_log_type_enabled(v28, v29))
  {
    v48 = v23;
    v30 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v50 = v47;
    *v30 = 136315138;
    v49 = v27;
    v31 = [v27 intent];
    v32 = [v31 _className];

    v33 = sub_1DD63FDD8();
    log = v28;
    v35 = v34;

    v36 = sub_1DD39565C(v33, v35, &v50);

    *(v30 + 4) = v36;
    v27 = v49;
    _os_log_impl(&dword_1DD38D000, log, v29, "Got interaction from extractInteraction: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x1E12B3DA0](v47, -1, -1);
    MEMORY[0x1E12B3DA0](v30, -1, -1);
    sub_1DD3AD77C(v19, v20);
  }

  else
  {
    sub_1DD3AD77C(v19, v20);
  }

  *a3 = v27;
}

uint64_t sub_1DD3CFEF0(void *a1)
{
  v3 = *(sub_1DD63D078() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = v7 + v6;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  v12 = *(v1 + v8);

  return sub_1DD3CEE10(a1, v9, v10, v1 + v5, v1 + v7, v12, v11);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1DD3CFFC4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1DD63CF08();
  v12[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v12];

  if (v7)
  {
    v8 = v12[0];
  }

  else
  {
    v9 = v12[0];
    sub_1DD63CD98();

    swift_willThrow();
  }

  sub_1DD3AD790(a1, a2);
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1DD3D00A4(void *a1)
{
  v1 = [a1 intentClass];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t sub_1DD3D0108(void *a1)
{
  v1 = [a1 interaction];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63CF28();

  return v3;
}

uint64_t sub_1DD3D016C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD3D01B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1DD3D020C()
{
  result = qword_1EE166248;
  if (!qword_1EE166248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE166248);
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

uint64_t sub_1DD3D025C(uint64_t a1, int a2)
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

uint64_t sub_1DD3D029C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DD3D0314(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DD3D0354(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD3D03A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1DD3D03E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD3D0448()
{
  result = qword_1ECCDC008;
  if (!qword_1ECCDC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC008);
  }

  return result;
}

uint64_t sub_1DD3D049C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1DD42B3E4(0, v3, 0);
    v5 = v45;
    result = sub_1DD55B198(v4);
    v8 = result;
    v10 = v9;
    v11 = 0;
    v44 = v4 + 56;
    v37 = v4 + 64;
    v39 = v4;
    v40 = a2;
    v38 = v3;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(v4 + 32))
      {
        v12 = v8 >> 6;
        if ((*(v44 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_37;
        }

        if (*(v4 + 36) != v7)
        {
          goto LABEL_38;
        }

        v43 = v7;
        v41 = v11;
        v13 = (*(v4 + 48) + 16 * v8);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(a2 + 16);

        v42 = v10;
        if (v16)
        {
          result = sub_1DD3978DC();
          if (v17)
          {
            v18 = *(*(a2 + 56) + 8 * result) * 1000.0;
            v19 = round(v18);
            v20 = v19 >= 9.22337204e18 || v19 <= -9.22337204e18;
            v21 = llround(v18);
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v21;
            }
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }

        v23 = v43;
        v25 = *(v5 + 16);
        v24 = *(v5 + 24);
        if (v25 >= v24 >> 1)
        {
          result = sub_1DD42B3E4((v24 > 1), v25 + 1, 1);
          v23 = v43;
        }

        *(v5 + 16) = v25 + 1;
        v26 = (v5 + 24 * v25);
        v26[4] = v15;
        v26[5] = v14;
        v26[6] = v22;
        if (v42)
        {
          goto LABEL_42;
        }

        v4 = v39;
        a2 = v40;
        v27 = 1 << *(v39 + 32);
        if (v8 >= v27)
        {
          goto LABEL_39;
        }

        v28 = *(v44 + 8 * v12);
        if ((v28 & (1 << v8)) == 0)
        {
          goto LABEL_40;
        }

        if (*(v39 + 36) != v23)
        {
          goto LABEL_41;
        }

        v29 = v28 & (-2 << (v8 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v8 & 0x7FFFFFFFFFFFFFC0;
          v30 = v38;
        }

        else
        {
          v31 = v5;
          v32 = v12 << 6;
          v33 = v12 + 1;
          v30 = v38;
          v34 = (v37 + 8 * v12);
          while (v33 < (v27 + 63) >> 6)
          {
            v36 = *v34++;
            v35 = v36;
            v32 += 64;
            ++v33;
            if (v36)
            {
              result = sub_1DD3AA558(v8, v23, 0);
              v27 = __clz(__rbit64(v35)) + v32;
              goto LABEL_29;
            }
          }

          result = sub_1DD3AA558(v8, v23, 0);
LABEL_29:
          v5 = v31;
        }

        v11 = v41 + 1;
        if (v41 + 1 == v30)
        {

          return v5;
        }

        v10 = 0;
        v7 = *(v39 + 36);
        v8 = v27;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DD3D079C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1 == a4 && a2 == a5;
  if (!v8 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  return sub_1DD3C3778(a3, a6);
}

void sub_1DD3D0808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DD63FD28();

  sub_1DD416068(a1, a4);
}

uint64_t sub_1DD3D0848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD416068(v5, a3);
  return sub_1DD640E78();
}

uint64_t sub_1DD3D08C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD416068(v5, v3);
  return sub_1DD640E78();
}

double sub_1DD3D0944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 1.0;
  if (a3 != a1 || a4 != a2)
  {
    v6 = sub_1DD640CD8();
    result = 0.0;
    if (v6)
    {
      return 1.0;
    }
  }

  return result;
}

uint64_t sub_1DD3D099C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DD3D09CC()
{
  type metadata accessor for StopwordsRemover();
  swift_allocObject();
  result = sub_1DD5E1988(300, 0);
  qword_1ECCDC000 = result;
  return result;
}

uint64_t sub_1DD3D0A14(uint64_t a1, uint64_t a2)
{
  if (qword_1ECCDB030 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  v4 = sub_1DD5E19F0(a1, a2);

  return sub_1DD41859C(v4);
}

uint64_t sub_1DD3D0A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ECCDB030 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  v6 = sub_1DD5E19F0(a1, a2);
  v7 = sub_1DD41859C(v6);

  v8 = sub_1DD3D1D74(v7, a3);
  v9 = *(a3 + 16);
  v10 = *(v7 + 16);

  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = v8[2];
  }
}

uint64_t sub_1DD3D0B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1DD3D0A14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD3D0B94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v23 = a2;
  v4 = sub_1DD63D078();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = v2[8];
  v13 = v2[9];
  v12(v9);
  v14 = v3[10];
  (*(v5 + 16))(v8, v11, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v15, v8, v4);
  memcpy((v17 + v16), v3, 0x58uLL);
  v18 = (v17 + ((v16 + 95) & 0xFFFFFFFFFFFFFFF8));
  v19 = v23;
  *v18 = v22;
  v18[1] = v19;
  sub_1DD3D23E0(v3, v24);

  sub_1DD63D9C8();

  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1DD3D0D70(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v8 = sub_1DD63D4F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  v21 = a2;
  v22 = a3;

  sub_1DD3EBE9C();
  sub_1DD3D10B4(v14);
  v16 = v15;

  v17 = *(a3 + 16);

  v18 = sub_1DD3D049C(v17, v16);

  *v12 = sub_1DD3B80F8(v18);
  (*(v9 + 104))(v12, *MEMORY[0x1E69D2B60], v8);
  a4(v12);
  return (*(v9 + 8))(v12, v8);
}

id sub_1DD3D0F08(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DD63D078();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  v13 = *a1;
  result = [v13 absoluteTimestamp];
  if (result)
  {
    v15 = result;
    sub_1DD63D048();

    (*(v6 + 32))(v12, v10, v5);
    if ([v13 playbackState] == 1)
    {
      sub_1DD63CF88();
      v17 = v16;
      (*(v6 + 8))(v12, v5);
      return (v17 < *(a3 + 40));
    }

    else
    {
      (*(v6 + 8))(v12, v5);
      return 0;
    }
  }

  return result;
}

void sub_1DD3D10B4(uint64_t a1)
{
  v2 = sub_1DD3CC020(a1);
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v52 = a1 & 0xFFFFFFFFFFFFFF8;
  v47 = a1;
  v56 = a1 + 32;
  v54 = xmmword_1DD6444F0;
  v49 = MEMORY[0x1E69E7CC0];
  v51 = v2;
  v50 = a1 & 0xC000000000000001;
LABEL_2:
  v5 = v52;
  while (1)
  {
    if (v3 == v2)
    {
      v35 = v48[6];
      v34 = v48[7];
      v36 = v48[3];
      v37 = v48[4];
      v38 = sub_1DD63FE58();
      v40 = v39;
      v41 = *(v34 + 8);
      v57[3] = v35;
      v57[4] = v34;
      __swift_allocate_boxed_opaque_existential_1(v57);
      v41(v38, v40, v35, v34);
      v42 = sub_1DD41865C(v49);
      MEMORY[0x1EEE9AC00](v42);
      v46[2] = v57;
      sub_1DD5E7DC8(sub_1DD3D2438, v46, v42);
      v44 = v43;

      v45 = sub_1DD3D15FC(v44);
      sub_1DD3D184C(v45);

      __swift_destroy_boxed_opaque_existential_1(v57);
      return;
    }

    if (v4)
    {
      v6 = MEMORY[0x1E12B2C10](v3, v47);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_35;
      }

      v6 = *(v56 + 8 * v3);
    }

    v7 = v6;
    if (__OFADD__(v3++, 1))
    {
      break;
    }

    v9 = sub_1DD4EF3B8(v6);
    if (v10)
    {
      v11 = v10;
      v53 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC018, &unk_1DD644810);
      inited = swift_initStackObject();
      *(inited + 16) = v54;
      *(inited + 32) = sub_1DD3CA460(v7, &selRef_title);
      *(inited + 40) = v13;
      *(inited + 48) = sub_1DD3CA460(v7, &selRef_artist);
      *(inited + 56) = v14;
      v15 = 0;
      *(inited + 64) = sub_1DD3CA460(v7, &selRef_album);
      *(inited + 72) = v16;
      v17 = MEMORY[0x1E69E7CC0];
LABEL_10:
      v18 = (inited + 40 + 16 * v15);
      while (v15 != 3)
      {
        if (v15 > 2)
        {
          __break(1u);
          goto LABEL_34;
        }

        v19 = *v18;
        if (*v18)
        {
          v20 = HIBYTE(v19) & 0xF;
          if ((v19 & 0x2000000000000000) == 0)
          {
            v20 = *(v18 - 1) & 0xFFFFFFFFFFFFLL;
          }

          if (v20)
          {
            v55 = sub_1DD63FE58();
            v22 = v21;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = *(v17 + 16);
              sub_1DD3BE2A4();
              v17 = v26;
            }

            v23 = *(v17 + 16);
            if (v23 >= *(v17 + 24) >> 1)
            {
              sub_1DD3BE2A4();
              v17 = v27;
            }

            ++v15;
            *(v17 + 16) = v23 + 1;
            v24 = v17 + 16 * v23;
            *(v24 + 32) = v55;
            *(v24 + 40) = v22;
            v2 = v51;
            v4 = v50;
            v5 = v52;
            goto LABEL_10;
          }
        }

        v18 += 2;
        ++v15;
      }

      swift_setDeallocating();
      sub_1DD46CB38();
      if (!*(v17 + 16))
      {

        continue;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = *(v49 + 16);
        sub_1DD3BF2A0();
        v49 = v32;
      }

      v28 = *(v49 + 16);
      if (v28 >= *(v49 + 24) >> 1)
      {
        sub_1DD3BF2A0();
        v49 = v33;
      }

      v29 = v49;
      *(v49 + 16) = v28 + 1;
      v30 = (v29 + 24 * v28);
      v30[4] = v53;
      v30[5] = v11;
      v30[6] = v17;
      goto LABEL_2;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1DD3D14D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v12[2] = a2;
  v7 = sub_1DD6046CC(sub_1DD3D2454, v12, v6);
  v8 = sub_1DD4B7EC0(v7);
  v10 = v9;

  if (v10)
  {
    v5 = 0;
    v4 = 0;
    v8 = 0;
  }

  else
  {
  }

  *a3 = v5;
  a3[1] = v4;
  a3[2] = v8;
  return result;
}

void sub_1DD3D1580(uint64_t *a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  *a3 = (*(v7 + 16))(v4, v5, v6, v7);
}

uint64_t sub_1DD3D15FC(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC8];
  v33 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  v5 = (a1 + 48);
  v30 = v4;
  while (1)
  {
    if (v4 == v2)
    {

      return v3;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v7 = *(v5 - 2);
    v6 = *(v5 - 1);
    v8 = *v5;
    swift_bridgeObjectRetain_n();
    v10 = sub_1DD3978DC();
    v11 = v3[2];
    v12 = (v9 & 1) == 0;
    if (__OFADD__(v11, v12))
    {
      goto LABEL_19;
    }

    v13 = v9;
    if (v3[3] < v11 + v12)
    {
      sub_1DD4E65B8();
      v3 = v33;
      v14 = sub_1DD3978DC();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_21;
      }

      v10 = v14;
    }

    if (v13)
    {
      v32 = v2;

      v16 = v3[7];
      v17 = *(v16 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 8 * v10) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = *(v17 + 16);
        sub_1DD3BF1BC();
        v17 = v27;
        *(v16 + 8 * v10) = v27;
      }

      v19 = *(v17 + 16);
      if (v19 >= *(v17 + 24) >> 1)
      {
        sub_1DD3BF1BC();
        v17 = v28;
        *(v16 + 8 * v10) = v28;
      }

      *(v17 + 16) = v19 + 1;
      v20 = (v17 + 24 * v19);
      v20[4] = v7;
      v20[5] = v6;
      v20[6] = v8;
      v1 = a1;
      v2 = v32;
      v4 = v30;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF48, &unk_1DD649F20);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1DD643F90;
      *(v21 + 32) = v7;
      *(v21 + 40) = v6;
      *(v21 + 48) = v8;
      v3[(v10 >> 6) + 8] |= 1 << v10;
      v22 = (v3[6] + 16 * v10);
      *v22 = v7;
      v22[1] = v6;
      *(v3[7] + 8 * v10) = v21;
      v23 = v3[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v3[2] = v25;
    }

    v5 += 3;
    ++v2;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD3D184C(uint64_t a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E7CC8];
  v44 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v43 = v7;
  while (1)
  {
    v11 = v9;
    if (!v6)
    {
      break;
    }

LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(v1 + 48) + 16 * v13);
    v15 = v14[1];
    v42 = *v14;
    v16 = *(*(v1 + 56) + 8 * v13);
    v17 = *(v16 + 16);
    if (v17)
    {
      v40 = v1;
      v41 = v2;

      sub_1DD42B644();
      v19 = *(v10 + 16);
      v20 = (v16 + 48);
      do
      {
        v21 = *v20;
        v18 = v19 + 1;
        if (v19 >= *(v10 + 24) >> 1)
        {
          sub_1DD42B644();
        }

        *(v10 + 16) = v18;
        *(v10 + 8 * v19 + 32) = v21;
        v20 += 3;
        ++v19;
        --v17;
      }

      while (v17);
      v1 = v40;
      v7 = v43;
LABEL_18:
      v22 = *(v10 + 32);
      v23 = v18 - 1;
      if (v18 != 1)
      {
        v24 = (v10 + 40);
        do
        {
          v25 = *v24++;
          v26 = v25;
          if (v22 < v25)
          {
            v22 = v26;
          }

          --v23;
        }

        while (v23);
      }

      v27 = *(v41 + 16);
      if (*(v41 + 24) <= v27)
      {
        sub_1DD4E6438(v27 + 1);
      }

      v2 = v44;
      v28 = *(v44 + 40);
      sub_1DD640E28();
      sub_1DD63FD28();
      result = sub_1DD640E78();
      v29 = v44 + 64;
      v30 = -1 << *(v44 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v44 + 64 + 8 * (v31 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v30) >> 6;
        v10 = MEMORY[0x1E69E7CC0];
        v34 = v15;
        while (++v32 != v36 || (v35 & 1) == 0)
        {
          v37 = v32 == v36;
          if (v32 == v36)
          {
            v32 = 0;
          }

          v35 |= v37;
          v38 = *(v29 + 8 * v32);
          if (v38 != -1)
          {
            v33 = __clz(__rbit64(~v38)) + (v32 << 6);
            goto LABEL_34;
          }
        }

        goto LABEL_37;
      }

      v33 = __clz(__rbit64((-1 << v31) & ~*(v44 + 64 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v10 = MEMORY[0x1E69E7CC0];
      v34 = v15;
LABEL_34:
      *(v29 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      v39 = (*(v44 + 48) + 16 * v33);
      *v39 = v42;
      v39[1] = v34;
      *(*(v44 + 56) + 8 * v33) = v22;
      ++*(v44 + 16);
    }

    else
    {
      v18 = *(v10 + 16);

      v7 = v43;
      if (v18)
      {
        v41 = v2;
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v9);
    ++v11;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1DD3D1C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD3D22E0();

  return MEMORY[0x1EEE40138](a1, a2, a3, a4, v8);
}

uint64_t sub_1DD3D1C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD3D22E0();

  return MEMORY[0x1EEE40118](a1, a2, a3, a4, v8);
}

unint64_t *sub_1DD3D1CE4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1DD3D1F3C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t *sub_1DD3D1D74(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = (v14 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v6, v8);
    sub_1DD3D1F3C(v8, v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v13 = swift_slowAlloc();

    v10 = sub_1DD3D1CE4(v13, v6, a2, a1);

    MEMORY[0x1E12B3DA0](v13, -1, -1);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1DD3D1F3C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v53 = (v32 - 1) & v32;
LABEL_35:
      v51 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v51);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      sub_1DD640E28();

      sub_1DD63FD28();
      v42 = sub_1DD640E78();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v53;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = sub_1DD640CD8();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(a1 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v53;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        sub_1DD515BB8(a1, a2, v55, v5);
        return;
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v53 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v50 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v52 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      sub_1DD640E28();

      sub_1DD63FD28();
      v19 = sub_1DD640E78();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v50;
          v9 = v52;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = sub_1DD640CD8();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v52;
      a1[v23] |= v24;
      v28 = __OFADD__(v55++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v50;
      if (v28)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

unint64_t sub_1DD3D22E0()
{
  result = qword_1ECCDC010;
  if (!qword_1ECCDC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC010);
  }

  return result;
}

uint64_t sub_1DD3D2334(uint64_t *a1)
{
  v3 = *(sub_1DD63D078() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1 + ((v5 + 95) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_1DD3D0D70(a1, v1 + v4, v1 + v5, v7);
}

unint64_t sub_1DD3D2488()
{
  result = qword_1ECCDC020;
  if (!qword_1ECCDC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC020);
  }

  return result;
}

uint64_t sub_1DD3D24DC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1DD4EC918(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1DD3D3290(v6);
  return sub_1DD640968();
}

id sub_1DD3D2598()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC13SiriInference20BiomeSiriUIProcessor_siriUIEvent);
  v3 = objc_allocWithZone(ObjectType);
  return BiomeSiriUIProcessor.init(siriUIEvent:)(v2);
}

uint64_t sub_1DD3D25D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v72 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCDC038, &qword_1DD644960);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v72 - v9;
  v11 = sub_1DD63D078();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v74 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v73 = &v72 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v72 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v72 - v21;
  sub_1DD63CFE8();
  sub_1DD63D068();
  v23 = *MEMORY[0x1E69CF928];
  v24 = sub_1DD63F598();
  (*(*(v24 - 8) + 104))(v10, v23, v24);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v24);
  v76 = v12;
  v25 = *(v12 + 16);
  v78 = v22;
  v25(v6, v22, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  v77 = v20;
  v26 = v20;
  v27 = v11;
  v25(v4, v26, v11);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v11);
  sub_1DD63F4A8();
  sub_1DD3D40D8(v4, &qword_1ECCDEBC0, &qword_1DD6445A0);
  sub_1DD3D40D8(v6, &qword_1ECCDEBC0, &qword_1DD6445A0);
  sub_1DD3D40D8(v10, qword_1ECCDC038, &qword_1DD644960);

  v79 = sub_1DD4D3D50(v28);
  sub_1DD3D24DC(&v79);

  v29 = v79;
  if (sub_1DD3CC020(v79))
  {
    sub_1DD408BFC(0);
    if ((v29 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12B2C10](0, v29);
    }

    else
    {
      v30 = *(v29 + 32);
    }

    v31 = sub_1DD63C7A8();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    sub_1DD63C798();
    sub_1DD63F558();
    v34 = sub_1DD63F518();
    v36 = v35;
    sub_1DD3D412C(&qword_1EE160358, MEMORY[0x1E69CF908]);
    sub_1DD63C788();
    sub_1DD3AD790(v34, v36);

    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v56 = v27;
    v57 = sub_1DD63F9F8();
    __swift_project_value_buffer(v57, qword_1EE16F0A8);

    v58 = sub_1DD63F9D8();
    v59 = sub_1DD640358();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v79 = v61;
      *v60 = 136315138;
      v62 = sub_1DD63F548();
      v64 = sub_1DD39565C(v62, v63, &v79);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_1DD38D000, v58, v59, "The intentEvent Type is: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1E12B3DA0](v61, -1, -1);
      MEMORY[0x1E12B3DA0](v60, -1, -1);
    }

    v65 = v77;
    if (sub_1DD63F548() == 0xD000000000000011 && 0x80000001DD66A780 == v66)
    {
      v68 = 1;
    }

    else
    {
      v68 = sub_1DD640CD8();
    }

    v70 = *(v76 + 8);
    v70(v65, v56);
    v70(v78, v56);
  }

  else
  {

    v37 = v77;
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v38 = sub_1DD63F9F8();
    __swift_project_value_buffer(v38, qword_1EE16F0A8);
    v39 = v73;
    v40 = v78;
    v25(v73, v78, v27);
    v41 = v74;
    v25(v74, v37, v27);
    v42 = sub_1DD63F9D8();
    v43 = sub_1DD640358();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v79 = v75;
      *v44 = 136315394;
      sub_1DD3D412C(&qword_1EE1663F8, MEMORY[0x1E6969530]);
      v45 = sub_1DD640CB8();
      v46 = v39;
      v48 = v47;
      v49 = *(v76 + 8);
      v49(v46, v27);
      v50 = sub_1DD39565C(v45, v48, &v79);

      *(v44 + 4) = v50;
      *(v44 + 12) = 2080;
      v51 = sub_1DD640CB8();
      v53 = v52;
      v49(v41, v27);
      v54 = sub_1DD39565C(v51, v53, &v79);

      *(v44 + 14) = v54;
      _os_log_impl(&dword_1DD38D000, v42, v43, "Fail to fetch intentStart event between %s and %s", v44, 0x16u);
      v55 = v75;
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v55, -1, -1);
      MEMORY[0x1E12B3DA0](v44, -1, -1);

      v49(v77, v27);
      v49(v78, v27);
    }

    else
    {

      v69 = *(v76 + 8);
      v69(v41, v27);
      v69(v39, v27);
      v69(v37, v27);
      v69(v40, v27);
    }

    v68 = 0;
  }

  return v68 & 1;
}

id BiomeSiriUIProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BiomeSiriUIProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DD3D3110()
{
  result = sub_1DD63F4C8();
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

uint64_t sub_1DD3D31E4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DD3B5438;

  return sub_1DD5BACC8();
}

void sub_1DD3D3290(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1DD640CA8();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1DD4D32E0(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1DD3D355C(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1DD3D3370(0, v3, 1, a1);
  }
}

uint64_t sub_1DD3D3370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = sub_1DD63D078();
  v8 = *(*(v34 - 8) + 64);
  v9 = (MEMORY[0x1EEE9AC00])();
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - v13;
  v29 = a2;
  if (a3 != a2)
  {
    v15 = (v12 + 8);
    v35 = *a4;
    v16 = v35 + 8 * a3 - 8;
    v17 = a1 - a3;
    while (2)
    {
      v31 = v16;
      v32 = a3;
      v18 = *(v35 + 8 * a3);
      v30 = v17;
      v19 = v16;
      do
      {
        v20 = *v19;

        sub_1DD63F508();
        v21 = v33;
        sub_1DD63F508();
        v22 = sub_1DD63CFB8();
        v23 = *v15;
        v24 = v21;
        v25 = v34;
        (*v15)(v24, v34);
        v23(v14, v25);

        if ((v22 & 1) == 0)
        {
          break;
        }

        if (!v35)
        {
          __break(1u);
          return result;
        }

        v26 = *v19;
        *v19 = v19[1];
        v19[1] = v26;
        --v19;
      }

      while (!__CFADD__(v17++, 1));
      a3 = v32 + 1;
      v16 = v31 + 8;
      v17 = v30 - 1;
      if (v32 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD3D355C(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v113 = a1;
  v125 = sub_1DD63D078();
  v6 = *(*(v125 - 1) + 64);
  v7 = MEMORY[0x1EEE9AC00](v125);
  v124 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v123 = &v111 - v10;
  v118 = a3;
  v11 = a3[1];
  if (v11 < 1)
  {
    i = MEMORY[0x1E69E7CC0];
LABEL_91:
    v125 = *v113;
    if (!v125)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v103 = v120;
LABEL_94:
      v104 = i;
      v105 = (i + 16);
      for (i = *(i + 16); ; *v105 = i)
      {
        if (i < 2)
        {

          v120 = v103;
          return;
        }

        if (!*v118)
        {
          goto LABEL_132;
        }

        v106 = (v104 + 16 * i);
        v107 = *v106;
        v108 = &v105[2 * i];
        v109 = *(v108 + 1);
        sub_1DD3D3D60((*v118 + 8 * *v106), (*v118 + 8 * *v108), (*v118 + 8 * v109), v125);
        if (v103)
        {
          break;
        }

        if (v109 < v107)
        {
          goto LABEL_120;
        }

        if (i - 2 >= *v105)
        {
          goto LABEL_121;
        }

        *v106 = v107;
        v106[1] = v109;
        v110 = *v105 - i;
        if (*v105 < i)
        {
          goto LABEL_122;
        }

        i = *v105 - 1;
        sub_1DD4EC4E4(v108 + 16, v110, v108);
      }

      v120 = v103;
LABEL_104:

      return;
    }

LABEL_129:
    v103 = v120;
    i = sub_1DD4EC2B8(i);
    goto LABEL_94;
  }

  v111 = a4;
  v12 = 0;
  v122 = (v9 + 8);
  i = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = v12++;
    v114 = v14;
    if (v12 < v11)
    {
      v112 = i;
      v15 = *(*v118 + 8 * v12);
      v16 = (*v118 + 8 * v14);
      v115 = 8 * v14;
      v18 = *v16;
      v17 = v16 + 2;
      i = v18;

      v19 = v123;
      sub_1DD63F508();
      v20 = v124;
      sub_1DD63F508();
      LODWORD(v117) = sub_1DD63CFB8();
      v21 = *v122;
      v22 = v20;
      v23 = v125;
      (*v122)(v22, v125);
      v116 = v21;
      (v21)(v19, v23);

      v24 = (v114 + 2);
      while (1)
      {
        v25 = v24;
        v26 = v12 + 1;
        if (v26 >= v11)
        {
          break;
        }

        v27 = *(v17 - 1);
        i = *v17;
        v121 = v24;

        v28 = v26;
        v29 = v11;
        v30 = v123;
        sub_1DD63F508();
        v31 = v124;
        sub_1DD63F508();
        LOBYTE(v119) = sub_1DD63CFB8() & 1;
        LODWORD(v119) = v119;
        v32 = v31;
        v33 = v125;
        v34 = v116;
        (v116)(v32, v125);
        v35 = v30;
        v11 = v29;
        v12 = v28;
        v34(v35, v33);

        v25 = v121;
        ++v17;
        v24 = (v121 + 1);
        if ((v117 & 1) != v119)
        {
          goto LABEL_9;
        }
      }

      v12 = v11;
LABEL_9:
      if (v117)
      {
        v14 = v114;
        if (v12 < v114)
        {
          goto LABEL_126;
        }

        if (v114 >= v12)
        {
          i = v112;
        }

        else
        {
          if (v11 >= v25)
          {
            v36 = v25;
          }

          else
          {
            v36 = v11;
          }

          v37 = 8 * v36 - 8;
          v38 = v12;
          v39 = v114;
          i = v112;
          v40 = v115;
          do
          {
            if (v39 != --v38)
            {
              v41 = *v118;
              if (!*v118)
              {
                goto LABEL_133;
              }

              v42 = *(v41 + v40);
              *(v41 + v40) = *(v41 + v37);
              *(v41 + v37) = v42;
            }

            ++v39;
            v37 -= 8;
            v40 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        i = v112;
        v14 = v114;
      }
    }

    v43 = v118[1];
    if (v12 < v43)
    {
      if (__OFSUB__(v12, v14))
      {
        goto LABEL_125;
      }

      if (v12 - v14 < v111)
      {
        break;
      }
    }

LABEL_39:
    if (v12 < v14)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = *(i + 16);
      sub_1DD3BEB7C();
      i = v101;
    }

    v57 = *(i + 16);
    v58 = v57 + 1;
    if (v57 >= *(i + 24) >> 1)
    {
      sub_1DD3BEB7C();
      i = v102;
    }

    *(i + 16) = v58;
    v59 = i + 32;
    v60 = (i + 32 + 16 * v57);
    *v60 = v114;
    v60[1] = v12;
    v121 = *v113;
    if (!v121)
    {
      goto LABEL_134;
    }

    if (v57)
    {
      while (1)
      {
        v61 = v58 - 1;
        v62 = (v59 + 16 * (v58 - 1));
        v63 = (i + 16 * v58);
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v64 = *(i + 32);
          v65 = *(i + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_59:
          if (v67)
          {
            goto LABEL_111;
          }

          v79 = *v63;
          v78 = v63[1];
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_114;
          }

          v83 = v62[1];
          v84 = v83 - *v62;
          if (__OFSUB__(v83, *v62))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v81, v84))
          {
            goto LABEL_119;
          }

          if (v81 + v84 >= v66)
          {
            if (v66 < v84)
            {
              v61 = v58 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v58 < 2)
        {
          goto LABEL_113;
        }

        v86 = *v63;
        v85 = v63[1];
        v74 = __OFSUB__(v85, v86);
        v81 = v85 - v86;
        v82 = v74;
LABEL_74:
        if (v82)
        {
          goto LABEL_116;
        }

        v88 = *v62;
        v87 = v62[1];
        v74 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v74)
        {
          goto LABEL_118;
        }

        if (v89 < v81)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v61 - 1 >= v58)
        {
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
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v93 = (v59 + 16 * (v61 - 1));
        v94 = *v93;
        v95 = v59 + 16 * v61;
        v96 = *(v95 + 8);
        v97 = v120;
        sub_1DD3D3D60((*v118 + 8 * *v93), (*v118 + 8 * *v95), (*v118 + 8 * v96), v121);
        v120 = v97;
        if (v97)
        {
          goto LABEL_104;
        }

        if (v96 < v94)
        {
          goto LABEL_106;
        }

        v98 = i;
        i = *(i + 16);
        if (v61 > i)
        {
          goto LABEL_107;
        }

        *v93 = v94;
        v93[1] = v96;
        if (v61 >= i)
        {
          goto LABEL_108;
        }

        v58 = i - 1;
        sub_1DD4EC4E4((v95 + 16), i - 1 - v61, (v59 + 16 * v61));
        *(v98 + 16) = i - 1;
        v99 = i > 2;
        i = v98;
        if (!v99)
        {
          goto LABEL_88;
        }
      }

      v68 = v59 + 16 * v58;
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_109;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_110;
      }

      v75 = v63[1];
      v76 = v75 - *v63;
      if (__OFSUB__(v75, *v63))
      {
        goto LABEL_112;
      }

      v74 = __OFADD__(v66, v76);
      v77 = v66 + v76;
      if (v74)
      {
        goto LABEL_115;
      }

      if (v77 >= v71)
      {
        v91 = *v62;
        v90 = v62[1];
        v74 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v74)
        {
          goto LABEL_123;
        }

        if (v66 < v92)
        {
          v61 = v58 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v11 = v118[1];
    if (v12 >= v11)
    {
      goto LABEL_91;
    }
  }

  v44 = v14 + v111;
  if (__OFADD__(v14, v111))
  {
    goto LABEL_127;
  }

  if (v44 >= v43)
  {
    v44 = v118[1];
  }

  if (v44 < v14)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v12 == v44)
  {
    goto LABEL_39;
  }

  v112 = i;
  v121 = *v118;
  v45 = &v121[v12 - 1];
  v46 = (v14 - v12);
  v115 = v44;
LABEL_32:
  v119 = v12;
  v47 = v121[v12];
  v116 = v46;
  v117 = v45;
  while (1)
  {
    v48 = *v45;

    v49 = v123;
    sub_1DD63F508();
    v50 = v124;
    sub_1DD63F508();
    v51 = sub_1DD63CFB8();
    v52 = *v122;
    v53 = v50;
    v54 = v125;
    (*v122)(v53, v125);
    (v52)(v49, v54);

    if ((v51 & 1) == 0)
    {
LABEL_37:
      v12 = v119 + 1;
      v45 = v117 + 1;
      v46 = v116 - 1;
      if (v119 + 1 == v115)
      {
        v12 = v115;
        i = v112;
        v14 = v114;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v121)
    {
      break;
    }

    v55 = *v45;
    *v45 = v45[1];
    v45[1] = v55;
    --v45;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

uint64_t sub_1DD3D3D60(void *a1, void *a2, void *a3, void *a4)
{
  v50 = sub_1DD63D078();
  v8 = *(*(v50 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v50);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v42 - v11;
  v12 = a2 - a1;
  v47 = (v13 + 8);
  v14 = a3 - a2;
  if (v12 < v14)
  {
    sub_1DD3C2520(a1, a2 - a1, a4);
    v15 = &a4[v12];
    v45 = v15;
    for (i = a3; ; a3 = i)
    {
      if (a4 >= v15 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_28;
      }

      v51 = a1;
      v17 = *a2;
      v18 = *a4;

      v19 = v48;
      sub_1DD63F508();
      v20 = v49;
      sub_1DD63F508();
      v21 = sub_1DD63CFB8();
      v22 = *v47;
      v23 = v20;
      v24 = v50;
      (*v47)(v23, v50);
      v22(v19, v24);

      if ((v21 & 1) == 0)
      {
        break;
      }

      v25 = a2;
      v26 = v51;
      v27 = v51 == a2++;
      if (!v27)
      {
        goto LABEL_12;
      }

LABEL_13:
      a1 = v26 + 1;
      v15 = v45;
    }

    v25 = a4;
    v26 = v51;
    v27 = v51 == a4++;
    if (v27)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v26 = *v25;
    goto LABEL_13;
  }

  sub_1DD3C2520(a2, a3 - a2, a4);
  v15 = &a4[v14];
  v51 = a1;
  v43 = a4;
LABEL_15:
  v28 = a2 - 1;
  --a3;
  v44 = a2 - 1;
  v45 = a2;
  while (v15 > a4 && a2 > a1)
  {
    v30 = v15;
    v31 = *--v15;
    v32 = *v28;

    v33 = v48;
    sub_1DD63F508();
    v34 = v49;
    sub_1DD63F508();
    LODWORD(i) = sub_1DD63CFB8();
    v35 = *v47;
    v36 = v34;
    v37 = v50;
    (*v47)(v36, v50);
    v35(v33, v37);

    if (i)
    {
      v38 = v44;
      a4 = v43;
      a1 = v51;
      v15 = v30;
      a2 = v44;
      if (a3 + 1 != v45)
      {
        *a3 = *v44;
        a2 = v38;
      }

      goto LABEL_15;
    }

    if (v30 != a3 + 1)
    {
      *a3 = *v15;
    }

    --a3;
    a4 = v43;
    v28 = v44;
    a2 = v45;
    a1 = v51;
  }

LABEL_28:
  v39 = v15 - a4;
  if (a2 != a4 || a2 >= &a4[v39])
  {
    memmove(a2, a4, 8 * v39);
  }

  return 1;
}

uint64_t sub_1DD3D40D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1DD3D412C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1DD3D4184(const void *a1, int64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 < 1)
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF30, &qword_1DD644228);
    v4 = swift_allocObject();
    v5 = _swift_stdlib_malloc_size(v4);
    v4[2] = a2;
    v4[3] = 2 * v5 - 64;
  }

  memcpy(v4 + 4, a1, a2);
  return v4;
}

uint64_t sub_1DD3D422C(uint64_t a1)
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

uint64_t sub_1DD3D42C0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1DD3D4300();
  return v3;
}

uint64_t sub_1DD3D4300()
{
  OUTLINED_FUNCTION_0_21();
  (*(*(*(v2 + 80) - 8) + 32))(v0 + *(v1 + 88));
  return v0;
}

uint64_t sub_1DD3D436C()
{
  OUTLINED_FUNCTION_0_21();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 88));
  return v0;
}

uint64_t sub_1DD3D43D4()
{
  sub_1DD3D436C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DD3D4444(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 80);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v17 - v11;
  v13 = v5[2];
  v13(&v17 - v11, v10 + *(*v10 + 88), v4);
  v13(v9, a2 + *(*a2 + 88), v4);
  v14 = sub_1DD63FD98();
  v15 = v5[1];
  v15(v9, v4);
  v15(v12, v4);
  return v14 & 1;
}

uint64_t sub_1DD3D45CC()
{
  OUTLINED_FUNCTION_0_21();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_1_14();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  (*(v4 + 16))(&v12 - v8, v0 + *(v10 + 88), v2);
  sub_1DD63FCF8();
  return (*(v4 + 8))(v9, v2);
}

uint64_t sub_1DD3D46D4()
{
  sub_1DD640E28();
  sub_1DD3D45CC();
  return sub_1DD640E78();
}

uint64_t sub_1DD3D471C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  return sub_1DD3D46D4();
}

uint64_t sub_1DD3D4744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *v3;
  return sub_1DD3D45CC();
}

uint64_t sub_1DD3D476C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1DD640E28();
  v5 = *v3;
  sub_1DD3D45CC();
  return sub_1DD640E78();
}

uint64_t sub_1DD3D47B4()
{
  OUTLINED_FUNCTION_0_21();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_1_14();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  (*(v4 + 16))(v12 - v8, v0 + *(v10 + 88), v2);
  sub_1DD63FCD8();
  return (*(v4 + 8))(v9, v2);
}

uint64_t sub_1DD3D48D4(uint64_t *a1)
{
  v4 = *(*(*(v1 + 80) - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  sub_1DD3C2388(v5, v7);
  sub_1DD640238();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    return sub_1DD3D42C0();
  }

  return result;
}

uint64_t sub_1DD3D49A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  result = sub_1DD3D48D4(a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1DD3D49D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 16);
  v5 = *v3;
  return sub_1DD3D47B4();
}

uint64_t sub_1DD3D49F8()
{
  OUTLINED_FUNCTION_0_21();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_1_14();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  (*(v4 + 16))(&v13 - v8, v0 + *(v10 + 88), v2);
  v11 = sub_1DD640CB8();
  (*(v4 + 8))(v9, v2);
  return v11;
}

uint64_t sub_1DD3D4B08(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  return sub_1DD3D49F8();
}

uint64_t sub_1DD3D4B78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_0_22();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v1, v2, v3, v4, 10, 0, 0, v5);
  *(inited + 64) = xmmword_1DD643620;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_1_15();
  v6 = OUTLINED_FUNCTION_0_22();
  *(inited + 88) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v6, v7, v8, v9, 11, 0, 0, v10);
  *(inited + 96) = xmmword_1DD643660;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_1_15();
  v11 = OUTLINED_FUNCTION_0_22();
  *(inited + 120) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v11, v12, v13, v14, 11, 59, 59, v15);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD3D4C84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F80;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_0_23();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v1, v2, v3, v4, 1, v5, 0, v6);
  *(inited + 64) = xmmword_1DD643620;
  *(inited + 80) = 0;
  swift_allocObject();
  v7 = OUTLINED_FUNCTION_0_23();
  *(inited + 88) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v7, v8, v9, v10, 2, v11, 0, v12);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t BusinessLandmark.init(name:prefix:suffix:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 17) = v6;
  return result;
}

SiriInference::BusinessLandmark::Prefix_optional __swiftcall BusinessLandmark.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BusinessLandmark.Prefix.rawValue.getter()
{
  result = 0x656874206F74;
  switch(*v0)
  {
    case 1:
      result = 29793;
      break;
    case 2:
      result = 0x7373656E69737562;
      break;
    case 3:
      result = 28265;
      break;
    case 4:
      result = 0x65687420726F66;
      break;
    case 5:
      result = 31074;
      break;
    case 6:
      result = 26223;
      break;
    case 7:
      result = 7499622;
      break;
    case 8:
      result = 1918985582;
      break;
    case 9:
      result = 28532;
      break;
    case 0xA:
      result = 0x656874207461;
      break;
    case 0xB:
      result = 0x656874206E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD3D4EF0@<X0>(uint64_t *a1@<X8>)
{
  result = BusinessLandmark.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t BusinessLandmark.Suffix.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DD640AA8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DD3D5044@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return BusinessLandmark.Suffix.init(rawValue:)(a1);
}

uint64_t BusinessLandmark.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static BusinessLandmark.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v2 != 12)
  {
    if (v4 != 12)
    {
      v8 = sub_1DD3B04F8(v2, v4);
      if (v3 & 1 | ((v8 & 1) == 0))
      {
        v7 = v8 & v5;
        return v7 & 1;
      }

LABEL_13:
      v7 = v5 ^ 1;
      return v7 & 1;
    }

LABEL_10:
    v7 = 0;
    return v7 & 1;
  }

  if (!((v4 != 12) | v3 & 1))
  {
    goto LABEL_13;
  }

  v7 = (v4 == 12) & v5;
  return v7 & 1;
}

uint64_t sub_1DD3D521C(uint64_t a1)
{
  v2 = sub_1DD3D5690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD3D5258(uint64_t a1)
{
  v2 = sub_1DD3D5690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BusinessLandmark.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC0C0, &qword_1DD644B30);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v22 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = *(v1 + 16);
  v23 = *(v1 + 17);
  v24 = v14;
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v15);
  sub_1DD3D5690();
  sub_1DD640EF8();
  v29 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v20 = v23;
    v28 = v24;
    v27 = 1;
    sub_1DD3D56E4();
    sub_1DD640C08();
    v26 = v20;
    v25 = 2;
    sub_1DD3D5738();
    sub_1DD640C08();
  }

  return (*(v7 + 8))(v11, v19);
}

uint64_t BusinessLandmark.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC0E0, &qword_1DD644B38);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD3D5690();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1DD640B28();
  v12 = v11;
  sub_1DD3D578C();
  OUTLINED_FUNCTION_3_4();
  sub_1DD3D57E0();
  OUTLINED_FUNCTION_3_4();
  v14 = OUTLINED_FUNCTION_0_0();
  v15(v14);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 17) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD3D5690()
{
  result = qword_1ECCDC0C8;
  if (!qword_1ECCDC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC0C8);
  }

  return result;
}

unint64_t sub_1DD3D56E4()
{
  result = qword_1ECCDC0D0;
  if (!qword_1ECCDC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC0D0);
  }

  return result;
}

unint64_t sub_1DD3D5738()
{
  result = qword_1ECCDC0D8;
  if (!qword_1ECCDC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC0D8);
  }

  return result;
}

unint64_t sub_1DD3D578C()
{
  result = qword_1ECCDC0E8;
  if (!qword_1ECCDC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC0E8);
  }

  return result;
}

unint64_t sub_1DD3D57E0()
{
  result = qword_1ECCDC0F0;
  if (!qword_1ECCDC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC0F0);
  }

  return result;
}

unint64_t sub_1DD3D5838()
{
  result = qword_1ECCDC0F8;
  if (!qword_1ECCDC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC0F8);
  }

  return result;
}

unint64_t sub_1DD3D5890()
{
  result = qword_1ECCDC100;
  if (!qword_1ECCDC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC100);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BusinessLandmark.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BusinessLandmark.Suffix(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for BusinessLandmark.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD3D5B50()
{
  result = qword_1ECCDC108;
  if (!qword_1ECCDC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC108);
  }

  return result;
}

unint64_t sub_1DD3D5BA8()
{
  result = qword_1ECCDC110;
  if (!qword_1ECCDC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC110);
  }

  return result;
}

unint64_t sub_1DD3D5C00()
{
  result = qword_1ECCDC118;
  if (!qword_1ECCDC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC118);
  }

  return result;
}

unint64_t sub_1DD3D5C54()
{
  result = qword_1ECCDC120;
  if (!qword_1ECCDC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC120);
  }

  return result;
}

unint64_t sub_1DD3D5CA8()
{
  result = qword_1ECCDC128;
  if (!qword_1ECCDC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC128);
  }

  return result;
}

void sub_1DD3D5CFC()
{
  OUTLINED_FUNCTION_18_4();
  v74 = v2;
  v75 = v0;
  v73 = v3;
  v78 = v4;
  v79 = v5;
  v7 = v6;
  v8 = sub_1DD63CBB8();
  v9 = OUTLINED_FUNCTION_0(v8);
  v71 = v10;
  v72 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v70 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC130, &unk_1DD645260);
  OUTLINED_FUNCTION_3(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16_5();
  v19 = sub_1DD63D2B8();
  v20 = OUTLINED_FUNCTION_0(v19);
  v76 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_4();
  v26 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v77 = &v70 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  OUTLINED_FUNCTION_3(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v70 - v33;
  v35 = sub_1DD63D078();
  v36 = OUTLINED_FUNCTION_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_17_7();
  sub_1DD3CDD14(v7, v34, &qword_1ECCDEBC0, &qword_1DD6445A0);
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    v41 = &qword_1ECCDEBC0;
    v42 = &qword_1DD6445A0;
    v43 = v34;
LABEL_5:
    sub_1DD3ADFD0(v43, v41, v42);
    v45 = OUTLINED_FUNCTION_15_7();
LABEL_6:
    OUTLINED_FUNCTION_19_6(v45, v46);
    goto LABEL_12;
  }

  v44 = *(v38 + 32);
  v44(v1, v34, v35);
  sub_1DD3CDD14(v78, v0, &qword_1ECCDC130, &unk_1DD645260);
  if (__swift_getEnumTagSinglePayload(v0, 1, v19) == 1)
  {
    (*(v38 + 8))(v1, v35);
    v41 = &qword_1ECCDC130;
    v42 = &unk_1DD645260;
    v43 = v0;
    goto LABEL_5;
  }

  v47 = v1;
  v78 = v38;
  v49 = v76;
  v48 = v77;
  (*(v76 + 32))(v77, v0, v19);
  (*(v49 + 16))(v26, v48, v19);
  v50 = (*(v49 + 88))(v26, v19);
  if (v50 == *MEMORY[0x1E6969A68])
  {
    v26 = v1;
    sub_1DD3D633C();
LABEL_11:
    v51 = OUTLINED_FUNCTION_13_7();
    v52(v51);
    (*(v78 + 8))(v26, v35);
    goto LABEL_12;
  }

  if (v50 == *MEMORY[0x1E6969A78])
  {
    OUTLINED_FUNCTION_2_12();
    sub_1DD3D65D0();
    goto LABEL_11;
  }

  if (v50 == *MEMORY[0x1E6969A48])
  {
    goto LABEL_14;
  }

  if (v50 == *MEMORY[0x1E6969A58])
  {
    OUTLINED_FUNCTION_2_12();
    sub_1DD3D6840();
    goto LABEL_11;
  }

  if (v50 == *MEMORY[0x1E6969A88])
  {
    OUTLINED_FUNCTION_2_12();
    sub_1DD3D6A98();
    goto LABEL_11;
  }

  if (v50 == *MEMORY[0x1E6969A98])
  {
    v56 = OUTLINED_FUNCTION_13_7();
    v57(v56);
    v58 = v79;
    v44(v79, v1, v35);
    v45 = v58;
    goto LABEL_15;
  }

  if (v50 == *MEMORY[0x1E6969AB0])
  {
LABEL_14:
    v53 = v79;
    sub_1DD63D1B8();
    v54 = OUTLINED_FUNCTION_13_7();
    v55(v54);
    (*(v78 + 8))(v1, v35);
    v45 = v53;
LABEL_15:
    v46 = 0;
    goto LABEL_6;
  }

  v59 = *MEMORY[0x1E6969A10];
  if (v50 == *MEMORY[0x1E6969A20] || v50 == v59)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
    v61 = *(v49 + 72);
    v62 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1DD643F80;
    v64 = v63 + v62;
    v65 = *(v49 + 104);
    v65(v64, v59, v19);
    v65(v64 + v61, *MEMORY[0x1E6969A38], v19);
    sub_1DD56BDEC();
    v66 = v70;
    sub_1DD63D1F8();

    sub_1DD63D248();
    (*(v71 + 8))(v66, v72);
    (*(v49 + 8))(v77, v19);
    (*(v78 + 8))(v47, v35);
  }

  else
  {
    v67 = *(v49 + 8);
    v67(v48, v19);
    (*(v78 + 8))(v1, v35);
    v68 = OUTLINED_FUNCTION_15_7();
    OUTLINED_FUNCTION_19_6(v68, v69);
    v67(v26, v19);
  }

LABEL_12:
  OUTLINED_FUNCTION_17();
}

void sub_1DD3D633C()
{
  OUTLINED_FUNCTION_18_4();
  v17 = v1;
  v2 = sub_1DD63CBB8();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_17_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v8 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0(v8);
  v10 = v9;
  v12 = *(v11 + 72);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DD644F40;
  v15 = v14 + v13;
  v16 = *(v10 + 104);
  v16(v15, *MEMORY[0x1E6969A68], v8);
  v16(v15 + v12, *MEMORY[0x1E6969A78], v8);
  v16(v15 + 2 * v12, *MEMORY[0x1E6969A48], v8);
  v16(v15 + 3 * v12, *MEMORY[0x1E6969A58], v8);
  v16(v15 + 4 * v12, *MEMORY[0x1E6969A88], v8);
  v16(v15 + 5 * v12, *MEMORY[0x1E6969A98], v8);
  sub_1DD56BDEC();
  sub_1DD63D1F8();

  OUTLINED_FUNCTION_7_8();
  sub_1DD63CA38();
  sub_1DD63CAC8();
  if ((v17 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_8();
    sub_1DD63CAA8();
  }

  OUTLINED_FUNCTION_5_11();
  sub_1DD63CA88();
  OUTLINED_FUNCTION_5_11();
  sub_1DD63CAF8();
  OUTLINED_FUNCTION_5_11();
  sub_1DD63CB18();
  sub_1DD63D248();
  (*(v5 + 8))(v0, v2);
  OUTLINED_FUNCTION_17();
}

void sub_1DD3D65D0()
{
  OUTLINED_FUNCTION_18_4();
  v24 = v2;
  v3 = sub_1DD63CBB8();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_17_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v9 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0(v9);
  v11 = v10;
  v13 = *(v12 + 72);
  v14 = *(v10 + 80);
  v15 = OUTLINED_FUNCTION_4_11();
  *(v15 + 16) = xmmword_1DD644F40;
  v16 = v15 + v1;
  v17 = *(v11 + 104);
  (v17)(v16, *MEMORY[0x1E6969A68], v9);
  (v17)(v16 + v13, *MEMORY[0x1E6969A78], v9);
  (v17)(v16 + 2 * v13, *MEMORY[0x1E6969A48], v9);
  v18 = *MEMORY[0x1E6969A58];
  v19 = OUTLINED_FUNCTION_10_11(3 * v13);
  v17(v19);
  (v17)(v16 + 4 * v13, *MEMORY[0x1E6969A88], v9);
  v20 = *MEMORY[0x1E6969A98];
  v21 = OUTLINED_FUNCTION_10_11(5 * v13);
  v17(v21);
  sub_1DD56BDEC();
  sub_1DD63D1F8();

  OUTLINED_FUNCTION_7_8();
  sub_1DD63CA38();
  v22 = sub_1DD63CAB8();
  if (v23)
  {
    goto LABEL_4;
  }

  if (!__OFADD__(v22, v24))
  {
    OUTLINED_FUNCTION_7_8();
    sub_1DD63CAC8();
LABEL_4:
    OUTLINED_FUNCTION_5_11();
    sub_1DD63CA88();
    OUTLINED_FUNCTION_5_11();
    sub_1DD63CAF8();
    OUTLINED_FUNCTION_5_11();
    sub_1DD63CB18();
    sub_1DD63D248();
    (*(v6 + 8))(v0, v3);
    OUTLINED_FUNCTION_17();
    return;
  }

  __break(1u);
}

void sub_1DD3D6840()
{
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_18_8(v1, v2);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v12 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0(v12);
  v14 = v13;
  v16 = *(v15 + 72);
  v17 = *(v13 + 80);
  v18 = OUTLINED_FUNCTION_4_11();
  *(v18 + 16) = xmmword_1DD644F40;
  v19 = v18 + v0;
  v20 = *(v14 + 104);
  (v20)(v19, *MEMORY[0x1E6969A68], v12);
  (v20)(v19 + v16, *MEMORY[0x1E6969A78], v12);
  (v20)(v19 + 2 * v16, *MEMORY[0x1E6969A48], v12);
  v21 = *MEMORY[0x1E6969A58];
  v22 = OUTLINED_FUNCTION_10_11(3 * v16);
  v20(v22);
  (v20)(v19 + 4 * v16, *MEMORY[0x1E6969A88], v12);
  v23 = *MEMORY[0x1E6969A98];
  v24 = OUTLINED_FUNCTION_10_11(5 * v16);
  v20(v24);
  sub_1DD56BDEC();
  sub_1DD63D1F8();

  OUTLINED_FUNCTION_5_11();
  sub_1DD63CAF8();
  OUTLINED_FUNCTION_5_11();
  sub_1DD63CB18();
  v25 = sub_1DD63CA78();
  if (v26)
  {
    goto LABEL_4;
  }

  if (!__OFADD__(v25, v27))
  {
    sub_1DD63CA88();
LABEL_4:
    sub_1DD63D248();
    (*(v6 + 8))(v11, v3);
    OUTLINED_FUNCTION_17();
    return;
  }

  __break(1u);
}

void sub_1DD3D6A98()
{
  OUTLINED_FUNCTION_18_4();
  v4 = OUTLINED_FUNCTION_18_8(v2, v3);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_17_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v10 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0(v10);
  v12 = v11;
  v14 = *(v13 + 72);
  v15 = *(v11 + 80);
  v16 = OUTLINED_FUNCTION_4_11();
  *(v16 + 16) = xmmword_1DD644F40;
  v17 = v16 + v1;
  v18 = *(v12 + 104);
  (v18)(v17, *MEMORY[0x1E6969A68], v10);
  (v18)(v17 + v14, *MEMORY[0x1E6969A78], v10);
  (v18)(v17 + 2 * v14, *MEMORY[0x1E6969A48], v10);
  v19 = *MEMORY[0x1E6969A58];
  v20 = OUTLINED_FUNCTION_10_11(3 * v14);
  v18(v20);
  (v18)(v17 + 4 * v14, *MEMORY[0x1E6969A88], v10);
  v21 = *MEMORY[0x1E6969A98];
  v22 = OUTLINED_FUNCTION_10_11(5 * v14);
  v18(v22);
  sub_1DD56BDEC();
  sub_1DD63D1F8();

  v23 = sub_1DD63CAE8();
  if (v24)
  {
    goto LABEL_4;
  }

  if (!__OFADD__(v23, v25))
  {
    OUTLINED_FUNCTION_7_8();
    sub_1DD63CAF8();
LABEL_4:
    OUTLINED_FUNCTION_5_11();
    sub_1DD63CB18();
    sub_1DD63D248();
    (*(v7 + 8))(v0, v4);
    OUTLINED_FUNCTION_17();
    return;
  }

  __break(1u);
}

void sub_1DD3D6CE4()
{
  OUTLINED_FUNCTION_18_4();
  v59 = v1;
  v60 = v0;
  v58 = v2;
  v3 = sub_1DD63D2B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v54 = v7 - v6;
  v56 = sub_1DD63D078();
  v8 = OUTLINED_FUNCTION_0(v56);
  v53 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v52 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_4();
  v55 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  v23 = sub_1DD63CBB8();
  v24 = OUTLINED_FUNCTION_0(v23);
  v57 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v28 = *(v4 + 72);
  v29 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1DD643F80;
  v31 = v30 + v29;
  v32 = *MEMORY[0x1E6969A10];
  v51 = v4;
  v33 = *(v4 + 104);
  v33(v31, v32, v3);
  v34 = v31 + v28;
  v35 = v22;
  v36 = v59;
  v33(v34, *MEMORY[0x1E6969A38], v3);
  sub_1DD56BDEC();
  sub_1DD63D1F8();

  sub_1DD63D248();
  if (!v36)
  {
    v42 = OUTLINED_FUNCTION_12_9();
    v43(v42, v23);
    goto LABEL_5;
  }

  v60 = v23;
  v37 = v22;
  v38 = v55;
  sub_1DD3CDD14(v37, v55, &qword_1ECCDEBC0, &qword_1DD6445A0);
  v39 = v56;
  if (__swift_getEnumTagSinglePayload(v38, 1, v56) == 1)
  {
    v40 = OUTLINED_FUNCTION_12_9();
    v41(v40, v60);
    sub_1DD3ADFD0(v38, &qword_1ECCDEBC0, &qword_1DD6445A0);
LABEL_5:
    sub_1DD3D7DA0(v35, v58);
LABEL_8:
    OUTLINED_FUNCTION_17();
    return;
  }

  v50 = v35;
  v44 = v53;
  v45 = v52;
  (*(v53 + 32))();
  v46 = v54;
  v33(v54, *MEMORY[0x1E6969A48], v3);
  if ((v36 * 7) >> 64 == (7 * v36) >> 63)
  {
    sub_1DD63D268();
    (*(v51 + 8))(v46, v3);
    (*(v44 + 8))(v45, v39);
    sub_1DD3ADFD0(v50, &qword_1ECCDEBC0, &qword_1DD6445A0);
    v47 = OUTLINED_FUNCTION_12_9();
    v48(v47, v60);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1DD3D7620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18_4();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  OUTLINED_FUNCTION_3(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = sub_1DD63D078();
  v35 = OUTLINED_FUNCTION_0(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1_4();
  v42 = v40 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &a9 - v44;
  v23(v25, 1);
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    sub_1DD3ADFD0(v33, &qword_1ECCDEBC0, &qword_1DD6445A0);
    v46 = 1;
  }

  else
  {
    (*(v37 + 32))(v45, v33, v34);
    (*(v37 + 16))(v42, v45, v34);
    sub_1DD63CF68();
    (*(v37 + 8))(v45, v34);
    v46 = 0;
  }

  __swift_storeEnumTagSinglePayload(v27, v46, 1, v34);
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD3D77EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v21 = a3;
  v22 = a1;
  v3 = sub_1DD63CBB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v8 = sub_1DD63D2B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DD644F40;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x1E6969A68], v8);
  v14(v13 + v10, *MEMORY[0x1E6969A78], v8);
  v14(v13 + 2 * v10, *MEMORY[0x1E6969A48], v8);
  v14(v13 + 3 * v10, *MEMORY[0x1E6969A58], v8);
  v14(v13 + 4 * v10, *MEMORY[0x1E6969A88], v8);
  v14(v13 + 5 * v10, *MEMORY[0x1E6969A98], v8);
  sub_1DD56BDEC();
  sub_1DD63D1F8();

  sub_1DD63CA38();
  sub_1DD63CAC8();
  v15 = sub_1DD63CA98();
  if (v16)
  {
    goto LABEL_4;
  }

  v17 = __OFADD__(v15, v20);
  result = v15 + v20;
  if (!v17)
  {
    sub_1DD63CAA8();
LABEL_4:
    sub_1DD63CA88();
    sub_1DD63CAF8();
    sub_1DD63CB18();
    sub_1DD63D248();
    return (*(v4 + 8))(v7, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3D7AD0(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v20 = a1;
  v2 = sub_1DD63CBB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v7 = sub_1DD63D2B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DD644F40;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x1E6969A68], v7);
  v13(v12 + v9, *MEMORY[0x1E6969A78], v7);
  v13(v12 + 2 * v9, *MEMORY[0x1E6969A48], v7);
  v13(v12 + 3 * v9, *MEMORY[0x1E6969A58], v7);
  v13(v12 + 4 * v9, *MEMORY[0x1E6969A88], v7);
  v13(v12 + 5 * v9, *MEMORY[0x1E6969A98], v7);
  sub_1DD56BDEC();
  sub_1DD63D1F8();

  v14 = sub_1DD63CA28();
  if (v15)
  {
    goto LABEL_4;
  }

  v16 = __OFADD__(v14, v19);
  result = v14 + v19;
  if (!v16)
  {
    sub_1DD63CA38();
LABEL_4:
    sub_1DD63CA88();
    sub_1DD63CAF8();
    sub_1DD63CB18();
    sub_1DD63D248();
    return (*(v3 + 8))(v6, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3D7DA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t (*sub_1DD3D7E54())(void, void)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC150, &qword_1DD644F60);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC158, &qword_1DD644F68) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DD644F50;
  v4 = v3 + v2;
  v5 = v0[14];
  v6 = *MEMORY[0x1E6969A50];
  v7 = sub_1DD63D2B8();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = swift_getKeyPath();
  v9 = v0[14];
  v8(v4 + v1, *MEMORY[0x1E6969A68], v7);
  *(v4 + v1 + v9) = swift_getKeyPath();
  v10 = v0[14];
  v8(v4 + 2 * v1, *MEMORY[0x1E6969A78], v7);
  *(v4 + 2 * v1 + v10) = swift_getKeyPath();
  v11 = v0[14];
  v8(v4 + 3 * v1, *MEMORY[0x1E6969A48], v7);
  *(v4 + 3 * v1 + v11) = swift_getKeyPath();
  v12 = v0[14];
  v8(v4 + 4 * v1, *MEMORY[0x1E6969A58], v7);
  *(v4 + 4 * v1 + v12) = swift_getKeyPath();
  v13 = v0[14];
  v8(v4 + 5 * v1, *MEMORY[0x1E6969A88], v7);
  *(v4 + 5 * v1 + v13) = swift_getKeyPath();
  v14 = v0[14];
  v8(v4 + 6 * v1, *MEMORY[0x1E6969A98], v7);
  *(v4 + 6 * v1 + v14) = swift_getKeyPath();
  v15 = v0[14];
  v8(v4 + 7 * v1, *MEMORY[0x1E6969AB0], v7);
  *(v4 + 7 * v1 + v15) = swift_getKeyPath();
  v16 = v0[14];
  v8(v4 + 8 * v1, *MEMORY[0x1E6969A30], v7);
  *(v4 + 8 * v1 + v16) = swift_getKeyPath();
  v17 = v0[14];
  v8(v4 + 9 * v1, *MEMORY[0x1E6969AA8], v7);
  *(v4 + 9 * v1 + v17) = swift_getKeyPath();
  v18 = v0[14];
  v8(v4 + 10 * v1, *MEMORY[0x1E6969A20], v7);
  *(v4 + 10 * v1 + v18) = swift_getKeyPath();
  v19 = v0[14];
  v8(v4 + 11 * v1, *MEMORY[0x1E6969A10], v7);
  *(v4 + 11 * v1 + v19) = swift_getKeyPath();
  v20 = v0[14];
  v8(v4 + 12 * v1, *MEMORY[0x1E6969A38], v7);
  *(v4 + 12 * v1 + v20) = swift_getKeyPath();
  v21 = v4 + 13 * v1;
  v22 = v0[14];
  v8(v21, *MEMORY[0x1E6969A00], v7);
  *(v21 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC160, &qword_1DD645210);
  sub_1DD3D8B30();
  result = sub_1DD63FC88();
  off_1ECCDC138 = result;
  return result;
}

uint64_t sub_1DD3D82CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DD63CA58();
}

uint64_t sub_1DD3D82FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DD63CAA8();
}

uint64_t sub_1DD3D832C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DD63CAC8();
}

uint64_t sub_1DD3D835C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DD63CA38();
}

uint64_t sub_1DD3D838C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DD63CA88();
}

uint64_t sub_1DD3D83BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DD63CAF8();
}

uint64_t sub_1DD3D83EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DD63CB18();
}

uint64_t sub_1DD3D841C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DD63CB58();
}

uint64_t sub_1DD3D844C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DD63C9D8();
}

uint64_t sub_1DD3D847C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DD63CB38();
}

uint64_t sub_1DD3D84AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DD63C9B8();
}

uint64_t sub_1DD3D84DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DD63C998();
}

uint64_t sub_1DD3D850C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DD63C9F8();
}

uint64_t sub_1DD3D853C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1DD63C978();
}

void sub_1DD3D856C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD63D2B8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v50 - v22;
  v24 = sub_1DD63CBB8();
  v25 = OUTLINED_FUNCTION_0(v24);
  v50 = v26;
  v51 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v62 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD63D1E8();
  v30 = sub_1DD63D2D8();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v30);
  v31 = sub_1DD63D328();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v31);
  v56 = a2;
  v54 = v23;
  v52 = v19;
  sub_1DD63CB68();
  v32 = a1 + 56;
  v33 = 1 << *(a1 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(a1 + 56);
  v36 = (v33 + 63) >> 6;
  v59 = v7 + 32;
  v60 = v7 + 16;
  v58 = v7 + 88;
  v57 = *MEMORY[0x1E6969AB8];
  v53 = *MEMORY[0x1E6969AC0];
  v55 = (v7 + 8);
  v63 = a1;

  v37 = 0;
  while (v35)
  {
    v38 = v37;
LABEL_9:
    v39 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v40 = *(v7 + 16);
    v41 = v61;
    v40(v61, *(v63 + 48) + *(v7 + 72) * (v39 | (v38 << 6)), v4);
    (*(v7 + 32))(v13, v41, v4);
    v42 = v13;
    v43 = v64;
    v40(v64, v42, v4);
    v44 = (*(v7 + 88))(v43, v4);
    if (v44 == v57)
    {
      sub_1DD63CB78();
      sub_1DD63CB88();
      (*v55)(v42, v4);
      v37 = v38;
      v13 = v42;
    }

    else
    {
      v13 = v42;
      if (v44 == v53)
      {
        sub_1DD63CB98();
        sub_1DD63CBA8();
        (*v55)(v42, v4);
        v37 = v38;
      }

      else
      {
        if (qword_1ECCDB038 != -1)
        {
          swift_once();
        }

        v45 = off_1ECCDC138;
        if (!*(off_1ECCDC138 + 2))
        {
          goto LABEL_20;
        }

        sub_1DD3FE7FC();
        if ((v47 & 1) == 0)
        {
          goto LABEL_21;
        }

        v48 = *(v45[7] + 8 * v46);

        swift_getAtKeyPath();
        v65 = v67;
        v66 = v68;
        swift_setAtWritableKeyPath();

        v49 = *v55;
        (*v55)(v42, v4);
        v49(v64, v4);
        v37 = v38;
      }
    }
  }

  while (1)
  {
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v38 >= v36)
    {

      (*(v50 + 8))(v62, v51);
      return;
    }

    v35 = *(v32 + 8 * v38);
    ++v37;
    if (v35)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_1DD3D8B30()
{
  result = qword_1EE1637E0;
  if (!qword_1EE1637E0)
  {
    sub_1DD63D2B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1637E0);
  }

  return result;
}

void sub_1DD3D8BA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v706 = a5;
  v643 = a4;
  v646 = a2;
  v705[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC168, &unk_1DD64FFB0);
  v9 = OUTLINED_FUNCTION_7(v705[0]);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v613[-v12];
  v14 = sub_1DD63D228();
  v15 = OUTLINED_FUNCTION_0_25(v14, &v727);
  v729 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v19);
  v20 = sub_1DD63D1D8();
  v21 = OUTLINED_FUNCTION_0_25(v20, &v725);
  v727 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v25);
  v26 = sub_1DD63D218();
  v27 = OUTLINED_FUNCTION_0_25(v26, v753);
  v642 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_25(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC130, &unk_1DD645260);
  v34 = OUTLINED_FUNCTION_3(v33);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v613[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_25(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v44 = OUTLINED_FUNCTION_3(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v55);
  v56 = _s19ConvergenceStrategyOMa();
  v57 = OUTLINED_FUNCTION_3(v56);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_25(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC170, &qword_1DD645270);
  v70 = OUTLINED_FUNCTION_3(v69);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v75);
  v76 = sub_1DD63D2D8();
  v77 = OUTLINED_FUNCTION_0_25(v76, v748);
  v618 = v78;
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v84);
  v85 = sub_1DD63D2B8();
  v86 = OUTLINED_FUNCTION_0_25(v85, &v728);
  v681 = v87;
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v93);
  v94 = sub_1DD63C868();
  v95 = OUTLINED_FUNCTION_0_25(v94, &v756);
  v622 = v96;
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  v103 = MEMORY[0x1EEE9AC00](v102);
  v105 = &v613[-v104];
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v108);
  v109 = sub_1DD63D078();
  v110 = OUTLINED_FUNCTION_0_25(v109, &v757);
  v723 = v111;
  v113 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v122);
  v123 = sub_1DD63CBB8();
  v124 = OUTLINED_FUNCTION_0_25(v123, &v717);
  v670 = v125;
  v127 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_25(v134);
  v756 = MEMORY[0x1E69E7CD0];
  v615 = a6;
  v135 = *a6;
  v626 = type metadata accessor for RecurringDateInterval();
  v735 = MEMORY[0x1E12B2430](v135);
  v137 = v136;
  v623 = v135;
  v734 = sub_1DD3CC020(v135);
  if (qword_1ECCDB0C0 != -1)
  {
    goto LABEL_210;
  }

  while (1)
  {
    v138 = sub_1DD63F9F8();
    v139 = __swift_project_value_buffer(v138, qword_1ECD0DDC0);

    v679 = v139;
    v140 = sub_1DD63F9D8();
    v141 = sub_1DD640368();

    LODWORD(v733) = v141;
    v142 = v140;
    v143 = os_log_type_enabled(v140, v141);
    v724 = a3;
    v707 = v105;
    v713 = v13;
    v688 = v39;
    if (v143)
    {
      v144 = OUTLINED_FUNCTION_62();
      v13 = swift_slowAlloc();
      v752 = v13;
      *v144 = 136315650;
      v145 = sub_1DD48E004();
      sub_1DD39565C(v145, v146, &v752);
      OUTLINED_FUNCTION_88_0();
      *(v144 + 4) = v39;
      a3 = v724;
      *(v144 + 12) = 2048;
      *(v144 + 14) = v734;
      *(v144 + 22) = 2080;
      v147 = sub_1DD39565C(v735, v137, &v752);

      *(v144 + 24) = v147;
      _os_log_impl(&dword_1DD38D000, v142, v733, "CalendarComponentConstraintSolver: going to solve constraint %s, inputs %ld: %s", v144, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {
    }

    OUTLINED_FUNCTION_26_5();
    OUTLINED_FUNCTION_85();
    v39 = v671;
    if (*(a1 + 16) == 12)
    {
      v148 = OUTLINED_FUNCTION_70();
      v149 = sub_1DD640368();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        *v150 = 0;
        _os_log_impl(&dword_1DD38D000, v148, v149, "CalendarComponentConstraintSolver: received constraint with grain .now, returning early since there is nothing to do", v150, 2u);
        OUTLINED_FUNCTION_0_1();
      }

      return;
    }

    v151 = OUTLINED_FUNCTION_66_0();
    v152 = sub_1DD3CC020(v151);
    v154 = a1;
    v736 = a1;
    v625 = v152;
    if (!v152)
    {
      break;
    }

    v732 = (v723 + 16);
    v696 = (v727 + 13);
    v695 = (v729 + 104);
    v694 = (v729 + 8);
    v693 = (v727 + 1);
    v709 = (v723 + 32);
    v727 = (v723 + 8);
    v628 = v723 + 40;
    a1 = &v719 + 4;
    v692[1] = *MEMORY[0x1E69698C0];
    v692[0] = *MEMORY[0x1E69699C8];
    v638 = *MEMORY[0x1E69699A0];
    *&v153 = 136315138;
    v647 = v153;
    v639 = xmmword_1DD643F80;
    v654 = xmmword_1DD644F40;
    v637 = *MEMORY[0x1E6969998];
    v675 = *MEMORY[0x1E6969A68];
    v674 = *MEMORY[0x1E6969A78];
    v673 = *MEMORY[0x1E6969A48];
    v661 = *MEMORY[0x1E6969A58];
    v658 = *MEMORY[0x1E6969A88];
    v657 = *MEMORY[0x1E6969A98];
    v619 = *MEMORY[0x1E6969AB0];
    v155 = 0;
    v617 = *MEMORY[0x1E6969A20];
    v616 = *MEMORY[0x1E6969A10];
    v614 = *MEMORY[0x1E6969A38];
    v624 = v623 & 0xC000000000000001;
    v621 = v623 & 0xFFFFFFFFFFFFFF8;
    v620 = v623 + 32;
    v677 = v670 + 16;
    v735 = v622 + 8;
    v686 = v681 + 16;
    v685 = (v681 + 8);
    v718 = (v618 + 16);
    v721[0] = v618 + 8;
    v700 = v642 + 32;
    v701 = (v642 + 8);
    v689 = (v670 + 8);
    v705[1] = v622 + 32;
    v636 = (v642 + 104);
    v712 = v642 + 16;
    v664[0] = v681 + 32;
    v663 = v681 + 88;
    v656 = (v681 + 104);
    v723 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
    v105 = v622 + 16;
    v711 = v622 + 16;
    while (1)
    {
      if (v624)
      {
        a1 = v155;
        v722 = MEMORY[0x1E12B2C10](v155, v623);
      }

      else
      {
        if (v155 >= *(v621 + 16))
        {
          goto LABEL_209;
        }

        v722 = *(v620 + 8 * v155);
      }

      v156 = __OFADD__(v155, 1);
      v157 = v155 + 1;
      if (v156)
      {
        goto LABEL_202;
      }

      v627 = v157;
      sub_1DD48ECD4();
      a3 = v158;
      v672 = *(v158 + 16);
      if (v672)
      {
        break;
      }

LABEL_165:
      v155 = v627;
      a3 = v724;
      if (v627 == v625)
      {
        goto LABEL_166;
      }
    }

    v721[1] = OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval;
    a1 = v154[49];
    v668 = v154[50];
    v666 = v158 + ((*(v670 + 80) + 32) & ~*(v670 + 80));
    OUTLINED_FUNCTION_83();
    swift_beginAccess();
    v39 = 0;
    v669 = a3;
    v680 = a1;
    v159 = v105;
    while (v39 < *(a3 + 16))
    {
      v160 = v666 + *(v670 + 72) * v39;
      v161 = *(v670 + 16);
      OUTLINED_FUNCTION_82();
      v719 = v162;
      v162();
      v687[0] = v39;
      if (a1)
      {
        OUTLINED_FUNCTION_17_8();
        OUTLINED_FUNCTION_72_0();
        if ((v105 & 1) == 0)
        {
          OUTLINED_FUNCTION_81();
          if (!v163)
          {
            goto LABEL_24;
          }

          OUTLINED_FUNCTION_81();
          if (*(v164 + 49))
          {
            OUTLINED_FUNCTION_17_8();
            OUTLINED_FUNCTION_72_0();
            if ((v105 & 1) == 0)
            {
LABEL_24:
              v165 = *v159;
              OUTLINED_FUNCTION_4_12();
              OUTLINED_FUNCTION_38_1();
              *(v166 - 256) = v167;
              v167();
              sub_1DD63C828();
              v168 = OUTLINED_FUNCTION_36_1();
              v733 = v169;
              v169(v168, v105);
              v170 = OUTLINED_FUNCTION_70();
              v171 = sub_1DD640368();
              if (!os_log_type_enabled(v170, v171))
              {
                goto LABEL_34;
              }

              v172 = OUTLINED_FUNCTION_54();
              v173 = OUTLINED_FUNCTION_62();
              *v172 = OUTLINED_FUNCTION_33_1(v173).n128_u32[0];
              OUTLINED_FUNCTION_49_0();
              OUTLINED_FUNCTION_5_12();
              sub_1DD3DDA14(&qword_1EE1663F8, v174);
              v175 = OUTLINED_FUNCTION_45_0();
              sub_1DD39565C(v175, v176, &v750);
              OUTLINED_FUNCTION_88_0();
              *(v172 + 4) = v39;
              v177 = v171;
              v178 = v170;
              v179 = "CalendarComponentConstraintSolver: constraint is bound=start and previousConstraint has bound=end, setting referenceDate to end of interval: %s";
LABEL_33:
              _os_log_impl(&dword_1DD38D000, v178, v177, v179, v172, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v173);
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_0_1();
              goto LABEL_34;
            }
          }

          else
          {
          }

          v191 = *v159;
          OUTLINED_FUNCTION_4_12();
          OUTLINED_FUNCTION_38_1();
          *(v192 - 256) = v193;
          v193();
          sub_1DD63C848();
          v194 = OUTLINED_FUNCTION_36_1();
          v733 = v195;
          v195(v194, v105);
          v170 = OUTLINED_FUNCTION_70();
          v196 = sub_1DD640368();
          if (!os_log_type_enabled(v170, v196))
          {
            goto LABEL_34;
          }

          v172 = OUTLINED_FUNCTION_54();
          v173 = OUTLINED_FUNCTION_62();
          *v172 = OUTLINED_FUNCTION_33_1(v173).n128_u32[0];
          OUTLINED_FUNCTION_49_0();
          OUTLINED_FUNCTION_5_12();
          sub_1DD3DDA14(&qword_1EE1663F8, v197);
          v198 = OUTLINED_FUNCTION_45_0();
          sub_1DD39565C(v198, v199, &v750);
          OUTLINED_FUNCTION_88_0();
          *(v172 + 4) = v39;
          v177 = v196;
          v178 = v170;
          v179 = "CalendarComponentConstraintSolver: constraint is bound=end but previousConstraint was bound=start, setting referenceDate to start of interval: %s";
          goto LABEL_33;
        }
      }

      else
      {
      }

      v180 = *v159;
      OUTLINED_FUNCTION_4_12();
      v181 = v743;
      v734 = v182;
      (v182)(v13);
      sub_1DD63C848();
      v183 = OUTLINED_FUNCTION_36_1();
      v733 = v184;
      v184(v183, v181);
      v170 = OUTLINED_FUNCTION_70();
      v185 = sub_1DD640368();
      if (os_log_type_enabled(v170, v185))
      {
        v186 = OUTLINED_FUNCTION_54();
        v187 = OUTLINED_FUNCTION_62();
        *v186 = OUTLINED_FUNCTION_33_1(v187).n128_u32[0];
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_5_12();
        sub_1DD3DDA14(&qword_1EE1663F8, v188);
        v189 = OUTLINED_FUNCTION_45_0();
        sub_1DD39565C(v189, v190, &v750);
        OUTLINED_FUNCTION_88_0();
        *(v186 + 4) = v39;
        _os_log_impl(&dword_1DD38D000, v170, v185, "CalendarComponentConstraintSolver: constraint is bound=start, setting referenceDate to start of interval: %s", v186, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v187);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

LABEL_34:

      v200 = sub_1DD48E73C();
      v201 = *(v200 + 16);
      v717 = sub_1DD3DDA14(&qword_1EE1637E0, MEMORY[0x1E6969AD0]);
      v202 = MEMORY[0x1E12B2590](v201, v699);
      v750 = v202;
      v203 = *(v200 + 16);
      if (v203)
      {
        v204 = (*(v681 + 80) + 32) & ~*(v681 + 80);
        v720 = v200;
        v205 = v200 + v204;
        v729 = *(v681 + 72);
        v206 = *(v681 + 16);
        v207 = v648;
        v208 = v649;
        v209 = v699;
        v210 = v685;
        do
        {
          v206(v207, v205, v209);
          sub_1DD56D194();
          (*v210)(v208, v209);
          v205 += v729;
          --v203;
        }

        while (v203);

        v211 = v750;
      }

      else
      {
        v211 = v202;
      }

      v212 = v671;
      v213 = v731;
      v729 = *v718;
      (v729)(v671, v724 + v723, v731);
      v214 = v726;
      OUTLINED_FUNCTION_49_0();
      v215 = v687[1];
      sub_1DD63D1F8();
      v216 = *v721[0];
      (*v721[0])(v212, v213);
      v217 = v732;
      v720 = v216;
      if (v668 != 1)
      {
        OUTLINED_FUNCTION_63();
        v137 = v729;
        (v729)(v212);
        sub_1DD3DCFE4(v710, v212, v214, v736, v643);
        v216(v212, v213);
        v238 = sub_1DD483BE4(v211);
        v239 = sub_1DD483BE4(v211);
        sub_1DD475668(v238, v239);
        v241 = v240;

        if (v241)
        {
          v242 = v137;

          v243 = OUTLINED_FUNCTION_70();
          v244 = sub_1DD640368();

          if (os_log_type_enabled(v243, v244))
          {
            v245 = OUTLINED_FUNCTION_54();
            v246 = OUTLINED_FUNCTION_62();
            *v245 = OUTLINED_FUNCTION_33_1(v246).n128_u32[0];
            v247 = sub_1DD640278();
            v249 = v248;

            v250 = sub_1DD39565C(v247, v249, &v750);
            v242 = v729;

            *(v245 + 4) = v250;
            _os_log_impl(&dword_1DD38D000, v243, v244, "CalendarComponentConstraintSolver: values are same for calendar components: %s", v245, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v246);
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_0_1();
          }

          else
          {
          }

          v251 = v724;
          v252 = v740;
          v253 = v726;
          v254 = v732;
          OUTLINED_FUNCTION_4_12();
          v255 = OUTLINED_FUNCTION_22_3(v667);
          v256(v255);
          OUTLINED_FUNCTION_82();
          v719();
          v257 = *v254;
          (*v254)(v651[1], v253, v744);
          v242(v652, v251 + v723, v731);
          if (v680 == 1)
          {

            v258 = 3;
          }

          else
          {
            sub_1DD640CD8();
            OUTLINED_FUNCTION_72_0();
            if (v253)
            {
              v258 = 3;
            }

            else
            {
              v258 = 2;
            }
          }

          __swift_storeEnumTagSinglePayload(v651[0], v258, 3, v252);
          v309 = v252;
          v310 = *(v736 + 52);
          sub_1DD48FBC0(v645);
          OUTLINED_FUNCTION_39_1(&v663);
          sub_1DD3DD8F4(v311, v312);
          switch(__swift_getEnumTagSinglePayload(v252, 3, v252))
          {
            case 1u:
              OUTLINED_FUNCTION_76();
              sub_1DD63D258();
              break;
            case 2u:
              v323 = OUTLINED_FUNCTION_32_5(&v654 + 8);
              (v257)(v323);
              OUTLINED_FUNCTION_87();
              OUTLINED_FUNCTION_68();
              OUTLINED_FUNCTION_76();
              sub_1DD3D5CFC();
              sub_1DD390754(v252, &qword_1ECCDEBC0, &qword_1DD6445A0);
              break;
            case 3u:
              v324 = OUTLINED_FUNCTION_32_5(&v670);
              (v257)(v324);
              OUTLINED_FUNCTION_87();
              break;
            default:
              OUTLINED_FUNCTION_16_0(&v729);
              v252 = v697;
              v313(v697, v634, v740);
              OUTLINED_FUNCTION_16_0(&v722);
              OUTLINED_FUNCTION_79_0();
              OUTLINED_FUNCTION_55_0();
              v315 = *(v314 - 256);
              v316();
              OUTLINED_FUNCTION_12_10();
              OUTLINED_FUNCTION_54_0();
              v317();
              OUTLINED_FUNCTION_76();
              sub_1DD63D298();
              OUTLINED_FUNCTION_16_0(v721);
              v318 = OUTLINED_FUNCTION_73();
              v319(v318);
              OUTLINED_FUNCTION_16_0(&v720);
              v320(v309, v315);
              v321 = OUTLINED_FUNCTION_10_12(&v730);
              v322(v321, v740);
              break;
          }

          v325 = v633;
          if (v310 && (v252 = v635, OUTLINED_FUNCTION_56_1(), __swift_storeEnumTagSinglePayload(v327, v328, v329, *(v326 - 256)), v330 = sub_1DD48C3AC(v651[0], v252), sub_1DD3DD958(v252), (v330 & 1) == 0))
          {
            v309 = v641;
            OUTLINED_FUNCTION_37_3();
            OUTLINED_FUNCTION_68();
            OUTLINED_FUNCTION_76();
            sub_1DD3D5CFC();
            sub_1DD390754(v309, &qword_1ECCDEBC0, &qword_1DD6445A0);
            sub_1DD390754(v252, &qword_1ECCDC130, &unk_1DD645260);
          }

          else
          {
            sub_1DD390754(v645, &qword_1ECCDC130, &unk_1DD645260);
            sub_1DD3D7DA0(v641, v325);
          }

          OUTLINED_FUNCTION_34_3(v325, 1, &v757);
          v137 = v731;
          if (v463)
          {
            sub_1DD3DD958(v651[0]);
            OUTLINED_FUNCTION_8_5();
            v331();
            OUTLINED_FUNCTION_16_0(v746);
            v332 = OUTLINED_FUNCTION_60_1();
            v333(v332);
            OUTLINED_FUNCTION_16_0(v714);
            OUTLINED_FUNCTION_47_0();
            v334();
            OUTLINED_FUNCTION_39_1(&v756);
            OUTLINED_FUNCTION_7_9();
            v335();
            sub_1DD390754(v325, &qword_1ECCDEBC0, &qword_1DD6445A0);
            OUTLINED_FUNCTION_50_1(v660);
            OUTLINED_FUNCTION_65_0();
            __swift_storeEnumTagSinglePayload(v336, v337, v338, v252);
          }

          else
          {
            OUTLINED_FUNCTION_16_0(&v738);
            v339 = v629;
            v340 = OUTLINED_FUNCTION_73();
            v341 = v744;
            v342(v340);
            OUTLINED_FUNCTION_61_0();
            OUTLINED_FUNCTION_64_0(v660);
            OUTLINED_FUNCTION_37_3();
            sub_1DD4852E4(v343, v344, v736, v345, v346);
            v347 = *v727;
            (*v727)(v339, v341);
            sub_1DD3DD958(v651[0]);
            OUTLINED_FUNCTION_8_5();
            v348();
            v349 = OUTLINED_FUNCTION_62_0(&v684);
            v347(v349);
            OUTLINED_FUNCTION_16_0(v714);
            OUTLINED_FUNCTION_47_0();
            v350();
            OUTLINED_FUNCTION_86_0();
            OUTLINED_FUNCTION_7_9();
            v351();
          }

          OUTLINED_FUNCTION_34_3(v309, 1, &v756);
          v352 = v632;
          if (v463)
          {
            sub_1DD390754(v309, &qword_1ECCDC170, &qword_1DD645270);
          }

          else
          {
            v353 = OUTLINED_FUNCTION_10_12(&v735);
            v354(v353, v309, v743);
            v355 = v630;
            if (v680)
            {
              OUTLINED_FUNCTION_17_8();
              OUTLINED_FUNCTION_72_0();
              if ((v309 & 1) == 0)
              {
                OUTLINED_FUNCTION_81();
                if (!v356)
                {
                  goto LABEL_86;
                }

                OUTLINED_FUNCTION_81();
                if (*(v357 + 49))
                {
                  OUTLINED_FUNCTION_17_8();
                  OUTLINED_FUNCTION_72_0();
                  if ((v309 & 1) == 0)
                  {
LABEL_86:
                    v358 = v352;
                    sub_1DD63C828();
                    goto LABEL_89;
                  }
                }

                else
                {
                }
              }
            }

            else
            {
            }

            v358 = v352;
            sub_1DD63C848();
LABEL_89:
            OUTLINED_FUNCTION_43_1(v745);
            swift_beginAccess();
            OUTLINED_FUNCTION_16_0(&v652);
            v359(v358, v355, v744);
            OUTLINED_FUNCTION_38_1();
            (*(v360 - 256))();
            sub_1DD56D300();
            OUTLINED_FUNCTION_58_1();
            v362 = *(v361 - 256);
            v362();
            v363 = OUTLINED_FUNCTION_52();
            (v362)(v363);
            OUTLINED_FUNCTION_26_5();
          }
        }

        else
        {

          OUTLINED_FUNCTION_26_5();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC178, &qword_1DD645278);
        v364 = v642;
        v365 = *(v642 + 72);
        v366 = (*(v642 + 80) + 32) & ~*(v642 + 80);
        v367 = swift_allocObject();
        *(v367 + 16) = v639;
        v368 = v367 + v366;
        v369 = *(v364 + 104);
        v370 = v740;
        v371 = v636;
        v369(v368, v638, v740);
        v717 = v365;
        v716 = v368;
        v369(v368 + v365, v637, v370);
        sub_1DD408C00(0, 1, v367);
        v662 = v367;
        sub_1DD408C00(1, 1, v367);
        v372 = 0;
        v373 = 0;
        v715 = *(v736 + 52);
        v374 = v730;
        v159 = v711;
        v375 = v726;
        while (2)
        {
          v376 = v372;
          v377 = v716 + v373 * v717;
          OUTLINED_FUNCTION_4_12();
          v378 = OUTLINED_FUNCTION_22_3(v751);
          v379(v378);
          v13 = *v732;
          (*v732)(v742, v375, v744);
          OUTLINED_FUNCTION_83();
          (v729)(v741, v381 + v380, v137);
          OUTLINED_FUNCTION_16_0(&v741);
          v382 = OUTLINED_FUNCTION_79_0();
          v383 = v740;
          v384(v382, v377, v740);
          __swift_storeEnumTagSinglePayload(v371, 0, 3, v383);
          v385 = v736;
          sub_1DD48FBC0(v374);
          OUTLINED_FUNCTION_84(v747);
          sub_1DD3DD8F4(v386, v387);
          switch(__swift_getEnumTagSinglePayload(v385, 3, v383))
          {
            case 1u:
              OUTLINED_FUNCTION_53_0();
              OUTLINED_FUNCTION_29_1();
              sub_1DD63D258();
              goto LABEL_97;
            case 2u:
              OUTLINED_FUNCTION_43_1(&v733);
              OUTLINED_FUNCTION_6_12(&v755);
              v13();
              OUTLINED_FUNCTION_41_0(v385);
              OUTLINED_FUNCTION_84(&v718);
              v371 = &qword_1ECCDEBC0;
              sub_1DD3DD9B4(v399, v400, &qword_1ECCDEBC0, &qword_1DD6445A0);
              v401 = OUTLINED_FUNCTION_67_0();
              if (__swift_getEnumTagSinglePayload(v401, v402, v383) == 1)
              {
                sub_1DD390754(v385, &qword_1ECCDEBC0, &qword_1DD6445A0);
                OUTLINED_FUNCTION_42_0();
LABEL_100:
                OUTLINED_FUNCTION_65_0();
                __swift_storeEnumTagSinglePayload(v412, v413, v414, v744);
                OUTLINED_FUNCTION_27_3();
LABEL_101:
                v415 = &qword_1ECCDEBC0;
                goto LABEL_110;
              }

              LODWORD(v719) = v376;
              v403 = v385;
              v385 = *v709;
              v383 = v690;
              (*v709)(v690, v403, v744);
              v404 = v374;
              v159 = v688;
              v371 = &qword_1ECCDC130;
              v374 = &unk_1DD645260;
              sub_1DD3DD9B4(v404, v688, &qword_1ECCDC130, &unk_1DD645260);
              OUTLINED_FUNCTION_30_4();
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v405, v406, v407);
              v13 = v725;
              if (EnumTagSinglePayload == 1)
              {
                v409 = OUTLINED_FUNCTION_3_16();
                v411(v409, *(v410 - 256));
                sub_1DD390754(v159, &qword_1ECCDC130, &unk_1DD645260);
                OUTLINED_FUNCTION_40_1();
                OUTLINED_FUNCTION_31_3();
                OUTLINED_FUNCTION_26_5();
                v376 = v719;
                goto LABEL_100;
              }

              OUTLINED_FUNCTION_16_0(&v694);
              v374 = v683;
              v416(v683, v159, v376);
              OUTLINED_FUNCTION_16_0(&v712);
              v417 = OUTLINED_FUNCTION_79_0();
              v418(v417, v374, v376);
              OUTLINED_FUNCTION_16_0(&v693);
              v420 = v419(&qword_1ECCDC130, v376);
              v421 = v675;
              if (v420 == v675)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
                v137 = v681;
                v422 = *(v681 + 72);
                v423 = (*(v681 + 80) + 32) & ~*(v681 + 80);
                v424 = OUTLINED_FUNCTION_51_1();
                *(v424 + 16) = v654;
                v425 = *(v137 + 104);
                v426 = v421;
                v383 = v656;
                (v425)(v424 + v423, v426, v376);
                OUTLINED_FUNCTION_21_1(v702);
                v425();
                v427 = OUTLINED_FUNCTION_19_7();
                (v425)(v427);
                OUTLINED_FUNCTION_78();
                OUTLINED_FUNCTION_21_1(v691);
                v425();
                OUTLINED_FUNCTION_21_1(&v690 + 4);
                v425();
                v428 = OUTLINED_FUNCTION_13_8();
                (v425)(v428);
                sub_1DD56BDEC();
                v13 = v429;
                v159 = v644;
                OUTLINED_FUNCTION_15_8();
                v371 = *(v430 - 256);
                sub_1DD63D1F8();
                OUTLINED_FUNCTION_42_0();

                sub_1DD63CA38();
                sub_1DD63CAC8();
                OUTLINED_FUNCTION_5_11();
                sub_1DD63CA88();
                OUTLINED_FUNCTION_5_11();
                sub_1DD63CAF8();
                OUTLINED_FUNCTION_5_11();
                sub_1DD63CB18();
                OUTLINED_FUNCTION_53_0();
                v385 = v371;
                sub_1DD63D248();
                OUTLINED_FUNCTION_16_0(v714);
                OUTLINED_FUNCTION_47_0();
                v431();
                (*(v137 + 8))(v374, v376);
                v432 = OUTLINED_FUNCTION_3_16();
                v434(v432, *(v433 - 256));
                OUTLINED_FUNCTION_20_3();
                OUTLINED_FUNCTION_31_3();
LABEL_104:
                OUTLINED_FUNCTION_26_5();
LABEL_109:
                v376 = v719;
                goto LABEL_110;
              }

              v374 = v674;
              if (v420 == v674)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
                OUTLINED_FUNCTION_9_6();
                v435 = OUTLINED_FUNCTION_51_1();
                OUTLINED_FUNCTION_11_9(v435, v687);
                OUTLINED_FUNCTION_30_4();
                v383 = v656;
                (qword_1DD6445A0)();
                qword_1DD6445A0(v13 + v159, v374, v376);
                v436 = OUTLINED_FUNCTION_19_7();
                qword_1DD6445A0(v436, v437, v438);
                OUTLINED_FUNCTION_78();
                OUTLINED_FUNCTION_21_1(v691);
                qword_1DD6445A0(v439, v440, v441);
                OUTLINED_FUNCTION_21_1(&v690 + 4);
                qword_1DD6445A0(v442, v443, v444);
                v445 = OUTLINED_FUNCTION_13_8();
                qword_1DD6445A0(v445, v446, v447);
                sub_1DD56BDEC();
                v13 = v448;
                OUTLINED_FUNCTION_64_0(v655);
                OUTLINED_FUNCTION_15_8();
                v450 = *(v449 - 256);
                sub_1DD63D1F8();

                OUTLINED_FUNCTION_44_0();
                sub_1DD63CA38();
                sub_1DD63CAB8();
                OUTLINED_FUNCTION_26_5();
                if ((v451 & 1) == 0)
                {
                  OUTLINED_FUNCTION_44_0();
                  sub_1DD63CAC8();
                }

                OUTLINED_FUNCTION_5_11();
                v385 = &qword_1ECCDC130;
                sub_1DD63CA88();
                OUTLINED_FUNCTION_5_11();
                sub_1DD63CAF8();
                OUTLINED_FUNCTION_5_11();
                sub_1DD63CB18();
                OUTLINED_FUNCTION_53_0();
                OUTLINED_FUNCTION_29_1();
                sub_1DD63D248();
                OUTLINED_FUNCTION_16_0(v714);
                OUTLINED_FUNCTION_47_0();
                v452();
                OUTLINED_FUNCTION_16_0(&v711);
                v453(v683, v376);
                v454 = OUTLINED_FUNCTION_3_16();
                v456(v454, *(v455 - 256));
                OUTLINED_FUNCTION_20_3();
                OUTLINED_FUNCTION_42_0();
                OUTLINED_FUNCTION_31_3();
                goto LABEL_109;
              }

              OUTLINED_FUNCTION_74(&v701 + 4);
              v374 = v730;
              v159 = v711;
              v137 = v731;
              v376 = v719;
              if (v463)
              {
                goto LABEL_138;
              }

              v383 = v661;
              if (v491 == v661)
              {
                v137 = v711;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
                OUTLINED_FUNCTION_9_6();
                v498 = OUTLINED_FUNCTION_51_1();
                OUTLINED_FUNCTION_11_9(v498, v687);
                OUTLINED_FUNCTION_30_4();
                v371 = v656;
                (qword_1DD6445A0)();
                OUTLINED_FUNCTION_21_1(v702);
                (qword_1DD6445A0)();
                v499 = OUTLINED_FUNCTION_19_7();
                (qword_1DD6445A0)(v499);
                v500 = OUTLINED_FUNCTION_78();
                qword_1DD6445A0(v500, v383, v376);
                OUTLINED_FUNCTION_21_1(&v690 + 4);
                (qword_1DD6445A0)();
                v501 = OUTLINED_FUNCTION_13_8();
                (qword_1DD6445A0)(v501);
                sub_1DD56BDEC();
                v13 = v502;
                OUTLINED_FUNCTION_64_0(v651);
                OUTLINED_FUNCTION_15_8();
                v504 = *(v503 - 256);
                sub_1DD63D1F8();

                OUTLINED_FUNCTION_5_11();
                v385 = v371;
                sub_1DD63CAF8();
                OUTLINED_FUNCTION_5_11();
                sub_1DD63CB18();
                sub_1DD63CA78();
                if ((v505 & 1) == 0)
                {
                  OUTLINED_FUNCTION_44_0();
                  sub_1DD63CA88();
                }
              }

              else
              {
                v383 = v658;
                if (v491 != v658)
                {
                  OUTLINED_FUNCTION_74(&v690);
                  if (v463)
                  {
                    OUTLINED_FUNCTION_16_0(&v711);
                    v371 = v518;
                    v519(v683, v699);
                    v13 = v738;
                    v383 = v744;
                    (v385)(v738, v690, v744);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_74(&v644 + 4);
                    if (!v520)
                    {
                      OUTLINED_FUNCTION_74(&v641 + 4);
                      v383 = v616;
                      if (v463 || v521 == v616)
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
                        OUTLINED_FUNCTION_9_6();
                        v523 = swift_allocObject();
                        v524 = OUTLINED_FUNCTION_11_9(v523, &v665);
                        v525 = v383;
                        v526 = v699;
                        v383 = v656;
                        qword_1DD6445A0(v524, v525, v699);
                        v137 = v730;
                        qword_1DD6445A0(v13 + v159, v614, v526);
                        sub_1DD56BDEC();
                        v13 = v527;
                        OUTLINED_FUNCTION_15_8();
                        v385 = *(v528 - 256);
                        sub_1DD63D1F8();
                        OUTLINED_FUNCTION_42_0();

                        OUTLINED_FUNCTION_53_0();
                        sub_1DD63D248();
                        OUTLINED_FUNCTION_16_0(v714);
                        OUTLINED_FUNCTION_47_0();
                        v529();
                        v530 = v526;
                        v374 = v137;
                        v159 = v711;
                        off_1ECCDC138(v683, v530);
                        v531 = OUTLINED_FUNCTION_3_16();
                        v533(v531, *(v532 - 256));
                      }

                      else
                      {
                        v137 = v159;
                        v385 = *v685;
                        OUTLINED_FUNCTION_39_1(&v728);
                        (v385)();
                        OUTLINED_FUNCTION_16_0(v746);
                        v371 = v744;
                        v534(v690, v744);
                        OUTLINED_FUNCTION_65_0();
                        __swift_storeEnumTagSinglePayload(v535, v536, v537, v371);
                        (v385)(v665, v383);
                      }

                      OUTLINED_FUNCTION_27_3();
                      OUTLINED_FUNCTION_26_5();
                      goto LABEL_101;
                    }

LABEL_138:
                    v13 = v738;
                    OUTLINED_FUNCTION_29_1();
                    v371 = v492;
                    sub_1DD63D1B8();
                    OUTLINED_FUNCTION_16_0(&v711);
                    v493(v683, v699);
                    v494 = OUTLINED_FUNCTION_3_16();
                    v383 = *(v495 - 256);
                    v496(v494, v383);
                  }

                  OUTLINED_FUNCTION_42_0();
                  OUTLINED_FUNCTION_41_0(v497);
                  OUTLINED_FUNCTION_27_3();
LABEL_110:
                  sub_1DD390754(v704, v415, &qword_1DD6445A0);
LABEL_111:
                  if (v715)
                  {
                    OUTLINED_FUNCTION_50_1(&v743);
                    OUTLINED_FUNCTION_56_1();
                    v383 = *(v457 - 256);
                    __swift_storeEnumTagSinglePayload(v458, v459, v460, v383);
                    v385 = *(v705[0] + 48);
                    v461 = v713;
                    sub_1DD3DD8F4(v739, v713);
                    sub_1DD3DD8F4(v371, v461 + v385);
                    switch(__swift_getEnumTagSinglePayload(v461, 3, v383))
                    {
                      case 1u:
                        OUTLINED_FUNCTION_71();
                        v463 = OUTLINED_FUNCTION_24_1() == 1;
                        goto LABEL_119;
                      case 2u:
                        OUTLINED_FUNCTION_71();
                        v463 = OUTLINED_FUNCTION_24_1() == 2;
                        goto LABEL_119;
                      case 3u:
                        OUTLINED_FUNCTION_71();
                        v463 = OUTLINED_FUNCTION_24_1() == 3;
LABEL_119:
                        v385 = v737[0];
                        if (!v463)
                        {
                          goto LABEL_123;
                        }

                        sub_1DD390754(v374, &qword_1ECCDC130, &unk_1DD645260);
                        sub_1DD3DD958(v461);
                        break;
                      default:
                        v461 = v713;
                        sub_1DD3DD8F4(v713, v13);
                        v371 = v740;
                        if (__swift_getEnumTagSinglePayload(v461 + v385, 3, v740))
                        {
                          OUTLINED_FUNCTION_71();
                          OUTLINED_FUNCTION_16_0(&v730);
                          v462(v13, v371);
                          OUTLINED_FUNCTION_27_3();
LABEL_123:
                          sub_1DD390754(v461, &qword_1ECCDC168, &unk_1DD64FFB0);
                          goto LABEL_124;
                        }

                        OUTLINED_FUNCTION_16_0(&v729);
                        v13 = v653;
                        v490(v653, v461 + v385, v371);
                        v385 = sub_1DD63D208();
                        v383 = v701;
                        v374 = *v701;
                        (*v701)(v13, v371);
                        OUTLINED_FUNCTION_71();
                        (v374)(v725, v371);
                        if ((v385 & 1) == 0)
                        {
                          sub_1DD3DD958(v461);
                          OUTLINED_FUNCTION_20_3();
                          OUTLINED_FUNCTION_31_3();
                          OUTLINED_FUNCTION_26_5();
LABEL_124:
                          v13 = v738;
                          OUTLINED_FUNCTION_68();
                          OUTLINED_FUNCTION_29_1();
                          sub_1DD3D5CFC();
                          OUTLINED_FUNCTION_27_3();
                          sub_1DD390754(v13, &qword_1ECCDEBC0, &qword_1DD6445A0);
                          sub_1DD390754(v374, &qword_1ECCDC130, &unk_1DD645260);
                          goto LABEL_125;
                        }

                        OUTLINED_FUNCTION_40_1();
                        sub_1DD390754(v374, &qword_1ECCDC130, &unk_1DD645260);
                        sub_1DD3DD958(v461);
                        OUTLINED_FUNCTION_27_3();
                        OUTLINED_FUNCTION_31_3();
                        OUTLINED_FUNCTION_26_5();
                        break;
                    }
                  }

                  else
                  {
                    sub_1DD390754(v374, &qword_1ECCDC130, &unk_1DD645260);
                  }

                  sub_1DD3D7DA0(v738, v385);
LABEL_125:
                  v464 = OUTLINED_FUNCTION_67_0();
                  OUTLINED_FUNCTION_34_3(v464, v465, &v757);
                  if (v463)
                  {
                    sub_1DD3DD958(v739);
                    OUTLINED_FUNCTION_8_5();
                    v466();
                    v467 = *v727;
                    v468 = OUTLINED_FUNCTION_60_1();
                    v719 = v469;
                    (v469)(v468);
                    OUTLINED_FUNCTION_39_1(&v756);
                    OUTLINED_FUNCTION_7_9();
                    v470();
                    sub_1DD390754(v385, &qword_1ECCDEBC0, &qword_1DD6445A0);
                    OUTLINED_FUNCTION_43_1(&v742);
                    OUTLINED_FUNCTION_65_0();
                    __swift_storeEnumTagSinglePayload(v471, v472, v473, v383);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_16_0(&v738);
                    v474 = OUTLINED_FUNCTION_48_0();
                    v475(v474);
                    OUTLINED_FUNCTION_61_0();
                    OUTLINED_FUNCTION_64_0(&v742);
                    OUTLINED_FUNCTION_37_3();
                    v13 = v376;
                    sub_1DD4852E4(v476, v477, v736, v478, v479);
                    v385 = v371;
                    v371 = v727;
                    v480 = *v727;
                    (*v727)(v159, v374);
                    sub_1DD3DD958(v739);
                    OUTLINED_FUNCTION_8_5();
                    v481();
                    OUTLINED_FUNCTION_62_0(&v755);
                    OUTLINED_FUNCTION_40_1();
                    OUTLINED_FUNCTION_31_3();
                    v719 = v480;
                    v480();
                    OUTLINED_FUNCTION_86_0();
                    OUTLINED_FUNCTION_7_9();
                    v482();
                  }

                  v483 = OUTLINED_FUNCTION_67_0();
                  OUTLINED_FUNCTION_34_3(v483, v484, &v756);
                  if (v463)
                  {
                    sub_1DD390754(v385, &qword_1ECCDC170, &qword_1DD645270);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_16_0(&v735);
                    v485 = v703;
                    v371 = v743;
                    v486(v703, v385, v743);
                    (v734)(v707, v485, v371);
                    v137 = v159;
                    sub_1DD56D300();
                    OUTLINED_FUNCTION_40_1();
                    OUTLINED_FUNCTION_58_1();
                    v488 = *(v487 - 256);
                    v488();
                    v489 = OUTLINED_FUNCTION_52();
                    (v488)(v489);
                    v159 = v137;
                  }

                  v375 = v726;
                  OUTLINED_FUNCTION_26_5();
                  v372 = 1;
                  v373 = 1;
                  if (v376)
                  {
                    OUTLINED_FUNCTION_43_1(v692);
                    swift_setDeallocating();
                    sub_1DD46CB60();
                    v105 = v689;
                    v538 = *v689;
                    v539 = OUTLINED_FUNCTION_23_3();
                    v538(v539);
                    v540 = OUTLINED_FUNCTION_57_1();
                    v538(v540);
                    OUTLINED_FUNCTION_85();
                    a3 = v669;
                    v291 = v687[0];
LABEL_159:
                    v295 = v736;
                    goto LABEL_160;
                  }

                  continue;
                }

                v137 = v711;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
                OUTLINED_FUNCTION_9_6();
                v506 = OUTLINED_FUNCTION_51_1();
                OUTLINED_FUNCTION_11_9(v506, v687);
                OUTLINED_FUNCTION_30_4();
                v371 = v656;
                (qword_1DD6445A0)();
                OUTLINED_FUNCTION_21_1(v702);
                (qword_1DD6445A0)();
                v507 = OUTLINED_FUNCTION_19_7();
                (qword_1DD6445A0)(v507);
                OUTLINED_FUNCTION_78();
                OUTLINED_FUNCTION_21_1(v691);
                (qword_1DD6445A0)();
                qword_1DD6445A0(v13 + 4 * v159, v383, v376);
                v508 = OUTLINED_FUNCTION_13_8();
                (qword_1DD6445A0)(v508);
                sub_1DD56BDEC();
                v13 = v509;
                OUTLINED_FUNCTION_64_0(&v647 + 8);
                OUTLINED_FUNCTION_15_8();
                v511 = *(v510 - 256);
                sub_1DD63D1F8();

                sub_1DD63CAE8();
                if ((v512 & 1) == 0)
                {
                  OUTLINED_FUNCTION_44_0();
                  sub_1DD63CAF8();
                }

                OUTLINED_FUNCTION_5_11();
                v385 = v371;
                sub_1DD63CB18();
              }

              OUTLINED_FUNCTION_53_0();
              OUTLINED_FUNCTION_29_1();
              sub_1DD63D248();
              OUTLINED_FUNCTION_16_0(v714);
              OUTLINED_FUNCTION_47_0();
              v513();
              OUTLINED_FUNCTION_16_0(&v711);
              v514(v683, v376);
              v515 = OUTLINED_FUNCTION_3_16();
              v517(v515, *(v516 - 256));
              OUTLINED_FUNCTION_20_3();
              OUTLINED_FUNCTION_42_0();
              v159 = v137;
              goto LABEL_104;
            case 3u:
              OUTLINED_FUNCTION_43_1(&v752);
              OUTLINED_FUNCTION_6_12(&v755);
              v13();
              OUTLINED_FUNCTION_41_0(v385);
              goto LABEL_97;
            default:
              OUTLINED_FUNCTION_16_0(&v729);
              v388 = v697;
              v389(v697, v728, v740);
              OUTLINED_FUNCTION_16_0(&v722);
              OUTLINED_FUNCTION_55_0();
              v371 = *(v390 - 256);
              v391();
              OUTLINED_FUNCTION_12_10();
              OUTLINED_FUNCTION_54_0();
              v392();
              OUTLINED_FUNCTION_53_0();
              OUTLINED_FUNCTION_29_1();
              sub_1DD63D298();
              OUTLINED_FUNCTION_16_0(v721);
              v393 = OUTLINED_FUNCTION_73();
              v374 = v730;
              v394(v393);
              v395 = OUTLINED_FUNCTION_10_12(&v720);
              v383 = v731;
              v396(v395, v371);
              OUTLINED_FUNCTION_16_0(&v730);
              v397 = v388;
              v137 = v383;
              v398(v397, v740);
LABEL_97:
              OUTLINED_FUNCTION_27_3();
              OUTLINED_FUNCTION_42_0();
              goto LABEL_111;
          }
        }
      }

      OUTLINED_FUNCTION_4_12();
      v218 = OUTLINED_FUNCTION_22_3(&v695);
      v219(v218);
      v220 = *v217;
      v221 = OUTLINED_FUNCTION_62_0(&v708);
      (v220)(v221);
      OUTLINED_FUNCTION_63();
      (v729)(v684);
      v222 = OUTLINED_FUNCTION_50_1(v705);
      v159 = v740;
      __swift_storeEnumTagSinglePayload(v222, 1, 3, v740);
      v223 = *(v736 + 52);
      v224 = v736;
      sub_1DD48FBC0(v676);
      OUTLINED_FUNCTION_84(v682);
      sub_1DD3DD8F4(v225, v226);
      switch(__swift_getEnumTagSinglePayload(v224, 3, v159))
      {
        case 1u:
          OUTLINED_FUNCTION_75();
          sub_1DD63D258();
          break;
        case 2u:
          OUTLINED_FUNCTION_50_1(&v654 + 8);
          OUTLINED_FUNCTION_6_12(&v708);
          v220();
          OUTLINED_FUNCTION_41_0(v216);
          OUTLINED_FUNCTION_68();
          OUTLINED_FUNCTION_75();
          sub_1DD3D5CFC();
          sub_1DD390754(v216, &qword_1ECCDEBC0, &qword_1DD6445A0);
          break;
        case 3u:
          OUTLINED_FUNCTION_43_1(&v696);
          OUTLINED_FUNCTION_6_12(&v708);
          v220();
          OUTLINED_FUNCTION_41_0(v224);
          break;
        default:
          OUTLINED_FUNCTION_16_0(&v729);
          v227 = OUTLINED_FUNCTION_79_0();
          v215 = v740;
          v228(v227, v650, v740);
          OUTLINED_FUNCTION_16_0(&v722);
          v229 = v698;
          OUTLINED_FUNCTION_55_0();
          v231 = *(v230 - 256);
          v232();
          OUTLINED_FUNCTION_12_10();
          OUTLINED_FUNCTION_54_0();
          v233();
          OUTLINED_FUNCTION_75();
          sub_1DD63D298();
          OUTLINED_FUNCTION_16_0(v721);
          v234 = OUTLINED_FUNCTION_73();
          v235(v234);
          OUTLINED_FUNCTION_16_0(&v720);
          v236(v229, v231);
          OUTLINED_FUNCTION_16_0(&v730);
          v237(v216, v215);
          break;
      }

      v105 = v659;
      OUTLINED_FUNCTION_31_3();
      if (v223 && (OUTLINED_FUNCTION_50_1(v664), OUTLINED_FUNCTION_56_1(), __swift_storeEnumTagSinglePayload(v260, v261, v262, *(v259 - 256)), v224 = sub_1DD48C3AC(v678, v105), v263 = v105, v105 = v659, sub_1DD3DD958(v263), (v224 & 1) == 0))
      {
        v266 = v640;
        v159 = v664[2];
        v267 = v676;
        OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_75();
        sub_1DD3D5CFC();
        v224 = v266;
        OUTLINED_FUNCTION_31_3();
        sub_1DD390754(v268, &qword_1ECCDEBC0, &qword_1DD6445A0);
        v269 = v267;
        v105 = v659;
        sub_1DD390754(v269, &qword_1ECCDC130, &unk_1DD645260);
      }

      else
      {
        sub_1DD390754(v676, &qword_1ECCDC130, &unk_1DD645260);
        OUTLINED_FUNCTION_84(&v669);
        sub_1DD3D7DA0(v264, v265);
      }

      v270 = OUTLINED_FUNCTION_67_0();
      OUTLINED_FUNCTION_34_3(v270, v271, &v757);
      v272 = v731;
      if (v463)
      {
        sub_1DD3DD958(v678);
        v13 = v272;
        OUTLINED_FUNCTION_8_5();
        v273();
        v274 = *v727;
        v275 = OUTLINED_FUNCTION_60_1();
        v719 = v276;
        (v276)(v275);
        OUTLINED_FUNCTION_39_1(&v756);
        OUTLINED_FUNCTION_7_9();
        v277();
        sub_1DD390754(v224, &qword_1ECCDEBC0, &qword_1DD6445A0);
        OUTLINED_FUNCTION_65_0();
        __swift_storeEnumTagSinglePayload(v278, v279, v280, v215);
      }

      else
      {
        OUTLINED_FUNCTION_16_0(&v738);
        v281 = OUTLINED_FUNCTION_48_0();
        v282(v281);
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_37_3();
        sub_1DD4852E4(v283, v284, v736, v285, v286);
        v287 = *v727;
        (*v727)(v159, v223);
        sub_1DD3DD958(v678);
        v13 = v272;
        OUTLINED_FUNCTION_8_5();
        v288();
        OUTLINED_FUNCTION_62_0(&v708);
        OUTLINED_FUNCTION_31_3();
        v719 = v287;
        v287();
        OUTLINED_FUNCTION_86_0();
        OUTLINED_FUNCTION_7_9();
        v289();
      }

      v290 = v159;
      OUTLINED_FUNCTION_34_3(v105, 1, &v756);
      a3 = v669;
      v291 = v687[0];
      if (!v463)
      {
        OUTLINED_FUNCTION_16_0(&v735);
        v296 = v631;
        v297 = OUTLINED_FUNCTION_52();
        v298 = v743;
        v299(v297);
        v300 = OUTLINED_FUNCTION_50_1(v737);
        (v734)(v300, v296, v298);
        v301 = v708;
        v302 = v731;
        sub_1DD56D300();
        OUTLINED_FUNCTION_58_1();
        v304 = *(v303 - 256);
        v304();
        v305 = v298;
        v159 = v290;
        v137 = v302;
        v13 = v301;
        (v304)(v296, v305);
        v105 = v689;
        v306 = *v689;
        v307 = OUTLINED_FUNCTION_23_3();
        v306(v307);
        v308 = OUTLINED_FUNCTION_57_1();
        v306(v308);
        goto LABEL_159;
      }

      v292 = *v689;
      v293 = OUTLINED_FUNCTION_23_3();
      v292(v293);
      v294 = OUTLINED_FUNCTION_57_1();
      v292(v294);
      sub_1DD390754(v105, &qword_1ECCDC170, &qword_1DD645270);
      v137 = v13;
      v295 = v736;
      OUTLINED_FUNCTION_85();
LABEL_160:
      v39 = v291 + 1;
      v541 = OUTLINED_FUNCTION_43_1(v745);
      (v719)(v541, v744);
      a1 = v680;
      if (v39 == v672)
      {
        v105 = v159;
        v154 = v295;

        v39 = v671;
        goto LABEL_165;
      }
    }

    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    swift_once();
  }

LABEL_166:
  v542 = v756;
  v463 = v154[54] == 1;
  v733 = v756;
  if (v463)
  {
    v543 = *(v756 + 16);
    if (!v543)
    {
      OUTLINED_FUNCTION_66_0();

      v564 = MEMORY[0x1E69E7CC0];
      goto LABEL_196;
    }

    v137 = v756;
    v750 = MEMORY[0x1E69E7CC0];

    sub_1DD640988();
    a3 = sub_1DD55B198(v542);
    v105 = 0;
    v744 = (v137 + 56);
    v546 = v622;
    v738 = (v622 + 16);
    v737[1] = v622 + 8;
    v735 = v544;
    v734 = (v137 + 64);
    v39 = 1;
    v737[0] = v543;
    while (1)
    {
      if (a3 < 0 || a3 >= 1 << *(v137 + 32))
      {
        goto LABEL_203;
      }

      a1 = a3 >> 6;
      if ((*(v744 + (a3 >> 6)) & (1 << a3)) == 0)
      {
        goto LABEL_204;
      }

      if (*(v137 + 36) != v544)
      {
        goto LABEL_205;
      }

      v741 = 1 << a3;
      v740 = v544;
      v739 = v105;
      v547 = v546;
      v548 = *(v137 + 48) + *(v546 + 72) * a3;
      v549 = *(v546 + 16);
      v105 = v137;
      v137 = v743;
      LODWORD(v742) = v545;
      v549(v13, v548, v743);
      v550 = v707;
      v549(v707, v13, v137);
      v551 = *(v626 + 48);
      v552 = *(v626 + 52);
      swift_allocObject();
      sub_1DD57F5F8(v550, 0);
      (*(v547 + 8))(v13, v137);
      sub_1DD640958();
      v553 = *(v750 + 16);
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
      if (v742)
      {
        break;
      }

      v39 = 1;
      v554 = 1 << *(v105 + 32);
      if (a3 >= v554)
      {
        goto LABEL_206;
      }

      v555 = *(v744 + a1);
      if ((v555 & v741) == 0)
      {
        goto LABEL_207;
      }

      v137 = v105;
      if (*(v105 + 36) != v740)
      {
        goto LABEL_208;
      }

      v556 = v555 & (-2 << (a3 & 0x3F));
      if (v556)
      {
        v554 = __clz(__rbit64(v556)) | a3 & 0x7FFFFFFFFFFFFFC0;
        OUTLINED_FUNCTION_85();
        v557 = v737[0];
        v558 = v739;
      }

      else
      {
        v559 = a1 << 6;
        v560 = a1 + 1;
        v561 = &v734[8 * a1];
        v13 = v708;
        v557 = v737[0];
        v558 = v739;
        while (v560 < (v554 + 63) >> 6)
        {
          v563 = *v561++;
          v562 = v563;
          v559 += 64;
          ++v560;
          if (v563)
          {
            sub_1DD3AA558(a3, v740, 0);
            v554 = __clz(__rbit64(v562)) + v559;
            goto LABEL_185;
          }
        }

        sub_1DD3AA558(a3, v740, 0);
LABEL_185:
        v546 = v622;
      }

      v545 = 0;
      v105 = v558 + 1;
      a3 = v554;
      v544 = v735;
      a1 = MEMORY[0x1E69E7CA0];
      if (v105 == v557)
      {
        OUTLINED_FUNCTION_66_0();

        v564 = v750;
        goto LABEL_196;
      }
    }

    __break(1u);
  }

  else
  {
    v565 = a3;
    v566 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
    swift_beginAccess();
    v567 = v618;
    v744 = *(v618 + 16);
    v744(v39, a3 + v566, v137);

    sub_1DD48E1B8(v568);

    v569 = *(v567 + 8);
    v618 = v567 + 8;
    v742 = v569;
    v569(v39, v137);
    v570 = v643;

    v571 = OUTLINED_FUNCTION_70();
    v572 = sub_1DD640368();

    if (os_log_type_enabled(v571, v572))
    {
      v137 = OUTLINED_FUNCTION_62();
      v741 = swift_slowAlloc();
      v749 = v741;
      *v137 = 134218498;
      *(v137 + 4) = *(v542 + 16);
      *(v137 + 12) = 2080;
      sub_1DD3DDA14(&qword_1ECCDC180, MEMORY[0x1E6968130]);

      OUTLINED_FUNCTION_86_0();
      v574 = sub_1DD640278();
      v576 = v575;

      v577 = sub_1DD39565C(v574, v576, &v749);

      *(v137 + 14) = v577;
      *(v137 + 22) = 2080;
      v570 = v643;
      type metadata accessor for DateTimeConstraint();
      sub_1DD3DDA14(&qword_1ECCDC188, type metadata accessor for DateTimeConstraint);
      v578 = sub_1DD640278();
      v580 = sub_1DD39565C(v578, v579, &v749);

      *(v137 + 24) = v580;
      v565 = v724;
      _os_log_impl(&dword_1DD38D000, v571, v572, "CalendarComponentConstraintSolver: before filtering, suggestions are %ld %s, filtering by %s", v137, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_26_5();
      OUTLINED_FUNCTION_0_1();
    }

    v581 = *(v736 + 49);
    v582 = v671;
    v744(v671, v565 + v566, v137);

    v583 = sub_1DD5A83BC(v570, v581, v582, v542);

    v742(v582, v137);
    v584 = sub_1DD593F94(v583);
    v585 = *(v584 + 16);
    if (v585)
    {
      v749 = MEMORY[0x1E69E7CC0];
      sub_1DD640988();
      v586 = v622 + 16;
      v744 = *(v622 + 16);
      v587 = (*(v622 + 80) + 32) & ~*(v622 + 80);
      v740 = v584;
      v588 = v584 + v587;
      v742 = *(v622 + 72);
      v741 = v622 + 8;
      v589 = v707;
      v590 = v708;
      v591 = v626;
      do
      {
        v592 = v743;
        v593 = v744;
        v744(v590, v588, v743);
        v594 = OUTLINED_FUNCTION_52();
        v593(v594);
        v595 = *(v591 + 48);
        v596 = *(v591 + 52);
        swift_allocObject();
        sub_1DD57F5F8(v589, 0);
        OUTLINED_FUNCTION_16_0(v754);
        v597(v590, v592);
        sub_1DD640958();
        v598 = v586;
        v599 = *(v749 + 16);
        sub_1DD640998();
        v586 = v598;
        v591 = v626;
        sub_1DD6409A8();
        sub_1DD640968();
        v588 += v742;
        --v585;
      }

      while (v585);
      OUTLINED_FUNCTION_66_0();

      v564 = v749;
      goto LABEL_197;
    }

    OUTLINED_FUNCTION_66_0();

    v564 = MEMORY[0x1E69E7CC0];
LABEL_196:
    v591 = v626;
LABEL_197:
    *v615 = v564;
    v600 = MEMORY[0x1E12B2430](v564, v591);
    v601 = sub_1DD3CC020(v564);

    v602 = OUTLINED_FUNCTION_70();
    v603 = sub_1DD640368();

    if (os_log_type_enabled(v602, v603))
    {
      v604 = OUTLINED_FUNCTION_62();
      v744 = v600;
      v605 = v604;
      v749 = swift_slowAlloc();
      *v605 = 136315650;
      v606 = sub_1DD48E004();
      v608 = sub_1DD39565C(v606, v607, &v749);

      *(v605 + 4) = v608;
      *(v605 + 12) = 2048;
      *(v605 + 14) = v601;
      *(v605 + 22) = 2080;
      v609 = OUTLINED_FUNCTION_62_0(&v757);
      v612 = sub_1DD39565C(v609, v610, v611);

      *(v605 + 24) = v612;
      _os_log_impl(&dword_1DD38D000, v602, v603, "CalendarComponentConstraintSolver: solved constraint %s, inputs %ld: %s", v605, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {
    }
  }
}