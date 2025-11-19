uint64_t sub_1C1B13220(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___APPCMediaMetricsHelper__visiblePercentage);
  if ((a1 & ~(a1 >> 63)) >= 100)
  {
    v3 = 100;
  }

  else
  {
    v3 = a1 & ~(a1 >> 63);
  }

  *(v1 + OBJC_IVAR___APPCMediaMetricsHelper__visiblePercentage) = v3;
  v4 = v1 + OBJC_IVAR___APPCMediaMetricsHelper_visiblePercentageChanged;
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    v7 = *(v4 + 8);

    v6(v2, v3);
    return sub_1C1AC0530(v6);
  }

  return result;
}

void (*sub_1C1B132C4(void *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___APPCMediaMetricsHelper__visiblePercentage;
  v3[7] = v1;
  v3[8] = v4;
  v3[6] = *(v1 + v4);
  return sub_1C1B13338;
}

void sub_1C1B13338(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  v4 = *(v3 + v2);
  if ((*(*a1 + 48) & ~(*(*a1 + 48) >> 63)) >= 100)
  {
    v5 = 100;
  }

  else
  {
    v5 = *(*a1 + 48) & ~(*(*a1 + 48) >> 63);
  }

  *(v3 + v2) = v5;
  v6 = v3 + OBJC_IVAR___APPCMediaMetricsHelper_visiblePercentageChanged;
  swift_beginAccess();
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 8);

    v7(v4, v5);
    sub_1C1AC0530(v7);
  }

  free(v1);
}

uint64_t sub_1C1B1352C(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v14);
  v5 = sub_1C1AAABE0(v14, v14[3]);
  v6 = *(v2 + OBJC_IVAR___APPCMediaMetricsHelper_contextIdentifier);
  v7 = *(v2 + OBJC_IVAR___APPCMediaMetricsHelper_contextIdentifier + 8);
  v8 = (v2 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = *v5;

  sub_1C1B4A2D8(v6, v7, v9, v10, sub_1C1B18B2C, v11);

  return sub_1C1AA86F8(v14);
}

void sub_1C1B13680(uint64_t a1, void (*a2)(id))
{
  v3 = swift_unknownObjectRetain();
  v4 = sub_1C1B4062C(v3);
  swift_unknownObjectRelease();
  a2(v4);
}

uint64_t sub_1C1B13778()
{
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v9);
  v1 = sub_1C1AAABE0(v9, v9[3]);
  v2 = *(v0 + OBJC_IVAR___APPCMediaMetricsHelper_contextIdentifier);
  v3 = *(v0 + OBJC_IVAR___APPCMediaMetricsHelper_contextIdentifier + 8);
  v4 = (v0 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = *v1;

  sub_1C1B4A4E4(v2, v3, v5, v6);

  return sub_1C1AA86F8(v9);
}

uint64_t sub_1C1B138B8()
{
  v1 = v0;
  v2 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v58 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v58 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v58 - v13;
  v15 = sub_1C1B94588();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v60 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v61 = v58 - v20;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = [Strong metricEventsTracking];
    swift_unknownObjectRelease();
    if (v22)
    {
      [v22 didReceivePrerollVideoResponse];
      swift_unknownObjectRelease();
    }
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23 || (v24 = [v23 metricEventsTracking], swift_unknownObjectRelease(), !v24))
  {
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_11:
    v9 = v14;
LABEL_12:
    sub_1C1AA7C8C(v9, &qword_1EBF07F50, &qword_1C1B9A590);
    sub_1C1B95128();
    sub_1C1AC53E4();
    v28 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C1B98E60;
    v30 = (v1 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v32 = *v30;
    v31 = v30[1];
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = sub_1C1AA5E7C();
    *(v29 + 32) = v32;
    *(v29 + 40) = v31;

    sub_1C1B94BA8();
  }

  v25 = [v24 prerollAdRequestTimestamp];
  swift_unknownObjectRelease();
  if (v25)
  {
    sub_1C1B94558();

    v26 = *(v16 + 56);
    v26(v12, 0, 1, v15);
  }

  else
  {
    v26 = *(v16 + 56);
    v26(v12, 1, 1, v15);
  }

  sub_1C1B193EC(v12, v14);
  v27 = *(v16 + 48);
  if (v27(v14, 1, v15) == 1)
  {
    goto LABEL_11;
  }

  v34 = *(v16 + 32);
  v58[1] = v16 + 32;
  v59 = v26;
  v58[0] = v34;
  v34(v61, v14, v15);
  v35 = swift_unknownObjectWeakLoadStrong();
  if (!v35 || (v36 = [v35 metricEventsTracking], swift_unknownObjectRelease(), !v36))
  {
    (*(v16 + 8))(v61, v15);
    v59(v9, 1, 1, v15);
    goto LABEL_12;
  }

  v37 = [v36 prerollAdResponseTimestamp];
  swift_unknownObjectRelease();
  if (v37)
  {
    sub_1C1B94558();

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v59(v6, v38, 1, v15);
  sub_1C1B193EC(v6, v9);
  if (v27(v9, 1, v15) == 1)
  {
    (*(v16 + 8))(v61, v15);
    goto LABEL_12;
  }

  (v58[0])(v60, v9, v15);
  sub_1C1B94528();
  v40 = v39;
  v41 = swift_unknownObjectWeakLoadStrong();
  if (v41)
  {
    v42 = [v41 retrieveNetworkType];
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0;
  }

  v43 = swift_unknownObjectWeakLoadStrong();
  if (v43 && (v44 = [v43 context], swift_unknownObjectRelease(), v44) && (v45 = objc_msgSend(v44, sel_current), swift_unknownObjectRelease(), v45))
  {
    v46 = [v45 placement];
    swift_unknownObjectRelease();
    v59 = Placement.apPlacement.getter(v46);
  }

  else
  {
    v59 = 0;
  }

  sub_1C1B95108();
  sub_1C1AC53E4();
  v47 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1C1B9EEE0;
  v49 = (v1 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v51 = *v49;
  v50 = v49[1];
  *(v48 + 56) = MEMORY[0x1E69E6158];
  *(v48 + 64) = sub_1C1AA5E7C();
  *(v48 + 32) = v51;
  *(v48 + 40) = v50;
  v52 = MEMORY[0x1E69E6438];
  *(v48 + 96) = MEMORY[0x1E69E63B0];
  *(v48 + 104) = v52;
  v53 = MEMORY[0x1E69E6810];
  *(v48 + 72) = v40;
  v54 = MEMORY[0x1E69E6870];
  *(v48 + 136) = v53;
  *(v48 + 144) = v54;
  *(v48 + 112) = v42;

  sub_1C1B94BA8();

  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = [v55 metricEventsTracking];
    swift_unknownObjectRelease();
    if (v56)
    {
      [v56 sendAnalyticsEventFor:8 interval:v42 networkType:v59 placementType:0 failed:v40];
      swift_unknownObjectRelease();
    }
  }

  v57 = *(v16 + 8);
  v57(v60, v15);
  return (v57)(v61, v15);
}

uint64_t sub_1C1B140B0()
{
  v1 = v0;
  v2 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v58 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v58 - v13;
  v15 = sub_1C1B94588();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v61 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v58 - v20;
  v62 = OBJC_IVAR___APPCMediaMetricsHelper_promotedContent;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v23 = [Strong context], swift_unknownObjectRelease(), !v23))
  {
    (*(v16 + 56))(v14, 1, 1, v15);
    v9 = v14;
LABEL_18:
    sub_1C1AA7C8C(v9, &qword_1EBF07F50, &qword_1C1B9A590);
    sub_1C1B95128();
    sub_1C1AC53E4();
    v31 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C1B98E60;
    v33 = (v1 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v35 = *v33;
    v34 = v33[1];
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = sub_1C1AA5E7C();
    *(v32 + 32) = v35;
    *(v32 + 40) = v34;

    sub_1C1B94BA8();
  }

  v24 = [v23 prefetchTimestamp];
  swift_unknownObjectRelease();
  v60 = v1;
  if (v24)
  {
    sub_1C1B94558();

    v25 = *(v16 + 56);
    v25(v12, 0, 1, v15);
  }

  else
  {
    v25 = *(v16 + 56);
    v25(v12, 1, 1, v15);
  }

  sub_1C1B193EC(v12, v14);
  v26 = *(v16 + 48);
  if (v26(v14, 1, v15) == 1)
  {
    v9 = v14;
LABEL_17:
    v1 = v60;
    goto LABEL_18;
  }

  v58 = *(v16 + 32);
  v59 = v21;
  v58();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27 || (v28 = [v27 metricEventsTracking], swift_unknownObjectRelease(), !v28))
  {
    (*(v16 + 8))(v59, v15);
    v25(v9, 1, 1, v15);
    goto LABEL_17;
  }

  v29 = [v28 prerollAdResponseTimestamp];
  swift_unknownObjectRelease();
  if (v29)
  {
    sub_1C1B94558();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v25(v6, v30, 1, v15);
  sub_1C1B193EC(v6, v9);
  if (v26(v9, 1, v15) == 1)
  {
    (*(v16 + 8))(v59, v15);
    goto LABEL_17;
  }

  (v58)(v61, v9, v15);
  v37 = v60;
  v38 = swift_unknownObjectWeakLoadStrong();
  if (v38)
  {
    v39 = [v38 retrieveNetworkType];
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0;
  }

  sub_1C1B94528();
  v41 = v40;
  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42 && (v43 = [v42 context], swift_unknownObjectRelease(), v43) && (v44 = objc_msgSend(v43, sel_current), swift_unknownObjectRelease(), v44))
  {
    v45 = [v44 placement];
    swift_unknownObjectRelease();
    v46 = Placement.apPlacement.getter(v45);
  }

  else
  {
    v46 = 0;
  }

  sub_1C1B95108();
  sub_1C1AC53E4();
  v47 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1C1B9EEE0;
  v49 = (v37 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v50 = *v49;
  v51 = v49[1];
  *(v48 + 56) = MEMORY[0x1E69E6158];
  *(v48 + 64) = sub_1C1AA5E7C();
  *(v48 + 32) = v50;
  *(v48 + 40) = v51;
  v52 = MEMORY[0x1E69E6438];
  *(v48 + 96) = MEMORY[0x1E69E63B0];
  *(v48 + 104) = v52;
  v53 = MEMORY[0x1E69E6810];
  *(v48 + 72) = v41;
  v54 = MEMORY[0x1E69E6870];
  *(v48 + 136) = v53;
  *(v48 + 144) = v54;
  *(v48 + 112) = v39;

  sub_1C1B94BA8();

  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = [v55 metricEventsTracking];
    swift_unknownObjectRelease();
    if (v56)
    {
      [v56 sendAnalyticsEventFor:7 interval:v39 networkType:v46 placementType:0 failed:v41];
      swift_unknownObjectRelease();
    }
  }

  v57 = *(v16 + 8);
  v57(v61, v15);
  return (v57)(v59, v15);
}

