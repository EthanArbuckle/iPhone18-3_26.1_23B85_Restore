void sub_1C70A6080(void *a1, double a2, double a3, double a4, uint64_t a5, NSObject *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v50[3] = *MEMORY[0x1E69E9840];
  if ([a1 pixelWidth] >= 1 && objc_msgSend(a1, sel_pixelHeight) >= 1)
  {
    oslog = a6;
    v46 = 0.0;
    v47 = 0.0;
    OUTLINED_FUNCTION_15_22();
    [a1 v15];
    OUTLINED_FUNCTION_15_22();
    [a1 v16];
    OUTLINED_FUNCTION_5();
    v17 = sub_1C75504FC();
    v18 = sub_1C733C094(v17);

    v19 = OBJC_IVAR___PNAssetElectionOptions_limit;
    OUTLINED_FUNCTION_5();
    v20 = v46 >= a4 && v18 < *(a9 + v19);
    v21 = !v20;
    if (v20)
    {
      v22 = [a1 objectID];
      OUTLINED_FUNCTION_20_18();
      sub_1C70F25A0(v49, v22);
      swift_endAccess();
    }

    OUTLINED_FUNCTION_5();
    v23 = sub_1C75504FC();
    v24 = sub_1C733C094(v23);

    if (v24 >= *(a9 + v19) || v47 < a4)
    {
      if (!v21)
      {
        goto LABEL_25;
      }

      v26 = [a1 objectID];
      OUTLINED_FUNCTION_20_18();
      v39 = v26;
    }

    else
    {
      v38 = [a1 objectID];
      OUTLINED_FUNCTION_20_18();
      v39 = v38;
    }

    sub_1C70F25A0(v48, v39);
    swift_endAccess();

LABEL_25:
    OUTLINED_FUNCTION_5();
    v40 = sub_1C75504FC();
    v41 = sub_1C733C094(v40);

    if (v41 >= *(a9 + v19))
    {
      OUTLINED_FUNCTION_5();
      v42 = sub_1C75504FC();
      v43 = sub_1C733C094(v42);

      if (v43 >= *(a9 + v19))
      {
        LOBYTE(oslog->isa) = 1;
      }
    }

    goto LABEL_28;
  }

  v27 = a1;
  osloga = sub_1C754FEEC();
  v28 = sub_1C75511BC();

  if (os_log_type_enabled(osloga, v28))
  {
    v29 = OUTLINED_FUNCTION_41_0();
    v30 = OUTLINED_FUNCTION_20_1();
    v50[0] = v30;
    *v29 = 136315138;
    v31 = [v27 localIdentifier];
    v32 = sub_1C755068C();
    v34 = v33;

    v35 = sub_1C6F765A4(v32, v34, v50);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_1C6F5C000, osloga, v28, "Asset %s has 0 pixel height or width. Skipping", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();

LABEL_28:
    OUTLINED_FUNCTION_22_18();
    return;
  }

  OUTLINED_FUNCTION_22_18();
}

uint64_t type metadata accessor for PersonAssetElector()
{
  result = qword_1EC216E58;
  if (!qword_1EC216E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_10Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

PhotosIntelligence::PromptBindingContext __swiftcall PromptBindingContext.init(numberOfPersonAndPetNames:numberOfLocationNames:)(Swift::Int numberOfPersonAndPetNames, Swift::Int numberOfLocationNames)
{
  *v2 = numberOfPersonAndPetNames;
  v2[1] = numberOfLocationNames;
  result.numberOfLocationNames = numberOfLocationNames;
  result.numberOfPersonAndPetNames = numberOfPersonAndPetNames;
  return result;
}

uint64_t PromptBindings.currentDate.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

void __swiftcall PromptBindings.init(currentDate:personNames:petNames:locationNames:)(PhotosIntelligence::PromptBindings *__return_ptr retstr, Swift::String currentDate, Swift::OpaquePointer personNames, Swift::OpaquePointer petNames, Swift::OpaquePointer locationNames)
{
  retstr->currentDate = currentDate;
  retstr->personNames = personNames;
  retstr->petNames = petNames;
  retstr->locationNames = locationNames;
}

uint64_t PromptBindings.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x44746E6572727563, 0xED0000203A657461);
  MEMORY[0x1CCA5CD70](v1, v2);
  MEMORY[0x1CCA5CD70](0x4E6E6F737265700ALL, 0xEE00203A73656D61);
  v6 = MEMORY[0x1E69E6158];
  v7 = MEMORY[0x1CCA5D090](v4, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v7);

  MEMORY[0x1CCA5CD70](0x656D614E7465700ALL, 0xEB00000000203A73);
  v8 = MEMORY[0x1CCA5D090](v3, v6);
  MEMORY[0x1CCA5CD70](v8);

  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C759BD40);
  v9 = MEMORY[0x1CCA5D090](v5, v6);
  MEMORY[0x1CCA5CD70](v9);

  return 0;
}

uint64_t sub_1C70A67BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44746E6572727563 && a2 == 0xEB00000000657461;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614E6E6F73726570 && a2 == 0xEB0000000073656DLL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73656D614E746570 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xED000073656D614ELL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

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

uint64_t sub_1C70A6924(char a1)
{
  result = 0x44746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0x614E6E6F73726570;
      break;
    case 2:
      result = 0x73656D614E746570;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C70A69CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70A67BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70A69F4(uint64_t a1)
{
  v2 = sub_1C70A6FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70A6A30(uint64_t a1)
{
  v2 = sub_1C70A6FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptBindings.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216E88);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = v1[2];
  v16 = v1[3];
  v17 = v9;
  v15 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70A6FCC();
  sub_1C755200C();
  LOBYTE(v20) = 0;
  v10 = v18;
  sub_1C7551CCC();
  if (!v10)
  {
    v11 = v15;
    v12 = v16;
    v20 = v17;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C6FF60E4(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_1();
    v20 = v12;
    v19 = 2;
    OUTLINED_FUNCTION_1();
    v20 = v11;
    v19 = 3;
    OUTLINED_FUNCTION_1();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t PromptBindings.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216E98);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70A6FCC();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v12) = 0;
  v10 = sub_1C7551BBC();
  v11 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C6FF60E4(&qword_1EDD0CF50);
  OUTLINED_FUNCTION_0_38();
  OUTLINED_FUNCTION_0_38();
  OUTLINED_FUNCTION_0_38();
  v8 = OUTLINED_FUNCTION_2_24();
  v9(v8);
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v12;
  a2[4] = v12;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

id static PromptBindingContext.defaultNumberOfPersonAndPetNames.getter()
{
  v0 = objc_opt_self();

  return [v0 queryAnnotationPromptBindingNumberOfPersonAndPetNames];
}

id static PromptBindingContext.defaultNumberOfLocationNames.getter()
{
  v0 = objc_opt_self();

  return [v0 queryAnnotationPromptBindingNumberOfLocationNames];
}

unint64_t sub_1C70A6FCC()
{
  result = qword_1EC216E90;
  if (!qword_1EC216E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216E90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptBindings.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C70A7120()
{
  result = qword_1EC216EA0;
  if (!qword_1EC216EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216EA0);
  }

  return result;
}

unint64_t sub_1C70A7178()
{
  result = qword_1EC216EA8;
  if (!qword_1EC216EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216EA8);
  }

  return result;
}

unint64_t sub_1C70A71D0()
{
  result = qword_1EC216EB0;
  if (!qword_1EC216EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216EB0);
  }

  return result;
}

uint64_t sub_1C70A7224(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v43 = MEMORY[0x1E69E7CC0];
  sub_1C716D5B0(0, v3, 0);
  v4 = v43;
  v6 = sub_1C70D4544(v5);
  v9 = v6;
  v10 = v7;
  v11 = 0;
  v34 = v5 + 64;
  v30 = v7;
  v31 = v3;
  v29 = v5 + 72;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v5 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v34 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (*(v5 + 36) != v10)
    {
      goto LABEL_24;
    }

    v33 = v11;
    v32 = v8;
    v13 = (*(v5 + 48) + 120 * v9);
    memcpy(__dst, v13, sizeof(__dst));
    memcpy(__src, v13, sizeof(__src));
    v14 = v5;
    v15 = *(*(v5 + 56) + 8 * v9);
    memmove(v40, v13, 0x78uLL);
    memcpy(v41, __src, sizeof(v41));
    v42 = v15;
    swift_bridgeObjectRetain_n();
    sub_1C6FCA6E4(__dst, v36);
    sub_1C6FCA6E4(v40, v36);
    sub_1C70A972C(v41);
    memcpy(v36, v40, 0x78uLL);
    v36[15] = v15;
    sub_1C70A8DC0(v36, &v38);
    v6 = v35;
    v7 = v36;
    v8 = 128;
    if (v2)
    {
      goto LABEL_28;
    }

    memcpy(v35, v36, sizeof(v35));
    v6 = sub_1C70A972C(v35);
    v16 = v38;
    v43 = v4;
    v18 = *(v4 + 16);
    v17 = *(v4 + 24);
    if (v18 >= v17 >> 1)
    {
      v6 = sub_1C716D5B0((v17 > 1), v18 + 1, 1);
      v4 = v43;
    }

    *(v4 + 16) = v18 + 1;
    *(v4 + 8 * v18 + 32) = v16;
    v19 = 1 << *(v14 + 32);
    if (v9 >= v19)
    {
      goto LABEL_25;
    }

    v20 = *(v34 + 8 * v12);
    if ((v20 & (1 << v9)) == 0)
    {
      goto LABEL_26;
    }

    v5 = v14;
    if (*(v14 + 36) != v10)
    {
      goto LABEL_27;
    }

    v21 = v20 & (-2 << (v9 & 0x3F));
    if (v21)
    {
      v19 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v22 = v31;
    }

    else
    {
      v23 = v12 << 6;
      v24 = v12 + 1;
      v25 = (v29 + 8 * v12);
      v22 = v31;
      while (v24 < (v19 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          v6 = sub_1C6F9ED50(v9, v10, v32 & 1);
          v19 = __clz(__rbit64(v26)) + v23;
          goto LABEL_20;
        }
      }

      v6 = sub_1C6F9ED50(v9, v10, v32 & 1);
    }

LABEL_20:
    v2 = 0;
    v8 = 0;
    v11 = v33 + 1;
    v9 = v19;
    v10 = v30;
    if (v33 + 1 == v22)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_23:
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
  memcpy(v6, v7, v8);
  sub_1C70A972C(v35);

  __break(1u);
  return result;
}

uint64_t sub_1C70A7540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[43] = a5;
  v6[44] = v5;
  v6[41] = a3;
  v6[42] = a4;
  v6[39] = a1;
  v6[40] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C70A75D8, 0, 0);
}

void sub_1C70A75D8()
{
  v126 = v0;
  v125[15] = *MEMORY[0x1E69E9840];
  v1 = sub_1C754FEEC();
  v2 = sub_1C755117C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C6F5C000, v1, v2, "Start filtering locations using moment location hierarchy", v3, 2u);
    MEMORY[0x1CCA5F8E0](v3, -1, -1);
  }

  v4 = 0;
  sub_1C754F2CC();
  v7 = *(v0 + 352);
  v8 = *(v0 + 328);
  Generator = type metadata accessor for QueryGenerator();
  v10 = v7 + *(Generator + 24);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v125[0] = *v10;
  LOWORD(v125[1]) = v11;
  v125[2] = v12;
  v13 = v125[0];

  isUniquelyReferenced_nonNull_native = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v8, v125);

  if (qword_1EDD0E038 != -1)
  {
LABEL_82:
    OUTLINED_FUNCTION_3_28();
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v16 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
  *(swift_task_alloc() + 16) = v16;
  sub_1C75504FC();
  v17 = OUTLINED_FUNCTION_6_29();
  v20 = sub_1C706CC1C(v17, v18, v19);

  v21 = *(v20 + 2);
  if (!v21)
  {

    v90 = 0;
    v91 = MEMORY[0x1E69E7CC8];
    goto LABEL_71;
  }

  v113 = 0;
  v22 = 0;
  v102 = (v0 + 272);
  v100 = (v0 + 288);
  v107 = v20 + 32;
  v120 = MEMORY[0x1E69E7CC8];
  v101 = xmmword_1C755BAB0;
  v23 = v21;
  v103 = v0;
  v99 = Generator;
  v123 = isUniquelyReferenced_nonNull_native;
  v106 = v20;
  v105 = v21;
  while (1)
  {
    if (v22 >= v23)
    {
      goto LABEL_80;
    }

    v118 = v22;
    memcpy((v0 + 16), &v107[120 * v22], 0x78uLL);
    v24 = *(v0 + 112);
    if (!v24)
    {
      goto LABEL_66;
    }

    v25 = *(v0 + 80);
    if (v25 && *(v25 + 16))
    {
      sub_1C75504FC();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v26 = swift_allocObject();
      *(v26 + 16) = v101;
      *(v26 + 32) = sub_1C75506FC();
      *(v26 + 40) = v27;
    }

    sub_1C6FCA6E4(v0 + 16, v0 + 136);
    v28 = qword_1EDD09980;
    sub_1C75504FC();
    if (v28 != -1)
    {
      swift_once();
    }

    v29 = unk_1EDD09990;
    *(v0 + 272) = qword_1EDD09988;
    *(v0 + 280) = v29;
    *(swift_task_alloc() + 16) = v102;
    OUTLINED_FUNCTION_6_29();
    v30 = sub_1C70735F4();

    if (!v30)
    {
      break;
    }

    sub_1C6FDD548(v0 + 16);
LABEL_65:
    isUniquelyReferenced_nonNull_native = v123;
LABEL_66:
    v22 = v118 + 1;
    if (v118 + 1 == v105)
    {

      v91 = v120;
      v90 = v113;
LABEL_71:
      *(v0 + 360) = v90;
      *(v0 + 368) = v91;
      sub_1C754F2DC();
      if (v4)
      {
        v92 = *(v0 + 344);

        sub_1C754F2FC();
        OUTLINED_FUNCTION_3();
        (*(v93 + 8))(v92);
        sub_1C6F6E5B4(v90);
        OUTLINED_FUNCTION_44();

        __asm { BRAA            X1, X16 }
      }

      v94 = (*(v0 + 352) + *(Generator + 32));
      v95 = v94[4];
      __swift_project_boxed_opaque_existential_1(v94, v94[3]);
      *(v0 + 304) = v91;
      v122 = *(v95 + 16) + **(v95 + 16);
      v123 = v95 + 16;
      v96 = swift_task_alloc();
      *(v0 + 376) = v96;
      *v96 = v0;
      v96[1] = sub_1C70A8238;
      OUTLINED_FUNCTION_44();

      __asm { BRAA            X6, X16 }
    }

    v23 = *(v106 + 2);
  }

  if (qword_1EDD09968 != -1)
  {
    swift_once();
  }

  v31 = *algn_1EDD09978;
  *(v0 + 288) = qword_1EDD09970;
  *(v0 + 296) = v31;
  *(swift_task_alloc() + 16) = v100;
  OUTLINED_FUNCTION_6_29();
  isUniquelyReferenced_nonNull_native = sub_1C70735F4();

  if (isUniquelyReferenced_nonNull_native)
  {

    sub_1C6FDD548(v0 + 16);
    goto LABEL_65;
  }

  v32 = *(v0 + 24);
  v114 = *(v0 + 16);
  memcpy(v125, (v0 + 16), 0x78uLL);
  sub_1C75504FC();
  QueryToken.groundedLocations()();
  v34 = v33;
  sub_1C6FDD548(v0 + 16);
  v109 = *(v34 + 16);
  if (!v109)
  {

    goto LABEL_65;
  }

  v104 = v32;
  Generator = 0;
  v110 = v34 + 32;
  v119 = v24;
  v108 = v34;
LABEL_26:
  if (Generator >= *(v34 + 16))
  {
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v35 = (v110 + (Generator << 6));
  v37 = *v35;
  v36 = v35[1];
  v39 = v35[2];
  v38 = v35[3];
  v40 = v35[7];
  v41 = *(v24 + 16);
  sub_1C75504FC();
  sub_1C75504FC();
  v121 = v38;
  v122 = v36;
  v117 = v37;
  v116 = v39;
  v115 = v40;
  if (v41 && (v42 = sub_1C6F78124(v37, v36), (v43 & 1) != 0))
  {
    v44 = *(*(v24 + 56) + 8 * v42);
    sub_1C75504FC();
  }

  else
  {
    v44 = MEMORY[0x1E69E7CD0];
  }

  v45 = *(v0 + 328);
  v46 = *(v44 + 32);
  v47 = v46 & 0x3F;
  v48 = ((1 << v46) + 63) >> 6;
  sub_1C75504FC();
  isStackAllocationSafe = sub_1C75504FC();
  if (v47 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v45 = *(v0 + 328), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1C71FAC38(0, v48, &v99 - ((8 * v48 + 15) & 0x3FFFFFFFFFFFFFF0));
    v50 = OUTLINED_FUNCTION_8_20();
    sub_1C70A9104(v50, v51, v52, v53);
    OUTLINED_FUNCTION_12_22();
    if (v45)
    {

      swift_willThrow();

      goto LABEL_78;
    }
  }

  else
  {
    swift_slowAlloc();
    sub_1C75504FC();
    sub_1C75504FC();
    v86 = OUTLINED_FUNCTION_8_20();
    sub_1C70A9074(v86, v87, v88, v89);
    OUTLINED_FUNCTION_12_22();
    if (v45)
    {

      OUTLINED_FUNCTION_37();
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_37();
  }

  isUniquelyReferenced_nonNull_native = v123;
  v24 = v119;
  if (!*(v47 + 16))
  {

    goto LABEL_59;
  }

  v111 = *(v47 + 16);
  v112 = 0;
  v124 = MEMORY[0x1E69E7CD0];
  v54 = -1 << *(v47 + 32);
  if (-v54 < 64)
  {
    v55 = ~(-1 << -v54);
  }

  else
  {
    v55 = -1;
  }

  v56 = v55 & *(v47 + 56);
  v57 = (63 - v54) >> 6;

  v0 = 0;
  while (v56)
  {
    v58 = v56;
LABEL_45:
    v56 = (v58 - 1) & v58;
    if (*(isUniquelyReferenced_nonNull_native + 16))
    {
      v60 = (*(v47 + 48) + ((v0 << 10) | (16 * __clz(__rbit64(v58)))));
      v61 = *v60;
      v4 = v60[1];
      sub_1C75504FC();
      v62 = sub_1C6F78124(v61, v4);
      if (v63)
      {
        v64 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v62);
        v65 = *v64;
        v66 = v64[1];
        sub_1C75504FC();
        v67 = v66;
        isUniquelyReferenced_nonNull_native = v123;
        sub_1C70F082C(v125, v65, v67);
      }
    }
  }

  while (1)
  {
    v59 = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      break;
    }

    if (v59 >= v57)
    {

      v68 = v124;
      sub_1C6F6E5B4(v113);
      v69 = v120;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v125[0] = v69;
      v70 = v104;
      v71 = sub_1C6F78124(v114, v104);
      if (__OFADD__(v69[2], (v72 & 1) == 0))
      {
        goto LABEL_81;
      }

      v73 = v71;
      v74 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216EB8);
      v75 = sub_1C7551A2C();
      v76 = v125[0];
      v120 = v125[0];
      if ((v75 & 1) == 0)
      {
        v0 = v103;
        isUniquelyReferenced_nonNull_native = v123;
        if (v74)
        {
          goto LABEL_58;
        }

LABEL_57:
        sub_1C6FCABE4(v73);
        sub_1C75504FC();
        v76 = v120;
        goto LABEL_58;
      }

      v77 = sub_1C6F78124(v114, v70);
      v0 = v103;
      isUniquelyReferenced_nonNull_native = v123;
      if ((v74 & 1) != (v78 & 1))
      {
        goto LABEL_77;
      }

      v73 = v77;
      v76 = v120;
      if ((v74 & 1) == 0)
      {
        goto LABEL_57;
      }

LABEL_58:
      v79 = v76[7] + 8 * v73;
      sub_1C6FB0AFC();
      v80 = *(*v79 + 16);
      sub_1C6FB1348();
      v81 = *v79;
      *(v81 + 16) = v80 + 1;
      v82 = (v81 + 56 * v80);
      v83 = v122;
      v82[4] = v117;
      v82[5] = v83;
      v84 = v121;
      v82[6] = v116;
      v82[7] = v84;
      v85 = v111;
      v82[8] = v115;
      v82[9] = v85;
      v82[10] = v68;
      v113 = sub_1C6F86C50;
      v24 = v119;
LABEL_59:
      v4 = 0;
      ++Generator;
      v34 = v108;
      if (Generator == v109)
      {

        v4 = 0;
        Generator = v99;
        goto LABEL_66;
      }

      goto LABEL_26;
    }

    v58 = *(v47 + 56 + 8 * v59);
    ++v0;
    if (v58)
    {
      v0 = v59;
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_77:
  sub_1C7551E4C();
LABEL_78:
  OUTLINED_FUNCTION_44();
}

uint64_t sub_1C70A8238()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1C70A8480;
  }

  else
  {

    v2 = sub_1C70A8388;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C70A8388()
{
  v1 = v0[48];
  v3 = v0[32];
  v2 = v0[33];
  sub_1C754F2EC();
  v4 = v0[45];
  if (v1)
  {

    sub_1C6F6E5B4(v4);
  }

  else
  {
    v6 = v0[39];
    sub_1C6F6E5B4(v0[45]);
    *v6 = v3;
    v6[1] = v2;
  }

  OUTLINED_FUNCTION_5_24();

  return v5();
}

uint64_t sub_1C70A8480()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);

  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v2);
  sub_1C6F6E5B4(v1);
  OUTLINED_FUNCTION_5_24();

  return v4();
}

