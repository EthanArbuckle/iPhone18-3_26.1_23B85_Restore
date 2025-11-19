uint64_t sub_19A42C8A0(uint64_t a1)
{
  v3 = *v2;
  v3[167] = a1;
  v3[168] = v1;

  if (v1)
  {

    v4 = v3[157];
    v5 = v3[156];
    v6 = sub_19A42D0C8;
  }

  else
  {
    v4 = v3[157];
    v5 = v3[156];
    v6 = sub_19A42CA10;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_19A42CA10()
{
  if (*(*(v0 + 1336) + 16))
  {
    v1 = *(v0 + 1216);
    v2 = *(v0 + 1208);
    v3 = *(v0 + 1200);
    v4 = *(v0 + 928);
    v5 = *(v0 + 912);
    v6 = *(v0 + 904);

    (*(v5 + 8))(v4, v6);
    (*(v2 + 8))(v1, v3);

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 264);

    v7 = *(v0 + 8);
    v8 = *(v0 + 1336);
    v9 = *(v0 + 1312);
    v10 = *(v0 + 1304);

    return v7(v8, v10, v9);
  }

  else
  {
    v12 = *(v0 + 1312);
    v13 = *(v0 + 1304);
    v14 = *(v0 + 74);
    v15 = *(v0 + 1208);
    v21 = *(v0 + 1200);
    v22 = *(v0 + 1216);
    v20 = *(v0 + 928);
    v16 = *(v0 + 912);
    v17 = *(v0 + 904);

    type metadata accessor for GeneratorError(0);
    sub_19A42EB3C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
    swift_allocError();
    *v18 = v14;
    *(v18 + 8) = v13;
    *(v18 + 16) = v12;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v16 + 8))(v20, v17);
    (*(v15 + 8))(v22, v21);

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 264);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_19A42D0C8()
{
  v1 = v0[152];
  v2 = v0[151];
  v3 = v0[150];
  v4 = v0[116];
  v5 = v0[114];
  v6 = v0[113];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 33));

  v7 = v0[1];

  return v7();
}

uint64_t sub_19A42D3F0()
{
  v88 = v0;
  v1 = *(v0 + 1288);
  *(v0 + 400) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
  if (!swift_dynamicCast())
  {
    (*(*(v0 + 1208) + 8))(*(v0 + 1216), *(v0 + 1200));

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 264);
    goto LABEL_33;
  }

  v3 = *(v0 + 696);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);

  (*(v5 + 32))(v4, v3, v6);
  v7 = sub_19A57222C();
  v9 = v8;

  v10 = sub_19A5723DC();
  v11 = sub_19A57355C();

  v86 = v7;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 74);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v87[0] = v14;
    *v13 = 136315394;
    if (v12)
    {
      v15 = 0x54504774616863;
    }

    else
    {
      v15 = 1701736302;
    }

    if (v12)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xE400000000000000;
    }

    v17 = sub_19A31F114(v15, v16, v87);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    if (v9)
    {
      v18 = v7;
    }

    else
    {
      v18 = 7104878;
    }

    if (v9)
    {
      v19 = v9;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = sub_19A31F114(v18, v19, v87);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_19A2DE000, v10, v11, "External generation request of type %s failed: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v14, -1, -1);
    MEMORY[0x19A902C50](v13, -1, -1);
  }

  v21 = *(v0 + 632);
  v22 = *(v0 + 608);
  v23 = *(v0 + 600);
  sub_19A57223C();
  v24 = *(v22 + 88);
  v85 = v9;
  if (v24(v21, v23) != *MEMORY[0x1E69A0A50])
  {
    (*(*(v0 + 608) + 8))(*(v0 + 632), *(v0 + 600));
    goto LABEL_22;
  }

  v25 = *(v0 + 656);
  v26 = *(v0 + 648);
  v27 = *(v0 + 640);
  v28 = *(v0 + 632);
  v29 = *(v0 + 568);
  v30 = *(v0 + 560);
  v31 = *(v0 + 552);
  (*(*(v0 + 608) + 96))(v28, *(v0 + 600));
  (*(v26 + 32))(v25, v28, v27);
  sub_19A57216C();
  if ((*(v30 + 88))(v29, v31) != *MEMORY[0x1E69A0940])
  {
    v40 = *(v0 + 568);
    v41 = *(v0 + 560);
    v42 = *(v0 + 552);
    (*(*(v0 + 648) + 8))(*(v0 + 656), *(v0 + 640));
    (*(v41 + 8))(v40, v42);
LABEL_22:
    v43 = *(v0 + 624);
    v44 = *(v0 + 600);
    sub_19A57223C();
    if (v24(v43, v44) == *MEMORY[0x1E69A0A48])
    {
      v45 = *(v0 + 624);
      v46 = *(v0 + 544);
      v47 = *(v0 + 536);
      v48 = *(v0 + 528);
      v49 = *(v0 + 520);
      v51 = *(v0 + 504);
      v50 = *(v0 + 512);
      (*(*(v0 + 608) + 96))(v45, *(v0 + 600));
      (*(v47 + 32))(v46, v45, v48);
      sub_19A57211C();
      sub_19A5720FC();
      (*(v50 + 8))(v49, v51);
LABEL_24:
      (*(v47 + 8))(v46, v48);
      v39 = type metadata accessor for GeneratorError.ExternalErrorInformation.ResponseType(0);
      goto LABEL_25;
    }

    v53 = *(v0 + 616);
    v54 = *(v0 + 600);
    v55 = *(*(v0 + 608) + 8);
    v55(*(v0 + 624), v54);
    sub_19A57223C();
    if (v24(v53, v54) == *MEMORY[0x1E69A0A60])
    {
      v56 = *(v0 + 616);
      v57 = *(v0 + 488);
      v58 = *(v0 + 496);
      v59 = *(v0 + 480);
      v60 = *(v0 + 440);
      v61 = *(v0 + 448);
      v62 = *(v0 + 432);
      (*(*(v0 + 608) + 96))(v56, *(v0 + 600));
      (*(v57 + 32))(v58, v56, v59);
      sub_19A5721FC();
      if ((*(v60 + 88))(v61, v62) == *MEMORY[0x1E69A0A38])
      {
        v47 = *(v0 + 488);
        v46 = *(v0 + 496);
        v63 = *(v0 + 472);
        v48 = *(v0 + 480);
        v65 = *(v0 + 456);
        v64 = *(v0 + 464);
        v66 = *(v0 + 448);
        (*(*(v0 + 440) + 96))(v66, *(v0 + 432));
        (*(v64 + 32))(v63, v66, v65);
        sub_19A5721CC();
        (*(v64 + 8))(v63, v65);
        goto LABEL_24;
      }

      v68 = (v0 + 448);
      v67 = (v0 + 432);
      v69 = *(v0 + 440);
      (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
      v55 = *(v69 + 8);
    }

    else
    {
      v67 = (v0 + 600);
      v68 = (v0 + 616);
    }

    v55(*v68, *v67);
    v39 = type metadata accessor for GeneratorError.ExternalErrorInformation.ResponseType(0);
    v52 = 1;
    goto LABEL_32;
  }

  v32 = *(v0 + 656);
  v33 = *(v0 + 648);
  v34 = *(v0 + 640);
  v35 = *(v0 + 592);
  v36 = *(v0 + 584);
  v37 = *(v0 + 576);
  v38 = *(v0 + 568);
  (*(*(v0 + 560) + 96))(v38, *(v0 + 552));
  (*(v36 + 32))(v35, v38, v37);
  sub_19A57213C();
  (*(v36 + 8))(v35, v37);
  (*(v33 + 8))(v32, v34);
  v39 = type metadata accessor for GeneratorError.ExternalErrorInformation.ResponseType(0);
LABEL_25:
  swift_storeEnumTagMultiPayload();
  v52 = 0;
LABEL_32:
  v70 = *(v0 + 74);
  v71 = *(v0 + 1208);
  v83 = *(v0 + 1200);
  v84 = *(v0 + 1216);
  v81 = *(v0 + 688);
  v72 = *(v0 + 680);
  v82 = *(v0 + 672);
  v73 = *(v0 + 664);
  (*(*(v39 - 8) + 56))(v73, v52, 1, v39);
  type metadata accessor for GeneratorError(0);
  sub_19A42EB3C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
  swift_allocError();
  v75 = v74;
  v76 = sub_19A57224C();
  *v75 = v70;
  v77 = type metadata accessor for GeneratorError.ExternalErrorInformation(0);
  sub_19A33546C(v73, &v75[v77[5]], &qword_1EAFA1578);
  v78 = &v75[v77[6]];
  *v78 = v86;
  v78[1] = v85;
  *&v75[v77[7]] = v76;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_19A2F3FA0(v73, &qword_1EAFA1578);
  (*(v72 + 8))(v81, v82);
  (*(v71 + 8))(v84, v83);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 264);
LABEL_33:

  v79 = *(v0 + 8);

  return v79();
}

unint64_t sub_19A42DEEC()
{
  result = qword_1EAFA1528;
  if (!qword_1EAFA1528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1528);
  }

  return result;
}

unint64_t sub_19A42DF44()
{
  result = qword_1EAFA1530;
  if (!qword_1EAFA1530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1530);
  }

  return result;
}

unint64_t sub_19A42DF9C()
{
  result = qword_1EAFA1538;
  if (!qword_1EAFA1538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1538);
  }

  return result;
}

unint64_t sub_19A42DFF4()
{
  result = qword_1EAFA1540;
  if (!qword_1EAFA1540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1540);
  }

  return result;
}

void sub_19A42E060()
{
  sub_19A42E53C(319, &qword_1EAF9F890, MEMORY[0x1E69A11F8]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ExternalGeneratorInfo.rateLimitInfo.getter(uint64_t a1)
{
  v6 = (*(*v1 + 208) + **(*v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19A2F759C;

  return v6(a1);
}

uint64_t sub_19A42E3C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A42E40C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_19A42E48C()
{
  sub_19A3C35A0();
  if (v0 <= 0x3F)
  {
    sub_19A42E53C(319, &qword_1EAF9F8E0, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19A42E53C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19A57378C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_19A42E5BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A42E604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_19A42E68C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A42E6D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19A42E774()
{
  result = qword_1EAFA1558;
  if (!qword_1EAFA1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1558);
  }

  return result;
}

unint64_t sub_19A42E7C8()
{
  result = qword_1EAFA1560;
  if (!qword_1EAFA1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1560);
  }

  return result;
}

unint64_t sub_19A42E81C()
{
  result = qword_1EAFA1568;
  if (!qword_1EAFA1568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1568);
  }

  return result;
}

unint64_t sub_19A42E870()
{
  result = qword_1EAFA1570;
  if (!qword_1EAFA1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1570);
  }

  return result;
}

uint64_t sub_19A42E918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A42E980(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A42E9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_19A42EA64()
{
  result = qword_1EAFA15D8;
  if (!qword_1EAFA15D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA15D0);
    sub_19A42EAE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA15D8);
  }

  return result;
}

unint64_t sub_19A42EAE8()
{
  result = qword_1EAFA15E0;
  if (!qword_1EAFA15E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA15E0);
  }

  return result;
}

uint64_t sub_19A42EB3C(unint64_t *a1, void (*a2)(uint64_t))
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

VisualGeneration::SkinTone_optional __swiftcall SkinTone.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19A573C2C();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SkinTone.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 1802658148;
    v7 = 0x6B72614470656564;
    if (v1 != 8)
    {
      v7 = 0x7473656B726164;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x6D756964656DLL;
    if (v1 != 5)
    {
      v8 = 0x61446D756964656DLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6C6559696A6F6D65;
    v3 = 0x696146746867696CLL;
    v4 = 1919508838;
    if (v1 != 3)
    {
      v4 = 0x64654D746867696CLL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x74736572696166;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_19A42ED2C()
{
  sub_19A5740BC();
  sub_19A31C1F4();
  return sub_19A57410C();
}

uint64_t sub_19A42ED7C()
{
  sub_19A5740BC();
  sub_19A31C1F4();
  return sub_19A57410C();
}

uint64_t sub_19A42EDCC@<X0>(uint64_t *a1@<X8>)
{
  result = SkinTone.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_19A42EEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000019A599960 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_19A573F1C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_19A42EF70(uint64_t a1)
{
  v2 = sub_19A42F270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A42EFAC(uint64_t a1)
{
  v2 = sub_19A42F270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A42EFE8(uint64_t a1)
{
  v2 = sub_19A42F2C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A42F024(uint64_t a1)
{
  v2 = sub_19A42F2C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SkinToneError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1600);
  v4 = *(v3 - 8);
  v15 = v3;
  v16 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1608);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A42F270();
  sub_19A5741AC();
  sub_19A42F2C4();
  sub_19A573DAC();
  v17 = v11;
  sub_19A37AEFC();
  v12 = v15;
  sub_19A573E7C();
  (*(v16 + 8))(v6, v12);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_19A42F270()
{
  result = qword_1EAFA1610;
  if (!qword_1EAFA1610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1610);
  }

  return result;
}

unint64_t sub_19A42F2C4()
{
  result = qword_1EAFA1618;
  if (!qword_1EAFA1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1618);
  }

  return result;
}

uint64_t SkinToneError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1620);
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1628);
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A42F270();
  sub_19A57417C();
  if (v2)
  {
    goto LABEL_6;
  }

  v20 = a1;
  v11 = v22;
  v10 = v23;
  v12 = sub_19A573D7C();
  v13 = (2 * *(v12 + 16)) | 1;
  v24 = v12;
  v25 = v12 + 32;
  v26 = 0;
  v27 = v13;
  if ((sub_19A34418C() & 1) != 0 || v26 != v27 >> 1)
  {
    v14 = sub_19A5739FC();
    swift_allocError();
    v15 = v7;
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2700);
    *v17 = &type metadata for SkinToneError;
    sub_19A573C7C();
    sub_19A5739DC();
    (*(*(v14 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v11 + 8))(v9, v15);
    swift_unknownObjectRelease();
    a1 = v20;
LABEL_6:
    v19 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  sub_19A42F2C4();
  sub_19A573C5C();
  sub_19A37AE00();
  sub_19A573D4C();
  (*(v10 + 8))(v6, v4);
  (*(v11 + 8))(v9, v7);
  swift_unknownObjectRelease();
  v19 = v20;
  *v21 = v28;
  return __swift_destroy_boxed_opaque_existential_0Tm(v19);
}

unint64_t sub_19A42F6A4()
{
  result = qword_1EAFA1630;
  if (!qword_1EAFA1630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1630);
  }

  return result;
}

unint64_t sub_19A42F6FC()
{
  result = qword_1EAFA1638;
  if (!qword_1EAFA1638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA1640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1638);
  }

  return result;
}

unint64_t sub_19A42F760(void *a1)
{
  a1[1] = sub_19A42F798();
  a1[2] = sub_19A42F7EC();
  result = sub_19A42F840();
  a1[3] = result;
  return result;
}

unint64_t sub_19A42F798()
{
  result = qword_1EAFA1648;
  if (!qword_1EAFA1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1648);
  }

  return result;
}

unint64_t sub_19A42F7EC()
{
  result = qword_1EAFA1650;
  if (!qword_1EAFA1650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1650);
  }

  return result;
}

unint64_t sub_19A42F840()
{
  result = qword_1EAFA1658;
  if (!qword_1EAFA1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1658);
  }

  return result;
}

unint64_t sub_19A42F908()
{
  result = qword_1EAFA1660;
  if (!qword_1EAFA1660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1660);
  }

  return result;
}

unint64_t sub_19A42F960()
{
  result = qword_1EAFA1668;
  if (!qword_1EAFA1668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1668);
  }

  return result;
}

unint64_t sub_19A42F9B8()
{
  result = qword_1EAFA1670;
  if (!qword_1EAFA1670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1670);
  }

  return result;
}

unint64_t sub_19A42FA10()
{
  result = qword_1EAFA1678;
  if (!qword_1EAFA1678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1678);
  }

  return result;
}

unint64_t sub_19A42FA68()
{
  result = qword_1EAFA1680;
  if (!qword_1EAFA1680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1680);
  }

  return result;
}

unint64_t sub_19A42FAC0()
{
  result = qword_1EAFA1688;
  if (!qword_1EAFA1688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1688);
  }

  return result;
}

unint64_t sub_19A42FB14()
{
  result = qword_1EAFA1690;
  if (!qword_1EAFA1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1690);
  }

  return result;
}

uint64_t LanguageAnalaysisParameters.init()@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD88);
  v2 = *(sub_19A57112C() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19A576E10;
  result = sub_19A474D68(v4 + v3);
  *a1 = v4;
  *(a1 + 8) = 5;
  *(a1 + 16) = 1064514355;
  return result;
}