void sub_1C1B14874()
{
  v1 = v0;
  v2 = sub_1C1B944A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v69 - v9;
  v11 = sub_1C1B94A58();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v20 = v69 - v19;
  v21 = OBJC_IVAR___APPCMediaMetricsHelper_videoDuration;
  if (*(v1 + OBJC_IVAR___APPCMediaMetricsHelper_videoDuration) == 0.0)
  {
    sub_1C1B95128();
    sub_1C1AC53E4();
    v22 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C1B98E60;
    v24 = (v1 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v26 = *v24;
    v25 = v24[1];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1C1AA5E7C();
    *(v23 + 32) = v26;
    *(v23 + 40) = v25;

    sub_1C1B94BA8();
  }

  else
  {
    v73 = v18;
    v70 = v10;
    v77 = v16;
    v69[0] = v6;
    v74 = v3;
    v75 = v2;
    v76 = v17;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = [Strong adType];
      swift_unknownObjectRelease();
      if (v28 == 3)
      {
        sub_1C1B138B8();
        sub_1C1B140B0();
      }
    }

    sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1B9EEE0;
    v30 = v12[13];
    v31 = v77;
    v30(v20, *MEMORY[0x1E6989FB0], v77);
    v32 = sub_1C1B94A48();
    v79 = v1;
    v34 = v33;
    v35 = v12[1];
    v35(v20, v31);
    *(inited + 32) = v32;
    v69[1] = inited + 32;
    *(inited + 40) = v34;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v36 = *MEMORY[0x1E6989F40];
    v37 = v73;
    v78 = v12 + 13;
    v72 = v30;
    v30(v73, v36, v31);
    v38 = sub_1C1B94A48();
    v40 = v39;
    v73 = (v12 + 1);
    v71 = v35;
    v35(v37, v31);
    *(inited + 56) = v38;
    *(inited + 64) = v40;
    v41 = v79;
    v42 = OBJC_IVAR___APPCMediaMetricsHelper_videoURL;
    swift_beginAccess();
    v43 = v41 + v42;
    v44 = v70;
    sub_1C1AA7E30(v43, v70, &qword_1EBF07AC8, &qword_1C1B9CED0);
    v45 = v74;
    v46 = v75;
    if ((*(v74 + 48))(v44, 1, v75))
    {
      sub_1C1AA7C8C(v44, &qword_1EBF07AC8, &qword_1C1B9CED0);
    }

    else
    {
      v47 = v69[0];
      (*(v45 + 16))(v69[0], v44, v46);
      sub_1C1AA7C8C(v44, &qword_1EBF07AC8, &qword_1C1B9CED0);
      sub_1C1B94468();
      (*(v45 + 8))(v47, v46);
    }

    v48 = sub_1C1B94D78();

    *(inited + 72) = v48;
    v49 = v76;
    v50 = v77;
    v51 = v72;
    v72(v76, *MEMORY[0x1E6989FA8], v77);
    v52 = sub_1C1B94A48();
    v54 = v53;
    v55 = v71;
    v71(v49, v50);
    *(inited + 80) = v52;
    *(inited + 88) = v54;
    v56 = v79;
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1C1AD408C(inited);
    swift_setDeallocating();
    sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
    swift_arrayDestroy();
    sub_1C1AC1F08(&unk_1EBF08FE0, qword_1C1B9EF10);
    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_1C1B98E60;
    v51(v49, *MEMORY[0x1E6989FA0], v50);
    v58 = sub_1C1B94A48();
    v60 = v59;
    v55(v49, v50);
    *(v57 + 32) = v58;
    *(v57 + 40) = v60;
    *(v57 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1C1AB3BEC(v57);
    swift_setDeallocating();
    sub_1C1AA7C8C(v57 + 32, &qword_1EBF08DE0, &unk_1C1B9FAA0);
    v61 = *(v56 + OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker);
    [*(v61 + 16) lock];
    v62 = *(v61 + 32);
    v63 = __OFADD__(v62, 1);
    v64 = v62 + 1;
    if (v63)
    {
      __break(1u);
    }

    else
    {
      *(v61 + 32) = v64;
      [*(v61 + 16) unlock];
      v65 = *(v56 + OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator);
      swift_unknownObjectRetain();
      sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
      v66 = sub_1C1B94CA8();
      sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
      v67 = sub_1C1B94CA8();
      v68 = *(v56 + OBJC_IVAR___APPCMediaMetricsHelper_orderVendor);
      [v65 recordMetric:1600 forPurpose:100 properties:v66 internalProperties:v67 order:sub_1C1B948C8() options:0];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1C1B151A8()
{
  v1 = sub_1C1B94A58();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v38 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = [Strong bestRepresentation];
    swift_unknownObjectRelease();
    if (v10)
    {
      type metadata accessor for VideoRepresentation();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        v38[1] = v10;
        sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C1B9AF30;
        v14 = *MEMORY[0x1E6989F68];
        v15 = v2[13];
        v41 = v2 + 13;
        v15(v8, v14, v1);
        v40 = v0;
        v16 = sub_1C1B94A48();
        v18 = v17;
        v19 = v2[1];
        v38[2] = v2 + 1;
        v19(v8, v1);
        v39 = v19;
        *(inited + 32) = v16;
        *(inited + 40) = v18;
        v20 = v12 + OBJC_IVAR___APPCVideoRepresentation_videoSize;
        *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        v15(v6, *MEMORY[0x1E6989F80], v1);
        v21 = sub_1C1B94A48();
        v23 = v22;
        v19(v6, v1);
        *(inited + 56) = v21;
        *(inited + 64) = v23;
        *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        sub_1C1AD408C(inited);
        swift_setDeallocating();
        sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
        swift_arrayDestroy();
        sub_1C1AC1F08(&unk_1EBF08FE0, qword_1C1B9EF10);
        v24 = swift_initStackObject();
        *(v24 + 16) = xmmword_1C1B98E60;
        v15(v8, *MEMORY[0x1E6989FA0], v1);
        v25 = sub_1C1B94A48();
        v26 = v40;
        v27 = v25;
        v29 = v28;
        v39(v8, v1);
        *(v24 + 32) = v27;
        *(v24 + 40) = v29;
        *(v24 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1C1AB3BEC(v24);
        swift_setDeallocating();
        sub_1C1AA7C8C(v24 + 32, &qword_1EBF08DE0, &unk_1C1B9FAA0);
        v30 = *(v26 + OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker);
        [*(v30 + 16) lock];
        v31 = *(v30 + 32);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
        }

        else
        {
          *(v30 + 32) = v33;
          [*(v30 + 16) unlock];
          v34 = *(v26 + OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator);
          swift_unknownObjectRetain();
          sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
          v35 = sub_1C1B94CA8();
          sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
          v36 = sub_1C1B94CA8();
          v37 = *(v26 + OBJC_IVAR___APPCMediaMetricsHelper_orderVendor);
          [v34 recordMetric:1601 forPurpose:100 properties:v35 internalProperties:v36 order:sub_1C1B948C8() options:0];
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1C1B156F4(double a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR___APPCMediaMetricsHelper_mediaHasStarted) = 1;
  if (*(v1 + OBJC_IVAR___APPCMediaMetricsHelper_videoDuration) == 0.0)
  {
    sub_1C1B95128();
    sub_1C1AC53E4();
    v10 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C1B98E60;
    v12 = (v2 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v14 = *v12;
    v13 = v12[1];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1C1AA5E7C();
    *(v11 + 32) = v14;
    *(v11 + 40) = v13;

    sub_1C1B94BA8();
  }

  else
  {
    v15 = v7;
    v16 = sub_1C1B179B0(a1);
    if ((v16 & 0x100000000) == 0)
    {
      v17 = v16;
      sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
      inited = swift_initStackObject();
      v40 = xmmword_1C1B98E60;
      *(inited + 16) = xmmword_1C1B98E60;
      v19 = *MEMORY[0x1E6989EF0];
      v39 = v5[13];
      v39(v9, v19, v15);
      v20 = sub_1C1B94A48();
      v22 = v21;
      v23 = v5[1];
      v23(v9, v15);
      *(inited + 32) = v20;
      *(inited + 40) = v22;
      v24 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v25) = v17;
      *(inited + 48) = [v24 initWithFloat_];
      v38 = sub_1C1AD408C(inited);
      swift_setDeallocating();
      sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
      sub_1C1AC1F08(&unk_1EBF08FE0, qword_1C1B9EF10);
      v26 = swift_initStackObject();
      *(v26 + 16) = v40;
      v39(v9, *MEMORY[0x1E6989FA0], v15);
      v27 = sub_1C1B94A48();
      v29 = v28;
      v23(v9, v15);
      *(v26 + 32) = v27;
      *(v26 + 40) = v29;
      *(v26 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C1AB3BEC(v26);
      swift_setDeallocating();
      sub_1C1AA7C8C(v26 + 32, &qword_1EBF08DE0, &unk_1C1B9FAA0);
      v30 = *(v2 + OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker);
      [*(v30 + 16) lock];
      v31 = *(v30 + 32);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        __break(1u);
      }

      else
      {
        *(v30 + 32) = v33;
        [*(v30 + 16) unlock];
        v34 = *(v2 + OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator);
        swift_unknownObjectRetain();
        sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
        v35 = sub_1C1B94CA8();
        sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
        v36 = sub_1C1B94CA8();
        v37 = *(v2 + OBJC_IVAR___APPCMediaMetricsHelper_orderVendor);
        [v34 recordMetric:1602 forPurpose:100 properties:v35 internalProperties:v36 order:sub_1C1B948C8() options:0];

        swift_unknownObjectRelease();
      }
    }
  }
}

unint64_t sub_1C1B15C88(double a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*&v1[OBJC_IVAR___APPCMediaMetricsHelper_videoDuration] == 0.0)
  {
    sub_1C1B95128();
    sub_1C1AC53E4();
    v10 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C1B98E60;
    v12 = &v2[OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier];
    swift_beginAccess();
    v14 = *v12;
    v13 = *(v12 + 1);
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1C1AA5E7C();
    *(v11 + 32) = v14;
    *(v11 + 40) = v13;

    sub_1C1B94BA8();
  }

  else
  {
    v16 = v7;
    sub_1C1B17C6C();
    result = sub_1C1B179B0(a1);
    if ((result & 0x100000000) == 0)
    {
      v17 = result;
      sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1B98E60;
      (*(v5 + 104))(v9, *MEMORY[0x1E6989EF0], v16);
      v19 = sub_1C1B94A48();
      v21 = v20;
      (*(v5 + 8))(v9, v16);
      *(inited + 32) = v19;
      *(inited + 40) = v21;
      v22 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v23) = v17;
      *(inited + 48) = [v22 initWithFloat_];
      sub_1C1AD408C(inited);
      swift_setDeallocating();
      sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
      v24 = *&v2[OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker];
      result = [*(v24 + 16) lock];
      v25 = *(v24 + 32);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        __break(1u);
      }

      else
      {
        *(v24 + 32) = v27;
        [*(v24 + 16) unlock];
        v28 = *&v2[OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator];
        swift_unknownObjectRetain();
        sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
        v29 = sub_1C1B94CA8();
        v30 = *&v2[OBJC_IVAR___APPCMediaMetricsHelper_orderVendor];
        [v28 recordMetric:1604 forPurpose:100 properties:v29 internalProperties:0 order:sub_1C1B948C8() options:0];

        swift_unknownObjectRelease();

        return [v2 mediaComplete];
      }
    }
  }

  return result;
}

void sub_1C1B1608C(double a1, float a2)
{
  v3 = v2;
  v6 = sub_1C1B94A58();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v55 - v13;
  if (*(v2 + OBJC_IVAR___APPCMediaMetricsHelper_videoDuration) == 0.0)
  {
    sub_1C1B95128();
    sub_1C1AC53E4();
    v15 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C1B98E60;
    v17 = (v3 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v19 = *v17;
    v18 = v17[1];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1C1AA5E7C();
    *(v16 + 32) = v19;
    *(v16 + 40) = v18;

    sub_1C1B94BA8();
  }

  else
  {
    v20 = v12;
    v21 = sub_1C1B179B0(a1);
    if ((v21 & 0x100000000) == 0)
    {
      v57 = v2;
      v22 = v21;
      if (a2 == 1.0)
      {
        v23 = [objc_opt_self() processInfo];
        v24 = [v23 isRunningTests];

        a2 = 1.0;
        if ((v24 & 1) == 0)
        {
          v25 = [objc_opt_self() sharedInstance];
          [v25 outputVolume];
          a2 = v26;
        }
      }

      sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1B9AF30;
      v28 = v7[13];
      v29 = v20;
      v28(v14, *MEMORY[0x1E6989EF0], v20);
      v30 = sub_1C1B94A48();
      v32 = v31;
      v56 = v7[1];
      v56(v14, v20);
      *(inited + 32) = v30;
      *(inited + 40) = v32;
      v33 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v34) = v22;
      *(inited + 48) = [v33 initWithFloat_];
      v28(v11, *MEMORY[0x1E6989F90], v20);
      v35 = sub_1C1B94A48();
      v37 = v36;
      v38 = v11;
      v39 = v56;
      v56(v38, v20);
      *(inited + 56) = v35;
      *(inited + 64) = v37;
      v40 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      *&v41 = a2;
      *(inited + 72) = [v40 initWithFloat_];
      v55 = sub_1C1AD408C(inited);
      swift_setDeallocating();
      sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
      swift_arrayDestroy();
      sub_1C1AC1F08(&unk_1EBF08FE0, qword_1C1B9EF10);
      v42 = swift_initStackObject();
      *(v42 + 16) = xmmword_1C1B98E60;
      v28(v14, *MEMORY[0x1E6989FA0], v20);
      v43 = sub_1C1B94A48();
      v45 = v44;
      v39(v14, v29);
      *(v42 + 32) = v43;
      *(v42 + 40) = v45;
      v46 = v57;
      *(v42 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C1AB3BEC(v42);
      swift_setDeallocating();
      sub_1C1AA7C8C(v42 + 32, &qword_1EBF08DE0, &unk_1C1B9FAA0);
      v47 = *(v46 + OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker);
      [*(v47 + 16) lock];
      v48 = *(v47 + 32);
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        __break(1u);
      }

      else
      {
        *(v47 + 32) = v50;
        [*(v47 + 16) unlock];
        v51 = *(v46 + OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator);
        swift_unknownObjectRetain();
        sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
        v52 = sub_1C1B94CA8();
        sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
        v53 = sub_1C1B94CA8();
        v54 = *(v46 + OBJC_IVAR___APPCMediaMetricsHelper_orderVendor);
        [v51 recordMetric:1605 forPurpose:100 properties:v52 internalProperties:v53 order:sub_1C1B948C8() options:0];

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1C1B1675C(int a1, uint64_t a2, double a3)
{
  v5 = v3;
  v8 = sub_1C1B94A58();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v51 - v15;
  if (*(v3 + OBJC_IVAR___APPCMediaMetricsHelper_videoDuration) == 0.0)
  {
    sub_1C1B95128();
    sub_1C1AC53E4();
    v17 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C1B98E60;
    v19 = (v5 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v21 = *v19;
    v20 = v19[1];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1C1AA5E7C();
    *(v18 + 32) = v21;
    *(v18 + 40) = v20;

    sub_1C1B94BA8();
  }

  else
  {
    v22 = v14;
    v23 = sub_1C1B179B0(a3);
    if ((v23 & 0x100000000) == 0)
    {
      v51 = a2;
      v24 = v23;
      sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
      inited = swift_initStackObject();
      v53 = a1;
      v26 = inited;
      *(inited + 16) = xmmword_1C1B9AF30;
      v27 = *MEMORY[0x1E6989EF0];
      v28 = v9[13];
      v55 = v9 + 13;
      v28(v16, v27, v22);
      v54 = v28;
      v29 = sub_1C1B94A48();
      v31 = v30;
      v52 = v9[1];
      v52(v16, v22);
      v26[4] = v29;
      v26[5] = v31;
      v32 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v33) = v24;
      v26[6] = [v32 initWithFloat_];
      v28(v13, *MEMORY[0x1E6989EB8], v22);
      v34 = sub_1C1B94A48();
      v36 = v35;
      v37 = v52;
      v52(v13, v22);
      v26[7] = v34;
      v26[8] = v36;
      v38 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v26[9] = [v38 initWithBool_];
      sub_1C1AD408C(v26);
      swift_setDeallocating();
      sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
      swift_arrayDestroy();
      sub_1C1AC1F08(&unk_1EBF08FE0, qword_1C1B9EF10);
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_1C1B98E60;
      v54(v16, *MEMORY[0x1E6989FA0], v22);
      v40 = sub_1C1B94A48();
      v42 = v41;
      v37(v16, v22);
      *(v39 + 32) = v40;
      *(v39 + 40) = v42;
      *(v39 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C1AB3BEC(v39);
      swift_setDeallocating();
      sub_1C1AA7C8C(v39 + 32, &qword_1EBF08DE0, &unk_1C1B9FAA0);
      v43 = *(v5 + OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker);
      [*(v43 + 16) lock];
      v44 = *(v43 + 32);
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        __break(1u);
      }

      else
      {
        *(v43 + 32) = v46;
        [*(v43 + 16) unlock];
        v47 = *(v5 + OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator);
        swift_unknownObjectRetain();
        sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
        v48 = sub_1C1B94CA8();
        sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
        v49 = sub_1C1B94CA8();
        v50 = *(v5 + OBJC_IVAR___APPCMediaMetricsHelper_orderVendor);
        [v47 recordMetric:v51 forPurpose:100 properties:v48 internalProperties:v49 order:sub_1C1B948C8() options:0];

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1C1B16D70(uint64_t a1, double a2)
{
  v4 = v2;
  v6 = sub_1C1B94A58();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR___APPCMediaMetricsHelper_videoDuration) == 0.0)
  {
    sub_1C1B95128();
    sub_1C1AC53E4();
    v12 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C1B98E60;
    v14 = (v4 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v16 = *v14;
    v15 = v14[1];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1C1AA5E7C();
    *(v13 + 32) = v16;
    *(v13 + 40) = v15;

    sub_1C1B94BA8();
  }

  else
  {
    v17 = v9;
    v18 = sub_1C1B179B0(a2);
    if ((v18 & 0x100000000) == 0)
    {
      v41 = a1;
      v19 = v18;
      sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
      inited = swift_initStackObject();
      v43 = xmmword_1C1B98E60;
      *(inited + 16) = xmmword_1C1B98E60;
      v21 = *MEMORY[0x1E6989EF0];
      v42 = v7[13];
      v42(v11, v21, v17);
      v22 = sub_1C1B94A48();
      v24 = v23;
      v25 = v7[1];
      v25(v11, v17);
      *(inited + 32) = v22;
      *(inited + 40) = v24;
      v26 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v27) = v19;
      *(inited + 48) = [v26 initWithFloat_];
      v40[1] = sub_1C1AD408C(inited);
      swift_setDeallocating();
      sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
      sub_1C1AC1F08(&unk_1EBF08FE0, qword_1C1B9EF10);
      v28 = swift_initStackObject();
      *(v28 + 16) = v43;
      v42(v11, *MEMORY[0x1E6989FA0], v17);
      v29 = sub_1C1B94A48();
      v31 = v30;
      v25(v11, v17);
      *(v28 + 32) = v29;
      *(v28 + 40) = v31;
      *(v28 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C1AB3BEC(v28);
      swift_setDeallocating();
      sub_1C1AA7C8C(v28 + 32, &qword_1EBF08DE0, &unk_1C1B9FAA0);
      v32 = *(v4 + OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker);
      [*(v32 + 16) lock];
      v33 = *(v32 + 32);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        __break(1u);
      }

      else
      {
        *(v32 + 32) = v35;
        [*(v32 + 16) unlock];
        v36 = *(v4 + OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator);
        swift_unknownObjectRetain();
        sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
        v37 = sub_1C1B94CA8();
        sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
        v38 = sub_1C1B94CA8();
        v39 = *(v4 + OBJC_IVAR___APPCMediaMetricsHelper_orderVendor);
        [v36 recordMetric:v41 forPurpose:100 properties:v37 internalProperties:v38 order:sub_1C1B948C8() options:0];

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1C1B172A8()
{
  v1 = v0;
  sub_1C1B1748C(0);
  result = sub_1C1B12A28();
  if ((result & 1) == 0)
  {
    sub_1C1B95128();
    sub_1C1AC53E4();
    v3 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C1B98E60;
    v5 = (v1 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v7 = *v5;
    v6 = v5[1];
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1C1AA5E7C();
    *(v4 + 32) = v7;
    *(v4 + 40) = v6;

    sub_1C1B94BA8();
  }

  return result;
}

void sub_1C1B1748C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - v9;
  v1[OBJC_IVAR___APPCMediaMetricsHelper_mediaHasStarted] = 1;
  sub_1C1B17C6C();
  v11 = [objc_opt_self() processInfo];
  [v11 isRunningTests];

  v12 = 100;
  if (a1 < 100)
  {
    v12 = a1;
  }

  v13 = v12 & ~(v12 >> 63);
  if (v13 != a1)
  {
    LODWORD(v42) = sub_1C1B95128();
    sub_1C1AC53E4();
    v14 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C1B9EEE0;
    v16 = &v2[OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier];
    swift_beginAccess();
    v17 = *v16;
    v18 = v16[1];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1C1AA5E7C();
    *(v15 + 32) = v17;
    *(v15 + 40) = v18;
    v20 = MEMORY[0x1E69E6530];
    v21 = MEMORY[0x1E69E65A8];
    *(v15 + 96) = MEMORY[0x1E69E6530];
    *(v15 + 104) = v21;
    *(v15 + 64) = v19;
    *(v15 + 72) = a1;
    *(v15 + 136) = v20;
    *(v15 + 144) = v21;
    *(v15 + 112) = v13;

    sub_1C1B94BA8();
  }

  v41 = a1;
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9AF30;
  v23 = v13;
  v24 = v5[13];
  v24(v10, *MEMORY[0x1E6989FB8], v4);
  v25 = sub_1C1B94A48();
  v27 = v26;
  v42 = v2;
  v28 = v5[1];
  v28(v10, v4);
  *(inited + 32) = v25;
  *(inited + 40) = v27;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v29 = v43;
  v24(v43, *MEMORY[0x1E6989FA0], v4);
  v30 = sub_1C1B94A48();
  v32 = v31;
  v28(v29, v4);
  v33 = v42;
  *(inited + 56) = v30;
  *(inited + 64) = v32;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
  swift_arrayDestroy();
  v34 = *&v33[OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker];
  [*(v34 + 16) lock];
  v35 = *(v34 + 32);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v34 + 32) = v37;
    [*(v34 + 16) unlock];
    v38 = *&v33[OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator];
    swift_unknownObjectRetain();
    sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
    v39 = sub_1C1B94CA8();
    v40 = *&v33[OBJC_IVAR___APPCMediaMetricsHelper_orderVendor];
    [v38 recordMetric:1609 forPurpose:100 properties:v39 internalProperties:0 order:sub_1C1B948C8() options:0];

    swift_unknownObjectRelease();

    if (v41 == 100)
    {
      [v33 mediaComplete];
    }
  }
}

unint64_t sub_1C1B179B0(double a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR___APPCMediaMetricsHelper_videoDuration);
  if (v3 == 0.0)
  {
    sub_1C1B95128();
    sub_1C1AC53E4();
    v4 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C1B98E60;
    v6 = (v2 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1C1AA5E7C();
    *(v5 + 32) = v8;
    *(v5 + 40) = v7;

    sub_1C1B94BA8();

    v9 = 0;
  }

  else
  {
    v10 = a1 / v3;
    v11 = 1.0;
    if (v10 <= 1.0)
    {
      v11 = v10;
    }

    if (v10 >= 0.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0.0;
    }

    if (v12 != v10)
    {
      sub_1C1B95128();
      sub_1C1AC53E4();
      v13 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1C1B9EEE0;
      v15 = (v2 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
      swift_beginAccess();
      v17 = *v15;
      v16 = v15[1];
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = sub_1C1AA5E7C();
      *(v14 + 32) = v17;
      *(v14 + 40) = v16;
      v18 = MEMORY[0x1E69E6448];
      v19 = MEMORY[0x1E69E64A8];
      *(v14 + 96) = MEMORY[0x1E69E6448];
      *(v14 + 104) = v19;
      *(v14 + 72) = v10;
      *(v14 + 136) = v18;
      *(v14 + 144) = v19;
      *(v14 + 112) = v12;

      sub_1C1B94BA8();
    }

    v9 = LODWORD(v12);
  }

  return v9 | ((v3 == 0.0) << 32);
}

uint64_t sub_1C1B17C6C()
{
  v1 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v48 - v6;
  v8 = sub_1C1B94588();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = v48 - v15;
  v17 = OBJC_IVAR___APPCMediaMetricsHelper_adHasImpressed;
  if ((v0[OBJC_IVAR___APPCMediaMetricsHelper_adHasImpressed] & 1) == 0)
  {
    v18 = &v0[OBJC_IVAR___APPCMediaMetricsHelper_adType];
    if ((v0[OBJC_IVAR___APPCMediaMetricsHelper_adType + 8] & 1) == 0 && *v18 == 3)
    {
      v19 = OBJC_IVAR___APPCMediaMetricsHelper_mediaStartedTimestamp;
      v20 = result;
      swift_beginAccess();
      sub_1C1AA7E30(&v0[v19], v7, &qword_1EBF07F50, &qword_1C1B9A590);
      v21 = *(v9 + 48);
      v49 = v20;
      if (v21(v7, 1, v20) == 1)
      {
        sub_1C1AA7C8C(v7, &qword_1EBF07F50, &qword_1C1B9A590);
        sub_1C1B94578();
        (*(v9 + 56))(v5, 0, 1, v49);
        swift_beginAccess();
        sub_1C1B19384(v5, &v0[v19], &qword_1EBF07F50, &qword_1C1B9A590);
        return swift_endAccess();
      }

      (*(v9 + 32))(v16, v7, v49);
      v22 = v0;
      v23 = &v0[OBJC_IVAR___APPCMediaMetricsHelper_impressionThreshold];
      if (v0[OBJC_IVAR___APPCMediaMetricsHelper_impressionThreshold + 8])
      {
        sub_1C1B95128();
        sub_1C1AC53E4();
        v24 = sub_1C1B95298();
        sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1C1B98E60;
        v26 = v22;
        v27 = [v26 description];
        v28 = sub_1C1B94D88();
        v30 = v29;

        *(v25 + 56) = MEMORY[0x1E69E6158];
        *(v25 + 64) = sub_1C1AA5E7C();
        *(v25 + 32) = v28;
        *(v25 + 40) = v30;
        sub_1C1B94BA8();

        return (*(v9 + 8))(v16, v49);
      }

      else
      {
        v31 = *v23;
        sub_1C1B94578();
        sub_1C1B94528();
        v33 = v32;
        v34 = v13;
        v35 = *(v9 + 8);
        v35(v34, v49);
        if (v31 <= v33)
        {
          v48[0] = v35;
          v48[1] = v9 + 8;
          v36 = sub_1C1B94638();
          if ([v0 respondsToSelector_])
          {
            [v0 performSelector_];
            v37 = v49;
            (v48[0])(v16, v49);
            v38 = v0;
            v0[v17] = 1;
            *v23 = 0.0;
            *(v23 + 8) = 1;
            v39 = &v0[OBJC_IVAR___APPCMediaMetricsHelper_containerType];
            swift_beginAccess();
            *v39 = 0;
            v39[8] = 1;
            *v18 = 0;
            v18[8] = 1;
            (*(v9 + 56))(v5, 1, 1, v37);
            swift_beginAccess();
            v40 = v0;
            sub_1C1B19384(v5, &v0[v19], &qword_1EBF07F50, &qword_1C1B9A590);
            return swift_endAccess();
          }

          sub_1C1B95128();
          sub_1C1AC53E4();
          v41 = sub_1C1B95298();
          sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1C1B98E60;
          v43 = v22;
          v44 = [v43 description];
          v45 = sub_1C1B94D88();
          v47 = v46;

          *(v42 + 56) = MEMORY[0x1E69E6158];
          *(v42 + 64) = sub_1C1AA5E7C();
          *(v42 + 32) = v45;
          *(v42 + 40) = v47;
          sub_1C1B94BA8();

          return (v48[0])(v16, v49);
        }

        else
        {
          return (v35)(v16, v49);
        }
      }
    }
  }

  return result;
}

id MediaMetricsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MediaMetricsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaMetricsHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1B18484(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v29 - v10;
  v29[3] = sub_1C1B95138();
  sub_1C1AC53E4();
  v12 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C1B9D2F0;
  v14 = (v3 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v16 = *v14;
  v15 = v14[1];
  v17 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1C1AA5E7C();
  *(v13 + 64) = v18;
  *(v13 + 32) = v16;
  *(v13 + 40) = v15;

  v19 = sub_1C1B94468();
  *(v13 + 96) = v17;
  *(v13 + 104) = v18;
  *(v13 + 72) = v19;
  *(v13 + 80) = v20;
  if (a2 > 80001)
  {
    if (a2 == 80002)
    {
      v21 = 0xE300000000000000;
      v22 = 7827308;
      goto LABEL_11;
    }

    if (a2 == 80003)
    {
      v21 = 0xE400000000000000;
      v22 = 1919905648;
      goto LABEL_11;
    }

LABEL_8:
    v21 = 0xE700000000000000;
    v22 = 0x6E776F6E6B6E75;
    goto LABEL_11;
  }

  if (a2 == 80000)
  {
    v21 = 0xE400000000000000;
    v22 = 1751607656;
    goto LABEL_11;
  }

  if (a2 != 80001)
  {
    goto LABEL_8;
  }

  v21 = 0xE300000000000000;
  v22 = 6580589;
LABEL_11:
  *(v13 + 136) = v17;
  *(v13 + 144) = v18;
  v23 = MEMORY[0x1E69E63B0];
  *(v13 + 112) = v22;
  *(v13 + 120) = v21;
  v24 = MEMORY[0x1E69E6438];
  *(v13 + 176) = v23;
  *(v13 + 184) = v24;
  *(v13 + 152) = a3;
  sub_1C1B94BA8();

  v25 = sub_1C1B944A8();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v11, a1, v25);
  (*(v26 + 56))(v11, 0, 1, v25);
  v27 = OBJC_IVAR___APPCMediaMetricsHelper_videoURL;
  swift_beginAccess();
  sub_1C1B19384(v11, v4 + v27, &qword_1EBF07AC8, &qword_1C1B9CED0);
  result = swift_endAccess();
  *(v4 + OBJC_IVAR___APPCMediaMetricsHelper_videoQuality) = a2;
  *(v4 + OBJC_IVAR___APPCMediaMetricsHelper_videoDuration) = a3;
  return result;
}

Swift::Void __swiftcall MediaMetricsHelper.mediaComplete()()
{
  if (*(v0 + OBJC_IVAR___APPCMediaMetricsHelper_mediaHasStarted) == 1)
  {
    [*(v0 + OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator) recordMetric:77003 forPurpose:-1 properties:0 internalProperties:0 order:0 options:0];
  }
}

id sub_1C1B18874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = objc_allocWithZone(type metadata accessor for MediaMetricsHelper());

  return sub_1C1B18914(a1, a2, a3, a4, a5, a6, a7, a8, v18);
}

id sub_1C1B18914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  *&a9[OBJC_IVAR___APPCMediaMetricsHelper_videoDuration] = 0;
  v16 = OBJC_IVAR___APPCMediaMetricsHelper_videoURL;
  v17 = sub_1C1B944A8();
  (*(*(v17 - 8) + 56))(&a9[v16], 1, 1, v17);
  *&a9[OBJC_IVAR___APPCMediaMetricsHelper_videoQuality] = 0;
  a9[OBJC_IVAR___APPCMediaMetricsHelper_mediaHasStarted] = 0;
  v18 = &a9[OBJC_IVAR___APPCMediaMetricsHelper_impressionThreshold];
  *v18 = 0;
  v18[8] = 1;
  v19 = &a9[OBJC_IVAR___APPCMediaMetricsHelper_containerType];
  *v19 = 0;
  v19[8] = 1;
  v20 = &a9[OBJC_IVAR___APPCMediaMetricsHelper_adType];
  *v20 = 0;
  v20[8] = 1;
  v21 = OBJC_IVAR___APPCMediaMetricsHelper_mediaStartedTimestamp;
  v22 = sub_1C1B94588();
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  a9[OBJC_IVAR___APPCMediaMetricsHelper_adHasImpressed] = 0;
  swift_unknownObjectWeakInit();
  a9[OBJC_IVAR___APPCMediaMetricsHelper____lazy_storage___initialVolumeSender] = 2;
  v23 = &a9[OBJC_IVAR___APPCMediaMetricsHelper_visiblePercentageChanged];
  *v23 = 0;
  v23[1] = 0;
  *&a9[OBJC_IVAR___APPCMediaMetricsHelper__visiblePercentage] = 0;
  v24 = &a9[OBJC_IVAR___APPCMediaMetricsHelper_contextIdentifier];
  *v24 = a1;
  v24[1] = a2;
  *&a9[OBJC_IVAR___APPCMediaMetricsHelper_orderVendor] = a5;
  *&a9[OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker] = a7;
  v25 = &a9[OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier];
  *v25 = a3;
  v25[1] = a4;
  *&a9[OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator] = a6;
  *&a9[OBJC_IVAR___APPCMediaMetricsHelper_notificationOwner] = a8;
  v28.receiver = a9;
  v28.super_class = type metadata accessor for MediaMetricsHelper();
  return objc_msgSendSuper2(&v28, sel_init);
}

uint64_t type metadata accessor for MediaMetricsHelper()
{
  result = qword_1EDE6C0F8;
  if (!qword_1EDE6C0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1B18B88()
{
  sub_1C1AB00FC(319, &qword_1EDE6CD38, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C1AB00FC(319, &qword_1EDE6CDD0, MEMORY[0x1E6969530]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C1B19318(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_1C1B19354(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_1C1B19384(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C1AC1F08(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C1B193EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1B1945C(uint64_t a1)
{
  if ((a1 + 1) < 0xB)
  {
    return a1 + 1;
  }

  else
  {
    return 11;
  }
}

uint64_t static OS_dispatch_queue.asyncMainIfNecessary(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = sub_1C1B94C18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1B94C38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  v15 = sub_1C1B95178();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1B196F0;
  aBlock[3] = &unk_1F4151570;
  v16 = _Block_copy(aBlock);

  sub_1C1B94C28();
  v17[1] = MEMORY[0x1E69E7CC0];
  sub_1C1B1973C();
  sub_1C1AC1F08(&unk_1EBF09090, &qword_1C1B9F028);
  sub_1C1B19794();
  sub_1C1B95318();
  MEMORY[0x1C6907180](0, v13, v8, v16);
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t sub_1C1B196F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_1C1B1973C()
{
  result = qword_1EDE6CA58;
  if (!qword_1EDE6CA58)
  {
    sub_1C1B94C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6CA58);
  }

  return result;
}

unint64_t sub_1C1B19794()
{
  result = qword_1EDE6CA40;
  if (!qword_1EDE6CA40)
  {
    sub_1C1AC3404(&unk_1EBF09090, &qword_1C1B9F028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6CA40);
  }

  return result;
}

uint64_t XPCContentPipelineTransformer.__allocating_init(requestManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1C1AC0580(a1, v2 + 16);
  return v2;
}

uint64_t XPCContentPipelineTransformer.fetch(using:adType:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_1C1B945F8();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C1B19920, 0, 0);
}

uint64_t sub_1C1B19920()
{
  v28 = v0;
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_1C1B94BE8();
  sub_1C1AB4454(v2, qword_1EDE6D058);
  v3 = v1;
  v4 = sub_1C1B94BC8();
  v5 = sub_1C1B95138();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[8];
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    v12 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v7 + 16))(v6, v9 + v12, v8);
    v13 = sub_1C1B945A8();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_1C1AC7650(v13, v15, &v27);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_1C1AA2000, v4, v5, "[ContentPipelineTransformer] Sending request for context %s over xpc", v10, 0xCu);
    sub_1C1AA86F8(v11);
    MEMORY[0x1C6908230](v11, -1, -1);
    MEMORY[0x1C6908230](v10, -1, -1);
  }

  v17 = v0[7];
  v18 = v17[5];
  v19 = v17[6];
  sub_1C1AAABE0(v17 + 2, v18);
  v20 = *(v19 + 24);
  v26 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  v0[11] = v22;
  *v22 = v0;
  v22[1] = sub_1C1B19BF0;
  v24 = v0[5];
  v23 = v0[6];

  return v26(v24, v23, v18, v19);
}

uint64_t sub_1C1B19BF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  v7 = *(v4 + 80);

  v9 = *(v6 + 8);
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

uint64_t XPCContentPipelineTransformer.__deallocating_deinit()
{
  sub_1C1AA86F8((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1C1B19D7C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C1B013DC;

  return XPCContentPipelineTransformer.fetch(using:adType:cachePolicy:)(a1, a2);
}

unint64_t sub_1C1B19E28()
{
  result = qword_1EBF08E18;
  if (!qword_1EBF08E18)
  {
    sub_1C1B19E80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E18);
  }

  return result;
}

unint64_t sub_1C1B19E80()
{
  result = qword_1EDE6CA20[0];
  if (!qword_1EDE6CA20[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDE6CA20);
  }

  return result;
}

uint64_t sub_1C1B19F2C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C1B955F8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1C1B19F8C@<X0>(char *a1@<X8>)
{
  v2 = sub_1C1B955F8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1C1B19FF0(uint64_t a1)
{
  v2 = sub_1C1B1A644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B1A02C(uint64_t a1)
{
  v2 = sub_1C1B1A644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B1A068()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B1A0D4()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B1A124@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C1B955F8();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1C1B1A244(void *a1, uint64_t a2)
{
  v5 = sub_1C1AC1F08(&qword_1EBF08E38, &qword_1C1B9F130);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B1A644();
  sub_1C1B95A18();
  v14 = 0;
  sub_1C1B1A6EC();
  sub_1C1B95808();
  if (!v2)
  {
    sub_1C1AF1AC0(&qword_1EDE6BC08);
    sub_1C1AF1AC0(&qword_1EDE6BC10);
    swift_getObjectType();
    v13 = a2;
    v12[15] = 1;
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_1C1B1A40C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C1B1A454(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1C1B1A454(uint64_t *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF08E20, &qword_1C1B9F128);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B1A644();
  sub_1C1B95A08();
  if (!v1)
  {
    v13 = 0;
    sub_1C1B1A698();
    sub_1C1B956F8();
    type metadata accessor for PromotedContent();
    v11[15] = 1;
    sub_1C1AF1AC0(&qword_1EDE6BC08);
    sub_1C1B956F8();
    (*(v4 + 8))(v7, v3);
    v9 = v12;
  }

  sub_1C1AA86F8(a1);
  return v9;
}

unint64_t sub_1C1B1A644()
{
  result = qword_1EBF08E28;
  if (!qword_1EBF08E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E28);
  }

  return result;
}

unint64_t sub_1C1B1A698()
{
  result = qword_1EBF08E30;
  if (!qword_1EBF08E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E30);
  }

  return result;
}

unint64_t sub_1C1B1A6EC()
{
  result = qword_1EBF08E40;
  if (!qword_1EBF08E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E40);
  }

  return result;
}

unint64_t sub_1C1B1A764()
{
  result = qword_1EBF08E48;
  if (!qword_1EBF08E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E48);
  }

  return result;
}

unint64_t sub_1C1B1A7BC()
{
  result = qword_1EBF08E50;
  if (!qword_1EBF08E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E50);
  }

  return result;
}

unint64_t sub_1C1B1A814()
{
  result = qword_1EBF08E58;
  if (!qword_1EBF08E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E58);
  }

  return result;
}

unint64_t sub_1C1B1A86C()
{
  result = qword_1EBF08E60;
  if (!qword_1EBF08E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E60);
  }

  return result;
}

unint64_t sub_1C1B1A8C0()
{
  result = qword_1EBF08E68;
  if (!qword_1EBF08E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E68);
  }

  return result;
}

void sub_1C1B1A914(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C1AC1F08(&qword_1EBF08EE8, &qword_1C1B9F598);
    v2 = sub_1C1B955C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_1C1AA7C14(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_1C1B1AB0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C1AC1F08(&unk_1EBF080A0, &unk_1C1B9A670);
    v2 = sub_1C1B955C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v16 = v15 | (v14 << 6);
        v17 = (*(a1 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(a1 + 56) + 8 * v16);

        v21 = v20;
        result = sub_1C1AA7C14(v19, v18);
        if (v22)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v19;
          v9[1] = v18;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v21;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v23 = (v2[6] + 16 * result);
          *v23 = v19;
          v23[1] = v18;
          *(v2[7] + 8 * result) = v21;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1C1B1ACEC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (*(a1 + 16))
  {
    sub_1C1AC1F08(&unk_1EBF080D0, &unk_1C1B9A6A0);
    v3 = sub_1C1B955C8();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v7)
    {

      return v3;
    }

    v6 = *(a1 + 64 + 8 * v14);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v16 = v15 | (v14 << 6);
        v17 = (*(a1 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v26 = *(*(a1 + 56) + 8 * v16);

        swift_unknownObjectRetain();
        sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
        swift_dynamicCast();
        sub_1C1AA7E98(&v27, v29);
        sub_1C1AA7E98(v29, v30);
        sub_1C1AA7E98(v30, &v28);
        result = a2(v19, v18);
        if (v20)
        {
          v10 = (v3[6] + 16 * result);
          v11 = v10[1];
          *v10 = v19;
          v10[1] = v18;
          v12 = result;

          v13 = (v3[7] + 32 * v12);
          sub_1C1AA86F8(v13);
          result = sub_1C1AA7E98(&v28, v13);
          v9 = v14;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v3[2] >= v3[3])
          {
            goto LABEL_20;
          }

          *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v3[6] + 16 * result);
          *v21 = v19;
          v21[1] = v18;
          result = sub_1C1AA7E98(&v28, (v3[7] + 32 * result));
          v22 = v3[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v3[2] = v24;
          v9 = v14;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v9;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C1B1AF58(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C1AC1F08(&unk_1EBF08ED0, &qword_1C1B9F590);
    v2 = sub_1C1B955C8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1C1AAA7B8(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1C1AA7E98(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1C1AA7E98(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1C1AA7E98(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1C1B95408();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1C1AA7E98(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C1B1B268()
{
  v1 = OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B1B2AC(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1B1B368()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B1B420()
{
  *v0;
  *v0;
  *v0;
  sub_1C1B94DE8();
}

uint64_t sub_1C1B1B4C4()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B1B578@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1B1D7E0();
  *a2 = result;
  return result;
}

void sub_1C1B1B5A8(unint64_t *a1@<X8>)
{
  v2 = "tive";
  v3 = 0xD000000000000014;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = "primitiveCreator";
  }

  v4 = 0xD000000000000019;
  if (*v1)
  {
    v5 = "DedupeState";
  }

  else
  {
    v4 = 0xD000000000000011;
    v5 = "promotedContentIdentifier";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_1C1B1B620()
{
  v1 = 0xD000000000000014;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0xD000000000000019;
  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_1C1B1B694@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1B1D7E0();
  *a1 = result;
  return result;
}

uint64_t sub_1C1B1B6BC(uint64_t a1)
{
  v2 = sub_1C1B1D260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B1B6F8(uint64_t a1)
{
  v2 = sub_1C1B1D260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id DiagnosticMetricsHelper.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF08E78, &qword_1C1B9F380);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  *&v1[OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType] = 0;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B1D260();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for DiagnosticMetricsHelper();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v24) = 0;
    v11 = sub_1C1B95698();
    v13 = &v1[OBJC_IVAR___APPCDiagnosticMetricsHelper_contextIdentifier];
    *v13 = v11;
    v13[1] = v14;
    LOBYTE(v24) = 1;
    v15 = sub_1C1B95698();
    v16 = &v1[OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier];
    *v16 = v15;
    v16[1] = v17;
    v23 = 2;
    sub_1C1B1D2B4();
    sub_1C1B956F8();
    v21 = v24;
    sub_1C1B1D35C(&unk_1EDE6C140, type metadata accessor for PrimitiveCreator);
    sub_1C1B1D35C(&qword_1EDE6C150, type metadata accessor for PrimitiveCreator);
    *&v1[OBJC_IVAR___APPCDiagnosticMetricsHelper_primitiveCreator] = v21;
    [objc_opt_self() daemonDeliveryClass];
    swift_getObjCClassMetadata();
    v18 = [swift_getObjCClassFromMetadata() daemonDelivery];
    *&v1[OBJC_IVAR___APPCDiagnosticMetricsHelper_notificationOwner] = v18;
    v23 = 3;
    sub_1C1B1D308();
    sub_1C1B956F8();
    v19 = v24;
    sub_1C1B1D35C(&unk_1EDE6C0B0, type metadata accessor for MetricEventsTracker);
    sub_1C1B1D35C(&qword_1EDE6C0C0, type metadata accessor for MetricEventsTracker);
    *&v1[OBJC_IVAR___APPCDiagnosticMetricsHelper_metricEventsTracking] = v19;
    v20 = type metadata accessor for DiagnosticMetricsHelper();
    v22.receiver = v1;
    v22.super_class = v20;
    v3 = objc_msgSendSuper2(&v22, sel_init);
    (*(v6 + 8))(v9, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

uint64_t sub_1C1B1BD94(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1C1AC1F08(&qword_1EBF08EB0, &qword_1C1B9F388);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B1D260();
  sub_1C1B95A18();
  v12 = *(v4 + OBJC_IVAR___APPCDiagnosticMetricsHelper_contextIdentifier);
  v13 = *(v4 + OBJC_IVAR___APPCDiagnosticMetricsHelper_contextIdentifier + 8);
  LOBYTE(v22) = 0;

  sub_1C1B957A8();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {

    v14 = *(v4 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier);
    v15 = *(v4 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier + 8);
    LOBYTE(v22) = 1;

    sub_1C1B957A8();

    v17 = *(v4 + OBJC_IVAR___APPCDiagnosticMetricsHelper_primitiveCreator);
    type metadata accessor for PrimitiveCreator();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      swift_unknownObjectRetain();
    }

    v22 = v18;
    HIBYTE(v21) = 2;
    sub_1C1B1D3A4();
    sub_1C1B95788();

    v19 = *(v4 + OBJC_IVAR___APPCDiagnosticMetricsHelper_metricEventsTracking);
    type metadata accessor for MetricEventsTracker();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      swift_unknownObjectRetain();
    }

    v22 = v20;
    HIBYTE(v21) = 3;
    sub_1C1B1D3F8();
    sub_1C1B95788();

    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1C1B1C048(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v13);
  v5 = sub_1C1AAABE0(v13, v13[3]);
  v6 = *(v2 + OBJC_IVAR___APPCDiagnosticMetricsHelper_contextIdentifier);
  v7 = *(v2 + OBJC_IVAR___APPCDiagnosticMetricsHelper_contextIdentifier + 8);
  v9 = *(v2 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier);
  v8 = *(v2 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier + 8);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *v5;

  sub_1C1B4A2D8(v6, v7, v9, v8, sub_1C1B18B2C, v10);

  return sub_1C1AA86F8(v13);
}

uint64_t sub_1C1B1C214()
{
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v8);
  v1 = sub_1C1AAABE0(v8, v8[3]);
  v2 = *(v0 + OBJC_IVAR___APPCDiagnosticMetricsHelper_contextIdentifier);
  v3 = *(v0 + OBJC_IVAR___APPCDiagnosticMetricsHelper_contextIdentifier + 8);
  v5 = *(v0 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier);
  v4 = *(v0 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier + 8);
  v6 = *v1;

  sub_1C1B4A4E4(v2, v3, v5, v4);

  return sub_1C1AA86F8(v8);
}

uint64_t sub_1C1B1C33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v26 = a2;
  v3 = sub_1C1B94A58();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  v25 = xmmword_1C1B98E60;
  *(inited + 16) = xmmword_1C1B98E60;
  v9 = v4[13];
  v9(v7, *MEMORY[0x1E6989F88], v3);
  v10 = sub_1C1B94A48();
  v12 = v11;
  v24 = v4[1];
  v24(v7, v3);
  *(inited + 32) = v10;
  *(inited + 40) = v12;
  *(inited + 48) = sub_1C1B94D78();
  v13 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
  if (v27 == 1)
  {
    sub_1C1AC1F08(&qword_1EBF090B0, &unk_1C1B9F3A0);
    v14 = swift_initStackObject();
    *(v14 + 16) = v25;
    v9(v7, *MEMORY[0x1E6989F08], v3);
    v15 = sub_1C1B94A48();
    v17 = v16;
    v24(v7, v3);
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
    *(v14 + 48) = sub_1C1B95248();
    v18 = sub_1C1AD46B4(v14);
    swift_setDeallocating();
    sub_1C1AA7C8C(v14 + 32, &qword_1EBF08840, &qword_1C1B9CB40);
    v19 = sub_1C1B1AB0C(v18);

    v20 = *(v28 + OBJC_IVAR___APPCDiagnosticMetricsHelper_primitiveCreator);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C1AB448C(2501, 101, v13, v19);
  }

  else
  {
    v21 = *(v28 + OBJC_IVAR___APPCDiagnosticMetricsHelper_primitiveCreator);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C1AB448C(2501, 101, v13, 0);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1C1B1C6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[4] = a4;
  v24[2] = a2;
  v24[3] = a3;
  v24[1] = a1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - v10;
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9AF30;
  v13 = v5[13];
  v13(v11, *MEMORY[0x1E6989ED8], v4);
  v14 = sub_1C1B94A48();
  v16 = v15;
  v17 = v5[1];
  v17(v11, v4);
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  *(inited + 48) = sub_1C1B94D78();
  v13(v9, *MEMORY[0x1E6989F00], v4);
  v18 = sub_1C1B94A48();
  v20 = v19;
  v17(v9, v4);
  *(inited + 56) = v18;
  *(inited + 64) = v20;
  *(inited + 72) = sub_1C1B94D78();
  v21 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
  swift_arrayDestroy();
  v22 = *(v24[5] + OBJC_IVAR___APPCDiagnosticMetricsHelper_primitiveCreator);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1C1AB448C(2502, 101, v21, 0);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C1B1C9B8()
{
  v1 = v0;
  v2 = sub_1C1B94A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B98E60;
  (*(v3 + 104))(v6, *MEMORY[0x1E6989F88], v2);
  v8 = sub_1C1B94A48();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  *(inited + 48) = sub_1C1B94D78();
  v11 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
  v12 = *(v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_primitiveCreator);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1C1AB448C(2503, 101, v11, 0);

  swift_unknownObjectRelease();
  return sub_1C1B1CC00();
}

uint64_t sub_1C1B1CC00()
{
  v1 = v0;
  v2 = sub_1C1B94588();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v32 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v32 - v11;
  v13 = OBJC_IVAR___APPCDiagnosticMetricsHelper_metricEventsTracking;
  v14 = [*(v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_metricEventsTracking) prerollAdRequestTimestamp];
  if (v14)
  {
    v15 = v14;
    sub_1C1B94558();

    (*(v3 + 32))(v12, v10, v2);
    sub_1C1B94578();
    sub_1C1B94528();
    v17 = v16;
    v32[1] = sub_1C1B95108();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v18 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C1B9AF30;
    v21 = *(v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier);
    v20 = *(v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier + 8);
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1C1AA5E7C();
    v22 = MEMORY[0x1E69E63B0];
    *(v19 + 32) = v21;
    *(v19 + 40) = v20;
    v23 = MEMORY[0x1E69E6438];
    *(v19 + 96) = v22;
    *(v19 + 104) = v23;
    *(v19 + 72) = v17;

    sub_1C1B94BA8();

    v24 = *(v1 + v13);
    v25 = OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType;
    swift_beginAccess();
    [v24 sendAnalyticsEventFor:8 interval:*(v1 + v25) networkType:3 placementType:1 failed:v17];
    v26 = *(v3 + 8);
    v26(v7, v2);
    return (v26)(v12, v2);
  }

  else
  {
    sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v28 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C1B98E60;
    v31 = *(v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier);
    v30 = *(v1 + OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier + 8);
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = sub_1C1AA5E7C();
    *(v29 + 32) = v31;
    *(v29 + 40) = v30;

    sub_1C1B94BA8();
  }
}

id DiagnosticMetricsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticMetricsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticMetricsHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C1B1D158@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for DiagnosticMetricsHelper());
  result = DiagnosticMetricsHelper.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1C1B1D1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  *&a8[OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType] = 0;
  v8 = &a8[OBJC_IVAR___APPCDiagnosticMetricsHelper_contextIdentifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &a8[OBJC_IVAR___APPCDiagnosticMetricsHelper_promotedContentIdentifier];
  *v9 = a3;
  *(v9 + 1) = a4;
  *&a8[OBJC_IVAR___APPCDiagnosticMetricsHelper_primitiveCreator] = a5;
  *&a8[OBJC_IVAR___APPCDiagnosticMetricsHelper_notificationOwner] = a6;
  *&a8[OBJC_IVAR___APPCDiagnosticMetricsHelper_metricEventsTracking] = a7;
  v11.receiver = a8;
  v11.super_class = type metadata accessor for DiagnosticMetricsHelper();
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_1C1B1D260()
{
  result = qword_1EBF08E80;
  if (!qword_1EBF08E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08E80);
  }

  return result;
}

unint64_t sub_1C1B1D2B4()
{
  result = qword_1EDE6BE10;
  if (!qword_1EDE6BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE10);
  }

  return result;
}

unint64_t sub_1C1B1D308()
{
  result = qword_1EDE6BEA0;
  if (!qword_1EDE6BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEA0);
  }

  return result;
}

uint64_t sub_1C1B1D35C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1B1D3A4()
{
  result = qword_1EDE6BE18;
  if (!qword_1EDE6BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE18);
  }

  return result;
}

unint64_t sub_1C1B1D3F8()
{
  result = qword_1EDE6BEB0;
  if (!qword_1EDE6BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BEB0);
  }

  return result;
}

unint64_t sub_1C1B1D6DC()
{
  result = qword_1EBF08EB8;
  if (!qword_1EBF08EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08EB8);
  }

  return result;
}

unint64_t sub_1C1B1D734()
{
  result = qword_1EBF08EC0;
  if (!qword_1EBF08EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08EC0);
  }

  return result;
}

unint64_t sub_1C1B1D78C()
{
  result = qword_1EBF08EC8;
  if (!qword_1EBF08EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08EC8);
  }

  return result;
}

uint64_t sub_1C1B1D7E0()
{
  v0 = sub_1C1B955F8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C1B1D83C()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B1D8B0()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B1D904@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C1B955F8();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1C1B1D994@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1C1B955F8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1C1B1D9EC(uint64_t a1)
{
  v2 = sub_1C1B1E22C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B1DA28(uint64_t a1)
{
  v2 = sub_1C1B1E22C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id CalendarTapAction.__allocating_init(info:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC15PromotedContent17CalendarTapAction_eventInfo] = a1;
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = 5;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v5, sel_init);
}

id CalendarTapAction.init(info:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15PromotedContent17CalendarTapAction_eventInfo] = a1;
  *&v1[OBJC_IVAR___APPCTapAction_actionType] = 5;
  *&v1[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v3, sel_init);
}

char *sub_1C1B1DB98(uint64_t *a1)
{
  v3 = v1;
  v27 = *MEMORY[0x1E69E9840];
  v5 = sub_1C1AC1F08(qword_1EBF08F28, &qword_1C1B9F738);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B1E22C();
  sub_1C1B95A08();
  if (!v2)
  {
    sub_1C1AE4898();
    sub_1C1B95678();
    v14 = v25;
    v13 = v26;
    v23 = v25;
    if (v26 >> 60 == 15)
    {
      v15 = sub_1C1AA7D00(MEMORY[0x1E69E7CC0]);
LABEL_13:
      *&v3[OBJC_IVAR____TtC15PromotedContent17CalendarTapAction_eventInfo] = v15;
      sub_1C1B95628();
      v3 = TapAction.init(from:)(&v25);
      (*(v6 + 8))(v9, v5);
      sub_1C1AE49EC(v23, v13);
      sub_1C1AA86F8(a1);
      goto LABEL_4;
    }

    v16 = objc_opt_self();
    sub_1C1AF5DAC(v14, v13);
    v17 = sub_1C1B944C8();
    v25 = 0;
    v18 = [v16 JSONObjectWithData:v17 options:0 error:&v25];

    if (v18)
    {
      v19 = v25;
      sub_1C1B952F8();
      swift_unknownObjectRelease();
      sub_1C1AC1F08(&unk_1EBF08348, &unk_1C1B9F740);
      if (swift_dynamicCast())
      {
        v15 = v24;
      }

      else
      {
        v15 = sub_1C1AA7D00(MEMORY[0x1E69E7CC0]);
      }

      sub_1C1AE49EC(v23, v13);
      goto LABEL_13;
    }

    v22 = v25;
    v20 = v23;
    sub_1C1AE49EC(v23, v13);
    sub_1C1B94458();

    swift_willThrow();
    sub_1C1AE49EC(v20, v13);
    (*(v6 + 8))(v9, v5);
  }

  sub_1C1AA86F8(a1);
  type metadata accessor for CalendarTapAction();
  swift_deallocPartialClassInstance();
LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1C1B1DF3C(void *a1)
{
  v3 = v1;
  v25[5] = *MEMORY[0x1E69E9840];
  v5 = sub_1C1AC1F08(&qword_1EBF08F00, &unk_1C1B9F5B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B1E22C();
  sub_1C1B95A18();
  v11 = objc_opt_self();
  v24[1] = v3;
  v12 = *(v3 + OBJC_IVAR____TtC15PromotedContent17CalendarTapAction_eventInfo);
  v13 = sub_1C1B94CA8();
  v14 = [v11 isValidJSONObject_];

  if (!v14)
  {
    sub_1C1B95828();
    if (!v2)
    {
      goto LABEL_9;
    }

LABEL_10:
    result = (*(v6 + 8))(v9, v5);
    goto LABEL_11;
  }

  v15 = sub_1C1B94CA8();
  v25[0] = 0;
  v16 = [v11 dataWithJSONObject:v15 options:0 error:v25];

  v17 = v25[0];
  if (!v16)
  {
    v22 = v17;
    sub_1C1B94458();

    swift_willThrow();
    goto LABEL_10;
  }

  v18 = sub_1C1B944D8();
  v20 = v19;

  v25[0] = v18;
  v25[1] = v20;
  sub_1C1AE4B54();
  sub_1C1B95808();
  if (!v2)
  {
    sub_1C1AE4A00(v18, v20);
LABEL_9:
    sub_1C1B95738();
    sub_1C1B3BBE0(v25);
    sub_1C1AA86F8(v25);
    goto LABEL_10;
  }

  (*(v6 + 8))(v9, v5);
  result = sub_1C1AE4A00(v18, v20);
LABEL_11:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1C1B1E22C()
{
  result = qword_1EBF08F08;
  if (!qword_1EBF08F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08F08);
  }

  return result;
}

id CalendarTapAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarTapAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C1B1E398()
{
  result = qword_1EBF08F10;
  if (!qword_1EBF08F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08F10);
  }

  return result;
}

unint64_t sub_1C1B1E3F0()
{
  result = qword_1EBF08F18;
  if (!qword_1EBF08F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08F18);
  }

  return result;
}

unint64_t sub_1C1B1E448()
{
  result = qword_1EBF08F20;
  if (!qword_1EBF08F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08F20);
  }

  return result;
}

uint64_t CachingContentPipelineTransformer.__allocating_init(storage:readthroughSource:storageKey:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1C1AC0580(a1, v8 + 16);
  sub_1C1AC0580(a2, v8 + 56);
  *(v8 + 96) = a3;
  *(v8 + 104) = a4;
  return v8;
}

uint64_t CachingContentPipelineTransformer.init(storage:readthroughSource:storageKey:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  sub_1C1AC0580(a1, v4 + 16);
  sub_1C1AC0580(a2, v4 + 56);
  *(v4 + 96) = a3;
  *(v4 + 104) = a4;
  return v4;
}

uint64_t sub_1C1B1E568(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = v3;
  *(v4 + 96) = a2;
  *(v4 + 104) = v5;
  *(v4 + 88) = a1;
  *(v4 + 112) = *v5;
  v7 = sub_1C1B945F8();
  *(v4 + 120) = v7;
  v8 = *(v7 - 8);
  *(v4 + 128) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 169) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C1B1E660, 0, 0);
}

uint64_t sub_1C1B1E660()
{
  v39 = v0;
  if ((*(v0 + 169) & 1) == 0)
  {
    v1 = *(v0 + 104);
    v2 = v1[6];
    sub_1C1AAABE0(v1 + 2, v1[5]);
    v3 = v1[12];
    v4 = v1[13];
    v5 = sub_1C1B94828();
    if (v5)
    {
      v6 = v5;
      v7 = *(v0 + 112);
      *(v0 + 80) = v5;
      v8 = *(v7 + 80);
      sub_1C1B94FA8();
      swift_getWitnessTable();
      if (sub_1C1B950A8())
      {
        if (qword_1EDE6C4E0 != -1)
        {
          swift_once();
        }

        v9 = *(v0 + 88);
        v10 = sub_1C1B94BE8();
        sub_1C1AB4454(v10, qword_1EDE6D058);

        v11 = v9;
        v12 = sub_1C1B94BC8();
        v13 = sub_1C1B95138();

        if (os_log_type_enabled(v12, v13))
        {
          v15 = *(v0 + 128);
          v14 = *(v0 + 136);
          v16 = *(v0 + 120);
          v17 = *(v0 + 88);
          v18 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v38 = v36;
          *v18 = 134218242;
          *(v18 + 4) = sub_1C1B94F58();

          *(v18 + 12) = 2080;
          v19 = OBJC_IVAR___APPCBaseContext_identifier;
          swift_beginAccess();
          (*(v15 + 16))(v14, v17 + v19, v16);
          v20 = sub_1C1B945A8();
          v22 = v21;
          (*(v15 + 8))(v14, v16);
          v23 = sub_1C1AC7650(v20, v22, &v38);

          *(v18 + 14) = v23;
          _os_log_impl(&dword_1C1AA2000, v12, v13, "[ContentPipelineTransformer] Returning %ld cached contents for context %s", v18, 0x16u);
          sub_1C1AA86F8(v36);
          MEMORY[0x1C6908230](v36, -1, -1);
          MEMORY[0x1C6908230](v18, -1, -1);
        }

        else
        {
        }

        v34 = *(v0 + 136);

        v35 = *(v0 + 8);

        return v35(v6);
      }
    }
  }

  v24 = *(v0 + 169);
  v25 = *(v0 + 104);
  v26 = v25[10];
  v27 = v25[11];
  sub_1C1AAABE0(v25 + 7, v26);
  *(v0 + 168) = v24;
  v28 = *(v27 + 24);
  v37 = (v28 + *v28);
  v29 = v28[1];
  v30 = swift_task_alloc();
  *(v0 + 144) = v30;
  *v30 = v0;
  v30[1] = sub_1C1B1EA50;
  v32 = *(v0 + 88);
  v31 = *(v0 + 96);

  return v37(v32, v31, v0 + 168, v26, v27);
}

uint64_t sub_1C1B1EA50(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v7 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v5 = sub_1C1B1EEC8;
  }

  else
  {
    v5 = sub_1C1B1EB64;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C1B1EB64()
{
  v34 = v0;
  v1 = v0[20];
  v2 = v0[14];
  v0[8] = v0[19];
  v3 = swift_task_alloc();
  v3[2] = v2[10];
  v3[3] = v2[11];
  v3[4] = v2[12];
  sub_1C1B94FA8();

  swift_getWitnessTable();
  v4 = sub_1C1B954E8();

  v0[9] = v4;
  swift_getWitnessTable();
  if (sub_1C1B950A8())
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v5 = v0[19];
    v6 = v0[11];
    v7 = sub_1C1B94BE8();
    sub_1C1AB4454(v7, qword_1EDE6D058);
    v8 = v6;

    v9 = sub_1C1B94BC8();
    v10 = sub_1C1B95138();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[19];
    if (v11)
    {
      v14 = v0[16];
      v13 = v0[17];
      v31 = v0[15];
      v15 = v0[11];
      v16 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v16 = 134218242;
      *(v16 + 4) = sub_1C1B94F58();

      *(v16 + 12) = 2080;
      v17 = OBJC_IVAR___APPCBaseContext_identifier;
      swift_beginAccess();
      (*(v14 + 16))(v13, v15 + v17, v31);
      v18 = sub_1C1B945A8();
      v20 = v19;
      (*(v14 + 8))(v13, v31);
      v21 = sub_1C1AC7650(v18, v20, &v33);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_1C1AA2000, v9, v10, "[ContentPipelineTransformer] Setting %ld cached contents for context %s", v16, 0x16u);
      sub_1C1AA86F8(v32);
      MEMORY[0x1C6908230](v32, -1, -1);
      MEMORY[0x1C6908230](v16, -1, -1);
    }

    else
    {
      v22 = v0[19];
    }

    v23 = v0[13];
    v24 = v23[6];
    sub_1C1AAABE0(v23 + 2, v23[5]);
    v25 = v23[12];
    v26 = v23[13];
    sub_1C1B94838();
  }

  v27 = v0[19];
  v28 = v0[17];

  v29 = v0[1];

  return v29(v27);
}

uint64_t sub_1C1B1EEC8()
{
  v1 = v0[17];

  v2 = v0[1];
  v3 = v0[20];

  return v2();
}

uint64_t sub_1C1B1EF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = v3[6];
  v9 = *v3;
  sub_1C1AAABE0(v3 + 2, v3[5]);
  v10 = v3[12];
  v11 = v3[13];
  v12 = sub_1C1B94828();
  if (v12)
  {
    v24[0] = v12;
    MEMORY[0x1EEE9AC00](v12);
    v22 = *(v9 + 80);
    v23 = *(v9 + 96);
    sub_1C1B94FA8();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1C1B950E8();
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C1B94BE8();
    sub_1C1AB4454(v13, qword_1EDE6D058);
    v14 = sub_1C1B94BC8();
    v15 = sub_1C1B95138();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      swift_beginAccess();

      v17 = sub_1C1B94F58();

      *(v16 + 4) = v17;
      _os_log_impl(&dword_1C1AA2000, v14, v15, "[ContentPipelineTransformer] Removing cached content. Remaining contents: %ld", v16, 0xCu);
      MEMORY[0x1C6908230](v16, -1, -1);
    }

    v18 = v4[6];
    sub_1C1AAABE0(v4 + 2, v4[5]);
    swift_beginAccess();

    sub_1C1B94838();
    swift_bridgeObjectRelease_n();
    a3 = a3;
  }

  v19 = v4[10];
  v20 = v4[11];
  sub_1C1AAABE0(v4 + 7, v19);
  v24[0] = a1;
  v24[1] = a2;
  return (*(v20 + 32))(v24, a3, v19, v20);
}

uint64_t sub_1C1B1F234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C1B95478();
  if (v8 == a2 && v9 == a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1C1B95888();
  }

  return v6 & 1;
}

uint64_t sub_1C1B1F2C0()
{
  v1 = v0[6];
  sub_1C1AAABE0(v0 + 2, v0[5]);
  v2 = v0[12];
  v3 = v0[13];
  sub_1C1B94848();
  v4 = v0[10];
  v5 = v0[11];
  sub_1C1AAABE0(v0 + 7, v4);
  return (*(v5 + 40))(v4, v5);
}

uint64_t *CachingContentPipelineTransformer.deinit()
{
  sub_1C1AA86F8(v0 + 2);
  sub_1C1AA86F8(v0 + 7);
  v1 = v0[13];

  return v0;
}

uint64_t CachingContentPipelineTransformer.__deallocating_deinit()
{
  CachingContentPipelineTransformer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t sub_1C1B1F3A0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C1B013DC;

  return sub_1C1B1E568(a1, a2, a3);
}

uint64_t sub_1C1B1F4F0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C1B1F234(a1, v1[5], v1[6]) & 1;
}

uint64_t dispatch thunk of CachingContentPipelineTransformer.fetch(using:adType:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 136);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1C1AEE19C;

  return v12(a1, a2, a3);
}

id DenylistReasonCharacteristic.__allocating_init(globalCategories:globalKeywords:campaignCategories:campaignKeywords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___APPCDenylistReasonCharacteristic_globalCategories;
  v11 = MEMORY[0x1E69E7CC0];
  *&v9[OBJC_IVAR___APPCDenylistReasonCharacteristic_globalCategories] = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR___APPCDenylistReasonCharacteristic_globalKeywords;
  *&v9[OBJC_IVAR___APPCDenylistReasonCharacteristic_globalKeywords] = v11;
  v13 = OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignCategories;
  *&v9[OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignCategories] = v11;
  v14 = OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignKeywords;
  *&v9[OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignKeywords] = v11;
  swift_beginAccess();
  *&v9[v10] = a1;
  swift_beginAccess();
  *&v9[v12] = a2;
  swift_beginAccess();
  *&v9[v13] = a3;
  swift_beginAccess();
  v15 = *&v9[v14];
  *&v9[v14] = a4;

  v17.receiver = v9;
  v17.super_class = v4;
  return objc_msgSendSuper2(&v17, sel_init);
}

unint64_t sub_1C1B1F868@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1B1FEA0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1C1B1FA58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  v5 = *(a1 + v4);

  v6 = sub_1C1B94EB8();

  return v6;
}

uint64_t sub_1C1B1FAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_1C1B94EC8();
  v7 = *a4;
  swift_beginAccess();
  v8 = *(a1 + v7);
  *(a1 + v7) = v6;
}

id DenylistReasonCharacteristic.init(globalCategories:globalKeywords:campaignCategories:campaignKeywords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___APPCDenylistReasonCharacteristic_globalCategories;
  v10 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR___APPCDenylistReasonCharacteristic_globalCategories] = MEMORY[0x1E69E7CC0];
  v11 = OBJC_IVAR___APPCDenylistReasonCharacteristic_globalKeywords;
  *&v4[OBJC_IVAR___APPCDenylistReasonCharacteristic_globalKeywords] = v10;
  v12 = OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignCategories;
  *&v4[OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignCategories] = v10;
  v13 = OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignKeywords;
  *&v4[OBJC_IVAR___APPCDenylistReasonCharacteristic_campaignKeywords] = v10;
  swift_beginAccess();
  *&v4[v9] = a1;
  swift_beginAccess();
  *&v4[v11] = a2;
  swift_beginAccess();
  v14 = *&v4[v12];
  *&v4[v12] = a3;

  swift_beginAccess();
  v15 = *&v4[v13];
  *&v4[v13] = a4;

  v17.receiver = v4;
  v17.super_class = type metadata accessor for DenylistReasonCharacteristic();
  return objc_msgSendSuper2(&v17, sel_init);
}

id DenylistReasonCharacteristic.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DenylistReasonCharacteristic.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DenylistReasonCharacteristic();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C1B1FEA0(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B1FED8()
{
  result = qword_1EBF08FD0;
  if (!qword_1EBF08FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08FD0);
  }

  return result;
}

uint64_t static AdPosition.positionFromSlotNumber(value:)(uint64_t a1)
{
  v1 = 7102;
  if ((a1 - 3) >= 8)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    v1 = 7101;
  }

  if (a1 == 1)
  {
    return 7100;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C1B20224@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1B20258(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C1B20258(uint64_t result)
{
  if ((result - 7100) >= 3 && result != 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B2027C()
{
  result = qword_1EBF08FD8;
  if (!qword_1EBF08FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08FD8);
  }

  return result;
}

uint64_t InMemoryCache.__allocating_init()()
{
  v0 = swift_allocObject();
  InMemoryCache.init()();
  return v0;
}

void *InMemoryCache.init()()
{
  v1 = *(*v0 + 80);
  v2 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v3 = sub_1C1B94F18();
  v4 = sub_1C1B20B18(v3, v2, v1, MEMORY[0x1E69E6168]);

  v0[2] = v4;
  v0[3] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  return v0;
}

id sub_1C1B2047C()
{
  v1 = *v0;
  [v0[3] lock];
  swift_beginAccess();
  v2 = v0[2];
  v3 = *(v1 + 80);

  sub_1C1B94D08();

  return [v0[3] unlock];
}

uint64_t sub_1C1B20554(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 10);
  v6 = sub_1C1B952D8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v15 - v8;
  [v2[3] lock];
  v10 = (*(v4[11] + 24))(v5);
  v12 = v11;
  v13 = *(v5 - 8);
  (*(v13 + 16))(v9, a1, v5);
  (*(v13 + 56))(v9, 0, 1, v5);
  v15[4] = v10;
  v15[5] = v12;
  swift_beginAccess();
  sub_1C1B94CF8();
  sub_1C1B94D18();
  swift_endAccess();
  [v2[3] unlock];
  return 1;
}

uint64_t sub_1C1B20708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*v3 + 10);
  v7 = sub_1C1B952D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v12 - v9;
  [v3[3] lock];
  (*(*(v6 - 8) + 56))(v10, 1, 1, v6);
  v12[4] = a1;
  v12[5] = a2;
  swift_beginAccess();
  sub_1C1B94CF8();

  sub_1C1B94D18();
  swift_endAccess();
  [v3[3] unlock];
  return 1;
}

uint64_t InMemoryCache.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t InMemoryCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C1B208E4(uint64_t a1)
{
  v2 = *v1;
  sub_1C1B20554(a1);
  return 1;
}

uint64_t sub_1C1B2090C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_1C1B20708(a1, a2);
  return 1;
}

unint64_t sub_1C1B20934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1C1B94D28();

  return sub_1C1B20990(a1, v9, a2, a3);
}

unint64_t sub_1C1B20990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1C1B94D68();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1C1B20B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1C1B94F58())
  {
    sub_1C1B955D8();
    v13 = sub_1C1B955C8();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1C1B94F58();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1C1B94F38())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1C1B95488();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1C1B20934(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t SubscriptionType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

void static SubscriptionEvent.subscribed(identifier:purchase:type:token:source:currency:price:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1C1AC1F08(&unk_1EBF08FE0, qword_1C1B9EF10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9EEE0;
  v17 = *MEMORY[0x1E6986238];
  *(inited + 32) = sub_1C1B94D88();
  *(inited + 40) = v18;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v19 = *MEMORY[0x1E6986230];
  *(inited + 56) = sub_1C1B94D88();
  *(inited + 64) = v20;
  *(inited + 72) = sub_1C1B94D78();
  v21 = *MEMORY[0x1E6986228];
  *(inited + 80) = sub_1C1B94D88();
  *(inited + 88) = v22;
  *(inited + 96) = sub_1C1B94D78();
  v23 = sub_1C1AB3BEC(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&qword_1EBF08DE0, &unk_1C1B9FAA0);
  swift_arrayDestroy();
  if (a2)
  {
    v24 = *MEMORY[0x1E6986210];
    v25 = sub_1C1B94D88();
    v27 = v26;
    v28 = sub_1C1B94D78();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v23;
    sub_1C1AB7E28(v28, v25, v27, isUniquelyReferenced_nonNull_native, &v60);

    v23 = v60;
  }

  if (a4)
  {
    v30 = *MEMORY[0x1E6986220];
    v31 = sub_1C1B94D88();
    v33 = v32;
    v34 = sub_1C1B94D78();
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v23;
    sub_1C1AB7E28(v34, v31, v33, v35, &v60);

    v23 = v60;
  }

  if (a11)
  {
    if (a13)
    {
      v36 = *MEMORY[0x1E6986208];
      v37 = sub_1C1B94D88();
      v39 = v38;
      v40 = sub_1C1B94D78();
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v60 = v23;
      sub_1C1AB7E28(v40, v37, v39, v41, &v60);

      v42 = v60;
      v43 = *MEMORY[0x1E6986218];
      v44 = sub_1C1B94D88();
      v46 = v45;
      v47 = sub_1C1B94D78();
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v60 = v42;
      sub_1C1AB7E28(v47, v44, v46, v48, &v60);

      goto LABEL_15;
    }

    v49 = "SubscriptionEvent: subscribed() currency provided without price! (ignored)";
  }

  else
  {
    if (!a13)
    {
      goto LABEL_15;
    }

    v49 = "SubscriptionEvent: subscribed() price provided without currency! (ignored)";
  }

  v50 = (v49 - 32) | 0x8000000000000000;
  v51 = sub_1C1B95128();
  sub_1C1AC53E4();
  v52 = sub_1C1B95298();
  if (os_log_type_enabled(v52, v51))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v60 = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_1C1AC7650(0xD00000000000004ALL, v50, &v60);
    _os_log_impl(&dword_1C1AA2000, v52, v51, "%s", v53, 0xCu);
    sub_1C1AA86F8(v54);
    MEMORY[0x1C6908230](v54, -1, -1);
    MEMORY[0x1C6908230](v53, -1, -1);
  }

LABEL_15:
  v55 = objc_opt_self();
  [v55 metricClass];
  swift_getObjCClassMetadata();
  v56 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
  v57 = sub_1C1B94CA8();

  v58 = [v56 initWithPurpose:-1 metric:77002 contentIdentifier:0 contextIdentifier:0 handle:0 secondaryHandle:0 branch:0 properties:0 internalProperties:v57 relayData:0 environment:0 order:0 options:0];

  if (v58)
  {
    [v55 daemonDeliveryClass];
    swift_getObjCClassMetadata();
    [objc_msgSend(swift_getObjCClassFromMetadata() daemonDelivery)];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C1B95128();
    sub_1C1AC53E4();
    v59 = sub_1C1B95298();
    sub_1C1B94BA8();
  }
}

uint64_t static SubscriptionEvent.subscribed(identifier:purchase:type:token:source:currency:price:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t, unint64_t, unint64_t))
{
  sub_1C1AC1F08(&unk_1EBF08FE0, qword_1C1B9EF10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9EEE0;
  v18 = *MEMORY[0x1E6986238];
  *(inited + 32) = sub_1C1B94D88();
  *(inited + 40) = v19;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v20 = *MEMORY[0x1E6986230];
  *(inited + 56) = sub_1C1B94D88();
  *(inited + 64) = v21;
  *(inited + 72) = sub_1C1B94D78();
  v22 = *MEMORY[0x1E6986228];
  *(inited + 80) = sub_1C1B94D88();
  *(inited + 88) = v23;
  *(inited + 96) = sub_1C1B94D78();
  v24 = sub_1C1AB3BEC(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&qword_1EBF08DE0, &unk_1C1B9FAA0);
  swift_arrayDestroy();
  if (a2)
  {
    v25 = *MEMORY[0x1E6986210];
    v26 = sub_1C1B94D88();
    v28 = v27;
    v29 = sub_1C1B94D78();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v24;
    sub_1C1AB7E28(v29, v26, v28, isUniquelyReferenced_nonNull_native, &v63);

    v24 = v63;
  }

  if (a4)
  {
    v31 = *MEMORY[0x1E6986220];
    v32 = sub_1C1B94D88();
    v34 = v33;
    v35 = sub_1C1B94D78();
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v24;
    sub_1C1AB7E28(v35, v32, v34, v36, &v63);

    v24 = v63;
  }

  if (a11)
  {
    if (a13)
    {
      v37 = *MEMORY[0x1E6986208];
      v38 = sub_1C1B94D88();
      v40 = v39;
      v41 = sub_1C1B94D78();
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v24;
      sub_1C1AB7E28(v41, v38, v40, v42, &v63);

      v43 = v63;
      v44 = *MEMORY[0x1E6986218];
      v45 = sub_1C1B94D88();
      v47 = v46;
      v48 = sub_1C1B94D78();
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v43;
      sub_1C1AB7E28(v48, v45, v47, v49, &v63);

      v50 = 0;
LABEL_15:
      v52 = 0xE000000000000000;
      goto LABEL_16;
    }

    v50 = 0xD00000000000004ALL;
    v51 = "SubscriptionEvent: subscribed() currency provided without price! (ignored)";
  }

  else
  {
    if (!a13)
    {
      v50 = 0;
      goto LABEL_15;
    }

    v50 = 0xD00000000000004ALL;
    v51 = "SubscriptionEvent: subscribed() price provided without currency! (ignored)";
  }

  v52 = (v51 - 32) | 0x8000000000000000;
  v53 = sub_1C1B95128();
  sub_1C1AC53E4();
  v54 = sub_1C1B95298();
  if (os_log_type_enabled(v54, v53))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v63 = v56;
    *v55 = 136315138;
    *(v55 + 4) = sub_1C1AC7650(0xD00000000000004ALL, v52, &v63);
    _os_log_impl(&dword_1C1AA2000, v54, v53, "%s", v55, 0xCu);
    sub_1C1AA86F8(v56);
    MEMORY[0x1C6908230](v56, -1, -1);
    MEMORY[0x1C6908230](v55, -1, -1);
  }

LABEL_16:
  v57 = objc_opt_self();
  [v57 metricClass];
  swift_getObjCClassMetadata();
  v58 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
  v59 = sub_1C1B94CA8();

  v60 = [v58 initWithPurpose:-1 metric:77002 contentIdentifier:0 contextIdentifier:0 handle:0 secondaryHandle:0 branch:0 properties:0 internalProperties:v59 relayData:0 environment:0 order:0 options:0];

  if (!v60)
  {
    sub_1C1B95128();
    sub_1C1AC53E4();
    v61 = sub_1C1B95298();
    sub_1C1B94BA8();

    if (!a14)
    {
    }

    sub_1C1AC0598(a14);

    a14(0, v50, v52);

LABEL_21:
    sub_1C1AC0530(a14);
  }

  [v57 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  [objc_msgSend(swift_getObjCClassFromMetadata() daemonDelivery)];
  swift_unknownObjectRelease();
  if (a14)
  {
    sub_1C1AC0598(a14);

    a14(1, v50, v52);

    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  return swift_unknownObjectRelease();
}

id SubscriptionEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SubscriptionEvent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubscriptionEvent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SubscriptionEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubscriptionEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C1B21BF0()
{
  result = qword_1EBF08FF0;
  if (!qword_1EBF08FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08FF0);
  }

  return result;
}

uint64_t FrequencyCapDataType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0x6B63696C43;
    }
  }

  else
  {
    MEMORY[0x1C6906DF0](0x64616F6C6E776F44, 0xE90000000000005BLL);
    type metadata accessor for ADDownloadType(0);
    sub_1C1B95558();
    MEMORY[0x1C6906DF0](93, 0xE100000000000000);
    return 0;
  }
}