uint64_t sub_1C70A854C(uint64_t a1, void *a2)
{
  v4 = sub_1C754F38C();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[3];
  v64 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v63 = v6;
  sub_1C754F1CC();
  if (qword_1EDD0E038 != -1)
  {
LABEL_50:
    OUTLINED_FUNCTION_3_28();
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v9 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
  MEMORY[0x1EEE9AC00](v9);
  *(&v60 - 2) = v10;
  sub_1C75504FC();
  v11 = a1;
  a1 = 0;
  v12 = sub_1C706CC1C(sub_1C70A97B0, (&v60 - 4), v11);
  v13 = *(v12 + 2);
  if (v13)
  {
    Generator = type metadata accessor for QueryGenerator();
    if (*(v77 + *(Generator + 20)))
    {
      v14 = 0x80000001C7596E70;
    }

    else
    {
      v14 = 0xE800000000000000;
    }

    v15 = *(v77 + *(Generator + 20)) == 1 && 0x80000001C7596E70 == v14;
    v60 = 0;
    if (v15)
    {

      v75 = 0;
      v74 = 10000;
    }

    else
    {
      v16 = sub_1C7551DBC();

      v17 = 10000;
      if ((v16 & 1) == 0)
      {
        v17 = 0;
      }

      v74 = v17;
      v75 = v16 ^ 1;
    }

    v19 = 0;
    v20 = 0;
    v73 = v12 + 32;
    v18 = MEMORY[0x1E69E7CC8];
    v67 = v13;
    v68 = v12;
    while (1)
    {
      if (v20 >= *(v12 + 2))
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      memcpy(__dst, &v73[120 * v20], sizeof(__dst));
      a1 = __dst[12];
      v81 = __dst[12];
      if (!__dst[12] || !*(__dst[12] + 16))
      {
        goto LABEL_43;
      }

      v69 = v20;
      v70 = v18;
      v71 = v19;
      v21 = __dst[12] + 64;
      v22 = 1 << *(__dst[12] + 32);
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v24 = v23 & *(__dst[12] + 64);
      sub_1C6FCA6E4(__dst, v79);
      sub_1C70A96BC(&v81, v79);
      v25 = 0;
      v26 = (v22 + 63) >> 6;
      v72 = MEMORY[0x1E69E7CC8];
      v78 = a1;
      while (v24)
      {
LABEL_28:
        v28 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v29 = v28 | (v25 << 6);
        if (*(*(*(a1 + 56) + 8 * v29) + 16))
        {
          v30 = (*(a1 + 48) + 16 * v29);
          v32 = *v30;
          v31 = v30[1];
          sub_1C75504FC();
          v33 = sub_1C75504FC();
          v34 = sub_1C71CD85C(v33);
          v35 = sub_1C70A8C84(v34);

          v36 = sub_1C706D154(v35);
          v37 = MomentGroundingProcessor.assetUUIDsWithoutLocationDataFromMoments(of:maximumNumberOfAssetsToFetch:)(v36, v74, v75 & 1);

          if (*(v37 + 16))
          {
            sub_1C6F6E5B4(v71);
            v38 = v72;
            LODWORD(v71) = swift_isUniquelyReferenced_nonNull_native();
            v79[0] = v38;
            v62 = v32;
            v39 = sub_1C6F78124(v32, v31);
            if (__OFADD__(*(v38 + 16), (v40 & 1) == 0))
            {
              __break(1u);
LABEL_52:
              result = sub_1C7551E4C();
              __break(1u);
              return result;
            }

            v41 = v39;
            v61 = v40;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
            v42 = sub_1C7551A2C();
            v72 = v79[0];
            if (v42)
            {
              v43 = sub_1C6F78124(v62, v31);
              if ((v61 & 1) != (v44 & 1))
              {
                goto LABEL_52;
              }

              v41 = v43;
              if ((v61 & 1) == 0)
              {
LABEL_35:
                sub_1C6FCABE4(v41);
                goto LABEL_38;
              }
            }

            else if ((v61 & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_38:
            a1 = v78;
            sub_1C739796C(v37);
            v71 = sub_1C6F9EEA8;
          }

          else
          {

            a1 = v78;
          }
        }
      }

      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v27 >= v26)
        {
          break;
        }

        v24 = *(v21 + 8 * v27);
        ++v25;
        if (v24)
        {
          v25 = v27;
          goto LABEL_28;
        }
      }

      a1 = v72;
      if (*(v72 + 16))
      {
        v45 = v70;
        swift_isUniquelyReferenced_nonNull_native();
        v79[0] = v45;
        sub_1C6FC7AB4();
        sub_1C6FDD548(__dst);
        v18 = v79[0];
      }

      else
      {
        sub_1C6FDD548(__dst);

        v18 = v70;
      }

      v13 = v67;
      v12 = v68;
      v19 = v71;
      v20 = v69;
LABEL_43:
      if (++v20 == v13)
      {

        sub_1C75504FC();
        v46 = sub_1C754FEEC();
        v47 = sub_1C755117C();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = v19;
          v50 = swift_slowAlloc();
          v79[0] = v50;
          *v48 = 136315138;
          v51 = sub_1C70A7224(v18);
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
          v53 = MEMORY[0x1CCA5D090](v51, v52);
          v55 = v54;

          v56 = sub_1C6F765A4(v53, v55, v79);

          *(v48 + 4) = v56;
          _os_log_impl(&dword_1C6F5C000, v46, v47, "No location data retrieval results = %s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v50);
          v57 = v50;
          v19 = v49;
          MEMORY[0x1CCA5F8E0](v57, -1, -1);
          OUTLINED_FUNCTION_37();
        }

        goto LABEL_47;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150B0);
  sub_1C6FDE390();
  v18 = sub_1C75504DC();
  v19 = 0;
LABEL_47:
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  v58 = v63;
  sub_1C754F1AC();
  (*(v65 + 8))(v58, v66);
  sub_1C6F6E5B4(v19);
  return v18;
}

void sub_1C70A8DC0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 120);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v24 = a2;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v30 = v33;
    v7 = sub_1C70D4544(v2);
    v8 = 0;
    v9 = v2 + 64;
    v25 = v5;
    v26 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v2 + 36) != v5)
      {
        goto LABEL_24;
      }

      v28 = v8;
      v29 = v5;
      v27 = v6;
      v11 = (*(v2 + 48) + 16 * v7);
      v31 = *v11;
      v32 = v11[1];
      swift_bridgeObjectRetain_n();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v12 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v12);

      v13 = v30;
      v14 = *(v30 + 16);
      if (v14 >= *(v30 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v13 = v30;
      }

      *(v13 + 16) = v14 + 1;
      v15 = v13 + 16 * v14;
      *(v15 + 32) = v31;
      *(v15 + 40) = v32;
      v16 = 1 << *(v2 + 32);
      if (v7 >= v16)
      {
        goto LABEL_25;
      }

      v9 = v2 + 64;
      v17 = *(v2 + 64 + 8 * v10);
      if ((v17 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v30 = v13;
      if (*(v2 + 36) != v29)
      {
        goto LABEL_27;
      }

      v18 = v17 & (-2 << (v7 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v10 << 6;
        v20 = v10 + 1;
        v21 = (v2 + 72 + 8 * v10);
        while (v20 < (v16 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1C6F9ED50(v7, v29, v27 & 1);
            v16 = __clz(__rbit64(v22)) + v19;
            goto LABEL_19;
          }
        }

        sub_1C6F9ED50(v7, v29, v27 & 1);
      }

LABEL_19:
      v6 = 0;
      v8 = v28 + 1;
      v7 = v16;
      v5 = v25;
      if (v28 + 1 == v26)
      {
        a2 = v24;
        v4 = v30;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    *a2 = v4;
  }
}

void *sub_1C70A9074(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_1C70A9104(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1C70A9104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v51 = 0;
    v27 = 0;
    OUTLINED_FUNCTION_0_39();
    v30 = v29 >> 6;
    v31 = v4 + 56;
LABEL_22:
    while (v28)
    {
      OUTLINED_FUNCTION_1_35();
LABEL_29:
      v34 = (*(v5 + 48) + 16 * (v32 | (v27 << 6)));
      v36 = *v34;
      v35 = v34[1];
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_9_2();
      v39 = ~v38;
      do
      {
        v40 = v37 & v39;
        if (((*(v31 + (((v37 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v39)) & 1) == 0)
        {

          v28 = v48;
          goto LABEL_22;
        }

        v41 = (*(a4 + 48) + 16 * v40);
        if (*v41 == v36 && v41[1] == v35)
        {
          break;
        }

        v43 = sub_1C7551DBC();
        v37 = v40 + 1;
      }

      while ((v43 & 1) == 0);

      OUTLINED_FUNCTION_10_24();
      *(a1 + v44) |= v45;
      v26 = __OFADD__(v51++, 1);
      v28 = v48;
      if (v26)
      {
        goto LABEL_44;
      }
    }

    v33 = v27;
    while (1)
    {
      v27 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v27 >= v30)
      {
LABEL_40:

        sub_1C71FFA70();
        return;
      }

      ++v33;
      if (*(v5 + 56 + 8 * v27))
      {
        OUTLINED_FUNCTION_2_25();
        goto LABEL_29;
      }
    }
  }

  else
  {
    v50 = 0;
    v6 = 0;
    v46 = a4 + 56;
    OUTLINED_FUNCTION_0_39();
    v9 = v8 >> 6;
    v10 = v5 + 56;
    v47 = v8 >> 6;
LABEL_3:
    while (v7)
    {
      OUTLINED_FUNCTION_1_35();
LABEL_10:
      v13 = (*(v4 + 48) + 16 * (v11 | (v6 << 6)));
      v15 = *v13;
      v14 = v13[1];
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      sub_1C7551FAC();
      v16 = v5;
      OUTLINED_FUNCTION_9_2();
      v19 = ~v18;
      do
      {
        v20 = v17 & v19;
        v21 = (v17 & v19) >> 6;
        v22 = 1 << (v17 & v19);
        if ((v22 & *(v10 + 8 * v21)) == 0)
        {

          v5 = v16;
          v4 = a4;
          v9 = v47;
          v7 = v48;
          goto LABEL_3;
        }

        v23 = (*(v16 + 48) + 16 * v20);
        if (*v23 == v15 && v23[1] == v14)
        {
          break;
        }

        v25 = sub_1C7551DBC();
        v17 = v20 + 1;
      }

      while ((v25 & 1) == 0);

      v7 = v48;
      *(a1 + 8 * v21) |= v22;
      v26 = __OFADD__(v50++, 1);
      v5 = v16;
      v4 = a4;
      v9 = v47;
      if (v26)
      {
        goto LABEL_43;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v9)
      {
        goto LABEL_40;
      }

      ++v12;
      if (*(v46 + 8 * v6))
      {
        OUTLINED_FUNCTION_2_25();
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_1C70A942C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v39 = 0;
    v20 = 0;
    v21 = 1 << *(a3 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(a3 + 56);
    v24 = (v21 + 63) >> 6;
LABEL_21:
    while (v23)
    {
      v25 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_28:
      v28 = *(*(a3 + 48) + (v25 | (v20 << 6)));
      sub_1C7551F3C();
      MEMORY[0x1CCA5E460](v28);
      sub_1C7551FAC();
      OUTLINED_FUNCTION_9_2();
      v31 = ~v30;
      while (1)
      {
        v32 = v29 & v31;
        if (((*(a4 + 56 + (((v29 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v31)) & 1) == 0)
        {
          break;
        }

        v29 = v32 + 1;
        if (*(*(a4 + 48) + v32) == v28)
        {
          OUTLINED_FUNCTION_10_24();
          *(v34 + v33) |= v35;
          v19 = __OFADD__(v39++, 1);
          if (!v19)
          {
            goto LABEL_21;
          }

          __break(1u);
          goto LABEL_34;
        }
      }
    }

    v26 = v20;
    while (1)
    {
      v20 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v20 >= v24)
      {
LABEL_34:

        sub_1C72000B4();
        return;
      }

      v27 = *(a3 + 56 + 8 * v20);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_28;
      }
    }
  }

  else
  {
    v38 = 0;
    v6 = 0;
    OUTLINED_FUNCTION_0_39();
    v9 = v8 >> 6;
LABEL_3:
    while (v7)
    {
      OUTLINED_FUNCTION_1_35();
LABEL_10:
      v12 = *(*(a4 + 48) + (v10 | (v6 << 6)));
      sub_1C7551F3C();
      MEMORY[0x1CCA5E460](v12);
      sub_1C7551FAC();
      OUTLINED_FUNCTION_9_2();
      v15 = ~v14;
      do
      {
        v16 = v13 & v15;
        v17 = (v13 & v15) >> 6;
        v18 = 1 << (v13 & v15);
        if ((v18 & *(a3 + 56 + 8 * v17)) == 0)
        {
          v7 = v37;
          goto LABEL_3;
        }

        v13 = v16 + 1;
      }

      while (*(*(a3 + 48) + v16) != v12);
      *(a1 + 8 * v17) |= v18;
      v19 = __OFADD__(v38++, 1);
      v7 = v37;
      if (v19)
      {
        goto LABEL_37;
      }
    }

    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v6 >= v9)
      {
        goto LABEL_34;
      }

      ++v11;
      if (*(a4 + 56 + 8 * v6))
      {
        OUTLINED_FUNCTION_2_25();
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1C70A96BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C70A972C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C70A97CC()
{
  result = sub_1C75504DC();
  qword_1EC216ED0 = result;
  return result;
}

uint64_t PersonalEventQueryExpansionDataSource.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

PhotosIntelligence::PersonalEventQueryExpansionDataSource __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PersonalEventQueryExpansionDataSource.init()()
{
  v2 = v0;
  v3 = sub_1C70A98F0();
  if (!v1)
  {
    *v2 = 0x6E6F6973726576;
    v2[1] = 0xE700000000000000;
    v2[2] = v3;
  }

  result.dataSource._rawValue = v5;
  result.personalEventQueryExpansionVersionKey._object = v4;
  result.personalEventQueryExpansionVersionKey._countAndFlagsBits = v3;
  return result;
}

unint64_t sub_1C70A98F0()
{
  v1 = sub_1C754DD2C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  v8 = [objc_allocWithZone(type metadata accessor for StoryRemoteConfiguration()) init];
  v9 = v8;
  sub_1C6F85DE8();
  if (v0)
  {
  }

  else
  {
    v9 = sub_1C70A9E44();
    (*(v2 + 16))(v4, v7, v1);
    v10 = sub_1C7195EE4(v4);
    if (v10 && (v11 = v10, v14 = 0, sub_1C755049C(), v11, (v9 = v14) != 0))
    {

      (*(v2 + 8))(v7, v1);
    }

    else
    {
      sub_1C70A9E88();
      swift_allocError();
      swift_willThrow();

      (*(v2 + 8))(v7, v1);
    }
  }

  return v9;
}

Swift::Int __swiftcall PersonalEventQueryExpansionDataSource.currentVersion()()
{
  v1 = v0;
  v2 = v0[2];
  if (*(v2 + 16) && (v3 = sub_1C6F78124(*v1, v1[1]), (v4 & 1) != 0) && (sub_1C6F774EC(*(v2 + 56) + 32 * v3, v7), OUTLINED_FUNCTION_0_40()))
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

uint64_t PersonalEventQueryExpansionDataSource.expansionQueries(for:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (*(v3 + 16) && (v4 = sub_1C6F78124(a1, a2), (v5 & 1) != 0) && (sub_1C6F774EC(*(v3 + 56) + 32 * v4, v8), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00), OUTLINED_FUNCTION_0_40()))
  {
    return v7;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t PersonalEventQueryExpansionDataSource.localizedExpansionQueries(for:)()
{
  if (qword_1EC213D68 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC216ED0;
  v1 = sub_1C75506FC();
  sub_1C6FE0F8C(v1, v2, v0);
  v4 = v3;

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C754F28C();
  v5 = sub_1C754F27C();

  return v5;
}

unint64_t sub_1C70A9CB4()
{
  result = qword_1EC216ED8;
  if (!qword_1EC216ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216ED8);
  }

  return result;
}

uint64_t sub_1C70A9D08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C70A9D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalEventQueryExpansionDataSource.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C70A9E44()
{
  result = qword_1EDD0CEC0;
  if (!qword_1EDD0CEC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0CEC0);
  }

  return result;
}

unint64_t sub_1C70A9E88()
{
  result = qword_1EC216EE0;
  if (!qword_1EC216EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216EE0);
  }

  return result;
}

id sub_1C70A9EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_1C6FB6304();
  v8 = result;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v8 == v9)
    {

      return v10;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA5DDD0](v9, a1);
    }

    else
    {
      if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      result = *(a1 + 8 * v9 + 32);
    }

    v11 = result;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v22 = result;
    sub_1C70AAAFC(&v22, a2, a3, a4, a5, __src);
    if (v5)
    {

      return v10;
    }

    if (__src[0])
    {
      memcpy(__dst, __src, sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB3198();
        v10 = v13;
      }

      v12 = *(v10 + 16);
      if (v12 >= *(v10 + 24) >> 1)
      {
        sub_1C6FB3198();
        v10 = v14;
      }

      memcpy(v19, __dst, sizeof(v19));
      *(v10 + 16) = v12 + 1;
      result = memcpy((v10 + 80 * v12 + 32), v19, 0x50uLL);
    }

    else
    {
      memcpy(__dst, __src, sizeof(__dst));
      result = sub_1C70AB474(__dst);
    }

    ++v9;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C70AA0C0()
{
  v0 = sub_1C7551B2C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C70AA114(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461727563;
      break;
    case 2:
      result = 0x6974656874736561;
      break;
    case 3:
      result = 0x63536E6F73726570;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C70AA244@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C70AA0C0();
  *a1 = result;
  return result;
}

unint64_t sub_1C70AA274@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C70AA114(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C70AA2BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C70AA10C();
  *a1 = result;
  return result;
}

uint64_t sub_1C70AA2F0(uint64_t a1)
{
  v2 = sub_1C70AB22C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70AA32C(uint64_t a1)
{
  v2 = sub_1C70AB22C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FreeformStoryKeyAssetElector.StochatizedAsset.uuid.getter()
{
  v1 = *(v0 + 8);
  sub_1C75504FC();
  return v1;
}

uint64_t FreeformStoryKeyAssetElector.StochatizedAsset.init(asset:stochatizedCurationScore:stochatizedAestheticScore:stochatizedPersonScore:iconicScoreBucket:hasOnlyAndAllQueryCharacters:landscapeCropScore:portraitCropScore:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>)
{
  v17 = a1;
  result = sub_1C6FCA214(v17);
  if (v19)
  {
    *a4 = v17;
    *(a4 + 8) = result;
    *(a4 + 16) = v19;
    *(a4 + 24) = a5;
    *(a4 + 32) = a6;
    *(a4 + 40) = a7;
    *(a4 + 48) = a2;
    *(a4 + 56) = a3 & 1;
    *(a4 + 64) = a8;
    *(a4 + 72) = a9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id FreeformStoryKeyAssetElector.StochatizedAsset.init(forTestingWith:stochatizedCurationScore:stochatizedAestheticScore:stochatizedPersonScore:iconicScoreBucket:hasOnlyAndAllQueryCharacters:landscapeCropScore:portraitCropScore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>)
{
  result = [objc_allocWithZone(MEMORY[0x1E6978630]) init];
  *a5 = result;
  *(a5 + 8) = a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a6;
  *(a5 + 32) = a7;
  *(a5 + 40) = a8;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  *(a5 + 64) = a9;
  *(a5 + 72) = a10;
  return result;
}

uint64_t FreeformStoryKeyAssetElector.StochatizedAsset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216EE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 48);
  v9[1] = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70AB22C();
  sub_1C755200C();
  v19 = 0;
  v7 = v11;
  sub_1C7551CCC();
  if (!v7)
  {
    v18 = 1;
    OUTLINED_FUNCTION_0_41();
    v17 = 2;
    OUTLINED_FUNCTION_0_41();
    v16 = 3;
    OUTLINED_FUNCTION_0_41();
    v15 = 4;
    sub_1C7551D0C();
    v14 = 5;
    sub_1C7551CDC();
    v13 = 6;
    OUTLINED_FUNCTION_0_41();
    v12 = 7;
    OUTLINED_FUNCTION_0_41();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FreeformStoryKeyAssetElector.StochatizedAsset.description.getter()
{
  v1 = *(v0 + 56);
  sub_1C75504FC();
  sub_1C755180C();
  OUTLINED_FUNCTION_16_6();
  v3 = sub_1C7033D84(v2);
  v4 = MEMORY[0x1CCA5CC40](v3);
  v6 = v5;

  MEMORY[0x1CCA5CD70](v4, v6);

  OUTLINED_FUNCTION_2_26();
  OUTLINED_FUNCTION_16_6();
  sub_1C7550F5C();
  OUTLINED_FUNCTION_2_26();
  OUTLINED_FUNCTION_16_6();
  sub_1C7550F5C();
  OUTLINED_FUNCTION_2_26();
  OUTLINED_FUNCTION_16_6();
  sub_1C7550F5C();
  OUTLINED_FUNCTION_2_26();
  v7 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v7);

  MEMORY[0x1CCA5CD70](0x6E41796C6E6F202CLL, 0xED00003D6C6C4164);
  if (v1)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v1)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v8, v9);

  MEMORY[0x1CCA5CD70](0x3D73636C202CLL, 0xE600000000000000);
  OUTLINED_FUNCTION_16_6();
  sub_1C7550F5C();
  OUTLINED_FUNCTION_2_26();
  OUTLINED_FUNCTION_16_6();
  sub_1C7550F5C();
  MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
  return 0;
}

id FreeformStoryKeyAssetElector.stochatizedAssets(from:in:randomizer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(a2 + 32) + 16);

  return sub_1C70A9EDC(a1, v3, a3, a2, v7);
}

uint64_t sub_1C70AAA48(uint64_t result, double a2, double a3)
{
  if (a3 < 0.0)
  {
    __break(1u);
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_0(result, *(result + 24));
    sub_1C70AB55C();
    sub_1C70AB5B0();
    return sub_1C755046C();
  }

  return result;
}

uint64_t sub_1C70AAAFC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, id a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  [*a1 curationScore];
  v12 = a2 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_configuration;
  sub_1C70AAA48(a3, v13, *(a2 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_configuration + 8));
  v15 = v14;
  [v11 overallAestheticScore];
  sub_1C70AAA48(a3, v16, *(v12 + 24));
  v18 = v17;
  v19 = sub_1C70AAD04(v11, *(a4 + 32));
  v21 = v20;
  sub_1C70AAA48(a3, v22, *(v12 + 40));
  v24 = v23;
  v25 = [v11 curationModel];
  v26 = [v25 iconicScoreModel];

  [v11 clsIconicScore];
  v27 = [v26 bucketForIconicScore_];

  v28 = [v11 clsPersonAndPetLocalIdentifiers];
  v29 = sub_1C7550B5C();

  v30 = *(v29 + 16);

  v31 = v30 != 0;
  [v11 cropScoreForTargetAspectRatio:v31 forFaces:1.33];
  v33 = v32;
  [v11 cropScoreForTargetAspectRatio:v31 forFaces:0.75];
  v35 = v34;
  v36 = v11;
  result = sub_1C6FCA214(v36);
  if (v38)
  {
    v40 = v19 == a5 && v21 == 0;
    *a6 = v36;
    *(a6 + 8) = result;
    *(a6 + 16) = v38;
    *(a6 + 24) = v15;
    *(a6 + 32) = v18;
    *(a6 + 40) = v24;
    *(a6 + 48) = v27;
    *(a6 + 56) = v40;
    *(a6 + 64) = v33;
    *(a6 + 72) = v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C70AAD04(void *a1, uint64_t a2)
{
  v3 = [a1 clsFaceInformationSummary];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_1C70AB4DC(v3);
  if (!v5)
  {
    v43 = 0;
LABEL_50:

    return v43;
  }

  v6 = v5;
  v46 = v4;
  v7 = v5 + 64;
  v8 = 1 << *(v5 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v49 = a2 + 56;
  v50 = a2;
  result = sub_1C75504FC();
  v13 = 0;
  v47 = 0;
  v48 = 0;
  v14 = 0.0;
LABEL_7:
  while (1)
  {
    v15 = v13;
    if (!v10)
    {
      break;
    }

LABEL_11:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = v16 | (v13 << 6);
    v18 = (*(v6 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(v6 + 56) + 8 * v17);
    sub_1C6F65BE8(0, &qword_1EDD100F0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1C75504FC();
    v23 = v21;
    v24 = sub_1C74B7450(v19, v20, ObjCClassFromMetadata);
    if (v25)
    {
      v26 = v25;
      if (*(v50 + 16))
      {
        v27 = v24;
        sub_1C7551F3C();
        v44 = v23;
        sub_1C75505AC();
        v28 = sub_1C7551FAC();
        v45 = ~(-1 << *(v50 + 32));
        while (1)
        {
          v29 = v28 & v45;
          if (((*(v49 + (((v28 & v45) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v45)) & 1) == 0)
          {
            break;
          }

          v30 = (*(v50 + 48) + 16 * v29);
          if (*v30 != v27 || v26 != v30[1])
          {
            v32 = sub_1C7551DBC();
            v28 = v29 + 1;
            if ((v32 & 1) == 0)
            {
              continue;
            }
          }

          if ([v44 faceIsGood])
          {
            result = [v44 faceSizeIsGood];
            if (result)
            {
              v33 = __OFADD__(v47++, 1);
              if (v33)
              {
                goto LABEL_54;
              }
            }
          }

          if ([v44 faceIsGood])
          {

            v34 = 1.0;
          }

          else if ([v44 faceIsOk])
          {

            v34 = 0.5;
          }

          else
          {
            [v44 faceSize];
            v36 = v35;

            v34 = 0.0;
            if (v36 > 0.0)
            {
              v34 = 0.1;
            }
          }

          v14 = v14 + v34;
          goto LABEL_7;
        }
      }

      else
      {
        v37 = v23;
      }

      v33 = __OFADD__(v48++, 1);
      if (v33)
      {
        goto LABEL_53;
      }

      if ([v23 isHiddenPerson])
      {

        v14 = v14 + -1000.0;
      }

      else
      {
        v38 = [v23 isKnownPerson];
        v39 = [v23 faceIsGood];
        if (v38)
        {
          if (v39)
          {

            v40 = 0.25;
          }

          else
          {
            v41 = [v23 faceIsOk];

            if (v41)
            {
              v40 = 0.375;
            }

            else
            {
              v40 = 0.5;
            }
          }
        }

        else if (v39)
        {

          v40 = 0.5;
        }

        else
        {
          v42 = [v23 faceIsOk];

          if (v42)
          {
            v40 = 0.625;
          }

          else
          {
            v40 = 0.75;
          }
        }

        v14 = v14 - v40;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      v4 = v46;
      v43 = v47;
      goto LABEL_50;
    }

    v10 = *(v7 + 8 * v13);
    ++v15;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t static FreeformStoryKeyAssetElector.compare(_:to:hasQueryCharacters:prioritizeIconic:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = *(a2 + 40);
  if (a4)
  {
    v18 = *(a1 + 48);
    v19 = *(a2 + 48);
    if (v18 != v19)
    {
      return v19 < v18;
    }
  }

  if ((a3 & 1) != 0 && v12 != v17)
  {
    return v17 < v12;
  }

  if (v11 != v16)
  {
    return v16 < v11;
  }

  if (v10 != v15)
  {
    return v15 < v10;
  }

  if (v12 != v17)
  {
    return v17 < v12;
  }

  if (v13 == v8 && v14 == v9)
  {
    return 0;
  }

  else
  {
    return sub_1C7551DBC();
  }
}

unint64_t sub_1C70AB22C()
{
  result = qword_1EC216EF0;
  if (!qword_1EC216EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216EF0);
  }

  return result;
}

_BYTE *_s16StochatizedAssetV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C70AB370()
{
  result = qword_1EC216EF8;
  if (!qword_1EC216EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216EF8);
  }

  return result;
}

unint64_t sub_1C70AB3C8()
{
  result = qword_1EC216F00;
  if (!qword_1EC216F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216F00);
  }

  return result;
}

unint64_t sub_1C70AB420()
{
  result = qword_1EC216F08;
  if (!qword_1EC216F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216F08);
  }

  return result;
}

uint64_t sub_1C70AB474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C70AB4DC(void *a1)
{
  v1 = [a1 faceInformationByPersonLocalIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C6F65BE8(0, &unk_1EDD069A0);
  v3 = sub_1C75504AC();

  return v3;
}

unint64_t sub_1C70AB55C()
{
  result = qword_1EDD06C98;
  if (!qword_1EDD06C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06C98);
  }

  return result;
}

unint64_t sub_1C70AB5B0()
{
  result = qword_1EDD06838;
  if (!qword_1EDD06838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06838);
  }

  return result;
}

uint64_t StoryGenerationSummary.AssetStage.description.getter()
{
  v1 = *(v0 + 8);
  switch(*(v0 + 24))
  {
    case 1:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v24 = v16;
      OUTLINED_FUNCTION_48_9();
      v3 = 0x6E69747265502022;
      v4 = 0xED0000203A746E65;
      break;
    case 2:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v13 - 1;
      goto LABEL_20;
    case 3:
    case 5:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v17 + 9;
      goto LABEL_20;
    case 4:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v10 + 13;
      goto LABEL_20;
    case 6:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_16_18();
      v3 = v19 + 25;
      goto LABEL_17;
    case 7:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v15 + 10;
      goto LABEL_20;
    case 8:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v21 | 6;
      goto LABEL_20;
    case 9:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v12 + 18;
      goto LABEL_20;
    case 0xA:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_16_18();
      v3 = v20 + 75;
      goto LABEL_17;
    case 0xB:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v9 + 19;
      goto LABEL_20;
    case 0xC:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v11 + 15;
      goto LABEL_20;
    case 0xD:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v18 + 16;
      goto LABEL_20;
    case 0xE:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v7 + 20;
LABEL_20:
      v24 = v8;
      goto LABEL_21;
    case 0xF:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_48_9();
      OUTLINED_FUNCTION_16_18();
      v3 = v14 + 45;
      goto LABEL_17;
    case 0x10:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      sub_1C75504FC();

      v24 = v1;
      OUTLINED_FUNCTION_16_18();
      v3 = v6 + 17;
LABEL_17:
      v4 = v5 | 0x8000000000000000;
      break;
    default:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v24 = v2;
      OUTLINED_FUNCTION_48_9();
      v3 = 2112034;
      v4 = 0xE300000000000000;
      break;
  }

  MEMORY[0x1CCA5CD70](v3, v4);
LABEL_21:
  v22 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v22);

  return v24;
}

Swift::String __swiftcall StoryGenerationSummary.screeningDescription()()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v4 = *(v0 + 32);
  v78 = *(v0 + 48);
  v79 = *(v0 + 24);
  v83 = *(v0 + 56);
  v81 = *(v0 + 88);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);
  v84 = *(v0 + 232);
  if (v1)
  {
    v8 = *v0;
  }

  else
  {
    v8 = 0x474E495353494DLL;
  }

  if (v1)
  {
    v9 = *(v0 + 8);
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  v90 = 0xD00000000000001ELL;
  v91 = 0x80000001C759C110;
  if (v2 == 5)
  {
    sub_1C75504FC();
    sub_1C755180C();

    strcpy(&v87, "\nUser Prompt: ");
    HIBYTE(v87) = -18;
  }

  else
  {
    *&v87 = 0;
    *(&v87 + 1) = 0xE000000000000000;
    sub_1C75504FC();
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C759C420);
    sub_1C73E6820(v2);
    MEMORY[0x1CCA5CD70](2112041, 0xE300000000000000);
  }

  MEMORY[0x1CCA5CD70](v8, v9);

  OUTLINED_FUNCTION_18_13();
  OUTLINED_FUNCTION_24_16();

  if (v6)
  {
    strcpy(&v87, "Story title: ");
    HIWORD(v87) = -4864;
    MEMORY[0x1CCA5CD70](v5, v6);
    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_24_16();
  }

  v10 = 0xD000000000000011;
  if (v3 <= 0xFD)
  {
    strcpy(&v87, "Story type: ");
    BYTE13(v87) = 0;
    HIWORD(v87) = -5120;
    v11 = 0xE600000000000000;
    v12 = 0x79636167656CLL;
    switch(v3 >> 5)
    {
      case 1u:
        OUTLINED_FUNCTION_3_1();
        if (v3)
        {
          v12 = 0xD00000000000001BLL;
        }

        else
        {
          v12 = 0xD00000000000001ALL;
        }

        if (v3)
        {
          v11 = v13;
        }

        else
        {
          v11 = 0x80000001C759A8B0;
        }

        break;
      case 2u:
        OUTLINED_FUNCTION_3_1();
        if (v3 == 64)
        {
          v12 = 0xD000000000000012;
        }

        else
        {
          v12 = 0xD00000000000001FLL;
        }

        if (v3 == 64)
        {
          v11 = v14;
        }

        else
        {
          v11 = 0x80000001C759C3A0;
        }

        break;
      case 3u:
        if (v3 == 96)
        {
          v12 = 0x6F7365527473616CLL;
        }

        else
        {
          v12 = 0xD000000000000013;
        }

        if (v3 == 96)
        {
          v11 = 0xEA00000000007472;
        }

        else
        {
          v11 = 0x80000001C759C380;
        }

        break;
      case 4u:
        break;
      default:
        if (v3)
        {
          v11 = 0x80000001C759C400;
        }

        else
        {
          v11 = 0x80000001C759C3E0;
        }

        v12 = 0xD000000000000011;
        break;
    }

    MEMORY[0x1CCA5CD70](v12, v11);

    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_24_16();
  }

  if (v4)
  {
    OUTLINED_FUNCTION_3_1();
    *&v87 = 0xD000000000000026;
    *(&v87 + 1) = v15;
    MEMORY[0x1CCA5CD70](v79, v4);
    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_24_16();
  }

  if (*(v81 + 16))
  {
    OUTLINED_FUNCTION_3_1();
    *&v87 = 0xD000000000000019;
    *(&v87 + 1) = v16;
    v17 = MEMORY[0x1CCA5D090]();
    MEMORY[0x1CCA5CD70](v17);

    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_36_9();
  }

  if (*(v7 + 16))
  {
    MEMORY[0x1CCA5CD70](0xD00000000000001CLL, 0x80000001C759C130);
    v18 = v7 + 64;
    v19 = 1 << *(v7 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v7 + 64);
    v22 = (v19 + 63) >> 6;
    v82 = v7;
    sub_1C75504FC();
    v23 = 0;
    while (v21)
    {
      v24 = v21;
LABEL_52:
      v21 = (v24 - 1) & v24;
      if (*(v84 + 16))
      {
        v26 = (v23 << 10) | (16 * __clz(__rbit64(v24)));
        v27 = (*(v82 + 48) + v26);
        v10 = *v27;
        v28 = v27[1];
        v29 = (*(v82 + 56) + v26);
        v30 = v29[1];
        v80 = *v29;
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        v31 = sub_1C7551FAC();
        v32 = ~(-1 << *(v84 + 32));
        while (1)
        {
          v33 = v31 & v32;
          if (((*(v84 + 56 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
          {
            break;
          }

          v34 = (*(v84 + 48) + 16 * v33);
          if (*v34 != v10 || v34[1] != v28)
          {
            v36 = sub_1C7551DBC();
            v31 = v33 + 1;
            if ((v36 & 1) == 0)
            {
              continue;
            }
          }

          OUTLINED_FUNCTION_52_9();
          MEMORY[0x1CCA5CD70](v10, v28);

          MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
          MEMORY[0x1CCA5CD70](v80, v30);

          OUTLINED_FUNCTION_18_13();
          OUTLINED_FUNCTION_36_9();
          goto LABEL_62;
        }

LABEL_62:
      }
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v22)
      {

        v10 = 0xD000000000000011;
        goto LABEL_64;
      }

      v24 = *(v18 + 8 * v25);
      ++v23;
      if (v24)
      {
        v23 = v25;
        goto LABEL_52;
      }
    }

LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

LABEL_64:
  if (qword_1EDD0A988 != -1)
  {
LABEL_92:
    swift_once();
  }

  v37 = 0x64656C6261736964;
  v38 = byte_1EC218F88;
  *&v87 = 0;
  *(&v87 + 1) = 0xE000000000000000;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](v10 + 8, 0x80000001C759C150);
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](2592, 0xE200000000000000);
  OUTLINED_FUNCTION_36_9();

  MEMORY[0x1CCA5CD70](v10 + 11, 0x80000001C759C170);
  OUTLINED_FUNCTION_3_1();
  *&v87 = v10 + 29;
  *(&v87 + 1) = v39;
  type metadata accessor for LLMWrapperUtils();
  OUTLINED_FUNCTION_27_15();
  static LLMWrapperUtils.queryUnderstandingModelType(for:)(v40);
  v41 = static LLMConfiguration.modelCatalogResourceID(for:)(&v86);
  MEMORY[0x1CCA5CD70](v41);

  OUTLINED_FUNCTION_18_13();
  OUTLINED_FUNCTION_24_16();

  OUTLINED_FUNCTION_3_1();
  *&v87 = v10 + 23;
  *(&v87 + 1) = v42;
  OUTLINED_FUNCTION_27_15();
  static LLMWrapperUtils.globalTraitsModelType(for:)(v43);
  v44 = static LLMConfiguration.modelCatalogResourceID(for:)(&v86);
  MEMORY[0x1CCA5CD70](v44);

  OUTLINED_FUNCTION_18_13();
  OUTLINED_FUNCTION_24_16();

  OUTLINED_FUNCTION_3_1();
  *&v87 = v10 + 21;
  *(&v87 + 1) = v45;
  OUTLINED_FUNCTION_27_15();
  static LLMWrapperUtils.storytellerModelType(for:)(v46);
  v47 = static LLMConfiguration.modelCatalogResourceID(for:)(&v86);
  MEMORY[0x1CCA5CD70](v47);

  OUTLINED_FUNCTION_18_13();
  OUTLINED_FUNCTION_36_9();

  v48 = objc_opt_self();
  if ([v48 generateOnDeviceTitle] && (type metadata accessor for FreeformStoryGenerator(), LOBYTE(v87) = v38, (static FreeformStoryGenerator.usingFallbackTitle(for:)(&v87) & 1) == 0))
  {
    sub_1C754E43C();
    __swift_project_boxed_opaque_existential_1(&v87, v89);
    OUTLINED_FUNCTION_51();
    v50 = sub_1C754E4DC();
    v49 = v51;
    __swift_destroy_boxed_opaque_existential_1(&v87);
  }

  else
  {
    v49 = 0xE800000000000000;
    v50 = 0x64656C6261736964;
  }

  OUTLINED_FUNCTION_3_1();
  *&v87 = v10 + 16;
  *(&v87 + 1) = v52;
  MEMORY[0x1CCA5CD70](v50, v49);

  OUTLINED_FUNCTION_18_13();
  OUTLINED_FUNCTION_24_16();

  if (!v38)
  {
    v53 = 1;
LABEL_73:
    OUTLINED_FUNCTION_3_1();
    v85 = v54;
    sub_1C754E49C();
    __swift_project_boxed_opaque_existential_1(&v87, v89);
    OUTLINED_FUNCTION_51();
    v55 = sub_1C754E4DC();
    v57 = v56;
    __swift_destroy_boxed_opaque_existential_1(&v87);
    MEMORY[0x1CCA5CD70](v55, v57);

    MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
    MEMORY[0x1CCA5CD70](v10 + 24, v85);

    if (!v53)
    {
      goto LABEL_78;
    }

    goto LABEL_74;
  }

  if (v38 != 1)
  {
    v53 = 0;
    goto LABEL_73;
  }

LABEL_74:
  if ([v48 useOnDeviceAssetCurationOutlier])
  {
    sub_1C754E4CC();
    __swift_project_boxed_opaque_existential_1(&v87, v89);
    v37 = sub_1C754E4DC();
    v59 = v58;
    __swift_destroy_boxed_opaque_existential_1(&v87);
  }

  else
  {
    v59 = 0xE800000000000000;
  }

  *&v87 = 0;
  *(&v87 + 1) = 0xE000000000000000;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](v10 + 31, 0x80000001C759C250);
  MEMORY[0x1CCA5CD70](v37, v59);

  OUTLINED_FUNCTION_18_13();
  MEMORY[0x1CCA5CD70](v87, *(&v87 + 1));

LABEL_78:
  MEMORY[0x1CCA5CD70](v10 + 23, 0x80000001C759C290);
  v60 = *(v78 + 16);
  if (v60)
  {
    v61 = (v78 + 56);
    do
    {
      v62 = *(v61 - 1);
      v63 = *v61;
      v87 = *(v61 - 24);
      v88 = v62;
      LOBYTE(v89) = v63;
      v64 = StoryGenerationSummary.AssetStage.description.getter();
      MEMORY[0x1CCA5CD70](v64);

      MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
      MEMORY[0x1CCA5CD70](9, 0xE100000000000000);

      v61 += 32;
      --v60;
    }

    while (v60);
  }

  MEMORY[0x1CCA5CD70](v10 + 12, 0x80000001C759C2C0);
  OUTLINED_FUNCTION_11();
  v67 = v66 & v65;
  v69 = (v68 + 63) >> 6;
  sub_1C75504FC();
  v70 = 0;
  if (v67)
  {
    while (1)
    {
      v71 = v70;
LABEL_87:
      v72 = (*(v83 + 48) + 16 * (__clz(__rbit64(v67)) | (v71 << 6)));
      v73 = *v72;
      v10 = v72[1];
      v67 &= v67 - 1;
      OUTLINED_FUNCTION_52_9();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v73, v10);

      MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C759C2E0);
      v74 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v74);

      MEMORY[0x1CCA5CD70](0xA73656D697420, 0xE700000000000000);
      MEMORY[0x1CCA5CD70](v87, *(&v87 + 1));

      if (!v67)
      {
        goto LABEL_83;
      }
    }
  }

  while (1)
  {
LABEL_83:
    v71 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      __break(1u);
      goto LABEL_91;
    }

    if (v71 >= v69)
    {
      break;
    }

    v67 = *(v83 + 64 + 8 * v71);
    ++v70;
    if (v67)
    {
      v70 = v71;
      goto LABEL_87;
    }
  }

  v75 = v90;
  v76 = v91;
  result._object = v76;
  result._countAndFlagsBits = v75;
  return result;
}

Swift::String __swiftcall StoryGenerationSummary.fullDescription()()
{
  v2 = type metadata accessor for PersonalTrait();
  v135 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_35_8();
  type metadata accessor for GlobalTrait();
  OUTLINED_FUNCTION_3_0();
  v137 = v3;
  v138 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v135 - v8);
  memcpy(v160, v0, sizeof(v160));
  v10 = *(v0 + 72);
  v11 = *(v0 + 88);
  v146 = *(v0 + 80);
  v147 = v11;
  v12 = *(v0 + 104);
  v148 = *(v0 + 96);
  v149 = v12;
  v13 = *(v0 + 120);
  v150 = *(v0 + 112);
  v151 = v13;
  v14 = *(v0 + 136);
  v152 = *(v0 + 128);
  v153 = v14;
  v16 = *(v0 + 144);
  v15 = *(v0 + 152);
  v143 = v10;
  v144 = v16;
  v154 = v15;
  v17 = *(v0 + 168);
  v145 = *(v0 + 160);
  v155 = v17;
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  v21 = *(v0 + 192);
  v20 = *(v0 + 200);
  v178 = *(v0 + 208);
  *&v180 = 0;
  *(&v180 + 1) = 0xE000000000000000;
  sub_1C755180C();
  v141 = *(&v180 + 1);
  v161 = v143;
  v162 = v146;
  v163 = v147;
  v164 = v148;
  v165 = v149;
  v166 = v150;
  v167 = v151;
  v168 = v152;
  v169 = v153;
  v170 = v144;
  v171 = v154;
  v172 = v145;
  v173 = v155;
  v156 = v18;
  v174 = v18;
  v175 = v19;
  v142 = v19;
  v136 = v21;
  v176 = v21;
  v177 = v20;
  v140 = v20;
  v139 = *(v0 + 224);
  v179 = v139;
  v22 = StoryGenerationSummary.screeningDescription()();

  *v160 = v22;
  OUTLINED_FUNCTION_16_18();
  MEMORY[0x1CCA5CD70](v23 + 7, v24 | 0x8000000000000000);
  v180 = *v160;
  if (v146)
  {
    strcpy(v160, "QU Result: ");
    *&v160[12] = -352321536;
    MEMORY[0x1CCA5CD70](v143);
    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_38_9();
  }

  v25 = v147;
  if (*(v147 + 16))
  {
    *v160 = 0;
    *&v160[8] = 0xE000000000000000;
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *v160 = 0xD000000000000019;
    *&v160[8] = v26;
    v27 = MEMORY[0x1CCA5D090](v25, &type metadata for QueryToken);
    MEMORY[0x1CCA5CD70](v27);

    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_38_9();
  }

  if (*(v148 + 16))
  {
    OUTLINED_FUNCTION_3_1();
    *v160 = 0xD00000000000001CLL;
    *&v160[8] = v28;
    v30 = MEMORY[0x1CCA5D090](v29);
    MEMORY[0x1CCA5CD70](v30);

    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_38_9();
  }

  v31 = v149;
  if (*(v149 + 16))
  {
    OUTLINED_FUNCTION_3_1();
    *v160 = 0xD000000000000012;
    *&v160[8] = v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
    v34 = MEMORY[0x1CCA5D090](v31, v33);
    v31 = v160;
    MEMORY[0x1CCA5CD70](v34);

    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_38_9();
  }

  v35 = v150;
  if (*(v150 + 16))
  {
    OUTLINED_FUNCTION_16_18();
    OUTLINED_FUNCTION_49_8();
    v36 = *(v35 + 16);
    if (v36)
    {
      OUTLINED_FUNCTION_15_4();
      v38 = v35 + v37;
      v40 = *(v39 + 72);
      do
      {
        v41 = OUTLINED_FUNCTION_23_15();
        sub_1C70AE8B4(v41, v9, v42);
        v43 = v9[1];
        *v160 = *v9;
        *&v160[8] = v43;
        sub_1C75504FC();
        OUTLINED_FUNCTION_26_15();
        OUTLINED_FUNCTION_22_19();
        sub_1C70AE9EC(v9, v44);
        v158 = v31;
        v45 = sub_1C7551D8C();
        v31 = v160;
        MEMORY[0x1CCA5CD70](v45);

        OUTLINED_FUNCTION_43_10();
        OUTLINED_FUNCTION_46_9();

        v38 += v40;
        --v36;
      }

      while (v36);
    }
  }

  v46 = v151;
  if (*(v151 + 16))
  {
    OUTLINED_FUNCTION_16_18();
    OUTLINED_FUNCTION_49_8();
    v47 = *(v46 + 16);
    if (v47)
    {
      OUTLINED_FUNCTION_15_4();
      v49 = v46 + v48;
      v51 = *(v50 + 72);
      do
      {
        v52 = OUTLINED_FUNCTION_23_15();
        sub_1C70AE8B4(v52, v6, v53);
        v54 = v6[1];
        *v160 = *v6;
        *&v160[8] = v54;
        sub_1C75504FC();
        OUTLINED_FUNCTION_26_15();
        OUTLINED_FUNCTION_22_19();
        sub_1C70AE9EC(v6, v55);
        v158 = v31;
        v56 = sub_1C7551D8C();
        v31 = v160;
        MEMORY[0x1CCA5CD70](v56);

        OUTLINED_FUNCTION_43_10();
        OUTLINED_FUNCTION_46_9();

        v49 += v51;
        --v47;
      }

      while (v47);
    }
  }

  v57 = v152;
  if (*(v152 + 16))
  {
    OUTLINED_FUNCTION_49_8();
    v58 = *(v57 + 16);
    if (v58)
    {
      OUTLINED_FUNCTION_15_4();
      v60 = v57 + v59;
      v62 = *(v61 + 72);
      do
      {
        sub_1C70AE8B4(v60, v1, type metadata accessor for PersonalTrait);
        v63 = v1[1];
        *v160 = *v1;
        *&v160[8] = v63;
        sub_1C75504FC();
        OUTLINED_FUNCTION_26_15();
        v64 = *(v1[2] + 16);
        sub_1C70AE9EC(v1, type metadata accessor for PersonalTrait);
        v158 = v64;
        v65 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v65);

        MEMORY[0x1CCA5CD70](0xA73746573736120, 0xE800000000000000);
        OUTLINED_FUNCTION_46_9();

        v60 += v62;
        --v58;
      }

      while (v58);
    }
  }

  v66 = v153;
  if (v153)
  {
    OUTLINED_FUNCTION_49_8();
    v158 = v66;
    v159 = v144;
    *v160 = PersonalTraitSelector.SelectionResult.description.getter();
    *&v160[8] = v67;
    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_30_12();
  }

  v68 = v154;
  v69 = v142;
  if (*(v154 + 16))
  {
    OUTLINED_FUNCTION_49_8();
    v70 = *(v68 + 16);
    if (v70)
    {
      v71 = v68 + 32;
      do
      {
        sub_1C6FB5E28(v71, v160);
        v72 = *&v160[32];
        __swift_project_boxed_opaque_existential_1(v160, *&v160[24]);
        v73 = OUTLINED_FUNCTION_51();
        v158 = v74(v73, v72);
        v159 = v75;
        MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
        v76 = *&v160[32];
        __swift_project_boxed_opaque_existential_1(v160, *&v160[24]);
        v77 = OUTLINED_FUNCTION_51();
        v79 = v78(v77, v76);
        __swift_destroy_boxed_opaque_existential_1(v160);
        v80 = *(v79 + 16);

        v157 = v80;
        v81 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v81);

        MEMORY[0x1CCA5CD70](0xA73746573736120, 0xE800000000000000);
        MEMORY[0x1CCA5CD70](v158, v159);

        v71 += 40;
        --v70;
      }

      while (v70);
    }
  }

  if (v155)
  {
    OUTLINED_FUNCTION_3_1();
    *v160 = 0xD000000000000019;
    *&v160[8] = v82;
    MEMORY[0x1CCA5CD70](v145);
    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_30_12();
  }

  v83 = v156;
  if (v156[2])
  {
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](0xD00000000000001DLL, 0x80000001C759C4B0);
    v84 = 0;
    v85 = v83 + 8;
    OUTLINED_FUNCTION_11();
    v90 = v89 & v88;
    v92 = (v91 + 63) >> 6;
    if ((v89 & v88) == 0)
    {
      goto LABEL_32;
    }

    do
    {
      v93 = v84;
LABEL_36:
      v94 = __clz(__rbit64(v90));
      v90 &= v90 - 1;
      v95 = (v93 << 10) | (16 * v94);
      v96 = (v156[6] + v95);
      v97 = *v96;
      v98 = v96[1];
      v99 = (v156[7] + v95);
      v100 = *v99;
      v101 = v99[1];
      strcpy(v160, "Chapter ");
      v160[9] = 0;
      *&v160[10] = 0;
      *&v160[12] = -402653184;
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v97, v98);

      OUTLINED_FUNCTION_26_15();
      MEMORY[0x1CCA5CD70](v100, v101);

      OUTLINED_FUNCTION_19_17();
      OUTLINED_FUNCTION_30_12();
    }

    while (v90);
LABEL_32:
    while (1)
    {
      v93 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        break;
      }

      if (v93 >= v92)
      {

        v69 = v142;
        goto LABEL_39;
      }

      v90 = v85[v93];
      ++v84;
      if (v90)
      {
        v84 = v93;
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_65;
  }

LABEL_39:
  if (v69[2])
  {
    sub_1C75504FC();
    v102 = OUTLINED_FUNCTION_44_9();
    MEMORY[0x1CCA5CD70](v102);
    v103 = 0;
    OUTLINED_FUNCTION_11();
    v106 = v105 & v104;
    v108 = (v107 + 63) >> 6;
    if ((v105 & v104) == 0)
    {
      goto LABEL_42;
    }

    do
    {
      v109 = v103;
LABEL_46:
      v110 = __clz(__rbit64(v106));
      v106 &= v106 - 1;
      v111 = (v109 << 10) | (16 * v110);
      v112 = (v69[6] + v111);
      v113 = v112[1];
      v114 = (v69[7] + v111);
      v115 = *v114;
      v116 = v114[1];
      *v160 = *v112;
      *&v160[8] = v113;
      sub_1C75504FC();
      sub_1C75504FC();
      OUTLINED_FUNCTION_26_15();
      MEMORY[0x1CCA5CD70](v115, v116);

      OUTLINED_FUNCTION_19_17();
      OUTLINED_FUNCTION_30_12();
    }

    while (v106);
LABEL_42:
    while (1)
    {
      v109 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        break;
      }

      if (v109 >= v108)
      {

        goto LABEL_49;
      }

      v106 = v69[v109 + 8];
      ++v103;
      if (v106)
      {
        v103 = v109;
        goto LABEL_46;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_49:
  if (v140)
  {
    *v160 = 0x6F2079726F74530ALL;
    *&v160[8] = 0xEF0A3A7463656A62;
    MEMORY[0x1CCA5CD70](v136);
    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_30_12();
  }

  v117 = v139;
  if (*(v139 + 16))
  {
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C759C470);
    v118 = 0;
    v119 = v117 + 64;
    OUTLINED_FUNCTION_11();
    v122 = v121 & v120;
    v124 = (v123 + 63) >> 6;
    v155 = v117;
    if ((v121 & v120) != 0)
    {
      goto LABEL_57;
    }

    while (1)
    {
      v125 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        goto LABEL_66;
      }

      if (v125 >= v124)
      {

        break;
      }

      v122 = *(v119 + 8 * v125);
      ++v118;
      if (v122)
      {
        v118 = v125;
        do
        {
LABEL_57:
          v126 = (v118 << 10) | (16 * __clz(__rbit64(v122)));
          v127 = *(v117 + 56);
          v128 = (*(v117 + 48) + v126);
          v130 = *v128;
          v129 = v128[1];
          v131 = (v127 + v126);
          v132 = v131[1];
          v156 = *v131;
          *v160 = v130;
          *&v160[8] = v129;
          v158 = 0x6D726F6665657266;
          v159 = 0xE800000000000000;
          sub_1C6FB5E8C();
          sub_1C75504FC();
          sub_1C75504FC();
          if (sub_1C75515AC())
          {
            *v160 = 9;
            *&v160[8] = 0xE100000000000000;
            MEMORY[0x1CCA5CD70](v130, v129);

            OUTLINED_FUNCTION_26_15();
            MEMORY[0x1CCA5CD70](v156, v132);

            OUTLINED_FUNCTION_19_17();
            MEMORY[0x1CCA5CD70](*v160, *&v160[8]);
          }

          else
          {
          }

          v122 &= v122 - 1;

          v117 = v155;
        }

        while (v122);
      }
    }
  }

  v133 = v180;
  v87 = (v133 >> 64);
  v86 = v133;
LABEL_67:
  result._object = v87;
  result._countAndFlagsBits = v86;
  return result;
}

uint64_t sub_1C70AD0EC()
{
  v3 = *(v0 + 48);
  v118 = *(v3 + 16);
  if (v118)
  {
    OUTLINED_FUNCTION_3_1();
    v117 = v4;
    OUTLINED_FUNCTION_39_12();
    OUTLINED_FUNCTION_3_1();
    v115 = v5;
    v116 = v6;
    OUTLINED_FUNCTION_39_12();
    OUTLINED_FUNCTION_3_1();
    v113 = v7;
    v114 = v8;
    OUTLINED_FUNCTION_39_12();
    OUTLINED_FUNCTION_3_1();
    v111 = v9;
    v112 = v10;
    OUTLINED_FUNCTION_39_12();
    OUTLINED_FUNCTION_3_1();
    v109 = v11;
    v110 = v12;
    OUTLINED_FUNCTION_39_12();
    OUTLINED_FUNCTION_3_1();
    v107 = v13;
    v108 = v14;
    OUTLINED_FUNCTION_39_12();
    OUTLINED_FUNCTION_3_1();
    v105 = v15;
    v106 = v16;
    OUTLINED_FUNCTION_3_1();
    v104 = v18;
    v19 = MEMORY[0x1E69E7CC8];
    v20 = (v3 + 56);
    while (2)
    {
      if (v17 < *(v3 + 16))
      {
        v21 = *(v20 - 2);
        v22 = *(v20 - 1);
        ++v17;
        switch(*v20)
        {
          case 1:
            v102 = v17;
            v1 = v3;
            sub_1C75504FC();
            v103 = sub_1C755104C();
            swift_isUniquelyReferenced_nonNull_native();
            v119 = v19;
            v23 = OUTLINED_FUNCTION_44_9();
            v24 = sub_1C6F78124(v23, v104);
            if (__OFADD__(*(v19 + 16), (v25 & 1) == 0))
            {
              goto LABEL_149;
            }

            v2 = v24;
            v26 = v25;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
            if (sub_1C7551A2C())
            {
              v27 = OUTLINED_FUNCTION_44_9();
              v28 = sub_1C6F78124(v27, v104);
              if ((v26 & 1) != (v29 & 1))
              {
                goto LABEL_166;
              }

              v2 = v28;
            }

            if (v26)
            {
              v30 = *(v19 + 56);
              v31 = *(v30 + 8 * v2);
              *(v30 + 8 * v2) = v103;

              OUTLINED_FUNCTION_53_11();
            }

            else
            {
              OUTLINED_FUNCTION_2_27(v19 + 8 * (v2 >> 6));
              v94 = (v93 + 16 * v2);
              *v94 = 0xD000000000000019;
              v94[1] = v104;
              *(*(v19 + 56) + 8 * v2) = v103;
              OUTLINED_FUNCTION_53_11();
              v95 = *(v19 + 16);
              v33 = __OFADD__(v95, 1);
              v96 = v95 + 1;
              if (v33)
              {
                goto LABEL_160;
              }

              *(v19 + 16) = v96;
            }

            v17 = v102;
            goto LABEL_133;
          case 2:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            v1 = v69 - 1;
            sub_1C6F78124(v69 - 1, v105);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_145;
            }

            v2 = v70;
            v72 = v71;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
            if ((OUTLINED_FUNCTION_13_21() & 1) == 0)
            {
              goto LABEL_87;
            }

            v73 = sub_1C6F78124(v1, v105);
            if ((v72 & 1) != (v74 & 1))
            {
              goto LABEL_166;
            }

            v2 = v73;
LABEL_87:
            v19 = v119;
            if (v72)
            {
              v75 = *(v119 + 56);
              v76 = *(v75 + 8 * v2);
              *(v75 + 8 * v2) = v22;
LABEL_123:
            }

            else
            {
              OUTLINED_FUNCTION_2_27(v119 + 8 * (v2 >> 6));
              v98 = (v97 + 16 * v2);
              *v98 = v1;
              v98[1] = v105;
              *(*(v119 + 56) + 8 * v2) = v22;
              v99 = *(v119 + 16);
              v33 = __OFADD__(v99, 1);
              v38 = v99 + 1;
              if (v33)
              {
                goto LABEL_158;
              }

LABEL_131:
              *(v19 + 16) = v38;
            }

            v17 = v21;
LABEL_133:
            v20 += 32;
            if (v118 == v17)
            {
              return v19;
            }

            continue;
          case 3:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v51 + 3, v106);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_142;
            }

            OUTLINED_FUNCTION_324();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
            if ((OUTLINED_FUNCTION_13_21() & 1) == 0)
            {
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v52 + 3, v106);
            OUTLINED_FUNCTION_10_25();
            if (!v36)
            {
              goto LABEL_166;
            }

            v1 = v53;
LABEL_52:
            v19 = v119;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v54);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_157;
          case 4:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v43 + 11, v107);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_139;
            }

            OUTLINED_FUNCTION_324();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
            if ((OUTLINED_FUNCTION_13_21() & 1) == 0)
            {
              goto LABEL_34;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v44 + 11, v107);
            OUTLINED_FUNCTION_10_25();
            if (!v36)
            {
              goto LABEL_166;
            }

            v1 = v45;
LABEL_34:
            v19 = v119;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v46);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_154;
          case 5:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v77 + 7, v108);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_146;
            }

            OUTLINED_FUNCTION_324();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
            if ((OUTLINED_FUNCTION_13_21() & 1) == 0)
            {
              goto LABEL_94;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v78 + 7, v108);
            OUTLINED_FUNCTION_10_25();
            if (!v36)
            {
              goto LABEL_166;
            }

            v1 = v79;
