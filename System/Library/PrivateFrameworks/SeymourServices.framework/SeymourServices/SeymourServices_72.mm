uint64_t sub_2275BAD6C(void (*a1)(void **), void (*a2)(void))
{
  v5 = *(sub_227668BB0() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_2275B7524(a1, a2, v6, v7);
}

uint64_t sub_2275BAE10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_227668BB0() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2275B85D0(v1 + v4, v1 + v7, v8, a1);
}

uint64_t objectdestroy_7Tm_1()
{
  v1 = sub_227668BB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2275BB074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(sub_227668BB0() - 8);
  v12 = *(v5 + 16);
  v13 = v5 + ((*(v11 + 80) + 24) & ~*(v11 + 80));

  return sub_2275B8A3C(a1, a2, a3, a4, v12, v13, a5);
}

uint64_t sub_2275BB18C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227668BB0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_227665350() - 8);
  v9 = v2 + v6;
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));
  v11 = *(v2 + 16);
  return sub_2275B5754(v9, *a1, a2);
}

uint64_t sub_2275BB294@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227668BB0() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_227665350() - 8);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2275B966C(v7, v8, v9, v1 + v4, v11, a1);
}

uint64_t objectdestroy_48Tm_0(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v5 + 64);
  v9 = a2(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v6 | v11;
  v15 = *(v2 + 16);

  (*(v5 + 8))(v2 + v7, v4);
  (*(v10 + 8))(v2 + v12, v9);

  return MEMORY[0x2821FE8E8](v2, v12 + v13, v14 | 7);
}

void sub_2275BB4D0(uint64_t a1)
{
  v3 = *(sub_227665350() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_227668BB0() - 8);
  sub_2275B9C64(a1, *(v1 + 16), v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t sub_2275BB5E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2275BB6AC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2275BB710(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    v4 = [a1 name];
    if (v4)
    {
      v5 = v4;
      sub_22766C000();

      sub_227667B00();
      return;
    }
  }

  v6 = sub_227664DD0();
  sub_2275BBBD4(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
  swift_willThrow();
}

size_t static CatalogTipCategoryReference.representativeSamples()()
{
  v19 = sub_227667B30();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766C090();
  v25 = sub_22766C090();
  v26[0] = v4;
  v26[1] = v26;
  v26[2] = &v25;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v24 = v23;
  v21 = sub_2272BFE28();
  v22 = v21;
  v5 = sub_2276638E0();

  v6 = *(v5 + 16);
  if (v6)
  {
    v20 = MEMORY[0x277D84F90];
    result = sub_226F1F9C8(0, v6, 0);
    v8 = 0;
    v9 = v20;
    v17 = v0 + 32;
    v18 = v5;
    v10 = (v5 + 56);
    while (v8 < *(v5 + 16))
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;

      sub_227667B00();
      v20 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226F1F9C8(v15 > 1, v16 + 1, 1);
        v9 = v20;
      }

      ++v8;
      *(v9 + 16) = v16 + 1;
      result = (*(v0 + 32))(v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v16, v3, v19);
      v10 += 4;
      v5 = v18;
      if (v6 == v8)
      {

        return v9;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_2275BBAE0(void *a1)
{
  sub_227667B10();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227667B20();
  v3 = sub_22766BFD0();

  [a1 setName_];
}

uint64_t sub_2275BBB7C(uint64_t a1)
{
  result = sub_2275BBBD4(&qword_28139B4F0, MEMORY[0x277D53128]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275BBBD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for DateIntervalSessionThreshold()
{
  result = qword_281399DA0;
  if (!qword_281399DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2275BBC90()
{
  sub_227662010();
  if (v0 <= 0x3F)
  {
    sub_2275BBD1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2275BBD1C()
{
  if (!qword_27D7BF5E8)
  {
    v0 = sub_22766CB90();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7BF5E8);
    }
  }
}

void sub_2275BBD6C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2C0, &unk_227687210);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_227662750();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = [a1 bundleIdentifier];
  if (v17)
  {
    v30 = a2;
    v18 = v17;
    v29 = sub_22766C000();
    v33 = v19;

    v20 = [a1 reason];
    if (v20)
    {
      v21 = v20;
      v27 = sub_22766C000();
      v28 = v22;

      v23 = [a1 date];
      if (v23)
      {
        v24 = v23;
        sub_227662710();

        (*(v7 + 32))(v16, v14, v6);
        v31 = v27;
        v32 = v28;
        sub_2276662B0();
        sub_2275BC9A4(&qword_27D7BB2C8, MEMORY[0x277D52240]);
        sub_227663AE0();
        (*(v7 + 16))(v11, v16, v6);
        sub_227666270();

        (*(v7 + 8))(v16, v6);
        return;
      }
    }
  }

  v25 = sub_227664DD0();
  sub_2275BC9A4(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51028], v25);
  swift_willThrow();
}

size_t static AssetBundleLoadFailure.representativeSamples()()
{
  v46 = sub_227662750();
  v0 = *(v46 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2C0, &unk_227687210);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = v35 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF5F0, &qword_22768C4F0);
  v7 = *(v43 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v43);
  v41 = v35 - v9;
  v42 = sub_2276662D0();
  v47 = *(v42 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v42);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v13 = swift_allocObject();
  v40 = xmmword_227670CD0;
  *(v13 + 16) = xmmword_227670CD0;
  *(v13 + 32) = sub_22766C0A0();
  *(v13 + 40) = v14;
  sub_2276662B0();
  v15 = MEMORY[0x277D52240];
  sub_2275BC9A4(&qword_27D7BF5F8, MEMORY[0x277D52240]);
  sub_2275BC9A4(&qword_27D7BB2C8, v15);
  v16 = sub_227663B50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACA0, &qword_2276796E8);
  v17 = *(v0 + 72);
  v18 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v40;
  sub_227662640();
  v56 = v16;
  v57[0] = v13;
  v57[1] = v57;
  v57[2] = &v56;
  v55 = v19;
  v57[3] = &v55;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF600, &qword_22768C4F8);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v49 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v50 = sub_226F5BF60(&qword_27D7BF608, &qword_27D7BF600, &qword_22768C4F8);
  v51 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v20 = sub_2276638E0();

  v21 = *(v20 + 16);
  if (v21)
  {
    *&v40 = v12;
    v48 = MEMORY[0x277D84F90];
    result = sub_226F20848(0, v21, 0);
    v23 = v7;
    v24 = 0;
    v37 = v20 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v36 = (v1 + 16);
    v25 = v48;
    v35[1] = v47 + 32;
    v26 = v23;
    v39 = v20;
    v38 = v23;
    v35[0] = v21;
    v27 = v44;
    v28 = v40;
    while (v24 < *(v20 + 16))
    {
      v29 = v41;
      sub_226E93170(v37 + *(v26 + 72) * v24, v41, &qword_27D7BF5F0, &qword_22768C4F0);
      v30 = *v29;
      v31 = *(v29 + 1);
      v32 = *(v43 + 64);
      sub_226E93170(&v29[*(v43 + 48)], v27, &qword_27D7BB2C0, &unk_227687210);
      (*v36)(v45, &v29[v32], v46);

      sub_227666270();
      sub_226E97D1C(v29, &qword_27D7BF5F0, &qword_22768C4F0);
      v48 = v25;
      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_226F20848(v33 > 1, v34 + 1, 1);
        v25 = v48;
      }

      ++v24;
      *(v25 + 16) = v34 + 1;
      result = (*(v47 + 32))(v25 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v34, v28, v42);
      v26 = v38;
      v20 = v39;
      if (v35[0] == v24)
      {

        return v25;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2275BC758(uint64_t a1)
{
  result = sub_2275BC9A4(&qword_28139B6A0, MEMORY[0x277D52258]);
  *(a1 + 8) = result;
  return result;
}

void sub_2275BC7B0(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2C0, &unk_227687210);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  sub_227666280();
  v11 = sub_22766BFD0();

  [a1 setBundleIdentifier_];

  sub_2276662C0();
  sub_227663AD0();
  sub_226E97D1C(v10, &qword_27D7BB2C0, &unk_227687210);
  v12 = sub_22766BFD0();

  [a1 setReason_];

  sub_227666290();
  v13 = sub_2276626A0();
  (*(v3 + 8))(v6, v2);
  [a1 setDate_];
}

uint64_t sub_2275BC9A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2275BC9EC()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 16);
  v116 = *(v1 + 32);
  v123 = v1;
  ObjectType = swift_getObjectType();
  v124 = v12;
  v13 = *MEMORY[0x277D4E718];
  v14 = v3[13];
  v119 = v3 + 13;
  v14(v6, v13, v2);
  v117 = v14;
  swift_allocObject();
  swift_weakInit();
  v15 = sub_227665720();
  v16 = sub_2276638D0();
  swift_unknownObjectRetain_n();
  v115 = v16;
  sub_227669EC0();

  v17 = v3[1];
  v118 = v3 + 1;
  v121 = v2;
  v122 = v17;
  v17(v6, v2);
  swift_unknownObjectRelease();
  v124 = v12;
  v109 = *MEMORY[0x277D4E470];
  (v14)(v6);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v108 = v15;
  sub_227669EC0();

  v18 = v121;
  v122(v6, v121);
  swift_unknownObjectRelease();
  v124 = v12;
  v19 = v6;
  v20 = v6;
  v21 = v117;
  (v117)(v19, *MEMORY[0x277D4E520], v18);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v92[0] = v20;
  v22 = v122;
  v122(v20, v121);
  swift_unknownObjectRelease();
  v124 = v12;
  LODWORD(v113) = *MEMORY[0x277D4E4D0];
  v21(v20);
  swift_allocObject();
  swift_weakInit();
  v107 = sub_227663090();
  v111 = v12;
  swift_unknownObjectRetain();
  v23 = v92[0];
  sub_227669EC0();

  v24 = v121;
  v22(v23, v121);
  swift_unknownObjectRelease();
  v25 = *(v123 + 80);
  v112 = *(v123 + 96);
  v114 = swift_getObjectType();
  v124 = v25;
  v26 = v24;
  v27 = v117;
  (v117)(v23, v113, v24);
  swift_allocObject();
  swift_weakInit();
  v110 = v25;
  swift_unknownObjectRetain_n();
  sub_227669EC0();

  v28 = v122;
  v122(v23, v24);
  swift_unknownObjectRelease();
  v29 = v111;
  v124 = v111;
  (v27)(v23, *MEMORY[0x277D4E6E0], v24);
  swift_allocObject();
  swift_weakInit();
  v101 = sub_227667990();
  sub_227665C20();
  v30 = v29;
  swift_unknownObjectRetain();
  sub_227669EC0();

  v28(v23, v26);
  swift_unknownObjectRelease();
  v124 = v29;
  v31 = v117;
  (v117)(v23, *MEMORY[0x277D4E680], v26);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v32 = v122;
  v122(v23, v26);
  swift_unknownObjectRelease();
  v124 = v29;
  (v31)(v23, *MEMORY[0x277D4EC98], v26);
  swift_allocObject();
  swift_weakInit();
  sub_227667C60();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v33 = v121;
  v32(v23, v121);
  swift_unknownObjectRelease();
  v124 = v30;
  (v31)(v23, *MEMORY[0x277D4E7E8], v33);
  swift_allocObject();
  swift_weakInit();
  sub_227666E30();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF610, &qword_22768C618);
  sub_226F62F70(&qword_281399088, &qword_27D7BF610, &qword_22768C618);
  sub_2275C71F8();
  sub_227669EC0();

  v34 = v121;
  v122(v23, v121);
  swift_unknownObjectRelease();
  v124 = v30;
  LODWORD(v107) = *MEMORY[0x277D4E9F8];
  v35 = v117;
  v117(v23);
  swift_allocObject();
  swift_weakInit();
  v106 = sub_227668760();
  v105 = sub_227666DE0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v122(v23, v34);
  swift_unknownObjectRelease();
  v124 = v30;
  (v35)(v23, *MEMORY[0x277D4E920], v34);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC180, &qword_2276854E0);
  v97 = sub_2275C7404();
  v99 = sub_2275C7488();
  sub_227669EC0();

  v36 = v121;
  v37 = v122;
  v122(v23, v121);
  swift_unknownObjectRelease();
  v124 = v30;
  v38 = v117;
  (v117)(v23, *MEMORY[0x277D4E498], v36);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v39 = v121;
  v37(v23, v121);
  swift_unknownObjectRelease();
  v124 = v30;
  (v38)(v23, *MEMORY[0x277D4E7A0], v39);
  swift_allocObject();
  swift_weakInit();
  sub_227665CA0();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v40 = v121;
  v37(v23, v121);
  swift_unknownObjectRelease();
  v124 = v30;
  (v117)(v23, *MEMORY[0x277D4E878], v40);
  swift_allocObject();
  swift_weakInit();
  v41 = sub_2276627D0();
  swift_unknownObjectRetain();
  v113 = v41;
  sub_227669EE0();

  v37(v23, v40);
  swift_unknownObjectRelease();
  v124 = v30;
  v42 = v117;
  (v117)(v23, *MEMORY[0x277D4E480], v40);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v122(v23, v121);
  swift_unknownObjectRelease();
  v124 = v30;
  v104 = *MEMORY[0x277D4E530];
  v42(v23);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v43 = v121;
  v44 = v122;
  v122(v23, v121);
  swift_unknownObjectRelease();
  v124 = v30;
  v103 = *MEMORY[0x277D4E9C8];
  v117(v23);
  swift_allocObject();
  swift_weakInit();
  v102 = sub_227668430();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v44(v23, v43);
  swift_unknownObjectRelease();
  v124 = v30;
  v45 = v117;
  (v117)(v23, *MEMORY[0x277D4E8B8], v43);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v46 = v121;
  v44(v23, v121);
  swift_unknownObjectRelease();
  v124 = v30;
  (v45)(v23, *MEMORY[0x277D4E6F0], v46);
  swift_allocObject();
  swift_weakInit();
  v101 = sub_227665750();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v47 = v121;
  v44(v23, v121);
  swift_unknownObjectRelease();
  v124 = v30;
  (v45)(v23, *MEMORY[0x277D4E9E8], v47);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v48 = v122;
  v122(v23, v47);
  swift_unknownObjectRelease();
  v124 = v30;
  (v45)(v23, *MEMORY[0x277D4EAA8], v47);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1E0, &qword_22767CEB0);
  sub_2275C7B70();
  sub_2275C7BF4();
  sub_227669ED0();

  v48(v23, v121);
  swift_unknownObjectRelease();
  v124 = v30;
  LODWORD(v101) = *MEMORY[0x277D4EB18];
  v49 = v117;
  v117(v23);
  swift_allocObject();
  swift_weakInit();
  v100 = sub_227667440();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v50 = v121;
  v122(v23, v121);
  swift_unknownObjectRelease();
  v124 = v30;
  (v49)(v23, *MEMORY[0x277D4E9E0], v50);
  swift_allocObject();
  swift_weakInit();
  v96 = sub_227662750();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF618, &qword_22768C710);
  sub_226F62F70(&unk_281398FE0, &qword_27D7BF618, &qword_22768C710);
  sub_2275C7DEC();
  sub_227669EC0();

  v51 = v121;
  v122(v23, v121);
  swift_unknownObjectRelease();
  v124 = v30;
  (v49)(v23, *MEMORY[0x277D4EC60], v51);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC198, &unk_22767CD40);
  sub_2275C7F3C();
  sub_2275C7FC0();
  sub_227669ED0();

  v52 = v121;
  v53 = v122;
  v122(v23, v121);
  swift_unknownObjectRelease();
  v124 = v30;
  (v49)(v23, *MEMORY[0x277D4EB30], v52);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v54 = v121;
  v53(v23, v121);
  swift_unknownObjectRelease();
  v124 = v30;
  (v49)(v23, *MEMORY[0x277D4EAD0], v54);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFC0, &qword_227683170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC190, &unk_2276855E0);
  v94 = sub_2275C81BC();
  v93 = sub_2275C8240();
  sub_2275C82F4();
  sub_2275C8378();
  sub_227669EC0();

  v55 = v122;
  v122(v23, v54);
  swift_unknownObjectRelease();
  v124 = v30;
  v56 = v117;
  (v117)(v23, *MEMORY[0x277D4E7F0], v54);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC188, &qword_22768C760);
  sub_2275C84D8();
  sub_2275C855C();
  sub_227669EC0();

  v55(v23, v54);
  swift_unknownObjectRelease();
  v124 = v30;
  (v56)(v23, *MEMORY[0x277D4E990], v54);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v122(v23, v121);
  swift_unknownObjectRelease();
  v124 = v30;
  LODWORD(v99) = *MEMORY[0x277D4EA90];
  v56(v23);
  swift_allocObject();
  swift_weakInit();
  v98 = sub_227667780();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v57 = v121;
  v58 = v122;
  v122(v23, v121);
  swift_unknownObjectRelease();
  v124 = v30;
  v59 = v117;
  (v117)(v23, *MEMORY[0x277D4E368], v57);
  swift_allocObject();
  swift_weakInit();
  sub_227668FE0();
  sub_2276657D0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v60 = v121;
  v58(v23, v121);
  v61 = v111;
  swift_unknownObjectRelease();
  v124 = v61;
  (v59)(v23, *MEMORY[0x277D4EBB8], v60);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF620, &qword_22768C7A8);
  sub_2275C889C();
  sub_2275C8920();
  sub_227669ED0();

  v62 = v122;
  v122(v23, v60);
  v63 = v111;
  swift_unknownObjectRelease();
  v124 = v63;
  LODWORD(v97) = *MEMORY[0x277D4E3D8];
  v64 = v117;
  v117(v23);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v65 = v121;
  v62(v23, v121);
  v66 = v111;
  swift_unknownObjectRelease();
  v124 = v66;
  (v64)(v23, *MEMORY[0x277D4EB98], v65);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EF0();

  v67 = v122;
  v122(v23, v121);

  swift_unknownObjectRelease();
  v124 = v66;
  LODWORD(v95) = *MEMORY[0x277D4E808];
  v68 = v64;
  v64(v23);
  swift_allocObject();
  swift_weakInit();
  v94 = sub_227668A70();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v69 = v121;
  v67(v23, v121);
  swift_unknownObjectRelease();
  v124 = v66;
  (v68)(v23, *MEMORY[0x277D4EBD0], v69);
  swift_allocObject();
  swift_weakInit();
  sub_227665F20();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v70 = v69;
  v71 = v69;
  v72 = v122;
  v122(v23, v71);
  swift_unknownObjectRelease();
  v124 = v66;
  (v68)(v23, *MEMORY[0x277D4ECF8], v70);
  swift_allocObject();
  swift_weakInit();
  sub_227668E60();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC160, &qword_22767CCF0);
  sub_2275C8CEC();
  sub_2275C8D70();
  sub_227669EC0();

  v72(v23, v70);
  swift_unknownObjectRelease();
  v124 = v66;
  LODWORD(v96) = *MEMORY[0x277D4E4D8];
  v117(v23);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v72(v23, v70);
  swift_unknownObjectRelease();
  v124 = v66;
  LODWORD(v93) = *MEMORY[0x277D4EB20];
  v73 = v117;
  v117(v23);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF628, &qword_22768C828);
  v75 = sub_2275C8F6C();
  v76 = sub_2275C8FF0();
  v92[1] = v74;
  v92[2] = v75;
  v92[3] = v76;
  sub_227669ED0();

  v122(v23, v70);
  swift_unknownObjectRelease();
  v124 = v66;
  (v73)(v23, *MEMORY[0x277D4E348], v70);
  swift_allocObject();
  swift_weakInit();
  sub_227669EC0();

  v77 = v121;
  v78 = v122;
  v122(v23, v121);
  swift_unknownObjectRelease();
  v124 = v66;
  v79 = v117;
  (v117)(v23, *MEMORY[0x277D4E770], v77);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v80 = v121;
  v78(v23, v121);
  swift_unknownObjectRelease();
  v124 = v110;
  (v79)(v23, v109, v80);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v122(v23, v80);
  v81 = v110;
  swift_unknownObjectRelease();
  v124 = v81;
  (v117)(v23, v104, v80);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v82 = v122;
  v122(v23, v80);
  swift_unknownObjectRelease();
  v124 = v81;
  v83 = v80;
  v84 = v117;
  (v117)(v23, v103, v83);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v85 = v121;
  v82(v23, v121);
  swift_unknownObjectRelease();
  v124 = v81;
  (v84)(v23, *MEMORY[0x277D4EB78], v85);
  swift_allocObject();
  swift_weakInit();
  sub_227666E80();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v86 = v122;
  v122(v23, v85);
  swift_unknownObjectRelease();
  v124 = v81;
  v87 = v117;
  (v117)(v23, v95, v85);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v86(v23, v85);
  swift_unknownObjectRelease();
  v124 = v81;
  (v87)(v23, v93, v85);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v88 = v122;
  v122(v23, v85);
  swift_unknownObjectRelease();
  v124 = v81;
  (v87)(v23, v101, v85);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v88(v23, v85);
  swift_unknownObjectRelease();
  v124 = v81;
  v89 = v117;
  (v117)(v23, v97, v85);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v88(v23, v85);
  swift_unknownObjectRelease();
  v124 = v81;
  (v89)(v23, v107, v85);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v90 = v122;
  v122(v23, v85);
  swift_unknownObjectRelease();
  v124 = v81;
  (v117)(v23, v96, v85);
  swift_allocObject();
  swift_weakInit();
  sub_227669EC0();

  v90(v23, v85);
  swift_unknownObjectRelease();
  v124 = v81;
  (v117)(v23, v99, v85);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v90(v23, v85);
  return swift_unknownObjectRelease();
}