void sub_1C1B21D50(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 type];
  v5 = [a1 text];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1C1B94D88();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 accessibleText];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1C1B94D88();
    v14 = v13;
  }

  else
  {

    v12 = 0;
    v14 = 0;
  }

  if ((v4 - 100000) >= 7)
  {
    v15 = 6;
  }

  else
  {
    v15 = 0x5020704030100uLL >> (8 * (v4 + 96));
  }

  *a2 = v15;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
}

uint64_t dispatch thunk of AppImpressionable.init(compactJWS:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1C1AB9A98;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AppImpressionable.beginView()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C1AB9CA0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of AppImpressionable.endView()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C1AB9CA0;

  return v9(a1, a2);
}

uint64_t sub_1C1B221C8()
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1B22338()
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1B22478()
{
  sub_1C1B94DE8();
}

void sub_1C1B225C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

unint64_t sub_1C1B2262C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x726F746E65766E69;
    v6 = 0x6574736575716572;
    if (a1 != 2)
    {
      v6 = 0x746E6F437377656ELL;
    }

    if (a1)
    {
      v5 = 0x6C6F686563616C70;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x74696D696CLL;
    v2 = 0x676E696863746566;
    if (a1 != 7)
    {
      v2 = 0x676E6974696177;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65726F7453707061;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
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

uint64_t sub_1C1B22774()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B221C8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B227C4()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B221C8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B22808@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1B2A6A4();
  *a2 = result;
  return result;
}

unint64_t sub_1C1B22838@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C1B2262C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C1B22880@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1B2A6A4();
  *a1 = result;
  return result;
}

