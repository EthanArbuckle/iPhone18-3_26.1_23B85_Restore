uint64_t sub_1CA64580C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if (!swift_dynamicCast())
  {
    v5 = sub_1CA948A48();
    v6 = a2;
    v7 = 1;
    return __swift_storeEnumTagSinglePayload(v6, v7, 1, v5);
  }

  if (sub_1CA323E28(0x66657250656D616ELL, 0xEA00000000007869))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v3 = sub_1CA94C3F8();
      v23 = v4;
      v24 = v3;
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  v23 = 0;
  v24 = 0;
LABEL_8:
  if (sub_1CA323E28(0x6D614E6E65766967, 0xE900000000000065))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v8 = sub_1CA94C3F8();
      v21 = v9;
      v22 = v8;
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
  }

  v21 = 0;
  v22 = 0;
LABEL_13:
  if (!sub_1CA323E28(0x614E656C6464696DLL, 0xEA0000000000656DLL))
  {
LABEL_17:
    v19 = 0;
    v20 = 0;
    goto LABEL_18;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v10 = sub_1CA94C3F8();
  v19 = v11;
  v20 = v10;
LABEL_18:
  if (sub_1CA323E28(0x614E796C696D6166, 0xEA0000000000656DLL))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1CA94C3F8();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if (sub_1CA323E28(0x66667553656D616ELL, 0xEA00000000007869))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1CA94C3F8();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v12 = sub_1CA323E28(0x656D616E6B63696ELL, 0xE800000000000000);

  if (v12)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1CA94C3F8();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
  v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v19 - v15;
  v17 = sub_1CA948A48();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  sub_1CA948A08();
  v6 = a2;
  v7 = 0;
  v5 = v17;
  return __swift_storeEnumTagSinglePayload(v6, v7, 1, v5);
}

id sub_1CA645BB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  swift_getObjCClassMetadata();
  v4 = swift_unknownObjectRetain();
  sub_1CA64580C(v4, v3);
  swift_unknownObjectRelease();
  v5 = sub_1CA948A48();
  v6 = 0;
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) != 1)
  {
    v6 = sub_1CA948A18();
    (*(*(v5 - 8) + 8))(v3, v5);
  }

  return v6;
}

uint64_t static NSPersonNameComponents.personNameComponents(with:)(uint64_t a1)
{
  v2 = sub_1CA948A48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v19 - v8;
  sub_1CA64580C(a1, v19 - v8);
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) == 1)
  {
    sub_1CA64603C(v9);
    return 0;
  }

  else
  {
    v11 = *(v3 + 32);
    v11(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v2);
    v22 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
    if (swift_dynamicCast())
    {
      v12 = sub_1CA323E28(0xD000000000000016, 0x80000001CA9D9740);

      if (v12)
      {
        v21 = v19;
        v14 = MEMORY[0x1EEE9AC00](v13);
        v20 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
        v19[1] = v19;
        MEMORY[0x1EEE9AC00](v14);
        v15 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
        sub_1CA64580C(v12, v19 - v15);
        if (__swift_getEnumTagSinglePayload(v19 - v15, 1, v2) == 1)
        {
          swift_unknownObjectRelease();
          sub_1CA64603C(v19 - v15);
        }

        else
        {
          v16 = (v11)(v20, v19 - v15, v2);
          MEMORY[0x1EEE9AC00](v16);
          v17 = v20;
          (*(v3 + 16))(v19 - v15, v20, v2);
          __swift_storeEnumTagSinglePayload(v19 - v15, 0, 1, v2);
          sub_1CA948A28();
          swift_unknownObjectRelease();
          (*(v3 + 8))(v17, v2);
        }
      }
    }

    v10 = sub_1CA948A18();
    (*(v3 + 8))(v5, v2);
  }

  return v10;
}

uint64_t sub_1CA64603C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CA6460A4()
{
  swift_getObjCClassMetadata();
  v0 = swift_unknownObjectRetain();
  v1 = static NSPersonNameComponents.personNameComponents(with:)(v0);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_1CA6460F8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v2 = sub_1CA94C1E8();
  sub_1CA36D2C4(a1, &selRef_namePrefix);
  if (v3)
  {
    v4 = sub_1CA94C368();

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v2;
    sub_1CA32EA0C(v4, 0x66657250656D616ELL, 0xEA00000000007869, isUniquelyReferenced_nonNull_native, &v22);

    v2 = v22;
  }

  sub_1CA36D2C4(a1, &selRef_givenName);
  if (v6)
  {
    v7 = sub_1CA94C368();

    swift_unknownObjectRetain();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v2;
    sub_1CA32EA0C(v7, 0x6D614E6E65766967, 0xE900000000000065, v8, &v22);

    v2 = v22;
  }

  sub_1CA36D2C4(a1, &selRef_middleName);
  if (v9)
  {
    v10 = sub_1CA94C368();

    swift_unknownObjectRetain();
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v2;
    sub_1CA32EA0C(v10, 0x614E656C6464696DLL, 0xEA0000000000656DLL, v11, &v22);

    v2 = v22;
  }

  sub_1CA36D2C4(a1, &selRef_familyName);
  if (v12)
  {
    v13 = sub_1CA94C368();

    swift_unknownObjectRetain();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v2;
    sub_1CA32EA0C(v13, 0x614E796C696D6166, 0xEA0000000000656DLL, v14, &v22);

    v2 = v22;
  }

  sub_1CA36D2C4(a1, &selRef_nameSuffix);
  if (v15)
  {
    v16 = sub_1CA94C368();

    swift_unknownObjectRetain();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v2;
    sub_1CA32EA0C(v16, 0x66667553656D616ELL, 0xEA00000000007869, v17, &v22);

    v2 = v22;
  }

  sub_1CA36D2C4(a1, &selRef_nickname);
  if (v18)
  {
    v19 = sub_1CA94C368();

    swift_unknownObjectRetain();
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v2;
    sub_1CA32EA0C(v19, 0x656D616E6B63696ELL, 0xE800000000000000, v20, &v22);

    return v22;
  }

  return v2;
}

id sub_1CA6463E8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjCClassMetadata();
  v4 = a3;
  sub_1CA6460F8(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v5 = sub_1CA94C1A8();

  return v5;
}

id sub_1CA646474(void *a1)
{
  v1 = a1;
  v2 = NSPersonNameComponents.serializedRepresentation.getter();

  return v2;
}