uint64_t sub_2275BF920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275BF944, 0, 0);
}

uint64_t sub_2275BF944()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_2275BFA98;
    v5 = v0[10];
    v6 = v0[11];

    return sub_2271ED5EC(v5, v6);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_2276638D0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2275BFA98()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226F69340;
  }

  else
  {
    v3 = sub_2275C9C28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275BFBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275BFBD0, 0, 0);
}

uint64_t sub_2275BFBD0()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_2275BFA98;
    v5 = v0[10];
    v6 = v0[11];

    return sub_2271EAACC(v5, v6);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_2276638D0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2275BFD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275BFD48, 0, 0);
}

uint64_t sub_2275BFD48()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_2275BFA98;
    v5 = v0[10];
    v6 = v0[11];

    return sub_2271EC824(v5, v6);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_2276638D0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2275BFE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275BFEC0, 0, 0);
}

uint64_t sub_2275BFEC0()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_2275BFA98;
    v5 = v0[10];
    v6 = v0[11];

    return sub_2271EE5C0(v5, v6);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_2276638D0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2275C0014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C0038, 0, 0);
}

uint64_t sub_2275C0038()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_2275C018C;
    v5 = v0[10];
    v6 = v0[11];

    return sub_2271E9BFC(v5, v6);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_227665C20();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2275C018C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226F69340;
  }

  else
  {
    v3 = sub_2275C02A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275C02A0()
{
  v1 = v0[10];
  v2 = sub_227665C20();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2275C0348(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C0368, 0, 0);
}

uint64_t sub_2275C0368()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_2275C04BC;
    v5 = v0[10];

    return sub_226E988E0(v5);
  }

  else
  {
    v7 = v0[10];
    v8 = sub_2276638D0();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2275C04BC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_226F618C8;
  }

  else
  {
    v3 = sub_2275C9C28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275C05D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C05F0, 0, 0);
}

uint64_t sub_2275C05F0()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = *v3;
    v0[12] = *v3;
    v5 = v4[16];
    v6 = v4[17];
    __swift_project_boxed_opaque_existential_0(v4 + 13, v5);
    v7 = *(v6 + 24);

    v16 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[13] = v9;
    v10 = sub_227667C60();
    v0[14] = v10;
    *v9 = v0;
    v9[1] = sub_2275C0828;
    v11 = v0[10];

    return (v16)(v11, sub_2275C9BDC, v4, v10, v5, v6);
  }

  else
  {
    v13 = v0[10];
    v14 = sub_227667C60();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2275C0828()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_2275C09E0;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_2275C0944;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2275C0944()
{
  (*(*(v0[14] - 8) + 56))(v0[10], 0, 1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2275C09E0()
{
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_2275C0A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C0A70, 0, 0);
}

uint64_t sub_2275C0A70()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_2275C0B8C;
    v5 = *(v0 + 88);

    return sub_2271F50AC(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2275C0B8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_226F69340;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_226FAAC80;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2275C0CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C0CD8, 0, 0);
}

uint64_t sub_2275C0CD8()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_2275C0E2C;
    v5 = v0[10];
    v6 = v0[11];

    return sub_2271FB980(v5, v6);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_227666DE0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2275C0E2C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226F69340;
  }

  else
  {
    v3 = sub_2275C9C30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275C0F40(uint64_t a1, void *a2, uint64_t a3)
{
  v3[14] = a1;
  v3[15] = a3;
  v3[16] = *a2;
  return MEMORY[0x2822009F8](sub_2275C0F68, 0, 0);
}

uint64_t sub_2275C0F68()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 128);
    sub_226E91B50(Strong + 104, v0 + 16);

    v4 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 96) = v3;
    sub_226FAF774();
    sub_227663AE0();
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v7 = *v4;
    v8 = *(*v4 + 128);
    v9 = *(*v4 + 136);
    __swift_project_boxed_opaque_existential_0((*v4 + 104), v8);
    v10 = swift_allocObject();
    *(v0 + 136) = v10;
    *(v10 + 16) = v7;
    *(v10 + 24) = v5;
    *(v10 + 32) = v6;
    v11 = *(v9 + 24);

    v17 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC180, &qword_2276854E0);
    *v13 = v0;
    v13[1] = sub_2275C11CC;

    return (v17)(v0 + 104, sub_2275C9BBC, v10, v14, v8, v9);
  }

  else
  {
    **(v0 + 112) = 0;
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_2275C11CC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_2275C1354;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_2275C12E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2275C12E8()
{
  **(v0 + 112) = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2275C1354()
{
  v1 = v0[17];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t sub_2275C13C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C13E0, 0, 0);
}

uint64_t sub_2275C13E0()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[10];

    return sub_2271FDFD0(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275C14F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C1514, 0, 0);
}

uint64_t sub_2275C1514()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[10];

    return sub_2271FE820(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275C1628(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C1648, 0, 0);
}

uint64_t sub_2275C1648()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[10];

    return sub_2271FCD9C(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275C175C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_2276627D0();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v3[15] = *(v5 + 64);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C1828, 0, 0);
}

uint64_t sub_2275C1828()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[13];
    v6 = v0[14];
    v7 = v0[11];
    sub_226E91B50(Strong + 104, (v0 + 2));

    v8 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v9 = *v8;
    v10 = *(*v8 + 128);
    v11 = *(*v8 + 136);
    __swift_project_boxed_opaque_existential_0((*v8 + 104), v10);
    (*(v6 + 16))(v3, v7, v5);
    v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v13 = swift_allocObject();
    v0[17] = v13;
    *(v13 + 16) = v9;
    (*(v6 + 32))(v13 + v12, v3, v5);
    v14 = *(v11 + 24);

    v24 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[18] = v16;
    v17 = sub_2276638D0();
    v0[19] = v17;
    *v16 = v0;
    v16[1] = sub_2275C1AF0;
    v18 = v0[10];

    return v24(v18, sub_2275C9C08, v13, v17, v10, v11);
  }

  else
  {
    v20 = v0[10];
    v21 = sub_2276638D0();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    v22 = v0[16];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_2275C1AF0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_2275C1CB0;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_2275C1C0C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2275C1C0C()
{
  (*(*(v0[19] - 8) + 56))(v0[10], 0, 1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[16];

  v2 = v0[1];

  return v2();
}

uint64_t sub_2275C1CB0()
{
  v2 = v0[16];
  v1 = v0[17];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_2275C1D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C1D48, 0, 0);
}

uint64_t sub_2275C1D48()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_2275C1E9C;
    v5 = v0[10];
    v6 = v0[11];

    return sub_2271FC298(v5, v6);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_2276638D0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2275C1E9C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226F60D40;
  }

  else
  {
    v3 = sub_2275C1FB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275C1FB0()
{
  v1 = v0[10];
  v2 = sub_2276638D0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2275C2058(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C2078, 0, 0);
}

uint64_t sub_2275C2078()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[10];

    return sub_2271E9250(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275C218C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C21B0, 0, 0);
}

uint64_t sub_2275C21B0()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    __swift_project_boxed_opaque_existential_0((*v3 + 424), *(*v3 + 448));
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_2275C2314;
    v5 = v0[10];
    v6 = v0[11];

    return sub_22714E544(v5, v6);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_227665750();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2275C2314()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226F69340;
  }

  else
  {
    v3 = sub_2275C2428;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275C2428()
{
  v1 = v0[10];
  v2 = sub_227665750();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2275C24D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C24F0, 0, 0);
}

uint64_t sub_2275C24F0()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_2275C2644;
    v5 = v0[10];

    return sub_227200030(v5);
  }

  else
  {
    v7 = v0[10];
    v8 = sub_227665750();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2275C2644()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_226F69344;
  }

  else
  {
    v3 = sub_2275C9C2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275C2758(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C2778, 0, 0);
}

uint64_t sub_2275C2778()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_226F61A60;

    return sub_2272011EC();
  }

  else
  {
    **(v0 + 80) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2275C288C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C28AC, 0, 0);
}

uint64_t sub_2275C28AC()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[10];

    return sub_227201694(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275C29C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = sub_227662750();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v3[16] = *(v5 + 64);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C2A8C, 0, 0);
}

uint64_t sub_2275C2A8C()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 112);
    v6 = *(v0 + 120);
    v7 = *(v0 + 96);
    sub_226E91B50(Strong + 104, v0 + 16);

    v8 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v9 = *v8;
    v10 = *(*v8 + 128);
    v11 = *(*v8 + 136);
    __swift_project_boxed_opaque_existential_0((*v8 + 104), v10);
    (*(v6 + 16))(v3, v7, v5);
    v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v13 = swift_allocObject();
    *(v0 + 144) = v13;
    *(v13 + 16) = v9;
    (*(v6 + 32))(v13 + v12, v3, v5);
    v14 = *(v11 + 24);

    v21 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v0 + 152) = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF618, &qword_22768C710);
    *v16 = v0;
    v16[1] = sub_2275C2D24;

    return (v21)(v0 + 80, sub_2275C99E4, v13, v17, v10, v11);
  }

  else
  {
    **(v0 + 88) = 0;
    v19 = *(v0 + 136);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_2275C2D24()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_226FABDEC;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_2275C2E40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2275C2E40()
{
  **(v0 + 88) = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2275C2EB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C2ED4, 0, 0);
}

uint64_t sub_2275C2ED4()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_226F60ED8;

    return sub_2272036E0();
  }

  else
  {
    **(v0 + 80) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2275C2FE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C3008, 0, 0);
}

uint64_t sub_2275C3008()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_2275C3124;

    return sub_227203ED8();
  }

  else
  {
    v6 = v0[10];
    *v6 = 0;
    *(v6 + 8) = 1;
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275C3124(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_226F69344;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_2275C324C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2275C324C()
{
  v1 = v0[10];
  *v1 = v0[14];
  *(v1 + 8) = 0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2275C32C0(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_2275C32E8, 0, 0);
}

uint64_t sub_2275C32E8()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FABFA0;
    v5 = *(v0 + 96);

    return sub_227204158(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2275C3404(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_2275C342C, 0, 0);
}

uint64_t sub_2275C342C()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FABFA0;
    v5 = *(v0 + 96);

    return sub_227204C74(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2275C3548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C356C, 0, 0);
}

uint64_t sub_2275C356C()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FABFA0;
    v5 = *(v0 + 88);

    return sub_2272046EC(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2275C3688(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C36A8, 0, 0);
}

uint64_t sub_2275C36A8()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F620FC;
    v5 = v0[10];

    return sub_227202748(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275C37BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_227668FE0();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v3[15] = *(v5 + 64);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C3888, 0, 0);
}