uint64_t sub_1C1B228A8(uint64_t a1)
{
  v2 = sub_1C1B2AF14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B228E4(uint64_t a1)
{
  v2 = sub_1C1B2AF14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B22920()
{
  [objc_opt_self() daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v0 = [swift_getObjCClassFromMetadata() daemonDelivery];
  swift_getObjectType();
  v1 = type metadata accessor for ContextMetricsNotificationOwner();
  v2 = swift_allocObject();
  v3 = sub_1C1B4A96C(v0, v2);
  result = swift_unknownObjectRelease();
  qword_1EDE6CE80 = v1;
  unk_1EDE6CE88 = &off_1F4152CF0;
  qword_1EDE6CE68 = v3;
  return result;
}

char *sub_1C1B229D0()
{
  v1 = *(v0 + OBJC_IVAR___APPCBaseContext_maxSize);
  v2 = *(v0 + OBJC_IVAR___APPCBaseContext_maxSize + 8);
  v3 = *(v0 + OBJC_IVAR___APPCBaseContext_current);
  v4 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = (v0 + OBJC_IVAR___APPCBaseContext_requestedAd);
  swift_beginAccess();
  v7 = v6[1];
  v26 = *v6;
  v25 = type metadata accessor for ContextBuilder();
  v8 = objc_allocWithZone(v25);

  v24 = v5;
  sub_1C1B945E8();
  v9 = OBJC_IVAR___APPCContextBuilder_current;
  *&v8[OBJC_IVAR___APPCContextBuilder_current] = 0;
  v10 = &v8[OBJC_IVAR___APPCContextBuilder_requestedAd];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR___APPCContextBuilder_newsContext;
  *&v8[OBJC_IVAR___APPCContextBuilder_newsContext] = 0;
  v12 = OBJC_IVAR___APPCContextBuilder_resourceLock;
  *&v8[v12] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v13 = MEMORY[0x1E69E7CC0];
  *&v8[OBJC_IVAR___APPCContextBuilder_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v14 = &v8[OBJC_IVAR___APPCContextBuilder_maxSize];
  *v14 = v1;
  *(v14 + 1) = v2;
  swift_beginAccess();
  v15 = *&v8[v9];
  *&v8[v9] = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v8[OBJC_IVAR___APPCContextBuilder_next] = v13;
  swift_beginAccess();
  v16 = *&v8[v11];
  *&v8[v11] = v5;
  v17 = v24;

  swift_beginAccess();
  v18 = *(v10 + 1);
  *v10 = v26;
  *(v10 + 1) = v7;

  v27.receiver = v8;
  v27.super_class = v25;
  v19 = objc_msgSendSuper2(&v27, sel_init);

  v20 = *(v0 + OBJC_IVAR___APPCBaseContext_next);
  v21 = OBJC_IVAR___APPCContextBuilder_next;
  swift_beginAccess();
  v22 = *&v19[v21];
  *&v19[v21] = v20;

  return v19;
}

uint64_t sub_1C1B22CA0()
{
  v1 = v0;
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = 0;
  v14[2] = 0xE000000000000000;
  sub_1C1B95468();
  v7 = [v0 description];
  v8 = sub_1C1B94D88();
  v10 = v9;

  v15 = v8;
  v16 = v10;
  MEMORY[0x1C6906DF0](0x6669746E65646920, 0xED0000203A726569);
  v11 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v11, v2);
  sub_1C1AA5A14(&qword_1EDE6B830, MEMORY[0x1E69695A8]);
  v12 = sub_1C1B95858();
  MEMORY[0x1C6906DF0](v12);

  (*(v3 + 8))(v6, v2);
  return v15;
}

void sub_1C1B22E84(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_1C1B23038@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  return sub_1C1AA7E30(v1 + v3, a1, &qword_1EBF07F50, &qword_1C1B9A590);
}

uint64_t sub_1C1B231E0(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  sub_1C1AABE90(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1C1B23240(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C1AA7E30(a1, &v11 - v6, &qword_1EBF07F50, &qword_1C1B9A590);
  v8 = *a2;
  v9 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  sub_1C1AABE90(v7, v8 + v9);
  return swift_endAccess();
}

char *Context.__allocating_init(placement:appStoreSupplementalContext:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v7 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = sub_1C1B945F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ContentDepiction();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR___APPCContentDepiction_identifier];
  *v18 = 0;
  *(v18 + 1) = 0xE000000000000000;
  *&v17[OBJC_IVAR___APPCContentDepiction_adjacentPosition] = 0;
  *&v17[OBJC_IVAR___APPCContentDepiction_placement] = a1;
  v19 = &v17[OBJC_IVAR___APPCContentDepiction_language];
  *v19 = 0;
  *(v19 + 1) = 0xE000000000000000;
  v20 = &v17[OBJC_IVAR___APPCContentDepiction_locale];
  *v20 = 0;
  *(v20 + 1) = 0xE000000000000000;
  v21 = MEMORY[0x1E69E7CC0];
  *&v17[OBJC_IVAR___APPCContentDepiction_searchTerms] = MEMORY[0x1E69E7CC0];
  *&v17[OBJC_IVAR___APPCContentDepiction_keywords] = v21;
  *&v17[OBJC_IVAR___APPCContentDepiction_categories] = v21;
  v39.receiver = v17;
  v39.super_class = v16;
  v22 = objc_msgSendSuper2(&v39, sel_init);
  sub_1C1AA7E30(a3, v10, &unk_1EBF098E0, &qword_1C1BA22A0);
  v23 = *(v12 + 48);
  if (v23(v10, 1, v11) == 1)
  {
    sub_1C1B945E8();
    if (v23(v10, 1, v11) != 1)
    {
      sub_1C1AA7C8C(v10, &unk_1EBF098E0, &qword_1C1BA22A0);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  v24 = objc_allocWithZone(type metadata accessor for Context());
  v25 = v22;
  v26 = sub_1C1B2A6F0(v15, 0, 0, v22, MEMORY[0x1E69E7CC0], 0.0, 0.0);

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v4;
  v29 = objc_allocWithZone(MEMORY[0x1E698A048]);
  aBlock[4] = sub_1C1B2AE0C;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1B2A390;
  aBlock[3] = &unk_1F4151B68;
  v30 = _Block_copy(aBlock);
  v31 = v26;

  v32 = [v29 initWithDeliveryBlock_];
  _Block_release(v30);

  sub_1C1AA7C8C(a3, &unk_1EBF098E0, &qword_1C1BA22A0);

  v33 = *&v31[OBJC_IVAR___APPCContext_requester];
  *&v31[OBJC_IVAR___APPCContext_requester] = v32;

  v34 = *&v31[OBJC_IVAR___APPCContext_appStoreContext];
  *&v31[OBJC_IVAR___APPCContext_appStoreContext] = v37;

  return v31;
}

uint64_t sub_1C1B23784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C1B94C58();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v32 - v10;
  v11 = sub_1C1B94C18();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = a1;
  v15[4] = a3;
  aBlock[4] = sub_1C1B2B808;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1B196F0;
  aBlock[3] = &unk_1F4152030;
  _Block_copy(aBlock);
  v36 = MEMORY[0x1E69E7CC0];
  sub_1C1AA5A14(&qword_1EDE6CA58, MEMORY[0x1E69E7F60]);

  sub_1C1AC1F08(&unk_1EBF09090, &qword_1C1B9F028);
  sub_1C1AA5A5C(&qword_1EDE6CA40, &unk_1EBF09090, &qword_1C1B9F028);
  sub_1C1B95318();
  v16 = sub_1C1B94C78();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1C1B94C68();

  v19 = COERCE_DOUBLE(sub_1C1B4D104());
  if (v20)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v19;
  }

  if (v21 <= 0.0)
  {
    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = v29;
      v31 = *(v29 + OBJC_IVAR___APPCContext_contextQueue);

      sub_1C1B95198();
    }
  }

  else
  {
    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      v24 = *(v22 + OBJC_IVAR___APPCContext_contextQueue);

      sub_1C1B94C48();
      v25 = v33;
      sub_1C1B94C98();
      v26 = v35;
      v27 = *(v34 + 8);
      v27(v9, v35);
      sub_1C1B95158();

      return (v27)(v25, v26);
    }
  }
}

void sub_1C1B23B6C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1C1B2BB54(a2);
  }
}