uint64_t NSPersonNameComponents.serializedRepresentation.getter()
{
  swift_getObjectType();
  v1 = sub_1CA6460F8(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = [v0 phoneticRepresentation];
  if (MEMORY[0x1EEE9AC00](v5))
  {
    sub_1CA948A38();

    v6 = sub_1CA948A48();
    v7 = 0;
  }

  else
  {
    v6 = sub_1CA948A48();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(&v14 - v4, v7, 1, v6);
  sub_1CA646728(&v14 - v4, &v14 - v4);
  sub_1CA948A48();
  if (__swift_getEnumTagSinglePayload(&v14 - v4, 1, v6) == 1)
  {
    sub_1CA64603C(&v14 - v4);
  }

  else
  {
    v8 = sub_1CA948A18();
    (*(*(v6 - 8) + 8))(&v14 - v4, v6);
    sub_1CA6460F8(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v9 = sub_1CA94C1A8();

    v10 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v1;
    sub_1CA32EA0C(v10, 0xD000000000000016, 0x80000001CA9D9740, isUniquelyReferenced_nonNull_native, &v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v12 = sub_1CA94C1A8();

  return v12;
}

uint64_t sub_1CA646728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void Library.performShortcutQuery(query:)(void *a1)
{
  v2 = v1;
  v109 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v99 - v10;
  if ([a1 resultsLimit] >= 1)
  {
    [a1 resultsLimit];
  }

  switch([a1 location])
  {
    case 0uLL:
      OUTLINED_FUNCTION_8_32();
      v12 = OBJC_IVAR___WFLibrary_capsule;
      OUTLINED_FUNCTION_14_17();
      swift_beginAccess();
      (*(v6 + 16))(v11, &v2[v12], v4);
      sub_1CA2D85D8();
      v14 = v13;
      v15 = OUTLINED_FUNCTION_3_54();
      v16(v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
      v17 = OUTLINED_FUNCTION_10_32();
      *(v17 + 16) = xmmword_1CA981310;
      *(v17 + 32) = sub_1CA94C3A8();
      *(v17 + 40) = v18;
      v19 = [v2 folders];
      sub_1CA27E37C();
      v20 = sub_1CA94C658();

      v21 = sub_1CA25B410();
      v100 = v14;
      if (!v21)
      {

        v24 = MEMORY[0x1E69E7CC0];
LABEL_39:
        v104[0] = v17;
        sub_1CA2B7FF4(v24);
        v84 = v104[0];
        v47 = v100;
        goto LABEL_59;
      }

      v22 = v21;
      v99 = v17;
      v104[0] = MEMORY[0x1E69E7CC0];
      sub_1CA271524();
      if ((v22 & 0x8000000000000000) == 0)
      {
        v23 = 0;
        v24 = v104[0];
        v102 = v20 & 0xC000000000000001;
        v25 = v20;
        do
        {
          if (v102)
          {
            v26 = MEMORY[0x1CCAA22D0](v23, v20);
          }

          else
          {
            v26 = *(v20 + 8 * v23 + 32);
          }

          v27 = v26;
          v28 = [v27 identifier];
          v29 = sub_1CA94C3A8();
          v31 = v30;

          v104[0] = v24;
          v32 = v24[2];
          if (v32 >= v24[3] >> 1)
          {
            sub_1CA271524();
            v24 = v104[0];
          }

          ++v23;
          v24[2] = v32 + 1;
          v33 = &v24[2 * v32];
          v33[4] = v29;
          v33[5] = v31;
          v20 = v25;
        }

        while (v22 != v23);

        v17 = v99;
        goto LABEL_39;
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      swift_unknownObjectRelease_n();
LABEL_26:
      v78 = OUTLINED_FUNCTION_4_52();
      sub_1CA42B0C8(v78, v79, v80, v4);
      v47 = v81;
LABEL_33:
      swift_unknownObjectRelease();
LABEL_34:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
      v84 = OUTLINED_FUNCTION_10_32();
      v84[1] = xmmword_1CA981310;
      *(v84 + 4) = sub_1CA94C3A8();
      *(v84 + 5) = v85;
      goto LABEL_59;
    case 1uLL:
      OUTLINED_FUNCTION_8_32();
      OUTLINED_FUNCTION_14_17();
      swift_beginAccess();
      v71 = OUTLINED_FUNCTION_5_47();
      v72(v71);
      sub_1CA94C3A8();
      sub_1CA2D776C();
      v74 = v73;

      v75 = OUTLINED_FUNCTION_3_54();
      v76(v75);
      v103 = v74;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
      sub_1CA27F53C();
      OUTLINED_FUNCTION_7_40();
      sub_1CA94CA08();

      v77 = v107;
      v4 = v108;
      if ((v108 & 1) == 0)
      {
        goto LABEL_26;
      }

      sub_1CA94D818();
      OUTLINED_FUNCTION_158();
      swift_unknownObjectRetain_n();
      v82 = swift_dynamicCastClass();
      if (!v82)
      {
        swift_unknownObjectRelease();
        v82 = MEMORY[0x1E69E7CC0];
      }

      v83 = *(v82 + 16);

      if (__OFSUB__(v4 >> 1, v77))
      {
        goto LABEL_62;
      }

      if (v83 != (v4 >> 1) - v77)
      {
        goto LABEL_63;
      }

      swift_dynamicCastClass();
      OUTLINED_FUNCTION_158();
      swift_unknownObjectRelease_n();
      if (v47)
      {
        goto LABEL_34;
      }

      v47 = MEMORY[0x1E69E7CC0];
      goto LABEL_33;
    case 2uLL:
      v34 = [a1 workflowType];
      if (!v34)
      {
        v86 = 0x80000001CA9D97F0;
        sub_1CA2D9AF4();
        OUTLINED_FUNCTION_127();
        v88 = 0xD000000000000039;
        goto LABEL_37;
      }

      v35 = v34;
      v36 = WFWorkflowCollectionIdentifierForWorkflowType(v34);
      if (!v36)
      {
        v105 = 0;
        v106 = 0xE000000000000000;
        sub_1CA94D408();
        MEMORY[0x1CCAA1300](0xD000000000000030, 0x80000001CA9D9830);
        v104[0] = v35;
        type metadata accessor for WFWorkflowTypeName(0);
        sub_1CA94D578();
        v89 = v105;
        v90 = v106;
        sub_1CA2D9AF4();
        OUTLINED_FUNCTION_127();
        *v91 = v89;
        *(v91 + 8) = v90;
        *(v91 + 16) = 0;
        swift_willThrow();

        goto LABEL_60;
      }

      v37 = v36;
      OUTLINED_FUNCTION_8_32();
      v40 = v38 != v39;
      LODWORD(v102) = v40;
      v41 = sub_1CA94C3A8();
      v43 = v42;

      OUTLINED_FUNCTION_14_17();
      swift_beginAccess();
      v44 = OUTLINED_FUNCTION_5_47();
      v45(v44);
      v99 = v43;
      v100 = v41;
      sub_1CA2D7330();
      v47 = v46;
      v48 = OUTLINED_FUNCTION_3_54();
      v49(v48);
      v103 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
      sub_1CA27F53C();
      OUTLINED_FUNCTION_7_40();
      sub_1CA94CA08();

      v50 = v107;
      v51 = v108;
      if ((v108 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1CA94D818();
      OUTLINED_FUNCTION_158();
      swift_unknownObjectRetain_n();
      v93 = swift_dynamicCastClass();
      if (!v93)
      {
        swift_unknownObjectRelease();
        v93 = MEMORY[0x1E69E7CC0];
      }

      v94 = *(v93 + 16);

      if (__OFSUB__(v51 >> 1, v50))
      {
        __break(1u);
        goto LABEL_65;
      }

      if (v94 != (v51 >> 1) - v50)
      {
        goto LABEL_66;
      }

      swift_dynamicCastClass();
      OUTLINED_FUNCTION_158();
      swift_unknownObjectRelease_n();
      v57 = v99;
      v56 = v100;
      if (!v47)
      {
        v47 = MEMORY[0x1E69E7CC0];
        goto LABEL_49;
      }

      goto LABEL_50;
    case 3uLL:
      v58 = sub_1CA27F608(a1);
      if (!v59)
      {
        v86 = 0x80000001CA9D97B0;
        sub_1CA2D9AF4();
        OUTLINED_FUNCTION_127();
        v88 = 0xD000000000000034;
LABEL_37:
        *v87 = v88;
        *(v87 + 8) = v86;
        *(v87 + 16) = 0;
        goto LABEL_42;
      }

      v51 = v58;
      v35 = v59;
      v60 = sub_1CA94C368();
      v104[0] = 0;
      v61 = [v2 shortcutsInFolderWithIdentifier:v60 error:v104];

      v62 = v104[0];
      if (!v61)
      {
        v92 = v104[0];

        sub_1CA948AD8();

LABEL_42:
        swift_willThrow();
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_8_32();
      v63 = sub_1CA94C658();
      v64 = v62;

      v104[0] = v63;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
      sub_1CA27F53C();
      sub_1CA94CA08();

      v65 = v107;
      v66 = v108;
      if ((v108 & 1) == 0)
      {
LABEL_24:
        v67 = OUTLINED_FUNCTION_4_52();
        sub_1CA42B0C8(v67, v68, v69, v66);
        v47 = v70;
LABEL_57:
        swift_unknownObjectRelease();
        goto LABEL_58;
      }

      sub_1CA94D818();
      OUTLINED_FUNCTION_158();
      swift_unknownObjectRetain_n();
      v95 = swift_dynamicCastClass();
      if (!v95)
      {
        swift_unknownObjectRelease();
        v95 = MEMORY[0x1E69E7CC0];
      }

      v96 = *(v95 + 16);

      if (__OFSUB__(v66 >> 1, v65))
      {
LABEL_65:
        __break(1u);
LABEL_66:
        swift_unknownObjectRelease_n();
LABEL_20:
        v52 = OUTLINED_FUNCTION_4_52();
        sub_1CA42B0C8(v52, v53, v54, v51);
        v47 = v55;
        v57 = v99;
        v56 = v100;
LABEL_49:
        swift_unknownObjectRelease();
LABEL_50:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
        v84 = OUTLINED_FUNCTION_10_32();
        v84[1] = xmmword_1CA981310;
        *(v84 + 4) = v56;
        *(v84 + 5) = v57;

        goto LABEL_59;
      }

      if (v96 != (v66 >> 1) - v65)
      {
        swift_unknownObjectRelease_n();
        goto LABEL_24;
      }

      swift_dynamicCastClass();
      OUTLINED_FUNCTION_158();
      swift_unknownObjectRelease_n();
      if (!v47)
      {
        v47 = MEMORY[0x1E69E7CC0];
        goto LABEL_57;
      }

LABEL_58:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
      v84 = OUTLINED_FUNCTION_10_32();
      v84[1] = xmmword_1CA981310;
      *(v84 + 4) = v51;
      *(v84 + 5) = v35;
LABEL_59:
      v97 = v101;
      *v101 = v47;
      v97[1] = v84;
LABEL_60:
      v98 = *MEMORY[0x1E69E9840];
      return;
    default:
      sub_1CA94D5F8();
      __break(1u);
      return;
  }
}

uint64_t Library.shortcutIdentifiers.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  (*(v3 + 16))(v8, v0 + v9, v1);
  sub_1CA2D85D8();
  v11 = v10;
  (*(v3 + 8))(v8, v1);
  return v11;
}

uint64_t sub_1CA647354()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  sub_1CA94BFF8();
  return swift_endAccess();
}

uint64_t sub_1CA6473E8()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70) - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  sub_1CA2CCAF8();
  return sub_1CA647920(v3);
}

uint64_t sub_1CA6474D8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1CA94C3A8();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Library.remove(shortcutWithIdentifier:)(Swift::String shortcutWithIdentifier)
{
  countAndFlagsBits = shortcutWithIdentifier._countAndFlagsBits;
  object = shortcutWithIdentifier._object;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70) - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  v22 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_14_17();
  swift_beginAccess();
  v23 = *(v4 + 16);
  v27 = v1;
  v23(v9, v1 + v22, v2);
  sub_1CA2C99D8();
  (*(v4 + 8))(v9, v2);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1CA647920(v13);
    sub_1CA2D9AF4();
    OUTLINED_FUNCTION_127();
    *v24 = xmmword_1CA982010;
    *(v24 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    v25 = (*(v16 + 32))(v21, v13, v14);
    MEMORY[0x1EEE9AC00](v25);
    *(&v26 - 2) = v21;
    swift_beginAccess();
    sub_1CA94BFF8();
    swift_endAccess();
    (*(v16 + 8))(v21, v14);
  }
}

uint64_t sub_1CA6478E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1CA6473E8();
}

uint64_t sub_1CA647900()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1CA6473E8();
}

uint64_t sub_1CA647920(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BB8, &unk_1CA983A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA6479AC()
{
  v1 = **(v0 + 56);
  v2 = [v1 valueType];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    [v1 value];
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
    if (OUTLINED_FUNCTION_8_33())
    {
      v3 = *(v0 + 48);
      v4 = [v3 identifier];
      v5 = [v4 typeIdentifier];

LABEL_14:
      v13 = sub_1CA94C3A8();
      v15 = v14;

      v16 = *(v0 + 8);

      return v16(v13, v15);
    }

    goto LABEL_7;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {

      sub_1CA2FFC58();
      v17 = swift_allocError();
      OUTLINED_FUNCTION_17_19(v17, v18);
      goto LABEL_8;
    }

    v12 = v11;
    v3 = v2;
    v6 = [v12 enumerationIdentifier];
LABEL_13:
    v5 = v6;
    goto LABEL_14;
  }

  [v1 value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  sub_1CA25B3D0(0, &qword_1EC445B70, 0x1E69AC7D8);
  if (OUTLINED_FUNCTION_8_33())
  {
    v3 = *(v0 + 48);
    v6 = [v3 typeIdentifier];
    goto LABEL_13;
  }

LABEL_7:
  sub_1CA2FFC58();
  v7 = swift_allocError();
  OUTLINED_FUNCTION_17_19(v7, v8);

LABEL_8:
  v9 = *(v0 + 8);

  return v9();
}

uint64_t TypedValueConversionContext.type(with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA647C88()
{
  v1 = v0[4];
  v2 = (v1 + *(type metadata accessor for TypedValueConversionContext(0) + 20));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v4 + 8);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1CA647DC8;
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return v12(v10, v8, v9, v3, v4);
}

uint64_t sub_1CA647DC8()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t TypedValueConversionContext.init(sourceDevice:typeDefinitionProvider:localizationContext:enumerationCases:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1CA94B168();
  OUTLINED_FUNCTION_52(v10);
  (*(v11 + 32))(a5, a1);
  v12 = type metadata accessor for TypedValueConversionContext(0);
  result = sub_1CA2F1554(a2, a5 + v12[5]);
  *(a5 + v12[6]) = a3;
  *(a5 + v12[7]) = a4;
  return result;
}

uint64_t LinkValueTransformContext.init(linkValue:sourceContainer:displayRepresentationConfiguration:localizationContext:enumerationCases:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v11 = type metadata accessor for LinkValueTransformContext(0);
  v12 = v11[5];
  v13 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_52(v13);
  (*(v14 + 32))(&a6[v12], a2);
  v15 = v11[6];
  v16 = sub_1CA94B728();
  OUTLINED_FUNCTION_52(v16);
  result = (*(v17 + 32))(&a6[v15], a3);
  *&a6[v11[7]] = a4;
  *&a6[v11[8]] = a5;
  return result;
}

uint64_t TypedValueConversionContext.sourceDevice.getter()
{
  OUTLINED_FUNCTION_11_0();
  v1 = sub_1CA94B168();
  OUTLINED_FUNCTION_52(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_45();

  return v5(v4, v0);
}

uint64_t TypedValueConversionContext.typeDefinitionProvider.getter()
{
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for TypedValueConversionContext(v2);
  return sub_1CA2C9578(v1 + *(v3 + 20), v0);
}

id TypedValueConversionContext.localizationContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for TypedValueConversionContext(0) + 24));

  return v1;
}

uint64_t TypedValueConversionContext.enumerationCases.getter()
{
  v1 = *(v0 + *(type metadata accessor for TypedValueConversionContext(0) + 28));

  return sub_1CA94C218();
}

uint64_t LinkValueTransformContext.sourceContainer.getter()
{
  v0 = OUTLINED_FUNCTION_11_0();
  v1 = *(type metadata accessor for LinkValueTransformContext(v0) + 20);
  v2 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_52(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_6_45();

  return v6(v5);
}

uint64_t LinkValueTransformContext.displayRepresentationConfiguration.getter()
{
  v0 = OUTLINED_FUNCTION_11_0();
  v1 = *(type metadata accessor for LinkValueTransformContext(v0) + 24);
  v2 = sub_1CA94B728();
  OUTLINED_FUNCTION_52(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_6_45();

  return v6(v5);
}

id LinkValueTransformContext.localizationContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for LinkValueTransformContext(0) + 28));

  return v1;
}

uint64_t LinkValueTransformContext.enumerationCases.getter()
{
  v1 = *(v0 + *(type metadata accessor for LinkValueTransformContext(0) + 32));

  return sub_1CA94C218();
}

uint64_t ParameterStateValueTransformContext.typeInstance.getter()
{
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = v1 + *(type metadata accessor for ParameterStateValueTransformContext(v2) + 20);

  return sub_1CA5A7354(v3, v0);
}

uint64_t ParameterStateValueTransformContext.containerProvider.getter()
{
  v2 = OUTLINED_FUNCTION_11_0();
  v3 = type metadata accessor for ParameterStateValueTransformContext(v2);
  return sub_1CA2C9578(v1 + *(v3 + 24), v0);
}

void sub_1CA64836C()
{
  sub_1CA94B168();
  if (v0 <= 0x3F)
  {
    sub_1CA2F0E70(319, &qword_1EC4424D8);
    if (v1 <= 0x3F)
    {
      sub_1CA25B3D0(319, &qword_1EC441840, 0x1E69E0BE0);
      if (v2 <= 0x3F)
      {
        sub_1CA381418();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CA648468()
{
  sub_1CA25B3D0(319, &unk_1EDB9F6B0, 0x1E69ACA90);
  if (v0 <= 0x3F)
  {
    sub_1CA94B1C8();
    if (v1 <= 0x3F)
    {
      sub_1CA94B728();
      if (v2 <= 0x3F)
      {
        sub_1CA25B3D0(319, &qword_1EC441840, 0x1E69E0BE0);
        if (v3 <= 0x3F)
        {
          sub_1CA381418();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1CA64857C()
{
  sub_1CA25B3D0(319, &qword_1EC441AA0, off_1E836EDB8);
  if (v0 <= 0x3F)
  {
    sub_1CA648638();
    if (v1 <= 0x3F)
    {
      sub_1CA2F0E70(319, &qword_1EC442210);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CA648638()
{
  if (!qword_1EC441D08)
  {
    sub_1CA94AD08();
    v0 = sub_1CA94D098();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC441D08);
    }
  }
}

uint64_t sub_1CA648694()
{
  v0 = sub_1CA949578();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CA949528();
  __swift_allocate_value_buffer(v5, qword_1EC441760);
  __swift_project_value_buffer(v5, qword_1EC441760);
  (*(v1 + 104))(v4, *MEMORY[0x1E69A12B8], v0);
  return sub_1CA949518();
}

id sub_1CA6487A0()
{
  result = [objc_allocWithZone(WFAppleIntelligenceAvailabilityProvider) init];
  qword_1EC441748 = result;
  return result;
}

WFAppleIntelligenceAvailabilityProvider __swiftcall WFAppleIntelligenceAvailabilityProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id static WFAppleIntelligenceAvailabilityProvider.shared()()
{
  if (qword_1EC441740 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC441748;

  return v1;
}

uint64_t sub_1CA648868()
{
  v0 = sub_1CA949F78();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v8 = v7 - v6;
  sub_1CA949D48();
  v9 = MEMORY[0x1CCA9EB90]();
  v10 = sub_1CA949D28();

  v11 = *MEMORY[0x1E69E10B0];
  sub_1CA949C58();
  v12 = sub_1CA949F68();
  v13 = sub_1CA94CC38();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v10 & 1;
    _os_log_impl(&dword_1CA256000, v12, v13, "Current Apple Intelligence opt in state: %{BOOL}d", v14, 8u);
    OUTLINED_FUNCTION_26();
  }

  (*(v3 + 8))(v8, v0);
  return v10 & 1;
}

uint64_t sub_1CA648A00()
{
  v0 = sub_1CA9494F8();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v53 = v7 - v6;
  v8 = sub_1CA949F78();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v51 = v10;
  v52 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v15 = v14 - v13;
  v16 = sub_1CA9495A8();
  v17 = OUTLINED_FUNCTION_1_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v47 - v25;
  if (qword_1EC441758 != -1)
  {
    OUTLINED_FUNCTION_2_60();
  }

  v27 = sub_1CA949528();
  __swift_project_value_buffer(v27, qword_1EC441760);
  sub_1CA949598();
  v28 = *MEMORY[0x1E69E10B0];
  sub_1CA949C58();
  (*(v19 + 16))(v24, v26, v16);
  v50 = v15;
  v29 = sub_1CA949F68();
  v30 = sub_1CA94CC38();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v48 = v3;
    v32 = v31;
    v47 = swift_slowAlloc();
    v54 = v47;
    *v32 = 136315138;
    sub_1CA26B4F4();
    v33 = sub_1CA94D798();
    v49 = v0;
    v35 = v34;
    v36 = OUTLINED_FUNCTION_3_55();
    v37(v36);
    v38 = sub_1CA26B54C(v33, v35, &v54);
    v0 = v49;

    *(v32 + 4) = v38;
    _os_log_impl(&dword_1CA256000, v29, v30, "Current Apple Intelligence availability: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    OUTLINED_FUNCTION_26();
    v3 = v48;
    OUTLINED_FUNCTION_26();
  }

  else
  {

    v39 = OUTLINED_FUNCTION_3_55();
    v40(v39);
  }

  (*(v51 + 8))(v50, v52);
  v41 = v53;
  sub_1CA949538();
  (v24)(v26, v16);
  v42 = (*(v3 + 88))(v41, v0);
  v44 = v42 != *MEMORY[0x1E69A0EF8] && v42 != *MEMORY[0x1E69A0F00] && v42 == *MEMORY[0x1E69A11A0];
  v45 = v44;
  if (!v44)
  {
    (*(v3 + 8))(v41, v0);
  }

  return v45;
}

unint64_t type metadata accessor for WFAppleIntelligenceAvailabilityProvider()
{
  result = qword_1EC447958;
  if (!qword_1EC447958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC447958);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id sub_1CA648F28()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 144) = v1;
  *(inited + 120) = 0xD000000000000014;
  *(inited + 128) = 0x80000001CA9D98F0;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000016;
  *(inited + 168) = 0x80000001CA9D9910;
  *(inited + 184) = v1;
  *(inited + 192) = @"Output";
  v7 = @"Output";
  v8 = sub_1CA94C1E8();
  *(inited + 224) = v5;
  *(inited + 200) = v8;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void sub_1CA64911C(uint64_t a1@<X8>)
{
  v2 = sub_1CA563CD8();
  if (v2)
  {
    v3 = v2;
    v4 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
    v6 = *v4;
    v5 = *(v4 + 1);
    v7 = v4[16];
    sub_1CA94C218();
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v7 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
}

id sub_1CA6491AC(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  if (a2)
  {
    v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446030, &unk_1CA989F80));
    v8 = v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x60);
    *v8 = a1;
    *(v8 + 1) = v4;
    v8[16] = a3 & 1;
    sub_1CA94C218();
    v12.receiver = v7;
    v12.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447970, &qword_1CA990700);
    v4 = objc_msgSendSuper2(&v12, sel_init);
  }

  v9 = sub_1CA94C368();
  v10 = [v3 setParameterState:v4 forKey:v9];
  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_1CA6492C0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_1CA94C3A8();
  sub_1CA6491AC(v1, v2, v3);
}

uint64_t WFContentItemFilterAction.tableTemplateRowCount.getter()
{
  sub_1CA94C3A8();
  sub_1CA64911C(v2);

  if (v3)
  {
    v0 = *(v3 + 16);
  }

  else
  {

    return 0;
  }

  return v0;
}

uint64_t WFContentItemFilterAction.tableTemplateCompoundType.getter()
{
  sub_1CA94C3A8();
  sub_1CA64911C(v2);

  if (v2[1])
  {
    v0 = v2[0];
  }

  else
  {
    v0 = 1;
  }

  return v0;
}

uint64_t WFContentItemFilterAction.tableTemplateCompoundType.setter(uint64_t a1)
{
  sub_1CA94C3A8();
  sub_1CA64911C(&v6);

  if (v7)
  {
    v3 = a1;
    v4 = v7;
    v5 = v8;
    return sub_1CA6492C0(&v3);
  }

  else
  {
    v3 = v6;
    v4 = 0;
    v5 = v8;
    sub_1CA6492C0(&v3);
  }
}

WFContentItemFilterActionRow_optional __swiftcall WFContentItemFilterAction.row(forContentPropertyName:)(Swift::String forContentPropertyName)
{
  object = forContentPropertyName._object;
  countAndFlagsBits = forContentPropertyName._countAndFlagsBits;
  sub_1CA94C3A8();
  sub_1CA64911C(&v27);

  v5 = *(&v27 + 1);
  if (*(&v27 + 1))
  {
    v6 = 0;
    v7 = *(*(&v27 + 1) + 16);
    for (i = 32; ; i += 56)
    {
      if (v7 == v6)
      {

        goto LABEL_12;
      }

      if (v6 >= *(v5 + 16))
      {
        break;
      }

      v10 = *(v5 + i + 16);
      v9 = *(v5 + i + 32);
      v11 = *(v5 + i);
      v30 = *(v5 + i + 48);
      v28 = v10;
      v29 = v9;
      v27 = v11;
      v12 = *(&v11 + 1);
      sub_1CA2DBD00(&v27, v26);
      v13 = [v12 name];
      v14 = sub_1CA94C3A8();
      v16 = v15;

      if (v14 == countAndFlagsBits && v16 == object)
      {

LABEL_14:

        v19 = type metadata accessor for Swift_WFContentItemFilterActionRow();
        v20 = objc_allocWithZone(v19);
        v21 = &v20[OBJC_IVAR____TtC11WorkflowKitP33_E09A67776F6F7C3CDD26E2BB23B6F9D634Swift_WFContentItemFilterActionRow_row];
        v23 = v28;
        v22 = v29;
        v24 = v27;
        *(v21 + 6) = v30;
        *(v21 + 1) = v23;
        *(v21 + 2) = v22;
        *v21 = v24;
        v25.receiver = v20;
        v25.super_class = v19;
        v3 = objc_msgSendSuper2(&v25, sel_init);
        goto LABEL_17;
      }

      v18 = sub_1CA94D7F8();

      if (v18)
      {
        goto LABEL_14;
      }

      v3 = sub_1CA50FF28(&v27);
      ++v6;
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v3 = 0;
  }

LABEL_17:
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

id WFContentItemFilterAction.contentPredicate.getter()
{
  v0 = sub_1CA949F78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CA94C3A8();
  v7 = sub_1CA33A88C(v5, v6);

  if (v7)
  {
    v8 = TableTemplateValue<>.contentPredicate.getter();

    return v8;
  }

  else
  {
    v10 = *MEMORY[0x1E69E10B0];
    sub_1CA949C58();
    v11 = sub_1CA949F68();
    v12 = sub_1CA94CC18();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1CA256000, v11, v12, "Unable to find processed table template value for content item filter", v13, 2u);
      MEMORY[0x1CCAA4BF0](v13, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return [objc_allocWithZone(MEMORY[0x1E6996D80]) init];
  }
}

uint64_t sub_1CA6499D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_E09A67776F6F7C3CDD26E2BB23B6F9D634Swift_WFContentItemFilterActionRow_row + 24);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1CA271BF8();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    swift_unknownObjectRetain();
  }

  return v5;
}

id sub_1CA649BA4()
{
  v180 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9D9AD0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v190 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v191 = v12;
  v13 = v170 - v190;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v189 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v187 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v188 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v170 - v188;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v186 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v184 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  *&v183 = v170;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v170 - v190;
  sub_1CA948D98();
  v31 = [v189 bundleURL];
  v185 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v170 - v188;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v33);
  *(v21 + 64) = v186;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v184;
  v37 = sub_1CA6B3784();
  v38 = v185;
  v185[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 6579538;
  v38[21] = 0xE300000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v38[25] = 0xD000000000000013;
  v38[26] = 0x80000001CA9D9B40;
  v38[28] = v39;
  v38[29] = @"InputPassthrough";
  v40 = MEMORY[0x1E69E6370];
  *(v38 + 240) = 1;
  v38[33] = v40;
  v38[34] = @"Name";
  v41 = @"IconColor";
  v42 = @"IconSymbol";
  v43 = @"InputPassthrough";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v47 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  MEMORY[0x1EEE9AC00](v48);
  v51 = v170 - v190;
  sub_1CA948D98();
  v52 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = v170 - v188;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v55 = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v53);
  v56 = v185;
  v185[35] = v55;
  v56[38] = v186;
  v56[39] = @"Parameters";
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v182 = swift_allocObject();
  v183 = xmmword_1CA981360;
  *(v182 + 16) = xmmword_1CA981360;
  v181 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_1CA981300;
  *(v57 + 32) = @"Class";
  *(v57 + 40) = 0xD000000000000016;
  *(v57 + 48) = 0x80000001CA99C4A0;
  v58 = MEMORY[0x1E69E6158];
  *(v57 + 64) = MEMORY[0x1E69E6158];
  *(v57 + 72) = @"DefaultValue";
  *(v57 + 80) = 0x616964654DLL;
  *(v57 + 88) = 0xE500000000000000;
  *(v57 + 104) = v58;
  *(v57 + 112) = @"Description";
  v59 = @"Class";
  v60 = @"DefaultValue";
  v61 = @"Description";
  v177 = v59;
  v176 = v60;
  v178 = v61;
  v62 = @"Parameters";
  v63 = sub_1CA94C438();
  v174 = v64;
  v65 = sub_1CA94C438();
  v67 = v66;
  v175 = v170;
  MEMORY[0x1EEE9AC00](v65);
  v68 = v190;
  sub_1CA948D98();
  v69 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = v170 - v188;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 120) = sub_1CA2F9F14(v63, v174, v65, v67, 0, 0, v170 - v68, v70);
  *(v57 + 144) = v186;
  *(v57 + 152) = @"ItemIconNames";
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v57 + 160) = &unk_1F4A0A978;
  *(v57 + 184) = v72;
  *(v57 + 192) = @"Items";
  v175 = swift_allocObject();
  *&v175->data = v183;
  v73 = @"ItemIconNames";
  v74 = @"Items";
  v75 = sub_1CA94C438();
  v172 = v76;
  v173 = v75;
  v77 = sub_1CA94C438();
  v171 = v78;
  v174 = v170;
  MEMORY[0x1EEE9AC00](v77);
  v79 = v170 - v68;
  sub_1CA948D98();
  v80 = v189;
  v81 = [v189 bundleURL];
  v170[1] = v170;
  MEMORY[0x1EEE9AC00](v81);
  v82 = v188;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v173, v172, v77, v171, 0, 0, v79, v170 - v82);
  v85 = v175;
  v175[1].isa = v84;
  v86 = sub_1CA94C438();
  v172 = v87;
  v173 = v86;
  v171 = sub_1CA94C438();
  v89 = v88;
  v174 = v170;
  MEMORY[0x1EEE9AC00](v171);
  v90 = v170 - v190;
  sub_1CA948D98();
  v91 = [v80 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85[1].info = sub_1CA2F9F14(v173, v172, v171, v89, 0, 0, v90, v170 - v82);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v57 + 200) = v85;
  *(v57 + 224) = v93;
  *(v57 + 232) = @"Key";
  *(v57 + 240) = 0x656D756C6F564657;
  *(v57 + 248) = 0xEF676E6974746553;
  *(v57 + 264) = MEMORY[0x1E69E6158];
  *(v57 + 272) = @"Label";
  v94 = @"Key";
  v95 = @"Label";
  v174 = v94;
  v175 = v95;
  v96 = sub_1CA94C438();
  v98 = v97;
  v99 = sub_1CA94C438();
  v101 = v100;
  v173 = v170;
  MEMORY[0x1EEE9AC00](v99);
  v102 = v170 - v190;
  sub_1CA948D98();
  v103 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = v170 - v188;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 280) = sub_1CA2F9F14(v96, v98, v99, v101, 0, 0, v102, v104);
  *(v57 + 304) = v186;
  *(v57 + 312) = @"RequiredResources";
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1CA9813B0;
  v192 = 2;
  v193 = 1;
  v107 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v108 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v192);
  *(v106 + 32) = v109;
  *(v57 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(v57 + 320) = v106;
  _s3__C3KeyVMa_0(0);
  v173 = v110;
  v172 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v182 + 32) = sub_1CA2F864C();
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1CA981400;
  *(v111 + 32) = v177;
  *(v111 + 40) = 0xD000000000000011;
  *(v111 + 48) = 0x80000001CA9A0B80;
  v112 = v176;
  *(v111 + 64) = MEMORY[0x1E69E6158];
  *(v111 + 72) = v112;
  v113 = MEMORY[0x1E69E63B0];
  *(v111 + 80) = 0x3FE0000000000000;
  v114 = v178;
  *(v111 + 104) = v113;
  *(v111 + 112) = v114;
  v115 = sub_1CA94C438();
  v177 = v116;
  v178 = v115;
  v117 = sub_1CA94C438();
  v176 = v118;
  v179 = v170;
  MEMORY[0x1EEE9AC00](v117);
  v119 = v190;
  sub_1CA948D98();
  v120 = v189;
  v121 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = v170 - v188;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v111 + 120) = sub_1CA2F9F14(v178, v177, v117, v176, 0, 0, v170 - v119, v122);
  v124 = v174;
  *(v111 + 144) = v186;
  *(v111 + 152) = v124;
  *(v111 + 160) = 0x656D756C6F564657;
  *(v111 + 168) = 0xE800000000000000;
  v125 = v175;
  *(v111 + 184) = MEMORY[0x1E69E6158];
  *(v111 + 192) = v125;
  v126 = sub_1CA94C438();
  v177 = v127;
  v178 = v126;
  v128 = sub_1CA94C438();
  v176 = v129;
  v179 = v170;
  MEMORY[0x1EEE9AC00](v128);
  sub_1CA948D98();
  v130 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v130);
  v131 = v170 - v188;
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v111 + 200) = sub_1CA2F9F14(v178, v177, v128, v176, 0, 0, v170 - v119, v131);
  *(v111 + 224) = v186;
  *(v111 + 232) = @"MaximumIconName";
  *(v111 + 240) = 0xD000000000000010;
  *(v111 + 248) = 0x80000001CA9D9DB0;
  v133 = MEMORY[0x1E69E6158];
  *(v111 + 264) = MEMORY[0x1E69E6158];
  *(v111 + 272) = @"MinimumIconName";
  *(v111 + 304) = v133;
  *(v111 + 280) = 0x6C53656D756C6F56;
  *(v111 + 288) = 0xEF776F4C72656469;
  v134 = @"MaximumIconName";
  v135 = @"MinimumIconName";
  sub_1CA94C1E8();
  v136 = sub_1CA2F864C();
  v137 = v182;
  *(v182 + 40) = v136;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v139 = v185;
  v185[40] = v137;
  v139[43] = v138;
  v139[44] = @"ParameterSummary";
  v182 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v186 = swift_allocObject();
  *(v186 + 16) = v183;
  v140 = @"ParameterSummary";
  v141 = sub_1CA94C438();
  v143 = v142;
  v144 = sub_1CA94C438();
  v146 = v145;
  v184 = v170;
  MEMORY[0x1EEE9AC00](v144);
  v147 = v170 - v190;
  sub_1CA948D98();
  v148 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  v149 = v188;
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v151 = sub_1CA2F9F14(v141, v143, v144, v146, 0, 0, v147, v170 - v149);
  v152 = objc_allocWithZone(WFActionParameterSummaryValue);
  v153 = sub_1CA65DD78(0x656D756C6F564657, 0xE800000000000000, v151);
  *(v186 + 32) = v153;
  v184 = "Set volume to ${WFVolume}";
  v154 = sub_1CA94C438();
  v156 = v155;
  v157 = sub_1CA94C438();
  v159 = v158;
  *&v183 = v170;
  MEMORY[0x1EEE9AC00](v157);
  v160 = v170 - v190;
  sub_1CA948D98();
  v161 = [v189 bundleURL];
  MEMORY[0x1EEE9AC00](v161);
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v163 = sub_1CA2F9F14(v154, v156, v157, v159, 0, 0, v160, v170 - v149);
  v164 = objc_allocWithZone(WFActionParameterSummaryValue);
  v165 = sub_1CA65DD78(0xD000000000000018, v184 | 0x8000000000000000, v163);
  *(v186 + 40) = v165;
  v166 = v182;
  v167 = sub_1CA65AF90();
  v168 = v185;
  v185[48] = v166;
  v168[45] = v167;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA64AF9C()
{
  v40 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v20;
  *(inited + 104) = v21;
  *(inited + 112) = @"AppDefinition";
  v22 = @"AppDefinition";
  v23 = MEMORY[0x1E69E6158];
  v24 = sub_1CA94C1E8();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v24;
  *(inited + 144) = v25;
  *(inited + 152) = @"DisabledOnPlatforms";
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F4A0A9F8;
  *(inited + 184) = v26;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1702194242;
  *(inited + 208) = 0xE400000000000000;
  *(inited + 224) = v23;
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x656E6F7465757274;
  *(inited + 248) = 0xE800000000000000;
  *(inited + 264) = v23;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v27 = @"DisabledOnPlatforms";
  v28 = @"IconColor";
  v29 = @"IconSymbol";
  v30 = @"InputPassthrough";
  v31 = sub_1CA94C368();
  *(inited + 344) = v23;
  *(inited + 312) = v31;
  *(inited + 320) = 0xD000000000000053;
  *(inited + 328) = 0x80000001CA9D9E70;
  *(inited + 352) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v32 = swift_initStackObject();
  v39 = xmmword_1CA981310;
  *(v32 + 16) = xmmword_1CA981310;
  *(v32 + 32) = 0x6574617473;
  *(v32 + 40) = 0xE500000000000000;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v33 = swift_initStackObject();
  *(v33 + 16) = v39;
  *(v33 + 64) = v23;
  *(v33 + 32) = @"Key";
  *(v33 + 40) = 0x65756C61566E4FLL;
  *(v33 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v34 = @"Key";
  sub_1CA94C1E8();
  *(v32 + 48) = sub_1CA2F864C();
  v35 = sub_1CA94C1E8();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 360) = v35;
  *(inited + 384) = v36;
  *(inited + 392) = @"RequiredResources";
  *(inited + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 400) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key);
  v37 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA64B5A8()
{
  v223 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9CDEE0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v238 = v12;
  v236 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v219 - v236;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v234 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v237 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v239 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v219 - v239;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v235 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v232 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v231 = &v219;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v219 - v236;
  sub_1CA948D98();
  v34 = [v234 bundleURL];
  v233 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v219 - v239;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v36);
  *(v24 + 64) = v235;
  *(v24 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v232;
  v40 = sub_1CA6B3784();
  v41 = v233;
  v233[20] = v40;
  v41[23] = v39;
  v41[24] = @"InputPassthrough";
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 200) = 0;
  v41[28] = v42;
  v41[29] = @"Name";
  v43 = @"InputPassthrough";
  v44 = @"Name";
  v45 = sub_1CA94C438();
  v47 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  v232 = &v219;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v219 - v236;
  sub_1CA948D98();
  v52 = v234;
  v53 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v219 - v239;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v54);
  v57 = v233;
  v233[30] = v56;
  v58 = v235;
  v57[33] = v235;
  v57[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_1CA981350;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438();
  v231 = v62;
  v63 = sub_1CA94C438();
  v65 = v64;
  v232 = &v219;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v219 - v236;
  sub_1CA948D98();
  v67 = [v52 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v219 - v239;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v61, v231, v63, v65, 0, 0, v66, v68);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 184) = 0xE500000000000000;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v59 + 216) = v222;
  *(v59 + 192) = &unk_1F4A0AA68;
  v70 = MEMORY[0x1E69E6158];
  v71 = sub_1CA94C1E8();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v73 = v233;
  v233[35] = v71;
  v73[38] = v72;
  v73[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_1CA981560;
  v228 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1CA981380;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = 0xD000000000000014;
  *(v74 + 48) = 0x80000001CA99B500;
  *(v74 + 64) = v70;
  *(v74 + 72) = @"Key";
  strcpy((v74 + 80), "WFSearchTerm");
  *(v74 + 93) = 0;
  *(v74 + 94) = -5120;
  *(v74 + 104) = v70;
  *(v74 + 112) = @"Label";
  v75 = @"Class";
  v76 = @"Key";
  v77 = @"Label";
  v78 = v75;
  v79 = v76;
  v80 = v77;
  v225 = v78;
  v224 = v79;
  v226 = v80;
  v81 = @"Parameters";
  v231 = sub_1CA94C438();
  *&v227 = v82;
  v83 = sub_1CA94C438();
  v221 = v84;
  v232 = &v219;
  MEMORY[0x1EEE9AC00](v83);
  v85 = v236;
  sub_1CA948D98();
  v86 = v234;
  v87 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v219 - v239;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 120) = sub_1CA2F9F14(v231, v227, v83, v221, 0, 0, &v219 - v85, v88);
  v90 = v235;
  *(v74 + 144) = v235;
  *(v74 + 152) = @"Placeholder";
  v91 = @"Placeholder";
  v231 = sub_1CA94C438();
  *&v227 = v92;
  v93 = sub_1CA94C438();
  v221 = v94;
  v232 = &v219;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v219 - v85;
  sub_1CA948D98();
  v96 = [v86 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = v239;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 160) = sub_1CA2F9F14(v231, v227, v93, v221, 0, 0, v95, &v219 - v97);
  *(v74 + 184) = v90;
  *(v74 + 192) = @"Prompt";
  v99 = @"Prompt";
  v231 = sub_1CA94C438();
  *&v227 = v100;
  v101 = sub_1CA94C438();
  v103 = v102;
  v232 = &v219;
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v219 - v236;
  sub_1CA948D98();
  v105 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 200) = sub_1CA2F9F14(v231, v227, v101, v103, 0, 0, v104, &v219 - v97);
  *(v74 + 224) = v235;
  *(v74 + 232) = @"TextAlignment";
  v107 = MEMORY[0x1E69E6158];
  *(v74 + 264) = MEMORY[0x1E69E6158];
  *(v74 + 240) = 0x7468676952;
  *(v74 + 248) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v232 = v108;
  v231 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v109 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v229 + 32) = sub_1CA2F864C();
  v110 = swift_initStackObject();
  v227 = xmmword_1CA9813C0;
  *(v110 + 16) = xmmword_1CA9813C0;
  v220 = 0xD00000000000001DLL;
  v221 = 0x80000001CA99FB10;
  v112 = v224;
  v111 = v225;
  *(v110 + 32) = v225;
  *(v110 + 40) = 0xD00000000000001DLL;
  *(v110 + 48) = 0x80000001CA99FB10;
  *(v110 + 64) = v107;
  *(v110 + 72) = v112;
  *(v110 + 80) = 0x6269727474414657;
  *(v110 + 88) = 0xEB00000000657475;
  v113 = v226;
  *(v110 + 104) = v107;
  *(v110 + 112) = v113;
  v225 = v111;
  v219 = v112;
  v226 = v113;
  v114 = sub_1CA94C438();
  v116 = v115;
  v117 = sub_1CA94C438();
  v119 = v118;
  v224 = &v219;
  MEMORY[0x1EEE9AC00](v117);
  v120 = &v219 - v236;
  sub_1CA948D98();
  v121 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v219 - v239;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v124 = sub_1CA2F9F14(v114, v116, v117, v119, 0, 0, v120, v122);
  *(v110 + 144) = v235;
  *(v110 + 120) = v124;
  sub_1CA94C1E8();
  *(v229 + 40) = sub_1CA2F864C();
  v125 = swift_allocObject();
  *(v125 + 16) = v227;
  v126 = v225;
  v128 = v220;
  v127 = v221;
  *(v125 + 32) = v225;
  *(v125 + 40) = v128;
  *(v125 + 48) = v127;
  v129 = MEMORY[0x1E69E6158];
  v130 = v219;
  *(v125 + 64) = MEMORY[0x1E69E6158];
  *(v125 + 72) = v130;
  *(v125 + 80) = 0x797469746E454657;
  *(v125 + 88) = 0xE800000000000000;
  v131 = v226;
  *(v125 + 104) = v129;
  *(v125 + 112) = v131;
  v224 = v126;
  v225 = v130;
  v132 = sub_1CA94C438();
  v220 = v133;
  v134 = sub_1CA94C438();
  v136 = v135;
  v221 = &v219;
  MEMORY[0x1EEE9AC00](v134);
  v137 = &v219 - v236;
  sub_1CA948D98();
  v138 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  v139 = &v219 - v239;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v141 = sub_1CA2F9F14(v132, v220, v134, v136, 0, 0, v137, v139);
  *(v125 + 144) = v235;
  *(v125 + 120) = v141;
  sub_1CA94C1E8();
  v142 = sub_1CA2F864C();
  v143 = v229;
  *(v229 + 48) = v142;
  v144 = swift_allocObject();
  *(v144 + 16) = v227;
  *(v144 + 32) = v224;
  *(v144 + 40) = 0xD000000000000023;
  *(v144 + 48) = 0x80000001CA9CE0E0;
  v145 = MEMORY[0x1E69E6158];
  v146 = v225;
  *(v144 + 64) = MEMORY[0x1E69E6158];
  *(v144 + 72) = v146;
  *(v144 + 80) = 0x72746E756F434657;
  *(v144 + 88) = 0xE900000000000079;
  v147 = v226;
  *(v144 + 104) = v145;
  *(v144 + 112) = v147;
  v148 = sub_1CA94C438();
  v226 = v149;
  v150 = sub_1CA94C438();
  v152 = v151;
  *&v227 = &v219;
  MEMORY[0x1EEE9AC00](v150);
  v153 = &v219 - v236;
  sub_1CA948D98();
  v154 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  v155 = &v219 - v239;
  sub_1CA948B68();

  v156 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v157 = sub_1CA2F9F14(v148, v226, v150, v152, 0, 0, v153, v155);
  *(v144 + 144) = v235;
  *(v144 + 120) = v157;
  sub_1CA94C1E8();
  *(v143 + 56) = sub_1CA2F864C();
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_1CA981300;
  *(v158 + 32) = v224;
  *(v158 + 40) = 0xD000000000000012;
  *(v158 + 48) = 0x80000001CA99B980;
  v159 = MEMORY[0x1E69E6158];
  *(v158 + 64) = MEMORY[0x1E69E6158];
  *(v158 + 72) = @"DefaultValue";
  v160 = MEMORY[0x1E69E6530];
  *(v158 + 80) = 25;
  v161 = v225;
  *(v158 + 104) = v160;
  *(v158 + 112) = v161;
  *(v158 + 120) = 0x694C6D6574494657;
  *(v158 + 128) = 0xEB0000000074696DLL;
  *(v158 + 144) = v159;
  *(v158 + 152) = @"MaximumValue";
  *(v158 + 160) = 100;
  *(v158 + 184) = v160;
  *(v158 + 192) = @"MinimumValue";
  *(v158 + 200) = 1;
  *(v158 + 224) = v160;
  *(v158 + 232) = @"StepperPrefix";
  v162 = @"DefaultValue";
  v163 = @"MaximumValue";
  v164 = @"MinimumValue";
  v165 = @"StepperPrefix";
  v166 = sub_1CA94C438();
  v226 = v167;
  *&v227 = v166;
  v168 = sub_1CA94C438();
  v225 = v169;
  v230 = &v219;
  MEMORY[0x1EEE9AC00](v168);
  v170 = &v219 - v236;
  sub_1CA948D98();
  v171 = v234;
  v172 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v172);
  v173 = &v219 - v239;
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v158 + 240) = sub_1CA2F9F14(v227, v226, v168, v225, 0, 0, v170, v173);
  *(v158 + 264) = v235;
  *(v158 + 272) = @"StepperDescription";
  v175 = @"StepperDescription";
  v176 = sub_1CA94C438();
  v226 = v177;
  *&v227 = v176;
  v178 = sub_1CA94C438();
  v225 = v179;
  v230 = &v219;
  MEMORY[0x1EEE9AC00](v178);
  v180 = v236;
  sub_1CA948D98();
  v181 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v181);
  v182 = &v219 - v239;
  sub_1CA948B68();

  v183 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v158 + 280) = sub_1CA2F9F14(v227, v226, v178, v225, 0, 0, &v219 - v180, v182);
  *(v158 + 304) = v235;
  *(v158 + 312) = @"StepperNoun";
  v184 = @"StepperNoun";
  v185 = sub_1CA94C438();
  v230 = v185;
  v187 = v186;
  *&v227 = v186;
  v244 = 0;
  v245 = 0xE000000000000000;
  sub_1CA94D408();

  v244 = v185;
  v245 = v187;
  v242 = 10;
  v243 = 0xE100000000000000;
  v240 = 32;
  v241 = 0xE100000000000000;
  sub_1CA27BAF0();
  v244 = sub_1CA94D1B8();
  v245 = v188;
  v189 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v190 = v244;
  v191 = v245;
  MEMORY[0x1EEE9AC00](v189);
  v192 = v180;
  sub_1CA948D98();
  v193 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v193);
  v194 = &v219 - v239;
  sub_1CA948B68();

  v195 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v196 = sub_1CA2F9F14(v190, v191, v230, v227, 0, 0, &v219 - v180, v194);
  *(v158 + 344) = v235;
  *(v158 + 320) = v196;
  sub_1CA94C1E8();
  v197 = sub_1CA2F864C();
  v198 = v229;
  *(v229 + 64) = v197;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v200 = v233;
  v233[40] = v198;
  v200[43] = v199;
  v200[44] = @"ParameterSummary";
  v201 = @"ParameterSummary";
  v202 = sub_1CA94C438();
  v204 = v203;
  v205 = sub_1CA94C438();
  v207 = v206;
  MEMORY[0x1EEE9AC00](v205);
  v208 = &v219 - v192;
  sub_1CA948D98();
  v209 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v209);
  v210 = &v219 - v239;
  sub_1CA948B68();

  v211 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v212 = sub_1CA2F9F14(v202, v204, v205, v207, 0, 0, v208, v210);
  v213 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v214 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v215 = v233;
  v233[45] = v213;
  v215[48] = v214;
  v215[49] = @"RequiredResources";
  v215[50] = &unk_1F4A0AA98;
  v215[53] = v222;
  v215[54] = @"ResidentCompatible";
  v215[58] = MEMORY[0x1E69E6370];
  *(v215 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v216 = @"RequiredResources";
  v217 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA64CF68()
{
  v62 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9DA150;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = v12;
  v13 = v60 - v67;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v66 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v64 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v65 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v60 - v65;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v63 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v61 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v60[0] = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v60[1] = v60;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v60 - v67;
  sub_1CA948D98();
  v30 = [v66 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = v60 - v65;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v60[0], v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v63;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v61;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = 0x80000001CA9DA210;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1CA9813C0;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  v38 = v37;
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  strcpy((v36 + 96), "WFConditions");
  *(v36 + 109) = 0;
  *(v36 + 110) = -5120;
  *(v36 + 120) = v35;
  *(v36 + 128) = 0x7365707954;
  *(v36 + 136) = 0xE500000000000000;
  *(v36 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 144) = &unk_1F4A0AAC8;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v42;
  *(inited + 264) = v43;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 1;
  *(inited + 304) = v38;
  *(inited + 312) = @"Name";
  v44 = @"InputPassthrough";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v61 = v60;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v60 - v67;
  sub_1CA948D98();
  v53 = [v66 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = v60 - v65;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  *(inited + 344) = v63;
  *(inited + 352) = @"ResidentCompatible";
  *(inited + 360) = 1;
  v56 = MEMORY[0x1E69E6370];
  *(inited + 384) = MEMORY[0x1E69E6370];
  *(inited + 392) = @"SnappingPassthrough";
  *(inited + 424) = v56;
  *(inited + 400) = 1;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  v57 = @"ResidentCompatible";
  v58 = @"SnappingPassthrough";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA64D740(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CA94D2F8();
    sub_1CA25B3D0(0, &qword_1EC447A20, 0x1E69943B0);
    sub_1CA65040C();
    result = sub_1CA94C948();
    v1 = v46[4];
    v3 = v46[5];
    v4 = v46[6];
    v5 = v46[7];
    v6 = v46[8];
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);
    result = sub_1CA94C218();
    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  v11 = MEMORY[0x1E69E7CC0];
  v39 = v3;
  v40 = v1;
  while (v1 < 0)
  {
    v17 = sub_1CA94D358();
    if (!v17 || (v46[11] = v17, sub_1CA25B3D0(0, &qword_1EC447A20, 0x1E69943B0), swift_dynamicCast(), v16 = v46[0], v14 = v5, v15 = v6, !v46[0]))
    {
LABEL_52:
      sub_1CA28A224();
      return v11;
    }

LABEL_17:
    v18 = sub_1CA6501C4(v16);

    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    if (v19 >> 62)
    {
      v20 = sub_1CA94D328();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v11 >> 62;
    v45 = v15;
    if (v11 >> 62)
    {
      result = sub_1CA94D328();
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = result + v20;
    if (__OFADD__(result, v20))
    {
      goto LABEL_54;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v44 = v20;
    if (!result)
    {
      if (v21)
      {
LABEL_32:
        sub_1CA94D328();
      }

      else
      {
        v23 = v11 & 0xFFFFFFFFFFFFFF8;
LABEL_31:
        v24 = *(v23 + 16);
      }

      result = sub_1CA94D488();
      v11 = result;
      v23 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_34;
    }

    if (v21)
    {
      goto LABEL_32;
    }

    v23 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v22 > *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_31;
    }

LABEL_34:
    v25 = *(v23 + 16);
    v26 = (*(v23 + 24) >> 1) - v25;
    v27 = v23 + 8 * v25;
    v43 = v23;
    if (v19 >> 62)
    {
      v29 = sub_1CA94D328();
      if (v29)
      {
        v30 = v29;
        result = sub_1CA94D328();
        if (v26 < result)
        {
          goto LABEL_58;
        }

        if (v30 < 1)
        {
          goto LABEL_59;
        }

        v41 = result;
        v42 = v11;
        v31 = v27 + 32;
        sub_1CA650474();
        for (i = 0; i != v30; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A30, &qword_1CA990768);
          v33 = sub_1CA276BDC(v46, i, v19);
          v35 = *v34;
          v33(v46, 0);
          *(v31 + 8 * i) = v35;
        }

        v3 = v39;
        v1 = v40;
        v11 = v42;
        v28 = v41;
        goto LABEL_44;
      }

LABEL_48:

      v5 = v14;
      v6 = v45;
      v10 = (v4 + 64) >> 6;
      if (v44 > 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v28 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        goto LABEL_48;
      }

      if (v26 < v28)
      {
        goto LABEL_57;
      }

      sub_1CA25B3D0(0, &unk_1EC447990, 0x1E6994240);
      swift_arrayInitWithCopy();
LABEL_44:

      v10 = (v4 + 64) >> 6;
      if (v28 < v44)
      {
        goto LABEL_55;
      }

      v5 = v14;
      v6 = v45;
      if (v28 >= 1)
      {
        v36 = *(v43 + 16);
        v37 = __OFADD__(v36, v28);
        v38 = v36 + v28;
        if (v37)
        {
          goto LABEL_56;
        }

        *(v43 + 16) = v38;
        v5 = v14;
        v6 = v45;
      }
    }
  }

  v12 = v5;
  v13 = v6;
  v14 = v5;
  if (v6)
  {
LABEL_13:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_52;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_52;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

id sub_1CA64DC20(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___WFAppIntentsControlMetadata_type] = a1;
  *&v2[OBJC_IVAR___WFAppIntentsControlMetadata_identity] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1CA64DC88(void *a1)
{
  v2 = v1;
  v4 = [a1 controlType];
  v5 = sub_1CA64DCF8();
  v6 = objc_allocWithZone(v2);
  v7 = sub_1CA64DC20(v4, v5);

  return v7;
}

id sub_1CA64DCF8()
{
  v1 = [v0 extensionIdentity];
  v2 = [v0 kind];
  v3 = sub_1CA94C3A8();
  v5 = v4;

  v6 = [v0 defaultIntentReference];
  v7 = objc_allocWithZone(MEMORY[0x1E6994268]);
  return sub_1CA64F92C(v1, v3, v5, v6);
}

id ControlMetadata.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ControlMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ControlMetadata.presentIfPossible(in:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1CA64DE8C, 0, 0);
}

uint64_t sub_1CA64DE8C()
{
  OUTLINED_FUNCTION_0();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1CA64DF74;

  return MEMORY[0x1EEE6DE38](v3);
}

uint64_t sub_1CA64DF74()
{
  OUTLINED_FUNCTION_0();
  v3 = *(*v1 + 40);
  v2 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v2;
  *(v2 + 48) = v0;

  if (v0)
  {
    v5 = sub_1CA611910;
  }

  else
  {
    v6 = *(v2 + 32);

    v5 = sub_1CA2E0FB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA64E084(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A48, &unk_1CA990770);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  if (([a2 respondsToSelector_] & 1) == 0)
  {
    return sub_1CA94C7E8();
  }

  v11 = *(a3 + OBJC_IVAR___WFAppIntentsControlMetadata_type);
  v12 = *(a3 + OBJC_IVAR___WFAppIntentsControlMetadata_identity);
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  aBlock[4] = sub_1CA6504D8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA51B738;
  aBlock[3] = &block_descriptor_35;
  v15 = _Block_copy(aBlock);
  [a2 showChronoControlOfType:v11 identity:v12 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_1CA64E290(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A48, &unk_1CA990770);
    return sub_1CA94C7D8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A48, &unk_1CA990770);
    return sub_1CA94C7E8();
  }
}

uint64_t sub_1CA64E390(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1CA64E454;

  return ControlMetadata.presentIfPossible(in:)(a1);
}

uint64_t sub_1CA64E454()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  swift_unknownObjectRelease();

  v10 = v3[4];
  if (v2)
  {
    v11 = sub_1CA948AC8();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(v3[4], 0);
  }

  _Block_release(v4[4]);
  v12 = v9[1];

  return v12();
}

id sub_1CA64E5EC()
{
  v2 = v1;
  v3 = sub_1CA948AF8();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v31 = v5;
  v32 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  v11 = [v0 effectiveBundleIdentifiers];
  sub_1CA94CBC8();

  v12 = &unk_1EDB9FB40;
  v13 = 0x1E69AC7B8;
  v14 = MEMORY[0x1E69E7CA0];
  v33 = v10;
  for (i = &selRef_temporaryDirectoryURL; ; i = &selRef_temporaryDirectoryURL)
  {
    while (1)
    {
      do
      {
        sub_1CA948AE8();
        if (!v36)
        {
          v18 = 0;
          goto LABEL_17;
        }

        sub_1CA2C0A20(&v35, &v34);
        sub_1CA25B3D0(0, v12, v13);
      }

      while ((swift_dynamicCast() & 1) == 0);
      v16 = v37;
      if ([v37 i[111]] == 1)
      {
        break;
      }
    }

    v17 = [v16 bundleIdentifier];
    sub_1CA94C3A8();

    v18 = objc_allocWithZone(MEMORY[0x1E69635D0]);
    v19 = sub_1CA64F860();
    if (v2)
    {
      (*(v31 + 8))(v10, v32);

      return v18;
    }

    v18 = v19;
    v20 = v14;
    v21 = v13;
    v22 = v12;
    v23 = [v19 extensionPointRecord];
    v24 = [v23 identifier];

    v25 = sub_1CA94C3A8();
    v27 = v26;

    if (v25 == 0xD00000000000001DLL && 0x80000001CA9DA400 == v27)
    {
      break;
    }

    v29 = sub_1CA94D7F8();

    if (v29)
    {
      goto LABEL_16;
    }

    v12 = v22;
    v13 = v21;
    v14 = v20;
    v2 = 0;
    v10 = v33;
  }

LABEL_16:
  v10 = v33;
LABEL_17:
  (*(v31 + 8))(v10, v32);
  return v18;
}

id sub_1CA64E8C8(void *a1)
{
  v1 = a1;
  LNActionMetadata.associatedControl.getter();
  v3 = v2;

  return v3;
}

void LNActionMetadata.associatedControl.getter()
{
  v1 = sub_1CA949F78();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v2);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v59 - v10;
  v12 = sub_1CA64E5EC();
  if (v12)
  {
    v60 = v12;
    v24 = sub_1CA64EE34();
    v25 = *MEMORY[0x1E69E1080];
    sub_1CA949C58();
    v26 = v0;
    sub_1CA94C218();
    v27 = sub_1CA949F68();
    v28 = sub_1CA94CC38();

    v29 = os_log_type_enabled(v27, v28);
    v61 = v26;
    v62 = v24;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v63[0] = swift_slowAlloc();
      *v30 = 136315394;
      v31 = [v26 identifier];
      v32 = v1;
      v33 = v31;
      v34 = sub_1CA94C3A8();
      v36 = v35;

      v37 = sub_1CA26B54C(v34, v36, v63);

      *(v30 + 4) = v37;
      *(v30 + 12) = 2080;
      v38 = sub_1CA25B3D0(0, &unk_1EC447990, 0x1E6994240);
      v39 = MEMORY[0x1CCAA14D0](v62, v38);
      v41 = sub_1CA26B54C(v39, v40, v63);

      *(v30 + 14) = v41;
      _os_log_impl(&dword_1CA256000, v27, v28, "found control descriptors for %s: %s", v30, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      v24 = v62;
      OUTLINED_FUNCTION_26();

      v42 = v32;
      v26 = v61;
      (*(v4 + 8))(v11, v42);
    }

    else
    {

      (*(v4 + 8))(v11, v1);
    }

    v43 = sub_1CA25B410();
    v44 = 0;
    v45 = v24 & 0xC000000000000001;
    v46 = v24 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v43 == v44)
      {

        return;
      }

      if (v45)
      {
        v47 = MEMORY[0x1CCAA22D0](v44, v24);
      }

      else
      {
        if (v44 >= *(v46 + 16))
        {
          goto LABEL_29;
        }

        v47 = *(v24 + 8 * v44 + 32);
      }

      v48 = v47;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      v49 = sub_1CA650154([v47 actionMetadata]);
      v51 = v50;
      v52 = [v26 identifier];
      v53 = sub_1CA94C3A8();
      v55 = v54;

      if (v51)
      {
        if (v49 == v53 && v51 == v55)
        {

LABEL_27:

          type metadata accessor for ControlMetadata();
          v58 = v48;
          sub_1CA64DC88(v58);

          return;
        }

        v57 = sub_1CA94D7F8();

        if (v57)
        {
          goto LABEL_27;
        }
      }

      else
      {
      }

      ++v44;
      v26 = v61;
      v24 = v62;
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v13 = *MEMORY[0x1E69E1080];
    sub_1CA949C58();
    v14 = v0;
    v15 = sub_1CA949F68();
    v16 = sub_1CA94CC38();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v63[0] = v18;
      *v17 = 136315138;
      v19 = [v14 identifier];
      v20 = sub_1CA94C3A8();
      v22 = v21;

      v23 = sub_1CA26B54C(v20, v22, v63);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_1CA256000, v15, v16, "%s does not have an implementing widget extension, unable to lookup control", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    (*(v4 + 8))(v9, v1);
  }
}

uint64_t sub_1CA64EE34()
{
  v1 = v0;
  v2 = sub_1CA949F78();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  v11 = [objc_opt_self() all];
  sub_1CA94CF28();
  v12 = v11;
  v13 = sub_1CA64F804(0, v11);
  v14 = [objc_allocWithZone(MEMORY[0x1E69943C8]) initWithOptions_];
  v15 = sub_1CA6500F0(v1);
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v59 = v13;
    v60 = v12;
    v19 = [v1 entitlements];
    v20 = sub_1CA94C368();
    sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    v21 = [v19 objectForKey:v20 ofClass:swift_getObjCClassFromMetadata()];

    if (v21)
    {
      sub_1CA94D258();
      swift_unknownObjectRelease();
    }

    else
    {
      v63 = 0u;
      v64 = 0u;
    }

    v58 = v14;
    v65[0] = v63;
    v65[1] = v64;
    if (*(&v64 + 1))
    {
      v23 = swift_dynamicCast();
      if (v23)
      {
        v24 = v61;
      }

      else
      {
        v24 = 0;
      }

      if (v23)
      {
        v25 = v62;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      sub_1CA2C0A74(v65);
      v24 = 0;
      v25 = 0;
    }

    v26 = [v1 containingBundleRecord];
    v56 = v5;
    v57 = v2;
    if (v26)
    {
      v27 = sub_1CA588A6C(v26);
      if (v28)
      {
        v29 = v27;
        v30 = v28;

        v24 = v29;
        v25 = v30;
      }
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A08, &qword_1CA990750);
    v32 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v31 - 8);
    sub_1CA94C218();
    v55 = v17;
    sub_1CA949448();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A10, &qword_1CA990758);
    v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v33 - 8);
    v36 = &v54 - v35;
    v54 = v24;
    if (v25)
    {
      sub_1CA94C218();
      sub_1CA949448();
      v37 = 0;
      v38 = v25;
    }

    else
    {
      v38 = 0xE400000000000000;
      v37 = 1;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A18, &qword_1CA990760);
    __swift_storeEnumTagSinglePayload(v36, v37, 1, v39);
    sub_1CA94CE68();
    v40 = sub_1CA94CE58();
    v41 = *MEMORY[0x1E69E1080];
    sub_1CA949C58();
    sub_1CA94C218();
    sub_1CA94C218();
    v42 = sub_1CA949F68();
    v43 = sub_1CA94CC38();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *&v65[0] = swift_slowAlloc();
      *v44 = 136315394;
      v45 = sub_1CA26B54C(v55, v18, v65);

      *(v44 + 4) = v45;
      *(v44 + 12) = 2080;
      if (v25)
      {
        v46 = v54;
      }

      else
      {
        v46 = 1701736302;
      }

      v47 = sub_1CA26B54C(v46, v38, v65);

      *(v44 + 14) = v47;
      _os_log_impl(&dword_1CA256000, v42, v43, "Looking up control matching identity: (extension: %s, container: %s", v44, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }

    (*(v56 + 8))(v10, v57);
    v48 = v58;
    v49 = [v58 extensions];
    sub_1CA25B3D0(0, &qword_1EC447A20, 0x1E69943B0);
    sub_1CA65040C();
    v50 = sub_1CA94C8F8();

    v51 = v40;
    v52 = sub_1CA64FA48(v50, v51);
    v22 = sub_1CA64D740(v52);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v22;
}

