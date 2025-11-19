uint64_t sub_1D8AA7670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68EB0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v38 = sub_1D8B13240();
  v36 = *(v38 - 8);
  v8 = v36;
  v43 = *(v36 + 64);
  v9 = MEMORY[0x1EEE9AC00](v38);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F18);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v40 = v2;
  v42 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_requests);
  v37 = sub_1D8AB859C(&qword_1EE0E7FA8, type metadata accessor for BundleSelector);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67590);

  sub_1D8B15EB0();
  v18 = v13;
  v35 = v13;
  sub_1D8B13230();
  v19 = *(v8 + 16);
  v20 = v38;
  v19(v11, v18, v38);
  (*(v15 + 16))(v7, v17, v14);
  v44 = v15;
  v39 = v14;
  (*(v15 + 56))(v7, 0, 1, v14);
  swift_beginAccess();
  sub_1D895EFA4(v7, v11);
  swift_endAccess();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 24) = v37;
  swift_unknownObjectWeakInit();
  v23 = v35;
  v24 = v20;
  v19(v11, v35, v20);
  v25 = v36;
  v26 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v27 = (v43 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = v21;
  (*(v25 + 32))(v28 + v26, v11, v24);
  *(v28 + v27) = v22;

  v29 = v39;
  sub_1D8B15EC0();
  (*(v25 + 8))(v23, v24);

  if (v42)
  {
    v45 = v42;
    v30 = v32;
    sub_1D8B15EE0();
    (*(v33 + 8))(v30, v34);
  }

  return (*(v44 + 8))(v17, v29);
}

uint64_t sub_1D8AA7B6C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64978);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  *(&v7 - v4) = 1;
  (*(v3 + 104))(&v7 - v4, *MEMORY[0x1E69E8640], v2);
  sub_1D8AA7670(v5, a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D8AA7C74@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C08);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - v10;
  v12 = type metadata accessor for CVBundle(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 24);
  v61 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 16);
  v17 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata);
  v18 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 48);
  v57 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 32);
  v58 = v18;
  v59 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 64);
  v60 = v17;
  if (v16 == 2)
  {
    v19 = type metadata accessor for BundleSelector.Output(0);
    v20 = *(*(v19 - 8) + 56);

    return v20(a1, 1, 1, v19);
  }

  v55 = v9;
  v22 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_userSelectedBundle;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v22, v11, &qword_1ECA67980);
  v54 = v13;
  v23 = &unk_1EE0E8000;
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D87A14E4(v11, &qword_1ECA67980);
LABEL_9:
    v27 = v54;
    goto LABEL_10;
  }

  v53 = v16;
  sub_1D8ABD220(v11, v15, type metadata accessor for CVBundle);
  v24 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_saliencyRankedBundles;
  v25 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_saliencyRankedBundles);

  v26 = sub_1D88465D8(v15, v25);

  if (v26)
  {
    sub_1D8ABD158(v15, type metadata accessor for CVBundle);
    v16 = v53;
    v23 = &unk_1EE0E8000;
    goto LABEL_9;
  }

  v38 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_guaranteedBundles);

  v39 = sub_1D89A4C44(v15, v38);

  v52 = v12;
  if ((v39 & 1) == 0)
  {
    v40 = *(v1 + v24);
    v51 = v1;
    v56 = v40;
    v41 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 40);

    sub_1D88F3C34(v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634D0);
    v27 = v54;
    v43 = *(v54 + 80);
    v44 = (v43 + 32) & ~v43;
    v50 = *(v54 + 72);
    v49 = v43;
    v45 = swift_allocObject();
    v48 = xmmword_1D8B1AB90;
    *(v45 + 16) = xmmword_1D8B1AB90;
    sub_1D8ABD1B8(v15, v45 + v44, type metadata accessor for CVBundle);
    sub_1D88F3C08(v45);
    v28 = sub_1D8AA8368(v56, 0x7FFFFFFFFFFFFFFFLL, v41);
    v29 = v46;

    if ((sub_1D88465D8(v15, v28) & 1) == 0)
    {
      v47 = swift_allocObject();
      *(v47 + 16) = v48;
      sub_1D8ABD1B8(v15, v47 + v44, type metadata accessor for CVBundle);
      v29 = sub_1D893F9F8(v47, v29);
      swift_setDeallocating();
      sub_1D8ABD158(v47 + v44, type metadata accessor for CVBundle);
      swift_deallocClassInstance();
    }

    v12 = v52;
    v16 = v53;
    v30 = v55;
    sub_1D8ABD158(v15, type metadata accessor for CVBundle);
    v1 = v51;
    goto LABEL_11;
  }

  sub_1D8ABD158(v15, type metadata accessor for CVBundle);
  v16 = v53;
  v27 = v54;
  v23 = &unk_1EE0E8000;
  v12 = v52;
LABEL_10:
  v28 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_saliencyRankedBundles);
  v29 = *(v1 + v23[16]);

  v30 = v55;
LABEL_11:
  v31 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingMostSalientBundleAndScore;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v31, v5, &qword_1ECA68C08);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0);
  v33 = 1;
  if (!(*(*(v32 - 8) + 48))(v5, 1, v32))
  {
    sub_1D8ABD1B8(v5, v30, type metadata accessor for CVBundle);
    v33 = 0;
  }

  sub_1D87A14E4(v5, &qword_1ECA68C08);
  (*(v27 + 56))(v30, v33, 1, v12);
  v34 = sub_1D8AA859C();
  sub_1D881F6FC(v30, a1, &qword_1ECA67980);
  v35 = type metadata accessor for BundleSelector.Output(0);
  v36 = a1 + v35[5];
  *v36 = v60;
  *(v36 + 16) = v61;
  *(v36 + 24) = v16;
  v37 = v58;
  *(v36 + 32) = v57;
  *(v36 + 48) = v37;
  *(v36 + 64) = v59;
  *(a1 + v35[6]) = v28;
  *(a1 + v35[7]) = v29;
  *(a1 + v35[8]) = v34 & 1;
  return (*(*(v35 - 1) + 56))(a1, 0, 1, v35);
}

size_t sub_1D8AA8368(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for CVBundle(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (a3 == 1)
    {
      return sub_1D8ABA020(a1, a2);
    }

    else
    {
      return sub_1D8ABA690(a1, a2);
    }
  }

  result = sub_1D87E2580(a2, a1);
  v15 = v14 >> 1;
  v16 = (v14 >> 1) - v13;
  if (__OFSUB__(v14 >> 1, v13))
  {
    goto LABEL_20;
  }

  if (!v16)
  {

    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v17 = v12;
  v18 = v13;
  v24 = result;
  v25 = MEMORY[0x1E69E7CC0];

  result = sub_1D87F4074(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v19 = v25;
    if (v18 <= v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = v18;
    }

    while (v20 != v18)
    {
      v21 = *(v7 + 72);
      sub_1D8ABD1B8(v17 + v21 * v18, v9, type metadata accessor for CVBundle);
      v25 = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D87F4074(v22 > 1, v23 + 1, 1);
        v19 = v25;
      }

      *(v19 + 16) = v23 + 1;
      result = sub_1D8ABD220(v9, v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v23 * v21, type metadata accessor for CVBundle);
      if (v15 == ++v18)
      {
        swift_unknownObjectRelease();
        return v19;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AA859C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v49 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C08);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v49 - v5;
  v7 = type metadata accessor for CVBundle(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v49 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v49 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v49 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v49 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v26 = &v49 - v25;
  if (*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 24) == 2 || (*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 40) & 1) == 0)
  {
    return 1;
  }

  v27 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_requests);
  if (!v27 || *(v27 + 16))
  {
    return 0;
  }

  v51 = v24;
  v49 = v23;

  v50 = sub_1D87C4460(v29);

  v52 = v50;

  v50 = v0;
  sub_1D8AA48F4(v30);
  v31 = v50;
  v32 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingMostSalientBundleAndScore;
  swift_beginAccess();
  sub_1D87A0E38(v31 + v32, v6, &qword_1ECA68C08);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0);
  if ((*(*(v33 - 8) + 48))(v6, 1, v33))
  {
    sub_1D87A14E4(v6, &qword_1ECA68C08);
  }

  else
  {
    sub_1D8ABD1B8(v6, v22, type metadata accessor for CVBundle);
    sub_1D87A14E4(v6, &qword_1ECA68C08);
    sub_1D8ABD220(v22, v26, type metadata accessor for CVBundle);
    sub_1D8ABD1B8(v26, v16, type metadata accessor for CVBundle);
    sub_1D87F99C4(v19, v16);
    v31 = v50;
    sub_1D8ABD158(v19, type metadata accessor for CVBundle);
    sub_1D8ABD158(v26, type metadata accessor for CVBundle);
  }

  v34 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_userSelectedBundle;
  swift_beginAccess();
  sub_1D87A0E38(v31 + v34, v3, &qword_1ECA67980);
  if ((*(v51 + 48))(v3, 1, v49) == 1)
  {
    sub_1D87A14E4(v3, &qword_1ECA67980);
  }

  else
  {
    sub_1D8ABD220(v3, v13, type metadata accessor for CVBundle);
    sub_1D8ABD1B8(v13, v16, type metadata accessor for CVBundle);
    sub_1D87F99C4(v19, v16);
    sub_1D8ABD158(v19, type metadata accessor for CVBundle);
    sub_1D8ABD158(v13, type metadata accessor for CVBundle);
  }

  v36 = sub_1D87C4460(v35);

  sub_1D8AA48F4(v36);
  v37 = v52;
  v38 = v52 + 56;
  v39 = 1 << *(v52 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v52 + 56);
  v42 = (v39 + 63) >> 6;

  v43 = 0;
  while (v41)
  {
    v44 = v43;
    v45 = v51;
LABEL_24:
    v46 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    sub_1D8ABD1B8(*(v37 + 48) + *(v45 + 72) * (v46 | (v44 << 6)), v10, type metadata accessor for CVBundle);
    v47 = sub_1D8919304();
    result = sub_1D8ABD158(v10, type metadata accessor for CVBundle);
    if ((v47 & 1) == 0)
    {
      v48 = 0;
LABEL_27:

      return v48;
    }
  }

  v45 = v51;
  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v44 >= v42)
    {
      v48 = 1;
      goto LABEL_27;
    }

    v41 = *(v38 + 8 * v44);
    ++v43;
    if (v41)
    {
      v43 = v44;
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

double sub_1D8AA8BA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C08);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_requests) = 0;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingMostSalientBundleAndScore;
  swift_beginAccess();
  sub_1D87B6EFC(v6, v0 + v8, &qword_1ECA68C08);
  swift_endAccess();
  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_saliencyRankedBundles) = MEMORY[0x1E69E7CC0];

  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_guaranteedBundles) = MEMORY[0x1E69E7CD0];

  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_refiningBundles) = v9;

  v10 = type metadata accessor for CVBundle(0);
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_userSelectedBundle;
  swift_beginAccess();
  sub_1D87B6EFC(v3, v0 + v11, &qword_1ECA67980);
  swift_endAccess();
  v12 = v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata;
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 2;
  result = 0.0;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  return result;
}

void sub_1D8AA8E04(_OWORD *a1)
{
  v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68EA8);
  MEMORY[0x1EEE9AC00](v462);
  v463 = v444 - v3;
  v488 = type metadata accessor for BundleSelector.Output(0);
  v478 = *(v488 - 8);
  v4 = MEMORY[0x1EEE9AC00](v488);
  v460 = v444 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v459 = v444 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v471 = v444 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v458 = v444 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v447 = v444 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v475 = v444 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64110);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v452 = v444 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C08);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v479 = v444 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v444 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v465 = v444 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v464 = v444 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v470 = v444 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v455 = v444 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v469 = v444 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v467 = v444 - v33;
  v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64298);
  MEMORY[0x1EEE9AC00](v503);
  v502 = v444 - v34;
  v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0);
  isa = v528[-1].isa;
  v35 = MEMORY[0x1EEE9AC00](v528);
  v506 = v444 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v511 = v444 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v512 = v444 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v494 = v444 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v454 = v444 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v453 = v444 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v468 = v444 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v519 = v444 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v521 = v444 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v522 = v444 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v508 = v444 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v527 = v444 - v57;
  v58 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v491 = v444 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v504 = type metadata accessor for CVBundle.BundleType(0);
  v60 = MEMORY[0x1EEE9AC00](v504);
  v501 = v444 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v63 = v444 - v62;
  v507 = sub_1D8B13240();
  v64 = *(v507 - 8);
  v65 = MEMORY[0x1EEE9AC00](v507);
  v482 = v444 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x1EEE9AC00](v65);
  v500 = v444 - v68;
  MEMORY[0x1EEE9AC00](v67);
  v70 = v444 - v69;
  v490 = type metadata accessor for CVBundle(0);
  v525 = *(v490 - 8);
  v71 = MEMORY[0x1EEE9AC00](v490);
  v518 = v444 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1EEE9AC00](v71);
  v473 = v444 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v484 = v444 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v456 = v444 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v450 = v444 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v451 = v444 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v517 = v444 - v84;
  MEMORY[0x1EEE9AC00](v83);
  v86 = v444 - v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  v88 = MEMORY[0x1EEE9AC00](v87 - 8);
  v448 = v444 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = MEMORY[0x1EEE9AC00](v88);
  v461 = v444 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v483 = v444 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v477 = v444 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v466 = v444 - v97;
  v98 = MEMORY[0x1EEE9AC00](v96);
  v100 = v444 - v99;
  v101 = MEMORY[0x1EEE9AC00](v98);
  v492 = v444 - v102;
  MEMORY[0x1EEE9AC00](v101);
  v104 = v444 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  v106 = MEMORY[0x1EEE9AC00](v105 - 8);
  v489 = v444 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = MEMORY[0x1EEE9AC00](v106);
  v510 = v444 - v109;
  MEMORY[0x1EEE9AC00](v108);
  v509 = v444 - v110;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  v112 = MEMORY[0x1EEE9AC00](v111 - 8);
  v113 = MEMORY[0x1EEE9AC00](v112);
  v114 = MEMORY[0x1EEE9AC00](v113);
  MEMORY[0x1EEE9AC00](v114);
  v119 = a1[3];
  *&v540[32] = a1[2];
  *&v540[48] = v119;
  v120 = a1[5];
  *&v540[64] = a1[4];
  *&v540[80] = v120;
  v121 = a1[1];
  *v540 = *a1;
  *&v540[16] = v121;
  v513 = v1;
  v122 = (v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata);
  v123 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 32);
  if (*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_latestFrameMetadata + 24) == 2)
  {
    v123 = -INFINITY;
  }

  v476 = *&v540[40];
  if (v123 < *&v540[40] || v540[48] == 1)
  {
    v449 = v22;
    v474 = v118;
    v457 = v117;
    v445 = v116;
    v480 = v444 - v115;
    v124 = v513;
    sub_1D8AA7C74(v444 - v115);
    v125 = *&v540[56];
    v122[2] = *&v540[40];
    v122[3] = v125;
    v122[4] = *&v540[72];
    v126 = *&v540[24];
    v481 = &v540[8];
    *v122 = *&v540[8];
    v122[1] = v126;
    v127 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_userSelectedBundle;
    swift_beginAccess();
    sub_1D87A0E38(v124 + v127, v104, &qword_1ECA67980);
    v128 = v525 + 48;
    v129 = *(v525 + 48);
    v130 = v129(v104, 1, v490);
    v444[1] = v128;
    if (v130)
    {
      sub_1D87A14E4(v104, &qword_1ECA67980);
      v131 = 1;
      v132 = v509;
      v133 = v507;
    }

    else
    {
      sub_1D8ABD1B8(v104, v86, type metadata accessor for CVBundle);
      sub_1D87A14E4(v104, &qword_1ECA67980);
      sub_1D8ABD1B8(v86, v63, type metadata accessor for CVBundle.BundleType);
      sub_1D8ABD158(v86, type metadata accessor for CVBundle);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v134 = *(v64 + 32);
        v133 = v507;
        v134(v70, v63, v507);
      }

      else
      {
        v135 = v491;
        sub_1D8ABD220(v63, v491, type metadata accessor for CVTrackSnapshot);
        v133 = v507;
        (*(v64 + 16))(v70, v135, v507);
        sub_1D8ABD158(v135, type metadata accessor for CVTrackSnapshot);
        v134 = *(v64 + 32);
      }

      v132 = v509;
      v134(v509, v70, v133);
      v131 = 0;
    }

    v496 = *(v64 + 56);
    v497 = v64 + 56;
    v136 = v496(v132, v131, 1, v133);
    v137 = *v540;
    MEMORY[0x1EEE9AC00](v136);
    v444[-2] = v132;
    v138 = v492;
    sub_1D87EE048(sub_1D8ABD288, v137, v492);
    v472 = 0;
    sub_1D87A0E38(v138, v100, &qword_1ECA67980);
    v139 = v513;
    swift_beginAccess();
    v140 = v139 + v127;
    v141 = v139;
    sub_1D87B6EFC(v100, v140, &qword_1ECA67980);
    swift_endAccess();
    v142 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_logger;
    swift_bridgeObjectRetain_n();
    sub_1D8943B30(v540, &v535);
    v498 = v142;
    v143 = sub_1D8B151C0();
    v144 = sub_1D8B16200();
    sub_1D88C39F8(v540);
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v532[0] = v146;
      *v145 = 136315394;
      v147 = v540[48];
      v148 = 0xE000000000000000;
      *&v535 = 0;
      *(&v535 + 1) = 0xE000000000000000;
      sub_1D8B16020();
      if (v147)
      {
        v149 = 0x296C6C6974532820;
      }

      else
      {
        v149 = 0;
      }

      if (v147)
      {
        v148 = 0xE800000000000000;
      }

      MEMORY[0x1DA71EFA0](v149, v148);

      v150 = sub_1D89AC714(v535, *(&v535 + 1), v532);

      *(v145 + 4) = v150;
      v141 = v513;
      *(v145 + 12) = 2048;
      v151 = *(v137 + 16);

      *(v145 + 14) = v151;

      _os_log_impl(&dword_1D8783000, v143, v144, "Retrieved new bundleManagerOutput: t = %s, bundles: %ld", v145, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v146);
      MEMORY[0x1DA721330](v146, -1, -1);
      MEMORY[0x1DA721330](v145, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v446 = v540[48];
    if ((v540[48] & 1) != 0 && *(v141 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration) != 1)
    {
      v485 = 1;
      v152 = &OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_stillRanker;
    }

    else
    {
      v485 = 0;
      v152 = &OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker;
    }

    sub_1D87C1470(v141 + *v152, v532);
    v153 = v533;
    v154 = v534;
    v155 = __swift_project_boxed_opaque_existential_1(v532, v533);
    v156 = v481[3];
    v537 = v481[2];
    v538 = v156;
    v539 = v481[4];
    v157 = v481[1];
    v535 = *v481;
    v536 = v157;
    LOBYTE(v531[0]) = 0;
    v515 = v137;
    v158 = sub_1D8ABAEBC(v137, &v535, v531, v155, v153, v154);
    v159 = *(v158 + 16);
    v444[0] = v129;
    v524 = v158;
    v523 = v159;
    if (v159)
    {
      v160 = 0;
      v161 = (v64 + 48);
      v486 = (v64 + 8);
      v487 = (v64 + 16);
      v514 = MEMORY[0x1E69E7CC0];
      v495 = (v64 + 32);
      v505 = (v64 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v493 = (v64 + 48);
      while (1)
      {
        if (v160 >= *(v158 + 16))
        {
          __break(1u);
          goto LABEL_222;
        }

        v162 = *(isa + 9);
        v520 = (*(isa + 80) + 32) & ~*(isa + 80);
        v163 = v527;
        sub_1D87A0E38(v158 + v520 + *&v162 * v160, v527, &qword_1ECA63DC0);
        if (*(v163 + SLODWORD(v528[6].isa)) > 0.0)
        {
          v516 = sub_1D8AA736C();
          v165 = v164;
          v167 = v166;
          v169 = v168;
          CVBundle.corners.getter(&v535);
          v171 = *(&v535 + 1);
          v170 = *&v535;
          if (*&v536 >= *&v535)
          {
            v172 = *&v535;
          }

          else
          {
            v172 = *&v536;
          }

          if (*&v537 < v172)
          {
            v172 = *&v537;
          }

          if (*&v538 >= v172)
          {
            v173 = v172;
          }

          else
          {
            v173 = *&v538;
          }

          if (*(&v536 + 1) >= *(&v535 + 1))
          {
            v174 = *(&v535 + 1);
          }

          else
          {
            v174 = *(&v536 + 1);
          }

          if (*(&v537 + 1) < v174)
          {
            v174 = *(&v537 + 1);
          }

          if (*(&v538 + 1) >= v174)
          {
            v175 = v174;
          }

          else
          {
            v175 = *(&v538 + 1);
          }

          if (*&v535 <= *&v536)
          {
            v170 = *&v536;
          }

          if (v170 <= *&v537)
          {
            v170 = *&v537;
          }

          if (v170 <= *&v538)
          {
            v170 = *&v538;
          }

          if (*(&v535 + 1) <= *(&v536 + 1))
          {
            v171 = *(&v536 + 1);
          }

          if (v171 <= *(&v537 + 1))
          {
            v171 = *(&v537 + 1);
          }

          if (v171 <= *(&v538 + 1))
          {
            v171 = *(&v538 + 1);
          }

          v176 = v170 - v173;
          v177 = v171 - v175;
          v542.origin.x = v173;
          v542.origin.y = v175;
          v542.size.width = v176;
          v542.size.height = v177;
          MidX = CGRectGetMidX(v542);
          v543.origin.x = v173;
          v543.origin.y = v175;
          v543.size.width = v176;
          v543.size.height = v177;
          v541.y = CGRectGetMidY(v543);
          v544.origin.x = v516;
          v544.origin.y = v165;
          v544.size.width = v167;
          v544.size.height = v169;
          v541.x = MidX;
          if (CGRectContainsPoint(v544, v541))
          {
            v516 = v162;
            v179 = v501;
            sub_1D8ABD1B8(v527, v501, type metadata accessor for CVBundle.BundleType);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v180 = *v495;
              v181 = v500;
              v182 = v179;
              v183 = v507;
              (*v495)(v500, v182, v507);
            }

            else
            {
              v184 = v491;
              sub_1D8ABD220(v179, v491, type metadata accessor for CVTrackSnapshot);
              v181 = v500;
              v183 = v507;
              (*v487)(v500, v184, v507);
              sub_1D8ABD158(v184, type metadata accessor for CVTrackSnapshot);
              v180 = *v495;
            }

            v185 = v510;
            v499 = v180;
            v180(v510, v181, v183);
            v496(v185, 0, 1, v183);
            v186 = *(v503 + 48);
            v187 = v183;
            v188 = v502;
            sub_1D87A0E38(v185, v502, &qword_1ECA63178);
            sub_1D87A0E38(v509, v188 + v186, &qword_1ECA63178);
            v189 = *v161;
            if ((*v161)(v188, 1, v187) == 1)
            {
              sub_1D87A14E4(v185, &qword_1ECA63178);
              if (v189(v188 + v186, 1, v187) != 1)
              {
                goto LABEL_67;
              }

              sub_1D87A14E4(v188, &qword_1ECA63178);
            }

            else
            {
              v190 = v489;
              sub_1D87A0E38(v188, v489, &qword_1ECA63178);
              if (v189(v188 + v186, 1, v187) == 1)
              {
                sub_1D87A14E4(v510, &qword_1ECA63178);
                (*v486)(v190, v187);
LABEL_67:
                sub_1D87A14E4(v188, &qword_1ECA64298);
                v191 = v516;
LABEL_68:
                sub_1D881F6FC(v527, v508, &qword_1ECA63DC0);
                v192 = v514;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v531[0] = v192;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1D87F46CC(0, *(v192 + 16) + 1, 1);
                  v192 = v531[0];
                }

                v195 = *(v192 + 16);
                v194 = *(v192 + 24);
                if (v195 >= v194 >> 1)
                {
                  sub_1D87F46CC(v194 > 1, v195 + 1, 1);
                  v192 = v531[0];
                }

                *(v192 + 16) = v195 + 1;
                v514 = v192;
                sub_1D881F6FC(v508, v192 + v520 + v195 * *&v191, &qword_1ECA63DC0);
                v161 = v493;
                goto LABEL_27;
              }

              v196 = v482;
              v499(v482, v188 + v186, v187);
              sub_1D8AB859C(&qword_1EE0E9898, MEMORY[0x1E69695A8]);
              LODWORD(v499) = sub_1D8B158C0();
              v197 = *v486;
              v198 = v196;
              v161 = v493;
              (*v486)(v198, v187);
              sub_1D87A14E4(v510, &qword_1ECA63178);
              v197(v190, v187);
              sub_1D87A14E4(v188, &qword_1ECA63178);
              v191 = v516;
              if ((v499 & 1) == 0)
              {
                goto LABEL_68;
              }
            }
          }
        }

        sub_1D87A14E4(v527, &qword_1ECA63DC0);
LABEL_27:
        ++v160;
        v158 = v524;
        if (v523 == v160)
        {
          goto LABEL_76;
        }
      }
    }

    v514 = MEMORY[0x1E69E7CC0];