uint64_t sub_19A42FC48(uint64_t a1)
{
  v28 = sub_19A570A9C();
  MEMORY[0x1EEE9AC00](v28);
  v27[1] = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GenerationRecipe(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s15AssembledPromptV12PromptInputsVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AugmentedPrompt();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v27 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v29 = v27 - v17;
  v18 = *v1;
  v19 = v1[1];
  v20 = *(v1 + 4);
  LOBYTE(v1) = a1;
  v21 = v30;
  sub_19A36CA0C(v16);
  if (!v21)
  {
    v27[0] = v19;
    v30 = v18;
    sub_19A431BBC(a1, v6, type metadata accessor for GenerationRecipe);
    sub_19A431BBC(v16, v13, type metadata accessor for AugmentedPrompt);
    sub_19A36D454(v6, v13, v9);
    v22 = v29;
    sub_19A36D724(v9, 0, v29);
    sub_19A431C24(v9, _s15AssembledPromptV12PromptInputsVMa);
    sub_19A431C24(v16, type metadata accessor for AugmentedPrompt);
    sub_19A570A4C();
    sub_19A431C84(&qword_1ED825330, MEMORY[0x1E6968678]);
    v23._countAndFlagsBits = sub_19A572F7C();
    v31[0] = v30;
    v31[1] = v27[0];
    v32 = v20;
    v1 = v31;
    v24 = LanguageAnalaysisParameters.check(text:)(v23);
    if (!v25)
    {
      LOBYTE(v1) = v24;
    }

    sub_19A431C24(v22, type metadata accessor for AugmentedPrompt);
  }

  return v1 & 1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LanguageAnalaysisParameters.setAnalysisLocales(_:)(Swift::OpaquePointer a1)
{
  v4 = MEMORY[0x1E69E7CD0];

  v3 = sub_19A431370(v2, &v4);

  if (sub_19A4D3B20(v3, *v1))
  {
  }

  else
  {

    *v1 = v3;
  }
}

uint64_t sub_19A430098()
{
  v1 = sub_19A57110C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C38);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v39 = sub_19A57106C();
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v0;
  v14 = *(*v0 + 16);
  if (v14)
  {
    v16 = *(v10 + 16);
    v15 = v10 + 16;
    v17 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v34 = *(v15 + 56);
    v35 = v16;
    v36 = v15;
    v32 = (v15 - 8);
    v33 = (v2 + 8);
    v26 = v13;
    v27 = v8;
    v30 = (v8 + 32);
    v31 = (v8 + 48);

    v18 = MEMORY[0x1E69E7CC0];
    v28 = v4;
    v29 = v1;
    do
    {
      v19 = v37;
      v35(v12, v17, v37);
      sub_19A57111C();
      sub_19A5710FC();
      (*v33)(v4, v1);
      (*v32)(v12, v19);
      v20 = v39;
      if ((*v31)(v7, 1, v39) == 1)
      {
        sub_19A431B54(v7);
      }

      else
      {
        v21 = *v30;
        (*v30)(v38, v7, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_19A31D6B4(0, *(v18 + 2) + 1, 1, v18);
        }

        v23 = *(v18 + 2);
        v22 = *(v18 + 3);
        if (v23 >= v22 >> 1)
        {
          v18 = sub_19A31D6B4(v22 > 1, v23 + 1, 1, v18);
        }

        *(v18 + 2) = v23 + 1;
        v21(&v18[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v38, v39);
        v4 = v28;
        v1 = v29;
      }

      v17 += v34;
      --v14;
    }

    while (v14);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v24 = sub_19A421B5C(v18);

  return v24;
}

BOOL static LanguageAnalaysisParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = sub_19A4D3B20(*a1, *a2);
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

unint64_t sub_19A4304E4()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_19A430534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A431A30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A43055C(uint64_t a1)
{
  v2 = sub_19A431664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A430598(uint64_t a1)
{
  v2 = sub_19A431664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LanguageAnalaysisParameters.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1698);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[1] = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A431664();

  sub_19A5741AC();
  v14 = v8;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA16A8);
  sub_19A4316B8(&qword_1EAFA16B0, &qword_1EAFA16B8);
  sub_19A573E7C();

  if (!v2)
  {
    v12 = 1;
    sub_19A573E6C();
    v11 = 2;
    sub_19A573E5C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t LanguageAnalaysisParameters.hash(into:)()
{
  v1 = sub_19A57112C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v14 = v0[1];
  MEMORY[0x19A901C40](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v9 = *(v2 + 16);
    v7 = v2 + 16;
    v8 = v9;
    v10 = v5 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v11 = *(v7 + 56);
    do
    {
      v8(v4, v10, v1);
      sub_19A431C84(&qword_1EAF9F8D8, MEMORY[0x1E6969770]);
      sub_19A572B4C();
      (*(v7 - 8))(v4, v1);
      v10 += v11;
      --v6;
    }

    while (v6);
  }

  MEMORY[0x19A901C40](v14);
  return sub_19A5740EC();
}

uint64_t LanguageAnalaysisParameters.hashValue.getter()
{
  sub_19A5740BC();
  LanguageAnalaysisParameters.hash(into:)();
  return sub_19A57410C();
}

uint64_t LanguageAnalaysisParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA16C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A431664();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA16A8);
  v14[7] = 0;
  sub_19A4316B8(&qword_1EAFA16C8, &qword_1EAFA16D0);
  sub_19A573D4C();
  v9 = v15;
  v14[6] = 1;
  v10 = sub_19A573D3C();
  v14[5] = 2;
  sub_19A573D2C();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

BOOL sub_19A430C58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = sub_19A4D3B20(*a1, *a2);
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t sub_19A430CB4()
{
  sub_19A5740BC();
  LanguageAnalaysisParameters.hash(into:)();
  return sub_19A57410C();
}

uint64_t sub_19A430D0C()
{
  sub_19A5740BC();
  LanguageAnalaysisParameters.hash(into:)();
  return sub_19A57410C();
}

id LanguageCheckError.underlyingError.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t LanguageCheckError.errorDescription.getter()
{
  v1 = sub_19A570D4C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v0;
  sub_19A570D2C();
  (*(v2 + 16))(v5, v7, v1);
  v9 = sub_19A572D8C();
  v16 = v9;
  v17 = v10;
  v11 = sub_19A475CC8(v8);
  if (v12)
  {
    v14 = 8250;
    v15 = 0xE200000000000000;
    MEMORY[0x19A900A50](v11);

    MEMORY[0x19A900A50](v14, v15);

    v9 = v16;
  }

  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_19A430F44()
{
  v1 = sub_19A570D4C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_19A570D2C();
  v6 = sub_19A472E1C(v4, v5);
  (*(v2 + 8))(v4, v1);
  return v6;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LanguageAnalaysisParameters.check(text:)(Swift::String text)
{
  v3 = sub_19A57195C();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19A5719AC();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v9 = v1[1];
  v11 = *(v1 + 4);
  if (sub_19A572E7C() >= 1 && ((v20 = v3, v9 < 1) || (v12 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_], v13 = sub_19A572CCC(), objc_msgSend(v12, sel_setString_, v13), v13, v14 = sub_19A5734BC(), v12, v15 = *(v14 + 16), , v15 >= v9)))
  {

    sub_19A57198C();
    sub_19A57199C();
    if (v2)
    {
      (*(v22 + 8))(v8, v23);
      sub_19A3E3CDC();
      swift_allocError();
      *v17 = v2;
      swift_willThrow();
    }

    else
    {
      v24 = v10;
      v25 = v9;
      v26 = v11;
      sub_19A430098();
      sub_19A57193C();
      sub_19A57194C();
      (*(v21 + 8))(v5, v20);
      (*(v22 + 8))(v8, v23);
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_19A431370(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A57112C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v42 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v41 = &v32 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v40 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v39 = v16;
  v17 = *(v15 + 56);
  v33 = (*(v15 + 64) + 32) & ~*(v15 + 64);
  v18 = (a1 + v33);
  v36 = (v15 + 16);
  v37 = (v15 - 8);
  v43 = MEMORY[0x1E69E7CC0];
  v34 = v15;
  v35 = a2;
  v38 = v17;
  do
  {
    v20 = v39;
    v39(v13, v18, v4);
    v21 = v41;
    v22 = v15;
    v20(v41, v13, v4);
    v23 = v13;
    v24 = v40;
    LOBYTE(v20) = sub_19A32366C(v40, v21);
    v25 = *v37;
    (*v37)(v24, v4);
    if (v20)
    {
      v26 = *v36;
      (*v36)(v42, v23, v4);
      v27 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v27;
      v13 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_19A3228E0(0, *(v27 + 16) + 1, 1);
        v27 = v44;
      }

      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_19A3228E0(v29 > 1, v30 + 1, 1);
        v27 = v44;
      }

      *(v27 + 16) = v30 + 1;
      v43 = v27;
      v19 = v38;
      v26((v27 + v33 + v30 * v38), v42, v4);
      v15 = v34;
    }

    else
    {
      v25(v23, v4);
      v13 = v23;
      v19 = v38;
      v15 = v22;
    }

    v18 += v19;
    --v14;
  }

  while (v14);
  return v43;
}

unint64_t sub_19A431664()
{
  result = qword_1EAFA16A0;
  if (!qword_1EAFA16A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA16A0);
  }

  return result;
}

uint64_t sub_19A4316B8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA16A8);
    sub_19A431C84(a2, MEMORY[0x1E6969770]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A431758()
{
  result = qword_1EAFA16D8;
  if (!qword_1EAFA16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA16D8);
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_19A4317C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A43180C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19A43185C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_19A4318B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_19A43192C()
{
  result = qword_1EAFA16E0;
  if (!qword_1EAFA16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA16E0);
  }

  return result;
}

unint64_t sub_19A431984()
{
  result = qword_1EAFA16E8;
  if (!qword_1EAFA16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA16E8);
  }

  return result;
}

unint64_t sub_19A4319DC()
{
  result = qword_1EAFA16F0;
  if (!qword_1EAFA16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA16F0);
  }

  return result;
}

uint64_t sub_19A431A30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x800000019A5999A0 == a2;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000019A5999C0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000019A5999E0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_19A431B54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A431BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A431C24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A431C84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of ForensicsReporterAssignable.assignedForensicsReporter.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A3442C0;

  return v7(a1, a2);
}

uint64_t sub_19A431DE4()
{
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v0 = sub_19A5723FC();
  __swift_project_value_buffer(v0, qword_1ED82BCF0);
  v1 = sub_19A5723DC();
  v2 = sub_19A57354C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v16 = v4;
    *v3 = 136315138;
    v5 = sub_19A572DAC();
    v7 = sub_19A31F114(v5, v6, &v16);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_19A2DE000, v1, v2, "%s checking for cancellation", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    MEMORY[0x19A902C50](v4, -1, -1);
    MEMORY[0x19A902C50](v3, -1, -1);
  }

  result = sub_19A4060BC();
  if (result)
  {
    v9 = sub_19A5723DC();
    v10 = sub_19A57354C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      v13 = sub_19A572DAC();
      v15 = sub_19A31F114(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_19A2DE000, v9, v10, "%s is in cancelled state; throwing CancellationError.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x19A902C50](v12, -1, -1);
      MEMORY[0x19A902C50](v11, -1, -1);
    }

    sub_19A57317C();
    sub_19A433FA0(&qword_1ED823FC0, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_19A572ACC();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_19A4320B0(void (*a1)(void), uint64_t (*a2)(void))
{
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v4 = sub_19A5723FC();
  __swift_project_value_buffer(v4, qword_1ED82BCF0);

  v5 = sub_19A5723DC();
  v6 = sub_19A57354C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v7 = 136315138;
    a1(0);

    v8 = sub_19A572DAC();
    v10 = sub_19A31F114(v8, v9, &v20);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_19A2DE000, v5, v6, "%s checking for cancellation", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x19A902C50](v19, -1, -1);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  result = a2();
  if (result)
  {

    v12 = sub_19A5723DC();
    v13 = sub_19A57354C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      a1(0);

      v16 = sub_19A572DAC();
      v18 = sub_19A31F114(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_19A2DE000, v12, v13, "%s is in cancelled state; throwing CancellationError.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x19A902C50](v15, -1, -1);
      MEMORY[0x19A902C50](v14, -1, -1);
    }

    sub_19A57317C();
    sub_19A433FA0(&qword_1ED823FC0, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_19A572ACC();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_19A432438()
{
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v0 = sub_19A5723FC();
  __swift_project_value_buffer(v0, qword_1ED82BCF0);

  v1 = sub_19A5723DC();
  v2 = sub_19A57354C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    *v3 = 136315138;

    v4 = sub_19A572DAC();
    v6 = sub_19A31F114(v4, v5, &v16);

    *(v3 + 4) = v6;
    _os_log_impl(&dword_19A2DE000, v1, v2, "%s checking for cancellation", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x19A902C50](v15, -1, -1);
    MEMORY[0x19A902C50](v3, -1, -1);
  }

  result = sub_19A4332C4();
  if (result)
  {

    v8 = sub_19A5723DC();
    v9 = sub_19A57354C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;

      v12 = sub_19A572DAC();
      v14 = sub_19A31F114(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_19A2DE000, v8, v9, "%s is in cancelled state; throwing CancellationError.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x19A902C50](v11, -1, -1);
      MEMORY[0x19A902C50](v10, -1, -1);
    }

    sub_19A57317C();
    sub_19A433FA0(&qword_1ED823FC0, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_19A572ACC();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_19A43274C()
{
  v1 = v0;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v2 = sub_19A5723FC();
  __swift_project_value_buffer(v2, qword_1ED82BCF0);

  v3 = sub_19A5723DC();
  v4 = sub_19A57354C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    type metadata accessor for ImageGenerator.GenerationTask(0);

    v7 = sub_19A572DAC();
    v9 = sub_19A31F114(v7, v8, &v20);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_19A2DE000, v3, v4, "%s checking for cancellation", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x19A902C50](v6, -1, -1);
    MEMORY[0x19A902C50](v5, -1, -1);
  }

  v10 = v1[5];
  v11 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v10);
  result = (*(v11 + 8))(v10, v11);
  if (result)
  {

    v13 = sub_19A5723DC();
    v14 = sub_19A57354C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315138;
      type metadata accessor for ImageGenerator.GenerationTask(0);

      v17 = sub_19A572DAC();
      v19 = sub_19A31F114(v17, v18, &v20);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_19A2DE000, v13, v14, "%s is in cancelled state; throwing CancellationError.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x19A902C50](v16, -1, -1);
      MEMORY[0x19A902C50](v15, -1, -1);
    }

    sub_19A57317C();
    sub_19A433FA0(&qword_1ED823FC0, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_19A572ACC();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_19A432A68()
{
  v1 = v0;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v2 = sub_19A5723FC();
  __swift_project_value_buffer(v2, qword_1ED82BCF0);

  v3 = sub_19A5723DC();
  v4 = sub_19A57354C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315138;

    v7 = sub_19A572DAC();
    v9 = sub_19A31F114(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_19A2DE000, v3, v4, "%s checking for cancellation", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x19A902C50](v6, -1, -1);
    MEMORY[0x19A902C50](v5, -1, -1);
  }

  v10 = sub_19A5723DC();
  v11 = sub_19A57354C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315138;
    v14 = KeyboardEmojiGenerator.GenerationTask.description.getter();
    v16 = sub_19A31F114(v14, v15, &v27);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_19A2DE000, v10, v11, "%s checking cancellation", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x19A902C50](v13, -1, -1);
    MEMORY[0x19A902C50](v12, -1, -1);
  }

  v17 = *(v1 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__sendableCanceller + 24);
  v18 = *(v1 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtCC16VisualGeneration22KeyboardEmojiGenerator14GenerationTask__sendableCanceller), v17);
  result = (*(v18 + 8))(v17, v18);
  if (result)
  {

    v20 = sub_19A5723DC();
    v21 = sub_19A57354C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27 = v23;
      *v22 = 136315138;

      v24 = sub_19A572DAC();
      v26 = sub_19A31F114(v24, v25, &v27);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_19A2DE000, v20, v21, "%s is in cancelled state; throwing CancellationError.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x19A902C50](v23, -1, -1);
      MEMORY[0x19A902C50](v22, -1, -1);
    }

    sub_19A57317C();
    sub_19A433FA0(&qword_1ED823FC0, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_19A572ACC();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_19A432E98(void *a1)
{
  v3 = v1;
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v4 = sub_19A5723FC();
  __swift_project_value_buffer(v4, qword_1ED82BCF0);

  v5 = sub_19A5723DC();
  v6 = sub_19A57354C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v7 = 136315138;

    v8 = sub_19A572DAC();
    v10 = a1;
    v11 = sub_19A31F114(v8, v9, &v24);

    *(v7 + 4) = v11;
    a1 = v10;
    _os_log_impl(&dword_19A2DE000, v5, v6, "%s checking for cancellation", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x19A902C50](v23, -1, -1);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  v12 = (v3 + *a1);
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  result = (*(v14 + 8))(v13, v14);
  if (result)
  {

    v16 = sub_19A5723DC();
    v17 = sub_19A57354C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;

      v20 = sub_19A572DAC();
      v22 = sub_19A31F114(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_19A2DE000, v16, v17, "%s is in cancelled state; throwing CancellationError.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x19A902C50](v19, -1, -1);
      MEMORY[0x19A902C50](v18, -1, -1);
    }

    sub_19A57317C();
    sub_19A433FA0(&qword_1ED823FC0, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_19A572ACC();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_19A4332C4()
{
  v1 = v0;
  swift_beginAccess();
  v3 = v0[8];
  v19[0] = v0[7];
  v2 = v19[0];
  v19[1] = v3;

  os_unfair_lock_lock(v2 + 4);
  sub_19A434060(&v18);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v18;

  if (!v4)
  {
    goto LABEL_8;
  }

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v5 = sub_19A5723FC();
  __swift_project_value_buffer(v5, qword_1ED82BCF0);

  v6 = sub_19A5723DC();
  v7 = sub_19A57354C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v1;
    v19[0] = v9;
    *v8 = 136315138;

    v10 = sub_19A572DAC();
    v12 = sub_19A31F114(v10, v11, v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_19A2DE000, v6, v7, "%s checking captured task cancelled state", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x19A902C50](v9, -1, -1);
    MEMORY[0x19A902C50](v8, -1, -1);
  }

  isCancelled = swift_task_isCancelled();

  if (isCancelled)
  {
    v14 = 1;
  }

  else
  {
LABEL_8:
    v15 = v1[5];
    v16 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v15);
    v14 = (*(v16 + 8))(v15, v16);
  }

  return v14 & 1;
}

uint64_t sub_19A43352C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[12] = a1;
  v4[15] = type metadata accessor for ImageGenerator.Result(0);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4335C4, 0, 0);
}

uint64_t sub_19A4335C4()
{
  sub_19A4320B0(type metadata accessor for InProcessWordCloudGeneratorOperation, sub_19A406274);
  v1 = v0[13];
  type metadata accessor for WordCloudImageGenerator();
  v2 = swift_allocObject();
  v0[17] = v2;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (v3)
  {
    v5 = &off_1F0DAE380;
    v6 = &type metadata for ImageGeneratorDelegateOperationProgressHandler;
    v7 = v3;
    v8 = v4;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v6 = 0;
    v5 = 0;
    v0[4] = 0;
  }

  v9 = v0[14];
  v10 = v0[12];
  v0[2] = v7;
  v0[3] = v8;
  v0[5] = v6;
  v0[6] = v5;
  v11 = v9 + OBJC_IVAR____TtC16VisualGeneration36InProcessWordCloudGeneratorOperation_id;
  v0[10] = type metadata accessor for InProcessWordCloudGeneratorOperation();
  v0[11] = &off_1F0DB0A88;
  v0[7] = v9;
  sub_19A2E0A50(v3);

  v12 = swift_task_alloc();
  v0[18] = v12;
  v12[2] = v11;
  v12[3] = v11;
  v12[4] = v0 + 7;
  v12[5] = v0 + 2;
  v12[6] = v2;
  v12[7] = v10;
  v13 = swift_task_alloc();
  v0[19] = v13;
  *v13 = v0;
  v13[1] = sub_19A4337F4;
  v15 = v0[15];
  v14 = v0[16];

  return MEMORY[0x1EEE6DD58](v14, v15, v15, 0, 0, &unk_19A57EAF0, v12, v15);
}

uint64_t sub_19A4337F4()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_19A4339A4;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 56);
    v3 = sub_19A433918;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A433918()
{
  v1 = *(v0 + 128);

  v2 = *v1;

  sub_19A433FE8(v1);
  sub_19A348174(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_19A4339A4()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
  sub_19A348174(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A433A28()
{
  v1 = OBJC_IVAR____TtC16VisualGeneration36InProcessWordCloudGeneratorOperation_id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InProcessWordCloudGeneratorOperation()
{
  result = qword_1EAF9F288;
  if (!qword_1EAF9F288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A433B18(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for GenerationRecipe(0) + 20));
  if (*v1 == 0xD000000000000024 && 0x800000019A596DE0 == v1[1])
  {
    return 1;
  }

  return sub_19A573F1C();
}

uint64_t sub_19A433B9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for InProcessWordCloudGeneratorOperation();
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC16VisualGeneration36InProcessWordCloudGeneratorOperation_id;
  v6 = sub_19A57102C();
  result = (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *a2 = v4;
  return result;
}

uint64_t sub_19A433C28(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_19A433C50, 0, 0);
}

uint64_t sub_19A433C50()
{
  sub_19A4320B0(type metadata accessor for InProcessWordCloudGeneratorOperation, sub_19A406274);
  sub_19A39AA50(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_19A433D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_19A34B5BC;

  return sub_19A43352C(a1, v7, a3);
}

uint64_t sub_19A433DAC()
{
  swift_getWitnessTable();

  return sub_19A2F4500();
}

uint64_t sub_19A433E00@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16VisualGeneration36InProcessWordCloudGeneratorOperation_id;
  v5 = sub_19A57102C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19A433EC4(uint64_t a1)
{
  *(a1 + 8) = sub_19A433FA0(&qword_1EAF9F2A8, type metadata accessor for InProcessWordCloudGeneratorOperation);
  result = sub_19A433FA0(&qword_1EAF9F2B0, type metadata accessor for InProcessWordCloudGeneratorOperation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_19A433F48(uint64_t a1)
{
  result = sub_19A433FA0(&qword_1EAF9F2A0, type metadata accessor for InProcessWordCloudGeneratorOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A433FA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A433FE8(uint64_t a1)
{
  v2 = type metadata accessor for ImageGenerator.Result(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A4340A4(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = result;
    v23 = type metadata accessor for ImageGenerator();
    v4 = v1 + *(type metadata accessor for DefinitionSession() + 88);
    v5 = (v4 + *(type metadata accessor for GenerationRecipe(0) + 20));
    v6 = *v5;
    v7 = v5[1];
    v8 = (v3 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = *v8++;
      v10 = v11;
      sub_19A34F314(v6, v7, &v18);
      if (v19)
      {
        sub_19A3355E8(&v18, v20);
        v13 = v21;
        v12 = v22;
        __swift_project_boxed_opaque_existential_1(v20, v21);
        LOBYTE(v18) = v10;
        v14 = (*(*(v12 + 40) + 8))(&v18, v9, v13);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_19A434654(&v18);
        v14 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_5;
        }
      }

      v9 = sub_19A31D27C(0, *(v9 + 2) + 1, 1, v9);
LABEL_5:
      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      if (v16 >= v15 >> 1)
      {
        v9 = sub_19A31D27C((v15 > 1), v16 + 1, 1, v9);
      }

      *(v9 + 2) = v16 + 1;
      v9[v16 + 32] = v10;
      if ((v14 & 1) == 0)
      {
        sub_19A4345B4();
        swift_allocError();
        *v17 = v9;
        return swift_willThrow();
      }

      if (!--v2)
      {
      }
    }
  }

  return result;
}

uint64_t sub_19A434278(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v4 = (result + 32);
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = *v4++;
      v6 = v7;
      sub_19A4346BC(v3 + 128, &v14);
      if (v15)
      {
        sub_19A3355E8(&v14, v16);
        v8 = v17;
        v9 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        LOBYTE(v14) = v6;
        v10 = (*(*(v9 + 40) + 8))(&v14, v5, v8);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_19A434654(&v14);
        v10 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_5;
        }
      }

      v5 = sub_19A31D27C(0, *(v5 + 2) + 1, 1, v5);
LABEL_5:
      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_19A31D27C((v11 > 1), v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      v5[v12 + 32] = v6;
      if ((v10 & 1) == 0)
      {
        sub_19A4345B4();
        swift_allocError();
        *v13 = v5;
        return swift_willThrow();
      }

      if (!--v2)
      {
      }
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ImageStyleCompatibility.evaluateCompatibilities(of:)(Swift::OpaquePointer of)
{
  v3 = v2;
  v12 = v1;
  v4 = *(of._rawValue + 2);
  v5 = of._rawValue + 32;
  v6 = MEMORY[0x1E69E7CC0];
  while (v4)
  {
    v7 = *v5;
    v13 = *v5;
    v8 = (*(v3 + 8))(&v13, v6, v12, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_19A31D27C(0, *(v6 + 2) + 1, 1, v6);
    }

    v10 = *(v6 + 2);
    v9 = *(v6 + 3);
    if (v10 >= v9 >> 1)
    {
      v6 = sub_19A31D27C((v9 > 1), v10 + 1, 1, v6);
    }

    *(v6 + 2) = v10 + 1;
    v6[v10 + 32] = v7;
    ++v5;
    --v4;
    if ((v8 & 1) == 0)
    {
      sub_19A4345B4();
      swift_allocError();
      *v11 = v6;
      swift_willThrow();
      return;
    }
  }
}

unint64_t sub_19A4345B4()
{
  result = qword_1EAFA16F8;
  if (!qword_1EAFA16F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA16F8);
  }

  return result;
}

uint64_t sub_19A434654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A4346BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A43472C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v37 = result + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v36 = *(result + 16);
    while (1)
    {
      v4 = 0;
      v5 = *(v37 + v2);
      v38 = v2 + 1;
      while (1)
      {
        if (v4 == 5)
        {
          LOBYTE(v17) = 0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_116;
          }

          goto LABEL_111;
        }

        v7 = byte_1F0DA7A48[v4 + 32];
        if (v7 <= 2)
        {
          if (byte_1F0DA7A48[v4 + 32])
          {
            if (v7 == 1)
            {
              v8 = 0xE500000000000000;
              v9 = 0x696A6F6D65;
              if (v5 > 2)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v9 = 0x61727473756C6C69;
              v8 = 0xEC0000006E6F6974;
              if (v5 > 2)
              {
                goto LABEL_23;
              }
            }
          }

          else
          {
            v9 = 0x6F6974616D696E61;
            v8 = 0xE90000000000006ELL;
            if (v5 > 2)
            {
              goto LABEL_23;
            }
          }
        }

        else if (byte_1F0DA7A48[v4 + 32] > 4u)
        {
          if (v7 == 5)
          {
            v9 = 0xD000000000000013;
            v8 = 0x800000019A595400;
            if (v5 > 2)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v8 = 0xE800000000000000;
            v9 = 0x6C616E7265747865;
            if (v5 > 2)
            {
LABEL_23:
              v10 = 0xD000000000000013;
              if (v5 != 5)
              {
                v10 = 0x6C616E7265747865;
              }

              v11 = 0xE800000000000000;
              if (v5 == 5)
              {
                v11 = 0x800000019A595400;
              }

              v12 = 0x747241656E696CLL;
              if (v5 == 3)
              {
                v12 = 0x686374656B73;
              }

              v13 = 0xE600000000000000;
              if (v5 != 3)
              {
                v13 = 0xE700000000000000;
              }

              if (v5 <= 4)
              {
                v14 = v12;
              }

              else
              {
                v14 = v10;
              }

              if (v5 <= 4)
              {
                v15 = v13;
              }

              else
              {
                v15 = v11;
              }

              if (v9 != v14)
              {
                goto LABEL_4;
              }

              goto LABEL_50;
            }
          }
        }

        else if (v7 == 3)
        {
          v8 = 0xE600000000000000;
          v9 = 0x686374656B73;
          if (v5 > 2)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v8 = 0xE700000000000000;
          v9 = 0x747241656E696CLL;
          if (v5 > 2)
          {
            goto LABEL_23;
          }
        }

        if (v5)
        {
          break;
        }

        v15 = 0xE90000000000006ELL;
        if (v9 == 0x6F6974616D696E61)
        {
          goto LABEL_50;
        }

LABEL_4:
        v6 = sub_19A573F1C();

        ++v4;
        if (v6)
        {
          goto LABEL_52;
        }
      }

      if (v5 == 1)
      {
        v16 = 0x696A6F6D65;
      }

      else
      {
        v16 = 0x61727473756C6C69;
      }

      if (v5 == 1)
      {
        v15 = 0xE500000000000000;
      }

      else
      {
        v15 = 0xEC0000006E6F6974;
      }

      if (v9 != v16)
      {
        goto LABEL_4;
      }

LABEL_50:
      if (v8 != v15)
      {
        goto LABEL_4;
      }

LABEL_52:
      v17 = *(v3 + 2);
      if (!v17)
      {
        LOBYTE(v17) = 1;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_116;
        }

LABEL_111:
        v3 = sub_19A31D27C(0, *(v3 + 2) + 1, 1, v3);
        goto LABEL_116;
      }

      v18 = v3 + 32;
      while (2)
      {
        if (v17)
        {
          v20 = *v18;
          if (v20 <= 2)
          {
            v23 = 0x61727473756C6C69;
            if (v20 == 1)
            {
              v23 = 0x696A6F6D65;
            }

            v24 = 0xEC0000006E6F6974;
            if (v20 == 1)
            {
              v24 = 0xE500000000000000;
            }

            if (*v18)
            {
              v21 = v23;
            }

            else
            {
              v21 = 0x6F6974616D696E61;
            }

            if (*v18)
            {
              v22 = v24;
            }

            else
            {
              v22 = 0xE90000000000006ELL;
            }

            if (v5 > 2)
            {
              goto LABEL_80;
            }

LABEL_97:
            if (v5)
            {
              if (v5 == 1)
              {
                v31 = 0x696A6F6D65;
              }

              else
              {
                v31 = 0x61727473756C6C69;
              }

              if (v5 == 1)
              {
                v30 = 0xE500000000000000;
              }

              else
              {
                v30 = 0xEC0000006E6F6974;
              }

              if (v21 != v31)
              {
                goto LABEL_54;
              }
            }

            else
            {
              v30 = 0xE90000000000006ELL;
              if (v21 != 0x6F6974616D696E61)
              {
                goto LABEL_54;
              }
            }
          }

          else
          {
            if (*v18 > 4u)
            {
              if (v20 == 5)
              {
                v21 = 0xD000000000000013;
                v22 = 0x800000019A595400;
                if (v5 <= 2)
                {
                  goto LABEL_97;
                }
              }

              else
              {
                v22 = 0xE800000000000000;
                v21 = 0x6C616E7265747865;
                if (v5 <= 2)
                {
                  goto LABEL_97;
                }
              }
            }

            else
            {
              if (v20 == 3)
              {
                v21 = 0x686374656B73;
              }

              else
              {
                v21 = 0x747241656E696CLL;
              }

              if (v20 == 3)
              {
                v22 = 0xE600000000000000;
              }

              else
              {
                v22 = 0xE700000000000000;
              }

              if (v5 <= 2)
              {
                goto LABEL_97;
              }
            }

LABEL_80:
            v25 = 0xD000000000000013;
            if (v5 != 5)
            {
              v25 = 0x6C616E7265747865;
            }

            v26 = 0xE800000000000000;
            if (v5 == 5)
            {
              v26 = 0x800000019A595400;
            }

            v27 = 0x747241656E696CLL;
            if (v5 == 3)
            {
              v27 = 0x686374656B73;
            }

            v28 = 0xE600000000000000;
            if (v5 != 3)
            {
              v28 = 0xE700000000000000;
            }

            if (v5 <= 4)
            {
              v29 = v27;
            }

            else
            {
              v29 = v25;
            }

            if (v5 <= 4)
            {
              v30 = v28;
            }

            else
            {
              v30 = v26;
            }

            if (v21 != v29)
            {
LABEL_54:
              v19 = sub_19A573F1C();

              ++v18;
              --v17;
              if (v19)
              {
                goto LABEL_109;
              }

              continue;
            }
          }

          if (v22 == v30)
          {

LABEL_109:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            LOBYTE(v17) = 1;
            goto LABEL_115;
          }

          goto LABEL_54;
        }

        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
LABEL_115:
      v1 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_111;
      }

LABEL_116:
      v34 = *(v3 + 2);
      v33 = *(v3 + 3);
      v2 = v38;
      if (v34 >= v33 >> 1)
      {
        v3 = sub_19A31D27C((v33 > 1), v34 + 1, 1, v3);
      }

      *(v3 + 2) = v34 + 1;
      v3[v34 + 32] = v5;
      if ((v17 & 1) == 0)
      {
        sub_19A4345B4();
        swift_allocError();
        *v35 = v3;
        return swift_willThrow();
      }

      if (v38 == v1)
      {
      }
    }
  }

  return result;
}

uint64_t sub_19A434CE8(uint64_t result)
{
  v40 = *(result + 16);
  if (!v40)
  {
    return result;
  }

  v1 = 0;
  v39 = result + 32;
  v2 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v42 = v2;
    v3 = *(v39 + v1);
    v41 = v1 + 1;
    v4 = sub_19A4AE77C();
    v5 = *(v4 + 2);
    v6 = v4 + 32;
    while (1)
    {
      if (!v5)
      {

        v2 = v42;
LABEL_60:
        v20 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_120;
        }

LABEL_61:
        v2 = sub_19A31D27C(0, *(v2 + 2) + 1, 1, v2);
        goto LABEL_120;
      }

      v8 = *v6;
      if (v8 <= 2)
      {
        v11 = 0x61727473756C6C69;
        if (v8 == 1)
        {
          v11 = 0x696A6F6D65;
        }

        v12 = 0xEC0000006E6F6974;
        if (v8 == 1)
        {
          v12 = 0xE500000000000000;
        }

        if (*v6)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0x6F6974616D696E61;
        }

        if (*v6)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0xE90000000000006ELL;
        }

        if (v3 > 2)
        {
LABEL_30:
          v13 = 0xD000000000000013;
          if (v3 != 5)
          {
            v13 = 0x6C616E7265747865;
          }

          v14 = 0xE800000000000000;
          if (v3 == 5)
          {
            v14 = 0x800000019A595400;
          }

          v15 = 0x747241656E696CLL;
          if (v3 == 3)
          {
            v15 = 0x686374656B73;
          }

          v16 = 0xE600000000000000;
          if (v3 != 3)
          {
            v16 = 0xE700000000000000;
          }

          if (v3 <= 4)
          {
            v17 = v15;
          }

          else
          {
            v17 = v13;
          }

          if (v3 <= 4)
          {
            v18 = v16;
          }

          else
          {
            v18 = v14;
          }

          if (v9 != v17)
          {
            goto LABEL_4;
          }

          goto LABEL_57;
        }
      }

      else if (*v6 > 4u)
      {
        if (v8 == 5)
        {
          v9 = 0xD000000000000013;
          v10 = 0x800000019A595400;
          if (v3 > 2)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v10 = 0xE800000000000000;
          v9 = 0x6C616E7265747865;
          if (v3 > 2)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0x686374656B73;
        }

        else
        {
          v9 = 0x747241656E696CLL;
        }

        if (v8 == 3)
        {
          v10 = 0xE600000000000000;
        }

        else
        {
          v10 = 0xE700000000000000;
        }

        if (v3 > 2)
        {
          goto LABEL_30;
        }
      }

      if (v3)
      {
        break;
      }

      v18 = 0xE90000000000006ELL;
      if (v9 == 0x6F6974616D696E61)
      {
        goto LABEL_57;
      }

LABEL_4:
      v7 = sub_19A573F1C();

      ++v6;
      --v5;
      if (v7)
      {
        goto LABEL_62;
      }
    }

    if (v3 == 1)
    {
      v19 = 0x696A6F6D65;
    }

    else
    {
      v19 = 0x61727473756C6C69;
    }

    if (v3 == 1)
    {
      v18 = 0xE500000000000000;
    }

    else
    {
      v18 = 0xEC0000006E6F6974;
    }

    if (v9 != v19)
    {
      goto LABEL_4;
    }

LABEL_57:
    if (v10 != v18)
    {
      goto LABEL_4;
    }

LABEL_62:

    v2 = v42;
    v21 = *(v42 + 2);
    if (v21)
    {
      v22 = v42 + 32;
      do
      {
        if (!v21)
        {
          goto LABEL_60;
        }

        v24 = *v22;
        if (v24 <= 2)
        {
          v27 = 0x61727473756C6C69;
          if (v24 == 1)
          {
            v27 = 0x696A6F6D65;
          }

          v28 = 0xEC0000006E6F6974;
          if (v24 == 1)
          {
            v28 = 0xE500000000000000;
          }

          if (*v22)
          {
            v25 = v27;
          }

          else
          {
            v25 = 0x6F6974616D696E61;
          }

          if (*v22)
          {
            v26 = v28;
          }

          else
          {
            v26 = 0xE90000000000006ELL;
          }

          if (v3 > 2)
          {
LABEL_90:
            v29 = 0xD000000000000013;
            if (v3 != 5)
            {
              v29 = 0x6C616E7265747865;
            }

            v30 = 0xE800000000000000;
            if (v3 == 5)
            {
              v30 = 0x800000019A595400;
            }

            v31 = 0x747241656E696CLL;
            if (v3 == 3)
            {
              v31 = 0x686374656B73;
            }

            v32 = 0xE600000000000000;
            if (v3 != 3)
            {
              v32 = 0xE700000000000000;
            }

            if (v3 <= 4)
            {
              v33 = v31;
            }

            else
            {
              v33 = v29;
            }

            if (v3 <= 4)
            {
              v34 = v32;
            }

            else
            {
              v34 = v30;
            }

            if (v25 != v33)
            {
              goto LABEL_64;
            }

            goto LABEL_117;
          }
        }

        else if (*v22 > 4u)
        {
          if (v24 == 5)
          {
            v25 = 0xD000000000000013;
            v26 = 0x800000019A595400;
            if (v3 > 2)
            {
              goto LABEL_90;
            }
          }

          else
          {
            v26 = 0xE800000000000000;
            v25 = 0x6C616E7265747865;
            if (v3 > 2)
            {
              goto LABEL_90;
            }
          }
        }

        else
        {
          if (v24 == 3)
          {
            v25 = 0x686374656B73;
          }

          else
          {
            v25 = 0x747241656E696CLL;
          }

          if (v24 == 3)
          {
            v26 = 0xE600000000000000;
          }

          else
          {
            v26 = 0xE700000000000000;
          }

          if (v3 > 2)
          {
            goto LABEL_90;
          }
        }

        if (v3)
        {
          if (v3 == 1)
          {
            v35 = 0x696A6F6D65;
          }

          else
          {
            v35 = 0x61727473756C6C69;
          }

          if (v3 == 1)
          {
            v34 = 0xE500000000000000;
          }

          else
          {
            v34 = 0xEC0000006E6F6974;
          }

          if (v25 != v35)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v34 = 0xE90000000000006ELL;
          if (v25 != 0x6F6974616D696E61)
          {
            goto LABEL_64;
          }
        }

LABEL_117:
        if (v26 == v34)
        {

          break;
        }

LABEL_64:
        v23 = sub_19A573F1C();

        ++v22;
        --v21;
      }

      while ((v23 & 1) == 0);
    }

    v20 = 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_120:
    v37 = *(v2 + 2);
    v36 = *(v2 + 3);
    if (v37 >= v36 >> 1)
    {
      v2 = sub_19A31D27C((v36 > 1), v37 + 1, 1, v2);
    }

    *(v2 + 2) = v37 + 1;
    v2[v37 + 32] = v3;
    if (v20)
    {
      v1 = v41;
      if (v41 == v40)
      {
      }

      continue;
    }

    break;
  }

  sub_19A4345B4();
  swift_allocError();
  *v38 = v2;
  return swift_willThrow();
}

uint64_t sub_19A4352A0(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = *(result + 32);
    v2 = sub_19A31D27C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_19A31D27C((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v2[v4 + 32] = v1;
    sub_19A4345B4();
    swift_allocError();
    *v5 = v2;
    return swift_willThrow();
  }

  return result;
}

VisualGeneration::PromptRewriteStrategy_optional __swiftcall PromptRewriteStrategy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19A573C2C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PromptRewriteStrategy.rawValue.getter()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79746569726176;
  }
}

uint64_t sub_19A435444(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000013;
  v3 = *a1;
  v4 = 0x800000019A595A60;
  if (v3 == 1)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v3 == 1)
  {
    v6 = 0x800000019A595A60;
  }

  else
  {
    v6 = 0x800000019A595A80;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x79746569726176;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = 0x800000019A595A80;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x79746569726176;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19A573F1C();
  }

  return v11 & 1;
}