uint64_t sub_1CA64F428()
{
  v1 = sub_1CA948AF8();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  v10 = [v0 effectiveBundleIdentifiers];
  sub_1CA94CBC8();

  while (1)
  {
    do
    {
      sub_1CA948AE8();
      if (!v17)
      {
        v11 = 0;
        goto LABEL_8;
      }

      sub_1CA2C0A20(&v16, &v15);
      sub_1CA25B3D0(0, &unk_1EDB9FB40, 0x1E69AC7B8);
    }

    while ((swift_dynamicCast() & 1) == 0);
    if (![v14 type])
    {
      break;
    }
  }

  v12 = [v14 bundleIdentifier];
  v11 = sub_1CA94C3A8();

LABEL_8:
  (*(v4 + 8))(v9, v1);
  return v11;
}

id sub_1CA64F5D0()
{
  v1 = [v0 systemProtocolMetadata];
  type metadata accessor for LNSystemEntityProtocolIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447100, &unk_1CA989ED0);
  sub_1CA502E00();
  v2 = sub_1CA94C1C8();

  v3 = sub_1CA311800(*MEMORY[0x1E69AC2F0], v2);

  if (!v3)
  {
    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v5 = v4;
  sub_1CA64F428();
  v7 = v6;
  if (v6)
  {
    v8 = [v5 actionIdentifier];
    if (!v8)
    {
      sub_1CA94C3A8();
      v8 = sub_1CA94C368();
    }

    v9 = [objc_opt_self() sharedProvider];
    v10 = sub_1CA94C368();

    v7 = [v9 actionWithIdentifier:v8 fromBundleIdentifier:v10];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v7;
}

id sub_1CA64F77C(void *a1)
{
  v1 = a1;
  v2 = LNEntityMetadata.associatedControl.getter();

  return v2;
}

id LNEntityMetadata.associatedControl.getter()
{
  v0 = sub_1CA64F5D0();
  v1 = [v0 associatedControl];

  return v1;
}

id sub_1CA64F804(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWidgetsPredicate:a1 controlsPredicate:a2];

  return v4;
}

id sub_1CA64F860()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1CA94C368();

  v7[0] = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

id sub_1CA64F92C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1CA94C368();

  v8 = [v4 initWithExtensionIdentity:a1 kind:v7 intentReference:a4];

  return v8;
}