LABEL_76:
    v199 = v515;

    v200 = sub_1D8B151C0();
    v201 = sub_1D8B16200();

    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      v527 = swift_slowAlloc();
      *&v535 = v527;
      *v202 = 136315138;
      v203 = *(v199 + 16);
      v204 = MEMORY[0x1E69E7CC0];
      if (v203)
      {
        v510 = v202;
        LODWORD(v516) = v201;
        v520 = v200;
        v531[0] = MEMORY[0x1E69E7CC0];
        sub_1D87F3F54(0, v203, 0);
        v204 = v531[0];
        v205 = v199 + ((*(v525 + 80) + 32) & ~*(v525 + 80));
        v206 = *(v525 + 72);
        do
        {
          v207 = v517;
          sub_1D8ABD1B8(v205, v517, type metadata accessor for CVBundle);
          v208 = sub_1D8919AAC();
          v210 = v209;
          sub_1D8ABD158(v207, type metadata accessor for CVBundle);
          v531[0] = v204;
          v212 = *(v204 + 16);
          v211 = *(v204 + 24);
          if (v212 >= v211 >> 1)
          {
            sub_1D87F3F54((v211 > 1), v212 + 1, 1);
            v204 = v531[0];
          }

          *(v204 + 16) = v212 + 1;
          v213 = v204 + 16 * v212;
          *(v213 + 32) = v208;
          *(v213 + 40) = v210;
          v205 += v206;
          --v203;
        }

        while (v203);
        v200 = v520;
        LOBYTE(v201) = LOBYTE(v516);
        v202 = v510;
      }

      v531[0] = v204;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
      v214 = sub_1D8B15810();
      v216 = v215;

      v217 = sub_1D89AC714(v214, v216, &v535);

      *(v202 + 4) = v217;
      _os_log_impl(&dword_1D8783000, v200, v201, "all bundles: [%s]", v202, 0xCu);
      v218 = v527;
      __swift_destroy_boxed_opaque_existential_1(v527);
      MEMORY[0x1DA721330](v218, -1, -1);
      MEMORY[0x1DA721330](v202, -1, -1);
    }

    else
    {
    }

    v219 = v514;

    v220 = sub_1D8B151C0();
    v221 = sub_1D8B16200();

    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v224 = v223;
      *&v535 = v223;
      *v222 = 136315138;
      v225 = *(v219 + 16);
      v226 = MEMORY[0x1E69E7CC0];
      if (v225)
      {
        v508 = v223;
        v510 = v222;
        LODWORD(v516) = v221;
        v520 = v220;
        v531[0] = MEMORY[0x1E69E7CC0];
        sub_1D87F3F54(0, v225, 0);
        v226 = v531[0];
        v227 = v219 + ((*(isa + 80) + 32) & ~*(isa + 80));
        v527 = *(isa + 9);
        do
        {
          v228 = v522;
          sub_1D87A0E38(v227, v522, &qword_1ECA63DC0);
          v229 = v521;
          sub_1D87A0E38(v228, v521, &qword_1ECA63DC0);
          isa_low = SLODWORD(v528[6].isa);
          v231 = *(v229 + isa_low);
          v232 = v519;
          sub_1D8ABD220(v229, v519, type metadata accessor for CVBundle);
          *(v232 + isa_low) = v231;
          v233 = sub_1D8919AAC();
          v235 = v234;
          sub_1D87A14E4(v232, &qword_1ECA63DC0);
          sub_1D87A14E4(v228, &qword_1ECA63DC0);
          v531[0] = v226;
          v237 = *(v226 + 16);
          v236 = *(v226 + 24);
          if (v237 >= v236 >> 1)
          {
            sub_1D87F3F54((v236 > 1), v237 + 1, 1);
            v226 = v531[0];
          }

          *(v226 + 16) = v237 + 1;
          v238 = v226 + 16 * v237;
          *(v238 + 32) = v233;
          *(v238 + 40) = v235;
          v227 += v527;
          --v225;
        }

        while (v225);
        v219 = v514;
        v220 = v520;
        LOBYTE(v221) = LOBYTE(v516);
        v222 = v510;
        v224 = v508;
      }

      v531[0] = v226;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
      v239 = sub_1D8B15810();
      v241 = v240;

      v242 = sub_1D89AC714(v239, v241, &v535);

      *(v222 + 4) = v242;
      _os_log_impl(&dword_1D8783000, v220, v221, "available ranked bundles: [%s]", v222, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v224);
      MEMORY[0x1DA721330](v224, -1, -1);
      MEMORY[0x1DA721330](v222, -1, -1);
    }

    v243 = v484;
    v244 = v494;
    if (v485)
    {
      v245 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingMostSalientBundleAndScore;
      v246 = v513;
      swift_beginAccess();
      v247 = v467;
      sub_1D87A0E38(v246 + v245, v467, &qword_1ECA68C08);
      v248 = *(isa + 6);
      v520 = isa + 48;
      v516 = *&v248;
      v249 = v248(v247, 1, v528);
      v512 = v245;
      if (v249 == 1)
      {
        sub_1D87A14E4(v247, &qword_1ECA68C08);
        v250 = v246;
      }

      else
      {
        v268 = v468;
        v269 = sub_1D881F6FC(v247, v468, &qword_1ECA63DC0);
        MEMORY[0x1EEE9AC00](v269);
        v444[-2] = v268;
        v270 = v469;
        v271 = v472;
        sub_1D87EE250(sub_1D8ABD2C8, v272, v469);
        v472 = v271;
        v273 = v270;
        v274 = v455;
        sub_1D87A0E38(v273, v455, &qword_1ECA68C08);
        v275 = v453;
        sub_1D87A0E38(v268, v453, &qword_1ECA63DC0);
        v276 = v268;
        v277 = v454;
        sub_1D87A0E38(v276, v454, &qword_1ECA63DC0);
        sub_1D8943B30(v540, &v535);
        v278 = sub_1D8B151C0();
        v279 = sub_1D8B16230();
        sub_1D88C39F8(v540);
        if (os_log_type_enabled(v278, v279))
        {
          v280 = swift_slowAlloc();
          v527 = swift_slowAlloc();
          *&v535 = v527;
          *v280 = 136315650;
          v281 = (*&v516)(v274, 1, v528);
          LODWORD(v510) = v279;
          if (v281 == 1)
          {
            v282 = 0x676E697261656C63;
          }

          else
          {
            v282 = 0x6976726573657270;
          }

          if (v281 == 1)
          {
            v283 = 0xE800000000000000;
          }

          else
          {
            v283 = 0xEA0000000000676ELL;
          }

          sub_1D87A14E4(v274, &qword_1ECA68C08);
          v284 = sub_1D89AC714(v282, v283, &v535);

          *(v280 + 4) = v284;
          *(v280 + 12) = 2080;
          v285 = v275;
          v286 = v275;
          v287 = v277;
          v288 = v522;
          sub_1D87A0E38(v285, v522, &qword_1ECA63DC0);
          v289 = sub_1D8919AAC();
          v291 = v290;
          sub_1D87A14E4(v286, &qword_1ECA63DC0);
          sub_1D8ABD158(v288, type metadata accessor for CVBundle);
          v292 = sub_1D89AC714(v289, v291, &v535);

          *(v280 + 14) = v292;
          *(v280 + 22) = 2048;
          sub_1D87A0E38(v287, v288, &qword_1ECA63DC0);
          v293 = sub_1D892004C();
          v243 = v484;
          sub_1D87A14E4(v287, &qword_1ECA63DC0);
          sub_1D8ABD158(v288, type metadata accessor for CVBundle);
          *(v280 + 24) = v476 - v293;
          _os_log_impl(&dword_1D8783000, v278, v510, "Still arrival: %s streaming most salient bundle: %s (age: %f)", v280, 0x20u);
          v294 = v527;
          swift_arrayDestroy();
          MEMORY[0x1DA721330](v294, -1, -1);
          MEMORY[0x1DA721330](v280, -1, -1);
        }

        else
        {

          sub_1D87A14E4(v277, &qword_1ECA63DC0);
          sub_1D87A14E4(v275, &qword_1ECA63DC0);
          sub_1D87A14E4(v274, &qword_1ECA68C08);
        }

        v250 = v513;
        v245 = v512;
        swift_beginAccess();
        sub_1D87B6EFC(v469, v250 + v245, &qword_1ECA68C08);
        swift_endAccess();
        sub_1D87A14E4(v468, &qword_1ECA63DC0);
        v219 = v514;
      }

      v295 = *(v219 + 16);
      v296 = MEMORY[0x1E69E7CC0];
      if (v295)
      {
        *&v535 = MEMORY[0x1E69E7CC0];
        sub_1D87F4074(0, v295, 0);
        v296 = v535;
        v297 = v219 + ((*(isa + 80) + 32) & ~*(isa + 80));
        v527 = *(isa + 9);
        v298 = v456;
        do
        {
          v299 = v522;
          sub_1D87A0E38(v297, v522, &qword_1ECA63DC0);
          v300 = v521;
          sub_1D87A0E38(v299, v521, &qword_1ECA63DC0);
          v301 = SLODWORD(v528[6].isa);
          v302 = *(v300 + v301);
          v303 = v300;
          v304 = v519;
          sub_1D8ABD220(v303, v519, type metadata accessor for CVBundle);
          *(v304 + v301) = v302;
          sub_1D8ABD1B8(v304, v298, type metadata accessor for CVBundle);
          sub_1D87A14E4(v304, &qword_1ECA63DC0);
          sub_1D87A14E4(v299, &qword_1ECA63DC0);
          *&v535 = v296;
          v306 = *(v296 + 16);
          v305 = *(v296 + 24);
          if (v306 >= v305 >> 1)
          {
            sub_1D87F4074(v305 > 1, v306 + 1, 1);
            v298 = v456;
            v296 = v535;
          }

          *(v296 + 16) = v306 + 1;
          sub_1D8ABD220(v298, v296 + ((*(v525 + 80) + 32) & ~*(v525 + 80)) + *(v525 + 72) * v306, type metadata accessor for CVBundle);
          v297 += v527;
          --v295;
        }

        while (v295);
        v250 = v513;
        v243 = v484;
        v245 = v512;
      }

      *&v535 = v296;
      v307 = v470;
      sub_1D87A0E38(v250 + v245, v470, &qword_1ECA68C08);
      if ((*&v516)(v307, 1, v528))
      {
        sub_1D87A14E4(v307, &qword_1ECA68C08);
      }

      else
      {
        v308 = v450;
        sub_1D8ABD1B8(v307, v450, type metadata accessor for CVBundle);
        sub_1D87A14E4(v307, &qword_1ECA68C08);
        v309 = v451;
        v310 = sub_1D8ABD220(v308, v451, type metadata accessor for CVBundle);
        MEMORY[0x1EEE9AC00](v310);
        v444[-2] = v309;

        v311 = v472;
        v312 = sub_1D87C6A8C(sub_1D8ABD2A8, &v444[-4], v296);
        v472 = v311;

        *&v535 = v312;
        v250 = v513;
        v313 = v452;
        sub_1D8ABD1B8(v309, v452, type metadata accessor for CVBundle);
        sub_1D885CEE4(0, 0, v313);
        sub_1D8ABD158(v309, type metadata accessor for CVBundle);
        v296 = v535;
      }

      v314 = *(v515 + 16);
      if (v314)
      {
        v315 = v515 + ((*(v525 + 80) + 32) & ~*(v525 + 80));

        v316 = 0;
        while (1)
        {
          if (v316 >= *(v515 + 16))
          {
            goto LABEL_225;
          }

          sub_1D8ABD1B8(v315 + *(v525 + 72) * v316, v243, type metadata accessor for CVBundle);
          CVBundle.latestDetection.getter(v530);
          if (v530[0] >> 60 == 11)
          {
            v317 = type metadata accessor for SyntheticDetectionResult();
            if ((*(swift_projectBox() + *(v317 + 24)) & 1) == 0)
            {

              goto LABEL_143;
            }

            v318 = sub_1D8B16BA0();

            if (v318)
            {

LABEL_143:
              v320 = v466;
              sub_1D8ABD220(v243, v466, type metadata accessor for CVBundle);
              v319 = 0;
              v250 = v513;
              v267 = v511;
              goto LABEL_144;
            }
          }

          ++v316;
          sub_1D8ABD158(v243, type metadata accessor for CVBundle);

          if (v314 == v316)
          {
            v319 = 1;
            v250 = v513;
            goto LABEL_141;
          }
        }
      }

      v319 = 1;
LABEL_141:
      v267 = v511;
      v320 = v466;
LABEL_144:
      (*(v525 + 56))(v320, v319, 1, v490);

      v321 = sub_1D8AAF8D8(v296, v320);
      v323 = v322;

      sub_1D87A14E4(v320, &qword_1ECA67980);
      *(v250 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_saliencyRankedBundles) = v321;

      *(v250 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_guaranteedBundles) = v323;
    }

    else
    {
      v251 = MEMORY[0x1E69E7CC0];
      v527 = *(v219 + 16);
      if (v527)
      {
        v252 = 0;
        v520 = v513 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration;
        while (v252 < *(v219 + 16))
        {
          v253 = (*(isa + 80) + 32) & ~*(isa + 80);
          v254 = *(isa + 9);
          sub_1D87A0E38(v219 + v253 + v254 * v252, v244, &qword_1ECA63DC0);
          v255 = v244;
          if (!*(v520 + 43) || (*(v520 + 43) == 1 || (sub_1D8919304() & 1) != 0) && (v256 = CVBundle.classifications.getter()[2], , v256))
          {
            sub_1D881F6FC(v255, v512, &qword_1ECA63DC0);
            v257 = swift_isUniquelyReferenced_nonNull_native();
            *&v535 = v251;
            if (v257)
            {
              v244 = v255;
            }

            else
            {
              sub_1D87F46CC(0, *(v251 + 16) + 1, 1);
              v244 = v494;
              v251 = v535;
            }

            v259 = *(v251 + 16);
            v258 = *(v251 + 24);
            if (v259 >= v258 >> 1)
            {
              sub_1D87F46CC(v258 > 1, v259 + 1, 1);
              v244 = v494;
              v251 = v535;
            }

            *(v251 + 16) = v259 + 1;
            sub_1D881F6FC(v512, v251 + v253 + v259 * v254, &qword_1ECA63DC0);
            v219 = v514;
          }

          else
          {
            sub_1D87A14E4(v255, &qword_1ECA63DC0);
            v244 = v255;
          }

          if (v527 == ++v252)
          {
            goto LABEL_111;
          }
        }

LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
        goto LABEL_226;
      }

LABEL_111:
      v260 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingMostSalientBundleAndScore;
      v261 = v513;
      swift_beginAccess();
      v262 = v464;
      sub_1D87A0E38(v261 + v260, v464, &qword_1ECA68C08);
      v263 = v465;
      sub_1D8AB0B60(v262, 1, v465);

      v264 = v481[3];
      v537 = v481[2];
      v538 = v264;
      v539 = v481[4];
      v265 = v481[1];
      v535 = *v481;
      v536 = v265;
      v266 = v449;
      sub_1D8AB0148(v263, v262, &v535, v449);
      swift_beginAccess();
      sub_1D87B6EFC(v266, v261 + v260, &qword_1ECA68C08);
      swift_endAccess();
      *(v261 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_saliencyRankedBundles) = MEMORY[0x1E69E7CC0];

      sub_1D87A14E4(v263, &qword_1ECA68C08);
      sub_1D87A14E4(v262, &qword_1ECA68C08);
      *(v261 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_guaranteedBundles) = MEMORY[0x1E69E7CD0];

      v267 = v511;
    }

    v324 = MEMORY[0x1E69E7CC0];
    v325 = v506;
    v326 = v524;
    if (v523)
    {
      v327 = 0;
      while (v327 < *(v326 + 16))
      {
        v328 = (*(isa + 80) + 32) & ~*(isa + 80);
        v329 = *(isa + 9);
        sub_1D87A0E38(v326 + v328 + v329 * v327, v267, &qword_1ECA63DC0);
        if (*(v267 + SLODWORD(v528[6].isa)) <= 0.0)
        {
          sub_1D87A14E4(v267, &qword_1ECA63DC0);
        }

        else
        {
          sub_1D881F6FC(v267, v325, &qword_1ECA63DC0);
          v330 = swift_isUniquelyReferenced_nonNull_native();
          *&v535 = v324;
          if ((v330 & 1) == 0)
          {
            sub_1D87F46CC(0, *(v324 + 16) + 1, 1);
            v325 = v506;
            v324 = v535;
          }

          v332 = *(v324 + 16);
          v331 = *(v324 + 24);
          if (v332 >= v331 >> 1)
          {
            sub_1D87F46CC(v331 > 1, v332 + 1, 1);
            v325 = v506;
            v324 = v535;
          }

          *(v324 + 16) = v332 + 1;
          sub_1D881F6FC(v325, v324 + v328 + v332 * v329, &qword_1ECA63DC0);
          v267 = v511;
        }

        ++v327;
        v326 = v524;
        if (v523 == v327)
        {
          goto LABEL_156;
        }
      }

LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

LABEL_156:

    v333 = *(v324 + 16);
    if (v333)
    {
      *&v535 = MEMORY[0x1E69E7CC0];
      sub_1D87F4074(0, v333, 0);
      v334 = v535;
      v335 = v324 + ((*(isa + 80) + 32) & ~*(isa + 80));
      v527 = *(isa + 9);
      v336 = v473;
      do
      {
        v337 = v522;
        sub_1D87A0E38(v335, v522, &qword_1ECA63DC0);
        v338 = v337;
        v339 = v521;
        sub_1D881F6FC(v338, v521, &qword_1ECA63DC0);
        sub_1D8ABD220(v339, v336, type metadata accessor for CVBundle);
        *&v535 = v334;
        v341 = v334[2].isa;
        v340 = v334[3].isa;
        if (v341 >= v340 >> 1)
        {
          sub_1D87F4074(v340 > 1, v341 + 1, 1);
          v336 = v473;
          v334 = v535;
        }

        v334[2].isa = (v341 + 1);
        sub_1D8ABD220(v336, v334 + ((*(v525 + 80) + 32) & ~*(v525 + 80)) + *(v525 + 72) * v341, type metadata accessor for CVBundle);
        v335 += v527;
        --v333;
      }

      while (v333);
    }

    else
    {

      v334 = MEMORY[0x1E69E7CC0];
    }

    v342 = sub_1D8B151C0();
    v343 = sub_1D8B16200();

    if (os_log_type_enabled(v342, v343))
    {
      v344 = swift_slowAlloc();
      v345 = swift_slowAlloc();
      *&v535 = v345;
      *v344 = 136315138;
      v346 = sub_1D8AACCE8(v334);
      v348 = sub_1D89AC714(v346, v347, &v535);

      *(v344 + 4) = v348;
      _os_log_impl(&dword_1D8783000, v342, v343, "bundles eligible for service: [%s]", v344, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v345);
      MEMORY[0x1DA721330](v345, -1, -1);
      MEMORY[0x1DA721330](v344, -1, -1);
    }

    v349 = *(v515 + 16);
    if (v349)
    {
      v350 = 0;
      v351 = v515 + ((*(v525 + 80) + 32) & ~*(v525 + 80));
      do
      {
        if (v350 >= *(v515 + 16))
        {
          goto LABEL_223;
        }

        sub_1D8ABD1B8(v351 + *(v525 + 72) * v350, v518, type metadata accessor for CVBundle);
        CVBundle.latestDetection.getter(&v535);
        if (v535 >> 60 == 11)
        {
          v352 = type metadata accessor for SyntheticDetectionResult();
          if ((*(swift_projectBox() + *(v352 + 24)) & 1) == 0)
          {

            goto LABEL_175;
          }

          v353 = sub_1D8B16BA0();

          if (v353)
          {

LABEL_175:
            v356 = v477;
            sub_1D8ABD220(v518, v477, type metadata accessor for CVBundle);
            v354 = 0;
            v355 = v490;
            goto LABEL_176;
          }
        }

        ++v350;
        sub_1D8ABD158(v518, type metadata accessor for CVBundle);
      }

      while (v349 != v350);
    }

    v354 = 1;
    v355 = v490;
    v356 = v477;
LABEL_176:
    v357 = *(v525 + 56);
    v358 = 1;
    v357(v356, v354, 1, v355);
    v359 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingMostSalientBundleAndScore;
    v360 = v513;
    swift_beginAccess();
    v361 = v360 + v359;
    v362 = v479;
    sub_1D87A0E38(v361, v479, &qword_1ECA68C08);
    if (!(*(isa + 6))(v362, 1, v528))
    {
      sub_1D8ABD1B8(v362, v483, type metadata accessor for CVBundle);
      v358 = 0;
    }

    sub_1D87A14E4(v362, &qword_1ECA68C08);
    v363 = v483;
    v357(v483, v358, 1, v355);
    v364 = sub_1D8AAD094(v334, v356, v363, v492, v485);

    sub_1D87A14E4(v363, &qword_1ECA67980);
    sub_1D87A14E4(v356, &qword_1ECA67980);

    v365 = sub_1D8B151C0();
    v366 = sub_1D8B16200();

    if (os_log_type_enabled(v365, v366))
    {
      v367 = swift_slowAlloc();
      v528 = swift_slowAlloc();
      *&v535 = v528;
      *v367 = 136315138;
      v368 = *(v364 + 16);
      v369 = MEMORY[0x1E69E7CC0];
      if (v368)
      {
        v523 = v367;
        LODWORD(v524) = v366;
        isa = v365;
        v529 = MEMORY[0x1E69E7CC0];
        sub_1D87F3F54(0, v368, 0);
        v369 = v529;
        v370 = *(v525 + 80);
        v527 = v364;
        v371 = v364 + ((v370 + 32) & ~v370);
        v372 = *(v525 + 72);
        do
        {
          v373 = v517;
          sub_1D8ABD1B8(v371, v517, type metadata accessor for CVBundle);
          v374 = sub_1D8919AAC();
          v376 = v375;
          sub_1D8ABD158(v373, type metadata accessor for CVBundle);
          v529 = v369;
          v378 = *(v369 + 16);
          v377 = *(v369 + 24);
          if (v378 >= v377 >> 1)
          {
            sub_1D87F3F54((v377 > 1), v378 + 1, 1);
            v369 = v529;
          }

          *(v369 + 16) = v378 + 1;
          v379 = v369 + 16 * v378;
          *(v379 + 32) = v374;
          *(v379 + 40) = v376;
          v371 += v372;
          --v368;
        }

        while (v368);
        v364 = v527;
        v365 = isa;
        LOBYTE(v366) = v524;
        v367 = v523;
      }

      v529 = v369;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
      v380 = sub_1D8B15810();
      v382 = v381;

      v383 = sub_1D89AC714(v380, v382, &v535);

      *(v367 + 4) = v383;
      _os_log_impl(&dword_1D8783000, v365, v366, "bundles to service: [%s]", v367, 0xCu);
      v384 = v528;
      __swift_destroy_boxed_opaque_existential_1(v528);
      MEMORY[0x1DA721330](v384, -1, -1);
      MEMORY[0x1DA721330](v367, -1, -1);

      v360 = v513;
    }

    else
    {
    }

    v385 = v478;
    v386 = v515;
    *(v360 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_refiningBundles) = v364;

    v387 = sub_1D8AAE838(v364, v386, *&v540[88]);

    sub_1D8AA6B5C(v387);
    *(v360 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_requests) = v387;

    v388 = v474;
    sub_1D8AA7C74(v474);
    v389 = *(v385 + 48);
    v390 = v488;
    if (v389(v388, 1, v488) == 1)
    {
      sub_1D87A14E4(v388, &qword_1ECA640E8);
LABEL_210:
      sub_1D8943B30(v540, &v535);
      v436 = sub_1D8B151C0();
      v437 = sub_1D8B16200();
      sub_1D88C39F8(v540);
      if (os_log_type_enabled(v436, v437))
      {
        v438 = swift_slowAlloc();
        v439 = swift_slowAlloc();
        v529 = v439;
        *v438 = 136315138;
        *&v535 = 0;
        *(&v535 + 1) = 0xE000000000000000;
        sub_1D8B16020();
        if (v446)
        {
          v440 = 0x296C6C6974532820;
        }

        else
        {
          v440 = 0;
        }

        if (v446)
        {
          v441 = 0xE800000000000000;
        }

        else
        {
          v441 = 0xE000000000000000;
        }

        MEMORY[0x1DA71EFA0](v440, v441);

        v442 = sub_1D89AC714(v535, *(&v535 + 1), &v529);

        *(v438 + 4) = v442;
        _os_log_impl(&dword_1D8783000, v436, v437, "Did not push new output to stream. Old and new outputs are equal @ t = %s", v438, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v439);
        MEMORY[0x1DA721330](v439, -1, -1);
        MEMORY[0x1DA721330](v438, -1, -1);
      }

LABEL_219:
      sub_1D87A14E4(v492, &qword_1ECA67980);
      sub_1D87A14E4(v480, &qword_1ECA640E8);
      v443 = v509;
      __swift_destroy_boxed_opaque_existential_1(v532);
      sub_1D87A14E4(v443, &qword_1ECA63178);
      return;
    }

    v391 = v475;
    sub_1D8ABD220(v388, v475, type metadata accessor for BundleSelector.Output);
    v392 = v457;
    sub_1D8ABD1B8(v391, v457, type metadata accessor for BundleSelector.Output);
    (*(v385 + 56))(v392, 0, 1, v390);
    v393 = v463;
    v394 = *(v462 + 48);
    sub_1D87A0E38(v480, v463, &qword_1ECA640E8);
    v395 = v488;
    v396 = v393;
    sub_1D87A0E38(v392, v393 + v394, &qword_1ECA640E8);
    if (v389(v393, 1, v395) == 1)
    {
      sub_1D87A14E4(v392, &qword_1ECA640E8);
      v397 = v389(v393 + v394, 1, v395) == 1;
      v398 = v393;
      if (!v397)
      {
        goto LABEL_195;
      }

      sub_1D87A14E4(v393, &qword_1ECA640E8);
    }

    else
    {
      v399 = v393;
      v400 = v445;
      sub_1D87A0E38(v399, v445, &qword_1ECA640E8);
      if (v389(v396 + v394, 1, v395) == 1)
      {
        sub_1D87A14E4(v457, &qword_1ECA640E8);
        sub_1D8ABD158(v400, type metadata accessor for BundleSelector.Output);
        v398 = v396;
LABEL_195:
        sub_1D87A14E4(v398, &qword_1ECA68EA8);
        v401 = v471;
LABEL_196:
        v402 = v458;
        sub_1D8ABD1B8(v391, v458, type metadata accessor for BundleSelector.Output);
        v403 = v461;
        sub_1D87A0E38(v492, v461, &qword_1ECA67980);
        sub_1D8ABD1B8(v391, v401, type metadata accessor for BundleSelector.Output);
        v404 = v459;
        sub_1D8ABD1B8(v391, v459, type metadata accessor for BundleSelector.Output);
        v405 = v460;
        sub_1D8ABD1B8(v391, v460, type metadata accessor for BundleSelector.Output);
        v406 = sub_1D8B151C0();
        v407 = sub_1D8B16200();
        if (os_log_type_enabled(v406, v407))
        {
          LODWORD(v527) = v407;
          v528 = v406;
          v408 = swift_slowAlloc();
          v409 = swift_slowAlloc();
          *v408 = 134218754;
          v410 = *(v488 + 28);
          v411 = *(v402 + *(v488 + 24));
          isa = v409;
          v529 = v409;
          v412 = *(v411 + 16);
          v413 = *(*(v402 + v410) + 16);
          v414 = v412 + v413;
          if (__OFADD__(v412, v413))
          {
LABEL_226:
            __break(1u);
            goto LABEL_227;
          }

          v415 = v448;
          sub_1D87A0E38(v402, v448, &qword_1ECA67980);
          v416 = v490;
          v417 = v444[0];
          v418 = (v444[0])(v415, 1, v490) != 1;
          sub_1D87A14E4(v415, &qword_1ECA67980);
          v419 = v414 + v418;
          if (__OFADD__(v414, v418))
          {
LABEL_227:
            __break(1u);
            goto LABEL_228;
          }

          v420 = v461;
          v421 = v417(v461, 1, v416) != 1;
          v422 = __OFADD__(v419, v421);
          v423 = v419 + v421;
          if (v422)
          {
LABEL_228:
            __break(1u);
            return;
          }

          sub_1D8ABD158(v458, type metadata accessor for BundleSelector.Output);
          sub_1D87A14E4(v420, &qword_1ECA67980);
          *(v408 + 4) = v423;
          *(v408 + 12) = 2048;
          v424 = v488;
          v425 = *(*(v471 + *(v488 + 24)) + 16);
          sub_1D8ABD158(v471, type metadata accessor for BundleSelector.Output);
          *(v408 + 14) = v425;
          *(v408 + 22) = 2080;
          v426 = v459;
          v427 = *(v459 + *(v424 + 20) + 40);
          v428 = 0xE000000000000000;
          *&v535 = 0;
          *(&v535 + 1) = 0xE000000000000000;
          sub_1D8B16020();
          if (v427)
          {
            v429 = 0x296C6C6974532820;
          }

          else
          {
            v429 = 0;
          }

          if (v427)
          {
            v428 = 0xE800000000000000;
          }

          MEMORY[0x1DA71EFA0](v429, v428);

          v430 = v535;
          sub_1D8ABD158(v426, type metadata accessor for BundleSelector.Output);
          v431 = sub_1D89AC714(v430, *(&v430 + 1), &v529);

          *(v408 + 24) = v431;
          *(v408 + 32) = 1024;
          LODWORD(v431) = *(v460 + *(v424 + 32));
          sub_1D8ABD158(v460, type metadata accessor for BundleSelector.Output);
          *(v408 + 34) = v431;
          v432 = v528;
          _os_log_impl(&dword_1D8783000, v528, v527, "Pushed new output to stream with %ld bundles (%ld ranked) @ t = %s and isAllEligibleRefinementExhausted: %{BOOL}d", v408, 0x26u);
          v433 = isa;
          __swift_destroy_boxed_opaque_existential_1(isa);
          MEMORY[0x1DA721330](v433, -1, -1);
          MEMORY[0x1DA721330](v408, -1, -1);

          v391 = v475;
        }

        else
        {
          sub_1D8ABD158(v405, type metadata accessor for BundleSelector.Output);
          sub_1D8ABD158(v401, type metadata accessor for BundleSelector.Output);
          sub_1D8ABD158(v402, type metadata accessor for BundleSelector.Output);
          sub_1D87A14E4(v403, &qword_1ECA67980);

          sub_1D8ABD158(v404, type metadata accessor for BundleSelector.Output);
        }

        sub_1D8AF5C8C(v391);
        sub_1D8ABD158(v391, type metadata accessor for BundleSelector.Output);
        goto LABEL_219;
      }

      v434 = v447;
      sub_1D8ABD220(v396 + v394, v447, type metadata accessor for BundleSelector.Output);
      v435 = _s22VisualIntelligenceCore14BundleSelectorC6OutputV2eeoiySbAE_AEtFZ_0(v400, v434);
      sub_1D8ABD158(v434, type metadata accessor for BundleSelector.Output);
      sub_1D87A14E4(v457, &qword_1ECA640E8);
      sub_1D8ABD158(v400, type metadata accessor for BundleSelector.Output);
      sub_1D87A14E4(v396, &qword_1ECA640E8);
      v401 = v471;
      if ((v435 & 1) == 0)
      {
        goto LABEL_196;
      }
    }

    sub_1D8ABD158(v391, type metadata accessor for BundleSelector.Output);
    goto LABEL_210;
  }
}