uint64_t sub_19A435524()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A4355D4()
{
  sub_19A572E4C();
}

uint64_t sub_19A435670()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

void sub_19A435728(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x800000019A595A60;
  v5 = 0xD00000000000001ALL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x800000019A595A80;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x79746569726176;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_19A435854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v7 = sub_19A57112C();
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *a3 = v12;
  }

  else
  {
    (*(v9 + 16))(v11, a2);
    sub_19A57201C();
    swift_allocObject();

    v13 = sub_19A571FFC();
    if (v3)
    {

      v13 = 0;
    }

    *a1 = v13;
    *a3 = v13;
  }

  return result;
}

uint64_t sub_19A4359B0()
{
  type metadata accessor for JapaneseHiraganaConverter();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1730);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(v0 + 16) = result;
  qword_1EAFA1700 = v0;
  return result;
}

unint64_t sub_19A435A18@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1708);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v3;
  *(a1 + 80) = xmmword_19A57FCB0;
  v4 = type metadata accessor for UserPromptRewriter();
  v5 = a1 + v4[13];
  *v5 = 0;
  *(v5 + 8) = 1;
  *(a1 + v4[15]) = 0;
  *(a1 + v4[16]) = 1;
  *(a1 + v4[17]) = 1;
  v6 = a1 + v4[18];
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 processName];
  v9 = sub_19A572CFC();
  v11 = v10;

  LODWORD(v8) = [v7 processIdentifier];
  v12 = getuid();

  *v6 = v9;
  *(v6 + 8) = v11;
  *(v6 + 16) = v8;
  *(v6 + 20) = v12;
  v13 = (a1 + v4[19]);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *(a1 + v4[20]) = 3;
  *(a1 + v4[21]) = 1056964608;
  v14 = (a1 + v4[22]);
  *v14 = 0;
  v14[1] = 0;
  *(a1 + v4[23]) = 0;
  sub_19A474D68(a1 + v4[12]);
  result = sub_19A475DE8();
  *(a1 + v4[14]) = 0x14057B7EF767814FLL;
  return result;
}