void *sub_1CA64F9AC(void *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = a4;
    sub_1CA64FF60(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t sub_1CA64FA48(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E69E7CD0];
    v20 = MEMORY[0x1E69E7CD0];
    v4 = a2;
    sub_1CA94D2F8();
    while (1)
    {
      while (1)
      {
        if (!sub_1CA94D358())
        {

          return v3;
        }

        sub_1CA25B3D0(0, &qword_1EC447A20, 0x1E69943B0);
        swift_dynamicCast();
        sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
        v5 = [v19 identity];
        v6 = sub_1CA94CFD8();

        if (v6)
        {
          break;
        }
      }

      if (v3[3] <= v3[2])
      {
        sub_1CA6AE240();
      }

      v3 = v20;
      v7 = *(v20 + 40);
      result = sub_1CA94CFC8();
      v9 = v20 + 56;
      v10 = -1 << *(v20 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) == 0)
      {
        break;
      }

      v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
LABEL_17:
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v20 + 48) + 8 * v13) = v19;
      ++*(v20 + 16);
    }

    v14 = 0;
    v15 = (63 - v10) >> 6;
    while (++v12 != v15 || (v14 & 1) == 0)
    {
      v16 = v12 == v15;
      if (v12 == v15)
      {
        v12 = 0;
      }

      v14 |= v16;
      v17 = *(v9 + 8 * v12);
      if (v17 != -1)
      {
        v13 = __clz(__rbit64(~v17)) + (v12 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = a2;
    v3 = sub_1CA64FCA4(a1, v18);

    return v3;
  }

  return result;
}

void *sub_1CA64FCA4(uint64_t a1, void *a2)
{
  v3 = v2;
  v33 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v32 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v29[3] = v3;
    v29[1] = v29;
    MEMORY[0x1EEE9AC00](v9);
    v29[2] = v7;
    v30 = v29 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1CA5C3FA4(0, v7, v30);
    v31 = 0;
    v10 = 0;
    v3 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v7 = v12 & *(a1 + 56);
    v13 = (v11 + 63) >> 6;
    while (v7)
    {
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v17 = v14 | (v10 << 6);
      v18 = *(*(a1 + 48) + 8 * v17);
      sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
      v19 = v18;
      v20 = [v19 identity];
      v8 = sub_1CA94CFD8();

      if (v8)
      {
        *(v30 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1CA6B0D20();
          v23 = v22;
          v24 = v32;

          goto LABEL_17;
        }
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v13)
      {
        goto LABEL_16;
      }

      v16 = *(v3 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v7 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = v32;
  v23 = sub_1CA64F9AC(v27, v7, a1, v28);

  MEMORY[0x1CCAA4BF0](v27, -1, -1);

LABEL_17:
  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

void sub_1CA64FF60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = 0;
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
    sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
    v16 = v15;
    v17 = [v16 identity];
    v18 = sub_1CA94CFD8();

    if (v18)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:

        sub_1CA6B0D20();

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

uint64_t sub_1CA6500F0(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA650154(void *a1)
{
  v2 = [a1 rawIntentType];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA6501C4(void *a1)
{
  v1 = [a1 orderedControlDescriptors];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1CA25B3D0(0, &unk_1EC447990, 0x1E6994240);
  v3 = sub_1CA94C658();

  return v3;
}

uint64_t sub_1CA650270()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA650324;

  return sub_1CA64E390(v2, v3, v4);
}

uint64_t sub_1CA650324()
{
  OUTLINED_FUNCTION_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_13();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

unint64_t sub_1CA65040C()
{
  result = qword_1EC447A28;
  if (!qword_1EC447A28)
  {
    sub_1CA25B3D0(255, &qword_1EC447A20, 0x1E69943B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447A28);
  }

  return result;
}

unint64_t sub_1CA650474()
{
  result = qword_1EC447A38;
  if (!qword_1EC447A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447A30, &qword_1CA990768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447A38);
  }

  return result;
}

uint64_t sub_1CA6504D8(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A48, &unk_1CA990770) - 8) + 80);

  return sub_1CA64E290(a1);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1CA6505A0()
{
  v0 = sub_1CA949D18();
  v147 = *(v0 - 8);
  v148 = v0;
  v1 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v146 = &v137 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001CLL;
  *(inited + 48) = 0x80000001CA9DA430;
  *(inited + 64) = v4;
  *(inited + 72) = @"ActionKeywords";
  v154 = inited;
  v5 = @"ActionClass";
  v6 = @"ActionKeywords";
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v156 = v15;
  v157 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v137 - v157;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v155 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v152 = v19;
  v153 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v137 - v153;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v16, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v151 = v23;
  v24 = v154;
  v154[10] = v22;
  v24[13] = v23;
  v24[14] = @"Description";
  v150 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1CA97EDF0;
  *(v25 + 32) = @"DescriptionResult";
  v26 = @"Description";
  v27 = @"DescriptionResult";
  *&v144 = sub_1CA94C438();
  *&v143 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v145 = &v137;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v137 - v157;
  sub_1CA948D98();
  v33 = v155;
  v34 = [v155 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = v153;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v25 + 40) = sub_1CA2F9F14(v144, v143, v29, v31, 0, 0, v32, &v137 - v35);
  v37 = v151;
  *(v25 + 64) = v151;
  *(v25 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  *&v144 = sub_1CA94C438();
  *&v143 = v39;
  v40 = sub_1CA94C438();
  v42 = v41;
  v145 = &v137;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v137 - v157;
  sub_1CA948D98();
  v44 = [v33 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v144, v143, v40, v42, 0, 0, v43, &v137 - v35);
  *(v25 + 104) = v37;
  *(v25 + 80) = v46;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v47 = v150;
  v48 = sub_1CA6B3784();
  v49 = v154;
  v154[15] = v48;
  v49[18] = v47;
  v49[19] = @"IconName";
  v49[20] = 0x6567616D49;
  v49[21] = 0xE500000000000000;
  v50 = MEMORY[0x1E69E6158];
  v49[23] = MEMORY[0x1E69E6158];
  v49[24] = @"Input";
  v51 = v50;
  v52 = v49;
  *&v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v53 = swift_initStackObject();
  v143 = xmmword_1CA981350;
  *(v53 + 16) = xmmword_1CA981350;
  *(v53 + 32) = 0x656C7069746C754DLL;
  *(v53 + 40) = 0xE800000000000000;
  v54 = MEMORY[0x1E69E6370];
  *(v53 + 48) = 1;
  *(v53 + 72) = v54;
  strcpy((v53 + 80), "ParameterKey");
  *(v53 + 93) = 0;
  *(v53 + 94) = -5120;
  *(v53 + 96) = 0x6567616D494657;
  *(v53 + 104) = 0xE700000000000000;
  *(v53 + 120) = v51;
  *(v53 + 128) = 0x6465726975716552;
  *(v53 + 136) = 0xE800000000000000;
  *(v53 + 144) = 1;
  *(v53 + 168) = v54;
  *(v53 + 176) = 0x7365707954;
  *(v53 + 184) = 0xE500000000000000;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v53 + 216) = v150;
  *(v53 + 192) = &unk_1F4A0AAF8;
  v55 = @"IconName";
  v56 = @"Input";
  v57 = sub_1CA94C1E8();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v145 = v58;
  v52[25] = v57;
  v52[28] = v58;
  v52[29] = @"Name";
  v59 = @"Name";
  v60 = sub_1CA94C438();
  v140 = v61;
  v141 = v60;
  v62 = sub_1CA94C438();
  v64 = v63;
  v142 = &v137;
  MEMORY[0x1EEE9AC00](v62);
  v65 = v157;
  sub_1CA948D98();
  v66 = [v155 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v137 - v153;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v69 = sub_1CA2F9F14(v141, v140, v62, v64, 0, 0, &v137 - v65, v67);
  v70 = v154;
  v154[30] = v69;
  v71 = v151;
  v70[33] = v151;
  v70[34] = @"Output";
  v72 = swift_allocObject();
  *(v72 + 16) = v143;
  *(v72 + 32) = 0x75736F6C63736944;
  *(v72 + 40) = 0xEF6C6576654C6572;
  *(v72 + 48) = 0x63696C627550;
  *(v72 + 56) = 0xE600000000000000;
  *(v72 + 72) = MEMORY[0x1E69E6158];
  *(v72 + 80) = 0x656C7069746C754DLL;
  *(v72 + 88) = 0xE800000000000000;
  *(v72 + 96) = 1;
  *(v72 + 120) = MEMORY[0x1E69E6370];
  *(v72 + 128) = 0x614E74757074754FLL;
  *(v72 + 136) = 0xEA0000000000656DLL;
  v73 = @"Output";
  v74 = sub_1CA94C438();
  v142 = v75;
  *&v143 = v74;
  v76 = sub_1CA94C438();
  v141 = v77;
  *&v144 = &v137;
  MEMORY[0x1EEE9AC00](v76);
  sub_1CA948D98();
  v78 = [v155 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = v153;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v72 + 144) = sub_1CA2F9F14(v143, v142, v76, v141, 0, 0, &v137 - v65, &v137 - v79);
  *(v72 + 168) = v71;
  *(v72 + 176) = 0x7365707954;
  *(v72 + 216) = v150;
  *(v72 + 184) = 0xE500000000000000;
  *(v72 + 192) = &unk_1F4A0AB28;
  v81 = MEMORY[0x1E69E6158];
  v82 = sub_1CA94C1E8();
  v83 = v154;
  v154[35] = v82;
  v83[38] = v145;
  v83[39] = @"Parameters";
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v143 = swift_allocObject();
  v144 = xmmword_1CA9813B0;
  *(v143 + 16) = xmmword_1CA9813B0;
  v142 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1CA981370;
  *(v84 + 32) = @"Class";
  *(v84 + 40) = 0xD000000000000019;
  *(v84 + 48) = 0x80000001CA99B030;
  *(v84 + 64) = v81;
  *(v84 + 72) = @"Key";
  *(v84 + 80) = 0x6567616D494657;
  *(v84 + 88) = 0xE700000000000000;
  *(v84 + 104) = v81;
  *(v84 + 112) = @"Label";
  v85 = @"Parameters";
  v86 = @"Class";
  v87 = @"Key";
  v88 = @"Label";
  v89 = sub_1CA94C438();
  v139 = v90;
  v140 = v89;
  v91 = sub_1CA94C438();
  v138 = v92;
  v141 = &v137;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v137 - v157;
  sub_1CA948D98();
  v94 = v155;
  v95 = [v155 bundleURL];
  v137 = &v137;
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 120) = sub_1CA2F9F14(v140, v139, v91, v138, 0, 0, v93, &v137 - v79);
  v97 = v151;
  *(v84 + 144) = v151;
  *(v84 + 152) = @"Placeholder";
  v98 = @"Placeholder";
  v99 = sub_1CA94C438();
  v139 = v100;
  v140 = v99;
  v101 = sub_1CA94C438();
  v138 = v102;
  v141 = &v137;
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v137 - v157;
  sub_1CA948D98();
  v104 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 160) = sub_1CA2F9F14(v140, v139, v101, v138, 0, 0, v103, &v137 - v79);
  *(v84 + 184) = v97;
  *(v84 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1CA981310;
  v107 = @"PreferredTypes";
  v108 = v146;
  sub_1CA949CB8();
  v109 = sub_1CA949C68();
  v111 = v110;
  (*(v147 + 8))(v108, v148);
  *(v106 + 32) = v109;
  *(v106 + 40) = v111;
  *(v84 + 224) = v150;
  *(v84 + 200) = v106;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v112 = sub_1CA2F864C();
  v113 = v143;
  *(v143 + 32) = v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v115 = v154;
  v154[40] = v113;
  v115[43] = v114;
  v115[44] = @"ParameterSummary";
  v116 = @"ParameterSummary";
  v117 = sub_1CA94C438();
  v119 = v118;
  v120 = sub_1CA94C438();
  v122 = v121;
  v151 = &v137;
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v137 - v157;
  sub_1CA948D98();
  v124 = [v155 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v137 - v153;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v117, v119, v120, v122, 0, 0, v123, v125);
  v128 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v129 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v115[45] = v128;
  v115[48] = v129;
  v115[49] = @"RequiredResources";
  v130 = swift_allocObject();
  *(v130 + 16) = v144;
  v158 = 3;
  v159 = 1;
  v131 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v132 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v158);
  *(v130 + 32) = v133;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v115[50] = v130;
  v115[53] = v134;
  v115[54] = @"ResidentCompatible";
  v115[58] = MEMORY[0x1E69E6370];
  *(v115 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v135 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA651718()
{
  v31 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Name";
  v6 = @"Name";
  v7 = sub_1CA94C438();
  v30 = v8;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v7, v30, v9, v11, 0, 0, v15, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Output";
  v24 = @"Output";
  v25 = MEMORY[0x1E69E6158];
  *(inited + 160) = sub_1CA94C1E8();
  *(inited + 184) = v5;
  *(inited + 192) = @"ResidentCompatible";
  *(inited + 224) = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v26 = @"ResidentCompatible";
  v27 = sub_1CA94C368();
  *(inited + 264) = v25;
  *(inited + 232) = v27;
  *(inited + 240) = 0xD000000000000018;
  *(inited + 248) = 0x80000001CA9945E0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA651B00()
{
  v241 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  v244 = xmmword_1CA981420;
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9DA600;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v268 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v269 = v12;
  v13 = &v228 - v268;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v266 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v265 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v267 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v228 - v267;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v264 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v262 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v260 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v261 = &v228;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v228 - v268;
  sub_1CA948D98();
  v31 = [v266 bundleURL];
  v263 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v228 - v267;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v33);
  *(v21 + 64) = v264;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v262;
  v37 = sub_1CA6B3784();
  v38 = v263;
  v263[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconName";
  v38[20] = 0x786F62706F7244;
  v38[21] = 0xE700000000000000;
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"Name";
  v39 = @"IconName";
  v40 = @"Name";
  v41 = sub_1CA94C438();
  v43 = v42;
  v44 = sub_1CA94C438();
  v46 = v45;
  v262 = &v228;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v228 - v268;
  sub_1CA948D98();
  v48 = [v266 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v228 - v267;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v51 = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  v52 = v263;
  v263[25] = v51;
  v53 = v264;
  v52[28] = v264;
  v52[29] = @"Output";
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  v258 = xmmword_1CA981350;
  *(v54 + 16) = xmmword_1CA981350;
  *(v54 + 32) = 0x75736F6C63736944;
  *(v54 + 40) = 0xEF6C6576654C6572;
  *(v54 + 48) = 0x63696C627550;
  *(v54 + 56) = 0xE600000000000000;
  *(v54 + 72) = MEMORY[0x1E69E6158];
  *(v54 + 80) = 0x656C7069746C754DLL;
  *(v54 + 88) = 0xE800000000000000;
  v55 = MEMORY[0x1E69E6370];
  *(v54 + 96) = 1;
  *(v54 + 120) = v55;
  *(v54 + 128) = 0x614E74757074754FLL;
  *(v54 + 136) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v57 = sub_1CA94C438();
  v261 = v58;
  v59 = sub_1CA94C438();
  v61 = v60;
  v262 = &v228;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v228 - v268;
  sub_1CA948D98();
  v63 = [v266 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v228 - v267;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 144) = sub_1CA2F9F14(v57, v261, v59, v61, 0, 0, v62, v64);
  *(v54 + 168) = v53;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 184) = 0xE500000000000000;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v54 + 216) = v240;
  *(v54 + 192) = &unk_1F4A0ABD8;
  v66 = MEMORY[0x1E69E6158];
  v67 = sub_1CA94C1E8();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v239 = v68;
  v69 = v263;
  v263[30] = v67;
  v69[33] = v68;
  v69[34] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v262 = swift_allocObject();
  *(v262 + 1) = xmmword_1CA981560;
  v261 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v70 = swift_initStackObject();
  *(v70 + 16) = v258;
  v248 = 0x80000001CA99E620;
  v254 = 0xD000000000000011;
  *(v70 + 32) = @"Class";
  *(v70 + 40) = 0xD000000000000011;
  *(v70 + 48) = 0x80000001CA99E620;
  *(v70 + 64) = v66;
  *(v70 + 72) = @"DefaultValue";
  *(v70 + 80) = 1;
  *(v70 + 104) = MEMORY[0x1E69E6370];
  *(v70 + 112) = @"Key";
  v253 = 0x80000001CA99B260;
  *(v70 + 120) = 0xD000000000000010;
  *(v70 + 128) = 0x80000001CA99B260;
  *(v70 + 144) = v66;
  *(v70 + 152) = @"Label";
  v71 = @"Class";
  v72 = @"DefaultValue";
  v73 = @"Key";
  v74 = @"Label";
  v75 = v71;
  v76 = v72;
  v77 = v73;
  v78 = v74;
  v252 = v75;
  v247 = v76;
  v251 = v77;
  *&v256 = v78;
  v79 = @"Parameters";
  v80 = sub_1CA94C438();
  v82 = v81;
  v83 = sub_1CA94C438();
  v85 = v84;
  *&v258 = &v228;
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v228 - v268;
  sub_1CA948D98();
  v87 = [v266 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v228 - v267;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v80, v82, v83, v85, 0, 0, v86, v88);
  *(v70 + 184) = v264;
  *(v70 + 160) = v90;
  _s3__C3KeyVMa_0(0);
  *&v258 = v91;
  v257 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v262[4] = sub_1CA2F864C();
  v92 = swift_allocObject();
  v238 = xmmword_1CA981370;
  *(v92 + 16) = xmmword_1CA981370;
  v94 = v251;
  v93 = v252;
  v95 = v254;
  *(v92 + 32) = v252;
  *(v92 + 40) = v95;
  v96 = v247;
  *(v92 + 48) = v248;
  v97 = MEMORY[0x1E69E6158];
  *(v92 + 64) = MEMORY[0x1E69E6158];
  *(v92 + 72) = v96;
  *(v92 + 80) = 0;
  *(v92 + 104) = MEMORY[0x1E69E6370];
  *(v92 + 112) = v94;
  strcpy((v92 + 120), "SelectMultiple");
  *(v92 + 135) = -18;
  v98 = v256;
  *(v92 + 144) = v97;
  *(v92 + 152) = v98;
  v235 = v93;
  v242 = v94;
  v243 = v98;
  v99 = sub_1CA94C438();
  v101 = v100;
  v102 = sub_1CA94C438();
  v104 = v103;
  *&v256 = &v228;
  MEMORY[0x1EEE9AC00](v102);
  v105 = &v228 - v268;
  sub_1CA948D98();
  v106 = [v266 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v228 - v267;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v92 + 160) = sub_1CA2F9F14(v99, v101, v102, v104, 0, 0, v105, v107);
  *(v92 + 184) = v264;
  *(v92 + 192) = @"RequiredResources";
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v109 = swift_allocObject();
  *(v109 + 16) = v260;
  v110 = swift_allocObject();
  v256 = xmmword_1CA9813C0;
  *(v110 + 16) = xmmword_1CA9813C0;
  strcpy((v110 + 32), "WFParameterKey");
  *(v110 + 47) = -18;
  v111 = v253;
  *(v110 + 48) = 0xD000000000000010;
  *(v110 + 56) = v111;
  v252 = 0x80000001CA993570;
  v112 = MEMORY[0x1E69E6158];
  *(v110 + 72) = MEMORY[0x1E69E6158];
  *(v110 + 80) = 0xD000000000000010;
  *(v110 + 88) = 0x80000001CA993570;
  *(v110 + 96) = 1;
  *(v110 + 120) = MEMORY[0x1E69E6370];
  *(v110 + 128) = 0x72756F7365524657;
  *(v110 + 168) = v112;
  v250 = 0xD00000000000001BLL;
  v251 = 0x80000001CA993590;
  *(v110 + 136) = 0xEF7373616C436563;
  *(v110 + 144) = 0xD00000000000001BLL;
  *(v110 + 152) = 0x80000001CA993590;
  v245 = @"RequiredResources";
  *(v109 + 32) = sub_1CA94C1E8();
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v92 + 224) = v249;
  *(v92 + 200) = v109;
  sub_1CA94C1E8();
  v262[5] = sub_1CA2F864C();
  v113 = swift_allocObject();
  *(v113 + 16) = v244;
  *(v113 + 32) = @"AutocapitalizationType";
  *(v113 + 40) = 1701736270;
  *(v113 + 48) = 0xE400000000000000;
  v114 = v235;
  *(v113 + 64) = v112;
  *(v113 + 72) = v114;
  v236 = 0xD000000000000014;
  v237 = 0x80000001CA99B500;
  *(v113 + 80) = 0xD000000000000014;
  *(v113 + 88) = 0x80000001CA99B500;
  *(v113 + 104) = v112;
  *(v113 + 112) = @"Description";
  v115 = @"AutocapitalizationType";
  *&v244 = v114;
  v235 = v115;
  v116 = @"Description";
  v117 = sub_1CA94C438();
  v119 = v118;
  v120 = sub_1CA94C438();
  v122 = v121;
  v234 = &v228;
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v228 - v268;
  sub_1CA948D98();
  v124 = [v266 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v228 - v267;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v113 + 120) = sub_1CA2F9F14(v117, v119, v120, v122, 0, 0, v123, v125);
  *(v113 + 144) = v264;
  *(v113 + 152) = @"DisableAutocorrection";
  *(v113 + 160) = 1;
  v127 = v242;
  *(v113 + 184) = MEMORY[0x1E69E6370];
  *(v113 + 192) = v127;
  strcpy((v113 + 200), "WFGetFilePath");
  *(v113 + 214) = -4864;
  v128 = MEMORY[0x1E69E6158];
  *(v113 + 224) = MEMORY[0x1E69E6158];
  *(v113 + 232) = @"KeyboardType";
  *(v113 + 240) = 0x6372616553626557;
  *(v113 + 248) = 0xE900000000000068;
  v129 = v243;
  *(v113 + 264) = v128;
  *(v113 + 272) = v129;
  v130 = @"DisableAutocorrection";
  v131 = @"KeyboardType";
  v242 = v127;
  v243 = v129;
  v232 = v130;
  v234 = v131;
  v132 = sub_1CA94C438();
  v230 = v133;
  v231 = v132;
  v134 = sub_1CA94C438();
  v136 = v135;
  v233 = &v228;
  MEMORY[0x1EEE9AC00](v134);
  v137 = &v228 - v268;
  sub_1CA948D98();
  v138 = v266;
  v139 = [v266 bundleURL];
  MEMORY[0x1EEE9AC00](v139);
  v140 = &v228 - v267;
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v113 + 280) = sub_1CA2F9F14(v231, v230, v134, v136, 0, 0, v137, v140);
  v142 = v264;
  *(v113 + 304) = v264;
  *(v113 + 312) = @"Placeholder";
  v233 = @"Placeholder";
  v143 = sub_1CA94C438();
  v229 = v144;
  v230 = v143;
  v145 = sub_1CA94C438();
  v228 = v146;
  v231 = &v228;
  MEMORY[0x1EEE9AC00](v145);
  v147 = v268;
  sub_1CA948D98();
  v148 = [v138 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  v149 = &v228 - v267;
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v113 + 320) = sub_1CA2F9F14(v230, v229, v145, v228, 0, 0, &v228 - v147, v149);
  v151 = v245;
  *(v113 + 344) = v142;
  *(v113 + 352) = v151;
  v152 = swift_allocObject();
  *(v152 + 16) = v260;
  v153 = swift_allocObject();
  *(v153 + 16) = v256;
  strcpy((v153 + 32), "WFParameterKey");
  *(v153 + 47) = -18;
  v154 = v253;
  *(v153 + 48) = 0xD000000000000010;
  *(v153 + 56) = v154;
  v155 = MEMORY[0x1E69E6158];
  *(v153 + 72) = MEMORY[0x1E69E6158];
  *(v153 + 80) = 0xD000000000000010;
  *(v153 + 88) = v252;
  *(v153 + 96) = 0;
  v156 = MEMORY[0x1E69E6370];
  *(v153 + 120) = MEMORY[0x1E69E6370];
  *(v153 + 128) = 0x72756F7365524657;
  *(v153 + 168) = v155;
  *(v153 + 136) = 0xEF7373616C436563;
  v157 = v251;
  *(v153 + 144) = v250;
  *(v153 + 152) = v157;
  v158 = v155;
  *(v152 + 32) = sub_1CA94C1E8();
  *(v113 + 360) = v152;
  *(v113 + 384) = v249;
  *(v113 + 392) = @"TextAlignment";
  *(v113 + 424) = v158;
  *(v113 + 400) = 1952867660;
  *(v113 + 408) = 0xE400000000000000;
  v231 = @"TextAlignment";
  sub_1CA94C1E8();
  v262[6] = sub_1CA2F864C();
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_1CA981300;
  *(v159 + 32) = v235;
  *(v159 + 40) = 1701736270;
  *(v159 + 48) = 0xE400000000000000;
  v160 = v244;
  *(v159 + 64) = v158;
  *(v159 + 72) = v160;
  v161 = v237;
  *(v159 + 80) = v236;
  *(v159 + 88) = v161;
  v162 = v232;
  *(v159 + 104) = v158;
  *(v159 + 112) = v162;
  *(v159 + 120) = 1;
  v163 = v242;
  *(v159 + 144) = v156;
  *(v159 + 152) = v163;
  *(v159 + 160) = 0xD00000000000001DLL;
  *(v159 + 168) = 0x80000001CA9DA840;
  v164 = v234;
  *(v159 + 184) = v158;
  *(v159 + 192) = v164;
  *(v159 + 200) = 0x6372616553626557;
  *(v159 + 208) = 0xE900000000000068;
  v165 = v243;
  *(v159 + 224) = v158;
  *(v159 + 232) = v165;
  v166 = sub_1CA94C438();
  v235 = v167;
  v236 = v166;
  v168 = sub_1CA94C438();
  v234 = v169;
  v237 = &v228;
  MEMORY[0x1EEE9AC00](v168);
  v170 = &v228 - v147;
  sub_1CA948D98();
  v171 = v266;
  v172 = [v266 bundleURL];
  MEMORY[0x1EEE9AC00](v172);
  v173 = v267;
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v159 + 240) = sub_1CA2F9F14(v236, v235, v168, v234, 0, 0, v170, &v228 - v173);
  v175 = v264;
  v176 = v233;
  *(v159 + 264) = v264;
  *(v159 + 272) = v176;
  v177 = sub_1CA94C438();
  v235 = v178;
  v236 = v177;
  v179 = sub_1CA94C438();
  v234 = v180;
  v237 = &v228;
  MEMORY[0x1EEE9AC00](v179);
  v181 = &v228 - v268;
  sub_1CA948D98();
  v182 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v182);
  sub_1CA948B68();

  v183 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v159 + 280) = sub_1CA2F9F14(v236, v235, v179, v234, 0, 0, v181, &v228 - v173);
  v184 = v231;
  *(v159 + 304) = v175;
  *(v159 + 312) = v184;
  v185 = MEMORY[0x1E69E6158];
  *(v159 + 344) = MEMORY[0x1E69E6158];
  *(v159 + 320) = 1952867660;
  *(v159 + 328) = 0xE400000000000000;
  sub_1CA94C1E8();
  v262[7] = sub_1CA2F864C();
  v186 = swift_allocObject();
  *(v186 + 16) = v238;
  v187 = v254;
  *(v186 + 32) = v244;
  *(v186 + 40) = v187;
  v188 = v247;
  *(v186 + 48) = v248;
  *(v186 + 64) = v185;
  *(v186 + 72) = v188;
  *(v186 + 80) = 1;
  v189 = v242;
  *(v186 + 104) = MEMORY[0x1E69E6370];
  *(v186 + 112) = v189;
  *(v186 + 120) = 0xD000000000000015;
  *(v186 + 128) = 0x80000001CA9CE2D0;
  v190 = v243;
  *(v186 + 144) = v185;
  *(v186 + 152) = v190;
  v191 = sub_1CA94C438();
  v193 = v192;
  v194 = sub_1CA94C438();
  v196 = v195;
  v259 = &v228;
  MEMORY[0x1EEE9AC00](v194);
  v197 = &v228 - v268;
  sub_1CA948D98();
  v198 = [v266 bundleURL];
  MEMORY[0x1EEE9AC00](v198);
  v199 = &v228 - v267;
  sub_1CA948B68();

  v200 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v186 + 160) = sub_1CA2F9F14(v191, v193, v194, v196, 0, 0, v197, v199);
  v201 = v245;
  *(v186 + 184) = v264;
  *(v186 + 192) = v201;
  v202 = swift_allocObject();
  *(v202 + 16) = v260;
  v203 = swift_allocObject();
  *(v203 + 16) = v256;
  strcpy((v203 + 32), "WFParameterKey");
  *(v203 + 47) = -18;
  v204 = v253;
  *(v203 + 48) = 0xD000000000000010;
  *(v203 + 56) = v204;
  v205 = MEMORY[0x1E69E6158];
  *(v203 + 72) = MEMORY[0x1E69E6158];
  *(v203 + 80) = 0xD000000000000010;
  *(v203 + 88) = v252;
  *(v203 + 96) = 0;
  v206 = MEMORY[0x1E69E6370];
  *(v203 + 120) = MEMORY[0x1E69E6370];
  v207 = v206;
  *(v203 + 128) = 0x72756F7365524657;
  *(v203 + 168) = v205;
  *(v203 + 136) = 0xEF7373616C436563;
  v208 = v251;
  *(v203 + 144) = v250;
  *(v203 + 152) = v208;
  v209 = v205;
  *(v202 + 32) = sub_1CA94C1E8();
  *(v186 + 224) = v249;
  *(v186 + 200) = v202;
  sub_1CA94C1E8();
  v210 = sub_1CA2F864C();
  v211 = v262;
  v262[8] = v210;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v213 = v263;
  v263[35] = v211;
  v213[38] = v212;
  v213[39] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v214 = swift_allocObject();
  *(v214 + 16) = v256;
  v215 = swift_allocObject();
  *(v215 + 16) = xmmword_1CA97EDF0;
  *(v215 + 32) = v254;
  *(v215 + 40) = 0x80000001CA99B240;
  v216 = swift_allocObject();
  *(v216 + 16) = v260;
  v217 = swift_allocObject();
  *(v217 + 16) = v256;
  strcpy((v217 + 32), "WFParameterKey");
  *(v217 + 47) = -18;
  *(v217 + 48) = 0xD000000000000010;
  *(v217 + 56) = v204;
  *(v217 + 72) = v209;
  *(v217 + 80) = 0xD000000000000010;
  *(v217 + 88) = v252;
  *(v217 + 96) = 1;
  *(v217 + 120) = v207;
  *(v217 + 128) = 0x72756F7365524657;
  *(v217 + 168) = v209;
  v219 = v250;
  v218 = v251;
  *(v217 + 136) = 0xEF7373616C436563;
  *(v217 + 144) = v219;
  *(v217 + 152) = v218;
  v220 = @"RequiredResources";
  *(v216 + 32) = sub_1CA94C1E8();
  *(v215 + 48) = v216;
  *(v215 + 72) = v249;
  *(v215 + 80) = 0x72756F7365524657;
  *(v215 + 120) = v209;
  *(v215 + 88) = 0xEF7373616C436563;
  *(v215 + 96) = 0xD000000000000019;
  *(v215 + 104) = 0x80000001CA9932D0;
  *(v214 + 32) = sub_1CA94C1E8();
  *(v214 + 56) = v239;
  *(v214 + 64) = 0xD000000000000017;
  *(v214 + 72) = 0x80000001CA997E10;
  *(v214 + 120) = v209;
  *(v214 + 88) = v209;
  *(v214 + 96) = 0xD00000000000001CLL;
  *(v214 + 104) = 0x80000001CA993620;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v222 = v263;
  v263[40] = v214;
  v222[43] = v221;
  v222[44] = @"UserInterfaceClasses";
  v223 = @"UserInterfaceClasses";
  v224 = sub_1CA94C1E8();
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v222[45] = v224;
  v222[48] = v225;
  v222[49] = @"UserInterfaces";
  v222[53] = v240;
  v222[50] = &unk_1F4A0AC68;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v226 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA6537B0()
{
  v365 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9DA8E0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v387 = v12;
  v389 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v355 - v389;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v388 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v390 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v391 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v355 - v391;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v386 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v385 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v378 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v384 = &v355;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v355 - v389;
  sub_1CA948D98();
  v31 = [v388 bundleURL];
  v379 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v355 - v391;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v33);
  *(v21 + 64) = v386;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v385;
  v37 = sub_1CA6B3784();
  v38 = v379;
  v379[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 0x6F6769646E49;
  v38[21] = 0xE600000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v38[25] = 0x6C69662E6E6F6F6DLL;
  v38[26] = 0xE90000000000006CLL;
  v38[28] = v39;
  v38[29] = @"InputPassthrough";
  v40 = v39;
  v38[33] = MEMORY[0x1E69E6370];
  *(v38 + 240) = 1;
  v41 = v38;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"InputPassthrough";
  v41[34] = sub_1CA94C368();
  v41[35] = 0xD000000000000051;
  v41[36] = 0x80000001CA9DA960;
  v41[38] = v40;
  v41[39] = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v355 - v389;
  sub_1CA948D98();
  v53 = [v388 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v355 - v391;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v57 = v379;
  v379[40] = v56;
  v57[43] = v386;
  v57[44] = @"Parameters";
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v385 = swift_allocObject();
  v363 = xmmword_1CA981410;
  *(v385 + 16) = xmmword_1CA981410;
  v384 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v58 = swift_initStackObject();
  v377 = xmmword_1CA981380;
  *(v58 + 16) = xmmword_1CA981380;
  v369 = 0xD000000000000016;
  v370 = 0x80000001CA99C4A0;
  *(v58 + 32) = @"Class";
  *(v58 + 40) = 0xD000000000000016;
  *(v58 + 48) = 0x80000001CA99C4A0;
  v59 = MEMORY[0x1E69E6158];
  *(v58 + 64) = MEMORY[0x1E69E6158];
  *(v58 + 72) = @"DefaultValue";
  *(v58 + 80) = 1852994900;
  *(v58 + 88) = 0xE400000000000000;
  *(v58 + 104) = v59;
  *(v58 + 112) = @"IntentSlotName";
  *(v58 + 120) = 0x6574617473;
  *(v58 + 128) = 0xE500000000000000;
  *(v58 + 144) = v59;
  *(v58 + 152) = @"Items";
  v381 = swift_allocObject();
  *(v381 + 1) = xmmword_1CA981360;
  v60 = @"Class";
  v61 = @"DefaultValue";
  v62 = @"IntentSlotName";
  v63 = v60;
  v64 = v61;
  v65 = v62;
  v66 = @"Items";
  v376 = v63;
  *&v383 = v64;
  v374 = v65;
  v368 = v66;
  v67 = @"Parameters";
  v68 = sub_1CA94C438();
  v372 = v69;
  v373 = v68;
  v70 = sub_1CA94C438();
  v371 = v71;
  v380 = &v355;
  MEMORY[0x1EEE9AC00](v70);
  v72 = v389;
  sub_1CA948D98();
  v73 = v388;
  v74 = [v388 bundleURL];
  *&v367 = &v355;
  MEMORY[0x1EEE9AC00](v74);
  v75 = v391;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v77 = sub_1CA2F9F14(v373, v372, v70, v371, 0, 0, &v355 - v72, &v355 - v75);
  v381[4] = v77;
  v78 = sub_1CA94C438();
  v372 = v79;
  v373 = v78;
  v80 = sub_1CA94C438();
  v371 = v81;
  v380 = &v355;
  MEMORY[0x1EEE9AC00](v80);
  sub_1CA948D98();
  v82 = [v73 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v373, v372, v80, v371, 0, 0, &v355 - v72, &v355 - v75);
  v85 = v381;
  v381[5] = v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v371 = v86;
  *(v58 + 160) = v85;
  *(v58 + 184) = v86;
  *(v58 + 192) = @"Key";
  *(v58 + 200) = 0x6F6974617265704FLL;
  *(v58 + 208) = 0xE90000000000006ELL;
  *(v58 + 224) = MEMORY[0x1E69E6158];
  *(v58 + 232) = @"Label";
  v87 = @"Key";
  v88 = @"Label";
  v89 = v87;
  v90 = v88;
  *&v367 = v89;
  v373 = v90;
  v91 = sub_1CA94C438();
  v93 = v92;
  v94 = sub_1CA94C438();
  v96 = v95;
  v381 = &v355;
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v355 - v389;
  sub_1CA948D98();
  v98 = [v388 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v355 - v391;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v101 = sub_1CA2F9F14(v91, v93, v94, v96, 0, 0, v97, v99);
  *(v58 + 264) = v386;
  *(v58 + 240) = v101;
  _s3__C3KeyVMa_0(0);
  v381 = v102;
  v380 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v385 + 32) = sub_1CA2F864C();
  v103 = swift_allocObject();
  *(v103 + 16) = v377;
  v364 = 0xD000000000000011;
  v104 = v376;
  *(v103 + 32) = v376;
  *(v103 + 40) = 0xD000000000000011;
  *(v103 + 48) = 0x80000001CA99E620;
  v105 = MEMORY[0x1E69E6158];
  v106 = v383;
  *(v103 + 64) = MEMORY[0x1E69E6158];
  *(v103 + 72) = v106;
  *(v103 + 80) = 0;
  v108 = v373;
  v107 = v374;
  *(v103 + 104) = MEMORY[0x1E69E6370];
  *(v103 + 112) = v107;
  *(v103 + 120) = 0x6574617473;
  *(v103 + 128) = 0xE500000000000000;
  v109 = v367;
  *(v103 + 144) = v105;
  *(v103 + 152) = v109;
  *(v103 + 160) = 0x64656C62616E45;
  *(v103 + 168) = 0xE700000000000000;
  *(v103 + 184) = v105;
  *(v103 + 192) = v108;
  v360 = v104;
  v372 = v107;
  v362 = v109;
  v366 = v108;
  v110 = sub_1CA94C438();
  v112 = v111;
  v113 = sub_1CA94C438();
  v115 = v114;
  *&v377 = &v355;
  MEMORY[0x1EEE9AC00](v113);
  v116 = &v355 - v389;
  sub_1CA948D98();
  v117 = [v388 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v355 - v391;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v103 + 200) = sub_1CA2F9F14(v110, v112, v113, v115, 0, 0, v116, v118);
  *(v103 + 224) = v386;
  *(v103 + 232) = @"RequiredResources";
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v120 = swift_allocObject();
  *(v120 + 16) = v378;
  v376 = 0x80000001CA993590;
  *&v377 = 0x80000001CA993570;
  v361 = @"RequiredResources";
  v121 = MEMORY[0x1E69E6158];
  *(v120 + 32) = sub_1CA94C1E8();
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v103 + 264) = v373;
  *(v103 + 240) = v120;
  sub_1CA94C1E8();
  *(v385 + 40) = sub_1CA2F864C();
  v122 = swift_allocObject();
  v367 = xmmword_1CA981400;
  *(v122 + 16) = xmmword_1CA981400;
  v123 = v360;
  v125 = v369;
  v124 = v370;
  *(v122 + 32) = v360;
  *(v122 + 40) = v125;
  *(v122 + 48) = v124;
  v126 = v383;
  *(v122 + 64) = v121;
  *(v122 + 72) = v126;
  *(v122 + 80) = 0x4F2064656E727554;
  *(v122 + 88) = 0xEA00000000006666;
  *(v122 + 104) = v121;
  *(v122 + 112) = @"DisallowedVariableTypes";
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v122 + 120) = &unk_1F4A0AD28;
  v128 = v368;
  *(v122 + 144) = v127;
  *(v122 + 152) = v128;
  *&v383 = swift_allocObject();
  *(v383 + 16) = xmmword_1CA981570;
  v370 = v123;
  v129 = @"DisallowedVariableTypes";
  v368 = sub_1CA94C438();
  v360 = v130;
  v131 = sub_1CA94C438();
  v359 = v132;
  v369 = &v355;
  MEMORY[0x1EEE9AC00](v131);
  v133 = v389;
  sub_1CA948D98();
  v134 = v388;
  v135 = [v388 bundleURL];
  v358 = &v355;
  MEMORY[0x1EEE9AC00](v135);
  v136 = v391;
  sub_1CA948B68();

  v137 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v138 = sub_1CA2F9F14(v368, v360, v131, v359, 0, 0, &v355 - v133, &v355 - v136);
  *(v383 + 32) = v138;
  v368 = sub_1CA94C438();
  v360 = v139;
  v140 = sub_1CA94C438();
  v359 = v141;
  v369 = &v355;
  MEMORY[0x1EEE9AC00](v140);
  sub_1CA948D98();
  v142 = [v134 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  sub_1CA948B68();

  v143 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v144 = sub_1CA2F9F14(v368, v360, v140, v359, 0, 0, &v355 - v133, &v355 - v136);
  v145 = v383;
  *(v383 + 40) = v144;
  v368 = sub_1CA94C438();
  v360 = v146;
  v147 = sub_1CA94C438();
  v359 = v148;
  v369 = &v355;
  MEMORY[0x1EEE9AC00](v147);
  v149 = &v355 - v133;
  sub_1CA948D98();
  v150 = v388;
  v151 = [v388 bundleURL];
  v358 = &v355;
  MEMORY[0x1EEE9AC00](v151);
  v152 = v391;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v145 + 48) = sub_1CA2F9F14(v368, v360, v147, v359, 0, 0, v149, &v355 - v152);
  v368 = sub_1CA94C438();
  v360 = v154;
  v155 = sub_1CA94C438();
  v359 = v156;
  v369 = &v355;
  MEMORY[0x1EEE9AC00](v155);
  v157 = v389;
  sub_1CA948D98();
  v158 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v158);
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v160 = sub_1CA2F9F14(v368, v360, v155, v359, 0, 0, &v355 - v157, &v355 - v152);
  v161 = v383;
  *(v383 + 56) = v160;
  *(v122 + 160) = v161;
  v162 = v362;
  *(v122 + 184) = v371;
  *(v122 + 192) = v162;
  strcpy((v122 + 200), "AssertionType");
  *(v122 + 214) = -4864;
  v163 = v366;
  *(v122 + 224) = MEMORY[0x1E69E6158];
  *(v122 + 232) = v163;
  v359 = v162;
  v360 = v163;
  v371 = sub_1CA94C438();
  v165 = v164;
  v166 = sub_1CA94C438();
  v168 = v167;
  *&v383 = &v355;
  MEMORY[0x1EEE9AC00](v166);
  v169 = &v355 - v157;
  sub_1CA948D98();
  v170 = [v388 bundleURL];
  MEMORY[0x1EEE9AC00](v170);
  v171 = &v355 - v391;
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v122 + 240) = sub_1CA2F9F14(v371, v165, v166, v168, 0, 0, v169, v171);
  v173 = v361;
  *(v122 + 264) = v386;
  *(v122 + 272) = v173;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v174 = swift_allocObject();
  *(v174 + 16) = xmmword_1CA97EDF0;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v175 = swift_initStackObject();
  v383 = xmmword_1CA9813C0;
  *(v175 + 16) = xmmword_1CA9813C0;
  strcpy((v175 + 32), "WFParameterKey");
  *(v175 + 47) = -18;
  *(v175 + 48) = 0x6F6974617265704FLL;
  *(v175 + 56) = 0xE90000000000006ELL;
  v176 = MEMORY[0x1E69E6158];
  *(v175 + 72) = MEMORY[0x1E69E6158];
  *(v175 + 80) = 0xD000000000000010;
  v177 = v377;
  *(v175 + 88) = v377;
  *(v175 + 96) = 1852994900;
  *(v175 + 104) = 0xE400000000000000;
  *(v175 + 120) = v176;
  *(v175 + 128) = 0x72756F7365524657;
  *(v175 + 168) = v176;
  *(v175 + 136) = 0xEF7373616C436563;
  *(v175 + 144) = 0xD00000000000001BLL;
  v369 = 0xD00000000000001BLL;
  v178 = v376;
  *(v175 + 152) = v376;
  v368 = v173;
  *(v174 + 32) = sub_1CA94C1E8();
  v179 = swift_allocObject();
  *(v179 + 16) = v383;
  strcpy((v179 + 32), "WFParameterKey");
  *(v179 + 47) = -18;
  *(v179 + 48) = 0x64656C62616E45;
  *(v179 + 56) = 0xE700000000000000;
  *(v179 + 72) = v176;
  *(v179 + 80) = 0xD000000000000010;
  *(v179 + 88) = v177;
  *(v179 + 96) = 1;
  *(v179 + 120) = MEMORY[0x1E69E6370];
  *(v179 + 128) = 0x72756F7365524657;
  *(v179 + 168) = v176;
  *(v179 + 136) = 0xEF7373616C436563;
  *(v179 + 144) = 0xD00000000000001BLL;
  *(v179 + 152) = v178;
  *(v174 + 40) = sub_1CA94C1E8();
  *(v122 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v122 + 280) = v174;
  sub_1CA94C1E8();
  *(v385 + 48) = sub_1CA2F864C();
  v180 = swift_allocObject();
  *(v180 + 16) = v367;
  v181 = v370;
  *(v180 + 32) = v370;
  *(v180 + 40) = 0xD000000000000019;
  *(v180 + 48) = 0x80000001CA99B030;
  *(v180 + 64) = v176;
  *(v180 + 72) = @"Description";
  v182 = @"Description";
  v370 = v181;
  v362 = v182;
  v366 = sub_1CA94C438();
  v361 = v183;
  v184 = sub_1CA94C438();
  v186 = v185;
  *&v367 = &v355;
  MEMORY[0x1EEE9AC00](v184);
  v187 = &v355 - v389;
  sub_1CA948D98();
  v188 = [v388 bundleURL];
  MEMORY[0x1EEE9AC00](v188);
  v189 = &v355 - v391;
  sub_1CA948B68();

  v190 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v180 + 80) = sub_1CA2F9F14(v366, v361, v184, v186, 0, 0, v187, v189);
  v191 = v372;
  *(v180 + 104) = v386;
  *(v180 + 112) = v191;
  *(v180 + 120) = 0x746E657665;
  *(v180 + 128) = 0xE500000000000000;
  v192 = MEMORY[0x1E69E6158];
  v193 = v359;
  v194 = v360;
  *(v180 + 144) = MEMORY[0x1E69E6158];
  *(v180 + 152) = v193;
  *(v180 + 160) = 0x746E657645;
  *(v180 + 168) = 0xE500000000000000;
  *(v180 + 184) = v192;
  *(v180 + 192) = v194;
  v366 = v193;
  *&v367 = v194;
  v195 = sub_1CA94C438();
  v359 = v196;
  v360 = v195;
  v197 = sub_1CA94C438();
  v358 = v198;
  v361 = &v355;
  MEMORY[0x1EEE9AC00](v197);
  v199 = v389;
  sub_1CA948D98();
  v200 = v388;
  v201 = [v388 bundleURL];
  MEMORY[0x1EEE9AC00](v201);
  v202 = v391;
  sub_1CA948B68();

  v203 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v180 + 200) = sub_1CA2F9F14(v360, v359, v197, v358, 0, 0, &v355 - v199, &v355 - v202);
  v204 = v386;
  *(v180 + 224) = v386;
  *(v180 + 232) = @"Placeholder";
  v361 = @"Placeholder";
  v205 = sub_1CA94C438();
  v358 = v206;
  v359 = v205;
  v207 = sub_1CA94C438();
  v357 = v208;
  v360 = &v355;
  MEMORY[0x1EEE9AC00](v207);
  sub_1CA948D98();
  v209 = [v200 bundleURL];
  MEMORY[0x1EEE9AC00](v209);
  sub_1CA948B68();

  v210 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v180 + 240) = sub_1CA2F9F14(v359, v358, v207, v357, 0, 0, &v355 - v199, &v355 - v202);
  v211 = v368;
  *(v180 + 264) = v204;
  *(v180 + 272) = v211;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v212 = swift_allocObject();
  *(v212 + 16) = v383;
  v213 = swift_allocObject();
  *(v213 + 16) = v378;
  v214 = MEMORY[0x1E69E6158];
  *(v213 + 32) = sub_1CA94C1E8();
  *(v212 + 56) = v373;
  *(v212 + 32) = v213;
  v215 = swift_allocObject();
  *(v215 + 16) = v383;
  strcpy((v215 + 32), "WFParameterKey");
  *(v215 + 47) = -18;
  *(v215 + 48) = 0x64656C62616E45;
  *(v215 + 56) = 0xE700000000000000;
  *(v215 + 72) = v214;
  *(v215 + 80) = 0xD000000000000010;
  *(v215 + 88) = v377;
  *(v215 + 96) = 1;
  *(v215 + 120) = MEMORY[0x1E69E6370];
  *(v215 + 128) = 0x72756F7365524657;
  *(v215 + 168) = v214;
  *(v215 + 136) = 0xEF7373616C436563;
  v216 = v376;
  *(v215 + 144) = v369;
  *(v215 + 152) = v216;
  v217 = sub_1CA94C1E8();
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(v212 + 88) = v359;
  *(v212 + 64) = v217;
  v218 = sub_1CA94C1E8();
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(v212 + 120) = v358;
  *(v212 + 96) = v218;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(v180 + 304) = v357;
  *(v180 + 280) = v212;
  sub_1CA94C1E8();
  *(v385 + 56) = sub_1CA2F864C();
  v219 = swift_allocObject();
  *(v219 + 16) = xmmword_1CA9813E0;
  *(v219 + 32) = v370;
  *(v219 + 40) = 0xD000000000000014;
  *(v219 + 48) = 0x80000001CA9AB710;
  v220 = v362;
  *(v219 + 64) = v214;
  *(v219 + 72) = v220;
  v221 = sub_1CA94C438();
  v356 = v222;
  v223 = sub_1CA94C438();
  v225 = v224;
  v362 = &v355;
  MEMORY[0x1EEE9AC00](v223);
  v226 = v389;
  sub_1CA948D98();
  v227 = [v388 bundleURL];
  MEMORY[0x1EEE9AC00](v227);
  v228 = &v355 - v391;
  sub_1CA948B68();

  v229 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v230 = sub_1CA2F9F14(v221, v356, v223, v225, 0, 0, &v355 - v226, v228);
  *(v219 + 104) = v386;
  *(v219 + 80) = v230;
  *(v219 + 112) = sub_1CA94C368();
  *(v219 + 120) = 0x737961776C41;
  *(v219 + 128) = 0xE600000000000000;
  v231 = MEMORY[0x1E69E6158];
  v232 = v372;
  *(v219 + 144) = MEMORY[0x1E69E6158];
  *(v219 + 152) = v232;
  *(v219 + 160) = 0x6E6F697461727564;
  *(v219 + 168) = 0xE800000000000000;
  v233 = v366;
  *(v219 + 184) = v231;
  *(v219 + 192) = v233;
  *(v219 + 200) = 1701669204;
  *(v219 + 208) = 0xE400000000000000;
  v234 = v367;
  *(v219 + 224) = v231;
  *(v219 + 232) = v234;
  v362 = sub_1CA94C438();
  v356 = v235;
  v236 = sub_1CA94C438();
  v355 = v237;
  v372 = &v355;
  MEMORY[0x1EEE9AC00](v236);
  sub_1CA948D98();
  v238 = v388;
  v239 = [v388 bundleURL];
  MEMORY[0x1EEE9AC00](v239);
  v240 = &v355 - v391;
  sub_1CA948B68();

  v241 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v219 + 240) = sub_1CA2F9F14(v362, v356, v236, v355, 0, 0, &v355 - v226, v240);
  v242 = v386;
  v243 = v361;
  *(v219 + 264) = v386;
  *(v219 + 272) = v243;
  v244 = sub_1CA94C438();
  v361 = v245;
  v362 = v244;
  v246 = sub_1CA94C438();
  v356 = v247;
  v372 = &v355;
  MEMORY[0x1EEE9AC00](v246);
  v248 = &v355 - v389;
  sub_1CA948D98();
  v249 = [v238 bundleURL];
  MEMORY[0x1EEE9AC00](v249);
  v250 = &v355 - v391;
  sub_1CA948B68();

  v251 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v219 + 280) = sub_1CA2F9F14(v362, v361, v246, v356, 0, 0, v248, v250);
  v252 = v368;
  *(v219 + 304) = v242;
  *(v219 + 312) = v252;
  v253 = swift_allocObject();
  *(v253 + 16) = v383;
  v254 = swift_allocObject();
  *(v254 + 16) = v378;
  v255 = MEMORY[0x1E69E6158];
  *(v254 + 32) = sub_1CA94C1E8();
  *(v253 + 56) = v373;
  *(v253 + 32) = v254;
  v256 = swift_allocObject();
  *(v256 + 16) = v383;
  strcpy((v256 + 32), "WFParameterKey");
  *(v256 + 47) = -18;
  *(v256 + 48) = 0x64656C62616E45;
  *(v256 + 56) = 0xE700000000000000;
  *(v256 + 72) = v255;
  *(v256 + 80) = 0xD000000000000010;
  *(v256 + 88) = v377;
  *(v256 + 96) = 1;
  *(v256 + 120) = MEMORY[0x1E69E6370];
  *(v256 + 128) = 0x72756F7365524657;
  *(v256 + 168) = v255;
  v257 = v369;
  *(v256 + 136) = 0xEF7373616C436563;
  *(v256 + 144) = v257;
  *(v256 + 152) = v376;
  v258 = sub_1CA94C1E8();
  *(v253 + 88) = v359;
  *(v253 + 64) = v258;
  v259 = v255;
  v260 = sub_1CA94C1E8();
  v261 = v357;
  *(v253 + 120) = v358;
  *(v253 + 96) = v260;
  *(v219 + 320) = v253;
  *(v219 + 344) = v261;
  *(v219 + 352) = @"TextAlignment";
  *(v219 + 384) = v255;
  *(v219 + 360) = 0x7468676952;
  *(v219 + 368) = 0xE500000000000000;
  v262 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v385 + 64) = sub_1CA2F864C();
  v263 = swift_allocObject();
  *(v263 + 16) = v383;
  *(v263 + 32) = v370;
  *(v263 + 40) = v257;
  *(v263 + 48) = 0x80000001CA9DAC40;
  v264 = v366;
  *(v263 + 64) = v259;
  *(v263 + 72) = v264;
  *(v263 + 80) = 0x646F4D7375636F46;
  *(v263 + 88) = 0xEA00000000007365;
  v265 = v367;
  *(v263 + 104) = v259;
  *(v263 + 112) = v265;
  v266 = sub_1CA94C438();
  v382 = v267;
  v268 = sub_1CA94C438();
  v270 = v269;
  *&v383 = &v355;
  MEMORY[0x1EEE9AC00](v268);
  v271 = &v355 - v389;
  sub_1CA948D98();
  v272 = [v388 bundleURL];
  MEMORY[0x1EEE9AC00](v272);
  v273 = &v355 - v391;
  sub_1CA948B68();

  v274 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v275 = sub_1CA2F9F14(v266, v382, v268, v270, 0, 0, v271, v273);
  *(v263 + 144) = v386;
  *(v263 + 120) = v275;
  sub_1CA94C1E8();
  v276 = sub_1CA2F864C();
  v277 = v385;
  *(v385 + 72) = v276;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v279 = v379;
  v379[45] = v277;
  v279[48] = v278;
  v279[49] = @"ParameterSummary";
  v385 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v386 = swift_allocObject();
  *(v386 + 16) = v363;
  v384 = "Focus (FocusModes)";
  v280 = @"ParameterSummary";
  v281 = sub_1CA94C438();
  v382 = v282;
  v283 = sub_1CA94C438();
  v285 = v284;
  *&v383 = &v355;
  MEMORY[0x1EEE9AC00](v283);
  v286 = v389;
  sub_1CA948D98();
  v287 = [v388 bundleURL];
  MEMORY[0x1EEE9AC00](v287);
  v288 = v391;
  sub_1CA948B68();

  v289 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v290 = sub_1CA2F9F14(v281, v382, v283, v285, 0, 0, &v355 - v286, &v355 - v288);
  v291 = objc_allocWithZone(WFActionParameterSummaryValue);
  v292 = sub_1CA65DD78(0xD00000000000001CLL, v384 | 0x8000000000000000, v290);
  *(v386 + 32) = v292;
  v384 = "${Operation} ${FocusModes}";
  v293 = sub_1CA94C438();
  v381 = v294;
  v382 = v293;
  v295 = sub_1CA94C438();
  v297 = v296;
  *&v383 = &v355;
  MEMORY[0x1EEE9AC00](v295);
  v298 = &v355 - v286;
  sub_1CA948D98();
  v299 = v388;
  v300 = [v388 bundleURL];
  MEMORY[0x1EEE9AC00](v300);
  sub_1CA948B68();

  v301 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v302 = sub_1CA2F9F14(v382, v381, v295, v297, 0, 0, v298, &v355 - v288);
  v303 = objc_allocWithZone(WFActionParameterSummaryValue);
  v304 = sub_1CA65DD78(0xD000000000000022, v384 | 0x8000000000000000, v302);
  *(v386 + 40) = v304;
  v384 = "ocusModes} ${Enabled}";
  v305 = sub_1CA94C438();
  v381 = v306;
  v382 = v305;
  v307 = sub_1CA94C438();
  v380 = v308;
  *&v383 = &v355;
  MEMORY[0x1EEE9AC00](v307);
  v309 = v389;
  sub_1CA948D98();
  v310 = [v299 bundleURL];
  MEMORY[0x1EEE9AC00](v310);
  v311 = &v355 - v391;
  sub_1CA948B68();

  v312 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v313 = sub_1CA2F9F14(v382, v381, v307, v380, 0, 0, &v355 - v309, v311);
  v314 = objc_allocWithZone(WFActionParameterSummaryValue);
  v315 = sub_1CA65DD78(0xD000000000000045, v384 | 0x8000000000000000, v313);
  *(v386 + 48) = v315;
  v384 = "sertionType} ${Event}";
  v316 = sub_1CA94C438();
  v381 = v317;
  v382 = v316;
  v318 = sub_1CA94C438();
  v380 = v319;
  *&v383 = &v355;
  MEMORY[0x1EEE9AC00](v318);
  v320 = &v355 - v309;
  sub_1CA948D98();
  v321 = [v299 bundleURL];
  MEMORY[0x1EEE9AC00](v321);
  v322 = v391;
  sub_1CA948B68();

  v323 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v324 = sub_1CA2F9F14(v382, v381, v318, v380, 0, 0, v320, &v355 - v322);
  v325 = objc_allocWithZone(WFActionParameterSummaryValue);
  v326 = sub_1CA65DD78(0xD00000000000003CLL, v384 | 0x8000000000000000, v324);
  v327 = v386;
  *(v386 + 56) = v326;
  v384 = "bled} until ${AssertionType}";
  v328 = sub_1CA94C438();
  v381 = v329;
  v382 = v328;
  v330 = sub_1CA94C438();
  v332 = v331;
  *&v383 = &v355;
  MEMORY[0x1EEE9AC00](v330);
  v333 = &v355 - v389;
  sub_1CA948D98();
  v334 = [v299 bundleURL];
  MEMORY[0x1EEE9AC00](v334);
  sub_1CA948B68();

  v335 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v336 = sub_1CA2F9F14(v382, v381, v330, v332, 0, 0, v333, &v355 - v322);
  v337 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v327 + 64) = sub_1CA65DD78(0xD00000000000003ELL, v384 | 0x8000000000000000, v336);
  v384 = "sertionType} ${Time}";
  v338 = sub_1CA94C438();
  v340 = v339;
  v341 = sub_1CA94C438();
  v343 = v342;
  *&v383 = &v355;
  MEMORY[0x1EEE9AC00](v341);
  v344 = &v355 - v389;
  sub_1CA948D98();
  v345 = [v388 bundleURL];
  MEMORY[0x1EEE9AC00](v345);
  v346 = &v355 - v391;
  sub_1CA948B68();

  v347 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v348 = sub_1CA2F9F14(v338, v340, v341, v343, 0, 0, v344, v346);
  v349 = objc_allocWithZone(WFActionParameterSummaryValue);
  v350 = sub_1CA65DD78(0xD00000000000003FLL, v384 | 0x8000000000000000, v348);
  v351 = v385;
  *(v386 + 72) = v350;
  v352 = sub_1CA65AF90();
  v353 = v379;
  v379[53] = v351;
  v353[50] = v352;
  v353[54] = sub_1CA94C368();
  v353[58] = MEMORY[0x1E69E6370];
  *(v353 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA6564F0()
{
  v232 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9DAF20;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v240 = inited;
  v242 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v243 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA94C438();
  v13 = v12;
  v14 = sub_1CA948E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v247 = v16;
  v248 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v222 - v248;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDB9F690;
  v246 = qword_1EDB9F690;
  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v244 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v245 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v222 - v245;
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v243, v10, v11, v13, 0, 0, v17, v22);
  v243 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v243;
  *(v6 + 40) = v24;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v25 = v242;
  v26 = sub_1CA6B3784();
  v27 = v240;
  v240[15] = v26;
  v27[18] = v25;
  v27[19] = @"Name";
  v28 = @"Name";
  v29 = sub_1CA94C438();
  v31 = v30;
  v32 = sub_1CA94C438();
  v34 = v33;
  v242 = &v222;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v222 - v248;
  sub_1CA948D98();
  v36 = [v18 bundleURL];
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v222 - v245;
  sub_1CA948B68();

  v38 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v39 = sub_1CA2F9F14(v29, v31, v32, v34, 0, 0, v35, v37);
  v40 = v243;
  v27[20] = v39;
  v27[23] = v40;
  v27[24] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1CA9813C0;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 48) = 1;
  *(v41 + 72) = v42;
  *(v41 + 80) = 0x614E74757074754FLL;
  *(v41 + 88) = 0xEA0000000000656DLL;
  v43 = @"Output";
  v241 = sub_1CA94C438();
  v239 = v44;
  v45 = sub_1CA94C438();
  v47 = v46;
  v242 = &v222;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v222 - v248;
  sub_1CA948D98();
  v49 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v222 - v245;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v41 + 96) = sub_1CA2F9F14(v241, v239, v45, v47, 0, 0, v48, v50);
  *(v41 + 120) = v40;
  *(v41 + 128) = 0x7365707954;
  *(v41 + 136) = 0xE500000000000000;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 168) = v231;
  *(v41 + 144) = &unk_1F4A0AFD8;
  v52 = MEMORY[0x1E69E6158];
  v53 = sub_1CA94C1E8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v27[25] = v53;
  v27[28] = v54;
  v27[29] = @"Parameters";
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v242 = swift_allocObject();
  *(v242 + 1) = xmmword_1CA981570;
  v241 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v55 = swift_initStackObject();
  v236 = xmmword_1CA981370;
  *(v55 + 16) = xmmword_1CA981370;
  *(v55 + 32) = @"Class";
  *(v55 + 40) = 0xD000000000000012;
  *(v55 + 48) = 0x80000001CA99B980;
  *(v55 + 64) = v52;
  *(v55 + 72) = @"Key";
  *(v55 + 80) = 0xD000000000000011;
  *(v55 + 88) = 0x80000001CA9DB010;
  *(v55 + 104) = v52;
  *(v55 + 112) = @"StepperDescription";
  v56 = @"Class";
  v57 = @"Key";
  v58 = v56;
  v59 = v57;
  *&v230 = v58;
  v233 = v59;
  v60 = @"Parameters";
  v61 = @"StepperDescription";
  v62 = sub_1CA94C438();
  v64 = v63;
  v65 = sub_1CA94C438();
  v67 = v66;
  v238 = &v222;
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v222 - v248;
  sub_1CA948D98();
  v69 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v222 - v245;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 120) = sub_1CA2F9F14(v62, v64, v65, v67, 0, 0, v68, v70);
  *(v55 + 144) = v243;
  *(v55 + 152) = @"StepperNoun";
  v72 = @"StepperNoun";
  v73 = sub_1CA94C438();
  v237 = v74;
  v238 = v73;
  v75 = v74;
  v253 = 0;
  v254 = 0xE000000000000000;
  sub_1CA94D408();

  v253 = v73;
  v254 = v75;
  v251 = 10;
  v252 = 0xE100000000000000;
  v249 = 32;
  v250 = 0xE100000000000000;
  sub_1CA27BAF0();
  v253 = sub_1CA94D1B8();
  v254 = v76;
  v77 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v234 = &v222;
  v78 = v253;
  v229 = v254;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v222 - v248;
  sub_1CA948D98();
  v80 = v246;
  v81 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = v245;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 160) = sub_1CA2F9F14(v78, v229, v238, v237, 0, 0, v79, &v222 - v82);
  v84 = v243;
  *(v55 + 184) = v243;
  *(v55 + 192) = @"StepperPrefix";
  v85 = @"StepperPrefix";
  v237 = sub_1CA94C438();
  v234 = v86;
  v229 = sub_1CA94C438();
  v88 = v87;
  v238 = &v222;
  MEMORY[0x1EEE9AC00](v229);
  v89 = &v222 - v248;
  sub_1CA948D98();
  v90 = [v80 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v237, v234, v229, v88, 0, 0, v89, &v222 - v82);
  *(v55 + 224) = v84;
  *(v55 + 200) = v92;
  _s3__C3KeyVMa_0(0);
  v238 = v93;
  v237 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v242[4] = sub_1CA2F864C();
  v94 = swift_allocObject();
  *(v94 + 16) = v236;
  *&v236 = 0xD000000000000016;
  v95 = v230;
  *(v94 + 32) = v230;
  *(v94 + 40) = 0xD000000000000016;
  *(v94 + 48) = 0x80000001CA99C4A0;
  v96 = MEMORY[0x1E69E6158];
  *(v94 + 64) = MEMORY[0x1E69E6158];
  *(v94 + 72) = @"DefaultValue";
  *(v94 + 80) = 7105601;
  *(v94 + 88) = 0xE300000000000000;
  *(v94 + 104) = v96;
  *(v94 + 112) = @"Items";
  v234 = swift_allocObject();
  *&v234->data = xmmword_1CA981470;
  v235 = v95;
  v97 = @"DefaultValue";
  v98 = @"Items";
  v99 = sub_1CA94C438();
  v228 = v100;
  v229 = v99;
  v101 = sub_1CA94C438();
  v227 = v102;
  *&v230 = &v222;
  MEMORY[0x1EEE9AC00](v101);
  v103 = v248;
  sub_1CA948D98();
  v104 = v246;
  v105 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v222 - v245;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v229, v228, v101, v227, 0, 0, &v222 - v103, v106);
  v234[1].isa = v108;
  v109 = sub_1CA94C438();
  v228 = v110;
  v229 = v109;
  v111 = sub_1CA94C438();
  v227 = v112;
  *&v230 = &v222;
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948D98();
  v113 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = v245;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v229, v228, v111, v227, 0, 0, &v222 - v103, &v222 - v114);
  v117 = v234;
  v234[1].info = v116;
  v118 = sub_1CA94C438();
  v228 = v119;
  v229 = v118;
  v227 = sub_1CA94C438();
  v121 = v120;
  *&v230 = &v222;
  MEMORY[0x1EEE9AC00](v227);
  v122 = &v222 - v248;
  sub_1CA948D98();
  v123 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v117 + 48) = sub_1CA2F9F14(v229, v228, v227, v121, 0, 0, v122, &v222 - v114);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v94 + 120) = v117;
  v126 = v233;
  *(v94 + 144) = v125;
  *(v94 + 152) = v126;
  *(v94 + 160) = 0xD000000000000011;
  *(v94 + 168) = 0x80000001CA9DB100;
  *(v94 + 184) = MEMORY[0x1E69E6158];
  *(v94 + 192) = @"Label";
  v127 = @"Label";
  v233 = v126;
  v234 = v127;
  v128 = sub_1CA94C438();
  v130 = v129;
  v131 = sub_1CA94C438();
  v133 = v132;
  *&v230 = &v222;
  MEMORY[0x1EEE9AC00](v131);
  v134 = &v222 - v248;
  sub_1CA948D98();
  v135 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v135);
  v136 = &v222 - v245;
  sub_1CA948B68();

  v137 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v138 = sub_1CA2F9F14(v128, v130, v131, v133, 0, 0, v134, v136);
  *(v94 + 224) = v243;
  *(v94 + 200) = v138;
  sub_1CA94C1E8();
  v242[5] = sub_1CA2F864C();
  v139 = swift_allocObject();
  v230 = xmmword_1CA981380;
  *(v139 + 16) = xmmword_1CA981380;
  v228 = 0xD000000000000014;
  v229 = 0x80000001CA99B500;
  *(v139 + 32) = v235;
  *(v139 + 40) = 0xD000000000000014;
  *(v139 + 48) = 0x80000001CA99B500;
  *(v139 + 64) = MEMORY[0x1E69E6158];
  *(v139 + 72) = @"Description";
  v227 = @"Description";
  v140 = sub_1CA94C438();
  v224 = v141;
  v225 = v140;
  v142 = sub_1CA94C438();
  v144 = v143;
  v226 = &v222;
  MEMORY[0x1EEE9AC00](v142);
  v145 = &v222 - v248;
  sub_1CA948D98();
  v146 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  v147 = v245;
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v139 + 80) = sub_1CA2F9F14(v225, v224, v142, v144, 0, 0, v145, &v222 - v147);
  v149 = v243;
  v150 = v233;
  *(v139 + 104) = v243;
  *(v139 + 112) = v150;
  *(v139 + 120) = v236;
  *(v139 + 128) = 0x80000001CA9DB210;
  v151 = v234;
  *(v139 + 144) = MEMORY[0x1E69E6158];
  *(v139 + 152) = v151;
  v152 = sub_1CA94C438();
  v224 = v153;
  v225 = v152;
  v154 = sub_1CA94C438();
  v223 = v155;
  v226 = &v222;
  MEMORY[0x1EEE9AC00](v154);
  v156 = &v222 - v248;
  sub_1CA948D98();
  v157 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v157);
  sub_1CA948B68();

  v158 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v139 + 160) = sub_1CA2F9F14(v225, v224, v154, v223, 0, 0, v156, &v222 - v147);
  *(v139 + 184) = v149;
  *(v139 + 192) = @"Placeholder";
  v226 = @"Placeholder";
  v224 = sub_1CA94C438();
  v160 = v159;
  v161 = sub_1CA94C438();
  v163 = v162;
  v225 = &v222;
  MEMORY[0x1EEE9AC00](v161);
  v164 = &v222 - v248;
  sub_1CA948D98();
  v165 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v165);
  v166 = &v222 - v245;
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v139 + 200) = sub_1CA2F9F14(v224, v160, v161, v163, 0, 0, v164, v166);
  v168 = v243;
  *(v139 + 224) = v243;
  *(v139 + 232) = @"TextAlignment";
  v169 = MEMORY[0x1E69E6158];
  *(v139 + 264) = MEMORY[0x1E69E6158];
  *(v139 + 240) = 0x7468676952;
  *(v139 + 248) = 0xE500000000000000;
  v225 = @"TextAlignment";
  sub_1CA94C1E8();
  v242[6] = sub_1CA2F864C();
  v170 = swift_allocObject();
  *(v170 + 16) = v230;
  v172 = v228;
  v171 = v229;
  *(v170 + 32) = v235;
  *(v170 + 40) = v172;
  *(v170 + 48) = v171;
  v173 = v227;
  *(v170 + 64) = v169;
  *(v170 + 72) = v173;
  v235 = sub_1CA94C438();
  *&v230 = v174;
  v175 = sub_1CA94C438();
  v177 = v176;
  v239 = &v222;
  MEMORY[0x1EEE9AC00](v175);
  v178 = &v222 - v248;
  sub_1CA948D98();
  v179 = v246;
  v180 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v222 - v245;
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v170 + 80) = sub_1CA2F9F14(v235, v230, v175, v177, 0, 0, v178, v181);
  v183 = v233;
  *(v170 + 104) = v168;
  *(v170 + 112) = v183;
  *(v170 + 120) = v236;
  *(v170 + 128) = 0x80000001CA9DB330;
  v184 = v234;
  *(v170 + 144) = MEMORY[0x1E69E6158];
  *(v170 + 152) = v184;
  v185 = sub_1CA94C438();
  v235 = v186;
  *&v236 = v185;
  v187 = sub_1CA94C438();
  v234 = v188;
  v239 = &v222;
  MEMORY[0x1EEE9AC00](v187);
  v189 = v248;
  sub_1CA948D98();
  v190 = [v179 bundleURL];
  v233 = &v222;
  MEMORY[0x1EEE9AC00](v190);
  v191 = v245;
  sub_1CA948B68();

  v192 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v170 + 160) = sub_1CA2F9F14(v236, v235, v187, v234, 0, 0, &v222 - v189, &v222 - v191);
  v193 = v226;
  *(v170 + 184) = v243;
  *(v170 + 192) = v193;
  v194 = sub_1CA94C438();
  v235 = v195;
  *&v236 = v194;
  v196 = sub_1CA94C438();
  v234 = v197;
  v239 = &v222;
  MEMORY[0x1EEE9AC00](v196);
  v198 = v189;
  sub_1CA948D98();
  v199 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v199);
  sub_1CA948B68();

  v200 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v170 + 200) = sub_1CA2F9F14(v236, v235, v196, v234, 0, 0, &v222 - v189, &v222 - v191);
  v201 = v225;
  *(v170 + 224) = v243;
  *(v170 + 232) = v201;
  *(v170 + 264) = MEMORY[0x1E69E6158];
  *(v170 + 240) = 0x7468676952;
  *(v170 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  v202 = sub_1CA2F864C();
  v203 = v242;
  v242[7] = v202;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v205 = v240;
  v240[30] = v203;
  v205[33] = v204;
  v205[34] = @"ParameterSummary";
  v206 = @"ParameterSummary";
  v207 = sub_1CA94C438();
  v209 = v208;
  v210 = sub_1CA94C438();
  v212 = v211;
  MEMORY[0x1EEE9AC00](v210);
  sub_1CA948D98();
  v213 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v213);
  v214 = &v222 - v245;
  sub_1CA948B68();

  v215 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v216 = sub_1CA2F9F14(v207, v209, v210, v212, 0, 0, &v222 - v198, v214);
  v217 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v218 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v219 = v240;
  v240[35] = v217;
  v219[38] = v218;
  v219[39] = @"RequiredResources";
  v219[43] = v231;
  v219[40] = &unk_1F4A0B008;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v220 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA6580A4()
{
  v102 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x52556E65704F4657;
  *(inited + 48) = 0xEF6E6F697463414CLL;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v103 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v107 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v108 = v11;
  v12 = &v96 - v107;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v104 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v105 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v106 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v96 - v106;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v103, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v103 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v101 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v99 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v100 = &v96;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v96 - v107;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v96 - v106;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v99, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v103;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v101;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x80000001CA9AC3B0;
  *(inited + 224) = v35;
  *(inited + 232) = @"IconSymbolColor";
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  *(inited + 264) = v35;
  *(inited + 272) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1CA981350;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  *(v36 + 96) = 0x7475706E494657;
  *(v36 + 104) = 0xE700000000000000;
  *(v36 + 120) = v35;
  *(v36 + 128) = 0x6465726975716552;
  *(v36 + 136) = 0xE800000000000000;
  *(v36 + 144) = 1;
  *(v36 + 168) = v37;
  *(v36 + 176) = 0x7365707954;
  *(v36 + 184) = 0xE500000000000000;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v101;
  *(v36 + 192) = &unk_1F4A0B048;
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"IconSymbolColor";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v42;
  *(inited + 304) = v43;
  *(inited + 312) = @"InputPassthrough";
  *(inited + 344) = v37;
  *(inited + 320) = 1;
  v44 = @"InputPassthrough";
  *(inited + 352) = sub_1CA94C368();
  *(inited + 360) = 0xD00000000000003CLL;
  *(inited + 368) = 0x80000001CA9DB460;
  *(inited + 384) = v35;
  *(inited + 392) = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v100 = &v96;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v96 - v107;
  sub_1CA948D98();
  v53 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v96 - v106;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v98 = @"Parameters";
  *(inited + 424) = v103;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v100 = swift_allocObject();
  *(v100 + 1) = xmmword_1CA9813B0;
  v99 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1CA981300;
  *(v56 + 32) = @"AllowsMultipleValues";
  *(v56 + 40) = 1;
  v57 = MEMORY[0x1E69E6370];
  *(v56 + 64) = MEMORY[0x1E69E6370];
  *(v56 + 72) = @"AutocapitalizationType";
  *(v56 + 80) = 1701736270;
  *(v56 + 88) = 0xE400000000000000;
  v58 = MEMORY[0x1E69E6158];
  *(v56 + 104) = MEMORY[0x1E69E6158];
  *(v56 + 112) = @"Class";
  *(v56 + 120) = 0xD000000000000014;
  *(v56 + 128) = 0x80000001CA99B500;
  *(v56 + 144) = v58;
  *(v56 + 152) = @"DisableAutocorrection";
  *(v56 + 160) = 1;
  *(v56 + 184) = v57;
  *(v56 + 192) = @"Key";
  *(v56 + 200) = 0x7475706E494657;
  *(v56 + 208) = 0xE700000000000000;
  *(v56 + 224) = v58;
  *(v56 + 232) = @"KeyboardType";
  *(v56 + 240) = 5001813;
  *(v56 + 248) = 0xE300000000000000;
  *(v56 + 264) = v58;
  *(v56 + 272) = @"Label";
  v59 = v98;
  v60 = @"AllowsMultipleValues";
  v61 = @"AutocapitalizationType";
  v62 = @"Class";
  v63 = @"DisableAutocorrection";
  v64 = @"Key";
  v65 = @"KeyboardType";
  v66 = @"Label";
  v67 = sub_1CA94C438();
  v97 = v68;
  v69 = sub_1CA94C438();
  v71 = v70;
  v98 = &v96;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v96 - v107;
  sub_1CA948D98();
  v73 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v96 - v106;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 280) = sub_1CA2F9F14(v67, v97, v69, v71, 0, 0, v72, v74);
  *(v56 + 304) = v103;
  *(v56 + 312) = @"TextContentType";
  *(v56 + 344) = MEMORY[0x1E69E6158];
  *(v56 + 320) = 5001813;
  *(v56 + 328) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v76 = @"TextContentType";
  sub_1CA94C1E8();
  v77 = sub_1CA2F864C();
  v78 = v100;
  v100[4] = v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 440) = v78;
  *(inited + 464) = v79;
  *(inited + 472) = @"ParameterSummary";
  v80 = @"ParameterSummary";
  v81 = sub_1CA94C438();
  v83 = v82;
  v84 = sub_1CA94C438();
  v86 = v85;
  v103 = &v96;
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v96 - v107;
  sub_1CA948D98();
  v88 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v96 - v106;
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v91 = sub_1CA2F9F14(v81, v83, v84, v86, 0, 0, v87, v89);
  v92 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v93 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 480) = v92;
  *(inited + 504) = v93;
  *(inited + 512) = @"RequiredResources";
  *(inited + 544) = v101;
  *(inited + 520) = &unk_1F4A0B078;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v94 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void static WFInterchangeAppDefinitionRegistry.register(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_1CA94C368();
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1CA658E94;
  v9[3] = &block_descriptor_36;
  v8 = _Block_copy(v9);

  [ObjCClassFromMetadata registerDefinitionForKey:v7 definition:v8];
  _Block_release(v8);
}