uint64_t Context.init(maxSize:requestedAd:current:next:)(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, double a5, double a6)
{
  v7 = v6;
  v70 = a3;
  v67 = a2;
  v66 = a1;
  v69 = sub_1C1B945F8();
  v68 = *(v69 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v71 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1C1B95168();
  v64 = *(v65 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v63 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C1B95148();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = sub_1C1B94C38();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = OBJC_IVAR___APPCContext_inventoryLock;
  *&v6[v19] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v20 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR___APPCContext_inventory] = MEMORY[0x1E69E7CC0];
  v21 = OBJC_IVAR___APPCContext_placeholdersLock;
  *&v6[v21] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v6[OBJC_IVAR___APPCContext_placeholders] = v20;
  *&v6[OBJC_IVAR___APPCContext_lastError] = 0;
  *&v6[OBJC_IVAR___APPCContext_requester] = 0;
  v22 = &v6[OBJC_IVAR___APPCContext_denylistEvaluator];
  *v22 = 0;
  *(v22 + 1) = 0;
  *&v6[OBJC_IVAR___APPCContext_newsContext] = 0;
  *&v6[OBJC_IVAR___APPCContext_appStoreContext] = 0;
  v62 = OBJC_IVAR___APPCContext_contextQueue;
  v61[2] = sub_1C1AA576C(0, &qword_1EDE6CA10, 0x1E69E9610);
  v61[1] = "v16@?0@NSArray8";
  if (qword_1EDE6CA90 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v23 = qword_1EDE6CAA0;
    sub_1C1B94C28();
    aBlock[0] = v20;
    sub_1C1AA5A14(&qword_1EDE6CA18, MEMORY[0x1E69E8030]);
    sub_1C1AC1F08(&unk_1EBF09010, &qword_1C1B9FC78);
    sub_1C1AA5A5C(&qword_1EDE6CA38, &unk_1EBF09010, &qword_1C1B9FC78);
    sub_1C1B95318();
    (*(v64 + 104))(v63, *MEMORY[0x1E69E8090], v65);
    *&v7[v62] = sub_1C1B951A8();
    v24 = OBJC_IVAR___APPCContext_prefetchTimestamp;
    v25 = sub_1C1B94588();
    (*(*(v25 - 8) + 56))(&v7[v24], 1, 1, v25);
    v26 = OBJC_IVAR___APPCContext_fetchingLock;
    *&v7[v26] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    v27 = MEMORY[0x1E69E7CC0];
    *&v7[OBJC_IVAR___APPCContext_fetching] = MEMORY[0x1E69E7CC0];
    v28 = OBJC_IVAR___APPCContext_waitingLock;
    *&v7[v28] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    *&v7[OBJC_IVAR___APPCContext_waiting] = v27;
    v29 = OBJC_IVAR___APPCContext_prefetchLock;
    *&v7[v29] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    *&v7[OBJC_IVAR___APPCContext_newContentArrivedHandlers] = v27;
    *&v7[OBJC_IVAR___APPCContext_limit] = [objc_opt_self() contextPrefetchLimit];
    *&v7[OBJC_IVAR___APPCBaseContext_adjacentInternal] = v27;
    v30 = &v7[OBJC_IVAR___APPCBaseContext_requestedAd];
    *v30 = 0;
    *(v30 + 1) = 0;
    v31 = v70;
    swift_unknownObjectRetain();
    v32 = v71;
    sub_1C1B945E8();
    v33 = v68;
    v34 = v69;
    (*(v68 + 32))(&v7[OBJC_IVAR___APPCBaseContext_identifier], v32, v69);
    v35 = &v7[OBJC_IVAR___APPCBaseContext_maxSize];
    *v35 = a5;
    v35[1] = a6;
    swift_beginAccess();
    v36 = *(v30 + 1);
    v37 = v67;
    *v30 = v66;
    *(v30 + 1) = v37;

    *&v7[OBJC_IVAR___APPCBaseContext_current] = v31;
    *&v7[OBJC_IVAR___APPCBaseContext_next] = a4;
    v20 = v7;
    if (a4 >> 62)
    {
      break;
    }

    v38 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      goto LABEL_17;
    }

LABEL_4:
    aBlock[0] = v27;
    swift_unknownObjectRetain();

    sub_1C1B95518();
    if (v38 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v67 = v7;
    v39 = 0;
    v7 = 0;
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1C6907490](v39, a4);
      }

      else
      {
        if (v39 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v41 = *(a4 + 8 * v39 + 32);
        swift_unknownObjectRetain();
      }

      v75 = v41;
      sub_1C1B35958(&v75, v73);
      swift_unknownObjectRelease();
      sub_1C1B954F8();
      v20 = *(aBlock[0] + 16);
      sub_1C1B95528();
      sub_1C1B95538();
      sub_1C1B95508();
      ++v39;
      if (v40 == v38)
      {

        v42 = aBlock[0];
        v34 = v69;
        v33 = v68;
        v20 = v67;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
  }

  v38 = sub_1C1B953A8();
  if (v38)
  {
    goto LABEL_4;
  }

LABEL_17:
  swift_unknownObjectRetain();
  v42 = MEMORY[0x1E69E7CC0];
LABEL_18:
  aBlock[0] = v42;
  v43 = sub_1C1AA5AB0(MEMORY[0x1E69E7CC0]);
  if (v43)
  {
    sub_1C1AA5BEC(v43);
    v42 = aBlock[0];
  }

  if (v42 >> 62)
  {
    sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
    v44 = sub_1C1B95578();
  }

  else
  {
    sub_1C1B95898();
    v44 = v42;
  }

  *&v20[OBJC_IVAR___APPCBaseContext_adjacent] = v44;
  v45 = type metadata accessor for BaseContext();
  v74.receiver = v20;
  v74.super_class = v45;
  v46 = objc_msgSendSuper2(&v74, sel_init);
  sub_1C1B95118();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v47 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1C1B98E60;
  v49 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v50 = v71;
  (*(v33 + 16))(v71, &v46[v49], v34);
  v51 = sub_1C1B945A8();
  v53 = v52;
  (*(v33 + 8))(v50, v34);
  *(v48 + 56) = MEMORY[0x1E69E6158];
  *(v48 + 64) = sub_1C1AA5E7C();
  *(v48 + 32) = v51;
  *(v48 + 40) = v53;
  sub_1C1B94BA8();

  swift_unknownObjectRelease();
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = objc_allocWithZone(MEMORY[0x1E698A048]);
  aBlock[4] = sub_1C1B2AE1C;
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1B2A390;
  aBlock[3] = &unk_1F4151B90;
  v56 = _Block_copy(aBlock);
  v57 = v46;

  v58 = [v55 initWithDeliveryBlock_];
  _Block_release(v56);

  swift_unknownObjectRelease();
  v59 = *&v57[OBJC_IVAR___APPCContext_requester];
  *&v57[OBJC_IVAR___APPCContext_requester] = v58;

  return v57;
}

char *sub_1C1B24700(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, SEL *a8)
{
  v10 = v8;
  v16 = objc_allocWithZone(v10);
  if (a4)
  {
    v17 = sub_1C1B94D78();
  }

  else
  {
    v17 = 0;
  }

  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  v18 = sub_1C1B94EB8();

  v19 = [v16 *a8];

  if (a7)
  {
    v20 = v19;
    [a7 copy];
    sub_1C1B952F8();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    type metadata accessor for NewsSupplementalContext();
    if (swift_dynamicCast())
    {
      a7 = v25;
    }

    else
    {
      a7 = 0;
    }
  }

  else
  {
    v21 = v19;
    swift_unknownObjectRelease();
  }

  v22 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v23 = *&v19[v22];
  *&v19[v22] = a7;

  return v19;
}

char *sub_1C1B248A8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, SEL *a8)
{
  v10 = v8;
  if (a4)
  {
    v15 = sub_1C1B94D78();
  }

  else
  {
    v15 = 0;
  }

  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  v16 = sub_1C1B94EB8();

  v17 = [v10 *a8];

  if (a7)
  {
    v18 = v17;
    [a7 copy];
    sub_1C1B952F8();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    type metadata accessor for NewsSupplementalContext();
    if (swift_dynamicCast())
    {
      a7 = v23;
    }

    else
    {
      a7 = 0;
    }
  }

  else
  {
    v19 = v17;
    swift_unknownObjectRelease();
  }

  v20 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v21 = *&v17[v20];
  *&v17[v20] = a7;

  return v17;
}

uint64_t sub_1C1B24A44(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, void *, double, double))
{
  if (a5)
  {
    v14 = sub_1C1B94D88();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  v17 = sub_1C1B94EC8();
  swift_unknownObjectRetain();
  v18 = a8;
  return a9(v14, v16, a6, v17, a8, a1, a2);
}

uint64_t Context.init(apContext:apContentData:)(void *a1, unint64_t a2)
{
  v3 = v2;
  v87 = a2;
  v92 = a1;
  v86 = sub_1C1B945F8();
  v85 = *(v86 - 8);
  v4 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v94 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1C1B95168();
  v91 = *(v93 - 8);
  v6 = v91[8];
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1B95148();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1C1B94C38();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = OBJC_IVAR___APPCContext_inventoryLock;
  *&v2[v12] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v13 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR___APPCContext_inventory] = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR___APPCContext_placeholdersLock;
  *&v2[v14] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v2[OBJC_IVAR___APPCContext_placeholders] = v13;
  *&v2[OBJC_IVAR___APPCContext_lastError] = 0;
  *&v2[OBJC_IVAR___APPCContext_requester] = 0;
  v15 = &v2[OBJC_IVAR___APPCContext_denylistEvaluator];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v2[OBJC_IVAR___APPCContext_newsContext] = 0;
  *&v2[OBJC_IVAR___APPCContext_appStoreContext] = 0;
  v89 = OBJC_IVAR___APPCContext_contextQueue;
  v88 = sub_1C1AA576C(0, &qword_1EDE6CA10, 0x1E69E9610);
  if (qword_1EDE6CA90 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v16 = qword_1EDE6CAA0;
    sub_1C1B94C28();
    aBlock[0] = v13;
    sub_1C1AA5A14(&qword_1EDE6CA18, MEMORY[0x1E69E8030]);
    sub_1C1AC1F08(&unk_1EBF09010, &qword_1C1B9FC78);
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C1AA5A5C(&qword_1EDE6CA38, &unk_1EBF09010, &qword_1C1B9FC78);
    sub_1C1B95318();
    (v91[13])(v90, *MEMORY[0x1E69E8090], v93);
    *&v3[v89] = sub_1C1B951A8();
    v18 = OBJC_IVAR___APPCContext_prefetchTimestamp;
    v19 = sub_1C1B94588();
    (*(*(v19 - 8) + 56))(&v3[v18], 1, 1, v19);
    v20 = OBJC_IVAR___APPCContext_fetchingLock;
    *&v3[v20] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    *&v3[OBJC_IVAR___APPCContext_fetching] = v17;
    v21 = OBJC_IVAR___APPCContext_waitingLock;
    *&v3[v21] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    *&v3[OBJC_IVAR___APPCContext_waiting] = v17;
    v22 = OBJC_IVAR___APPCContext_prefetchLock;
    *&v3[v22] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
    *&v3[OBJC_IVAR___APPCContext_newContentArrivedHandlers] = v17;
    v23 = v92;
    [v92 maxSize];
    v25 = v24;
    v27 = v26;
    v28 = [v23 adjacent];
    if (!v28)
    {
      break;
    }

    v29 = v28;
    sub_1C1AA576C(0, &qword_1EDE6CA08, 0x1E698A030);
    v30 = sub_1C1B94EC8();

    aBlock[0] = v17;
    v13 = v30 & 0xFFFFFFFFFFFFFF8;
    if (v30 >> 62)
    {
      v31 = sub_1C1B953A8();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = 0;
    while (1)
    {
      if (v31 == v32)
      {

        goto LABEL_18;
      }

      if ((v30 & 0xC000000000000001) == 0)
      {
        break;
      }

      v33 = MEMORY[0x1C6907490](v32, v30);
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_36;
      }

LABEL_10:
      v35 = sub_1C1B5B0B8(v33);
      ++v32;
      if (v35)
      {
        MEMORY[0x1C6906EA0](v35);
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v36 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C1B94F08();
        }

        sub_1C1B94F48();
        v17 = aBlock[0];
        v32 = v34;
      }
    }

    if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    v33 = *(v30 + 8 * v32 + 32);
    v34 = v32 + 1;
    if (!__OFADD__(v32, 1))
    {
      goto LABEL_10;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

LABEL_18:
  v37 = [v23 current];
  if (v37)
  {
    v38 = sub_1C1B5B0B8(v37);
  }

  else
  {
    v38 = 0;
  }

  *&v3[OBJC_IVAR___APPCContext_limit] = [objc_opt_self() contextPrefetchLimit];
  v39 = [v23 identifier];
  sub_1C1B945D8();

  v40 = [v23 requestedAdIdentifier];
  v41 = sub_1C1B94D88();
  v43 = v42;

  v44 = v38;

  if (v17 >> 62)
  {
    sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
    v45 = sub_1C1B95578();
  }

  else
  {
    sub_1C1B95898();
    v45 = v17;
  }

  v46 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR___APPCBaseContext_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v47 = &v3[OBJC_IVAR___APPCBaseContext_requestedAd];
  *v47 = 0;
  v47[1] = 0;
  v48 = v85;
  v49 = v94;
  v50 = v86;
  (*(v85 + 16))(&v3[OBJC_IVAR___APPCBaseContext_identifier], v94, v86);
  v51 = &v3[OBJC_IVAR___APPCBaseContext_maxSize];
  *v51 = v25;
  *(v51 + 1) = v27;
  swift_beginAccess();
  *v47 = v41;
  v47[1] = v43;
  *&v3[OBJC_IVAR___APPCBaseContext_current] = v38;
  *&v3[OBJC_IVAR___APPCBaseContext_next] = v46;
  *&v3[OBJC_IVAR___APPCBaseContext_adjacent] = v45;
  v52 = type metadata accessor for BaseContext();
  v96.receiver = v3;
  v96.super_class = v52;
  v53 = v38;
  v54 = objc_msgSendSuper2(&v96, sel_init);
  sub_1C1B95118();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v55 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1C1B98E60;
  v57 = sub_1C1B945A8();
  v59 = v58;
  *(v56 + 56) = MEMORY[0x1E69E6158];
  *(v56 + 64) = sub_1C1AA5E7C();
  *(v56 + 32) = v57;
  *(v56 + 40) = v59;
  sub_1C1B94BA8();

  sub_1C1B343B4();

  (*(v48 + 8))(v49, v50);
  v94 = v54;
  v60 = sub_1C1B2CB14(v87);

  v62 = v60;
  v90 = (v60 >> 62);
  v91 = v53;
  if (v60 >> 62)
  {
    result = sub_1C1B953A8();
    v62 = v60;
    v63 = result;
    if (!result)
    {
      goto LABEL_41;
    }

LABEL_25:
    if (v63 >= 1)
    {
      v64 = 0;
      v93 = v62 & 0xC000000000000001;
      v65 = v62;
      do
      {
        if (v93)
        {
          v66 = MEMORY[0x1C6907490](v64);
        }

        else
        {
          v66 = *(v62 + 8 * v64 + 32);
        }

        v67 = v66;
        v68 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v69 = swift_allocObject();
        *(v69 + 16) = sub_1C1B2AE5C;
        *(v69 + 24) = v68;
        v70 = OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete;
        swift_beginAccess();
        v71 = *&v67[v70];
        swift_retain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v67[v70] = v71;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v71 = sub_1C1ACE190(0, v71[2] + 1, 1, v71);
          *&v67[v70] = v71;
        }

        v74 = v71[2];
        v73 = v71[3];
        if (v74 >= v73 >> 1)
        {
          v71 = sub_1C1ACE190((v73 > 1), v74 + 1, 1, v71);
        }

        ++v64;
        v71[2] = v74 + 1;
        v75 = &v71[2 * v74];
        v75[4] = sub_1C1B2AE64;
        v75[5] = v69;
        *&v67[v70] = v71;
        swift_endAccess();

        v62 = v65;
      }

      while (v63 != v64);
      goto LABEL_41;
    }

    __break(1u);
  }

  else
  {
    v63 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v63)
    {
      goto LABEL_25;
    }

LABEL_41:
    v76 = v62;
    v77 = OBJC_IVAR___APPCContext_inventoryLock;
    [*&v94[OBJC_IVAR___APPCContext_inventoryLock] lock];
    if (v90)
    {

      sub_1C1AC1F08(&unk_1EBF09020, &qword_1C1B98F38);
      v76 = sub_1C1B95578();
    }

    else
    {

      sub_1C1B95898();
    }

    v78 = v91;

    v79 = v94;
    swift_beginAccess();
    sub_1C1AC7548(v76);
    swift_endAccess();
    [*&v79[v77] unlock];
    v80 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v81 = objc_allocWithZone(MEMORY[0x1E698A048]);
    aBlock[4] = sub_1C1B2AE94;
    aBlock[5] = v80;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C1B2A390;
    aBlock[3] = &unk_1F4151BE0;
    v82 = _Block_copy(aBlock);

    v83 = [v81 initWithDeliveryBlock_];
    _Block_release(v82);

    v84 = *&v79[OBJC_IVAR___APPCContext_requester];
    *&v79[OBJC_IVAR___APPCContext_requester] = v83;

    return v79;
  }

  return result;
}