uint64_t UserPromptRewriter.init(userProvidedPrompt:performPromptRewrite:locale:modelManagerServicesUseCaseID:promptRewriteStrategy:promptRewriteSeed:personalizationRewriteProbability:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, unsigned __int8 a11)
{
  v59 = a8;
  v60 = a4;
  v52 = a5;
  v53 = a6;
  v51 = a3;
  v56 = a1;
  v57 = a2;
  v58 = a11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v49 - v15;
  v54 = sub_19A57112C();
  v17 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1708);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = 0;
  *a9 = v19;
  *(a9 + 24) = 0;
  *(a9 + 32) = 0xE000000000000000;
  *(a9 + 40) = 0;
  *(a9 + 48) = 0xE000000000000000;
  *(a9 + 56) = 0;
  *(a9 + 64) = 0;
  *(a9 + 72) = MEMORY[0x1E69E7CC0];
  *(a9 + 80) = xmmword_19A57FCB0;
  v20 = type metadata accessor for UserPromptRewriter();
  v49 = v20[15];
  *(a9 + v49) = 0;
  *(a9 + v20[16]) = 1;
  *(a9 + v20[17]) = 1;
  v21 = a9 + v20[18];
  v22 = [objc_opt_self() processInfo];
  v23 = [v22 processName];
  v24 = sub_19A572CFC();
  v26 = v25;

  LODWORD(v23) = [v22 processIdentifier];
  v27 = getuid();

  *v21 = v24;
  *(v21 + 8) = v26;
  *(v21 + 16) = v23;
  *(v21 + 20) = v27;
  v28 = (a9 + v20[19]);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v29 = v20[20];
  *(a9 + v29) = 3;
  v30 = v20[21];
  *(a9 + v30) = 1056964608;
  v31 = (a9 + v20[22]);
  *v31 = 0;
  v31[1] = 0;
  *(a9 + v20[23]) = 0;
  v32 = v57;
  *(a9 + 8) = v56;
  *(a9 + 16) = v32;
  sub_19A3B3F3C(v60, v16);
  v33 = *(v17 + 48);
  v34 = v16;
  v35 = v16;
  v36 = v54;
  if (v33(v35, 1, v54) == 1)
  {
    v57 = v17;
    v37 = v30;
    v38 = v29;
    v39 = v55;
    sub_19A474D68(v55);
    v40 = v33(v34, 1, v36);
    v41 = v39;
    v29 = v38;
    v30 = v37;
    v17 = v57;
    if (v40 == 1)
    {
      goto LABEL_6;
    }

    v42 = v41;
    sub_19A2F3FA0(v34, &qword_1EAF9FDC8);
  }

  else
  {
    v42 = v55;
    (*(v17 + 32))(v55, v34, v36);
  }

  v41 = v42;
LABEL_6:
  v43 = a9 + v20[13];
  result = (*(v17 + 32))(a9 + v20[12], v41, v36);
  v45 = v59;
  *v43 = v59;
  v46 = (v58 & 1) == 0;
  *(v43 + 8) = v58 & 1;
  if (v46)
  {
    v47 = v45;
  }

  else
  {
    v47 = 0;
  }

  if (v47 < 0)
  {
    __break(1u);
  }

  else
  {
    v61 = v47 + 0x14057B7EF767814FLL;
    sub_19A475DE8();
    *(a9 + v20[14]) = v61;
    sub_19A436024();
    sub_19A2F3FA0(v60, &qword_1EAF9FDC8);
    *(a9 + v49) = v51 & 1;

    v48 = v53;
    *v28 = v52;
    v28[1] = v48;
    *(a9 + v29) = v50;
    *(a9 + v30) = a10;
  }

  return result;
}

uint64_t type metadata accessor for UserPromptRewriter()
{
  result = qword_1EAF9F5D8;
  if (!qword_1EAF9F5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A436024()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;

  v0[9] = MEMORY[0x1E69E7CC0];

  v0[8] = 0;
  v0[11] = 1;
  v5 = type metadata accessor for UserPromptRewriter();
  v0[7] = *(v0 + v5[17]) < 2;
  v0[10] = 0;
  v6 = v0[1];
  v7 = v0[2];
  v8 = v5[12];
  v9 = sub_19A57112C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4, v0 + v8, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  v11 = sub_19A4396A8(v6, v7, v4);
  v13 = v12;
  sub_19A2F3FA0(v4, &qword_1EAF9FDC8);
  sub_19A438E64(v11, v13);

  v0[5] = v6;
  v0[6] = v7;
  v14 = (v0 + v5[22]);

  *v14 = 0;
  v14[1] = 0;
  *(v1 + v5[23]) = 0;
  return result;
}

uint64_t sub_19A4361F4(uint64_t a1)
{
  v3 = sub_19A57112C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v34[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1028);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v39 = &v34[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v34[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34[-v19];
  v21 = *(type metadata accessor for UserPromptRewriter() + 48);
  v22 = *(v4 + 16);
  v41 = v1;
  v38 = v21;
  v22(v20, v1 + v21, v3);
  (*(v4 + 56))(v20, 0, 1, v3);
  v23 = *(v10 + 56);
  sub_19A3B3F3C(v20, v12);
  v40 = a1;
  sub_19A3B3F3C(a1, &v12[v23]);
  v24 = *(v4 + 48);
  if (v24(v12, 1, v3) == 1)
  {
    sub_19A2F3FA0(v20, &qword_1EAF9FDC8);
    if (v24(&v12[v23], 1, v3) == 1)
    {
      sub_19A2F3FA0(v12, &qword_1EAF9FDC8);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_19A3B3F3C(v12, v18);
  if (v24(&v12[v23], 1, v3) == 1)
  {
    sub_19A2F3FA0(v20, &qword_1EAF9FDC8);
    (*(v4 + 8))(v18, v3);
LABEL_6:
    sub_19A2F3FA0(v12, &qword_1EAFA1028);
LABEL_7:
    v25 = v7;
    v26 = *v41;
    os_unfair_lock_lock(*v41 + 6);

    *&v26[4]._os_unfair_lock_opaque = 0;
    v27 = v26 + 6;
    v7 = v25;
    os_unfair_lock_unlock(v27);
    goto LABEL_8;
  }

  v31 = &v12[v23];
  v32 = v37;
  (*(v4 + 32))(v37, v31, v3);
  sub_19A4170CC();
  v35 = sub_19A572C2C();
  v36 = v7;
  v33 = *(v4 + 8);
  v33(v32, v3);
  sub_19A2F3FA0(v20, &qword_1EAF9FDC8);
  v33(v18, v3);
  v7 = v36;
  sub_19A2F3FA0(v12, &qword_1EAF9FDC8);
  if ((v35 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v29 = v39;
  v28 = v40;
  sub_19A3B3F3C(v40, v39);
  if (v24(v29, 1, v3) == 1)
  {
    sub_19A474D68(v7);
    sub_19A2F3FA0(v28, &qword_1EAF9FDC8);
    if (v24(v29, 1, v3) != 1)
    {
      sub_19A2F3FA0(v29, &qword_1EAF9FDC8);
    }
  }

  else
  {
    sub_19A2F3FA0(v28, &qword_1EAF9FDC8);
    (*(v4 + 32))(v7, v29, v3);
  }

  return (*(v4 + 40))(v41 + v38, v7, v3);
}

uint64_t sub_19A4366F4()
{
  result = type metadata accessor for UserPromptRewriter();
  v2 = (v0 + *(result + 88));
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {

      return v4;
    }
  }

  v6 = v0[9];
  if (*(v6 + 16))
  {
    v17[0] = *(v6 + 40);
    v7 = v0[4];
    v17[1] = v0[3];
    v17[2] = v7;

    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
LABEL_8:
    v10 = &v17[2 * v8];
    while (++v8 != 3)
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v10 += 2;
      v13 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v13 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_19A322580(0, *(v9 + 16) + 1, 1);
        }

        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_19A322580((v14 > 1), v15 + 1, 1);
        }

        *(v9 + 16) = v15 + 1;
        v16 = v9 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v11;
        goto LABEL_8;
      }
    }

    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
    sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
    v4 = sub_19A572BEC();

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A4368E4()
{
  v1 = sub_19A57093C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A4366F4();
  v7 = v6;
  v8 = *(v0 + *(type metadata accessor for UserPromptRewriter() + 80));
  if (v8 > 1)
  {
    if (v8 != 2)
    {
LABEL_15:
      v10 = sub_19A572DCC();
      goto LABEL_19;
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v9 = sub_19A573F1C();

    if ((v9 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v10 = 0x6E6F73726570;
  v11 = sub_19A572DCC();
  v13 = v12;
  v22[0] = v11;
  v22[1] = v12;
  sub_19A5708CC();
  sub_19A2F4450();
  v14 = sub_19A57380C();
  v16 = v15;
  (*(v2 + 8))(v4, v1);

  v17 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v17 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    if (v14 == 0x6E6F73726570 && v16 == 0xE600000000000000)
    {
    }

    else
    {
      v19 = sub_19A573F1C();

      if ((v19 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DF0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_19A576E20;
        *(v20 + 32) = 0x6E6F73726570;
        *(v20 + 40) = 0xE600000000000000;
        *(v20 + 48) = v11;
        *(v20 + 56) = v13;
        v22[0] = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
        sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
        v10 = sub_19A572BEC();
      }
    }
  }

  else
  {
  }

LABEL_19:

  return v10;
}

uint64_t sub_19A436C18()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1728);
  v1[4] = swift_task_alloc();
  v2 = sub_19A571FEC();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A436D10, 0, 0);
}

uint64_t sub_19A436D10()
{
  v72 = v0;
  if (qword_1ED824BA8 != -1)
  {
LABEL_55:
    swift_once();
  }

  v1 = sub_19A57236C();
  __swift_project_value_buffer(v1, qword_1ED82BD30);
  v2 = sub_19A57231C();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  sub_19A57234C();
  sub_19A5722EC();
  v5 = sub_19A57234C();
  v6 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v5, v6, v8, "UserPromptRewriter.promptRewrite", "", v7, 2u);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  v9 = v0[3];

  swift_task_alloc();
  (*(v3 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  v0[8] = sub_19A5723AC();
  (*(v3 + 8))(v4, v2);

  v10 = type metadata accessor for UserPromptRewriter();
  v11 = (v9 + v10[13]);
  v12 = *v11;
  v68 = *(v11 + 8);
  if (v68)
  {
    v69 = *v11;
  }

  else
  {
    if (*(*(v0[3] + 72) + 16) > 1uLL)
    {
      v12 = (1664525 * v12 + 1013904223) & 0x7FFFFFFF;
    }

    v69 = v12;
    *v11 = v12;
    *(v11 + 8) = 0;
  }

  v13 = v0[3];
  v14 = sub_19A4368E4();
  v16 = v15;
  if (*(v13 + v10[23]) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DF0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_19A576E20;
    *(v17 + 32) = v14;
    *(v17 + 40) = v16;
    *(v17 + 48) = 0x79656C696D73;
    *(v17 + 56) = 0xE600000000000000;
    v0[2] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
    sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
    v14 = sub_19A572BEC();
    v16 = v18;
  }

  v0[9] = v16;
  v19 = v0[3];
  v20 = v10[20];
  v70 = v14;
  if (*(v19 + v20) > 1u)
  {
    if (*(v19 + v20) == 2)
    {
      swift_bridgeObjectRelease_n();
      v22 = 1;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v21 = sub_19A573F1C();

    v22 = v21 & 1;
  }

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v23 = sub_19A5723FC();
  v0[10] = __swift_project_value_buffer(v23, qword_1ED82BCF0);

  v24 = sub_19A5723DC();
  v25 = sub_19A57356C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v71[0] = v27;
    *v26 = 67109378;
    *(v26 + 4) = v22;
    *(v26 + 8) = 2080;
    *(v26 + 10) = sub_19A31F114(v70, v16, v71);
    _os_log_impl(&dword_19A2DE000, v24, v25, "UserPromptRewriter isPersonalization: %{BOOL}d promptToRewrite: %s", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x19A902C50](v27, -1, -1);
    MEMORY[0x19A902C50](v26, -1, -1);
  }

  v28 = *v0[3];
  v0[11] = v28;
  v29 = MEMORY[0x1E69CA6A0];
  if (*(v19 + v20) <= 1u)
  {
    if (*(v19 + v20))
    {
      v30 = MEMORY[0x1E69CA690];
    }

    else
    {
      v30 = MEMORY[0x1E69CA6A0];
    }

    goto LABEL_26;
  }

  if (*(v19 + v20) == 2)
  {
    v30 = MEMORY[0x1E69CA698];
LABEL_26:
    v31 = v0[6];
    v32 = v0[7];
    v34 = v0[4];
    v33 = v0[5];
    (*(v31 + 104))(v34, *v30, v33);
    (*(v31 + 56))(v34, 0, 1, v33);
    (*(v31 + 32))(v32, v34, v33);
    goto LABEL_28;
  }

  v36 = v0[6];
  v35 = v0[7];
  v37 = v0[5];
  (*(v36 + 56))(v0[4], 1, 1, v37);
  (*(v36 + 104))(v35, *v29, v37);
LABEL_28:
  v38 = v0[3];
  v39 = v10[18];
  v40 = (v38 + v10[19]);
  v42 = *v40;
  v41 = v40[1];
  v43 = v38 + v10[12];
  v44 = *(v38 + v39 + 16);
  v45 = swift_task_alloc();
  v45[2] = v42;
  v45[3] = v41;
  v45[4] = v43;
  v45[5] = v44;
  os_unfair_lock_lock((v28 + 24));
  sub_19A438F58((v28 + 16), v71);
  os_unfair_lock_unlock((v28 + 24));
  v46 = v71[0];
  v0[12] = v71[0];

  if (v46)
  {

    v47 = swift_task_alloc();
    v0[13] = v47;
    *v47 = v0;
    v47[1] = sub_19A43760C;
    v48 = v0[7];

    return MEMORY[0x1EEE33C10](v48, v70, v16, 4, 0, v69, v68);
  }

  *(swift_task_alloc() + 16) = 0;
  os_unfair_lock_lock((v28 + 24));
  sub_19A438F78((v28 + 16));
  os_unfair_lock_unlock((v28 + 24));
  v50 = v0[6];
  v49 = v0[7];
  v51 = v0[5];

  (*(v50 + 8))(v49, v51);

  v52 = MEMORY[0x1E69E7CC0];
  v53 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v53)
  {
    v54 = 0;
    v55 = v0[3];
    do
    {
      if (v54 >= *(v52 + 16))
      {
        __break(1u);
        goto LABEL_55;
      }

      v56 = v52 + 16 * v54;
      v58 = *(v56 + 32);
      v57 = *(v56 + 40);
      v59 = *(v55 + 64);
      v60 = *(v55 + 72);
      v61 = *(v60 + 16);
      if (v59)
      {

        sub_19A4393C0(v58, v57, v60 + 32, v61, (v59 + 16));
        v63 = v62;

        if ((v63 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v61)
        {
          v64 = (v60 + 40);
          do
          {
            v65 = *(v64 - 1) == v58 && *v64 == v57;
            if (v65 || (sub_19A573F1C() & 1) != 0)
            {
              goto LABEL_37;
            }

            v64 += 2;
          }

          while (--v61);
        }
      }

      sub_19A438FA8(v58, v57);
LABEL_36:

LABEL_37:
      ++v54;
    }

    while (v54 != v53);
  }

  sub_19A437CC4("UserPromptRewriter.promptRewrite", 32, 2);

  v66 = v0[1];

  return v66();
}

uint64_t sub_19A43760C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_19A43798C;
  }

  else
  {
    v4 = sub_19A437720;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_19A437720()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];

  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock((v3 + 24));
  sub_19A439DD4((v3 + 16));
  if (v1)
  {
    v4 = (v0[11] + 24);

    os_unfair_lock_unlock(v4);
    return;
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  os_unfair_lock_unlock((v0[11] + 24));

  (*(v6 + 8))(v5, v7);

  v8 = v0[14];
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v0[3];
    do
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        return;
      }

      v12 = (v8 + 32 + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(v11 + 64);
      v16 = *(v11 + 72);
      v17 = *(v16 + 16);
      if (v15)
      {

        sub_19A4393C0(v14, v13, v16 + 32, v17, (v15 + 16));
        v19 = v18;

        if ((v19 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v17)
        {
          v20 = (v16 + 40);
          do
          {
            v21 = *(v20 - 1) == v14 && *v20 == v13;
            if (v21 || (sub_19A573F1C() & 1) != 0)
            {
              goto LABEL_10;
            }

            v20 += 2;
          }

          while (--v17);
        }
      }

      sub_19A438FA8(v14, v13);
LABEL_9:

LABEL_10:
      ++v10;
    }

    while (v10 != v9);
  }

  sub_19A437CC4("UserPromptRewriter.promptRewrite", 32, 2);

  v22 = v0[1];

  v22();
}

uint64_t sub_19A43798C()
{
  v2 = v0[11];
  v1 = v0[12];

  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_19A439DD4((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  v3 = v0[15];

  v4 = v3;
  v5 = sub_19A5723DC();
  v6 = sub_19A57355C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[15];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_19A2DE000, v5, v6, "Error generating prompt rewrites: %@", v9, 0xCu);
    sub_19A2F3FA0(v10, &qword_1EAF9FD28);
    MEMORY[0x19A902C50](v10, -1, -1);
    MEMORY[0x19A902C50](v9, -1, -1);
  }

  else
  {
  }

  result = (*(v0[6] + 8))(v0[7], v0[5]);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v15)
  {
    v16 = 0;
    v17 = v0[3];
    do
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        return result;
      }

      v18 = v14 + 16 * v16;
      v20 = *(v18 + 32);
      v19 = *(v18 + 40);
      v21 = *(v17 + 64);
      v22 = *(v17 + 72);
      v23 = *(v22 + 16);
      if (v21)
      {

        sub_19A4393C0(v20, v19, v22 + 32, v23, (v21 + 16));
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (v23)
        {
          v26 = (v22 + 40);
          do
          {
            result = *(v26 - 1);
            if (result == v20 && *v26 == v19)
            {
              goto LABEL_9;
            }

            result = sub_19A573F1C();
            if (result)
            {
              goto LABEL_9;
            }

            v26 += 2;
          }

          while (--v23);
        }
      }

      sub_19A438FA8(v20, v19);
LABEL_8:

LABEL_9:
      ++v16;
    }

    while (v16 != v15);
  }

  sub_19A437CC4("UserPromptRewriter.promptRewrite", 32, 2);

  v28 = v0[1];

  return v28();
}

uint64_t sub_19A437CC4(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_19A437FAC()
{
  v1 = v0[7];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v0[9];
  if (v1 >= *(v2 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2 + 16 * v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  swift_bridgeObjectRetain_n();

  v0[5] = v4;
  v0[6] = v5;
  v6 = v0[11];
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v0[11] = v7;
  if (v7 >= *(v0 + *(type metadata accessor for UserPromptRewriter() + 68)))
  {
    v0[7] = v1 + 1;
  }
}

void sub_19A43805C()
{
  v1 = v0[7];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v0[9];
  if (v1 >= *(v2 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2 + 16 * v1;
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  swift_bridgeObjectRetain_n();

  v0[5] = v4;
  v0[6] = v5;
  v6 = v0[10];
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v0[10] = v7;
  if (v7 == *(v0 + *(type metadata accessor for UserPromptRewriter() + 64)))
  {
    v0[7] = v1 + 1;
    v0[10] = 0;
  }
}

uint64_t sub_19A438130()
{
  v38 = v0;
  v1 = v0[11];
  v2 = type metadata accessor for UserPromptRewriter();
  if (*(v1 + v2[20]) > 1u)
  {
    if (*(v1 + v2[20]) != 2)
    {
      goto LABEL_7;
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v3 = sub_19A573F1C();

    if ((v3 & 1) == 0)
    {
      v1 = v0[11];
      goto LABEL_7;
    }
  }

  v4 = *(v0[11] + v2[21]);
  v5 = sub_19A475DE8();
  v1 = v0[11];
  if (vcvts_n_f32_u64(v5, 0x40uLL) >= v4)
  {
    v12 = v1[2];
    v0[6] = v1[1];
    v0[7] = v12;
    v13 = v1[3];
    v14 = v1[4];
    v0[8] = v13;
    v0[9] = v14;

    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v17 = &v0[2 * v15 + 7];
    while (++v15 != 3)
    {
      v19 = *(v17 - 1);
      v18 = *v17;
      v17 += 2;
      v20 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v20 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {

        v37 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_19A322580(0, *(v16 + 16) + 1, 1);
          v16 = v37;
        }

        v21 = *(v16 + 16);
        v22 = *(v16 + 24);
        v23 = v21 + 1;
        if (v21 >= v22 >> 1)
        {
          v25 = v21 + 1;
          v36 = v21;
          sub_19A322580((v22 > 1), v21 + 1, 1);
          v23 = v25;
          v21 = v36;
          v16 = v37;
        }

        *(v16 + 16) = v23;
        v24 = v16 + 16 * v21;
        *(v24 + 32) = v19;
        *(v24 + 40) = v18;
        goto LABEL_15;
      }
    }

    swift_arrayDestroy();
    v0[10] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
    sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
    v26 = sub_19A572BEC();
    v28 = v27;

    if (qword_1EAF9F208 != -1)
    {
      swift_once();
    }

    v29 = sub_19A5723FC();
    __swift_project_value_buffer(v29, qword_1EAFCA1E8);

    v30 = sub_19A5723DC();
    v31 = sub_19A57356C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136380675;
      *(v32 + 4) = sub_19A31F114(v26, v28, &v37);
      _os_log_impl(&dword_19A2DE000, v30, v31, "[Randomized personalization rewrite] use original prompt: %{private}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x19A902C50](v33, -1, -1);
      MEMORY[0x19A902C50](v32, -1, -1);

      v8 = v26;
      v34 = 1;
    }

    else
    {

      v34 = 1;
      v8 = v26;
    }

    goto LABEL_33;
  }

LABEL_7:
  v6 = v1[7];
  if (v6 < *(v1[9] + 16))
  {
    if (v6)
    {
      sub_19A43805C();
    }

    else
    {
      sub_19A437FAC();
    }

    v28 = v9;
    v34 = v7 & 1;
    goto LABEL_33;
  }

  if (*(v1 + v2[15]) != 1)
  {
    v34 = 0;
    v8 = 0;
    v28 = 0;
LABEL_33:
    v35 = v0[1];

    return v35(v34, v8, v28);
  }

  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_19A4385E8;

  return sub_19A436C18();
}

uint64_t sub_19A4385E8()
{

  return MEMORY[0x1EEE6DFA0](sub_19A4386E4, 0, 0);
}

uint64_t sub_19A4386E4()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 56);
  if (v2 >= *(*(v1 + 72) + 16))
  {
    v6 = 0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    if (v2)
    {
      sub_19A43805C();
    }

    else
    {
      sub_19A437FAC();
    }

    v6 = v3 & 1;
  }

  v7 = *(v0 + 8);

  return v7(v6, v4, v5);
}

uint64_t sub_19A438778(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_19A438808;

  return UserPromptRewriter.next()();
}

uint64_t sub_19A438808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_19A438930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_19A4389C4;

  return UserPromptRewriter.next()();
}

uint64_t sub_19A4389C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 24);

  if (v8)
  {
    swift_getObjectType();
    v9 = sub_19A57314C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v7[6] = a3;
  v7[7] = a2;
  v7[8] = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A438B24, v9, v11);
}

uint64_t sub_19A438B24()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *v2 = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
  v2[1].i64[0] = v1;
  return (*(v0 + 8))();
}

