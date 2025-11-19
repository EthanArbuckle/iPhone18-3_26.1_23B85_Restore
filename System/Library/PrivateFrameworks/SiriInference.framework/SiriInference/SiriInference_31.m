uint64_t ResolvedSiriKitContact.init(person:personType:resolutionSignals:forcePromptType:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  if ((a2 - 1) >= 0xB)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  *(a5 + 28) = v6;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  return result;
}

void sub_1DD5B43E8(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v39 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1C8, qword_1DD64ADD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  memcpy(v41, a1, 0x108uLL);
  v15 = type metadata accessor for ContactResolverRunTimeData(0);
  sub_1DD4DDC08(a2 + v15[14], v10, &qword_1ECCDC1C8, qword_1DD64ADD0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1DD4DDC08(a2 + v15[10], v14, &qword_1ECCDBEE0, &unk_1DD645510);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      sub_1DD390754(v10, &qword_1ECCDC1C8, qword_1DD64ADD0);
    }
  }

  else
  {
    sub_1DD4DDCBC(v10, v14, &qword_1ECCDBEE0, &unk_1DD645510);
  }

  v16 = sub_1DD5B5940(v41, v14, v39, &qword_1ECCDBEE0, &unk_1DD645510);
  sub_1DD390754(v14, &qword_1ECCDBEE0, &unk_1DD645510);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v17 = sub_1DD63F9F8();
  __swift_project_value_buffer(v17, qword_1EE16F068);
  v18 = v16;
  v19 = sub_1DD63F9D8();
  v20 = sub_1DD640368();

  v21 = os_log_type_enabled(v19, v20);
  v38 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v40 = v18;
    v41[0] = v23;
    *v22 = 136315138;
    sub_1DD39638C(0, qword_1EE166068, 0x1E696E940);
    v24 = v18;
    v25 = sub_1DD63FE38();
    v27 = a2;
    v28 = a4;
    v29 = v15;
    v30 = sub_1DD39565C(v25, v26, v41);

    *(v22 + 4) = v30;
    v15 = v29;
    a4 = v28;
    a2 = v27;
    _os_log_impl(&dword_1DD38D000, v19, v20, "person: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E12B3DA0](v23, -1, -1);
    MEMORY[0x1E12B3DA0](v22, -1, -1);
  }

  v31 = sub_1DD45E2B8();
  v32 = type metadata accessor for ContactResolverConfig(0);
  v33 = 0;
  if (*(v39 + *(v32 + 72)) == 1)
  {
    sub_1DD45DC70();
  }

  v34 = *(a2 + v15[13]);
  v35 = v31 - 1;
  if (v35 >= 0xB)
  {
    v36 = 0;
  }

  else
  {
    v36 = (v35 << 32) + 0x100000000;
  }

  *a4 = v38;
  a4[1] = v31;
  a4[2] = v33;
  a4[3] = v36 | v34;
}

uint64_t SiriKitContactResolver.findMatches(queries:config:)(uint64_t a1, uint64_t a2)
{
  v5 = *__swift_project_boxed_opaque_existential_1((v2 + 8), *(v2 + 32));
  sub_1DD441958();
  if (!v3)
  {
    v7 = v6;
    MEMORY[0x1EEE9AC00](v6);

    a2 = sub_1DD5B2650(v8, v7, sub_1DD5B5F40);
  }

  return a2;
}

char *sub_1DD5B4890(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[1] = a4;
  v31[2] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v31 - v9;
  v31[0] = type metadata accessor for Contact();
  v11 = *(v31[0] - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v31[0]);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v33, a1, sizeof(v33));
  v15 = *(a2 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v32[0] = MEMORY[0x1E69E7CC0];
    sub_1DD42B5EC(0, v15, 0);
    v16 = v32[0];
    v17 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v18 = *(v7 + 72);
    do
    {
      sub_1DD4DDC08(v17, v10, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD5B618C(v10, v14, type metadata accessor for Contact);
      sub_1DD390754(v10, &qword_1ECCDBBE8, &qword_1DD644470);
      v32[0] = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1DD42B5EC(v19 > 1, v20 + 1, 1);
        v16 = v32[0];
      }

      *(v16 + 16) = v20 + 1;
      sub_1DD3C95D4(v14, v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20);
      v17 += v18;
      --v15;
    }

    while (v15);
  }

  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DD63F9F8();
  __swift_project_value_buffer(v21, qword_1EE16F068);

  v22 = sub_1DD63F9D8();
  v23 = sub_1DD640368();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32[0] = v25;
    *v24 = 136315138;
    v26 = MEMORY[0x1E12B2430](v16, v31[0]);
    v28 = sub_1DD39565C(v26, v27, v32);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1DD38D000, v22, v23, "contacts: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1E12B3DA0](v25, -1, -1);
    MEMORY[0x1E12B3DA0](v24, -1, -1);
  }

  if (*(v16 + 16))
  {
    memcpy(v32, v33, sizeof(v32));
    v29 = sub_1DD5B4E1C(v32, v16, 2);
  }

  else
  {

    memcpy(v32, v33, sizeof(v32));
    return sub_1DD5B4C70(v32);
  }

  return v29;
}

void *sub_1DD5B4C70(const void *a1)
{
  v2 = type metadata accessor for Contact();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v14, a1, sizeof(v14));
  memcpy(v13, a1, sizeof(v13));
  sub_1DD3C9478(v14, &v12);
  sub_1DD40ED6C(v13, v5);
  v6 = Contact.makeINPersons(explode:)(1);
  if (sub_1DD3CC020(v6) <= 1)
  {
    sub_1DD408BFC(0);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1E12B2C10](0, v6);
    }

    else
    {
      v9 = *(v6 + 32);
    }

    v8 = v9;

    sub_1DD5B61EC(v5, type metadata accessor for Contact);
  }

  else
  {
    sub_1DD5B61EC(v5, type metadata accessor for Contact);
    sub_1DD408BFC(0);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E12B2C10](0, v6);
    }

    else
    {
      v7 = *(v6 + 32);
    }

    v8 = v7;
  }

  [v8 setSourceAppBundleIdentifier_];
  sub_1DD5B5DB4(MEMORY[0x1E69E7CC0], v8);
  return v8;
}

char *sub_1DD5B4E1C(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Contact();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v80 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v79 - v11;
  memcpy(v93, a1, 0x108uLL);
  v12 = *(a2 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v14 = 0;
    v86 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v15 = *(v7 + 72);
    v84 = a3;
    v85 = v15;
    v81 = v12;
    do
    {
      sub_1DD5B618C(v86 + v85 * v14, v90, type metadata accessor for Contact);
      v16 = Contact.makeINPersons(explode:)(v12 == 1);
      a3 = v16;
      i = v16 >> 62;
      if (v16 >> 62)
      {
        v18 = sub_1DD6407B8();
      }

      else
      {
        v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = v13 >> 62;
      if (v13 >> 62)
      {
        v20 = sub_1DD6407B8();
      }

      else
      {
        v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = v20 + v18;
      if (__OFADD__(v20, v18))
      {
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v19)
        {
          goto LABEL_15;
        }

        v22 = v13 & 0xFFFFFFFFFFFFFF8;
        if (v21 <= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v19)
        {
LABEL_15:
          sub_1DD6407B8();
          goto LABEL_16;
        }

        v22 = v13 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = *(v22 + 16);
LABEL_16:
      v13 = sub_1DD640918();
      v22 = v13 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
      v88 = v14;
      v89 = v18;
      v24 = *(v22 + 16);
      v25 = (*(v22 + 24) >> 1) - v24;
      v26 = v22 + 8 * v24;
      v87 = v22;
      if (i)
      {
        if (a3 < 0)
        {
          i = a3;
        }

        else
        {
          i = a3 & 0xFFFFFFFFFFFFFF8;
        }

        v28 = sub_1DD6407B8();
        if (!v28)
        {
LABEL_34:

          a3 = v84;
          if (v89 > 0)
          {
            goto LABEL_86;
          }

          goto LABEL_35;
        }

        v29 = v28;
        v30 = sub_1DD6407B8();
        if (v25 < v30)
        {
          goto LABEL_90;
        }

        if (v29 < 1)
        {
          goto LABEL_92;
        }

        v82 = v30;
        v83 = v13;
        v31 = v26 + 32;
        sub_1DD5B6244();
        for (i = 0; i != v29; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF420, &unk_1DD65F3E0);
          v32 = sub_1DD5B5E98(v92, i, a3);
          v34 = *v33;
          v32(v92, 0);
          *(v31 + 8 * i) = v34;
        }

        v27 = v82;
        v13 = v83;
        v12 = v81;
      }

      else
      {
        i = a3 & 0xFFFFFFFFFFFFFF8;
        v27 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v27)
        {
          goto LABEL_34;
        }

        if (v25 < v27)
        {
          goto LABEL_91;
        }

        sub_1DD39638C(0, qword_1EE166068, 0x1E696E940);
        swift_arrayInitWithCopy();
      }

      a3 = v84;
      if (v27 < v89)
      {
        goto LABEL_86;
      }

      if (v27 > 0)
      {
        v35 = *(v87 + 16);
        v36 = __OFADD__(v35, v27);
        v37 = v35 + v27;
        if (v36)
        {
          goto LABEL_87;
        }

        *(v87 + 16) = v37;
      }

LABEL_35:
      v14 = v88 + 1;
      sub_1DD5B61EC(v90, type metadata accessor for Contact);
    }

    while (v14 != v12);
  }

  memcpy(v92, v93, sizeof(v92));
  sub_1DD3C9478(v93, &v91);
  v38 = v80;
  sub_1DD40ED6C(v92, v80);
  i = Contact.makeINPersons(explode:)(1);
  if (sub_1DD3CC020(i) <= 1)
  {
    sub_1DD408BFC(0);
    if ((i & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x1E12B2C10](0, i);
    }

    else
    {
      v41 = *(i + 32);
    }

    v40 = v41;

    sub_1DD5B61EC(v80, type metadata accessor for Contact);
    goto LABEL_46;
  }

  sub_1DD5B61EC(v38, type metadata accessor for Contact);
  sub_1DD408BFC(0);
  if ((i & 0xC000000000000001) != 0)
  {
    goto LABEL_94;
  }

  for (j = *(i + 32); ; j = MEMORY[0x1E12B2C10](0, i))
  {
    v40 = j;

LABEL_46:
    [v40 setSourceAppBundleIdentifier_];
    v42 = sub_1DD3CC020(v13);
    if (!v42)
    {

      v47 = MEMORY[0x1E69E7CC0];
      goto LABEL_52;
    }

    v43 = v42;
    v92[0] = MEMORY[0x1E69E7CC0];
    i = v92;
    sub_1DD640988();
    if ((v43 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

  v90 = v40;
  v44 = 32;
  do
  {
    [objc_allocWithZone(MEMORY[0x1E696E9C0]) initWithPerson:*(v13 + v44) recommendation:a3];
    sub_1DD640958();
    v45 = v13;
    v46 = *(v92[0] + 16);
    sub_1DD640998();
    v13 = v45;
    sub_1DD6409A8();
    sub_1DD640968();
    v44 += 8;
    --v43;
  }

  while (v43);

  v47 = v92[0];
  v40 = v90;
LABEL_52:
  sub_1DD5B5DB4(v47, v40);
  v48 = [v40 relationship];
  if (v48)
  {
  }

  else
  {
    v66 = sub_1DD3CA3EC(v40, &selRef_scoredAlternatives, &qword_1EE160210, 0x1E696E9C0);
    if (v66)
    {
      v67 = v66;
      if (sub_1DD3CC020(v66))
      {
        sub_1DD408BFC(0);
        if ((v67 & 0xC000000000000001) != 0)
        {
          v68 = MEMORY[0x1E12B2C10](0, v67);
        }

        else
        {
          v68 = *(v67 + 32);
        }

        v69 = v68;

        v13 = [v69 person];

        v70 = [v13 relationship];
        if (v70)
        {
          [v40 setRelationship_];
        }
      }

      else
      {
      }
    }
  }

  v49 = [v40 personHandle];
  if (v49)
  {
    v50 = v49;
    v51 = [v49 label];
    if (v51)
    {

      v52 = sub_1DD3CA3EC(v40, &selRef_siriMatches, qword_1EE166068, 0x1E696E940);
      if (v52)
      {
        i = v52;
        v88 = v50;
        v90 = v40;
        v53 = sub_1DD3CC020(v52);
        v54 = 0;
        v89 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          while (1)
          {
            if (v53 == v54)
            {

              if (*(v89 + 16))
              {
                v71 = *(v89 + 32);

                v50 = v88;
                v72 = sub_1DD4E098C(v88);
                v74 = v73;
                v75 = [v50 type];
                objc_allocWithZone(MEMORY[0x1E696E948]);
                v76 = v71;
                v77 = sub_1DD5B5CD8(v72, v74, v75, v71);
                v40 = v90;
                [v90 setPersonHandle_];
              }

              else
              {

                v40 = v90;
                v50 = v88;
              }

              goto LABEL_82;
            }

            if ((i & 0xC000000000000001) != 0)
            {
              v55 = MEMORY[0x1E12B2C10](v54, i);
            }

            else
            {
              if (v54 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_89;
              }

              v55 = *(i + 8 * v54 + 32);
            }

            v13 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              goto LABEL_88;
            }

            v56 = v55;
            v57 = [v56 personHandle];
            if (v57)
            {
              break;
            }

LABEL_71:
            ++v54;
          }

          a3 = v57;
          v58 = [v57 label];

          if (!v58)
          {
            goto LABEL_71;
          }

          v59 = v89;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = *(v59 + 16);
            sub_1DD3C0D6C();
            v59 = v64;
          }

          v61 = *(v59 + 16);
          v60 = *(v59 + 24);
          v89 = v59;
          if (v61 >= v60 >> 1)
          {
            sub_1DD3C0D6C();
            v89 = v65;
          }

          v62 = v89;
          *(v89 + 16) = v61 + 1;
          *(v62 + 8 * v61 + 32) = v58;
          v54 = v13;
        }
      }
    }

LABEL_82:
  }

  return v40;
}

void SiriKitContactResolver.correctResolution(queries:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = *__swift_project_boxed_opaque_existential_1((v20 + 8), *(v20 + 32));
  sub_1DD43FF34();
  if (!v21)
  {
    v29 = v28;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v30 = sub_1DD63F9F8();
    __swift_project_value_buffer(v30, qword_1EE16F068);

    v31 = sub_1DD63F9D8();
    v32 = sub_1DD640368();

    if (os_log_type_enabled(v31, v32))
    {
      v40 = OUTLINED_FUNCTION_54();
      v41 = OUTLINED_FUNCTION_62();
      a10 = v41;
      *v40 = 136315138;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
      v34 = MEMORY[0x1E12B2430](v29, v33);
      v36 = v32;
      v37 = sub_1DD39565C(v34, v35, &a10);

      *(v40 + 4) = v37;
      _os_log_impl(&dword_1DD38D000, v31, v36, "corrections: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    MEMORY[0x1EEE9AC00](v38);
    OUTLINED_FUNCTION_10_52();
    *(v39 - 16) = v24;
    *(v39 - 8) = v26;
    sub_1DD5B2260();
  }

  OUTLINED_FUNCTION_86();
}

void *sub_1DD5B5940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v28[1] = a3;
  v8 = type metadata accessor for Contact();
  v9 = OUTLINED_FUNCTION_51(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_7(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v28 - v19);
  sub_1DD4DDC08(a2, v28 - v19, a4, a5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD3C95D4(v20, v14);
      OUTLINED_FUNCTION_21_33();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD58, &unk_1DD649DD0);
      v26 = OUTLINED_FUNCTION_24_22();
      OUTLINED_FUNCTION_7_60(v26, xmmword_1DD643F90);
      v22 = v26;
      v23 = 1;
      goto LABEL_6;
    case 2u:
      v24 = *v20;
      OUTLINED_FUNCTION_21_33();
      v25 = sub_1DD5B4E1C(v29, v24, 2);

      break;
    case 3u:
      OUTLINED_FUNCTION_21_33();
      v25 = sub_1DD5B4C70(v29);
      break;
    default:
      sub_1DD3C95D4(v20, v14);
      OUTLINED_FUNCTION_21_33();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD58, &unk_1DD649DD0);
      v21 = OUTLINED_FUNCTION_24_22();
      OUTLINED_FUNCTION_7_60(v21, xmmword_1DD643F90);
      v22 = v21;
      v23 = 0;
LABEL_6:
      v25 = sub_1DD5B4E1C(v29, v22, v23);
      swift_setDeallocating();
      sub_1DD46CC04();
      sub_1DD5B61EC(v14, type metadata accessor for Contact);
      break;
  }

  return v25;
}

void ResolvedSiriKitContact.init(person:personType:)(uint64_t a1@<X8>, uint64_t a2@<X0>, int a3@<W1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if ((a3 - 1) >= 0xB)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  *(a1 + 28) = v3;
  *(a1 + 16) = 0;
  OUTLINED_FUNCTION_13_46(a1);
}

void ResolvedSiriKitContact.init(person:personType:resolutionSignals:)(uint64_t a1@<X8>, uint64_t a2@<X0>, int a3@<W1>, uint64_t a4@<X2>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if ((a3 - 1) >= 0xB)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  *(a1 + 28) = v4;
  *(a1 + 16) = a4;
  OUTLINED_FUNCTION_13_46(a1);
}

void ResolvedSiriKitContact.init(person:recipientType:)(uint64_t a1@<X8>, uint64_t a2@<X0>, int a3@<W1>)
{
  *a1 = a2;
  *(a1 + 28) = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  OUTLINED_FUNCTION_13_46(a1);
}

id sub_1DD5B5CD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1DD63FDA8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithValue:v8 type:a3 label:a4];

  return v9;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_16_48(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_1DD5B5DB4(uint64_t a1, void *a2)
{
  sub_1DD39638C(0, &qword_1EE160210, 0x1E696E9C0);
  v3 = sub_1DD6400F8();

  [a2 setScoredAlternatives_];
}

uint64_t sub_1DD5B5E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_3_85(a1, a2, a3);
  sub_1DD408BF4(v5);
  v6 = OUTLINED_FUNCTION_2_101();
  sub_1DD408BFC(v6);
  if (v4)
  {
    v7 = OUTLINED_FUNCTION_30_19();
  }

  else
  {
    OUTLINED_FUNCTION_25_23();
  }

  *v3 = v7;
  return OUTLINED_FUNCTION_14_42();
}

uint64_t sub_1DD5B5E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_3_85(a1, a2, a3);
  sub_1DD408BF4(v7);
  v8 = OUTLINED_FUNCTION_2_101();
  sub_1DD408BFC(v8);
  if (v6)
  {
    v9 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    OUTLINED_FUNCTION_25_23();
  }

  *v3 = v9;
  return OUTLINED_FUNCTION_14_42();
}

void *sub_1DD5B5F00(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD5B5F48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1DD5B5F88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD5B5FD4(uint64_t *a1, int a2)
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

uint64_t sub_1DD5B6014(uint64_t result, int a2, int a3)
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

uint64_t sub_1DD5B6064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_3_85(a1, a2, a3);
  sub_1DD408BF4(v7);
  v8 = OUTLINED_FUNCTION_2_101();
  sub_1DD408BFC(v8);
  if (v6)
  {
    v9 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    OUTLINED_FUNCTION_25_23();
  }

  *v3 = v9;
  return OUTLINED_FUNCTION_14_42();
}