void sub_1C1B25830(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1C1AC5508(a1, a2);
  }
}

uint64_t sub_1C1B258A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C1B94C58();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  v10 = (MEMORY[0x1EEE9AC00])();
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v35 - v13;
  v14 = sub_1C1B94C18();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a1;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1B196F0;
  aBlock[3] = a5;
  _Block_copy(aBlock);
  v39 = MEMORY[0x1E69E7CC0];
  sub_1C1AA5A14(&qword_1EDE6CA58, MEMORY[0x1E69E7F60]);

  sub_1C1AC1F08(&unk_1EBF09090, &qword_1C1B9F028);
  sub_1C1AA5A5C(&qword_1EDE6CA40, &unk_1EBF09090, &qword_1C1B9F028);
  sub_1C1B95318();
  v19 = sub_1C1B94C78();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_1C1B94C68();

  v22 = COERCE_DOUBLE(sub_1C1B4D104());
  if (v23)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v22;
  }

  if (v24 <= 0.0)
  {
    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      v33 = v32;
      v34 = *(v32 + OBJC_IVAR___APPCContext_contextQueue);

      sub_1C1B95198();
    }
  }

  else
  {
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      v27 = *(v25 + OBJC_IVAR___APPCContext_contextQueue);

      sub_1C1B94C48();
      v28 = v36;
      sub_1C1B94C98();
      v29 = v38;
      v30 = *(v37 + 8);
      v30(v12, v38);
      sub_1C1B95158();

      return (v30)(v28, v29);
    }
  }
}

char *Context.init(maxSize:requestedAd:current:adjacent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v63 = a4;
  v67 = a3;
  v62 = a2;
  v61 = a1;
  v66 = sub_1C1B945F8();
  v65 = *(v66 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v64 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1C1B95168();
  v59 = *(v60 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v58 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C1B95148();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = sub_1C1B94C38();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = OBJC_IVAR___APPCContext_inventoryLock;
  *&v6[v17] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v18 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR___APPCContext_inventory] = MEMORY[0x1E69E7CC0];
  v19 = OBJC_IVAR___APPCContext_placeholdersLock;
  *&v6[v19] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v6[OBJC_IVAR___APPCContext_placeholders] = v18;
  *&v6[OBJC_IVAR___APPCContext_lastError] = 0;
  *&v6[OBJC_IVAR___APPCContext_requester] = 0;
  v20 = &v6[OBJC_IVAR___APPCContext_denylistEvaluator];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v6[OBJC_IVAR___APPCContext_newsContext] = 0;
  *&v6[OBJC_IVAR___APPCContext_appStoreContext] = 0;
  v57 = OBJC_IVAR___APPCContext_contextQueue;
  v56[1] = sub_1C1AA576C(0, &qword_1EDE6CA10, 0x1E69E9610);
  if (qword_1EDE6CA90 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDE6CAA0;
  sub_1C1B94C28();
  aBlock[0] = v18;
  sub_1C1AA5A14(&qword_1EDE6CA18, MEMORY[0x1E69E8030]);
  sub_1C1AC1F08(&unk_1EBF09010, &qword_1C1B9FC78);
  sub_1C1AA5A5C(&qword_1EDE6CA38, &unk_1EBF09010, &qword_1C1B9FC78);
  sub_1C1B95318();
  (*(v59 + 104))(v58, *MEMORY[0x1E69E8090], v60);
  *&v6[v57] = sub_1C1B951A8();
  v22 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  v23 = sub_1C1B94588();
  (*(*(v23 - 8) + 56))(&v6[v22], 1, 1, v23);
  v24 = OBJC_IVAR___APPCContext_fetchingLock;
  *&v6[v24] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v25 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR___APPCContext_fetching] = MEMORY[0x1E69E7CC0];
  v26 = OBJC_IVAR___APPCContext_waitingLock;
  *&v6[v26] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v6[OBJC_IVAR___APPCContext_waiting] = v25;
  v27 = OBJC_IVAR___APPCContext_prefetchLock;
  *&v6[v27] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v6[OBJC_IVAR___APPCContext_newContentArrivedHandlers] = v25;
  *&v6[OBJC_IVAR___APPCContext_limit] = [objc_opt_self() contextPrefetchLimit];
  *&v6[OBJC_IVAR___APPCBaseContext_adjacentInternal] = v25;
  v28 = &v6[OBJC_IVAR___APPCBaseContext_requestedAd];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = v67;
  swift_unknownObjectRetain();
  v30 = v64;
  sub_1C1B945E8();
  v31 = v65;
  v32 = v66;
  (*(v65 + 32))(&v6[OBJC_IVAR___APPCBaseContext_identifier], v30, v66);
  v33 = &v6[OBJC_IVAR___APPCBaseContext_maxSize];
  *v33 = a5;
  v33[1] = a6;
  swift_beginAccess();
  v34 = *(v28 + 1);
  v35 = v62;
  *v28 = v61;
  *(v28 + 1) = v35;

  *&v6[OBJC_IVAR___APPCBaseContext_current] = v29;
  *&v6[OBJC_IVAR___APPCBaseContext_next] = v25;
  *&v6[OBJC_IVAR___APPCBaseContext_adjacent] = v63;
  v36 = type metadata accessor for BaseContext();
  v69.receiver = v6;
  v69.super_class = v36;
  swift_unknownObjectRetain();
  v37 = objc_msgSendSuper2(&v69, sel_init);
  sub_1C1B95118();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v38 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C1B98E60;
  v40 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v31 + 16))(v30, &v37[v40], v32);
  v41 = sub_1C1B945A8();
  v43 = v42;
  (*(v31 + 8))(v30, v32);
  *(v39 + 56) = MEMORY[0x1E69E6158];
  *(v39 + 64) = sub_1C1AA5E7C();
  *(v39 + 32) = v41;
  *(v39 + 40) = v43;
  sub_1C1B94BA8();

  sub_1C1B343B4();

  swift_unknownObjectRelease();
  v44 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v45 = *&v37[v44];
  if (v45)
  {
    v46 = v37;
    [v45 copy];
    sub_1C1B952F8();
    swift_unknownObjectRelease();
    type metadata accessor for NewsSupplementalContext();
    if (swift_dynamicCast())
    {
      v47 = aBlock[6];
    }

    else
    {
      v47 = 0;
    }

    v48 = *&v37[v44];
  }

  else
  {
    v49 = v37;
    v48 = 0;
    v47 = 0;
  }

  *&v37[v44] = v47;

  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = objc_allocWithZone(MEMORY[0x1E698A048]);
  aBlock[4] = sub_1C1B2AED4;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1B2A390;
  aBlock[3] = &unk_1F4151C08;
  v52 = _Block_copy(aBlock);

  v53 = [v51 initWithDeliveryBlock_];
  _Block_release(v52);

  swift_unknownObjectRelease();
  v54 = *&v37[OBJC_IVAR___APPCContext_requester];
  *&v37[OBJC_IVAR___APPCContext_requester] = v53;

  return v37;
}

uint64_t sub_1C1B26644(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, double, double))
{
  if (a5)
  {
    v12 = sub_1C1B94D88();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  v15 = sub_1C1B94EC8();
  swift_unknownObjectRetain();
  return a8(v12, v14, a6, v15, a1, a2);
}

id Context.__allocating_init(identifier:maxSize:requestedAd:current:adjacent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = sub_1C1B2A6F0(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();
  return v16;
}

id Context.init(identifier:maxSize:requestedAd:current:adjacent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v7 = sub_1C1B2A6F0(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();
  return v7;
}

void *Context.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v101 = a1;
  v3 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v81 = &v80 - v5;
  v83 = sub_1C1AC1F08(&unk_1EBF09030, &qword_1C1B9FC80);
  v82 = *(v83 - 8);
  v6 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v100 = &v80 - v7;
  v96 = sub_1C1B95168();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v92 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1B95148();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1C1B94C38();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = OBJC_IVAR___APPCContext_inventoryLock;
  v15 = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v89 = v14;
  *(v1 + v14) = v15;
  v16 = MEMORY[0x1E69E7CC0];
  v94 = OBJC_IVAR___APPCContext_inventory;
  *(v1 + OBJC_IVAR___APPCContext_inventory) = MEMORY[0x1E69E7CC0];
  v17 = OBJC_IVAR___APPCContext_placeholdersLock;
  v18 = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v88 = v17;
  *(v1 + v17) = v18;
  v99 = OBJC_IVAR___APPCContext_placeholders;
  *(v1 + OBJC_IVAR___APPCContext_placeholders) = v16;
  v85 = OBJC_IVAR___APPCContext_lastError;
  *(v1 + OBJC_IVAR___APPCContext_lastError) = 0;
  v86 = OBJC_IVAR___APPCContext_requester;
  *(v1 + OBJC_IVAR___APPCContext_requester) = 0;
  v19 = (v1 + OBJC_IVAR___APPCContext_denylistEvaluator);
  *v19 = 0;
  v19[1] = 0;
  v87 = v19;
  v98 = OBJC_IVAR___APPCContext_newsContext;
  *(v1 + OBJC_IVAR___APPCContext_newsContext) = 0;
  v97 = OBJC_IVAR___APPCContext_appStoreContext;
  *(v1 + OBJC_IVAR___APPCContext_appStoreContext) = 0;
  v108 = OBJC_IVAR___APPCContext_contextQueue;
  v91 = sub_1C1AA576C(0, &qword_1EDE6CA10, 0x1E69E9610);
  v90 = "v16@?0@NSArray8";
  if (qword_1EDE6CA90 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDE6CAA0;
  sub_1C1B94C28();
  aBlock[0] = v16;
  sub_1C1AA5A14(&qword_1EDE6CA18, MEMORY[0x1E69E8030]);
  sub_1C1AC1F08(&unk_1EBF09010, &qword_1C1B9FC78);
  sub_1C1AA5A5C(&qword_1EDE6CA38, &unk_1EBF09010, &qword_1C1B9FC78);
  sub_1C1B95318();
  (*(v95 + 104))(v92, *MEMORY[0x1E69E8090], v96);
  v21 = sub_1C1B951A8();
  v22 = v108;
  *(v1 + v108) = v21;
  v23 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  v24 = sub_1C1B94588();
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR___APPCContext_fetchingLock;
  v26 = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v92 = v25;
  *(v1 + v25) = v26;
  v96 = OBJC_IVAR___APPCContext_fetching;
  v27 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR___APPCContext_fetching) = MEMORY[0x1E69E7CC0];
  v28 = OBJC_IVAR___APPCContext_waitingLock;
  v29 = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v91 = v28;
  *(v1 + v28) = v29;
  v95 = OBJC_IVAR___APPCContext_waiting;
  *(v1 + OBJC_IVAR___APPCContext_waiting) = v27;
  v30 = OBJC_IVAR___APPCContext_prefetchLock;
  v31 = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v90 = v30;
  *(v1 + v30) = v31;
  v84 = OBJC_IVAR___APPCContext_newContentArrivedHandlers;
  *(v1 + OBJC_IVAR___APPCContext_newContentArrivedHandlers) = v27;
  v32 = v101;
  v33 = v101[4];
  sub_1C1AAABE0(v101, v101[3]);
  sub_1C1B2AF14();
  v34 = v100;
  v35 = v93;
  sub_1C1B95A08();
  v36 = v22;
  if (v35)
  {
    v37 = v94;
    v38 = v97;
    sub_1C1AA86F8(v32);

    v49 = *(v1 + v37);

    v50 = *(v1 + v99);

    v51 = v87[1];
    sub_1C1AC0530(*v87);

    sub_1C1AA7C8C(v1 + v23, &qword_1EBF07F50, &qword_1C1B9A590);
    v52 = *(v1 + v96);

    v53 = *(v1 + v95);

    v54 = *(v1 + v84);

    type metadata accessor for Context();
    v55 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v56 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = v34;
    v40 = MEMORY[0x1E69E7CC0];
    v93 = v23;
    sub_1C1AC1F08(&qword_1EBF09040, &qword_1C1B9FC88);
    LOBYTE(v107) = 0;
    sub_1C1B2B004(&unk_1EDE6A728, &qword_1EBF09040, &qword_1C1B9FC88, sub_1C1B0B684);
    sub_1C1B956F8();
    v41 = aBlock[0];
    v42 = *(aBlock[0] + 16);
    if (v42)
    {
      v107 = v40;
      sub_1C1B95518();
      v43 = 32;
      do
      {
        v44 = *(v41 + v43);
        sub_1C1B954F8();
        v45 = *(v107 + 16);
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
        v43 += 8;
        --v42;
      }

      while (v42);

      v46 = v107;
      v32 = v101;
      v39 = v100;
    }

    else
    {

      v46 = MEMORY[0x1E69E7CC0];
    }

    v47 = v94;
    swift_beginAccess();
    v48 = *(v2 + v47);
    *(v2 + v47) = v46;

    sub_1C1AC1F08(&unk_1EBF09048, &qword_1C1B9FC90);
    v106 = 1;
    sub_1C1B2AF68(&unk_1EDE6A6C0, &unk_1EDE6AFC8);
    sub_1C1B956F8();
    v58 = aBlock[0];
    v59 = v99;
    swift_beginAccess();
    v60 = *(v2 + v59);
    *(v2 + v59) = v58;

    type metadata accessor for NewsSupplementalContext();
    v105 = 3;
    sub_1C1AA5A14(&unk_1EDE6AD30, type metadata accessor for NewsSupplementalContext);
    sub_1C1B95678();
    v61 = v97;
    v101 = aBlock[0];
    v62 = v98;
    swift_beginAccess();
    v63 = *(v2 + v62);
    *(v2 + v62) = v101;

    type metadata accessor for AppStoreSupplementalContext();
    v104 = 4;
    sub_1C1AA5A14(&unk_1EDE6A828, type metadata accessor for AppStoreSupplementalContext);
    sub_1C1B95678();
    v64 = *(v2 + v61);
    *(v2 + v61) = aBlock[0];

    LOBYTE(aBlock[0]) = 5;
    sub_1C1AA5A14(&unk_1EDE6C370, MEMORY[0x1E6969530]);
    v65 = v81;
    sub_1C1B95678();
    v66 = v65;
    v67 = v93;
    swift_beginAccess();
    sub_1C1AABE90(v66, v2 + v67);
    swift_endAccess();
    LOBYTE(aBlock[0]) = 6;
    *(v2 + OBJC_IVAR___APPCContext_limit) = sub_1C1B956D8();
    sub_1C1AC1F08(&qword_1EBF09058, &qword_1C1B9FC98);
    v104 = 7;
    sub_1C1B2B004(&qword_1EDE6A6E0, &qword_1EBF09058, &qword_1C1B9FC98, sub_1C1AC1FF8);
    sub_1C1B956F8();
    v101 = aBlock[0];
    v68 = v96;
    swift_beginAccess();
    v69 = *(v2 + v68);
    *(v2 + v68) = v101;

    v103 = 8;
    sub_1C1B956F8();
    v70 = aBlock[0];
    v71 = v95;
    swift_beginAccess();
    v72 = *(v2 + v71);
    *(v2 + v71) = v70;

    sub_1C1B95628();
    v73 = v39;
    v74 = BaseContext.init(from:)(aBlock);
    v75 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v76 = objc_allocWithZone(MEMORY[0x1E698A048]);
    aBlock[4] = sub_1C1B2B080;
    aBlock[5] = v75;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C1B2A390;
    aBlock[3] = &unk_1F4151C30;
    v77 = _Block_copy(aBlock);
    v36 = v74;

    v78 = [v76 initWithDeliveryBlock_];
    _Block_release(v77);
    (*(v82 + 8))(v73, v83);

    v79 = *(v36 + OBJC_IVAR___APPCContext_requester);
    *(v36 + OBJC_IVAR___APPCContext_requester) = v78;

    sub_1C1AA86F8(v32);
  }

  return v36;
}

uint64_t sub_1C1B276D4(uint64_t a1)
{
  v2 = sub_1C1B94C18();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1B94C38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(result + OBJC_IVAR___APPCContext_contextQueue);
    v21 = v3;
    v22 = v7;
    v14 = result;
    v20 = v13;

    v15 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = a1;
    aBlock[4] = sub_1C1B2B8D8;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C1B196F0;
    aBlock[3] = &unk_1F4151EF0;
    v18 = _Block_copy(aBlock);

    sub_1C1B94C28();
    v23 = MEMORY[0x1E69E7CC0];
    sub_1C1AA5A14(&qword_1EDE6CA58, MEMORY[0x1E69E7F60]);
    sub_1C1AC1F08(&unk_1EBF09090, &qword_1C1B9F028);
    sub_1C1AA5A5C(&qword_1EDE6CA40, &unk_1EBF09090, &qword_1C1B9F028);
    sub_1C1B95318();
    v19 = v20;
    MEMORY[0x1C6907180](0, v11, v6, v18);
    _Block_release(v18);

    (*(v21 + 8))(v6, v2);
    (*(v8 + 8))(v11, v22);
  }

  return result;
}

void *sub_1C1B27A34(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = v32 - v5;
  v35 = sub_1C1AC1F08(&qword_1EBF09060, &qword_1C1B9FCA0);
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v9 = v32 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B2AF14();
  v34 = v9;
  sub_1C1B95A18();
  v11 = OBJC_IVAR___APPCContext_inventory;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v32[0] = v1;
  if (v12 >> 62)
  {
    v13 = sub_1C1B953A8();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  v36 = v6;
  if (v13)
  {
    v37[0] = MEMORY[0x1E69E7CC0];

    result = sub_1C1AC7E54(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = 0;
    v14 = v37[0];
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6907490](v16, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v16 + 32);
        swift_unknownObjectRetain();
      }

      type metadata accessor for PromotedContent();
      v18 = swift_dynamicCastClass();
      if (!v18)
      {
        swift_unknownObjectRelease();
      }

      v37[0] = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1C1AC7E54((v19 > 1), v20 + 1, 1);
        v14 = v37[0];
      }

      ++v16;
      *(v14 + 16) = v20 + 1;
      *(v14 + 8 * v20 + 32) = v18;
    }

    while (v13 != v16);
  }

  v21 = v35;
  v37[0] = v14;
  v41 = 0;
  sub_1C1AC1F08(&qword_1EBF09068, &qword_1C1B9FCA8);
  sub_1C1B2B088();
  v22 = v34;
  v23 = v32[1];
  sub_1C1B95808();
  v24 = v33;

  if (!v23)
  {
    v25 = OBJC_IVAR___APPCContext_placeholders;
    v26 = v32[0];
    swift_beginAccess();
    v37[0] = *(v26 + v25);
    v40 = 1;
    sub_1C1AC1F08(&unk_1EBF09048, &qword_1C1B9FC90);
    sub_1C1B2AF68(&unk_1EDE6A6D0, &qword_1EDE6AFD8);
    sub_1C1B95808();
    v27 = OBJC_IVAR___APPCContext_newsContext;
    swift_beginAccess();
    v37[0] = *(v26 + v27);
    v39 = 3;
    type metadata accessor for NewsSupplementalContext();
    sub_1C1AA5A14(&qword_1EDE6AD40, type metadata accessor for NewsSupplementalContext);
    sub_1C1B95788();
    v37[0] = *(v26 + OBJC_IVAR___APPCContext_appStoreContext);
    v39 = 4;
    type metadata accessor for AppStoreSupplementalContext();
    sub_1C1AA5A14(&unk_1EDE6A838, type metadata accessor for AppStoreSupplementalContext);
    sub_1C1B95788();
    v28 = OBJC_IVAR___APPCContext_prefetchTimestamp;
    swift_beginAccess();
    sub_1C1AA7E30(v26 + v28, v24, &qword_1EBF07F50, &qword_1C1B9A590);
    LOBYTE(v37[0]) = 5;
    sub_1C1B94588();
    sub_1C1AA5A14(&unk_1EDE6C380, MEMORY[0x1E6969530]);
    sub_1C1B95788();
    sub_1C1AA7C8C(v24, &qword_1EBF07F50, &qword_1C1B9A590);
    v29 = *(v26 + OBJC_IVAR___APPCContext_limit);
    LOBYTE(v37[0]) = 6;
    sub_1C1B957E8();
    v30 = OBJC_IVAR___APPCContext_fetching;
    swift_beginAccess();
    v37[0] = *(v26 + v30);
    v38 = 7;
    sub_1C1AC1F08(&qword_1EBF09058, &qword_1C1B9FC98);
    sub_1C1B2B190();
    sub_1C1B95808();
    v31 = OBJC_IVAR___APPCContext_waiting;
    swift_beginAccess();
    v37[0] = *(v26 + v31);
    v42 = 8;
    sub_1C1B95808();
    sub_1C1B95738();
    sub_1C1B33E0C(v37);
    sub_1C1AA86F8(v37);
  }

  return (*(v36 + 8))(v22, v21);
}

uint64_t sub_1C1B2815C()
{
  v1 = *(v0 + OBJC_IVAR___APPCContext_inventory);

  v2 = *(v0 + OBJC_IVAR___APPCContext_placeholders);

  v3 = *(v0 + OBJC_IVAR___APPCContext_denylistEvaluator + 8);
  sub_1C1AC0530(*(v0 + OBJC_IVAR___APPCContext_denylistEvaluator));

  sub_1C1AA7C8C(v0 + OBJC_IVAR___APPCContext_prefetchTimestamp, &qword_1EBF07F50, &qword_1C1B9A590);
  v4 = *(v0 + OBJC_IVAR___APPCContext_fetching);

  v5 = *(v0 + OBJC_IVAR___APPCContext_waiting);

  v6 = *(v0 + OBJC_IVAR___APPCContext_newContentArrivedHandlers);
}

id Context.__deallocating_deinit()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for PlaceholderRequest();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1B945F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1B94D78();
  v13 = NSSelectorFromString(v12);

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata respondsToSelector_])
  {
    v15 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v8 + 16))(v11, &v1[v15], v7);
    sub_1C1B945A8();
    (*(v8 + 8))(v11, v7);
    v16 = sub_1C1B94D78();

    [ObjCClassFromMetadata performSelector:v13 withObject:v16];

    v17 = ObjCClassFromMetadata;
  }

  v18 = *&v1[OBJC_IVAR___APPCContext_requester];
  if (v18)
  {
    [v18 endRequests];
  }

  v19 = OBJC_IVAR___APPCContext_inventoryLock;
  [*&v1[OBJC_IVAR___APPCContext_inventoryLock] lock];
  v20 = OBJC_IVAR___APPCContext_inventory;
  swift_beginAccess();
  v21 = *&v1[v20];
  v40 = v19;
  v41 = v1;
  if (v21 >> 62)
  {
LABEL_23:
    v22 = sub_1C1B953A8();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22)
  {
    v23 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1C6907490](v23, v21);
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v24 = *(v21 + 8 * v23 + 32);
        swift_unknownObjectRetain();
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_16;
        }
      }

      [objc_msgSend(v24 metricsHelper)];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      ++v23;
    }

    while (v25 != v22);
  }

  v26 = v41;
  [*&v41[v40] unlock];
  v27 = OBJC_IVAR___APPCContext_placeholdersLock;
  [*&v26[OBJC_IVAR___APPCContext_placeholdersLock] lock];
  v28 = OBJC_IVAR___APPCContext_placeholders;
  swift_beginAccess();
  v29 = *&v26[v28];
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = *(v38 + 28);
    v32 = v29 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v33 = *(v39 + 72);
    v34 = *&v26[v28];

    do
    {
      sub_1C1B0B6D8(v32, v6);
      [objc_msgSend(*&v6[v31] metricsHelper)];
      swift_unknownObjectRelease();
      sub_1C1B0B73C(v6);
      v32 += v33;
      --v30;
    }

    while (v30);

    v26 = v41;
  }

  [*&v26[v27] unlock];
  v35 = type metadata accessor for Context();
  v42.receiver = v26;
  v42.super_class = v35;
  return objc_msgSendSuper2(&v42, sel_dealloc);
}