unint64_t sub_19A438B58()
{
  result = qword_1EAFA1710;
  if (!qword_1EAFA1710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1710);
  }

  return result;
}

void sub_19A438C34()
{
  sub_19A438DA8();
  if (v0 <= 0x3F)
  {
    sub_19A57112C();
    if (v1 <= 0x3F)
    {
      sub_19A3330B0(319, &qword_1ED825598);
      if (v2 <= 0x3F)
      {
        sub_19A3330B0(319, &qword_1ED825360);
        if (v3 <= 0x3F)
        {
          sub_19A3330B0(319, &qword_1ED8255C0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_19A438DA8()
{
  if (!qword_1EAF9F1C8)
  {
    v0 = sub_19A571ADC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9F1C8);
    }
  }
}

unint64_t sub_19A438E10()
{
  result = qword_1ED8246B8;
  if (!qword_1ED8246B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8246B8);
  }

  return result;
}

uint64_t sub_19A438E64(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v6 + 16);
  if (*v2)
  {

    sub_19A4393C0(a1, a2, v6 + 32, v7, (v5 + 16));
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    v11 = 0;
    v12 = (v6 + 40);
    do
    {
      v13 = *(v12 - 1) == a1 && *v12 == a2;
      if (v13 || (sub_19A573F1C() & 1) != 0)
      {
        return 0;
      }

      ++v11;
      v12 += 2;
    }

    while (v7 != v11);
  }

  sub_19A438FA8(a1, a2);
  return 1;
}

void *sub_19A438F78(void *result)
{
  if (!*result)
  {
    *result = *(v1 + 16);
  }

  return result;
}

uint64_t sub_19A438FA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_19A322580(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_19A322580((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x19A8FF6B0](*(v13 + 16) & 0x3FLL) > v11)
    {
      result = swift_isUniquelyReferenced_native();
      v14 = *v3;
      if ((result & 1) == 0)
      {
        if (!v14)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v15 = sub_19A571B4C();

        *v3 = v15;
        v14 = v15;
      }

      if (v14)
      {
        return sub_19A571AFC();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_19A439120();
}

uint64_t sub_19A439120()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x19A8FF6D0](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_19A4391C0(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_19A4391C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x19A8FF6D0](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x19A8FF6E0](v8, a4);
    sub_19A439240(a1, (v10 + 16));
    return v10;
  }

  return result;
}

uint64_t sub_19A439290(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        sub_19A5740BC();

        sub_19A572E4C();
        result = sub_19A57410C();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v7 = sub_19A571AEC();

        if (v7)
        {
          while (1)
          {
            sub_19A571B2C();
          }
        }

        result = sub_19A571B1C();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_19A4393C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_19A5740BC();
  sub_19A572E4C();
  result = sub_19A57410C();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_19A571AEC();
    result = sub_19A571B0C();
    if ((v10 & 1) == 0)
    {
      v11 = (a3 + 16 * result);
      if (*v11 != a1 || v11[1] != a2)
      {
        while (1)
        {
          v13 = result;
          if (sub_19A573F1C())
          {
            break;
          }

          sub_19A571B2C();
          result = sub_19A571B0C();
          if ((v14 & 1) == 0)
          {
            v15 = (a3 + 16 * result);
            if (*v15 != a1 || v15[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v13;
      }
    }
  }

  return result;
}

uint64_t sub_19A43950C(uint64_t a1, unint64_t a2)
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
    v5 = 0;
    v6 = a2 & 0xFFFFFFFFFFFFFFLL;
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v10 = sub_19A57394C();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v16[0] = a1;
          v16[1] = v6;
          v9 = v16 + v5;
        }

        else
        {
          v8 = v7;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v8 = sub_19A573A0C();
          }

          v9 = (v8 + v5);
        }

        v10 = *v9;
        if ((*v9 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v14 = (__clz(v10 ^ 0xFF) - 24);
        if (v14 <= 2)
        {
          if (v14 != 1)
          {
            v10 = v9[1] & 0x3F | ((v10 & 0x1F) << 6);
            v11 = 2;
            goto LABEL_15;
          }

LABEL_14:
          v11 = 1;
          goto LABEL_15;
        }

        if (v14 == 3)
        {
          v10 = ((v10 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
          v11 = 3;
        }

        else
        {
          v10 = ((v10 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
          v11 = 4;
        }
      }

LABEL_15:
      if ((v10 - 12448) <= 0xFFFFFF9F && v10 != 12540 && v10 != 12316)
      {
        return 0;
      }

      v5 += v11;
      if (v5 >= v2)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_19A4396A8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_19A57112C();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v26 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;

  v10 = sub_19A475990(a1, a2);
  v24 = a1;
  v25 = a2;
  if (v10)
  {

    a1 = 0;
    a2 = 0xE000000000000000;
  }

  else
  {
    while (1)
    {
      v30 = a1;
      v31 = a2;
      v13 = qword_1EAF9F8F8;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = sub_19A57093C();
      __swift_project_value_buffer(v14, qword_1EAFCA258);
      sub_19A2F4450();
      sub_19A5737FC();
      v16 = v15;

      if (v16)
      {
        break;
      }

      v30 = 0;
      v31 = 0xE000000000000000;
      sub_19A3E3D30();
      sub_19A572E1C();
      a1 = v32;
      a2 = v33;
    }
  }

  sub_19A3B3F3C(v27, v7);
  v12 = v28;
  v11 = v29;
  if ((*(v28 + 48))(v7, 1, v29) == 1)
  {
    sub_19A2F3FA0(v7, &qword_1EAF9FDC8);
  }

  else
  {
    v17 = v26;
    (*(v12 + 32))(v26, v7, v11);
    if ((sub_19A475168() & 1) == 0)
    {
      goto LABEL_18;
    }

    v18 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v18 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v18 && (sub_19A43950C(v24, v25) & 1) != 0)
    {
      if (qword_1EAF9F950 != -1)
      {
        swift_once();
      }

      v19 = sub_19A4B0E14(a1, a2);
      v21 = v20;
      (*(v12 + 8))(v17, v11);
      if (v21)
      {

        return v19;
      }
    }

    else
    {
LABEL_18:
      (*(v12 + 8))(v17, v11);
    }
  }

  return a1;
}

__n128 sub_19A439A00@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X8>)
{
  v39 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  v17 = *(a5 + 16);
  v18 = sub_19A57112C();
  v19 = *(v18 - 8);
  v20 = v19;
  if (v17)
  {
    (*(v19 + 16))(v16, a5 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v18);
    (*(v20 + 56))(v16, 0, 1, v18);
  }

  else
  {
    (*(v19 + 56))(v16, 1, 1, v18);
  }

  v21 = sub_19A4396A8(a1, a2, v16);
  v23 = v22;
  sub_19A2F3FA0(v16, &qword_1EAF9FDC8);
  v24 = sub_19A57112C();
  v25 = *(v24 - 8);
  if (v17)
  {
    (*(*(v24 - 8) + 16))(v14, a5 + ((*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80)), v24);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (*(v25 + 56))(v14, v26, 1, v24);
  v27 = sub_19A4396A8(a3, a4, v14);
  v29 = v28;
  sub_19A2F3FA0(v14, &qword_1EAF9FDC8);
  v30 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v30 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
    goto LABEL_14;
  }

  v31 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v31 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DF0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_19A576E20;
    *(v32 + 32) = v21;
    *(v32 + 40) = v23;
    *(v32 + 48) = v27;
    *(v32 + 56) = v29;
    v44.n128_u64[0] = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
    sub_19A2F12E4(&qword_1ED823F48, &qword_1EAF9FCD8);
    v27 = sub_19A572BEC();
    v29 = v33;
  }

  else
  {
LABEL_14:
    v34 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v34 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      if (v30)
      {

        v27 = 0;
        v29 = 0xE000000000000000;
      }
    }

    else
    {

      v27 = v21;
      v29 = v23;
    }
  }

  v42 = v27;
  v43 = v29;
  v40 = v21;
  v41 = v23;
  sub_19A3783B4();
  sub_19A3E3D30();
  sub_19A572BAC();

  v35 = v45;
  result = v44;
  v37 = v39;
  v39->n128_u64[0] = v27;
  v37->n128_u64[1] = v29;
  v37[1] = result;
  v37[2].n128_u8[0] = v35;
  return result;
}

uint64_t RejectionReason.description.getter()
{
  result = 0x64657463656A6552;
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v5 = v4 >> 29;
  if (v4 >> 29 <= 1)
  {
    if (!v5)
    {
      sub_19A57395C();

      v54 = 0xD000000000000010;
      v8 = *(v3 + 16);
      if (v8)
      {
        v53 = MEMORY[0x1E69E7CC0];
        sub_19A322580(0, v8, 0);
        v52 = objc_opt_self();
        v9 = (v3 + 56);
        v10 = &selRef_initWithScaledImageWidth_scaledImageHeight_scalingModel_;
        do
        {
          v11 = *v9;
          v12 = [v52 instance];
          v13 = sub_19A572CCC();
          v14 = [v12 v10[5]];

          v15 = sub_19A572CFC();
          v17 = v16;

          if (v11)
          {
            v18 = sub_19A572CCC();
            v19 = [v12 v10[5]];

            v20 = sub_19A572CFC();
            v22 = v21;

            MEMORY[0x19A900A50](58, 0xE100000000000000);
            MEMORY[0x19A900A50](v20, v22);
          }

          else
          {
          }

          v24 = *(v53 + 16);
          v23 = *(v53 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_19A322580((v23 > 1), v24 + 1, 1);
          }

          v9 += 4;
          *(v53 + 16) = v24 + 1;
          v25 = v53 + 16 * v24;
          *(v25 + 32) = v15;
          *(v25 + 40) = v17;
          --v8;
          v10 = &selRef_initWithScaledImageWidth_scaledImageHeight_scalingModel_;
        }

        while (v8);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
      sub_19A331C2C();
      v49 = sub_19A572BEC();
      v51 = v50;

      MEMORY[0x19A900A50](v49, v51);
      goto LABEL_52;
    }

    v54 = 0;
    sub_19A57395C();
    MEMORY[0x19A900A50](0x64657463656A6552, 0xEC000000206E6920);
    v39 = [objc_opt_self() instance];
    v40 = sub_19A572CCC();
    v41 = [v39 decodeFromP1_];

    v42 = sub_19A572CFC();
    v44 = v43;

    MEMORY[0x19A900A50](v42, v44);

    MEMORY[0x19A900A50](0x6661732073695B20, 0xEB00000000203A65);
    if (v4)
    {
      v45 = 5457241;
    }

    else
    {
      v45 = 20302;
    }

    if (v4)
    {
      v46 = 0xE300000000000000;
    }

    else
    {
      v46 = 0xE200000000000000;
    }

    MEMORY[0x19A900A50](v45, v46);

    MEMORY[0x19A900A50](0xD000000000000010, 0x800000019A599A90);
    if ((v4 & 0x100) != 0)
    {
      v47 = 5457241;
    }

    else
    {
      v47 = 20302;
    }

    if ((v4 & 0x100) != 0)
    {
      v48 = 0xE300000000000000;
    }

    else
    {
      v48 = 0xE200000000000000;
    }

    MEMORY[0x19A900A50](v47, v48);

    MEMORY[0x19A900A50](0xD000000000000019, 0x800000019A599AB0);
    if ((v4 & 0x10000) != 0)
    {
      v38 = 5457241;
    }

    else
    {
      v38 = 20302;
    }

LABEL_50:
    MEMORY[0x19A900A50](v38);
LABEL_52:

    v6 = 93;
    v7 = 0xE100000000000000;
    goto LABEL_53;
  }

  if (v5 == 2)
  {
    v54 = 0;
    sub_19A57395C();
    MEMORY[0x19A900A50](0x64657463656A6552, 0xEC000000206E6920);
    v26 = [objc_opt_self() instance];
    v27 = sub_19A572CCC();
    v28 = [v26 decodeFromP1_];

    v29 = sub_19A572CFC();
    v31 = v30;

    MEMORY[0x19A900A50](v29, v31);

    MEMORY[0x19A900A50](0x6661732073695B20, 0xEB00000000203A65);
    if (v4)
    {
      v32 = 5457241;
    }

    else
    {
      v32 = 20302;
    }

    if (v4)
    {
      v33 = 0xE300000000000000;
    }

    else
    {
      v33 = 0xE200000000000000;
    }

    MEMORY[0x19A900A50](v32, v33);

    MEMORY[0x19A900A50](0xD000000000000010, 0x800000019A599A90);
    if ((v4 & 0x100) != 0)
    {
      v34 = 5457241;
    }

    else
    {
      v34 = 20302;
    }

    if ((v4 & 0x100) != 0)
    {
      v35 = 0xE300000000000000;
    }

    else
    {
      v35 = 0xE200000000000000;
    }

    MEMORY[0x19A900A50](v34, v35);

    MEMORY[0x19A900A50](0xD000000000000019, 0x800000019A599AB0);
    if ((v4 & 0x10000) != 0)
    {
      v36 = 5457241;
    }

    else
    {
      v36 = 20302;
    }

    if ((v4 & 0x10000) != 0)
    {
      v37 = 0xE300000000000000;
    }

    else
    {
      v37 = 0xE200000000000000;
    }

    MEMORY[0x19A900A50](v36, v37);

    MEMORY[0x19A900A50](0x697265766573202CLL, 0xEC000000203A7974);
    v38 = sub_19A573EDC();
    goto LABEL_50;
  }

  if (v5 == 3)
  {
    sub_19A57395C();

    v54 = 0xD00000000000001FLL;
    v6 = v3;
    v7 = v2;
LABEL_53:
    MEMORY[0x19A900A50](v6, v7);
    return v54;
  }

  return result;
}

void sub_19A43A488(void *a1@<X0>, void *a2@<X8>)
{
  if (([a1 safe] & 1) == 0)
  {
    v4 = [a1 signals];
    if (v4)
    {
      v5 = v4;
      sub_19A2F1600(0, &qword_1EAFA0520);
      sub_19A572AEC();
    }
  }

  v6 = MEMORY[0x1E69E7CC0];

  a2[1] = 0;
  a2[2] = 0;
  *a2 = v6;
}

uint64_t RejectionReason.UnsafeSignal.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RejectionReason.UnsafeSignal.label.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RejectionReason.UnsafeSignal.description.getter()
{
  v1 = *(v0 + 24);
  v2 = [objc_opt_self() instance];
  v3 = sub_19A572CCC();
  v4 = [v2 decodeFromP1_];

  v5 = sub_19A572CFC();
  if (v1)
  {
    v6 = sub_19A572CCC();
    v7 = [v2 decodeFromP1_];

    v8 = sub_19A572CFC();
    v10 = v9;

    MEMORY[0x19A900A50](58, 0xE100000000000000);
    MEMORY[0x19A900A50](v8, v10);
  }

  else
  {
  }

  return v5;
}

uint64_t RejectionReason.RegionSpecificInfo.region.getter()
{
  v1 = *v0;

  return v1;
}

void sub_19A43A8A0(void *a1@<X0>, void *a2@<X8>)
{
  if (([a1 safe] & 1) == 0)
  {
    v4 = [a1 signals];
    if (v4)
    {
      v5 = v4;
      sub_19A2F1600(0, &unk_1EAF9E780);
      sub_19A572AEC();
    }
  }

  v6 = MEMORY[0x1E69E7CC0];

  a2[1] = 0;
  a2[2] = 0;
  *a2 = v6;
}

uint64_t sub_19A43AB08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFFFB && *(a1 + 24))
  {
    return (*a1 + 536870908);
  }

  if (((*(a1 + 16) & 0x1FFE0000 | (8 * ((*(a1 + 16) >> 2) & 0x3F80 | (*(a1 + 16) >> 1))) | (*(a1 + 16) >> 29)) ^ 0x1FFFFFFFu) >= 0x1FFFFFFB)
  {
    v3 = -1;
  }

  else
  {
    v3 = (*(a1 + 16) & 0x1FFE0000 | (8 * ((*(a1 + 16) >> 2) & 0x3F80 | (*(a1 + 16) >> 1))) | (*(a1 + 16) >> 29)) ^ 0x1FFFFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_19A43AB70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFFFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 536870908;
    if (a3 >= 0x1FFFFFFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFFFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x3FFFFFF) - (a2 << 26);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F)) | (((v3 >> 14) & 0x7FFF) << 17);
    }
  }

  return result;
}