uint64_t sub_1D8AAC73C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64298);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v30 - v3;
  v5 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v30 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v32 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - v20;
  sub_1D8ABD1B8(a1, v10, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *(v12 + 32);
    v22(v16, v10, v11);
  }

  else
  {
    sub_1D8ABD220(v10, v7, type metadata accessor for CVTrackSnapshot);
    (*(v12 + 16))(v16, v7, v11);
    sub_1D8ABD158(v7, type metadata accessor for CVTrackSnapshot);
    v22 = *(v12 + 32);
  }

  v22(v21, v16, v11);
  (*(v12 + 56))(v21, 0, 1, v11);
  v23 = *(v31 + 48);
  sub_1D87A0E38(v21, v4, &qword_1ECA63178);
  sub_1D87A0E38(v33, &v4[v23], &qword_1ECA63178);
  v24 = *(v12 + 48);
  if (v24(v4, 1, v11) != 1)
  {
    sub_1D87A0E38(v4, v32, &qword_1ECA63178);
    if (v24(&v4[v23], 1, v11) != 1)
    {
      v26 = v30;
      v22(v30, &v4[v23], v11);
      sub_1D8AB859C(&qword_1EE0E9898, MEMORY[0x1E69695A8]);
      v27 = v32;
      v25 = sub_1D8B158C0();
      v28 = *(v12 + 8);
      v28(v26, v11);
      sub_1D87A14E4(v21, &qword_1ECA63178);
      v28(v27, v11);
      sub_1D87A14E4(v4, &qword_1ECA63178);
      return v25 & 1;
    }

    sub_1D87A14E4(v21, &qword_1ECA63178);
    (*(v12 + 8))(v32, v11);
    goto LABEL_9;
  }

  sub_1D87A14E4(v21, &qword_1ECA63178);
  if (v24(&v4[v23], 1, v11) != 1)
  {
LABEL_9:
    sub_1D87A14E4(v4, &qword_1ECA64298);
    v25 = 0;
    return v25 & 1;
  }

  sub_1D87A14E4(v4, &qword_1ECA63178);
  v25 = 1;
  return v25 & 1;
}

Swift::Bool __swiftcall CVBundle.isEligible(policy:)(VisualIntelligenceCore::BundleSelector::Configuration::RankingEligibilityPolicy policy)
{
  if (!*policy)
  {
    return 1;
  }

  if (*policy != 1 && (sub_1D8919304() & 1) == 0)
  {
    return 0;
  }

  v1 = CVBundle.classifications.getter()[2];

  return v1 != 0;
}

uint64_t sub_1D8AACCE8(uint64_t a1)
{
  v2 = type metadata accessor for CVBundle(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v6, 0);
    v7 = v19;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1D8ABD1B8(v8, v5, type metadata accessor for CVBundle);
      v10 = sub_1D8919AAC();
      v12 = v11;
      sub_1D8ABD158(v5, type metadata accessor for CVBundle);
      v19 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D87F3F54((v13 > 1), v14 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v19 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
  sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
  v16 = sub_1D8B15810();

  return v16;
}

void sub_1D8AACEF8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = *(a2 + 48);
  sub_1D87A0E38(a1, v14 - v6, &qword_1ECA67980);
  v9 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_userSelectedBundle;
  swift_beginAccess();
  sub_1D87B6EFC(v7, v2 + v9, &qword_1ECA67980);
  swift_endAccess();
  if (v8)
  {
    v10 = *(a2 + 16);
    v14[0] = *a2;
    v14[1] = v10;
    v14[2] = *(a2 + 32);
    v15 = v8;
    v16 = *(a2 + 49);
    *v17 = *(a2 + 65);
    *&v17[15] = *(a2 + 80);
    sub_1D8AA8E04(v14);
  }

  else
  {
    v11 = sub_1D8B151C0();
    v12 = sub_1D8B16210();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D8783000, v11, v12, "Cannot setSelectionTo: not a still.", v13, 2u);
      MEMORY[0x1DA721330](v13, -1, -1);
    }
  }
}