uint64_t sub_1C1B28898(unint64_t a1)
{
  v1 = a1;
  v19 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C1B953A8())
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v4 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1C6907490](v4, v1);
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v6 = *(v1 + 8 * v4 + 32);
        }

        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (*&v6[OBJC_IVAR___APPCDesiredPlacement_type] == 7)
        {
        }

        else
        {
          sub_1C1B954F8();
          v5 = *(v19 + 16);
          sub_1C1B95528();
          sub_1C1B95538();
          sub_1C1B95508();
        }

        ++v4;
      }

      while (v7 != i);
      v1 = v19;
      v3 = MEMORY[0x1E69E7CC0];
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v1 = MEMORY[0x1E69E7CC0];
      if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
      {
LABEL_17:
        if ((v1 & 0x4000000000000000) == 0)
        {
          v8 = *(v1 + 16);
          if (!v8)
          {
            goto LABEL_37;
          }

          goto LABEL_19;
        }
      }
    }

    v8 = sub_1C1B953A8();
    if (!v8)
    {
LABEL_37:

      sub_1C1AABA00(v3);
    }

LABEL_19:
    v19 = v3;
    sub_1C1AC7E74(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      break;
    }

    v9 = 0;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C6907490](v9, v1);
      }

      else
      {
        if (v9 >= *(v1 + 16))
        {
          goto LABEL_34;
        }

        v11 = *(v1 + 8 * v9 + 32);
      }

      v12 = *&v11[OBJC_IVAR___APPCDesiredPlacement_type];
      if (v12 >= 9)
      {
        goto LABEL_41;
      }

      v13 = byte_1C1B9FE52[v12];
      v14 = *&v11[OBJC_IVAR___APPCDesiredPlacement_count];

      v19 = v3;
      v16 = *(v3 + 16);
      v15 = *(v3 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C1AC7E74((v15 > 1), v16 + 1, 1);
      }

      *(v3 + 16) = v16 + 1;
      v17 = v3 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      ++v9;
      if (v10 == v8)
      {
        goto LABEL_37;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  __break(1u);
LABEL_41:
  result = sub_1C1B958C8();
  __break(1u);
  return result;
}

uint64_t sub_1C1B28D40(uint64_t a1, double a2, double a3)
{
  v7 = sub_1C1B945F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 7)
  {
    if (qword_1EDE6C4E0 != -1)
    {
LABEL_33:
      swift_once();
    }

    v12 = sub_1C1B94BE8();
    sub_1C1AB4454(v12, qword_1EDE6D058);
    v13 = v3;
    v14 = sub_1C1B94BC8();
    v15 = sub_1C1B95128();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 67109378;
      *(v16 + 4) = 36;
      *(v16 + 8) = 2080;
      v18 = OBJC_IVAR___APPCBaseContext_identifier;
      swift_beginAccess();
      (*(v8 + 16))(v11, v13 + v18, v7);
      sub_1C1AA5A14(&qword_1EDE6B830, MEMORY[0x1E69695A8]);
      v19 = sub_1C1B95858();
      v21 = v20;
      (*(v8 + 8))(v11, v7);
      v22 = sub_1C1AC7650(v19, v21, &v35);

      *(v16 + 10) = v22;
      _os_log_impl(&dword_1C1AA2000, v14, v15, "Context ID: %-*s Ignoring request for sponsored content without fetch.", v16, 0x12u);
      sub_1C1AA86F8(v17);
      MEMORY[0x1C6908230](v17, -1, -1);
      MEMORY[0x1C6908230](v16, -1, -1);
    }

    return 0;
  }

  v34 = *(v3 + OBJC_IVAR___APPCContext_inventoryLock);
  [v34 lock];
  v24 = OBJC_IVAR___APPCContext_inventory;
  swift_beginAccess();
  v11 = *(v3 + v24);
  v35 = MEMORY[0x1E69E7CC0];
  v8 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
    v25 = sub_1C1B953A8();
  }

  else
  {
    v25 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v25)
  {
    v7 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    do
    {
      v27 = v7;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1C6907490](v27, v11);
          v7 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v27 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v28 = *&v11[8 * v27 + 32];
          swift_unknownObjectRetain();
          v7 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }
        }

        ObjectType = swift_getObjectType();
        v3 = v28;
        if (PromotableContent.hasSuitableRepresentation(type:size:placeholderIdentifier:)(a1, 0, 0, ObjectType, a2, a3))
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v27;
        if (v7 == v25)
        {
          goto LABEL_25;
        }
      }

      v30 = swift_unknownObjectRelease();
      v3 = &v35;
      MEMORY[0x1C6906EA0](v30);
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C1B94F08();
      }

      sub_1C1B94F48();
      v26 = v35;
    }

    while (v7 != v25);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

LABEL_25:

  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_36:

    v23 = 0;
    goto LABEL_37;
  }

  result = sub_1C1B953A8();
  if (!result)
  {
    goto LABEL_36;
  }

LABEL_27:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1C6907490](0, v26);
    goto LABEL_30;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v26 + 32);
    swift_unknownObjectRetain();
LABEL_30:

LABEL_37:
    [v34 unlock];
    return v23;
  }

  __break(1u);
  return result;
}

id Context.promotedContentInterstitial(size:ready:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = v8;

  v11 = sub_1C1B2CC2C(1, sub_1C1B2B214, v10, a3, a4);

  type metadata accessor for PromotedContentInfo();
  swift_getObjectType();
  v12 = [swift_unknownObjectRetain() placeholder];

  v13 = sub_1C1AB5ED0(v11, v12, a1, a2);
  swift_unknownObjectRelease_n();
  swift_beginAccess();
  v14 = *(v8 + 16);
  *(v8 + 16) = v13;
  v15 = v13;

  return v15;
}

void sub_1C1B29408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    type metadata accessor for PromotedContentInfo();
    swift_getObjectType();

    v11 = swift_unknownObjectRetain();
    v12 = sub_1C1AB5ED0(v11, 0, a3, a4);
    swift_unknownObjectRelease();
    swift_beginAccess();
    v13 = *(a5 + 16);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR___APPCPromotedContentInfo_metricsHelper);
      type metadata accessor for LifecycleMetricsHelper();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = *(v15 + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper);
        swift_unknownObjectRetain();
        [objc_msgSend(a1 metricsHelper)];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    v17 = *(a5 + 16);
    if (v17)
    {
      v18 = *(v17 + OBJC_IVAR___APPCPromotedContentInfo_metricsHelper);
      type metadata accessor for LifecycleMetricsHelper();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v20 = v19;
        swift_unknownObjectRetain();
        v21 = [a1 metricsHelper];
        swift_getObjectType();
        sub_1C1B5E2F0(v21, v20);
        swift_unknownObjectRelease();
      }
    }

    v22 = sub_1C1B94D78();
    v23 = NSSelectorFromString(v22);

    if ([v10 respondsToSelector_])
    {
      [v10 performSelector:v23 withObject:v12];
    }
  }
}

void Context.nativePromotedContent(size:contentFetched:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C1B225C4;
  v8[3] = &unk_1F4151CA8;
  v7 = _Block_copy(v8);

  [v4 promotedContentNativeWithSize:v7 contentFetched:{a3, a4}];
  _Block_release(v7);
}

void Context.promotedContentNative(size:contentFetched:)(void (*a1)(id), uint64_t a2, double a3, double a4)
{
  v9 = sub_1C1B94D78();
  v10 = NSSelectorFromString(v9);

  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = v10;
  v11[4] = a1;
  v11[5] = a2;
  v12 = v4;

  v13 = sub_1C1B2CC2C(4, sub_1C1B2B220, v11, a3, a4);

  swift_getObjectType();
  if ([v13 placeholder])
  {

    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for PromotedContentInfo();
    v14 = swift_unknownObjectRetain();
    v17 = sub_1C1AB5ED0(v14, 0, 0, 0);
    swift_unknownObjectRelease();
    if ([v12 respondsToSelector_])
    {
      [v12 performSelector:v10 withObject:v13];
      v15 = v12;
      v16 = v12;
    }

    a1(v17);
    swift_unknownObjectRelease();
  }
}

void sub_1C1B29AB4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id))
{
  type metadata accessor for PromotedContentInfo();
  swift_getObjectType();
  v8 = swift_unknownObjectRetain();
  v11 = sub_1C1AB5ED0(v8, 0, 0, 0);
  swift_unknownObjectRelease();
  if ([a2 respondsToSelector_])
  {
    [a2 performSelector:a3 withObject:a1];
    v9 = a2;
    v10 = a2;
  }

  a4(v11);
}

id Context.convertToAPContext()()
{
  v1 = v0;
  v2 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v44 - v4;
  v6 = sub_1C1B945F8();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR___APPCBaseContext_current))
  {
    swift_getObjectType();
    v9 = sub_1C1B59844();
  }

  else
  {
    v9 = 0;
  }

  v44 = v9;
  v10 = *(v0 + OBJC_IVAR___APPCBaseContext_adjacent);
  v49 = MEMORY[0x1E69E7CC0];
  v45 = v5;
  if (v10 >> 62)
  {
LABEL_35:
    v11 = sub_1C1B953A8();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  while (v11 != v12)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6907490](v12, v10);
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v13 = *(v10 + 8 * v12 + 32);
      swift_unknownObjectRetain();
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    swift_getObjectType();
    v15 = sub_1C1B59844();
    v16 = swift_unknownObjectRelease();
    ++v12;
    if (v15)
    {
      MEMORY[0x1C6906EA0](v16);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C1B94F08();
      }

      sub_1C1B94F48();
      v12 = v14;
    }
  }

  v18 = *(v1 + OBJC_IVAR___APPCBaseContext_maxSize);
  v19 = *(v1 + OBJC_IVAR___APPCBaseContext_maxSize + 8);
  v20 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v47 + 16))(v46, v1 + v20, v48);
  v21 = (v1 + OBJC_IVAR___APPCBaseContext_requestedAd);
  swift_beginAccess();
  v23 = *v21;
  v22 = v21[1];
  v24 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v25 = *(v1 + v24);
  if (v25)
  {

    v26 = v25;
    v27 = sub_1C1AB7364();
    v29 = v44;
    v28 = v45;
LABEL_22:

    v31 = sub_1C1ABAE90(v27);

    goto LABEL_23;
  }

  v30 = *(v1 + OBJC_IVAR___APPCContext_appStoreContext);
  v29 = v44;
  v28 = v45;
  if (v30)
  {

    v26 = v30;
    v27 = sub_1C1AD6D7C();
    goto LABEL_22;
  }

  v31 = 0;
LABEL_23:
  v32 = v46;
  v33 = v29;
  v34 = sub_1C1B945B8();
  if (v22)
  {
    v35 = sub_1C1B94D78();
  }

  else
  {
    v35 = 0;
  }

  sub_1C1AA576C(0, &qword_1EDE6CA08, 0x1E698A030);
  v36 = sub_1C1B94EB8();

  if (v31)
  {
    sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
    v37 = sub_1C1B94CA8();
  }

  else
  {
    v37 = 0;
  }

  v38 = [objc_allocWithZone(MEMORY[0x1E698A038]) initWithIdentifier:v34 maxSize:v35 requestedAdIdentifier:v33 currentContent:v36 adjacentContent:v37 supplementalContext:{v18, v19}];

  (*(v47 + 8))(v32, v48);
  v39 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  sub_1C1AA7E30(v1 + v39, v28, &qword_1EBF07F50, &qword_1C1B9A590);
  v40 = sub_1C1B94588();
  v41 = *(v40 - 8);
  v42 = 0;
  if ((*(v41 + 48))(v28, 1, v40) != 1)
  {
    v42 = sub_1C1B94538();
    (*(v41 + 8))(v28, v40);
  }

  [v38 setPrefetchTimestamp_];

  return v38;
}

uint64_t Context.addNewContentArrivedHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR___APPCContext_newContentArrivedHandlers;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1C1ACE3A8(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1C1ACE3A8((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_1C1B2B22C;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

Swift::Void __swiftcall Context.callNewContentArrivedHandlers(apContentDataItems:promotedContentItems:)(Swift::OpaquePointer apContentDataItems, Swift::OpaquePointer promotedContentItems)
{
  v5 = OBJC_IVAR___APPCContext_newContentArrivedHandlers;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 40);
    while (v8 < *(v6 + 16))
    {
      ++v8;
      v11 = *(v9 - 1);
      v10 = *v9;
      rawValue = promotedContentItems._rawValue;
      v13 = apContentDataItems._rawValue;

      v11(&v13, &rawValue);

      v9 += 2;
      if (v7 == v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1C1B2A390(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1C1AA576C(0, qword_1EDE6CA20, 0x1E698A028);
  v3 = sub_1C1B94EC8();

  v2(v3);
}

uint64_t (*sub_1C1B2A414(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C6907490](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_1C1B2A494;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1C1B2A49C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C6907490](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_1C1B2A51C;
  }

  __break(1u);
  return result;
}

void (*sub_1C1B2A524(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C6907490](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C1ADE210;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1C1B2A5A4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C6907490](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_1C1B2B8DC;
  }

  __break(1u);
  return result;
}

void (*sub_1C1B2A624(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C6907490](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C1B2B8E0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1B2A6A4()
{
  v0 = sub_1C1B955F8();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

id sub_1C1B2A6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v55 = a5;
  v56 = a4;
  v53 = a2;
  v54 = a3;
  v59 = a1;
  v60 = sub_1C1B945F8();
  v58 = *(v60 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v57 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1B95168();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v50 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C1B95148();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = sub_1C1B94C38();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = OBJC_IVAR___APPCContext_inventoryLock;
  *&v7[v19] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v20 = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR___APPCContext_inventory] = MEMORY[0x1E69E7CC0];
  v21 = OBJC_IVAR___APPCContext_placeholdersLock;
  *&v7[v21] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v7[OBJC_IVAR___APPCContext_placeholders] = v20;
  *&v7[OBJC_IVAR___APPCContext_lastError] = 0;
  *&v7[OBJC_IVAR___APPCContext_requester] = 0;
  v22 = &v7[OBJC_IVAR___APPCContext_denylistEvaluator];
  *v22 = 0;
  *(v22 + 1) = 0;
  *&v7[OBJC_IVAR___APPCContext_newsContext] = 0;
  *&v7[OBJC_IVAR___APPCContext_appStoreContext] = 0;
  v49 = OBJC_IVAR___APPCContext_contextQueue;
  v48[1] = sub_1C1AA576C(0, &qword_1EDE6CA10, 0x1E69E9610);
  if (qword_1EDE6CA90 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDE6CAA0;
  sub_1C1B94C28();
  v62 = v20;
  sub_1C1AA5A14(&qword_1EDE6CA18, MEMORY[0x1E69E8030]);
  sub_1C1AC1F08(&unk_1EBF09010, &qword_1C1B9FC78);
  sub_1C1AA5A5C(&qword_1EDE6CA38, &unk_1EBF09010, &qword_1C1B9FC78);
  sub_1C1B95318();
  (*(v51 + 104))(v50, *MEMORY[0x1E69E8090], v52);
  *&v7[v49] = sub_1C1B951A8();
  v24 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  v25 = sub_1C1B94588();
  (*(*(v25 - 8) + 56))(&v7[v24], 1, 1, v25);
  v26 = OBJC_IVAR___APPCContext_fetchingLock;
  *&v7[v26] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v27 = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR___APPCContext_fetching] = MEMORY[0x1E69E7CC0];
  v28 = OBJC_IVAR___APPCContext_waitingLock;
  *&v7[v28] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v7[OBJC_IVAR___APPCContext_waiting] = v27;
  v29 = OBJC_IVAR___APPCContext_prefetchLock;
  *&v7[v29] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *&v7[OBJC_IVAR___APPCContext_newContentArrivedHandlers] = v27;
  *&v7[OBJC_IVAR___APPCContext_limit] = [objc_opt_self() contextPrefetchLimit];
  v31 = v57;
  v30 = v58;
  v32 = *(v58 + 16);
  v34 = v59;
  v33 = v60;
  v32(v57, v59, v60);
  *&v7[OBJC_IVAR___APPCBaseContext_adjacentInternal] = v27;
  v35 = &v7[OBJC_IVAR___APPCBaseContext_requestedAd];
  *v35 = 0;
  *(v35 + 1) = 0;
  v32(&v7[OBJC_IVAR___APPCBaseContext_identifier], v31, v33);
  v36 = &v7[OBJC_IVAR___APPCBaseContext_maxSize];
  *v36 = a6;
  v36[1] = a7;
  swift_beginAccess();
  v37 = v54;
  *v35 = v53;
  *(v35 + 1) = v37;
  v38 = v55;
  *&v7[OBJC_IVAR___APPCBaseContext_current] = v56;
  *&v7[OBJC_IVAR___APPCBaseContext_next] = v27;
  *&v7[OBJC_IVAR___APPCBaseContext_adjacent] = v38;
  v39 = type metadata accessor for BaseContext();
  v61.receiver = v7;
  v61.super_class = v39;
  swift_unknownObjectRetain();
  v40 = objc_msgSendSuper2(&v61, sel_init);
  sub_1C1B95118();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v41 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1C1B98E60;
  v43 = sub_1C1B945A8();
  v45 = v44;
  *(v42 + 56) = MEMORY[0x1E69E6158];
  *(v42 + 64) = sub_1C1AA5E7C();
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  sub_1C1B94BA8();

  sub_1C1B343B4();

  v46 = *(v30 + 8);
  v46(v34, v33);
  v46(v31, v33);
  return v40;
}

uint64_t sub_1C1B2AE64(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

unint64_t sub_1C1B2AF14()
{
  result = qword_1EDE6A7E8;
  if (!qword_1EDE6A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A7E8);
  }

  return result;
}

uint64_t sub_1C1B2AF68(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&unk_1EBF09048, &qword_1C1B9FC90);
    sub_1C1AA5A14(a2, type metadata accessor for PlaceholderRequest);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1B2B004(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1B2B088()
{
  result = qword_1EDE6A720;
  if (!qword_1EDE6A720)
  {
    sub_1C1AC3404(&qword_1EBF09068, &qword_1C1B9FCA8);
    sub_1C1B2B10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A720);
  }

  return result;
}

unint64_t sub_1C1B2B10C()
{
  result = qword_1EDE6B808;
  if (!qword_1EDE6B808)
  {
    sub_1C1AC3404(&unk_1EBF09070, &qword_1C1B98F78);
    sub_1C1B0B7E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B808);
  }

  return result;
}

unint64_t sub_1C1B2B190()
{
  result = qword_1EDE6A6E8;
  if (!qword_1EDE6A6E8)
  {
    sub_1C1AC3404(&qword_1EBF09058, &qword_1C1B9FC98);
    sub_1C1AC1FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A6E8);
  }

  return result;
}

uint64_t sub_1C1B2B22C(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

unint64_t sub_1C1B2B484()
{
  result = qword_1EBF09080;
  if (!qword_1EBF09080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09080);
  }

  return result;
}

unint64_t sub_1C1B2B4DC()
{
  result = qword_1EDE6A7D8;
  if (!qword_1EDE6A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A7D8);
  }

  return result;
}

unint64_t sub_1C1B2B534()
{
  result = qword_1EDE6A7E0;
  if (!qword_1EDE6A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A7E0);
  }

  return result;
}

void sub_1C1B2B588(void *a1, void (**a2)(void, void), double a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  _Block_copy(a2);
  v9 = sub_1C1B94D78();
  v10 = NSSelectorFromString(v9);

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v10;
  v11[4] = sub_1C1B2B918;
  v11[5] = v8;
  v12 = a1;

  v13 = sub_1C1B2CC2C(4, sub_1C1B2B8D4, v11, a3, a4);

  swift_getObjectType();
  if ([v13 placeholder])
  {

    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for PromotedContentInfo();
    v14 = swift_unknownObjectRetain();
    v17 = sub_1C1AB5ED0(v14, 0, 0, 0);
    swift_unknownObjectRelease();
    if ([v12 respondsToSelector_])
    {
      [v12 performSelector:v10 withObject:v13];
      v15 = v12;
      v16 = v12;
    }

    (a2)[2](a2, v17);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C1B2B7AC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1B2B854(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1C1B2B91C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1C1B91B54(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

size_t sub_1C1B2B9AC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C1B8FE8C(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for PlaceholderRequest() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1C1B32A08(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C1B2BACC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C1B8FEA0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

id sub_1C1B2BB54(void *a1)
{
  v112 = sub_1C1B945F8();
  v2 = *(v112 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x1EEE9AC00](v112);
  v111 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return result;
  }

  v105._rawValue = a1;
  v6 = sub_1C1B2CB14(a1);
  v7 = v6;
  v104 = v6 >> 62;
  if (v6 >> 62)
  {
    goto LABEL_163;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C1B953A8())
  {
    v114 = v7;
    v116 = i;
    if (i)
    {
      v9 = 0;
      v10 = v7 & 0xC000000000000001;
      v115 = v7 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v10)
        {
          v11 = MEMORY[0x1C6907490](v9, v7);
        }

        else
        {
          if (v9 >= *(v115 + 16))
          {
            goto LABEL_151;
          }

          v11 = *(v7 + 8 * v9 + 32);
        }

        v12 = v11;
        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        v14 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
        swift_beginAccess();
        [*&v12[v14] delivered];
        v15 = v12;
        sub_1C1B31AD4(v15, v117);

        ++v9;
      }

      while (v13 != i);
      v16 = 0;
      v109 = "eContentDepiction>16@0:8";
      v108 = (v2 + 16);
      v107 = (v2 + 8);
      v106 = xmmword_1C1B9AF30;
      v110 = v7 & 0xC000000000000001;
      while (1)
      {
        if (v10)
        {
          v17 = MEMORY[0x1C6907490](v16, v7);
        }

        else
        {
          if (v16 >= *(v115 + 16))
          {
            goto LABEL_154;
          }

          v17 = *(v7 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v113 = sub_1C1B95118();
        sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
        v20 = sub_1C1B95298();
        sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
        v2 = swift_allocObject();
        *(v2 + 16) = v106;
        v21 = OBJC_IVAR___APPCBaseContext_identifier;
        swift_beginAccess();
        v22 = &v117[v21];
        v23 = v111;
        v24 = v112;
        (*v108)(v111, v22, v112);
        v25 = sub_1C1B945A8();
        v27 = v26;
        (*v107)(v23, v24);
        v28 = MEMORY[0x1E69E6158];
        *(v2 + 56) = MEMORY[0x1E69E6158];
        v29 = sub_1C1AA5E7C();
        *(v2 + 64) = v29;
        *(v2 + 32) = v25;
        *(v2 + 40) = v27;
        v30 = &v18[OBJC_IVAR___APPCPromotedContent_identifier];
        swift_beginAccess();
        v32 = *v30;
        v31 = *(v30 + 1);
        *(v2 + 96) = v28;
        *(v2 + 104) = v29;
        *(v2 + 72) = v32;
        *(v2 + 80) = v31;

        i = v116;
        sub_1C1B94BA8();

        v7 = v114;

        ++v16;
        v10 = v110;
        if (v19 == i)
        {
          goto LABEL_20;
        }
      }

LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

LABEL_20:
    Context.callNewContentArrivedHandlers(apContentDataItems:promotedContentItems:)(v105, v7);
    v33 = OBJC_IVAR___APPCContext_fetchingLock;
    [*&v117[OBJC_IVAR___APPCContext_fetchingLock] lock];
    if (v104)
    {
      v34 = sub_1C1B953A8();
    }

    else
    {
      v34 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = MEMORY[0x1E69E7CC0];
    if (v34)
    {
      v121 = MEMORY[0x1E69E7CC0];
      sub_1C1AC7E24(0, v34 & ~(v34 >> 63), 0);
      if ((v34 & 0x8000000000000000) == 0)
      {
        v36 = 0;
        v2 = v121;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v37 = MEMORY[0x1C6907490](v36, v7);
          }

          else
          {
            v37 = *(v7 + 8 * v36 + 32);
          }

          v38 = v37;
          if (v37[OBJC_IVAR___APPCPromotedContent_overriddenAdType + 8])
          {
            v39 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
            swift_beginAccess();
            v40 = *&v38[v39];
            if (v40)
            {
              v41 = [v40 adType];
            }

            else
            {
              v44 = OBJC_IVAR___APPCPromotedContent_representations;
              swift_beginAccess();
              v45 = *&v38[v44];
              if (v45 >> 62)
              {
                if (sub_1C1B953A8())
                {
LABEL_40:
                  if ((v45 & 0xC000000000000001) != 0)
                  {

                    v46 = MEMORY[0x1C6907490](0, v45);
                  }

                  else
                  {
                    if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_161;
                    }

                    v46 = *(v45 + 32);
                    swift_unknownObjectRetain();
                  }

                  v41 = [v46 adType];

                  swift_unknownObjectRelease();
                  goto LABEL_34;
                }
              }

              else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_40;
              }

              v41 = 0;
            }
          }

          else
          {
            v41 = *&v37[OBJC_IVAR___APPCPromotedContent_overriddenAdType];
          }

LABEL_34:
          v121 = v2;
          v43 = *(v2 + 16);
          v42 = *(v2 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_1C1AC7E24((v42 > 1), v43 + 1, 1);
            v2 = v121;
          }

          ++v36;
          *(v2 + 16) = v43 + 1;
          *(v2 + 8 * v43 + 32) = v41;
          i = v116;
          if (v34 == v36)
          {
            goto LABEL_47;
          }
        }
      }

      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      v120 = v35;

      result = sub_1C1B958C8();
      __break(1u);
      return result;
    }

LABEL_47:
    v47 = OBJC_IVAR___APPCContext_fetching;
    swift_beginAccess();
    if (*(v2 + 16))
    {
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1C1B8FEA0(v2);
        }

        v62 = *(v2 + 16);
        v63 = v117;
        if (!v62)
        {
          goto LABEL_152;
        }

        v61 = v62 - 1;
        v35 = *(v2 + 8 * v61 + 32);
        *(v2 + 16) = v61;
        v64 = *&v63[v47];
        v65 = *(v64 + 16);
        if (v65)
        {
          break;
        }

LABEL_61:
        if (!v61)
        {
          goto LABEL_48;
        }
      }

      v66 = 0;
      while (1)
      {
        v68 = *(v64 + 32 + 8 * v66);
        if (v35 > 3)
        {
          break;
        }

        if (v35 > 1)
        {
          if (v35 == 2)
          {
            if (v68 == 2)
            {
              goto LABEL_60;
            }
          }

          else if (v68 == 3)
          {
            goto LABEL_60;
          }

          goto LABEL_71;
        }

        if (!v35)
        {
          goto LABEL_67;
        }

        if (v35 != 1)
        {
          goto LABEL_174;
        }

        if (v68 == 1)
        {
LABEL_60:
          swift_beginAccess();
          sub_1C1B2BACC(v66);
          swift_endAccess();
          v61 = *(v2 + 16);
          goto LABEL_61;
        }

LABEL_71:
        if (v65 == ++v66)
        {
          goto LABEL_61;
        }
      }

      if (v35 > 5)
      {
        switch(v35)
        {
          case 6:
            if (v68 == 6)
            {
              goto LABEL_60;
            }

            break;
          case 7:
            if (v68 == 7)
            {
              goto LABEL_60;
            }

            break;
          case 8:
            break;
          default:
            goto LABEL_174;
        }

        goto LABEL_71;
      }

      if (v35 == 4)
      {
        if (v68 == 4)
        {
          goto LABEL_60;
        }

        goto LABEL_71;
      }

LABEL_67:
      if (v68)
      {
        v67 = v68 == 5;
      }

      else
      {
        v67 = 1;
      }

      if (v67)
      {
        goto LABEL_60;
      }

      goto LABEL_71;
    }

LABEL_48:
    v48 = &property descriptor for VideoRepresentation.unbranded;
    [*&v117[v33] unlock];
    if (i)
    {
      if (i < 1)
      {
        goto LABEL_173;
      }

      v49 = 0;
      v50 = v7 & 0xC000000000000001;
      do
      {
        if (v50)
        {
          v51 = MEMORY[0x1C6907490](v49, v7);
        }

        else
        {
          v51 = *(v7 + 8 * v49 + 32);
        }

        v52 = v51;
        v53 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v54 = swift_allocObject();
        *(v54 + 16) = sub_1C1B2AE5C;
        *(v54 + 24) = v53;
        v55 = OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete;
        swift_beginAccess();
        v56 = *&v52[v55];
        swift_retain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v52[v55] = v56;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = sub_1C1ACE190(0, v56[2] + 1, 1, v56);
          *&v52[v55] = v56;
        }

        v59 = v56[2];
        v58 = v56[3];
        if (v59 >= v58 >> 1)
        {
          v56 = sub_1C1ACE190((v58 > 1), v59 + 1, 1, v56);
        }

        ++v49;
        v56[2] = v59 + 1;
        v60 = &v56[2 * v59];
        v60[4] = sub_1C1B32A6C;
        v60[5] = v54;
        *&v52[v55] = v56;
        swift_endAccess();

        v7 = v114;
      }

      while (v116 != v49);
      v69 = 0;
      v119 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v50)
        {
          v71 = MEMORY[0x1C6907490](v69, v7);
        }

        else
        {
          if (v69 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_156;
          }

          v71 = *(v7 + 8 * v69 + 32);
        }

        v72 = v71;
        v73 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          goto LABEL_155;
        }

        if (v71[OBJC_IVAR___APPCPromotedContent_overriddenAdType + 8] == 1)
        {
          v74 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
          swift_beginAccess();
          v75 = *&v72[v74];
          if (v75)
          {
            if ([v75 adType] == 6)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v76 = OBJC_IVAR___APPCPromotedContent_representations;
            swift_beginAccess();
            v77 = *&v72[v76];
            if (v77 >> 62)
            {
              if (v77 < 0)
              {
                v80 = *&v72[v76];
              }

              if (!sub_1C1B953A8())
              {
                goto LABEL_95;
              }
            }

            else if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_95;
            }

            if ((v77 & 0xC000000000000001) != 0)
            {

              v78 = MEMORY[0x1C6907490](0, v77);
            }

            else
            {
              if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_162;
              }

              v78 = *(v77 + 32);
              swift_unknownObjectRetain();
            }

            v79 = [v78 adType];
            swift_unknownObjectRelease();
            if (v79 == 6)
            {
LABEL_106:

              goto LABEL_96;
            }
          }
        }

        else if (*&v71[OBJC_IVAR___APPCPromotedContent_overriddenAdType] == 6)
        {
          goto LABEL_106;
        }

LABEL_95:
        sub_1C1B954F8();
        v70 = *(v119 + 16);
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
LABEL_96:
        ++v69;
        if (v73 == v116)
        {
          v81 = v119;
          v48 = &property descriptor for VideoRepresentation.unbranded;
          goto LABEL_122;
        }
      }
    }

    v81 = MEMORY[0x1E69E7CC0];