LABEL_94:
            v19 = v119;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v80);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_152;
          case 6:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v89 + 21, v109);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_141;
            }

            OUTLINED_FUNCTION_324();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
            if ((OUTLINED_FUNCTION_13_21() & 1) == 0)
            {
              goto LABEL_121;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v90 + 21, v109);
            OUTLINED_FUNCTION_10_25();
            if (!v36)
            {
              goto LABEL_166;
            }

            v1 = v91;
LABEL_121:
            v19 = v119;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v100);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_165;
          case 7:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v61 + 8, v110);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_147;
            }

            OUTLINED_FUNCTION_324();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
            if ((OUTLINED_FUNCTION_13_21() & 1) == 0)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v62 + 8, v110);
            OUTLINED_FUNCTION_10_25();
            if (!v36)
            {
              goto LABEL_166;
            }

            v1 = v63;
LABEL_70:
            v19 = v119;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v64);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_163;
          case 8:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v85 + 5, v111);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_138;
            }

            OUTLINED_FUNCTION_324();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
            if ((OUTLINED_FUNCTION_13_21() & 1) == 0)
            {
              goto LABEL_112;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v86 + 5, v111);
            OUTLINED_FUNCTION_10_25();
            if (!v36)
            {
              goto LABEL_166;
            }

            v1 = v87;