uint64_t sub_2275C3888()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[13];
    v6 = v0[14];
    v7 = v0[11];
    sub_226E91B50(Strong + 104, (v0 + 2));

    v8 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v9 = *v8;
    v10 = *(*v8 + 128);
    v11 = *(*v8 + 136);
    __swift_project_boxed_opaque_existential_0((*v8 + 104), v10);
    (*(v6 + 16))(v3, v7, v5);
    v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v13 = swift_allocObject();
    v0[17] = v13;
    *(v13 + 16) = v9;
    (*(v6 + 32))(v13 + v12, v3, v5);
    v14 = *(v11 + 24);

    v24 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[18] = v16;
    v17 = sub_2276657D0();
    v0[19] = v17;
    *v16 = v0;
    v16[1] = sub_2275C3B50;
    v18 = v0[10];

    return v24(v18, sub_2275C99A4, v13, v17, v10, v11);
  }

  else
  {
    v20 = v0[10];
    v21 = sub_2276657D0();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    v22 = v0[16];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_2275C3B50()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_2275C9C24;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_2275C9C00;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2275C3C6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_2275C3C8C, 0, 0);
}

uint64_t sub_2275C3C8C()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    v3 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = *(*v3 + 128);
    v5 = *(*v3 + 136);
    __swift_project_boxed_opaque_existential_0((*v3 + 104), v4);
    v6 = *(v5 + 24);
    v12 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF620, &qword_22768C7A8);
    *v8 = v0;
    v8[1] = sub_226FABC6C;

    return (v12)(v0 + 80, sub_2272034CC, 0, v9, v4, v5);
  }

  else
  {
    **(v0 + 88) = 0;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2275C3E80(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C3EA0, 0, 0);
}

uint64_t sub_2275C3EA0()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[10];

    return sub_2271FF424(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275C3FD4()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_226F60430;

    return sub_2271E6B88();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2275C40E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C4100, 0, 0);
}

uint64_t sub_2275C4100()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[10];

    return sub_2272050BC(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275C4214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_227662750();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v3[15] = *(v5 + 64);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C42E0, 0, 0);
}

uint64_t sub_2275C42E0()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[13];
    v6 = v0[14];
    v7 = v0[11];
    sub_226E91B50(Strong + 104, (v0 + 2));

    v8 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v9 = *v8;
    v10 = *(*v8 + 128);
    v11 = *(*v8 + 136);
    __swift_project_boxed_opaque_existential_0((*v8 + 104), v10);
    (*(v6 + 16))(v3, v7, v5);
    v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v13 = swift_allocObject();
    v0[17] = v13;
    *(v13 + 16) = v9;
    (*(v6 + 32))(v13 + v12, v3, v5);
    v14 = *(v11 + 24);

    v24 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[18] = v16;
    v17 = sub_227665F20();
    v0[19] = v17;
    *v16 = v0;
    v16[1] = sub_2275C3B50;
    v18 = v0[10];

    return v24(v18, sub_2275C9964, v13, v17, v10, v11);
  }

  else
  {
    v20 = v0[10];
    v21 = sub_227665F20();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    v22 = v0[16];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_2275C45A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C45CC, 0, 0);
}

uint64_t sub_2275C45CC()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FABFA0;
    v5 = *(v0 + 88);

    return sub_2271F80C8(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2275C46E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_22766B390();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C47AC, 0, 0);
}

uint64_t sub_2275C47AC()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[14];
    v3 = v0[15];
    v5 = v0[13];
    sub_226E91B50(Strong + 104, (v0 + 2));

    v6 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    sub_22766A630();
    sub_22766B370();
    (*(v4 + 8))(v3, v5);
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_2275C4978;
    v8 = v0[11];

    return sub_2271FDFD0(v8);
  }

  else
  {
    v10 = v0[10];
    v11 = sub_2276638D0();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = v0[15];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2275C4978()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_2275C4B90;
  }

  else
  {
    v3 = sub_2275C4A8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275C4A8C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = sub_2276638D0();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2275C4B90()
{
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t sub_2275C4C00(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_2276627D0();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = sub_2276638D0();
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C4D1C, 0, 0);
}

uint64_t sub_2275C4D1C()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    *(v0 + 144) = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v3 = swift_task_alloc();
    *(v0 + 152) = v3;
    *v3 = v0;
    v3[1] = sub_2275C4E50;
    v4 = *(v0 + 136);

    return sub_226E988E0(v4);
  }

  else
  {
    **(v0 + 80) = 0;
    v6 = *(v0 + 136);
    v7 = *(v0 + 112);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2275C4E50()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_2275C5190;
  }

  else
  {
    v3 = sub_2275C4F64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275C4F64()
{
  v1 = v0[17];
  v2 = v0[14];
  sub_2276637C0();
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_2275C5008;
  v4 = v0[18];
  v5 = v0[14];

  return sub_227201F00(v5);
}

uint64_t sub_2275C5008(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  v4[22] = v1;

  v7 = v4[14];
  v8 = v4[13];
  v9 = v4[12];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_2275C52B0;
  }

  else
  {
    v4[23] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_2275C5214;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2275C5190()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[14];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2275C5214()
{
  v1 = v0[23];
  v2 = v0[10];
  (*(v0[16] + 8))(v0[17], v0[15]);
  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[17];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2275C52B0()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[14];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2275C534C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C5370, 0, 0);
}

uint64_t sub_2275C5370()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FABFA0;
    v5 = *(v0 + 88);

    return sub_227201F00(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2275C548C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C54AC, 0, 0);
}

uint64_t sub_2275C54AC()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[10];

    return sub_2271FD694(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275C55C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_2276627D0();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v3[15] = *(v5 + 64);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C568C, 0, 0);
}

uint64_t sub_2275C568C()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[13];
    v6 = v0[14];
    v7 = v0[11];
    sub_226E91B50(Strong + 104, (v0 + 2));

    v8 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v9 = *v8;
    v10 = *(*v8 + 128);
    v11 = *(*v8 + 136);
    __swift_project_boxed_opaque_existential_0((*v8 + 104), v10);
    (*(v6 + 16))(v3, v7, v5);
    v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v13 = swift_allocObject();
    v0[17] = v13;
    *(v13 + 16) = v9;
    (*(v6 + 32))(v13 + v12, v3, v5);
    v14 = *(v11 + 24);

    v24 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[18] = v16;
    v17 = sub_2276638D0();
    v0[19] = v17;
    *v16 = v0;
    v16[1] = sub_2275C3B50;
    v18 = v0[10];

    return v24(v18, sub_2275C9924, v13, v17, v10, v11);
  }

  else
  {
    v20 = v0[10];
    v21 = sub_2276638D0();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    v22 = v0[16];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_2275C5954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C5978, 0, 0);
}

uint64_t sub_2275C5978()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_2275BFA98;
    v5 = v0[10];
    v6 = v0[11];

    return sub_2271FC298(v5, v6);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_2276638D0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2275C5ACC(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C5AEC, 0, 0);
}

uint64_t sub_2275C5AEC()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_2275C5C40;
    v5 = v0[10];

    return sub_2271F70F0(v5);
  }

  else
  {
    v7 = v0[10];
    v8 = sub_227666E80();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2275C5C40()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_226F69344;
  }

  else
  {
    v3 = sub_2275C5D54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275C5D54()
{
  v1 = v0[10];
  v2 = sub_227666E80();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2275C5DFC(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_2276627D0();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = sub_2276638D0();
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C5F18, 0, 0);
}

uint64_t sub_2275C5F18()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    *(v0 + 144) = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v3 = swift_task_alloc();
    *(v0 + 152) = v3;
    *v3 = v0;
    v3[1] = sub_2275C604C;
    v4 = *(v0 + 136);

    return sub_226E988E0(v4);
  }

  else
  {
    **(v0 + 80) = 0;
    v6 = *(v0 + 136);
    v7 = *(v0 + 112);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2275C604C()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_2275C9BFC;
  }

  else
  {
    v3 = sub_2275C6160;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275C6160()
{
  v1 = v0[17];
  v2 = v0[14];
  sub_2276637C0();
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_2275C6204;
  v4 = v0[18];
  v5 = v0[14];

  return sub_227201F00(v5);
}

uint64_t sub_2275C6204(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  v4[22] = v1;

  v7 = v4[14];
  v8 = v4[13];
  v9 = v4[12];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_2275C9C34;
  }

  else
  {
    v4[23] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_2275C9BF8;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2275C638C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275C63B0, 0, 0);
}

uint64_t sub_2275C63B0()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_2275C6504;
    v5 = v0[10];
    v6 = v0[11];

    return sub_2271FB980(v5, v6);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_227666DE0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2275C6504()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226F69340;
  }

  else
  {
    v3 = sub_2275C6618;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275C6618()
{
  v1 = v0[10];
  v2 = sub_227666DE0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2275C66C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_22766B390();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275C6784, 0, 0);
}

uint64_t sub_2275C6784()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[14];
    v3 = v0[15];
    v5 = v0[13];
    sub_226E91B50(Strong + 104, (v0 + 2));

    v6 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    sub_22766A630();
    sub_22766B370();
    (*(v4 + 8))(v3, v5);
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_2275C6950;
    v8 = v0[11];

    return sub_2271FDFD0(v8);
  }

  else
  {
    v10 = v0[10];
    v11 = sub_2276638D0();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = v0[15];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2275C6950()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_2275C9C04;
  }

  else
  {
    v3 = sub_2275C9C20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275C6A64(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275C6A84, 0, 0);
}

uint64_t sub_2275C6A84()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[10];

    return sub_227202748(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275C6B98()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v2 = v0[10];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  return swift_deallocClassInstance();
}

uint64_t sub_2275C6C0C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275BF920(a1, a2, v2);
}

uint64_t sub_2275C6CB8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275BFBAC(a1, a2, v2);
}

uint64_t sub_2275C6D64(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275BFD24(a1, a2, v2);
}

uint64_t sub_2275C6E10(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275BFE9C(a1, a2, v2);
}

uint64_t sub_2275C6EBC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275BFE9C(a1, a2, v2);
}

uint64_t sub_2275C6F68(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C0014(a1, a2, v2);
}

uint64_t sub_2275C7014(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C0348(a1, v1);
}

uint64_t sub_2275C70B0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C05D0(a1, v1);
}

uint64_t sub_2275C714C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C0A4C(a1, a2, v2);
}

unint64_t sub_2275C71F8()
{
  result = qword_281399080;
  if (!qword_281399080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF610, &qword_22768C618);
    sub_2275C90A4(&qword_28139B7D8, MEMORY[0x277D518F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399080);
  }

  return result;
}

uint64_t sub_2275C72AC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C0CB4(a1, a2, v2);
}

uint64_t sub_2275C7358(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C0F40(a1, a2, v2);
}

unint64_t sub_2275C7404()
{
  result = qword_281398E88;
  if (!qword_281398E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC180, &qword_2276854E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E88);
  }

  return result;
}

unint64_t sub_2275C7488()
{
  result = qword_281398E80;
  if (!qword_281398E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC180, &qword_2276854E0);
    sub_2275C90A4(&unk_28139BCB0, MEMORY[0x277D50180]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E80);
  }

  return result;
}

uint64_t sub_2275C753C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C13C0(a1, v1);
}

uint64_t sub_2275C75D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C14F4(a1, v1);
}

uint64_t sub_2275C766C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C1628(a1, v1);
}

uint64_t sub_2275C7704(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C1628(a1, v1);
}

uint64_t sub_2275C779C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_2275C175C(a1, a2, v2);
}

uint64_t sub_2275C7848(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C1D24(a1, a2, v2);
}

uint64_t sub_2275C78F4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C2058(a1, v1);
}

uint64_t sub_2275C798C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C218C(a1, a2, v2);
}

uint64_t sub_2275C7A38(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C24D0(a1, v1);
}

uint64_t sub_2275C7AD4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C2758(a1, v1);
}

unint64_t sub_2275C7B70()
{
  result = qword_281398CB0;
  if (!qword_281398CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC1E0, &qword_22767CEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398CB0);
  }

  return result;
}

unint64_t sub_2275C7BF4()
{
  result = qword_281398CA8;
  if (!qword_281398CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC1E0, &qword_22767CEB0);
    sub_2275C90A4(&qword_28139B548, MEMORY[0x277D52D18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398CA8);
  }

  return result;
}

uint64_t sub_2275C7CA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C288C(a1, v1);
}

uint64_t sub_2275C7D40(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C29C0(a1, a2, v2);
}

unint64_t sub_2275C7DEC()
{
  result = qword_281398FD8;
  if (!qword_281398FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF618, &qword_22768C710);
    sub_2275C90A4(&qword_28139B4D0, MEMORY[0x277D53210]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398FD8);
  }

  return result;
}

uint64_t sub_2275C7EA0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C2EB4(a1, v1);
}

unint64_t sub_2275C7F3C()
{
  result = qword_281398C68;
  if (!qword_281398C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC198, &unk_22767CD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C68);
  }

  return result;
}

unint64_t sub_2275C7FC0()
{
  result = qword_281398C60;
  if (!qword_281398C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC198, &unk_22767CD40);
    sub_2275C90A4(&qword_28139B4B8, MEMORY[0x277D53428]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C60);
  }

  return result;
}

uint64_t sub_2275C8074(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C2FE8(a1, v1);
}

uint64_t sub_2275C8110(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C32C0(a1, a2, v2);
}

unint64_t sub_2275C81BC()
{
  result = qword_281398F28;
  if (!qword_281398F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCFC0, &qword_227683170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F28);
  }

  return result;
}

unint64_t sub_2275C8240()
{
  result = qword_281398F20;
  if (!qword_281398F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCFC0, &qword_227683170);
    sub_2275C90A4(&qword_28139BDA8, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F20);
  }

  return result;
}

unint64_t sub_2275C82F4()
{
  result = qword_281398C78;
  if (!qword_281398C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC190, &unk_2276855E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C78);
  }

  return result;
}

unint64_t sub_2275C8378()
{
  result = qword_281398C70;
  if (!qword_281398C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC190, &unk_2276855E0);
    sub_2275C90A4(&qword_28139B4C0, MEMORY[0x277D53288]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C70);
  }

  return result;
}

uint64_t sub_2275C842C(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C3404(a1, a2, v2);
}

unint64_t sub_2275C84D8()
{
  result = qword_281398D80;
  if (!qword_281398D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC188, &qword_22768C760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D80);
  }

  return result;
}

unint64_t sub_2275C855C()
{
  result = qword_281398D78;
  if (!qword_281398D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC188, &qword_22768C760);
    sub_2275C90A4(&qword_28139B748, MEMORY[0x277D51CF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D78);
  }

  return result;
}

uint64_t sub_2275C8610(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C3548(a1, a2, v2);
}

uint64_t sub_2275C86BC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C3688(a1, v1);
}

uint64_t sub_2275C8754(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C37BC(a1, a2, v2);
}

uint64_t sub_2275C8800(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C3C6C(a1, v1);
}

unint64_t sub_2275C889C()
{
  result = qword_281398CA0;
  if (!qword_281398CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF620, &qword_22768C7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398CA0);
  }

  return result;
}

unint64_t sub_2275C8920()
{
  result = qword_281398C98;
  if (!qword_281398C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF620, &qword_22768C7A8);
    sub_2275C90A4(&qword_28139B518, MEMORY[0x277D52F78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C98);
  }

  return result;
}

uint64_t sub_2275C89D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C3E80(a1, v1);
}

uint64_t sub_2275C8A6C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_2275C3FB4(v0);
}

uint64_t sub_2275C8AFC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C40E0(a1, v1);
}