uint64_t sub_19A43ABFC(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFF00010101 | (a2 << 29);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = xmmword_19A585790;
  }

  return result;
}

uint64_t sub_19A43AC68()
{
  sub_19A43B310();
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1738);
  inited = swift_initStackObject();
  v6 = *MEMORY[0x1E695F948];
  *(inited + 32) = *MEMORY[0x1E695F948];
  *(inited + 16) = xmmword_19A576E10;
  *(inited + 64) = MEMORY[0x1E69E6370];
  *(inited + 40) = 1;
  v7 = v6;
  sub_19A356F1C(v3, v4);
  sub_19A3304A0(inited);
  swift_setDeallocating();
  sub_19A2F3FA0(inited + 32, &qword_1EAFA1A10);
  v8 = objc_allocWithZone(MEMORY[0x1E695F658]);
  v9 = sub_19A570F0C();
  type metadata accessor for CIImageOption(0);
  sub_19A43B7B0();
  v10 = sub_19A572ADC();

  v11 = [v8 initWithData:v9 options:v10];

  sub_19A33EFB0(v3, v4);
  if (!v11)
  {
    sub_19A33EFB0(v3, v4);
    return 0;
  }

  [v11 extent];
  [v11 extent];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_19A39AAB4(&v28, v16, v18);
  a = v28.a;
  b = v28.b;
  v28.a = 1.0;
  v28.b = 0.0;
  v28.c = 0.0;
  v28.d = 1.0;
  v28.tx = 0.0;
  v28.ty = 0.0;
  CGAffineTransformTranslate(&v27, &v28, -v13, -v15);
  v28 = v27;
  CGAffineTransformScale(&v27, &v28, *&a / v17, *&b / v19);
  v28 = v27;
  v22 = [v11 imageByApplyingTransform_];
  v28.a = a;
  v28.b = b;
  v23 = sub_19A3941B4(&v28, 0x42475241u);
  if (v0)
  {

    return sub_19A33EFB0(v3, v4);
  }

  else
  {
    v25 = v23;
    v26 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    [v26 render:v22 toCVPixelBuffer:v25];

    sub_19A33EFB0(v3, v4);
    return v25;
  }
}

double sub_19A43AF4C(double a1)
{
  v3 = [v1 sourceWidth];
  v4 = [v1 sourceHeight];
  v5 = v4;
  if (v3 > v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  [v1 size];
  v8 = v7 * v6 * a1;
  [v1 centerX];
  v10 = v9 * v3 - v8 * 0.5;
  [v1 centerY];
  v12 = v11 * v5 - v8 * 0.5;
  v13 = 0;
  v14 = 0;
  v15 = v10;
  v16 = v8;
  v17 = v8;
  v18 = v3;
  v19 = v5;

  *&result = CGRectIntersection(*&v15, *&v13);
  return result;
}

uint64_t sub_19A43B028(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_19A43B310()
{
  v1 = [v0 photoLibrary];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 librarySpecificFetchOptions];

  [v3 setFetchLimit_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19A576E00;
  *(v5 + 32) = v0;
  sub_19A2F1600(0, &qword_1EAFA1740);
  v6 = v0;
  v7 = sub_19A57307C();

  v8 = [v4 fetchAssetsForFaces:v7 options:v3];

  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v9 = [v8 firstObject];

  if (v9)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
    [v10 setSynchronous_];
    [v10 setNetworkAccessAllowed_];
    [v10 setDeliveryMode_];
    [v10 setDownloadIntent_];
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_19A5770A0;
    v12 = [objc_opt_self() defaultManager];
    v15[4] = sub_19A43B808;
    v15[5] = v11;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_19A43B698;
    v15[3] = &block_descriptor_5;
    v13 = _Block_copy(v15);
    v14 = v10;

    [v12 requestImageDataAndOrientationForAsset:v9 options:v14 resultHandler:v13];

    _Block_release(v13);
    swift_beginAccess();
    sub_19A356F1C(*(v11 + 16), *(v11 + 24));
  }

  else
  {
  }
}

uint64_t sub_19A43B624(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v10 = *(a7 + 16);
  v11 = *(a7 + 24);
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  sub_19A356F1C(a1, a2);
  return sub_19A33EFB0(v10, v11);
}

uint64_t sub_19A43B698(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {

    v10 = v8;
    v8 = sub_19A570F2C();
    v12 = v11;

    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {

    v12 = 0xF000000000000000;
    if (a3)
    {
LABEL_3:
      v13 = sub_19A572CFC();
      a3 = v14;
      if (!a5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v13 = 0;
  if (a5)
  {
LABEL_4:
    a5 = sub_19A572AFC();
  }

LABEL_5:
  v9(v8, v12, v13, a3, a4, a5);

  sub_19A33EFB0(v8, v12);
}

unint64_t sub_19A43B7B0()
{
  result = qword_1EAF9FB48;
  if (!qword_1EAF9FB48)
  {
    type metadata accessor for CIImageOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9FB48);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_19A43B828(uint64_t a1, uint64_t a2, int a3)
{
  v47 = a3;
  v45[1] = a1;
  v46 = a2;
  v49[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v3 = sub_19A57236C();
  __swift_project_value_buffer(v3, qword_1ED82BD30);
  v4 = sub_19A57231C();
  v48 = v45;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_19A57234C();
  sub_19A5722EC();
  v8 = sub_19A57234C();
  v9 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v8, v9, v11, "fetchFace.photos", "", v10, 2u);
    MEMORY[0x19A902C50](v10, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v12);
  (*(v5 + 16))(v45 - v7, v45 - v7, v4);
  sub_19A5723BC();
  swift_allocObject();
  sub_19A5723AC();
  (*(v5 + 8))(v45 - v7, v4);
  v13 = objc_opt_self();
  v49[0] = 0;
  v14 = [v13 openPhotoLibraryWithWellKnownIdentifier:1 error:v49];
  if (v14)
  {
    v15 = v14;
    v16 = v49[0];
    v17 = [v15 librarySpecificFetchOptions];
    if (v47)
    {
      v18 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DF0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_19A576E10;
      *(v19 + 32) = sub_19A570FDC();
      *(v19 + 40) = v20;
      v21 = sub_19A57307C();

      v22 = v17;
      v23 = [v18 fetchPersonsWithLocalIdentifiers:v21 options:v22];

      v24 = [v23 firstObject];
      if (!v24)
      {

        v27 = 0;
        goto LABEL_19;
      }

      v25 = objc_opt_self();
      v26 = [v25 fetchKeyFaceForPerson:v24 options:v22];
      v27 = [v26 firstObject];

      if (v27)
      {

        goto LABEL_19;
      }

      v44 = [v25 fetchFacesForPerson:v24 options:v22];

      v27 = [v44 firstObject];
    }

    else
    {
      v38 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_19A576E00;
      v40 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      *(v39 + 32) = [v40 initWithInteger_];
      sub_19A2F1600(0, &qword_1ED823EA8);
      v41 = sub_19A57307C();

      v42 = [v38 fetchFacesWithVuObservationIDs:v41 options:v17];

      v27 = [v42 firstObject];
    }

    goto LABEL_19;
  }

  v28 = v49[0];
  v29 = sub_19A570D1C();

  swift_willThrow();
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v30 = sub_19A5723FC();
  __swift_project_value_buffer(v30, qword_1ED82BCF0);
  v31 = v29;
  v32 = sub_19A5723DC();
  v33 = sub_19A57355C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    v36 = v29;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_19A2DE000, v32, v33, "Unexpected error thrown when accessing photo library: %@", v34, 0xCu);
    sub_19A2F3FA0(v35, &qword_1EAF9FD28);
    MEMORY[0x19A902C50](v35, -1, -1);
    MEMORY[0x19A902C50](v34, -1, -1);
  }

  else
  {
  }

  v27 = 0;
LABEL_19:
  sub_19A43B028("fetchFace.photos", 16, 2);

  return v27;
}

uint64_t sub_19A43BED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A43BEF8, 0, 0);
}

uint64_t sub_19A43BEF8()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = v0[22];
    sub_19A43D194(v0[20], v1);
    sub_19A386EC4(v2);
    v3 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v4 = sub_19A572CCC();

    v20 = [v3 initWithString_];
    v0[24] = v20;

    if (qword_1ED824BA8 != -1)
    {
      swift_once();
    }

    v5 = sub_19A57236C();
    __swift_project_value_buffer(v5, qword_1ED82BD30);
    v6 = sub_19A57231C();
    v7 = *(v6 - 8);
    v8 = swift_task_alloc();
    sub_19A57234C();
    sub_19A5722EC();
    v9 = sub_19A57234C();
    v10 = sub_19A57361C();
    if (sub_19A57376C())
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v9, v10, v12, "detectPeople.SCMLPeopleDetector", "", v11, 2u);
      MEMORY[0x19A902C50](v11, -1, -1);
    }

    v19 = v0[23];

    swift_task_alloc();
    (*(v7 + 16))();
    sub_19A5723BC();
    swift_allocObject();
    v0[25] = sub_19A5723AC();
    (*(v7 + 8))(v8, v6);

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_19A43C2F0;
    v13 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1748);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_19A354FC8;
    v0[13] = &block_descriptor_6;
    v0[14] = v13;
    [v19 detectPeopleAsynchronously:v20 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1ED8248B0 != -1)
    {
      swift_once();
    }

    v14 = v0[19];
    v15 = unk_1ED82BD10;
    v17 = qword_1ED82BD18;
    v16 = unk_1ED82BD20;
    *v14 = qword_1ED82BD08;
    v14[1] = v15;
    v14[2] = v17;
    v14[3] = v16;
    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_19A43C2F0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {

    v2 = sub_19A43C4A4;
  }

  else
  {
    v2 = sub_19A43C410;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A43C410()
{
  v1 = *(v0 + 192);
  sub_19A43C820(*(v0 + 144), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 152));
  sub_19A43C538("detectPeople.SCMLPeopleDetector", 31, 2);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A43C4A4()
{
  v1 = *(v0 + 192);
  swift_willThrow();
  sub_19A43C538("detectPeople.SCMLPeopleDetector", 31, 2);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A43C538(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19A43C820@<X0>(id a1@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, void *a5@<X8>)
{
  v10 = [a1 spans];
  sub_19A2F1600(0, &qword_1EAF9F050);
  v11 = sub_19A57308C();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_14:

    v15 = MEMORY[0x1E69E7CC0];
LABEL_15:
    *a5 = a2;
    a5[1] = a3;
    a5[2] = a4;
    a5[3] = v15;
    return result;
  }

  v12 = sub_19A573B4C();
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_3:
  v28 = MEMORY[0x1E69E7CC0];
  result = sub_19A322660(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v26 = a1;
    v14 = 0;
    v15 = v28;
    if ((v11 & 0xC000000000000001) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    for (i = MEMORY[0x19A901520](v14, v11); ; i = *(v11 + 8 * v14 + 32))
    {
      v17 = i;
      v18 = sub_19A386EC4(a4);
      sub_19A43CA00(v17, v18, v19, v27);
      v28 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_19A322660((v20 > 1), v21 + 1, 1);
        v15 = v28;
      }

      *(v15 + 16) = v21 + 1;
      v22 = (v15 + (v21 << 6));
      v23 = v27[0];
      v24 = v27[1];
      v25 = v27[3];
      v22[4] = v27[2];
      v22[5] = v25;
      v22[2] = v23;
      v22[3] = v24;
      if (v12 - 1 == v14)
      {
        break;
      }

      ++v14;
      if ((v11 & 0xC000000000000001) != 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      ;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A43CA00@<X0>(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v4 = a1;
  [a1 range];
  v83 = a2;
  v84 = a3;
  v7 = sub_19A57348C();
  if (v9)
  {
    v70 = 0;
    v72 = 15;
    v71 = 15;
  }

  else
  {
    v71 = v8;
    v72 = v7;
    v10 = [v4 isGeneric];
    if ([v4 isGroup])
    {
      v10 |= 2u;
    }

    if ([v4 hasAge])
    {
      v10 |= 0x10u;
    }

    if ([v4 hasGender])
    {
      v10 |= 8u;
    }

    if ([v4 hasEthnicity])
    {
      v10 |= 0x20u;
    }

    v11 = [v4 hasImplicitCategoryRequiringPersonalization];
    v12 = v10 | 0x40;
    if (!v11)
    {
      v12 = v10;
    }

    v70 = v12;
  }

  v13 = [v4 ageSpans];
  sub_19A2F1600(0, &qword_1EAF9E778);
  v14 = sub_19A57308C();

  if (v14 >> 62)
  {
    goto LABEL_60;
  }

  v80 = v14 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19A573B4C())
  {
    v77 = v4;
    if (i)
    {
      v16 = 0;
      v4 = (v14 & 0xC000000000000001);
      v76 = MEMORY[0x1E69E7CC0];
      do
      {
        v17 = v16;
        while (1)
        {
          if (v4)
          {
            v18 = MEMORY[0x19A901520](v17, v14);
          }

          else
          {
            if (v17 >= *(v80 + 16))
            {
              goto LABEL_57;
            }

            v18 = *(v14 + 8 * v17 + 32);
          }

          v19 = v18;
          v16 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v20 = [v18 gender] - 1;
          v21 = MEMORY[0x1E69E7CC0];
          if (v20 <= 2)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1750);
            v21 = swift_allocObject();
            *(v21 + 16) = xmmword_19A576E10;
            *(v21 + 32) = v20;
          }

          [v19 range];
          v22 = sub_19A57348C();
          v24 = v23;
          v26 = v25;

          if ((v26 & 1) == 0)
          {
            break;
          }

          ++v17;
          if (v16 == i)
          {
            goto LABEL_36;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_19A31CD00(0, *(v76 + 2) + 1, 1, v76);
        }

        v28 = *(v76 + 2);
        v27 = *(v76 + 3);
        if (v28 >= v27 >> 1)
        {
          v76 = sub_19A31CD00((v27 > 1), v28 + 1, 1, v76);
        }

        *(v76 + 2) = v28 + 1;
        v29 = &v76[24 * v28];
        *(v29 + 4) = v22;
        *(v29 + 5) = v24;
        *(v29 + 6) = v21;
      }

      while (v16 != i);
    }

    else
    {
      v76 = MEMORY[0x1E69E7CC0];
    }

LABEL_36:

    v30 = [v77 genderSpans];
    v31 = sub_19A57308C();

    if (v31 >> 62)
    {
      break;
    }

    v81 = v31 & 0xFFFFFFFFFFFFFF8;
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = &off_19A576000;
    if (!v32)
    {
      goto LABEL_62;
    }

LABEL_38:
    v34 = 0;
    v4 = (v31 & 0xC000000000000001);
    v78 = *(v33 + 225);
    v75 = MEMORY[0x1E69E7CC0];
LABEL_39:
    v35 = v34;
    while (1)
    {
      if (v4)
      {
        v36 = MEMORY[0x19A901520](v35, v31);
      }

      else
      {
        if (v35 >= *(v81 + 16))
        {
          goto LABEL_59;
        }

        v36 = *(v31 + 8 * v35 + 32);
      }

      v37 = v36;
      v34 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v38 = [v36 gender] - 1;
      v39 = MEMORY[0x1E69E7CC0];
      if (v38 <= 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1750);
        v39 = swift_allocObject();
        *(v39 + 16) = v78;
        *(v39 + 32) = v38;
      }

      [v37 range];
      v14 = sub_19A57348C();
      v41 = v40;
      v43 = v42;

      if ((v43 & 1) == 0)
      {
        v44 = v75;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_19A31CD00(0, *(v75 + 2) + 1, 1, v75);
        }

        v46 = *(v44 + 2);
        v45 = *(v44 + 3);
        if (v46 >= v45 >> 1)
        {
          v44 = sub_19A31CD00((v45 > 1), v46 + 1, 1, v44);
        }

        *(v44 + 2) = v46 + 1;
        v75 = v44;
        v47 = &v44[24 * v46];
        *(v47 + 4) = v14;
        *(v47 + 5) = v41;
        *(v47 + 6) = v39;
        if (v34 != v32)
        {
          goto LABEL_39;
        }

        goto LABEL_63;
      }

      ++v35;
      if (v34 == v32)
      {
        goto LABEL_63;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v80 = v14 & 0xFFFFFFFFFFFFFF8;
  }

  v81 = v31 & 0xFFFFFFFFFFFFFF8;
  v32 = sub_19A573B4C();
  v33 = &off_19A576000;
  if (v32)
  {
    goto LABEL_38;
  }

LABEL_62:
  v75 = MEMORY[0x1E69E7CC0];
LABEL_63:

  v48 = [v77 ethnicitySpans];
  v49 = sub_19A57308C();

  if (v49 >> 62)
  {
LABEL_85:
    v82 = v49 & 0xFFFFFFFFFFFFFF8;
    v50 = sub_19A573B4C();
    v51 = &off_19A576000;
    if (v50)
    {
      goto LABEL_65;
    }

    goto LABEL_86;
  }

  v82 = v49 & 0xFFFFFFFFFFFFFF8;
  v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v51 = &off_19A576000;
  if (!v50)
  {
LABEL_86:
    v53 = MEMORY[0x1E69E7CC0];
    goto LABEL_87;
  }

LABEL_65:
  v52 = 0;
  v53 = MEMORY[0x1E69E7CC0];
  v79 = *(v51 + 225);
  do
  {
    v74 = v53;
    v54 = v52;
    while (1)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x19A901520](v54, v49);
      }

      else
      {
        if (v54 >= *(v82 + 16))
        {
          goto LABEL_84;
        }

        v55 = *(v49 + 8 * v54 + 32);
      }

      v56 = v55;
      v52 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v57 = [v55 gender] - 1;
      v58 = MEMORY[0x1E69E7CC0];
      if (v57 <= 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1750);
        v58 = swift_allocObject();
        *(v58 + 16) = v79;
        *(v58 + 32) = v57;
      }

      [v56 range];
      v59 = sub_19A57348C();
      v61 = v60;
      v63 = v62;

      if ((v63 & 1) == 0)
      {
        break;
      }

      ++v54;
      if (v52 == v50)
      {
        v53 = v74;
        goto LABEL_87;
      }
    }

    v64 = v74;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_19A31CD00(0, *(v74 + 2) + 1, 1, v74);
    }

    v66 = *(v64 + 2);
    v65 = *(v64 + 3);
    v67 = v64;
    if (v66 >= v65 >> 1)
    {
      v67 = sub_19A31CD00((v65 > 1), v66 + 1, 1, v64);
    }

    *(v67 + 2) = v66 + 1;
    v53 = v67;
    v68 = &v67[24 * v66];
    *(v68 + 4) = v59;
    *(v68 + 5) = v61;
    *(v68 + 6) = v58;
  }

  while (v52 != v50);
LABEL_87:

  *a4 = v83;
  *(a4 + 8) = v84;
  *(a4 + 16) = v70;
  *(a4 + 24) = v76;
  *(a4 + 32) = v75;
  *(a4 + 40) = v53;
  *(a4 + 48) = v72;
  *(a4 + 56) = v71;
  return result;
}