LABEL_112:
            v19 = v119;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v88);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_155;
          case 9:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v47 + 9, v112);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_140;
            }

            OUTLINED_FUNCTION_324();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
            if ((OUTLINED_FUNCTION_13_21() & 1) == 0)
            {
              goto LABEL_43;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v48 + 9, v112);
            OUTLINED_FUNCTION_10_25();
            if (!v36)
            {
              goto LABEL_166;
            }

            v1 = v49;
LABEL_43:
            v19 = v119;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v50);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_164;
          case 0xA:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            v119 = v19;
            v55 = OUTLINED_FUNCTION_44_9();
            sub_1C6F78124(v55, v113);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_151;
            }

            OUTLINED_FUNCTION_324();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
            if ((OUTLINED_FUNCTION_13_21() & 1) == 0)
            {
              goto LABEL_61;
            }

            v56 = OUTLINED_FUNCTION_44_9();
            sub_1C6F78124(v56, v113);
            OUTLINED_FUNCTION_10_25();
            if (!v36)
            {
              goto LABEL_166;
            }

            v1 = v57;
LABEL_61:
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            *v58 = v59;
            v58[1] = v113;
            *(*(v19 + 56) + 8 * v1) = v22;
            v60 = *(v19 + 16);
            v33 = __OFADD__(v60, 1);
            v38 = v60 + 1;
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_153;
          case 0xB:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v81 + 8, v114);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_144;
            }

            OUTLINED_FUNCTION_324();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
            if ((OUTLINED_FUNCTION_13_21() & 1) == 0)
            {
              goto LABEL_103;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v82 + 8, v114);
            OUTLINED_FUNCTION_10_25();
            if (!v36)
            {
              goto LABEL_166;
            }

            v1 = v83;
LABEL_103:
            v19 = v119;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v84);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_159;
          case 0xC:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v39 + 4, v115);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_150;
            }

            OUTLINED_FUNCTION_324();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
            if ((OUTLINED_FUNCTION_13_21() & 1) == 0)
            {
              goto LABEL_25;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v40 + 4, v115);
            OUTLINED_FUNCTION_10_25();
            if (!v36)
            {
              goto LABEL_166;
            }

            v1 = v41;
LABEL_25:
            v19 = v119;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v42);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_162;
          case 0xD:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v65 + 5, v116);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_148;
            }

            OUTLINED_FUNCTION_324();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
            if ((OUTLINED_FUNCTION_13_21() & 1) == 0)
            {
              goto LABEL_79;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v66 + 5, v116);
            OUTLINED_FUNCTION_10_25();
            if (!v36)
            {
              goto LABEL_166;
            }

            v1 = v67;
LABEL_79:
            v19 = v119;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v68);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_161;
          case 0xE:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v32 + 9, v117);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_143;
            }

            OUTLINED_FUNCTION_324();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720);
            if ((OUTLINED_FUNCTION_13_21() & 1) == 0)
            {
              goto LABEL_16;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v34 + 9, v117);
            OUTLINED_FUNCTION_10_25();
            if (!v36)
            {
              goto LABEL_166;
            }

            v1 = v35;
LABEL_16:
            v19 = v119;
            if (v2)
            {
LABEL_122:
              v92 = *(v19 + 56);
              v76 = *(v92 + 8 * v1);
              *(v92 + 8 * v1) = v22;
              goto LABEL_123;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v37);
            if (v33)
            {
              goto LABEL_156;
            }

            goto LABEL_131;
          default:
            goto LABEL_133;
        }
      }

      break;
    }

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
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