uint64_t sub_2275C8B94(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C4214(a1, a2, v2);
}

uint64_t sub_2275C8C40(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C45A8(a1, a2, v2);
}

unint64_t sub_2275C8CEC()
{
  result = qword_281398D40;
  if (!qword_281398D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC160, &qword_22767CCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D40);
  }

  return result;
}

unint64_t sub_2275C8D70()
{
  result = qword_281398D38;
  if (!qword_281398D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC160, &qword_22767CCF0);
    sub_2275C90A4(&qword_28139B6E0, MEMORY[0x277D51FE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D38);
  }

  return result;
}

uint64_t sub_2275C8E24(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C46E8(a1, a2, v2);
}

uint64_t sub_2275C8ED0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C4C00(a1, v1);
}

unint64_t sub_2275C8F6C()
{
  result = qword_281398C88;
  if (!qword_281398C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF628, &qword_22768C828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C88);
  }

  return result;
}

unint64_t sub_2275C8FF0()
{
  result = qword_281398C80;
  if (!qword_281398C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF628, &qword_22768C828);
    sub_2275C90A4(&qword_28139B4C8, MEMORY[0x277D53250]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C80);
  }

  return result;
}

uint64_t sub_2275C90A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2275C90EC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C534C(a1, a2, v2);
}

uint64_t sub_2275C9198(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C548C(a1, v1);
}

uint64_t sub_2275C9230(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275BFBAC(a1, a2, v2);
}

uint64_t sub_2275C92DC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C55C0(a1, a2, v2);
}

uint64_t sub_2275C9388(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C5954(a1, a2, v2);
}

uint64_t sub_2275C9434(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C5ACC(a1, v1);
}

uint64_t sub_2275C94D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C40E0(a1, v1);
}

uint64_t sub_2275C9568(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C5DFC(a1, v1);
}

uint64_t sub_2275C9604(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C288C(a1, v1);
}

uint64_t sub_2275C969C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C3E80(a1, v1);
}

uint64_t sub_2275C9734(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C638C(a1, a2, v2);
}

uint64_t sub_2275C97E0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275C66C0(a1, a2, v2);
}

uint64_t sub_2275C988C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275C6A64(a1, v1);
}

uint64_t objectdestroy_123Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_2275C9C38@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CA0];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2275C9CAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227666150();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2275C9CD4(uint64_t a1)
{
  *(a1 + 24) = sub_2275C9D3C(&qword_2813A56C8);
  result = sub_2275C9D3C(&qword_2813A56C0);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2275C9D3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227666170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2275C9D80()
{
  v1 = v0;
  v2 = sub_227669A70();
  v75 = v2;
  v73 = *(v2 - 8);
  v3 = v73;
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = v1[2];
  v69 = v1[4];
  ObjectType = swift_getObjectType();
  v76 = v12;
  v13 = *MEMORY[0x277D4E638];
  v70 = *(v3 + 104);
  v68 = v3 + 104;
  v70(v6, v13, v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB38, &qword_22768C990);
  v60 = sub_226FA712C();
  v59 = sub_2275CD3B8(&qword_281398BC0, &qword_27D7B94F0, &unk_227670BA0, sub_226F62704);
  v65 = sub_227532B14();
  v66 = sub_227532B98();
  sub_227669EC0();

  v14 = v73 + 8;
  v72 = *(v73 + 8);
  v15 = v75;
  v72(v6, v75);
  v73 = v14;
  swift_unknownObjectRelease();
  v76 = v12;
  v16 = v70;
  v70(v6, *MEMORY[0x277D4E4A0], v15);
  swift_allocObject();
  v71 = v1;
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v17 = v72;
  v72(v6, v15);
  swift_unknownObjectRelease();
  v76 = v12;
  v16(v6, *MEMORY[0x277D4E900], v15);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF630, &qword_22768C9B8);
  v56 = sub_2275CD334();
  v55 = sub_2275CD3B8(&qword_281398DE8, &qword_27D7BF630, &qword_22768C9B8, sub_22712BDAC);
  sub_227669EC0();

  v18 = v75;
  v17(v6, v75);
  swift_unknownObjectRelease();
  v76 = v12;
  v70(v6, *MEMORY[0x277D4EAB8], v18);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF638, &qword_22768C9D0);
  v63 = sub_2275CD4E0();
  v58 = sub_2275CD3B8(&qword_281398D68, &qword_27D7BF638, &qword_22768C9D0, sub_2275CD564);
  sub_227669EC0();

  v19 = v75;
  v20 = v72;
  v72(v6, v75);
  swift_unknownObjectRelease();
  v76 = v12;
  v70(v6, *MEMORY[0x277D4EAB0], v19);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v20(v6, v19);
  swift_unknownObjectRelease();
  v76 = v12;
  v21 = v70;
  v70(v6, *MEMORY[0x277D4E420], v19);
  swift_allocObject();
  swift_weakInit();
  v57 = sub_2276641B0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v22 = v72;
  v72(v6, v19);
  swift_unknownObjectRelease();
  v76 = v12;
  v21(v6, *MEMORY[0x277D4E8F8], v19);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v22(v6, v19);
  swift_unknownObjectRelease();
  v76 = v12;
  v21(v6, *MEMORY[0x277D4EC10], v19);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v23 = v19;
  v24 = v72;
  v72(v6, v23);
  swift_unknownObjectRelease();
  v76 = v12;
  v62 = v12;
  LODWORD(v58) = *MEMORY[0x277D4E430];
  (v21)(v6);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v24(v6, v75);
  v25 = v62;
  swift_unknownObjectRelease();
  v76 = v25;
  LODWORD(v57) = *MEMORY[0x277D4E440];
  (v70)(v6);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v26 = v72;
  v72(v6, v75);
  swift_unknownObjectRelease();
  v76 = v25;
  LODWORD(v56) = *MEMORY[0x277D4E3E8];
  v27 = v70;
  (v70)(v6);
  swift_allocObject();
  swift_weakInit();
  v64 = sub_227669480();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v28 = v6;
  v29 = v75;
  v26(v6, v75);
  v30 = v62;
  swift_unknownObjectRelease();
  v76 = v30;
  v27(v28, *MEMORY[0x277D4E4B0], v29);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB30, &unk_227686AE0);
  v31 = sub_2275CDACC();
  v32 = sub_2275CDB50();
  v54[2] = v31;
  v55 = v32;
  sub_227669ED0();

  v33 = v75;
  v26(v28, v75);
  swift_unknownObjectRelease();
  v76 = v30;
  v27(v28, *MEMORY[0x277D4E428], v33);
  swift_allocObject();
  swift_weakInit();
  v54[1] = sub_227664390();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v34 = v75;
  v72(v28, v75);
  swift_unknownObjectRelease();
  v76 = v30;
  v27(v28, *MEMORY[0x277D4E910], v34);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v35 = v72;
  v72(v28, v34);
  swift_unknownObjectRelease();
  v76 = v30;
  v36 = v70;
  v70(v28, *MEMORY[0x277D4E510], v34);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v37 = v75;
  v35(v28, v75);
  swift_unknownObjectRelease();
  v76 = v30;
  v36(v28, *MEMORY[0x277D4E3C0], v37);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v38 = v75;
  v72(v28, v75);
  swift_unknownObjectRelease();
  v76 = v30;
  v36(v28, *MEMORY[0x277D4E3F0], v38);
  swift_allocObject();
  swift_weakInit();
  sub_227669EC0();

  v39 = v75;
  v40 = v72;
  v72(v28, v75);
  swift_unknownObjectRelease();
  v76 = v30;
  LODWORD(v63) = *MEMORY[0x277D4E3D0];
  (v36)(v28);
  swift_allocObject();
  v41 = v71;
  swift_weakInit();
  sub_227669EE0();

  v40(v28, v39);
  swift_unknownObjectRelease();
  v42 = __swift_project_boxed_opaque_existential_0(v41 + 5, v41[8]);
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = *v42;
  sub_2274814CC(26, &unk_22768CAC8, v43);

  v45 = __swift_project_boxed_opaque_existential_0(v41 + 5, v41[8]);
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = *v45;
  sub_2274884EC(49, &unk_22768CAD8, v46);

  v48 = v41[15];
  ObjectType = v41[17];
  v69 = swift_getObjectType();
  v76 = v48;
  v49 = v39;
  v50 = v70;
  v70(v28, v58, v49);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_227669EE0();

  v51 = v75;
  v72(v28, v75);
  swift_unknownObjectRelease();
  v76 = v48;
  v50(v28, v57, v51);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v52 = v72;
  v72(v28, v51);
  swift_unknownObjectRelease();
  v76 = v48;
  v70(v28, v56, v51);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v52(v28, v51);
  swift_unknownObjectRelease();
  v76 = v48;
  v70(v28, v63, v51);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v52(v28, v51);
  return swift_unknownObjectRelease();
}

uint64_t sub_2275CB380(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_2275CB3A8, 0, 0);
}

uint64_t sub_2275CB3A8()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FABFA0;
    v5 = *(v0 + 96);

    return sub_227311594(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2275CB4C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275CB4E4, 0, 0);
}

uint64_t sub_2275CB4E4()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_226F60ED8;

    return sub_227310E6C();
  }

  else
  {
    **(v0 + 80) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2275CB5F8(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_2275CB620, 0, 0);
}

uint64_t sub_2275CB620()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FABFA0;
    v5 = *(v0 + 96);

    return sub_227311974(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2275CB73C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_2275CB764, 0, 0);
}

uint64_t sub_2275CB764()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FABFA0;
    v5 = *(v0 + 96);

    return sub_227311C98(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2275CB880(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_2275CB8A8, 0, 0);
}

uint64_t sub_2275CB8A8()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_2275CB9CC;
    v5 = v0[12];

    return sub_227311FD8(v5);
  }

  else
  {
    v7 = v0[10];
    *v7 = 0;
    *(v7 + 8) = 1;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2275CB9CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_226F69340;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_2275CE3D8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2275CBAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275CBB18, 0, 0);
}

uint64_t sub_2275CBB18()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FAAB58;
    v5 = *(v0 + 88);

    return sub_2273110FC(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2275CBC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275CBC58, 0, 0);
}

uint64_t sub_2275CBC58()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_2275CBD7C;
    v5 = v0[11];

    return sub_227312390(v5);
  }

  else
  {
    v7 = v0[10];
    *v7 = 0;
    *(v7 + 8) = 1;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2275CBD7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_226F69340;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_2275CBEA4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2275CBEA4()
{
  v1 = v0[10];
  *v1 = v0[15];
  *(v1 + 8) = 0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2275CBF18(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_2275CBF40, 0, 0);
}

uint64_t sub_2275CBF40()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_2275CB9CC;
    v5 = v0[12];

    return sub_227312748(v5);
  }

  else
  {
    v7 = v0[10];
    *v7 = 0;
    *(v7 + 8) = 1;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2275CC064(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_2275CC088, 0, 0);
}

uint64_t sub_2275CC088()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[11];

    return sub_227312B18(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275CC19C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_2275CC1C0, 0, 0);
}

uint64_t sub_2275CC1C0()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[11];

    return sub_2273137F4(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275CC2D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275CC2F4, 0, 0);
}

uint64_t sub_2275CC2F4()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[10];

    return sub_227314D68(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275CC408(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275CC428, 0, 0);
}

uint64_t sub_2275CC428()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_226F60ED8;

    return sub_226EA191C();
  }

  else
  {
    **(v0 + 80) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2275CC53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275CC560, 0, 0);
}

uint64_t sub_2275CC560()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FABFA0;
    v5 = *(v0 + 88);

    return sub_227313F68(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2275CC67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2275CC6A0, 0, 0);
}

uint64_t sub_2275CC6A0()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_2275CB9CC;
    v5 = v0[11];

    return sub_227314564();
  }

  else
  {
    v7 = v0[10];
    *v7 = 0;
    *(v7 + 8) = 1;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2275CC7C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275CC7E4, 0, 0);
}

uint64_t sub_2275CC7E4()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_2275C3124;

    return sub_2273142E4();
  }

  else
  {
    v6 = v0[10];
    *v6 = 0;
    *(v6 + 8) = 1;
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275CC900(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v4 = a2[1];
  v3[12] = *a2;
  v3[13] = v4;
  return MEMORY[0x2822009F8](sub_2275CC928, 0, 0);
}

uint64_t sub_2275CC928()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_2275CCA80;
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[10];

    return sub_2273147E4(v7, v5, v6);
  }

  else
  {
    v9 = v0[10];
    v10 = sub_227669480();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2275CCA80()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_226FAA9B0;
  }

  else
  {
    v3 = sub_2275CCB94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275CCB94()
{
  v1 = v0[10];
  v2 = sub_227669480();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2275CCC3C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_2275CCC64, 0, 0);
}

uint64_t sub_2275CCC64()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FABFA0;
    v5 = *(v0 + 96);

    return sub_227314AA4(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2275CCD80(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275CCDA0, 0, 0);
}

uint64_t sub_2275CCDA0()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F620FC;
    v5 = v0[10];

    return sub_227315698(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275CCEB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275CCED4, 0, 0);
}

uint64_t sub_2275CCED4()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_226FAA538;

    return sub_227310E6C();
  }

  else
  {
    **(v0 + 80) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2275CCFE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275CD008, 0, 0);
}

uint64_t sub_2275CD008()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[10];

    return sub_227315698(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2275CD140(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CB380(a1, a2, v2);
}

uint64_t sub_2275CD1EC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CB4C4(a1, v1);
}

uint64_t sub_2275CD288(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CB5F8(a1, a2, v2);
}

unint64_t sub_2275CD334()
{
  result = qword_281398DF0;
  if (!qword_281398DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF630, &qword_22768C9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DF0);
  }

  return result;
}

uint64_t sub_2275CD3B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2275CD434(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CB73C(a1, a2, v2);
}

unint64_t sub_2275CD4E0()
{
  result = qword_281398D70;
  if (!qword_281398D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF638, &qword_22768C9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D70);
  }

  return result;
}

unint64_t sub_2275CD564()
{
  result = qword_28139B728;
  if (!qword_28139B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B728);
  }

  return result;
}

uint64_t sub_2275CD5B8(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CB880(a1, a2, v2);
}

uint64_t sub_2275CD664(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CBAF4(a1, a2, v2);
}

uint64_t sub_2275CD710(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CBC34(a1, a2, v2);
}

uint64_t sub_2275CD7BC(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CBF18(a1, a2, v2);
}

uint64_t sub_2275CD868(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CC064(a1, v1);
}

uint64_t sub_2275CD900(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CC19C(a1, v1);
}

uint64_t sub_2275CD998(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CC2D4(a1, v1);
}

uint64_t sub_2275CDA30(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CC408(a1, v1);
}

unint64_t sub_2275CDACC()
{
  result = qword_281398C20;
  if (!qword_281398C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCB30, &unk_227686AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C20);
  }

  return result;
}

unint64_t sub_2275CDB50()
{
  result = qword_281398C18;
  if (!qword_281398C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCB30, &unk_227686AE0);
    sub_2275CDC04(&qword_28139B268, MEMORY[0x277D53C88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C18);
  }

  return result;
}

uint64_t sub_2275CDC04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2275CDC4C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CC53C(a1, a2, v2);
}

uint64_t sub_2275CDCF8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CC67C(a1, a2, v2);
}

uint64_t sub_2275CDDA4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CC7C4(a1, v1);
}

uint64_t sub_2275CDE40(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_2275CC900(a1, a2, v2);
}

uint64_t sub_2275CDEEC(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CCC3C(a1, a2, v2);
}

uint64_t sub_2275CDF98(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CCD80(a1, v1);
}

uint64_t sub_2275CE030(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CCEB4(a1, v1);
}

uint64_t sub_2275CE0CC(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_2275CCC3C(a1, a2, v2);
}

uint64_t sub_2275CE178(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CC064(a1, v1);
}

uint64_t sub_2275CE210(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CC19C(a1, v1);
}