uint64_t sub_19A43D194(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_19A43D200(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, void *a6@<X8>)
{
  v64 = a5;
  v62 = a4;
  v67 = a3;
  v59 = a6;
  v68[1] = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for PeopleDetector.DetectorBundle();
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_19A57112C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v53[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1028);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v60 = &v53[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v53[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v53[-v25];
  v57 = v8;
  v27 = *(v8 + 28);
  v63 = a1;
  sub_19A3B3F3C(a1 + v27, &v53[-v25]);
  v28 = *(v16 + 56);
  sub_19A3B3F3C(v26, v18);
  v66 = a2;
  sub_19A3B3F3C(a2, &v18[v28]);
  v61 = v11;
  v29 = *(v11 + 48);
  if (v29(v18, 1, v10) != 1)
  {
    sub_19A3B3F3C(v18, v24);
    if (v29(&v18[v28], 1, v10) != 1)
    {
      v32 = v61;
      v33 = v55;
      (*(v61 + 32))(v55, &v18[v28], v10);
      sub_19A4170CC();
      v54 = sub_19A572C2C();
      v34 = *(v32 + 8);
      v34(v33, v10);
      sub_19A2F3FA0(v26, &qword_1EAF9FDC8);
      v34(v24, v10);
      sub_19A2F3FA0(v18, &qword_1EAF9FDC8);
      v31 = v62;
      v30 = v63;
      if ((v54 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    sub_19A2F3FA0(v26, &qword_1EAF9FDC8);
    (*(v61 + 8))(v24, v10);
LABEL_6:
    sub_19A2F3FA0(v18, &qword_1EAFA1028);
    v31 = v62;
    v30 = v63;
    goto LABEL_12;
  }

  sub_19A2F3FA0(v26, &qword_1EAF9FDC8);
  if (v29(&v18[v28], 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_19A2F3FA0(v18, &qword_1EAF9FDC8);
  v31 = v62;
  v30 = v63;
LABEL_8:
  if (*(v30 + 8) == v67 && *(v30 + 16) == v31 || (sub_19A573F1C()) && *(v30 + 24) == v64)
  {
    goto LABEL_17;
  }

LABEL_12:
  v35 = objc_allocWithZone(MEMORY[0x1E69CA760]);
  v36 = sub_19A572CCC();
  v37 = [v35 initWithModelManagerServicesUseCaseID_];

  v38 = v60;
  sub_19A3B3F3C(v66, v60);
  if (v29(v38, 1, v10) == 1)
  {
    sub_19A2F3FA0(v38, &qword_1EAF9FDC8);
  }

  else
  {
    v39 = v61;
    v40 = v56;
    (*(v61 + 32))(v56, v38, v10);
    v41 = sub_19A57109C();
    [v37 setLocale_];

    (*(v39 + 8))(v40, v10);
  }

  v42 = v64;
  [v37 setOnBehalfOfProcessID_];
  v43 = objc_allocWithZone(MEMORY[0x1E69CA758]);
  v68[0] = 0;
  v44 = [v43 initWithConfiguration:v37 error:v68];
  if (v44)
  {
    v45 = v44;
    v46 = v68[0];

    v47 = v58;
    sub_19A3B3F3C(v66, &v58[*(v57 + 28)]);
    v48 = v67;
    *v47 = v45;
    *(v47 + 8) = v48;
    *(v47 + 16) = v31;
    *(v47 + 24) = v42;

    sub_19A43D888(v47, v30);
LABEL_17:
    v49 = *v30;
    *v59 = *v30;
    v50 = v49;
    return;
  }

  v51 = v68[0];
  v52 = sub_19A570D1C();

  v65 = v52;
  swift_willThrow();
}

uint64_t type metadata accessor for PeopleDetector.DetectorBundle()
{
  result = qword_1EAFA1760;
  if (!qword_1EAFA1760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A43D888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleDetector.DetectorBundle();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_19A43D8EC(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v31 = a3;
  v33[1] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_19A57112C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for PeopleDetector.DetectorBundle();
  MEMORY[0x1EEE9AC00](v29);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(MEMORY[0x1E69CA760]);
  v30 = a1;
  v32 = a2;
  v17 = sub_19A572CCC();
  v18 = [v16 initWithModelManagerServicesUseCaseID_];

  sub_19A3B3F3C(a4, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_19A2F3FA0(v9, &qword_1EAF9FDC8);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v19 = sub_19A57109C();
    [v18 setLocale_];

    (*(v11 + 8))(v13, v10);
  }

  v20 = v31;
  [v18 setOnBehalfOfProcessID_];
  v21 = objc_allocWithZone(MEMORY[0x1E69CA758]);
  v33[0] = 0;
  v22 = [v21 initWithConfiguration:v18 error:v33];
  if (v22)
  {
    v23 = v22;
    v24 = v33[0];

    sub_19A3B3F3C(a4, &v15[*(v29 + 28)]);
    v25 = v30;
    *v15 = v23;
    *(v15 + 1) = v25;
    *(v15 + 2) = v32;
    *(v15 + 6) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1758);
    v26 = swift_allocObject();
    *&v26[(*(*v26 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
    sub_19A43DD08(v15, &v26[*(*v26 + *MEMORY[0x1E69E6B68] + 16)]);
    sub_19A2F3FA0(a4, &qword_1EAF9FDC8);
    sub_19A43DD6C(v15);
  }

  else
  {
    v26 = v33[0];
    sub_19A570D1C();

    swift_willThrow();
    sub_19A2F3FA0(a4, &qword_1EAF9FDC8);
  }

  return v26;
}

uint64_t sub_19A43DD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleDetector.DetectorBundle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A43DD6C(uint64_t a1)
{
  v2 = type metadata accessor for PeopleDetector.DetectorBundle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_19A43DDF0()
{
  sub_19A43DE8C();
  if (v0 <= 0x3F)
  {
    sub_19A366D8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_19A43DE8C()
{
  result = qword_1EAFA1770;
  if (!qword_1EAFA1770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAFA1770);
  }

  return result;
}

uint64_t sub_19A43DED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_19A57102C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A43DFA8, 0, 0);
}

uint64_t sub_19A43DFA8()
{
  v38 = v0;
  v1 = *(v0[7] + 16);
  v1(v0[9], v0[5] + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask_id, v0[6]);
  v37[0] = 0x206B736154;
  v37[1] = 0xE500000000000000;
  sub_19A36BC14(&qword_1ED8252D8);
  v2 = sub_19A573EDC();
  MEMORY[0x19A900A50](v2);

  MEMORY[0x19A900A50](58, 0xE100000000000000);
  v0[10] = 0xE500000000000000;
  if (qword_1EAF9F208 != -1)
  {
    swift_once();
  }

  v3 = sub_19A5723FC();
  __swift_project_value_buffer(v3, qword_1EAFCA1E8);

  v4 = sub_19A5723DC();
  v5 = sub_19A57356C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_19A31F114(0x206B736154, 0xE500000000000000, v37);
    _os_log_impl(&dword_19A2DE000, v4, v5, "%{public}s assigning draw on image elements", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x19A902C50](v7, -1, -1);
    MEMORY[0x19A902C50](v6, -1, -1);
  }

  v8 = sub_19A57231C();
  v0[11] = v8;
  v36 = *(v8 - 8);
  v0[12] = v36;
  v0[13] = swift_task_alloc();
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[6];
  v12 = sub_19A57236C();
  __swift_project_value_buffer(v12, qword_1ED82BD30);
  sub_19A57234C();
  sub_19A5722EC();
  v1(v10, v9, v11);
  v13 = sub_19A57234C();
  v14 = sub_19A57361C();
  v15 = sub_19A57376C();
  v17 = v0[7];
  v16 = v0[8];
  v18 = v0[6];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37[0] = v35;
    *v19 = 136446210;
    v20 = sub_19A573EDC();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v16, v18);
    v24 = sub_19A31F114(v20, v22, v37);

    *(v19 + 4) = v24;
    v25 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v13, v14, v25, "drawOnImageAssignment", "%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x19A902C50](v35, -1, -1);
    MEMORY[0x19A902C50](v19, -1, -1);
  }

  else
  {

    v23 = *(v17 + 8);
    v23(v16, v18);
  }

  v0[14] = v23;
  v27 = v0[4];
  v26 = v0[5];
  v28 = v0[3];
  swift_task_alloc();
  (*(v36 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  v0[15] = sub_19A5723AC();

  v29 = swift_task_alloc();
  v0[16] = v29;
  v29[2] = v26;
  v29[3] = 0x206B736154;
  v29[4] = 0xE500000000000000;
  v29[5] = v28;
  v29[6] = v27;
  v30 = swift_task_alloc();
  v0[17] = v30;
  *(v30 + 16) = 0x206B736154;
  *(v30 + 24) = 0xE500000000000000;
  v31 = swift_task_alloc();
  v0[18] = v31;
  v32 = type metadata accessor for DefinitionSession();
  *v31 = v0;
  v31[1] = sub_19A43E50C;
  v33 = v0[2];

  return MEMORY[0x1EEE6DE18](v33, &unk_19A585AF0, v29, sub_19A36C078, v30, 0, 0, v32);
}

uint64_t sub_19A43E50C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_19A43E73C;
  }

  else
  {

    v2 = sub_19A43E644;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A43E644()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[6];
  sub_19A43EAE8("drawOnImageAssignment", 21, 2);

  (*(v3 + 8))(v2, v4);
  v1(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_19A43E73C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v8 = v0[14];
  v5 = v0[6];

  sub_19A43EAE8("drawOnImageAssignment", 21, 2);

  (*(v2 + 8))(v1, v3);
  v8(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_19A43E854()
{
  v1 = *v0;
  sub_19A441D44(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

id GenerativePlayground.DrawOnImageAssignmentTask.drawnOnImage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

id GenerativePlayground.DrawOnImageAssignmentTask.sketchOverlayImage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

id GenerativePlayground.DrawOnImageAssignmentTask.sketchMask.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t GenerativePlayground.DrawOnImageAssignmentTask.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask_id;
  v4 = sub_19A57102C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenerativePlayground.DrawOnImageAssignmentTask.isCancelled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__sendableCanceller + 24);
  v2 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__sendableCanceller), v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

Swift::Void __swiftcall GenerativePlayground.DrawOnImageAssignmentTask.cancel()()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__sendableCanceller + 24);
  v2 = *(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__sendableCanceller), v1);
  (*(v2 + 16))(v1, v2);
}

unint64_t GenerativePlayground.DrawOnImageAssignmentTask.description.getter()
{
  sub_19A57395C();

  sub_19A57102C();
  sub_19A36BC14(&qword_1ED8252D8);
  v0 = sub_19A573EDC();
  MEMORY[0x19A900A50](v0);

  return 0xD00000000000001ALL;
}

uint64_t sub_19A43EAE8(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19A43EDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[29] = a3;
  v6[30] = a4;
  v6[27] = a1;
  v6[28] = a2;
  v7 = sub_19A57102C();
  v6[33] = v7;
  v6[34] = *(v7 - 8);
  v6[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A43EE98, 0, 0);
}

uint64_t sub_19A43EE98()
{
  v128 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  sub_19A36C0A8(v2 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__definitionSession, v1);
  v3 = type metadata accessor for DefinitionSession();
  *(v0 + 288) = v3;
  v4 = *(v3 + 88);
  *(v0 + 148) = v4;
  v5 = (v1 + v4);
  v6 = type metadata accessor for GenerationRecipe(0);
  v7 = v6[21];
  *(v0 + 164) = v7;
  v8 = &v5[v7];
  sub_19A331C90(*&v5[v7], *&v5[v7 + 8], *&v5[v7 + 16], *&v5[v7 + 24]);
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = v6[11];
  *(v0 + 180) = v9;
  v10 = &v5[v9];
  *v10 = 0;
  v10[4] = 1;
  v11 = &v5[v6[23]];
  v12 = *v11;
  v13 = *(v11 + 2);
  *(v0 + 32) = *(v11 + 1);
  *(v0 + 48) = v13;
  *(v0 + 16) = v12;
  v14 = *(v11 + 3);
  v15 = *(v11 + 4);
  v16 = *(v11 + 5);
  *(v0 + 112) = *(v11 + 12);
  *(v0 + 80) = v15;
  *(v0 + 96) = v16;
  *(v0 + 64) = v14;
  sub_19A2F3FA0(v0 + 16, &qword_1EAFA0198);
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  *(v11 + 12) = 0;
  v17 = &v5[v6[22]];
  sub_19A331C90(*v17, *(v17 + 1), *(v17 + 2), *(v17 + 3));
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = v1 + *(v3 + 56);
  sub_19A335400(*v18, *(v18 + 8), *(v18 + 16), *(v18 + 24), *(v18 + 32));
  *v18 = xmmword_19A577080;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  *(v18 + 16) = 0;
  *(v18 + 40) = 0;
  v19 = *(v2 + 16);
  v117 = v3;
  if (*(v2 + 24))
  {
    if (*(v2 + 24) == 1)
    {
      [v19 extent];
      sub_19A39AAB4(&v118, v20, v21);
      Width = v118;
      Height = v119;
    }

    else
    {
      v25 = *(v2 + 16);
      Width = CVPixelBufferGetWidth(v19);
      Height = CVPixelBufferGetHeight(v25);
      v118 = Width;
      v119 = Height;
    }
  }

  else
  {
    v24 = *(v2 + 16);
    Width = CGImageGetWidth(v19);
    Height = CGImageGetHeight(v24);
  }

  v26 = *(v0 + 224);
  v27 = *(v26 + 32);
  if (*(v26 + 40))
  {
    if (*(v26 + 40) == 1)
    {
      [*(v26 + 32) extent];
      sub_19A39AAB4(&v124, v28, v29);
      v30 = v125;
      if (Width != v124)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v32 = CVPixelBufferGetWidth(*(v26 + 32));
      v30 = CVPixelBufferGetHeight(v27);
      if (Width != v32)
      {
LABEL_17:
        if (qword_1EAF9F208 != -1)
        {
          swift_once();
        }

        v38 = sub_19A5723FC();
        __swift_project_value_buffer(v38, qword_1EAFCA1E8);

        v39 = sub_19A5723DC();
        v40 = sub_19A57355C();

        if (os_log_type_enabled(v39, v40))
        {
          v42 = *(v0 + 232);
          v41 = *(v0 + 240);
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v124 = v44;
          *v43 = 136446210;
          *(v43 + 4) = sub_19A31F114(v42, v41, &v124);
          _os_log_impl(&dword_19A2DE000, v39, v40, "%{public}s image and sketch overlay dimensions don't match", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v44);
          MEMORY[0x19A902C50](v44, -1, -1);
          MEMORY[0x19A902C50](v43, -1, -1);
        }

        v45 = *(v0 + 216);
        v46 = 0x800000019A599CA0;
        sub_19A3B1B5C();
        swift_allocError();
        v48 = 0xD000000000000027;
LABEL_38:
        *v47 = v48;
        *(v47 + 8) = v46;
        *(v47 + 16) = 1;
        swift_willThrow();
        sub_19A36BAC0(v45);

        v63 = *(v0 + 8);

        return v63();
      }
    }
  }

  else
  {
    v31 = CGImageGetWidth(*(v26 + 32));
    v30 = CGImageGetHeight(v27);
    if (Width != v31)
    {
      goto LABEL_17;
    }
  }

  if (Height != v30)
  {
    goto LABEL_17;
  }

  v33 = *(v2 + 16);
  if (*(v2 + 24))
  {
    if (*(v2 + 24) == 1)
    {
      [*(v2 + 16) extent];
      sub_19A39AAB4(&v118, v34, v35);
      v36 = v118;
      v37 = v119;
    }

    else
    {
      v36 = CVPixelBufferGetWidth(*(v2 + 16));
      v37 = CVPixelBufferGetHeight(v33);
      v118 = v36;
      v119 = v37;
    }
  }

  else
  {
    v36 = CGImageGetWidth(*(v2 + 16));
    v37 = CGImageGetHeight(v33);
  }

  v49 = *(v0 + 224);
  v50 = *(v49 + 48);
  if (*(v49 + 56))
  {
    if (*(v49 + 56) == 1)
    {
      [*(v49 + 48) extent];
      sub_19A39AAB4(&v124, v51, v52);
      v53 = v125;
      if (v36 != v124)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v55 = CVPixelBufferGetWidth(*(v49 + 48));
      v53 = CVPixelBufferGetHeight(v50);
      if (v36 != v55)
      {
LABEL_33:
        if (qword_1EAF9F208 != -1)
        {
          swift_once();
        }

        v56 = sub_19A5723FC();
        __swift_project_value_buffer(v56, qword_1EAFCA1E8);

        v57 = sub_19A5723DC();
        v58 = sub_19A57355C();

        if (os_log_type_enabled(v57, v58))
        {
          v60 = *(v0 + 232);
          v59 = *(v0 + 240);
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v124 = v62;
          *v61 = 136446210;
          *(v61 + 4) = sub_19A31F114(v60, v59, &v124);
          _os_log_impl(&dword_19A2DE000, v57, v58, "%{public}s image and sketch mask dimensions don't match", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v62);
          MEMORY[0x19A902C50](v62, -1, -1);
          MEMORY[0x19A902C50](v61, -1, -1);
        }

        v45 = *(v0 + 216);
        v46 = 0x800000019A599CD0;
        sub_19A3B1B5C();
        swift_allocError();
        v48 = 0xD00000000000002CLL;
        goto LABEL_38;
      }
    }
  }

  else
  {
    v54 = CGImageGetWidth(*(v49 + 48));
    v53 = CGImageGetHeight(v50);
    if (v36 != v54)
    {
      goto LABEL_33;
    }
  }

  if (v37 != v53)
  {
    goto LABEL_33;
  }

  sub_19A433284();
  if (qword_1EAF9F208 != -1)
  {
    swift_once();
  }

  v65 = sub_19A5723FC();
  *(v0 + 296) = __swift_project_value_buffer(v65, qword_1EAFCA1E8);
  v66 = sub_19A5723DC();
  v67 = sub_19A57356C();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_19A2DE000, v66, v67, "assigning base image and sketch mask", v68, 2u);
    MEMORY[0x19A902C50](v68, -1, -1);
  }

  v69 = *(v0 + 248);

  if (v69)
  {
    v70 = *(v0 + 248);
    v71 = *(v0 + 224);
    v73 = *(v2 + 24);
    v74 = *(v49 + 48);
    v75 = *(v49 + 56);
    v124 = *(v2 + 16);
    v72 = v124;
    v125 = v73;
    v126 = v74;
    v127 = v75;
    v76 = v74;
    v77 = v72;
    v70(v71, &v124);
    sub_19A4419C0(v124, v125, v126, v127);
  }

  sub_19A433284();
  v79 = *(v2 + 24);
  if (*(*(v0 + 224) + 65))
  {
    v118 = *(v2 + 16);
    v78 = v118;
    LOBYTE(v119) = v79;
    v80 = *(v26 + 40);
    v124 = *(v26 + 32);
    LOBYTE(v125) = v80;
    v81 = v124;
    v82 = v78;
    sub_19A44115C(&v118, &v124, &v122);

    v116 = v122;
    v90 = v123;
  }

  else
  {
    v122 = *(v2 + 16);
    v83 = v122;
    v123 = v79;
    v85 = *(v26 + 40);
    v118 = *(v26 + 32);
    v84 = v118;
    LOBYTE(v119) = v85;
    v86 = *(v49 + 56);
    v124 = *(v49 + 48);
    LOBYTE(v125) = v86;
    v87 = v124;
    v88 = v83;
    v89 = v84;
    sub_19A440E34(&v122, &v118, &v124, &v120);

    v116 = v120;
    v90 = v121;
  }

  sub_19A433284();
  *(v0 + 146) = v90;
  *(v0 + 304) = v116;
  v91 = sub_19A4CB924();
  *(v0 + 312) = v91;
  if (*v5 > 1u)
  {
    if (*v5 == 2)
    {
      v115 = 0xD000000000000025;
      v92 = "Generation.AppleDiffusion";
      goto LABEL_58;
    }

    v92 = "promptGuidanceSketchAssignment";
    v93 = 0xD000000000000010;
  }

  else
  {
    if (*v5)
    {
      v115 = 0xD000000000000025;
      v92 = ".KeyboardEmojiGenerator";
      goto LABEL_58;
    }

    v92 = ".PhotosGenerativeEdit";
    v93 = 0xD000000000000027;
  }

  v115 = v93;
LABEL_58:
  *(v0 + 320) = v92;
  v94 = *(*(v0 + 216) + *(v117 + 20) + 20);
  (*(*(v0 + 272) + 16))(*(v0 + 280), &v5[v6[18]], *(v0 + 264));
  v95 = *(v91 + 16);

  os_unfair_lock_lock((v95 + 80));
  v96 = *(v95 + 64);
  v97 = *(v95 + 72);
  if (v96)
  {
    v98 = swift_allocObject();
    *(v98 + 16) = v96;
    *(v98 + 24) = v97;
    v99 = sub_19A3555A0;
  }

  else
  {
    v99 = 0;
  }

  sub_19A3558F8(v96);
  os_unfair_lock_unlock((v95 + 80));
  if (!v96)
  {
    v103 = 0;
    v104 = 0;
LABEL_66:
    v100 = v116;
    goto LABEL_67;
  }

  sub_19A3558FC(v99);
  v100 = v116;
  v124 = v116;
  LOBYTE(v125) = v90;
  v101 = sub_19A4CEB54();
  if (v102 >> 60 != 15)
  {
    v105 = v101;
    v106 = v102;
    v107 = sub_19A570F1C();
    v109 = v108;
    sub_19A33EFB0(v105, v106);
    LOBYTE(v118) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_19A576E10;
    *(v110 + 32) = 0x6567616D49676E70;
    v111 = v110 + 32;
    *(v110 + 72) = MEMORY[0x1E69E6158];
    *(v110 + 40) = 0xEC00000061746144;
    *(v110 + 48) = v107;
    *(v110 + 56) = v109;
    v112 = sub_19A330370(v110);
    swift_setDeallocating();
    sub_19A2F3FA0(v111, &qword_1EAFA2F00);
    swift_deallocClassInstance();
    sub_19A338028(&v118, v112, &v124);
    v103 = v124;
    v104 = v125;
    goto LABEL_66;
  }

  v103 = 0;
  v104 = 0;
LABEL_67:
  *(v0 + 136) = v100;
  *(v0 + 144) = v90;
  *(v0 + 120) = v103;
  *(v0 + 128) = v104;
  v113 = swift_task_alloc();
  *(v0 + 328) = v113;
  *v113 = v0;
  v113[1] = sub_19A43FCE8;
  v114 = *(v0 + 280);
  v130 = v0 + 120;

  return sub_19A353318(v0 + 145, (v0 + 136), 6, 0, v115, v92 | 0x8000000000000000, v94, v114);
}

uint64_t sub_19A43FCE8()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_19A440414;
  }

  else
  {
    v2 = sub_19A43FE2C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A43FE2C()
{
  v66 = v0;
  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

  v1 = sub_19A5723DC();
  v2 = sub_19A57356C();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v63 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_19A31F114(v4, v3, &v63);
    _os_log_impl(&dword_19A2DE000, v1, v2, "%{public}s accepted draw-on-image assignment", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x19A902C50](v6, -1, -1);
    MEMORY[0x19A902C50](v5, -1, -1);
  }

  v7 = *(v0 + 248);
  if (v7)
  {
    v8 = *(v0 + 224);
    v10 = *(v8 + 48);
    v11 = *(v8 + 56);
    v12 = *(v8 + 24) | 0x4000000000000000;
    v63 = *(v8 + 16);
    v9 = v63;
    *&v64 = v12;
    *(&v64 + 1) = v10;
    v65 = v11;
    v13 = v10;
    v14 = v9;
    v7(v8, &v63);

    sub_19A4419C0(v63, v64, *(&v64 + 1), v65);
  }

  else
  {
  }

  v15 = *(v0 + 336);
  v16 = *(v0 + 224);
  v17 = *(v0 + 216) + *(v0 + 148) + *(v0 + 180);
  v18 = *(v16 + 64);
  *v17 = *(v16 + 60);
  *(v17 + 4) = v18;
  sub_19A433284();
  v19 = v15;
  if (v15)
  {

    v30 = v15;
    v31 = sub_19A5723DC();
    v32 = sub_19A57355C();

    if (os_log_type_enabled(v31, v32))
    {
      v34 = *(v0 + 232);
      v33 = *(v0 + 240);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v63 = v37;
      *v35 = 136446466;
      *(v35 + 4) = sub_19A31F114(v34, v33, &v63);
      *(v35 + 12) = 2112;
      v38 = v19;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v39;
      *v36 = v39;
      _os_log_impl(&dword_19A2DE000, v31, v32, "%{public}s prompt scribble images - %@", v35, 0x16u);
      sub_19A2F3FA0(v36, &qword_1EAF9FD28);
      MEMORY[0x19A902C50](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x19A902C50](v37, -1, -1);
      MEMORY[0x19A902C50](v35, -1, -1);
    }

    v40 = *(v0 + 248);
    if (v40)
    {
      v41 = *(v0 + 224);
      v63 = v19;
      v64 = xmmword_19A585980;
      v65 = 0;
      v42 = v19;
      v40(v41, &v63);
      sub_19A4419C0(v63, v64, *(&v64 + 1), v65);
    }

    v43 = *(v0 + 304);
    v44 = *(v0 + 216);
    swift_willThrow();

    sub_19A36BAC0(v44);

    v45 = *(v0 + 8);

    return v45();
  }

  else
  {

    v20 = sub_19A5723DC();
    v21 = sub_19A57356C();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = *(v0 + 232);
      v22 = *(v0 + 240);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v63 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_19A31F114(v23, v22, &v63);
      _os_log_impl(&dword_19A2DE000, v20, v21, "%{public}s assigning scribble images", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x19A902C50](v25, -1, -1);
      MEMORY[0x19A902C50](v24, -1, -1);
    }

    v26 = *(v0 + 248);
    if (v26)
    {
      v27 = *(v0 + 224);
      v28 = *(v0 + 146) | 0x6000000000000000;
      v63 = *(v0 + 304);
      v64 = v28;
      v65 = 0;
      v29 = v63;
      v26(v27, &v63);
      sub_19A4419C0(v63, v64, *(&v64 + 1), v65);
    }

    sub_19A433284();
    v47 = *(v0 + 146);
    v48 = *(v0 + 304);
    v49 = *(v0 + 224);
    v50 = *(v49 + 16);
    v51 = *(v49 + 24);
    *(v0 + 152) = v50;
    *(v0 + 160) = v51;
    v52 = *(v49 + 32);
    v53 = *(v49 + 40);
    *(v0 + 168) = v52;
    *(v0 + 176) = v53;
    v54 = *(v49 + 48);
    v55 = *(v49 + 56);
    *(v0 + 184) = v54;
    *(v0 + 192) = v55;
    v56 = *(v49 + 65);
    *(v0 + 200) = v48;
    *(v0 + 208) = v47;
    v62 = *(v49 + 66);
    v57 = v48;
    v58 = v50;
    v59 = v52;
    v60 = v54;
    v61 = swift_task_alloc();
    *(v0 + 344) = v61;
    *v61 = v0;
    v61[1] = sub_19A4406A0;

    return sub_19A4C0C74((v0 + 152), (v0 + 168), (v0 + 184), (v56 & 1) == 0, v0 + 200, v62);
  }
}

uint64_t sub_19A440414()
{
  v23 = v0;
  (*(v0[34] + 8))(v0[35], v0[33]);
  v1 = v0[42];

  v2 = v0[38];
  if (qword_1EAF9F208 != -1)
  {
    swift_once();
  }

  v3 = sub_19A5723FC();
  __swift_project_value_buffer(v3, qword_1EAFCA1E8);

  v4 = v1;
  v5 = sub_19A5723DC();
  v6 = sub_19A57355C();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[29];
    v7 = v0[30];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_19A31F114(v8, v7, &v20);
    *(v9 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_19A2DE000, v5, v6, "%{public}s base image or sketch rejected - %@", v9, 0x16u);
    sub_19A2F3FA0(v10, &qword_1EAF9FD28);
    MEMORY[0x19A902C50](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x19A902C50](v11, -1, -1);
    MEMORY[0x19A902C50](v9, -1, -1);
  }

  v14 = v0[31];
  if (v14)
  {
    v15 = v0[28];
    v20 = v1;
    v21 = xmmword_19A585970;
    v22 = 0;
    v16 = v1;
    v14(v15, &v20);
    sub_19A4419C0(v20, v21, *(&v21 + 1), v22);
  }

  v17 = v0[27];
  swift_willThrow();
  sub_19A36BAC0(v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_19A4406A0()
{
  v2 = *v1;
  *(v2 + 352) = v0;

  if (v0)
  {
    v3 = sub_19A440C0C;
  }

  else
  {
    v3 = sub_19A4407E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A4407E0()
{
  v47 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 304);
  sub_19A4C6648(&v42);
  v3 = v1;
  if (v1)
  {

    v5 = v1;
    v6 = sub_19A5723DC();
    v7 = sub_19A57355C();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 232);
      v8 = *(v0 + 240);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v42 = v12;
      *v10 = 136446466;
      *(v10 + 4) = sub_19A31F114(v9, v8, &v42);
      *(v10 + 12) = 2112;
      v13 = v3;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v14;
      *v11 = v14;
      _os_log_impl(&dword_19A2DE000, v6, v7, "%{public}s prompt scribble images - %@", v10, 0x16u);
      sub_19A2F3FA0(v11, &qword_1EAF9FD28);
      MEMORY[0x19A902C50](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x19A902C50](v12, -1, -1);
      MEMORY[0x19A902C50](v10, -1, -1);
    }

    v15 = *(v0 + 248);
    if (v15)
    {
      v16 = *(v0 + 224);
      v42 = v3;
      v43 = xmmword_19A585980;
      v44 = 0;
      v17 = v3;
      v15(v16, &v42);
      sub_19A4419C0(v42, v43, *(&v43 + 1), v44);
    }

    v18 = *(v0 + 304);
    v19 = *(v0 + 216);
    swift_willThrow();

    sub_19A36BAC0(v19);

    v20 = *(v0 + 8);
  }

  else
  {
    v4 = *(v0 + 146);
    v45 = *(v0 + 304);
    v46 = v4;
    sub_19A41ED10(DWORD2(v43), &v42, 2);
    v41 = *(v0 + 146);
    v40 = *(v0 + 304);
    v22 = *(v0 + 288);
    v23 = *(v0 + 216);
    v24 = v23 + *(v0 + 148) + *(v0 + 164);
    v26 = v25;
    Width = CVPixelBufferGetWidth(v25);
    Height = CVPixelBufferGetHeight(v26);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v26);
    type metadata accessor for ResolvedImage.HiddenBufferData();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_19A5770A0;
    sub_19A331C90(*v24, *(v24 + 8), *(v24 + 16), *(v24 + 24));
    *v24 = Width;
    *(v24 + 8) = Height;
    *(v24 + 16) = PixelFormatType;
    *(v24 + 24) = v26;
    *(v24 + 32) = v30;
    v31 = v23 + *(v22 + 48);
    sub_19A335458(*v31, *(v31 + 8));
    *v31 = v40;
    *(v31 + 8) = v41;

    v32 = sub_19A5723DC();
    v33 = sub_19A57356C();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 304);
    if (v34)
    {
      v37 = *(v0 + 232);
      v36 = *(v0 + 240);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42 = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_19A31F114(v37, v36, &v42);
      _os_log_impl(&dword_19A2DE000, v32, v33, "%{public}s accepted blended scribble color image", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x19A902C50](v39, -1, -1);
      MEMORY[0x19A902C50](v38, -1, -1);
    }

    v20 = *(v0 + 8);
  }

  return v20();
}

uint64_t sub_19A440C0C()
{
  v22 = v0;
  v1 = v0[44];

  v2 = v1;
  v3 = sub_19A5723DC();
  v4 = sub_19A57355C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[29];
    v5 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_19A31F114(v6, v5, &v19);
    *(v7 + 12) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_19A2DE000, v3, v4, "%{public}s prompt scribble images - %@", v7, 0x16u);
    sub_19A2F3FA0(v8, &qword_1EAF9FD28);
    MEMORY[0x19A902C50](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x19A902C50](v9, -1, -1);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  v12 = v0[31];
  if (v12)
  {
    v13 = v0[28];
    v19 = v1;
    v20 = xmmword_19A585980;
    v21 = 0;
    v14 = v1;
    v12(v13, &v19);
    sub_19A4419C0(v19, v20, *(&v20 + 1), v21);
  }

  v15 = v0[38];
  v16 = v0[27];
  swift_willThrow();

  sub_19A36BAC0(v16);

  v17 = v0[1];

  return v17();
}

void sub_19A440E34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *a3;
  v10 = *(a3 + 8);
  if (!*(a1 + 8))
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    goto LABEL_7;
  }

  if (*(a1 + 8) != 1)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
LABEL_7:
    v11 = v13;
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v11 = v6;
  if (!v8)
  {
LABEL_4:
    v12 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    goto LABEL_12;
  }

LABEL_8:
  if (v8 == 1)
  {
    v14 = v7;
    if (v10)
    {
      goto LABEL_13;
    }

LABEL_10:
    v15 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    goto LABEL_16;
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
LABEL_12:
  v14 = v12;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_13:
  if (v10 == 1)
  {
    v15 = v9;
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
  }

LABEL_16:
  v16 = v15;
  v17 = sub_19A441A64(0x57646E656C424943, 0xEF6B73614D687469);
  if (v4)
  {
    v18 = v16;
LABEL_18:

    return;
  }

  v18 = v17;
  [v17 setValue:v11 forKey:*MEMORY[0x1E695FA48]];
  [v18 setValue:v16 forKey:*MEMORY[0x1E695FAC8]];
  [v18 setValue:v14 forKey:*MEMORY[0x1E695FAB0]];
  v19 = [v18 outputImage];
  if (!v19)
  {
    if (qword_1EAF9F208 != -1)
    {
      swift_once();
    }

    v21 = sub_19A5723FC();
    __swift_project_value_buffer(v21, qword_1EAFCA1E8);
    v22 = sub_19A5723DC();
    v23 = sub_19A57355C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_19A2DE000, v22, v23, "failed to blend image", v24, 2u);
      MEMORY[0x19A902C50](v24, -1, -1);
    }

    sub_19A3B1B5C();
    swift_allocError();
    *v25 = 0xD000000000000015;
    *(v25 + 8) = 0x800000019A599D00;
    *(v25 + 16) = 2;
    swift_willThrow();

    v14 = v16;
    goto LABEL_18;
  }

  v20 = v19;

  *a4 = v20;
  *(a4 + 8) = 1;
}