Swift::String_optional __swiftcall StoryGenerationSummary.llmRequestDiagnostics()()
{
  v99 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v98 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for LLMConfiguration(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_35_8();
  v7 = sub_1C754FDEC();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v74 - v14;
  v15 = *(v0 + 64);
  if (*(v15 + 16))
  {
    OUTLINED_FUNCTION_3_1();
    v117 = v17;
    v118 = v16;
    v18 = v15 + 64;
    v19 = 1 << *(v15 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v83 = v20 & *(v15 + 64);
    v82 = (v19 + 63) >> 6;
    v80 = v9 + 16;
    v79 = v9 + 32;
    v97 = "--- Request Details ---";
    v96 = " prompt bindings -\n";
    v95 = "\n\n- CLI parameters for ";
    v94 = "d to emulate requests -";
    v93 = " tgtool complete ";
    v91 = v3 + 8;
    OUTLINED_FUNCTION_3_1();
    v85 = v21;
    v84 = "--model-bundle-identifier ";
    v78 = (v9 + 8);
    v22 = sub_1C75504FC();
    v24 = 0;
    v108 = 0;
    v81 = v15 + 64;
    while (1)
    {
      v25 = v83;
      if (!v83)
      {
        break;
      }

LABEL_10:
      v27 = __clz(__rbit64(v25)) | (v24 << 6);
      v28 = v25;
      v29 = *(v15 + 56);
      v109 = *(*(v15 + 48) + v27);
      v30 = *(v29 + 8 * v27);
      v31 = qword_1EDD0B640;
      sub_1C75504FC();
      if (v31 != -1)
      {
        swift_once();
      }

      v83 = (v28 - 1) & v28;
      v32 = off_1EC21AE90;
      if (*(off_1EC21AE90 + 2) && (v33 = sub_1C6FC296C(), (v34 & 1) != 0))
      {
        (*(v9 + 16))(v12, v32[7] + *(v9 + 72) * v33, v7);
        (*(v9 + 32))(v100, v12, v7);
        v35 = *(v30 + 16);
        if (v35)
        {
          v74 = v15;
          v75 = v12;
          v76 = v9;
          v77 = v7;
          v90 = v1;
          v88 = type metadata accessor for LLMConfigurationProvider();
          v107 = v35 - 1;
          v36 = 32;
          for (i = v30; ; v30 = i)
          {
            v104 = v36;
            memcpy(__dst, (v30 + v36), 0x41uLL);
            v37 = __dst[0];
            v38 = __dst[2];
            v103 = __dst[3];
            v39 = LOBYTE(__dst[4]);
            v101 = __dst[5];
            v40 = __dst[6];
            v102 = __dst[7];
            v105 = LOBYTE(__dst[8]);
            v114 = 0x202D2D2D0A0A0ALL;
            v115 = 0xE700000000000000;
            v41 = v109;
            LOBYTE(v110) = v109;
            LLMModelType.description.getter();
            v43 = v42;
            v45 = v44;
            sub_1C70AE914(__dst, &v112);
            MEMORY[0x1CCA5CD70](v43, v45);

            MEMORY[0x1CCA5CD70](757935392, 0xE400000000000000);
            MEMORY[0x1CCA5CD70](v114, v115);

            v112 = 0;
            v113 = 0xE000000000000000;
            sub_1C755180C();
            OUTLINED_FUNCTION_54_9();
            OUTLINED_FUNCTION_31_10(2108682);
            OUTLINED_FUNCTION_20_19(0xE300000000000000);
            LOBYTE(v114) = v41;
            LLMModelType.description.getter();
            OUTLINED_FUNCTION_47_9();

            OUTLINED_FUNCTION_29_12();
            MEMORY[0x1CCA5CD70]();
            v106 = v37;
            v46 = sub_1C75504BC();
            MEMORY[0x1CCA5CD70](v46);

            OUTLINED_FUNCTION_7_20();

            v112 = 0;
            v113 = 0xE000000000000000;
            sub_1C755180C();
            OUTLINED_FUNCTION_14_20();
            OUTLINED_FUNCTION_29_12();
            MEMORY[0x1CCA5CD70](0xD000000000000017);
            LOBYTE(v114) = v41;
            LLMModelType.description.getter();
            OUTLINED_FUNCTION_47_9();

            OUTLINED_FUNCTION_29_12();
            MEMORY[0x1CCA5CD70]();
            OUTLINED_FUNCTION_7_20();

            OUTLINED_FUNCTION_29_12();
            MEMORY[0x1CCA5CD70]();
            if ((v38 & 1) == 0)
            {
              OUTLINED_FUNCTION_6_30();
              sub_1C755180C();
              OUTLINED_FUNCTION_14_20();
              MEMORY[0x1CCA5CD70](0x7265706D65742D2DLL, 0xEE00206572757461);
              sub_1C7550F5C();
              OUTLINED_FUNCTION_45_9();
              OUTLINED_FUNCTION_7_20();
            }

            v47 = v98;
            if ((v40 & 1) == 0)
            {
              OUTLINED_FUNCTION_6_30();
              sub_1C755180C();
              OUTLINED_FUNCTION_54_9();
              OUTLINED_FUNCTION_31_10(0x6F742D78616D2D2DLL);
              OUTLINED_FUNCTION_20_19(0xED000020736E656BLL);
              OUTLINED_FUNCTION_42_12(&__dst[7]);
              sub_1C7551D8C();
              OUTLINED_FUNCTION_47_9();

              OUTLINED_FUNCTION_45_9();
              OUTLINED_FUNCTION_7_20();
            }

            if ((v105 & 1) == 0)
            {
              OUTLINED_FUNCTION_6_30();
              sub_1C755180C();
              OUTLINED_FUNCTION_54_9();
              OUTLINED_FUNCTION_31_10(0x6D6F646E61722D2DLL);
              OUTLINED_FUNCTION_20_19(0xEE0020646565732DLL);
              OUTLINED_FUNCTION_42_12(&__dst[8]);
              sub_1C7551D8C();
              OUTLINED_FUNCTION_47_9();

              OUTLINED_FUNCTION_45_9();
              OUTLINED_FUNCTION_7_20();
            }

            v48 = v108;
            if (v39 != 255)
            {
              if (v39)
              {
                OUTLINED_FUNCTION_31_10(0x206B2D706F742D2DLL);
                OUTLINED_FUNCTION_20_19(0xE800000000000000);
                OUTLINED_FUNCTION_42_12(&v117);
                sub_1C7551D8C();
                OUTLINED_FUNCTION_47_9();
              }

              else
              {
                OUTLINED_FUNCTION_6_30();
                MEMORY[0x1CCA5CD70](0x20702D706F742D2DLL, 0xE800000000000000);
                sub_1C7550F5C();
              }

              OUTLINED_FUNCTION_45_9();
              v49 = OUTLINED_FUNCTION_9_23();
              MEMORY[0x1CCA5CD70](v49, *(v50 - 256));
            }

            LOBYTE(v112) = v109;
            sub_1C754FF0C();
            v1 = v90;
            static LLMConfigurationProvider.configuration(for:logger:)(&v112, v47, v90);
            if (v48)
            {
              v51 = OUTLINED_FUNCTION_37_14();
              v52(v51);
              OUTLINED_FUNCTION_6_30();
              sub_1C755180C();
              OUTLINED_FUNCTION_14_20();
              OUTLINED_FUNCTION_29_12();
              MEMORY[0x1CCA5CD70]();
              v114 = v48;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
              sub_1C75519EC();
              OUTLINED_FUNCTION_7_20();

              v108 = 0;
            }

            else
            {
              v108 = 0;
              v53 = OUTLINED_FUNCTION_37_14();
              v54(v53);
              OUTLINED_FUNCTION_31_10(0x656C61636F6C2D2DLL);
              OUTLINED_FUNCTION_20_19(0xE900000000000020);
              v55 = v86;
              sub_1C754E04C();
              OUTLINED_FUNCTION_47_9();

              OUTLINED_FUNCTION_45_9();
              OUTLINED_FUNCTION_7_20();

              OUTLINED_FUNCTION_31_10(0x74706D6F72702D2DLL);
              OUTLINED_FUNCTION_20_19(0xEC0000002064692DLL);
              MEMORY[0x1CCA5CD70](*(v1 + *(v55 + 28)), *(v1 + *(v55 + 28) + 8));
              OUTLINED_FUNCTION_45_9();
              OUTLINED_FUNCTION_7_20();

              OUTLINED_FUNCTION_6_30();
              sub_1C755180C();
              OUTLINED_FUNCTION_54_9();
              OUTLINED_FUNCTION_31_10(0xD00000000000001ALL);
              OUTLINED_FUNCTION_20_19(v85);
              MEMORY[0x1CCA5CD70](*(v1 + *(v55 + 32)), *(v1 + *(v55 + 32) + 8));
              OUTLINED_FUNCTION_45_9();
              OUTLINED_FUNCTION_7_20();

              OUTLINED_FUNCTION_29_12();
              MEMORY[0x1CCA5CD70]();
              sub_1C70AE9EC(v1, type metadata accessor for LLMConfiguration);
            }

            OUTLINED_FUNCTION_29_12();
            MEMORY[0x1CCA5CD70]();
            v112 = 10;
            v113 = 0xE100000000000000;
            v56 = sub_1C75504CC();
            v58 = v57;
            sub_1C70AE984(__dst);
            v114 = v56;
            v115 = v58;
            OUTLINED_FUNCTION_50_7(91);
            OUTLINED_FUNCTION_28_8(123);
            sub_1C6FB5E8C();
            v59 = OUTLINED_FUNCTION_15_23();
            v61 = v60;

            v114 = v59;
            v115 = v61;
            OUTLINED_FUNCTION_50_7(93);
            OUTLINED_FUNCTION_28_8(125);
            v62 = OUTLINED_FUNCTION_15_23();
            v64 = v63;

            v114 = v62;
            v115 = v64;
            v110 = 39;
            v111 = 0xE100000000000000;
            OUTLINED_FUNCTION_28_8(39);
            v65 = OUTLINED_FUNCTION_15_23();
            v67 = v66;

            MEMORY[0x1CCA5CD70](v65, v67);

            v68 = OUTLINED_FUNCTION_9_23();
            MEMORY[0x1CCA5CD70](v68, *(v69 - 256));

            OUTLINED_FUNCTION_29_12();
            MEMORY[0x1CCA5CD70]();
            v112 = 10;
            v113 = 0xE100000000000000;
            v70 = sub_1C754FDAC();
            MEMORY[0x1CCA5CD70](v70);

            v71 = OUTLINED_FUNCTION_9_23();
            MEMORY[0x1CCA5CD70](v71, *(v72 - 256));

            if (!v107)
            {
              break;
            }

            --v107;
            v36 = v104 + 72;
          }

          v7 = v77;
          v9 = v76;
          v12 = v75;
          v15 = v74;
        }

        else
        {
        }

        v18 = v81;
        v22 = (*v78)(v100, v7);
      }

      else
      {

        v18 = v81;
      }
    }

    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v82)
      {

        MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
        v22 = v117;
        v23 = v118;
        goto LABEL_39;
      }

      v25 = *(v18 + 8 * v26);
      ++v24;
      if (v25)
      {
        v24 = v26;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

LABEL_39:
  result.value._object = v23;
  result.value._countAndFlagsBits = v22;
  return result;
}

void sub_1C70AE7A8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -507;
  type metadata accessor for LLMDefaults();
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  static LLMDefaults.backendType.getter((a1 + 40));
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = sub_1C75504DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F18);
  sub_1C70AEC20();
  *(a1 + 64) = sub_1C75504DC();
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v2;
  *(a1 + 96) = v2;
  *(a1 + 104) = v2;
  *(a1 + 112) = v2;
  *(a1 + 120) = v2;
  *(a1 + 128) = v2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = v2;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = OUTLINED_FUNCTION_32_11();
  *(a1 + 184) = OUTLINED_FUNCTION_32_11();
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = OUTLINED_FUNCTION_32_11();
  sub_1C707DA44();
  *(a1 + 232) = v3;
}

uint64_t sub_1C70AE8B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C70AE914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C70AE984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C70AE9EC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence21PersonalTraitSelectorC15SelectionResultVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C70AEA64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 240))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1C70AEAA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
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
      *(result + 240) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C70AEB50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF0 && *(a1 + 25))
    {
      v2 = *a1 + 239;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 0x10)
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

uint64_t sub_1C70AEB90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEF)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 240;
    if (a3 >= 0xF0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF0)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C70AEBF0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0x10u && ((1 << a4) & 0x18003) != 0)
  {
  }

  return result;
}

unint64_t sub_1C70AEC20()
{
  result = qword_1EC216F20;
  if (!qword_1EC216F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216F20);
  }

  return result;
}

void OUTLINED_FUNCTION_24_16()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_32_11()
{

  return sub_1C75504DC();
}

void OUTLINED_FUNCTION_43_10()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_47_9()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_53_11()
{

  return sub_1C70AEBF0(v1, v2, v0, 1u);
}

uint64_t OUTLINED_FUNCTION_54_9()
{
}

id sub_1C70AED68(uint64_t a1)
{
  sub_1C6F774EC(a1, v5);
  sub_1C6F65BE8(0, &qword_1EDD0CCF8);
  if (!OUTLINED_FUNCTION_0_40())
  {
    return 0;
  }

  type metadata accessor for TripFetcher();
  v1 = static TripFetcher.basePredicate(using:)();
  v2 = [v1 evaluateWithObject_];

  return v2;
}

id sub_1C70AEE00(uint64_t a1)
{
  sub_1C6F774EC(a1, v5);
  sub_1C6F65BE8(0, &qword_1EDD069C0);
  if (!OUTLINED_FUNCTION_0_40())
  {
    return 0;
  }

  v1 = [objc_opt_self() predicateWithValue_];
  v2 = [v1 evaluateWithObject_];

  return v2;
}

id sub_1C70AEEB4(uint64_t a1)
{
  sub_1C6F774EC(a1, v5);
  sub_1C6F65BE8(0, &qword_1EDD0CCF8);
  if (!OUTLINED_FUNCTION_0_40())
  {
    return 0;
  }

  type metadata accessor for EventFetcher();
  v1 = static EventFetcher.basePredicate(using:)();
  v2 = [v1 evaluateWithObject_];

  return v2;
}

uint64_t sub_1C70AEF5C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC216F28);
  __swift_project_value_buffer(v0, qword_1EC216F28);
  return sub_1C754FEFC();
}

uint64_t static TripFetcher.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213D70 != -1)
  {
    swift_once();
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC216F28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id static TripFetcher.basePredicate(using:)()
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C75604F0;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1C6F6D524();
  *(v0 + 64) = v2;
  strcpy((v0 + 32), "pendingState");
  *(v0 + 45) = 0;
  *(v0 + 46) = -5120;
  v3 = MEMORY[0x1E69E7660];
  *(v0 + 96) = MEMORY[0x1E69E75F8];
  *(v0 + 104) = v3;
  *(v0 + 72) = 2;
  v4 = sub_1C755112C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C755BAA0;
  *(v5 + 56) = v1;
  *(v5 + 64) = v2;
  *(v5 + 32) = 0x79726F6765746163;
  *(v5 + 40) = 0xE800000000000000;
  v6 = MEMORY[0x1E69E6810];
  v7 = MEMORY[0x1E69E6870];
  *(v5 + 96) = MEMORY[0x1E69E6810];
  *(v5 + 104) = v7;
  *(v5 + 72) = 19;
  *(v5 + 136) = v6;
  *(v5 + 144) = v7;
  *(v5 + 112) = 31;
  v8 = sub_1C755112C();
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C7564A90;
  *(v9 + 32) = v4;
  *(v9 + 40) = v8;
  return sub_1C6F6E5C4();
}

id static TripFetcher.fetchCollections(using:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  [v2 setIncludeLocalMemories_];
  sub_1C7065A90(a1);
  v3 = [objc_opt_self() fetchMemoriesWithOptions_];

  return v3;
}

id static PNTripFetcher.supports(collection:)(uint64_t a1)
{
  sub_1C6F774EC(a1, v5);
  sub_1C6F65BE8(0, &qword_1EDD0CCF8);
  if (!OUTLINED_FUNCTION_0_40())
  {
    return 0;
  }

  type metadata accessor for TripFetcher();
  v1 = static TripFetcher.basePredicate(using:)();
  v2 = [v1 evaluateWithObject_];

  return v2;
}

id PNTripFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PNTripFetcher.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PNTripFetcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PNTripFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PNTripFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C70AF530(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = 0;
  v18 = *(result + 16);
  v16 = result + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_2:
    if (v3 == v18)
    {

      return v4;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    result = memcpy(__dst, (v16 + 136 * v3++), 0x88uLL);
    v5 = *a2;
    if (*(*a2 + 16))
    {
      v6 = __dst[0];
      v7 = __dst[1];
      sub_1C7551F3C();
      sub_1C70B5C24(__dst, v19);
      sub_1C75504FC();
      sub_1C75505AC();
      v8 = sub_1C7551FAC();
      v9 = ~(-1 << *(v5 + 32));
      do
      {
        v10 = v8 & v9;
        if (((*(v5 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {

          result = sub_1C70B5C5C(__dst);
          goto LABEL_2;
        }

        v11 = (*(v5 + 48) + 16 * v10);
        if (*v11 == v6 && v11[1] == v7)
        {
          break;
        }

        v13 = sub_1C7551DBC();
        v8 = v10 + 1;
      }

      while ((v13 & 1) == 0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716DB60();
        v4 = v21;
      }

      v15 = *(v4 + 16);
      if (v15 >= *(v4 + 24) >> 1)
      {
        sub_1C716DB60();
        v4 = v21;
      }

      *(v4 + 16) = v15 + 1;
      result = memcpy((v4 + 136 * v15 + 32), __dst, 0x88uLL);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C70AF724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a1 + 16);
  if (v7)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1C716E3C0(0, v7, 0);
    v9 = v39;
    v10 = (a1 + 64);
    while (1)
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;
      v31[0] = *(v10 - 4);
      v31[1] = v11;
      v32 = v12;
      v33 = v13;
      v34 = v14;
      sub_1C75504FC();
      v15 = v12;
      sub_1C75504FC();
      sub_1C75504FC();
      v16 = a2;
      sub_1C70B325C(v31, a2, a3, a4, &v35);
      if (v5)
      {
        break;
      }

      v5 = 0;
      v17 = v32;

      v18 = v35;
      v19 = v36;
      v20 = v37;
      v21 = v38;
      v39 = v9;
      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      if (v23 >= v22 >> 1)
      {
        v27 = v37;
        v28 = v36;
        sub_1C716E3C0(v22 > 1, v23 + 1, 1);
        v20 = v27;
        v19 = v28;
        v9 = v39;
      }

      *(v9 + 16) = v23 + 1;
      v24 = v9 + 48 * v23;
      *(v24 + 32) = v18;
      *(v24 + 40) = v19;
      *(v24 + 56) = v20;
      *(v24 + 72) = v21;
      v10 += 5;
      --v7;
      a2 = v16;
      if (!v7)
      {

        goto LABEL_9;
      }
    }

    v26 = v32;

    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_9:

    return v9;
  }

  return result;
}

uint64_t sub_1C70AF904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = *(a2 + 168);
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v66 = MEMORY[0x1E69E7CC0];
    sub_1C716DB60();
    v5 = v66;
    v7 = (a1 + 32);
    v8 = v4;
    do
    {
      memcpy(__dst, v7, 0x68uLL);
      memcpy(__src, v7, sizeof(__src));
      sub_1C6FC061C(__dst, v63);
      sub_1C70B3E58(__src, v63);
      memcpy(v64, __src, 0x68uLL);
      sub_1C70552E0(v64);
      memcpy(v62, v63, 0x88uLL);
      v66 = v5;
      v9 = *(v5 + 16);
      if (v9 >= *(v5 + 24) >> 1)
      {
        sub_1C716DB60();
        v5 = v66;
      }

      *(v5 + 16) = v9 + 1;
      memcpy((v5 + 136 * v9 + 32), v62, 0x88uLL);
      v7 += 104;
      --v8;
    }

    while (v8);
  }

  v10 = 0;
  v11 = *(v5 + 16) + 1;
  v12 = 160;
  while (--v11)
  {
    v13 = *(v5 + v12);
    v12 += 136;
    v14 = *(v13 + 16);
    v15 = __OFADD__(v10, v14);
    v10 += v14;
    if (v15)
    {
      __break(1u);
      break;
    }
  }

  v16 = sub_1C70B28E4(v5, v60, sub_1C70B023C);

  v17 = *(v16 + 16);
  if ((*(v2 + 16) & 1) != 0 || v17 >= v4)
  {
    v19 = *(v2 + 24);
    if (v17 >= v19)
    {
      v21 = MEMORY[0x1E69E7CC0];
      v59 = v16;
      if (v17)
      {
        v57 = v19;
        v58 = v3;
        v63[0] = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C();
        v21 = v63[0];
        v22 = (v16 + 40);
        do
        {
          v24 = *(v22 - 1);
          v23 = *v22;
          v63[0] = v21;
          v26 = *(v21 + 16);
          v25 = *(v21 + 24);
          sub_1C75504FC();
          if (v26 >= v25 >> 1)
          {
            sub_1C6F7ED9C();
            v21 = v63[0];
          }

          *(v21 + 16) = v26 + 1;
          v27 = v21 + 16 * v26;
          *(v27 + 32) = v24;
          *(v27 + 40) = v23;
          v22 += 17;
          --v17;
        }

        while (v17);
        v3 = v58;
        v16 = v59;
        v19 = v57;
      }

      v28 = sub_1C706D154(v21);
      v64[0] = v28;
      sub_1C75504FC();
      v29 = v16;
      while (*(v28 + 16) >= v19)
      {
        v30 = v28;
        v31 = v19;

        v32 = sub_1C75504FC();
        v33 = sub_1C70AF530(v32, v64);
        sub_1C70B1880(v33);
        v35 = v34;
        v36 = sub_1C70B1CE4(v34);
        sub_1C70B2480(v35, v36);
        v38 = v37;

        v29 = sub_1C70B28E4(v33, v38, sub_1C70B2AD0);

        sub_1C70B37D0(v29, v60, __dst);
        memcpy(v62, __dst, sizeof(v62));
        memcpy(v63, __dst, sizeof(v63));
        if (sub_1C6F9ED5C(v63) == 1)
        {
          v16 = v59;
          break;
        }

        v39 = v63[17];
        swift_beginAccess();
        if (*(v3 + 120))
        {
          __src[0] = 0;
          __src[1] = 0xE000000000000000;
          sub_1C755180C();
          MEMORY[0x1CCA5CD70](0x2072657470616843, 0xE900000000000060);
          v40 = v63[2];
          v41 = v63[3];
          sub_1C75504FC();
          MEMORY[0x1CCA5CD70](v40, v41);

          MEMORY[0x1CCA5CD70](0x6D73206F6F742060, 0xED000028206C6C61);
          v66 = v39;
          v42 = sub_1C7551D8C();
          MEMORY[0x1CCA5CD70](v42);

          MEMORY[0x1CCA5CD70](0xD000000000000026, 0x80000001C759CB40);
          MEMORY[0x1CCA5CD70](__src[0], __src[1]);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
        }

        v16 = v59;
        v19 = v31;
        if ((*(v3 + 17) & 1) == 0)
        {

          sub_1C6FB5FC8(v62, &qword_1EC216F40);

          sub_1C70B3C8C(v3);
          return 1;
        }

        if (*(v30 + 16) == v31)
        {

          sub_1C6FB5FC8(v62, &qword_1EC216F40);

          goto LABEL_15;
        }

        v43 = v63[0];
        v44 = v63[1];
        sub_1C75504FC();
        sub_1C7421CF8(v43, v44);
        sub_1C6FB5FC8(v62, &qword_1EC216F40);

        v28 = v64[0];
      }

      if (*(v3 + 18) == 1)
      {
      }

      else
      {

        v29 = sub_1C70AF530(v16, v64);
      }

      v45 = 0;
      v46 = *(v29 + 16);
      v47 = v46 + 1;
      v48 = 160;
      while (--v47)
      {
        v49 = *(v29 + v48);
        v48 += 136;
        v50 = *(v49 + 16);
        v15 = __OFADD__(v45, v50);
        v45 += v50;
        if (v15)
        {
          __break(1u);
          break;
        }
      }

      if (*(v3 + 88) * v10 <= v45)
      {
        if (v46)
        {
          __dst[0] = MEMORY[0x1E69E7CC0];
          sub_1C716D9B8(0, v46, 0);
          v18 = __dst[0];
          v53 = v46 - 1;
          for (i = 32; ; i += 136)
          {
            memcpy(v63, (v29 + i), 0x68uLL);
            sub_1C6FC061C(v63, v62);
            __dst[0] = v18;
            v56 = *(v18 + 16);
            v55 = *(v18 + 24);
            if (v56 >= v55 >> 1)
            {
              sub_1C716D9B8(v55 > 1, v56 + 1, 1);
              v18 = __dst[0];
            }

            *(v18 + 16) = v56 + 1;
            memcpy((v18 + 104 * v56 + 32), v63, 0x68uLL);
            if (!v53)
            {
              break;
            }

            --v53;
          }
        }

        else
        {

          v18 = MEMORY[0x1E69E7CC0];
        }

        sub_1C70B3C8C(v3);
      }

      else
      {

        swift_beginAccess();
        if (*(v3 + 120))
        {
          v62[0] = 0;
          v62[1] = 0xE000000000000000;
          sub_1C755180C();
          MEMORY[0x1CCA5CD70](0xD000000000000023, 0x80000001C759CAF0);
          __dst[0] = v45;
          v51 = sub_1C7551D8C();
          MEMORY[0x1CCA5CD70](v51);

          MEMORY[0x1CCA5CD70](0x20666F2074756F20, 0xE800000000000000);
          __dst[0] = v10;
          v52 = sub_1C7551D8C();
          MEMORY[0x1CCA5CD70](v52);

          MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C759CB20);
          MEMORY[0x1CCA5CD70](v62[0], v62[1]);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
        }

        sub_1C70B3C8C(v3);
        return 3;
      }
    }

    else
    {
LABEL_15:

      sub_1C70B3C8C(v3);
      return 2;
    }
  }

  else
  {

    sub_1C70B3C8C(v2);
    return 0;
  }

  return v18;
}