id sub_1CA658E94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  v4 = sub_1CA94C1A8();

  return v4;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA658F74(uint64_t a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  v7 = *v2;
  *(inited + 32) = (*(a2[5] + 24))(a2[2], a2[5]);
  *(inited + 40) = v8;
  swift_getAssociatedTypeWitness();
  v9 = a2[3];
  type metadata accessor for RowTemplateDynamicEnumerationParameter();
  v10 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  v17 = v3[1];
  v16 = v3[2];

  sub_1CA94C218();
  sub_1CA94C218();
  *(inited + 48) = sub_1CA6590DC(v10, v11, v12, v13, v15, v14, v17, v16);
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  return sub_1CA94C1E8();
}

uint64_t sub_1CA659168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA65918C, 0, 0);
}

uint64_t sub_1CA65918C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = **(v0 + 56);
  v4 = *(v1 + 40);
  *(v0 + 64) = v4;
  v5 = *(v4 + 24);
  v6 = *(v1 + 16);
  *(v0 + 72) = v6;
  v7 = v5(v6, v4);
  v9 = sub_1CA323E28(v7, v8);
  *(v0 + 80) = v9;

  if (v9)
  {
    v10 = *(v0 + 48);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v12 = *(v10 + 32);
    v13 = swift_task_alloc();
    *(v0 + 88) = v13;
    *v13 = v0;
    v13[1] = sub_1CA659364;
    v14 = *(v0 + 40);

    return sub_1CA443C9C(v9, AssociatedTypeWitness, v12, v14, AssociatedTypeWitness, v12);
  }

  else
  {
    v16 = *(v0 + 56);
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_1_50(*(v16 + 24));
    v22 = v18;
    v20 = *(v19 + 4);
    v21 = swift_task_alloc();
    *(v0 + 112) = v21;
    *v21 = v0;
    v21[1] = sub_1CA6594D0;

    return v22();
  }
}