void sub_19A44115C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = sub_19A441A64(0xD000000000000017, 0x800000019A599D20);
  if (!v3)
  {
    v10 = v9;
    if (v8)
    {
      if (v8 == 1)
      {
        v11 = v7;
      }

      else
      {
        v11 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
      }
    }

    else
    {
      v11 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    }

    v12 = v11;
    v13 = sub_19A572CCC();
    [v10 setValue:v12 forKey:v13];

    if (v6)
    {
      if (v6 == 1)
      {
        v14 = v5;
      }

      else
      {
        v14 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
      }
    }

    else
    {
      v14 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    }

    v15 = v14;
    v16 = sub_19A572CCC();
    [v10 setValue:v15 forKey:v16];

    v17 = [v10 outputImage];
    if (v17)
    {
      v18 = v17;

      *a3 = v18;
      *(a3 + 8) = 1;
    }

    else
    {
      if (qword_1EAF9F208 != -1)
      {
        swift_once();
      }

      v19 = sub_19A5723FC();
      __swift_project_value_buffer(v19, qword_1EAFCA1E8);
      v20 = sub_19A5723DC();
      v21 = sub_19A57355C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_19A2DE000, v20, v21, "CIFilter to alpha blend images failed", v22, 2u);
        MEMORY[0x19A902C50](v22, -1, -1);
      }

      sub_19A3B1B5C();
      swift_allocError();
      *v23 = 0xD000000000000025;
      *(v23 + 8) = 0x800000019A599D60;
      *(v23 + 16) = 2;
      swift_willThrow();
    }
  }
}

id *GenerativePlayground.DrawOnImageAssignmentTask.deinit()
{
  v1 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask_id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_19A36BAC0(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__definitionSession);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__sendableCanceller);
  return v0;
}

uint64_t GenerativePlayground.DrawOnImageAssignmentTask.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask_id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_19A36BAC0(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__definitionSession);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__sendableCanceller);

  return swift_deallocClassInstance();
}

uint64_t sub_19A441594@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask_id;
  v5 = sub_19A57102C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19A441610()
{
  v1 = (*v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__sendableCanceller);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3) & 1;
}

uint64_t sub_19A441674()
{
  v1 = (*v0 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__sendableCanceller);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 16))(v2, v3);
}

unint64_t sub_19A4416D4()
{
  sub_19A57395C();

  sub_19A57102C();
  sub_19A36BC14(&qword_1ED8252D8);
  v0 = sub_19A573EDC();
  MEMORY[0x19A900A50](v0);

  return 0xD00000000000001ALL;
}

uint64_t type metadata accessor for GenerativePlayground.DrawOnImageAssignmentTask()
{
  result = qword_1EAFA1788;
  if (!qword_1EAFA1788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A4417EC()
{
  result = sub_19A57102C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DefinitionSession();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_19A4418F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A2F759C;

  return sub_19A43EDD0(a1, v4, v5, v6, v7, v8);
}

void sub_19A4419C0(void *a1, unint64_t a2, void *a3, char a4)
{
  v4 = a2 >> 61;
  if ((a2 >> 61) > 2)
  {
    if (v4 == 3)
    {
      goto LABEL_9;
    }

    if (v4 != 4)
    {
      if (v4 != 5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (!v4)
    {
LABEL_5:
      sub_19A335458(a1, a2);
      a1 = a3;
      LOBYTE(a2) = a4;
LABEL_9:

      sub_19A335458(a1, a2);
      return;
    }

    if (v4 != 1)
    {
      if (v4 != 2)
      {
        return;
      }

      goto LABEL_5;
    }
  }
}

id sub_19A441A64(uint64_t a1, unint64_t a2)
{
  v4 = sub_19A572CCC();
  v5 = [objc_opt_self() filterWithName_];

  if (!v5)
  {
    if (qword_1EAF9F208 != -1)
    {
      swift_once();
    }

    v6 = sub_19A5723FC();
    __swift_project_value_buffer(v6, qword_1EAFCA1E8);

    v7 = sub_19A5723DC();
    v8 = sub_19A57355C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_19A31F114(a1, a2, v15);
      _os_log_impl(&dword_19A2DE000, v7, v8, "couldn't find %s Core Image filter", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x19A902C50](v10, -1, -1);
      MEMORY[0x19A902C50](v9, -1, -1);
    }

    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_19A57395C();

    strcpy(v15, "couldn't find ");
    HIBYTE(v15[1]) = -18;
    MEMORY[0x19A900A50](a1, a2);
    MEMORY[0x19A900A50](0x7265746C696620, 0xE700000000000000);
    v11 = v15[0];
    v12 = v15[1];
    sub_19A3B1B5C();
    swift_allocError();
    *v13 = v11;
    *(v13 + 8) = v12;
    *(v13 + 16) = 0;
    swift_willThrow();
  }

  return v5;
}

uint64_t getEnumTagSinglePayload for MultilingualTextEncoder.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MultilingualTextEncoder.Error(uint64_t result, unsigned int a2, unsigned int a3)
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