void *sub_1C70B0168(const void *a1, uint64_t a2, uint64_t a3)
{
  v3[15] = 0;
  v3[14] = 0;
  sub_1C754FEFC();
  memcpy(v3 + 2, a1, 0x50uLL);
  v3[12] = a2;
  v3[13] = a3;
  if (a3)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v3[14] = 0;
  v3[15] = v7;

  return v3;
}

void *sub_1C70B023C@<X0>(void *a1@<X0>, void (**a2)(char *, uint64_t)@<X1>, double *a3@<X2>, void *a4@<X8>)
{
  v175 = a4;
  __dst[13] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v158 = &v154 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v159 = &v154 - v10;
  v185 = sub_1C754DFFC();
  v170 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v184 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v155 = &v154 - v13;
  v14 = sub_1C754EF5C();
  v160 = *(v14 - 8);
  v161 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v179 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C754EFBC();
  v156 = *(v16 - 8);
  v157 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1C754EF7C();
  v19 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v171 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v165 = &v154 - v22;
  v23 = sub_1C754EFDC();
  v162 = *(v23 - 8);
  v163 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v164 = &v154 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_1C754DD2C();
  v168 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v167 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v177 = &v154 - v27;
  memcpy(__dst, a1, 0x68uLL);
  v29 = a1[13];
  v28 = a1[14];
  sub_1C75504FC();
  v186 = a2;
  v187 = v28;
  sub_1C7069A44();
  v188 = v30;
  v32 = __dst[2];
  v31 = __dst[3];
  swift_beginAccess();
  v33 = *(a3 + 15);
  v180 = v31;
  v181 = v32;
  if (v33)
  {
    v195 = 0;
    v196 = 0xE000000000000000;
    sub_1C755180C();

    v195 = 0x2072657470616843;
    v196 = 0xE900000000000027;
    MEMORY[0x1CCA5CD70](v32, v31);
    MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C759CC40);
    MEMORY[0x1CCA5CD70](__dst[6], __dst[7]);
    MEMORY[0x1CCA5CD70](2599, 0xE200000000000000);
    MEMORY[0x1CCA5CD70](v195, v196);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  v193 = MEMORY[0x1E69E7CD0];
  v194 = MEMORY[0x1E69E7CD0];
  sub_1C739C410(v29, v34, v35, v36, v37, v38, v39, v40, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171);
  v197[0] = v41;
  v42 = v191;
  sub_1C70B4760(v197);
  v174 = v42;
  if (!v42)
  {
    v176 = v29;
    v172 = v18;
    v173 = v19;
    v43 = *(v197[0] + 16);
    v191 = a3;
    if (v43)
    {
      v44 = 0;
      v189 = 0;
      v45 = 0;
      v182 = "', fallback shot '";
      v183 = " good shots out of ";
      v166 = v197[0];
      v46 = (v197[0] + 48);
      v190 = xmmword_1C755BAB0;
      while (1)
      {
        v47 = *(v46 - 2);
        v48 = *(v46 - 1);
        v49 = *v46;
        swift_bridgeObjectRetain_n();
        sub_1C75504FC();
        sub_1C739796C(v49);
        if (*(v49 + 16))
        {
          v44 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

          sub_1C75504FC();
          sub_1C7069A44();
          v51 = *(v50 + 16);

          v52 = v51 / *(v49 + 16);
          if (v191[4] <= v52)
          {
            if (__OFADD__(v189, 1))
            {
              goto LABEL_92;
            }

            ++v189;
          }

          sub_1C7069A44();
          v54 = v53;

          v55 = sub_1C75504FC();
          sub_1C739796C(v55);
          sub_1C7069A44();
          v57 = *(v56 + 16);

          v58 = *(v54 + 16);

          a3 = v191;
          swift_beginAccess();
          if (*(a3 + 15))
          {
            v59 = v57 / v58;
            v195 = 0;
            v196 = 0xE000000000000000;
            sub_1C755180C();

            v195 = 0x2720746F6873;
            v196 = 0xE600000000000000;
            MEMORY[0x1CCA5CD70](v47, v48);
            MEMORY[0x1CCA5CD70](0x686374616D202C27, 0xEE00206F69746152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
            v60 = swift_allocObject();
            *(v60 + 16) = v190;
            v61 = MEMORY[0x1E69E63B0];
            *(v60 + 56) = MEMORY[0x1E69E63B0];
            *(v60 + 64) = MEMORY[0x1E69E6438];
            *(v60 + 32) = v52;
            v62 = sub_1C75506BC();
            MEMORY[0x1CCA5CD70](v62);
            a3 = v191;

            MEMORY[0x1CCA5CD70](0xD000000000000016, v183 | 0x8000000000000000);
            v63 = swift_allocObject();
            *(v63 + 16) = v190;
            *(v63 + 56) = v61;
            *(v63 + 64) = MEMORY[0x1E69E6438];
            *(v63 + 32) = v59;
            v64 = sub_1C75506BC();
            MEMORY[0x1CCA5CD70](v64);

            MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
            MEMORY[0x1CCA5CD70](v195, v196);
            swift_endAccess();
          }

          else
          {
            swift_endAccess();
          }

          v45 = v44;
        }

        else
        {

          a3 = v191;
          swift_beginAccess();
          if (*(a3 + 15))
          {
            v195 = 0;
            v196 = 0xE000000000000000;
            sub_1C755180C();

            v195 = 0x2720746F6873;
            v196 = 0xE600000000000000;
            MEMORY[0x1CCA5CD70](v47, v48);
            MEMORY[0x1CCA5CD70](0xD00000000000001ELL, v182 | 0x8000000000000000);
            MEMORY[0x1CCA5CD70](v195, v196);
            swift_endAccess();
          }

          else
          {
            swift_endAccess();
          }
        }

        v46 += 3;
        if (!--v43)
        {

          goto LABEL_22;
        }
      }
    }

    v44 = 0;
    v189 = 0;
LABEL_22:

    swift_beginAccess();
    v65 = v181;
    if (*(a3 + 15))
    {
      v195 = 0;
      v196 = 0xE000000000000000;
      sub_1C755180C();

      v195 = 0x2072657470616843;
      v196 = 0xE900000000000027;
      MEMORY[0x1CCA5CD70](v65, v180);
      MEMORY[0x1CCA5CD70](2108455, 0xE300000000000000);
      v192 = v189;
      v66 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v66);

      MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C759CC80);
      v192 = v44;
      v67 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v67);

      MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
      MEMORY[0x1CCA5CD70](v195, v196);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }

    v68 = v179;
    v69 = v44;
    v70 = ceil(a3[5] * v44);
    if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_94:
      __break(1u);
    }

    else if (v70 > -9.22337204e18)
    {
      if (v70 < 9.22337204e18)
      {
        if (*(a3 + 6) <= v70)
        {
          v71 = v70;
        }

        else
        {
          v71 = *(a3 + 6);
        }

        swift_beginAccess();
        if (*(a3 + 15))
        {
          v195 = 0;
          v196 = 0xE000000000000000;
          sub_1C755180C();

          v195 = 0x2072657470616843;
          v196 = 0xE900000000000027;
          MEMORY[0x1CCA5CD70](v181, v180);
          MEMORY[0x1CCA5CD70](8231, 0xE200000000000000);
          v72 = v189;
          if (v189 >= v71)
          {
            v73 = 0x736573736170;
          }

          else
          {
            v73 = 0x2074276E73656F64;
          }

          if (v189 >= v71)
          {
            v74 = 0xE600000000000000;
          }

          else
          {
            v74 = 0xEC00000073736170;
          }

          MEMORY[0x1CCA5CD70](v73, v74);

          MEMORY[0x1CCA5CD70](0xA7375636F6620, 0xE700000000000000);
          MEMORY[0x1CCA5CD70](v195, v196);
          swift_endAccess();

          v75 = v176;
          v76 = v177;
          v77 = v178;
        }

        else
        {
          swift_endAccess();
          v75 = v176;
          v76 = v177;
          v77 = v178;
          v72 = v189;
        }

        if (v72 >= v71)
        {
          memcpy(v197, __dst, 0x68uLL);
          v197[13] = v75;
          v197[14] = v187;
          *&v197[15] = v72 / v69;
          v197[16] = v194;
          CGRectMake(v91);
          memcpy(v175, v197, 0x88uLL);
          sub_1C75504FC();
          sub_1C6FC061C(__dst, &v195);
        }

        else
        {
          if (*(a3 + 56) != 1)
          {
            goto LABEL_47;
          }

          v78 = objc_opt_self();
          v79 = [*(a3 + 12) photoLibraryURL];
          v80 = v167;
          sub_1C754DCCC();

          v81 = sub_1C754DC8C();
          v82 = v168;
          v166 = *(v168 + 8);
          v167 = v168 + 8;
          v166(v80, v77);
          v197[0] = 0;
          v83 = [v78 requestVUIndexURLForPhotoLibraryURL:v81 error:v197];

          v84 = v197[0];
          if (!v83)
          {
            v94 = v197[0];

            v90 = sub_1C754DBEC();

            swift_willThrow();
            goto LABEL_49;
          }

          sub_1C754DCCC();
          v85 = v84;

          (*(v162 + 104))(v164, *MEMORY[0x1E69E0608], v163);
          v86 = *(v82 + 16);
          v87 = v165;
          v86(v165, v76, v77);
          __swift_storeEnumTagSinglePayload(v87, 0, 1, v77);
          sub_1C754EFFC();
          swift_allocObject();
          v88 = v174;
          v89 = sub_1C754EFCC();
          v90 = v88;
          if (v88)
          {
            v166(v76, v77);

LABEL_49:
            v95 = v90;
            v96 = sub_1C754FEEC();
            v97 = sub_1C755119C();

            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              *v98 = 138412290;
              v100 = v90;
              v101 = _swift_stdlib_bridgeErrorToNSError();
              *(v98 + 4) = v101;
              *v99 = v101;
              _os_log_impl(&dword_1C6F5C000, v96, v97, "Failed to run clustering for chapter validation: %@", v98, 0xCu);
              sub_1C6FB5FC8(v99, &qword_1EC215190);
              MEMORY[0x1CCA5F8E0](v99, -1, -1);
              MEMORY[0x1CCA5F8E0](v98, -1, -1);
            }

            else
            {
            }

            v93 = v175;
            goto LABEL_53;
          }

          v165 = v89;
          LOBYTE(v197[0]) = 1;
          sub_1C754EF6C();
          (*(v160 + 104))(v68, *MEMORY[0x1E69E05B8], v161);
          v102 = v194 + 56;
          v103 = 1 << *(v194 + 32);
          v104 = -1;
          if (v103 < 64)
          {
            v104 = ~(-1 << v103);
          }

          v105 = v104 & *(v194 + 56);
          v106 = (v103 + 63) >> 6;
          v189 = (v170 + 32);
          v107 = sub_1C75504FC();
          v108 = 0;
          *&v190 = MEMORY[0x1E69E7CC0];
          v109 = v159;
          if (v105)
          {
            while (1)
            {
              v110 = v108;
LABEL_61:
              v105 &= v105 - 1;
              v111 = v107;
              sub_1C75504FC();
              sub_1C754DF7C();

              if (__swift_getEnumTagSinglePayload(v109, 1, v185) == 1)
              {
                sub_1C6FB5FC8(v109, &unk_1EC217A30);
              }

              else
              {
                v188 = *v189;
                v188(v155, v109, v185);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1C6FB2B50(0, *(v190 + 16) + 1, 1, v190);
                  *&v190 = v117;
                }

                v112 = v190;
                v114 = *(v190 + 16);
                v113 = *(v190 + 24);
                v115 = (v114 + 1);
                if (v114 >= v113 >> 1)
                {
                  v186 = (v114 + 1);
                  sub_1C6FB2B50(v113 > 1, v114 + 1, 1, v190);
                  v115 = v186;
                }

                *(v112 + 16) = v115;
                v116 = (*(v170 + 80) + 32) & ~*(v170 + 80);
                *&v190 = v112;
                v188(v112 + v116 + *(v170 + 72) * v114, v155, v185);
              }

              v108 = v110;
              v107 = v111;
              if (!v105)
              {
                goto LABEL_58;
              }
            }
          }

          while (1)
          {
LABEL_58:
            v110 = v108 + 1;
            if (__OFADD__(v108, 1))
            {
              goto LABEL_93;
            }

            if (v110 >= v106)
            {
              break;
            }

            v105 = *(v102 + 8 * v110);
            ++v108;
            if (v105)
            {
              goto LABEL_61;
            }
          }

          v164 = v107;

          v118 = v173;
          v119 = v158;
          v120 = v169;
          (*(v173 + 16))(v158, v171, v169);
          __swift_storeEnumTagSinglePayload(v119, 0, 1, v120);
          v121 = v172;
          v122 = v179;
          sub_1C754EFEC();
          v174 = 0;

          sub_1C6FB5FC8(v119, &qword_1EC216F50);
          (*(v160 + 8))(v122, v161);
          v123 = sub_1C754EF8C();
          v124 = *(v123 + 16);
          v125 = v191;
          v126 = v171;
          if (v124)
          {
            v197[0] = MEMORY[0x1E69E7CC0];
            v168 = v123;
            v179 = v124;
            sub_1C716D5B0(0, v124, 0);
            v127 = v179;
            v128 = v168;
            v129 = 0;
            v130 = v197[0];
            v180 = v168 + 32;
            v188 = (v170 + 16);
            v186 = (v170 + 8);
            do
            {
              if (v129 >= *(v128 + 16))
              {
                goto LABEL_97;
              }

              v131 = *(v180 + 8 * v129);
              v132 = *(v131 + 16);
              if (v132)
              {
                v182 = v129;
                v183 = v130;
                v195 = MEMORY[0x1E69E7CC0];
                sub_1C75504FC();
                sub_1C6F7ED9C();
                v133 = v195;
                v134 = (*(v170 + 80) + 32) & ~*(v170 + 80);
                v181 = v131;
                v135 = v131 + v134;
                v136 = *(v170 + 72);
                v189 = *(v170 + 16);
                *&v190 = v136;
                do
                {
                  v137 = v184;
                  v138 = v185;
                  (v189)(v184, v135, v185);
                  v139 = sub_1C754DF8C();
                  v141 = v140;
                  (*v186)(v137, v138);
                  v195 = v133;
                  v142 = *(v133 + 16);
                  if (v142 >= *(v133 + 24) >> 1)
                  {
                    sub_1C6F7ED9C();
                    v133 = v195;
                  }

                  *(v133 + 16) = v142 + 1;
                  v143 = v133 + 16 * v142;
                  *(v143 + 32) = v139;
                  *(v143 + 40) = v141;
                  v135 += v190;
                  --v132;
                }

                while (v132);

                v125 = v191;
                v128 = v168;
                v120 = v169;
                v126 = v171;
                v129 = v182;
                v130 = v183;
                v127 = v179;
              }

              else
              {
                v133 = MEMORY[0x1E69E7CC0];
              }

              v197[0] = v130;
              v145 = *(v130 + 16);
              v144 = *(v130 + 24);
              if (v145 >= v144 >> 1)
              {
                v146 = v129;
                sub_1C716D5B0((v144 > 1), v145 + 1, 1);
                v129 = v146;
                v127 = v179;
                v128 = v168;
                v130 = v197[0];
              }

              ++v129;
              *(v130 + 16) = v145 + 1;
              *(v130 + 8 * v145 + 32) = v133;
              v121 = v172;
              v118 = v173;
            }

            while (v129 != v127);
            v147 = v130;

            v148 = v147;
          }

          else
          {

            v148 = MEMORY[0x1E69E7CC0];
          }

          v149 = 0;
          v150 = *(v148 + 16);
          for (i = 32; v150; --v150)
          {
            if (*(*(v148 + i) + 16) > v149)
            {
              v149 = *(*(v148 + i) + 16);
            }

            i += 8;
          }

          (*(v156 + 8))(v121, v157);
          (*(v118 + 8))(v126, v120);
          v166(v177, v178);
          v152 = v149 / *(v164 + 16);
          if (v125[8] > v152)
          {
LABEL_47:

            v93 = v175;
LABEL_53:
            sub_1C70B5C8C(v197);
            return memcpy(v93, v197, 0x88uLL);
          }

          memcpy(v197, __dst, 0x68uLL);
          v197[13] = v176;
          v197[14] = v187;
          *&v197[15] = v152;
          v197[16] = v164;
          CGRectMake(v153);
          memcpy(v175, v197, 0x88uLL);
          sub_1C75504FC();
          sub_1C6FC061C(__dst, &v195);
        }

        return sub_1C75504FC();
      }

LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
    }

    __break(1u);
    goto LABEL_96;
  }

  __break(1u);
  return result;
}