uint64_t sub_1D8AAD094(NSObject *a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v163 = a5;
  v161 = a4;
  v8 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64110);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v150 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v146 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v155 = (&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v146 - v17;
  v19 = type metadata accessor for CVBundle(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v154 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v162 = &v146 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v153 = &v146 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v152 = &v146 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v160 = &v146 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v158 = (&v146 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v157 = (&v146 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v159 = &v146 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v146 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v151 = (&v146 - v41);
  MEMORY[0x1EEE9AC00](v40);
  v43 = (&v146 - v42);
  v167 = a1;
  v44 = a3;
  v46 = v45;
  sub_1D87A0E38(v44, v18, &qword_1ECA67980);
  v164 = v20;
  v47 = *(v20 + 48);
  if ((v47)(v18, 1, v46) == 1)
  {

    sub_1D87A14E4(v18, &qword_1ECA67980);
  }

  else
  {
    v148 = v47;
    v149 = v46;
    v48 = a2;
    v49 = sub_1D8ABD220(v18, v43, type metadata accessor for CVBundle);
    MEMORY[0x1EEE9AC00](v49);
    *(&v146 - 2) = v43;

    a1 = sub_1D87C6A8C(sub_1D8ABDDE4, &(&v146)[-4], a1);
    sub_1D8ABD1B8(v43, v13, type metadata accessor for CVBundle);
    isa = a1[2].isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167 = a1;
    if (!isUniquelyReferenced_nonNull_native || isa >= a1[3].isa >> 1)
    {
      a1 = sub_1D87C7E90(isUniquelyReferenced_nonNull_native, isa + 1, 1, a1);
      v167 = a1;
    }

    sub_1D885D08C(0, 0, 1, v13);
    v167 = a1;
    sub_1D8ABD158(v43, type metadata accessor for CVBundle);
    a2 = v48;
    v46 = v149;
    v47 = v148;
  }

  v52 = v155;
  sub_1D87A0E38(v161, v155, &qword_1ECA67980);
  v53 = (v47)(v52, 1, v46);
  v54 = v162;
  if (v53 == 1)
  {
    sub_1D87A14E4(v52, &qword_1ECA67980);
    if (v163)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

  v63 = v151;
  sub_1D8ABD220(v52, v151, type metadata accessor for CVBundle);
  v64 = sub_1D8919304();
  if ((v64 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v64);
    *(&v146 - 2) = v63;

    v65 = sub_1D87C6A8C(sub_1D8ABDDE4, &(&v146)[-4], a1);

    v66 = v150;
    sub_1D8ABD1B8(v63, v150, type metadata accessor for CVBundle);
    a2 = v65[2].isa;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v65;
    if (!v67 || a2 >= v65[3].isa >> 1)
    {
      v65 = sub_1D87C7E90(v67, a2 + 1, 1, v65);
      v167 = v65;
    }

    v160 = 1;
    sub_1D885D08C(0, 0, 1, v66);
    v167 = v65;
    sub_1D8ABD158(v63, type metadata accessor for CVBundle);
    a1 = v65;
    goto LABEL_80;
  }

  sub_1D8ABD158(v63, type metadata accessor for CVBundle);
  if ((v163 & 1) == 0)
  {
LABEL_22:
    v160 = *(v156 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 48);
LABEL_80:
    v131 = v154;
    v132 = a1[2].isa;
    if (!v132)
    {
      v8 = MEMORY[0x1E69E7CC0];
LABEL_93:

      a2 = sub_1D87E2580(v160, v8);
      if ((v141 & 1) == 0)
      {
        goto LABEL_94;
      }

      v54 = v141;
      v55 = v140;
      v8 = v139;
      sub_1D8B16BE0();
      swift_unknownObjectRetain_n();
      v144 = swift_dynamicCastClass();
      if (!v144)
      {
        swift_unknownObjectRelease();
        v144 = MEMORY[0x1E69E7CC0];
      }

      v145 = *(v144 + 16);

      if (!__OFSUB__(v54 >> 1, v55))
      {
        if (v145 == (v54 >> 1) - v55)
        {
          v143 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v143)
          {
            return v143;
          }

          v143 = MEMORY[0x1E69E7CC0];
LABEL_101:
          swift_unknownObjectRelease();
          return v143;
        }

        goto LABEL_108;
      }

LABEL_107:
      __break(1u);
LABEL_108:
      swift_unknownObjectRelease();
      v141 = v54;
      v140 = v55;
      v139 = v8;
LABEL_94:
      sub_1D8AB5F20(a2, v139, v140, v141, &qword_1ECA634D0, &unk_1D8B22DD0, type metadata accessor for CVBundle);
      v143 = v142;
      goto LABEL_101;
    }

    v133 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v134 = a1;
    v55 = v154;
    while (v133 < a1[2].isa)
    {
      v135 = (*(v164 + 80) + 32) & ~*(v164 + 80);
      a2 = *(v164 + 72);
      sub_1D8ABD1B8(a1 + v135 + a2 * v133, v54, type metadata accessor for CVBundle);
      if (v163 & 1) != 0 && (v131 = v55, (sub_1D8919304()))
      {
        sub_1D8ABD158(v54, type metadata accessor for CVBundle);
      }

      else
      {
        sub_1D8ABD220(v54, v131, type metadata accessor for CVBundle);
        v136 = swift_isUniquelyReferenced_nonNull_native();
        v165 = v8;
        if ((v136 & 1) == 0)
        {
          sub_1D87F4074(0, v8[2].isa + 1, 1);
          v131 = v55;
          v8 = v165;
        }

        v138 = v8[2].isa;
        v137 = v8[3].isa;
        if (v138 >= v137 >> 1)
        {
          sub_1D87F4074(v137 > 1, v138 + 1, 1);
          v131 = v55;
          v8 = v165;
        }

        v8[2].isa = (v138 + 1);
        sub_1D8ABD220(v131, v8 + v135 + v138 * a2, type metadata accessor for CVBundle);
        a1 = v134;
        v54 = v162;
      }

      if (v132 == ++v133)
      {
        goto LABEL_93;
      }
    }

    __break(1u);
    goto LABEL_104;
  }

LABEL_9:
  v55 = sub_1D8AAF8D8(a1, a2);
  v155 = v56;
  v57 = *(v55 + 16);
  v161 = a1;
  if (v57)
  {
    v58 = 0;
    v54 = MEMORY[0x1E69E7CC0];
    while (v58 < *(v55 + 16))
    {
      a2 = (*(v164 + 80) + 32) & ~*(v164 + 80);
      v59 = *(v164 + 72);
      sub_1D8ABD1B8(v55 + a2 + v59 * v58, v39, type metadata accessor for CVBundle);
      if (sub_1D8919304())
      {
        sub_1D8ABD220(v39, v159, type metadata accessor for CVBundle);
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v165 = v54;
        if ((v60 & 1) == 0)
        {
          sub_1D87F4074(0, *(v54 + 16) + 1, 1);
          v54 = v165;
        }

        v62 = *(v54 + 16);
        v61 = *(v54 + 24);
        v8 = (v62 + 1);
        if (v62 >= v61 >> 1)
        {
          sub_1D87F4074(v61 > 1, v62 + 1, 1);
          v54 = v165;
        }

        *(v54 + 16) = v8;
        sub_1D8ABD220(v159, v54 + a2 + v62 * v59, type metadata accessor for CVBundle);
        a1 = v161;
      }

      else
      {
        sub_1D8ABD158(v39, type metadata accessor for CVBundle);
      }

      if (v57 == ++v58)
      {
        goto LABEL_28;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v8 = *(v54 + 16);

  v69 = v155;
  v70 = *(v156 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 56);
  v71 = v70;
  if ((*(v156 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 64) & 1) != 0 && (v71 = v70 + 1, __OFADD__(v70, 1)))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v159) = *(v156 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 64);
    v72 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_logger;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v73 = sub_1D8B151C0();
    LODWORD(v149) = sub_1D8B16200();
    v74 = os_log_type_enabled(v73, v149);
    v151 = v8;
    v150 = v71;
    if (!v74)
    {

      swift_bridgeObjectRelease_n();

      v83 = v152;
      v82 = v153;
      goto LABEL_47;
    }

    v146 = v73;
    v148 = v70;
    v147 = v72;
    a2 = v8 >= v71;
    v75 = swift_slowAlloc();
    *v75 = 67109888;
    *(v75 + 4) = a2;
    *(v75 + 8) = 2048;
    *(v75 + 10) = *(v55 + 16);
    *(v75 + 18) = 2048;
    v76 = *(v55 + 16);
    if (v76)
    {
      v77 = 0;
      v54 = MEMORY[0x1E69E7CC0];
      v8 = v157;
      while (v77 < *(v55 + 16))
      {
        a2 = (*(v164 + 80) + 32) & ~*(v164 + 80);
        v78 = *(v164 + 72);
        sub_1D8ABD1B8(v55 + a2 + v78 * v77, v8, type metadata accessor for CVBundle);
        if (sub_1D8919304())
        {
          sub_1D8ABD220(v8, v158, type metadata accessor for CVBundle);
          v79 = swift_isUniquelyReferenced_nonNull_native();
          v165 = v54;
          if ((v79 & 1) == 0)
          {
            sub_1D87F4074(0, *(v54 + 16) + 1, 1);
            v54 = v165;
          }

          v81 = *(v54 + 16);
          v80 = *(v54 + 24);
          if (v81 >= v80 >> 1)
          {
            sub_1D87F4074(v80 > 1, v81 + 1, 1);
            v54 = v165;
          }

          *(v54 + 16) = v81 + 1;
          sub_1D8ABD220(v158, v54 + a2 + v81 * v78, type metadata accessor for CVBundle);
          a1 = v161;
          v8 = v157;
        }

        else
        {
          sub_1D8ABD158(v8, type metadata accessor for CVBundle);
        }

        if (v76 == ++v77)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_106;
    }

    v54 = MEMORY[0x1E69E7CC0];
LABEL_44:
    v84 = *(v54 + 16);

    *(v75 + 20) = v84;

    *(v75 + 28) = 2048;

    v83 = v152;
    v82 = v153;
    v71 = v150;
    if ((v159 & 1) == 0 || (v85 = __OFADD__(v148, 1), ++v148, !v85))
    {
      *(v75 + 30) = v148;

      v86 = v146;
      _os_log_impl(&dword_1D8783000, v146, v149, "bundlesToService: isDoneRefining=%{BOOL}d, rankedCount=%ld, refinedInRanked=%ld, maxCount=%ld", v75, 0x26u);
      MEMORY[0x1DA721330](v75, -1, -1);

      v69 = v155;
LABEL_47:

      a2 = sub_1D8B151C0();
      v87 = sub_1D8B16200();

      if (!os_log_type_enabled(a2, v87))
      {

LABEL_67:
        v160 = v151 < v71;
        v54 = a1[2].isa;
        if (v54)
        {
          v125 = 0;
          v126 = MEMORY[0x1E69E7CC0];
          while (v125 < a1[2].isa)
          {
            a2 = (*(v164 + 80) + 32) & ~*(v164 + 80);
            v127 = *(v164 + 72);
            sub_1D8ABD1B8(a1 + a2 + v127 * v125, v83, type metadata accessor for CVBundle);
            if (sub_1D88465D8(v83, v55))
            {
              sub_1D8ABD158(v83, type metadata accessor for CVBundle);
            }

            else
            {
              sub_1D8ABD220(v83, v82, type metadata accessor for CVBundle);
              v128 = swift_isUniquelyReferenced_nonNull_native();
              v165 = v126;
              if ((v128 & 1) == 0)
              {
                sub_1D87F4074(0, v126[2].isa + 1, 1);
                v126 = v165;
              }

              v130 = v126[2].isa;
              v129 = v126[3].isa;
              v8 = (v130 + 1);
              if (v130 >= v129 >> 1)
              {
                sub_1D87F4074(v129 > 1, v130 + 1, 1);
                v126 = v165;
              }

              v126[2].isa = v8;
              sub_1D8ABD220(v82, v126 + a2 + v130 * v127, type metadata accessor for CVBundle);
              a1 = v161;
            }

            if (v54 == ++v125)
            {
              goto LABEL_79;
            }
          }

          goto LABEL_105;
        }

        v126 = MEMORY[0x1E69E7CC0];
LABEL_79:

        v167 = v126;
        sub_1D8864124(0, 0, v55);

        a1 = v167;
        v54 = v162;
        goto LABEL_80;
      }

      LODWORD(v156) = v87;
      v157 = a2;
      v88 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v166 = v149;
      v158 = v88;
      *v88 = 136315394;
      v89 = *(v55 + 16);
      v90 = MEMORY[0x1E69E7CC0];
      if (v89)
      {
        v165 = MEMORY[0x1E69E7CC0];
        sub_1D87F3F54(0, v89, 0);
        v90 = v165;
        v91 = v55 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
        v159 = *(v164 + 72);
        do
        {
          v92 = v160;
          sub_1D8ABD1B8(v91, v160, type metadata accessor for CVBundle);
          v93 = sub_1D8919AAC();
          v95 = v94;
          sub_1D8ABD158(v92, type metadata accessor for CVBundle);
          v165 = v90;
          v97 = v90[2].isa;
          v96 = v90[3].isa;
          if (v97 >= v96 >> 1)
          {
            sub_1D87F3F54((v96 > 1), v97 + 1, 1);
            v90 = v165;
          }

          v90[2].isa = (v97 + 1);
          v98 = &v90[2 * v97];
          v98[4].isa = v93;
          v98[5].isa = v95;
          v91 += v159;
          --v89;
        }

        while (v89);
        v83 = v152;
        v82 = v153;
        v69 = v155;
      }

      v165 = v90;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      v100 = sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
      v101 = sub_1D8B15810();
      v103 = v102;

      v104 = sub_1D89AC714(v101, v103, &v166);

      v105 = v158;
      *(v158 + 1) = v104;
      *(v105 + 12) = 2080;
      v106 = v69[2];
      v155 = v100;
      if (v106)
      {
        v107 = sub_1D87F3834(v106, 0);
        v108 = sub_1D881702C(&v165, v107 + ((*(v164 + 80) + 32) & ~*(v164 + 80)), v106, v69);
        sub_1D87977A0();
        if (v108 == v106)
        {
LABEL_59:
          v148 = v99;
          v109 = *(v107 + 16);
          if (v109)
          {
            v165 = MEMORY[0x1E69E7CC0];
            sub_1D87F3F54(0, v109, 0);
            v110 = v165;
            v111 = (*(v164 + 80) + 32) & ~*(v164 + 80);
            v147 = v107;
            v112 = v107 + v111;
            v159 = *(v164 + 72);
            do
            {
              v113 = v160;
              sub_1D8ABD1B8(v112, v160, type metadata accessor for CVBundle);
              v114 = sub_1D8919AAC();
              v116 = v115;
              sub_1D8ABD158(v113, type metadata accessor for CVBundle);
              v165 = v110;
              v118 = v110[2].isa;
              v117 = v110[3].isa;
              if (v118 >= v117 >> 1)
              {
                sub_1D87F3F54((v117 > 1), v118 + 1, 1);
                v110 = v165;
              }

              v110[2].isa = (v118 + 1);
              v119 = &v110[2 * v118];
              v119[4].isa = v114;
              v119[5].isa = v116;
              v112 += v159;
              --v109;
            }

            while (v109);

            v83 = v152;
            v82 = v153;
          }

          else
          {

            v110 = MEMORY[0x1E69E7CC0];
          }

          v165 = v110;
          v120 = sub_1D8B15810();
          v122 = v121;

          v123 = sub_1D89AC714(v120, v122, &v166);

          v124 = v158;
          *(v158 + 14) = v123;
          a2 = v157;
          _os_log_impl(&dword_1D8783000, v157, v156, "bundlesToService: ranked=[%s], guaranteed=[%s]", v124, 0x16u);
          v8 = v149;
          swift_arrayDestroy();
          MEMORY[0x1DA721330](v8, -1, -1);
          MEMORY[0x1DA721330](v124, -1, -1);

          v71 = v150;
          goto LABEL_67;
        }

        __break(1u);
      }

      v107 = MEMORY[0x1E69E7CC0];
      goto LABEL_59;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1D8AAE43C(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  v2 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CVBundle.BundleType(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v31 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v30 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v30 - v21;
  sub_1D8ABD1B8(v32, v10, type metadata accessor for CVBundle.BundleType);
  v32 = v5;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = v4;
  if (EnumCaseMultiPayload == 1)
  {
    v24 = *(v12 + 32);
    v24(v20, v10, v11);
  }

  else
  {
    sub_1D8ABD220(v10, v4, type metadata accessor for CVTrackSnapshot);
    (*(v12 + 16))(v20, v4, v11);
    sub_1D8ABD158(v4, type metadata accessor for CVTrackSnapshot);
    v24 = *(v12 + 32);
  }

  v24(v22, v20, v11);
  sub_1D8ABD1B8(v33, v8, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v31;
    v24(v31, v8, v11);
  }

  else
  {
    v26 = v30;
    sub_1D8ABD220(v8, v30, type metadata accessor for CVTrackSnapshot);
    v25 = v31;
    (*(v12 + 16))(v31, v26, v11);
    sub_1D8ABD158(v26, type metadata accessor for CVTrackSnapshot);
  }

  v24(v17, v25, v11);
  sub_1D8AB859C(&qword_1EE0E9898, MEMORY[0x1E69695A8]);
  v27 = sub_1D8B158C0();
  v28 = *(v12 + 8);
  v28(v17, v11);
  v28(v22, v11);
  return (v27 & 1) == 0;
}

void *sub_1D8AAE838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v159 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for CVBundle.BundleType(0);
  v8 = MEMORY[0x1EEE9AC00](v165);
  v167 = (&v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v139 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v158 = &v139 - v13;
  v14 = sub_1D8B13240();
  v146 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v162 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v139 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v160 = &v139 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v152 = &v139 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v156 = &v139 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v161 = &v139 - v26;
  v27 = type metadata accessor for CVBundle(0);
  v147 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v157 = (&v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = MEMORY[0x1EEE9AC00](v28);
  v163 = &v139 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v149 = &v139 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v139 - v34;

  v36 = sub_1D8B151C0();
  v37 = sub_1D8B16200();

  v38 = os_log_type_enabled(v36, v37);
  v166 = a3;
  v164 = v14;
  v150 = a1;
  v151 = v35;
  v145 = a2;
  if (v38)
  {
    v143 = v37;
    v144 = v36;
    v39 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v169 = v141;
    v142 = v39;
    *v39 = 136315138;
    v40 = *(a1 + 16);
    v41 = MEMORY[0x1E69E7CC0];
    if (v40)
    {
      v140 = v12;
      v168 = MEMORY[0x1E69E7CC0];
      sub_1D87F3F54(0, v40, 0);
      v41 = v168;
      v42 = a1 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
      v148 = (v146 + 16);
      v43 = (v146 + 8);
      v154 = *(v147 + 72);
      v155 = (v146 + 32);
      v153 = (v146 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      do
      {
        v170 = 0;
        v171 = 0xE000000000000000;
        v44 = v167;
        sub_1D8ABD1B8(v42, v167, type metadata accessor for CVBundle.BundleType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v45 = *v155;
          v46 = v162;
          (*v155)(v162, v44, v14);
        }

        else
        {
          v47 = v159;
          sub_1D8ABD220(v44, v159, type metadata accessor for CVTrackSnapshot);
          v46 = v162;
          (*v148)(v162, v47, v14);
          sub_1D8ABD158(v47, type metadata accessor for CVTrackSnapshot);
          v45 = *v155;
        }

        (v45)(v19, v46, v14);
        sub_1D8B131E0();
        (*v43)(v19, v14);
        v48 = sub_1D881BE2C(8);
        v50 = v49;
        v52 = v51;
        v54 = v53;

        v55 = MEMORY[0x1DA71EF10](v48, v50, v52, v54);
        v57 = v56;

        MEMORY[0x1DA71EFA0](v55, v57);

        MEMORY[0x1DA71EFA0](32, 0xE100000000000000);
        v58 = sub_1D8919AAC();
        MEMORY[0x1DA71EFA0](v58);

        v59 = v170;
        v60 = v171;
        v168 = v41;
        v62 = v41[2];
        v61 = v41[3];
        if (v62 >= v61 >> 1)
        {
          sub_1D87F3F54((v61 > 1), v62 + 1, 1);
          v41 = v168;
        }

        v41[2] = v62 + 1;
        v63 = &v41[2 * v62];
        v63[4] = v59;
        v63[5] = v60;
        v42 += v154;
        --v40;
        v14 = v164;
        a1 = v150;
      }

      while (v40);
      v12 = v140;
      v35 = v151;
    }

    v170 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
    sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
    v64 = sub_1D8B15810();
    v66 = v65;

    v67 = sub_1D89AC714(v64, v66, &v169);

    v68 = v142;
    *(v142 + 1) = v67;
    v36 = v144;
    _os_log_impl(&dword_1D8783000, v144, v143, "Making DRQs for: [%s]", v68, 0xCu);
    v69 = v141;
    __swift_destroy_boxed_opaque_existential_1(v141);
    MEMORY[0x1DA721330](v69, -1, -1);
    MEMORY[0x1DA721330](v68, -1, -1);
  }

  v70 = *(a1 + 16);
  v71 = v158;
  v72 = v161;
  v162 = v70;
  if (v70)
  {
    v73 = a1 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
    v153 = *(v147 + 72);
    v148 = (v146 + 16);
    v74 = (v146 + 8);
    v155 = (v146 + 32);
    v154 = (v146 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v167 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D8ABD1B8(v73, v35, type metadata accessor for CVBundle);
      sub_1D8ABD1B8(v35, v71, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v76 = *v155;
        v77 = v156;
        (*v155)();
      }

      else
      {
        v78 = v159;
        sub_1D8ABD220(v71, v159, type metadata accessor for CVTrackSnapshot);
        v77 = v156;
        (*v148)(v156, v78, v14);
        sub_1D8ABD158(v78, type metadata accessor for CVTrackSnapshot);
        v76 = *v155;
      }

      (v76)(v72, v77, v14);
      v79 = v166;
      if (*(v166 + 16) && (v80 = sub_1D87EF764(v72), (v81 & 1) != 0))
      {
        v82 = *(*(v79 + 56) + 8 * v80);
        v83 = *v74;

        v83(v72, v14);
        v84 = v82[2];
        if (v84)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63240);
          v85 = *(type metadata accessor for DetectionRequest(0) - 8);
          v86 = *(v85 + 72);
          v87 = (*(v85 + 80) + 32) & ~*(v85 + 80);
          v88 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v88);
          if (!v86)
          {
            goto LABEL_89;
          }

          if ((result - v87) == 0x8000000000000000 && v86 == -1)
          {
            goto LABEL_91;
          }

          v88[2] = v84;
          v88[3] = 2 * ((result - v87) / v86);
          v90 = sub_1D881788C(&v170, v88 + v87, v84, v82);
          result = sub_1D87977A0();
          if (v90 != v84)
          {
            goto LABEL_90;
          }
        }

        else
        {

          v88 = MEMORY[0x1E69E7CC0];
        }

        v35 = v151;
      }

      else
      {
        (*v74)(v72, v14);
        v88 = MEMORY[0x1E69E7CC0];
      }

      sub_1D8ABD158(v35, type metadata accessor for CVBundle);
      v91 = v88[2];
      result = v167;
      v92 = v167[2];
      v93 = v92 + v91;
      if (__OFADD__(v92, v91))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v167;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v93 > v167[3] >> 1)
      {
        if (v92 <= v93)
        {
          v96 = v92 + v91;
        }

        else
        {
          v96 = v92;
        }

        v95 = sub_1D87C8C08(isUniquelyReferenced_nonNull_native, v96, 1, v167);
      }

      v72 = v161;
      v97 = v88[2];
      v167 = v95;
      if (v97)
      {
        v98 = (v95[3] >> 1) - v95[2];
        result = type metadata accessor for DetectionRequest(0);
        if (v98 < v91)
        {
          goto LABEL_85;
        }

        swift_arrayInitWithCopy();

        v72 = v161;
        v35 = v151;
        if (v91)
        {
          v99 = v167[2];
          v100 = __OFADD__(v99, v91);
          v101 = v99 + v91;
          if (v100)
          {
            goto LABEL_87;
          }

          v167[2] = v101;
        }
      }

      else
      {

        if (v91)
        {
          goto LABEL_82;
        }
      }

      v73 += v153;
      --v70;
      v71 = v158;
      if (!v70)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
  }

  else
  {
    v167 = MEMORY[0x1E69E7CC0];
LABEL_45:
    v102 = *(v145 + 16);
    if (v102)
    {
      v103 = (*(v147 + 80) + 32) & ~*(v147 + 80);
      v104 = v145 + v103;
      v105 = *(v147 + 72);
      v106 = MEMORY[0x1E69E7CC0];
      v107 = v149;
      do
      {
        sub_1D8ABD1B8(v104, v107, type metadata accessor for CVBundle);
        if (sub_1D8919304())
        {
          sub_1D8ABD158(v107, type metadata accessor for CVBundle);
        }

        else
        {
          sub_1D8ABD220(v107, v157, type metadata accessor for CVBundle);
          v108 = swift_isUniquelyReferenced_nonNull_native();
          v170 = v106;
          if ((v108 & 1) == 0)
          {
            sub_1D87F4074(0, v106[2] + 1, 1);
            v106 = v170;
          }

          v110 = v106[2];
          v109 = v106[3];
          if (v110 >= v109 >> 1)
          {
            sub_1D87F4074(v109 > 1, v110 + 1, 1);
            v106 = v170;
          }

          v106[2] = v110 + 1;
          sub_1D8ABD220(v157, v106 + v103 + v110 * v105, type metadata accessor for CVBundle);
          v107 = v149;
        }

        v104 += v105;
        --v102;
      }

      while (v102);
    }

    else
    {
      v106 = MEMORY[0x1E69E7CC0];
    }

    v111 = v166;
    v112 = v162;
    if (!v162)
    {
      v114 = MEMORY[0x1E69E7CC0];
LABEL_80:

      v170 = v167;
      sub_1D88F4838(v114);
      return v170;
    }

    v113 = v150 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
    v156 = *(v147 + 72);
    v155 = (v146 + 16);
    v157 = (v146 + 8);
    v114 = MEMORY[0x1E69E7CC0];
    v161 = (v146 + 32);
    v158 = ((v146 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v115 = v160;
    while (1)
    {
      v162 = v112;
      v117 = v163;
      sub_1D8ABD1B8(v113, v163, type metadata accessor for CVBundle);
      sub_1D8ABD1B8(v117, v12, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v118 = *v161;
        (*v161)(v115, v12, v14);
      }

      else
      {
        v119 = v159;
        sub_1D8ABD220(v12, v159, type metadata accessor for CVTrackSnapshot);
        (*v155)(v115, v119, v14);
        sub_1D8ABD158(v119, type metadata accessor for CVTrackSnapshot);
        v118 = *v161;
      }

      v120 = v14;
      v121 = v12;
      v122 = v152;
      v118(v152, v115, v120);
      if (*(v111 + 16) && (v123 = sub_1D87EF764(v122), (v124 & 1) != 0))
      {
        v125 = v122;
        v126 = *(*(v111 + 56) + 8 * v123);
        v127 = *v157;

        v128 = v127(v125, v164);
        MEMORY[0x1EEE9AC00](v128);
        v129 = v163;
        *(&v139 - 4) = v106;
        *(&v139 - 3) = v129;
        *(&v139 - 2) = v111;
        v130 = sub_1D8AA4554(sub_1D8ABD2E8, (&v139 - 6), v126);
      }

      else
      {
        (*v157)(v122, v164);
        v130 = MEMORY[0x1E69E7CC0];
      }

      result = sub_1D8ABD158(v163, type metadata accessor for CVBundle);
      v131 = *(v130 + 16);
      v132 = v114[2];
      v133 = v132 + v131;
      if (__OFADD__(v132, v131))
      {
        break;
      }

      v134 = swift_isUniquelyReferenced_nonNull_native();
      if ((v134 & 1) == 0 || v133 > v114[3] >> 1)
      {
        if (v132 <= v133)
        {
          v135 = v132 + v131;
        }

        else
        {
          v135 = v132;
        }

        v114 = sub_1D87C8C08(v134, v135, 1, v114);
      }

      v111 = v166;
      v115 = v160;
      if (*(v130 + 16))
      {
        v136 = (v114[3] >> 1) - v114[2];
        result = type metadata accessor for DetectionRequest(0);
        if (v136 < v131)
        {
          goto LABEL_86;
        }

        swift_arrayInitWithCopy();

        v111 = v166;
        v115 = v160;
        v116 = v162;
        if (v131)
        {
          v137 = v114[2];
          v100 = __OFADD__(v137, v131);
          v138 = v137 + v131;
          if (v100)
          {
            goto LABEL_88;
          }

          v114[2] = v138;
        }
      }

      else
      {

        v116 = v162;
        if (v131)
        {
          goto LABEL_84;
        }
      }

      v113 += v156;
      v112 = v116 - 1;
      v12 = v121;
      v14 = v164;
      if (!v112)
      {
        goto LABEL_80;
      }
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
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
  return result;
}

size_t sub_1D8AAF8D8(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64110);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = &v64 - v6;
  v69 = type metadata accessor for CVBundle(0);
  v7 = MEMORY[0x1EEE9AC00](v69);
  v65 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v64 = &v64 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v66 = &v64 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v64 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v68 = &v64 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v64 - v19;
  v21 = *(a1 + 16);
  v73 = v18;
  if (v21)
  {
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v23 = a1 + v22;
    v24 = *(v18 + 72);
    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D8ABD1B8(v23, v20, type metadata accessor for CVBundle);
      CVBundle.latestDetection.getter(&v74);
      if (v74 >> 60 != 11)
      {
        break;
      }

      v26 = type metadata accessor for SyntheticDetectionResult();
      if (*(swift_projectBox() + *(v26 + 24)))
      {
        v27 = sub_1D8B16BA0();

        if ((v27 & 1) == 0)
        {
          break;
        }
      }

      else
      {
      }

      sub_1D8ABD158(v20, type metadata accessor for CVBundle);

LABEL_5:
      v23 += v24;
      if (!--v21)
      {
        goto LABEL_15;
      }
    }

    sub_1D8ABD220(v20, v15, type metadata accessor for CVBundle);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D87F4074(0, *(v25 + 16) + 1, 1);
      v25 = v75;
    }

    v30 = *(v25 + 16);
    v29 = *(v25 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1D87F4074(v29 > 1, v30 + 1, 1);
      v25 = v75;
    }

    *(v25 + 16) = v30 + 1;
    sub_1D8ABD220(v15, v25 + v22 + v30 * v24, type metadata accessor for CVBundle);
    goto LABEL_5;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v31 = v70;
  sub_1D87A0E38(v71, v70, &qword_1ECA67980);
  v32 = v73;
  if ((*(v73 + 48))(v31, 1, v69) == 1)
  {
    sub_1D87A14E4(v31, &qword_1ECA67980);
    v33 = v72;
    v34 = sub_1D8B151C0();
    v35 = sub_1D8B16200();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1D8783000, v34, v35, "fullScreenBundle not provided", v36, 2u);
      MEMORY[0x1DA721330](v36, -1, -1);
    }

    v37 = sub_1D8AA8368(v25, *(v33 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 56), *(v33 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 40));

    return v37;
  }

  v38 = v68;
  sub_1D8ABD220(v31, v68, type metadata accessor for CVBundle);
  v39 = v72 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration;
  v40 = *(v72 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 40);
  if (*(v72 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 64) != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634D0);
    v48 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1D8B1AB90;
    sub_1D8ABD1B8(v38, v49 + v48, type metadata accessor for CVBundle);
    v75 = v25;
    sub_1D88F3C08(v49);
    v37 = sub_1D8AA8368(v75, *(v39 + 56), v40);

LABEL_28:
    v50 = v38;
LABEL_29:
    sub_1D8ABD158(v50, type metadata accessor for CVBundle);
    return v37;
  }

  v41 = v32;
  result = sub_1D8AA8368(v25, *(v39 + 56), *(v39 + 40));
  v37 = result;
  v44 = v43;
  if (!*(result + 16))
  {
    v51 = *(v25 + 16);
    if (!v51)
    {

      v61 = (*(v32 + 80) + 32) & ~*(v32 + 80);
LABEL_41:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634D0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1D8B1AB90;
      v62 = v37 + v61;
      v63 = v68;
      sub_1D8ABD1B8(v68, v62, type metadata accessor for CVBundle);
      v50 = v63;
      goto LABEL_29;
    }

    v52 = 0;
    v53 = *(v32 + 80);
    v71 = v53;
    v72 = (v53 + 32) & ~v53;
    v54 = v25 + v72;
    v55 = v66;
    while (v52 < *(v25 + 16))
    {
      sub_1D8ABD1B8(v54 + *(v41 + 72) * v52, v55, type metadata accessor for CVBundle);
      v56 = CVBundle.classifications.getter()[2];

      if (v56)
      {
        result = sub_1D8ABD158(v55, type metadata accessor for CVBundle);
      }

      else
      {
        v57 = sub_1D8919304();
        result = sub_1D8ABD158(v55, type metadata accessor for CVBundle);
        if ((v57 & 1) == 0)
        {

          v75 = v44;
          v58 = v68;
          v59 = v65;
          sub_1D8ABD1B8(v68, v65, type metadata accessor for CVBundle);
          v60 = v64;
          sub_1D87F99C4(v64, v59);
          sub_1D8ABD158(v60, type metadata accessor for CVBundle);
          sub_1D8ABD158(v58, type metadata accessor for CVBundle);
          return v37;
        }
      }

      if (v51 == ++v52)
      {

        v61 = v72;
        goto LABEL_41;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  if (!*(v37 + 16))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v45 = v67;
  result = sub_1D8ABD1B8(v38, v67, type metadata accessor for CVBundle);
  v46 = *(v37 + 16);
  if (v46)
  {
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v37;
    if (!v47 || v46 >= *(v37 + 24) >> 1)
    {
      v37 = sub_1D87C7E90(v47, v46 + 1, 1, v37);
      v75 = v37;
    }

    sub_1D885D08C(1, 1, 1, v45);
    goto LABEL_28;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1D8AB0148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a2;
  v75 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C08);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v68 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v68 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v69 = &v68 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v72 = &v68 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v68 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v68 - v23;
  v25 = *(a3 + 32);
  v70 = *(a3 + 40);
  sub_1D87A0E38(a1, v11, &qword_1ECA68C08);
  v74 = v13;
  v26 = *(v13 + 48);
  if (v26(v11, 1, v12) == 1)
  {
    sub_1D87A14E4(v11, &qword_1ECA68C08);
    sub_1D87A0E38(v71, v9, &qword_1ECA68C08);
    if (v26(v9, 1, v12) == 1)
    {
      v27 = &qword_1ECA68C08;
      v28 = v9;
    }

    else
    {
      v43 = v69;
      sub_1D881F6FC(v9, v69, &qword_1ECA63DC0);
      v44 = v72;
      sub_1D87A0E38(v43, v72, &qword_1ECA63DC0);
      sub_1D8AB09C0();
      v46 = v45;
      sub_1D8ABD158(v44, type metadata accessor for CVBundle);
      sub_1D87A0E38(v43, v44, &qword_1ECA63DC0);
      CVBundle.latestEstimate.getter(v81);
      v47 = v81[0];
      sub_1D8ABD158(v44, type metadata accessor for CVBundle);
      v80 = v47;
      CVDetection.detection.getter(&v76);
      v48 = v78;
      v49 = v79;
      __swift_project_boxed_opaque_existential_1(&v76, v78);
      v50 = (*(v49 + 88))(v48, v49);

      __swift_destroy_boxed_opaque_existential_1(&v76);
      if (v46 > v25 - v50)
      {
        v30 = v75;
        sub_1D881F6FC(v43, v75, &qword_1ECA63DC0);
        v29 = 0;
        return (*(v74 + 56))(v30, v29, 1, v12);
      }

      v52 = v68;
      sub_1D87A0E38(v43, v68, &qword_1ECA63DC0);
      v53 = sub_1D8B151C0();
      v54 = sub_1D8B161F0();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v71 = v12;
        v73 = v56;
        v81[0] = v56;
        *v55 = 136315394;
        v57 = v52;
        v58 = v52;
        v59 = v72;
        sub_1D87A0E38(v57, v72, &qword_1ECA63DC0);
        v60 = sub_1D8919AAC();
        v62 = v61;
        sub_1D87A14E4(v58, &qword_1ECA63DC0);
        sub_1D8ABD158(v59, type metadata accessor for CVBundle);
        v63 = sub_1D89AC714(v60, v62, v81);

        *(v55 + 4) = v63;
        *(v55 + 12) = 2080;
        v64 = 0xE000000000000000;
        v76 = 0;
        v77 = 0xE000000000000000;
        sub_1D8B16020();
        if (v70)
        {
          v65 = 0x296C6C6974532820;
        }

        else
        {
          v65 = 0;
        }

        if (v70)
        {
          v64 = 0xE800000000000000;
        }

        MEMORY[0x1DA71EFA0](v65, v64);

        v66 = sub_1D89AC714(v76, v77, v81);

        *(v55 + 14) = v66;
        _os_log_impl(&dword_1D8783000, v53, v54, "Time is up. The bundle %s is leaving the party at %s.", v55, 0x16u);
        v67 = v73;
        swift_arrayDestroy();
        v12 = v71;
        MEMORY[0x1DA721330](v67, -1, -1);
        MEMORY[0x1DA721330](v55, -1, -1);

        v28 = v43;
        v27 = &qword_1ECA63DC0;
      }

      else
      {

        sub_1D87A14E4(v52, &qword_1ECA63DC0);
        v28 = v43;
        v27 = &qword_1ECA63DC0;
      }
    }

    sub_1D87A14E4(v28, v27);
    v29 = 1;
    v30 = v75;
  }

  else
  {
    v71 = v12;
    sub_1D881F6FC(v11, v24, &qword_1ECA63DC0);
    sub_1D87A0E38(v24, v22, &qword_1ECA63DC0);
    v31 = sub_1D8B151C0();
    v32 = sub_1D8B161F0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v81[0] = v73;
      *v33 = 136315394;
      v34 = v72;
      sub_1D87A0E38(v22, v72, &qword_1ECA63DC0);
      v35 = sub_1D8919AAC();
      v37 = v36;
      sub_1D87A14E4(v22, &qword_1ECA63DC0);
      sub_1D8ABD158(v34, type metadata accessor for CVBundle);
      v38 = sub_1D89AC714(v35, v37, v81);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2080;
      v39 = 0xE000000000000000;
      v76 = 0;
      v77 = 0xE000000000000000;
      sub_1D8B16020();
      if (v70)
      {
        v40 = 0x296C6C6974532820;
      }

      else
      {
        v40 = 0;
      }

      if (v70)
      {
        v39 = 0xE800000000000000;
      }

      MEMORY[0x1DA71EFA0](v40, v39);

      v41 = sub_1D89AC714(v76, v77, v81);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_1D8783000, v31, v32, "Using highest saliency bundle %s at %s.", v33, 0x16u);
      v42 = v73;
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v42, -1, -1);
      MEMORY[0x1DA721330](v33, -1, -1);
    }

    else
    {

      sub_1D87A14E4(v22, &qword_1ECA63DC0);
    }

    v30 = v75;
    sub_1D881F6FC(v24, v75, &qword_1ECA63DC0);
    v29 = 0;
    v12 = v71;
  }

  return (*(v74 + 56))(v30, v29, 1, v12);
}

uint64_t sub_1D8AB09C0()
{
  v0 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CVBundle.classifications.getter();
  v4 = result;
  v5 = *(result + 16);
  if (!v5)
  {
  }

  v6 = 0;
  while (v6 < *(v4 + 16))
  {
    v7 = *(type metadata accessor for BundleClassification(0) - 8);
    sub_1D8ABD1B8(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6, v2, type metadata accessor for BundleClassification.ClassificationType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {

      return sub_1D8ABD158(v2, type metadata accessor for BundleClassification.ClassificationType);
    }

    ++v6;
    result = sub_1D8ABD158(v2, type metadata accessor for BundleClassification.ClassificationType);
    if (v5 == v6)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AB0B60@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v98 = a2;
  v5 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v104 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for CVBundle.BundleType(0);
  v7 = MEMORY[0x1EEE9AC00](v108);
  v102 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v94 - v9;
  v11 = sub_1D8B13240();
  v105 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v101 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v103 = &v94 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v100 = &v94 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v109 = &v94 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C08);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v99 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v94 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0);
  v111 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v97 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v94 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v94 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v110 = &v94 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v94 - v35;
  v37 = type metadata accessor for CVBundle(0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v38 + 16))
  {
    v107 = a3;
    v41 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v96 = v38;
    sub_1D87A0E38(v38 + v41, v36, &qword_1ECA63DC0);
    v42 = *&v36[*(v24 + 48)];
    sub_1D8ABD220(v36, v40, type metadata accessor for CVBundle);
    sub_1D87A0E38(a1, v23, &qword_1ECA68C08);
    v43 = *(v111 + 48);
    if (v43(v23, 1, v24) == 1)
    {
      sub_1D87A14E4(v23, &qword_1ECA68C08);
      v44 = *(v24 + 48);
      v45 = v107;
      sub_1D8ABD220(v40, v107, type metadata accessor for CVBundle);
      *(v45 + v44) = v42;
      return (*(v111 + 56))(v45, 0, 1, v24);
    }

    v95 = v43;
    v48 = v23;
    v49 = v110;
    sub_1D881F6FC(v48, v110, &qword_1ECA63DC0);
    sub_1D87A0E38(v49, v32, &qword_1ECA63DC0);
    CVBundle.latestEstimate.getter(&v117);
    v50 = v117;
    sub_1D8ABD158(v32, type metadata accessor for CVBundle);
    v116 = v50;
    CVDetection.detection.getter(v113);
    v51 = v114;
    v52 = v115;
    __swift_project_boxed_opaque_existential_1(v113, v114);
    v53 = (*(v52 + 88))(v51, v52);

    __swift_destroy_boxed_opaque_existential_1(v113);
    CVBundle.latestEstimate.getter(&v116);
    v112 = v116;
    CVDetection.detection.getter(v113);
    v54 = v114;
    v55 = v115;
    __swift_project_boxed_opaque_existential_1(v113, v114);
    v56 = (*(v55 + 88))(v54, v55);

    __swift_destroy_boxed_opaque_existential_1(v113);
    if (v53 > v56)
    {
      v57 = v40;
      v58 = sub_1D8B151C0();
      v59 = sub_1D8B16210();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1D8783000, v58, v59, "Best candidate should be newer than current sample.", v60, 2u);
        MEMORY[0x1DA721330](v60, -1, -1);
      }

      sub_1D8ABD158(v57, type metadata accessor for CVBundle);
      v61 = v110;
      v62 = v107;
      sub_1D87A0E38(v110, v107, &qword_1ECA63DC0);
      (*(v111 + 56))(v62, 0, 1, v24);
      v63 = v61;
      return sub_1D87A14E4(v63, &qword_1ECA63DC0);
    }

    sub_1D8ABD1B8(v40, v10, type metadata accessor for CVBundle.BundleType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v94 = v40;
    if (EnumCaseMultiPayload == 1)
    {
      v65 = v105;
      v66 = *(v105 + 32);
      v67 = v100;
      v66(v100, v10, v11);
    }

    else
    {
      v68 = v10;
      v69 = v104;
      sub_1D8ABD220(v68, v104, type metadata accessor for CVTrackSnapshot);
      v65 = v105;
      v67 = v100;
      (*(v105 + 16))(v100, v69, v11);
      sub_1D8ABD158(v69, type metadata accessor for CVTrackSnapshot);
      v66 = *(v65 + 32);
    }

    v70 = v101;
    v66(v109, v67, v11);
    sub_1D87A0E38(v110, v29, &qword_1ECA63DC0);
    v71 = v102;
    sub_1D8ABD1B8(v29, v102, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v66(v70, v71, v11);
    }

    else
    {
      v72 = v71;
      v73 = v104;
      sub_1D8ABD220(v72, v104, type metadata accessor for CVTrackSnapshot);
      (*(v65 + 16))(v70, v73, v11);
      sub_1D8ABD158(v73, type metadata accessor for CVTrackSnapshot);
    }

    v74 = v70;
    v75 = v103;
    v66(v103, v74, v11);
    sub_1D8ABD158(v29, type metadata accessor for CVBundle);
    sub_1D8AB859C(&qword_1EE0E9898, MEMORY[0x1E69695A8]);
    v76 = v109;
    v77 = sub_1D8B158C0();
    v78 = *(v65 + 8);
    v78(v75, v11);
    v79 = (v78)(v76, v11);
    if (v77)
    {
LABEL_20:
      v81 = *(v24 + 48);
      v82 = v107;
      sub_1D8ABD220(v94, v107, type metadata accessor for CVBundle);
      *(v82 + v81) = v42;
      (*(v111 + 56))(v82, 0, 1, v24);
      v63 = v110;
      return sub_1D87A14E4(v63, &qword_1ECA63DC0);
    }

    MEMORY[0x1EEE9AC00](v79);
    *(&v94 - 2) = v110;
    v80 = v99;
    sub_1D87EE250(sub_1D8ABDE00, v96, v99);
    if (v95(v80, 1, v24) == 1)
    {
      sub_1D87A14E4(v80, &qword_1ECA68C08);
      goto LABEL_20;
    }

    v83 = v97;
    sub_1D881F6FC(v80, v97, &qword_1ECA63DC0);
    v84 = 0.0;
    v85 = v107;
    if ((v98 & 1) == 0)
    {
LABEL_29:
      if ((v84 + *(v83 + *(v24 + 48))) >= v42)
      {
        sub_1D8ABD158(v94, type metadata accessor for CVBundle);
        sub_1D881F6FC(v83, v85, &qword_1ECA63DC0);
      }

      else
      {
        sub_1D87A14E4(v83, &qword_1ECA63DC0);
        v93 = *(v24 + 48);
        sub_1D8ABD220(v94, v85, type metadata accessor for CVBundle);
        *(v85 + v93) = v42;
      }

      (*(v111 + 56))(v85, 0, 1, v24);
      v63 = v110;
      return sub_1D87A14E4(v63, &qword_1ECA63DC0);
    }

    v86 = v106;
    v87 = *(v106 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker + 24);
    v88 = *(v106 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker + 32);
    __swift_project_boxed_opaque_existential_1((v106 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker), v87);
    v89 = (*(v88 + 16))(v87, v88);
    v91 = v90 - v89;
    if (*(v86 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 42) > 1u)
    {
      if (*(v86 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 42) == 2)
      {
        goto LABEL_25;
      }
    }

    else if (!*(v86 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 42))
    {
LABEL_25:
      v92 = 0.06;
LABEL_28:
      v84 = v91 * v92;
      goto LABEL_29;
    }

    v92 = 0.1;
    goto LABEL_28;
  }

  v47 = *(v111 + 56);

  return v47(a3, 1, 1, v24);
}

uint64_t sub_1D8AB1804(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v37 = a1;
  v2 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CVBundle.BundleType(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v9 = sub_1D8B13240();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v41 = &v34 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v38 = &v34 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DC0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v34 - v23;
  sub_1D87A0E38(v37, &v34 - v23, &qword_1ECA63DC0);
  sub_1D8ABD1B8(v24, v8, type metadata accessor for CVBundle.BundleType);
  v37 = v4;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *(v10 + 32);
    v25(v17, v8, v9);
    v26 = v35;
  }

  else
  {
    v26 = v35;
    sub_1D8ABD220(v8, v35, type metadata accessor for CVTrackSnapshot);
    (*(v10 + 16))(v17, v26, v9);
    sub_1D8ABD158(v26, type metadata accessor for CVTrackSnapshot);
    v25 = *(v10 + 32);
  }

  v27 = v38;
  v25(v38, v17, v9);
  sub_1D8ABD158(v24, type metadata accessor for CVBundle);
  sub_1D87A0E38(v40, v22, &qword_1ECA63DC0);
  v28 = v39;
  sub_1D8ABD1B8(v22, v39, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v36;
    v25(v36, v28, v9);
  }

  else
  {
    sub_1D8ABD220(v28, v26, type metadata accessor for CVTrackSnapshot);
    v29 = v36;
    (*(v10 + 16))(v36, v26, v9);
    sub_1D8ABD158(v26, type metadata accessor for CVTrackSnapshot);
  }

  v30 = v41;
  v25(v41, v29, v9);
  sub_1D8ABD158(v22, type metadata accessor for CVBundle);
  v31 = sub_1D8B13200();
  v32 = *(v10 + 8);
  v32(v30, v9);
  v32(v27, v9);
  return v31 & 1;
}

float BundleSelector.deadbandSize.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker + 24);
  v2 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker), v1);
  v3 = (*(v2 + 16))(v1, v2);
  return (v4 - v3) * flt_1D8B3BE10[*(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 42)];
}