uint64_t sub_2275CE2A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CC2D4(a1, v1);
}

uint64_t sub_2275CE340(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275CCFE8(a1, v1);
}

uint64_t sub_2275CE3DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_2275CE49C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_2275CE560(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v20 = a1;
  v22 = a4(0);
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v22);
  v9 = &v19 - v8;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v19 = v6 + 16;
  v21 = (v6 + 8);
  v23 = a3;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
      v18 = v22;
LABEL_9:
      (*(v6 + 16))(v9, *(v23 + 48) + *(v6 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v18);
      v20(v9);
      if (v4)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v21)(v9, v18);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    (*v21)(v9, v18);
  }

  else
  {
LABEL_5:
    v18 = v22;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ScoreServer.__allocating_init(endpoint:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_2275D1224(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

uint64_t ScoreServer.init(endpoint:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  v11 = sub_2275D10BC(v9, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t ScoreServer.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC15SeymourServices11ScoreServer__dumpScoresToFile;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ScoreServer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = OBJC_IVAR____TtC15SeymourServices11ScoreServer__dumpScoresToFile;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ScoreServer.executeScoresTasks()()
{
  v1[2] = v0;
  v2 = sub_22766B390();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_22766B0C0();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275CEAE8, 0, 0);
}

uint64_t sub_2275CEAE8()
{
  v1 = v0[2];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_2275CEC18;
  v7 = v0[9];

  return v9(v7, v2, v3);
}

uint64_t sub_2275CEC18()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2275CEEF0;
  }

  else
  {
    v3 = sub_2275CED2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275CED2C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  sub_22766A6E0();
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 67240192;
    v13 = sub_22766B0B0();
    v14 = *(v10 + 8);
    v14(v9, v11);
    *(v12 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v6, v7, "Executed %{public}d tasks", v12, 8u);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  else
  {
    v14 = *(v10 + 8);
    v14(v0[8], v0[6]);
  }

  v16 = v0[8];
  v15 = v0[9];
  v18 = v0[5];
  v17 = v0[6];
  v19 = v0[3];
  v20 = v0[4];

  (*(v20 + 8))(v18, v19);
  v14(v15, v17);

  v21 = v0[1];

  return v21();
}

uint64_t sub_2275CEEF0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t ScoreServer.fetchScores(request:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(sub_227666B70() - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = sub_2276677E0();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v8 = sub_22766B010();
  v3[14] = v8;
  v9 = *(v8 - 8);
  v3[15] = v9;
  v10 = *(v9 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275CF0B4, 0, 0);
}

uint64_t sub_2275CF0B4()
{
  v1 = v0[13];
  v2 = v0[8];
  sub_226E91B50(v0[9] + 16, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
  sub_227665500();
  v5 = *(v4 + 16);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_2275CF278;
  v8 = v0[16];
  v9 = v0[13];

  return v11(v8, v9, v3, v4);
}

uint64_t sub_2275CF278()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {
    v5 = sub_2275CF4F8;
  }

  else
  {
    v5 = sub_2275CF3E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2275CF3E0()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[10];
  v4 = v0[7];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_22766B000();
  sub_227664670();
  v5 = v0[15];
  if (v1)
  {
    (*(v5 + 8))(v0[16], v0[14]);
    v6 = v0[16];
    v7 = v0[13];
    v8 = v0[10];
  }

  else
  {
    v10 = v0[13];
    v11 = v0[10];
    v12 = v0[16];
    (*(v5 + 8))();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2275CF4F8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t ScoreServer.submitScores(scores:)(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_22766B100();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = sub_22766B030();
  v2[18] = v6;
  v7 = *(v6 - 8);
  v2[19] = v7;
  v8 = *(v7 + 64) + 15;
  v2[20] = swift_task_alloc();
  v9 = sub_2276624A0();
  v2[21] = v9;
  v10 = *(v9 - 8);
  v2[22] = v10;
  v11 = *(v10 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v12 = sub_22766B390();
  v2[25] = v12;
  v13 = *(v12 - 8);
  v2[26] = v13;
  v14 = *(v13 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v2[33] = v15;
  v16 = *(v15 - 8);
  v2[34] = v16;
  v17 = *(v16 + 64) + 15;
  v2[35] = swift_task_alloc();
  v18 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2275CF84C, 0, 0);
}

uint64_t sub_2275CF84C()
{
  v98 = v0;
  v97[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 88);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 272);
    v2 = *(v0 + 280);
    v4 = *(v0 + 264);
    (*(v3 + 16))(v2, *(v0 + 96) + OBJC_IVAR____TtC15SeymourServices11ScoreServer__dumpScoresToFile, v4);
    sub_227669730();
    (*(v3 + 8))(v2, v4);
    if (*(v0 + 320) == 1)
    {
      v5 = *(v0 + 256);
      sub_22766A6E0();
      v6 = sub_22766B380();
      v7 = sub_22766C8B0();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_226E8E000, v6, v7, "Writing scores to file due to user default.", v8, 2u);
        MEMORY[0x22AA9A450](v8, -1, -1);
      }

      v9 = *(v0 + 256);
      v10 = *(v0 + 200);
      v11 = *(v0 + 208);
      v13 = *(v0 + 184);
      v12 = *(v0 + 192);
      v14 = *(v0 + 168);
      v15 = *(v0 + 176);

      v95 = *(v11 + 8);
      v95(v9, v10);
      sub_227662330();
      sub_2276623F0();
      v16 = *(v15 + 8);
      v16(v13, v14);
      v17 = [objc_opt_self() defaultManager];
      v18 = sub_2276623E0();
      *(v0 + 72) = 0;
      LODWORD(v12) = [v17 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:v0 + 72];

      v19 = *(v0 + 72);
      if (v12)
      {
        v20 = v19;
      }

      else
      {
        v41 = *(v0 + 224);
        v42 = v19;
        v43 = sub_2276622C0();

        swift_willThrow();
        sub_22766A6E0();
        v44 = v43;
        v45 = sub_22766B380();
        v46 = sub_22766C890();

        v47 = os_log_type_enabled(v45, v46);
        v48 = *(v0 + 224);
        v49 = *(v0 + 200);
        v50 = *(v0 + 208);
        if (v47)
        {
          v93 = *(v0 + 208);
          v51 = swift_slowAlloc();
          v91 = v49;
          v88 = swift_slowAlloc();
          v97[0] = v88;
          *v51 = 136315138;
          swift_getErrorValue();
          v89 = v48;
          v52 = *(v0 + 40);
          v53 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
          v55 = v46;
          v56 = v16;
          v57 = sub_226E97AE8(v53, v54, v97);

          *(v51 + 4) = v57;
          v16 = v56;
          _os_log_impl(&dword_226E8E000, v45, v55, "Couldn't create scores directory with error: %s", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v88);
          MEMORY[0x22AA9A450](v88, -1, -1);
          MEMORY[0x22AA9A450](v51, -1, -1);

          v58 = v91;
          v59 = v89;
        }

        else
        {

          v59 = v48;
          v58 = v49;
        }

        v95(v59, v58);
      }

      v60 = *(v0 + 192);
      v61 = *(v0 + 168);
      v62 = *(v0 + 88);
      v63 = swift_task_alloc();
      *(v63 + 16) = v60;
      sub_2275CE560(sub_2275D1330, v63, v62, MEMORY[0x277D50678]);

      v16(v60, v61);
    }

    v64 = *(v0 + 248);
    v65 = *(v0 + 88);
    sub_22766A6E0();

    v66 = sub_22766B380();
    v67 = sub_22766C8B0();
    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 88);
    if (v68)
    {
      v70 = swift_slowAlloc();
      *v70 = 134349056;
      *(v70 + 4) = *(v1 + 16);

      _os_log_impl(&dword_226E8E000, v66, v67, "Submitting %{public}ld scores to the server.", v70, 0xCu);
      MEMORY[0x22AA9A450](v70, -1, -1);
    }

    else
    {
      v71 = *(v0 + 88);
    }

    v72 = *(v0 + 248);
    v73 = *(v0 + 200);
    v74 = *(v0 + 208);
    v75 = *(v0 + 160);
    v76 = *(v0 + 144);
    v77 = *(v0 + 88);
    v78 = *(v74 + 8);
    *(v0 + 288) = v78;
    *(v0 + 296) = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v78(v72, v73);
    *(swift_task_alloc() + 16) = v77;
    sub_2275D17DC(&qword_27D7BCA48, MEMORY[0x277D54520]);
    sub_22766AD80();
    v80 = *(v0 + 96);

    v81 = v80[5];
    v82 = v80[6];
    __swift_project_boxed_opaque_existential_0(v80 + 2, v81);
    v94 = (*(v82 + 48) + **(v82 + 48));
    v83 = *(*(v82 + 48) + 4);
    v84 = swift_task_alloc();
    *(v0 + 304) = v84;
    *v84 = v0;
    v84[1] = sub_2275D010C;
    v85 = *(v0 + 160);
    v86 = *(v0 + 136);
    v87 = *MEMORY[0x277D85DE8];

    return v94(v86, v85, v81, v82);
  }

  else
  {
    v21 = *(v0 + 232);
    sub_22766A6E0();
    v22 = sub_22766B380();
    v23 = sub_22766C8B0();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 232);
    v26 = *(v0 + 200);
    v27 = *(v0 + 208);
    if (v24)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_226E8E000, v22, v23, "No scores to submit.", v28, 2u);
      MEMORY[0x22AA9A450](v28, -1, -1);
    }

    (*(v27 + 8))(v25, v26);
    v29 = *(v0 + 280);
    v30 = *(v0 + 248);
    v31 = *(v0 + 256);
    v33 = *(v0 + 232);
    v32 = *(v0 + 240);
    v35 = *(v0 + 216);
    v34 = *(v0 + 224);
    v37 = *(v0 + 184);
    v36 = *(v0 + 192);
    v38 = *(v0 + 160);
    v90 = *(v0 + 136);
    v92 = *(v0 + 128);
    v96 = *(v0 + 120);

    v39 = *(v0 + 8);
    v40 = *MEMORY[0x277D85DE8];

    return v39();
  }
}

uint64_t sub_2275D010C()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_2275D0620;
  }

  else
  {
    v3 = sub_2275D024C;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275D024C()
{
  v58 = v0;
  v57[1] = *MEMORY[0x277D85DE8];
  v1 = v0[30];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  sub_22766A6E0();
  v7 = *(v5 + 16);
  v7(v3, v2, v6);
  v7(v4, v2, v6);
  v8 = sub_22766B380();
  v49 = sub_22766C8B0();
  v9 = os_log_type_enabled(v8, v49);
  v10 = v0[37];
  v53 = v0[30];
  v55 = v0[36];
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[17];
  v14 = v0[18];
  v50 = v13;
  v51 = v0[25];
  v16 = v0[15];
  v15 = v0[16];
  v18 = v0[13];
  v17 = v0[14];
  if (v9)
  {
    log = v8;
    v19 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v57[0] = v46;
    *v19 = 136315394;
    sub_22766B0E0();
    v48 = v14;
    v47 = v11;
    v20 = MEMORY[0x22AA98660]();
    v22 = v21;

    v23 = *(v17 + 8);
    v23(v15, v18);
    v24 = sub_226E97AE8(v20, v22, v57);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = sub_22766B0F0();
    v26 = sub_22766B0D0();
    v27 = MEMORY[0x22AA98660](v25, v26);
    v29 = v28;

    v23(v16, v18);
    v30 = sub_226E97AE8(v27, v29, v57);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_226E8E000, log, v49, "Server successfully processed scores. Accepted: %s, Rejected: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v46, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    v55(v53, v51);
    v23(v50, v18);
    (*(v12 + 8))(v47, v48);
  }

  else
  {

    v31 = *(v17 + 8);
    v31(v16, v18);
    v31(v15, v18);
    v55(v53, v51);
    v31(v50, v18);
    (*(v12 + 8))(v11, v14);
  }

  v32 = v0[35];
  v33 = v0[31];
  v34 = v0[32];
  v36 = v0[29];
  v35 = v0[30];
  v38 = v0[27];
  v37 = v0[28];
  v40 = v0[23];
  v39 = v0[24];
  v41 = v0[20];
  v52 = v0[17];
  v54 = v0[16];
  v56 = v0[15];

  v42 = v0[1];
  v43 = *MEMORY[0x277D85DE8];

  return v42();
}

uint64_t sub_2275D0620()
{
  v43 = v0;
  v42[1] = *MEMORY[0x277D85DE8];
  v1 = v0[39];
  v2 = v0[27];
  sub_22766A6E0();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[39];
    v7 = v0[36];
    v40 = v0[37];
    v8 = v0[27];
    v9 = v0[25];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v42[0] = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = v0[2];
    v13 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v15 = sub_226E97AE8(v13, v14, v42);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to submit scores to the server with error: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    v7(v8, v9);
  }

  else
  {
    v17 = v0[36];
    v16 = v0[37];
    v18 = v0[27];
    v19 = v0[25];

    v17(v18, v19);
  }

  v20 = v0[39];
  v22 = v0[19];
  v21 = v0[20];
  v23 = v0[18];
  swift_willThrow();
  (*(v22 + 8))(v21, v23);
  v24 = v0[35];
  v26 = v0[31];
  v25 = v0[32];
  v28 = v0[29];
  v27 = v0[30];
  v30 = v0[27];
  v29 = v0[28];
  v32 = v0[23];
  v31 = v0[24];
  v33 = v0[20];
  v37 = v0[39];
  v38 = v0[17];
  v39 = v0[16];
  v41 = v0[15];

  v34 = v0[1];
  v35 = *MEMORY[0x277D85DE8];

  return v34();
}

uint64_t sub_2275D08BC(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = sub_2276640A0();
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766C050();
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2276624A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_227664070();
  v53 = v18;
  MEMORY[0x22AA98450](0x6E6F736A2ELL, 0xE500000000000000);
  sub_227662400();

  sub_2275D17DC(&qword_27D7BF640, MEMORY[0x277D50678]);
  v48 = v3;
  v42 = a1;
  v19 = v49;
  v20 = sub_2276683A0();
  if (v19)
  {
    (*(v14 + 8))(v17, v13);
    v49 = 0;
    v23 = v45;
    sub_22766A6E0();
    v25 = v43;
    v24 = v44;
    v26 = v48;
    (*(v44 + 16))(v43, v42, v48);
    v27 = v19;
    v28 = sub_22766B380();
    v29 = sub_22766C890();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v52 = v42;
      *v30 = 136315394;
      v31 = sub_227664070();
      v32 = v25;
      v34 = v33;
      (*(v24 + 8))(v32, v26);
      v35 = sub_226E97AE8(v31, v34, &v52);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2080;
      swift_getErrorValue();
      v36 = MEMORY[0x22AA995D0](v50, v51);
      v38 = sub_226E97AE8(v36, v37, &v52);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_226E8E000, v28, v29, "Failed to write %s to file with error: %s", v30, 0x16u);
      v39 = v42;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v39, -1, -1);
      MEMORY[0x22AA9A450](v30, -1, -1);
    }

    else
    {

      (*(v24 + 8))(v25, v26);
    }

    return (*(v46 + 8))(v23, v47);
  }

  else
  {
    v22 = v41;
    v52 = v20;
    v53 = v21;
    sub_22766C040();
    sub_226FB2548();
    sub_22766CBF0();
    (*(v22 + 8))(v12, v9);
    (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2275D0E30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E90, &unk_22768CBE0);
  sub_2275D1824();
  sub_2275D17DC(&qword_27D7BF640, MEMORY[0x277D50678]);
  result = sub_22766C1F0();
  if (!v0)
  {
    return sub_22766B020();
  }

  return result;
}

uint64_t sub_2275D0EE8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return ScoreServer.executeScoresTasks()();
}

uint64_t sub_2275D0F78(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E92F34;

  return ScoreServer.fetchScores(request:)(a1, a2);
}

uint64_t sub_2275D1024(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return ScoreServer.submitScores(scores:)(a1);
}