void sub_1C70B1880(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v59 = MEMORY[0x1E69E7CC0];
    sub_1C716DB20(0, v1, 0);
    v4 = 0;
    v5 = v59;
    v44 = a1 + 32;
    v43 = v1;
    while (1)
    {
      memcpy(__dst, (v44 + 136 * v4), sizeof(__dst));
      v7 = __dst[13];
      v6 = __dst[14];
      v8 = __dst[7];
      v48 = __dst[6];
      v9 = *(__dst[13] + 16);
      if (v9)
      {
        break;
      }

      sub_1C70B5C24(__dst, v57);
      sub_1C75504FC();
      sub_1C75504FC();
      v10 = v2;
      v34 = v6;
      v35 = v8;
LABEL_25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C755BAB0;
      *(inited + 32) = v48;
      *(inited + 40) = v35;
      *(inited + 48) = v34;
      v37 = v10;
      v38 = *(v10 + 16);
      if (!swift_isUniquelyReferenced_nonNull_native() || (v39 = *(v37 + 24) >> 1, v39 <= v38))
      {
        sub_1C6FB2038();
        v37 = v40;
        v39 = *(v40 + 24) >> 1;
      }

      if (v39 <= *(v37 + 16))
      {
        goto LABEL_40;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA8);
      swift_arrayInitWithCopy();

      ++*(v37 + 16);
      sub_1C70B5C5C(__dst);
      v59 = v5;
      v42 = *(v5 + 16);
      v41 = *(v5 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1C716DB20((v41 > 1), v42 + 1, 1);
        v5 = v59;
      }

      ++v4;
      *(v5 + 16) = v42 + 1;
      *(v5 + 8 * v42 + 32) = v37;
      if (v4 == v1)
      {
        return;
      }
    }

    v47 = v5;
    sub_1C70B5C24(__dst, v57);
    v57[0] = v2;
    v45 = v8;
    sub_1C75504FC();
    v46 = v6;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C716DB40(0, v9, 0);
    v10 = v57[0];
    v13 = sub_1C70D4544(v7);
    v14 = 0;
    v56 = v7 + 64;
    v50 = v11;
    v51 = v9;
    v49 = v7 + 72;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v7 + 32))
    {
      v15 = v13 >> 6;
      if ((*(v56 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_35;
      }

      if (*(v7 + 36) != v11)
      {
        goto LABEL_36;
      }

      v53 = v14;
      v54 = v11;
      v52 = v12;
      v16 = (*(v7 + 48) + 16 * v13);
      v17 = v16[1];
      v55 = *v16;
      v18 = v7;
      v19 = *(*(v7 + 56) + 8 * v13);
      v57[0] = v10;
      v20 = *(v10 + 16);
      v21 = *(v10 + 24);
      sub_1C75504FC();
      sub_1C75504FC();
      if (v20 >= v21 >> 1)
      {
        sub_1C716DB40((v21 > 1), v20 + 1, 1);
        v10 = v57[0];
      }

      *(v10 + 16) = v20 + 1;
      v22 = (v10 + 24 * v20);
      v22[4] = v55;
      v22[5] = v17;
      v22[6] = v19;
      v23 = 1 << *(v18 + 32);
      if (v13 >= v23)
      {
        goto LABEL_37;
      }

      v24 = *(v56 + 8 * v15);
      if ((v24 & (1 << v13)) == 0)
      {
        goto LABEL_38;
      }

      v7 = v18;
      if (*(v18 + 36) != v54)
      {
        goto LABEL_39;
      }

      v25 = v24 & (-2 << (v13 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v26 = v51;
        v27 = v53;
      }

      else
      {
        v28 = v10;
        v29 = v15 << 6;
        v30 = v15 + 1;
        v31 = (v49 + 8 * v15);
        v26 = v51;
        v27 = v53;
        while (v30 < (v23 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_1C6F9ED50(v13, v54, v52 & 1);
            v23 = __clz(__rbit64(v32)) + v29;
            goto LABEL_21;
          }
        }

        sub_1C6F9ED50(v13, v54, v52 & 1);
LABEL_21:
        v10 = v28;
      }

      v12 = 0;
      v14 = v27 + 1;
      v13 = v23;
      v11 = v50;
      if (v14 == v26)
      {

        v2 = MEMORY[0x1E69E7CC0];
        v1 = v43;
        v5 = v47;
        v35 = v45;
        v34 = v46;
        goto LABEL_25;
      }
    }

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
}

uint64_t sub_1C70B1CE4(uint64_t a1)
{
  v84 = *MEMORY[0x1E69E9840];
  v59 = *(a1 + 16);
  if (!v59)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = 0;
  v79 = 0;
  v4 = a1 + 32;
  v62 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CD0];
  v80 = xmmword_1C755BAB0;
  v61 = a1 + 32;
LABEL_3:
  v60 = v3 + 1;
  v69 = v3;
  v6 = *(v4 + 8 * v3);
  v83 = v5;
  v7 = *(v6 + 16);
  v65 = v6 + 32;
  sub_1C75504FC();
  v8 = 0;
  v9 = 48;
  while (v7 != v8)
  {
    if (v8 >= *(v6 + 16))
    {
      goto LABEL_39;
    }

    ++v8;
    v10 = sub_1C75504FC();
    sub_1C739796C(v10);
    v9 += 24;
  }

  v11 = v83;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C6FB20F8();
    v62 = v54;
  }

  v12 = *(v62 + 16);
  v13 = v61;
  if (v12 >= *(v62 + 24) >> 1)
  {
    sub_1C6FB20F8();
    v13 = v61;
    v62 = v55;
  }

  v14 = v62;
  *(v62 + 16) = v12 + 1;
  *(v14 + 8 * v12 + 32) = v11;
  if (!v69)
  {
    goto LABEL_33;
  }

  v70 = 0;
  v64 = v6;
  v63 = v7;
LABEL_13:
  if (!v7)
  {
    goto LABEL_32;
  }

  v74 = *(*(v13 + 8 * v70) + 16);
  v15 = sub_1C75504FC();
  v16 = 0;
  v73 = v15;
  v66 = (v15 + 48);
LABEL_15:
  if (v16 >= *(v6 + 16))
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:

    v57 = v79;
    swift_willThrow();

    __break(1u);
  }

  if (!v74)
  {
    goto LABEL_30;
  }

  v67 = v16;
  v17 = (v65 + 24 * v16);
  v18 = v17[1];
  v71 = *v17;
  v72 = v18;
  v19 = v17[2];
  sub_1C75504FC();
  sub_1C75504FC();
  v20 = 0;
  v21 = v66;
  while (1)
  {
    if (v20 >= *(v73 + 16))
    {
      __break(1u);
      return MEMORY[0x1E69E7CC0];
    }

    v22 = *(v21 - 1);
    v77 = *(v21 - 2);
    v23 = *v21;
    v24 = *(v19 + 32);
    v25 = v24 & 0x3F;
    v26 = ((1 << v24) + 63) >> 6;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v27 = v22;
    isStackAllocationSafe = sub_1C75504FC();
    if (v25 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      sub_1C71FAC38(0, v26, &v58 - ((8 * v26 + 15) & 0x3FFFFFFFFFFFFFF0));
      v29 = v79;
      sub_1C70A9104(&v58 - ((8 * v26 + 15) & 0x3FFFFFFFFFFFFFF0), v26, v19, v23);
      v79 = v29;
      if (v29)
      {
        goto LABEL_40;
      }

      v31 = v30;

      goto LABEL_22;
    }

    v52 = swift_slowAlloc();
    sub_1C75504FC();
    sub_1C75504FC();
    v53 = v79;
    v31 = sub_1C70A9074(v52, v26, v19, v23);

    v79 = v53;
    if (v53)
    {
      break;
    }

    MEMORY[0x1CCA5F8E0](v52, -1, -1);
LABEL_22:
    swift_beginAccess();
    if (*(v2 + 120))
    {
      v81 = 0;
      v82 = 0xE000000000000000;
      v78 = v31;
      sub_1C755180C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v32 = swift_allocObject();
      *(v32 + 16) = v80;
      v33 = MEMORY[0x1E69E6530];
      *(v32 + 56) = MEMORY[0x1E69E6530];
      *(v32 + 64) = MEMORY[0x1E69E65A8];
      *(v32 + 32) = v69;
      v75 = v20;
      v76 = v21;
      v34 = v27;
      v35 = sub_1C75506BC();
      v37 = v36;

      v81 = v35;
      v82 = v37;
      MEMORY[0x1CCA5CD70](2127904, 0xE300000000000000);
      v38 = swift_allocObject();
      *(v38 + 16) = v80;
      *(v38 + 56) = v33;
      v39 = MEMORY[0x1E69E65A8];
      *(v38 + 64) = MEMORY[0x1E69E65A8];
      *(v38 + 32) = v70;
      v40 = v34;
      v20 = v75;
      v21 = v76;
      v41 = sub_1C75506BC();
      MEMORY[0x1CCA5CD70](v41);

      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v42 = swift_allocObject();
      *(v42 + 16) = v80;
      v43 = *(v19 + 16);
      v44 = MEMORY[0x1E69E6530];
      *(v42 + 56) = MEMORY[0x1E69E6530];
      *(v42 + 64) = v39;
      *(v42 + 32) = v43;
      v45 = sub_1C75506BC();
      MEMORY[0x1CCA5CD70](v45);

      MEMORY[0x1CCA5CD70](2127904, 0xE300000000000000);
      v46 = swift_allocObject();
      *(v46 + 16) = v80;
      v47 = *(v23 + 16);
      *(v46 + 56) = v44;
      *(v46 + 64) = v39;
      *(v46 + 32) = v47;
      v48 = sub_1C75506BC();
      MEMORY[0x1CCA5CD70](v48);

      MEMORY[0x1CCA5CD70](2112800, 0xE300000000000000);
      v49 = swift_allocObject();
      *(v49 + 16) = v80;
      v50 = v78[2];
      *(v49 + 56) = v44;
      *(v49 + 64) = v39;
      *(v49 + 32) = v50;
      v51 = sub_1C75506BC();
      MEMORY[0x1CCA5CD70](v51);

      MEMORY[0x1CCA5CD70](2108704, 0xE300000000000000);
      MEMORY[0x1CCA5CD70](v71, v72);
      MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
      MEMORY[0x1CCA5CD70](v77, v40);
      MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
      v2 = v68;
      MEMORY[0x1CCA5CD70](v81, v82);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }

    ++v20;

    v21 += 3;
    if (v74 == v20)
    {

      v6 = v64;
      v7 = v63;
      v16 = v67;
LABEL_30:
      if (++v16 == v7)
      {

        v13 = v61;
LABEL_32:
        if (++v70 == v69)
        {
LABEL_33:

          v3 = v60;
          v4 = v61;
          v5 = MEMORY[0x1E69E7CD0];
          if (v60 == v59)
          {
            return v62;
          }

          goto LABEL_3;
        }

        goto LABEL_13;
      }

      goto LABEL_15;
    }
  }

  result = MEMORY[0x1CCA5F8E0](v52, -1, -1);
  __break(1u);
  return result;
}

void sub_1C70B2480(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = v2;
    v5 = a2;
    v6 = 0;
    v7 = a1 + 32;
    v8 = a2 + 32;
    v50 = a2 + 32;
    v39 = a1 + 32;
    v40 = v4;
    v48 = *(a1 + 16);
    while (1)
    {
      v9 = *(v7 + 8 * v6);
      v42 = *(v9 + 16);
      if (v42)
      {
        break;
      }

LABEL_33:
      if (++v6 == v3)
      {
        return;
      }
    }

    v10 = *(v4 + 72);
    v43 = v9 + 32;
    sub_1C75504FC();
    v11 = 0;
    v49 = v6;
    v41 = v9;
    while (v11 < *(v9 + 16))
    {
      v12 = (v43 + 24 * v11);
      v13 = v12[1];
      v44 = *v12;
      v14 = v12[2];
      v47 = v11 + 1;
      swift_bridgeObjectRetain_n();
      v45 = v13;
      sub_1C75504FC();
      v15 = 0;
      v46 = v14;
      do
      {
        if (v15 != v6)
        {
          if (v15 >= *(v5 + 16))
          {
            goto LABEL_36;
          }

          v16 = *(v8 + 8 * v15);
          v17 = *(v14 + 16);
          if (*(v16 + 16) <= v17 >> 3)
          {
            v51 = v14;
            if (v17)
            {
              v19 = v5;
              v20 = 1 << *(v16 + 32);
              if (v20 < 64)
              {
                v21 = ~(-1 << v20);
              }

              else
              {
                v21 = -1;
              }

              v22 = v21 & *(v16 + 56);
              v23 = (v20 + 63) >> 6;
              swift_bridgeObjectRetain_n();
              v24 = 0;
              while (v22)
              {
                v25 = v24;
LABEL_21:
                v26 = __clz(__rbit64(v22));
                v22 &= v22 - 1;
                v27 = (*(v16 + 48) + ((v25 << 10) | (16 * v26)));
                v29 = *v27;
                v28 = v27[1];
                sub_1C75504FC();
                sub_1C7421CF8(v29, v28);
              }

              while (1)
              {
                v25 = v24 + 1;
                if (__OFADD__(v24, 1))
                {
                  break;
                }

                if (v25 >= v23)
                {

                  v14 = v51;
                  v5 = v19;
                  v3 = v48;
                  v6 = v49;
                  v8 = v50;
                  goto LABEL_24;
                }

                v22 = *(v16 + 56 + 8 * v25);
                ++v24;
                if (v22)
                {
                  v24 = v25;
                  goto LABEL_21;
                }
              }

              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }
          }

          else
          {
            sub_1C75504FC();
            sub_1C74C35FC();
            v14 = v18;
          }
        }

LABEL_24:
        ++v15;
      }

      while (v15 != v3);
      v4 = v40;
      swift_beginAccess();
      if (*(v40 + 120))
      {
        MEMORY[0x1CCA5CD70](v44, v45);
        MEMORY[0x1CCA5CD70](2112039, 0xE300000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1C755BAB0;
        v31 = v46;
        v32 = *(v46 + 16);
        *(v30 + 56) = MEMORY[0x1E69E6530];
        *(v30 + 64) = MEMORY[0x1E69E65A8];
        *(v30 + 32) = v32;
        v33 = sub_1C75506BC();
        MEMORY[0x1CCA5CD70](v33);

        MEMORY[0x1CCA5CD70](540945696, 0xE400000000000000);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1C755BAB0;
        v35 = *(v14 + 16);
        *(v34 + 56) = MEMORY[0x1E69E6530];
        *(v34 + 64) = MEMORY[0x1E69E65A8];
        *(v34 + 32) = v35;
        v36 = sub_1C75506BC();
        MEMORY[0x1CCA5CD70](v36);

        MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
        MEMORY[0x1CCA5CD70](39, 0xE100000000000000);
        swift_endAccess();

        v9 = v41;
      }

      else
      {
        swift_endAccess();
        v9 = v41;
        v31 = v46;
      }

      v11 = v47;

      v37 = *(v14 + 16);
      v38 = *(v31 + 16);

      if (v10 <= v37 / v38)
      {
        sub_1C739796C(v14);
      }

      else
      {
      }

      v8 = v50;
      if (v47 == v42)
      {

        v7 = v39;
        goto LABEL_33;
      }
    }

LABEL_37:
    __break(1u);
  }
}

uint64_t sub_1C70B28E4(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, _BYTE *, uint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  for (i = (a1 + 32); v6; --v6)
  {
    memcpy(__dst, i, 0x88uLL);
    memcpy(__src, i, sizeof(__src));
    sub_1C70B5C24(__dst, v17);
    a3(v17, __src, a2, v3);
    memcpy(v15, __src, sizeof(v15));
    sub_1C70B5C5C(v15);
    memcpy(v16, v17, 0x88uLL);
    if (sub_1C6F9ED5C(v16) == 1)
    {
      memcpy(v14, v17, sizeof(v14));
      sub_1C6FB5FC8(v14, &qword_1EC216F48);
    }

    else
    {
      memcpy(v14, v17, sizeof(v14));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1F84();
        v7 = v10;
      }

      v9 = *(v7 + 16);
      if (v9 >= *(v7 + 24) >> 1)
      {
        sub_1C6FB1F84();
        v7 = v11;
      }

      memcpy(v13, v14, sizeof(v13));
      *(v7 + 16) = v9 + 1;
      memcpy((v7 + 136 * v9 + 32), v13, 0x88uLL);
    }

    i += 136;
  }

  return v7;
}