uint64_t BundleSelector.deinit()
{

  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_outputStreamBufferingPolicy;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64810);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_logger;
  v4 = sub_1D8B151E0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_stillRanker);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingRanker);

  sub_1D87A14E4(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_userSelectedBundle, &qword_1ECA67980);

  sub_1D87A14E4(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_streamingMostSalientBundleAndScore, &qword_1ECA68C08);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BundleSelector.__deallocating_deinit()
{
  BundleSelector.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D8AB1EF8(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68E60);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68E68);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68E70);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8ABCDC4();
  sub_1D8B16DD0();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1D8ABCE18();
    sub_1D8B16A40();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1D8ABCE6C();
    sub_1D8B16A40();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1D8AB21B4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1953718636;
  }
}

uint64_t sub_1D8AB21EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953718636 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D8B16BA0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B48BD0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D8B16BA0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D8AB22D0(uint64_t a1)
{
  v2 = sub_1D8ABCDC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB230C(uint64_t a1)
{
  v2 = sub_1D8ABCDC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB2348(uint64_t a1)
{
  v2 = sub_1D8ABCE6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB2384(uint64_t a1)
{
  v2 = sub_1D8ABCE6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB23C0(uint64_t a1)
{
  v2 = sub_1D8ABCE18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB23FC(uint64_t a1)
{
  v2 = sub_1D8ABCE18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB2438@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8ABC638(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1D8AB2494()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 1953718636;
  }
}

void BundleSelector.Configuration.pinPresentableUIArea.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

int64x2_t static BundleSelector.Configuration.practicallyUnlimitedBundles.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 40) = 16908290;
  result = vdupq_n_s64(0x270FuLL);
  *(a1 + 48) = result;
  *(a1 + 64) = 1;
  return result;
}

unint64_t sub_1D8AB265C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000015;
    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000014;
    if (!a1)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000030;
    v2 = 0xD00000000000001CLL;
    if (a1 != 7)
    {
      v2 = 0xD00000000000001DLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000021;
    if (a1 == 4)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D8AB2768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8ABCAF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8AB2790(uint64_t a1)
{
  v2 = sub_1D8AB8680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB27CC(uint64_t a1)
{
  v2 = sub_1D8AB8680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleSelector.Configuration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - v5;
  v7 = *(v1 + 8);
  v20 = *(v1 + 24);
  v21 = v7;
  v25 = *(v1 + 40);
  v8 = *(v1 + 41);
  v18 = *(v1 + 42);
  v19 = v8;
  v17 = *(v1 + 43);
  v9 = *(v1 + 48);
  v16[0] = *(v1 + 56);
  v16[1] = v9;
  v10 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AB8680();
  sub_1D8B16DD0();
  LOBYTE(v23) = 0;
  v11 = v22;
  sub_1D8B16AA0();
  if (!v11)
  {
    v12 = v25;
    v13 = v18;
    v14 = v19;
    LODWORD(v22) = v10;
    v23 = v21;
    v24 = v20;
    v26 = 1;
    type metadata accessor for CGRect(0);
    sub_1D8AB859C(&qword_1ECA67820, type metadata accessor for CGRect);
    sub_1D8B16AE0();
    LOBYTE(v23) = v12;
    v26 = 2;
    sub_1D8AB86D4();
    sub_1D8B16AE0();
    LOBYTE(v23) = v14;
    v26 = 3;
    sub_1D8AB8728();
    sub_1D8B16AE0();
    LOBYTE(v23) = v13;
    v26 = 4;
    sub_1D8B16AE0();
    LOBYTE(v23) = v17;
    v26 = 5;
    sub_1D8AB877C();
    sub_1D8B16AE0();
    LOBYTE(v23) = 6;
    sub_1D8B16AD0();
    LOBYTE(v23) = 7;
    sub_1D8B16AD0();
    LOBYTE(v23) = v22;
    v26 = 8;
    sub_1D8AB87D0();
    sub_1D8B16AE0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t BundleSelector.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AB8680();
  sub_1D8B16DB0();
  if (!v2)
  {
    LOBYTE(v23) = 0;
    v9 = sub_1D8B169D0();
    type metadata accessor for CGRect(0);
    v26 = 1;
    sub_1D8AB859C(&qword_1ECA64778, type metadata accessor for CGRect);
    sub_1D8B16A10();
    v21 = v23;
    v22 = v24;
    v26 = 2;
    sub_1D8AB8824();
    sub_1D8B16A10();
    v25 = v23;
    v26 = 3;
    sub_1D8AB8878();
    sub_1D8B16A10();
    v20 = v23;
    v26 = 4;
    sub_1D8B16A10();
    v10 = v23;
    v26 = 5;
    sub_1D8AB88CC();
    sub_1D8B16A10();
    v19 = v10;
    LOBYTE(v10) = v23;
    LOBYTE(v23) = 6;
    v18 = sub_1D8B16A00();
    LOBYTE(v23) = 7;
    v17 = sub_1D8B16A00();
    v26 = 8;
    sub_1D8AB8920();
    sub_1D8B16A10();
    (*(v6 + 8))(v8, v5);
    v12 = v23;
    *a2 = v9 & 1;
    v13 = v22;
    *(a2 + 8) = v21;
    *(a2 + 24) = v13;
    *(a2 + 40) = v25;
    v14 = v19;
    *(a2 + 41) = v20;
    *(a2 + 42) = v14;
    *(a2 + 43) = v10;
    v15 = v17;
    *(a2 + 48) = v18;
    *(a2 + 56) = v15;
    *(a2 + 64) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double sub_1D8AB2F30@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 40) = 16908290;
  *&result = 10;
  *(a1 + 48) = xmmword_1D8B190E0;
  *(a1 + 64) = 1;
  return result;
}

unint64_t BundleSelector.Configuration.RankingAlgorithmPreset.description.getter()
{
  v1 = 1634038337;
  v2 = 0x6867697365726F42;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void BundleSelector.Configuration.RankingAlgorithmPreset.configuration.getter(uint64_t a1@<X8>)
{
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      v2 = 0;
      v3 = 0;
      v4 = 1;
      v5 = xmmword_1D8B3BE00;
      v6 = 0.16;
    }

    else
    {
      v4 = 0;
      v5 = xmmword_1D8B3BDF0;
      v3 = 0x3F80000000000000;
      v6 = 1.0;
      v2 = 1001;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 1;
    if (*v1)
    {
      v5 = xmmword_1D8B3BE00;
      v6 = 0.2;
    }

    else
    {
      v5 = xmmword_1D8B3BDF0;
      v6 = 1.0;
    }
  }

  *a1 = 0x3FE0000000000000;
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  *(a1 + 48) = v2;
  *(a1 + 56) = v4;
  *(a1 + 60) = v3;
  *(a1 + 68) = v4;
}

uint64_t sub_1D8AB3100(uint64_t a1)
{
  v2 = sub_1D8AB8AC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB313C(uint64_t a1)
{
  v2 = sub_1D8AB8AC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB3178(uint64_t a1)
{
  v2 = sub_1D8AB8A1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB31B4(uint64_t a1)
{
  v2 = sub_1D8AB8A1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB31F0(uint64_t a1)
{
  v2 = sub_1D8AB8A70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB322C(uint64_t a1)
{
  v2 = sub_1D8AB8A70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D8AB3268()
{
  v1 = 1634038369;
  v2 = 0xD000000000000025;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8AB32E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8ABCEC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8AB3310(uint64_t a1)
{
  v2 = sub_1D8AB8974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB334C(uint64_t a1)
{
  v2 = sub_1D8AB8974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB3388(uint64_t a1)
{
  v2 = sub_1D8AB89C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB33C4(uint64_t a1)
{
  v2 = sub_1D8AB89C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleSelector.Configuration.RankingAlgorithmPreset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C68);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C70);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C78);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C80);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68C88);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AB8974();
  sub_1D8B16DD0();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1D8AB8A1C();
      v18 = v27;
      sub_1D8B16A40();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1D8AB89C8();
      v18 = v30;
      sub_1D8B16A40();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1D8AB8A70();
    v18 = v24;
    sub_1D8B16A40();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1D8AB8AC4();
  sub_1D8B16A40();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t BundleSelector.Configuration.RankingAlgorithmPreset.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CB8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CC0);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CC8);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CD0);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CD8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8AB8974();
  v15 = v46;
  sub_1D8B16DB0();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1D8B16A20();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1D881F7BC();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1D8B16770();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
      *v28 = &type metadata for BundleSelector.Configuration.RankingAlgorithmPreset;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1D8AB8A70();
        v32 = v35;
        sub_1D8B16950();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1D8AB8AC4();
        v25 = v35;
        sub_1D8B16950();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1D8AB8A1C();
      v31 = v35;
      sub_1D8B16950();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1D8AB89C8();
      v33 = v35;
      sub_1D8B16950();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

unint64_t sub_1D8AB3F10()
{
  v1 = 1634038337;
  v2 = 0x6867697365726F42;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

float BundleSelector.Configuration.RankingAlgorithmPreset.scoreRange.getter()
{
  v8 = *v0;
  BundleSelector.Configuration.RankingAlgorithmPreset.bundleRanker.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

float sub_1D8AB4024()
{
  v8 = *v0;
  BundleSelector.Configuration.RankingAlgorithmPreset.bundleRanker.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D8AB40B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v84 - v2;
  v4 = type metadata accessor for BundleClassification(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for BundleClassification.ClassificationType(0);
  v103 = *(v105 - 8);
  v7 = MEMORY[0x1EEE9AC00](v105);
  v88 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v104 = &v84 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v84 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v84 - v14;
  v15 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v94 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for CVBundle.BundleType(0);
  v17 = MEMORY[0x1EEE9AC00](v97);
  v90 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v84 - v19;
  v21 = sub_1D8B13240();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v91 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v92 = &v84 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  *&v101 = &v84 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v102 = &v84 - v29;
  v30 = type metadata accessor for SyntheticDetectionResult();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v0;
  CVBundle.latestEstimate.getter(&v106);
  if (v106 >> 60 != 11)
  {
    v86 = v22;
    v87 = v21;
    v85 = v6;

    goto LABEL_6;
  }

  v33 = swift_projectBox();
  sub_1D8ABD1B8(v33, v32, type metadata accessor for SyntheticDetectionResult);

  if ((v32[*(v30 + 24)] & 1) == 0)
  {

    goto LABEL_34;
  }

  v34 = sub_1D8B16BA0();

  if (v34)
  {
LABEL_34:
    sub_1D8ABD1B8(v99, v20, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61 = *(v22 + 32);
      v62 = v101;
      v61(v101, v20, v21);
    }

    else
    {
      v69 = v94;
      sub_1D8ABD220(v20, v94, type metadata accessor for CVTrackSnapshot);
      v62 = v101;
      (*(v22 + 16))(v101, v69, v21);
      sub_1D8ABD158(v69, type metadata accessor for CVTrackSnapshot);
      v61 = *(v22 + 32);
    }

    v70 = v102;
    v61(v102, v62, v21);
    v60 = sub_1D8B131E0();
    (*(v22 + 8))(v70, v21);
    v71 = type metadata accessor for SyntheticDetectionResult;
    v72 = v32;
    goto LABEL_40;
  }

  v86 = v22;
  v87 = v21;
  v85 = v6;
  sub_1D8ABD158(v32, type metadata accessor for SyntheticDetectionResult);
LABEL_6:
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63410);
  v36 = *(v103 + 72);
  v37 = (*(v103 + 80) + 32) & ~*(v103 + 80);
  v102 = *(v103 + 80);
  v103 = v35;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D8B1AB70;
  v93 = v38;
  v39 = (v38 + v37);
  *v39 = MEMORY[0x1E69E7CC0];
  v39[1] = 0;
  swift_storeEnumTagMultiPayload();
  v40 = v39 + v36;
  v96 = xmmword_1D8B190C0;
  *v40 = xmmword_1D8B190C0;
  *(v40 + 2) = 0xE700000000000000;
  *(v40 + 3) = 0x7974706D65;
  *(v40 + 4) = 0xE500000000000000;
  *(v40 + 5) = 0;
  swift_storeEnumTagMultiPayload();
  *(v39 + 2 * v36) = MEMORY[0x1E69E7CD0];
  v41 = v36;
  swift_storeEnumTagMultiPayload();
  v95 = *MEMORY[0x1E69C9C08];
  v42 = 3;
  v101 = xmmword_1D8B1AB90;
  v89 = v39;
  v43 = v98;
  v44 = v99;
  v100 = v41;
  while (1)
  {
    sub_1D8ABD1B8(v39, v43, type metadata accessor for BundleClassification.ClassificationType);
    v46 = swift_allocObject();
    *(v46 + 16) = v101;
    sub_1D8ABD1B8(v43, v46 + v37, type metadata accessor for BundleClassification.ClassificationType);
    v47 = sub_1D8920388(v46);
    swift_setDeallocating();
    sub_1D8ABD158(v46 + v37, type metadata accessor for BundleClassification.ClassificationType);
    swift_deallocClassInstance();
    if ((v47 & 1) == 0)
    {
      sub_1D8ABD158(v43, type metadata accessor for BundleClassification.ClassificationType);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      return 0;
    }

    v48 = *(v44 + *(type metadata accessor for CVBundle(0) + 28));
    sub_1D8ABD1B8(v43, v104, type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_1D8ABD158(v104, type metadata accessor for BundleClassification.ClassificationType);
        *v13 = MEMORY[0x1E69E7CD0];
      }

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v51 = type metadata accessor for VisualLookupClassifier.Result(0);
        (*(*(v51 - 8) + 56))(v13, 1, 1, v51);
        goto LABEL_23;
      }

      sub_1D8ABD158(v104, type metadata accessor for BundleClassification.ClassificationType);
      *v13 = MEMORY[0x1E69E7CC0];
      v13[1] = 0xBFF0000000000000;
LABEL_25:
      swift_storeEnumTagMultiPayload();
      if (!*(v48 + 16))
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1D8ABD158(v104, type metadata accessor for BundleClassification.ClassificationType);
      *v13 = v96;
      v13[2] = 0xE700000000000000;
      v13[3] = 0x7974706D65;
      v13[4] = 0xE500000000000000;
      v13[5] = 0;
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 3)
    {
      *v13 = 0;
      goto LABEL_25;
    }

    *v13 = 0x7974706D65;
    v13[1] = 0xE500000000000000;
    v50 = sub_1D8B145A0();
    (*(*(v50 - 8) + 104))(v13, v95, v50);
LABEL_23:
    swift_storeEnumTagMultiPayload();
    sub_1D8ABD158(v104, type metadata accessor for BundleClassification.ClassificationType);
    if (!*(v48 + 16))
    {
      goto LABEL_28;
    }

LABEL_26:
    v52 = sub_1D87EF6AC(v13);
    if (v53)
    {
      v54 = v52;
      v55 = *(v48 + 56);
      v56 = type metadata accessor for RefinementState(0);
      v57 = *(v56 - 8);
      v58 = v55 + *(v57 + 72) * v54;
      v43 = v98;
      sub_1D8ABD1B8(v58, v3, type metadata accessor for RefinementState);
      sub_1D8ABD158(v13, type metadata accessor for BundleClassification.ClassificationType);
      (*(v57 + 56))(v3, 0, 1, v56);
      v44 = v99;
      goto LABEL_29;
    }

LABEL_28:
    sub_1D8ABD158(v13, type metadata accessor for BundleClassification.ClassificationType);
    v56 = type metadata accessor for RefinementState(0);
    (*(*(v56 - 8) + 56))(v3, 1, 1, v56);
LABEL_29:
    type metadata accessor for RefinementState(0);
    if ((*(*(v56 - 8) + 48))(v3, 1, v56) != 1)
    {
      break;
    }

    sub_1D8ABD158(v43, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D87A14E4(v3, &qword_1ECA657B8);
    v45 = v100;
LABEL_8:
    v39 = (v39 + v45);
    if (!--v42)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v63 = v90;
      sub_1D8ABD1B8(v44, v90, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_45;
      }

      v64 = v86;
      v65 = *(v86 + 32);
      v66 = v91;
      v67 = v63;
      v68 = v87;
      v65(v91, v67, v87);
      goto LABEL_46;
    }
  }

  v59 = swift_getEnumCaseMultiPayload();
  v45 = v100;
  if (v59 != 2)
  {
    sub_1D8ABD158(v43, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8ABD158(v3, type metadata accessor for RefinementState);
    goto LABEL_8;
  }

  v73 = v85;
  sub_1D8ABD220(v3, v85, type metadata accessor for BundleClassification);
  v74 = v88;
  sub_1D8ABD1B8(v73, v88, type metadata accessor for BundleClassification.ClassificationType);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v75 = *v74;
    v63 = *(*v74 + 16);
    if (v63)
    {
      v76 = sub_1D87F385C(*(*v74 + 16), 0);
      v77 = *(sub_1D8B152F0() - 8);
      v78 = sub_1D8817014(&v106, &v76[(*(v77 + 80) + 32) & ~*(v77 + 80)], v63, v75);

      sub_1D87977A0();
      if (v78 != v63)
      {
        __break(1u);
LABEL_45:
        v79 = v94;
        sub_1D8ABD220(v63, v94, type metadata accessor for CVTrackSnapshot);
        v64 = v86;
        v66 = v91;
        v68 = v87;
        (*(v86 + 16))(v91, v79, v87);
        sub_1D8ABD158(v79, type metadata accessor for CVTrackSnapshot);
        v65 = *(v64 + 32);
LABEL_46:
        v80 = v92;
        v65(v92, v66, v68);
        v60 = sub_1D8B131E0();
        (*(v64 + 8))(v80, v68);
        return v60;
      }
    }

    else
    {
      v76 = MEMORY[0x1E69E7CC0];
    }

    v106 = v76;
    sub_1D8AB619C(&v106);

    v82 = v106;
    v83 = sub_1D8B152F0();
    v60 = MEMORY[0x1DA71F1E0](v82, v83);

    sub_1D8ABD158(v73, type metadata accessor for BundleClassification);
    v71 = type metadata accessor for BundleClassification.ClassificationType;
    v72 = v98;
  }

  else
  {
    v60 = sub_1D88511E8();
    sub_1D8ABD158(v73, type metadata accessor for BundleClassification);
    sub_1D8ABD158(v98, type metadata accessor for BundleClassification.ClassificationType);
    v72 = v74;
    v71 = type metadata accessor for BundleClassification.ClassificationType;
  }

LABEL_40:
  sub_1D8ABD158(v72, v71);
  return v60;
}

uint64_t BundleSelector.Configuration.RankingEligibilityPolicy.description.getter()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x6C4120776F6C6C41;
  }
}

uint64_t sub_1D8AB5100(uint64_t a1)
{
  v2 = sub_1D8AB8C14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB513C(uint64_t a1)
{
  v2 = sub_1D8AB8C14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB5178(uint64_t a1)
{
  v2 = sub_1D8AB8BC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB51B4(uint64_t a1)
{
  v2 = sub_1D8AB8BC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB51F0()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x616878456C6C7566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C41776F6C6C61;
  }
}

uint64_t sub_1D8AB525C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8ABD030(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8AB5284(uint64_t a1)
{
  v2 = sub_1D8AB8B18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB52C0(uint64_t a1)
{
  v2 = sub_1D8AB8B18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AB52FC(uint64_t a1)
{
  v2 = sub_1D8AB8B6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AB5338(uint64_t a1)
{
  v2 = sub_1D8AB8B6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleSelector.Configuration.RankingEligibilityPolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CE0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CE8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CF0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68CF8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AB8B18();
  sub_1D8B16DD0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D8AB8BC0();
      v9 = v21;
      sub_1D8B16A40();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D8AB8B6C();
      v9 = v24;
      sub_1D8B16A40();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D8AB8C14();
    sub_1D8B16A40();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t BundleSelector.Configuration.RankingEligibilityPolicy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68D20);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68D28);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68D30);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68D38);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8AB8B18();
  v15 = v36;
  sub_1D8B16DB0();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1D8B16A20();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1D881F7C4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1D8B16770();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
      *v24 = &type metadata for BundleSelector.Configuration.RankingEligibilityPolicy;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1D8AB8BC0();
          sub_1D8B16950();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D8AB8B6C();
          v26 = v17;
          sub_1D8B16950();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1D8AB8C14();
        sub_1D8B16950();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1D8AB5C9C()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x6C4120776F6C6C41;
  }
}

void sub_1D8AB5D04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633C0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1D8AB5E14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F08);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + 24 * a3), 24 * v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1D8AB5F20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1D8AB60C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63498);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1D8AB619C(void **a1)
{
  v2 = *(sub_1D8B152F0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D885D358(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D8AB6244(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D8AB6244(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D8B16B30();
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
        sub_1D8B152F0();
        v6 = sub_1D8B15D60();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D8B152F0() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1D8AB6710(v8, v9, a1, v4);
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
    return sub_1D8AB6370(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D8AB6370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_1D8B13240();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x1EEE9AC00](v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v41 - v11;
  v12 = sub_1D8B152F0();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v57 = &v41 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      v54(v56, v26, v12);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_1D8B15280();
      v32 = v59;
      sub_1D8B15280();
      v62 = MEMORY[0x1DA71C6D0](v27, v32);
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      result = v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      result = v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8AB6710(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v159 = sub_1D8B13240();
  v8 = *(v159 - 8);
  v9 = MEMORY[0x1EEE9AC00](v159);
  v158 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v157 = &v133 - v11;
  v12 = sub_1D8B152F0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v140 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v149 = &v133 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v156 = &v133 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v160 = &v133 - v21;
  v22 = a3[1];
  v145 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v12 = v24;
    v24 = *v137;
    if (!*v137)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v52 = v145;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_1D885CC68(v12);
      v12 = result;
    }

    v162 = v12;
    v129 = *(v12 + 16);
    if (v129 >= 2)
    {
      while (*v52)
      {
        v130 = *(v12 + 16 * v129);
        v131 = *(v12 + 16 * (v129 - 1) + 40);
        sub_1D8AB7310(*v52 + *(v13 + 72) * v130, *v52 + *(v13 + 72) * *(v12 + 16 * (v129 - 1) + 32), *v52 + *(v13 + 72) * v131, v24);
        if (v5)
        {
        }

        if (v131 < v130)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1D885CC68(v12);
        }

        if (v129 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v132 = (v12 + 16 * v129);
        *v132 = v130;
        v132[1] = v131;
        v162 = v12;
        result = sub_1D885CBDC(v129 - 1);
        v12 = v162;
        v129 = *(v162 + 16);
        if (v129 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v133 = a4;
  v23 = 0;
  v153 = (v8 + 8);
  v154 = v13 + 16;
  v151 = (v13 + 32);
  v152 = (v13 + 8);
  v24 = MEMORY[0x1E69E7CC0];
  v155 = v12;
  v136 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v145;
    }

    else
    {
      v146 = v22;
      v134 = v24;
      v135 = v5;
      v26 = v23;
      v138 = v23;
      v27 = *v145;
      v161 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v160, v29, v12);
      v32 = v156;
      v147 = v31;
      (v31)(v156, v27 + v28 * v26, v30);
      v33 = v157;
      sub_1D8B15280();
      v34 = v158;
      sub_1D8B15280();
      LODWORD(v148) = MEMORY[0x1DA71C6D0](v33, v34);
      v35 = *v153;
      v36 = v34;
      v37 = v159;
      (*v153)(v36, v159);
      v144 = v35;
      (v35)(v33, v37);
      v38 = *(v136 + 8);
      v24 = v152;
      v38(v32, v30);
      v143 = v38;
      result = (v38)(v160, v30);
      v39 = v138 + 2;
      v150 = v28;
      v40 = v161 + v28 * (v138 + 2);
      while (1)
      {
        v41 = v146;
        if (v146 == v39)
        {
          break;
        }

        v42 = v155;
        v43 = v147;
        v147();
        v44 = v156;
        v43(v156, v29, v42);
        v45 = v157;
        sub_1D8B15280();
        v46 = v158;
        sub_1D8B15280();
        LOBYTE(v161) = MEMORY[0x1DA71C6D0](v45, v46) & 1;
        LODWORD(v161) = v161;
        v47 = v46;
        v48 = v159;
        v49 = v29;
        v50 = v144;
        (v144)(v47, v159);
        v50(v45, v48);
        v24 = v152;
        v51 = v143;
        (v143)(v44, v42);
        result = v51(v160, v42);
        ++v39;
        v40 += v150;
        v29 = &v150[v49];
        if ((v148 & 1) != v161)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v135;
      v52 = v145;
      v13 = v136;
      v12 = v155;
      v23 = v138;
      if ((v148 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v138)
      {
        goto LABEL_125;
      }

      if (v138 < v41)
      {
        v53 = v41;
        v54 = v150 * (v41 - 1);
        v55 = v41 * v150;
        v146 = v41;
        v56 = v138;
        v57 = v138 * v150;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v151;
            (*v151)(v140, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v59)(v58 + v54, v140, v12);
            v52 = v145;
          }

          ++v56;
          v54 -= v150;
          v55 -= v150;
          v57 += v150;
        }

        while (v56 < v53);
        v5 = v135;
        v13 = v136;
        v24 = v134;
        v23 = v138;
        v41 = v146;
      }

      else
      {
LABEL_23:
        v24 = v134;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v133)
      {
        if (__OFADD__(v23, v133))
        {
          goto LABEL_126;
        }

        if (v23 + v133 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v133;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D87C7C5C(0, *(v24 + 2) + 1, 1, v24);
      v24 = result;
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      result = sub_1D87C7C5C((v63 > 1), v64 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v137;
    if (!*v137)
    {
      goto LABEL_133;
    }

    v141 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
          goto LABEL_127;
        }

        if (!*v145)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_1D8AB7310(*v145 + v52[9] * v107, *v145 + v52[9] * *&v24[16 * v68 + 32], *v145 + v52[9] * v108, v13);
        if (v5)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1D885CC68(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v162 = v24;
        result = sub_1D885CBDC(v68);
        v24 = v162;
        v65 = *(v162 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v145[1];
    v23 = v141;
    v13 = v52;
    if (v141 >= v22)
    {
      goto LABEL_96;
    }
  }

  v134 = v24;
  v135 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v150 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v147 = -v111;
  v138 = v23;
  v113 = (v23 - v41);
  v148 = v110;
  v139 = v111;
  v114 = v110 + v41 * v111;
  v141 = v61;
LABEL_87:
  v146 = v41;
  v142 = v114;
  v143 = v113;
  v115 = v114;
  v144 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v160;
    v117 = v150;
    (v150)(v160, v115, v12);
    v118 = v156;
    v117(v156, v116, v12);
    v119 = v157;
    sub_1D8B15280();
    v120 = v158;
    sub_1D8B15280();
    LODWORD(v161) = MEMORY[0x1DA71C6D0](v119, v120);
    v121 = *v153;
    v122 = v120;
    v123 = v159;
    (*v153)(v122, v159);
    v124 = v119;
    v12 = v155;
    v121(v124, v123);
    v125 = *v152;
    (*v152)(v118, v12);
    result = v125(v52, v12);
    if ((v161 & 1) == 0)
    {
LABEL_86:
      v41 = v146 + 1;
      v112 = &v144[v139];
      v113 = v143 - 1;
      v62 = v141;
      v114 = v142 + v139;
      if (v146 + 1 != v141)
      {
        goto LABEL_87;
      }

      v5 = v135;
      v13 = v136;
      v24 = v134;
      v23 = v138;
      if (v141 < v138)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v148)
    {
      break;
    }

    v126 = *v151;
    v127 = v149;
    (*v151)(v149, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v147 + v116;
    v115 += v147;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t sub_1D8AB7310(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = a3;
  v68 = sub_1D8B13240();
  v7 = *(v68 - 8);
  v8 = MEMORY[0x1EEE9AC00](v68);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v56 - v10;
  v72 = sub_1D8B152F0();
  v11 = *(v72 - 8);
  v12 = MEMORY[0x1EEE9AC00](v72);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v70 = &v56 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = v73 - a2;
  if (v73 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v17;
  v76 = a1;
  v75 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v21;
    if (v21 >= 1)
    {
      v39 = -v17;
      v60 = (v7 + 8);
      v61 = (v11 + 16);
      v58 = a4;
      v59 = (v11 + 8);
      v40 = v38;
      v71 = a1;
      v62 = -v17;
      v41 = v72;
      while (2)
      {
        while (1)
        {
          v56 = v38;
          v42 = a2;
          v43 = a2 + v39;
          v63 = v42;
          v64 = v43;
          while (1)
          {
            v44 = v73;
            if (v42 <= a1)
            {
              v76 = v42;
              v74 = v56;
              goto LABEL_59;
            }

            v57 = v38;
            v73 += v39;
            v45 = v40 + v39;
            v46 = *v61;
            (*v61)();
            v47 = v65;
            (v46)(v65, v43, v41);
            v48 = v66;
            sub_1D8B15280();
            v49 = v67;
            sub_1D8B15280();
            v69 = MEMORY[0x1DA71C6D0](v48, v49);
            v50 = *v60;
            v51 = v49;
            v52 = v68;
            (*v60)(v51, v68);
            v50(v48, v52);
            v53 = *v59;
            (*v59)(v47, v41);
            v53(v70, v41);
            if (v69)
            {
              break;
            }

            v38 = v45;
            v54 = v58;
            if (v44 < v40 || v73 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              v43 = v64;
              v39 = v62;
            }

            else
            {
              v43 = v64;
              v39 = v62;
              if (v44 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v45;
            a1 = v71;
            v42 = v63;
            if (v45 <= v54)
            {
              a2 = v63;
              goto LABEL_58;
            }
          }

          v55 = v58;
          if (v44 < v63 || v73 >= v63)
          {
            break;
          }

          a2 = v64;
          a1 = v71;
          v38 = v57;
          v39 = v62;
          if (v44 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v55)
          {
            goto LABEL_58;
          }
        }

        a2 = v64;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v71;
        v38 = v57;
        v39 = v62;
        if (v40 > v55)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v76 = a2;
    v74 = v38;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v64 = a4 + v20;
    v74 = a4 + v20;
    if (v20 >= 1 && a2 < v73)
    {
      v23 = *(v11 + 16);
      v60 = (v7 + 8);
      v61 = v23;
      v62 = v17;
      v63 = v11 + 16;
      v59 = (v11 + 8);
      v24 = v72;
      do
      {
        v71 = a1;
        v25 = v70;
        v26 = v61;
        (v61)(v70, a2, v24);
        v27 = v65;
        (v26)(v65, a4, v24);
        v28 = v66;
        sub_1D8B15280();
        v29 = v67;
        sub_1D8B15280();
        v69 = MEMORY[0x1DA71C6D0](v28, v29);
        v30 = a2;
        v31 = *v60;
        v32 = v29;
        v33 = a4;
        v34 = v68;
        (*v60)(v32, v68);
        v31(v28, v34);
        v35 = *v59;
        (*v59)(v27, v24);
        v35(v25, v24);
        if (v69)
        {
          v36 = v62;
          a2 = v30 + v62;
          v37 = v71;
          a4 = v33;
          if (v71 < v30 || v71 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v30;
          v36 = v62;
          a4 = v33 + v62;
          v37 = v71;
          if (v71 < v33 || v71 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v75 = a4;
        }

        a1 = v37 + v36;
        v76 = a1;
      }

      while (a4 < v64 && a2 < v73);
    }
  }

LABEL_59:
  sub_1D885CE6C(&v76, &v75, &v74);
  return 1;
}

uint64_t sub_1D8AB79EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1D8ABDE20;

  return sub_1D8ABB2C8(a4, a5, a6);
}

uint64_t sub_1D8AB7A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1D8ABDE20;

  return sub_1D8ABB654(a4, a5, a6);
}

uint64_t sub_1D8AB7B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1D8ABDE20;

  return sub_1D8ABB9E0(a4, a5, a6);
}

uint64_t sub_1D8AB7BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1D8AB7CAC;

  return sub_1D8ABBD6C(a4, a5, a6);
}

uint64_t sub_1D8AB7CAC(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1 & 1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D8AB7DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1D8ABDE20;

  return sub_1D8ABC0F8(a4, a5, a6);
}

_BYTE *sub_1D8AB7E70@<X0>(_BYTE *result@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  if (*result == 1)
  {
    v5 = result;
    MEMORY[0x1EEE9AC00](result);
    v12 = v6;
    v8 = v7;

    v9 = sub_1D8AA4F50(sub_1D8ABD338, v11, v8);
    MEMORY[0x1EEE9AC00](v9);
    v12 = a2;
    v13 = v5;
    v10 = sub_1D8AA4334(sub_1D8ABD308, v11, v9, type metadata accessor for CVBundle, sub_1D87C8C08, type metadata accessor for DetectionRequest);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v10;
  return result;
}

uint64_t _s22VisualIntelligenceCore14BundleSelectorC13ConfigurationV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[64];
  v4 = a2[64];
  v6 = *(a2 + 6);
  v5 = *(a2 + 7);
  v8 = *(a1 + 6);
  v7 = *(a1 + 7);
  v11 = CGRectEqualToRect(*(a1 + 8), *(a2 + 8));
  v12.i32[0] = *(a2 + 10);
  v13.i32[0] = *(a1 + 10);
  if ((vminv_u16(vceq_s16((vmovl_u8(v13).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(v12).u64[0] & 0xFF00FF00FF00FFLL))) & 1) == 0)
  {
    return 0;
  }

  v14 = 0;
  if (v8 == v6)
  {
    LODWORD(v14) = v3 ^ v4 ^ 1;
    if (v7 != v5)
    {
      LODWORD(v14) = 0;
    }

    if (v11)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  return v14;
}

uint64_t _s22VisualIntelligenceCore14BundleSelectorC6OutputV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CVBundle(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68EB8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = *(v12 + 56);
  sub_1D87A0E38(a1, v28 - v13, &qword_1ECA67980);
  sub_1D87A0E38(a2, &v14[v15], &qword_1ECA67980);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D87A0E38(v14, v10, &qword_1ECA67980);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1D8ABD220(&v14[v15], v7, type metadata accessor for CVBundle);
      if (sub_1D893B960(v10, v7) & 1) != 0 && (sub_1D88E4444(*&v10[v4[5]], *&v7[v4[5]]) & 1) != 0 && (sub_1D88E4444(*&v10[v4[6]], *&v7[v4[6]]))
      {
        v26 = sub_1D8854A60(*&v10[v4[7]], *&v7[v4[7]]);
        sub_1D8ABD158(v7, type metadata accessor for CVBundle);
        sub_1D8ABD158(v10, type metadata accessor for CVBundle);
        sub_1D87A14E4(v14, &qword_1ECA67980);
        if (v26)
        {
          goto LABEL_4;
        }

LABEL_18:
        v24 = 0;
        return v24 & 1;
      }

      sub_1D8ABD158(v7, type metadata accessor for CVBundle);
      sub_1D8ABD158(v10, type metadata accessor for CVBundle);
      v25 = &qword_1ECA67980;
LABEL_17:
      sub_1D87A14E4(v14, v25);
      goto LABEL_18;
    }

    sub_1D8ABD158(v10, type metadata accessor for CVBundle);
LABEL_10:
    v25 = &qword_1ECA68EB8;
    goto LABEL_17;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_1D87A14E4(v14, &qword_1ECA67980);
LABEL_4:
  v17 = type metadata accessor for BundleSelector.Output(0);
  v18 = (a1 + v17[5]);
  v19 = v18[3];
  v29[2] = v18[2];
  v29[3] = v19;
  v29[4] = v18[4];
  v20 = v18[1];
  v29[0] = *v18;
  v29[1] = v20;
  v21 = (a2 + v17[5]);
  v22 = v21[3];
  v28[2] = v21[2];
  v28[3] = v22;
  v28[4] = v21[4];
  v23 = v21[1];
  v28[0] = *v21;
  v28[1] = v23;
  if (!_s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v29, v28) || (sub_1D88E4444(*(a1 + v17[6]), *(a2 + v17[6])) & 1) == 0 || (sub_1D894E614(*(a1 + v17[7]), *(a2 + v17[7])) & 1) == 0)
  {
    goto LABEL_18;
  }

  v24 = *(a1 + v17[8]) ^ *(a2 + v17[8]) ^ 1;
  return v24 & 1;
}

unint64_t sub_1D8AB84AC()
{
  result = qword_1ECA68BE8;
  if (!qword_1ECA68BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68BE8);
  }

  return result;
}

uint64_t sub_1D8AB8500(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA642D0);
    sub_1D8AB859C(a2, type metadata accessor for CVBundle);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8AB859C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8AB85E4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65758);
    sub_1D8AB859C(a2, type metadata accessor for CVBundle);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8AB8680()
{
  result = qword_1ECA68C18;
  if (!qword_1ECA68C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C18);
  }

  return result;
}

unint64_t sub_1D8AB86D4()
{
  result = qword_1ECA68C20;
  if (!qword_1ECA68C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C20);
  }

  return result;
}

unint64_t sub_1D8AB8728()
{
  result = qword_1ECA68C28;
  if (!qword_1ECA68C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C28);
  }

  return result;
}

unint64_t sub_1D8AB877C()
{
  result = qword_1ECA68C30;
  if (!qword_1ECA68C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C30);
  }

  return result;
}

unint64_t sub_1D8AB87D0()
{
  result = qword_1ECA68C38;
  if (!qword_1ECA68C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C38);
  }

  return result;
}

unint64_t sub_1D8AB8824()
{
  result = qword_1ECA68C48;
  if (!qword_1ECA68C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C48);
  }

  return result;
}

unint64_t sub_1D8AB8878()
{
  result = qword_1ECA68C50;
  if (!qword_1ECA68C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C50);
  }

  return result;
}

unint64_t sub_1D8AB88CC()
{
  result = qword_1ECA68C58;
  if (!qword_1ECA68C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C58);
  }

  return result;
}

unint64_t sub_1D8AB8920()
{
  result = qword_1ECA68C60;
  if (!qword_1ECA68C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C60);
  }

  return result;
}

unint64_t sub_1D8AB8974()
{
  result = qword_1ECA68C90;
  if (!qword_1ECA68C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C90);
  }

  return result;
}

unint64_t sub_1D8AB89C8()
{
  result = qword_1ECA68C98;
  if (!qword_1ECA68C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68C98);
  }

  return result;
}

unint64_t sub_1D8AB8A1C()
{
  result = qword_1ECA68CA0;
  if (!qword_1ECA68CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68CA0);
  }

  return result;
}

unint64_t sub_1D8AB8A70()
{
  result = qword_1ECA68CA8;
  if (!qword_1ECA68CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68CA8);
  }

  return result;
}

unint64_t sub_1D8AB8AC4()
{
  result = qword_1ECA68CB0;
  if (!qword_1ECA68CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68CB0);
  }

  return result;
}

unint64_t sub_1D8AB8B18()
{
  result = qword_1ECA68D00;
  if (!qword_1ECA68D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D00);
  }

  return result;
}

unint64_t sub_1D8AB8B6C()
{
  result = qword_1ECA68D08;
  if (!qword_1ECA68D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D08);
  }

  return result;
}

