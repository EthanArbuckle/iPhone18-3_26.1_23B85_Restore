uint64_t sub_1C1AB77B8()
{
  v0 = sub_1C1B958A8();

  if (v0 >= 0x3E)
  {
    return 62;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C1AB780C(char a1)
{
  result = 0x692E726564616568;
  switch(a1)
  {
    case 1:
    case 61:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
    case 8:
    case 22:
    case 32:
    case 51:
      result = 0xD00000000000001ALL;
      break;
    case 4:
    case 17:
    case 33:
    case 34:
      result = 0xD00000000000001FLL;
      break;
    case 5:
    case 18:
    case 26:
    case 36:
    case 38:
    case 57:
      result = 0xD00000000000001CLL;
      break;
    case 6:
    case 12:
      result = 0xD000000000000027;
      break;
    case 7:
    case 13:
      result = 0xD000000000000024;
      break;
    case 9:
    case 20:
      result = 0xD000000000000017;
      break;
    case 10:
    case 27:
    case 28:
    case 59:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD00000000000002BLL;
      break;
    case 15:
    case 40:
    case 41:
      result = 0xD000000000000028;
      break;
    case 16:
    case 53:
      result = 0xD000000000000022;
      break;
    case 19:
      result = 0xD00000000000001BLL;
      break;
    case 21:
    case 39:
    case 60:
      result = 0xD000000000000023;
      break;
    case 23:
      result = 0xD00000000000001BLL;
      break;
    case 24:
    case 52:
      result = 0xD000000000000018;
      break;
    case 25:
      result = 0xD00000000000001BLL;
      break;
    case 29:
      result = 0xD000000000000014;
      break;
    case 30:
    case 31:
    case 48:
    case 58:
      result = 0xD000000000000019;
      break;
    case 35:
    case 37:
    case 43:
    case 44:
      result = 0xD000000000000020;
      break;
    case 42:
      result = 0xD00000000000001BLL;
      break;
    case 46:
      result = 0xD00000000000001BLL;
      break;
    case 47:
      result = 0xD00000000000001BLL;
      break;
    case 49:
      return result;
    case 50:
      result = 0xD000000000000010;
      break;
    case 54:
      result = 0xD00000000000002ELL;
      break;
    case 56:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_1C1AB7E28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_1C1AA7C14(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C1AB7FA4(v16, a4 & 1);
      v20 = *a5;
      v11 = sub_1C1AA7C14(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1C1B958E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1C1ADA698();
      v11 = v19;
    }
  }

  v22 = *a5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_1C1AB8450(uint64_t a1)
{
  v2 = sub_1C1B94438();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1C1B94428();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1C1AB8544(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_1C1B95028();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1C1B95008();

  v8 = sub_1C1B94FF8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  sub_1C1AE36F8(0, 0, v6, &unk_1C1BA46F0, v9);
}

uint64_t sub_1C1AB86CC(char a1, char a2)
{
  v3 = v2;
  if ((a2 & 1) != 0 || (v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen, result = swift_beginAccess(), *(v3 + v5) == 1))
  {
    if (*(v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_interactionTime + 8))
    {
      sub_1C1B95128();
      sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
      v7 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1C1B98E60;
      v9 = (v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_journeyIdentifier);
      swift_beginAccess();
      v11 = *v9;
      v10 = v9[1];
      *(v8 + 56) = MEMORY[0x1E69E6158];
      *(v8 + 64) = sub_1C1AA5E7C();
      *(v8 + 32) = v11;
      *(v8 + 40) = v10;

LABEL_7:
      sub_1C1B94BA8();
    }

    if (*(v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_leftAdDestinationWasReported) == 1)
    {
      sub_1C1B95118();
      sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
      v7 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1C1B98E60;
      v13 = (v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_journeyIdentifier);
      swift_beginAccess();
      v15 = *v13;
      v14 = v13[1];
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = sub_1C1AA5E7C();
      *(v12 + 32) = v15;
      *(v12 + 40) = v14;

      goto LABEL_7;
    }

    v16 = *(v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_interactionTime);
    *(v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_leftAdDestinationWasReported) = 1;
    result = sub_1C1B94508();
    v18 = v17 - v16;
    if (a1)
    {
      if (v18 < 50.0)
      {
        return sub_1C1B81D7C(a1 & 1, v18);
      }
    }

    else if (v18 < 5.0)
    {
      return sub_1C1B81D7C(a1 & 1, v18);
    }
  }

  return result;
}

void *sub_1C1AB8B34(char a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = [result adType];
    result = swift_unknownObjectRelease();
    if (v3 == 1)
    {
      v4 = sub_1C1B7F814(a1 & 1);
      sub_1C1B7D8F0(77005, v4, v5);
    }
  }

  return result;
}

uint64_t sub_1C1AB8C60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = sub_1C1B94A58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v7 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenPlaced))
  {
    goto LABEL_23;
  }

  v77 = a5;
  *(v7 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenPlaced) = 1;
  swift_beginAccess();
  v76 = v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  v75 = sub_1C1AB2B4C(Strong, a1, a2, a3, a4 & 1);
  swift_unknownObjectRelease();
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v20 = sub_1C1B94BE8();
  sub_1C1AB4454(v20, qword_1EDE6D058);
  v21 = sub_1C1B94BC8();
  v22 = sub_1C1B95138();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = a1;
    _os_log_impl(&dword_1C1AA2000, v21, v22, "placement type %ld", v23, 0xCu);
    MEMORY[0x1C6908230](v23, -1, -1);
  }

  if ((a6 & 1) != 0 || v77 == 200)
  {
    v7 = v76;
    v40 = swift_unknownObjectWeakLoadStrong();
    if (v40 && (v41 = [v40 serverUnfilledReason], swift_unknownObjectRelease(), v41 != 200))
    {
      (*(v15 + 104))(v18, *MEMORY[0x1E6989F88], v14);
      v57 = sub_1C1B94A48();
      v59 = v58;
      (*(v15 + 8))(v18, v14);
      sub_1C1AC1F08(&qword_1EBF07B00, &unk_1C1BA4320);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1C1B98E60;
      v61 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      *(v60 + 56) = sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
      *(v60 + 32) = v61;
      v62 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
      v63 = sub_1C1B94EB8();

      v64 = [v62 initWithArray_];

      v65 = v75;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78[0] = v65;
      sub_1C1AB31CC(v64, v57, v59, isUniquelyReferenced_nonNull_native, v78);

      v39 = v78[0];
      v53 = sub_1C1B94BC8();
      v54 = sub_1C1B95118();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 134217984;
        *(v55 + 4) = v41;
        v56 = "Metric helper reports server unfilled reason %ld";
        goto LABEL_19;
      }
    }

    else
    {
      v42 = swift_unknownObjectWeakLoadStrong();
      if (!v42)
      {
        v39 = v75;
        goto LABEL_22;
      }

      v43 = [v42 placeholder];
      swift_unknownObjectRelease();
      v39 = v75;
      if (!v43)
      {
        goto LABEL_22;
      }

      (*(v15 + 104))(v18, *MEMORY[0x1E6989F88], v14);
      v44 = sub_1C1B94A48();
      v46 = v45;
      (*(v15 + 8))(v18, v14);
      sub_1C1AC1F08(&qword_1EBF07B00, &unk_1C1BA4320);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1C1B98E60;
      v48 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      *(v47 + 56) = sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
      *(v47 + 32) = v48;
      v49 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
      v50 = sub_1C1B94EB8();

      v51 = [v49 initWithArray_];

      v52 = swift_isUniquelyReferenced_nonNull_native();
      v78[0] = v39;
      sub_1C1AB31CC(v51, v44, v46, v52, v78);

      v39 = v78[0];
      v53 = sub_1C1B94BC8();
      v54 = sub_1C1B95118();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 134217984;
        *(v55 + 4) = 1059;
        v56 = "Metric helper reports unfilled reason %ld";
LABEL_19:
        _os_log_impl(&dword_1C1AA2000, v53, v54, v56, v55, 0xCu);
        MEMORY[0x1C6908230](v55, -1, -1);
      }
    }

    goto LABEL_22;
  }

  v24 = sub_1C1B94BC8();
  v25 = sub_1C1B95118();
  v26 = os_log_type_enabled(v24, v25);
  v7 = v76;
  v27 = v77;
  if (v26)
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = v27;
    _os_log_impl(&dword_1C1AA2000, v24, v25, "Metric helper reports unfilled reason %ld", v28, 0xCu);
    MEMORY[0x1C6908230](v28, -1, -1);
  }

  (*(v15 + 104))(v18, *MEMORY[0x1E6989F88], v14);
  v29 = sub_1C1B94A48();
  v31 = v30;
  (*(v15 + 8))(v18, v14);
  sub_1C1AC1F08(&qword_1EBF07B00, &unk_1C1BA4320);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C1B98E60;
  v33 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(v32 + 56) = sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
  *(v32 + 32) = v33;
  v34 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
  v35 = sub_1C1B94EB8();

  v36 = [v34 initWithArray_];

  v37 = v75;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v78[0] = v37;
  sub_1C1AB31CC(v36, v29, v31, v38, v78);

  v39 = v78[0];
LABEL_22:
  v67 = *(v7 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_placedProperties);
  *(v7 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_placedProperties) = v39;

  if ([objc_opt_self() isNewsOrStocks])
  {
LABEL_23:
    sub_1C1B95138();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v68 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1C1B98E60;
    v70 = (v7 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v72 = *v70;
    v71 = v70[1];
    *(v69 + 56) = MEMORY[0x1E69E6158];
    *(v69 + 64) = sub_1C1AA5E7C();
    *(v69 + 32) = v72;
    *(v69 + 40) = v71;

    sub_1C1B94BA8();
  }

  return sub_1C1B7D0A4();
}

uint64_t sub_1C1AB9638(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C1AB9CA0;

  return sub_1C1AB96F0(a1, v5);
}

uint64_t sub_1C1AB96F0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C1AB9B8C;

  return v6(v2 + 32);
}

uint64_t sub_1C1AB97E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C1AB9A98;

  return sub_1C1AB9898(a1, v4, v5, v6);
}

uint64_t sub_1C1AB9898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = *(*(sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  sub_1C1B95008();
  v4[8] = sub_1C1B94FF8();
  v7 = sub_1C1B94FC8();

  return MEMORY[0x1EEE6DFA0](sub_1C1AB9968, v7, v6);
}

uint64_t sub_1C1AB9968()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 56);
    v5 = sub_1C1B95028();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = Strong;
    sub_1C1AE33F8(0, 0, v4, &unk_1C1BA46F8, v6);
  }

  v7 = *(v0 + 56);
  **(v0 + 40) = Strong == 0;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C1AB9A98()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C1AB9B8C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

Swift::Void __swiftcall SponsorshipAdManager.refresh()()
{
  v1 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - v3;
  v5 = sub_1C1B95028();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_1C1AE33F8(0, 0, v4, &unk_1C1BA4640, v6);
}

uint64_t sub_1C1AB9DB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1AB9DF0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C1AB9CA0;

  return sub_1C1AB9EA8(a1, v5);
}

uint64_t sub_1C1AB9EA8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1AE3DE8;

  return v7(a1);
}

uint64_t sub_1C1AB9FA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C1AB9CA0;

  return sub_1C1ABA054(a1, v4, v5, v6);
}

uint64_t sub_1C1ABA054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = sub_1C1B94588();
  v4[27] = v5;
  v6 = *(v5 - 8);
  v4[28] = v6;
  v7 = *(v6 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[31] = v8;
  *v8 = v4;
  v8[1] = sub_1C1B8B8B8;

  return sub_1C1B911E8();
}