uint64_t sub_1CA659364()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA659470()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();
  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_2_4();

  return v3();
}

uint64_t sub_1CA6594D0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  v4 = *(v3 + 112);
  *v2 = *v0;
  *(v1 + 120) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CA6595C4, 0, 0);
}

uint64_t sub_1CA6595C4()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v0[15];
  v1 = v0[8];
  v2 = v0[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1CA94C758();
  OUTLINED_FUNCTION_2_0();
  swift_getWitnessTable();
  sub_1CA94CAD8();
  v4 = v0[3];
  v0[16] = v4;

  if (v4)
  {
    v5 = *(v0[6] + 32);
    v6 = v4;
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_1CA659724;
    v8 = v0[5];

    return sub_1CA443C9C(v6, AssociatedTypeWitness, v5, v8, AssociatedTypeWitness, v5);
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v10(0);
  }
}

uint64_t sub_1CA659724()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 136);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  *(v5 + 144) = v0;

  if (!v0)
  {

    *(v5 + 152) = v3;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA659838()
{
  OUTLINED_FUNCTION_0();

  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_2_4();

  return v2();
}

uint64_t sub_1CA659898()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();
  v2 = *(v0 + 96);
  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA6598F4()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 128);

  v2 = *(v0 + 144);
  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA659954()
{
  OUTLINED_FUNCTION_14();
  *(v0 + 16) = v1;
  v3 = *v2;
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_10_33(v5);

  return sub_1CA659168(v6, v7, v8);
}

uint64_t sub_1CA6599EC()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;

    return MEMORY[0x1EEE6DFA0](sub_1CA659B24, 0, 0);
  }
}

uint64_t sub_1CA659B24()
{
  OUTLINED_FUNCTION_0();
  [*(v0 + 16) setEnumeration_];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA659B98()
{
  memcpy((v1 + 16), v0, 0x48uLL);
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_1CA659C58;

  return sub_1CA659954();
}

uint64_t sub_1CA659C58()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;

  OUTLINED_FUNCTION_5();

  return v5();
}

uint64_t sub_1CA659D3C()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v4 = *v3;
  v5 = v3[1];
  v6 = swift_task_alloc();
  v1[4] = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_10_33(v6);

  return sub_1CA659168(v7, v8, v9);
}

uint64_t sub_1CA659DD4(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v2;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  v5[5] = a1;

  if (v1 || !a1)
  {
    v11 = OUTLINED_FUNCTION_11_35();

    return v12(v11);
  }

  else
  {
    v14 = v5[3];
    v15 = *(v14 + 64);
    v19 = (*(v14 + 56) + **(v14 + 56));
    v16 = *(*(v14 + 56) + 4);
    v17 = swift_task_alloc();
    v5[6] = v17;
    *v17 = v9;
    v17[1] = sub_1CA659FB0;
    v18 = v5[2];

    return v19(a1, v18);
  }
}

uint64_t sub_1CA659FB0()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  *(v5 + 56) = v0;

  if (!v0)
  {
    *(v5 + 64) = v3 & 1;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA65A0C0()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_2_4();

  return v3();
}

uint64_t sub_1CA65A120()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_2_4();

  return v3(0);
}

uint64_t sub_1CA65A180()
{
  memcpy((v1 + 16), v0, 0x48uLL);
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_1CA5C3010;

  return sub_1CA659D3C();
}

id sub_1CA65A240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v12 = *MEMORY[0x1E69E7D40] & *v8;
  v13 = (v8 + qword_1EC447A50);
  *v13 = a1;
  v13[1] = a2;
  v14 = (v8 + qword_1EC447A58);
  *v14 = a3;
  v14[1] = a4;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  v16 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = a5;
  *(inited + 48) = a6;
  *(inited + 64) = v16;
  *(inited + 72) = @"Placeholder";

  v17 = @"Key";
  v18 = @"Placeholder";
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDB9F690;
  v20 = sub_1CA94C368();
  v21 = sub_1CA94C368();

  v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

  v23 = sub_1CA94C3A8();
  v25 = v24;

  *(inited + 80) = v23;
  *(inited + 88) = v25;
  *(inited + 104) = v16;
  *(inited + 112) = @"Label";
  *(inited + 120) = a7;
  *(inited + 128) = a8;
  *(inited + 144) = v16;
  *(inited + 152) = @"DisallowedVariableTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447B40, &unk_1CA9826B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1CA981310;
  *(v26 + 32) = @"Ask";
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456A8, &unk_1CA987A20);
  *(inited + 160) = v26;
  _s3__C3KeyVMa_0(0);
  sub_1CA2A7470();
  v27 = @"Label";
  v28 = @"DisallowedVariableTypes";
  v29 = @"Ask";
  sub_1CA94C1E8();
  v30 = sub_1CA2F864C();
  v31 = *(v12 + 80);
  v32 = *(v12 + 88);
  v38.receiver = v9;
  v38.super_class = type metadata accessor for RowTemplateDynamicEnumerationParameter();
  v33 = objc_msgSendSuper2(&v38, sel_initWithDefinition_, v30);

  v34 = v33;
  [v34 setDataSource_];

  return v34;
}

uint64_t sub_1CA65A590()
{
  sub_1CA65A568();

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_1CA65A5C4(uint64_t a1, void *a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v6 = WFVariableSubstitutableParameterStateDowncast<A, B>(_:to:)(a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *(v2 + qword_1EC447A58);
  v9 = *(v2 + qword_1EC447A58 + 8);
  v10 = v8();

  return v10;
}

id sub_1CA65A66C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1CA65A5C4(v6, v7);
  v10 = v9;

  if (v10)
  {
    v11 = sub_1CA94C368();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1CA65A714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_1CA94C858();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v5;
  v13[5] = a4;
  v13[6] = a5;
  v14 = v5;

  sub_1CA30C708();
}

uint64_t sub_1CA65A810(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v6[6] = *MEMORY[0x1E69E7D40] & *a4;
  return MEMORY[0x1EEE6DFA0](sub_1CA65A86C, 0, 0);
}

uint64_t sub_1CA65A86C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 24) + qword_1EC447A50;
  v2 = *(v1 + 8);
  OUTLINED_FUNCTION_1_50(*v1);
  v8 = v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1CA65A934;

  return v8();
}

uint64_t sub_1CA65A934()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  v4 = *(v3 + 56);
  *v2 = *v0;
  *(v1 + 64) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CA65AA28, 0, 0);
}

uint64_t sub_1CA65AA28()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v0[2] = v0[8];
  v4 = swift_task_alloc();
  *(v4 + 16) = *(v2 + 80);
  *(v4 + 24) = *(v2 + 88);
  v5 = sub_1CA94C758();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444F10, &qword_1CA98D960);
  OUTLINED_FUNCTION_2_0();
  WitnessTable = swift_getWitnessTable();
  sub_1CA3E4888(sub_1CA65AE74, v4, v5, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);

  v9 = objc_allocWithZone(MEMORY[0x1E696E918]);
  v10 = sub_1CA94C648();

  v11 = [v9 initWithItems_];

  v3(v11, 0);
  OUTLINED_FUNCTION_5();

  return v12();
}

uint64_t sub_1CA65ABA0(void *a1, int a2, void *a3, uint64_t a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  if (a4)
  {
    v9 = sub_1CA94C3A8();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = a3;
  v13 = a1;
  sub_1CA65A714(v12, v9, a4, sub_1CA3D7FF4, v11);
}

id sub_1CA65ACD0()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RowTemplateDynamicEnumerationParameter();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1CA65AD40(uint64_t a1)
{
  v2 = *(a1 + qword_1EC447A50 + 8);

  v3 = *(a1 + qword_1EC447A58 + 8);
}

uint64_t sub_1CA65ADAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CA2DF78C;

  return sub_1CA65A810(a1, v4, v5, v6, v7, v8);
}

id sub_1CA65AE74@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = WFVariableSubstitutableParameterStateUpcast<A, B>(_:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CA65AEAC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA65AEE8(uint64_t *a1, int a2)
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

uint64_t sub_1CA65AF28(uint64_t result, int a2, int a3)
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

id sub_1CA65AF90()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1CA25B3D0(0, &qword_1EC445FF0, off_1E836DD68);
  v1 = sub_1CA94C648();

  v2 = [v0 initWithValues_];

  return v2;
}