uint64_t sub_2275D10BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_227669A90();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a3;
  v18 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v16);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  (*(v9 + 104))(v12, *MEMORY[0x277D4EE70], v8);
  v15[7] = 0;
  sub_227669760();
  sub_226E92AB8(&v16, a2 + 16);
  return a2;
}

uint64_t sub_2275D1224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScoreServer();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  return sub_2275D10BC(v10, v14, a3, a4);
}

uint64_t dispatch thunk of ScoreServerProtocol.executeScoresTasks()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ScoreServerProtocol.fetchScores(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226E92F34;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ScoreServerProtocol.submitScores(scores:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_226E93028;

  return v11(a1, a2, a3);
}

uint64_t type metadata accessor for ScoreServer()
{
  result = qword_2813A4E60;
  if (!qword_2813A4E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2275D1714()
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2275D17DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2275D1824()
{
  result = qword_27D7BF648;
  if (!qword_27D7BF648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8E90, &unk_22768CBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF648);
  }

  return result;
}

uint64_t sub_2275D18A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_2275D18F4(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();

  sub_2275D1EBC((a1 + 48), 0xD000000000000037, 0x8000000227693FD0, sub_2275D1EB4, v2);
  swift_endAccess();

  v3 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();

  sub_2275D1EBC((a1 + 52), 0xD000000000000031, 0x8000000227694010, sub_2275D21A8, v3);
  swift_endAccess();
}

uint64_t sub_2275D1A50()
{
  v0 = sub_22766A5C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v10 = sub_22766B380();
  v11 = sub_22766C8B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_226E8E000, v10, v11, "[ManagedProfileObserver] Effective settings changed", v12, 2u);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(result + 16);
    v15 = *(result + 24);
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_22766A5B0();
    sub_2276699D0();
    swift_unknownObjectRelease();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_2275D1C9C()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_226E8E000, v5, v6, "[ManagedProfileObserver] Profile list changed", v7, 2u);
    MEMORY[0x22AA9A450](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + 16);
    v9 = *(result + 24);
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_227089B7C();
    sub_2276699D0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2275D1E48()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

void sub_2275D1EBC(_DWORD *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == -1)
  {
    v16 = v13;
    HIDWORD(v27) = -1;
    sub_226EA1CF4();
    v17 = sub_22766C950();
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    aBlock[4] = sub_226F78B74;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2275D18A0;
    aBlock[3] = &block_descriptor_42;
    v19 = _Block_copy(aBlock);

    v20 = sub_22766C0B0();
    v21 = notify_register_dispatch((v20 + 32), &v27 + 1, v17, v19);

    _Block_release(v19);

    if (v21 || HIDWORD(v27) == -1)
    {
      sub_22766A730();

      v22 = sub_22766B380();
      v23 = sub_22766C890();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_226E97AE8(a2, a3, aBlock);
        _os_log_impl(&dword_226E8E000, v22, v23, "[ManagedProfileObserver] Failed to register for notification: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x22AA9A450](v25, -1, -1);
        MEMORY[0x22AA9A450](v24, -1, -1);
      }

      (*(v11 + 8))(v15, v16);
    }

    else
    {
      *a1 = HIDWORD(v27);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2275D21B0(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_2275D225C()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v6, v2);
  sub_2275D2468();
  v7 = v1[2];
  v8 = v1[3];
  swift_getObjectType();
  sub_22766A2B0();
  v9 = v1[9];
  swift_allocObject();
  swift_weakInit();

  sub_227669A10();

  __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_2275D2410()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2275D2468();
  }

  return result;
}

uint64_t sub_2275D2468()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v42);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v41 = *(v43 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v40 = &v38 - v14;
  v15 = *(v0 + 56);
  v44 = v0;
  v16 = *__swift_project_boxed_opaque_existential_0((v0 + 32), v15);
  v17 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v16 + v17, &v47);
  if (v48)
  {
    sub_226E92AB8(&v47, v46);
    sub_226E91B50(v46, v45);
    v18 = swift_allocObject();
    sub_226E92AB8(v45, v18 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v46);
  }

  else
  {
    sub_226F099DC();
    v19 = swift_allocError();
    *v20 = 0;
    *(swift_allocObject() + 16) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  (*(v2 + 16))(v5, v7, v1);
  v21 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v22 = (v3 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v2 + 32))(v23 + v21, v5, v1);
  v24 = (v23 + v22);
  *v24 = sub_2275D2A5C;
  v24[1] = 0;
  sub_227665AD0();
  sub_227669270();
  (*(v2 + 8))(v7, v1);
  v25 = swift_allocObject();
  v26 = v44;
  *(v25 + 16) = sub_2275D45F4;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_226FD0258;
  *(v27 + 24) = v25;
  v28 = v39;
  v29 = v42;
  (*(v8 + 16))(v39, v12, v42);
  v30 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v31 = swift_allocObject();
  (*(v8 + 32))(v31 + v30, v28, v29);
  v32 = (v31 + ((v9 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = sub_2273202AC;
  v32[1] = v27;

  v33 = v40;
  sub_227669270();
  (*(v8 + 8))(v12, v29);
  v34 = v43;
  v35 = sub_227669290();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  v35(sub_226E9F7B0, v36);

  return (*(v41 + 8))(v33, v34);
}

uint64_t sub_2275D2A5C(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  (*(v8 + 8))(v6, v7, v8);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2275D2B78(uint64_t a1)
{
  v2 = sub_22766A500();
  v82 = *(v2 - 8);
  v83 = v2;
  v3 = *(v82 + 64);
  MEMORY[0x28223BE20](v2);
  v81 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22766B390();
  v90 = *(v5 - 8);
  v91 = v5;
  v6 = *(v90 + 64);
  MEMORY[0x28223BE20](v5);
  v76 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF650, &qword_22768CCE0);
  v11 = *(v10 - 8);
  v92 = v10 - 8;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v87 = &v74 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v79 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v89 = &v74 - v18;
  MEMORY[0x28223BE20](v19);
  v86 = &v74 - v20;
  v21 = sub_227665AD0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v84 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v74 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v74 - v29;
  v31 = sub_22766C4B0();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  v32 = *(v22 + 16);
  v93 = v32;
  v32(v26, a1, v21);
  v33 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v34 = swift_allocObject();
  v35 = *(v22 + 32);
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v36 = v34 + v33;
  v37 = v88;
  v75 = v26;
  v74 = v35;
  v35(v36, v26, v21);
  sub_2272CA940(0, 0, v30, &unk_22768CCF0, v34);

  v38 = OBJC_IVAR____TtC15SeymourServices27ServiceSubscriptionObserver_serviceSubscription;
  swift_beginAccess();
  v39 = a1;
  v40 = v86;
  v80 = v39;
  v94 = v22 + 16;
  (v32)();
  v41 = v22 + 56;
  v77 = *(v22 + 56);
  v77(v40, 0, 1, v21);
  v42 = *(v92 + 56);
  v78 = v38;
  v43 = v87;
  sub_2275D44D0(v37 + v38, v87);
  sub_2275D44D0(v40, v43 + v42);
  v92 = v22;
  v44 = v22;
  v45 = v43;
  v46 = *(v44 + 48);
  if (v46(v43, 1, v21) == 1)
  {
    sub_226E97D1C(v40, &qword_27D7B8428, &qword_227675CB0);
    if (v46(v43 + v42, 1, v21) == 1)
    {
      sub_226E97D1C(v43, &qword_27D7B8428, &qword_227675CB0);
LABEL_12:
      v70 = v76;
      sub_22766A730();
      v71 = sub_22766B380();
      v72 = sub_22766C8B0();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_226E8E000, v71, v72, "ServiceSubscriptionObserver service subscription matches cached value", v73, 2u);
        MEMORY[0x22AA9A450](v73, -1, -1);
      }

      return (*(v90 + 8))(v70, v91);
    }

    goto LABEL_6;
  }

  sub_2275D44D0(v43, v89);
  if (v46(v43 + v42, 1, v21) == 1)
  {
    sub_226E97D1C(v40, &qword_27D7B8428, &qword_227675CB0);
    (*(v92 + 8))(v89, v21);
LABEL_6:
    sub_226E97D1C(v43, &qword_27D7BF650, &qword_22768CCE0);
    v47 = v84;
    goto LABEL_7;
  }

  v66 = v75;
  v74(v75, v43 + v42, v21);
  sub_2275D45B0(&qword_27D7BF658);
  v67 = v89;
  LODWORD(v74) = sub_22766BFB0();
  v68 = v37;
  v69 = *(v92 + 8);
  v69(v66, v21);
  sub_226E97D1C(v40, &qword_27D7B8428, &qword_227675CB0);
  v69(v67, v21);
  v37 = v68;
  sub_226E97D1C(v45, &qword_27D7B8428, &qword_227675CB0);
  v47 = v84;
  if (v74)
  {
    goto LABEL_12;
  }

LABEL_7:
  v89 = v41;
  v48 = v85;
  sub_22766A730();
  v49 = v80;
  v93(v47, v80, v21);
  v50 = sub_22766B380();
  v51 = sub_22766C8B0();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v95 = v53;
    *v52 = 136446210;
    sub_2275D45B0(&qword_28139B758);
    v54 = sub_22766D140();
    v55 = v47;
    v57 = v56;
    (*(v92 + 8))(v55, v21);
    v58 = sub_226E97AE8(v54, v57, &v95);

    *(v52 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v50, v51, "ServiceSubscriptionObserver updating service subscription: %{public}s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x22AA9A450](v53, -1, -1);
    MEMORY[0x22AA9A450](v52, -1, -1);

    (*(v90 + 8))(v85, v91);
  }

  else
  {

    (*(v92 + 8))(v47, v21);
    (*(v90 + 8))(v48, v91);
  }

  v59 = v79;
  v93(v79, v49, v21);
  v77(v59, 0, 1, v21);
  v60 = v78;
  swift_beginAccess();
  sub_2275D4540(v59, v37 + v60);
  swift_endAccess();
  v62 = *(v37 + 16);
  v61 = *(v37 + 24);
  swift_getObjectType();
  v63 = v81;
  sub_22766A4F0();
  v64 = v83;
  sub_2276699D0();
  return (*(v82 + 8))(v63, v64);
}

uint64_t sub_2275D3518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[35] = a4;
  v5 = sub_227662750();
  v4[36] = v5;
  v6 = *(v5 - 8);
  v4[37] = v6;
  v7 = *(v6 + 64) + 15;
  v4[38] = swift_task_alloc();
  v8 = sub_22766B390();
  v4[39] = v8;
  v9 = *(v8 - 8);
  v4[40] = v9;
  v10 = *(v9 + 64) + 15;
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550) - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v12 = sub_2276627D0();
  v4[44] = v12;
  v13 = *(v12 - 8);
  v4[45] = v13;
  v14 = *(v13 + 64) + 15;
  v4[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275D36D4, 0, 0);
}

uint64_t sub_2275D36D4()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  sub_227662760();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[42];
    sub_226E97D1C(v0[43], &unk_27D7BB9D0, &qword_227671550);
    sub_22766A640();
    v5 = sub_22766B380();
    v6 = sub_22766C890();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[42];
    v9 = v0[39];
    v10 = v0[40];
    if (v7)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226E8E000, v5, v6, "Unable to create Promoted Status Conditions Identifier", v11, 2u);
      MEMORY[0x22AA9A450](v11, -1, -1);
    }

    (*(v10 + 8))(v8, v9);
    v12 = v0[46];
    v13 = v0[42];
    v14 = v0[43];
    v15 = v0[41];
    v16 = v0[38];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v20 = v0[37];
    v19 = v0[38];
    v21 = v0[35];
    v22 = v0[36];
    (*(v0[45] + 32))(v0[46], v0[43], v0[44]);
    sub_227662740();
    v23 = sub_227665AA0();
    (*(v20 + 8))(v19, v22);
    v24 = objc_opt_self();
    v25 = sub_227662790();
    v0[47] = v25;
    if (v23)
    {
      v26 = v0 + 10;
      v0[10] = v0;
      v0[11] = sub_2275D3A70;
      v27 = swift_continuation_init();
      v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC250, &qword_22768CD00);
      v0[26] = MEMORY[0x277D85DD0];
      v0[27] = 1107296256;
      v0[28] = sub_2275D21B0;
      v0[29] = &block_descriptor_10;
      v0[30] = v27;
      [v24 setStatusCondition:v25 completionHandler:v0 + 26];
    }

    else
    {
      v26 = v0 + 2;
      v0[2] = v0;
      v0[3] = sub_2275D3C30;
      v28 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC250, &qword_22768CD00);
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_2275D21B0;
      v0[21] = &block_descriptor_43;
      v0[22] = v28;
      [v24 clearStatusCondition:v25 completionHandler:v0 + 18];
    }

    return MEMORY[0x282200938](v26);
  }
}