uint64_t sub_1C1ABA16C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1ABA1A4()
{
  result = sub_1C1B945F8();
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

uint64_t sub_1C1ABA284()
{
  result = sub_1C1B945F8();
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

uint64_t sub_1C1ABA33C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1C1B953B8();

    if (v9)
    {

      type metadata accessor for AdResponseBlock(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1C1B953A8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1C1B836E0(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1C1B83B14(v22 + 1);
    }

    v20 = v8;
    sub_1C1B841CC(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for AdResponseBlock(0);
  v11 = *(v6 + 40);
  v12 = sub_1C1B95268();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1C1ABA554(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1C1B95278();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

void sub_1C1ABA554(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C1B83B14(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C1B847A0();
      goto LABEL_12;
    }

    sub_1C1ABA6B4(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1C1B95268();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for AdResponseBlock(0);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1C1B95278();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C1B958D8();
  __break(1u);
}

uint64_t sub_1C1ABA6B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C1AC1F08(&qword_1EBF09B30, &qword_1C1BA4348);
  result = sub_1C1B95428();
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1C1B95268();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

id APContext.init(_:)(uint64_t *a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v46 - v4;
  v6 = sub_1C1B945F8();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR___APPCBaseContext_adjacent);
  v50 = MEMORY[0x1E69E7CC0];
  v48 = v5;
  if (v10 >> 62)
  {
LABEL_32:
    v11 = sub_1C1B953A8();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = a1;

  v13 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  while (v11 != v13)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      a1 = MEMORY[0x1C6907490](v13, v10);
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      a1 = *(v10 + 8 * v13 + 32);
      swift_unknownObjectRetain();
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    swift_getObjectType();
    v15 = sub_1C1B59844();
    v16 = swift_unknownObjectRelease();
    ++v13;
    if (v15)
    {
      a1 = &v50;
      MEMORY[0x1C6906EA0](v16);
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C1B94F08();
      }

      sub_1C1B94F48();
      v49 = v50;
      v13 = v14;
    }
  }

  v18 = *(v12 + OBJC_IVAR___APPCBaseContext_maxSize);
  v19 = *(v12 + OBJC_IVAR___APPCBaseContext_maxSize + 8);
  v20 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v21 = v46;
  v22 = v12 + v20;
  v23 = v47;
  (*(v46 + 16))(v9, v22, v47);
  v24 = sub_1C1B945B8();
  (*(v21 + 8))(v9, v23);
  v25 = (v12 + OBJC_IVAR___APPCBaseContext_requestedAd);
  swift_beginAccess();
  if (v25[1])
  {
    v26 = *v25;

    v27 = sub_1C1B94D78();
  }

  else
  {
    v27 = 0;
  }

  v28 = v48;
  v29 = *(v12 + OBJC_IVAR___APPCBaseContext_current);
  swift_unknownObjectRetain();

  if (v29)
  {
    swift_getObjectType();
    v30 = sub_1C1B59844();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0;
  }

  sub_1C1ABAE44();
  v31 = sub_1C1B94EB8();

  v32 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v33 = *(v12 + v32);
  if (v33)
  {
    v34 = v33;
    v35 = sub_1C1AB7364();
LABEL_25:

    sub_1C1ABAE90(v35);

    sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
    v37 = sub_1C1B94CA8();

    goto LABEL_26;
  }

  v36 = *(v12 + OBJC_IVAR___APPCContext_appStoreContext);
  if (v36)
  {
    v34 = v36;
    v35 = sub_1C1AD6D7C();
    goto LABEL_25;
  }

  v37 = 0;
LABEL_26:
  v38 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v24 maxSize:v27 requestedAdIdentifier:v30 currentContent:v31 adjacentContent:v37 supplementalContext:{v18, v19}];

  v39 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  sub_1C1ABB0C4(v12 + v39, v28);
  v40 = sub_1C1B94588();
  v41 = *(v40 - 8);
  v42 = (*(v41 + 48))(v28, 1, v40);
  v43 = v38;
  v44 = 0;
  if (v42 != 1)
  {
    v44 = sub_1C1B94538();
    (*(v41 + 8))(v28, v40);
  }

  [v43 setPrefetchTimestamp_];

  return v43;
}

unint64_t sub_1C1ABAE44()
{
  result = qword_1EDE6CA08;
  if (!qword_1EDE6CA08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE6CA08);
  }

  return result;
}

unint64_t sub_1C1ABAE90(uint64_t a1)
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
        v25 = *(*(a1 + 56) + 8 * v16);

        swift_unknownObjectRetain();
        sub_1C1AC1F08(&qword_1EBF08210, &qword_1C1BA4330);
        sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
        swift_dynamicCast();
        result = sub_1C1AA7C14(v19, v18);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v19;
          v9[1] = v18;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v26;
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
          v21 = (v2[6] + 16 * result);
          *v21 = v19;
          v21[1] = v18;
          *(v2[7] + 8 * result) = v26;
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
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

uint64_t sub_1C1ABB0C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1ABB134(void *a1)
{
  v2 = v1;
  v86 = a1;
  v87 = sub_1C1B945F8();
  v3 = *(v87 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v87);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v78 - v8;
  v10 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v78 - v12;
  v14 = sub_1C1B94588();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v78 - v20;
  v22 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  sub_1C1ABB0C4(v2 + v22, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1C1ABBAF4(v13);
    LODWORD(v85) = sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v84 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C1B9AF30;
    v24 = v86;
    v25 = [v86 identifier];
    sub_1C1B945D8();

    v26 = sub_1C1B945A8();
    v28 = v27;
    v29 = *(v3 + 8);
    v30 = v87;
    v29(v9, v87);
    v31 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v32 = sub_1C1AA5E7C();
    *(v23 + 64) = v32;
    *(v23 + 32) = v26;
    *(v23 + 40) = v28;
    v33 = [v24 identifier];
    sub_1C1B945D8();

    v34 = sub_1C1B945A8();
    v36 = v35;
    v29(v7, v30);
    *(v23 + 96) = v31;
    *(v23 + 104) = v32;
    *(v23 + 72) = v34;
    *(v23 + 80) = v36;
    v37 = v84;
    sub_1C1B94BA8();
  }

  else
  {
    (*(v15 + 32))(v21, v13, v14);
    sub_1C1B94578();
    sub_1C1B94528();
    v40 = v39;
    v81 = sub_1C1B95108();
    v41 = sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v79 = "eContentDepiction>16@0:8";
    v80 = v41;
    v42 = sub_1C1B95298();
    v83 = v15;
    v43 = v42;
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v82 = v19;
    v44 = swift_allocObject();
    v78 = xmmword_1C1B9AF30;
    *(v44 + 16) = xmmword_1C1B9AF30;
    v45 = [v86 identifier];
    sub_1C1B945D8();

    v46 = sub_1C1B945A8();
    v48 = v47;
    v84 = v14;
    v49 = *(v3 + 8);
    v49(v9, v87);
    *(v44 + 56) = MEMORY[0x1E69E6158];
    v50 = sub_1C1AA5E7C();
    v85 = v21;
    v51 = v50;
    *(v44 + 64) = v50;
    v52 = MEMORY[0x1E69E63B0];
    *(v44 + 32) = v46;
    *(v44 + 40) = v48;
    v53 = MEMORY[0x1E69E6438];
    *(v44 + 96) = v52;
    *(v44 + 104) = v53;
    *(v44 + 72) = v40;
    sub_1C1B94BA8();

    v54 = sub_1C1B0C2B4(v40);
    if (v54)
    {
      v55 = v54;
      v56 = v82;
      v57 = v83;
      sub_1C1AC1F08(&qword_1EBF090B0, &unk_1C1B9F3A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1B9C9C0;
      *(inited + 32) = 0x6C61767265746E49;
      *(inited + 40) = 0xE800000000000000;
      *(inited + 48) = v55;
      strcpy((inited + 56), "IntervalType");
      *(inited + 69) = 0;
      *(inited + 70) = -5120;
      v59 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v60 = v55;
      *(inited + 72) = [v59 initWithInteger_];
      *(inited + 80) = 0x546B726F7774654ELL;
      *(inited + 88) = 0xEB00000000657079;
      *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      strcpy((inited + 104), "PlacementType");
      *(inited + 118) = -4864;
      v61 = *(v2 + OBJC_IVAR___APPCBaseContext_current);
      if (v61)
      {
        v62 = Placement.apPlacement.getter([v61 placement]);
      }

      else
      {
        v62 = 0;
      }

      *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      *(inited + 128) = 0x64656C696146;
      *(inited + 136) = 0xE600000000000000;
      sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
      *(inited + 144) = sub_1C1B95248();
      v72 = sub_1C1AD46B4(inited);
      swift_setDeallocating();
      sub_1C1AC1F08(&qword_1EBF08840, &qword_1C1B9CB40);
      swift_arrayDestroy();
      v73 = objc_opt_self();
      v74 = sub_1C1B94D78();
      sub_1C1B1A914(v72);

      sub_1C1AA576C(0, &qword_1EDE6C9D0, 0x1E69E58C0);
      v75 = sub_1C1B94CA8();

      [v73 sendEvent:v74 customPayload:v75];

      v76 = *(v57 + 8);
      v77 = v84;
      v76(v56, v84);
      return (v76)(v85, v77);
    }

    else
    {
      sub_1C1B95128();
      v63 = sub_1C1B95298();
      v64 = swift_allocObject();
      *(v64 + 16) = v78;
      v65 = v53;
      v66 = [v86 identifier];
      sub_1C1B945D8();

      v67 = sub_1C1B945A8();
      v69 = v68;
      v49(v9, v87);
      *(v64 + 56) = MEMORY[0x1E69E6158];
      *(v64 + 64) = v51;
      *(v64 + 32) = v67;
      *(v64 + 40) = v69;
      *(v64 + 96) = MEMORY[0x1E69E63B0];
      *(v64 + 104) = v65;
      *(v64 + 72) = v40;
      sub_1C1B94BA8();

      v70 = *(v83 + 8);
      v71 = v84;
      v70(v82, v84);
      return (v70)(v85, v71);
    }
  }
}

uint64_t sub_1C1ABBAF4(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1ABBCD4(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_16:
    v2 = sub_1C1B953A8();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1C6907490](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v4 = *(a1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        v6 = [v4 tapAction];
        swift_unknownObjectRelease();
        if (v6)
        {
          v7 = *&v6[OBJC_IVAR___APPCTapAction_actionType];

          if ((v7 - 4) <= 2)
          {
            return 1;
          }
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for ClientColor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClientColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1C1ABBE54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C1B94588();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1C1ABBF00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1B94588();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_1C1ABBFD8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C1ABBFE4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1C1ABC0EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___APPCAppStoreSupplementalContext_adamId);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1C1ABC174@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  swift_beginAccess();
  return sub_1C1AA7E30(v3 + v4, a2, &qword_1EBF07F50, &qword_1C1B9A590);
}

unint64_t sub_1C1ABC310@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1C1AA7514();
  *a2 = result;
  return result;
}

uint64_t sub_1C1ABC33C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1AA7EA8(v4);
}

uint64_t sub_1C1ABC368@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1C1ADC2E0();
  *a2 = result;
  return result;
}

unsigned __int8 *sub_1C1ABCD7C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1C1ADE894(&v4);
}

unsigned __int8 *sub_1C1ABCDC0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1C1ADE974(&v4);
}

uint64_t sub_1C1ABCE24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C1ABCE7C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C1ABCED0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABCF20()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABCF58()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABCF90()
{
  v1 = v0[2];

  sub_1C1AA86F8(v0 + 3);
  v2 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C1ABCFD8()
{
  v1 = v0[2];

  v2 = v0[5];

  if (v0[6])
  {
    v3 = v0[7];
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C1ABD068@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C1ABD0C4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC15PromotedContent16AdContentSession_diagnosticDelegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

__n128 sub_1C1ABD164@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCContextBuilder_maxSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1C1ABD1BC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___APPCContextBuilder_maxSize);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_1C1ABD214@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCContextBuilder_current;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C1ABD270(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_unknownObjectRetain();
  return sub_1C1AF6EF4(v4);
}

uint64_t sub_1C1ABD29C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCContextBuilder_next;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C1ABD2FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___APPCContextBuilder_requestedAd);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_1C1ABD358@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCContextBuilder_newsContext;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1C1ABD3C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABD3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C1B94588();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C1ABD4A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1B94588();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1ABD54C()
{
  v1 = sub_1C1B944A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C1ABD618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1C1ABD6E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1ABD790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1B945F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C1ABD84C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C1B945F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

id sub_1C1ABD92C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 unfilledReason];
  *a2 = result;
  return result;
}

uint64_t sub_1C1ABD974@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContentInfo_placeholder;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C1ABD9CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCPromotedContentInfo_placeholder;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C1ABDA20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABDA58@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1C1ABDAB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___APPCMediaMetricsHelper_containerType;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C1ABDB10(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR___APPCMediaMetricsHelper_containerType;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_1C1ABDBB8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABDBFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABDC34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C1ABDC8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCDiagnosticMetricsHelper_networkType;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C1ABDCE0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABDDC8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABDE00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABDE38()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABDE70()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1C1ABDEB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1C1ABDF24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  return sub_1C1AA7E30(v3 + v4, a2, &qword_1EBF07F50, &qword_1C1B9A590);
}

uint64_t sub_1C1ABDF98()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABE788()
{
  MEMORY[0x1C6908300](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABE7C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABE800@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___APPCBaseContext_requestedAd);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1C1ABE85C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABE894()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABE904@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___APPCMetric_contentId);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1C1ABE960@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCMetric_properties;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C1ABEA04()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1ABEA3C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1ABEA74()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABEAAC()
{
  v1 = sub_1C1AC1F08(&qword_1EBF09478, &unk_1C1BA17E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C1ABEB54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1ABEB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AdContent();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C1ABEC58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AdContent();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C1ABED10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABED48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABED88()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C1ABEE08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1C1B4D574();
  *a2 = result;
  return result;
}

uint64_t sub_1C1ABEE34(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 112);
  *(*a2 + 112) = *a1;
}

uint64_t sub_1C1ABEE78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1C1B4D6BC();
  *a2 = result;
  return result;
}

uint64_t sub_1C1ABEEA4(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 120);
  *(*a2 + 120) = *a1;
}

uint64_t sub_1C1ABEEE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_1C1ABEF30(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 128) = v2;
  return result;
}

uint64_t sub_1C1ABEF74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 129);
  return result;
}

uint64_t sub_1C1ABEFBC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 129) = v2;
  return result;
}

uint64_t sub_1C1ABF000@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 130);
  return result;
}

uint64_t sub_1C1ABF048(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 130) = v2;
  return result;
}

uint64_t sub_1C1ABF098()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABF0D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABF108()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C1ABF148()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1ABF1B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABF214()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABF24C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABF290@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C1ABF2EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C1ABF434()
{
  MEMORY[0x1C6908300](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABF46C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C1ABF594@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C1ABF5F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C1ABF72C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C1ABF784(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C1ABF830@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C1ABF9E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

double sub_1C1ABFB28@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1C1ABFB80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C1ABFCA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___APPCPromotedContent_discardReason;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C1ABFD00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContent_appImpressionTask;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C1ABFD60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContent_appImpression;
  swift_beginAccess();
  return sub_1C1AA7E30(v3 + v4, a2, &qword_1EBF098F0, &qword_1C1B9D838);
}

uint64_t sub_1C1ABFDEC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABFE24()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABFE5C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABFEA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1ABFED8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABFF18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1ABFF50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C1ABFFAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C1AC0060@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_primitiveCreator;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C1AC0164@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionStartDate;
  swift_beginAccess();
  return sub_1C1ABB0C4(v3 + v4, a2);
}

id sub_1C1AC01F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1C1AC0278()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1AC04A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1C1AC0530(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C1AC0580(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C1AC0598(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for CodableAPSize(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C1AC05FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1AC061C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_1C1AC0694(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *sub_1C1AC06E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_1C1AC06F0(void *a1)
{
  v1 = a1;
  if ([a1 actionType] != 2)
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v11 = sub_1C1B94BE8();
    sub_1C1AB4454(v11, qword_1EDE6D058);
    v1 = v1;
    v12 = sub_1C1B94BC8();
    v13 = sub_1C1B95128();
    if (!os_log_type_enabled(v12, v13))
    {

LABEL_16:
      return 0;
    }

    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = [v1 actionType];

    v15 = "Attempting to initialize a StoreTapAction with an invalid tap action type %ld.";
    v16 = v13;
    v17 = v12;
    v18 = v14;
    v19 = 12;
    goto LABEL_14;
  }

  v2 = [v1 adamIdentifier];
  if (!v2)
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C1B94BE8();
    sub_1C1AB4454(v20, qword_1EDE6D058);
    v12 = sub_1C1B94BC8();
    v21 = sub_1C1B95128();
    if (!os_log_type_enabled(v12, v21))
    {
      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Attempting to initialize a StoreTapAction with an invalid tap action adam identifier.";
    v16 = v21;
    v17 = v12;
    v18 = v14;
    v19 = 2;
LABEL_14:
    _os_log_impl(&dword_1C1AA2000, v17, v16, v15, v18, v19);
    MEMORY[0x1C6908230](v14, -1, -1);
LABEL_15:

    goto LABEL_16;
  }

  v3 = v2;
  v4 = [v1 iTunesMetadata];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1C1B94CB8();

    v7 = objc_allocWithZone(type metadata accessor for StoreTapAction());
    *&v7[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_adamIdentifier] = v3;
    *&v7[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_iTunesMetadata] = v6;
    *&v7[OBJC_IVAR___APPCTapAction_actionType] = 2;
    *&v7[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
    v26.receiver = v7;
    v26.super_class = type metadata accessor for TapAction();
    v8 = v3;
    v9 = objc_msgSendSuper2(&v26, sel_init);

    return v9;
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v22 = sub_1C1B94BE8();
  sub_1C1AB4454(v22, qword_1EDE6D058);
  v23 = sub_1C1B94BC8();
  v24 = sub_1C1B95128();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1C1AA2000, v23, v24, "Attempting to initialize a StoreTapAction with an invalid tap action iTunes metadata.", v25, 2u);
    MEMORY[0x1C6908230](v25, -1, -1);
  }

  return 0;
}

uint64_t AdContent.contentIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AdContent.contentRetrievedTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdContent() + 28);
  v4 = sub_1C1B94588();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AdContent()
{
  result = qword_1EDE6B708;
  if (!qword_1EDE6B708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AdContent.expirationTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdContent() + 32);
  v4 = sub_1C1B94588();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AdContent.init(context:contentIdentifier:placement:contentRetrievedTimestamp:expirationTimestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v10 = type metadata accessor for AdContent();
  v11 = *(v10 + 28);
  v12 = sub_1C1B94588();
  v15 = *(*(v12 - 8) + 32);
  (v15)((v12 - 8), &a7[v11], a5, v12);
  v13 = &a7[*(v10 + 32)];

  return v15(v13, a6, v12);
}

uint64_t AdContent.hash(into:)()
{
  v1 = v0;
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v3 + 16))(v6, v7 + v8, v2);
  sub_1C1AC2154(&qword_1EDE6B838, MEMORY[0x1E69695A8]);
  sub_1C1B94D38();
  (*(v3 + 8))(v6, v2);
  v9 = v1[1];
  v10 = v1[2];
  sub_1C1B94DE8();
  MEMORY[0x1C6907960](v1[3]);
  v11 = type metadata accessor for AdContent();
  v12 = *(v11 + 28);
  sub_1C1B94588();
  sub_1C1AC2154(&unk_1EDE6B840, MEMORY[0x1E6969530]);
  sub_1C1B94D38();
  v13 = v1 + *(v11 + 32);
  return sub_1C1B94D38();
}

uint64_t static AdContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1C1B95888();
  }
}