id sub_1CA65B04C()
{
  v386 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9DB5B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v403 = v12;
  v404 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v373 - v404;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v402 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v401 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v400 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v373 - v400;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v398 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v399 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v385 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  v396 = &v373;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v373 - v404;
  sub_1CA948D98();
  v34 = [v402 bundleURL];
  v397 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v373 - v400;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v36);
  *(v24 + 64) = v398;
  *(v24 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v399;
  v40 = sub_1CA6B3784();
  v41 = v397;
  v397[20] = v40;
  v41[23] = v39;
  v41[24] = @"IconColor";
  v41[25] = 2036429383;
  v41[26] = 0xE400000000000000;
  v42 = MEMORY[0x1E69E6158];
  v41[28] = MEMORY[0x1E69E6158];
  v41[29] = @"IconSymbol";
  v41[30] = 0x6C61757165;
  v41[31] = 0xE500000000000000;
  v41[33] = v42;
  v41[34] = @"Input";
  v43 = v41;
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v44 = swift_initStackObject();
  v394 = xmmword_1CA981350;
  *(v44 + 16) = xmmword_1CA981350;
  *(v44 + 32) = 0x656C7069746C754DLL;
  *(v44 + 40) = 0xE800000000000000;
  v45 = MEMORY[0x1E69E6370];
  *(v44 + 48) = 1;
  *(v44 + 72) = v45;
  strcpy((v44 + 80), "ParameterKey");
  *(v44 + 93) = 0;
  *(v44 + 94) = -5120;
  *(v44 + 96) = 0x7475706E494657;
  *(v44 + 104) = 0xE700000000000000;
  *(v44 + 120) = v42;
  *(v44 + 128) = 0x6465726975716552;
  *(v44 + 136) = 0xE800000000000000;
  *(v44 + 144) = 1;
  *(v44 + 168) = v45;
  *(v44 + 176) = 0x7365707954;
  v46 = v45;
  *(v44 + 184) = 0xE500000000000000;
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v44 + 216) = v399;
  *(v44 + 192) = &unk_1F4A0B0E8;
  v47 = @"IconColor";
  v48 = @"IconSymbol";
  v49 = @"Input";
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v396 = v51;
  v43[35] = v50;
  v43[38] = v51;
  v43[39] = @"LocallyProcessesData";
  *(v43 + 320) = 1;
  v43[43] = v46;
  v43[44] = @"Name";
  v52 = @"LocallyProcessesData";
  v53 = @"Name";
  v54 = sub_1CA94C438();
  v392 = v55;
  v56 = sub_1CA94C438();
  v58 = v57;
  v393 = &v373;
  MEMORY[0x1EEE9AC00](v56);
  v59 = v404;
  sub_1CA948D98();
  v60 = [v402 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v373 - v400;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v63 = sub_1CA2F9F14(v54, v392, v56, v58, 0, 0, &v373 - v59, v61);
  v64 = v397;
  v397[45] = v63;
  v64[48] = v398;
  v64[49] = @"Output";
  v65 = swift_allocObject();
  *(v65 + 16) = v394;
  *(v65 + 32) = 0x75736F6C63736944;
  *(v65 + 40) = 0xEF6C6576654C6572;
  *(v65 + 48) = 0x63696C627550;
  *(v65 + 56) = 0xE600000000000000;
  *(v65 + 72) = MEMORY[0x1E69E6158];
  *(v65 + 80) = 0x656C7069746C754DLL;
  *(v65 + 88) = 0xE800000000000000;
  *(v65 + 96) = 1;
  *(v65 + 120) = MEMORY[0x1E69E6370];
  *(v65 + 128) = 0x614E74757074754FLL;
  *(v65 + 136) = 0xEA0000000000656DLL;
  v66 = @"Output";
  v67 = sub_1CA94C438();
  *&v394 = v68;
  v69 = sub_1CA94C438();
  v71 = v70;
  v395 = &v373;
  MEMORY[0x1EEE9AC00](v69);
  sub_1CA948D98();
  v72 = [v402 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = v400;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 144) = sub_1CA2F9F14(v67, v394, v69, v71, 0, 0, &v373 - v59, &v373 - v73);
  *(v65 + 168) = v398;
  *(v65 + 176) = 0x7365707954;
  *(v65 + 216) = v399;
  *(v65 + 184) = 0xE500000000000000;
  *(v65 + 192) = &unk_1F4A0B118;
  v75 = MEMORY[0x1E69E6158];
  v76 = sub_1CA94C1E8();
  v77 = v397;
  v397[50] = v76;
  v77[53] = v396;
  v77[54] = @"Parameters";
  *&v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v396 = swift_allocObject();
  *(v396 + 16) = xmmword_1CA981570;
  v395 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v78 = swift_allocObject();
  v387 = xmmword_1CA981370;
  *(v78 + 16) = xmmword_1CA981370;
  *(v78 + 32) = @"AllowsDecimalNumbers";
  *(v78 + 40) = 1;
  *(v78 + 64) = MEMORY[0x1E69E6370];
  *(v78 + 72) = @"Class";
  v384 = 0x80000001CA99C180;
  *(v78 + 80) = 0xD000000000000016;
  *(v78 + 88) = 0x80000001CA99C180;
  *(v78 + 104) = v75;
  *(v78 + 112) = @"Key";
  *(v78 + 120) = 0x7475706E494657;
  *(v78 + 128) = 0xE700000000000000;
  *(v78 + 144) = v75;
  *(v78 + 152) = @"Label";
  v79 = @"Class";
  v80 = @"Key";
  v81 = @"Label";
  v82 = v79;
  v83 = v80;
  v84 = v81;
  v390 = v82;
  v388 = v83;
  v383 = v84;
  v85 = @"Parameters";
  v86 = @"AllowsDecimalNumbers";
  v391 = sub_1CA94C438();
  v389 = v87;
  v88 = sub_1CA94C438();
  v90 = v89;
  v392 = &v373;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v373 - v404;
  sub_1CA948D98();
  v92 = v402;
  v93 = [v402 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 160) = sub_1CA2F9F14(v391, v389, v88, v90, 0, 0, v91, &v373 - v73);
  v95 = v398;
  *(v78 + 184) = v398;
  *(v78 + 192) = @"Placeholder";
  v382 = @"Placeholder";
  v391 = sub_1CA94C438();
  v389 = v96;
  v97 = sub_1CA94C438();
  v381 = v98;
  v392 = &v373;
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v373 - v404;
  sub_1CA948D98();
  v100 = [v92 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v391, v389, v97, v381, 0, 0, v99, &v373 - v73);
  *(v78 + 224) = v95;
  *(v78 + 200) = v102;
  _s3__C3KeyVMa_0(0);
  v392 = v103;
  v391 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v396 + 32) = sub_1CA2F864C();
  v104 = swift_allocObject();
  v379 = v104;
  *(v104 + 16) = xmmword_1CA981400;
  v381 = 0x80000001CA99C4A0;
  v105 = v390;
  *(v104 + 32) = v390;
  *(v104 + 40) = 0xD000000000000016;
  *(v104 + 48) = 0x80000001CA99C4A0;
  v106 = MEMORY[0x1E69E6158];
  *(v104 + 64) = MEMORY[0x1E69E6158];
  *(v104 + 72) = @"DefaultValue";
  *(v104 + 80) = 0x616C502073656E4FLL;
  *(v104 + 88) = 0xEA00000000006563;
  *(v104 + 104) = v106;
  *(v104 + 112) = @"Items";
  *(v104 + 120) = &unk_1F4A0B148;
  *(v104 + 144) = v399;
  *(v104 + 152) = @"ItemDisplayNames";
  v399 = swift_allocObject();
  *&v399->data = xmmword_1CA9908E0;
  v107 = @"DefaultValue";
  v108 = @"Items";
  v390 = v105;
  v389 = v107;
  v380 = v108;
  v109 = @"ItemDisplayNames";
  v110 = sub_1CA94C438();
  v377 = v111;
  v378 = v110;
  v112 = sub_1CA94C438();
  v376 = v113;
  MEMORY[0x1EEE9AC00](v112);
  v114 = &v373 - v404;
  sub_1CA948D98();
  v115 = v402;
  v116 = [v402 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v373 - v400;
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119 = sub_1CA2F9F14(v378, v377, v112, v376, 0, 0, v114, v117);
  v120 = v399;
  v399[1].isa = v119;
  v121 = sub_1CA94C438();
  v376 = v122;
  v377 = v121;
  v123 = sub_1CA94C438();
  v375 = v124;
  v378 = &v373;
  MEMORY[0x1EEE9AC00](v123);
  v125 = v404;
  sub_1CA948D98();
  v126 = [v115 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = v400;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v120[1].info = sub_1CA2F9F14(v377, v376, v123, v375, 0, 0, &v373 - v125, &v373 - v127);
  v129 = sub_1CA94C438();
  v376 = v130;
  v377 = v129;
  v131 = sub_1CA94C438();
  v375 = v132;
  v378 = &v373;
  MEMORY[0x1EEE9AC00](v131);
  v133 = &v373 - v125;
  sub_1CA948D98();
  v134 = v402;
  v135 = [v402 bundleURL];
  MEMORY[0x1EEE9AC00](v135);
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v120[1].data = sub_1CA2F9F14(v377, v376, v131, v375, 0, 0, v133, &v373 - v127);
  v137 = sub_1CA94C438();
  v376 = v138;
  v377 = v137;
  v139 = sub_1CA94C438();
  v375 = v140;
  v378 = &v373;
  MEMORY[0x1EEE9AC00](v139);
  v141 = v404;
  sub_1CA948D98();
  v142 = [v134 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v373 - v400;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v120[1].length = sub_1CA2F9F14(v377, v376, v139, v375, 0, 0, &v373 - v141, v143);
  v145 = sub_1CA94C438();
  v376 = v146;
  v377 = v145;
  v147 = sub_1CA94C438();
  v149 = v148;
  v378 = &v373;
  MEMORY[0x1EEE9AC00](v147);
  v150 = &v373 - v141;
  sub_1CA948D98();
  v151 = v402;
  v152 = [v402 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  v153 = v400;
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v155 = sub_1CA2F9F14(v377, v376, v147, v149, 0, 0, v150, &v373 - v153);
  v156 = v399;
  v399[2].isa = v155;
  v157 = sub_1CA94C438();
  v376 = v158;
  v377 = v157;
  v159 = sub_1CA94C438();
  v375 = v160;
  v378 = &v373;
  MEMORY[0x1EEE9AC00](v159);
  v161 = &v373 - v404;
  sub_1CA948D98();
  v162 = [v151 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  sub_1CA948B68();

  v163 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v156[2].info = sub_1CA2F9F14(v377, v376, v159, v375, 0, 0, v161, &v373 - v153);
  v164 = sub_1CA94C438();
  v376 = v165;
  v377 = v164;
  v166 = sub_1CA94C438();
  v375 = v167;
  v378 = &v373;
  MEMORY[0x1EEE9AC00](v166);
  v168 = v404;
  sub_1CA948D98();
  v169 = v402;
  v170 = [v402 bundleURL];
  MEMORY[0x1EEE9AC00](v170);
  v171 = v400;
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v173 = sub_1CA2F9F14(v377, v376, v166, v375, 0, 0, &v373 - v168, &v373 - v171);
  v174 = v399;
  v399[2].data = v173;
  v175 = sub_1CA94C438();
  v376 = v176;
  v377 = v175;
  v177 = sub_1CA94C438();
  v375 = v178;
  v378 = &v373;
  MEMORY[0x1EEE9AC00](v177);
  sub_1CA948D98();
  v179 = [v169 bundleURL];
  MEMORY[0x1EEE9AC00](v179);
  sub_1CA948B68();

  v180 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v174[2].length = sub_1CA2F9F14(v377, v376, v177, v375, 0, 0, &v373 - v168, &v373 - v171);
  v181 = sub_1CA94C438();
  v376 = v182;
  v377 = v181;
  v183 = sub_1CA94C438();
  v375 = v184;
  v378 = &v373;
  MEMORY[0x1EEE9AC00](v183);
  v185 = v404;
  sub_1CA948D98();
  v186 = v402;
  v187 = [v402 bundleURL];
  MEMORY[0x1EEE9AC00](v187);
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v189 = sub_1CA2F9F14(v377, v376, v183, v375, 0, 0, &v373 - v185, &v373 - v171);
  v399[3].isa = v189;
  v190 = sub_1CA94C438();
  v376 = v191;
  v377 = v190;
  v192 = sub_1CA94C438();
  v375 = v193;
  v378 = &v373;
  MEMORY[0x1EEE9AC00](v192);
  sub_1CA948D98();
  v194 = [v186 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  sub_1CA948B68();

  v195 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v196 = sub_1CA2F9F14(v377, v376, v192, v375, 0, 0, &v373 - v185, &v373 - v171);
  v197 = v399;
  v399[3].info = v196;
  v198 = sub_1CA94C438();
  v376 = v199;
  v377 = v198;
  v200 = sub_1CA94C438();
  v375 = v201;
  v378 = &v373;
  MEMORY[0x1EEE9AC00](v200);
  v202 = v404;
  sub_1CA948D98();
  v203 = [v186 bundleURL];
  v374 = &v373;
  MEMORY[0x1EEE9AC00](v203);
  sub_1CA948B68();

  v204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v197[3].data = sub_1CA2F9F14(v377, v376, v200, v375, 0, 0, &v373 - v202, &v373 - v171);
  v205 = sub_1CA94C438();
  v376 = v206;
  v377 = v205;
  v207 = sub_1CA94C438();
  v375 = v208;
  v378 = &v373;
  MEMORY[0x1EEE9AC00](v207);
  sub_1CA948D98();
  v209 = [v186 bundleURL];
  MEMORY[0x1EEE9AC00](v209);
  sub_1CA948B68();

  v210 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v211 = sub_1CA2F9F14(v377, v376, v207, v375, 0, 0, &v373 - v202, &v373 - v171);
  v212 = v399;
  v399[3].length = v211;
  v213 = sub_1CA94C438();
  v376 = v214;
  v377 = v213;
  v215 = sub_1CA94C438();
  v375 = v216;
  v378 = &v373;
  MEMORY[0x1EEE9AC00](v215);
  v217 = v404;
  sub_1CA948D98();
  v218 = v402;
  v219 = [v402 bundleURL];
  v374 = &v373;
  MEMORY[0x1EEE9AC00](v219);
  v220 = v400;
  sub_1CA948B68();

  v221 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v212[4].isa = sub_1CA2F9F14(v377, v376, v215, v375, 0, 0, &v373 - v217, &v373 - v220);
  v222 = sub_1CA94C438();
  v376 = v223;
  v377 = v222;
  v375 = sub_1CA94C438();
  v225 = v224;
  v378 = &v373;
  MEMORY[0x1EEE9AC00](v375);
  sub_1CA948D98();
  v226 = [v218 bundleURL];
  MEMORY[0x1EEE9AC00](v226);
  sub_1CA948B68();

  v227 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v228 = sub_1CA2F9F14(v377, v376, v375, v225, 0, 0, &v373 - v217, &v373 - v220);
  v399[4].info = v228;
  v229 = sub_1CA94C438();
  v376 = v230;
  v377 = v229;
  v231 = sub_1CA94C438();
  v375 = v232;
  v378 = &v373;
  MEMORY[0x1EEE9AC00](v231);
  sub_1CA948D98();
  v233 = v402;
  v234 = [v402 bundleURL];
  MEMORY[0x1EEE9AC00](v234);
  v235 = v400;
  sub_1CA948B68();

  v236 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v237 = sub_1CA2F9F14(v377, v376, v231, v375, 0, 0, &v373 - v217, &v373 - v235);
  v238 = v399;
  v399[4].data = v237;
  v239 = sub_1CA94C438();
  v376 = v240;
  v377 = v239;
  v241 = sub_1CA94C438();
  v375 = v242;
  v378 = &v373;
  MEMORY[0x1EEE9AC00](v241);
  v243 = v404;
  sub_1CA948D98();
  v244 = [v233 bundleURL];
  v374 = &v373;
  MEMORY[0x1EEE9AC00](v244);
  sub_1CA948B68();

  v245 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v238[4].length = sub_1CA2F9F14(v377, v376, v241, v375, 0, 0, &v373 - v243, &v373 - v235);
  v246 = sub_1CA94C438();
  v376 = v247;
  v377 = v246;
  v248 = sub_1CA94C438();
  v250 = v249;
  v378 = &v373;
  MEMORY[0x1EEE9AC00](v248);
  sub_1CA948D98();
  v251 = [v402 bundleURL];
  MEMORY[0x1EEE9AC00](v251);
  sub_1CA948B68();

  v252 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v253 = sub_1CA2F9F14(v377, v376, v248, v250, 0, 0, &v373 - v243, &v373 - v235);
  v254 = v399;
  v399[5].isa = v253;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v378 = v255;
  v256 = v379;
  v379[20] = v254;
  v257 = v388;
  v256[23] = v255;
  v256[24] = v257;
  v256[25] = 0x54646E756F524657;
  v256[26] = 0xE90000000000006FLL;
  v258 = v383;
  v256[28] = MEMORY[0x1E69E6158];
  v256[29] = v258;
  v388 = v257;
  v399 = v258;
  v259 = sub_1CA94C438();
  v376 = v260;
  v377 = v259;
  v261 = sub_1CA94C438();
  v375 = v262;
  v383 = &v373;
  MEMORY[0x1EEE9AC00](v261);
  sub_1CA948D98();
  v263 = v402;
  v264 = [v402 bundleURL];
  MEMORY[0x1EEE9AC00](v264);
  v265 = v400;
  sub_1CA948B68();

  v266 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v256[30] = sub_1CA2F9F14(v377, v376, v261, v375, 0, 0, &v373 - v243, &v373 - v265);
  v267 = v398;
  v268 = v382;
  v256[33] = v398;
  v256[34] = v268;
  v382 = sub_1CA94C438();
  v377 = v269;
  v270 = sub_1CA94C438();
  v376 = v271;
  v383 = &v373;
  MEMORY[0x1EEE9AC00](v270);
  v272 = &v373 - v404;
  sub_1CA948D98();
  v273 = [v263 bundleURL];
  MEMORY[0x1EEE9AC00](v273);
  sub_1CA948B68();

  v274 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v275 = sub_1CA2F9F14(v382, v377, v270, v376, 0, 0, v272, &v373 - v265);
  v256[38] = v267;
  v256[35] = v275;
  sub_1CA94C1E8();
  *(v396 + 40) = sub_1CA2F864C();
  v276 = swift_allocObject();
  *(v276 + 16) = v387;
  *(v276 + 32) = v390;
  *(v276 + 40) = 0xD000000000000016;
  *(v276 + 48) = v381;
  v277 = MEMORY[0x1E69E6158];
  v278 = v389;
  *(v276 + 64) = MEMORY[0x1E69E6158];
  *(v276 + 72) = v278;
  *(v276 + 80) = 0x6C616D726F4ELL;
  *(v276 + 88) = 0xE600000000000000;
  v279 = v380;
  *(v276 + 104) = v277;
  *(v276 + 112) = v279;
  *&v387 = swift_allocObject();
  *(v387 + 16) = xmmword_1CA981470;
  v280 = sub_1CA94C438();
  v381 = v281;
  v382 = v280;
  v282 = sub_1CA94C438();
  v380 = v283;
  v383 = &v373;
  MEMORY[0x1EEE9AC00](v282);
  v284 = &v373 - v404;
  sub_1CA948D98();
  v285 = [v263 bundleURL];
  MEMORY[0x1EEE9AC00](v285);
  v286 = v400;
  sub_1CA948B68();

  v287 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v288 = sub_1CA2F9F14(v382, v381, v282, v380, 0, 0, v284, &v373 - v286);
  v289 = v387;
  *(v387 + 32) = v288;
  v290 = sub_1CA94C438();
  v381 = v291;
  v382 = v290;
  v292 = sub_1CA94C438();
  v380 = v293;
  v383 = &v373;
  MEMORY[0x1EEE9AC00](v292);
  v294 = v404;
  sub_1CA948D98();
  v295 = [v402 bundleURL];
  v379 = &v373;
  MEMORY[0x1EEE9AC00](v295);
  sub_1CA948B68();

  v296 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v289 + 40) = sub_1CA2F9F14(v382, v381, v292, v380, 0, 0, &v373 - v294, &v373 - v286);
  v297 = sub_1CA94C438();
  v381 = v298;
  v382 = v297;
  v299 = sub_1CA94C438();
  v380 = v300;
  v383 = &v373;
  MEMORY[0x1EEE9AC00](v299);
  v301 = &v373 - v294;
  sub_1CA948D98();
  v302 = v402;
  v303 = [v402 bundleURL];
  v379 = &v373;
  MEMORY[0x1EEE9AC00](v303);
  v304 = v400;
  sub_1CA948B68();

  v305 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v306 = sub_1CA2F9F14(v382, v381, v299, v380, 0, 0, v301, &v373 - v304);
  v307 = v387;
  *(v387 + 48) = v306;
  *(v276 + 120) = v307;
  v308 = v388;
  *(v276 + 144) = v378;
  *(v276 + 152) = v308;
  *(v276 + 160) = 0x4D646E756F524657;
  *(v276 + 168) = 0xEB0000000065646FLL;
  v309 = v399;
  *(v276 + 184) = MEMORY[0x1E69E6158];
  *(v276 + 192) = v309;
  v310 = sub_1CA94C438();
  v382 = v311;
  v383 = v310;
  v312 = sub_1CA94C438();
  v381 = v313;
  *&v387 = &v373;
  MEMORY[0x1EEE9AC00](v312);
  v314 = &v373 - v404;
  sub_1CA948D98();
  v315 = [v302 bundleURL];
  MEMORY[0x1EEE9AC00](v315);
  sub_1CA948B68();

  v316 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v317 = sub_1CA2F9F14(v383, v382, v312, v381, 0, 0, v314, &v373 - v304);
  *(v276 + 224) = v398;
  *(v276 + 200) = v317;
  sub_1CA94C1E8();
  *(v396 + 48) = sub_1CA2F864C();
  v318 = swift_allocObject();
  *(v318 + 16) = xmmword_1CA981380;
  *(v318 + 32) = v390;
  *(v318 + 40) = 0xD000000000000016;
  *(v318 + 48) = v384;
  v319 = MEMORY[0x1E69E6158];
  v320 = v389;
  *(v318 + 64) = MEMORY[0x1E69E6158];
  *(v318 + 72) = v320;
  v321 = MEMORY[0x1E69E6530];
  *(v318 + 80) = 0;
  v322 = v388;
  *(v318 + 104) = v321;
  *(v318 + 112) = v322;
  *(v318 + 120) = 0x6568546F546E6554;
  *(v318 + 128) = 0xEF664F7265776F50;
  v323 = v399;
  *(v318 + 144) = v319;
  *(v318 + 152) = v323;
  v324 = sub_1CA94C438();
  v326 = v325;
  v327 = sub_1CA94C438();
  v329 = v328;
  v399 = &v373;
  MEMORY[0x1EEE9AC00](v327);
  v330 = &v373 - v404;
  sub_1CA948D98();
  v331 = [v402 bundleURL];
  MEMORY[0x1EEE9AC00](v331);
  v332 = &v373 - v400;
  sub_1CA948B68();

  v333 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v318 + 160) = sub_1CA2F9F14(v324, v326, v327, v329, 0, 0, v330, v332);
  *(v318 + 184) = v398;
  *(v318 + 192) = @"MinimumValue";
  *(v318 + 200) = 0;
  *(v318 + 224) = MEMORY[0x1E69E6530];
  *(v318 + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v334 = swift_allocObject();
  *(v334 + 16) = v385;
  v335 = @"MinimumValue";
  v336 = @"RequiredResources";
  *(v334 + 32) = sub_1CA94C1E8();
  *(v318 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v318 + 240) = v334;
  sub_1CA94C1E8();
  v337 = sub_1CA2F864C();
  v338 = v396;
  *(v396 + 56) = v337;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v340 = v397;
  v397[55] = v338;
  v340[58] = v339;
  v340[59] = @"ParameterSummary";
  v398 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v399 = swift_allocObject();
  *&v399->data = xmmword_1CA981360;
  v396 = "Ten to the Power of";
  v341 = @"ParameterSummary";
  v342 = sub_1CA94C438();
  v344 = v343;
  v345 = sub_1CA94C438();
  v347 = v346;
  v395 = &v373;
  MEMORY[0x1EEE9AC00](v345);
  v348 = &v373 - v404;
  sub_1CA948D98();
  v349 = [v402 bundleURL];
  MEMORY[0x1EEE9AC00](v349);
  v350 = &v373 - v400;
  sub_1CA948B68();

  v351 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v352 = sub_1CA2F9F14(v342, v344, v345, v347, 0, 0, v348, v350);
  v353 = objc_allocWithZone(WFActionParameterSummaryValue);
  v354 = sub_1CA65DD78(0xD00000000000001DLL, v396 | 0x8000000000000000, v352);
  v399[1].isa = v354;
  v396 = " to ${WFRoundTo}";
  v355 = sub_1CA94C438();
  v357 = v356;
  v358 = sub_1CA94C438();
  v360 = v359;
  v395 = &v373;
  MEMORY[0x1EEE9AC00](v358);
  v361 = &v373 - v404;
  sub_1CA948D98();
  v362 = [v402 bundleURL];
  MEMORY[0x1EEE9AC00](v362);
  v363 = &v373 - v400;
  sub_1CA948B68();

  v364 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v365 = sub_1CA2F9F14(v355, v357, v358, v360, 0, 0, v361, v363);
  v366 = objc_allocWithZone(WFActionParameterSummaryValue);
  v367 = sub_1CA65DD78(0xD000000000000033, v396 | 0x8000000000000000, v365);
  v368 = v398;
  v399[1].info = v367;
  v369 = sub_1CA65AF90();
  v370 = v397;
  v397[60] = v369;
  v370[63] = v368;
  v370[64] = @"ResidentCompatible";
  v370[68] = MEMORY[0x1E69E6370];
  *(v370 + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v371 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA65DD78(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CA94C368();

  v6 = [v3 initWithKey:v5 summaryString:a3];

  return v6;
}

id sub_1CA65DE10()
{
  v0 = sub_1CA949D18();
  v308 = *(v0 - 8);
  v309 = v0;
  v1 = *(v308 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v307 = &v301 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x4947656B614D4657;
  *(inited + 48) = 0xEF6E6F6974634146;
  *(inited + 64) = v4;
  *(inited + 72) = @"ActionKeywords";
  v5 = @"ActionClass";
  v6 = @"ActionKeywords";
  v337 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v341 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v342 = v14;
  v15 = &v301 - v341;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v339 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v338 = v18;
  v340 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v301 - v340;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v337, v8, v9, v11, 0, 0, v15, v19);
  v22 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v337 = v22;
  *(inited + 80) = v21;
  *(inited + 104) = v22;
  *(inited + 112) = @"Description";
  v336 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionResult";
  v24 = @"Description";
  v25 = @"DescriptionResult";
  v26 = sub_1CA94C438();
  v333 = v27;
  v334 = v26;
  v28 = sub_1CA94C438();
  v30 = v29;
  v335 = &v301;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v301 - v341;
  sub_1CA948D98();
  v32 = v339;
  v33 = [v339 bundleURL];
  v331 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v340;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v334, v333, v28, v30, 0, 0, v31, &v301 - v35);
  v37 = v337;
  *(v23 + 64) = v337;
  *(v23 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v39 = sub_1CA94C438();
  v333 = v40;
  v334 = v39;
  v41 = sub_1CA94C438();
  v43 = v42;
  v335 = &v301;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v301 - v341;
  sub_1CA948D98();
  v45 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v47 = sub_1CA2F9F14(v334, v333, v41, v43, 0, 0, v44, &v301 - v35);
  *(v23 + 104) = v37;
  *(v23 + 80) = v47;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v48 = v336;
  v49 = sub_1CA6B3784();
  v50 = v331;
  v331[15] = v49;
  v50[18] = v48;
  v50[19] = @"IconColor";
  v50[20] = 0x656C70727550;
  v50[21] = 0xE600000000000000;
  v51 = MEMORY[0x1E69E6158];
  v50[23] = MEMORY[0x1E69E6158];
  v50[24] = @"IconSymbol";
  v50[25] = 0xD000000000000027;
  v50[26] = 0x80000001CA99BB90;
  v50[28] = v51;
  v50[29] = @"Input";
  v52 = v50;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v53 = swift_initStackObject();
  v329 = xmmword_1CA981350;
  *(v53 + 16) = xmmword_1CA981350;
  *(v53 + 32) = 0x656C7069746C754DLL;
  *(v53 + 40) = 0xE800000000000000;
  v54 = MEMORY[0x1E69E6370];
  *(v53 + 48) = 1;
  *(v53 + 72) = v54;
  strcpy((v53 + 80), "ParameterKey");
  *(v53 + 93) = 0;
  *(v53 + 94) = -5120;
  *(v53 + 96) = 0x7475706E494657;
  *(v53 + 104) = 0xE700000000000000;
  *(v53 + 120) = v51;
  *(v53 + 128) = 0x6465726975716552;
  *(v53 + 136) = 0xE800000000000000;
  *(v53 + 144) = 1;
  *(v53 + 168) = v54;
  *(v53 + 176) = 0x7365707954;
  v55 = v54;
  *(v53 + 184) = 0xE500000000000000;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v53 + 216) = v327;
  *(v53 + 192) = &unk_1F4A0B2F8;
  v56 = @"IconColor";
  v57 = @"IconSymbol";
  v58 = @"Input";
  v59 = sub_1CA94C1E8();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v336 = v60;
  v52[30] = v59;
  v52[33] = v60;
  v52[34] = @"InputPassthrough";
  *(v52 + 280) = 0;
  v52[38] = v55;
  v52[39] = @"Name";
  v61 = @"InputPassthrough";
  v62 = @"Name";
  v63 = sub_1CA94C438();
  v333 = v64;
  v334 = v63;
  v65 = sub_1CA94C438();
  v67 = v66;
  v335 = &v301;
  MEMORY[0x1EEE9AC00](v65);
  v68 = v341;
  sub_1CA948D98();
  v69 = [v339 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v301 - v340;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v72 = sub_1CA2F9F14(v334, v333, v65, v67, 0, 0, &v301 - v68, v70);
  v73 = v331;
  v331[40] = v72;
  v74 = v337;
  v73[43] = v337;
  v73[44] = @"Output";
  v75 = swift_allocObject();
  *(v75 + 16) = v329;
  *(v75 + 32) = 0x75736F6C63736944;
  *(v75 + 40) = 0xEF6C6576654C6572;
  *(v75 + 48) = 0x63696C627550;
  *(v75 + 56) = 0xE600000000000000;
  *(v75 + 72) = MEMORY[0x1E69E6158];
  *(v75 + 80) = 0x656C7069746C754DLL;
  *(v75 + 88) = 0xE800000000000000;
  *(v75 + 96) = 0;
  *(v75 + 120) = MEMORY[0x1E69E6370];
  *(v75 + 128) = 0x614E74757074754FLL;
  *(v75 + 136) = 0xEA0000000000656DLL;
  v76 = @"Output";
  v77 = sub_1CA94C438();
  v333 = v78;
  v334 = v77;
  v79 = sub_1CA94C438();
  v332 = v80;
  v335 = &v301;
  MEMORY[0x1EEE9AC00](v79);
  sub_1CA948D98();
  v81 = [v339 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v301 - v340;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v75 + 144) = sub_1CA2F9F14(v334, v333, v79, v332, 0, 0, &v301 - v68, v82);
  *(v75 + 168) = v74;
  *(v75 + 176) = 0x7365707954;
  *(v75 + 216) = v327;
  *(v75 + 184) = 0xE500000000000000;
  *(v75 + 192) = &unk_1F4A0B338;
  v84 = MEMORY[0x1E69E6158];
  v85 = sub_1CA94C1E8();
  v86 = v331;
  v331[45] = v85;
  v86[48] = v336;
  v86[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v336 = swift_allocObject();
  *(v336 + 16) = xmmword_1CA98B2D0;
  v335 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1CA981400;
  *(v87 + 32) = @"AllowsDecimalNumbers";
  *(v87 + 40) = 1;
  *(v87 + 64) = MEMORY[0x1E69E6370];
  *(v87 + 72) = @"Class";
  v325 = 0xD000000000000016;
  v326 = 0x80000001CA99C180;
  *(v87 + 80) = 0xD000000000000016;
  *(v87 + 88) = 0x80000001CA99C180;
  *(v87 + 104) = v84;
  *(v87 + 112) = @"DefaultValue";
  v88 = MEMORY[0x1E69E63B0];
  *(v87 + 120) = 0x3FC999999999999ALL;
  *(v87 + 144) = v88;
  *(v87 + 152) = @"Key";
  *&v328 = 0xD000000000000018;
  *(v87 + 160) = 0xD000000000000018;
  *(v87 + 168) = 0x80000001CA9DBBE0;
  *(v87 + 184) = v84;
  *(v87 + 192) = @"Label";
  v89 = @"Class";
  v90 = @"DefaultValue";
  v91 = @"Key";
  v92 = @"Label";
  v93 = v89;
  v94 = v90;
  v95 = v91;
  v96 = v92;
  *&v322 = v93;
  v316 = v94;
  v321 = v95;
  v323 = v96;
  v97 = @"Parameters";
  v98 = @"AllowsDecimalNumbers";
  v332 = sub_1CA94C438();
  v324 = v99;
  v100 = sub_1CA94C438();
  v320 = v101;
  v333 = &v301;
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v301 - v341;
  sub_1CA948D98();
  v103 = v339;
  v104 = [v339 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  v105 = v340;
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v87 + 200) = sub_1CA2F9F14(v332, v324, v100, v320, 0, 0, v102, &v301 - v105);
  v107 = v337;
  *(v87 + 224) = v337;
  *(v87 + 232) = @"Placeholder";
  v311 = @"Placeholder";
  v332 = sub_1CA94C438();
  v324 = v108;
  v320 = sub_1CA94C438();
  v110 = v109;
  v333 = &v301;
  MEMORY[0x1EEE9AC00](v320);
  v111 = &v301 - v341;
  sub_1CA948D98();
  v112 = [v103 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v87 + 240) = sub_1CA2F9F14(v332, v324, v320, v110, 0, 0, v111, &v301 - v105);
  *(v87 + 264) = v107;
  *(v87 + 272) = @"TextAlignment";
  v114 = MEMORY[0x1E69E6158];
  *(v87 + 304) = MEMORY[0x1E69E6158];
  *(v87 + 280) = 0x7468676952;
  *(v87 + 288) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v333 = v115;
  v332 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v324 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v336 + 32) = sub_1CA2F864C();
  v116 = swift_allocObject();
  *(v116 + 16) = v329;
  v118 = v321;
  v117 = v322;
  *(v116 + 32) = v322;
  *(v116 + 40) = 0xD000000000000011;
  v313 = 0x80000001CA99E620;
  v314 = 0xD000000000000011;
  *(v116 + 48) = 0x80000001CA99E620;
  v119 = v316;
  *(v116 + 64) = v114;
  *(v116 + 72) = v119;
  *(v116 + 80) = 1;
  *(v116 + 104) = MEMORY[0x1E69E6370];
  *(v116 + 112) = v118;
  v319 = 0xD00000000000001ALL;
  v320 = 0x80000001CA9DBC80;
  *(v116 + 120) = 0xD00000000000001ALL;
  *(v116 + 128) = 0x80000001CA9DBC80;
  v120 = v323;
  *(v116 + 144) = v114;
  *(v116 + 152) = v120;
  v318 = v117;
  v317 = v118;
  v312 = v120;
  v121 = sub_1CA94C438();
  v123 = v122;
  v124 = sub_1CA94C438();
  v126 = v125;
  v323 = &v301;
  MEMORY[0x1EEE9AC00](v124);
  v127 = &v301 - v341;
  sub_1CA948D98();
  v128 = [v339 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  v129 = &v301 - v340;
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v131 = sub_1CA2F9F14(v121, v123, v124, v126, 0, 0, v127, v129);
  *(v116 + 184) = v337;
  *(v116 + 160) = v131;
  sub_1CA94C1E8();
  *(v336 + 40) = sub_1CA2F864C();
  v132 = swift_allocObject();
  v315 = xmmword_1CA981380;
  *(v132 + 16) = xmmword_1CA981380;
  v134 = v317;
  v133 = v318;
  *(v132 + 32) = v318;
  *(v132 + 40) = 0xD000000000000012;
  *(v132 + 48) = 0x80000001CA99B980;
  v135 = MEMORY[0x1E69E6158];
  *(v132 + 64) = MEMORY[0x1E69E6158];
  *(v132 + 72) = v134;
  *(v132 + 80) = v328;
  *(v132 + 88) = 0x80000001CA9DBCE0;
  *(v132 + 104) = v135;
  *(v132 + 112) = @"RequiredResources";
  v136 = v135;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v137 = swift_allocObject();
  v328 = xmmword_1CA981310;
  *(v137 + 16) = xmmword_1CA981310;
  v138 = swift_allocObject();
  v322 = xmmword_1CA9813C0;
  *(v138 + 16) = xmmword_1CA9813C0;
  strcpy((v138 + 32), "WFParameterKey");
  *(v138 + 47) = -18;
  v139 = v320;
  *(v138 + 48) = v319;
  *(v138 + 56) = v139;
  v321 = 0x80000001CA993570;
  *(v138 + 72) = v136;
  *(v138 + 80) = 0xD000000000000010;
  *(v138 + 88) = 0x80000001CA993570;
  *(v138 + 96) = 0;
  *(v138 + 120) = MEMORY[0x1E69E6370];
  *(v138 + 128) = 0x72756F7365524657;
  *(v138 + 168) = v136;
  v319 = 0xD00000000000001BLL;
  v320 = 0x80000001CA993590;
  *(v138 + 136) = 0xEF7373616C436563;
  *(v138 + 144) = 0xD00000000000001BLL;
  *(v138 + 152) = 0x80000001CA993590;
  v140 = @"RequiredResources";
  v305 = v133;
  v306 = v134;
  v317 = v140;
  *(v137 + 32) = sub_1CA94C1E8();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v318 = v141;
  *(v132 + 120) = v137;
  *(v132 + 144) = v141;
  *(v132 + 152) = @"StepperDescription";
  v142 = @"StepperDescription";
  v143 = sub_1CA94C438();
  v145 = v144;
  v146 = sub_1CA94C438();
  v148 = v147;
  v304 = &v301;
  MEMORY[0x1EEE9AC00](v146);
  v149 = &v301 - v341;
  sub_1CA948D98();
  v150 = [v339 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = &v301 - v340;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v132 + 160) = sub_1CA2F9F14(v143, v145, v146, v148, 0, 0, v149, v151);
  *(v132 + 184) = v337;
  *(v132 + 192) = @"StepperNoun";
  v153 = @"StepperNoun";
  v154 = sub_1CA94C438();
  v303 = v155;
  v304 = v154;
  v156 = v155;
  v347 = 0;
  v348 = 0xE000000000000000;
  sub_1CA94D408();

  v347 = v154;
  v348 = v156;
  v345 = 10;
  v346 = 0xE100000000000000;
  v343 = 32;
  v344 = 0xE100000000000000;
  sub_1CA27BAF0();
  v347 = sub_1CA94D1B8();
  v348 = v157;
  v158 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v302 = &v301;
  v159 = v347;
  v160 = v348;
  MEMORY[0x1EEE9AC00](v158);
  v161 = v341;
  sub_1CA948D98();
  v162 = [v339 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v301 - v340;
  sub_1CA948B68();

  v164 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v132 + 200) = sub_1CA2F9F14(v159, v160, v304, v303, 0, 0, &v301 - v161, v163);
  v165 = v337;
  *(v132 + 224) = v337;
  *(v132 + 232) = @"StepperPrefix";
  v166 = @"StepperPrefix";
  v167 = sub_1CA94C438();
  v303 = v168;
  v169 = sub_1CA94C438();
  v171 = v170;
  v304 = &v301;
  MEMORY[0x1EEE9AC00](v169);
  sub_1CA948D98();
  v172 = [v339 bundleURL];
  MEMORY[0x1EEE9AC00](v172);
  v173 = &v301 - v340;
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v175 = sub_1CA2F9F14(v167, v303, v169, v171, 0, 0, &v301 - v161, v173);
  *(v132 + 264) = v165;
  *(v132 + 240) = v175;
  sub_1CA94C1E8();
  *(v336 + 48) = sub_1CA2F864C();
  v176 = swift_allocObject();
  *(v176 + 16) = v329;
  v177 = v305;
  v178 = v306;
  v179 = v313;
  v180 = v314;
  *(v176 + 32) = v305;
  *(v176 + 40) = v180;
  *(v176 + 48) = v179;
  v181 = MEMORY[0x1E69E6158];
  v182 = v316;
  *(v176 + 64) = MEMORY[0x1E69E6158];
  *(v176 + 72) = v182;
  *(v176 + 80) = 1;
  *(v176 + 104) = MEMORY[0x1E69E6370];
  *(v176 + 112) = v178;
  *&v329 = 0x80000001CA9DBD60;
  v316 = 0xD000000000000017;
  *(v176 + 120) = 0xD000000000000017;
  *(v176 + 128) = 0x80000001CA9DBD60;
  v183 = v312;
  *(v176 + 144) = v181;
  *(v176 + 152) = v183;
  v314 = v177;
  v313 = v178;
  v312 = v183;
  v184 = sub_1CA94C438();
  v186 = v185;
  v187 = sub_1CA94C438();
  v189 = v188;
  v306 = &v301;
  MEMORY[0x1EEE9AC00](v187);
  v190 = &v301 - v341;
  sub_1CA948D98();
  v191 = [v339 bundleURL];
  MEMORY[0x1EEE9AC00](v191);
  v192 = &v301 - v340;
  sub_1CA948B68();

  v193 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v194 = sub_1CA2F9F14(v184, v186, v187, v189, 0, 0, v190, v192);
  *(v176 + 184) = v337;
  *(v176 + 160) = v194;
  sub_1CA94C1E8();
  *(v336 + 56) = sub_1CA2F864C();
  v195 = swift_allocObject();
  *(v195 + 16) = v315;
  v197 = v313;
  v196 = v314;
  v199 = v325;
  v198 = v326;
  *(v195 + 32) = v314;
  *(v195 + 40) = v199;
  *(v195 + 48) = v198;
  v200 = MEMORY[0x1E69E6158];
  *(v195 + 64) = MEMORY[0x1E69E6158];
  *(v195 + 72) = v197;
  *(v195 + 80) = 0xD00000000000001ELL;
  *(v195 + 88) = 0x80000001CA9DBDB0;
  v201 = v312;
  *(v195 + 104) = v200;
  *(v195 + 112) = v201;
  v314 = v196;
  v313 = v197;
  v312 = v201;
  v202 = sub_1CA94C438();
  v304 = v203;
  v305 = v202;
  v204 = sub_1CA94C438();
  v303 = v205;
  v306 = &v301;
  MEMORY[0x1EEE9AC00](v204);
  v206 = v341;
  sub_1CA948D98();
  v207 = v339;
  v208 = [v339 bundleURL];
  v302 = &v301;
  MEMORY[0x1EEE9AC00](v208);
  v209 = &v301 - v340;
  sub_1CA948B68();

  v210 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v195 + 120) = sub_1CA2F9F14(v305, v304, v204, v303, 0, 0, &v301 - v206, v209);
  v211 = v337;
  v212 = v311;
  *(v195 + 144) = v337;
  *(v195 + 152) = v212;
  v311 = v212;
  v213 = sub_1CA94C438();
  v304 = v214;
  v305 = v213;
  v215 = sub_1CA94C438();
  v303 = v216;
  v306 = &v301;
  MEMORY[0x1EEE9AC00](v215);
  sub_1CA948D98();
  v217 = [v207 bundleURL];
  MEMORY[0x1EEE9AC00](v217);
  v218 = v340;
  sub_1CA948B68();

  v219 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v195 + 160) = sub_1CA2F9F14(v305, v304, v215, v303, 0, 0, &v301 - v206, &v301 - v218);
  v220 = v317;
  *(v195 + 184) = v211;
  *(v195 + 192) = v220;
  v221 = swift_allocObject();
  *(v221 + 16) = v328;
  v222 = swift_allocObject();
  *(v222 + 16) = v322;
  strcpy((v222 + 32), "WFParameterKey");
  *(v222 + 47) = -18;
  v223 = v329;
  *(v222 + 48) = v316;
  *(v222 + 56) = v223;
  v224 = MEMORY[0x1E69E6158];
  *(v222 + 72) = MEMORY[0x1E69E6158];
  *(v222 + 80) = 0xD000000000000010;
  *(v222 + 88) = v321;
  *(v222 + 96) = 0;
  *(v222 + 120) = MEMORY[0x1E69E6370];
  *(v222 + 128) = 0x72756F7365524657;
  *(v222 + 168) = v224;
  *(v222 + 136) = 0xEF7373616C436563;
  v225 = v320;
  *(v222 + 144) = v319;
  *(v222 + 152) = v225;
  v226 = v224;
  *(v221 + 32) = sub_1CA94C1E8();
  *(v195 + 200) = v221;
  v227 = v324;
  *(v195 + 224) = v318;
  *(v195 + 232) = v227;
  *(v195 + 264) = v226;
  *(v195 + 240) = 0x7468676952;
  *(v195 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v336 + 64) = sub_1CA2F864C();
  v228 = swift_allocObject();
  *(v228 + 16) = v315;
  v230 = v325;
  v229 = v326;
  *(v228 + 32) = v314;
  *(v228 + 40) = v230;
  *(v228 + 48) = v229;
  v231 = v313;
  *(v228 + 64) = v226;
  *(v228 + 72) = v231;
  *(v228 + 80) = 0xD00000000000001FLL;
  *(v228 + 88) = 0x80000001CA9DBE30;
  v232 = v312;
  *(v228 + 104) = v226;
  *(v228 + 112) = v232;
  v325 = sub_1CA94C438();
  *&v315 = v233;
  v234 = sub_1CA94C438();
  v306 = v235;
  v326 = &v301;
  MEMORY[0x1EEE9AC00](v234);
  v236 = v341;
  sub_1CA948D98();
  v237 = v339;
  v238 = [v339 bundleURL];
  MEMORY[0x1EEE9AC00](v238);
  sub_1CA948B68();

  v239 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v228 + 120) = sub_1CA2F9F14(v325, v315, v234, v306, 0, 0, &v301 - v236, &v301 - v218);
  v240 = v337;
  v241 = v311;
  *(v228 + 144) = v337;
  *(v228 + 152) = v241;
  v325 = sub_1CA94C438();
  *&v315 = v242;
  v243 = sub_1CA94C438();
  v306 = v244;
  v326 = &v301;
  MEMORY[0x1EEE9AC00](v243);
  sub_1CA948D98();
  v245 = [v237 bundleURL];
  MEMORY[0x1EEE9AC00](v245);
  sub_1CA948B68();

  v246 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v228 + 160) = sub_1CA2F9F14(v325, v315, v243, v306, 0, 0, &v301 - v236, &v301 - v218);
  v247 = v317;
  *(v228 + 184) = v240;
  *(v228 + 192) = v247;
  v248 = swift_allocObject();
  *(v248 + 16) = v328;
  v249 = swift_allocObject();
  *(v249 + 16) = v322;
  strcpy((v249 + 32), "WFParameterKey");
  *(v249 + 47) = -18;
  v250 = v329;
  *(v249 + 48) = v316;
  *(v249 + 56) = v250;
  v251 = MEMORY[0x1E69E6158];
  *(v249 + 72) = MEMORY[0x1E69E6158];
  *(v249 + 80) = 0xD000000000000010;
  *(v249 + 88) = v321;
  *(v249 + 96) = 0;
  *(v249 + 120) = MEMORY[0x1E69E6370];
  *(v249 + 128) = 0x72756F7365524657;
  *(v249 + 168) = v251;
  *(v249 + 136) = 0xEF7373616C436563;
  v252 = v320;
  *(v249 + 144) = v319;
  *(v249 + 152) = v252;
  v253 = v251;
  *(v248 + 32) = sub_1CA94C1E8();
  *(v228 + 200) = v248;
  v254 = v324;
  *(v228 + 224) = v318;
  *(v228 + 232) = v254;
  *(v228 + 264) = v253;
  *(v228 + 240) = 0x7468676952;
  *(v228 + 248) = 0xE500000000000000;
  sub_1CA94C1E8();
  *(v336 + 72) = sub_1CA2F864C();
  v255 = swift_allocObject();
  *(v255 + 16) = xmmword_1CA981370;
  *(v255 + 32) = v314;
  *(v255 + 40) = 0xD000000000000019;
  *(v255 + 48) = 0x80000001CA99B030;
  v256 = v313;
  *(v255 + 64) = v253;
  *(v255 + 72) = v256;
  *(v255 + 80) = 0x7475706E494657;
  *(v255 + 88) = 0xE700000000000000;
  v257 = v312;
  *(v255 + 104) = v253;
  *(v255 + 112) = v257;
  v330 = sub_1CA94C438();
  *&v329 = v258;
  v259 = sub_1CA94C438();
  v326 = v260;
  v334 = &v301;
  MEMORY[0x1EEE9AC00](v259);
  v261 = &v301 - v341;
  sub_1CA948D98();
  v262 = v339;
  v263 = [v339 bundleURL];
  v325 = &v301;
  MEMORY[0x1EEE9AC00](v263);
  v264 = v340;
  sub_1CA948B68();

  v265 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v255 + 120) = sub_1CA2F9F14(v330, v329, v259, v326, 0, 0, v261, &v301 - v264);
  v266 = v337;
  v267 = v311;
  *(v255 + 144) = v337;
  *(v255 + 152) = v267;
  v330 = sub_1CA94C438();
  *&v329 = v268;
  v269 = sub_1CA94C438();
  v326 = v270;
  v334 = &v301;
  MEMORY[0x1EEE9AC00](v269);
  v271 = &v301 - v341;
  sub_1CA948D98();
  v272 = [v262 bundleURL];
  MEMORY[0x1EEE9AC00](v272);
  sub_1CA948B68();

  v273 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v255 + 160) = sub_1CA2F9F14(v330, v329, v269, v326, 0, 0, v271, &v301 - v264);
  *(v255 + 184) = v266;
  *(v255 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v274 = swift_allocObject();
  *(v274 + 16) = v328;
  v275 = @"PreferredTypes";
  v276 = v307;
  sub_1CA949CB8();
  v277 = sub_1CA949C68();
  v279 = v278;
  (*(v308 + 8))(v276, v309);
  *(v274 + 32) = v277;
  *(v274 + 40) = v279;
  *(v255 + 224) = v327;
  *(v255 + 200) = v274;
  sub_1CA94C1E8();
  v280 = sub_1CA2F864C();
  v281 = v336;
  *(v336 + 80) = v280;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v283 = v331;
  v331[50] = v281;
  v283[53] = v282;
  v283[54] = @"ParameterSummary";
  v284 = @"ParameterSummary";
  v285 = sub_1CA94C438();
  v287 = v286;
  v288 = sub_1CA94C438();
  v290 = v289;
  MEMORY[0x1EEE9AC00](v288);
  v291 = &v301 - v341;
  sub_1CA948D98();
  v292 = [v339 bundleURL];
  MEMORY[0x1EEE9AC00](v292);
  v293 = &v301 - v340;
  sub_1CA948B68();

  v294 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v295 = sub_1CA2F9F14(v285, v287, v288, v290, 0, 0, v291, v293);
  v296 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v297 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v298 = v331;
  v331[55] = v296;
  v298[58] = v297;
  v298[59] = @"ResidentCompatible";
  v298[63] = MEMORY[0x1E69E6370];
  *(v298 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v299 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA6603A4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v19 = *(result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_2:
    if (v3 == v19)
    {

      return v4;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v5 = v3 + 1;
    sub_1CA2C9578(v17 + 40 * v3, &v21);
    v6 = *(*a2 + 16);
    v7 = (*a2 + 32);
    sub_1CA94C218();
    v8 = v6 + 1;
    while (--v8)
    {
      v10 = v7[3];
      v9 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v10);
      v11 = (*(*(v9 + 8) + 16))(v10);
      v13 = v22;
      v12 = v23;
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      v7 += 5;
      if (v11 == (*(*(v12 + 8) + 16))(v13))
      {

        result = __swift_destroy_boxed_opaque_existential_0(&v21);
        v3 = v5;
        goto LABEL_2;
      }
    }

    sub_1CA27F268(&v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1CA2B8EB4(0, *(v4 + 16) + 1, 1);
      v4 = v24;
    }

    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1CA2B8EB4(v15 > 1, v16 + 1, 1);
      v4 = v24;
    }

    *(v4 + 16) = v16 + 1;
    result = sub_1CA27F268(v20, v4 + 40 * v16 + 32);
    v3 = v5;
  }

  __break(1u);
  return result;
}

BOOL sub_1CA66058C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  v5 = v3 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = v4 + 5;
    v8 = v4[3];
    v7 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v8);
    v9 = (*(*(v7 + 8) + 16))(v8);
    v4 = v6;
  }

  while (v9 != *(a2 + 16));
  return v5 != 0;
}