unint64_t sub_1D8AB8BC0()
{
  result = qword_1ECA68D10;
  if (!qword_1ECA68D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D10);
  }

  return result;
}

unint64_t sub_1D8AB8C14()
{
  result = qword_1ECA68D18;
  if (!qword_1ECA68D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D18);
  }

  return result;
}

uint64_t sub_1D8AB8C74(uint64_t a1)
{
  result = sub_1D8AB859C(&qword_1EE0E7FA8, type metadata accessor for BundleSelector);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D8AB8CEC(void *a1)
{
  a1[1] = sub_1D88C93E0();
  a1[2] = sub_1D88C924C();
  result = sub_1D8AB8D24();
  a1[3] = result;
  return result;
}

unint64_t sub_1D8AB8D24()
{
  result = qword_1ECA68D40;
  if (!qword_1ECA68D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D40);
  }

  return result;
}

unint64_t sub_1D8AB8D7C()
{
  result = qword_1ECA68D48;
  if (!qword_1ECA68D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D48);
  }

  return result;
}

unint64_t sub_1D8AB8E18()
{
  result = qword_1ECA68D60;
  if (!qword_1ECA68D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D60);
  }

  return result;
}

void sub_1D8AB8EB8()
{
  sub_1D8AB9134(319, &qword_1EE0E3908, type metadata accessor for BundleSelector.Output, MEMORY[0x1E69E8658]);
  if (v0 <= 0x3F)
  {
    sub_1D8B151E0();
    if (v1 <= 0x3F)
    {
      sub_1D8AB9134(319, qword_1EE0E40B8, type metadata accessor for CVBundle, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D8AB9198();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1D8AB9134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D8AB9198()
{
  if (!qword_1EE0E4058[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA63DC0);
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0E4058);
    }
  }
}

void sub_1D8AB9224()
{
  sub_1D8AB9134(319, qword_1EE0E40B8, type metadata accessor for CVBundle, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D8AB9134(319, &qword_1ECA65920, type metadata accessor for CVBundle, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D8AB9330();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8AB9330()
{
  if (!qword_1EE0E3838)
  {
    type metadata accessor for CVBundle(255);
    sub_1D8AB859C(qword_1EE0E4108, type metadata accessor for CVBundle);
    v0 = sub_1D8B16080();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3838);
    }
  }
}

uint64_t sub_1D8AB93C4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[65])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D8AB9418(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D8AB9564()
{
  result = qword_1ECA68D78;
  if (!qword_1ECA68D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D78);
  }

  return result;
}

unint64_t sub_1D8AB95BC()
{
  result = qword_1ECA68D80;
  if (!qword_1ECA68D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D80);
  }

  return result;
}

unint64_t sub_1D8AB9658()
{
  result = qword_1ECA68D98;
  if (!qword_1ECA68D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68D98);
  }

  return result;
}