uint64_t sub_1C1AC0EFC()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

uint64_t sub_1C1AC0F44()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

unint64_t sub_1C1AC0F88()
{
  v1 = *v0;
  v2 = 0x747865746E6F63;
  v3 = 0x6E656D6563616C70;
  v4 = 0xD000000000000013;
  if (v1 == 3)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1C1AC1034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1AC24BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1AC1074(uint64_t a1)
{
  v2 = sub_1C1AC1F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC10B0(uint64_t a1)
{
  v2 = sub_1C1AC1F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AdContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF079C0, &qword_1C1B98A28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AC1F50();
  sub_1C1B95A18();
  v19 = *v3;
  v18 = 0;
  type metadata accessor for Context();
  sub_1C1AC2154(&unk_1EDE6A7C8, type metadata accessor for Context);
  sub_1C1B95808();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v19) = 1;
    sub_1C1B957A8();
    v19 = v3[3];
    v18 = 2;
    sub_1C1AC1FA4();
    sub_1C1B95808();
    v14 = type metadata accessor for AdContent();
    v15 = *(v14 + 28);
    LOBYTE(v19) = 3;
    sub_1C1B94588();
    sub_1C1AC2154(&unk_1EDE6C380, MEMORY[0x1E6969530]);
    sub_1C1B95808();
    v16 = *(v14 + 32);
    LOBYTE(v19) = 4;
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AdContent.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C1B95958();
  v7 = *v1;
  v8 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v3 + 16))(v6, v7 + v8, v2);
  sub_1C1AC2154(&qword_1EDE6B838, MEMORY[0x1E69695A8]);
  sub_1C1B94D38();
  (*(v3 + 8))(v6, v2);
  v9 = v1[1];
  v10 = v1[2];
  sub_1C1B94DE8();
  MEMORY[0x1C6907960](v1[3]);
  v11 = type metadata accessor for AdContent();
  v12 = *(v11 + 28);
  sub_1C1B94588();
  sub_1C1AC2154(&unk_1EDE6B840, MEMORY[0x1E6969530]);
  sub_1C1B94D38();
  v13 = v1 + *(v11 + 32);
  sub_1C1B94D38();
  return sub_1C1B959A8();
}

uint64_t AdContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1C1B94588();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v34 = sub_1C1AC1F08(&qword_1EBF079C8, &qword_1C1B98A30);
  v32 = *(v34 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AdContent();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v18 = a1[4];
  v36 = a1;
  sub_1C1AAABE0(a1, v17);
  sub_1C1AC1F50();
  v33 = v12;
  v19 = v35;
  sub_1C1B95A08();
  if (v19)
  {
    return sub_1C1AA86F8(v36);
  }

  v35 = v9;
  v29 = v7;
  v20 = v32;
  type metadata accessor for Context();
  v37 = 0;
  sub_1C1AC2154(&qword_1EDE6A7C0, type metadata accessor for Context);
  v21 = v33;
  sub_1C1B956F8();
  *v16 = v38;
  LOBYTE(v38) = 1;
  v16[1] = sub_1C1B95698();
  v16[2] = v22;
  v37 = 2;
  sub_1C1AC1FF8();
  sub_1C1B956F8();
  v16[3] = v38;
  LOBYTE(v38) = 3;
  v23 = sub_1C1AC2154(&unk_1EDE6C370, MEMORY[0x1E6969530]);
  v24 = v35;
  v28 = v23;
  sub_1C1B956F8();
  v25 = v16 + *(v13 + 28);
  v35 = *(v31 + 32);
  v35(v25, v24, v3);
  LOBYTE(v38) = 4;
  v26 = v29;
  sub_1C1B956F8();
  (*(v20 + 8))(v21, v34);
  v35(v16 + *(v13 + 32), v26, v3);
  sub_1C1AC204C(v16, v30);
  sub_1C1AA86F8(v36);
  return sub_1C1AC20B0(v16);
}

uint64_t sub_1C1AC1AB4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1C1B95888();
  }
}

uint64_t sub_1C1AC1AE8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1C1B945F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v4;
  v11 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v6 + 16))(v9, v10 + v11, v5);
  sub_1C1AC2154(&qword_1EDE6B838, MEMORY[0x1E69695A8]);
  sub_1C1B94D38();
  (*(v6 + 8))(v9, v5);
  v12 = v4[1];
  v13 = v4[2];
  sub_1C1B94DE8();
  MEMORY[0x1C6907960](v4[3]);
  v14 = *(a2 + 28);
  sub_1C1B94588();
  sub_1C1AC2154(&unk_1EDE6B840, MEMORY[0x1E6969530]);
  sub_1C1B94D38();
  v15 = v4 + *(a2 + 32);
  return sub_1C1B94D38();
}

uint64_t sub_1C1AC1CD4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1C1B945F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C1B95958();
  v10 = *v2;
  v11 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v6 + 16))(v9, v10 + v11, v5);
  sub_1C1AC2154(&qword_1EDE6B838, MEMORY[0x1E69695A8]);
  sub_1C1B94D38();
  (*(v6 + 8))(v9, v5);
  v12 = v4[1];
  v13 = v4[2];
  sub_1C1B94DE8();
  MEMORY[0x1C6907960](v4[3]);
  v14 = *(a2 + 28);
  sub_1C1B94588();
  sub_1C1AC2154(&unk_1EDE6B840, MEMORY[0x1E6969530]);
  sub_1C1B94D38();
  v15 = v4 + *(a2 + 32);
  sub_1C1B94D38();
  return sub_1C1B959A8();
}

uint64_t sub_1C1AC1F08(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C1AC1F50()
{
  result = qword_1EDE6B740[0];
  if (!qword_1EDE6B740[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE6B740);
  }

  return result;
}

unint64_t sub_1C1AC1FA4()
{
  result = qword_1EDE6C2D0;
  if (!qword_1EDE6C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C2D0);
  }

  return result;
}

unint64_t sub_1C1AC1FF8()
{
  result = qword_1EDE6C2B0;
  if (!qword_1EDE6C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C2B0);
  }

  return result;
}

uint64_t sub_1C1AC204C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1AC20B0(uint64_t a1)
{
  v2 = type metadata accessor for AdContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1AC2154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1AC21C4()
{
  result = type metadata accessor for Context();
  if (v1 <= 0x3F)
  {
    result = sub_1C1B94588();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1AC23B8()
{
  result = qword_1EBF079D0;
  if (!qword_1EBF079D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF079D0);
  }

  return result;
}

unint64_t sub_1C1AC2410()
{
  result = qword_1EDE6B730;
  if (!qword_1EDE6B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B730);
  }

  return result;
}

unint64_t sub_1C1AC2468()
{
  result = qword_1EDE6B738;
  if (!qword_1EDE6B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B738);
  }

  return result;
}

uint64_t sub_1C1AC24BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C1BA6EA0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C1BA6EC0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C1BA6EE0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1C1B95888();

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

uint64_t sub_1C1AC26A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1AC378C();
  *a2 = result;
  return result;
}