uint64_t sub_2275D3A70()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 384) = v2;
  if (v2)
  {
    v3 = sub_2275D3D40;
  }

  else
  {
    v3 = sub_2275D3B80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275D3B80()
{
  v1 = v0[47];
  (*(v0[45] + 8))(v0[46], v0[44]);

  v2 = v0[46];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[41];
  v6 = v0[38];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2275D3C30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 392) = v2;
  if (v2)
  {
    v3 = sub_2275D3F98;
  }

  else
  {
    v3 = sub_2275D46F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275D3D40()
{
  v33 = v0;
  v1 = *(v0 + 384);
  swift_willThrow();
  v2 = *(v0 + 384);
  v3 = *(v0 + 328);

  sub_22766A640();
  v4 = v2;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 360);
    v30 = *(v0 + 352);
    v31 = *(v0 + 368);
    v8 = *(v0 + 320);
    v28 = *(v0 + 312);
    v29 = *(v0 + 328);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 136446210;
    *(v0 + 272) = v2;
    v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v12 = sub_22766C060();
    v14 = sub_226E97AE8(v12, v13, &v32);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v5, v6, "unable to update Promoted Status Condition: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v8 + 8))(v29, v28);
    (*(v7 + 8))(v31, v30);
  }

  else
  {
    v16 = *(v0 + 360);
    v15 = *(v0 + 368);
    v17 = *(v0 + 352);
    v19 = *(v0 + 320);
    v18 = *(v0 + 328);
    v20 = *(v0 + 312);

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
  }

  v21 = *(v0 + 368);
  v22 = *(v0 + 336);
  v23 = *(v0 + 344);
  v24 = *(v0 + 328);
  v25 = *(v0 + 304);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_2275D3F98()
{
  v33 = v0;
  v1 = *(v0 + 392);
  swift_willThrow();
  v2 = *(v0 + 392);
  v3 = *(v0 + 328);

  sub_22766A640();
  v4 = v2;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 360);
    v30 = *(v0 + 352);
    v31 = *(v0 + 368);
    v8 = *(v0 + 320);
    v28 = *(v0 + 312);
    v29 = *(v0 + 328);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 136446210;
    *(v0 + 272) = v2;
    v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v12 = sub_22766C060();
    v14 = sub_226E97AE8(v12, v13, &v32);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v5, v6, "unable to update Promoted Status Condition: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v8 + 8))(v29, v28);
    (*(v7 + 8))(v31, v30);
  }

  else
  {
    v16 = *(v0 + 360);
    v15 = *(v0 + 368);
    v17 = *(v0 + 352);
    v19 = *(v0 + 320);
    v18 = *(v0 + 328);
    v20 = *(v0 + 312);

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
  }

  v21 = *(v0 + 368);
  v22 = *(v0 + 336);
  v23 = *(v0 + 344);
  v24 = *(v0 + 328);
  v25 = *(v0 + 304);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_2275D41F4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[9];

  sub_226E97D1C(v0 + OBJC_IVAR____TtC15SeymourServices27ServiceSubscriptionObserver_serviceSubscription, &qword_27D7B8428, &qword_227675CB0);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServiceSubscriptionObserver()
{
  result = qword_28139E3A0;
  if (!qword_28139E3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2275D42D4()
{
  sub_2275D4388();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2275D4388()
{
  if (!qword_2813A56E8)
  {
    sub_227665AD0();
    v0 = sub_22766CB90();
    if (!v1)
    {
      atomic_store(v0, &qword_2813A56E8);
    }
  }
}

uint64_t sub_2275D43E0(uint64_t a1)
{
  v4 = *(sub_227665AD0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E92F34;

  return sub_2275D3518(a1, v6, v7, v1 + v5);
}

uint64_t sub_2275D44D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275D4540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275D45B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227665AD0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2275D4620(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_2275D46FC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227669180();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v35 - v11;
  v13 = [a1 identifier];
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  v47 = sub_22766C000();

  v15 = [a1 title];
  if (!v15)
  {
LABEL_11:

LABEL_12:
    v32 = sub_227664DD0();
    sub_2275D535C(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51028], v32);
    swift_willThrow();

    return;
  }

  v44 = a2;
  v16 = v15;
  v43 = sub_22766C000();

  v17 = [a1 artist];
  if (!v17)
  {
LABEL_10:

    goto LABEL_11;
  }

  v42 = v6;
  v18 = v17;
  v40 = sub_22766C000();
  v20 = v19;

  v21 = [a1 album];
  if (!v21)
  {
LABEL_9:

    goto LABEL_10;
  }

  v41 = v20;
  v22 = v21;
  v35[1] = sub_22766C000();
  v24 = v23;

  v25 = [a1 contentRating];
  if (!v25)
  {

    goto LABEL_9;
  }

  v39 = v24;
  v26 = v25;
  v35[0] = sub_22766C000();
  v38 = v27;

  v28 = [a1 artwork];
  if (v28)
  {
    v29 = v28;
    v30 = sub_227662590();
    v36 = v31;
    v37 = v30;
  }

  else
  {
    v36 = 0xF000000000000000;
    v37 = 0;
  }

  v34 = v42;
  sub_2275D535C(&qword_27D7BB870, MEMORY[0x277D53A78]);
  sub_2276683D0();
  if (v2)
  {
  }

  else
  {
    (*(v34 + 16))(v10, v12, v5);
    [a1 startTime];
    [a1 duration];
    v45 = v35[0];
    v46 = v38;
    sub_226ED978C();
    sub_227663AE0();
    sub_2276632B0();

    (*(v34 + 8))(v12, v5);
  }
}

size_t static MusicTrack.representativeSamples()()
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF660, &qword_22768CD08);
  v52 = *(v50 - 1);
  v0 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = (&v39 - v1);
  v48 = sub_227663350();
  v51 = *(v48 - 8);
  v2 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227669180();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = v5[8];
  MEMORY[0x28223BE20](v4);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22766C090();
  v59 = sub_22766C090();
  v58 = sub_22766C090();
  v57 = sub_22766C090();
  sub_227669170();
  v10 = sub_22766C380();
  *(v10 + 16) = 3;
  v11 = v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v12 = v5[2];
  v12(v11, v9, v4);
  v13 = v5[9];
  v43 = v12;
  v44 = v6 + 2;
  v12(v11 + v13, v9, v4);
  v14 = v6[4];
  v45 = v9;
  v46 = v4;
  v14(v11 + 2 * v13, v9, v4);
  sub_226F5D274();
  v15 = sub_22766BE70();
  v16 = sub_22766BE70();
  sub_226F976F8();
  sub_226ED978C();
  v17 = sub_227663B50();
  v84 = v59;
  v85[0] = v60;
  v85[1] = v85;
  v85[2] = &v84;
  v82 = v57;
  v83 = v58;
  v85[3] = &v83;
  v85[4] = &v82;
  v80 = v15;
  v81 = v10;
  v85[5] = &v81;
  v85[6] = &v80;
  v78 = v17;
  v79 = v16;
  v85[7] = &v79;
  v85[8] = &v78;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v71 = v70;
  v72 = v70;
  v73 = v70;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE028, &qword_2276878C0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v76 = v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F0, &qword_227672F88);
  v62 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v63 = v62;
  v64 = v62;
  v65 = v62;
  v66 = sub_226F5BF60(&qword_27D7BE030, &qword_27D7BE028, &qword_2276878C0);
  v67 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v68 = v67;
  v69 = sub_226F5BF60(&qword_27D7B9100, &qword_27D7B90F0, &qword_227672F88);
  v18 = sub_2276638E0();

  v19 = *(v18 + 16);
  if (v19)
  {
    v61 = MEMORY[0x277D84F90];
    result = sub_226F1F408(0, v19, 0);
    v21 = 0;
    v22 = v61;
    v40 = v18 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v41 = v19;
    v39 = v51 + 32;
    v23 = v52;
    v42 = v18;
    while (v21 < *(v18 + 16))
    {
      v24 = v49;
      sub_2275D522C(v40 + *(v23 + 72) * v21, v49);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v55 = v24[3];
      v56 = v25;
      v28 = v24[5];
      v58 = v24[4];
      v59 = v27;
      v60 = v22;
      v53 = v26;
      v54 = v28;
      v29 = v24[7];
      v57 = v24[6];
      v30 = *(v24 + v50[28]);
      v31 = *(v24 + v50[32]);
      v32 = v24 + v50[36];
      v33 = *v32;
      v34 = *(v32 + 1);
      v35 = v32[16];
      v43(v45, v24 + v50[24], v46);

      sub_226EB396C(v33, v34, v35);
      v36 = v47;
      v22 = v60;
      sub_2276632B0();
      sub_2275D529C(v24);
      v61 = v22;
      v38 = *(v22 + 16);
      v37 = *(v22 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_226F1F408(v37 > 1, v38 + 1, 1);
        v22 = v61;
      }

      ++v21;
      *(v22 + 16) = v38 + 1;
      result = (*(v51 + 32))(v22 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v38, v36, v48);
      v18 = v42;
      v23 = v52;
      if (v41 == v21)
      {

        return v22;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2275D522C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF660, &qword_22768CD08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275D529C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF660, &qword_22768CD08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2275D5304(uint64_t a1)
{
  result = sub_2275D535C(&qword_27D7BF668, MEMORY[0x277D4FEC8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275D535C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2275D53A4(void *a1)
{
  v3 = sub_227669180();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276632C0();
  v8 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_2276632F0();
  v9 = sub_22766BFD0();

  [a1 setTitle_];

  sub_227663300();
  v10 = sub_22766BFD0();

  [a1 setArtist_];

  sub_2276632E0();
  v11 = sub_22766BFD0();

  [a1 setAlbum_];

  sub_227663310();
  sub_2275D535C(&qword_27D7BB870, MEMORY[0x277D53A78]);
  v12 = sub_2276683C0();
  if (v1)
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v14 = v12;
    v15 = v7;
    v16 = v13;
    (*(v4 + 8))(v15, v3);
    v17 = sub_227662560();
    sub_226EDC420(v14, v16);
    [a1 setArtwork_];

    sub_227663340();
    [a1 setStartTime_];
    sub_227663320();
    [a1 setDuration_];
    v18 = sub_2276632D0();
    v20 = v19;
    v23[3] = v18;
    v23[4] = v19;
    LOBYTE(v16) = v21 & 1;
    v24 = v21 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
    sub_227663AD0();
    v22 = sub_22766BFD0();
    sub_226EB2DFC(v18, v20, v16);

    [a1 setContentRating_];
  }
}

uint64_t sub_2275D56A4()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 56);
  v13 = *(v1 + 72);
  v17 = v1;
  swift_getObjectType();
  v18 = v12;
  v14 = v3[13];
  v14(v6, *MEMORY[0x277D4E3C8], v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_227669EE0();

  v15 = v3[1];
  v15(v6, v2);
  swift_unknownObjectRelease();
  v18 = v12;
  v14(v6, *MEMORY[0x277D4E460], v2);
  swift_allocObject();
  swift_weakInit();
  sub_227669ED0();

  v15(v6, v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_2275D59C0(_BYTE *a1, uint64_t a2)
{
  *(v2 + 80) = a2;
  *(v2 + 104) = *a1;
  return MEMORY[0x2822009F8](sub_2275D59E8, 0, 0);
}

uint64_t sub_2275D59E8()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v0 + 16);

    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v3);
    v5 = *(v4 + 8);
    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_227127A18;
    v8 = *(v0 + 104);

    return v11(v8, v3, v4);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_2275D5B88(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2275D5BA8, 0, 0);
}

uint64_t sub_2275D5BA8()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, (v0 + 2));

    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v3);
    v5 = *(v4 + 16);
    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_2275D5D48;

    return v11(v3, v4);
  }

  else
  {
    v9 = v0[10];
    *v9 = 0;
    v9[1] = 0;
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2275D5D48(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v6 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;

  return MEMORY[0x2822009F8](sub_2275D5E48, 0, 0);
}

uint64_t sub_2275D5E48()
{
  v1 = v0[14];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[10];
  *v2 = v0[13];
  v2[1] = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_2275D5EBC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2275D5F20(_BYTE *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2275D59C0(a1, v1);
}

uint64_t sub_2275D5FB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_2275D5B88(a1, v1);
}

uint64_t sub_2275D6054(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2276695E0();
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_22766CD20();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v50 = MEMORY[0x277D84F90];
    sub_226F1FF08(0, v8 & ~(v8 >> 63), 0);
    v44 = v50;
    if (v43)
    {
      result = sub_22766CCD0();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_22766CC90();
      v10 = *(a1 + 36);
    }

    v47 = result;
    v48 = v10;
    v49 = v43 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v39 = v8;
      v40 = v42 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v37 = a1 + 56;
      v38 = v13;
      v36 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_40;
        }

        v17 = v47;
        v16 = v48;
        v18 = v49;
        sub_2274DDD04(v47, v48, v49, a1);
        v20 = v19;
        sub_2276695F0();
        if (v2)
        {

          sub_226EB526C(v17, v16, v18);
        }

        v21 = v44;
        v50 = v44;
        v23 = *(v44 + 16);
        v22 = *(v44 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_226F1FF08(v22 > 1, v23 + 1, 1);
          v21 = v50;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v45, v41);
        if (v43)
        {
          if (!v18)
          {
            goto LABEL_45;
          }

          v2 = 0;
          if (sub_22766CCF0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF678, &qword_22768CE30);
          v14 = sub_22766C6A0();
          sub_22766CD70();
          result = v14(v46, 0);
          if (v12 == v8)
          {
LABEL_37:
            sub_226EB526C(v47, v48, v49);
            return v44;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_46;
          }

          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_41;
          }

          v25 = 1 << *(a1 + 32);
          if (v17 >= v25)
          {
            goto LABEL_41;
          }

          v26 = v17 >> 6;
          v27 = *(v37 + 8 * (v17 >> 6));
          if (((v27 >> v17) & 1) == 0)
          {
            goto LABEL_42;
          }

          if (*(a1 + 36) != v16)
          {
            goto LABEL_43;
          }

          v2 = 0;
          v28 = v27 & (-2 << (v17 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v17 & 0x7FFFFFFFFFFFFFC0;
            v8 = v39;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            v8 = v39;
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_226EB526C(v17, v16, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_34;
              }
            }

            result = sub_226EB526C(v17, v16, 0);
          }

LABEL_34:
          v34 = *(a1 + 36);
          v47 = v25;
          v48 = v34;
          v49 = 0;
          if (v12 == v8)
          {
            goto LABEL_37;
          }
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  return result;
}

BOOL sub_2275D6484(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_22766CD20())
    {
      return 0;
    }
  }

  else if (*(a1 + 16))
  {
    return 0;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = sub_22766CD20();
  }

  else
  {
    v4 = *(a2 + 16);
  }

  return v4 == 0;
}

uint64_t sub_2275D64F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2275D6054(a2);
  if (!v3)
  {
    sub_22766B070();
    sub_2275D6054(a3);
    sub_22766B050();
    return sub_22766B090();
  }

  return result;
}