unint64_t sub_1D8AB96B0()
{
  result = qword_1ECA68DA0;
  if (!qword_1ECA68DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DA0);
  }

  return result;
}

unint64_t sub_1D8AB9708()
{
  result = qword_1ECA68DA8;
  if (!qword_1ECA68DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DA8);
  }

  return result;
}

unint64_t sub_1D8AB9760()
{
  result = qword_1ECA68DB0;
  if (!qword_1ECA68DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DB0);
  }

  return result;
}

unint64_t sub_1D8AB97B8()
{
  result = qword_1ECA68DB8;
  if (!qword_1ECA68DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DB8);
  }

  return result;
}

unint64_t sub_1D8AB9810()
{
  result = qword_1ECA68DC0;
  if (!qword_1ECA68DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DC0);
  }

  return result;
}

unint64_t sub_1D8AB9868()
{
  result = qword_1ECA68DC8;
  if (!qword_1ECA68DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DC8);
  }

  return result;
}

unint64_t sub_1D8AB98C0()
{
  result = qword_1ECA68DD0;
  if (!qword_1ECA68DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DD0);
  }

  return result;
}

unint64_t sub_1D8AB9918()
{
  result = qword_1ECA68DD8;
  if (!qword_1ECA68DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DD8);
  }

  return result;
}

unint64_t sub_1D8AB9970()
{
  result = qword_1ECA68DE0;
  if (!qword_1ECA68DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DE0);
  }

  return result;
}

unint64_t sub_1D8AB99C8()
{
  result = qword_1ECA68DE8;
  if (!qword_1ECA68DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DE8);
  }

  return result;
}

unint64_t sub_1D8AB9A20()
{
  result = qword_1ECA68DF0;
  if (!qword_1ECA68DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DF0);
  }

  return result;
}

unint64_t sub_1D8AB9A78()
{
  result = qword_1ECA68DF8;
  if (!qword_1ECA68DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DF8);
  }

  return result;
}

unint64_t sub_1D8AB9AD0()
{
  result = qword_1ECA68E00;
  if (!qword_1ECA68E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E00);
  }

  return result;
}

unint64_t sub_1D8AB9B28()
{
  result = qword_1ECA68E08;
  if (!qword_1ECA68E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E08);
  }

  return result;
}

unint64_t sub_1D8AB9B80()
{
  result = qword_1ECA68E10;
  if (!qword_1ECA68E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E10);
  }

  return result;
}

unint64_t sub_1D8AB9BD8()
{
  result = qword_1ECA68E18;
  if (!qword_1ECA68E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E18);
  }

  return result;
}

unint64_t sub_1D8AB9C30()
{
  result = qword_1ECA68E20;
  if (!qword_1ECA68E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E20);
  }

  return result;
}

unint64_t sub_1D8AB9C88()
{
  result = qword_1ECA68E28;
  if (!qword_1ECA68E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E28);
  }

  return result;
}

unint64_t sub_1D8AB9CE0()
{
  result = qword_1ECA68E30;
  if (!qword_1ECA68E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E30);
  }

  return result;
}

unint64_t sub_1D8AB9D38()
{
  result = qword_1ECA68E38;
  if (!qword_1ECA68E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E38);
  }

  return result;
}

unint64_t sub_1D8AB9D90()
{
  result = qword_1ECA68E40;
  if (!qword_1ECA68E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E40);
  }

  return result;
}

unint64_t sub_1D8AB9DE8()
{
  result = qword_1ECA68E48;
  if (!qword_1ECA68E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E48);
  }

  return result;
}

unint64_t sub_1D8AB9E40()
{
  result = qword_1ECA68E50;
  if (!qword_1ECA68E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E50);
  }

  return result;
}

unint64_t sub_1D8AB9E98()
{
  result = qword_1ECA68E58;
  if (!qword_1ECA68E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E58);
  }

  return result;
}