LABEL_122:

    v7 = sub_1C1AFB3B4(v81);

    v82 = *&v117[OBJC_IVAR___APPCContext_inventoryLock];
    [v82 lock];

    if (v7 >> 62)
    {
      sub_1C1AC1F08(&unk_1EBF09020, &qword_1C1B98F38);
      v83 = sub_1C1B95578();
    }

    else
    {
      sub_1C1B95898();
      v83 = v7;
    }

    swift_beginAccess();
    sub_1C1AC7548(v83);
    swift_endAccess();
    [v82 v48[463]];
    sub_1C1B2D340();
    v118 = MEMORY[0x1E69E7CC0];
    if (!(v7 >> 62))
    {
      v84 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v84)
      {
        break;
      }

      goto LABEL_126;
    }

    v84 = sub_1C1B953A8();
    if (!v84)
    {
      break;
    }

LABEL_126:
    v85 = 0;
    v86 = v7 & 0xC000000000000001;
    v87 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v86)
      {
        v89 = v7;
        v90 = MEMORY[0x1C6907490](v85, v7);
      }

      else
      {
        if (v85 >= *(v87 + 16))
        {
          goto LABEL_158;
        }

        v89 = v7;
        v90 = *(v7 + 8 * v85 + 32);
      }

      v91 = v90;
      v7 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      v92 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
      swift_beginAccess();
      if (*&v91[v92])
      {
      }

      else
      {
        sub_1C1B954F8();
        v88 = *(v118 + 16);
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
      }

      ++v85;
      v67 = v7 == v84;
      v7 = v89;
      if (v67)
      {
        v93 = v118;
        goto LABEL_139;
      }
    }

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
    ;
  }

  v93 = MEMORY[0x1E69E7CC0];
LABEL_139:
  v116 = v7;
  if ((v93 & 0x8000000000000000) == 0 && (v93 & 0x4000000000000000) == 0)
  {
    v94 = *(v93 + 16);
    if (!v94)
    {
      goto LABEL_166;
    }

    goto LABEL_142;
  }

  v94 = sub_1C1B953A8();
  if (v94)
  {
LABEL_142:
    v95 = 0;
    v7 = &selRef_hash;
    do
    {
      if ((v93 & 0xC000000000000001) != 0)
      {
        v96 = MEMORY[0x1C6907490](v95, v93);
      }

      else
      {
        if (v95 >= *(v93 + 16))
        {
          goto LABEL_160;
        }

        v96 = *(v93 + 8 * v95 + 32);
      }

      v97 = v96;
      v98 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        goto LABEL_159;
      }

      [v96 setBestRepresentation_];

      swift_unknownObjectRelease();
      ++v95;
    }

    while (v98 != v94);
  }

LABEL_166:

  v99 = sub_1C1B94D78();
  v100 = NSSelectorFromString(v99);

  if (![v117 respondsToSelector_])
  {
  }

  type metadata accessor for PromotedContent();
  v101 = sub_1C1B94EB8();

  [v117 performSelector:v100 withObject:v101];

  v102 = v117;
  v103 = v117;

  return v103;
}

uint64_t sub_1C1B2CB14(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = sub_1C1B953A8();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v11 = MEMORY[0x1E69E7CC0];
    result = sub_1C1B95518();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1C6907490](v6, a1);
        }

        else
        {
          v7 = *(a1 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        v9 = v2;
        _s15PromotedContentAAC11contentData7contextABSo09APContentD0C_AA17PromotableContext_pSgtcfC_0(v8, v2);
        sub_1C1B954F8();
        v10 = *(v11 + 16);
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
      }

      while (v4 != v6);
      return v11;
    }
  }

  return result;
}

uint64_t sub_1C1B2CC2C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v77 = a3;
  v75 = a2;
  v82 = a1;
  v74 = type metadata accessor for PlaceholderRequest();
  v79 = *(v74 - 8);
  v9 = *(v79 + 64);
  v10 = MEMORY[0x1EEE9AC00](v74);
  v78 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v76 = v71 - v12;
  v13 = sub_1C1B945F8();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v17 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v85) = sub_1C1B95118();
  v83 = sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v84 = "eContentDepiction>16@0:8";
  v81 = sub_1C1B95298();
  v87 = sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v18 = swift_allocObject();
  v80 = xmmword_1C1B9AF30;
  *(v18 + 16) = xmmword_1C1B9AF30;
  v19 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v20 = v14 + 2;
  v86 = v14[2];
  v86(v17, &v5[v19], v13);
  v21 = sub_1C1B945A8();
  v23 = v22;
  v25 = v14[1];
  v24 = v14 + 1;
  v88 = v25;
  v89 = v13;
  v25(v17, v13);
  v26 = MEMORY[0x1E69E6158];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v27 = sub_1C1AA5E7C();
  *(v18 + 64) = v27;
  *(v18 + 32) = v21;
  *(v18 + 40) = v23;
  v28 = v82;
  v29 = PlacementType.stringValue.getter(v82);
  *(v18 + 96) = v26;
  *(v18 + 104) = v27;
  *(v18 + 72) = v29;
  *(v18 + 80) = v30;
  v31 = v6;
  v32 = v81;
  sub_1C1B94BA8();

  v33 = v28;
  v34 = sub_1C1B2D784(v28, 0, 0, a4, a5);
  if (v34)
  {
    v85 = v34;
    LODWORD(v81) = sub_1C1B95118();
    v35 = sub_1C1B95298();
    v36 = swift_allocObject();
    *(v36 + 16) = v80;
    v37 = &v31[v19];
    v38 = v89;
    v86(v17, v37, v89);
    v39 = sub_1C1B945A8();
    v41 = v40;
    v88(v17, v38);
    v42 = MEMORY[0x1E69E6158];
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = v27;
    *(v36 + 32) = v39;
    *(v36 + 40) = v41;
    v43 = PlacementType.stringValue.getter(v33);
    *(v36 + 96) = v42;
    *(v36 + 104) = v27;
    *(v36 + 72) = v43;
    *(v36 + 80) = v44;
    sub_1C1B94BA8();
  }

  else
  {
    v71[1] = v20;
    v72 = v19;
    v45 = v17;
    v73 = v27;
    *&v80 = v24;
    v81 = v31;
    v46 = v31;
    v47 = sub_1C1AAE960(0, 0, v28, 0, v46, 200, a4, a5);
    v48 = v76;
    sub_1C1B945E8();
    v49 = v74;
    *(v48 + *(v74 + 20)) = v33;
    v50 = (v48 + v49[6]);
    *v50 = a4;
    v50[1] = a5;
    v51 = v49[7];
    v85 = v47;
    *(v48 + v51) = v47;
    v52 = (v48 + v49[8]);
    v53 = v77;
    *v52 = v75;
    v52[1] = v53;
    v54 = *&v46[OBJC_IVAR___APPCContext_placeholdersLock];

    [v54 lock];
    v55 = v78;
    sub_1C1B0B6D8(v48, v78);
    v56 = OBJC_IVAR___APPCContext_placeholders;
    swift_beginAccess();
    v57 = *&v46[v56];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v46[v56] = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_1C1ACE1A4(0, v57[2] + 1, 1, v57);
      *&v46[v56] = v57;
    }

    v60 = v57[2];
    v59 = v57[3];
    v61 = v79;
    if (v60 >= v59 >> 1)
    {
      v70 = sub_1C1ACE1A4(v59 > 1, v60 + 1, 1, v57);
      v61 = v79;
      v57 = v70;
    }

    v57[2] = v60 + 1;
    sub_1C1B32A08(v55, v57 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60);
    *&v46[v56] = v57;
    swift_endAccess();
    [v54 unlock];
    sub_1C1B95118();
    v62 = sub_1C1B95298();
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1C1B98E60;
    v64 = v89;
    v86(v45, (v81 + v72), v89);
    v65 = sub_1C1B945A8();
    v67 = v66;
    v88(v45, v64);
    v68 = v73;
    *(v63 + 56) = MEMORY[0x1E69E6158];
    *(v63 + 64) = v68;
    *(v63 + 32) = v65;
    *(v63 + 40) = v67;
    sub_1C1B94BA8();

    sub_1C1B2DD0C();
    sub_1C1B0B73C(v48);
  }

  return v85;
}

uint64_t sub_1C1B2D340()
{
  v43 = type metadata accessor for PlaceholderRequest();
  v1 = *(v43 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v43);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v46 = &v41 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - v13;
  v42 = *(v0 + OBJC_IVAR___APPCContext_placeholdersLock);
  [v42 lock];
  v15 = OBJC_IVAR___APPCContext_placeholders;
  result = swift_beginAccess();
  v47 = v15;
  v48 = v0;
  v17 = *(v0 + v15);
  v18 = v17[2];
  if (v18)
  {
    v49 = v12;
    v19 = 0;
    v44 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v20 = v17 + v44;
    v21 = v43;
    while (1)
    {
      if (v19 >= v17[2])
      {
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
LABEL_41:
        __break(1u);
        return result;
      }

      v22 = *(v1 + 72);
      sub_1C1B0B6D8(&v20[v22 * v19], v14);
      if ([*&v14[*(v21 + 28)] consumed])
      {
        v23 = v1;
        v24 = *&v14[*(v21 + 20)];
        result = sub_1C1B0B73C(v14);
        v25 = v24 == 3;
        v1 = v23;
        if (!v25)
        {
          v26 = v19 + 1;
          v27 = v17[2];
          if (v27 - 1 != v19)
          {
            v28 = v44 + v22 * v26;
            v29 = v49;
            while (1)
            {
              if (v26 >= v27)
              {
                goto LABEL_35;
              }

              sub_1C1B0B6D8(v17 + v28, v29);
              if ([*(v29 + *(v21 + 28)) consumed])
              {
                v30 = *&v49[*(v21 + 20)];
                result = sub_1C1B0B73C(v49);
                v25 = v30 == 3;
                v29 = v49;
                if (!v25)
                {
                  goto LABEL_11;
                }

                if (v26 != v19)
                {
LABEL_19:
                  if ((v19 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_36;
                  }

                  v31 = v17[2];
                  if (v19 >= v31)
                  {
                    goto LABEL_37;
                  }

                  result = sub_1C1B0B6D8(v17 + v44 + v19 * v22, v46);
                  if (v26 >= v31)
                  {
                    goto LABEL_38;
                  }

                  sub_1C1B0B6D8(v17 + v28, v45);
                  result = swift_isUniquelyReferenced_nonNull_native();
                  v32 = v47;
                  *(v48 + v47) = v17;
                  if ((result & 1) == 0)
                  {
                    result = sub_1C1B8FE8C(v17);
                    v17 = result;
                    *(v48 + v32) = result;
                  }

                  v1 = v23;
                  if (v19 >= v17[2])
                  {
                    goto LABEL_39;
                  }

                  result = sub_1C1B32A74(v45, v17 + v44 + v19 * v22);
                  v34 = v47;
                  v33 = v48;
                  *(v48 + v47) = v17;
                  if (v26 >= v17[2])
                  {
                    goto LABEL_40;
                  }

                  result = sub_1C1B32A74(v46, v17 + v28);
                  *(v33 + v34) = v17;
                  v21 = v43;
                  v29 = v49;
                }
              }

              else
              {
                result = sub_1C1B0B73C(v29);
                if (v26 != v19)
                {
                  goto LABEL_19;
                }
              }

              ++v19;
LABEL_11:
              ++v26;
              v27 = v17[2];
              v28 += v22;
              if (v26 == v27)
              {
                if (v26 < v19)
                {
                  goto LABEL_41;
                }

                goto LABEL_30;
              }
            }
          }

          goto LABEL_30;
        }
      }

      else
      {
        result = sub_1C1B0B73C(v14);
      }

      if (v18 == ++v19)
      {
        v19 = v17[2];
        v26 = v19;
        goto LABEL_30;
      }
    }
  }

  v19 = 0;
  v26 = 0;
LABEL_30:
  v36 = v47;
  v35 = v48;
  sub_1C1AF94EC(v19, v26);
  swift_endAccess();
  v37 = *(v35 + v36);

  [v42 unlock];
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = v37 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v40 = *(v1 + 72);
    do
    {
      sub_1C1B0B6D8(v39, v9);
      sub_1C1B2EDF0(v9);
      sub_1C1B0B73C(v9);
      v39 += v40;
      --v38;
    }

    while (v38);
  }
}

uint64_t sub_1C1B2D784(uint64_t a1, uint64_t a2, unint64_t a3, double a4, double a5)
{
  v46 = a2;
  v47 = a3;
  v49 = a1;
  v8 = sub_1C1B945F8();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *&v5[OBJC_IVAR___APPCContext_inventoryLock];
  [v45 lock];
  v11 = sub_1C1B2EA58();
  v12 = v11;
  v13 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
    goto LABEL_43;
  }

  v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v43 = v5;
  v44 = v8;
  if (v14)
  {
LABEL_3:
    v15 = 0;
    v48 = 200;
LABEL_6:
    v8 = v15;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C6907490](v8, v12);
        v15 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v8 >= *(v13 + 16))
        {
          goto LABEL_42;
        }

        v5 = *(v12 + 8 * v8 + 32);
        swift_unknownObjectRetain();
        v15 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v14 = sub_1C1B953A8();
          v43 = v5;
          v44 = v8;
          if (!v14)
          {
            goto LABEL_44;
          }

          goto LABEL_3;
        }
      }

      ObjectType = swift_getObjectType();
      if ([v5 serverUnfilledReason] == 200)
      {
        v16 = PromotableContent.hasSuitableRepresentation(type:size:placeholderIdentifier:)(v49, v46, v47, ObjectType, a4, a5);
        v48 = v17;
        [v5 setBestRepresentation_];
        swift_unknownObjectRelease();
        if (v16)
        {
          goto LABEL_40;
        }

LABEL_5:
        swift_unknownObjectRelease();
        if (v15 == v14)
        {
          goto LABEL_45;
        }

        goto LABEL_6;
      }

      v19 = [v5 adType];
      if (v19 != 8)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v8;
      if (v15 == v14)
      {
        goto LABEL_45;
      }
    }

    if (v19 > 3)
    {
      if (v19 > 5)
      {
        if (v19 == 6)
        {
          if (v49 != 6)
          {
            goto LABEL_5;
          }

          goto LABEL_40;
        }

        if (v19 == 7)
        {
          if (v49 != 7)
          {
            goto LABEL_5;
          }

          goto LABEL_40;
        }

LABEL_57:
        v50 = v19;
        result = sub_1C1B958C8();
        __break(1u);
        return result;
      }

      if (v19 == 4)
      {
        if (v49 != 4)
        {
          goto LABEL_5;
        }

        goto LABEL_40;
      }
    }

    else
    {
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          if (v49 != 2)
          {
            goto LABEL_5;
          }
        }

        else if (v49 != 3)
        {
          goto LABEL_5;
        }

        goto LABEL_40;
      }

      if (v19)
      {
        if (v19 == 1)
        {
          if (v49 != 1)
          {
            goto LABEL_5;
          }

LABEL_40:

          [v5 setAttachedToView_];
          v48 = [v5 serverUnfilledReason];
          [v45 unlock];
          return v5;
        }

        goto LABEL_57;
      }
    }

    if (v49 && v49 != 5)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_44:
  v48 = 200;
LABEL_45:

  v20 = v43;
  v21 = sub_1C1B2EA58();
  if (v21 >> 62)
  {
    v22 = sub_1C1B953A8();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = v44;

  if (v22)
  {
    v24 = UnfilledReason.description.getter(v48);
    v26 = v25;
  }

  else
  {
    v26 = 0x80000001C1BAA5A0;
    v24 = 0xD000000000000010;
  }

  sub_1C1B95138();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v27 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C1B9EEE0;
  v29 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v30 = v42;
  v31 = &v20[v29];
  v32 = v41;
  (*(v42 + 16))(v41, v31, v23);
  v33 = sub_1C1B945A8();
  v35 = v34;
  (*(v30 + 8))(v32, v23);
  v36 = MEMORY[0x1E69E6158];
  *(v28 + 56) = MEMORY[0x1E69E6158];
  v37 = sub_1C1AA5E7C();
  *(v28 + 32) = v33;
  *(v28 + 40) = v35;
  *(v28 + 96) = v36;
  *(v28 + 104) = v37;
  *(v28 + 64) = v37;
  *(v28 + 72) = v24;
  *(v28 + 80) = v26;
  *(v28 + 136) = v36;
  *(v28 + 144) = v37;
  v38 = 1701736270;
  if (v47)
  {
    v38 = v46;
  }

  v39 = 0xE400000000000000;
  if (v47)
  {
    v39 = v47;
  }

  *(v28 + 112) = v38;
  *(v28 + 120) = v39;

  sub_1C1B94BA8();

  [v45 unlock];
  return 0;
}