uint64_t sub_1DD5B60D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_3_85(a1, a2, a3);
  sub_1DD408BF4(v5);
  v6 = OUTLINED_FUNCTION_2_101();
  sub_1DD408BFC(v6);
  if (v4)
  {
    v7 = OUTLINED_FUNCTION_30_19();
  }

  else
  {
    OUTLINED_FUNCTION_25_23();
  }

  *v3 = v7;
  return OUTLINED_FUNCTION_14_42();
}

unint64_t sub_1DD5B6138()
{
  result = qword_1ECCDF438;
  if (!qword_1ECCDF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF438);
  }

  return result;
}

uint64_t sub_1DD5B618C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD5B61EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1DD5B6244()
{
  result = qword_1ECCDF440;
  if (!qword_1ECCDF440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF420, &unk_1DD65F3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF440);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_22()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_29_23()
{
  v2 = *(*(v0 - 72) + 16) + 1;

  sub_1DD3C0CB0();
}

uint64_t OUTLINED_FUNCTION_30_19()
{
  v3 = *(v0 + 8 * v1 + 32);
}

void OUTLINED_FUNCTION_31_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_33_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t type metadata accessor for SiriRemembersContactSignalProvider()
{
  result = qword_1EE163468;
  if (!qword_1EE163468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD5B640C()
{
  v0 = sub_1DD63F308();
  if (v1 <= 0x3F)
  {
    sub_1DD4F9804();
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_1DD5B64C8();
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

void sub_1DD5B64C8()
{
  if (!qword_1EE162E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCCC8, &unk_1DD64AF38);
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE162E38);
    }
  }
}

void sub_1DD5B652C(uint64_t *a1)
{
  v265 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF458, &qword_1DD65F4F0);
  v2 = OUTLINED_FUNCTION_0(v1);
  v255 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_25(&v248 - v6);
  v288 = sub_1DD63F2B8();
  v7 = OUTLINED_FUNCTION_0(v288);
  v267 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25(&v248 - v20);
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF460, &unk_1DD65F4F8);
  v21 = OUTLINED_FUNCTION_0(v286);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25(&v248 - v26);
  v289 = sub_1DD63F028();
  v27 = OUTLINED_FUNCTION_0(v289);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1_4();
  v34 = v32 - v33;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v248 - v37;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_25(&v248 - v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v292 = *(v43 - 8);
  v44 = *(v292 + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v46 = &v248 - v45;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v47 = OUTLINED_FUNCTION_0(v266);
  v269 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_1_4();
  v53 = v51 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v293 = &v248 - v55;
  if (qword_1EE165FB0 != -1)
  {
    goto LABEL_109;
  }

  while (1)
  {
    v56 = sub_1DD63F9F8();
    v260 = __swift_project_value_buffer(v56, qword_1EE16F068);
    v57 = sub_1DD63F9D8();
    v58 = sub_1DD640358();
    v59 = os_log_type_enabled(v57, v58);
    v273 = v29;
    v300 = v53;
    if (v59)
    {
      v60 = OUTLINED_FUNCTION_9();
      v53 = v38;
      *v60 = 0;
      _os_log_impl(&dword_1DD38D000, v57, v58, "SiriRemembersContactSignalProvider emit trigger logic", v60, 2u);
      v29 = v273;
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v61 = type metadata accessor for SiriRemembersContactSignalProvider();
    v62 = v268;
    sub_1DD4DDC08(v268 + *(v61 + 28), &v302, &qword_1ECCDC250, &qword_1DD645B10);
    v256 = v1;
    v258 = v61;
    if (v303)
    {
      v63 = __swift_project_boxed_opaque_existential_1(&v302, v303);
      v64 = v62 + *(v61 + 32);
      v65 = *v63;
      sub_1DD601998(1, *v64, *(v64 + 8));
      __swift_destroy_boxed_opaque_existential_1(&v302);
    }

    else
    {
      sub_1DD390754(&v302, &qword_1ECCDC250, &qword_1DD645B10);
    }

    v66 = v289;
    v1 = *v265;
    v67 = *(*v265 + 16);
    v68 = MEMORY[0x1E69E7CC0];
    v249 = v34;
    v272 = v1;
    if (!v67)
    {
      break;
    }

    if (v67 == 1)
    {
      v69 = OUTLINED_FUNCTION_21_34();
      v70 = sub_1DD640368();
      if (OUTLINED_FUNCTION_5_6(v70))
      {
        v71 = OUTLINED_FUNCTION_9();
        *v71 = 0;
        v72 = "one contact entity match group to resolve. relying on individual signals.";
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    v248 = v38;
    v93 = 0;
    v271 = v1 + 32;
    v294 = (v293 + 272);
    v279 = (v29 + 8);
    v278 = *MEMORY[0x1E69D29C0];
    v277 = (v23 + 104);
    v276 = (v23 + 8);
    v275 = v29 + 32;
    v290 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CC0];
    v270 = v67;
    while (v93 < *(v1 + 16))
    {
      v291 = v38;
      v274 = v93;
      v94 = *(v271 + 8 * v93);
      v95 = *(v94 + 16);
      if (v95)
      {
        v302 = v68;

        sub_1DD42A2D4();
        v96 = v302;
        v97 = *(v269 + 80);
        OUTLINED_FUNCTION_24_0();
        v99 = v94 + v98;
        v304 = *(v100 + 72);
        v297 = v94 + v98;
        *&v298 = v94;
        v68 = &qword_1ECCDBBE8;
        do
        {
          v101 = v300;
          sub_1DD4DDC08(v99, v300, &qword_1ECCDBBE8, &qword_1DD644470);
          v102 = *v101;
          v103 = v101[1];

          v104 = sub_1DD390754(v101, &qword_1ECCDBBE8, &qword_1DD644470);
          v302 = v96;
          v106 = *(v96 + 16);
          v105 = *(v96 + 24);
          if (v106 >= v105 >> 1)
          {
            OUTLINED_FUNCTION_1_0(v105);
            sub_1DD42A2D4();
            v68 = &qword_1ECCDBBE8;
            v96 = v302;
          }

          *(v96 + 16) = v106 + 1;
          v107 = v96 + 16 * v106;
          *(v107 + 32) = v102;
          *(v107 + 40) = v103;
          v99 += v304;
          --v95;
        }

        while (v95);
        v280 = v96;
        v108 = v298;
        v296 = *(v298 + 16);
        if (v296)
        {
          v109 = 0;
          v295 = *(v266 + 36);
          v110 = MEMORY[0x1E69E7CC0];
          v111 = MEMORY[0x1E69E7CC0];
          v112 = v293;
          while (1)
          {
            if (v109 >= *(v108 + 2))
            {
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
              goto LABEL_84;
            }

            v301 = v109;
            sub_1DD4DDC08(v297 + v304 * v109, v112, &qword_1ECCDBBE8, &qword_1DD644470);
            v113 = *&v294[v295];
            v114 = *(v113 + 16);
            if (v114)
            {
              v299 = v111;
              v302 = v110;
              sub_1DD42A2D4();
              v68 = v302;
              v115 = *(v292 + 80);
              OUTLINED_FUNCTION_24_0();
              v117 = v113 + v116;
              v119 = *(v118 + 72);
              do
              {
                sub_1DD4DDC08(v117, v46, &qword_1ECCDBBD8, &unk_1DD645A90);
                v121 = *(v46 + 7);
                v120 = *(v46 + 8);

                sub_1DD390754(v46, &qword_1ECCDBBD8, &unk_1DD645A90);
                v302 = v68;
                v123 = v68[2];
                v122 = v68[3];
                if (v123 >= v122 >> 1)
                {
                  OUTLINED_FUNCTION_1_0(v122);
                  sub_1DD42A2D4();
                  v68 = v302;
                }

                v68[2] = v123 + 1;
                v124 = &v68[2 * v123];
                v124[4] = v121;
                v124[5] = v120;
                v117 += v119;
                --v114;
              }

              while (v114);
              v112 = v293;
              v104 = sub_1DD390754(v293, &qword_1ECCDBBE8, &qword_1DD644470);
              v110 = MEMORY[0x1E69E7CC0];
              v111 = v299;
            }

            else
            {
              v104 = sub_1DD390754(v112, &qword_1ECCDBBE8, &qword_1DD644470);
              v68 = v110;
            }

            v125 = v68[2];
            v108 = v111[2];
            v126 = v108 + v125;
            if (__OFADD__(v108, v125))
            {
              goto LABEL_82;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v126 > (v111[3] >> 1))
            {
              sub_1DD3BE2A4();
              v111 = isUniquelyReferenced_nonNull_native;
            }

            if (v68[2])
            {
              if (((v111[3] >> 1) - v111[2]) < v125)
              {
                __break(1u);
                goto LABEL_87;
              }

              swift_arrayInitWithCopy();

              v68 = &qword_1ECCDBBE8;
              if (v125)
              {
                v128 = v111[2];
                v129 = __OFADD__(v128, v125);
                v130 = v128 + v125;
                if (v129)
                {
                  __break(1u);
LABEL_99:
                  v240 = v104;

                  v241 = v272;
                  v242 = *(v272 + 16);
                  if (v242)
                  {
                    v243 = 0;
                    v244 = 32;
                    while (1)
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_1DD586A30(v241);
                        v241 = v245;
                      }

                      if (v243 >= *(v241 + 16))
                      {
                        break;
                      }

                      ++v243;
                      sub_1DD5B81B8((v241 + v244), v292, v281, v280, v240);
                      v244 += 8;
                      if (v242 == v243)
                      {

                        OUTLINED_FUNCTION_22_30();

                        *v265 = v241;
                        goto LABEL_107;
                      }
                    }

                    __break(1u);
                  }

                  else
                  {

                    OUTLINED_FUNCTION_22_30();

LABEL_107:
                    OUTLINED_FUNCTION_15_47();
                    v246 = v304;
                    v304();
                    v247 = OUTLINED_FUNCTION_12_43();
                    v246(v247, v242);
                  }

                  return;
                }

                v111[2] = v130;
              }
            }

            else
            {

              v68 = &qword_1ECCDBBE8;
              if (v125)
              {
                goto LABEL_83;
              }
            }

            v109 = (v301 + 1);
            v108 = v298;
            if (v301 + 1 == v296)
            {
              v299 = v111;

              v66 = v289;
              v29 = v273;
              goto LABEL_48;
            }
          }
        }

        v66 = v289;
        v29 = v273;
        v68 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v131 = *(v271 + 8 * v93);

        v280 = v68;
      }

      v299 = v68;
LABEL_48:
      v132 = v280;
      if (!*(v280 + 16))
      {

        v69 = OUTLINED_FUNCTION_21_34();
        v195 = sub_1DD640368();
        if (OUTLINED_FUNCTION_5_6(v195))
        {
          v71 = OUTLINED_FUNCTION_9();
          *v71 = 0;
          v72 = "one candidateSet has no contact ids. use individual signals for all candidates.";
LABEL_71:
          _os_log_impl(&dword_1DD38D000, v69, v68, v72, v71, 2u);
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
        }

LABEL_72:

        v196 = OUTLINED_FUNCTION_18_36();
        sub_1DD5B8114(v196);
        return;
      }

      v133 = v283;
      sub_1DD63F018();
      v134 = v282;
      sub_1DD63F008();
      v135 = v66;
      v136 = *v279;
      (*v279)(v133, v135);
      v137 = v285;
      *v285 = v132;
      v138 = v286;
      v304 = *v277;
      (v304)(v137, v278, v286);
      sub_1DD63EFF8();
      v301 = *v276;
      (v301)(v137, v138);
      v136(v134, v135);
      v139 = swift_isUniquelyReferenced_nonNull_native();
      if (v139)
      {
        v142 = v291;
      }

      else
      {
        OUTLINED_FUNCTION_19_35(v139, v140, v141, v291);
        v142 = v161;
      }

      v144 = *(v142 + 16);
      v143 = *(v142 + 24);
      if (v144 >= v143 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v143);
        sub_1DD3BF964();
        v142 = v162;
      }

      *(v142 + 16) = v144 + 1;
      v145 = *(v29 + 80);
      OUTLINED_FUNCTION_24_0();
      v291 = v146;
      v297 = v147;
      v34 = *(v29 + 72);
      v148 = v146 + v147 + v34 * v144;
      v149 = v289;
      *&v298 = *(v29 + 32);
      (v298)(v148, v281, v289);
      v150 = v283;
      sub_1DD63F018();
      v151 = v282;
      sub_1DD63F008();
      v136(v150, v149);
      v53 = v285;
      *v285 = v299;
      v152 = v286;
      (v304)(v53, v278, v286);
      sub_1DD63EFF8();
      (v301)(v53, v152);
      v136(v151, v149);
      v153 = swift_isUniquelyReferenced_nonNull_native();
      if ((v153 & 1) == 0)
      {
        OUTLINED_FUNCTION_19_35(v153, v154, v155, v290);
        v290 = v163;
      }

      v1 = v272;
      v66 = v289;
      v157 = *(v290 + 16);
      v156 = *(v290 + 24);
      v158 = v274;
      v29 = v273;
      if (v157 >= v156 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v156);
        sub_1DD3BF964();
        v158 = v274;
        v290 = v164;
      }

      v159 = v290;
      *(v290 + 16) = v157 + 1;
      v160 = v159 + v297 + v157 * v34;
      v23 = v158 + 1;
      (v298)(v160, v284, v66);
      v93 = v23;
      v38 = v291;
      v68 = MEMORY[0x1E69E7CC0];
      if (v23 == v270)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_109:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v248 = v38;
  v290 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v291 = v38;
  v73 = v262;
  sub_1DD63F2A8();
  v74 = v267;
  v75 = v259;
  v76 = v288;
  v293 = *(v267 + 16);
  v294 = (v267 + 16);
  (v293)(v259, v73, v288);
  v77 = *(v291 + 2);
  if (v77)
  {
    v79 = *(v29 + 16);
    v78 = v29 + 16;
    v80 = *(v78 + 64);
    OUTLINED_FUNCTION_24_0();
    v83 = v82 + v81;
    v300 = *(v78 + 56);
    v301 = v84;
    v304 = v78;
    v299 = (v78 - 8);
    v85 = v74 + 8;
    v86 = (v74 + 32);
    *&v298 = v85;
    v297 = v85 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v87 = v289;
    v88 = v248;
    do
    {
      (v301)(v88, v83, v87);
      sub_1DD63F238();
      v89 = v287;
      (*v299)(v88, v87);
      v90 = *v298;
      v91 = v288;
      (*v298)(v75, v288);
      (*v86)(v75, v89, v91);
      v83 += v300;
      --v77;
    }

    while (v77);
    v76 = v288;
    v74 = v267;
    v92 = v297;
  }

  else
  {
    v90 = *(v74 + 8);
    v92 = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v304 = v90;
  v297 = v92;
  (v90)(v262, v76);
  v165 = *(v74 + 32);
  v267 = v74 + 32;
  v301 = v165;
  (v165)(v264, v75, v76);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF468, &qword_1DD65F508);
  v167 = sub_1DD63F1C8();
  OUTLINED_FUNCTION_0(v167);
  v169 = v168;
  v171 = *(v168 + 80);
  v172 = (v171 + 32) & ~v171;
  v299 = *(v170 + 72);
  v295 = v166;
  v173 = swift_allocObject();
  v298 = xmmword_1DD643F90;
  *(v173 + 16) = xmmword_1DD643F90;
  v174 = *MEMORY[0x1E69D2A38];
  v177 = *(v169 + 104);
  v175 = v169 + 104;
  v176 = v177;
  v178 = *MEMORY[0x1E69D2A38];
  v296 = v167;
  v177(v173 + v172, v178, v167);
  v179 = v264;
  v180 = v263;
  v181 = sub_1DD63F208();
  if (v180)
  {
    (v304)(v179, v288);

    return;
  }

  v282 = v176;
  LODWORD(v283) = v174;
  v284 = v171;
  v285 = ((v171 + 32) & ~v171);
  v286 = v175;
  v300 = 0;
  v182 = v181;

  if (!*(v182 + 16))
  {

    v197 = OUTLINED_FUNCTION_21_34();
    v198 = sub_1DD640368();
    if (OUTLINED_FUNCTION_5_6(v198))
    {
      v199 = OUTLINED_FUNCTION_9();
      *v199 = 0;
      _os_log_impl(&dword_1DD38D000, v197, v182, "no group interactions found, use individual signals for all candidates.", v199, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v200 = OUTLINED_FUNCTION_18_36();
    v201 = v300;
    sub_1DD5B8114(v200);
    if (v201)
    {
      v202 = OUTLINED_FUNCTION_12_43();
      (v304)(v202, v288);
    }

    else
    {
      v209 = v288;
      v210 = OUTLINED_FUNCTION_12_43();
      (v304)(v210, v209);
    }

    return;
  }

  v292 = v182;
  v183 = OUTLINED_FUNCTION_21_34();
  v184 = sub_1DD640368();
  if (os_log_type_enabled(v183, v184))
  {
    v185 = OUTLINED_FUNCTION_9();
    *v185 = 0;
    _os_log_impl(&dword_1DD38D000, v183, v184, "group interactions found.", v185, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v186 = v258;
  v187 = v268;
  v279 = *(v258 + 20);
  LOBYTE(v302) = *(v279 + v268);
  if (sub_1DD450A6C())
  {
    OUTLINED_FUNCTION_6_71();
    sub_1DD63F278();
    v188 = v254;
    *v254 = 5;
    v189 = v255;
    v190 = v256;
    (*(v255 + 104))(v188, *MEMORY[0x1E69D29B8], v256);
    v191 = v253;
    sub_1DD63F248();
    v68 = v191;
    (*(v189 + 8))(v188, v190);
    v112 = v288;
    v108 = v304;
    (v304)(v172, v288);
    OUTLINED_FUNCTION_5_80();
    *(swift_allocObject() + 16) = v298;
    OUTLINED_FUNCTION_2_102();
    v192();
    v193 = v300;
    v104 = sub_1DD63F208();
    v300 = v193;
    if (v193)
    {

      (v108)(v191, v112);
      v194 = OUTLINED_FUNCTION_12_43();
      (v108)(v194, v112);
LABEL_90:

      return;
    }

LABEL_84:
    v281 = v104;
    (v108)(v68, v112);

    v126 = v257;
  }

  else
  {
    v203 = (v187 + *(v186 + 24));
    v126 = v257;
    if (v203[1])
    {
      v204 = *v203;
      v108 = v251;
      v205 = v264;
      sub_1DD63F268();
      OUTLINED_FUNCTION_5_80();
      *(swift_allocObject() + 16) = v298;
      OUTLINED_FUNCTION_2_102();
      v206();
      v207 = v300;
      isUniquelyReferenced_nonNull_native = sub_1DD63F208();
      v300 = v207;
      if (v207)
      {

        OUTLINED_FUNCTION_15_47();
        v208 = v304;
        v304();
        v208(v205, v108);
        goto LABEL_90;
      }

LABEL_87:
      v281 = isUniquelyReferenced_nonNull_native;
      (v304)(v108, v288);
    }

    else
    {
    }
  }

  v211 = v264;
  sub_1DD63F228();
  v212 = v285;
  OUTLINED_FUNCTION_5_80();
  v213 = swift_allocObject();
  OUTLINED_FUNCTION_8_64(v213);
  OUTLINED_FUNCTION_2_102();
  v214();
  v215 = v300;
  v216 = sub_1DD63F208();
  v300 = v215;
  if (v215)
  {

    OUTLINED_FUNCTION_22_30();

    OUTLINED_FUNCTION_15_47();
    v217 = v304;
    v304();
    v217(v211, v212);
    goto LABEL_90;
  }

  v280 = v216;
  v218 = v288;
  (v304)(v126, v288);

  v219 = v252;
  sub_1DD63F2A8();
  v220 = v261;
  (v293)(v261, v219, v218);
  v221 = v289;
  v222 = *(v290 + 16);
  v223 = v287;
  v224 = v249;
  if (v222)
  {
    v226 = *(v273 + 16);
    v225 = v273 + 16;
    v227 = *(v273 + 80);
    OUTLINED_FUNCTION_24_0();
    v229 = v290 + v228;
    v293 = *(v225 + 56);
    v294 = v230;
    do
    {
      (v294)(v224, v229, v221);
      sub_1DD63F238();
      v220 = v261;
      (*(v225 - 8))(v224, v221);
      (v304)(v220, v218);
      (v301)(v220, v223, v218);
      v229 += v293;
      --v222;
    }

    while (v222);
  }

  v231 = v304;
  (v304)(v252, v218);
  v232 = v250;
  v233 = v301;
  (v301)(v250, v220, v218);

  LOBYTE(v302) = *(v279 + v268);
  if (sub_1DD450A6C())
  {
    OUTLINED_FUNCTION_6_71();
    sub_1DD63F278();
    v234 = v288;
    (v304)(v232, v288);
    v235 = v231;
    v231 = v304;
    v233(v232, v235, v234);
  }

  OUTLINED_FUNCTION_5_80();
  v236 = swift_allocObject();
  OUTLINED_FUNCTION_8_64(v236);
  OUTLINED_FUNCTION_2_102();
  v237();
  v238 = v300;
  v104 = sub_1DD63F208();
  if (!v238)
  {
    goto LABEL_99;
  }

  OUTLINED_FUNCTION_22_30();

  OUTLINED_FUNCTION_15_47();
  v231();
  v239 = OUTLINED_FUNCTION_12_43();
  (v231)(v239, v232);
}

uint64_t *sub_1DD5B8114(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_8:
    sub_1DD586A30(v3);
    v3 = v8;
  }

  result = (v3 + 32);
  v4 = -v4;
  v6 = -1;
  while (v4 + v6 != -1)
  {
    if (++v6 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    v7 = result + 1;
    sub_1DD5B8F18(result);
    result = v7;
    if (v1)
    {
      break;
    }
  }

  *a1 = v3;
  return result;
}

void sub_1DD5B81B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v151 = a5;
  v127 = a4;
  v130 = a3;
  v132 = a2;
  v145 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD68, &unk_1DD65F510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v149 = (&v118 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD70, &qword_1DD654CC0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v118 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v136 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v124 = &v118 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v118 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v125 = &v118 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v118 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v129 = &v118 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v118 - v31;
  v33 = sub_1DD63F148();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v138 = &v118 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v137 = &v118 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v119 = &v118 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v128 = &v118 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v131 = &v118 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v141 = *(v45 - 8);
  v46 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = (&v118 - v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v49 - 8);
  v134 = &v118 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v133 = (&v118 - v53);
  v54 = *v145;
  v153 = 0;
  v154 = 0;
  v152 = v54;
  v139 = v48;
  v123 = (v48 + 34);
  v143 = (v34 + 16);
  v144 = (v34 + 32);
  v120 = v34;
  v142 = (v34 + 8);
  v148 = v54;

  v126 = v23;
  v55 = v28;
  v122 = v28;
  v121 = v32;
  v146 = v33;
  v140 = v45;
LABEL_2:
  v56 = v134;
  sub_1DD583860(v134);
  v57 = v56;
  v58 = v133;
  sub_1DD4DDCBC(v57, v133, &qword_1ECCDC240, &qword_1DD645AA0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  if (__swift_getEnumTagSinglePayload(v58, 1, v59) == 1)
  {

    return;
  }

  v147 = *v58;
  v60 = v58 + *(v59 + 48);
  v61 = v139;
  sub_1DD4DDCBC(v60, v139, &qword_1ECCDBBE8, &qword_1DD644470);
  v62 = v61[1];
  v150 = *v61;
  sub_1DD59B6D8(v150, v62, v132);
  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {
    sub_1DD390754(v32, &qword_1ECCDCB80, &qword_1DD64A0E0);
  }

  else
  {
    v63 = v131;
    (*v144)(v131, v32, v33);
    v64 = v129;
    (*v143)(v129, v63, v33);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v33);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD586A18(v148);
      v148 = v115;
    }

    (*v142)(v131, v33);
    if ((v147 & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    v65 = v55;
    v66 = v148;
    if (v147 >= *(v148 + 16))
    {
      goto LABEL_53;
    }

    v67 = v148 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v147;
    v68 = v140;
    v69 = *(v140 + 36);
    v70 = type metadata accessor for ContactResolver.SignalSet(0);
    sub_1DD439B00(v129, v67 + v69 + *(v70 + 120));
    *v145 = v66;
    v55 = v65;
    v45 = v68;
  }

  sub_1DD59B6D8(v150, v62, v130);
  if (__swift_getEnumTagSinglePayload(v55, 1, v33) == 1)
  {
    sub_1DD390754(v55, &qword_1ECCDCB80, &qword_1DD64A0E0);
    v71 = v148;
  }

  else
  {
    v72 = v128;
    (*v144)(v128, v55, v33);
    v73 = v125;
    (*v143)(v125, v72, v33);
    __swift_storeEnumTagSinglePayload(v73, 0, 1, v33);
    v71 = v148;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD586A18(v71);
      v71 = v116;
    }

    (*v142)(v128, v33);
    if ((v147 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    if (v147 >= *(v71 + 16))
    {
      goto LABEL_55;
    }

    v74 = v71 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v147;
    v75 = *(v45 + 36);
    v76 = type metadata accessor for ContactResolver.SignalSet(0);
    sub_1DD439B00(v125, v74 + v75 + *(v76 + 124));
    *v145 = v71;
  }

  v77 = v126;
  sub_1DD59B6D8(v150, v62, v127);
  if (__swift_getEnumTagSinglePayload(v77, 1, v33) == 1)
  {
    sub_1DD390754(v77, &qword_1ECCDCB80, &qword_1DD64A0E0);
  }

  else
  {
    v78 = v119;
    (*v144)(v119, v77, v33);
    v79 = v124;
    (*v143)(v124, v78, v33);
    __swift_storeEnumTagSinglePayload(v79, 0, 1, v33);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD586A18(v71);
      v71 = v117;
    }

    (*v142)(v78, v33);
    if ((v147 & 0x8000000000000000) != 0)
    {
      goto LABEL_54;
    }

    if (v147 >= *(v71 + 16))
    {
      goto LABEL_56;
    }

    v80 = v71 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v147;
    v81 = *(v45 + 36);
    v82 = type metadata accessor for ContactResolver.SignalSet(0);
    sub_1DD439B00(v124, v80 + v81 + *(v82 + 128));
    *v145 = v71;
  }

  v148 = v71;
  v83 = *(*&v123[*(v45 + 36)] + 16);
  v150 = *&v123[*(v45 + 36)];

  v84 = 0;
  while (1)
  {
    if (v84 == v83)
    {
      v85 = 1;
      v84 = v83;
      goto LABEL_30;
    }

    if ((v84 & 0x8000000000000000) != 0)
    {
      break;
    }

    v86 = v150;
    if (v84 >= *(v150 + 16))
    {
      goto LABEL_46;
    }

    v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90) - 8);
    v88 = v86 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v84;
    v89 = *(v5 + 48);
    v90 = v149;
    *v149 = v84;
    sub_1DD4DDC08(v88, v90 + v89, &qword_1ECCDBBD8, &unk_1DD645A90);
    sub_1DD4DDCBC(v90, v12, &qword_1ECCDDD68, &unk_1DD65F510);
    v85 = 0;
    ++v84;
LABEL_30:
    __swift_storeEnumTagSinglePayload(v12, v85, 1, v5);
    sub_1DD4DDCBC(v12, v14, &qword_1ECCDDD70, &qword_1DD654CC0);
    if (__swift_getEnumTagSinglePayload(v14, 1, v5) == 1)
    {
      sub_1DD390754(v139, &qword_1ECCDBBE8, &qword_1DD644470);

      v55 = v122;
      v32 = v121;
      v33 = v146;
      v45 = v140;
      goto LABEL_2;
    }

    v91 = v12;
    v92 = *v14;
    v93 = v14 + *(v5 + 48);
    v95 = *(v93 + 56);
    v94 = *(v93 + 64);

    sub_1DD390754(v93, &qword_1ECCDBBD8, &unk_1DD645A90);
    if (*(v151 + 16))
    {
      v96 = sub_1DD3978DC();
      v98 = v97;

      v12 = v91;
      if (v98)
      {
        v99 = v120;
        v100 = *(v151 + 56) + *(v120 + 72) * v96;
        v135 = *(v120 + 16);
        v101 = v146;
        v135(v138, v100, v146);
        v102 = v137;
        (*(v99 + 32))(v137, v138, v101);
        v103 = v136;
        v135(v136, v102, v101);
        __swift_storeEnumTagSinglePayload(v103, 0, 1, v101);
        v104 = v148;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD586A18(v104);
          v104 = v113;
        }

        if ((v147 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        if (v147 >= *(v104 + 16))
        {
          goto LABEL_48;
        }

        v105 = v104 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v147 + *(v140 + 36);
        v106 = *(v105 + 272);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v105 + 272) = v106;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DD586A48(v106);
          *(v105 + 272) = v114;
        }

        (*v142)(v137, v146);
        if ((v92 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        v108 = *(v105 + 272);
        if (v92 >= *(v108 + 16))
        {
          goto LABEL_50;
        }

        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
        v110 = v108 + ((*(*(v109 - 8) + 80) + 32) & ~*(*(v109 - 8) + 80)) + *(*(v109 - 8) + 72) * v92;
        v111 = *(v109 + 36);
        v112 = type metadata accessor for ContactResolver.HandleSignalSet(0);
        sub_1DD439B00(v136, v110 + v111 + *(v112 + 36));
        v148 = v104;
        *v145 = v104;
      }
    }

    else
    {

      v12 = v91;
    }
  }

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
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_1DD5B8F18(uint64_t *a1)
{
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF458, &qword_1DD65F4F0);
  v146 = *(v147 - 8);
  v2 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v145 = (&v142 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v167 = *(v4 - 8);
  v5 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v142 - v6;
  v162 = sub_1DD63F2B8();
  v156 = *(v162 - 8);
  v8 = *(v156 + 64);
  v9 = MEMORY[0x1EEE9AC00](v162);
  v143 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v144 = &v142 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v150 = &v142 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v151 = &v142 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v149 = &v142 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v157 = &v142 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v163 = &v142 - v21;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF460, &unk_1DD65F4F8);
  v154 = *(v160 - 8);
  v22 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v153 = (&v142 - v23);
  v24 = sub_1DD63F028();
  v164 = *(v24 - 8);
  v165 = v24;
  v25 = *(v164 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v161 = &v142 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v152 = &v142 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v159 = &v142 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v166 = &v142 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = (&v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = *a1;
  v42 = *(*a1 + 16);
  v43 = MEMORY[0x1E69E7CC0];
  v148 = a1;
  if (!v42)
  {
    v54 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v174 = v39;
  v171 = &v142 - v40;
  v178 = MEMORY[0x1E69E7CC0];
  sub_1DD42A2D4();
  v44 = v178;
  v45 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v172 = v41;
  v175 = *(v34 + 72);
  *&v170 = v41 + v45;
  v46 = v41 + v45;
  do
  {
    sub_1DD4DDC08(v46, v38, &qword_1ECCDBBE8, &qword_1DD644470);
    v48 = *v38;
    v47 = v38[1];

    sub_1DD390754(v38, &qword_1ECCDBBE8, &qword_1DD644470);
    v178 = v44;
    v49 = *(v44 + 16);
    if (v49 >= *(v44 + 24) >> 1)
    {
      sub_1DD42A2D4();
      v44 = v178;
    }

    *(v44 + 16) = v49 + 1;
    v50 = v44 + 16 * v49;
    *(v50 + 32) = v48;
    *(v50 + 40) = v47;
    v46 += v175;
    --v42;
  }

  while (v42);
  v51 = v172;
  v169 = *(v172 + 16);
  if (!v169)
  {
    v54 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v43 = v44;
LABEL_21:
    v66 = v152;
    sub_1DD63F018();
    v67 = v159;
    sub_1DD63F008();
    v68 = v164 + 8;
    v175 = *(v164 + 8);
    v175(v66, v165);
    v69 = v153;
    *v153 = v43;
    LODWORD(v174) = *MEMORY[0x1E69D29C0];
    v70 = v154;
    v173 = *(v154 + 104);
    v71 = v160;
    v173(v69);
    sub_1DD63EFF8();
    v172 = *(v70 + 8);
    (v172)(v69, v71);
    v72 = v67;
    v73 = v165;
    v74 = v175;
    v175(v72, v165);
    sub_1DD63F018();
    sub_1DD63F008();
    v75 = v66;
    v76 = v73;
    v74(v75, v73);
    *v69 = v54;
    v77 = v160;
    (v173)(v69, v174, v160);
    v78 = v159;
    sub_1DD63EFF8();
    (v172)(v69, v77);
    v164 = v68;
    v74(v78, v76);
    v79 = v157;
    sub_1DD63F2A8();
    sub_1DD63F238();
    v173 = *(v156 + 8);
    (v173)(v79, v162);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF468, &qword_1DD65F508);
    v81 = sub_1DD63F1C8();
    v82 = *(v81 - 8);
    v83 = *(v82 + 80);
    v171 = *(v82 + 72);
    v172 = v80;
    v84 = swift_allocObject();
    v170 = xmmword_1DD643F90;
    *(v84 + 16) = xmmword_1DD643F90;
    v85 = *MEMORY[0x1E69D2A38];
    v88 = *(v82 + 104);
    v87 = (v82 + 104);
    v86 = v88;
    (v88)(v84 + ((v83 + 32) & ~v83), *MEMORY[0x1E69D2A38], v81);
    v89 = v155;
    v90 = sub_1DD63F208();
    v174 = v89;
    if (v89)
    {
      v91 = v162;
      v92 = v163;
LABEL_23:
      v93 = v175;
LABEL_24:

      (v173)(v92, v91);
      v94 = v165;
      v93(v161, v165);
      v93(v166, v94);
      return;
    }

    v95 = v90;
    v160 = v83;
    LODWORD(v167) = v85;
    v168 = v86;
    v155 = (v83 + 32) & ~v83;
    v159 = v87;
    v154 = v81;
    v91 = v162;
    (v173)(v163, v162);

    v96 = *(v95 + 16);
    v169 = v95;
    if (v96)
    {
      v97 = type metadata accessor for SiriRemembersContactSignalProvider();
      v98 = v158;
      v99 = (v158 + *(v97 + 24));
      v100 = v99[1];
      v163 = v97;
      if (v100)
      {
        v101 = v97;
        v102 = *v99;
        v103 = v151;
        sub_1DD63F2A8();
        v104 = v162;
        v105 = v157;
        sub_1DD63F268();
        v106 = v173;
        (v173)(v103, v104);
        v107 = v149;
        sub_1DD63F238();
        v106(v105, v104);
        v176 = *(v98 + *(v101 + 20));
        v108 = sub_1DD450A6C();
        v109 = v155;
        if (v108)
        {
          v110 = v151;
          sub_1DD63F278();
          v111 = v145;
          *v145 = 5;
          v112 = v146;
          v113 = v147;
          (*(v146 + 104))(v111, *MEMORY[0x1E69D29B8], v147);
          sub_1DD63F248();
          (*(v112 + 8))(v111, v113);
          v105 = v157;
          v107 = v149;
          v114 = v110;
          v115 = v162;
          v116 = v173;
          (v173)(v114, v162);
          v116(v107, v115);
          (*(v156 + 32))(v107, v105, v115);
        }

        v117 = swift_allocObject();
        *(v117 + 16) = v170;
        v118 = v154;
        (v168)(v117 + v109, v167, v154);
        v119 = v174;
        v120 = sub_1DD63F208();
        v92 = v150;
        v174 = v119;
        if (v119)
        {

          v92 = v107;
          v93 = v175;
          v91 = v162;
          goto LABEL_24;
        }

        v156 = v120;
        v128 = v107;
        v91 = v162;
        v129 = v173;
        (v173)(v128, v162);
        v127 = v129;

        v126 = v151;
      }

      else
      {

        v156 = v95;
        v126 = v151;
        v92 = v150;
        v127 = v173;
        v118 = v154;
        v109 = v155;
        v105 = v157;
      }

      v130 = v126;
      sub_1DD63F2A8();
      sub_1DD63F228();
      v127(v130, v91);
      sub_1DD63F238();
      v127(v105, v91);
      v131 = swift_allocObject();
      *(v131 + 16) = v170;
      (v168)(v131 + v109, v167, v118);
      v132 = v174;
      v133 = sub_1DD63F208();
      v174 = v132;
      if (v132)
      {

        goto LABEL_23;
      }

      v155 = v133;
      v134 = v92;
      v135 = v173;
      (v173)(v134, v91);

      v177 = *(v158 + *(v163 + 5));
      if (sub_1DD450A6C())
      {
        v136 = v151;
        sub_1DD63F2A8();
        sub_1DD63F238();
        v135(v136, v91);
        v137 = v144;
        sub_1DD63F278();
      }

      else
      {
        sub_1DD63F2A8();
        v137 = v143;
        sub_1DD63F238();
      }

      v135(v105, v91);
      v138 = swift_allocObject();
      *(v138 + 16) = v170;
      (v168)(v138 + v109, v167, v154);
      v139 = v174;
      v140 = sub_1DD63F208();
      v141 = v135;
      v122 = v155;
      if (v139)
      {
        v174 = v139;

        v92 = v137;
        v93 = v175;
        goto LABEL_24;
      }

      v123 = v140;
      v141(v137, v91);

      v121 = v156;
    }

    else
    {
      sub_1DD63F148();
      v121 = sub_1DD63FC88();
      v122 = sub_1DD63FC88();
      v123 = sub_1DD63FC88();
    }

    sub_1DD5B81B8(v148, v169, v121, v122, v123);

    v124 = v165;
    v125 = v175;
    v175(v161, v165);
    v125(v166, v124);
    return;
  }

  v52 = 0;
  v53 = v171;
  v168 = (v171 + *(v174 + 36));
  v54 = MEMORY[0x1E69E7CC0];
  while (v52 < *(v51 + 16))
  {
    v173 = v52;
    v174 = v44;
    sub_1DD4DDC08(v170 + v175 * v52, v53, &qword_1ECCDBBE8, &qword_1DD644470);
    v55 = v168[34];
    v56 = *(v55 + 16);
    if (v56)
    {
      v57 = v55 + ((*(v167 + 80) + 32) & ~*(v167 + 80));
      v58 = *(v167 + 72);
      do
      {
        sub_1DD4DDC08(v57, v7, &qword_1ECCDBBD8, &unk_1DD645A90);
        v60 = *(v7 + 7);
        v59 = *(v7 + 8);

        sub_1DD390754(v7, &qword_1ECCDBBD8, &unk_1DD645A90);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = *(v54 + 16);
          sub_1DD3BE2A4();
          v54 = v64;
        }

        v61 = *(v54 + 16);
        if (v61 >= *(v54 + 24) >> 1)
        {
          sub_1DD3BE2A4();
          v54 = v65;
        }

        *(v54 + 16) = v61 + 1;
        v62 = v54 + 16 * v61;
        *(v62 + 32) = v60;
        *(v62 + 40) = v59;
        v57 += v58;
        --v56;
      }

      while (v56);
    }

    v52 = v173 + 1;
    v53 = v171;
    sub_1DD390754(v171, &qword_1ECCDBBE8, &qword_1DD644470);
    v44 = v174;
    v51 = v172;
    if (v52 == v169)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

void OUTLINED_FUNCTION_19_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16) + 1;

  sub_1DD3BF964();
}

uint64_t OUTLINED_FUNCTION_22_30()
{
  v2 = *(v0 - 312);
}

uint64_t sub_1DD5BA058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496B736174 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365636375537369 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD5BA124(char a1)
{
  if (a1)
  {
    return 0x7365636375537369;
  }

  else
  {
    return 0x64496B736174;
  }
}

uint64_t sub_1DD5BA15C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v17 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF478, &qword_1DD65F5B0);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5BA578();
  sub_1DD640EF8();
  v19 = 0;
  sub_1DD640C18();
  if (!v4)
  {
    v18 = 1;
    sub_1DD640C28();
  }

  return (*(v9 + 8))(v13, v6);
}

uint64_t sub_1DD5BA2C8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF470, &qword_1DD65F5A8);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5BA578();
  sub_1DD640ED8();
  if (!v1)
  {
    v7 = sub_1DD640B28();
    sub_1DD640B38();
    v9 = OUTLINED_FUNCTION_67();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1DD5BA484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5BA058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5BA4AC(uint64_t a1)
{
  v2 = sub_1DD5BA578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5BA4E8(uint64_t a1)
{
  v2 = sub_1DD5BA578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD5BA524@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DD5BA2C8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_1DD5BA578()
{
  result = qword_1EE163498[0];
  if (!qword_1EE163498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE163498);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriTasksEvaluationData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5BA6AC()
{
  result = qword_1ECCDF480;
  if (!qword_1ECCDF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF480);
  }

  return result;
}

unint64_t sub_1DD5BA704()
{
  result = qword_1EE163488;
  if (!qword_1EE163488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163488);
  }

  return result;
}

unint64_t sub_1DD5BA75C()
{
  result = qword_1EE163490;
  if (!qword_1EE163490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163490);
  }

  return result;
}

uint64_t sub_1DD5BA7C0(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  *&v37 = a1;
  *(&v37 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF490, &qword_1DD65F738);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(v35, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    sub_1DD63CBC8();
    v35[0] = v37;
    __swift_destroy_boxed_opaque_existential_1(&v38);
    goto LABEL_59;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_1DD3ADFD0(v35, &qword_1ECCDF498, qword_1DD65F740);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v35[0] = a1;
    *(&v35[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v35;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1DD640948();
  }

  sub_1DD5BB900(v4, v5, &v38);
  v6 = *(&v38 + 1);
  v7 = v38;
  if (*(&v38 + 1) >> 60 != 15)
  {
    v35[0] = v38;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v35[0] = MEMORY[0x1E12AF1F0](v8);
  *(&v35[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v35[0]);
  v10 = sub_1DD5BBA1C(sub_1DD5BC05C);
  v12 = *(&v35[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v35[0]);
  switch(*(&v35[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v35[0]) - LODWORD(v35[0]);
      if (__OFSUB__(DWORD1(v35[0]), v35[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v35[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v35[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v35[0] + 16);
      v20 = *(*&v35[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1DD63CED8();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v37 + 7) = 0;
      *&v37 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v35[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v27 = sub_1DD625824(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_1DD63FF98();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_1DD63FFD8();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v38 = v13;
      *(&v38 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v38 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_1DD640948();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v17 = sub_1DD625824(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    v17 = sub_1DD63FFA8();
LABEL_46:
    *(&v37 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      *&v38 = v37;
      *(&v38 + 6) = *(&v37 + 6);
      sub_1DD63CEF8();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    *&v38 = v37;
    *(&v38 + 6) = *(&v37 + 6);
    sub_1DD63CEF8();
    sub_1DD3AD77C(v34, v6);
    goto LABEL_58;
  }

  sub_1DD3AD77C(v34, v6);
LABEL_59:
  v31 = v35[0];
  sub_1DD3D01B4(*&v35[0], *(&v35[0] + 1));

  sub_1DD3AD790(v31, *(&v31 + 1));
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t sub_1DD5BACE4()
{
  v13 = v0;
  v1 = sub_1DD63FC88();
  sub_1DD39638C(0, &qword_1EE160160, 0x1E69AD970);
  sub_1DD4FC0F0(v1);

  v2 = sub_1DD5BB21C();
  v0[19] = v2;
  sub_1DD5919A8(0, &v12);
  v0[20] = 0;
  v0[21] = v12;
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v3 = sub_1DD63F9F8();
  __swift_project_value_buffer(v3, qword_1EE16F0C8);
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640368();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD38D000, v4, v5, "Start an on-demand Siri task evaluation", v6, 2u);
    MEMORY[0x1E12B3DA0](v6, -1, -1);
  }

  v7 = objc_opt_self();
  v8 = v2;
  v9 = sub_1DD63FDA8();
  v0[22] = v9;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DD5BAFC8;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF488, &qword_1DD65F730);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DD5BB2A4;
  v0[13] = &block_descriptor_20;
  v0[14] = v10;
  [v7 performTask:v8 forPluginID:v9 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DD5BAFC8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1DD5BB18C;
  }

  else
  {
    v3 = sub_1DD5BB0D8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD5BB0D8()
{
  v9 = v0;
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 144);

  v8 = v1;
  sub_1DD5BB3EC(&v8, v4);
  v5 = *(v0 + 168);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DD5BB18C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  swift_willThrow();

  v5 = v0[23];
  v6 = v0[1];

  return v6();
}

id sub_1DD5BB21C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1DD63FC48();

  v2 = [v0 initWithParametersDict_];

  return v2;
}

uint64_t *sub_1DD5BB2A4(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1DD5BB360(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1DD5BB3CC(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD5BB360(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1DD5BB3EC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = sub_1DD5BBFB8(a2);
  if (!v3)
  {
    v9 = 0u;
    v10 = 0u;
    return sub_1DD3ADFD0(&v9, &qword_1ECCDB980, &unk_1DD643DC0);
  }

  sub_1DD59B994(0x697461756C617665, 0xEE00617461446E6FLL, v3);

  if (!*(&v10 + 1))
  {
    return sub_1DD3ADFD0(&v9, &qword_1ECCDB980, &unk_1DD643DC0);
  }

  sub_1DD400AE4(&v9, v11);
  sub_1DD395720(v11, &v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  if (swift_dynamicCast() && v12)
  {
    v4 = sub_1DD5BB5F4(v12);

    *&v9 = v2;
    sub_1DD58F4D4(v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    type metadata accessor for InferenceError();
    swift_allocObject();
    v6 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD00000000000007BLL, 0x80000001DD6743F0, 0xD000000000000038, 0x80000001DD674470, 31, MEMORY[0x1E69E7CC0], 2);
    v7 = *(v6 + 32);
    *(v6 + 24) = 0;
    *(v6 + 32) = 0xE000000000000000;

    sub_1DD426968();
    swift_allocError();
    *v8 = v6;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }
}

uint64_t sub_1DD5BB5F4(uint64_t a1)
{
  v29 = MEMORY[0x1E69E7CC0];
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v26 = MEMORY[0x1E69E7CC0];
  v2 = (a1 + 40);
  do
  {
    v3 = *(v2 - 1);
    v4 = *v2;
    v5 = HIBYTE(*v2) & 0xF;
    if ((*v2 & 0x2000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = *v2;
      swift_bridgeObjectRetain_n();
      sub_1DD5BA7C0(v3, v4);
      sub_1DD39638C(0, &qword_1EE1601A0, 0x1E69D3350);
      v7 = OUTLINED_FUNCTION_19();
      sub_1DD3D01B4(v7, v8);
      v9 = OUTLINED_FUNCTION_19();
      v11 = sub_1DD5BB888(v9, v10);
      if (v11)
      {
        v12 = v11;
        MEMORY[0x1E12B23F0]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD640138();
        }

        v27 = v12;
        sub_1DD640168();
        v26 = v29;
        if (qword_1EE166510 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        v13 = sub_1DD63F9F8();
        __swift_project_value_buffer(v13, qword_1EE16F0C8);

        v14 = sub_1DD63F9D8();
        v15 = sub_1DD640368();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v28 = v17;
          *v16 = 136315138;
          v18 = sub_1DD39565C(v3, v4, &v28);

          *(v16 + 4) = v18;
          _os_log_impl(&dword_1DD38D000, v14, v15, "Append the SiriTasksEvaluation Result: %s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v17);
          MEMORY[0x1E12B3DA0](v17, -1, -1);
          MEMORY[0x1E12B3DA0](v16, -1, -1);
          v19 = OUTLINED_FUNCTION_19();
          sub_1DD3AD790(v19, v20);
        }

        else
        {
          v23 = OUTLINED_FUNCTION_19();
          sub_1DD3AD790(v23, v24);
        }
      }

      else
      {
        v21 = OUTLINED_FUNCTION_19();
        sub_1DD3AD790(v21, v22);
      }
    }

    v2 += 2;
    --v1;
  }

  while (v1);
  return v26;
}

id sub_1DD5BB888(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1DD63CF08();
  v6 = [v4 initWithJSONData_];

  sub_1DD3AD790(a1, a2);
  return v6;
}

uint64_t sub_1DD5BB900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1DD63CE78();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1DD63C958();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1DD63C918();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1DD63CEC8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1DD5BB9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1DD5BBEA0(sub_1DD5BC0B8, v5, a1, a2);
}

uint64_t sub_1DD5BBA1C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1DD3AD790(v6, v5);
      *v4 = xmmword_1DD65F6D0;
      sub_1DD3AD790(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_1DD63C928() && __OFSUB__(v6, sub_1DD63C948()))
      {
        goto LABEL_24;
      }

      v13 = sub_1DD63C958();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1DD63C908();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_1DD5BBF04(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1DD3AD790(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_1DD65F6D0;
      sub_1DD3AD790(0, 0xC000000000000000);
      sub_1DD63CE88();
      v6 = v20;
      v9 = sub_1DD5BBF04(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x1E69E9840];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_1DD3AD790(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_1DD5BBDE0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1DD63CE78();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1E12AF1A0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1E12AF1B0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1DD5BBE58(uint64_t result)
{
  if (result)
  {
    result = sub_1DD6408E8();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DD5BBEA0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1DD5BBF04(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1DD63C928();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1DD63C948();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1DD63C938();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1DD5BBFB8(void *a1)
{
  v1 = [a1 JSONResult];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FC58();

  return v3;
}

void *sub_1DD5BC024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1DD5BB9C8(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1DD5BC078@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_1DD5BBE58(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t SlotResolutionTask.eraseToAnySlotResolutionTask()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return sub_1DD5BC1A0(v7, a1, a2);
}

uint64_t sub_1DD5BC1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  *a3 = sub_1DD63FE38();
  a3[1] = v6;
  a3[5] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 2);
  return (*(*(a2 - 8) + 32))(boxed_opaque_existential_1, a1, a2);
}

SiriInference::SlotType_optional __swiftcall SlotType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1DD5BC2B8()
{
  result = qword_1ECCDF4A0;
  if (!qword_1ECCDF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF4A0);
  }

  return result;
}

uint64_t sub_1DD5BC314@<X0>(uint64_t *a1@<X8>)
{
  result = SlotType.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SlotType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5BC4C8()
{
  result = qword_1ECCDF4A8;
  if (!qword_1ECCDF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF4A8);
  }

  return result;
}

uint64_t type metadata accessor for SolsticeAndEquinox()
{
  result = qword_1ECCDF4B0;
  if (!qword_1ECCDF4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD5BC590()
{
  result = sub_1DD63D2D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AstronomicalType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5BC6E4()
{
  result = qword_1ECCDF4C0;
  if (!qword_1ECCDF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF4C0);
  }

  return result;
}

double sub_1DD5BC738(uint64_t a1, long double a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v2 = *(a1 + 32);
    if (v3 != 1)
    {
      v5 = (a1 + 40);
      v6 = 1;
      do
      {
        v7 = v6 + 1;
        v8 = *v5++;
        v2 = v2 + v8 * pow(a2, v6);
        v6 = v7;
      }

      while (v3 != v7);
    }
  }

  else
  {
    sub_1DD5BD7F8();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 2;
    swift_willThrow();
  }

  return v2;
}

void sub_1DD5BC82C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v1 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0_134(v1);
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DD6504B0;
  v8 = v7 + v6;
  v9 = *(v3 + 104);
  v9(v8, *MEMORY[0x1E6969AB8], v0);
  v9(v8 + v5, *MEMORY[0x1E6969AC0], v0);
  v9(v8 + 2 * v5, *MEMORY[0x1E6969A68], v0);
  v9(v8 + 3 * v5, *MEMORY[0x1E6969A78], v0);
  v9(v8 + 4 * v5, *MEMORY[0x1E6969A48], v0);
  v9(v8 + 5 * v5, *MEMORY[0x1E6969A58], v0);
  v9(v8 + 6 * v5, *MEMORY[0x1E6969A88], v0);

  sub_1DD56BDEC();
}

void sub_1DD5BC9E8(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1DD63D078();
  v7 = OUTLINED_FUNCTION_0_134(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD5BCAEC(a1, v13);
  if (!v3)
  {
    sub_1DD5BC82C();
    sub_1DD3D856C(v14, a2);

    (*(v9 + 8))(v13, v2);
  }
}

void sub_1DD5BCAEC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_1DD63CBB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD5BCD54(a1);
  if (!v2)
  {
    v19 = a2;
    sub_1DD5BCEF8(v14);
    sub_1DD63CA68();
    v15 = sub_1DD63D078();
    if (__swift_getEnumTagSinglePayload(v8, 1, v15) == 1)
    {
      sub_1DD4AF0C8(v8);
      sub_1DD5BD7F8();
      swift_allocError();
      *v16 = a1;
      *(v16 + 8) = 1;
      swift_willThrow();
    }

    else
    {
      v18 = *(v15 - 8);
      (*(v18 + 32))(v19, v8, v15);
      sub_1DD5BD48C(a1);
      sub_1DD63D038();
    }

    (*(v10 + 8))(v13, v9);
  }
}

void sub_1DD5BCD54(uint64_t a1)
{
  v2 = sub_1DD5BD6F8(a1);
  if (!v1)
  {
    v10 = (v2 + -2451545.0) / 36525.0;
    v3 = v10 * 35999.373 + -2.47;
    cos(v3 * 3.14159265 / 180.0);
    cos((v3 + v3) * 3.14159265 / 180.0);
    v4 = 0.0;
    v5 = 0x20u;
    v8 = vdupq_n_s64(0x4066800000000000uLL);
    v9 = vdupq_n_s64(0x400921FB54442D18uLL);
    do
    {
      v13 = vcvtq_f64_s64(*(&unk_1F58AD470 + v5));
      __x = vdivq_f64(vmulq_f64(vaddq_f64(*(&unk_1F58AD550 + v5), vmulq_n_f64(*(&unk_1F58AD630 + v5), v10)), v9), v8);
      v12 = cos(__x.f64[1]);
      v6.f64[0] = cos(__x.f64[0]);
      v6.f64[1] = v12;
      v7 = vmulq_f64(v6, v13);
      v4 = v4 + v7.f64[0] + v7.f64[1];
      v5 += 16;
    }

    while (v5 != 224);
  }
}

void sub_1DD5BCEF8(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v34 - v7;
  v9 = a1 + 0.5;
  if (COERCE__INT64(fabs(a1 + 0.5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v10 = v9;
  v11 = v10;
  if (v9 >= 2299161)
  {
    v12 = (v10 + -1867216.25) / 36524.25;
    if (v12 <= -9.22337204e18)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v12 >= 9.22337204e18)
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v13 = vcvtd_n_f64_s64(v12, 2uLL);
    if (COERCE__INT64(fabs((v10 + -1867216.25) / 36524.25)) > 0x7FEFFFFFFFFFFFFFLL || (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_67;
    }

    if (v13 <= -9.22337204e18)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v13 >= 9.22337204e18)
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v11 = v12 + 1.0 - v13 + v10;
  }

  v14 = v11 + 1524.0;
  v15 = (v11 + 1524.0 + -122.1) / 365.25;
  if (v15 <= -9.22337204e18)
  {
    goto LABEL_47;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v16 = v15 * 365.25;
  if (v16 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v17 = v14 - v16;
  v18 = v17 / 30.6001;
  if (v17 / 30.6001 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v19 = COERCE_UNSIGNED_INT64(fabs(v17 / 30.6001)) > 0x7FEFFFFFFFFFFFFFLL;
  v20 = COERCE_UNSIGNED_INT64(fabs(v15 * 365.25)) > 0x7FEFFFFFFFFFFFFFLL;
  v21 = v18 * 30.6001;
  v22 = COERCE__INT64(fabs(v21)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v20 || v19 || v22)
  {
    goto LABEL_53;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v23 = v18;
  v24 = v18 - 13;
  if (v18 <= 13)
  {
    v24 = v23 - 1;
    if (__OFSUB__(v23, 1))
    {
      goto LABEL_70;
    }
  }

  v25 = v15;
  if (v24 >= 3)
  {
    if (!__OFADD__(v25, -4716))
    {
LABEL_31:
      v26 = v9 - v10 + v17 - v21;
      if (v26 > -9.22337204e18)
      {
        if (v26 < 9.22337204e18)
        {
          v27 = (v26 - v26) * 24.0;
          if (v27 > -9.22337204e18)
          {
            if (v27 < 9.22337204e18)
            {
              v28 = (v27 - v27) * 60.0;
              if (v28 > -9.22337204e18)
              {
                if (v28 < 9.22337204e18)
                {
                  v29 = COERCE_UNSIGNED_INT64(fabs((v27 - v27) * 60.0)) > 0x7FEFFFFFFFFFFFFFLL;
                  v30 = COERCE_UNSIGNED_INT64(fabs((v26 - v26) * 24.0)) > 0x7FEFFFFFFFFFFFFFLL;
                  v31 = (v28 - v28) * 60.0;
                  v32 = COERCE__INT64(fabs(v31)) > 0x7FEFFFFFFFFFFFFFLL;
                  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && !v30 && !v29 && !v32)
                  {
                    if (v31 > -9.22337204e18)
                    {
                      if (v31 < 9.22337204e18)
                      {
                        v34[1] = v24;
                        v33 = sub_1DD63D2D8();
                        (*(*(v33 - 8) + 16))(v8, v1, v33);
                        __swift_storeEnumTagSinglePayload(v8, 0, 1, v33);
                        sub_1DD63D2E8();
                        sub_1DD63CB68();
                        return;
                      }

                      goto LABEL_64;
                    }

LABEL_63:
                    __break(1u);
LABEL_64:
                    __break(1u);
                    goto LABEL_65;
                  }

LABEL_62:
                  __break(1u);
                  goto LABEL_63;
                }

LABEL_61:
                __break(1u);
                goto LABEL_62;
              }

LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    __break(1u);
  }

  if (!__OFADD__(v25, -4715))
  {
    goto LABEL_31;
  }

LABEL_71:
  __break(1u);
}

void sub_1DD5BD48C(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    sub_1DD5BD7F8();
    swift_allocError();
    *v4 = a1;
    *(v4 + 8) = 0;
    swift_willThrow();
    return;
  }

  if (a1 <= 0x1F3)
  {
    v2 = a1 / 100.0;
    v3 = &unk_1F58AD710;
LABEL_27:
    sub_1DD5BC738(v3, v2);
    return;
  }

  if (a1 <= 0x63F)
  {
    v2 = (a1 + -1000.0) / 100.0;
    v3 = &unk_1F58AD768;
    goto LABEL_27;
  }

  if (a1 <= 0x6A3)
  {
    v2 = (a1 - 1600);
    v3 = &unk_1F58AD7C0;
    goto LABEL_27;
  }

  if (a1 <= 0x707)
  {
    v2 = (a1 - 1700);
    v3 = &unk_1F58AD800;
    goto LABEL_27;
  }

  if (a1 <= 0x743)
  {
    v2 = (a1 - 1800);
    v3 = &unk_1F58AD848;
    goto LABEL_27;
  }

  if (a1 <= 0x76B)
  {
    v2 = (a1 - 1860);
    v3 = &unk_1F58AD8A8;
    goto LABEL_27;
  }

  if (a1 <= 0x77F)
  {
    v2 = (a1 - 1900);
    v3 = &unk_1F58AD8F8;
    goto LABEL_27;
  }

  if (a1 <= 0x794)
  {
    v2 = (a1 - 1920);
    v3 = &unk_1F58AD940;
    goto LABEL_27;
  }

  if (a1 <= 0x7A8)
  {
    v2 = (a1 - 1950);
    v3 = &unk_1F58AD980;
    goto LABEL_27;
  }

  if (a1 <= 0x7C1)
  {
    v2 = (a1 - 1975);
    v3 = &unk_1F58AD9C0;
    goto LABEL_27;
  }

  if (a1 <= 0x7D4)
  {
    v2 = (a1 - 2000);
    v3 = &unk_1F58ADA00;
    goto LABEL_27;
  }

  if (a1 <= 0x801)
  {
    v2 = (a1 - 2000);
    v3 = &unk_1F58ADA50;
    goto LABEL_27;
  }

  if (a1 <= 0x865)
  {
    sub_1DD5BC738(&unk_1F58ADA88, (a1 - 1820) / 100.0);
  }
}

double sub_1DD5BD6F8(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for SolsticeAndEquinox() + 20));
  if (a1 > 999)
  {
    v4 = (&off_1E8655868 + v3);
    v5 = a1 + -2000.0;
  }

  else
  {
    v4 = (&off_1E8655848 + v3);
    v5 = a1;
  }

  v6 = sub_1DD5BC738(*v4, v5 / 1000.0);

  return v6;
}

unint64_t sub_1DD5BD7F8()
{
  result = qword_1ECCDF4C8;
  if (!qword_1ECCDF4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF4C8);
  }

  return result;
}

uint64_t sub_1DD5BD85C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC768(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DD5BD958(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1DD5BD958(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCF0, &qword_1DD649E60);
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DD5BDBB0(v7, v8, a1, v4);
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
    return sub_1DD5BDA5C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD5BDA5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    type metadata accessor for DateTime();
    v7 = (v6 + 80 * v4);
    v8 = v5 - v4 + 1;
    while (2)
    {
      v17 = v4;
      v9 = v8;
      for (i = v7; ; i -= 80)
      {
        memcpy(__dst, i, 0x49uLL);
        memcpy(v16, i - 80, 0x49uLL);
        v11 = __dst[0];
        v12 = v16[0];
        sub_1DD474708(__dst, __src);
        sub_1DD474708(v16, __src);
        LOBYTE(v11) = static DateTime.< infix(_:_:)(v11, v12);
        sub_1DD474778(v16);
        result = sub_1DD474778(__dst);
        if ((v11 & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__src, i, 0x49uLL);
        memcpy(i, i - 80, 0x50uLL);
        result = memcpy(i - 80, __src, 0x49uLL);
        if (!v9)
        {
          break;
        }

        ++v9;
      }

      v4 = v17 + 1;
      v7 += 80;
      --v8;
      if (v17 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD5BDBB0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v96 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v81 = v6 + 16;
      v82 = *(v6 + 2);
      while (v82 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v83 = v6;
        v84 = &v6[16 * v82];
        v6 = *v84;
        v85 = &v81[2 * v82];
        v86 = *(v85 + 1);
        v87 = v103;
        sub_1DD5BE2CC((*a3 + 80 * *v84), (*a3 + 80 * *v85), (*a3 + 80 * v86), v96);
        v103 = v87;
        if (v87)
        {
          break;
        }

        if (v86 < v6)
        {
          goto LABEL_117;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_118;
        }

        *v84 = v6;
        *(v84 + 1) = v86;
        v88 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_119;
        }

        v82 = *v81 - 1;
        sub_1DD4EC4E4(v85 + 16, v88, v85);
        *v81 = v82;
        v6 = v83;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v6 = sub_1DD4EC2B8(v6);
    goto LABEL_93;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if ((v5 + 1) >= v4)
    {
      goto LABEL_22;
    }

    v90 = v6;
    v9 = *a3;
    v96 = v4;
    memcpy(__dst, (*a3 + 80 * v8), 0x49uLL);
    v10 = 80 * v7;
    memcpy(v102, (v9 + 80 * v7), 0x49uLL);
    v11 = __dst[0];
    v12 = v102[0];
    type metadata accessor for DateTime();
    sub_1DD474708(__dst, __src);
    sub_1DD474708(v102, __src);
    v13 = static DateTime.< infix(_:_:)(v11, v12);
    sub_1DD474778(v102);
    sub_1DD474778(__dst);
    v14 = v96;
    v6 = (v9 + 80 * v7 + 160);
    v92 = v7;
    v15 = (v7 + 2);
    do
    {
      v16 = v8;
      v17 = v15;
      v18 = v8 + 1;
      if ((v8 + 1) >= v14)
      {
        v8 = v14;
        if (v13)
        {
          goto LABEL_8;
        }

LABEL_12:
        v6 = v90;
        goto LABEL_21;
      }

      memcpy(v99, v6, 0x49uLL);
      memcpy(__src, v6 - 80, 0x49uLL);
      v19 = v99[0];
      v20 = __src[0];
      sub_1DD474708(v99, v98);
      sub_1DD474708(__src, v98);
      LODWORD(v20) = static DateTime.< infix(_:_:)(v19, v20);
      sub_1DD474778(__src);
      sub_1DD474778(v99);
      v6 += 80;
      v15 = v17 + 1;
      v21 = v13 == v20;
      v14 = v96;
      v8 = v18;
    }

    while (v21);
    if (!v13)
    {
      goto LABEL_12;
    }

LABEL_8:
    v7 = v92;
    if (v8 < v92)
    {
      goto LABEL_123;
    }

    if (v92 > v16)
    {
      v6 = v90;
      goto LABEL_22;
    }

    v22 = v14 >= v17 ? v17 : v14;
    v23 = 80 * v22 - 80;
    v24 = v8;
    v6 = v90;
    do
    {
      if (v7 != --v24)
      {
        v25 = *a3;
        if (!*a3)
        {
          goto LABEL_130;
        }

        memcpy(__src, (v25 + v10), 0x49uLL);
        memmove((v25 + v10), (v25 + v23), 0x50uLL);
        memcpy((v25 + v23), __src, 0x49uLL);
      }

      ++v7;
      v23 -= 80;
      v10 += 80;
    }

    while (v7 < v24);
LABEL_21:
    v7 = v92;
LABEL_22:
    v26 = a3[1];
    if (v8 < v26)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_122;
      }

      if (&v8[-v7] < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v8 < v7)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = *(v6 + 2);
      sub_1DD3BEB7C();
      v6 = v79;
    }

    v36 = *(v6 + 2);
    v37 = v36 + 1;
    v96 = v8;
    if (v36 >= *(v6 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v6 = v80;
    }

    *(v6 + 2) = v37;
    v38 = v6 + 32;
    v39 = &v6[16 * v36 + 32];
    *v39 = v7;
    *(v39 + 1) = v96;
    v95 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        v41 = &v38[16 * v37 - 16];
        v42 = &v6[16 * v37];
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v43 = *(v6 + 4);
          v44 = *(v6 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_59:
          if (v46)
          {
            goto LABEL_108;
          }

          v58 = *v42;
          v57 = *(v42 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_111;
          }

          v62 = *(v41 + 1);
          v63 = v62 - *v41;
          if (__OFSUB__(v62, *v41))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v60, v63))
          {
            goto LABEL_116;
          }

          if (v60 + v63 >= v45)
          {
            if (v45 < v63)
            {
              v40 = v37 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v37 < 2)
        {
          goto LABEL_110;
        }

        v65 = *v42;
        v64 = *(v42 + 1);
        v53 = __OFSUB__(v64, v65);
        v60 = v64 - v65;
        v61 = v53;
LABEL_74:
        if (v61)
        {
          goto LABEL_113;
        }

        v67 = *v41;
        v66 = *(v41 + 1);
        v53 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v53)
        {
          goto LABEL_115;
        }

        if (v68 < v60)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v40 - 1 >= v37)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v72 = v6;
        v73 = &v38[16 * v40 - 16];
        v74 = *v73;
        v6 = &v38[16 * v40];
        v75 = *(v6 + 1);
        v76 = v103;
        sub_1DD5BE2CC((*a3 + 80 * *v73), (*a3 + 80 * *v6), (*a3 + 80 * v75), v95);
        v103 = v76;
        if (v76)
        {
          goto LABEL_101;
        }

        if (v75 < v74)
        {
          goto LABEL_103;
        }

        v77 = *(v72 + 2);
        if (v40 > v77)
        {
          goto LABEL_104;
        }

        *v73 = v74;
        *(v73 + 1) = v75;
        if (v40 >= v77)
        {
          goto LABEL_105;
        }

        v37 = v77 - 1;
        sub_1DD4EC4E4(v6 + 16, v77 - 1 - v40, &v38[16 * v40]);
        v6 = v72;
        *(v72 + 2) = v77 - 1;
        if (v77 <= 2)
        {
          goto LABEL_88;
        }
      }

      v47 = &v38[16 * v37];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_106;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_107;
      }

      v54 = *(v42 + 1);
      v55 = v54 - *v42;
      if (__OFSUB__(v54, *v42))
      {
        goto LABEL_109;
      }

      v53 = __OFADD__(v45, v55);
      v56 = v45 + v55;
      if (v53)
      {
        goto LABEL_112;
      }

      if (v56 >= v50)
      {
        v70 = *v41;
        v69 = *(v41 + 1);
        v53 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v53)
        {
          goto LABEL_120;
        }

        if (v45 < v71)
        {
          v40 = v37 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v5 = v96;
    v4 = a3[1];
    if (v96 >= v4)
    {
      goto LABEL_91;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_124;
  }

  if (v7 + a4 >= v26)
  {
    v27 = a3[1];
  }

  else
  {
    v27 = (v7 + a4);
  }

  if (v27 < v7)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v8 == v27)
  {
    goto LABEL_39;
  }

  v91 = v6;
  v28 = v7;
  v29 = *a3;
  type metadata accessor for DateTime();
  v30 = (v29 + 80 * v8);
  v93 = v28;
  v31 = v28 - v8 + 1;
LABEL_32:
  v96 = v8;
  v32 = v31;
  for (i = v30; ; i -= 80)
  {
    memcpy(__dst, i, 0x49uLL);
    memcpy(v102, i - 80, 0x49uLL);
    v34 = __dst[0];
    v35 = v102[0];
    sub_1DD474708(__dst, __src);
    sub_1DD474708(v102, __src);
    LOBYTE(v34) = static DateTime.< infix(_:_:)(v34, v35);
    sub_1DD474778(v102);
    sub_1DD474778(__dst);
    if ((v34 & 1) == 0)
    {
LABEL_37:
      v8 = v96 + 1;
      v30 += 80;
      --v31;
      if (v96 + 1 == v27)
      {
        v8 = v27;
        v6 = v91;
        v7 = v93;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v29)
    {
      break;
    }

    memcpy(__src, i, 0x49uLL);
    memcpy(i, i - 80, 0x50uLL);
    memcpy(i - 80, __src, 0x49uLL);
    if (!v32)
    {
      goto LABEL_37;
    }

    ++v32;
  }

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
}

uint64_t sub_1DD5BE2CC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 80;
  v9 = (a3 - a2) / 80;
  if (v8 < v9)
  {
    sub_1DD3C2524(a1, (a2 - a1) / 80, a4);
    v10 = &v4[80 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }

      memcpy(__dst, v6, 0x49uLL);
      memcpy(v28, v4, 0x49uLL);
      v12 = __dst[0];
      v13 = v28[0];
      type metadata accessor for DateTime();
      sub_1DD474708(__dst, v26);
      sub_1DD474708(v28, v26);
      LOBYTE(v12) = static DateTime.< infix(_:_:)(v12, v13);
      sub_1DD474778(v28);
      sub_1DD474778(__dst);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 80;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 80;
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 80;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v14, 0x50uLL);
    goto LABEL_13;
  }

  sub_1DD3C2524(a2, (a3 - a2) / 80, a4);
  v10 = &v4[80 * v9];
LABEL_15:
  v29 = v6 - 80;
  for (v5 -= 80; v10 > v4 && v6 > v7; v5 -= 80)
  {
    v17 = v7;
    memcpy(__dst, v10 - 80, 0x49uLL);
    memcpy(v28, v29, 0x49uLL);
    v18 = __dst[0];
    v19 = v28[0];
    type metadata accessor for DateTime();
    sub_1DD474708(__dst, v26);
    sub_1DD474708(v28, v26);
    LOBYTE(v18) = static DateTime.< infix(_:_:)(v18, v19);
    sub_1DD474778(v28);
    sub_1DD474778(__dst);
    v20 = v5 + 80;
    if (v18)
    {
      if (v20 < v6 || v5 >= v6)
      {
        v6 = v29;
        memmove(v5, v29, 0x50uLL);
        v7 = v17;
      }

      else
      {
        v7 = v17;
        if (v20 == v6)
        {
          v6 = v29;
        }

        else
        {
          v6 = v29;
          memmove(v5, v29, 0x50uLL);
        }
      }

      goto LABEL_15;
    }

    if (v20 < v10 || v5 >= v10)
    {
      memmove(v5, v10 - 80, 0x50uLL);
      v7 = v17;
    }

    else
    {
      v7 = v17;
      if (v10 != v20)
      {
        memmove(v5, v10 - 80, 0x50uLL);
      }
    }

    v10 -= 80;
  }

LABEL_41:
  v23 = 80 * ((v10 - v4) / 80);
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23);
  }

  return 1;
}

unint64_t sub_1DD5BE5A4(char *a1, char *a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v115 = a4;
  v137 = *MEMORY[0x1E69E9840];
  v126 = sub_1DD63D168();
  v9 = *(v126 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v120 = (&v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v118 = &v109 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v121 = &v109 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v109 - v17;
  if (qword_1EE165FB0 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v19 = sub_1DD63F9F8();
    v20 = __swift_project_value_buffer(v19, qword_1EE16F068);
    v21 = *(v9 + 16);
    v119 = a3;
    v122 = (v9 + 16);
    v123 = v21;
    v21(v18, a3, v126);
    v124 = v20;
    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640368();
    v24 = os_log_type_enabled(v22, v23);
    v117 = v5;
    *&v116 = a1;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = OUTLINED_FUNCTION_62();
      aBlock = v26;
      *v25 = 136315138;
      v27 = sub_1DD63D118();
      v28 = a2;
      v30 = v29;
      v31 = OUTLINED_FUNCTION_0_135();
      v32(v31);
      v33 = sub_1DD39565C(v27, v30, &aBlock);
      a2 = v28;

      *(v25 + 4) = v33;
      _os_log_impl(&dword_1DD38D000, v22, v23, "[UCG] locale identifier: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      v34 = OUTLINED_FUNCTION_0_135();
      v35(v34);
    }

    v36 = v9;
    v37 = v121;
    (v123)(v121, v119, v126);
    aBlock = sub_1DD63D118();
    v130 = v38;
    v135 = 45;
    v136 = 0xE100000000000000;
    sub_1DD3B7F10();
    v39 = MEMORY[0x1E69E6158];
    v40 = sub_1DD6406D8();

    if (v40)
    {
      aBlock = sub_1DD63D118();
      v130 = v41;
      v135 = 45;
      v136 = 0xE100000000000000;
      v128[1] = 95;
      v128[2] = 0xE100000000000000;
      sub_1DD640678();

      v42 = v118;
      sub_1DD63D108();
      v36[5](v37, v42, v126);
      v39 = sub_1DD63F9D8();
      v43 = sub_1DD640368();
      if (os_log_type_enabled(v39, v43))
      {
        v44 = swift_slowAlloc();
        v45 = OUTLINED_FUNCTION_62();
        aBlock = v45;
        *v44 = 136315138;
        swift_beginAccess();
        v46 = sub_1DD63D118();
        v48 = sub_1DD39565C(v46, v47, &aBlock);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_1DD38D000, v39, v43, "[UCG] corrected locale identifier: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }
    }

    swift_beginAccess();
    v49 = OUTLINED_FUNCTION_4_87(&v139);
    v50 = v123;
    (v123)(v49);
    v51 = objc_allocWithZone(MEMORY[0x1E69CE418]);
    v52 = v125;
    v53 = sub_1DD5C0174(v39);
    if (v52)
    {

LABEL_11:
      v54 = sub_1DD63F9D8();
      v55 = sub_1DD640378();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = OUTLINED_FUNCTION_62();
        aBlock = v57;
        *v56 = 136315138;
        v58 = sub_1DD63D118();
        v60 = sub_1DD39565C(v58, v59, &aBlock);

        *(v56 + 4) = v60;
        _os_log_impl(&dword_1DD38D000, v54, v55, "[UCG] failed to create SEMTokenizer: morphun asset path for locale %s not available. Returning empty candidate list", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_2_103();
      v61();
      v9 = MEMORY[0x1E69E7CC0];
      goto LABEL_14;
    }

    a1 = v53;
    if (!v53)
    {
      goto LABEL_11;
    }

    v125 = 0;
    v64 = OUTLINED_FUNCTION_4_87(&v138);
    v50(v64);
    v65 = objc_allocWithZone(MEMORY[0x1E69CE400]);
    v66 = v115;
    v67 = v115;

    v68 = sub_1DD5C02C0(v39, v116, a2, v66);
    a3 = v37;
    v69 = sub_1DD63FDA8();
    v70 = swift_allocObject();
    *(v70 + 16) = v68;
    v133 = sub_1DD5C0388;
    v134 = v70;
    aBlock = MEMORY[0x1E69E9820];
    v130 = 1107296256;
    v131 = sub_1DD5BF410;
    v132 = &block_descriptor_21;
    v71 = _Block_copy(&aBlock);
    v9 = v68;

    [a1 enumerateTokensOfText:v69 usingBlock:v71];
    _Block_release(v71);

    v5 = [v9 build];
    aBlock = 0;
    v72 = [v117 matchSpans:v5 error:&aBlock];
    v73 = aBlock;
    if (!v72)
    {
      break;
    }

    v74 = v72;
    v118 = v5;
    v119 = v9;
    v109 = a1;
    v120 = v36;
    sub_1DD5C03D8();
    v18 = sub_1DD640118();
    v75 = v73;

    a2 = sub_1DD3CC020(v18);
    v76 = 0;
    v117 = (v18 & 0xC000000000000001);
    *&v116 = v18 & 0xFFFFFFFFFFFFFF8;
    v110 = v18;
    v115 = (v18 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    v111 = a2;
    while (1)
    {
      v77 = v125;
      if (v76 == a2)
      {

        a1 = sub_1DD3CC020(v9);
        v18 = 0;
        a2 = (v9 & 0xC000000000000001);
        v123 = v9 & 0xFFFFFFFFFFFFFF8;
        *&v98 = 134218242;
        v116 = v98;
        OUTLINED_FUNCTION_1_118();
        v122 = v99;
        v117 = (v9 & 0xC000000000000001);
        while (a1 != v18)
        {
          if (a2)
          {
            MEMORY[0x1E12B2C10](v18, v9);
          }

          else
          {
            if (v18 >= *(v123 + 16))
            {
              goto LABEL_75;
            }

            v100 = *(v9 + 8 * v18 + 32);
          }

          if (__OFADD__(v18, 1))
          {
            goto LABEL_74;
          }

          v77 = v124;
          a3 = sub_1DD63F9D8();
          v5 = sub_1DD640368();

          if (os_log_type_enabled(a3, v5))
          {
            v101 = swift_slowAlloc();
            v102 = v9;
            v103 = OUTLINED_FUNCTION_62();
            aBlock = v103;
            *v101 = v116;
            *(v101 + 4) = v18;
            *(v101 + 12) = 2080;
            v104 = sub_1DD63EEC8();
            v77 = v105;
            v106 = sub_1DD39565C(v104, v105, &aBlock);

            *(v101 + 14) = v106;
            _os_log_impl(&dword_1DD38D000, a3, v5, "[Siri Entity Matcher] Span match [%ld]: %s", v101, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v103);
            v9 = v102;
            a2 = v117;
            OUTLINED_FUNCTION_0_1();
            a1 = v122;
            OUTLINED_FUNCTION_0_1();
          }

          else
          {
          }

          ++v18;
          OUTLINED_FUNCTION_1_118();
        }

        OUTLINED_FUNCTION_2_103();
        v107();
        goto LABEL_14;
      }

      if (v117)
      {
        v78 = MEMORY[0x1E12B2C10](v76, v110);
      }

      else
      {
        if (v76 >= *(v116 + 16))
        {
          goto LABEL_73;
        }

        v78 = *(v115 + v76);
      }

      v79 = v78;
      v80 = __OFADD__(v76++, 1);
      if (v80)
      {
        break;
      }

      v128[0] = v78;
      sub_1DD5BF51C(v128, &v127);
      if (v77)
      {

        goto LABEL_71;
      }

      a3 = v127;
      v125 = 0;
      if (v127 >> 62)
      {
        v5 = sub_1DD6407B8();
      }

      else
      {
        v5 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v9 >> 62;
      if (v9 >> 62)
      {
        v81 = sub_1DD6407B8();
      }

      else
      {
        v81 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v82 = &v5[v81];
      if (__OFADD__(v81, v5))
      {
        goto LABEL_76;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v123 = v5;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v18)
        {
          goto LABEL_36;
        }

        v18 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v82 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v18)
        {
LABEL_36:
          sub_1DD6407B8();
          goto LABEL_37;
        }

        v18 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      v84 = *(v18 + 16);
LABEL_37:
      v9 = sub_1DD640918();
      v18 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_38:
      v122 = v9;
      v85 = *(v18 + 16);
      a1 = ((*(v18 + 24) >> 1) - v85);
      v86 = v18 + 8 * v85;
      if (a3 >> 62)
      {
        v87 = sub_1DD6407B8();
        if (!v87)
        {
LABEL_52:

          if (v123 > 0)
          {
            goto LABEL_77;
          }

          goto LABEL_53;
        }

        v88 = v87;
        v89 = sub_1DD6407B8();
        if (a1 < v89)
        {
          goto LABEL_80;
        }

        if (v88 < 1)
        {
          goto LABEL_82;
        }

        v112 = v89;
        v113 = v18;
        v114 = v76;
        v90 = v86 + 32;
        a1 = sub_1DD5C041C();
        v91 = 0;
        v9 = &qword_1DD65FB10;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF4D8, &qword_1DD65FB10);
          v92 = sub_1DD5B60D4(&aBlock, v91, a3);
          v94 = *v93;

          v92(&aBlock, 0);
          *(v90 + 8 * v91++) = v94;
        }

        while (v88 != v91);
        a2 = v111;
        v76 = v114;
        v18 = v113;
        v5 = v112;
      }

      else
      {
        v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v5)
        {
          goto LABEL_52;
        }

        if (a1 < v5)
        {
          goto LABEL_81;
        }

        sub_1DD63EEE8();
        swift_arrayInitWithCopy();
      }

      if (v5 < v123)
      {
        goto LABEL_77;
      }

      if (v5 > 0)
      {
        v95 = *(v18 + 16);
        v80 = __OFADD__(v95, v5);
        v96 = &v5[v95];
        if (v80)
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
        }

        *(v18 + 16) = v96;
      }

LABEL_53:
      v9 = v122;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

  v97 = aBlock;
  sub_1DD63CD98();

  swift_willThrow();
LABEL_71:
  OUTLINED_FUNCTION_2_103();
  v108();
LABEL_14:
  v62 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1DD5BF31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, void *a11)
{
  v13 = sub_1DD63FDA8();
  if (a5)
  {
    a5 = sub_1DD63FDA8();
  }

  if (a6)
  {
    v14 = sub_1DD6400F8();
  }

  else
  {
    v14 = 0;
  }

  LOBYTE(v15) = a10 & 1;
  v16 = v14;
  [a11 addTokenWithValue:v13 cleanValue:a5 normalizedValues:v15 beginIndex:? endIndex:? isSignificant:? isWhitespace:?];
}

uint64_t sub_1DD5BF410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, char a8, char a9)
{
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = sub_1DD63FDD8();
  v17 = v16;
  if (a4)
  {
    v18 = sub_1DD63FDD8();
    a4 = v19;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v18 = 0;
  if (a5)
  {
LABEL_3:
    a5 = sub_1DD640118();
  }

LABEL_4:

  HIBYTE(v21) = a9;
  LOBYTE(v21) = a8;
  v13(a2, v15, v17, v18, a4, a5, a6, a7, v21);
}

void sub_1DD5BF51C(void **a1@<X0>, void *a2@<X8>)
{
  v102 = a2;
  v132 = *MEMORY[0x1E69E9840];
  v106 = sub_1DD63EDE8();
  v107 = *(v106 - 8);
  v4 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v99 - v7;
  v125 = sub_1DD63F7E8();
  v8 = *(v125 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v108 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v120 = &v99 - v12;
  v13 = sub_1DD63DBD8();
  v121 = *(v13 - 8);
  v14 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v114 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v111 = &v99 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v128 = &v99 - v19;
  v20 = sub_1DD63F808();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = sub_1DD63DBA8();
  v101 = *(v22 - 8);
  v23 = *(v101 + 64);
  *&v24 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
  v26 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  *&v130[0] = 0;
  v28 = [v27 toOntologyGraphData_];
  v29 = *&v130[0];
  if (v28)
  {
    v30 = v8;
    v31 = sub_1DD63CF28();
    v33 = v32;

    v131 = 0;
    memset(v130, 0, sizeof(v130));
    sub_1DD3D01B4(v31, v33);
    sub_1DD63F7F8();
    sub_1DD5C0480();
    sub_1DD63F818();
    if (v2)
    {
LABEL_37:
      sub_1DD3AD790(v31, v33);
      goto LABEL_38;
    }

    v100 = 0;
    v34 = sub_1DD63DB88();
    v35 = 0;
    v119 = *(v34 + 16);
    v126 = v121 + 16;
    v122 = (v30 + 8);
    v110 = (v121 + 8);
    v112 = (v121 + 32);
    *&v36 = 136315138;
    v103 = v36;
    v113 = MEMORY[0x1E69E7CC0];
    v116 = v22;
    v99 = v26;
    v115 = v33;
    v118 = v31;
    v123 = v13;
    v117 = v34;
    while (1)
    {
      v37 = v35;
LABEL_5:
      if (v37 == v119)
      {
        break;
      }

      if (v37 >= *(v34 + 16))
      {
        __break(1u);
        goto LABEL_50;
      }

      v38 = ((*(v121 + 80) + 32) & ~*(v121 + 80));
      v39 = *(v121 + 72);
      v127 = v37 + 1;
      v124 = v38;
      v40 = *(v121 + 16);
      v40(v128, v38 + v34 + v39 * v37, v13);
      if (sub_1DD63DBC8())
      {
        if (qword_1ECCDB150 != -1)
        {
          swift_once();
        }

        v41 = qword_1ECD0DE40;
        v42 = v120;
        sub_1DD63DBB8();
        v43 = sub_1DD63F7D8();
        v45 = v44;
        v46 = *v122;
        (*v122)(v42, v125);
        if (*(v41 + 16))
        {
          v47 = *(v41 + 40);
          sub_1DD640E28();
          sub_1DD63FD28();
          v48 = sub_1DD640E78();
          v49 = ~(-1 << *(v41 + 32));
          while (1)
          {
            v50 = v48 & v49;
            if (((*(v41 + 56 + (((v48 & v49) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v48 & v49)) & 1) == 0)
            {
              break;
            }

            v51 = (*(v41 + 48) + 16 * v50);
            if (*v51 != v43 || v51[1] != v45)
            {
              v53 = sub_1DD640CD8();
              v48 = v50 + 1;
              if ((v53 & 1) == 0)
              {
                continue;
              }
            }

            if (qword_1EE165FB0 != -1)
            {
              swift_once();
            }

            v54 = sub_1DD63F9F8();
            __swift_project_value_buffer(v54, qword_1EE16F068);
            v55 = v111;
            v13 = v123;
            v40(v111, v128, v123);
            v56 = sub_1DD63F9D8();
            v57 = sub_1DD640368();
            v58 = os_log_type_enabled(v56, v57);
            v59 = v110;
            if (v58)
            {
              v60 = swift_slowAlloc();
              v124 = swift_slowAlloc();
              *&v130[0] = v124;
              *v60 = v103;
              v61 = v108;
              v109 = v57;
              sub_1DD63DBB8();
              v62 = sub_1DD63F7D8();
              v64 = v63;
              v65 = v61;
              v13 = v123;
              v46(v65, v125);
              v66 = *v59;
              (*v59)(v55, v13);
              v67 = sub_1DD39565C(v62, v64, v130);

              *(v60 + 4) = v67;
              _os_log_impl(&dword_1DD38D000, v56, v109, "[UCG] Will ignore span with disallowed bundle ID: %s", v60, 0xCu);
              v68 = v124;
              __swift_destroy_boxed_opaque_existential_1(v124);
              MEMORY[0x1E12B3DA0](v68, -1, -1);
              MEMORY[0x1E12B3DA0](v60, -1, -1);
            }

            else
            {

              v66 = *v59;
              (*v59)(v55, v13);
            }

            v31 = v118;
            v66(v128, v13);
            v37 = v127;
            v22 = v116;
            v33 = v115;
            v34 = v117;
            goto LABEL_5;
          }
        }

        v22 = v116;
        v33 = v115;
        v13 = v123;
      }

      v69 = *v112;
      (*v112)(v114, v128, v13);
      v70 = v113;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD42C03C(0, *(v70 + 16) + 1, 1);
        v70 = v129;
      }

      v73 = *(v70 + 16);
      v72 = *(v70 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_1DD42C03C(v72 > 1, v73 + 1, 1);
        v70 = v129;
      }

      *(v70 + 16) = v73 + 1;
      v113 = v70;
      v69(v124 + v70 + v73 * v39, v114, v13);
      v31 = v118;
      v34 = v117;
      v35 = v127;
    }

    v81 = v99;
    sub_1DD63DB98();
    v82 = v100;
    v83 = sub_1DD63DBE8();
    if (v82)
    {
      (*(v101 + 8))(v81, v22);
      goto LABEL_37;
    }

    v85 = v83;
    v100 = 0;
    v86 = sub_1DD63EDF8();
    *&v130[0] = MEMORY[0x1E69E7CC0];
    v87 = *(v86 + 16);
    if (v87)
    {
      v127 = v85;
      v88 = *(v107 + 16);
      v89 = *(v107 + 80);
      v126 = v86;
      v90 = v86 + ((v89 + 32) & ~v89);
      v128 = *(v107 + 72);
      v107 += 16;
      v91 = (v107 - 8);
      v80 = MEMORY[0x1E69E7CC0];
      v92 = v104;
      do
      {
        v93 = v106;
        v88(v92, v90, v106);
        v88(v105, v92, v93);
        v94 = sub_1DD63EE28();
        v95 = *(v94 + 48);
        v96 = *(v94 + 52);
        swift_allocObject();
        sub_1DD63EE18();
        v97 = sub_1DD63EE08();

        v98 = (*v91)(v92, v93);
        if (v97)
        {
          MEMORY[0x1E12B23F0](v98);
          if (*((*&v130[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v130[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DD640138();
          }

          sub_1DD640168();
          v80 = *&v130[0];
        }

        v90 += v128;
        --v87;
      }

      while (v87);

      v22 = v116;
      v81 = v99;
      v33 = v115;
    }

    else
    {

      v80 = MEMORY[0x1E69E7CC0];
    }

    sub_1DD3AD790(v118, v33);
    (*(v101 + 8))(v81, v22);
  }

  else
  {
    v74 = v29;
    v75 = sub_1DD63CD98();

    swift_willThrow();
    if (qword_1EE165FB0 != -1)
    {
LABEL_50:
      swift_once();
    }

    v76 = sub_1DD63F9F8();
    __swift_project_value_buffer(v76, qword_1EE16F068);
    v77 = sub_1DD63F9D8();
    v78 = sub_1DD640368();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1DD38D000, v77, v78, "[UCG] Will ignore span with no ontology mapping", v79, 2u);
      MEMORY[0x1E12B3DA0](v79, -1, -1);
    }

    v80 = MEMORY[0x1E69E7CC0];
  }

  *v102 = v80;
LABEL_38:
  v84 = *MEMORY[0x1E69E9840];
}

id sub_1DD5C0174(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DD63D138();
  v14[0] = 0;
  v5 = [v2 initWithTokenizerLocale:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1DD63D168();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_1DD63CD98();

    swift_willThrow();
    v11 = sub_1DD63D168();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

id sub_1DD5C02C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v8 = sub_1DD63D138();
  v9 = sub_1DD63FDA8();

  v10 = [v5 initWithLocale:v8 originalText:v9 asrHypothesis:a4];

  v11 = sub_1DD63D168();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DD5C03D8()
{
  result = qword_1ECCDF4D0;
  if (!qword_1ECCDF4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCDF4D0);
  }

  return result;
}

unint64_t sub_1DD5C041C()
{
  result = qword_1ECCDF4E0;
  if (!qword_1ECCDF4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF4D8, &qword_1DD65FB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF4E0);
  }

  return result;
}

unint64_t sub_1DD5C0480()
{
  result = qword_1ECCDF4E8;
  if (!qword_1ECCDF4E8)
  {
    sub_1DD63DBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF4E8);
  }

  return result;
}

uint64_t sub_1DD5C04D8()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD5C0524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void, void)@<X8>)
{
  LODWORD(v113) = a3;
  v104 = a2;
  v115 = a7;
  v105 = sub_1DD63D2B8();
  v12 = OUTLINED_FUNCTION_0(v105);
  v103 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v102 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_2_1();
  v108 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v106 = v94 - v22;
  v107 = sub_1DD63D078();
  v23 = OUTLINED_FUNCTION_0(v107);
  v112 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_1();
  v95 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v111 = v94 - v29;
  v30 = sub_1DD63D188();
  v31 = OUTLINED_FUNCTION_0(v30);
  v100 = v32;
  v101 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2();
  v99 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = v94 - v39;
  v114 = sub_1DD63D2D8();
  v41 = OUTLINED_FUNCTION_0(v114);
  v110 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2();
  v109 = v46 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v50 = v94 - v49;
  v51 = sub_1DD63CBB8();
  v52 = OUTLINED_FUNCTION_0(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2();
  v59 = (v58 - v57);
  v96 = a5;
  v97 = v7;
  v98 = a6;
  sub_1DD5C0D9C(a1, a4, a5, a6, v50);
  if (__swift_getEnumTagSinglePayload(v50, 1, v51) != 1)
  {
    v94[1] = a4;
    v62 = v115;
    v63 = *(v54 + 32);
    v63(v59, v50, v51);
    if (v113)
    {
      v63(v62, v59, v51);
      v61 = v62;
LABEL_5:
      v60 = 0;
      return __swift_storeEnumTagSinglePayload(v61, v60, 1, v51);
    }

    v94[0] = v54;
    v113 = v59;
    sub_1DD63CB78();
    v64 = OUTLINED_FUNCTION_3_86();
    v65 = v114;
    if (__swift_getEnumTagSinglePayload(v64, v66, v114) == 1)
    {
      v68 = v99;
      v67 = v100;
      v69 = v101;
      (*(v100 + 104))(v99, *MEMORY[0x1E6969868], v101);
      v70 = v109;
      sub_1DD63D198();
      v71 = v68;
      v72 = v70;
      (*(v67 + 8))(v71, v69);
      v73 = OUTLINED_FUNCTION_3_86();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, v74, v65);
      v61 = v62;
      v76 = v107;
      v77 = v108;
      v78 = v111;
      v79 = v112;
      if (EnumTagSinglePayload != 1)
      {
        sub_1DD3ADFD0(v40, &qword_1ECCDC148, &qword_1DD645290);
      }
    }

    else
    {
      v72 = v109;
      (*(v110 + 32))(v109, v40, v65);
      v61 = v62;
      v76 = v107;
      v77 = v108;
      v78 = v111;
      v79 = v112;
    }

    v80 = v106;
    v81 = v113;
    sub_1DD63D248();
    if (__swift_getEnumTagSinglePayload(v80, 1, v76) == 1)
    {
      (*(v110 + 8))(v72, v114);
      OUTLINED_FUNCTION_2_104();
      v82(v81, v51);
      v83 = v80;
    }

    else
    {
      v115 = *(v79 + 32);
      v115(v78, v80, v76);
      v84 = v103;
      v85 = v102;
      v86 = v105;
      (*(v103 + 104))(v102, *MEMORY[0x1E6969A48], v105);
      sub_1DD63D268();
      (*(v84 + 8))(v85, v86);
      if (__swift_getEnumTagSinglePayload(v77, 1, v76) != 1)
      {
        v89 = v95;
        v115(v95, v77, v76);
        v90 = (*(v98 + 32))(v96);
        v91 = v109;
        sub_1DD3D856C(v90, v61);

        v92 = *(v112 + 8);
        v92(v89, v76);
        v92(v111, v76);
        (*(v110 + 8))(v91, v114);
        OUTLINED_FUNCTION_2_104();
        v93(v113, v51);
        goto LABEL_5;
      }

      (*(v112 + 8))(v111, v76);
      (*(v110 + 8))(v109, v114);
      OUTLINED_FUNCTION_2_104();
      v87(v113, v51);
      v83 = v77;
    }

    sub_1DD3ADFD0(v83, &qword_1ECCDEBC0, &qword_1DD6445A0);
    v60 = 1;
    return __swift_storeEnumTagSinglePayload(v61, v60, 1, v51);
  }

  sub_1DD3ADFD0(v50, &qword_1ECCDC4F8, &unk_1DD646910);
  v60 = 1;
  v61 = v115;
  return __swift_storeEnumTagSinglePayload(v61, v60, 1, v51);
}

unint64_t sub_1DD5C0CB4(char a1)
{
  result = 0x726574736165;
  switch(a1)
  {
    case 1:
      result = 0x7664617473726966;
      break;
    case 2:
      result = 0x6967736B6E616874;
      break;
    case 3:
      result = 0x757165686372616DLL;
      break;
    case 4:
      result = 0x736C6F73656E756ALL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5C0D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_2();
  if ((*(v11 + 16))())
  {
    (*(a4 + 24))(a1, a2, a3, a4);
    v12 = sub_1DD63CBB8();
    v13 = a5;
    v14 = 0;
  }

  else
  {
    sub_1DD63CBB8();
    v13 = OUTLINED_FUNCTION_3_86();
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
}

uint64_t sub_1DD5C1158(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[48])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t sub_1DD5C11A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1DD5C1204(uint64_t a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v2 = *(v29 - 8);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF508, &qword_1DD65FC48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  *(inited + 32) = swift_getKeyPath();
  v26 = inited + 32;
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v25 = inited;
  *(inited + 88) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC30, &unk_1DD6575D0);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v31 = *(v2 + 72);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD643F90;
  v30 = v9;
  sub_1DD4BF298(a1, v10 + v9);
  for (i = 0; ; ++i)
  {
    if (i == 4)
    {
      swift_setDeallocating();
      sub_1DD46CB8C();
      return;
    }

    v12 = (v26 + 16 * i);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(v10 + 16);
    if (v15)
    {
      break;
    }

    v24 = *v12;

    v10 = MEMORY[0x1E69E7CC0];
LABEL_18:
  }

  v27 = i;
  v28 = v10;
  v16 = v10 + v30;

  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DD4BF298(v16, v6);
    v17 = sub_1DD5C15F4(v6, v14, v13);
    sub_1DD5C224C(v6);
    v18 = *(v17 + 16);
    v19 = *(v10 + 16);
    if (__OFADD__(v19, v18))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v19 + v18 > *(v10 + 24) >> 1)
    {
      sub_1DD3BF7FC();
      v10 = v20;
    }

    if (*(v17 + 16))
    {
      if ((*(v10 + 24) >> 1) - *(v10 + 16) < v18)
      {
        goto LABEL_22;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v21 = *(v10 + 16);
        v22 = __OFADD__(v21, v18);
        v23 = v21 + v18;
        if (v22)
        {
          goto LABEL_23;
        }

        *(v10 + 16) = v23;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_21;
      }
    }

    v16 += v31;
    if (!--v15)
    {

      i = v27;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

size_t sub_1DD5C15F4(const void *a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  OUTLINED_FUNCTION_0(v35);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  memcpy(v46, a1, sizeof(v46));
  memcpy(v45, a1, sizeof(v45));
  sub_1DD3C9478(v46, v47);
  v36 = a2;
  swift_getAtKeyPath();
  memcpy(v47, v45, 0x108uLL);
  sub_1DD3C9580(v47);
  v12 = v43[0];
  v13 = v43[1];
  v45[0] = v43[0];
  v45[1] = v43[1];
  v43[0] = 31868;
  v43[1] = 0xE200000000000000;
  sub_1DD3B7F10();
  OUTLINED_FUNCTION_3_87();
  if ((sub_1DD6406D8() & 1) == 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC30, &unk_1DD6575D0);
    v29 = *(v6 + 72);
    v30 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DD643F90;
    sub_1DD4BF298(a1, v18 + v30);
    return v18;
  }

  v45[0] = v12;
  v45[1] = v13;
  v43[0] = 31868;
  v43[1] = 0xE200000000000000;
  OUTLINED_FUNCTION_3_87();
  v14 = sub_1DD640638();

  v15 = *(v14 + 16);
  if (!v15)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v33 = a1;
  v44 = MEMORY[0x1E69E7CC0];
  result = sub_1DD42BA08(0, v15, 0);
  v17 = 0;
  v18 = v44;
  v34 = *(v14 + 16);
  v19 = (v14 + 40);
  v32 = v15 - 1;
  while (v34 != v17)
  {
    if (v17 >= *(v14 + 16))
    {
      goto LABEL_15;
    }

    v20 = *(v19 - 1);
    v21 = *v19;
    sub_1DD4BF298(v33, v11);
    v38[0] = v20;
    v38[1] = v21;
    swift_bridgeObjectRetain_n();
    swift_setAtWritableKeyPath();
    v22 = &v11[*(v35 + 36)];
    v23 = *(v22 + 40);
    v39 = v22[280];
    v24 = *(v22 + 19);
    v40 = *(v22 + 18);
    v41 = v24;
    v42 = v23;
    v38[0] = v17;
    swift_setAtWritableKeyPath();
    v25 = v42;
    v22[280] = v39;
    v26 = v41;
    *(v22 + 18) = v40;
    *(v22 + 19) = v26;
    *(v22 + 40) = v25;
    memcpy(v43, v11, sizeof(v43));
    memcpy(v45, v22 + 8, sizeof(v45));
    sub_1DD3C9478(v43, v38);
    sub_1DD3C9580(v45);

    memcpy(v22 + 8, v43, 0x108uLL);
    v44 = v18;
    v28 = *(v18 + 16);
    v27 = *(v18 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1DD42BA08(v27 > 1, v28 + 1, 1);
      v18 = v44;
    }

    *(v18 + 16) = v28 + 1;
    result = sub_1DD5C22B4(v11, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v28);
    if (v32 == v17)
    {

      return v18;
    }

    v19 += 2;
    ++v17;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1DD5C1998(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F7272457369 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D614E6E65766967 && a2 == 0xED00006B6E615265;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x614E656C6464696DLL && a2 == 0xEE006B6E6152656DLL;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x614E796C696D6166 && a2 == 0xEE006B6E6152656DLL;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x656D614E6C6C7566 && a2 == 0xEC0000006B6E6152)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD640CD8();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD5C1B9C(char a1)
{
  result = 0x726F7272457369;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x6D614E6E65766967;
      break;
    case 3:
      v3 = 0x656C6464696DLL;
      goto LABEL_6;
    case 4:
      v3 = 0x796C696D6166;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      break;
    case 5:
      result = 0x656D614E6C6C7566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5C1C64(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF4F8, &qword_1DD65FC30);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5C21F8();
  sub_1DD640EF8();
  v14 = *v3;
  v21[15] = 0;
  OUTLINED_FUNCTION_10();
  sub_1DD640C28();
  if (!v2)
  {
    v15 = v3[1];
    v21[14] = 1;
    OUTLINED_FUNCTION_10();
    sub_1DD640C58();
    v16 = v3[2];
    v21[13] = 2;
    OUTLINED_FUNCTION_10();
    sub_1DD640C48();
    v17 = v3[3];
    v21[12] = 3;
    OUTLINED_FUNCTION_10();
    sub_1DD640C48();
    v18 = v3[4];
    v21[11] = 4;
    OUTLINED_FUNCTION_10();
    sub_1DD640C48();
    v19 = v3[5];
    v21[10] = 5;
    OUTLINED_FUNCTION_10();
    sub_1DD640C48();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1DD5C1E28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF500, &unk_1DD65FC38);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5C21F8();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  OUTLINED_FUNCTION_1_115();
  v14 = sub_1DD640B38();
  v29 = 1;
  OUTLINED_FUNCTION_1_115();
  v15 = sub_1DD640B68();
  v28 = 2;
  OUTLINED_FUNCTION_1_115();
  v24 = sub_1DD640B58();
  v27 = 3;
  OUTLINED_FUNCTION_1_115();
  v23 = sub_1DD640B58();
  v26 = 4;
  OUTLINED_FUNCTION_1_115();
  v22 = sub_1DD640B58();
  v25 = 5;
  OUTLINED_FUNCTION_1_115();
  v16 = sub_1DD640B58();
  (*(v7 + 8))(v12, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14 & 1;
  v19 = v23;
  v18 = v24;
  *(a2 + 8) = v15;
  *(a2 + 16) = v18;
  v20 = v22;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = v16;
  return result;
}

uint64_t sub_1DD5C2054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5C1998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5C207C(uint64_t a1)
{
  v2 = sub_1DD5C21F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5C20B8(uint64_t a1)
{
  v2 = sub_1DD5C21F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD5C20F4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DD5C1E28(a1, v6);
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

unint64_t sub_1DD5C216C()
{
  result = qword_1ECCDF4F0;
  if (!qword_1ECCDF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF4F0);
  }

  return result;
}

unint64_t sub_1DD5C21C0(void *a1)
{
  a1[2] = sub_1DD439AAC();
  a1[3] = sub_1DD4338A8();
  result = sub_1DD5C216C();
  a1[4] = result;
  return result;
}

unint64_t sub_1DD5C21F8()
{
  result = qword_1EE163D00;
  if (!qword_1EE163D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163D00);
  }

  return result;
}

uint64_t sub_1DD5C224C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD5C22B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SpeechAlternativeQueryExpander.SpeechAlternativeRanks.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5C2404()
{
  result = qword_1ECCDF510;
  if (!qword_1ECCDF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF510);
  }

  return result;
}

unint64_t sub_1DD5C245C()
{
  result = qword_1EE163CF0;
  if (!qword_1EE163CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163CF0);
  }

  return result;
}

unint64_t sub_1DD5C24B4()
{
  result = qword_1EE163CF8;
  if (!qword_1EE163CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163CF8);
  }

  return result;
}

uint64_t sub_1DD5C2520()
{
  xmmword_1ECCDF578 = 0u;
  unk_1ECCDF588 = 0u;
  xmmword_1ECCDF558 = 0u;
  unk_1ECCDF568 = 0u;
  xmmword_1ECCDF518 = xmmword_1DD65FE70;
  unk_1ECCDF528 = xmmword_1DD65FE70;
  xmmword_1ECCDF538 = xmmword_1DD65FE70;
  unk_1ECCDF548 = 0u;

  unk_1ECCDF548 = xmmword_1DD65FE70;

  xmmword_1ECCDF558 = xmmword_1DD65FE70;

  unk_1ECCDF568 = xmmword_1DD65FE70;

  xmmword_1ECCDF578 = xmmword_1DD65FE70;

  unk_1ECCDF588 = xmmword_1DD65FE70;
}

__int128 *sub_1DD5C25D0()
{
  if (qword_1ECCDB138 != -1)
  {
    OUTLINED_FUNCTION_1_119();
  }

  return &xmmword_1ECCDF518;
}

uint64_t static SportsConstants.EmptySportsItem.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECCDB138 != -1)
  {
    OUTLINED_FUNCTION_1_119();
  }

  OUTLINED_FUNCTION_8_65();
  OUTLINED_FUNCTION_4_88(v4);
  OUTLINED_FUNCTION_4_88(a1);
  return sub_1DD400BFC(v4, v3);
}

uint64_t static SportsConstants.EmptySportsItem.setter()
{
  if (qword_1ECCDB138 != -1)
  {
    OUTLINED_FUNCTION_1_119();
  }

  OUTLINED_FUNCTION_7_61();
  OUTLINED_FUNCTION_4_88(v3);
  v0 = OUTLINED_FUNCTION_1_8();
  memcpy(v0, v1, 0x80uLL);
  return sub_1DD400C58(v3);
}

uint64_t (*static SportsConstants.EmptySportsItem.modify())()
{
  if (qword_1ECCDB138 != -1)
  {
    OUTLINED_FUNCTION_1_119();
  }

  OUTLINED_FUNCTION_1_8();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1DD5C276C@<X0>(void *a1@<X8>)
{
  sub_1DD5C25D0();
  swift_beginAccess();
  memcpy(__dst, &xmmword_1ECCDF518, sizeof(__dst));
  memcpy(a1, &xmmword_1ECCDF518, 0x80uLL);
  return sub_1DD400BFC(__dst, v3);
}

uint64_t sub_1DD5C27E8(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DD400BFC(__dst, v3);
  sub_1DD5C25D0();
  swift_beginAccess();
  memcpy(v3, &xmmword_1ECCDF518, sizeof(v3));
  memcpy(&xmmword_1ECCDF518, __dst, 0x80uLL);
  return sub_1DD400C58(v3);
}

uint64_t sub_1DD5C2870()
{
  xmmword_1ECCDF5F8 = 0u;
  *&qword_1ECCDF608 = 0u;
  xmmword_1ECCDF5D8 = 0u;
  *&qword_1ECCDF5E8 = 0u;
  xmmword_1ECCDF5B8 = 0u;
  *&qword_1ECCDF5C8 = 0u;
  xmmword_1ECCDF598 = 0u;
  unk_1ECCDF5A8 = 0u;

  qword_1ECCDF5C8 = 0;
  qword_1ECCDF5D0 = 0;

  xmmword_1ECCDF5D8 = 0uLL;

  qword_1ECCDF5E8 = 0;
  qword_1ECCDF5F0 = 0;

  xmmword_1ECCDF5F8 = 0uLL;

  qword_1ECCDF608 = 0;
  qword_1ECCDF610 = 0;
}

__int128 *sub_1DD5C28F8()
{
  if (qword_1ECCDB140 != -1)
  {
    OUTLINED_FUNCTION_0_136();
  }

  return &xmmword_1ECCDF598;
}

uint64_t static SportsConstants.SportsItemNils.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECCDB140 != -1)
  {
    OUTLINED_FUNCTION_0_136();
  }

  OUTLINED_FUNCTION_8_65();
  OUTLINED_FUNCTION_4_88(v4);
  OUTLINED_FUNCTION_4_88(a1);
  return sub_1DD400BFC(v4, v3);
}

uint64_t static SportsConstants.SportsItemNils.setter()
{
  if (qword_1ECCDB140 != -1)
  {
    OUTLINED_FUNCTION_0_136();
  }

  OUTLINED_FUNCTION_7_61();
  OUTLINED_FUNCTION_4_88(v3);
  v0 = OUTLINED_FUNCTION_1_8();
  memcpy(v0, v1, 0x80uLL);
  return sub_1DD400C58(v3);
}

uint64_t (*static SportsConstants.SportsItemNils.modify())()
{
  if (qword_1ECCDB140 != -1)
  {
    OUTLINED_FUNCTION_0_136();
  }

  OUTLINED_FUNCTION_1_8();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1DD5C2A94@<X0>(void *a1@<X8>)
{
  sub_1DD5C28F8();
  swift_beginAccess();
  memcpy(__dst, &xmmword_1ECCDF598, sizeof(__dst));
  memcpy(a1, &xmmword_1ECCDF598, 0x80uLL);
  return sub_1DD400BFC(__dst, v3);
}

uint64_t sub_1DD5C2B10(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DD400BFC(__dst, v3);
  sub_1DD5C28F8();
  swift_beginAccess();
  memcpy(v3, &xmmword_1ECCDF598, sizeof(v3));
  memcpy(&xmmword_1ECCDF598, __dst, 0x80uLL);
  return sub_1DD400C58(v3);
}

_BYTE *storeEnumTagSinglePayload for SportsConstants(_BYTE *result, int a2, int a3)
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

void __swiftcall SportsItem.init(sport:league:team:athlete:sportQId:leagueQId:teamQId:athleteQId:)(SiriInference::SportsItem *__return_ptr retstr, Swift::String_optional sport, Swift::String_optional league, Swift::String_optional team, Swift::String_optional athlete, Swift::String_optional sportQId, Swift::String_optional leagueQId, Swift::String_optional teamQId, Swift::String_optional athleteQId)
{
  retstr->sport = sport;
  retstr->league = league;
  retstr->team = team;
  retstr->athlete = athlete;
  retstr->sportQId = sportQId;
  retstr->leagueQId = leagueQId;
  retstr->teamQId = teamQId;
  retstr->athleteQId = athleteQId;
}

uint64_t SportsItem.sport.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_15_0();
}

uint64_t SportsItem.sport.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SportsItem.league.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t SportsItem.league.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SportsItem.team.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t SportsItem.team.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t SportsItem.athlete.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t SportsItem.athlete.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t SportsItem.sportQId.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t SportsItem.sportQId.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t SportsItem.leagueQId.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t SportsItem.leagueQId.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t SportsItem.teamQId.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t SportsItem.teamQId.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t SportsItem.athleteQId.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t SportsItem.athleteQId.setter()
{
  OUTLINED_FUNCTION_14_1();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t static SportsItem.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[5];
  v87 = a1[4];
  v85 = a1[6];
  v83 = a1[7];
  v81 = a1[8];
  v79 = a1[9];
  v77 = a1[10];
  v75 = a1[11];
  v73 = a1[12];
  v71 = a1[13];
  v69 = a1[14];
  v67 = a1[15];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = a2[5];
  v86 = a2[4];
  v82 = a2[6];
  v84 = a2[7];
  v78 = a2[8];
  v80 = a2[9];
  v74 = a2[10];
  v76 = a2[11];
  v70 = a2[12];
  v72 = a2[13];
  v66 = a2[14];
  v68 = a2[15];
  if (a1[1])
  {
    sub_1DD63FE58();
    v12 = v11;
    if (!v7)
    {
      if (v11)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    v12 = 0;
  }

  sub_1DD63FE58();
  v14 = v13;
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_5_82();
    v15 = v15 && v12 == v14;
    if (v15)
    {

      if (v4)
      {
        goto LABEL_18;
      }

LABEL_21:
      if (!v8)
      {
        goto LABEL_34;
      }

      v19 = 0;
      goto LABEL_23;
    }

    v16 = sub_1DD640CD8();

    if ((v16 & 1) == 0)
    {
      goto LABEL_119;
    }
  }

  else if (v13)
  {
    goto LABEL_140;
  }

LABEL_17:
  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_18:
  v17 = sub_1DD63FE58();
  v19 = v18;
  if (!v8)
  {
    if (!v18)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v3 = v17;
LABEL_23:
  v20 = sub_1DD63FE58();
  if (!v19)
  {
    if (v21)
    {
      goto LABEL_140;
    }

LABEL_34:
    if (v5)
    {
      goto LABEL_35;
    }

LABEL_38:
    if (!v10)
    {
      goto LABEL_53;
    }

    v26 = 0;
    goto LABEL_40;
  }

  if (!v21)
  {
LABEL_32:
    v24 = 0;
LABEL_141:

    return v24 & 1;
  }

  if (v3 != v20 || v19 != v21)
  {
    v23 = sub_1DD640CD8();

    if ((v23 & 1) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_34;
  }

  if (!v5)
  {
    goto LABEL_38;
  }

LABEL_35:
  sub_1DD63FE58();
  v26 = v25;
  if (!v10)
  {
    if (!v25)
    {
      goto LABEL_53;
    }

LABEL_49:
    v24 = 0;
    goto LABEL_141;
  }

LABEL_40:
  sub_1DD63FE58();
  v28 = v27;
  if (v26)
  {
    if (v27)
    {
      OUTLINED_FUNCTION_5_82();
      if (v15 && v26 == v28)
      {
      }

      else
      {
        v30 = sub_1DD640CD8();

        if ((v30 & 1) == 0)
        {
          goto LABEL_119;
        }
      }

      goto LABEL_53;
    }

    goto LABEL_49;
  }

  if (v27)
  {
    goto LABEL_140;
  }

LABEL_53:
  if (v83)
  {
    v31 = sub_1DD63FE58();
    v33 = v32;
    if (!v84)
    {
      if (v32)
      {
        goto LABEL_138;
      }

      goto LABEL_71;
    }

    v34 = v31;
  }

  else
  {
    v34 = v85;
    if (!v84)
    {
      goto LABEL_71;
    }

    v33 = 0;
  }

  sub_1DD63FE58();
  v36 = v35;
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_138;
    }

    OUTLINED_FUNCTION_5_82();
    if (v15 && v33 == v36)
    {
    }

    else
    {
      OUTLINED_FUNCTION_3_89();
      OUTLINED_FUNCTION_10_53();

      if ((v34 & 1) == 0)
      {
        goto LABEL_119;
      }
    }
  }

  else if (v35)
  {
    goto LABEL_140;
  }

LABEL_71:
  if (v79)
  {
    v38 = sub_1DD63FE58();
    v40 = v39;
    if (!v80)
    {
      if (v39)
      {
        goto LABEL_138;
      }

      goto LABEL_89;
    }

    v41 = v38;
  }

  else
  {
    v41 = v81;
    if (!v80)
    {
      goto LABEL_89;
    }

    v40 = 0;
  }

  sub_1DD63FE58();
  v43 = v42;
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_138;
    }

    OUTLINED_FUNCTION_5_82();
    if (v15 && v40 == v43)
    {
    }

    else
    {
      OUTLINED_FUNCTION_3_89();
      OUTLINED_FUNCTION_10_53();

      if ((v41 & 1) == 0)
      {
        goto LABEL_119;
      }
    }
  }

  else if (v42)
  {
    goto LABEL_140;
  }

LABEL_89:
  if (v75)
  {
    v45 = sub_1DD63FE58();
    v47 = v46;
    if (!v76)
    {
      if (v46)
      {
        goto LABEL_138;
      }

      goto LABEL_107;
    }

    v48 = v45;
  }

  else
  {
    v48 = v77;
    if (!v76)
    {
      goto LABEL_107;
    }

    v47 = 0;
  }

  sub_1DD63FE58();
  v50 = v49;
  if (v47)
  {
    if (!v49)
    {
      goto LABEL_138;
    }

    OUTLINED_FUNCTION_5_82();
    if (v15 && v47 == v50)
    {
    }

    else
    {
      OUTLINED_FUNCTION_3_89();
      OUTLINED_FUNCTION_10_53();

      if ((v48 & 1) == 0)
      {
        goto LABEL_119;
      }
    }
  }

  else if (v49)
  {
    goto LABEL_140;
  }

LABEL_107:
  if (v71)
  {
    v52 = sub_1DD63FE58();
    v54 = v53;
    if (!v72)
    {
      if (v53)
      {
        goto LABEL_138;
      }

      goto LABEL_125;
    }

    v55 = v52;
  }

  else
  {
    v55 = v73;
    if (!v72)
    {
      goto LABEL_125;
    }

    v54 = 0;
  }

  sub_1DD63FE58();
  v57 = v56;
  if (!v54)
  {
    if (v56)
    {
      goto LABEL_140;
    }

    goto LABEL_125;
  }

  if (!v56)
  {
    goto LABEL_138;
  }

  OUTLINED_FUNCTION_5_82();
  if (v15 && v54 == v57)
  {

    goto LABEL_125;
  }

  OUTLINED_FUNCTION_3_89();
  OUTLINED_FUNCTION_10_53();

  if (v55)
  {
LABEL_125:
    if (!v67)
    {
      v24 = v69;
      if (!v68)
      {
        goto LABEL_143;
      }

      v61 = 0;
LABEL_130:
      sub_1DD63FE58();
      v63 = v62;
      if (v61)
      {
        if (v62)
        {
          OUTLINED_FUNCTION_5_82();
          if (v15 && v61 == v63)
          {

            v24 = 1;
          }

          else
          {
            OUTLINED_FUNCTION_3_89();
            OUTLINED_FUNCTION_10_53();
          }

          goto LABEL_141;
        }

        goto LABEL_138;
      }

      if (v62)
      {
LABEL_140:
        v24 = 0;
        goto LABEL_141;
      }

LABEL_143:
      v24 = 1;
      return v24 & 1;
    }

    v59 = sub_1DD63FE58();
    v61 = v60;
    if (v68)
    {
      v24 = v59;
      goto LABEL_130;
    }

    if (!v60)
    {
      goto LABEL_143;
    }

LABEL_138:
    v24 = 0;
    goto LABEL_141;
  }

LABEL_119:
  v24 = 0;
  return v24 & 1;
}

uint64_t static SportsItem.partiallyEqual(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v56 = *(a1 + 32);
  v54 = *(a1 + 40);
  v52 = *(a1 + 48);
  v50 = *(a1 + 56);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);
  v61 = *a2;
  v62 = *a1;
  v63 = *(a2 + 8);
  v57 = *(a2 + 16);
  v58 = *(a1 + 24);
  v59 = *(a2 + 24);
  v60 = *(a1 + 16);
  v53 = *(a2 + 32);
  v55 = *(a2 + 40);
  v49 = *(a2 + 48);
  v51 = *(a2 + 56);
  if (v6)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = *(a1 + 104);
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = *(a2 + 96);
  v10 = *(a2 + 104);

  v11 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v11 = v7;
  }

  if (!v11)
  {
    goto LABEL_20;
  }

  if (v10)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v12;
  }

  if (!v14)
  {
LABEL_20:
    if (v4)
    {
      sub_1DD63FE58();
      v19 = v18;
      if (!v63)
      {
        if (v18)
        {
          goto LABEL_89;
        }

        goto LABEL_38;
      }
    }

    else
    {
      if (!v63)
      {
        goto LABEL_38;
      }

      v19 = 0;
    }

    sub_1DD63FE58();
    v21 = v20;
    if (v19)
    {
      if (!v20)
      {
        goto LABEL_89;
      }

      OUTLINED_FUNCTION_5_82();
      v22 = v22 && v19 == v21;
      if (v22)
      {
      }

      else
      {
        v23 = sub_1DD640CD8();

        if ((v23 & 1) == 0)
        {
          goto LABEL_90;
        }
      }
    }

    else if (v20)
    {
      goto LABEL_89;
    }

LABEL_38:
    if (v58)
    {
      v24 = sub_1DD63FE58();
      v26 = v25;
      if (!v59)
      {
        if (v25)
        {
          goto LABEL_89;
        }

        goto LABEL_56;
      }

      v27 = v24;
    }

    else
    {
      v27 = v60;
      if (!v59)
      {
        goto LABEL_56;
      }

      v26 = 0;
    }

    v28 = sub_1DD63FE58();
    if (v26)
    {
      if (!v29)
      {
        goto LABEL_89;
      }

      if (v27 == v28 && v26 == v29)
      {
      }

      else
      {
        v31 = OUTLINED_FUNCTION_7_62();

        if ((v31 & 1) == 0)
        {
          goto LABEL_90;
        }
      }
    }

    else if (v29)
    {
      goto LABEL_89;
    }

LABEL_56:
    if (v54)
    {
      v32 = sub_1DD63FE58();
      v34 = v33;
      if (!v55)
      {
        if (v33)
        {
          goto LABEL_89;
        }

        goto LABEL_74;
      }

      v35 = v32;
    }

    else
    {
      v35 = v56;
      if (!v55)
      {
        goto LABEL_74;
      }

      v34 = 0;
    }

    v36 = sub_1DD63FE58();
    if (v34)
    {
      if (!v37)
      {
        goto LABEL_89;
      }

      if (v35 == v36 && v34 == v37)
      {
      }

      else
      {
        v39 = OUTLINED_FUNCTION_7_62();

        if ((v39 & 1) == 0)
        {
          goto LABEL_90;
        }
      }
    }

    else if (v37)
    {
      goto LABEL_89;
    }

LABEL_74:
    if (v50)
    {
      v40 = sub_1DD63FE58();
      v42 = v41;
      if (!v51)
      {
        if (v41)
        {
          goto LABEL_89;
        }

        goto LABEL_93;
      }

      v43 = v40;
    }

    else
    {
      v43 = v52;
      if (!v51)
      {
        goto LABEL_93;
      }

      v42 = 0;
    }

    v44 = sub_1DD63FE58();
    if (v42)
    {
      if (v45)
      {
        if (v43 != v44 || v42 != v45)
        {
          v47 = OUTLINED_FUNCTION_7_62();

          return v47 & 1;
        }

        goto LABEL_93;
      }

LABEL_89:

LABEL_90:
      v17 = 0;
      return v17 & 1;
    }

    if (v45)
    {
      goto LABEL_89;
    }

LABEL_93:
    v17 = 1;
    return v17 & 1;
  }

  v70[0] = v62;
  v70[1] = v4;
  v70[2] = v60;
  v70[3] = v58;
  v70[4] = v56;
  v70[5] = v54;
  v70[6] = v52;
  v70[7] = v50;
  v15 = *(a1 + 80);
  v71 = *(a1 + 64);
  v72 = v15;
  v73 = v5;
  v74 = v6;
  v75 = *(a1 + 112);
  v64[0] = v61;
  v64[1] = v63;
  v64[2] = v57;
  v64[3] = v59;
  v64[4] = v53;
  v64[5] = v55;
  v64[6] = v49;
  v64[7] = v51;
  v16 = *(a2 + 80);
  v65 = *(a2 + 64);
  v66 = v16;
  v67 = v9;
  v68 = v10;
  v69 = *(a2 + 112);
  v17 = static SportsItem.== infix(_:_:)(v70, v64);
  return v17 & 1;
}

uint64_t sub_1DD5C3BD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F7073 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756761656CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1835099508 && a2 == 0xE400000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574656C687461 && a2 == 0xE700000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64495174726F7073 && a2 == 0xE800000000000000;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x495165756761656CLL && a2 == 0xE900000000000064;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6449516D616574 && a2 == 0xE700000000000000;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x516574656C687461 && a2 == 0xEA00000000006449)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD640CD8();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD5C3E54(char a1)
{
  result = 0x74726F7073;
  switch(a1)
  {
    case 1:
      result = 0x65756761656CLL;
      break;
    case 2:
      result = 1835099508;
      break;
    case 3:
      result = 0x6574656C687461;
      break;
    case 4:
      result = 0x64495174726F7073;
      break;
    case 5:
      result = 0x495165756761656CLL;
      break;
    case 6:
      result = 0x6449516D616574;
      break;
    case 7:
      result = 0x516574656C687461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5C3F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5C3BD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5C3F60(uint64_t a1)
{
  v2 = sub_1DD5C4228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5C3F9C(uint64_t a1)
{
  v2 = sub_1DD5C4228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF618, &qword_1DD65FE98);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v23 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v23[13] = v1[3];
  v23[14] = v13;
  v14 = v1[4];
  v23[11] = v1[5];
  v23[12] = v14;
  v15 = v1[6];
  v23[9] = v1[7];
  v23[10] = v15;
  v16 = v1[8];
  v23[7] = v1[9];
  v23[8] = v16;
  v17 = v1[11];
  v23[5] = v1[10];
  v23[6] = v17;
  v18 = v1[13];
  v23[3] = v1[12];
  v23[4] = v18;
  v19 = v1[15];
  v23[1] = v1[14];
  v23[2] = v19;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5C4228();
  sub_1DD640EF8();
  v31 = 0;
  v21 = v23[15];
  sub_1DD640BC8();
  if (!v21)
  {
    v30 = 1;
    OUTLINED_FUNCTION_9_55();
    v29 = 2;
    OUTLINED_FUNCTION_9_55();
    v28 = 3;
    OUTLINED_FUNCTION_9_55();
    v27 = 4;
    OUTLINED_FUNCTION_9_55();
    v26 = 5;
    OUTLINED_FUNCTION_9_55();
    v25 = 6;
    OUTLINED_FUNCTION_9_55();
    v24 = 7;
    OUTLINED_FUNCTION_9_55();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_1DD5C4228()
{
  result = qword_1ECCDF620;
  if (!qword_1ECCDF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF620);
  }

  return result;
}

uint64_t SportsItem.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v11 = v0[4];
  v12 = v0[6];
  v4 = v0[7];
  v5 = v0[9];
  v13 = v0[8];
  v14 = v0[10];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[13];
  v15 = v0[14];
  v16 = v0[15];
  if (v0[1])
  {
    v9 = *v0;
    sub_1DD640E48();
    sub_1DD63FD28();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1DD640E48();
    if (v2)
    {
LABEL_3:
      sub_1DD640E48();
      sub_1DD63FD28();
      if (v3)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1DD640E48();
      if (v4)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_1DD640E48();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1DD640E48();
  sub_1DD63FD28();
  if (v4)
  {
LABEL_5:
    sub_1DD640E48();
    sub_1DD63FD28();
    goto LABEL_10;
  }

LABEL_9:
  sub_1DD640E48();
LABEL_10:
  if (v5)
  {
    sub_1DD640E48();
    sub_1DD63FD28();
    if (v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_1DD640E48();
    if (v7)
    {
LABEL_12:
      sub_1DD640E48();
      sub_1DD63FD28();
      if (v8)
      {
        goto LABEL_13;
      }

LABEL_19:
      sub_1DD640E48();
      if (v16)
      {
        goto LABEL_14;
      }

      return sub_1DD640E48();
    }
  }

  sub_1DD640E48();
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_13:
  sub_1DD640E48();
  sub_1DD63FD28();
  if (!v16)
  {
    return sub_1DD640E48();
  }

LABEL_14:
  sub_1DD640E48();

  return sub_1DD63FD28();
}

uint64_t SportsItem.hashValue.getter()
{
  sub_1DD640E28();
  SportsItem.hash(into:)();
  return sub_1DD640E78();
}

uint64_t SportsItem.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF628, &qword_1DD65FEA0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v38 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1DD5C4228();
  sub_1DD640ED8();
  if (v2)
  {
    v49 = v2;
    OUTLINED_FUNCTION_1_120();
    OUTLINED_FUNCTION_12_44();
    __swift_destroy_boxed_opaque_existential_1(v50);
    v56 = 0;
    v57 = 0;
    v58 = v8;
    v59 = v5;
    v60 = v14;
    v61 = v13;
    v62 = a2;
    v63 = v2;
    v64 = v47;
    v65 = v48;
    OUTLINED_FUNCTION_8_66();
    v66 = 0;
    v67 = 0;
  }

  else
  {
    LOBYTE(v56) = 0;
    v45 = sub_1DD640AD8();
    v46 = v16;
    v43 = OUTLINED_FUNCTION_2_106(1);
    v44 = v17;
    v18 = OUTLINED_FUNCTION_2_106(2);
    v19 = a2;
    v42 = v20;
    v21 = OUTLINED_FUNCTION_2_106(3);
    v41 = v22;
    v23 = OUTLINED_FUNCTION_2_106(4);
    v48 = v24;
    v25 = OUTLINED_FUNCTION_2_106(5);
    v47 = v23;
    v51 = v25;
    v54 = v26;
    v52 = OUTLINED_FUNCTION_2_106(6);
    v53 = v27;
    v68 = 7;
    v28 = sub_1DD640AD8();
    v49 = 0;
    v29 = v28;
    v30 = v12;
    v32 = v31;
    (*(v8 + 8))(v30, v5);
    v34 = v45;
    v33 = v46;
    v55[0] = v45;
    v55[1] = v46;
    v55[2] = v43;
    v55[3] = v44;
    v55[4] = v18;
    v39 = v21;
    v40 = v18;
    v35 = v42;
    v55[5] = v42;
    v55[6] = v21;
    v36 = v41;
    v55[7] = v41;
    v55[8] = v23;
    v37 = v48;
    v55[9] = v48;
    v55[10] = v51;
    v55[11] = v54;
    v55[12] = v52;
    v55[13] = v53;
    v55[14] = v29;
    v55[15] = v32;
    memcpy(v19, v55, 0x80uLL);
    sub_1DD400BFC(v55, &v56);
    __swift_destroy_boxed_opaque_existential_1(v50);
    v56 = v34;
    v57 = v33;
    v58 = v43;
    v59 = v44;
    v60 = v40;
    v61 = v35;
    v62 = v39;
    v63 = v36;
    v64 = v47;
    v65 = v37;
    OUTLINED_FUNCTION_8_66();
    v66 = v29;
    v67 = v32;
  }

  return sub_1DD400C58(&v56);
}

uint64_t sub_1DD5C48A8()
{
  sub_1DD640E28();
  SportsItem.hash(into:)();
  return sub_1DD640E78();
}

unint64_t sub_1DD5C48E8()
{
  result = qword_1ECCDF630;
  if (!qword_1ECCDF630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF630);
  }

  return result;
}

uint64_t sub_1DD5C493C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 128))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1DD5C4990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5C4AF4()
{
  result = qword_1ECCDF638;
  if (!qword_1ECCDF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF638);
  }

  return result;
}

unint64_t sub_1DD5C4B4C()
{
  result = qword_1ECCDF640;
  if (!qword_1ECCDF640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF640);
  }

  return result;
}

unint64_t sub_1DD5C4BA4()
{
  result = qword_1ECCDF648;
  if (!qword_1ECCDF648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF648);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_89()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_10_53()
{
}

uint64_t SportsRecommendationQuery.sportsPersonalizationEntities.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1DD5C4CAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001DLL && 0x80000001DD674540 == a2)
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

uint64_t sub_1DD5C4D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5C4CAC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD5C4D78(uint64_t a1)
{
  v2 = sub_1DD5C4F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5C4DB4(uint64_t a1)
{
  v2 = sub_1DD5C4F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SportsRecommendationQuery.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF650, &qword_1DD660110);
  OUTLINED_FUNCTION_0(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1DD5C4F74();

  sub_1DD640EF8();
  a10 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF660, &qword_1DD660118);
  sub_1DD5C51AC(&qword_1ECCDF668, sub_1DD5C4FC8);
  sub_1DD640C68();

  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_86();
}

unint64_t sub_1DD5C4F74()
{
  result = qword_1ECCDF658;
  if (!qword_1ECCDF658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF658);
  }

  return result;
}

unint64_t sub_1DD5C4FC8()
{
  result = qword_1ECCDF670;
  if (!qword_1ECCDF670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF670);
  }

  return result;
}

void SportsRecommendationQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF678, &unk_1DD660120);
  OUTLINED_FUNCTION_0(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  v35 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1DD5C4F74();
  sub_1DD640ED8();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF660, &qword_1DD660118);
    sub_1DD5C51AC(&qword_1ECCDF680, sub_1DD5C5224);
    sub_1DD640B78();
    (*(v29 + 8))(v34, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD5C51AC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF660, &qword_1DD660118);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD5C5224()
{
  result = qword_1ECCDF688;
  if (!qword_1ECCDF688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF688);
  }

  return result;
}

uint64_t SportsPersonalizationEntity.sportsItem.getter()
{
  OUTLINED_FUNCTION_5_83();
  memcpy(v0, v1, v2);
  OUTLINED_FUNCTION_5_83();
  memcpy(v3, v4, v5);
  return sub_1DD5C52F8(v8, v7);
}

uint64_t sub_1DD5C52F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF690, &qword_1DD660BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}