uint64_t RowTemplateFindFilterParameterState.init(contentItemClass:contentProperty:selectedOperator:bounded:removable:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v9 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  *(a6 + 24) = sub_1CA94C1E8();
  *(a6 + 32) = a4;
  *(a6 + 33) = a5;
  v10 = sub_1CA948D28();
  v11 = OUTLINED_FUNCTION_1_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_37();
  v16 = sub_1CA948CC8();
  v18 = v17;

  result = (*(v13 + 8))(a5, v10);
  *(a6 + 40) = v16;
  *(a6 + 48) = v18;
  return result;
}

uint64_t RowTemplateFindFilterParameterState.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(*(a4 + 8) + 24))(a3, *(a4 + 8));
  v8 = v7;
  if (a1)
  {
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_87();
    v9 = swift_unknownObjectRetain();
    sub_1CA43FF40(v9, v6, v8, (v4 + 24));
  }

  else
  {
    sub_1CA43F494();
  }

  return swift_unknownObjectRelease();
}

uint64_t WFRowTemplateValue.SerializationStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

uint64_t RowTemplateFindFilterParameterState.parameterStates.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t RowTemplateFindFilterParameterState.variablesDisabled.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  v5 = sub_1CA94C3A8();
  v7 = v6;

  if (v5 == 0xD000000000000015 && 0x80000001CA9941B0 == v7)
  {
  }

  else
  {
    sub_1CA94D7F8();
    OUTLINED_FUNCTION_11();

    result = 0;
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  v10 = [v2 name];
  v11 = sub_1CA94C3A8();
  v13 = v12;

  if (v11 == 1701869908 && v13 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v15 = sub_1CA94D7F8();

    return v15 & 1;
  }
}

uint64_t RowTemplateFindFilterParameterState.identity.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1CA94C218();
  return v1;
}

WorkflowKit::RowTemplateFindFilterParameterState::SerializationKey_optional __swiftcall RowTemplateFindFilterParameterState.SerializationKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CA94D6E8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RowTemplateFindFilterParameterState.SerializationKey.rawValue.getter()
{
  result = 0x79747265706F7250;
  switch(*v0)
  {
    case 1:
      result = 0x726F74617265704FLL;
      break;
    case 2:
      result = 0x6C6261766F6D6552;
      break;
    case 3:
      result = 0x6465646E756F42;
      break;
    case 4:
      result = 0x6E6564646948;
      break;
    case 5:
      result = 0x7365756C6156;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CA660C78(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1CA2BF5F0();
}

unint64_t sub_1CA660CA8@<X0>(unint64_t *a1@<X8>)
{
  result = RowTemplateFindFilterParameterState.SerializationKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CA661134()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447DF0, &qword_1CA9917E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CA981550;
  v1 = sub_1CA66DEEC();
  *(v0 + 32) = &type metadata for RowTemplateFindFilterParameterState.EnumerationStringValueKey;
  *(v0 + 40) = v1;
  v2 = sub_1CA66DF40();
  *(v0 + 48) = &type metadata for RowTemplateFindFilterParameterState.EnumerationLinkValueKey;
  *(v0 + 56) = v2;
  v3 = sub_1CA66DF94();
  *(v0 + 64) = &type metadata for RowTemplateFindFilterParameterState.EnumerationNumberValueKey;
  *(v0 + 72) = v3;
  v4 = sub_1CA66DFE8();
  *(v0 + 80) = &type metadata for RowTemplateFindFilterParameterState.EnumerationSpeakableStringValueKey;
  *(v0 + 88) = v4;
  v5 = sub_1CA66E03C();
  *(v0 + 96) = &type metadata for RowTemplateFindFilterParameterState.StringValueKey;
  *(v0 + 104) = v5;
  v6 = sub_1CA66E090();
  *(v0 + 112) = &type metadata for RowTemplateFindFilterParameterState.BoolValueKey;
  *(v0 + 120) = v6;
  v7 = sub_1CA66E0E4();
  *(v0 + 128) = &type metadata for RowTemplateFindFilterParameterState.NumberValueKey;
  *(v0 + 136) = v7;
  v8 = sub_1CA66E138();
  *(v0 + 144) = &type metadata for RowTemplateFindFilterParameterState.PhoneValueKey;
  *(v0 + 152) = v8;
  v9 = sub_1CA66E18C();
  *(v0 + 160) = &type metadata for RowTemplateFindFilterParameterState.EmailValueKey;
  *(v0 + 168) = v9;
  v10 = sub_1CA66E1E0();
  *(v0 + 176) = &type metadata for RowTemplateFindFilterParameterState.CalendarUnitValueKey;
  *(v0 + 184) = v10;
  v11 = sub_1CA66E234();
  *(v0 + 192) = &type metadata for RowTemplateFindFilterParameterState.ByteCountUnitValueKey;
  *(v0 + 200) = v11;
  v12 = sub_1CA66E288();
  *(v0 + 208) = &type metadata for RowTemplateFindFilterParameterState.MeasurementUnitValueKey;
  *(v0 + 216) = v12;
  v13 = sub_1CA66E2DC();
  *(v0 + 224) = &type metadata for RowTemplateFindFilterParameterState.DateValueKey;
  *(v0 + 232) = v13;
  v14 = sub_1CA66E330();
  *(v0 + 240) = &type metadata for RowTemplateFindFilterParameterState.AnotherDateValueKey;
  *(v0 + 248) = v14;
  return v0;
}

uint64_t RowTemplateFindFilterParameterState.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = (*(*(a3 + 8) + 24))(a2, *(a3 + 8));
  v7 = sub_1CA323E28(v5, v6);

  if (!v7)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void (*RowTemplateFindFilterParameterState.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v9;
  v9[3] = a4;
  v9[4] = v4;
  v9[1] = a2;
  v9[2] = a3;
  OUTLINED_FUNCTION_9_37();
  *v9 = RowTemplateFindFilterParameterState.subscript.getter(a2, a3, a4);
  return sub_1CA661408;
}

void sub_1CA661408(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    v8 = swift_unknownObjectRetain();
    RowTemplateFindFilterParameterState.subscript.setter(v8, v6, v5, v4);
    v9 = *v2;
    swift_unknownObjectRelease();
  }

  else
  {
    RowTemplateFindFilterParameterState.subscript.setter(v7, v6, v5, v4);
  }

  free(v2);
}

unint64_t sub_1CA662B04(uint64_t a1, void *a2)
{
  v3 = sub_1CA2F586C(a1);
  v4 = sub_1CA94C3A8();
  v6 = sub_1CA323E28(v4, v5);

  if (v6 && (*&v12 = v6, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520), v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0), (swift_dynamicCast() & 1) != 0))
  {
    v8 = *&v11[0];
    sub_1CA94C3A8();
    v13 = sub_1CA25B3D0(0, &unk_1EC441AB0, 0x1E69ACAA0);
    *&v12 = a2;
    sub_1CA2C0A20(&v12, v11);
    v9 = a2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1CA3223D8();

    sub_1CA94C3A8();
    v13 = v7;
    *&v12 = v8;
    sub_1CA2C0A20(&v12, v11);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1CA3223D8();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t RowTemplateFindFilterParameterState.serializedRepresentation.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v93 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  v5 = *(v0 + 34);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v6 = sub_1CA94C1E8();
  v7 = [v2 name];
  if (!v7)
  {
    sub_1CA94C3A8();
    v0 = v8;
    v7 = sub_1CA94C368();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v98 = v6;
  sub_1CA32EA0C(v7, 0x79747265706F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v98);
  v10 = v98;
  sub_1CA94C988();
  OUTLINED_FUNCTION_87();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v98 = v10;
  sub_1CA32EA0C(v0, 0x726F74617265704FLL, 0xE800000000000000, v11, &v98);
  v12 = v98;
  sub_1CA94C7A8();
  OUTLINED_FUNCTION_87();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v98 = v12;
  sub_1CA32EA0C(v0, 0x6C6261766F6D6552, 0xE900000000000065, v13, &v98);
  v14 = v98;
  if (v3)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    sub_1CA94CFA8();
    v15 = OUTLINED_FUNCTION_88_4();
    v98 = v14;
    sub_1CA32EA0C(v12, 0x6465646E756F42, 0xE700000000000000, v15, &v98);
    v14 = v98;
  }

  else
  {
    OUTLINED_FUNCTION_54_8();
    sub_1CA271BF8();
    if (v16)
    {
      OUTLINED_FUNCTION_88_4();
      v98 = v14;
      v14 = *(v14 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      OUTLINED_FUNCTION_33_15();
      v17 = sub_1CA94D588();
      OUTLINED_FUNCTION_82_4(v17, v18, v19, v20, v21, v22, v23, v24, v85, v86, v87, v89, v91, v92, v93, v94, v96, v98);
      v25 = *(*(v14 + 56) + 8 * v12);
      sub_1CA94D5A8();
      swift_unknownObjectRelease();
    }
  }

  v26 = v93;
  if (v5)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    sub_1CA94CFA8();
    v27 = OUTLINED_FUNCTION_88_4();
    v98 = v14;
    sub_1CA32EA0C(v12, 0x6E6564646948, 0xE600000000000000, v27, &v98);
    v14 = v98;
  }

  else
  {
    OUTLINED_FUNCTION_61_10();
    sub_1CA271BF8();
    if (v28)
    {
      OUTLINED_FUNCTION_88_4();
      v98 = v14;
      v14 = *(v14 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      OUTLINED_FUNCTION_33_15();
      v29 = sub_1CA94D588();
      OUTLINED_FUNCTION_82_4(v29, v30, v31, v32, v33, v34, v35, v36, v85, v86, v87, v89, v91, v92, v93, v94, v96, v98);
      v37 = *(*(v14 + 56) + 8 * v12);
      sub_1CA94D5A8();
      swift_unknownObjectRelease();
    }
  }

  v88 = v14;
  v38 = sub_1CA94C1E8();
  v39 = sub_1CA661134();
  v40 = *(v39 + 16);
  v95 = v38;
  if (!v40)
  {
LABEL_34:

    v81 = sub_1CA94C1A8();

    v82 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v88;
    sub_1CA32EA0C(v81, 0x7365756C6156, 0xE600000000000000, v82, &v98);
    v83 = sub_1CA94C1A8();

    return v83;
  }

  v41 = v39 + 40;
  while (1)
  {
    v42 = *(v41 - 8);
    v43 = *v41;
    v44 = *(*v41 + 8);
    v45 = *(v44 + 24);
    v45(v42, v44);
    if (!*(v26 + 16))
    {

      goto LABEL_33;
    }

    v97 = v40;
    v46 = sub_1CA271BF8();
    v47 = v26;
    v49 = v48;

    if ((v49 & 1) == 0)
    {
      v26 = v47;
      v40 = v97;
      goto LABEL_33;
    }

    v50 = *(*(v47 + 56) + 8 * v46);
    v51 = *(v43 + 16);
    swift_unknownObjectRetain();
    v51(&v98, v42, v43);
    v52 = v98;
    v53 = (v45)(v42, v44);
    v55 = v54;
    if (!v52)
    {
      break;
    }

    v56 = [v50 serializedRepresentation];
    v40 = v97;
    if (!v56)
    {
      v67 = sub_1CA271BF8();
      v69 = v68;

      v26 = v93;
      if (v69)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v98 = v95;
        v70 = *(v95 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
        OUTLINED_FUNCTION_33_15();
        sub_1CA94D588();
        v71 = v98;
        v72 = *(v98[6] + 16 * v67 + 8);

        v73 = *(*(v71 + 56) + 8 * v67);
        swift_unknownObjectRelease();
        v95 = v71;
        sub_1CA94D5A8();
      }

LABEL_32:
      swift_unknownObjectRelease();
      goto LABEL_33;
    }

    v57 = v56;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v95;
    swift_getObjectType();
    sub_1CA32EB34(v57, v53, v55, v58, &v98);
    swift_unknownObjectRelease();

    v95 = v98;
    v26 = v93;
LABEL_33:
    v41 += 16;
    if (!--v40)
    {
      goto LABEL_34;
    }
  }

  v59 = WFSerializedVariableObject(v50);
  sub_1CA94C1C8();

  OUTLINED_FUNCTION_52_0();
  v60 = sub_1CA94C1A8();

  swift_isUniquelyReferenced_nonNull_native();
  v98 = v95;
  v61 = sub_1CA271BF8();
  v40 = v97;
  if (!__OFADD__(*(v95 + 16), (v62 & 1) == 0))
  {
    v63 = v61;
    v64 = v62;
    v90 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
    OUTLINED_FUNCTION_33_15();
    if (sub_1CA94D588())
    {
      v65 = sub_1CA271BF8();
      v26 = v93;
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_37;
      }

      v63 = v65;
    }

    else
    {
      v26 = v93;
    }

    v74 = v98;
    v95 = v98;
    if (v64)
    {
      v75 = v98[7];
      v76 = *(v75 + 8 * v63);
      *(v75 + 8 * v63) = v90;
      swift_unknownObjectRelease();
    }

    else
    {
      v98[(v63 >> 6) + 8] |= 1 << v63;
      v77 = (v74[6] + 16 * v63);
      *v77 = v53;
      v77[1] = v55;
      *(v74[7] + 8 * v63) = v90;
      v78 = v74[2];
      v79 = __OFADD__(v78, 1);
      v80 = v78 + 1;
      if (v79)
      {
        goto LABEL_36;
      }

      v74[2] = v80;
    }

    goto LABEL_32;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}