uint64_t sub_1C70B2AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v100 = *(a1 + 16);
  v102 = *a1;
  v111 = *(a1 + 24);
  v113 = *(a1 + 8);
  HIDWORD(v98) = *(a1 + 32);
  v7 = *(a1 + 40);
  v95 = *(a1 + 56);
  v96 = *(a1 + 48);
  v115 = *(a1 + 64);
  v105 = *(a1 + 72);
  v107 = *(a1 + 80);
  v8 = *(a1 + 120);
  v129 = MEMORY[0x1E69E7CD0];
  sub_1C75504FC();

  v125 = a2;
  v94 = a3;
  v9 = sub_1C70AF724(v7, a2, &v129, a3);
  v104 = v4;
  v10 = *(v9 + 16);
  v116 = v9;
  if (v10)
  {
    __src[0] = MEMORY[0x1E69E7CC0];
    sub_1C716E374();
    v11 = __src[0];
    v12 = (v9 + 64);
    do
    {
      v13 = *(v12 - 4);
      v14 = *(v12 - 3);
      v15 = *(v12 - 2);
      v16 = *(v12 - 1);
      v17 = *v12;
      __src[0] = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      v121 = v13;
      sub_1C75504FC();
      v20 = v15;
      sub_1C75504FC();
      sub_1C75504FC();
      if (v19 >= v18 >> 1)
      {
        sub_1C716E374();
        v11 = __src[0];
      }

      *(v11 + 16) = v19 + 1;
      v21 = (v11 + 40 * v19);
      v21[4] = v121;
      v21[5] = v14;
      v21[6] = v20;
      v21[7] = v16;
      v21[8] = v17;
      v12 += 6;
      --v10;
    }

    while (v10);
    v92 = v11;
    v9 = v116;
    v117 = *(v116 + 16);
  }

  else
  {
    v92 = MEMORY[0x1E69E7CC0];
    v117 = 0;
  }

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC8];
  v24 = (v9 + 72);
  while (v117 != v22)
  {
    if (v22 >= *(v9 + 16))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
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
      result = sub_1C7551E4C();
      __break(1u);
      return result;
    }

    v118 = v22;
    v25 = *(v24 - 5);
    v26 = *(v24 - 4);
    v27 = *(v24 - 3);
    v28 = *v24;
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    v122 = v27;
    sub_1C75504FC();
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    __src[0] = v23;
    v29 = sub_1C6F78124(v25, v26);
    if (__OFADD__(v23[2], (v30 & 1) == 0))
    {
      goto LABEL_58;
    }

    v31 = v29;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
    if (sub_1C7551A2C())
    {
      v33 = sub_1C6F78124(v25, v26);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_65;
      }

      v31 = v33;
    }

    v23 = __src[0];
    if (v32)
    {
      *(*(__src[0] + 56) + 8 * v31) = v28;
    }

    else
    {
      *(__src[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v35 = (v23[6] + 16 * v31);
      *v35 = v25;
      v35[1] = v26;
      *(v23[7] + 8 * v31) = v28;

      v36 = v23[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_63;
      }

      v23[2] = v38;
    }

    v24 += 6;
    v22 = v118 + 1;
    v9 = v116;
  }

  v119 = v23;

  v39 = [v115 fetchedObjects];
  v40 = MEMORY[0x1E69E7CC0];
  if (v39)
  {
    v41 = v39;
    sub_1C6FDEC1C();
    v42 = sub_1C7550B5C();
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  v128 = v40;
  v43 = sub_1C6FB6304();
  v44 = 0;
  v123 = v42 & 0xFFFFFFFFFFFFFF8;
  v124 = v42 & 0xC000000000000001;
  v120 = v42;
  v45 = v42 + 32;
  v46 = v125;
LABEL_24:
  while (v44 != v43)
  {
    if (v124)
    {
      v47 = MEMORY[0x1CCA5DDD0](v44, v120);
    }

    else
    {
      if (v44 >= *(v123 + 16))
      {
        goto LABEL_60;
      }

      v47 = *(v45 + 8 * v44);
    }

    v48 = v47;
    v37 = __OFADD__(v44++, 1);
    if (v37)
    {
      goto LABEL_59;
    }

    v49 = sub_1C70CAC04(v47);
    if (!v50)
    {
      goto LABEL_64;
    }

    v51 = v50;
    if (*(v46 + 16))
    {
      v52 = v49;
      sub_1C7551F3C();
      sub_1C75505AC();
      v53 = sub_1C7551FAC();
      v54 = ~(-1 << *(v46 + 32));
      while (1)
      {
        v55 = v53 & v54;
        if (((*(v125 + 56 + (((v53 & v54) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v53 & v54)) & 1) == 0)
        {
          break;
        }

        v56 = (*(v125 + 48) + 16 * v55);
        if (*v56 != v52 || v51 != v56[1])
        {
          v58 = sub_1C7551DBC();
          v53 = v55 + 1;
          if ((v58 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
        v46 = v125;
        goto LABEL_24;
      }

      v46 = v125;
    }

    else
    {
    }
  }

  v59 = v128;
  v60 = sub_1C6FB6304();
  v61 = 0;
  v62 = MEMORY[0x1E69E7CC0];
  while (v60 != v61)
  {
    if ((v59 & 0xC000000000000001) != 0)
    {
      v63 = MEMORY[0x1CCA5DDD0](v61, v59);
    }

    else
    {
      if (v61 >= *(v59 + 16))
      {
        goto LABEL_62;
      }

      v63 = *(v59 + 8 * v61 + 32);
    }

    v64 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_61;
    }

    v65 = v63;
    v66 = [v65 uuid];
    if (v66)
    {
      v67 = v66;
      v126 = sub_1C755068C();
      v69 = v68;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v62 = v72;
      }

      v70 = *(v62 + 16);
      if (v70 >= *(v62 + 24) >> 1)
      {
        sub_1C6FB1814();
        v62 = v73;
      }

      *(v62 + 16) = v70 + 1;
      v71 = v62 + 16 * v70;
      *(v71 + 32) = v126;
      *(v71 + 40) = v69;
      v61 = v64;
    }

    else
    {

      ++v61;
    }
  }

  v74 = sub_1C706D154(v62);
  v75 = *(v94 + 96);
  sub_1C6FDEC1C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v77 = v95;
  sub_1C75504FC();
  sub_1C739D74C(ObjCClassFromMetadata);
  sub_1C71BA830(v59, v85, v78, v79, v80, v81, v82, v83, v84, v91, v92, v94, v95, v96, v98, v100, v102, v104, v105, v107, a4, v111, v113, v115, v116);

  v86 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v87 = v75;
  sub_1C71C8A5C();
  __src[0] = v103;
  __src[1] = v114;
  __src[2] = v101;
  __src[3] = v112;
  LOBYTE(__src[4]) = v99;
  __src[5] = v93;
  __src[6] = v97;
  __src[7] = v77;
  __src[8] = v88;
  __src[9] = v106;
  __src[10] = v108;
  __src[11] = 0;
  __src[12] = 0;
  __src[13] = v119;
  __src[14] = v74;
  __src[15] = v8;
  __src[16] = v129;
  CGRectMake(v89);
  memcpy(__dsta, __src, 0x88uLL);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  return sub_1C75504FC();
}

void sub_1C70B325C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v81 = *(a1 + 24);
  v83 = *(a1 + 8);
  v79 = *(a1 + 32);
  v9 = [*(a1 + 16) fetchedObjects];
  v10 = MEMORY[0x1E69E7CC0];
  v73 = v5;
  v75 = a4;
  v76 = v8;
  if (v9)
  {
    v11 = v9;
    sub_1C6FDEC1C();
    v12 = sub_1C7550B5C();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v96 = v10;
  v13 = sub_1C6FB6304();
  v14 = 0;
  v87 = v12 & 0xFFFFFFFFFFFFFF8;
  v78 = v12;
  v86 = v12 + 32;
LABEL_5:
  while (v14 != v13)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1CCA5DDD0](v14, v12);
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v15 = *(v86 + 8 * v14);
    }

    v16 = v15;
    if (__OFADD__(v14++, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v18 = sub_1C70CAC04(v15);
    if (!v19)
    {
      goto LABEL_58;
    }

    v20 = v19;
    if (*(a2 + 16))
    {
      v21 = v18;
      sub_1C7551F3C();
      sub_1C75505AC();
      v22 = sub_1C7551FAC();
      v23 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v24 = v22 & v23;
        if (((*(a2 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
        {
          break;
        }

        v25 = (*(a2 + 48) + 16 * v24);
        if (*v25 != v21 || v20 != v25[1])
        {
          v27 = sub_1C7551DBC();
          v22 = v24 + 1;
          if ((v27 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
        goto LABEL_5;
      }
    }
  }

  v28 = sub_1C6FB6304();
  if (v28)
  {
    v29 = v28;
    v92 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    if ((v29 & 0x8000000000000000) == 0)
    {
      v30 = 0;
      v31 = v92;
      v32 = v96 & 0xC000000000000001;
      v89 = v96 & 0xC000000000000001;
      while (1)
      {
        v33 = v32 ? MEMORY[0x1CCA5DDD0](v30, v96) : *(v96 + 8 * v30 + 32);
        v34 = v33;
        v35 = [v34 uuid];
        if (v35)
        {
          v36 = v35;
          v37 = sub_1C755068C();
          v39 = v38;
        }

        else
        {
          v37 = 0;
          v39 = 0;
        }

        if (!v39)
        {
          goto LABEL_56;
        }

        v91 = v31;
        v40 = *(v31 + 16);
        if (v40 >= *(v31 + 24) >> 1)
        {
          sub_1C6F7ED9C();
        }

        ++v30;
        *(v31 + 16) = v40 + 1;
        v41 = v31 + 16 * v40;
        *(v41 + 32) = v37;
        *(v41 + 40) = v39;
        v32 = v96 & 0xC000000000000001;
        if (v29 == v30)
        {
          goto LABEL_37;
        }
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    return;
  }

  v89 = v96 & 0xC000000000000001;
  v31 = MEMORY[0x1E69E7CC0];
LABEL_37:
  sub_1C73978C4(v31);
  v42 = *(v75 + 96);
  sub_1C6FDEC1C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v44 = v83;
  sub_1C75504FC();
  sub_1C739D74C(ObjCClassFromMetadata);
  sub_1C71BA830(v96, v52, v45, v46, v47, v48, v49, v50, v51, v73, a3, v75, v76, v78, v79, v81, v83, a5, v86, v87, v89, v91, v93, v94, v95);
  v53 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v54 = v42;
  sub_1C71C8A5C();
  v56 = v55;
  *v85 = v77;
  v85[1] = v44;
  v85[2] = v55;
  v85[3] = v82;
  v85[4] = v80;
  v57 = sub_1C6FB6304();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  v88 = v56;
  v58 = 0;
  v59 = MEMORY[0x1E69E7CC0];
  while (v57 != v58)
  {
    if (v90)
    {
      v60 = MEMORY[0x1CCA5DDD0](v58, v96);
    }

    else
    {
      if (v58 >= *(v96 + 16))
      {
        goto LABEL_55;
      }

      v60 = *(v96 + 8 * v58 + 32);
    }

    v61 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      goto LABEL_54;
    }

    v62 = v60;
    v63 = [v62 uuid];
    if (v63)
    {
      v64 = v63;
      v65 = sub_1C755068C();
      v67 = v66;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v59 = v70;
      }

      v68 = *(v59 + 16);
      if (v68 >= *(v59 + 24) >> 1)
      {
        sub_1C6FB1814();
        v59 = v71;
      }

      *(v59 + 16) = v68 + 1;
      v69 = v59 + 16 * v68;
      *(v69 + 32) = v65;
      *(v69 + 40) = v67;
      v58 = v61;
    }

    else
    {

      ++v58;
    }
  }

  v72 = sub_1C706D154(v59);

  v85[5] = v72;
}

uint64_t sub_1C70B37D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v34 = a3;
  v6 = 0;
  v40 = 0;
  v45[17] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v36 = "yChapterValidator.swift";
  v8 = a1 + 32;
  v35 = MEMORY[0x1E69E7CC0];
  v38 = a1 + 32;
LABEL_2:
  v9 = (v8 + 136 * v6);
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_26:
      __break(1u);
    }

    memcpy(v45, v9, 0x88uLL);
    if (__OFADD__(v6, 1))
    {
      goto LABEL_26;
    }

    v39 = v9;
    v37 = v6 + 1;
    v10 = v7;
    v11 = v45[16];
    v12 = *(v45[16] + 32);
    v13 = v12 & 0x3F;
    v14 = ((1 << v12) + 63) >> 6;
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    if (v13 > 0xD)
    {
      sub_1C70B5C24(v45, v44);
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v16 = swift_slowAlloc();
        sub_1C75504FC();
        sub_1C75504FC();
        v24 = v14;
        v25 = v40;
        v21 = sub_1C70A9074(v16, v24, v11, a2);

        v40 = v25;
        if (v25)
        {
          goto LABEL_28;
        }

        MEMORY[0x1CCA5F8E0](v16, -1, -1);
        goto LABEL_10;
      }
    }

    else
    {
      isStackAllocationSafe = sub_1C70B5C24(v45, v44);
    }

    v16 = &v33;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v17 = &v33 - ((8 * v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1C71FAC38(0, v14, v17);
    v18 = v14;
    v19 = v40;
    sub_1C70A9104(v17, v18, v11, a2);
    v40 = v19;
    if (v19)
    {

      v32 = v40;
      v25 = v40;
      swift_willThrow();

      __break(1u);
LABEL_28:

      MEMORY[0x1CCA5F8E0](v16, -1, -1);
      __break(1u);
      goto LABEL_29;
    }

    v21 = v20;

LABEL_10:
    v7 = v10;
    swift_beginAccess();
    v8 = v38;
    if (*(v4 + 120))
    {
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_1C755180C();

      v42 = 0x2072657470616843;
      v43 = 0xE900000000000027;
      MEMORY[0x1CCA5CD70](v45[2], v45[3]);
      MEMORY[0x1CCA5CD70](2112039, 0xE300000000000000);
      v41 = v21[2];
      v22 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v22);

      MEMORY[0x1CCA5CD70](0xD00000000000001BLL, v36 | 0x8000000000000000);
      MEMORY[0x1CCA5CD70](v42, v43);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }

    v23 = v21[2];
    if (v23 < *(v4 + 80))
    {

      v26 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB21AC();
        v26 = v29;
      }

      v27 = *(v26 + 16);
      if (v27 >= *(v26 + 24) >> 1)
      {
        sub_1C6FB21AC();
        v26 = v30;
      }

      memcpy(v44, v45, sizeof(v44));
      *(v26 + 16) = v27 + 1;
      v35 = v26;
      v28 = v26 + 144 * v27;
      memcpy((v28 + 32), v44, 0x88uLL);
      *(v28 + 168) = v23;
      v6 = v37;
      goto LABEL_2;
    }

    sub_1C70B5C5C(v45);

    ++v6;
    v9 = v39 + 136;
  }

  v45[0] = v35;
  sub_1C75504FC();
  v25 = v40;
  sub_1C70B46BC(v45);
  if (!v25)
  {

    sub_1C710D4D4(v45[0], v34);
  }

LABEL_29:

  __break(1u);
  return result;
}

void sub_1C70B3C8C(uint64_t a1)
{
  v2 = sub_1C75506DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 104))
  {

    if (sub_1C71656D8())
    {
      swift_beginAccess();
      if (*(a1 + 120))
      {
        sub_1C75504FC();
        sub_1C75506CC();
        v6 = sub_1C755069C();
        v8 = v7;

        (*(v3 + 8))(v5, v2);
        if (v8 >> 60 != 15)
        {
          sub_1C7161C08();
          sub_1C70B5C10(v6, v8);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1C70B3E58@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, __src, 0x68uLL);
  v4 = 0;
  v5 = __dst[5];
  v51 = MEMORY[0x1E69E7CC8];
  v6 = *(__dst[5] + 16);
  v7 = (__dst[5] + 64);
  while (v6 != v4)
  {
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:

      v41 = v47;

      __break(1u);
      return result;
    }

    v9 = *(v7 - 1);
    v8 = *v7;
    v10 = *(v7 - 3);
    v11 = *(v7 - 2);
    v46[0] = *(v7 - 4);
    v46[1] = v10;
    v47 = v11;
    v48 = v9;
    v49 = v8;
    sub_1C75504FC();
    v12 = v11;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C70B4210(&v51, v46);
    if (v3)
    {
      goto LABEL_38;
    }

    ++v4;
    v13 = v47;

    v7 += 5;
  }

  v14 = v51;
  v15 = [__dst[8] fetchedObjects];
  v43 = v14;
  if (v15)
  {
    v16 = v15;
    sub_1C6FDEC1C();
    v17 = sub_1C7550B5C();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = sub_1C6FB6304();
  v19 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  while (v18 != v19)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1CCA5DDD0](v19, v17);
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_36;
    }

    v22 = v20;
    v23 = [v22 uuid];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1C755068C();
      v42 = v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v45 = v29;
      }

      v27 = *(v45 + 16);
      if (v27 >= *(v45 + 24) >> 1)
      {
        sub_1C6FB1814();
        v45 = v30;
      }

      *(v45 + 16) = v27 + 1;
      v28 = v45 + 16 * v27;
      *(v28 + 32) = v25;
      *(v28 + 40) = v42;
      v19 = v21;
    }

    else
    {

      ++v19;
    }
  }

  v31 = sub_1C706D154(v45);
  v46[0] = MEMORY[0x1E69E7CD0];
  v32 = 1 << *(v43 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v43 + 64);
  v35 = (v32 + 63) >> 6;
  sub_1C75504FC();
  v36 = 0;
  if (v34)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_35;
    }

    if (v37 >= v35)
    {
      break;
    }

    v34 = *(v43 + 64 + 8 * v37);
    ++v36;
    if (v34)
    {
      v36 = v37;
      do
      {
LABEL_31:
        v34 &= v34 - 1;
        v38 = sub_1C75504FC();
        sub_1C739796C(v38);
      }

      while (v34);
      continue;
    }
  }

  v39 = v46[0];
  memcpy(a2, __dst, 0x68uLL);
  a2[13] = v43;
  a2[14] = v31;
  a2[15] = 0x3FF0000000000000;
  a2[16] = v39;
  return sub_1C6FC061C(__dst, v46);
}

void sub_1C70B4210(uint64_t *a1, uint64_t a2)
{
  v2 = [*(a2 + 16) fetchedObjects];
  if (v2)
  {
    v3 = v2;
    sub_1C6FDEC1C();
    v4 = sub_1C7550B5C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1C6FB6304();
  v6 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v6)
    {

      sub_1C706D154(v20);
      swift_isUniquelyReferenced_nonNull_native();
      v21 = *a1;
      sub_1C6FC7D38();
      *a1 = v21;
      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCA5DDD0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v9 = v7;
    v10 = [v9 uuid];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1C755068C();
      v18 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v20 = v16;
      }

      v14 = *(v20 + 16);
      if (v14 >= *(v20 + 24) >> 1)
      {
        sub_1C6FB1814();
        v20 = v17;
      }

      *(v20 + 16) = v14 + 1;
      v15 = v20 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v18;
      v6 = v8;
    }

    else
    {

      ++v6;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t FreeformStoryChapterValidator.deinit()
{

  v1 = OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterValidator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t FreeformStoryChapterValidator.__deallocating_deinit()
{
  FreeformStoryChapterValidator.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FreeformStoryChapterValidator()
{
  result = qword_1EDD08178;
  if (!qword_1EDD08178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C70B4534()
{
  result = sub_1C754FF1C();
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

uint64_t sub_1C70B4608(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[80])
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

uint64_t sub_1C70B4654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C70B46BC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422ABC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C70B4804(v6, &qword_1EC214D90, &unk_1C7570FF0, sub_1C70B4B14, sub_1C70B4920);
  *a1 = v2;
  return result;
}

uint64_t sub_1C70B4760(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422BC4();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C70B4804(v6, &qword_1EC216F58, &unk_1C7577D90, sub_1C70B5198, sub_1C70B4A38);
  *a1 = v2;
  return result;
}

uint64_t sub_1C70B4804(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a1 + 8);
  result = sub_1C7551D7C();
  if (result < v9)
  {
    if (v9 >= -1)
    {
      v11 = result;
      v12 = v9 / 2;
      if (v9 <= 1)
      {
        v13 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        v13 = sub_1C7550BBC();
        *(v13 + 16) = v12;
      }

      v14[0] = v13 + 32;
      v14[1] = v12;
      a4(v14, v15, a1, v11);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v9 < 0)
  {
    goto LABEL_12;
  }

  if (v9)
  {
    return a5(0, v9, 1, a1);
  }

  return result;
}

uint64_t sub_1C70B4920(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 144 * a3 - 144;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        v11 = *(v10 + 264);
        v12 = *(v10 + 120);
        if (v11 == v12)
        {
          v13 = *(v10 + 280);
          v14 = *(v10 + 136);
          if (v13 == v14)
          {
            result = *(v10 + 160);
            if (result == *(v10 + 16) && *(v10 + 168) == *(v10 + 24))
            {
              break;
            }

            result = sub_1C7551DBC();
            if ((result & 1) == 0)
            {
              break;
            }
          }

          else if (v13 >= v14)
          {
            break;
          }
        }

        else if (v11 >= v12)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(v17, (v10 + 144), sizeof(v17));
        memcpy((v10 + 144), v10, 0x90uLL);
        result = memcpy(v10, v17, 0x90uLL);
        v10 -= 144;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 144;
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

uint64_t sub_1C70B4A38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
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

void sub_1C70B4B14(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_116:
    v101 = *a1;
    if (!*a1)
    {
      goto LABEL_157;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_118:
      v90 = (v6 + 16);
      for (i = *(v6 + 2); i >= 2; *v90 = i)
      {
        if (!*a3)
        {
          goto LABEL_154;
        }

        v92 = &v6[16 * i];
        v93 = *v92;
        v94 = &v90[2 * i];
        v95 = *(v94 + 1);
        v96 = v104;
        sub_1C70B5820((*a3 + 144 * *v92), (*a3 + 144 * *v94), (*a3 + 144 * v95), v101);
        if (v96)
        {
          break;
        }

        if (v95 < v93)
        {
          goto LABEL_142;
        }

        if (i - 2 >= *v90)
        {
          goto LABEL_143;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v97 = *v90;
        v98 = *v90 - i;
        if (*v90 < i)
        {
          goto LABEL_144;
        }

        v104 = 0;
        i = v97 - 1;
        sub_1C7423CF4(v94 + 16, v98, v94);
      }

LABEL_126:

      return;
    }

LABEL_151:
    v6 = sub_1C7420830();
    goto LABEL_118;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v7 = v5++;
    if (v5 >= v4)
    {
      goto LABEL_37;
    }

    v8 = *a3;
    v9 = *a3 + 144 * v5;
    v10 = *(v9 + 120);
    v11 = *a3 + 144 * v7;
    v12 = *(v11 + 120);
    if (v10 == v12)
    {
      v13 = *(v9 + 136);
      v14 = *(v11 + 136);
      if (v13 == v14)
      {
        if (*(v9 + 16) == *(v11 + 16) && *(v9 + 24) == *(v11 + 24))
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1C7551DBC();
        }
      }

      else
      {
        v16 = v13 < v14;
      }
    }

    else
    {
      v16 = v10 < v12;
    }

    v5 = v7 + 2;
    v17 = 144 * v7;
    v18 = v8 + 144 * v7;
    while (v5 < v4)
    {
      v19 = *(v18 + 408);
      v20 = *(v18 + 264);
      if (v19 == v20)
      {
        v21 = *(v18 + 424);
        v22 = *(v18 + 280);
        if (v21 == v22)
        {
          if (*(v18 + 304) == *(v18 + 160) && *(v18 + 312) == *(v18 + 168))
          {
            if (v16)
            {
              goto LABEL_30;
            }

            goto LABEL_26;
          }

          v24 = sub_1C7551DBC();
        }

        else
        {
          v24 = v21 < v22;
        }
      }

      else
      {
        v24 = v19 < v20;
      }

      if ((v16 ^ v24))
      {
        break;
      }

LABEL_26:
      ++v5;
      v18 += 144;
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_30:
    if (v5 < v7)
    {
      goto LABEL_148;
    }

    if (v7 < v5)
    {
      v25 = 144 * v5 - 144;
      v26 = v5;
      v27 = v7;
      do
      {
        if (v27 != --v26)
        {
          v28 = *a3;
          if (!*a3)
          {
            goto LABEL_155;
          }

          memcpy(__dst, (v28 + v17), sizeof(__dst));
          memmove((v28 + v17), (v28 + v25), 0x90uLL);
          memcpy((v28 + v25), __dst, 0x90uLL);
        }

        ++v27;
        v25 -= 144;
        v17 += 144;
      }

      while (v27 < v26);
    }

LABEL_37:
    v29 = a3[1];
    if (v5 >= v29)
    {
      goto LABEL_64;
    }

    if (__OFSUB__(v5, v7))
    {
      goto LABEL_147;
    }

    if (v5 - v7 >= a4)
    {
LABEL_64:
      if (v5 < v7)
      {
        goto LABEL_146;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v6 = v88;
      }

      v45 = *(v6 + 2);
      v46 = v45 + 1;
      if (v45 >= *(v6 + 3) >> 1)
      {
        sub_1C6FB17EC();
        v6 = v89;
      }

      *(v6 + 2) = v46;
      v47 = v6 + 32;
      v48 = &v6[16 * v45 + 32];
      *v48 = v7;
      *(v48 + 1) = v5;
      v101 = *a1;
      if (!*a1)
      {
        goto LABEL_156;
      }

      if (!v45)
      {
LABEL_113:
        v4 = a3[1];
        if (v5 >= v4)
        {
          goto LABEL_116;
        }

        continue;
      }

      while (1)
      {
        v49 = v46 - 1;
        v50 = &v47[16 * v46 - 16];
        v51 = &v6[16 * v46];
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v52 = *(v6 + 4);
          v53 = *(v6 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_84:
          if (v55)
          {
            goto LABEL_133;
          }

          v67 = *v51;
          v66 = *(v51 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_136;
          }

          v71 = *(v50 + 1);
          v72 = v71 - *v50;
          if (__OFSUB__(v71, *v50))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v69, v72))
          {
            goto LABEL_141;
          }

          if (v69 + v72 >= v54)
          {
            if (v54 < v72)
            {
              v49 = v46 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        if (v46 < 2)
        {
          goto LABEL_135;
        }

        v74 = *v51;
        v73 = *(v51 + 1);
        v62 = __OFSUB__(v73, v74);
        v69 = v73 - v74;
        v70 = v62;
LABEL_99:
        if (v70)
        {
          goto LABEL_138;
        }

        v76 = *v50;
        v75 = *(v50 + 1);
        v62 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v62)
        {
          goto LABEL_140;
        }

        if (v77 < v69)
        {
          goto LABEL_113;
        }

LABEL_106:
        if (v49 - 1 >= v46)
        {
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
          goto LABEL_150;
        }

        if (!*a3)
        {
          goto LABEL_153;
        }

        v81 = v6;
        v82 = &v47[16 * v49 - 16];
        v83 = *v82;
        v84 = &v47[16 * v49];
        v85 = *(v84 + 1);
        v86 = v104;
        sub_1C70B5820((*a3 + 144 * *v82), (*a3 + 144 * *v84), (*a3 + 144 * v85), v101);
        if (v86)
        {
          goto LABEL_126;
        }

        if (v85 < v83)
        {
          goto LABEL_128;
        }

        v87 = *(v81 + 2);
        if (v49 > v87)
        {
          goto LABEL_129;
        }

        *v82 = v83;
        *(v82 + 1) = v85;
        if (v49 >= v87)
        {
          goto LABEL_130;
        }

        v104 = 0;
        v46 = v87 - 1;
        sub_1C7423CF4(v84 + 16, v87 - 1 - v49, &v47[16 * v49]);
        v6 = v81;
        *(v81 + 2) = v87 - 1;
        if (v87 <= 2)
        {
          goto LABEL_113;
        }
      }

      v56 = &v47[16 * v46];
      v57 = *(v56 - 8);
      v58 = *(v56 - 7);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_131;
      }

      v61 = *(v56 - 6);
      v60 = *(v56 - 5);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_132;
      }

      v63 = *(v51 + 1);
      v64 = v63 - *v51;
      if (__OFSUB__(v63, *v51))
      {
        goto LABEL_134;
      }

      v62 = __OFADD__(v54, v64);
      v65 = v54 + v64;
      if (v62)
      {
        goto LABEL_137;
      }

      if (v65 >= v59)
      {
        v79 = *v50;
        v78 = *(v50 + 1);
        v62 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v62)
        {
          goto LABEL_145;
        }

        if (v54 < v80)
        {
          v49 = v46 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_84;
    }

    break;
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_149;
  }

  if (v7 + a4 >= v29)
  {
    v30 = a3[1];
  }

  else
  {
    v30 = v7 + a4;
  }

  if (v30 < v7)
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v5 == v30)
  {
    goto LABEL_64;
  }

  v31 = v7;
  v32 = v6;
  v33 = *a3;
  v34 = *a3 + 144 * v5 - 144;
  v35 = v31;
  v36 = v31 - v5;
LABEL_47:
  v37 = v36;
  v38 = v34;
  while (1)
  {
    v39 = *(v38 + 264);
    v40 = *(v38 + 120);
    if (v39 == v40)
    {
      v41 = *(v38 + 280);
      v42 = *(v38 + 136);
      if (v41 == v42)
      {
        v43 = *(v38 + 160) == *(v38 + 16) && *(v38 + 168) == *(v38 + 24);
        if (v43 || (sub_1C7551DBC() & 1) == 0)
        {
LABEL_62:
          ++v5;
          v34 += 144;
          --v36;
          if (v5 == v30)
          {
            v5 = v30;
            v6 = v32;
            v7 = v35;
            goto LABEL_64;
          }

          goto LABEL_47;
        }
      }

      else if (v41 >= v42)
      {
        goto LABEL_62;
      }
    }

    else if (v39 >= v40)
    {
      goto LABEL_62;
    }

    if (!v33)
    {
      break;
    }

    memcpy(__dst, (v38 + 144), sizeof(__dst));
    memcpy((v38 + 144), v38, 0x90uLL);
    memcpy(v38, __dst, 0x90uLL);
    v38 -= 144;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_62;
    }
  }

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
}