void sub_1C1AC26D4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726564;
  v4 = 0x6C6F686563616C70;
  v5 = 0xEB00000000746E65;
  v6 = 0x6D6E6F7269766E65;
  if (v2 != 6)
  {
    v6 = 0x6973736572706D69;
    v5 = 0xEC00000064496E6FLL;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7265766965636572;
  if (v2 != 4)
  {
    v8 = 0x68636E617262;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001C1BA4CF0;
  }

  v9 = 0x80000001C1BA4CB0;
  v10 = 0xD000000000000019;
  if (*v1)
  {
    v10 = 0xD000000000000011;
    v9 = 0x80000001C1BA4CD0;
  }

  if (*v1 <= 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1C1AC27F0()
{
  v1 = *v0;
  v2 = 0x6C6F686563616C70;
  v3 = 0x6D6E6F7269766E65;
  if (v1 != 6)
  {
    v3 = 0x6973736572706D69;
  }

  v4 = 0x7265766965636572;
  if (v1 != 4)
  {
    v4 = 0x68636E617262;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000011;
  }

  v5 = 0xD000000000000019;
  if (*v0)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1AC2908@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1AC378C();
  *a1 = result;
  return result;
}

uint64_t sub_1C1AC293C(uint64_t a1)
{
  v2 = sub_1C1AC33B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC2978(uint64_t a1)
{
  v2 = sub_1C1AC33B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1C1AC29B4(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&unk_1EBF07A90, &qword_1C1B98CE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AC33B0();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for PrimitiveCreator();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v29) = 0;
    v11 = sub_1C1B95698();
    v13 = &v1[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
    *v13 = v11;
    v13[1] = v14;
    LOBYTE(v29) = 1;
    v15 = sub_1C1B95698();
    v16 = &v1[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
    *v16 = v15;
    v16[1] = v17;
    LOBYTE(v29) = 2;
    v18 = sub_1C1B95698();
    v19 = &v1[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
    *v19 = v18;
    v19[1] = v20;
    LOBYTE(v29) = 7;
    v21 = sub_1C1B95638();
    v22 = &v1[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
    *v22 = v21;
    v22[1] = v23;
    LOBYTE(v29) = 3;
    v1[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = sub_1C1B956A8() & 1;
    [objc_opt_self() daemonDeliveryClass];
    swift_getObjCClassMetadata();
    v24 = [swift_getObjCClassFromMetadata() daemonDelivery];
    *&v1[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v24;
    sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
    v28 = 5;
    sub_1C1AC34C8(&qword_1EDE6BB98);
    sub_1C1B956F8();
    *&v1[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = v29;
    v28 = 6;
    sub_1C1B956F8();
    *&v1[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = v29;
    if (qword_1EDE6C538 != -1)
    {
      swift_once();
    }

    sub_1C1AAD2FC(qword_1EDE6C540, &v1[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
    v25 = type metadata accessor for PrimitiveCreator();
    v27.receiver = v1;
    v27.super_class = v25;
    v3 = objc_msgSendSuper2(&v27, sel_init);
    (*(v6 + 8))(v9, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

uint64_t sub_1C1AC2EA8(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF07AB0, &qword_1C1B98CF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AC33B0();
  sub_1C1B95A18();
  v11 = *(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier);
  v12 = *(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier + 8);
  LOBYTE(v21) = 0;
  sub_1C1B957A8();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier);
    v14 = *(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier + 8);
    LOBYTE(v21) = 1;
    sub_1C1B957A8();
    v15 = *(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier);
    v16 = *(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier + 8);
    LOBYTE(v21) = 2;
    sub_1C1B957A8();
    v21 = *(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId);
    v20 = 7;
    sub_1C1AC1F08(&qword_1EBF07AB8, &qword_1C1B98D00);
    sub_1C1AC344C();
    sub_1C1B95808();
    v17 = *(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder);
    LOBYTE(v21) = 3;
    sub_1C1B957B8();
    if (*(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch))
    {
      *&v21 = *(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch);
      v20 = 5;
      sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
      sub_1C1AC34C8(&unk_1EDE6BBA0);
      sub_1C1B95808();
    }

    if (*(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment))
    {
      *&v21 = *(v3 + OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment);
      v20 = 6;
      sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
      sub_1C1AC34C8(&unk_1EDE6BBA0);
      sub_1C1B95808();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

id sub_1C1AC3248()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrimitiveCreator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C1AC3338@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for PrimitiveCreator());
  result = sub_1C1AC29B4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C1AC33B0()
{
  result = qword_1EDE6C178[0];
  if (!qword_1EDE6C178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE6C178);
  }

  return result;
}

uint64_t sub_1C1AC3404(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C1AC344C()
{
  result = qword_1EDE6BBC0;
  if (!qword_1EDE6BBC0)
  {
    sub_1C1AC3404(&qword_1EBF07AB8, &qword_1C1B98D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BBC0);
  }

  return result;
}

uint64_t sub_1C1AC34C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&unk_1EBF07AA0, &qword_1C1B98CF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrimitiveCreator.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrimitiveCreator.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1AC3688()
{
  result = qword_1EBF07AC0;
  if (!qword_1EBF07AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07AC0);
  }

  return result;
}

unint64_t sub_1C1AC36E0()
{
  result = qword_1EDE6C158;
  if (!qword_1EDE6C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C158);
  }

  return result;
}

unint64_t sub_1C1AC3738()
{
  result = qword_1EDE6C160[0];
  if (!qword_1EDE6C160[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE6C160);
  }

  return result;
}

uint64_t sub_1C1AC378C()
{
  v0 = sub_1C1B955F8();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C1AC37D8(void *a1)
{
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v73 - v8;
  v10 = sub_1C1B944A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v82 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v73 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v73 - v18;
  v20 = [a1 videoURL];
  if (!v20)
  {
    sub_1C1B95108();
    sub_1C1AC53E4();
    v27 = sub_1C1B95298();
    sub_1C1B94BA8();

    return 0;
  }

  v21 = v20;
  sub_1C1B94488();

  v22 = v10;
  v23 = *(v11 + 32);
  v81 = v19;
  v23(v19, v17, v10);
  v24 = a1;
  v80 = sub_1C1AFB6A4(v24);
  v25 = [v24 tapAction];
  if (v25)
  {
    v26 = v25;
    v79 = _s15PromotedContent9TapActionC04makecD04withACSo05APTapD0C_tFZ_0(v25);
  }

  else
  {
    v79 = 0;
  }

  v29 = [v24 identifier];
  sub_1C1B945D8();

  v30 = [v24 desiredPosition];
  if (v30 == 1101)
  {
    v31 = 1101;
  }

  else
  {
    v31 = 0;
  }

  if (v30 == 1102)
  {
    v32 = 1102;
  }

  else
  {
    v32 = v31;
  }

  v33 = v11;
  v77 = *(v11 + 16);
  v78 = v32;
  v77(v82, v81, v22);
  [v24 duration];
  v35 = v34;
  [v24 bitrate];
  v37 = v36;
  result = [v24 duration];
  v40 = v37 * v39;
  if (COERCE__INT64(fabs(v37 * v39)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v40 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v75 = v7;
  v76 = v9;
  [v24 skipThreshold];
  v42 = v41;
  v43 = [v24 skipEnabled];
  v44 = [v24 unbranded];
  [v24 bitrate];
  v46 = v45;
  v47 = [v24 connectionType];
  result = [v24 signalStrength];
  if ((result & 0x8000000000000000) == 0)
  {
    v48 = result;
    v73 = v47;
    v74 = v22;
    v49 = v44;
    v50 = v43;
    v51 = v2;
    v52 = v40;
    [v24 size];
    v54 = v53;
    v56 = v55;
    v57 = objc_allocWithZone(type metadata accessor for VideoRepresentation());
    (*(v11 + 56))(&v57[OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL], 1, 1, v22);
    *&v57[OBJC_IVAR___APPCVideoRepresentation_duration] = v35;
    *&v57[OBJC_IVAR___APPCVideoRepresentation_fileSize] = v52;
    v77(&v57[OBJC_IVAR___APPCVideoRepresentation_originalVideoURL], v82, v22);
    *&v57[OBJC_IVAR___APPCVideoRepresentation_skipThreshold] = v42;
    v57[OBJC_IVAR___APPCVideoRepresentation_skipEnabled] = v50;
    v57[OBJC_IVAR___APPCVideoRepresentation_unbranded] = v49;
    *&v57[OBJC_IVAR___APPCVideoRepresentation_bitrate] = v46;
    *&v57[OBJC_IVAR___APPCVideoRepresentation_connectionType] = v73;
    v58 = &v57[OBJC_IVAR___APPCVideoRepresentation_videoSize];
    *v58 = v54;
    v58[1] = v56;
    *&v57[OBJC_IVAR___APPCVideoRepresentation_signalStrength] = v48;
    v59 = v3[2];
    v60 = v75;
    v61 = v76;
    v59(v75, v76, v51);
    v62 = v80;
    v63 = v80;
    v64 = sub_1C1B945A8();
    v65 = &v57[OBJC_IVAR___APPCContentRepresentation_identifier];
    *v65 = v64;
    v65[1] = v66;
    v59(&v57[OBJC_IVAR___APPCContentRepresentation_id], v60, v51);
    *&v57[OBJC_IVAR___APPCContentRepresentation_adType] = 3;
    v67 = v79;
    *&v57[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v78;
    *&v57[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
    *&v57[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
    v68 = &v57[OBJC_IVAR___APPCContentRepresentation_adSize];
    *v68 = 0;
    v68[1] = 0;
    *&v57[OBJC_IVAR___APPCContentRepresentation_tapAction] = v67;
    *&v57[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v62;
    v69 = type metadata accessor for ContentRepresentation();
    v83.receiver = v57;
    v83.super_class = v69;
    v28 = objc_msgSendSuper2(&v83, sel_init);

    v70 = v3[1];
    v70(v60, v51);
    v71 = *(v33 + 8);
    v72 = v74;
    v71(v82, v74);
    v70(v61, v51);
    v71(v81, v72);
    return v28;
  }

LABEL_21:
  __break(1u);
  return result;
}

id sub_1C1AC3EA4(void *a1)
{
  v2 = sub_1C1B945F8();
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = *(v67 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v63 - v7;
  v9 = [a1 articleID];
  if (!v9 || (v9, (v10 = [a1 campaignData]) == 0))
  {
    sub_1C1B95108();
    sub_1C1AC53E4();
    v10 = sub_1C1B95298();
    sub_1C1B94BA8();
  }

  [a1 size];
  v12 = v11;
  [a1 size];
  v14 = v13;
  v15 = a1;
  v65 = sub_1C1AFB6A4(v15);
  v16 = [v15 identifier];
  v66 = v8;
  sub_1C1B945D8();

  v17 = [v15 desiredPosition];
  v64 = sub_1C1B5B708([v15 privacyMarkerPosition]);
  v18 = [v15 articleID];
  if (v18)
  {
    v19 = v18;
    v63 = sub_1C1B94D88();
    v21 = v20;
  }

  else
  {
    v63 = 0;
    v21 = 0;
  }

  v22 = [v15 articleTitle];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1C1B94D88();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = [v15 advertiserName];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1C1B94D88();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [v15 campaignData];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1C1B94D88();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = objc_allocWithZone(type metadata accessor for NativeRepresentation());
  v38 = v37;
  v39 = v63;
  if (!v21)
  {
    v39 = 0;
  }

  v40 = 0xE000000000000000;
  if (v21)
  {
    v41 = v21;
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  v42 = &v37[OBJC_IVAR___APPCNativeRepresentation_articleID];
  *v42 = v39;
  *(v42 + 1) = v41;
  v43 = &v37[OBJC_IVAR___APPCNativeRepresentation_articleTitle];
  *v43 = v24;
  v43[1] = v26;
  v44 = &v37[OBJC_IVAR___APPCNativeRepresentation_advertiserName];
  *v44 = v29;
  v44[1] = v31;
  if (v36)
  {
    v45 = v34;
  }

  else
  {
    v45 = 0;
  }

  if (v36)
  {
    v40 = v36;
  }

  if (v17 == 1101)
  {
    v46 = 1101;
  }

  else
  {
    v46 = 0;
  }

  if (v17 == 1102)
  {
    v47 = 1102;
  }

  else
  {
    v47 = v46;
  }

  v48 = &v37[OBJC_IVAR___APPCNativeRepresentation_campaignData];
  *v48 = v45;
  v48[1] = v40;
  v50 = v66;
  v49 = v67;
  v51 = *(v67 + 16);
  v52 = v68;
  v51(v6, v66, v68);
  v53 = v6;
  v54 = v65;
  v63 = v65;
  v55 = sub_1C1B945A8();
  v56 = &v38[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v56 = v55;
  v56[1] = v57;
  v51(&v38[OBJC_IVAR___APPCContentRepresentation_id], v53, v52);
  *&v38[OBJC_IVAR___APPCContentRepresentation_adType] = 4;
  *&v38[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v47;
  *&v38[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = v64;
  *&v38[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v58 = &v38[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v58 = v12;
  *(v58 + 1) = v14;
  *&v38[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v38[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v54;
  v59 = type metadata accessor for ContentRepresentation();
  v69.receiver = v38;
  v69.super_class = v59;
  v60 = objc_msgSendSuper2(&v69, sel_init);

  v61 = *(v49 + 8);
  v61(v53, v52);
  v61(v50, v52);
  return v60;
}

id sub_1C1AC439C(void *a1)
{
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v121 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v95 - v7;
  v9 = [a1 adamID];
  v10 = sub_1C1B94D88();
  v120 = v11;

  v12 = [a1 metadata];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1C1B94D88();
    v118 = v15;
    v119 = v14;
  }

  else
  {
    v118 = 0;
    v119 = 0;
  }

  v16 = [a1 clientRequestID];
  v17 = sub_1C1B94D88();
  v116 = v18;
  v117 = v17;

  v19 = [a1 journeyRelayAdGroupId];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1C1B94D88();
    v114 = v22;
    v115 = v21;
  }

  else
  {
    v114 = 0;
    v115 = 0;
  }

  v23 = [a1 journeyRelayCampaignId];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1C1B94D88();
    v112 = v26;
    v113 = v25;
  }

  else
  {
    v112 = 0;
    v113 = 0;
  }

  v111 = [a1 parentAppCheckEnabled];
  v27 = [a1 installAttribution];
  if (v27)
  {
    v28 = v27;
    v110 = sub_1C1B94CB8();
  }

  else
  {
    v110 = 0;
  }

  v109 = [a1 rank];
  v108 = [a1 timeToDisplay];
  v29 = [a1 iAdID];
  v30 = v8;
  sub_1C1B945D8();

  v31 = [a1 storeFront];
  v32 = sub_1C1B94D88();
  v106 = v33;
  v107 = v32;

  v34 = [a1 storeFrontLocale];
  v105 = sub_1C1B94D88();
  v104 = v35;

  [a1 size];
  v37 = v36;
  [a1 size];
  v39 = v38;
  v103 = [a1 odmlSuccess];
  v40 = [a1 treatmentId];
  if (v40)
  {
    v41 = v40;
    v102 = sub_1C1B94D88();
    v101 = v42;
  }

  else
  {
    v102 = 0;
    v101 = 0;
  }

  v43 = [a1 deploymentId];
  v100 = sub_1C1B94D88();
  v99 = v44;

  v45 = [a1 experimentId];
  if (v45)
  {
    v46 = v45;
    v98 = sub_1C1B94D88();
    v97 = v47;
  }

  else
  {
    v98 = 0;
    v97 = 0;
  }

  v48 = [a1 positionInformation];
  if (v48)
  {
    v49 = v48;
    v96 = sub_1C1B94CB8();
  }

  else
  {
    v96 = 0;
  }

  v50 = [a1 slotNumber];
  v51 = [a1 cppIds];
  if (v51)
  {
    v52 = v51;
    v53 = sub_1C1B94EC8();
  }

  else
  {
    v53 = 0;
  }

  v54 = [a1 appMetadata];
  if (v54)
  {
    v55 = v54;
    v56 = sub_1C1B94CB8();
  }

  else
  {
    v56 = 0;
  }

  v57 = [a1 creativeDetails];
  if (v57)
  {
    v58 = v57;
    sub_1C1AC1F08(&qword_1EBF07AD0, &qword_1C1B98EF0);
    v59 = sub_1C1B94EC8();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(type metadata accessor for SearchLandingPageRepresentation());
  v61 = &v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_adamId];
  v63 = v119;
  v62 = v120;
  *v61 = v10;
  v61[1] = v62;
  v64 = &v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_metadata];
  v65 = v117;
  v66 = v118;
  *v64 = v63;
  v64[1] = v66;
  v67 = &v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_clientRequestId];
  *v67 = v65;
  v68 = v115;
  v67[1] = v116;
  v69 = &v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayAdGroupId];
  v70 = v113;
  v71 = v114;
  *v69 = v68;
  v69[1] = v71;
  v72 = &v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayCampaignId];
  *v72 = v70;
  v72[1] = v112;
  v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_parentAppCheckEnabled] = v111;
  v73 = v109;
  *&v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_installAttribution] = v110;
  *&v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_rank] = v73;
  *&v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_timeToDisplay] = v108;
  v74 = v3[2];
  v74(&v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_iAdId], v30, v2);
  v75 = &v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFront];
  v76 = v106;
  *v75 = v107;
  v75[1] = v76;
  v77 = &v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFrontLocale];
  v78 = v104;
  *v77 = v105;
  v77[1] = v78;
  v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_odmlSuccess] = v103;
  v79 = &v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_treatmentId];
  v80 = v101;
  *v79 = v102;
  v79[1] = v80;
  v81 = &v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_deploymentId];
  v82 = v99;
  *v81 = v100;
  v81[1] = v82;
  v83 = &v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_experimentId];
  v84 = v97;
  *v83 = v98;
  v83[1] = v84;
  *&v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_positionInformation] = v96;
  v85 = &v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_slotNumber];
  *v85 = v50;
  v85[8] = 0;
  *&v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_cppIds] = v53;
  *&v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_appMetadata] = v56;
  *&v60[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_creativeDetails] = v59;
  v86 = v121;
  sub_1C1B945E8();
  v87 = sub_1C1B945A8();
  v88 = &v60[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v88 = v87;
  v88[1] = v89;
  v74(&v60[OBJC_IVAR___APPCContentRepresentation_id], v86, v2);
  *&v60[OBJC_IVAR___APPCContentRepresentation_adType] = 6;
  *&v60[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = 0;
  *&v60[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
  *&v60[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v90 = &v60[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v90 = v37;
  v90[1] = v39;
  *&v60[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v60[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = 0;
  v91 = type metadata accessor for ContentRepresentation();
  v122.receiver = v60;
  v122.super_class = v91;
  v92 = objc_msgSendSuper2(&v122, sel_init);
  v93 = v3[1];
  v93(v86, v2);
  v93(v30, v2);
  return v92;
}

void sub_1C1AC4BFC(void *a1)
{
  v2 = sub_1C1B945F8();
  v87 = *(v2 - 8);
  v3 = *(v87 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v88 = &v79 - v7;
  v8 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v79 - v10;
  v12 = [a1 adTag];
  if (v12)
  {
  }

  else
  {
    sub_1C1B95108();
    sub_1C1AC53E4();
    v13 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C1B98E60;
    v15 = [a1 placementType];
    v16 = 0;
    v17 = v15 - 1;
    if (v17 <= 6)
    {
      v16 = qword_1C1B98E70[v17];
    }

    v18 = PlacementType.stringValue.getter(v16);
    v20 = v19;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1C1AA5E7C();
    *(v14 + 32) = v18;
    *(v14 + 40) = v20;
    sub_1C1B94BA8();
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v21 = a1;

    sub_1C1B04B00(v21);
  }

  else
  {
    v22 = [a1 videoURL];
    if (v22)
    {
      v23 = v22;
      sub_1C1B94488();

      v24 = sub_1C1B944A8();
      (*(*(v24 - 8) + 56))(v11, 0, 1, v24);
    }

    else
    {
      v25 = sub_1C1B944A8();
      (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
    }

    [a1 duration];
    v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [a1 bitrate];
    v29 = v28;
    v30 = [a1 connectionType];
    v31 = [a1 signalStrength];
    if ((v31 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v32 = v31;
      v33 = type metadata accessor for OutstreamVideoInfo();
      v34 = objc_allocWithZone(v33);
      sub_1C1AC5430(v11, &v34[OBJC_IVAR___APPCOutstreamVideoInfo_videoAssetURL]);
      *&v34[OBJC_IVAR___APPCOutstreamVideoInfo_videoDuration] = v27;
      *&v34[OBJC_IVAR___APPCOutstreamVideoInfo_bitrate] = v29;
      *&v34[OBJC_IVAR___APPCOutstreamVideoInfo_connectionType] = v30;
      *&v34[OBJC_IVAR___APPCOutstreamVideoInfo_signalStrength] = v32;
      v90.receiver = v34;
      v90.super_class = v33;
      v35 = objc_msgSendSuper2(&v90, sel_init);
      sub_1C1AC54A0(v11);
      v36 = a1;
      v86 = sub_1C1AFB6A4(v36);
      v37 = [v36 tapAction];
      if (v37)
      {
        v38 = v37;
        v85 = _s15PromotedContent9TapActionC04makecD04withACSo05APTapD0C_tFZ_0(v37);
      }

      else
      {
        v85 = 0;
      }

      v39 = [v36 identifier];
      sub_1C1B945D8();

      v40 = [v36 placementType];
      if ((v40 - 1) > 6)
      {
        v84 = 0;
      }

      else
      {
        v84 = qword_1C1B98E70[(v40 - 1)];
      }

      v41 = [v36 desiredPosition];
      if (v41 == 1101)
      {
        v42 = 1101;
      }

      else
      {
        v42 = 0;
      }

      if (v41 == 1102)
      {
        v42 = 1102;
      }

      v83 = v42;
      v82 = sub_1C1B5B708([v36 privacyMarkerPosition]);
      v81 = sub_1C1AFECAC([v36 privacyMarkerType]);
      [v36 size];
      v44 = v43;
      [v36 size];
      v46 = v45;
      v47 = [v36 adTag];
      if (v47)
      {
        v48 = v47;
        v49 = sub_1C1B94D88();
        v51 = v50;
      }

      else
      {
        v49 = 0;
        v51 = 0;
      }

      v52 = v6;
      v53 = [v36 tapAction];
      v54 = [v53 adamIdentifier];

      v55 = [v36 tapAction];
      v56 = v2;
      if (v55)
      {
        v57 = v55;
        v58 = [v55 templateType];
      }

      else
      {
        v58 = 0;
      }

      v59 = objc_allocWithZone(type metadata accessor for BannerRepresentation());
      v60 = &v59[OBJC_IVAR___APPCBannerRepresentation_adTag];
      *v60 = v49;
      v60[1] = v51;
      *&v59[OBJC_IVAR___APPCBannerRepresentation_adamIdentifier] = v54;
      v61 = sub_1C1AF1CC0(v58);
      if (v62)
      {
        v63 = 0;
      }

      else
      {
        v63 = v61;
      }

      *&v59[OBJC_IVAR___APPCBannerRepresentation_appAdTemplateType] = v63;
      v64 = v35;
      *&v59[OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo] = v35;
      v66 = v87;
      v65 = v88;
      v67 = *(v87 + 16);
      v67(v52, v88, v56);
      v68 = v86;
      v80 = v86;
      v69 = v64;
      v70 = v54;
      v71 = sub_1C1B945A8();
      v72 = &v59[OBJC_IVAR___APPCContentRepresentation_identifier];
      *v72 = v71;
      v72[1] = v73;
      v67(&v59[OBJC_IVAR___APPCContentRepresentation_id], v52, v56);
      v74 = v83;
      *&v59[OBJC_IVAR___APPCContentRepresentation_adType] = v84;
      *&v59[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v74;
      v75 = v81;
      *&v59[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = v82;
      *&v59[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = v75;
      v76 = &v59[OBJC_IVAR___APPCContentRepresentation_adSize];
      *v76 = v44;
      *(v76 + 1) = v46;
      *&v59[OBJC_IVAR___APPCContentRepresentation_tapAction] = v85;
      *&v59[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v68;
      v77 = type metadata accessor for ContentRepresentation();
      v89.receiver = v59;
      v89.super_class = v77;
      objc_msgSendSuper2(&v89, sel_init);

      v78 = *(v66 + 8);
      v78(v52, v56);
      v78(v65, v56);
    }
  }
}

unint64_t sub_1C1AC53E4()
{
  result = qword_1EDE6C9C0;
  if (!qword_1EDE6C9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE6C9C0);
  }

  return result;
}

uint64_t sub_1C1AC5430(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1AC54A0(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C1AC5508(uint64_t a1, uint64_t a2)
{
  v22 = *(v2 + OBJC_IVAR___APPCContext_inventoryLock);
  [v22 lock];
  v5 = OBJC_IVAR___APPCContext_inventory;
  swift_beginAccess();
  v20 = v5;
  v21 = v2;
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
LABEL_23:
    v23 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = sub_1C1B953A8();
  }

  else
  {
    v23 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {

      sub_1C1B95118();
      sub_1C1AC53E4();
      v17 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1C1B98E60;
      *(v18 + 56) = MEMORY[0x1E69E6158];
      *(v18 + 64) = sub_1C1AA5E7C();
      *(v18 + 32) = a1;
      *(v18 + 40) = a2;

      sub_1C1B94BA8();

      return [v22 unlock];
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C6907490](v8, v6);
    }

    else
    {
      if (v8 >= *(v23 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v9 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
    }

    v10 = [v9 identifier];
    v11 = sub_1C1B94D88();
    v13 = v12;

    if (v11 == a1 && v13 == a2)
    {
      break;
    }

    v15 = sub_1C1B95888();
    swift_unknownObjectRelease();

    if (v15)
    {
      goto LABEL_19;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_22;
    }
  }

  swift_unknownObjectRelease();
LABEL_19:

  swift_beginAccess();
  sub_1C1B2B91C(v8);
  swift_endAccess();
  swift_unknownObjectRelease();
  return [v22 unlock];
}

uint64_t sub_1C1AC57E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for AdContentState();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a1);
  v13 = *a2;
  return sub_1C1AC5978(v11);
}

uint64_t sub_1C1AC58B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for AdContentState();
  return (*(*(v7 - 8) + 16))(a1, v1 + v4, v7);
}

uint64_t sub_1C1AC5978(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for AdContentState();
  (*(*(v7 - 8) + 40))(v1 + v4, a1, v7);
  return swift_endAccess();
}

uint64_t AdContentStateMachine.__allocating_init(initialState:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AdContentStateMachine.init(initialState:)(a1);
  return v5;
}

uint64_t AdContentStateMachine.init(initialState:)(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = type metadata accessor for AdContentState();
  (*(*(v6 - 8) + 32))(v1 + v3, a1, v6);
  return v1;
}

uint64_t sub_1C1AC5B28(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v29 = *(*v1 + 80);
  v4 = type metadata accessor for AdContentState();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  v6 = *(v30 + 64);
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v29 - v8;
  v10 = *(v4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v17 = *a1;
  v18 = *(a1 + 8);
  sub_1C1AC58B8(&v29 - v15);
  v19 = &v9[*(TupleTypeMetadata2 + 48)];
  (*(v10 + 32))(v9, v16, v4);
  *v19 = v17;
  v19[8] = v18;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (!v18 || v18 == 7 && v17 == 1)
      {
        sub_1C1AC5F78(v17, v18);
        v25 = v17;
        v26 = v18;
LABEL_36:
        sub_1C1AC5FD0(v25, v26);
        v27 = 1;
        goto LABEL_37;
      }

      goto LABEL_25;
    }

    if (v18 == 7 && !v17)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v10 + 16))(v14, v9, v4);
    v22 = *v14;
    sub_1C1AC5F78(v17, v18);

    sub_1C1AC3404(&qword_1EBF07AD8, &qword_1C1B98EB0);
    v23 = v29;
    v24 = *(swift_getTupleTypeMetadata2() + 48);
    if (v18 <= 3)
    {
      if (v18 == 1 || v18 == 2 || v18 == 3)
      {
        goto LABEL_34;
      }
    }

    else if (v18 <= 6 || v18 == 7 && (v17 == 2 || !v17))
    {
LABEL_34:
      (*(*(v23 - 8) + 8))(&v14[v24], v23);
      goto LABEL_35;
    }

    (*(*(v23 - 8) + 8))(&v14[v24], v23);
    goto LABEL_26;
  }

  if (v18 <= 4)
  {
    switch(v18)
    {
      case 1:
        sub_1C1AC5F78(v17, 1u);
        goto LABEL_35;
      case 2:
        sub_1C1AC5F78(v17, 2u);
        goto LABEL_35;
      case 3:
        sub_1C1AC5F78(v17, 3u);
LABEL_35:
        v25 = *v19;
        v26 = v19[8];
        goto LABEL_36;
    }

    goto LABEL_25;
  }

  switch(v18)
  {
    case 5:
      sub_1C1AC5F78(v17, 5u);
      goto LABEL_35;
    case 6:
      sub_1C1AC5F78(v17, 6u);
      goto LABEL_35;
    case 7:
      if (v17 == 2)
      {
        v21 = 2;
        goto LABEL_12;
      }

      if (v17)
      {
        break;
      }

LABEL_11:
      v21 = 0;
LABEL_12:
      sub_1C1AC5F78(v21, 7u);
      goto LABEL_35;
  }

LABEL_25:
  sub_1C1AC5F78(v17, v18);
LABEL_26:
  v27 = 0;
  v10 = v30;
  v4 = TupleTypeMetadata2;
LABEL_37:
  (*(v10 + 8))(v9, v4);
  return v27;
}

uint64_t sub_1C1AC5F78(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (a2 >= 2u)
    {
      if (a2 != 2)
      {
        return result;
      }
    }
  }

  if (a2 <= 4u)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return result;
      }
    }
  }

  if (a2 == 5 || a2 == 6)
  {
  }

  return result;
}

uint64_t sub_1C1AC5FD0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (a2 >= 2u)
    {
      if (a2 != 2)
      {
        return result;
      }
    }
  }

  if (a2 <= 4u)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return result;
      }
    }
  }

  if (a2 == 5 || a2 == 6)
  {
  }

  return result;
}

uint64_t sub_1C1AC6028(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for AdContent();
  v150 = *(v4 - 8);
  v5 = *(v150 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v147 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v138 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v138 - v11;
  v13 = *(v3 + 80);
  v149 = *(v3 + 88);
  v14 = type metadata accessor for AdContentState();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v146 = *(TupleTypeMetadata2 - 8);
  v16 = *(v146 + 64);
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v138 - v18;
  v151 = v13;
  v148 = *(v13 - 8);
  v20 = *(v148 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v139 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v140 = &v138 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v141 = &v138 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v142 = &v138 - v28;
  v29 = *(v14 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v27);
  v153 = &v138 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v144 = &v138 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v143 = &v138 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v138 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v157 = (&v138 - v40);
  v41 = *a1;
  v42 = *(a1 + 8);
  v152 = v1;
  sub_1C1AC58B8(v39);
  v145 = TupleTypeMetadata2;
  v43 = &v19[*(TupleTypeMetadata2 + 48)];
  v156 = v29;
  (*(v29 + 32))(v19, v39, v14);
  v158 = v41;
  *v43 = v41;
  v43[8] = v42;
  v154 = v14;
  v155 = v19;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v47 = v154;
      v45 = v156;
      v48 = v157;
      v51 = v158;
      if (v42 == 7 && !v158)
      {
        swift_storeEnumTagMultiPayload();
        v52 = *v43;
        v53 = v43[8];
        sub_1C1AC5F78(0, 7u);
        v54 = v52;
        v55 = v53;
        goto LABEL_64;
      }
    }

    else
    {
      v47 = v154;
      v45 = v156;
      v48 = v157;
      v68 = v158;
      if (!v42)
      {
        sub_1C1AC3404(&qword_1EBF07AD8, &qword_1C1B98EB0);
        v96 = v43;
        v97 = v151;
        v98 = *(swift_getTupleTypeMetadata2() + 48);
        *v48 = v68;
        v99 = v149;
        v100 = *(v149 + 16);
        sub_1C1AC5F78(v68, 0);
        sub_1C1AC5F78(v68, 0);
        v100(v97, v99);
        v48 = v157;
        swift_storeEnumTagMultiPayload();
        v54 = *v96;
        v55 = v96[8];
        goto LABEL_64;
      }

      if (v42 == 7 && v158 == 1)
      {
        v69 = *(v149 + 16);
        sub_1C1AC5F78(1, 7u);
        v69();
        swift_storeEnumTagMultiPayload();
        v54 = *v43;
        v55 = v43[8];
        goto LABEL_64;
      }

      v51 = v158;
    }

    sub_1C1AC5F78(v51, v42);
    goto LABEL_26;
  }

  if (!EnumCaseMultiPayload)
  {
    v45 = v156;
    v46 = v143;
    v47 = v154;
    (*(v156 + 16))(v143, v155, v154);
    v48 = v157;
    v49 = v158;
    if (v42 <= 4)
    {
      v50 = v151;
      if ((v42 - 1) >= 3)
      {
        goto LABEL_56;
      }

      goto LABEL_23;
    }

    v50 = v151;
    if (v42 != 5)
    {
      if (v42 == 6)
      {
LABEL_23:
        v70 = v148;
        v71 = v142;
        (*(v148 + 32))(v142, v46, v50);
        v72 = v50;
        v73 = *v43;
        v74 = v43[8];
        sub_1C1AC5F78(v49, v42);
        sub_1C1AC5FD0(v73, v74);
        (*(v45 + 8))(v155, v47);
        v159 = v49;
        v160 = v42;
        (*(v149 + 24))(&v159, v72);
        (*(v70 + 8))(v71, v72);
LABEL_55:
        swift_storeEnumTagMultiPayload();
LABEL_65:
        v117 = v153;
        (*(v45 + 16))(v153, v48, v47);
        sub_1C1AC5978(v117);
        return (*(v45 + 8))(v48, v47);
      }

      if (v42 != 7)
      {
LABEL_56:
        sub_1C1AC5F78(v158, v42);
        (*(v148 + 8))(v46, v50);
        goto LABEL_26;
      }

      if (v158)
      {
        if (v158 == 2)
        {
          goto LABEL_23;
        }

        goto LABEL_56;
      }

      sub_1C1AC5F78(0, 7u);
      (*(v148 + 8))(v46, v50);
LABEL_100:
      sub_1C1AC5FD0(*v43, v43[8]);
      (*(v45 + 8))(v155, v47);
      (*(v149 + 16))(v50);
      goto LABEL_55;
    }

    v110 = v148;
    (*(v148 + 32))(v140, v46, v151);
    sub_1C1AC3404(&qword_1EBF07AD8, &qword_1C1B98EB0);
    v111 = v50;
    v112 = *(swift_getTupleTypeMetadata2() + 48);
    *v48 = v49;
    v159 = v49;
    v160 = 5;
    v113 = v149;
    v114 = *(v149 + 24);
    sub_1C1AC5F78(v49, 5u);
    sub_1C1AC5F78(v49, 5u);
    v115 = v43;
    v116 = v140;
    v114(&v159, v111, v113);
    v48 = v157;
    (*(v110 + 8))(v116, v111);
    swift_storeEnumTagMultiPayload();
    v54 = *v115;
    v55 = v115[8];
LABEL_64:
    sub_1C1AC5FD0(v54, v55);
    (*(v45 + 8))(v155, v47);
    goto LABEL_65;
  }

  v143 = v43;
  v45 = v156;
  v56 = v144;
  (*(v156 + 16))(v144, v155, v154);
  v57 = *v56;
  sub_1C1AC3404(&qword_1EBF07AD8, &qword_1C1B98EB0);
  v58 = swift_getTupleTypeMetadata2();
  v59 = *(v58 + 48);
  v60 = v158;
  if (v42 <= 3)
  {
    v50 = v151;
    if ((v42 - 1) < 3)
    {
      goto LABEL_54;
    }

    goto LABEL_62;
  }

  if (v42 > 5)
  {
    v50 = v151;
    if (v42 == 6)
    {
      goto LABEL_54;
    }

    if (v42 == 7)
    {
      v48 = v157;
      if (!v158)
      {
        sub_1C1AC5F78(0, 7u);
        (*(v148 + 8))(v56 + v59, v50);

        v47 = v154;
        v43 = v143;
        goto LABEL_100;
      }

      if (v158 == 2)
      {
LABEL_54:
        v101 = v148;
        v102 = v56 + v59;
        v103 = v58;
        v104 = v141;
        (*(v148 + 32))(v141, v102, v50);
        v105 = *v143;
        v106 = v143[8];
        sub_1C1AC5F78(v60, v42);
        sub_1C1AC5FD0(v105, v106);
        v47 = v154;
        (*(v45 + 8))(v155, v154);
        v107 = *(v103 + 48);
        v48 = v157;
        *v157 = v57;
        v159 = v60;
        v160 = v42;
        v108 = v151;
        (*(v149 + 24))(&v159, v151);
        (*(v101 + 8))(v104, v108);
        goto LABEL_55;
      }
    }

LABEL_62:
    sub_1C1AC5F78(v158, v42);
    (*(v148 + 8))(v56 + v59, v50);

    v47 = v154;
LABEL_26:
    v75 = sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v76 = sub_1C1B95298();
    if (!os_log_type_enabled(v76, v75))
    {

      v45 = v156;
      v95 = v145;
LABEL_61:
      v48 = v157;
      sub_1C1AC58B8(v157);
      (*(v146 + 8))(v155, v95);
      goto LABEL_65;
    }

    v77 = swift_slowAlloc();
    v78 = v47;
    v79 = swift_slowAlloc();
    v159 = v79;
    *v77 = 136381187;
    v80 = *v152;
    v81 = sub_1C1B95A48();
    v83 = sub_1C1AC7650(v81, v82, &v159);

    *(v77 + 4) = v83;
    *(v77 + 12) = 2082;
    v84 = v153;
    sub_1C1AC58B8(v153);
    v85 = AdContentState.description.getter(v78);
    v87 = v86;
    (*(v156 + 8))(v84, v78);
    v88 = sub_1C1AC7650(v85, v87, &v159);

    *(v77 + 14) = v88;
    *(v77 + 22) = 2082;
    if (v42 > 3)
    {
      if (v42 > 5)
      {
        if (v42 != 6)
        {
          v95 = v145;
          v133 = 0xEF646564616F4C74;
          v134 = 0x6E65746E6F436F6ELL;
          if (v158 != 1)
          {
            v134 = 0x6961466863746566;
            v133 = 0xEB0000000064656CLL;
          }

          if (v158)
          {
            v93 = v134;
          }

          else
          {
            v93 = 0x6974696E49736168;
          }

          if (v158)
          {
            v94 = v133;
          }

          else
          {
            v94 = 0xEE0064657A696C61;
          }

          goto LABEL_60;
        }

        v94 = 0xEE00736E6F697373;
        v93 = 0x655365766F6D6572;
      }

      else
      {
        if (v42 == 4)
        {
          v93 = 0x6F4365766F6D6572;
        }

        else
        {
          v93 = 0x6465766965636572;
        }

        if (v42 == 4)
        {
          v94 = 0xED0000746E65746ELL;
        }

        else
        {
          v94 = 0xEF746E65746E6F43;
        }
      }
    }

    else
    {
      v89 = 0x6863746566657270;
      v90 = 0xE700000000000000;
      v91 = 0x64416863746566;
      if (v42 != 2)
      {
        v91 = 0x6C65636E6163;
        v90 = 0xE600000000000000;
      }

      v92 = 0xED0000646564616FLL;
      if (v42)
      {
        v92 = 0xEF746E65746E6F43;
      }

      else
      {
        v89 = 0x4C746E65746E6F63;
      }

      if (v42 <= 1)
      {
        v93 = v89;
      }

      else
      {
        v93 = v91;
      }

      if (v42 <= 1)
      {
        v94 = v92;
      }

      else
      {
        v94 = v90;
      }
    }

    v95 = v145;
LABEL_60:
    v109 = sub_1C1AC7650(v93, v94, &v159);

    *(v77 + 24) = v109;
    _os_log_impl(&dword_1C1AA2000, v76, v75, "[%{private}s] unexpected event sent to state machine. state: %{public}s, event: %{public}s", v77, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v79, -1, -1);
    MEMORY[0x1C6908230](v77, -1, -1);

    v47 = v154;
    v45 = v156;
    goto LABEL_61;
  }

  if (v42 != 4)
  {
    v61 = v151;
    v62 = v148;
    v63 = v56 + v59;
    v64 = v58;
    v65 = v140;
    (*(v148 + 32))(v140, v63, v151);
    v66 = v61;
    v67 = *(v64 + 48);
    v159 = v57;
    sub_1C1AC5F78(v60, 5u);
    sub_1C1AC5F78(v60, 5u);
    sub_1C1AC7324(v60);
    v48 = v157;
    *v157 = v159;
    v159 = v60;
    v160 = 5;
    (*(v149 + 24))(&v159, v66);
    (*(v62 + 8))(v65, v66);
    v47 = v154;
    swift_storeEnumTagMultiPayload();
    v54 = *v143;
    v55 = v143[8];
    goto LABEL_64;
  }

  v145 = v58;
  (*(v148 + 32))(v139, v56 + v59, v151);
  v119 = *(v57 + 16);
  result = sub_1C1AC5F78(v60, 4u);
  v146 = v119;
  if (!v119)
  {
    v121 = MEMORY[0x1E69E7CC0];
LABEL_95:

    if (*(v121 + 16))
    {
      v135 = *(v145 + 48);
      v48 = v157;
      *v157 = v121;
      v159 = v60;
      v160 = 4;
    }

    else
    {

      v159 = v60;
      v160 = 4;
      v48 = v157;
    }

    v136 = v139;
    v137 = v151;
    (*(v149 + 24))(&v159, v151);
    (*(v148 + 8))(v136, v137);
    v47 = v154;
    v45 = v156;
    swift_storeEnumTagMultiPayload();
    sub_1C1AC5FD0(*v143, v143[8]);
    (*(v45 + 8))(v155, v47);
    goto LABEL_65;
  }

  v120 = 0;
  v121 = MEMORY[0x1E69E7CC0];
  while (v120 < *(v57 + 16))
  {
    v122 = (*(v150 + 80) + 32) & ~*(v150 + 80);
    v123 = v57;
    v124 = v57 + v122;
    v125 = *(v150 + 72);
    sub_1C1AC204C(v124 + v125 * v120++, v12);
    v126 = v60 + v122;
    v127 = *(v60 + 16) + 1;
    while (--v127)
    {
      sub_1C1AC204C(v126, v10);
      if (*(v10 + 1) == *(v12 + 1) && *(v10 + 2) == *(v12 + 2))
      {
        sub_1C1AC20B0(v10);
LABEL_69:
        result = sub_1C1AC20B0(v12);
        v60 = v158;
        goto LABEL_70;
      }

      v126 += v125;
      v129 = sub_1C1B95888();
      sub_1C1AC20B0(v10);
      if (v129)
      {
        goto LABEL_69;
      }
    }

    sub_1C1AC771C(v12, v147);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v159 = v121;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C1AC7C7C(0, *(v121 + 16) + 1, 1);
      v121 = v159;
    }

    v60 = v158;
    v132 = *(v121 + 16);
    v131 = *(v121 + 24);
    if (v132 >= v131 >> 1)
    {
      sub_1C1AC7C7C(v131 > 1, v132 + 1, 1);
      v121 = v159;
    }

    *(v121 + 16) = v132 + 1;
    result = sub_1C1AC771C(v147, v121 + v122 + v132 * v125);
LABEL_70:
    v57 = v123;
    if (v120 == v146)
    {
      goto LABEL_95;
    }
  }

  __break(1u);
  return result;
}

uint64_t AdContentStateMachine.deinit()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for AdContentState();
  (*(*(v4 - 8) + 8))(v0 + v1, v4);
  return v0;
}

uint64_t AdContentStateMachine.__deallocating_deinit()
{
  AdContentStateMachine.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1AC7324(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1C1ACDE4C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for AdContent();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C1AC7450(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1C1B953A8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_1C1B953A8();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1C1AA5DDC(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C1AC7548(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C1B953A8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1C1B953A8();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1C1AA5DDC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C1AC8E54(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C1AC7650(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C1AC7780(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C1AAA7B8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1C1AA86F8(v11);
  return v7;
}

uint64_t sub_1C1AC771C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1AC7780(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C1AC788C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C1B954D8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C1AC788C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C1AC78D8(a1, a2);
  sub_1C1AC7A08(&unk_1F414C200);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1C1AC78D8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C1AC7AF4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C1B954D8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C1B94E08();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C1AC7AF4(v10, 0);
        result = sub_1C1B95448();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C1AC7A08(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1C1AC7B68(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C1AC7AF4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C1AC1F08(&qword_1EBF07B70, &qword_1C1B98F98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C1AC7B68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C1AC1F08(&qword_1EBF07B70, &qword_1C1B98F98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1C1AC7C5C(void *a1, int64_t a2, char a3)
{
  result = sub_1C1AC7F04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C1AC7C7C(size_t a1, int64_t a2, char a3)
{
  result = sub_1C1AC804C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C1AC7CA0(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for AdContentState();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1C1AC7DE4(char *a1, int64_t a2, char a3)
{
  result = sub_1C1AC8224(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1AC7E04(char *a1, int64_t a2, char a3)
{
  result = sub_1C1AC8334(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1AC7E24(char *a1, int64_t a2, char a3)
{
  result = sub_1C1AC8674(a1, a2, a3, *v3, &qword_1EBF090A0, &qword_1C1B98F60);
  *v3 = result;
  return result;
}

void *sub_1C1AC7E54(void *a1, int64_t a2, char a3)
{
  result = sub_1C1AC8440(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1AC7E74(char *a1, int64_t a2, char a3)
{
  result = sub_1C1AC8574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1AC7E94(char *a1, int64_t a2, char a3)
{
  result = sub_1C1AC8674(a1, a2, a3, *v3, &qword_1EBF07B38, &qword_1C1B98F58);
  *v3 = result;
  return result;
}

void *sub_1C1AC7EC4(void *a1, int64_t a2, char a3)
{
  result = sub_1C1AC8770(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1AC7EE4(char *a1, int64_t a2, char a3)
{
  result = sub_1C1AC88A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C1AC7F04(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C1AC1F08(&unk_1EBF08320, &unk_1C1B9AF50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C1AC1F08(&qword_1EBF07B30, &qword_1C1B98F50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1C1AC804C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1C1AC1F08(&qword_1EBF07B68, &qword_1C1B98F90);
  v10 = *(type metadata accessor for AdContent() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AdContent() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1C1AC8224(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C1AC1F08(&qword_1EBF07B00, &unk_1C1BA4320);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1AC8334(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C1AC1F08(&qword_1EBF07B60, &qword_1C1B9A030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C1AC8440(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C1AC1F08(&qword_1EBF07B48, &qword_1C1B98F70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C1AC1F08(&unk_1EBF09070, &qword_1C1B98F78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1AC8574(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C1AC1F08(&qword_1EBF07B40, &qword_1C1B98F68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1C1AC8674(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1C1AC1F08(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_1C1AC8770(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C1AC1F08(&qword_1EBF07AE0, &qword_1C1B98EE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C1AC1F08(&qword_1EBF07AD0, &qword_1C1B98EF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1AC88A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C1AC1F08(&qword_1EBF07B08, &qword_1C1B98F20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1C1AC8998(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1B953A8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C1B953A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1AC9190(&qword_1EBF07B18, &qword_1EBF07B10, &unk_1C1B98F28);
          for (i = 0; i != v6; ++i)
          {
            sub_1C1AC1F08(&qword_1EBF07B10, &unk_1C1B98F28);
            v9 = sub_1C1B2A49C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AdContentSession();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1AC8B28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1B953A8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C1B953A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1AC9190(&qword_1EBF07B58, &qword_1EBF07B50, &unk_1C1B98F80);
          for (i = 0; i != v6; ++i)
          {
            sub_1C1AC1F08(&qword_1EBF07B50, &unk_1C1B98F80);
            v9 = sub_1C1B2A524(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ContentDepiction();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1AC8CB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1B953A8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C1B953A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1AC9190(&qword_1EBF07AF8, &qword_1EBF07AF0, &unk_1C1B98F10);
          for (i = 0; i != v6; ++i)
          {
            sub_1C1AC1F08(&qword_1EBF07AF0, &unk_1C1B98F10);
            v9 = sub_1C1B2A5A4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1AC8E54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1B953A8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C1B953A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1AC9190(&qword_1EBF07B28, &qword_1EBF07B20, &unk_1C1B98F40);
          for (i = 0; i != v6; ++i)
          {
            sub_1C1AC1F08(&qword_1EBF07B20, &unk_1C1B98F40);
            v9 = sub_1C1B2A414(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C1AC1F08(&unk_1EBF09020, &qword_1C1B98F38);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1AC8FF0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1B953A8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C1B953A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1AC9190(&qword_1EDE6BB90, &qword_1EBF09470, qword_1C1B98EF8);
          for (i = 0; i != v6; ++i)
          {
            sub_1C1AC1F08(&qword_1EBF09470, qword_1C1B98EF8);
            v9 = sub_1C1B2A624(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1C1AA576C(0, qword_1EDE6CA20, 0x1E698A028);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1AC9190(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AdType.adTypeInternal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C1B94A38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (v8 <= 4)
  {
    v10 = MEMORY[0x1E6989E90];
    v11 = MEMORY[0x1E6989EA0];
    v12 = MEMORY[0x1E6989E80];
    if (v8 != 3)
    {
      v12 = MEMORY[0x1E6989E88];
    }

    if (v8 != 2)
    {
      v11 = v12;
    }

    if (*v1)
    {
      v10 = MEMORY[0x1E6989E98];
    }

    if (*v1 <= 1u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }

    (*(v4 + 104))(v7, *v13, v3);
    (*(v4 + 32))(a1, v7, v3);
    v14 = *MEMORY[0x1E6989C88];
    v15 = sub_1C1B94728();
    return (*(*(v15 - 8) + 104))(a1, v14, v15);
  }

  else
  {
    if (*v1 > 7u)
    {
      if (v8 == 8)
      {
        v9 = MEMORY[0x1E6989C98];
      }

      else if (v8 == 9)
      {
        v9 = MEMORY[0x1E6989C80];
      }

      else
      {
        v9 = MEMORY[0x1E6989CA8];
      }
    }

    else if (v8 == 5)
    {
      v9 = MEMORY[0x1E6989CA0];
    }

    else if (v8 == 6)
    {
      v9 = MEMORY[0x1E6989C78];
    }

    else
    {
      v9 = MEMORY[0x1E6989C90];
    }

    v17 = *v9;
    v18 = sub_1C1B94728();
    v19 = *(*(v18 - 8) + 104);

    return v19(a1, v17, v18);
  }
}

uint64_t AppPlacementLocation.hashValue.getter()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

unint64_t sub_1C1AC9508()
{
  result = qword_1EBF07B78;
  if (!qword_1EBF07B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07B78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 10;
  if (a2 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 10;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 10;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 5)
  {
    v8 = v7 - 4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AdType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF6)
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1C1AC96B4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C1AC96C8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t JourneyMetricsHelperDiagnostics.EventType.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {
      v5 = *(v0 + 8);

      return v2;
    }

    sub_1C1B95468();

    v9 = 0xD00000000000001BLL;
    v3 = sub_1C1B95858();
    MEMORY[0x1C6906DF0](v3);

    v4 = 41;
    v1 = 0xE100000000000000;
    goto LABEL_6;
  }

  if (*(v0 + 16) == 2)
  {
    v9 = 0x3A524F525245;
    v4 = *v0;
LABEL_6:
    MEMORY[0x1C6906DF0](v4, v1);
    return v9;
  }

  if (v2 <= 3)
  {
    v6 = 0x64657461657263;
    if (v2 ^ 2 | v1)
    {
      v7 = 0x6465646E61707865;
    }

    else
    {
      v7 = 0x7964616572;
    }

    if (v2 | v1)
    {
      v6 = 0x646564616F6CLL;
    }

    if (v2 <= 1)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else if (v2 <= 5)
  {
    if (v2 ^ 4 | v1)
    {
      return 0x6E65657263536E6FLL;
    }

    else
    {
      return 0x657370616C6C6F63;
    }
  }

  else if (v2 ^ 6 | v1)
  {
    if (v2 ^ 7 | v1)
    {
      return 0x646564616F6C6E75;
    }

    else
    {
      return 0x74736F6E67616944;
    }
  }

  else
  {
    return 0x656572635366666FLL;
  }
}

uint64_t JourneyMetricsHelperDiagnostics.EventType.initial.getter()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      return 33;
    }

    else
    {
      return qword_1C1B9A080[*v0];
    }
  }

  else if (*(v0 + 16))
  {
    return 63;
  }

  else
  {
    return 78;
  }
}

uint64_t sub_1C1AC99A8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x726F727265;
    v7 = 0x74736F6E67616964;
    if (a1 != 10)
    {
      v7 = 0x646564616F6C6E75;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6E65657263536E6FLL;
    v9 = 0x656572635366666FLL;
    if (a1 != 7)
    {
      v9 = 0x6D6F74737563;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
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
    v1 = 0x64657461657263;
    v2 = 0x6465646E61707865;
    v3 = 0x6E61707845746F6ELL;
    if (a1 != 4)
    {
      v3 = 0x657370616C6C6F63;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x646564616F6CLL;
    if (a1 != 1)
    {
      v4 = 0x7964616572;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1C1AC9B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1ACF7BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1AC9B6C(uint64_t a1)
{
  v2 = sub_1C1ACAF58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC9BA8(uint64_t a1)
{
  v2 = sub_1C1ACAF58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AC9BF0(uint64_t a1)
{
  v2 = sub_1C1ACB1A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC9C2C(uint64_t a1)
{
  v2 = sub_1C1ACB1A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AC9C68(uint64_t a1)
{
  v2 = sub_1C1ACB39C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC9CA4(uint64_t a1)
{
  v2 = sub_1C1ACB39C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AC9D00(uint64_t a1)
{
  v2 = sub_1C1ACB0A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC9D3C(uint64_t a1)
{
  v2 = sub_1C1ACB0A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AC9D78(uint64_t a1)
{
  v2 = sub_1C1ACB000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC9DB4(uint64_t a1)
{
  v2 = sub_1C1ACB000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AC9DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C1B95888();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C1AC9E78(uint64_t a1)
{
  v2 = sub_1C1ACB054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC9EB4(uint64_t a1)
{
  v2 = sub_1C1ACB054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AC9EF0(uint64_t a1)
{
  v2 = sub_1C1ACB2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC9F2C(uint64_t a1)
{
  v2 = sub_1C1ACB2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AC9F68(uint64_t a1)
{
  v2 = sub_1C1ACB348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AC9FA4(uint64_t a1)
{
  v2 = sub_1C1ACB348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AC9FE0()
{
  sub_1C1B95958();
  MEMORY[0x1C6907960](0);
  return sub_1C1B959A8();
}

uint64_t sub_1C1ACA024()
{
  sub_1C1B95958();
  MEMORY[0x1C6907960](0);
  return sub_1C1B959A8();
}

uint64_t sub_1C1ACA078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C1B95888();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C1ACA0FC(uint64_t a1)
{
  v2 = sub_1C1ACB1F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1ACA138(uint64_t a1)
{
  v2 = sub_1C1ACB1F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1ACA174(uint64_t a1)
{
  v2 = sub_1C1ACB0FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1ACA1B0(uint64_t a1)
{
  v2 = sub_1C1ACB0FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1ACA1EC(uint64_t a1)
{
  v2 = sub_1C1ACB150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1ACA228(uint64_t a1)
{
  v2 = sub_1C1ACB150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1ACA264(uint64_t a1)
{
  v2 = sub_1C1ACB2F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1ACA2A0(uint64_t a1)
{
  v2 = sub_1C1ACB2F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1ACA2DC(uint64_t a1)
{
  v2 = sub_1C1ACAFAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1ACA318(uint64_t a1)
{
  v2 = sub_1C1ACAFAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JourneyMetricsHelperDiagnostics.EventType.encode(to:)(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07B80, &qword_1C1B990C0);
  v91 = *(v3 - 8);
  v92 = v3;
  v4 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v66 - v5;
  v6 = sub_1C1AC1F08(&qword_1EBF07B88, &qword_1C1B990C8);
  v88 = *(v6 - 8);
  v89 = v6;
  v7 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v66 - v8;
  v9 = sub_1C1AC1F08(&qword_1EBF07B90, &qword_1C1B990D0);
  v99 = *(v9 - 8);
  v100 = v9;
  v10 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v66 - v11;
  v12 = sub_1C1AC1F08(&qword_1EBF07B98, &qword_1C1B990D8);
  v96 = *(v12 - 8);
  v97 = v12;
  v13 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v66 - v14;
  v15 = sub_1C1AC1F08(&qword_1EBF07BA0, &qword_1C1B990E0);
  v85 = *(v15 - 8);
  v86 = v15;
  v16 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v66 - v17;
  v83 = sub_1C1AC1F08(&qword_1EBF07BA8, &qword_1C1B990E8);
  v82 = *(v83 - 8);
  v18 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v66 - v19;
  v80 = sub_1C1AC1F08(&qword_1EBF07BB0, &qword_1C1B990F0);
  v79 = *(v80 - 8);
  v20 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v66 - v21;
  v22 = sub_1C1AC1F08(&qword_1EBF07BB8, &qword_1C1B990F8);
  v93 = *(v22 - 8);
  v94 = v22;
  v23 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v66 - v24;
  v77 = sub_1C1AC1F08(&qword_1EBF07BC0, &qword_1C1B99100);
  v76 = *(v77 - 8);
  v26 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v66 - v27;
  v74 = sub_1C1AC1F08(&qword_1EBF07BC8, &qword_1C1B99108);
  v73 = *(v74 - 8);
  v28 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v66 - v29;
  v71 = sub_1C1AC1F08(&qword_1EBF07BD0, &qword_1C1B99110);
  v70 = *(v71 - 8);
  v30 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v66 - v31;
  v68 = sub_1C1AC1F08(&qword_1EBF07BD8, &qword_1C1B99118);
  v67 = *(v68 - 8);
  v32 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v34 = &v66 - v33;
  v35 = sub_1C1AC1F08(&qword_1EBF07BE0, &qword_1C1B99120);
  v36 = *(v35 - 8);
  v102 = v35;
  v103 = v36;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v66 - v38;
  v40 = *v1;
  v41 = *(v1 + 8);
  v42 = *(v1 + 16);
  v43 = a1;
  v45 = a1[3];
  v44 = a1[4];
  sub_1C1AAABE0(v43, v45);
  sub_1C1ACAF58();
  v101 = v39;
  sub_1C1B95A18();
  if (v42 <= 1)
  {
    if (!v42)
    {
      LOBYTE(v105) = 4;
      sub_1C1ACB1F8();
      v47 = v101;
      v46 = v102;
      sub_1C1B95728();
      v105 = v40;
      sub_1C1ACB24C();
      v48 = v94;
      sub_1C1B95808();
      (*(v93 + 8))(v25, v48);
      return (*(v103 + 8))(v47, v46);
    }

    LOBYTE(v105) = 8;
    sub_1C1ACB0A8();
    v49 = v95;
    v47 = v101;
    v46 = v102;
    sub_1C1B95728();
    v50 = v97;
    sub_1C1B957A8();
    v51 = v96;
LABEL_7:
    (*(v51 + 8))(v49, v50);
    return (*(v103 + 8))(v47, v46);
  }

  if (v42 == 2)
  {
    LOBYTE(v105) = 9;
    sub_1C1ACB054();
    v49 = v98;
    v47 = v101;
    v46 = v102;
    sub_1C1B95728();
    v50 = v100;
    sub_1C1B957A8();
    v51 = v99;
    goto LABEL_7;
  }

  if (v40 <= 3)
  {
    if (v40 > 1)
    {
      if (v40 ^ 2 | v41)
      {
        LOBYTE(v105) = 3;
        sub_1C1ACB2A0();
        v64 = v75;
        v55 = v101;
        v54 = v102;
        sub_1C1B95728();
        v58 = *(v76 + 8);
        v59 = v64;
        v60 = &v106;
      }

      else
      {
        LOBYTE(v105) = 2;
        sub_1C1ACB2F4();
        v61 = v72;
        v55 = v101;
        v54 = v102;
        sub_1C1B95728();
        v58 = *(v73 + 8);
        v59 = v61;
        v60 = &v104;
      }
    }

    else if (v40 | v41)
    {
      LOBYTE(v105) = 1;
      sub_1C1ACB348();
      v63 = v69;
      v55 = v101;
      v54 = v102;
      sub_1C1B95728();
      v58 = *(v70 + 8);
      v59 = v63;
      v60 = &v103;
    }

    else
    {
      LOBYTE(v105) = 0;
      sub_1C1ACB39C();
      v55 = v101;
      v54 = v102;
      sub_1C1B95728();
      v58 = *(v67 + 8);
      v59 = v34;
      v60 = &v100;
    }
  }

  else
  {
    if (v40 > 5)
    {
      if (v40 ^ 6 | v41)
      {
        if (v40 ^ 7 | v41)
        {
          LOBYTE(v105) = 11;
          sub_1C1ACAFAC();
          v53 = v90;
          v55 = v101;
          v54 = v102;
          sub_1C1B95728();
          v57 = v91;
          v56 = v92;
        }

        else
        {
          LOBYTE(v105) = 10;
          sub_1C1ACB000();
          v53 = v87;
          v55 = v101;
          v54 = v102;
          sub_1C1B95728();
          v57 = v88;
          v56 = v89;
        }
      }

      else
      {
        LOBYTE(v105) = 7;
        sub_1C1ACB0FC();
        v53 = v84;
        v55 = v101;
        v54 = v102;
        sub_1C1B95728();
        v57 = v85;
        v56 = v86;
      }

      (*(v57 + 8))(v53, v56);
      return (*(v103 + 8))(v55, v54);
    }

    if (v40 ^ 4 | v41)
    {
      LOBYTE(v105) = 6;
      sub_1C1ACB150();
      v65 = v81;
      v55 = v101;
      v54 = v102;
      sub_1C1B95728();
      v58 = *(v82 + 8);
      v59 = v65;
      v60 = &v108;
    }

    else
    {
      LOBYTE(v105) = 5;
      sub_1C1ACB1A4();
      v62 = v78;
      v55 = v101;
      v54 = v102;
      sub_1C1B95728();
      v58 = *(v79 + 8);
      v59 = v62;
      v60 = &v107;
    }
  }

  v58(v59, *(v60 - 32));
  return (*(v103 + 8))(v55, v54);
}

unint64_t sub_1C1ACAF58()
{
  result = qword_1EBF07BE8;
  if (!qword_1EBF07BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07BE8);
  }

  return result;
}

unint64_t sub_1C1ACAFAC()
{
  result = qword_1EBF07BF0;
  if (!qword_1EBF07BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07BF0);
  }

  return result;
}

unint64_t sub_1C1ACB000()
{
  result = qword_1EBF07BF8;
  if (!qword_1EBF07BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07BF8);
  }

  return result;
}

unint64_t sub_1C1ACB054()
{
  result = qword_1EBF07C00;
  if (!qword_1EBF07C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C00);
  }

  return result;
}

unint64_t sub_1C1ACB0A8()
{
  result = qword_1EBF07C08;
  if (!qword_1EBF07C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C08);
  }

  return result;
}

unint64_t sub_1C1ACB0FC()
{
  result = qword_1EBF07C10;
  if (!qword_1EBF07C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C10);
  }

  return result;
}

unint64_t sub_1C1ACB150()
{
  result = qword_1EBF07C18;
  if (!qword_1EBF07C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C18);
  }

  return result;
}

unint64_t sub_1C1ACB1A4()
{
  result = qword_1EBF07C20;
  if (!qword_1EBF07C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C20);
  }

  return result;
}

unint64_t sub_1C1ACB1F8()
{
  result = qword_1EBF07C28;
  if (!qword_1EBF07C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C28);
  }

  return result;
}

unint64_t sub_1C1ACB24C()
{
  result = qword_1EBF07C30;
  if (!qword_1EBF07C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C30);
  }

  return result;
}

unint64_t sub_1C1ACB2A0()
{
  result = qword_1EBF07C38;
  if (!qword_1EBF07C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C38);
  }

  return result;
}

unint64_t sub_1C1ACB2F4()
{
  result = qword_1EBF07C40;
  if (!qword_1EBF07C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C40);
  }

  return result;
}

unint64_t sub_1C1ACB348()
{
  result = qword_1EBF07C48;
  if (!qword_1EBF07C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C48);
  }

  return result;
}

unint64_t sub_1C1ACB39C()
{
  result = qword_1EBF07C50;
  if (!qword_1EBF07C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07C50);
  }

  return result;
}

uint64_t JourneyMetricsHelperDiagnostics.EventType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v3 = sub_1C1AC1F08(&qword_1EBF07C58, &qword_1C1B99128);
  v117 = *(v3 - 8);
  v118 = v3;
  v4 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v125 = &v92 - v5;
  v6 = sub_1C1AC1F08(&qword_1EBF07C60, &qword_1C1B99130);
  v115 = *(v6 - 8);
  v116 = v6;
  v7 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v124 = &v92 - v8;
  v9 = sub_1C1AC1F08(&qword_1EBF07C68, &qword_1C1B99138);
  v113 = *(v9 - 8);
  v114 = v9;
  v10 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v92 - v11;
  v119 = sub_1C1AC1F08(&qword_1EBF07C70, &qword_1C1B99140);
  v112 = *(v119 - 8);
  v12 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v123 = &v92 - v13;
  v111 = sub_1C1AC1F08(&qword_1EBF07C78, &qword_1C1B99148);
  v110 = *(v111 - 8);
  v14 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v122 = &v92 - v15;
  v109 = sub_1C1AC1F08(&qword_1EBF07C80, &qword_1C1B99150);
  v108 = *(v109 - 8);
  v16 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v128 = &v92 - v17;
  v107 = sub_1C1AC1F08(&qword_1EBF07C88, &qword_1C1B99158);
  v105 = *(v107 - 8);
  v18 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v121 = &v92 - v19;
  v104 = sub_1C1AC1F08(&qword_1EBF07C90, &qword_1C1B99160);
  v106 = *(v104 - 8);
  v20 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v120 = &v92 - v21;
  v102 = sub_1C1AC1F08(&qword_1EBF07C98, &qword_1C1B99168);
  v103 = *(v102 - 8);
  v22 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v127 = &v92 - v23;
  v100 = sub_1C1AC1F08(&qword_1EBF07CA0, &qword_1C1B99170);
  v101 = *(v100 - 8);
  v24 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v126 = &v92 - v25;
  v99 = sub_1C1AC1F08(&qword_1EBF07CA8, &qword_1C1B99178);
  v98 = *(v99 - 8);
  v26 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v28 = &v92 - v27;
  v29 = sub_1C1AC1F08(&qword_1EBF07CB0, &qword_1C1B99180);
  v97 = *(v29 - 8);
  v30 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v92 - v31;
  v33 = sub_1C1AC1F08(&qword_1EBF07CB8, &qword_1C1B99188);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v92 - v36;
  v38 = a1[3];
  v39 = a1[4];
  v132 = a1;
  sub_1C1AAABE0(a1, v38);
  sub_1C1ACAF58();
  v40 = v131;
  sub_1C1B95A08();
  if (v40)
  {
    return sub_1C1AA86F8(v132);
  }

  v92 = v29;
  v93 = v28;
  v41 = v126;
  v42 = v127;
  v43 = v128;
  v44 = v129;
  v94 = 0;
  v131 = v34;
  v45 = v130;
  v95 = v33;
  v96 = v37;
  v46 = sub_1C1B95718();
  if (*(v46 + 16) != 1 || (v47 = *(v46 + 32), v47 == 12))
  {
    v52 = sub_1C1B954C8();
    swift_allocError();
    v54 = v53;
    v55 = *(sub_1C1AC1F08(&qword_1EBF07CC0, &qword_1C1B99190) + 48);
    *v54 = &type metadata for JourneyMetricsHelperDiagnostics.EventType;
    v56 = v95;
    v57 = v96;
    sub_1C1B95618();
    sub_1C1B954B8();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x1E69E6AF8], v52);
    swift_willThrow();
    (*(v131 + 8))(v57, v56);
    goto LABEL_11;
  }

  if (*(v46 + 32) > 5u)
  {
    v59 = v96;
    if (*(v46 + 32) > 8u)
    {
      v60 = v45;
      v61 = v131;
      v62 = v95;
      if (v47 == 9)
      {
        LOBYTE(v133) = 9;
        sub_1C1ACB054();
        v83 = v94;
        sub_1C1B95608();
        if (!v83)
        {
          v84 = v114;
          v67 = sub_1C1B95698();
          v65 = v90;
          (*(v113 + 8))(v44, v84);
          (*(v61 + 8))(v59, v62);
          swift_unknownObjectRelease();
          v66 = 2;
          goto LABEL_51;
        }
      }

      else
      {
        v129 = v46;
        v74 = v94;
        if (v47 == 10)
        {
          LOBYTE(v133) = 10;
          sub_1C1ACB000();
          v75 = v124;
          sub_1C1B95608();
          if (!v74)
          {
            (*(v115 + 8))(v75, v116);
            (*(v61 + 8))(v59, v62);
            swift_unknownObjectRelease();
            v65 = 0;
            v66 = 3;
            v67 = 7;
            goto LABEL_51;
          }
        }

        else
        {
          LOBYTE(v133) = 11;
          sub_1C1ACAFAC();
          v89 = v125;
          sub_1C1B95608();
          if (!v74)
          {
            (*(v117 + 8))(v89, v118);
            (*(v61 + 8))(v59, v62);
            swift_unknownObjectRelease();
            v65 = 0;
            v66 = 3;
            v67 = 8;
            goto LABEL_51;
          }
        }
      }
    }

    else
    {
      v60 = v45;
      v61 = v131;
      v62 = v95;
      if (v47 == 6)
      {
        LOBYTE(v133) = 6;
        sub_1C1ACB150();
        v79 = v94;
        sub_1C1B95608();
        if (!v79)
        {
          (*(v108 + 8))(v43, v109);
          (*(v61 + 8))(v59, v62);
          swift_unknownObjectRelease();
          v65 = 0;
          v66 = 3;
          v67 = 5;
          goto LABEL_51;
        }
      }

      else
      {
        v63 = v94;
        if (v47 == 7)
        {
          LOBYTE(v133) = 7;
          sub_1C1ACB0FC();
          v64 = v122;
          sub_1C1B95608();
          if (!v63)
          {
            (*(v110 + 8))(v64, v111);
            (*(v61 + 8))(v59, v62);
            swift_unknownObjectRelease();
            v65 = 0;
            v66 = 3;
            v67 = 6;
            goto LABEL_51;
          }
        }

        else
        {
          LOBYTE(v133) = 8;
          sub_1C1ACB0A8();
          v86 = v123;
          sub_1C1B95608();
          if (!v63)
          {
            v67 = sub_1C1B95698();
            v65 = v91;
            (*(v112 + 8))(v86, v119);
            (*(v61 + 8))(v59, v62);
            swift_unknownObjectRelease();
            v66 = 1;
            goto LABEL_51;
          }
        }
      }
    }

    (*(v61 + 8))(v59, v62);
    goto LABEL_11;
  }

  if (*(v46 + 32) > 2u)
  {
    v68 = v131;
    if (v47 != 3)
    {
      v129 = v46;
      v69 = v95;
      v70 = v96;
      if (v47 == 4)
      {
        LOBYTE(v133) = 4;
        sub_1C1ACB1F8();
        v71 = v120;
        v72 = v94;
        sub_1C1B95608();
        if (!v72)
        {
          v60 = v45;
          sub_1C1ACC688();
          v73 = v104;
          sub_1C1B956F8();
          (*(v106 + 8))(v71, v73);
          (*(v68 + 8))(v70, v69);
          swift_unknownObjectRelease();
          v65 = 0;
          v66 = 0;
          v67 = v133;
          goto LABEL_51;
        }
      }

      else
      {
        LOBYTE(v133) = 5;
        sub_1C1ACB1A4();
        v87 = v121;
        v88 = v94;
        sub_1C1B95608();
        if (!v88)
        {
          v60 = v45;
          (*(v105 + 8))(v87, v107);
          (*(v68 + 8))(v70, v69);
          swift_unknownObjectRelease();
          v65 = 0;
          v66 = 3;
          v67 = 4;
          goto LABEL_51;
        }
      }

      (*(v68 + 8))(v70, v69);
      goto LABEL_11;
    }

    LOBYTE(v133) = 3;
    sub_1C1ACB2A0();
    v80 = v95;
    v81 = v96;
    v82 = v94;
    sub_1C1B95608();
    if (v82)
    {
      (*(v68 + 8))(v81, v80);
      goto LABEL_11;
    }

    (*(v103 + 8))(v42, v102);
    (*(v68 + 8))(v81, v80);
    swift_unknownObjectRelease();
    v65 = 0;
    v67 = 3;
    goto LABEL_45;
  }

  if (!*(v46 + 32))
  {
    LOBYTE(v133) = 0;
    sub_1C1ACB39C();
    v76 = v95;
    v77 = v96;
    v78 = v94;
    sub_1C1B95608();
    if (v78)
    {
      goto LABEL_27;
    }

    (*(v97 + 8))(v32, v92);
    (*(v131 + 8))(v77, v76);
    swift_unknownObjectRelease();
    v67 = 0;
    v65 = 0;
LABEL_45:
    v66 = 3;
    v60 = v45;
    goto LABEL_51;
  }

  if (v47 != 1)
  {
    LOBYTE(v133) = 2;
    sub_1C1ACB2F4();
    v76 = v95;
    v77 = v96;
    v85 = v94;
    sub_1C1B95608();
    if (!v85)
    {
      (*(v101 + 8))(v41, v100);
      (*(v131 + 8))(v77, v76);
      swift_unknownObjectRelease();
      v65 = 0;
      v66 = 3;
      v67 = 2;
      v60 = v45;
      goto LABEL_51;
    }

LABEL_27:
    (*(v131 + 8))(v77, v76);
    goto LABEL_11;
  }

  LOBYTE(v133) = 1;
  sub_1C1ACB348();
  v48 = v93;
  v49 = v95;
  v50 = v96;
  v51 = v94;
  sub_1C1B95608();
  if (v51)
  {
    (*(v131 + 8))(v50, v49);
LABEL_11:
    swift_unknownObjectRelease();
    return sub_1C1AA86F8(v132);
  }

  (*(v98 + 8))(v48, v99);
  (*(v131 + 8))(v50, v49);
  swift_unknownObjectRelease();
  v65 = 0;
  v66 = 3;
  v67 = 1;
  v60 = v45;
LABEL_51:
  *v60 = v67;
  *(v60 + 8) = v65;
  *(v60 + 16) = v66;
  return sub_1C1AA86F8(v132);
}

unint64_t sub_1C1ACC688()
{
  result = qword_1EBF07CC8;
  if (!qword_1EBF07CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07CC8);
  }

  return result;
}

uint64_t sub_1C1ACC6DC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1ACC710()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1ACC78C()
{
  if (*v0)
  {
    result = 0x65746E49656D6974;
  }

  else
  {
    result = 0x707954746E657665;
  }

  *v0;
  return result;
}

uint64_t sub_1C1ACC7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
  if (v6 || (sub_1C1B95888() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746E49656D6974 && a2 == 0xEC0000006C617672)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C1B95888();

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

uint64_t sub_1C1ACC8C8(uint64_t a1)
{
  v2 = sub_1C1ACCB10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1ACC904(uint64_t a1)
{
  v2 = sub_1C1ACCB10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JourneyMetricsHelperDiagnostics.Event.encode(to:)(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07CD0, &qword_1C1B99198);
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  v10 = a1[4];
  v11 = *(v1 + 16);
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1ACCAF4(v7, v8, v11);
  sub_1C1ACCB10();
  sub_1C1B95A18();
  v17 = v7;
  v18 = v8;
  v19 = v11;
  v16 = 0;
  sub_1C1ACCB64();
  v12 = v14;
  sub_1C1B95808();
  sub_1C1ACCBB8(v17, v18, v19);
  if (!v12)
  {
    LOBYTE(v17) = 1;
    sub_1C1B957C8();
  }

  return (*(v15 + 8))(v6, v3);
}

uint64_t sub_1C1ACCAF4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

unint64_t sub_1C1ACCB10()
{
  result = qword_1EBF07CD8;
  if (!qword_1EBF07CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07CD8);
  }

  return result;
}

unint64_t sub_1C1ACCB64()
{
  result = qword_1EBF07CE0;
  if (!qword_1EBF07CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07CE0);
  }

  return result;
}

uint64_t sub_1C1ACCBB8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t JourneyMetricsHelperDiagnostics.Event.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C1AC1F08(&qword_1EBF07CE8, &unk_1C1B991A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1ACCB10();
  sub_1C1B95A08();
  if (v2)
  {
    return sub_1C1AA86F8(a1);
  }

  v18 = 0;
  sub_1C1ACCDEC();
  sub_1C1B956F8();
  v11 = v19;
  v12 = v20;
  v17 = v21;
  LOBYTE(v19) = 1;
  sub_1C1B956B8();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  v15 = v17;
  *(a2 + 16) = v17;
  *(a2 + 24) = v14;
  sub_1C1ACCAF4(v11, v12, v15);
  sub_1C1AA86F8(a1);
  return sub_1C1ACCBB8(v11, v12, v15);
}

unint64_t sub_1C1ACCDEC()
{
  result = qword_1EBF07CF0;
  if (!qword_1EBF07CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07CF0);
  }

  return result;
}

void sub_1C1ACCE70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1B94588();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 16);
  sub_1C1ACCAF4(*a1, v9, *(a1 + 16));
  sub_1C1B94578();
  sub_1C1B944F8();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  v37[0] = v10;
  v37[1] = v9;
  v38 = v11;
  v39 = v13;
  sub_1C1ACD800(v37);
  v14 = OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_history;
  swift_beginAccess();
  v15 = *(v2 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v14) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1C1ACDE74(0, *(v15 + 2) + 1, 1, v15);
    *(v2 + v14) = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1C1ACDE74((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[32 * v18];
  *(v19 + 4) = v10;
  *(v19 + 5) = v9;
  v19[48] = v11;
  *(v19 + 7) = v13;
  *(v2 + v14) = v15;
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = [v22 identifier];
      swift_unknownObjectRelease();
      v24 = sub_1C1B94D88();
      v26 = v25;

      if (v11 == 3 && v10 <= 3 && !(v10 ^ 2 | v9))
      {
        v27 = (v2 + OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_lastReadyIdentifier);
        v28 = *(v2 + OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_lastReadyIdentifier + 8);
        if (v28)
        {
          v29 = *v27;
          v34 = 0;
          v35 = 0xE000000000000000;

          sub_1C1B95468();

          v34 = 0xD000000000000020;
          v35 = 0x80000001C1BA71F0;
          MEMORY[0x1C6906DF0](v29, v28);

          v30 = v34;
          v31 = v35;
          v36 = 2;
          sub_1C1ACCE70(&v34);

          sub_1C1ACCBB8(v30, v31, 2u);
        }

        else
        {
        }

        v32 = v27[1];
        *v27 = v24;
        v27[1] = v26;
      }

      else
      {
      }
    }

    else
    {
    }
  }
}