void sub_2275D6568(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_2275D68D0(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_2275D6598()
{
  v1 = *(v0 + 2);
  sub_22766B0A0();
  v3 = *v0;
  sub_2275D688C(&qword_281399220);
  return sub_22766AD80();
}

uint64_t sub_2275D66A0(uint64_t a1, uint64_t a2)
{
  sub_22766CE20();
  MEMORY[0x22AA98450](0x203A2B28435253, 0xE700000000000000);
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22766CD20();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = sub_22766D140();
  MEMORY[0x22AA98450](v5);

  MEMORY[0x22AA98450](0x203A2D202CLL, 0xE500000000000000);
  if ((a2 & 0xC000000000000001) != 0)
  {
    sub_22766CD20();
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v7 = sub_22766D140();
  MEMORY[0x22AA98450](v7);

  MEMORY[0x22AA98450](0x203A7461202CLL, 0xE600000000000000);
  sub_22766C560();
  MEMORY[0x22AA98450](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2275D688C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22766B0A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_2275D68D0(uint64_t a1)
{
  v2 = sub_2276695E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v39 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = sub_22766B060();
  v12 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  v13 = *(v11 + 16);
  v41 = a1;
  if (v13)
  {
    v14 = sub_22706C980();
    v39 = v11;
    v40 = v3;
    v15 = *(v3 + 16);
    v16 = v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v43 = *(v3 + 72);
    v44 = v14;
    v17 = (v3 + 8);
    v42 = MEMORY[0x277D84F90];
    v15(v10, v16, v2);
    while (1)
    {
      v15(v46, v10, v2);
      v18 = sub_22766CAE0();
      v19 = (*v17)(v10, v2);
      if (v18)
      {
        MEMORY[0x22AA985C0](v19);
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v42 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22766C360();
        }

        sub_22766C3A0();
        v42 = v47;
      }

      v16 += v43;
      if (!--v13)
      {
        break;
      }

      v15(v10, v16, v2);
    }

    a1 = v41;
    v20 = v42;
    v3 = v40;
    v12 = MEMORY[0x277D84F90];
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v21 = sub_226F3E740(v20);

  v22 = sub_22766B040();
  v47 = v12;
  v23 = *(v22 + 16);
  if (v23)
  {
    v40 = v21;
    v24 = sub_22706C980();
    v27 = *(v3 + 16);
    v25 = v3 + 16;
    v26 = v27;
    v28 = *(v25 + 64);
    v39 = v22;
    v29 = v22 + ((v28 + 32) & ~v28);
    v43 = *(v25 + 56);
    v44 = v24;
    v30 = (v25 - 8);
    v42 = MEMORY[0x277D84F90];
    do
    {
      v31 = v45;
      v26(v45, v29, v2);
      v26(v46, v31, v2);
      v32 = sub_22766CAE0();
      v33 = (*v30)(v31, v2);
      if (v32)
      {
        MEMORY[0x22AA985C0](v33);
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v42 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22766C360();
        }

        sub_22766C3A0();
        v42 = v47;
      }

      v29 += v43;
      --v23;
    }

    while (v23);

    a1 = v41;
    v34 = v42;
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  sub_226F3E740(v34);

  sub_22766B080();
  v36 = v35;
  v37 = sub_22766B0A0();
  (*(*(v37 - 8) + 8))(a1, v37);
  return v36;
}

void sub_2275D6CF8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v51 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = v48 - v9;
  v10 = sub_227662750();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v50 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v49 = v48 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v48 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v53 = v48 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v48 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v48 - v25;
  v27 = [a1 identifier];
  if (!v27)
  {
    goto LABEL_9;
  }

  v48[4] = a2;
  v28 = v27;
  v48[3] = sub_22766C000();
  v30 = v29;

  v31 = [a1 startDate];
  if (!v31)
  {

LABEL_9:
    v41 = sub_227664DD0();
    sub_2275D7A78(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D51028], v41);
    swift_willThrow();

    return;
  }

  v32 = v31;
  v48[1] = v2;
  v48[2] = v30;
  sub_227662710();

  v33 = *(v11 + 32);
  v33(v26, v24, v10);
  v34 = [a1 endDate];
  if (!v34)
  {

    (*(v11 + 8))(v26, v10);
    goto LABEL_9;
  }

  v35 = v34;
  sub_227662710();

  v33(v53, v19, v10);
  [a1 heartRate];
  v36 = [a1 queueIdentifier];
  if (v36)
  {
    v37 = v36;
    sub_22766C000();

    v38 = [a1 playlistIdentifier];
    v39 = v52;
    if (v38)
    {
      v40 = v38;
      v48[0] = sub_22766C000();
    }

    sub_227664920();
    v43 = 0;
  }

  else
  {
    v43 = 1;
    v39 = v52;
  }

  v44 = sub_227664950();
  (*(*(v44 - 8) + 56))(v39, v43, 1, v44);
  v45 = *(v11 + 16);
  v45(v49, v26, v10);
  v52 = v26;
  v46 = v53;
  v45(v50, v53, v10);
  sub_226E93170(v39, v51, &qword_27D7B8CC8, &unk_227689B50);
  sub_227666B90();

  sub_226E97D1C(v39, &qword_27D7B8CC8, &unk_227689B50);
  v47 = *(v11 + 8);
  v47(v46, v10);
  v47(v52, v10);
}

size_t static HealthKitMindfulSession.representativeSamples()()
{
  v55 = sub_227662750();
  v59 = *(v55 - 8);
  v0 = *(v59 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v53 = v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = v39 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF680, &qword_22768CE78);
  v9 = *(v50 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v39 - v11;
  v48 = sub_227666BF0();
  v12 = *(v48 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v48);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22766C090();
  v17 = sub_227662630();
  v18 = sub_227662630();
  v19 = sub_22766CB70();
  v20 = sub_227664950();
  v21 = sub_22766C320();
  v74 = v17;
  v75[0] = v16;
  v75[1] = v75;
  v75[2] = &v74;
  v72 = v19;
  v73 = v18;
  v75[3] = &v73;
  v75[4] = &v72;
  v71 = v21;
  v75[5] = &v71;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v68 = v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF688, &qword_22768CE80);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D00, &qword_227671E58);
  v61 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v62 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v63 = v62;
  v64 = sub_226F5BF60(&qword_27D7BF690, &qword_27D7BF688, &qword_22768CE80);
  v65 = sub_226F5BF60(&qword_27D7B8D20, &qword_27D7B8D00, &qword_227671E58);
  v22 = sub_2276638E0();

  v23 = *(v22 + 16);
  if (v23)
  {
    v60 = MEMORY[0x277D84F90];
    result = sub_226F1F328(0, v23, 0);
    v25 = 0;
    v42 = v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v60;
    v41 = v20 - 8;
    v40 = (v59 + 16);
    v39[1] = v12 + 32;
    v47 = v9;
    v46 = v12;
    v45 = v20;
    v44 = v22;
    v43 = v23;
    v39[0] = v15;
    while (v25 < *(v22 + 16))
    {
      v27 = v49;
      sub_226E93170(v42 + *(v9 + 72) * v25, v49, &qword_27D7BF680, &qword_22768CE78);
      v28 = *(v27 + 1);
      v58 = *v27;
      v29 = v50[12];
      v59 = v26;
      v30 = v50[16];
      v31 = &v27[v50[20]];
      v57 = *v31;
      v56 = v31[8];
      v32 = *(v20 - 8);
      v33 = v51;
      (*(v32 + 16))(v51, &v27[v50[24]], v20);
      (*(v32 + 56))(v33, 0, 1, v20);
      v34 = *v40;
      v35 = &v27[v29];
      v36 = v55;
      (*v40)(v53, v35, v55);
      v34(v54, &v27[v30], v36);
      sub_226E93170(v33, v52, &qword_27D7B8CC8, &unk_227689B50);

      v26 = v59;
      sub_227666B90();
      sub_226E97D1C(v33, &qword_27D7B8CC8, &unk_227689B50);
      sub_226E97D1C(v27, &qword_27D7BF680, &qword_22768CE78);
      v60 = v26;
      v38 = *(v26 + 16);
      v37 = *(v26 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_226F1F328(v37 > 1, v38 + 1, 1);
        v26 = v60;
      }

      ++v25;
      *(v26 + 16) = v38 + 1;
      result = (*(v46 + 32))(v26 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v38, v39[0], v48);
      v9 = v47;
      v20 = v45;
      v22 = v44;
      if (v43 == v25)
      {

        return v26;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2275D7A20(uint64_t a1)
{
  result = sub_2275D7A78(&qword_2813A5658, MEMORY[0x277D528B8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275D7A78(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2275D7AC0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = sub_227662750();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227666BA0();
  v13 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227666BE0();
  v14 = sub_2276626A0();
  v15 = *(v9 + 8);
  v15(v12, v8);
  [a1 setStartDate_];

  sub_227666BC0();
  v16 = sub_2276626A0();
  v15(v12, v8);
  [a1 setEndDate_];

  v17 = COERCE_DOUBLE(sub_227666BD0());
  if (v18)
  {
    v17 = 0.0;
  }

  [a1 setHeartRate_];
  sub_227666BB0();
  v19 = sub_227664950();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v7, 1, v19) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8CC8, &unk_227689B50);
    v22 = 0;
  }

  else
  {
    sub_227664930();
    (*(v20 + 8))(v7, v19);
    v22 = sub_22766BFD0();
  }

  [a1 setQueueIdentifier_];

  v23 = v28;
  sub_227666BB0();
  if (v21(v23, 1, v19) == 1)
  {
    sub_226E97D1C(v23, &qword_27D7B8CC8, &unk_227689B50);
  }

  else
  {
    sub_227664940();
    v25 = v24;
    (*(v20 + 8))(v23, v19);
    if (v25)
    {
      v26 = sub_22766BFD0();

      [a1 setPlaylistIdentifier_];
    }
  }
}

SeymourServices::SQLiteResult_optional __swiftcall SQLiteResult.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue == 101)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  if (rawValue == 100)
  {
    v2.value = SeymourServices_SQLiteResult_rowReady;
  }

  else
  {
    v2.value = v1;
  }

  if (rawValue)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

int *sub_2275D7EDC@<X0>(int *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 101)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_2275D7F28()
{
  result = qword_27D7BF698;
  if (!qword_27D7BF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF698);
  }

  return result;
}

uint64_t sub_2275D7F7C()
{
  v1 = *v0;
  sub_22766D370();
  v2 = dword_22768CFE8[v1];
  sub_22766D3C0();
  return sub_22766D3F0();
}

uint64_t sub_2275D8004()
{
  v1 = *v0;
  sub_22766D370();
  v2 = dword_22768CFE8[v1];
  sub_22766D3C0();
  return sub_22766D3F0();
}

uint64_t sub_2275D8060()
{
  v0 = sub_2276641A0();
  v1 = sub_227515968(v0);
  v2 = sub_2276641A0();
  v3 = sub_227515968(v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106[0] = v1;
  sub_2275D88A4(v3, sub_226F524F8, 0, isUniquelyReferenced_nonNull_native, v106);

  v5 = v106[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B99F8, &qword_227674E20);
  v6 = sub_22766CFF0();
  v7 = v6;
  v8 = 0;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  if (v11)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v5 + 48) + 8 * v17);
      v19 = *(*(v5 + 56) + 8 * v17);
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v7 + 48) + 8 * v17) = v18;
      *(*(v7 + 56) + 8 * v17) = v19;
      v20 = *(v7 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v7 + 16) = v22;

      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_99;
      }

      if (v8 >= v12)
      {
        break;
      }

      v16 = *(v5 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    v23 = 1 << *(v7 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v7 + 64);
    v26 = (v23 + 63) >> 6;

    v27 = 0;
    v28 = MEMORY[0x277D84F90];
    while (v25)
    {
LABEL_22:
      v30 = (v27 << 9) | (8 * __clz(__rbit64(v25)));
      v31 = *(*(v7 + 56) + v30);
      v32 = *(v31 + 16);
      v33 = *(v28 + 2);
      v34 = v33 + v32;
      if (__OFADD__(v33, v32))
      {
        goto LABEL_105;
      }

      v35 = *(*(v7 + 56) + v30);

      v36 = swift_isUniquelyReferenced_nonNull_native();
      if (!v36 || v34 > *(v28 + 3) >> 1)
      {
        if (v33 <= v34)
        {
          v37 = v33 + v32;
        }

        else
        {
          v37 = v33;
        }

        v28 = sub_2273A6AB4(v36, v37, 1, v28);
      }

      v25 &= v25 - 1;
      if (*(v31 + 16))
      {
        if ((*(v28 + 3) >> 1) - *(v28 + 2) < v32)
        {
          goto LABEL_110;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v38 = *(v28 + 2);
          v21 = __OFADD__(v38, v32);
          v39 = v38 + v32;
          if (v21)
          {
            goto LABEL_112;
          }

          *(v28 + 2) = v39;
        }
      }

      else
      {

        if (v32)
        {
          goto LABEL_106;
        }
      }
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v26)
      {

        v40 = sub_227664190();
        v41 = sub_227515968(v40);
        v42 = sub_227664190();
        v43 = sub_227515968(v42);
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v106[0] = v41;
        sub_2275D88A4(v43, sub_226F524F8, 0, v44, v106);

        v45 = v106[0];
        v46 = sub_22766CFF0();
        v47 = v46;
        v48 = 0;
        v49 = 1 << *(v45 + 32);
        v50 = -1;
        if (v49 < 64)
        {
          v50 = ~(-1 << v49);
        }

        v51 = v50 & *(v45 + 64);
        v52 = (v49 + 63) >> 6;
        v53 = v46 + 64;
        if (!v51)
        {
LABEL_38:
          v55 = v48;
          while (1)
          {
            v48 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              goto LABEL_100;
            }

            if (v48 >= v52)
            {

              v62 = 1 << *(v47 + 32);
              v63 = -1;
              if (v62 < 64)
              {
                v63 = ~(-1 << v62);
              }

              v64 = v63 & *(v47 + 64);
              v65 = (v62 + 63) >> 6;
              v104 = v47;

              v66 = 0;
              v67 = MEMORY[0x277D84F90];
              while (v64)
              {
LABEL_55:
                v69 = (v66 << 9) | (8 * __clz(__rbit64(v64)));
                v70 = *(*(v104 + 56) + v69);
                v71 = *(v70 + 16);
                v72 = *(v67 + 2);
                v73 = v72 + v71;
                if (__OFADD__(v72, v71))
                {
                  goto LABEL_108;
                }

                v74 = *(*(v104 + 56) + v69);

                v75 = swift_isUniquelyReferenced_nonNull_native();
                if (!v75 || v73 > *(v67 + 3) >> 1)
                {
                  if (v72 <= v73)
                  {
                    v76 = v72 + v71;
                  }

                  else
                  {
                    v76 = v72;
                  }

                  v67 = sub_2273A6AB4(v75, v76, 1, v67);
                }

                v64 &= v64 - 1;
                if (*(v70 + 16))
                {
                  if ((*(v67 + 3) >> 1) - *(v67 + 2) < v71)
                  {
                    goto LABEL_111;
                  }

                  swift_arrayInitWithCopy();

                  if (v71)
                  {
                    v77 = *(v67 + 2);
                    v21 = __OFADD__(v77, v71);
                    v78 = v77 + v71;
                    if (v21)
                    {
                      goto LABEL_113;
                    }

                    *(v67 + 2) = v78;
                  }
                }

                else
                {

                  if (v71)
                  {
                    goto LABEL_109;
                  }
                }
              }

              while (1)
              {
                v68 = v66 + 1;
                if (__OFADD__(v66, 1))
                {
                  goto LABEL_101;
                }

                if (v68 >= v65)
                {

                  v79 = 0;
                  v80 = *(v67 + 2);
                  v81 = MEMORY[0x277D84F90];
LABEL_68:
                  v82 = 24 * v79;
                  while (v80 != v79)
                  {
                    if (v79 >= *(v67 + 2))
                    {
                      goto LABEL_102;
                    }

                    ++v79;
                    v83 = v82 + 24;
                    v84 = v67[v82 + 48];
                    v82 += 24;
                    if (v84 != 2)
                    {
                      if (v84)
                      {
                        if (v84 == 1)
                        {
                          v85 = 0;
                          v86 = v67[v83 + 8];
                          v87 = 1;
                        }

                        else
                        {
                          v86 = *&v67[v83 + 8];
                          v85 = *&v67[v83 + 16];

                          v87 = 2;
                        }
                      }

                      else
                      {
                        v85 = 0;
                        v87 = 0;
                        v86 = v67[v83 + 8];
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v81 = sub_2273A4F18(0, *(v81 + 2) + 1, 1, v81);
                      }

                      v89 = *(v81 + 2);
                      v88 = *(v81 + 3);
                      if (v89 >= v88 >> 1)
                      {
                        v81 = sub_2273A4F18((v88 > 1), v89 + 1, 1, v81);
                      }

                      *(v81 + 2) = v89 + 1;
                      v90 = &v81[24 * v89];
                      *(v90 + 4) = v86;
                      *(v90 + 5) = v85;
                      v90[48] = v87;
                      goto LABEL_68;
                    }
                  }

                  v105 = sub_226F40AD0(v81);

                  v91 = 0;
                  v92 = *(v28 + 2);
                  v93 = MEMORY[0x277D84F90];
LABEL_83:
                  v94 = 24 * v91;
                  while (v92 != v91)
                  {
                    if (v91 >= *(v28 + 2))
                    {
                      goto LABEL_103;
                    }

                    ++v91;
                    v95 = v94 + 24;
                    v96 = v28[v94 + 48];
                    v94 += 24;
                    if (v96 != 2)
                    {
                      if (v96)
                      {
                        if (v96 == 1)
                        {
                          v97 = 0;
                          v98 = v28[v95 + 8];
                          v99 = 1;
                        }

                        else
                        {
                          v98 = *&v28[v95 + 8];
                          v97 = *&v28[v95 + 16];

                          v99 = 2;
                        }
                      }

                      else
                      {
                        v97 = 0;
                        v99 = 0;
                        v98 = v28[v95 + 8];
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v93 = sub_2273A4F18(0, *(v93 + 2) + 1, 1, v93);
                      }

                      v101 = *(v93 + 2);
                      v100 = *(v93 + 3);
                      if (v101 >= v100 >> 1)
                      {
                        v93 = sub_2273A4F18((v100 > 1), v101 + 1, 1, v93);
                      }

                      *(v93 + 2) = v101 + 1;
                      v102 = &v93[24 * v101];
                      *(v102 + 4) = v98;
                      *(v102 + 5) = v97;
                      v102[48] = v99;
                      goto LABEL_83;
                    }
                  }

                  sub_226F40AD0(v93);

                  return v105;
                }

                v64 = *(v53 + 8 * v68);
                ++v66;
                if (v64)
                {
                  v66 = v68;
                  goto LABEL_55;
                }
              }
            }

            v56 = *(v45 + 64 + 8 * v48);
            ++v55;
            if (v56)
            {
              v54 = __clz(__rbit64(v56));
              v51 = (v56 - 1) & v56;
              goto LABEL_43;
            }
          }
        }

        while (1)
        {
          v54 = __clz(__rbit64(v51));
          v51 &= v51 - 1;
LABEL_43:
          v57 = v54 | (v48 << 6);
          v58 = *(*(v45 + 48) + 8 * v57);
          v59 = *(*(v45 + 56) + 8 * v57);
          *(v53 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
          *(*(v47 + 48) + 8 * v57) = v58;
          *(*(v47 + 56) + 8 * v57) = v59;
          v60 = *(v47 + 16);
          v21 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v21)
          {
            goto LABEL_107;
          }

          *(v47 + 16) = v61;

          if (!v51)
          {
            goto LABEL_38;
          }
        }
      }

      v25 = *(v13 + 8 * v29);
      ++v27;
      if (v25)
      {
        v27 = v29;
        goto LABEL_22;
      }
    }

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
  }

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

  __break(1u);

  __break(1u);
  return result;
}