uint64_t sub_1D8AB9EEC(uint64_t a1)
{
  v2 = type metadata accessor for DetectionRequest(0) - 8;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v3);
  v9 = &v13 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_1D8ABD1B8(v11, v5, type metadata accessor for DetectionRequest);
      sub_1D87FB834(v9, v5);
      result = sub_1D8ABD158(v9, type metadata accessor for DetectionRequest);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

size_t sub_1D8ABA020(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for CVBundle(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v57 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v59 = &v57 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v57 = &v57 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v57 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v57 - v19;
  v21 = *(a1 + 16);
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v64 = v21;
  if (v21)
  {
    v21 = 0;
    v23 = *(v4 + 72);
    v24 = a1;
    do
    {
      sub_1D8ABD1B8(v24 + v22, v20, type metadata accessor for CVBundle);
      v25 = CVBundle.classifications.getter()[2];

      if (!v25 && (sub_1D8919304() & 1) == 0)
      {
        sub_1D8ABD158(v20, type metadata accessor for CVBundle);
        goto LABEL_8;
      }

      sub_1D8ABD158(v20, type metadata accessor for CVBundle);
      ++v21;
      v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v24 += v23;
    }

    while (v64 != v21);
    v21 = v64;
  }

LABEL_8:
  v26 = a1 + v22;
  swift_bridgeObjectRetain_n();
  v62 = a1;
  v63 = a1 + v22;
  v65 = v4;
  if (v21)
  {

    v27 = *(v4 + 72);
    v28 = MEMORY[0x1E69E7CC0];
    v29 = v21;
    do
    {
      sub_1D8ABD1B8(v26, v18, type metadata accessor for CVBundle);
      v30 = CVBundle.classifications.getter()[2];

      if (v30)
      {
        sub_1D8ABD1B8(v18, v15, type metadata accessor for CVBundle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1D87C7E90(0, v28[2] + 1, 1, v28);
        }

        v32 = v28[2];
        v31 = v28[3];
        if (v32 >= v31 >> 1)
        {
          v28 = sub_1D87C7E90(v31 > 1, v32 + 1, 1, v28);
        }

        sub_1D8ABD158(v18, type metadata accessor for CVBundle);
        v28[2] = v32 + 1;
        sub_1D8ABD220(v15, v28 + v22 + v32 * v27, type metadata accessor for CVBundle);
      }

      else
      {
        sub_1D8919304();
        sub_1D8ABD158(v18, type metadata accessor for CVBundle);
      }

      v26 += v27;
      --v29;
    }

    while (v29);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v33 = v64;
  v35 = v60;
  v34 = v61;
  v36 = v58;
  v37 = v59;
  if (v21 == v64 || (v38 = v28[2], v39 = v38 - v58, v38 >= v58))
  {
    swift_bridgeObjectRelease_n();
    result = sub_1D87E2580(v36, v28);
    v64 = v45;
    v47 = v46 >> 1;
    v48 = (v46 >> 1) - v44;
    if (!__OFSUB__(v46 >> 1, v44))
    {
      v49 = result;
      if (!v48)
      {

        swift_unknownObjectRelease();
        return MEMORY[0x1E69E7CC0];
      }

      v50 = v44;
      v66 = MEMORY[0x1E69E7CC0];

      result = sub_1D87F4074(0, v48 & ~(v48 >> 63), 0);
      if (v48 < 0)
      {
        goto LABEL_48;
      }

      v63 = v49;
      v51 = v66;
      if (v50 <= v47)
      {
        v52 = v47;
      }

      else
      {
        v52 = v50;
      }

      v53 = v57;
      while (v52 != v50)
      {
        v54 = *(v65 + 72);
        sub_1D8ABD1B8(v64 + v54 * v50, v53, type metadata accessor for CVBundle);
        v66 = v51;
        v56 = *(v51 + 16);
        v55 = *(v51 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_1D87F4074(v55 > 1, v56 + 1, 1);
          v51 = v66;
        }

        *(v51 + 16) = v56 + 1;
        result = sub_1D8ABD220(v53, v51 + v22 + v56 * v54, type metadata accessor for CVBundle);
        if (v47 == ++v50)
        {

          swift_unknownObjectRelease();
          return v51;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
    }

    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v40 = v58 - v38;
  v66 = MEMORY[0x1E69E7CD0];

  if ((v40 & 0x8000000000000000) == 0)
  {
    if (v40)
    {
      do
      {
        if (v33 == v21)
        {
          break;
        }

        if (v21 >= v33)
        {
          goto LABEL_46;
        }

        sub_1D8ABD1B8(v63 + *(v65 + 72) * v21, v37, type metadata accessor for CVBundle);
        v43 = CVBundle.classifications.getter()[2];

        if (v43)
        {
          sub_1D8ABD1B8(v37, v34, type metadata accessor for CVBundle);
          sub_1D87F99C4(v35, v34);
          sub_1D8ABD158(v35, type metadata accessor for CVBundle);
        }

        else
        {
          sub_1D8919304();
        }

        result = sub_1D8ABD158(v37, type metadata accessor for CVBundle);
        ++v21;
      }

      while (!__CFADD__(v39++, 1));
    }

    swift_bridgeObjectRelease_n();

    return v28;
  }

LABEL_49:
  __break(1u);
  return result;
}

size_t sub_1D8ABA690(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v3 = type metadata accessor for CVBundle(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v78 = &v76 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v76 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v80 = &v76 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v84 = (&v76 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v76 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v76 - v20;
  v22 = *(a1 + 16);
  v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v24 = v22;
  v79 = v7;
  v82 = v12;
  if (v22)
  {
    v22 = 0;
    v25 = *(v4 + 72);
    v26 = a1;
    do
    {
      v27 = v23;
      sub_1D8ABD1B8(v26 + v23, v21, type metadata accessor for CVBundle);
      v28 = CVBundle.classifications.getter()[2];

      if (v28)
      {
        sub_1D8AB40B8();
        if (!v29)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1D8919304();
      }

      v30 = CVBundle.classifications.getter()[2];

      if (!v30 && (sub_1D8919304() & 1) == 0)
      {
LABEL_10:
        sub_1D8ABD158(v21, type metadata accessor for CVBundle);
        v12 = v82;
        v23 = v27;
        goto LABEL_12;
      }

      sub_1D8ABD158(v21, type metadata accessor for CVBundle);
      ++v22;
      v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v26 += v25;
    }

    while (v24 != v22);
    v22 = v24;
    v12 = v82;
  }

LABEL_12:
  v85 = v23;
  v31 = a1 + v23;
  v87 = MEMORY[0x1E69E7CD0];
  v81 = a1;
  if (!v22)
  {
    swift_bridgeObjectRetain_n();
    v84 = MEMORY[0x1E69E7CC0];
    if (!v24)
    {
      goto LABEL_37;
    }

LABEL_33:
    v45 = v84[2];
    v46 = v45 - v83;
    if (v45 >= v83)
    {
      goto LABEL_37;
    }

    v47 = v24;
    v48 = v83 - v45;
    v86[2] = MEMORY[0x1E69E7CD0];

    if (v48 < 0)
    {
      goto LABEL_71;
    }

    if (!v48)
    {
LABEL_36:
      swift_bridgeObjectRelease_n();
      v50 = v84;

      return v50;
    }

    while (1)
    {
      if (v47 == v22)
      {
        goto LABEL_36;
      }

      if (v22 >= v47)
      {
        goto LABEL_68;
      }

      sub_1D8ABD1B8(v31 + *(v4 + 72) * v22, v12, type metadata accessor for CVBundle);
      v66 = CVBundle.classifications.getter()[2];

      if (v66)
      {
        sub_1D8AB40B8();
        if (!v67)
        {
          goto LABEL_50;
        }
      }

      else
      {
        sub_1D8919304();
      }

      v68 = CVBundle.classifications.getter()[2];

      if (!v68)
      {
        sub_1D8919304();
LABEL_50:
        result = sub_1D8ABD158(v12, type metadata accessor for CVBundle);
        goto LABEL_51;
      }

      v69 = sub_1D8AB40B8();
      if (!v70)
      {
        v73 = v12;
LABEL_64:
        result = sub_1D8ABD158(v73, type metadata accessor for CVBundle);
        v47 = v24;
        goto LABEL_51;
      }

      v71 = v69;
      v72 = v70;
      if ((sub_1D89A4644(v69, v70, v87) & 1) == 0)
      {
        sub_1D87F88E8(v86, v71, v72);

        v74 = v79;
        sub_1D8ABD1B8(v12, v79, type metadata accessor for CVBundle);
        v75 = v78;
        sub_1D87F99C4(v78, v74);
        sub_1D8ABD158(v75, type metadata accessor for CVBundle);
        v73 = v12;
        goto LABEL_64;
      }

      sub_1D8ABD158(v12, type metadata accessor for CVBundle);

      v47 = v24;
LABEL_51:
      ++v22;
      if (__CFADD__(v46++, 1))
      {
        goto LABEL_36;
      }
    }
  }

  v77 = v4;
  v32 = *(v4 + 72);
  swift_bridgeObjectRetain_n();
  v33 = MEMORY[0x1E69E7CC0];
  v76 = v31;
  v34 = v31;
  v35 = v22;
  do
  {
    sub_1D8ABD1B8(v34, v19, type metadata accessor for CVBundle);
    v36 = CVBundle.classifications.getter()[2];

    if (v36)
    {
      sub_1D8AB40B8();
      if (!v37)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1D8919304();
    }

    v38 = CVBundle.classifications.getter()[2];

    if (!v38)
    {
      sub_1D8919304();
LABEL_15:
      sub_1D8ABD158(v19, type metadata accessor for CVBundle);
      goto LABEL_16;
    }

    v39 = sub_1D8AB40B8();
    if (!v40)
    {
      goto LABEL_15;
    }

    v41 = v39;
    v42 = v40;
    if (sub_1D89A4644(v39, v40, v87))
    {
      sub_1D8ABD158(v19, type metadata accessor for CVBundle);
    }

    else
    {
      sub_1D87F88E8(v86, v41, v42);

      sub_1D8ABD1B8(v19, v84, type metadata accessor for CVBundle);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1D87C7E90(0, v33[2] + 1, 1, v33);
      }

      v44 = v33[2];
      v43 = v33[3];
      if (v44 >= v43 >> 1)
      {
        v33 = sub_1D87C7E90(v43 > 1, v44 + 1, 1, v33);
      }

      sub_1D8ABD158(v19, type metadata accessor for CVBundle);
      v33[2] = v44 + 1;
      sub_1D8ABD220(v84, v33 + v85 + v44 * v32, type metadata accessor for CVBundle);
    }

LABEL_16:
    v34 += v32;
    --v35;
  }

  while (v35);
  v84 = v33;

  v31 = v76;
  v4 = v77;
  v12 = v82;
  if (v22 != v24)
  {
    goto LABEL_33;
  }

LABEL_37:
  swift_bridgeObjectRelease_n();
  result = sub_1D87E2580(v83, v84);
  v54 = v53 >> 1;
  v55 = (v53 >> 1) - v52;
  if (__OFSUB__(v53 >> 1, v52))
  {
    goto LABEL_69;
  }

  v56 = result;
  if (v55)
  {
    v57 = v51;
    v58 = v52;
    v86[0] = MEMORY[0x1E69E7CC0];

    result = sub_1D87F4074(0, v55 & ~(v55 >> 63), 0);
    if ((v55 & 0x8000000000000000) == 0)
    {
      v83 = v56;
      v59 = v86[0];
      if (v58 <= v54)
      {
        v60 = v54;
      }

      else
      {
        v60 = v58;
      }

      v61 = v80;
      while (v60 != v58)
      {
        v62 = *(v4 + 72);
        sub_1D8ABD1B8(v57 + v62 * v58, v61, type metadata accessor for CVBundle);
        v86[0] = v59;
        v64 = *(v59 + 16);
        v63 = *(v59 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_1D87F4074(v63 > 1, v64 + 1, 1);
          v61 = v80;
          v59 = v86[0];
        }

        *(v59 + 16) = v64 + 1;
        result = sub_1D8ABD220(v61, v59 + v85 + v64 * v62, type metadata accessor for CVBundle);
        if (v54 == ++v58)
        {

          swift_unknownObjectRelease();
          goto LABEL_66;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
  }

  else
  {

    swift_unknownObjectRelease();
    v59 = MEMORY[0x1E69E7CC0];
LABEL_66:

    return v59;
  }

  return result;
}

uint64_t sub_1D8ABAEBC(uint64_t a1, __int128 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v37 = a5;
  v36 = a4;
  v35 = type metadata accessor for CVBundle(0);
  v9 = MEMORY[0x1EEE9AC00](v35);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v34 - v13;
  v15 = a2[3];
  v44 = a2[2];
  v45 = v15;
  v46 = a2[4];
  v16 = a2[1];
  v42 = *a2;
  v43 = v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = *a3;
    v39 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v19 = a1 + v39;
    v20 = *(v12 + 72);
    v21 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D8ABD1B8(v19, v14, type metadata accessor for CVBundle);
      if (!v18 || (v18 == 1 || (sub_1D8919304() & 1) != 0) && (v22 = CVBundle.classifications.getter()[2], , v22))
      {
        CVBundle.latestDetection.getter(&v41);
        if (v41 >> 60 != 11)
        {
          goto LABEL_12;
        }

        v23 = type metadata accessor for SyntheticDetectionResult();
        if (*(swift_projectBox() + *(v23 + 24)))
        {
          v24 = sub_1D8B16BA0();

          if ((v24 & 1) == 0)
          {
LABEL_12:

            sub_1D8ABD220(v14, v11, type metadata accessor for CVBundle);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v40[0] = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D87F4074(0, *(v21 + 16) + 1, 1);
              v21 = *&v40[0];
            }

            v27 = *(v21 + 16);
            v26 = *(v21 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_1D87F4074(v26 > 1, v27 + 1, 1);
              v21 = *&v40[0];
            }

            *(v21 + 16) = v27 + 1;
            sub_1D8ABD220(v11, v21 + v39 + v27 * v20, type metadata accessor for CVBundle);
            goto LABEL_4;
          }
        }

        else
        {
        }

        sub_1D8ABD158(v14, type metadata accessor for CVBundle);
      }

      else
      {
        sub_1D8ABD158(v14, type metadata accessor for CVBundle);
      }

LABEL_4:
      v19 += v20;
      if (!--v17)
      {
        goto LABEL_20;
      }
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v41 = v21;
  v40[2] = v44;
  v40[3] = v45;
  v40[4] = v46;
  v40[1] = v43;
  v40[0] = v42;
  v28 = v38;
  v29 = *(v38 + 24);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65758);
  v31 = sub_1D881CF20(&qword_1ECA65B48, &qword_1ECA65758);
  v32 = v29(&v41, v40, v35, v30, &protocol witness table for CVBundle, v31, v37, v28);

  return v32;
}

uint64_t sub_1D8ABB2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A28);
  v3[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A30);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8ABB3D0, 0, 0);
}

uint64_t sub_1D8ABB3D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v0[19] = v2;
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1D8B15E00();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1D8ABB4F0, v3, v5);
  }

  else
  {

    v6 = v0[1];

    return v6(1);
  }
}

uint64_t sub_1D8ABB4F0()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_1D8AFD46C(v4, v3);
  swift_endAccess();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[14];

    sub_1D87A14E4(v5, &qword_1ECA64A28);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    (*(v7 + 32))(v6, v0[14], v8);
    sub_1D8B15EF0();

    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[18] == 0;

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1D8ABB654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A58);
  v3[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A60);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8ABB75C, 0, 0);
}

uint64_t sub_1D8ABB75C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v0[19] = v2;
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1D8B15E00();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1D8ABB87C, v3, v5);
  }

  else
  {

    v6 = v0[1];

    return v6(1);
  }
}

uint64_t sub_1D8ABB87C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_1D8AFD474(v4, v3);
  swift_endAccess();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[14];

    sub_1D87A14E4(v5, &qword_1ECA64A58);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    (*(v7 + 32))(v6, v0[14], v8);
    sub_1D8B15EF0();

    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[18] == 0;

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1D8ABB9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A40);
  v3[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A48);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8ABBAE8, 0, 0);
}

uint64_t sub_1D8ABBAE8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v0[19] = v2;
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1D8B15E00();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1D8ABBC08, v3, v5);
  }

  else
  {

    v6 = v0[1];

    return v6(1);
  }
}

uint64_t sub_1D8ABBC08()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_1D8AFD478(v4, v3);
  swift_endAccess();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[14];

    sub_1D87A14E4(v5, &qword_1ECA64A40);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    (*(v7 + 32))(v6, v0[14], v8);
    sub_1D8B15EF0();

    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[18] == 0;

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1D8ABBD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A10);
  v3[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A18);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8ABBE74, 0, 0);
}

uint64_t sub_1D8ABBE74()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v0[19] = v2;
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1D8B15E00();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1D8ABBF94, v3, v5);
  }

  else
  {

    v6 = v0[1];

    return v6(1);
  }
}

uint64_t sub_1D8ABBF94()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_1D8AFD47C(v4, v3);
  swift_endAccess();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[14];

    sub_1D87A14E4(v5, &qword_1ECA64A10);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    (*(v7 + 32))(v6, v0[14], v8);
    sub_1D8B15EF0();

    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[18] == 0;

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1D8ABC0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F10);
  v3[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F18);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8ABC200, 0, 0);
}

uint64_t sub_1D8ABC200()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v0[19] = v2;
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1D8B15E00();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1D8ABC320, v3, v5);
  }

  else
  {

    v6 = v0[1];

    return v6(1);
  }
}

uint64_t sub_1D8ABC320()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_1D8AFD480(v4, v3);
  swift_endAccess();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[14];

    sub_1D87A14E4(v5, &qword_1ECA65F10);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    (*(v7 + 32))(v6, v0[14], v8);
    sub_1D8B15EF0();

    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[18] == 0;

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1D8ABC484(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001DLL && 0x80000001D8B424F0 == a2;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D8B42510 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D8B48920 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D8B48940 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D8B48960 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D8ABC638(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68E90);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68E98);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68EA0);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8ABCDC4();
  v11 = v26;
  sub_1D8B16DB0();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1D8B16A20();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1D881F7CC();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1D8B16770();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
    *v19 = &type metadata for BundleSelector.Configuration.FullScreenBundleRankingPolicy;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1D8ABCE18();
    sub_1D8B16950();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1D8ABCE6C();
    sub_1D8B16950();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

uint64_t sub_1D8ABCAF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ALL && 0x80000001D8B48990 == a2;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B489B0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D8B489D0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D8B44410 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D8B44430 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001D8B489F0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000030 && 0x80000001D8B48A20 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D8B48A60 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D8B48A80 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_1D8ABCDC4()
{
  result = qword_1ECA68E78;
  if (!qword_1ECA68E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E78);
  }

  return result;
}

unint64_t sub_1D8ABCE18()
{
  result = qword_1ECA68E80;
  if (!qword_1ECA68E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E80);
  }

  return result;
}

unint64_t sub_1D8ABCE6C()
{
  result = qword_1ECA68E88;
  if (!qword_1ECA68E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E88);
  }

  return result;
}

uint64_t sub_1D8ABCEC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1634038369 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D8B48AA0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001D8B48AC0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B48AF0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D8ABD030(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6C41776F6C6C61 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D8B48B10 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616878456C6C7566 && a2 == 0xEE006E6F69747375)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D8ABD158(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8ABD1B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8ABD220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8ABD308@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D8AA5D60(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D8ABD378(uint64_t a1)
{
  v3 = *(sub_1D8B13240() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_1D8AA5AFC(a1, *(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), &unk_1F5437888, &unk_1D8B3CFD0);
}

uint64_t sub_1D8ABD428(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D8B13240() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D886553C;

  return sub_1D8AB7DC0(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1D8ABD568(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D8B13240() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D8864FBC;

  return sub_1D8AB7BFC(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1D8ABD6A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D8B13240() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D886553C;

  return sub_1D8AB79EC(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1D8ABD7E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D8B13240() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D886553C;

  return sub_1D8AB7B4C(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t objectdestroy_111Tm()
{
  v1 = sub_1D8B13240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D8ABDA08(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D8B13240() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D886553C;

  return sub_1D8AB7A9C(a1, v7, v8, v9, v1 + v6, v10);
}

unint64_t sub_1D8ABDB7C()
{
  result = qword_1ECA68EC0;
  if (!qword_1ECA68EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68EC0);
  }

  return result;
}

unint64_t sub_1D8ABDBD4()
{
  result = qword_1ECA68EC8;
  if (!qword_1ECA68EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68EC8);
  }

  return result;
}

unint64_t sub_1D8ABDC2C()
{
  result = qword_1ECA68ED0;
  if (!qword_1ECA68ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68ED0);
  }

  return result;
}

unint64_t sub_1D8ABDC84()
{
  result = qword_1ECA68ED8;
  if (!qword_1ECA68ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68ED8);
  }

  return result;
}

unint64_t sub_1D8ABDCDC()
{
  result = qword_1ECA68EE0;
  if (!qword_1ECA68EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68EE0);
  }

  return result;
}

unint64_t sub_1D8ABDD34()
{
  result = qword_1ECA68EE8;
  if (!qword_1ECA68EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68EE8);
  }

  return result;
}

unint64_t sub_1D8ABDD8C()
{
  result = qword_1ECA68EF0;
  if (!qword_1ECA68EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68EF0);
  }

  return result;
}

uint64_t sub_1D8ABDE3C(uint64_t a1)
{
  v2 = sub_1D8ABE51C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8ABDE78(uint64_t a1)
{
  v2 = sub_1D8ABE51C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8ABDEB4(uint64_t a1)
{
  v2 = sub_1D8ABE4C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8ABDEF0(uint64_t a1)
{
  v2 = sub_1D8ABE4C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8ABDF2C(uint64_t a1)
{
  v2 = sub_1D8ABE474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8ABDF68(uint64_t a1)
{
  v2 = sub_1D8ABE474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8ABDFA4()
{
  v1 = 0x6F6E4B776F6C6C61;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796E41776F6C6C61;
  }
}

uint64_t sub_1D8ABE008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8ABF08C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8ABE030(uint64_t a1)
{
  v2 = sub_1D8ABE420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8ABE06C(uint64_t a1)
{
  v2 = sub_1D8ABE420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}