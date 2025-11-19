uint64_t sub_21D248028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, BOOL *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_beginAccess();
  v15 = *(a8 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a8 + 16) = v17;
    v18 = a4 + a3;
    result = swift_beginAccess();
    v19 = *(a10 + 16);
    v16 = __OFSUB__(v18, v19);
    v20 = v18 - v19;
    if (!v16)
    {
      swift_beginAccess();
      *(a9 + 16) = v20;
      result = swift_beginAccess();
      *a7 = *(a8 + 16) > 74;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D248100(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v38[1] = a7;
  v12 = sub_21DBF4CAC();
  v38[0] = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_11;
  }

  v16 = result;
  v17 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_newlyCreatedHashtags;
  swift_beginAccess();
  v18 = *(v16 + v17);
  if ((v18 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    v19 = sub_21DBFBD7C();

    if (v19)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*(v18 + 16))
  {
LABEL_10:

LABEL_11:
    *a4 = 1;
    return result;
  }

LABEL_4:
  if (!a1)
  {
  }

  v20 = [a6 string];
  if (!v20)
  {
    sub_21DBFA16C();
    v20 = sub_21DBFA12C();
  }

  v21 = [v20 substringWithRange_];

  v22 = sub_21DBFA16C();
  v24 = v23;

  v25 = sub_21DBF4C1C();
  MEMORY[0x28223BE20](v25);
  v38[-2] = v14;
  v26 = sub_21D3F7414(sub_21D24BE88, &v38[-4], v22, v24);
  if (v27)
  {

    v28 = 0;
    v29 = 0xE000000000000000;
  }

  else
  {
    v30 = sub_21D3F7BA8(v26, v22, v24);
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v28 = MEMORY[0x223D429B0](v30, v32, v34, v36);
    v29 = v37;
  }

  (*(v38[0] + 8))(v14, v12);
  swift_beginAccess();
  sub_21D29B8E4(&v39, v28, v29);
  swift_endAccess();
}

id sub_21D248408(void *a1)
{
  v2 = [objc_opt_self() newObjectID];
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = objc_allocWithZone(MEMORY[0x277D44648]);
  v10 = sub_21DBFA12C();
  v11 = [v9 initWithObjectID:v2 accountID:v5 reminderID:v8 type:0 name:v10];

  swift_beginAccess();
  v12 = v11;
  sub_21D29BA34(&v14, v12);
  swift_endAccess();

  return v12;
}

void sub_21D24857C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D0C348);
    sub_21D0D65DC(&qword_280D0C340, &qword_280D0C348);
    sub_21DBFAB5C();
    v3 = v30;
    v4 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
  }

  else
  {
    v8 = -1 << *(a3 + 32);
    v4 = a3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a3 + 56);
    sub_21DBF8E0C();
    v6 = 0;
  }

  v24 = v5;
  v25 = v4;
  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_21DBFBDBC())
    {
      goto LABEL_24;
    }

    sub_21D0D8CF0(0, &qword_280D0C348);
    swift_dynamicCast();
    v16 = v29;
    v14 = v6;
    v15 = v7;
    if (!v29)
    {
      goto LABEL_24;
    }

LABEL_18:
    if (![v16 type])
    {
      v28 = v15;
      v17 = v3;
      v18 = [v16 name];
      v19 = sub_21DBFA16C();
      v21 = v20;

      if (v19 == a1 && v21 == a2)
      {

LABEL_24:
        sub_21D0CFAF8();
        return;
      }

      v23 = sub_21DBFC64C();

      v3 = v17;
      v4 = v25;
      v15 = v28;
      if (v23)
      {
        goto LABEL_24;
      }
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_24;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_21D248840(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, int64_t a6)
{
  v86 = a1;
  v87 = a6;
  v77 = a4;
  v78 = a5;
  v8 = sub_21DBF78CC();
  v76 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v84 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v73 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v73 - v14;
  v16 = swift_allocBox();
  v18 = v17;
  sub_21DBF78BC();
  v19 = [a3 string];
  v20 = sub_21DBFA16C();
  v22 = v21;

  v23 = MEMORY[0x223D42B30](v20, v22);

  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = v16;
  aBlock[4] = sub_21D24BDAC;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D472974;
  aBlock[3] = &block_descriptor_75;
  v25 = _Block_copy(aBlock);
  v26 = a3;

  v27 = v8;

  v28 = v26;
  v29 = v76;
  [v28 rem:0 enumerateHashtagInRange:v23 options:0 usingBlock:v25];
  v30 = v25;
  v31 = v86;
  _Block_release(v30);
  swift_beginAccess();
  v32 = *(v29 + 16);
  v75 = v15;
  v32(v15, v18, v8);

  v33 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    if (*(v85 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_fetchedHashtagLabels))
    {
      sub_21DBF8E0C();
      sub_21DBF784C();
      v34 = v84;
      v35 = v75;
      sub_21DBF77CC();
      v36 = *(v29 + 8);
      v36(v12, v27);
      (*(v29 + 32))(v12, v34, v27);
      v37 = sub_21DBF77FC();
      v38 = v12;
      v39 = v37;
      v36(v38, v27);
      goto LABEL_18;
    }

LABEL_24:
    (*(v29 + 8))(v75, v27);
    return MEMORY[0x277D84F90];
  }

  v40 = v87;
  if (!v87)
  {
    goto LABEL_24;
  }

  v39 = MEMORY[0x277D84F90];
  v35 = v75;
  if (*(MEMORY[0x277D84F90] + 16) <= 2uLL)
  {
    v41 = (v87 + 40);
    v42 = -1;
    do
    {
      if (++v42 >= *(v40 + 16))
      {
        break;
      }

      v45 = *(v41 - 1);
      v44 = *v41;
      sub_21DBF8E0C();
      if (sub_21DBF788C())
      {

        v43 = *(v39 + 2);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_21D210A84(0, *(v39 + 2) + 1, 1, v39);
        }

        v47 = *(v39 + 2);
        v46 = *(v39 + 3);
        v43 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          v39 = sub_21D210A84((v46 > 1), v47 + 1, 1, v39);
        }

        *(v39 + 2) = v43;
        v48 = &v39[16 * v47];
        *(v48 + 4) = v45;
        *(v48 + 5) = v44;
        v40 = v87;
      }

      v41 += 2;
    }

    while (v43 < 3);
  }

LABEL_18:
  v49 = *(v39 + 2);
  if (!v49)
  {

    (*(v29 + 8))(v35, v27);
    return MEMORY[0x277D84F90];
  }

  v74 = v27;
  v89 = MEMORY[0x277D84F90];
  sub_21D18EAE4(0, v49, 0);
  v50 = v89;
  v73[1] = v39;
  v51 = v39 + 40;
  do
  {
    v80 = v50;
    v86 = v51;
    v87 = v49;
    v52 = *(v51 - 1);
    v53 = *v51;
    v54 = swift_allocObject();
    v54[2] = v52;
    v54[3] = v53;
    v55 = v77;
    v56 = v78;
    v54[4] = v77;
    v54[5] = v56;
    v85 = v54;
    v57 = swift_allocObject();
    *(v57 + 2) = v52;
    *(v57 + 3) = v53;
    *(v57 + 4) = v55;
    *(v57 + 5) = v56;
    v84 = v57;
    v58 = swift_allocObject();
    v58[2] = v52;
    v58[3] = v53;
    v58[4] = v55;
    v58[5] = v56;
    v83 = v58;
    v59 = swift_allocObject();
    v59[2] = v52;
    v59[3] = v53;
    v59[4] = v55;
    v59[5] = v56;
    v82 = v59;
    v60 = swift_allocObject();
    v60[2] = v52;
    v60[3] = v53;
    v60[4] = v55;
    v60[5] = v56;
    v81 = v60;
    v61 = swift_allocObject();
    v61[2] = v52;
    v61[3] = v53;
    v61[4] = v55;
    v61[5] = v56;
    v79 = v61;
    v62 = swift_allocObject();
    v62[2] = v52;
    v62[3] = v53;
    v62[4] = v55;
    v62[5] = v56;
    v63 = swift_allocObject();
    v63[2] = v52;
    v63[3] = v53;
    v63[4] = v55;
    v63[5] = v56;
    v64 = swift_allocObject();
    v64[2] = v52;
    v64[3] = v53;
    v64[4] = v55;
    v64[5] = v56;
    v65 = swift_allocObject();
    v65[2] = v52;
    v65[3] = v53;
    v65[4] = v55;
    v65[5] = v56;
    v66 = swift_allocObject();
    v66[2] = v52;
    v66[3] = v53;
    v66[4] = v55;
    v66[5] = v56;
    v50 = v80;
    v89 = v80;
    v68 = *(v80 + 16);
    v67 = *(v80 + 24);
    swift_bridgeObjectRetain_n();
    if (v68 >= v67 >> 1)
    {
      sub_21D18EAE4((v67 > 1), v68 + 1, 1);
      v50 = v89;
    }

    *(v50 + 16) = v68 + 1;
    v69 = v50 + 192 * v68;
    *(v69 + 32) = v85;
    *(v69 + 40) = v88;
    *(v69 + 56) = &type metadata for TTRReminderCellHashtagSuggestion;
    *(v69 + 64) = sub_21D24BDB4;
    v70 = v83;
    *(v69 + 72) = v84;
    *(v69 + 80) = sub_21D24BDBC;
    *(v69 + 88) = v70;
    *(v69 + 96) = sub_21D24BDC4;
    v71 = v81;
    *(v69 + 104) = v82;
    *(v69 + 112) = sub_21D24BDCC;
    *(v69 + 120) = v71;
    *(v69 + 128) = sub_21D24BDD4;
    *(v69 + 136) = v79;
    *(v69 + 144) = sub_21D24BDDC;
    *(v69 + 152) = v62;
    *(v69 + 160) = sub_21D24BDE4;
    *(v69 + 168) = v63;
    *(v69 + 176) = sub_21D24BDEC;
    *(v69 + 184) = v64;
    *(v69 + 192) = sub_21D24BDF4;
    *(v69 + 200) = v65;
    *(v69 + 208) = sub_21D24BDEC;
    *(v69 + 216) = v66;
    v51 = v86 + 2;
    v49 = v87 - 1;
  }

  while (v87 != 1);
  (*(v76 + 8))(v75, v74);

  return v50;
}

uint64_t sub_21D248FD0(void *a1, void *a2)
{
  v4 = [objc_opt_self() attributeName];
  v5 = [a2 string];
  v6 = sub_21DBFA16C();
  v8 = v7;

  v9 = MEMORY[0x223D42B30](v6, v8);

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21D24B414;
  *(v11 + 24) = v10;
  v16[4] = sub_21D24BE7C;
  v16[5] = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_21D1A6068;
  v16[3] = &block_descriptor_48;
  v12 = _Block_copy(v16);
  v13 = a2;
  v14 = a1;

  [v13 enumerateAttribute:v4 inRange:0 options:v9 usingBlock:{0, v12}];

  _Block_release(v12);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D2491B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (!*(result + 24))
  {
    type metadata accessor for TTRHashtagEditingPresenterCapability();
    v11 = [a5 string];
    v12 = sub_21DBFA16C();
    v14 = v13;

    v15 = static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(v12, v14, a2, a3);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      do
      {
        if (*v17 != 3)
        {
          v20 = *(v17 - 2);
          v21 = *(v17 - 1);
          if (qword_280D177B8 != -1)
          {
            swift_once();
          }

          v18 = qword_280D177C0;
          v19 = sub_21DBFA7AC();
          [a6 addAttribute:v18 value:v19 range:{v20, v21}];
        }

        v17 += 24;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

uint64_t sub_21D249320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v35 = a3;
  v8 = sub_21DBF78CC();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v34 - v15;
  v16 = sub_21DBF4CAC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_projectBox();
  if (a1)
  {
    v21 = result;
    v22 = [a5 string];
    if (!v22)
    {
      sub_21DBFA16C();
      v22 = sub_21DBFA12C();
    }

    v23 = [v22 substringWithRange_];

    v24 = sub_21DBFA16C();
    v26 = v25;

    v38 = v24;
    v39 = v26;
    sub_21DBF4C1C();
    sub_21D176F0C();
    v27 = sub_21DBFBB3C();
    v29 = v28;
    (*(v17 + 8))(v19, v16);

    swift_beginAccess();
    v30 = v37;
    (*(v37 + 16))(v13, v21, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_21DC08D00;
    *(v31 + 32) = v27;
    *(v31 + 40) = v29;
    sub_21DBF784C();
    v32 = v36;
    sub_21DBF782C();
    v33 = *(v30 + 8);
    v33(v10, v8);
    v33(v13, v8);
    swift_beginAccess();
    return (*(v30 + 40))(v21, v32, v8);
  }

  return result;
}

uint64_t TTRReminderCellHashtagEditingPresenter.deinit()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  sub_21D24B040(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_item);
  sub_21D24A814(*(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation), *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation + 8));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t TTRReminderCellHashtagEditingPresenter.__deallocating_deinit()
{
  TTRReminderCellHashtagEditingPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D2497A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_21D249808(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24BEC0;
}

void sub_21D24989C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_21D249920@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return sub_21D24A7C4(v4, v5);
}

uint64_t sub_21D249984(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v2, a2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D249A40(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_21D249D50(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v28 = MEMORY[0x277D84FA0];
  sub_21DBFBD1C();
  swift_beginAccess();
  if (sub_21DBFBDBC())
  {
    sub_21D0D8CF0(0, &qword_280D0C348);
    do
    {
      swift_dynamicCast();
      v4 = v2;
      v5 = *v2;
      sub_21DBF8E0C();
      v6 = [v27 name];
      v7 = sub_21DBFA16C();
      v9 = v8;

      if (*(v5 + 16) && (sub_21DBFC7DC(), sub_21DBFA27C(), v10 = sub_21DBFC82C(), v11 = -1 << *(v5 + 32), v12 = v10 & ~v11, ((*(v5 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
      {
        v13 = ~v11;
        while (1)
        {
          v14 = (*(v5 + 48) + 16 * v12);
          v15 = *v14 == v7 && v14[1] == v9;
          if (v15 || (sub_21DBFC64C() & 1) != 0)
          {
            break;
          }

          v12 = (v12 + 1) & v13;
          if (((*(v5 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        v16 = *(v3 + 16);
        if (*(v3 + 24) <= v16)
        {
          sub_21D8AD2CC(v16 + 1);
        }

        v3 = v28;
        result = sub_21DBFB62C();
        v18 = v28 + 56;
        v19 = -1 << *(v28 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v28 + 56 + 8 * (v20 >> 6))) != 0)
        {
          v22 = __clz(__rbit64((-1 << v20) & ~*(v28 + 56 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = 0;
          v24 = (63 - v19) >> 6;
          do
          {
            if (++v21 == v24 && (v23 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v25 = v21 == v24;
            if (v21 == v24)
            {
              v21 = 0;
            }

            v23 |= v25;
            v26 = *(v18 + 8 * v21);
          }

          while (v26 == -1);
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
        }

        *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v28 + 48) + 8 * v22) = v27;
        ++*(v28 + 16);
      }

      else
      {
LABEL_4:
      }

      v2 = v4;
    }

    while (sub_21DBFBDBC());
  }

  return v3;
}

uint64_t sub_21D249D50(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v43 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v34 = v6;
    v35 = v2;
    v33 = &v33;
    MEMORY[0x28223BE20](a1);
    v36 = &v33 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v7);
    v6 = v4 + 56;
    v8 = 1 << *(v4 + 32);
    v9 = v8 < 64 ? ~(-1 << v8) : -1;
    v10 = v9 & *(v4 + 56);
    swift_beginAccess();
    v11 = 0;
    v12 = 0;
    v13 = (v8 + 63) >> 6;
    v38 = a2;
    v39 = v4;
LABEL_7:
    v37 = v11;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v42 = (v10 - 1) & v10;
LABEL_16:
      v17 = v14 | (v12 << 6);
      v18 = *(v4 + 48);
      v40 = v17;
      v19 = *a2;
      v2 = *(v18 + 8 * v17);
      sub_21DBF8E0C();
      v41 = v2;
      v20 = [v2 name];
      v21 = sub_21DBFA16C();
      v23 = v22;

      if (*(v19 + 16))
      {
        sub_21DBFC7DC();
        sub_21DBFA27C();
        v24 = sub_21DBFC82C();
        v25 = -1 << *(v19 + 32);
        v26 = v24 & ~v25;
        if ((*(v19 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = ~v25;
          while (1)
          {
            v28 = (*(v19 + 48) + 16 * v26);
            v29 = *v28 == v21 && v28[1] == v23;
            if (v29 || (sub_21DBFC64C() & 1) != 0)
            {
              break;
            }

            v26 = (v26 + 1) & v27;
            if (((*(v19 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          v4 = v39;
          *&v36[(v40 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v40;
          a2 = v38;
          v11 = v37 + 1;
          v10 = v42;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_29;
          }

          goto LABEL_7;
        }
      }

LABEL_8:

      a2 = v38;
      v4 = v39;
      v10 = v42;
    }

    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        return sub_21D7BFC3C(v36, v34, v37, v4);
      }

      v16 = *(v6 + 8 * v12);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = swift_slowAlloc();
  v32 = sub_21D24A384(v31, v6, v4, a2);

  MEMORY[0x223D46520](v31, -1, -1);
  return v32;
}

void sub_21D24A0F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 56);
  swift_beginAccess();
  v8 = 0;
  v9 = 0;
  v10 = (v5 + 63) >> 6;
LABEL_6:
  v28 = v8;
  while (v7)
  {
    v11 = __clz(__rbit64(v7));
    v32 = (v7 - 1) & v7;
LABEL_15:
    v30 = v11 | (v9 << 6);
    v14 = *a4;
    v15 = *(*(a3 + 48) + 8 * v30);
    sub_21DBF8E0C();
    v16 = [v15 name];
    v17 = sub_21DBFA16C();
    v19 = v18;

    if (*(v14 + 16))
    {
      sub_21DBFC7DC();
      sub_21DBFA27C();
      v20 = sub_21DBFC82C();
      v21 = -1 << *(v14 + 32);
      v22 = v20 & ~v21;
      if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v14 + 48) + 16 * v22);
          v25 = *v24 == v17 && v24[1] == v19;
          if (v25 || (sub_21DBFC64C() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        *(a1 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        v8 = v28 + 1;
        v7 = v32;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_27;
        }

        goto LABEL_6;
      }
    }

LABEL_7:

    v7 = v32;
  }

  v12 = v9;
  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= v10)
    {

      sub_21D7BFC3C(a1, a2, v28, a3);
      return;
    }

    v13 = *(v4 + 8 * v9);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v32 = (v13 - 1) & v13;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void *sub_21D24A384(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_21D24A0F8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t *sub_21D24A40C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_21DBF8E0C();
    sub_21D24B44C(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

id _s15RemindersUICore38TTRReminderCellHashtagEditingPresenterC16attributedString4fromSo012NSAttributedI0CSaySo10REMHashtagCGSg_tF_0(unint64_t a1)
{
  if (a1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
    v13 = v2;
    if (a1 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
    {
      for (j = 0; ; ++j)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x223D44740](j, a1);
        }

        else
        {
          if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v5 = *(a1 + 8 * j + 32);
        }

        v6 = v5;
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        v12 = v5;
        sub_21D244DC4(&v13, &v12);

        if (v7 == i)
        {
          return v2;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

    return v2;
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v9 = sub_21DBFA12C();
    v10 = [v8 initWithString_];

    return v10;
  }
}

uint64_t sub_21D24A5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 40) = 0;
  swift_unknownObjectWeakInit();
  v12 = (a5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_augmentation);
  *v12 = 0u;
  v12[1] = 0u;
  v13 = (a5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession);
  *v13 = 0;
  v13[1] = 0;
  *(a5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_shouldSkipSavingEditingSession) = 0;
  *(a5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_newlyCreatedHashtags) = MEMORY[0x277D84FA0];
  *(a5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_fetchedHashtagLabels) = 0;
  *(a5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagLabelsCancellable) = 0;
  v14 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_textSelectionPassthroughSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A118);
  swift_allocObject();
  *(a5 + v14) = sub_21DBF907C();
  sub_21D24BDFC(a1, a5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_item);
  v15 = (a5 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_interactor);
  *v15 = a2;
  v15[1] = a7;
  swift_beginAccess();
  *(a5 + 40) = a4;
  swift_unknownObjectWeakAssign();
  return a5;
}

uint64_t sub_21D24A744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_21D24A5F4(a1, a2, a3, a4, v13, a6, a7);
}

uint64_t sub_21D24A7C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    return sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D24A814(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21D24A870(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A170);
  return v3(a1, *(a1 + *(v4 + 48)), *(a1 + *(v4 + 48) + 8), *(a1 + *(v4 + 48) + 16), *(a1 + *(v4 + 48) + 24));
}

uint64_t sub_21D24A8D0(void *ObjectType, uint64_t *a2)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession);
  v5 = &unk_280D0F000;
  if (!v4)
  {
    v22 = 0;
    goto LABEL_14;
  }

  v28 = *a2;
  v25 = (v2 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession);
  v7 = *(v2 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_hashtagsEditingSession + 8);
  swift_unknownObjectRetain();
  v8 = sub_21D244BB4(ObjectType);
  v27 = objc_opt_self();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v9 = sub_21DBFA12C();

  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v4;
  v10[4] = v7;
  v10[5] = v8;
  v10[6] = ObjectType;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21D24B424;
  *(v11 + 24) = v10;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_57;
  v5 = _Block_copy(aBlock);
  v26 = v8;
  v12 = ObjectType;

  swift_unknownObjectRetain();

  [v27 withActionName:v9 block:{v5, 0x800000021DC48F20}];

  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_16;
  }

  ObjectType = swift_getObjectType();
  aBlock[0] = 1;
  (*(v7 + 104))(aBlock, ObjectType, v7);
  v5 = &unk_280D0F000;
  v11 = v7;
  v7 = v28;
  if (*(v3 + OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_shouldSkipSavingEditingSession) == 1)
  {
    if (qword_27CE565C8 == -1)
    {
LABEL_7:
      v14 = sub_21DBF84BC();
      __swift_project_value_buffer(v14, qword_27CE5A0D8);
      v15 = sub_21DBF84AC();
      v16 = sub_21DBFAEDC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = v11;
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_21D0C9000, v15, v16, "TTRReminderCellHashtagEditingPresenter: skip saving hashtag editing session", v18, 2u);
        v19 = v18;
        v11 = v17;
        v7 = v28;
        MEMORY[0x223D46520](v19, -1, -1);
      }

      v7 |= 2uLL;
      goto LABEL_10;
    }

LABEL_16:
    swift_once();
    goto LABEL_7;
  }

LABEL_10:
  aBlock[0] = v7;
  (*(v11 + 112))(aBlock, ObjectType, v11);
  *v25 = 0;
  v25[1] = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v3 + 40);
    v21 = swift_getObjectType();
    (*(v20 + 24))(v3, &protocol witness table for TTRReminderCellHashtagEditingPresenter, v4, v11, v21, v20);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  v22 = sub_21D24B424;
LABEL_14:
  *(v3 + v5[302]) = 0;
  v23 = OBJC_IVAR____TtC15RemindersUICore38TTRReminderCellHashtagEditingPresenter_newlyCreatedHashtags;
  swift_beginAccess();
  *(v3 + v23) = MEMORY[0x277D84FA0];

  return sub_21D0D0E88(v22);
}

uint64_t sub_21D24AD90(uint64_t a1)
{
  v2 = sub_21DBF4CAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v29 - v10;
  v12 = a1 < 1;
  v13 = a1 - 1;
  if (v12)
  {
    return 0;
  }

  v14 = sub_21DBFA12C();
  v15 = [v14 rangeOfComposedCharacterSequenceAtIndex_];
  v17 = [v14 substringWithRange_];
  v18 = sub_21DBFA16C();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  v29[0] = v18;
  v29[1] = v20;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  v29[2] = 0;
  v29[3] = v21;
  sub_21DBFA30C();
  if (v22)
  {
    v23 = (v3 + 8);
    while (1)
    {
      sub_21DBF4C1C();
      sub_21DBF4C2C();
      sub_21DBF4BDC();
      if (sub_21DBF4BFC())
      {
        break;
      }

      if (sub_21DBF4BFC())
      {
        sub_21DBF4BFC();
        break;
      }

      v24 = *v23;
      (*v23)(v5, v2);
      v24(v8, v2);
      v24(v11, v2);
      sub_21DBFA30C();
      if (!v25)
      {
        goto LABEL_9;
      }
    }

    v27 = *v23;
    (*v23)(v5, v2);
    v27(v8, v2);
    v27(v11, v2);
    v26 = 1;
  }

  else
  {
LABEL_9:

    v26 = 0;
  }

  return v26;
}

uint64_t sub_21D24B040(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TTRReminderCellHashtagEditingPresenter()
{
  result = qword_280D18150;
  if (!qword_280D18150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D24B260()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_21D24B434(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

void sub_21D24B44C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v33 = a4 + 56;
  v12 = &selRef__setContentViewMarginType_;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_13:
    v16 = v13 | (v6 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    if ([v17 v12[241]])
    {
    }

    else
    {
      v28 = v16;
      v32 = v5;
      v18 = [v17 objectIdentifier];
      v19 = sub_21DBFA16C();
      v21 = v20;

      if (*(a4 + 16) && (sub_21DBFC7DC(), sub_21DBFA27C(), v22 = sub_21DBFC82C(), v23 = -1 << *(a4 + 32), v24 = v22 & ~v23, ((*(v33 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = (*(a4 + 48) + 16 * v24);
          v27 = *v26 == v19 && v26[1] == v21;
          if (v27 || (sub_21DBFC64C() & 1) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v33 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v4 = a3;
        v5 = v32;
        v12 = &selRef__setContentViewMarginType_;
      }

      else
      {
LABEL_23:

        *(a1 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        v5 = v32 + 1;
        v4 = a3;
        v12 = &selRef__setContentViewMarginType_;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_29;
        }
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      sub_21D7BFC3C(a1, a2, v5, v4);
      return;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

unint64_t *sub_21D24B6CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v47 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = sub_21DBF8E0C();
  if (v7 > 0xD)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v39[1] = v3;
    v39[2] = v39;
    v40 = v8;
    MEMORY[0x28223BE20](v10);
    v42 = v39 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v9);
    v9 = 0;
    v11 = 0;
    v12 = v5 + 56;
    v13 = 1 << *(v5 + 32);
    v14 = v13 < 64 ? ~(-1 << v13) : -1;
    v8 = v14 & *(v5 + 56);
    v15 = (v13 + 63) >> 6;
    v46 = a2 + 56;
    v3 = &selRef__setContentViewMarginType_;
    v41 = v5;
    while (v8)
    {
      v16 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_14:
      v19 = v16 | (v11 << 6);
      v20 = *(v5 + 48);
      v45 = v19;
      v21 = *(v20 + 8 * v19);
      if ([v21 v3[241]])
      {
      }

      else
      {
        v43 = v8;
        v44 = v9;
        v22 = [v21 objectIdentifier];
        v23 = sub_21DBFA16C();
        v25 = v24;

        v26 = a2;
        if (*(a2 + 16) && (sub_21DBFC7DC(), sub_21DBFA27C(), v27 = sub_21DBFC82C(), v28 = -1 << *(a2 + 32), v29 = v27 & ~v28, ((*(v46 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
        {
          v30 = ~v28;
          while (1)
          {
            v31 = (*(v26 + 48) + 16 * v29);
            v32 = *v31 == v23 && v31[1] == v25;
            if (v32 || (sub_21DBFC64C() & 1) != 0)
            {
              break;
            }

            v29 = (v29 + 1) & v30;
            if (((*(v46 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          a2 = v26;
          v5 = v41;
          v8 = v43;
          v9 = v44;
          v3 = &selRef__setContentViewMarginType_;
        }

        else
        {
LABEL_24:

          v33 = v44;
          v5 = v41;
          *&v42[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
          v34 = __OFADD__(v33, 1);
          v9 = v33 + 1;
          a2 = v26;
          v3 = &selRef__setContentViewMarginType_;
          v8 = v43;
          if (v34)
          {
            __break(1u);
            goto LABEL_33;
          }
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        v35 = sub_21D7BFC3C(v42, v40, v9, v5);

        return v35;
      }

      v18 = *(v12 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v8 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_31:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

LABEL_33:
  v37 = swift_slowAlloc();
  sub_21DBF8E0C();
  v38 = sub_21D24A40C(v37, v8, v5, a2);

  MEMORY[0x223D46520](v37, -1, -1);

  return v38;
}

uint64_t sub_21D24BA90(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_21D24B6CC(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v27 = MEMORY[0x277D84FA0];
  sub_21DBF8E0C();
  sub_21DBFBD1C();
  if (sub_21DBFBDBC())
  {
    sub_21D0D8CF0(0, &qword_280D0C348);
    v4 = a2 + 56;
    do
    {
      while (1)
      {
        swift_dynamicCast();
        if (![v26 type])
        {
          break;
        }

LABEL_5:

        if (!sub_21DBFBDBC())
        {
          goto LABEL_29;
        }
      }

      v5 = [v26 objectIdentifier];
      v6 = sub_21DBFA16C();
      v8 = v7;

      if (*(a2 + 16))
      {
        sub_21DBFC7DC();
        sub_21DBFA27C();
        v9 = sub_21DBFC82C();
        v10 = -1 << *(a2 + 32);
        v11 = v9 & ~v10;
        if ((*(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = (*(a2 + 48) + 16 * v11);
            v14 = *v13 == v6 && v13[1] == v8;
            if (v14 || (sub_21DBFC64C() & 1) != 0)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_5;
        }
      }

LABEL_16:

      v15 = *(v3 + 16);
      if (*(v3 + 24) <= v15)
      {
        sub_21D8AD2CC(v15 + 1);
      }

      v3 = v27;
      result = sub_21DBFB62C();
      v17 = v27 + 56;
      v18 = -1 << *(v27 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v27 + 56 + 8 * (v19 >> 6))) != 0)
      {
        v21 = __clz(__rbit64((-1 << v19) & ~*(v27 + 56 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = 0;
        v23 = (63 - v18) >> 6;
        do
        {
          if (++v20 == v23 && (v22 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v24 = v20 == v23;
          if (v20 == v23)
          {
            v20 = 0;
          }

          v22 |= v24;
          v25 = *(v17 + 8 * v20);
        }

        while (v25 == -1);
        v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      }

      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v27 + 48) + 8 * v21) = v26;
      ++*(v27 + 16);
    }

    while (sub_21DBFBDBC());
  }

LABEL_29:

  return v3;
}

uint64_t sub_21D24BDFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTRTemplateSavingViewModel.name.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRTemplateSavingViewModel.badge.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 72);
  v10 = *(v1 + 56);
  v2 = v10;
  v11 = v3;
  v12[0] = *(v1 + 88);
  v4 = v12[0];
  *(v12 + 10) = *(v1 + 98);
  v6 = *(v1 + 40);
  v9[0] = *(v1 + 24);
  v5 = v9[0];
  v9[1] = v6;
  *(a1 + 74) = *(v12 + 10);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_21D24BF60(v9, &v8);
}

__n128 TTRTemplateSavingViewModel.init(allowsCommit:name:badge:completedReminderCount:includesCompletedReminders:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *(a4 + 48);
  *(a8 + 56) = *(a4 + 32);
  *(a8 + 72) = v8;
  *(a8 + 88) = *(a4 + 64);
  *(a8 + 98) = *(a4 + 74);
  result = *a4;
  v10 = *(a4 + 16);
  *(a8 + 24) = *a4;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 40) = v10;
  *(a8 + 120) = a5;
  *(a8 + 128) = a6 & 1;
  *(a8 + 129) = a7;
  return result;
}

id TTRTemplateSavingViewModel.init()@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_280D1BAC8;
  v3 = qword_280D1BAD8;
  v4 = unk_280D1BAE0;
  v5 = xmmword_280D1BAE8;
  v6 = byte_280D1BAF8;
  v9 = *MEMORY[0x277D44960];
  v7 = *MEMORY[0x277D44960];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = xmmword_21DC0E710;
  *(a1 + 40) = v2;
  *(a1 + 56) = v3;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  sub_21D0FB960(v2, *(&v2 + 1), v3, v4, v5, *(&v5 + 1), v6);

  return v9;
}

double TTRTemplateSavingViewModel.init(sourceList:name:templateConfiguration:completedReminderCount:allowsCommit:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v15 = *a1;
  if (a1[1])
  {
    v16 = sub_21D0D8CF0(0, &qword_280D0C320);
    v17 = &protocol witness table for REMSmartList;
  }

  else
  {
    v16 = sub_21D0D8CF0(0, &qword_280D17690);
    v17 = &protocol witness table for REMList;
  }

  v29[3] = v16;
  v29[4] = v17;
  v29[0] = v15;
  TTRListDetailBadgeViewModel.init(listProtocol:)(v29, &v30);
  v34[25] = 0;
  v24 = v32;
  v25 = v33;
  v26[0] = *v34;
  v22 = v30;
  v23 = v31;
  *(v26 + 10) = *&v34[10];
  sub_21D24BF60(&v22, v27);
  v18 = [a4 shouldSaveCompleted];

  v27[2] = v32;
  v27[3] = v33;
  v28[0] = *v34;
  *(v28 + 10) = *&v34[10];
  v27[0] = v30;
  v27[1] = v31;
  sub_21D24C27C(v27);
  v19 = v25;
  *(a8 + 56) = v24;
  *(a8 + 72) = v19;
  *(a8 + 88) = v26[0];
  *(a8 + 98) = *(v26 + 10);
  result = *&v22;
  v21 = v23;
  *(a8 + 24) = v22;
  *a8 = a7 & 1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 40) = v21;
  *(a8 + 120) = a5;
  *(a8 + 128) = a6 & 1;
  *(a8 + 129) = v18;
  return result;
}

void destroy for TTRTemplateSavingViewModel(uint64_t a1)
{

  sub_21D1078C0(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);

  sub_21D0FB9F4(v2, v3, v4);
}

uint64_t initializeWithCopy for TTRTemplateSavingViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v12 = *(a2 + 88);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D0FB960(v6, v7, v8, v9, v10, v11, v12);
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  v13 = *(a2 + 96);
  v14 = *(a2 + 104);
  LOBYTE(v7) = *(a2 + 112);
  sub_21D0FB9BC(v13, v14, v7);
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
  *(a1 + 112) = v7;
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t assignWithCopy for TTRTemplateSavingViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  v10 = *(a2 + 88);
  sub_21D0FB960(v4, v5, v6, v7, v8, v9, v10);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  sub_21D1078C0(v11, v12, v13, v14, v15, v16, v17);
  v18 = *(a2 + 96);
  v19 = *(a2 + 104);
  LOBYTE(v6) = *(a2 + 112);
  sub_21D0FB9BC(v18, v19, v6);
  v20 = *(a1 + 96);
  v21 = *(a1 + 104);
  v22 = *(a1 + 112);
  *(a1 + 96) = v18;
  *(a1 + 104) = v19;
  *(a1 + 112) = v6;
  sub_21D0FB9F4(v20, v21, v22);
  *(a1 + 113) = *(a2 + 113);
  v23 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v23;
  *(a1 + 129) = *(a2 + 129);
  return a1;
}

__n128 __swift_memcpy130_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t assignWithTake for TTRTemplateSavingViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  v6 = *(a2 + 88);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v6;
  sub_21D1078C0(v7, v8, v9, v10, v11, v12, v13);
  v14 = *(a2 + 112);
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = *(a1 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v14;
  sub_21D0FB9F4(v15, v16, v17);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 129) = *(a2 + 129);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRTemplateSavingViewModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 130))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRTemplateSavingViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 130) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 130) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall UIMenuElementAttributes.setDisabled(_:)(Swift::Bool a1)
{
  v2 = *v1;
  if (a1)
  {
    if (v2)
    {
      return;
    }

    v3 = v2 | 1;
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      return;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  *v1 = v3;
}

uint64_t TTRCollaborationDetailView.manageSharedListAction.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TTRCollaborationDetailView.init(manageSharedListAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TTRCollaborationDetailView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A178);
  MEMORY[0x28223BE20](v1);
  v3 = &v5[-v2];
  v6 = *v0;
  type metadata accessor for TTRCollaborationDetailView.ActionButton();
  sub_21D24CA18();
  sub_21DBF9BFC();
  sub_21D24CA70();
  sub_21D24CB84();
  sub_21DBF999C();
  return sub_21D0CF7E0(v3, &qword_27CE5A178);
}

int *sub_21D24C85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = qword_280D1BAA8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF516C();
  v9 = v8;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A1A8);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for TTRCollaborationDetailView.ActionButton();
  v11 = (a3 + result[5]);
  *v11 = a1;
  v11[1] = a2;
  v12 = (a3 + result[6]);
  *v12 = v7;
  v12[1] = v9;
  v13 = (a3 + result[7]);
  *v13 = 0xD000000000000022;
  v13[1] = 0x800000021DC44330;
  return result;
}

uint64_t type metadata accessor for TTRCollaborationDetailView.ActionButton()
{
  result = qword_27CE5A1B8;
  if (!qword_27CE5A1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D24CA18()
{
  result = qword_27CE5A180;
  if (!qword_27CE5A180)
  {
    type metadata accessor for TTRCollaborationDetailView.ActionButton();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A180);
  }

  return result;
}

unint64_t sub_21D24CA70()
{
  result = qword_27CE5A188;
  if (!qword_27CE5A188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A178);
    sub_21D24CAF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A188);
  }

  return result;
}

unint64_t sub_21D24CAF4()
{
  result = qword_27CE5A190;
  if (!qword_27CE5A190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A198);
    sub_21D24CA18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A190);
  }

  return result;
}

unint64_t sub_21D24CB84()
{
  result = qword_27CE5A1A0;
  if (!qword_27CE5A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A1A0);
  }

  return result;
}

uint64_t sub_21D24CBF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21DBF96CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A1A8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21D0D3954(v2, &v14 - v9, &qword_27CE5A1A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21DBF94DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21DBFAECC();
    v13 = sub_21DBF984C();
    sub_21DBF846C();

    sub_21DBF96BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_21D24CDF4@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A1D0);
  MEMORY[0x28223BE20](v27);
  v26 = &v25 - v2;
  v28 = sub_21DBF94DC();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A1D8);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v25 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  type metadata accessor for TTRCollaborationDetailView.ActionButton();
  v33 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A1E0);
  sub_21D0D0F1C(&qword_27CE5A1E8, &qword_27CE5A1E0);
  v29 = v13;
  sub_21DBF9B8C();
  sub_21D24CBF4(v8);
  v14 = v28;
  (*(v3 + 104))(v5, *MEMORY[0x277CDF3C0], v28);
  v15 = sub_21DBF94CC();
  v16 = *(v3 + 8);
  v16(v5, v14);
  v16(v8, v14);
  if (v15)
  {
    v17 = [objc_opt_self() tertiarySystemBackgroundColor];
    v34 = sub_21DBF9ABC();
    v18 = sub_21DBF9BCC();
    v20 = v29;
    v19 = v30;
    v21 = v26;
    v22 = v31;
    (*(v30 + 16))(v26, v29, v31);
    *&v21[*(v27 + 36)] = v18;
    sub_21D24DF28();
  }

  else
  {
    v20 = v29;
    v19 = v30;
    v22 = v31;
    (*(v30 + 16))(v25, v29, v31);
    sub_21D0D0F1C(&qword_27CE5A1F0, &qword_27CE5A1D8);
  }

  v23 = sub_21DBF9BCC();
  result = (*(v19 + 8))(v20, v22);
  *v32 = v23;
  return result;
}

uint64_t sub_21D24D200()
{
  type metadata accessor for TTRCollaborationDetailView.ActionButton();
  sub_21D176F0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return sub_21DBF9B3C();
}

uint64_t sub_21D24D298@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A220);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = sub_21DBF982C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  sub_21DBF983C();
  sub_21DBF981C();
  v16 = sub_21DBF99FC();
  KeyPath = swift_getKeyPath();
  v18 = &v8[*(v3 + 44)];
  *v18 = KeyPath;
  v18[1] = v16;
  v19 = *(v10 + 16);
  v19(v12, v15, v9);
  v26 = 1;
  sub_21D0D3954(v8, v5, &qword_27CE5A220);
  v19(a1, v12, v9);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A228);
  v21 = &a1[*(v20 + 48)];
  v22 = v26;
  *v21 = 0;
  v21[8] = v22;
  sub_21D0D3954(v5, &a1[*(v20 + 64)], &qword_27CE5A220);
  sub_21D0CF7E0(v8, &qword_27CE5A220);
  v23 = *(v10 + 8);
  v23(v15, v9);
  sub_21D0CF7E0(v5, &qword_27CE5A220);
  return (v23)(v12, v9);
}

uint64_t sub_21D24D518@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21DBF972C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A210);
  sub_21D24D298((a1 + *(v2 + 44)));
  v3 = sub_21DBF9A7C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A218);
  v6 = (a1 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = v3;
  return result;
}

uint64_t sub_21D24D5B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A178);
  MEMORY[0x28223BE20](v1);
  v3 = &v5[-v2];
  v6 = *v0;
  type metadata accessor for TTRCollaborationDetailView.ActionButton();
  sub_21D24CA18();
  sub_21DBF9BFC();
  sub_21D24CA70();
  sub_21D24CB84();
  sub_21DBF999C();
  return sub_21D0CF7E0(v3, &qword_27CE5A178);
}

uint64_t *sub_21D24D6E0(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A1A8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_21DBF94DC();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
    v9 = a3[5];
    v10 = a3[6];
    v11 = (a1 + v9);
    v12 = (a2 + v9);
    v13 = v12[1];
    *v11 = *v12;
    v11[1] = v13;
    v14 = (a1 + v10);
    v15 = (a2 + v10);
    v16 = v15[1];
    *v14 = *v15;
    v14[1] = v16;
    v17 = a3[7];
    v18 = (a1 + v17);
    v19 = (a2 + v17);
    v20 = v19[1];
    *v18 = *v19;
    v18[1] = v20;

    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t sub_21D24D840(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A1A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_21DBF94DC();
    (*(*(v2 - 8) + 8))(a1, v2);
  }

  else
  {
  }
}

void *sub_21D24D90C(void *a1, void *a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A1A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21DBF94DC();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  v7 = a3[5];
  v8 = a3[6];
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = (a1 + v8);
  v13 = (a2 + v8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = a3[7];
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  v18 = v17[1];
  *v16 = *v17;
  v16[1] = v18;

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *sub_21D24DA20(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D0CF7E0(a1, &qword_27CE5A1A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A1A8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = sub_21DBF94DC();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  v11 = a3[6];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  *v12 = *v13;
  v12[1] = v13[1];
  sub_21DBF8E0C();

  v14 = a3[7];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  *v15 = *v16;
  v15[1] = v16[1];
  sub_21DBF8E0C();

  return a1;
}

char *sub_21D24DB8C(char *a1, char *a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A1A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21DBF94DC();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v8 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v8] = *&a2[v8];
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *sub_21D24DC7C(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D0CF7E0(a1, &qword_27CE5A1A8);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A1A8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = sub_21DBF94DC();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  *&a1[a3[5]] = *&a2[a3[5]];

  v8 = a3[6];
  v9 = &a1[v8];
  v10 = &a2[v8];
  v12 = *v10;
  v11 = *(v10 + 1);
  *v9 = v12;
  *(v9 + 1) = v11;

  v13 = a3[7];
  v14 = &a1[v13];
  v15 = &a2[v13];
  v17 = *v15;
  v16 = *(v15 + 1);
  *v14 = v17;
  *(v14 + 1) = v16;

  return a1;
}

void sub_21D24DDEC()
{
  sub_21D24DE90();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D24DE90()
{
  if (!qword_27CE5A1C8)
  {
    sub_21DBF94DC();
    v0 = sub_21DBF94EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE5A1C8);
    }
  }
}

unint64_t sub_21D24DF28()
{
  result = qword_27CE5A1F8;
  if (!qword_27CE5A1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A1D0);
    sub_21D0D0F1C(&qword_27CE5A1F0, &qword_27CE5A1D8);
    sub_21D0D0F1C(&qword_27CE5A200, &qword_27CE5A208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A1F8);
  }

  return result;
}

uint64_t sub_21D24E00C(uint64_t a1)
{
  v2 = sub_21DBF94DC();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21DBF961C();
}

uint64_t sub_21D24E0D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DBF962C();
  *a1 = result;
  return result;
}

unint64_t sub_21D24E12C()
{
  result = qword_27CE5A230;
  if (!qword_27CE5A230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A218);
    sub_21D0D0F1C(&qword_27CE5A238, &qword_27CE5A240);
    sub_21D0D0F1C(&qword_27CE5A248, &qword_27CE5A250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A230);
  }

  return result;
}

uint64_t sub_21D24E220()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5A258);
  v1 = __swift_project_value_buffer(v0, qword_27CE5A258);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderPrintingInteractor.__allocating_init(dataModelSource:participantAvatarProvider:participantAvatarProviderInvocationQueue:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_21D0D0FD0(a1, v6 + 16);
  sub_21D0D0FD0(a2, v6 + 56);
  *(v6 + 96) = a3;
  return v6;
}

uint64_t TTRReminderPrintingInteractor.init(dataModelSource:participantAvatarProvider:participantAvatarProviderInvocationQueue:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  sub_21D0D0FD0(a1, v3 + 16);
  sub_21D0D0FD0(a2, v3 + 56);
  *(v3 + 96) = a3;
  return v3;
}

void TTRReminderPrintingInteractor.createTemporaryResourceDirectory()(char *a1@<X8>)
{
  v44 = a1;
  v45[2] = *MEMORY[0x277D85DE8];
  v2 = sub_21DBF56BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_21DBF54CC();
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v41 - v9;
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  v45[0] = 0;
  v13 = [v12 rem:v45 createProtectedTemporaryDirectoryIfNeededWithError:?];

  v14 = v45[0];
  if (v13)
  {
    v41[1] = v1;
    sub_21DBF546C();
    v15 = v14;

    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    sub_21DBFBEEC();

    strcpy(v45, "printing-data-");
    HIBYTE(v45[1]) = -18;
    sub_21DBF56AC();
    v16 = sub_21DBF565C();
    v18 = v17;
    (*(v3 + 8))(v5, v2);
    MEMORY[0x223D42AA0](v16, v18);

    v19 = v44;
    sub_21DBF541C();

    v41[0] = v6;
    v20 = *(v6 + 8);
    v21 = v10;
    v22 = v43;
    v20(v21, v43);
    v23 = [v11 defaultManager];
    v24 = sub_21DBF53FC();
    v45[0] = 0;
    LODWORD(v18) = [v23 createDirectoryAtURL:v24 withIntermediateDirectories:0 attributes:0 error:v45];

    if (v18)
    {
      v25 = qword_27CE565D0;
      v26 = v45[0];
      if (v25 != -1)
      {
        swift_once();
      }

      v27 = sub_21DBF84BC();
      __swift_project_value_buffer(v27, qword_27CE5A258);
      v28 = v42;
      (*(v41[0] + 16))(v42, v19, v22);
      v29 = v22;
      v30 = sub_21DBF84AC();
      v31 = sub_21DBFAEDC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v45[0] = v33;
        *v32 = 136315138;
        v34 = sub_21DBF549C();
        v35 = v28;
        v37 = v36;
        v20(v35, v29);
        v38 = sub_21D0CDFB4(v34, v37, v45);

        *(v32 + 4) = v38;
        _os_log_impl(&dword_21D0C9000, v30, v31, "Created temporary resource directory for printing {url: %s}", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x223D46520](v33, -1, -1);
        MEMORY[0x223D46520](v32, -1, -1);
      }

      else
      {

        v20(v28, v29);
      }
    }

    else
    {
      v40 = v45[0];
      sub_21DBF52DC();

      swift_willThrow();
      v20(v19, v22);
    }
  }

  else
  {
    v39 = v45[0];
    sub_21DBF52DC();

    swift_willThrow();
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRReminderPrintingInteractor.fetchListTree()(RemindersUICore::TTRRemindersPrintingListTree *__return_ptr retstr)
{
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  (*(v3 + 16))(v2, v3);
}

uint64_t TTRReminderPrintingInteractor.fetchReminders(with:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A270);
  swift_allocObject();
  sub_21DBF8E0C();
  return sub_21DBF911C();
}

void sub_21D24E9DC(void (*a1)(id *), uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_21D0D8CF0(0, &qword_280D17880);
  v5 = sub_21DBFA5DC();
  v13 = 0;
  v6 = [a3 fetchRemindersWithObjectIDs:v5 error:&v13];

  v7 = v13;
  if (v6)
  {
    sub_21D0D8CF0(0, &qword_280D17860);
    sub_21D0D65DC(&qword_280D17870, &qword_280D17880);
    v8 = sub_21DBF9E6C();
    v9 = v7;

    v13 = v8;
    v14 = 0;
    a1(&v13);
  }

  else
  {
    v10 = v13;
    v11 = sub_21DBF52DC();

    swift_willThrow();
    v13 = v11;
    v14 = 1;
    v12 = v11;
    a1(&v13);
  }
}

uint64_t TTRReminderPrintingInteractor.generateAndSaveAvatars(for:toDirectoryAt:size:scale:rightToLeft:)(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6)
{
  v59 = a3;
  v73 = a2;
  v74 = a1;
  v72 = sub_21DBF54CC();
  v70 = *(v72 - 8);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v69 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v48 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A278);
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v15 = v48 - v14;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A280);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v17 = v48 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A288);
  v61 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v54 = v48 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A290);
  v20 = *(v19 - 8);
  v63 = v19;
  v64 = v20;
  MEMORY[0x28223BE20](v19);
  v55 = v48 - v21;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A298);
  v68 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v60 = v48 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A2A0);
  v24 = *(v23 - 8);
  v66 = v23;
  v67 = v24;
  MEMORY[0x28223BE20](v23);
  v62 = v48 - v25;
  *&v75[0] = 1;
  sub_21DBF90EC();
  *&v75[0] = *(v6 + 96);
  v26 = *&v75[0];
  v49 = sub_21DBFB0DC();
  v27 = *(v49 - 8);
  v50 = *(v27 + 56);
  v51 = v27 + 56;
  v50(v13, 1, 1, v49);
  v48[1] = sub_21D0D8CF0(0, &qword_280D1B900);
  sub_21D0D0F1C(&qword_27CE5A2A8, &qword_27CE5A278);
  sub_21D0D65DC(&qword_280D17800, &qword_280D1B900);
  v28 = v26;
  v29 = v52;
  sub_21DBF936C();
  sub_21D0CF7E0(v13, &unk_27CE5F250);

  (*(v53 + 8))(v15, v29);
  sub_21D0D32E4(v6 + 56, v75);
  v30 = swift_allocObject();
  *(v30 + 16) = a4;
  *(v30 + 24) = a5;
  *(v30 + 32) = a6;
  *(v30 + 40) = v59;
  sub_21D0D0FD0(v75, v30 + 48);
  *(v30 + 88) = v74;
  sub_21DBF8E0C();
  sub_21DBF8FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A2B0);
  sub_21D0D0F1C(&qword_27CE5A2B8, &qword_27CE5A280);
  sub_21D0D0F1C(&qword_27CE5A2C0, &qword_27CE5A2B0);
  v31 = v54;
  v32 = v56;
  sub_21DBF93DC();

  (*(v57 + 8))(v17, v32);
  sub_21DBF60DC();
  v33 = sub_21DBF60CC();
  *&v75[0] = v33;
  v50(v13, 1, 1, v49);
  sub_21D0D0F1C(&qword_27CE5A2C8, &qword_27CE5A288);
  v34 = v55;
  v35 = v58;
  sub_21DBF936C();
  sub_21D0CF7E0(v13, &unk_27CE5F250);

  (*(v61 + 8))(v31, v35);
  v37 = v69;
  v36 = v70;
  v38 = v72;
  (*(v70 + 16))(v69, v73, v72);
  v39 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v40 = swift_allocObject();
  (*(v36 + 32))(v40 + v39, v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A2D0);
  sub_21D0D0F1C(&qword_27CE5A2D8, &qword_27CE5A290);
  v41 = v60;
  v42 = v63;
  sub_21DBF927C();

  (*(v64 + 8))(v34, v42);
  *(swift_allocObject() + 16) = v74;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A2E0);
  v43 = v62;
  v44 = v65;
  sub_21DBF8F6C();

  (*(v68 + 8))(v41, v44);
  sub_21D0D0F1C(&qword_27CE5A2E8, &qword_27CE5A2A0);
  v45 = v66;
  v46 = sub_21DBF920C();
  (*(v67 + 8))(v43, v45);
  return v46;
}

uint64_t sub_21D24F5A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_21DBF54CC();
  v43 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v42 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_21DBF56BC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = a1;
    v20 = UIImagePNGRepresentation(v19);
    if (v20)
    {
      v38 = v19;
      v39 = a3;
      v21 = v20;
      v22 = sub_21DBF551C();
      v40 = v23;
      v41 = v22;

      v44 = 0x2D726174617661;
      v45 = 0xE700000000000000;
      sub_21DBF56AC();
      v24 = sub_21DBF565C();
      v26 = v25;
      (*(v15 + 8))(v18, v14);
      MEMORY[0x223D42AA0](v24, v26);

      MEMORY[0x223D42AA0](1735290926, 0xE400000000000000);
      (*(v43 + 16))(v8, a2, v9);
      v27 = *(v43 + 56);
      v27(v8, 0, 1, v9);
      v28 = v40;
      sub_21DBF539C();
      v29 = v41;

      sub_21D0CF7E0(v8, &qword_27CE5EA20);
      sub_21DBF552C();
      sub_21D17B8A8(v29, v28);

      v35 = v39;
      (*(v43 + 32))(v39, v13, v9);
      return (v27)(v35, 0, 1, v9);
    }

    if (qword_27CE565D0 != -1)
    {
      swift_once();
    }

    v30 = sub_21DBF84BC();
    __swift_project_value_buffer(v30, qword_27CE5A258);
    v31 = sub_21DBF84AC();
    v32 = sub_21DBFAEBC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_21D0C9000, v31, v32, "Failed to encode image in PNG", v33, 2u);
      MEMORY[0x223D46520](v33, -1, -1);
    }
  }

  v34 = *(v43 + 56);

  return v34(a3, 1, 1, v9, v16);
}

uint64_t sub_21D24FBFC@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  sub_21D0D32E4(a2, v15);
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  *(v13 + 32) = a7;
  *(v13 + 40) = a1;
  sub_21D0D0FD0(v15, v13 + 48);
  *(v13 + 88) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A2B0);
  swift_allocObject();
  sub_21DBF8E0C();
  result = sub_21DBF911C();
  *a4 = result;
  return result;
}

uint64_t sub_21D24FCE0(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, double a6, double a7, double a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A300);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21DC08D00;
  *(v17 + 32) = a8;
  v18 = a4[3];
  v19 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v18);
  *v24 = a6;
  *&v24[1] = a7;
  v24[2] = v17;
  v25 = a3;
  v23 = 1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21D22D130;
  *(v20 + 24) = v16;
  v21 = *(v19 + 8);

  v21(a5, v24, &v23, sub_21D22D170, v20, v18, v19);
}

void sub_21D24FE60(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[2];
  *a3 = a1[1];
  a3[1] = v6;
  if (*(v5 + 16))
  {
    v7 = *(v5 + 32);
    v8 = v7;
  }

  else
  {
    v7 = 0;
  }

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65260) + 48);
  sub_21DBF8E0C();
  sub_21D24F5A0(v7, a2, a3 + v9);
}

uint64_t sub_21D24FEF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65260);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v50 - v9);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65270);
  MEMORY[0x28223BE20](v54);
  v12 = (&v50 - v11);
  v13 = *a1;
  v60 = MEMORY[0x277D84F98];
  v14 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A2E0);
  result = sub_21DBF9EAC();
  v16 = v60;
  v53 = v14;
  if (v14)
  {
    v17 = 0;
    v18 = (a2 + 32);
    v52 = v13;
    do
    {
      v19 = v18[4];
      v59[3] = v18[3];
      v59[4] = v19;
      v20 = v18[2];
      v59[1] = v18[1];
      v59[2] = v20;
      v59[0] = *v18;
      v21 = *(v13 + 16);
      if (v17 == v21)
      {
        break;
      }

      if (v17 >= v21)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        result = sub_21DBFC70C();
        __break(1u);
        return result;
      }

      v22 = v13 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
      v57 = *(v55 + 72);
      v23 = v22 + v57 * v17;
      v24 = (v12 + *(v54 + 48));
      v25 = v18[3];
      v12[2] = v18[2];
      v12[3] = v25;
      v12[4] = v18[4];
      v26 = v18[1];
      *v12 = *v18;
      v12[1] = v26;
      sub_21D25164C(v23, v24);
      v27 = v12[4];
      v64 = v12[3];
      v65 = v27;
      v28 = v12[2];
      v62 = v12[1];
      v63 = v28;
      v61 = *v12;
      v29 = v24[1];
      v30 = *(v56 + 48);
      *v10 = *v24;
      v10[1] = v29;
      sub_21D0D523C(v24 + v30, v10 + v30, &qword_27CE5EA20);
      v31 = v10;
      v32 = v10;
      v33 = v7;
      sub_21D25164C(v32, v7);
      sub_21D1D9B34(v59, &v58);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v16;
      v36 = sub_21D17E454(&v61);
      v37 = v16[2];
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_18;
      }

      v40 = v35;
      if (v16[3] >= v39)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21D2217E0();
        }
      }

      else
      {
        sub_21D217ABC(v39, isUniquelyReferenced_nonNull_native);
        v41 = sub_21D17E454(&v61);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_20;
        }

        v36 = v41;
      }

      v7 = v33;
      v10 = v31;
      if (v40)
      {
        sub_21D1D9B90(&v61);
        v16 = v58;
        sub_21D2516BC(v7, v58[7] + v36 * v57);
        result = sub_21D0CF7E0(v31, &qword_27CE65260);
      }

      else
      {
        v16 = v58;
        v58[(v36 >> 6) + 8] |= 1 << v36;
        v43 = (v16[6] + 80 * v36);
        *v43 = v61;
        v44 = v62;
        v45 = v63;
        v46 = v65;
        v43[3] = v64;
        v43[4] = v46;
        v43[1] = v44;
        v43[2] = v45;
        sub_21D0D523C(v7, v16[7] + v36 * v57, &qword_27CE65260);
        result = sub_21D0CF7E0(v31, &qword_27CE65260);
        v47 = v16[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_19;
        }

        v16[2] = v49;
      }

      ++v17;
      v18 += 5;
      v13 = v52;
    }

    while (v53 != v17);
  }

  *v51 = v16;
  return result;
}

uint64_t TTRReminderPrintingInteractor.generateAndSaveThumbnail(forFileAt:toDirectoryAt:filename:size:scale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v30 = a4;
  v31 = a3;
  v13 = sub_21DBF54CC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v30 - v19;
  v21 = *(v14 + 16);
  v21(&v30 - v19, a2, v13, v18);
  (v21)(v16, a1, v13);
  v22 = *(v14 + 80);
  v23 = (v22 + 32) & ~v22;
  v24 = (v15 + v22 + v23) & ~v22;
  v25 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v31;
  *(v26 + 24) = a4;
  v27 = *(v14 + 32);
  v27(v26 + v23, v20, v13);
  v27(v26 + v24, v16, v13);
  v28 = (v26 + v25);
  *v28 = a5;
  v28[1] = a6;
  *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A2F0);
  swift_allocObject();
  sub_21DBF8E0C();
  return sub_21DBF911C();
}

uint64_t sub_21D250508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, double a7, double a8, double a9)
{
  v51 = a5;
  v52 = a6;
  v57 = a1;
  v58 = a2;
  v14 = sub_21DBF843C();
  v55 = *(v14 - 8);
  v56 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v49 - v18;
  v20 = sub_21DBF54CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v54 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v53 = &v49 - v24;
  MEMORY[0x28223BE20](v25);
  v59 = &v49 - v26;
  aBlock = a3;
  v61 = a4;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](1735290926, 0xE400000000000000);
  v27 = *(v21 + 16);
  v27(v19, v51, v20);
  (*(v21 + 56))(v19, 0, 1, v20);
  sub_21DBF539C();

  sub_21D0CF7E0(v19, &qword_27CE5EA20);
  v28 = v52;
  sub_21DBF547C();
  v29 = objc_allocWithZone(MEMORY[0x277CDAAD8]);
  v30 = v28;
  v31 = sub_21DBF53FC();
  v51 = [v29 initWithFileAtURL:v31 size:4 scale:a7 representationTypes:{a8, a9}];

  v50 = [objc_opt_self() sharedGenerator];
  v32 = v59;
  v49 = sub_21DBF53FC();
  sub_21DBF83AC();
  sub_21DBF836C();
  (*(v55 + 8))(v16, v56);
  v56 = sub_21DBFA12C();

  v33 = v53;
  v27(v53, v30, v20);
  v34 = v54;
  v27(v54, v32, v20);
  v35 = *(v21 + 80);
  v36 = (v35 + 16) & ~v35;
  v37 = (v22 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v35 + 16 + v37) & ~v35;
  v39 = swift_allocObject();
  v40 = *(v21 + 32);
  v40(v39 + v36, v33, v20);
  v41 = (v39 + v37);
  v42 = v58;
  *v41 = v57;
  v41[1] = v42;
  v40(v39 + v38, v34, v20);
  v64 = sub_21D2515A0;
  v65 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_21D11E5E4;
  v63 = &block_descriptor_8;
  v43 = _Block_copy(&aBlock);

  v45 = v50;
  v44 = v51;
  v46 = v49;
  v47 = v56;
  [v50 saveBestRepresentationForRequest:v51 toFileAtURL:v49 withContentType:v56 completionHandler:v43];
  _Block_release(v43);

  return (*(v21 + 8))(v59, v20);
}

uint64_t sub_21D2509EC(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A2F8);
  MEMORY[0x28223BE20](v8);
  v10 = (&v14 - v9);
  sub_21DBF545C();
  if (a1)
  {
    *v10 = a1;
    swift_storeEnumTagMultiPayload();
    v11 = a1;
  }

  else
  {
    v12 = sub_21DBF54CC();
    (*(*(v12 - 8) + 16))(v10, a5, v12);
    swift_storeEnumTagMultiPayload();
  }

  a3(v10);
  return sub_21D0CF7E0(v10, &qword_27CE5A2F8);
}

uint64_t TTRReminderPrintingInteractor.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return v0;
}

uint64_t TTRReminderPrintingInteractor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_21D250BD0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_21D250C3C(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A270);
  swift_allocObject();
  sub_21DBF8E0C();
  return sub_21DBF911C();
}

uint64_t sub_21D250D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v30 = a4;
  v31 = a3;
  v13 = sub_21DBF54CC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v30 - v19;
  v21 = *(v14 + 16);
  v21(&v30 - v19, a2, v13, v18);
  (v21)(v16, a1, v13);
  v22 = *(v14 + 80);
  v23 = (v22 + 32) & ~v22;
  v24 = (v15 + v22 + v23) & ~v22;
  v25 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v31;
  *(v26 + 24) = a4;
  v27 = *(v14 + 32);
  v27(v26 + v23, v20, v13);
  v27(v26 + v24, v16, v13);
  v28 = (v26 + v25);
  *v28 = a5;
  v28[1] = a6;
  *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A2F0);
  swift_allocObject();
  sub_21DBF8E0C();
  return sub_21DBF911C();
}

void sub_21D250F14(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = sub_21DBF54CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_21DBF53FC();
  v24[0] = 0;
  v9 = [v7 removeItemAtURL:v8 error:v24];

  if (v9)
  {
    v10 = qword_27CE565D0;
    v11 = v24[0];
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE5A258);
    (*(v4 + 16))(v6, a1, v3);
    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAEDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23[1] = v1;
      v24[0] = v16;
      v17 = v16;
      *v15 = 136315138;
      v18 = sub_21DBF549C();
      v20 = v19;
      (*(v4 + 8))(v6, v3);
      v21 = sub_21D0CDFB4(v18, v20, v24);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_21D0C9000, v13, v14, "Removed temporary resource directory for printing {url: %s}", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x223D46520](v17, -1, -1);
      MEMORY[0x223D46520](v15, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    v22 = v24[0];
    sub_21DBF52DC();

    swift_willThrow();
  }
}

uint64_t sub_21D251224@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_21DBF54CC() - 8);
  v6 = *a1;
  v8[2] = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  result = sub_21D173CE8(sub_21D25172C, v8, v6);
  *a2 = result;
  return result;
}

uint64_t objectdestroy_11Tm()
{
  v1 = sub_21DBF54CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_21D2514D0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_21DBF54CC() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + 16);
  v13 = *(v2 + 24);
  v14 = (v2 + v10);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v2 + v11);

  return sub_21D250508(a1, a2, v12, v13, (v2 + v7), (v2 + v9), v15, v16, v17);
}

uint64_t sub_21D2515A0(void *a1)
{
  v3 = *(sub_21DBF54CC() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + v6 + 8);

  return sub_21D2509EC(a1, v1 + v5, v7, v8, v1 + ((v4 + 16 + v6) & ~v4));
}

uint64_t sub_21D25164C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D2516BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);

  return swift_deallocObject();
}

id TTRAccountEditor.addAndSaveNewList(name:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
  }

  v3 = *(v2 + 16);
  sub_21DBF8E0C();
  v4 = [v3 saveRequest];
  v5 = sub_21DBFA12C();

  v6 = [v4 addListWithName:v5 toAccountChangeItem:v3];

  v7 = [v6 objectID];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = v7;
  sub_21D182F80(sub_21D2552BC, v8);

  return v9;
}

void TTRAccountEditor.removeList(_:)(void *a1)
{
  v2 = v1;
  v43[1] = *MEMORY[0x277D85DE8];
  if ([a1 isGroup])
  {
    if (qword_27CE565D8 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5A308);
    v5 = a1;
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAECC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = [v5 objectID];
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_21D0C9000, v6, v7, "Trying to delete a group with removeList; should use removeGroup instead {groupID: %@}", v8, 0xCu);
      sub_21D0CF7E0(v9, &unk_27CE60070);
      MEMORY[0x223D46520](v9, -1, -1);
      MEMORY[0x223D46520](v8, -1, -1);
    }
  }

  v11 = *(v2 + 16);
  v12 = [v11 saveRequest];
  v13 = [v12 updateList_];

  v14 = [a1 objectID];
  v15 = [a1 parentListID];
  v16 = [v11 saveRequest];
  v17 = [v16 store];

  v43[0] = 0;
  v18 = [v17 fetchDefaultListWithError_];

  if (v43[0])
  {
    v19 = v43[0];

    swift_willThrow();
LABEL_9:
    v20 = 0;
LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  if (!v18)
  {
    goto LABEL_9;
  }

  v20 = [v18 objectID];

  if (!v20)
  {
    goto LABEL_10;
  }

  sub_21D0D8CF0(0, &qword_280D17880);
  v32 = v14;
  v21 = v20;
  v33 = sub_21DBFB63C();

  if (v33)
  {
    v21 = v21;
  }

  else
  {
    v20 = 0;
  }

LABEL_11:
  v22 = [v13 removeFromAccountAllowingUndo];
  if (v22)
  {
    v23 = v22;
    v41 = v21;
    if (v20)
    {
      v24 = [objc_opt_self() daemonUserDefaults];
      [v24 deletePreferredDefaultListID];
    }

    v25 = [a1 remObjectID];
    v26 = [objc_opt_self() daemonUserDefaults];
    v27 = [v25 stringRepresentation];
    if (!v27)
    {
      sub_21DBFA16C();
      v27 = sub_21DBFA12C();
    }

    [v26 removeMuteNotificationOptionsForSharedList_];

    v28 = swift_allocObject();
    v28[2] = v14;
    v28[3] = v15;
    v28[4] = v23;
    v28[5] = v20;
    v29 = v20;
    v20 = v14;
    v30 = v15;
    v31 = v23;
    sub_21D182F80(sub_21D2553A8, v28);
  }

  else
  {
    if (qword_27CE565D8 != -1)
    {
      swift_once();
    }

    v34 = sub_21DBF84BC();
    __swift_project_value_buffer(v34, qword_27CE5A308);
    v35 = v14;
    v36 = sub_21DBF84AC();
    v37 = sub_21DBFAEBC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v35;
      *v39 = v35;
      v40 = v35;
      _os_log_impl(&dword_21D0C9000, v36, v37, "Unable to obtain an undo object for removing list {listID: %@}", v38, 0xCu);
      sub_21D0CF7E0(v39, &unk_27CE60070);
      MEMORY[0x223D46520](v39, -1, -1);
      MEMORY[0x223D46520](v38, -1, -1);
    }

    else
    {
    }
  }
}

void TTRAccountEditor.removeCustomSmartList(_:)(void *a1)
{
  v3 = [a1 smartListType];
  v4 = sub_21DBFA16C();
  v6 = v5;
  if (v4 == sub_21DBFA16C() && v6 == v7)
  {

LABEL_12:
    v23 = *(v1 + 16);
    v24 = [v23 saveRequest];
    osloga = [v24 updateSmartList_];

    v25 = [a1 objectID];
    v26 = [osloga removeFromParentAllowingUndoWithAccountChangeItem:v23];
    if (v26)
    {
      v27 = v26;
      v28 = swift_allocObject();
      *(v28 + 16) = v25;
      *(v28 + 24) = v27;
      v36 = v25;
      v29 = v27;
      sub_21D182F80(sub_21D2553B4, v28);
    }

    else
    {
      if (qword_27CE565D8 != -1)
      {
        swift_once();
      }

      v30 = sub_21DBF84BC();
      __swift_project_value_buffer(v30, qword_27CE5A308);
      v31 = v25;
      v32 = sub_21DBF84AC();
      v33 = sub_21DBFAEBC();

      if (!os_log_type_enabled(v32, v33))
      {

        v22 = osloga;
        goto LABEL_19;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v35 = v31;
      v36 = v31;
      _os_log_impl(&dword_21D0C9000, v32, v33, "Unable to obtain an undo object for removing smart list {smartListID: %@}", v34, 0xCu);
      sub_21D0CF7E0(v35, &unk_27CE60070);
      MEMORY[0x223D46520](v35, -1, -1);
      MEMORY[0x223D46520](v34, -1, -1);
    }

    v22 = v36;
    goto LABEL_19;
  }

  v9 = sub_21DBFC64C();

  if (v9)
  {
    goto LABEL_12;
  }

  if (qword_27CE565D8 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE5A308);
  v11 = a1;
  oslog = sub_21DBF84AC();
  v12 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39 = v15;
    *v13 = 138412546;
    v16 = [v11 objectID];
    *(v13 + 4) = v16;
    *v14 = v16;
    *(v13 + 12) = 2080;
    v17 = [v11 smartListType];
    v18 = sub_21DBFA16C();
    v20 = v19;

    v21 = sub_21D0CDFB4(v18, v20, &v39);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_21D0C9000, oslog, v12, "Failed to remove smart list. Only custom smart list can be removed. {smartList.objectID: %@, smartList.smartListType: %s}", v13, 0x16u);
    sub_21D0CF7E0(v14, &unk_27CE60070);
    MEMORY[0x223D46520](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223D46520](v15, -1, -1);
    MEMORY[0x223D46520](v13, -1, -1);
  }

  v22 = oslog;
LABEL_19:
}

id TTRAccountEditor.addAndSaveNewList(using:name:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = [v6 saveRequest];
  v8 = [v7 addListUsingTemplate:a1 toAccountChangeItem:v6];

  if (v8)
  {
    if (a3)
    {
      v9 = sub_21DBFA12C();
      [v8 setName_];
    }

    v10 = [v8 objectID];
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v12 = v10;
    sub_21D182F80(sub_21D255898, v11);
  }

  else
  {
    if (qword_27CE565D8 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_27CE5A308);

    v14 = a1;
    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAEBC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      v19 = [v6 objectID];
      *(v17 + 4) = v19;
      *v18 = v19;
      *(v17 + 12) = 2112;
      v20 = [v14 objectID];
      *(v17 + 14) = v20;
      v18[1] = v20;
      _os_log_impl(&dword_21D0C9000, v15, v16, "TTRAccountEditor: failed to add list using template {accountID: %@, templateID: %@}", v17, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v18, -1, -1);
      MEMORY[0x223D46520](v17, -1, -1);
    }

    return 0;
  }

  return v12;
}

id TTRAccountEditor.addAndSaveNewList(usingREMListRepresentationOfPublicTemplate:)(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [v3 saveRequest];
  v5 = [v4 addListUsingPublicTemplateWithREMListRepresentation:a1 toAccountChangeItem:v3];

  if (v5)
  {
    v6 = [v5 objectID];
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = v6;
    sub_21D182F80(sub_21D255898, v7);
  }

  else
  {
    if (qword_27CE565D8 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_27CE5A308);

    v10 = a1;
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAEBC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      v15 = [v3 objectID];
      *(v13 + 4) = v15;
      *v14 = v15;
      *(v13 + 12) = 2112;
      v16 = [v10 objectID];
      *(v13 + 14) = v16;
      v14[1] = v16;
      _os_log_impl(&dword_21D0C9000, v11, v12, "TTRAccountEditor: failed to add list using public template {accountID: %@, templateID: %@}", v13, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    return 0;
  }

  return v8;
}

uint64_t sub_21D2528AC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5A308);
  v1 = __swift_project_value_buffer(v0, qword_27CE5A308);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

__n128 TTRAccountEditor.__allocating_init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  result = *a2;
  v8 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 40) = v8;
  *(v6 + 56) = *(a2 + 32);
  *(v6 + 64) = a3;
  return result;
}

uint64_t TTRAccountEditor.init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  v4 = *(a2 + 16);
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 56) = *(a2 + 32);
  *(v3 + 64) = a3;
  return v3;
}

id TTRAccountEditor.addNewList()()
{
  v1 = *(v0 + 16);
  v2 = [v1 saveRequest];
  v3 = sub_21DBFA12C();
  v4 = [v2 addListWithName:v3 toAccountChangeItem:v1];

  return v4;
}

uint64_t TTRAccountEditor.move(list:topLevelPosition:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_21D255460(a1, a2, v2);
}

void TTRAccountEditor.addNewGroup(accountGroupContext:)()
{
  v1 = *(v0 + 16);
  v2 = [v1 groupContext];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 saveRequest];
    v5 = sub_21DBFA12C();
    [v4 addGroupWithName:v5 toAccountGroupContextChangeItem:v3];
  }

  else
  {
    if (qword_27CE565D8 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE5A308);
    v7 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v7);
    sub_21DAEAB00("Tried to add group on account that doesn't support groups", 57, 2);
    __break(1u);
  }
}

id TTRAccountEditor.store.getter()
{
  v1 = [*(v0 + 16) saveRequest];
  v2 = [v1 store];

  return v2;
}

void sub_21D252C68(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  sub_21D252D14(a2, a3, a4);
  if (a5)
  {
    v6 = objc_opt_self();
    v7 = a5;
    v8 = [v6 daemonUserDefaults];
    [v8 setPreferredDefaultListID_];
  }
}

void sub_21D252D14(void *a1, void *a2, uint64_t a3)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v6 = *(v3 + 16);
  v7 = [v6 saveRequest];
  v8 = [v6 saveRequest];
  v9 = [v8 store];

  v38[0] = 0;
  v10 = [v9 fetchListIncludingMarkedForDeleteWithObjectID:a1 error:v38];

  if (v10)
  {
    if (!a2)
    {
      v22 = v38[0];
      goto LABEL_7;
    }

    v11 = v38[0];
    v12 = a2;
    v13 = [v6 saveRequest];
    v14 = [v13 store];

    v38[0] = 0;
    v15 = [v14 fetchListIncludingMarkedForDeleteWithObjectID:v12 error:v38];

    if (v15)
    {
      v16 = v38[0];
      v17 = [v7 updateList_];
      v18 = [v7 updateList_];
      v19 = [v17 sublistContext];
      [v19 addListChangeItem_];

LABEL_7:
      if ([v10 isShared])
      {
        if ([v10 isOwnedByMe])
        {
          v23 = [v7 updateList_];
          v24 = [v23 shareeContext];
          [v24 removeAllSharees];

          v10 = v23;
        }
      }

      [v6 undeleteListWithID:a1 usingUndo:a3];
      v25 = swift_allocObject();
      *(v25 + 16) = a1;
      v26 = a1;
      sub_21D182F80(sub_21D255840, v25);

      return;
    }

    v27 = v38[0];
    v21 = sub_21DBF52DC();

    swift_willThrow();
  }

  else
  {
    v20 = v38[0];
    v21 = sub_21DBF52DC();

    swift_willThrow();
  }

  if (qword_27CE565D8 != -1)
  {
    swift_once();
  }

  v28 = sub_21DBF84BC();
  __swift_project_value_buffer(v28, qword_27CE5A308);
  v29 = v21;
  v30 = sub_21DBF84AC();
  v31 = sub_21DBFAEBC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v32 = 136315138;
    swift_getErrorValue();
    v34 = sub_21DBFC75C();
    v36 = sub_21D0CDFB4(v34, v35, v38);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_21D0C9000, v30, v31, "Failed to fetch deleted list and/or parent list for undo remove list {error: %s}", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x223D46520](v33, -1, -1);
    MEMORY[0x223D46520](v32, -1, -1);
  }

  else
  {
  }
}

void TTRAccountEditor.removeGroup(_:sublists:keepSublists:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [a1 objectID];
  if ([a1 isGroup] && (sub_21D0D8CF0(0, &qword_280D17680), v8 = objc_msgSend(a1, sel_accountID), v9 = *(v3 + 16), v10 = objc_msgSend(v9, sel_objectID), v11 = sub_21DBFB63C(), v8, v10, (v11 & 1) != 0))
  {
    v48 = v7;
    v12 = [v9 saveRequest];
    v13 = &off_278331000;
    v51 = a1;
    oslog = [v12 updateList:a1];
    v49 = a2;
    v14 = *(a2 + 16);
    if (v14)
    {
      v15 = (v49 + 40);
      v16 = v14;
      v50 = v12;
      do
      {
        v20 = *v15;
        v19 = *(v15 - 1);
        if (v20)
        {
          v17 = [v12 updateSmartList:v19];
          if ((a3 & 1) == 0 && ![v19 isPinned])
          {
            v21 = [v51 account];
            v22 = [v12 updateAccount:v21];
            v23 = v9;
            v24 = a3;
            v25 = v13;
            v26 = v22;

            v18 = [v17 removeFromParentAllowingUndoWithAccountChangeItem_];
            v13 = v25;
            a3 = v24;
            v9 = v23;
            v12 = v50;
            goto LABEL_6;
          }
        }

        else
        {
          v17 = [v12 v13[487]];
          if ((a3 & 1) == 0 && ![v19 isPinned])
          {
            v18 = [v17 removeFromAccountAllowingUndo];
            goto LABEL_6;
          }
        }

        v17 = v17;
        [v9 insertMergeableOrderingNode:v17 afterMergeableOrderingNode:0];
        v18 = v19;
        v19 = v17;
LABEL_6:

        v15 += 2;
        --v16;
      }

      while (v16);
    }

    v32 = [oslog removeFromAccountAllowingUndo];
    if (v32)
    {
      v33 = v32;
      v34 = MEMORY[0x277D84F90];
      if (v14)
      {
        v53 = MEMORY[0x277D84F90];
        sub_21DBFC01C();
        v35 = (v49 + 32);
        do
        {
          v36 = *v35;
          v35 += 2;
          v37 = [v36 objectID];
          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
          --v14;
        }

        while (v14);
        v34 = v53;
      }

      v38 = swift_allocObject();
      *(v38 + 16) = v48;
      *(v38 + 24) = v34;
      *(v38 + 32) = v33;
      *(v38 + 40) = a3 & 1;
      v39 = v48;
      v40 = v33;
      sub_21D182F80(sub_21D2555A0, v38);

      v12 = v40;
      oslog = v39;
    }

    else
    {
      if (qword_27CE565D8 != -1)
      {
        swift_once();
      }

      v41 = sub_21DBF84BC();
      __swift_project_value_buffer(v41, qword_27CE5A308);
      v42 = v48;
      v43 = sub_21DBF84AC();
      v44 = sub_21DBFAEBC();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        *(v45 + 4) = v42;
        *v46 = v42;
        v47 = v42;
        _os_log_impl(&dword_21D0C9000, v43, v44, "Unable to obtain an undo object for removing list {listID: %@}", v45, 0xCu);
        sub_21D0CF7E0(v46, &unk_27CE60070);
        MEMORY[0x223D46520](v46, -1, -1);
        MEMORY[0x223D46520](v45, -1, -1);

        v12 = oslog;
        oslog = v47;
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_27CE565D8 != -1)
    {
      swift_once();
    }

    v27 = sub_21DBF84BC();
    __swift_project_value_buffer(v27, qword_27CE5A308);
    v12 = v7;
    oslog = sub_21DBF84AC();
    v28 = sub_21DBFAECC();

    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v12;
      *v30 = v12;
      v31 = v12;
      _os_log_impl(&dword_21D0C9000, oslog, v28, "The input REMList is not a group belonging to this account {listID: %@}", v29, 0xCu);
      sub_21D0CF7E0(v30, &unk_27CE60070);
      MEMORY[0x223D46520](v30, -1, -1);
      MEMORY[0x223D46520](v29, -1, -1);
      v12 = oslog;
      oslog = v31;
    }
  }
}

void sub_21D2537B8(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 16);
  v10 = [v9 saveRequest];
  v11 = sub_21D254604(a1, a2);
  v22 = v21;
  v48 = a4;
  v49 = v11;
  v52 = [v10 updateList_];
  [v9 addListChangeItem_];
  [v9 undeleteListWithID:a1 usingUndo:a3];
  v23 = a1;
  v24 = v9;
  v50 = a2;
  if (v22 >> 62)
  {
    v25 = sub_21DBFBD7C();
  }

  else
  {
    v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v52;
  v27 = &off_278331000;
  if (v25)
  {
    v56 = v22 & 0xC000000000000001;
    v53 = v22 + 32;
    v54 = v22 & 0xFFFFFFFFFFFFFF8;
    v51 = v9;
    v55 = v22;
    while (!__OFSUB__(v25--, 1))
    {
      if (v56)
      {
        v30 = MEMORY[0x223D44740](v25, v22);
      }

      else
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v25 >= *(v54 + 16))
        {
          goto LABEL_31;
        }

        v30 = *(v53 + 8 * v25);
      }

      v31 = v30;
      v32 = [v10 v27[487]];
      v33 = [v26 sublistContext];
      if (v33)
      {
        v28 = v33;
        [v33 addListChangeItem_];
      }

      else
      {
        if (qword_27CE565D8 != -1)
        {
          swift_once();
        }

        v34 = sub_21DBF84BC();
        __swift_project_value_buffer(v34, qword_27CE5A308);
        *(swift_allocObject() + 16) = v23;
        v35 = v23;
        v36 = sub_21DBF84AC();
        v37 = sub_21DBFAECC();
        if (os_log_type_enabled(v36, v37))
        {

          v38 = v23;
          v39 = v10;
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v58 = v41;
          *v40 = 138412290;
          v59[0] = (v40 + 4);
          sub_21D255310(v59, &v58, v57, j___s15RemindersUICore16TTRAccountEditorC10changeItemSo016REMAccountChangeF0Cvg);

          _os_log_impl(&dword_21D0C9000, v36, v37, "Unexpected: undoing delete of a group which has no sublistContext {groupID: %@}", v40, 0xCu);
          sub_21D0CF7E0(v41, &unk_27CE60070);
          v42 = v41;
          v26 = v52;
          MEMORY[0x223D46520](v42, -1, -1);
          v43 = v40;
          v10 = v39;
          v23 = v38;
          v24 = v51;
          MEMORY[0x223D46520](v43, -1, -1);
        }

        else
        {
        }

        v22 = v55;
        [v24 addListChangeItem_];
        v27 = &off_278331000;
      }

      if (!v25)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    swift_once();
    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE5A308);
    v13 = v23;
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAEBC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v59[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_21DBFC75C();
      v20 = sub_21D0CDFB4(v18, v19, v59);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_21D0C9000, v14, v15, "Failed to fetch group or sublists for undo remove group {error: %s}", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x223D46520](v17, -1, -1);
      MEMORY[0x223D46520](v16, -1, -1);

      return;
    }

    v44 = v23;
  }

  else
  {
LABEL_26:

    v45 = v26;
    v46 = swift_allocObject();
    *(v46 + 16) = v23;
    *(v46 + 24) = v50;
    *(v46 + 32) = v48 & 1;
    v47 = v23;
    sub_21DBF8E0C();
    sub_21D182F80(sub_21D2557CC, v46);

    v44 = v49;
  }
}

id TTRAccountEditor.addAndSaveNewCustomSmartList(name:filter:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = *(v4 + 16);
  v7 = [v6 saveRequest];
  v8 = sub_21DBFA12C();
  v9 = [v7 addCustomSmartListWithName:v8 toAccountChangeItem:v6 smartListObjectID:0];

  sub_21D1826C4(v4 + 24, v17);
  type metadata accessor for TTRSmartListEditor();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = v17[1];
  *(v10 + 24) = v17[0];
  *(v10 + 40) = v11;
  *(v10 + 56) = v18;
  *(v10 + 64) = 0;
  v12 = v9;
  TTRSmartListEditor.edit(filter:)(a3);
  v13 = [v12 objectID];
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = v13;
  sub_21D182F80(sub_21D2555D4, v14);

  return v15;
}

uint64_t sub_21D253EDC(uint64_t a1, void *a2, uint64_t a3)
{
  [*(*a1 + 16) undeleteSmartListWithID:a2 usingUndo:a3];
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = a2;
  sub_21D182F80(sub_21D2557EC, v4);
}

void TTRAccountEditor.edit(pinnedListOrdering:undoPolicy:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = [*(v2 + 16) pinnedListsContext];
  if (v5)
  {
    v11 = v5;
    sub_21D0D8CF0(0, &qword_27CE59830);
    sub_21DBF8E0C();
    v6 = sub_21DBFB1FC();
    [v11 updateManualOrdering:v6];

    if (v4)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v4;
      *(v7 + 24) = a1;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D182F80(sub_21D255628, v7);
    }
  }

  else
  {
    if (qword_27CE565D8 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE5A308);
    v11 = sub_21DBF84AC();
    v9 = sub_21DBFAEBC();
    if (os_log_type_enabled(v11, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21D0C9000, v11, v9, "TTRAccountEditor: Tried to edit pinnedListOrdering on account that doesn't support pinned lists", v10, 2u);
      MEMORY[0x223D46520](v10, -1, -1);
    }
  }
}

uint64_t sub_21D254134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  sub_21DBF8E0C();
  TTRAccountEditor.edit(pinnedListOrdering:undoPolicy:)(a2, &v5);
}

void TTRAccountEditor.edit(templateOrdering:)(uint64_t a1)
{
  v3 = [*(v1 + 16) templatesContextChangeItem];
  if (v3)
  {
    oslog = v3;
    [v3 updateManualOrdering:a1];
  }

  else
  {
    if (qword_27CE565D8 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5A308);
    oslog = sub_21DBF84AC();
    v5 = sub_21DBFAEBC();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v5, "TTRAccountEditor: Tried to edit templateOrdering on account that doesn't support templates", v6, 2u);
      MEMORY[0x223D46520](v6, -1, -1);
    }
  }
}

void TTRAccountEditor.removeTemplate(_:)(uint64_t a1)
{
  v3 = [*(v1 + 16) saveRequest];
  v4 = [v3 updateTemplate_];
  [v4 removeFromParentAccount];
}

void sub_21D25433C(uint64_t a1, void *a2, SEL *a3, void (*a4)(id), uint64_t (*a5)(), const char *a6)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v11 = [*(*a1 + 16) saveRequest];
  v12 = [v11 store];

  v29[0] = 0;
  v13 = [v12 *a3];

  if (v13)
  {
    v14 = v29[0];
    a4(v13);
  }

  else
  {
    v15 = v29[0];
    v16 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE565D8 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_27CE5A308);
    v18 = v16;
    v19 = a2;
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAEBC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29[0] = v24;
      *v22 = 136315394;
      swift_getErrorValue();
      v25 = a5();
      v27 = sub_21D0CDFB4(v25, v26, v29);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2112;
      *(v22 + 14) = v19;
      *v23 = v19;
      v28 = v19;
      _os_log_impl(&dword_21D0C9000, v20, v21, a6, v22, 0x16u);
      sub_21D0CF7E0(v23, &unk_27CE60070);
      MEMORY[0x223D46520](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223D46520](v24, -1, -1);
      MEMORY[0x223D46520](v22, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_21D254604(uint64_t a1, unint64_t a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = [*(v2 + 16) saveRequest];
  v6 = [v5 store];

  v19 = 0;
  v7 = [v6 fetchListIncludingMarkedForDeleteWithObjectID:a1 error:&v19];

  v8 = v19;
  if (v7)
  {
    v19 = MEMORY[0x277D84F90];
    if (a2 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
    {
      v16 = v7;
      v10 = v8;
      if (!i)
      {
        break;
      }

      v11 = 0;
      v8 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x223D44740](v11, a2);
        }

        else
        {
          if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v12 = *(a2 + 8 * v11 + 32);
        }

        v13 = v12;
        v7 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v18 = v12;
        sub_21D254848(&v18, v17, v20);

        if (v20[0])
        {
          MEMORY[0x223D42D80]();
          if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          v8 = v19;
        }

        ++v11;
        if (v7 == i)
        {
          return v16;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    return v16;
  }

  else
  {
    v14 = v19;
    sub_21DBF52DC();

    return swift_willThrow();
  }
}

void sub_21D254848(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = [*(a2 + 16) saveRequest];
  v6 = [v5 store];

  v19[0] = 0;
  v7 = [v6 fetchListIncludingMarkedForDeleteWithObjectID:v4 error:v19];

  v8 = v19[0];
  if (v7)
  {
    *a3 = v7;
    v9 = v8;
  }

  else
  {
    v10 = v19[0];
    v11 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE565D8 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE5A308);
    v13 = v4;
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAEBC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_21D0C9000, v14, v15, "Failed to fetch sublist. Skipping. {listID: %@}", v16, 0xCu);
      sub_21D0CF7E0(v17, &unk_27CE60070);
      MEMORY[0x223D46520](v17, -1, -1);
      MEMORY[0x223D46520](v16, -1, -1);
    }

    *a3 = 0;
  }
}

void sub_21D254A90(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = sub_21D254604(a2, a3);
  v7 = v6;
  v25 = v5;
  if (v6 >> 62)
  {
    v8 = sub_21DBFBD7C();
    v5 = v25;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_16:
    v24 = v25;

    v23 = v25;
    v10 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_3:
  v26 = MEMORY[0x277D84F90];
  v9 = v5;
  sub_21D18EB44(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
    return;
  }

  v10 = v26;
  if ((v7 & 0xC000000000000001) != 0)
  {
    v11 = 0;
    do
    {
      v12 = MEMORY[0x223D44740](v11, v7);
      v27 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v12;
        sub_21D18EB44((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v10 = v27;
      }

      ++v11;
      *(v10 + 16) = v14 + 1;
      v15 = v10 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = 0;
    }

    while (v8 != v11);
  }

  else
  {
    v17 = 32;
    do
    {
      v28 = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      v20 = *(v7 + v17);
      if (v19 >= v18 >> 1)
      {
        v22 = v20;
        sub_21D18EB44((v18 > 1), v19 + 1, 1);
        v20 = v22;
        v10 = v28;
      }

      *(v10 + 16) = v19 + 1;
      v21 = v10 + 16 * v19;
      *(v21 + 32) = v20;
      *(v21 + 40) = 0;
      v17 += 8;
      --v8;
    }

    while (v8);
  }

  v23 = v25;
LABEL_17:
  TTRAccountEditor.removeGroup(_:sublists:keepSublists:)(v23, v10, a4 & 1);
}

void sub_21D254E34(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D45A88];

  sub_21D25433C(a1, a2, &selRef_fetchListWithObjectID_error_, TTRAccountEditor.removeList(_:), v2, "TTRAccountEditor: failed to get list to undo new list {error: %s, listID: %@}");
}

uint64_t TTRAccountEditor.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + 24, &unk_27CE60D80);

  return swift_deallocClassInstance();
}

id static TTRAccountEditor.store(for:)(void *a1)
{
  v1 = [a1 store];

  return v1;
}

__n128 TTRAccountEditor.__allocating_init(item:saveRequest:undoContext:unitTest_oneShotSyncSaveForUndo:)(void *a1, id a2, uint64_t a3, char a4)
{
  v8 = [a2 updateAccount_];

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  result = *a3;
  v11 = *(a3 + 16);
  *(v9 + 24) = *a3;
  *(v9 + 40) = v11;
  *(v9 + 56) = *(a3 + 32);
  *(v9 + 64) = a4;
  return result;
}

__n128 sub_21D255010@<Q0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v10 = [a1 updateAccount_];

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  result = *a3;
  v13 = *(a3 + 16);
  *(v11 + 24) = *a3;
  *(v11 + 40) = v13;
  *(v11 + 56) = *(a3 + 32);
  *(v11 + 64) = a4;
  *a5 = v11;
  return result;
}

id static TTRAccountEditor.changeItem(with:in:)(uint64_t a1, id a2)
{
  v2 = [a2 _trackedAccountChangeItemForObjectID_];

  return v2;
}

{
  v2 = [a2 updateAccount_];

  return v2;
}

id static TTRAccountEditor.id(for:)(void *a1)
{
  v1 = [a1 objectID];

  return v1;
}

id TTRAccountEditor.id.getter()
{
  v1 = [*(v0 + 16) objectID];

  return v1;
}

__n128 TTRAccountEditor.__allocating_init(changeItem:undoContext:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v6;
  *(v4 + 56) = *(a2 + 32);
  *(v4 + 64) = 0;
  return result;
}

id sub_21D25520C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_21D255630(*a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_21D25523C(void *a1, id a2)
{
  v2 = [a2 _trackedAccountChangeItemForObjectID_];

  return v2;
}

id sub_21D25527C(void *a1, id a2)
{
  v2 = [a2 updateAccount_];

  return v2;
}

void sub_21D255310(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;

    *a2 = v8 + 1;
  }

  else
  {
    v9 = v6;
  }
}

uint64_t sub_21D2553BC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = &selRef_insertMergeableOrderingNode_afterMergeableOrderingNode_;
      v6 = a2;
      goto LABEL_8;
    }

    v6 = 0;
    if (a2)
    {
      v5 = &selRef_insertMergeableOrderingNode_afterMergeableOrderingNode_;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = a2;
  }

  v5 = &selRef_insertMergeableOrderingNode_beforeMergeableOrderingNode_;
LABEL_8:
  v7 = *(a4 + 16);
  sub_21D2557D8(a2, a3);
  [v7 *v5];

  return swift_unknownObjectRelease();
}

uint64_t sub_21D255460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = &selRef_insertMergeableOrderingNode_afterMergeableOrderingNode_;
      v7 = v4;
      goto LABEL_8;
    }

    v7 = 0;
    if (v4)
    {
      v6 = &selRef_insertMergeableOrderingNode_afterMergeableOrderingNode_;
      goto LABEL_8;
    }
  }

  else
  {
    v7 = v4;
  }

  v6 = &selRef_insertMergeableOrderingNode_beforeMergeableOrderingNode_;
LABEL_8:
  v8 = *(a3 + 16);
  sub_21D2557D8(v4, v5);
  [v8 *v6];

  return swift_unknownObjectRelease();
}

uint64_t _s15RemindersUICore16TTRAccountEditorC4move4list2to19positionWithinGroupySo24REMMergeableOrderingNode_p_So31REMListSublistContextChangeItemCAA28TTRRelativeInsertionPositionOySoAH_pGtF_0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  if (*(a3 + 8))
  {
    if (v6 == 1)
    {
      v7 = &selRef_insertMergeableOrderingNode_afterMergeableOrderingNode_;
      v8 = *a3;
      goto LABEL_8;
    }

    v8 = 0;
    if (v5)
    {
      v7 = &selRef_insertMergeableOrderingNode_afterMergeableOrderingNode_;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = *a3;
  }

  v7 = &selRef_insertMergeableOrderingNode_beforeMergeableOrderingNode_;
LABEL_8:
  sub_21D2557D8(v5, v6);
  [a2 *v7];

  return swift_unknownObjectRelease();
}

id sub_21D255630(uint64_t a1, id a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [a2 fetchAccountWithObjectID:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_21D2556F0(uint64_t a1)
{
  result = sub_21D255718();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_21D255718()
{
  result = qword_27CE5A320;
  if (!qword_27CE5A320)
  {
    type metadata accessor for TTRAccountEditor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A320);
  }

  return result;
}

uint64_t sub_21D2557D8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t TTREarlyAlertModel.init(count:unit:isCustom:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

void static TTREarlyAlertModel.noneEarlyAlert.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t TTREarlyAlertModel.approximateIntervalInSeconds.getter()
{
  v1 = *v0;
  if ((*v0 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  result = 0;
  v3 = v0[1];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
LABEL_15:
      v6 = (v1 * 24) >> 64;
      v7 = 24 * v1;
      if (v6 != v7 >> 63)
      {
        __break(1u);
        goto LABEL_25;
      }

      result = 3600 * v7;
      v1 = (v7 * 3600) >> 64;
      if (v1 == result >> 63)
      {
        return result;
      }

      __break(1u);
LABEL_18:
      v8 = 7 * v1;
      if ((v1 * 7) >> 64 == (7 * v1) >> 63)
      {
        if ((7 * v1 * 24) >> 64 != (168 * v1) >> 63)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        result = 604800 * v1;
        v1 = (168 * v1 * 3600) >> 64;
        if (v1 == (86400 * v8) >> 63)
        {
          return result;
        }

        __break(1u);
        goto LABEL_22;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v3 == 3)
    {
      goto LABEL_18;
    }

    if (v3 != 4)
    {
      return result;
    }

    v4 = 30 * v1;
    if ((v1 * 30) >> 64 != (30 * v1) >> 63)
    {
      goto LABEL_27;
    }

    v5 = 720 * v1;
    if ((v4 * 24) >> 64 != (24 * v4) >> 63)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v3 = 3600;
    result = 3600 * v5;
    v1 = (v5 * 3600) >> 64;
    if (v1 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_22:
    result = 60 * v1;
    if ((v1 * 60) >> 64 == (60 * v1) >> 63)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (v3 == 1)
  {
    result = 3600 * v1;
    v1 = (v1 * 3600) >> 64;
    if (v1 != result >> 63)
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t static TTREarlyAlertModel.noneOptionTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t (*sub_21D255BAC(uint64_t (*result)(uint64_t, uint64_t)))(uint64_t, uint64_t)
{
  v2 = *v1;
  if (*v1 < 0)
  {
    v3 = __OFSUB__(0, v2);
    v4 = -v2;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v5 = v1[1];

      return result(v4, v5);
    }
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  return result;
}

uint64_t static TTREarlyAlertModel.customOptionTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t TTREarlyAlertModel.localizedOptionTitle.getter()
{
  if (*(v0 + 16) == 1)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_11;
  }

  v1 = *v0;
  if ((*v0 & 0x8000000000000000) == 0)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

LABEL_11:
    swift_once();
    return sub_21DBF516C();
  }

  result = -v1;
  if (__OFSUB__(0, v1))
  {
    __break(1u);
  }

  else
  {
    v3 = v0[1];

    return _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO25earlyAlertBeforeCountText5count12intervalUnitSSSi_So015REMDueDateDeltaN0VtFZ_0(result, v3);
  }

  return result;
}

uint64_t static TTREarlyAlertModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    return *(a1 + 16) ^ *(a2 + 16) ^ 1u;
  }

  return 0;
}

uint64_t TTREarlyAlertModel.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x223D44FA0](*v0);
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC7FC();
}

uint64_t TTREarlyAlertModel.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  MEMORY[0x223D44FA0](v2);
  sub_21DBFC7FC();
  return sub_21DBFC82C();
}

uint64_t sub_21D256000()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  MEMORY[0x223D44FA0](v2);
  sub_21DBFC7FC();
  return sub_21DBFC82C();
}

uint64_t sub_21D25606C()
{
  v1 = v0[1];
  MEMORY[0x223D44FA0](*v0);
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC7FC();
}

uint64_t sub_21D2560B4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  MEMORY[0x223D44FA0](v2);
  sub_21DBFC7FC();
  return sub_21DBFC82C();
}

uint64_t sub_21D25611C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    return *(a1 + 16) ^ *(a2 + 16) ^ 1u;
  }

  return 0;
}

__n128 TTREarlyAlertModel.id.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 sub_21D25616C@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

unint64_t sub_21D256184()
{
  result = qword_27CE5A328;
  if (!qword_27CE5A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A328);
  }

  return result;
}

unint64_t sub_21D2561DC()
{
  result = qword_27CE5A330;
  if (!qword_27CE5A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTREarlyAlertModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderCellTextHighlights.Highlight(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21D2562D8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F428);
  v1 = __swift_project_value_buffer(v0, qword_280D0F428);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRTimeZoneOverrideObserver.__allocating_init(userDefaults:setDefaultTimeZone:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  TTRTimeZoneOverrideObserver.init(userDefaults:setDefaultTimeZone:)(a1, a2, a3);
  return v6;
}

uint64_t TTRTimeZoneOverrideObserver.deinit()
{

  return v0;
}

uint64_t TTRTimeZoneOverrideObserver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TTRBoardColumnItemClusterCollection.ItemPositionInCluster.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRBoardColumnItemClusterCollection.numberOfReducedSpacing(above:)(uint64_t a1)
{
  v2 = *v1;
  v4[2] = a1;
  return sub_21D2566E4(0, sub_21D2566C8, v4, v2);
}

uint64_t sub_21D256614@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  result = sub_21DBF5D0C();
  if (result < v6)
  {
    v9 = 0;
LABEL_11:
    v10 = __OFADD__(v4, v9);
    v11 = v4 + v9;
    if (!v10)
    {
      *a3 = v11;
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  result = sub_21DBF5D0C();
  if (v6 < result)
  {
    v9 = v7 - 1;
    if (!__OFSUB__(v7, 1))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  result = sub_21DBF5CFC();
  if (__OFSUB__(result, v5))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!__OFSUB__(v7, 1))
  {
    v9 = (result - v5) & ~((result - v5) >> 63);
    if (v7 - 1 < v9)
    {
      v9 = v7 - 1;
    }

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21D2566E4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v17 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v9 = *(a4 + 48);
    v15 = *(a4 + 32);
    v16 = v9;
    a2(&v14, &v17, &v15);
    if (!v4)
    {
      for (i = (a4 + 72); ; i = v11)
      {
        v5 = v14;
        v17 = v14;
        if (!--v6)
        {
          break;
        }

        v11 = i + 3;
        v12 = *i;
        v15 = *(i - 1);
        v16 = v12;
        a2(&v14, &v17, &v15);
      }
    }
  }

  return v5;
}

uint64_t TTRBoardColumnItemClusterCollection.totalNumberOfReducedSpacing.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v3 = (*v0 + 48);
  while (1)
  {
    v4 = *v3;
    v3 += 3;
    v5 = v4 - 1;
    if (__OFSUB__(v4, 1))
    {
      break;
    }

    v6 = __OFADD__(result, v5);
    result += v5;
    if (v6)
    {
      goto LABEL_9;
    }

    if (!--v1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

void TTRBoardColumnItemClusterCollection.positionInCluster(forItemAt:)(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 48);
    while (v5 < *(v3 + 16))
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = *(v6 - 2);
      if (sub_21DBF5D0C() == v9)
      {
        v10 = sub_21DBF5CFC();
        if (v10 >= v8)
        {
          if (__OFSUB__(v10, v8))
          {
            goto LABEL_18;
          }

          if (v10 - v8 < v7)
          {
            if (sub_21DBF5CFC() == v8)
            {
              v11 = 0;
              goto LABEL_12;
            }

            v12 = sub_21DBF5CFC();
            if (!__OFSUB__(v7 + v8, 1))
            {
              if (v12 == v7 + v8 - 1)
              {
                v11 = 2;
              }

              else
              {
                v11 = 1;
              }

              goto LABEL_12;
            }

LABEL_19:
            __break(1u);
            return;
          }
        }
      }

      ++v5;
      v6 += 3;
      if (v4 == v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_11:
  v11 = 3;
LABEL_12:
  *a1 = v11;
}

void TTRBoardColumnItemClusterCollection.insert(_:)()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v0 = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_23:
      v1 = sub_21D256BA0(v1);
    }

    v4 = 0;
    v5 = 0;
    *v0 = v1;
    do
    {
      if (v5 >= *(v1 + 2))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v6 = *&v1[v4 + 32];
      v7 = *&v1[v4 + 40];
      v8 = *&v1[v4 + 48];
      if (v6 == sub_21DBF5D0C())
      {
        if (v7 >= sub_21DBF5CFC())
        {
          v9 = __OFADD__(v7++, 1);
          if (v9)
          {
            goto LABEL_21;
          }
        }

        else if (sub_21DBF5CFC() < v8 + v7)
        {
          v9 = __OFADD__(v8++, 1);
          if (v9)
          {
            goto LABEL_22;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_21D256BA0(v1);
        }

        if (v5 >= *(v1 + 2))
        {
          goto LABEL_20;
        }

        v10 = &v1[v4];
        *(v10 + 4) = v6;
        *(v10 + 5) = v7;
        *(v10 + 6) = v8;
      }

      ++v5;
      v4 += 24;
    }

    while (v2 != v5);
    *v0 = v1;
  }
}

void TTRBoardColumnItemClusterCollection.delete(_:)()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v0 = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_21:
      v1 = sub_21D256BA0(v1);
    }

    v4 = 0;
    v5 = 0;
    *v0 = v1;
    do
    {
      if (v5 >= *(v1 + 2))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v7 = *&v1[v4 + 32];
      v8 = *&v1[v4 + 40];
      v9 = *&v1[v4 + 48];
      if (v7 == sub_21DBF5D0C())
      {
        if (sub_21DBF5CFC() >= v8)
        {
          if (sub_21DBF5CFC() < v9 + v8 && __OFSUB__(v9--, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          --v8;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_21D256BA0(v1);
        }

        if (v5 >= *(v1 + 2))
        {
          goto LABEL_19;
        }

        v6 = &v1[v4];
        *(v6 + 4) = v7;
        *(v6 + 5) = v8;
        *(v6 + 6) = v9;
      }

      ++v5;
      v4 += 24;
    }

    while (v2 != v5);
    *v0 = v1;
  }
}

unint64_t sub_21D256BB8()
{
  result = qword_27CE5A360;
  if (!qword_27CE5A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A360);
  }

  return result;
}

uint64_t sub_21D256DD0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_21DBFBD7C();
  }

  return sub_21DBFBF9C();
}

uint64_t TTRLazilyLoadedViewModelUpdater.viewModelState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = type metadata accessor for TTRLazilyLoadedViewModelState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t TTRLazilyLoadedViewModelUpdater.__allocating_init()()
{
  v0 = swift_allocObject();
  TTRLazilyLoadedViewModelUpdater.init()();
  return v0;
}

uint64_t TTRLazilyLoadedViewModelUpdater.init()()
{
  (*(*(*(*v0 + 88) - 8) + 56))(v0 + *(*v0 + 104), 1, 1, *(*v0 + 88));
  type metadata accessor for TTRLazilyLoadedViewModelState();
  swift_storeEnumTagMultiPayload();
  return v0;
}

BOOL TTRLazilyLoadedViewModelUpdater.processReceivedViewModel(_:changeInfo:loadedViewModel:)(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v47 = a4;
  v48 = a3;
  v7 = *v4;
  v45 = v7;
  v46 = a1;
  v8 = *(v7 + 88);
  v9 = sub_21DBFBA8C();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v51 = &v42 - v10;
  v52 = *(v8 - 8);
  MEMORY[0x28223BE20](v11);
  v42 = &v42 - v12;
  v50 = v8;
  v13 = type metadata accessor for TTRLazilyLoadedViewModelState();
  v49 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = *(v7 + 80);
  v17 = sub_21DBFBA8C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  v24 = *(type metadata accessor for TTRViewModelObserver.ValueChangeInfo() + 28);
  v53 = v18;
  v54 = v23;
  v25 = *(v18 + 16);
  v26 = v23;
  v27 = v17;
  v25(v26, &a2[v24], v17);
  if ((*a2 & 1) == 0)
  {
    v25(v20, v54, v17);
    v28 = *(v16 - 8);
    if ((*(v28 + 48))(v20, 1, v16) == 1)
    {
      (*(v53 + 8))(v20, v17);
      (*(*(v45 + 96) + 8))(v55, v16);
    }

    else
    {
      v29 = *(v45 + 96);
      v45 = v17;
      v30 = *(v29 + 8);
      v30(v55, v16, v29);
      v31 = v55[0];
      (*(v28 + 8))(v20, v16);
      v30(v55, v16, v29);
      v27 = v45;
      if (v31 == v55[0])
      {
        goto LABEL_6;
      }
    }
  }

  swift_beginAccess();
  TTRLazilyLoadedViewModelState.transitionToOutdated()();
  swift_endAccess();
LABEL_6:
  v32 = *(*v5 + 104);
  swift_beginAccess();
  v33 = v49;
  (*(v49 + 16))(v15, &v5[v32], v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v36 = v51;
    v35 = v52;
    v37 = v50;
    if (EnumCaseMultiPayload == 1)
    {
      EnumCaseMultiPayload = (*(v33 + 8))(v15, v13);
    }
  }

  else
  {
    v37 = v50;
    v38 = v15[*(swift_getTupleTypeMetadata2() + 48)];
    v35 = v52;
    EnumCaseMultiPayload = (*(v52 + 8))(v15, v37);
    v36 = v51;
    if (v38)
    {
      v39 = 0;
      goto LABEL_14;
    }
  }

  v48(EnumCaseMultiPayload);
  if ((*(v35 + 48))(v36, 1, v37) == 1)
  {
    (*(v43 + 8))(v36, v44);
    swift_beginAccess();
    v39 = TTRLazilyLoadedViewModelState.transitionToNone()();
    swift_endAccess();
  }

  else
  {
    v40 = v42;
    (*(v35 + 32))(v42, v36, v37);
    swift_beginAccess();
    TTRLazilyLoadedViewModelState.transitionToValid(with:)(v40, v13);
    swift_endAccess();
    (*(v35 + 8))(v40, v37);
    v39 = 1;
  }

LABEL_14:
  (*(v53 + 8))(v54, v27);
  return v39;
}

Swift::Void __swiftcall TTRLazilyLoadedViewModelUpdater.prepareForCellReuse()()
{
  swift_beginAccess();
  type metadata accessor for TTRLazilyLoadedViewModelState();
  TTRLazilyLoadedViewModelState.transitionToInvalid()();
  swift_endAccess();
}

uint64_t TTRLazilyLoadedViewModelUpdater.deinit()
{
  v1 = *(*v0 + 104);
  v2 = type metadata accessor for TTRLazilyLoadedViewModelState();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRLazilyLoadedViewModelUpdater.__deallocating_deinit()
{
  v1 = *(*v0 + 104);
  v2 = type metadata accessor for TTRLazilyLoadedViewModelState();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21D2577DC()
{
  result = type metadata accessor for TTRLazilyLoadedViewModelState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D2578BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIReminderDetailPresenterConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRIReminderDetailPresenterConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderHashtagData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderHashtagData(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_21D257A70(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 >> 6;
  if (v3 >> 6 <= 1)
  {
    if (v4)
    {
      sub_21D257D78(v2, v3);
      v5 = 0;
      v8 = 0;
      v7 = 0;
      v14 = 0;
      v6 = 1;
      goto LABEL_35;
    }

    v5 = 0;
    v6 = 0;
    v14 = 1;
    goto LABEL_6;
  }

  if (v4 == 2)
  {
    v5 = 0;
    v6 = 1;
    v14 = 1;
LABEL_6:
    v7 = v2 & 1;
    v8 = 512;
    goto LABEL_35;
  }

  v6 = v2 != 4 || v3 != 192;
  if (__PAIR128__(((v2 >= 3) + v3 + 63), v2 - 3) >= 4)
  {
    if (__PAIR128__(((v2 != 0) + v3 + 63), v2 - 1) >= 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = 256;
    }
  }

  else
  {
    v8 = 512;
  }

  v5 = (__PAIR128__(((v2 != 0) + v3 + 63), v2 - 1) < 2) << 16;
  v14 = 1;
  if (__PAIR128__(-64, 2) < __PAIR128__(v3, v2))
  {
    v7 = __PAIR128__(-64, 4) >= __PAIR128__(v3, v2) || v3 == 192 && v2 == 5;
LABEL_35:
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v12 = v7 << 32;
    return (v12 | (v14 << 24)) + v5 + v8 + v6;
  }

  if (!(v2 | v3 ^ 0xC0) || (v3 == 192 ? (v10 = v2 == 1) : (v10 = 0), v10))
  {
    v7 = 1;
    goto LABEL_35;
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v12 = 0x100000000;
  return (v12 | (v14 << 24)) + v5 + v8 + v6;
}

void sub_21D257D78(id a1, char a2)
{
  if ((a2 & 0xC0) == 0x40)
  {
  }
}

unint64_t sub_21D257DC0()
{
  result = qword_27CE5A368;
  if (!qword_27CE5A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A368);
  }

  return result;
}

unint64_t sub_21D257E18()
{
  result = qword_27CE5A370;
  if (!qword_27CE5A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A370);
  }

  return result;
}

unint64_t sub_21D257E70()
{
  result = qword_27CE5A378;
  if (!qword_27CE5A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A378);
  }

  return result;
}

uint64_t TTRTreeStorageItem.treeItemDescription.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v15 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  (*(v12 + 16))(v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A380);
  if (swift_dynamicCast())
  {
    sub_21D0D0FD0(v15, v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v13 = sub_21DBFC5BC();
    __swift_destroy_boxed_opaque_existential_0(v17);
    return v13;
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_21D2581AC(v15);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    (*(a2 + 24))(a1, a2);
    sub_21DBFC5EC();
    (*(v6 + 8))(v8, AssociatedTypeWitness);
    return v17[0];
  }
}

uint64_t sub_21D2581AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D25821C(uint64_t a1, uint64_t a2, char a3)
{
  v10 = a1;
  v11 = a2;
  v5 = a3 & 1;
  v12 = a3 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A380);
  if (swift_dynamicCast())
  {
    sub_21D0D0FD0(v8, v13);
    __swift_project_boxed_opaque_existential_1(v13, v15);
    v6 = sub_21DBFC5BC();
    __swift_destroy_boxed_opaque_existential_0(v13);
    return v6;
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_21D2581AC(v8);
    v13[0] = a1;
    v13[1] = a2;
    v14 = v5;

    return sub_21DBFA1AC();
  }
}

uint64_t sub_21D258310(void *a1, unsigned __int8 a2)
{
  v8 = a1;
  v9 = a2;
  sub_21D105AA4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A380);
  if (swift_dynamicCast())
  {
    sub_21D0D0FD0(v6, &v10);
    __swift_project_boxed_opaque_existential_1(&v10, v12);
    v4 = sub_21DBFC5BC();
    __swift_destroy_boxed_opaque_existential_0(&v10);
    return v4;
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_21D2581AC(v6);
    v10 = a1;
    v11 = a2;
    sub_21D105AA4(a1, a2);
    return sub_21DBFA1AC();
  }
}

uint64_t TTRTreeStorageNodeAuxiliaryData.treeAuxiliaryDataDescription.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v8 = *(v3 + 16);
  v8(v12 - v9, v1, a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A380);
  if (swift_dynamicCast())
  {
    sub_21D0D0FD0(v12, v14);
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v10 = sub_21DBFC5BC();
    __swift_destroy_boxed_opaque_existential_0(v14);
    return v10;
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_21D2581AC(v12);
    (v8)(v5, v1, a1);
    return sub_21DBFA1AC();
  }
}

uint64_t sub_21D258640()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F3D8);
  v1 = __swift_project_value_buffer(v0, qword_280D0F3D8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRICollectionViewItemCollapsedStates.setCollapsed<A>(_:for:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    return (*(a5 + 72))(a2, a4, a6, a3);
  }

  else
  {
    return (*(a5 + 80))(a2, a4, a6, a3);
  }
}

uint64_t TTRICollectionViewItemCollapsedStates.toggleCollapsed(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 48))();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_21D23CE60(AssociatedTypeWitness, AssociatedTypeWitness);
  v8 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v9 = sub_21DBFA60C();
  (*(v8 + 16))(v10, a1, AssociatedTypeWitness);
  sub_21D23C8B4();
  v14 = v9;
  v11 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  if (v6)
  {
    (*(a3 + 80))(&v14, v11, WitnessTable, a2, a3);
  }

  else
  {
    (*(a3 + 72))(&v14, v11, WitnessTable, a2, a3);
  }
}

uint64_t sub_21D25895C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D25A948;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D2589F0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A920;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t TTRICollectionViewCollapsedStatesPresenterCapability.collapsedStateDidChange.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRICollectionViewCollapsedStatesPresenterCapability.collapsedStatesPersistence.getter()
{
  sub_21D25A450();
}

uint64_t TTRICollectionViewCollapsedStatesPresenterCapability.collapsedStatesPersistence.setter(uint64_t a1)
{
  sub_21D0E01A0(a1);
}

uint64_t (*TTRICollectionViewCollapsedStatesPresenterCapability.collapsedStatesPersistence.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D258C0C;
}

uint64_t sub_21D258C0C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_21D0E0200();
  }

  return result;
}

uint64_t TTRICollectionViewCollapsedStatesPresenterCapability.__allocating_init(loggingPrefix:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TTRICollectionViewCollapsedStatesPresenterCapability.init(loggingPrefix:)(a1, a2);
  return v4;
}

uint64_t TTRICollectionViewCollapsedStatesPresenterCapability.isCollapsed(_:)()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  v0 = sub_21DBFAB6C();

  return v0 & 1;
}

uint64_t sub_21D258D6C()
{
  v0 = sub_21DBFBA8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_21DBFABAC();
  sub_21DBFAB3C();
  return (*(v1 + 8))(v3, v0);
}

void sub_21D258E9C(uint64_t a1, const char *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), void (*a4)(uint64_t))
{
  v38 = a3;
  v6 = v4;
  v8 = *v4;
  v9 = *v4;
  v35 = a2;
  v36 = v9;
  v10 = *(v8 + 80);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  if (qword_280D0F3D0 != -1)
  {
    swift_once();
  }

  v17 = sub_21DBF84BC();
  __swift_project_value_buffer(v17, qword_280D0F3D8);
  v18 = *(v11 + 16);
  v37 = a1;
  v18(v16, a1, v10);

  v19 = sub_21DBF84AC();
  v20 = sub_21DBFAE9C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = a4;
    v22 = v21;
    v33 = swift_slowAlloc();
    v39 = v33;
    *v22 = 136315394;
    *(v22 + 4) = sub_21D0CDFB4(v6[5], v6[6], &v39);
    *(v22 + 12) = 2080;
    v18(v13, v16, v10);
    v23 = sub_21DBFA1AC();
    v25 = v24;
    (*(v11 + 8))(v16, v10);
    v26 = sub_21D0CDFB4(v23, v25, &v39);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_21D0C9000, v19, v20, v35, v22, 0x16u);
    v27 = v33;
    swift_arrayDestroy();
    MEMORY[0x223D46520](v27, -1, -1);
    v28 = v22;
    a4 = v34;
    MEMORY[0x223D46520](v28, -1, -1);
  }

  else
  {

    v29 = (*(v11 + 8))(v16, v10);
  }

  MEMORY[0x28223BE20](v29);
  v30 = *(v36 + 88);
  *(&v32 - 4) = v10;
  *(&v32 - 3) = v30;
  v31 = v38;
  *(&v32 - 2) = v37;
  sub_21D0E1048(v31, 0, a4);
}

uint64_t sub_21D2591D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  (*(v4 + 16))(v6, v8);
  sub_21DBFABAC();
  sub_21DBFAB2C();
  return (*(v4 + 8))(v10, a3);
}

uint64_t sub_21D259328(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_21DBFABAC();
  return sub_21DBFAB8C();
}

void sub_21D259450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, uint64_t), void (*a7)(uint64_t))
{
  if (qword_280D0F3D0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F3D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 0x6E656E6F706D6F63;
  *(inited + 40) = 0xE900000000000074;
  v11 = *(v7 + 40);
  v10 = *(v7 + 48);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v11;
  *(inited + 56) = v10;
  sub_21DBF8E0C();
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D25A49C(inited + 32);
  sub_21DAEACDC();

  MEMORY[0x28223BE20](v12);
  sub_21D0E1048(a6, 0, a7);
}

BOOL sub_21D259608(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  v11 = a2[3];
  v12 = a2[4];
  v13 = __swift_project_boxed_opaque_existential_1(a2, v11);
  item_rdar101056925<A, B>(in:withID:)(v13, a1, a4, v11, v12);
  v14 = (*(*(a4 - 8) + 48))(v10, 1, a4) == 1;
  (*(v8 + 8))(v10, v7);
  return v14;
}

uint64_t TTRICollectionViewCollapsedStatesPresenterCapability.beginOverridingItemCollapsedStates(shouldExpand:)()
{
  v1 = v0;
  v2 = *v0;
  if (qword_280D0F3D0 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_280D0F3D8);

  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAE9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_21D0CDFB4(v1[5], v1[6], v15);
    _os_log_impl(&dword_21D0C9000, v4, v5, "%s: begin overriding collapsed states", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223D46520](v7, -1, -1);
    MEMORY[0x223D46520](v6, -1, -1);
  }

  swift_beginAccess();
  v8 = v1[7];
  v10 = *(v2 + 80);
  v9 = *(v2 + 88);
  swift_beginAccess();
  type metadata accessor for TTRICollectionViewCollapsedStatesPresenterCapability.States();
  sub_21DBFA74C();
  swift_bridgeObjectRetain_n();
  sub_21DBFA6FC();
  swift_endAccess();
  swift_beginAccess();
  v1[7] = v8;
  *(v1 + 64) = 0;

  MEMORY[0x28223BE20](v11);
  sub_21D0E1048(sub_21D259A4C, 0, sub_21D25A568);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v9;
  v13[4] = v12;
  sub_21DBF902C();
  swift_allocObject();
  return sub_21DBF903C();
}

uint64_t sub_21D259AC8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D259B20();
  }

  return result;
}

void sub_21D259B20()
{
  v1 = v0;
  swift_beginAccess();
  type metadata accessor for TTRICollectionViewCollapsedStatesPresenterCapability.States();
  v2 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  v4 = swift_getWitnessTable();
  MEMORY[0x223D43510](&v19, v2, WitnessTable, v4);
  swift_endAccess();
  v5 = v19;
  if (v19)
  {
    v6 = v20;
    if (qword_280D0F3D0 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_280D0F3D8);

    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAE9C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_21D0CDFB4(*(v1 + 40), *(v1 + 48), v18);
      _os_log_impl(&dword_21D0C9000, v8, v9, "%s: end overriding collapsed states", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    swift_beginAccess();
    *(v1 + 56) = v5;
    *(v1 + 64) = v6 & 1;
    sub_21DBF8E0C();
    v12 = sub_21DBFAADC();

    if ((v12 & 1) == 0)
    {
      LOWORD(v19) = 257;
      BYTE2(v19) = 0;
      sub_21D259EAC(&v19);
    }
  }

  else
  {
    if (qword_280D0F3D0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F3D8);

    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAECC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21D0CDFB4(*(v1 + 40), *(v1 + 48), v18);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: extra endOverridingItemCollapsedStates call", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x223D46520](v17, -1, -1);
      MEMORY[0x223D46520](v16, -1, -1);
    }
  }
}

void sub_21D259EAC(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  v5 = *(v1 + 16);
  if (v5)
  {
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = v4;

    v5(v6);
    sub_21D0D0E88(v5);
  }

  if (v4)
  {
    sub_21D259F48();
  }
}

void sub_21D259F48()
{
  swift_beginAccess();
  if (*(v0 + 64) == 1)
  {
    swift_beginAccess();
    if (*(v0 + 32))
    {
      v1._object = 0x800000021DC494E0;
      v1._countAndFlagsBits = 0xD000000000000016;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v1);
    }
  }
}

uint64_t sub_21D259FC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    if (qword_280D0F3D0 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_280D0F3D8);

    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAEDC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v30 = a4;
      v18 = v17;
      v19 = swift_slowAlloc();
      v29 = a3;
      v20 = v19;
      v31 = v19;
      *v18 = 136315138;
      v28 = v11;
      v22 = *(v13 + 40);
      v21 = *(v13 + 48);
      sub_21DBF8E0C();
      v23 = sub_21D0CDFB4(v22, v21, &v31);

      *(v18 + 4) = v23;
      v11 = v28;
      _os_log_impl(&dword_21D0C9000, v15, v16, "%s: updating for collapsedStatesPersistence change", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v24 = v20;
      a3 = v29;
      MEMORY[0x223D46520](v24, -1, -1);
      v25 = v18;
      a4 = v30;
      MEMORY[0x223D46520](v25, -1, -1);
    }

    sub_21D0CE468();
    *v10 = sub_21DBFB12C();
    (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
    v26 = sub_21DBF9DAC();
    result = (*(v8 + 8))(v10, v7);
    if (v26)
    {
      MEMORY[0x28223BE20](result);
      *(&v27 - 4) = a3;
      *(&v27 - 3) = a4;
      *(&v27 - 2) = v11;
      sub_21D0E1048(sub_21D25A9DC, 0, sub_21D0E1174);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t TTRICollectionViewCollapsedStatesPresenterCapability.deinit()
{
  sub_21D0D0E88(*(v0 + 16));

  return v0;
}

uint64_t TTRICollectionViewCollapsedStatesPresenterCapability.__deallocating_deinit()
{
  TTRICollectionViewCollapsedStatesPresenterCapability.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D25A350()
{
  sub_21D25A450();
}

void (*sub_21D25A378(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TTRICollectionViewCollapsedStatesPresenterCapability.collapsedStatesPersistence.modify(v2);
  return sub_21D25A3E8;
}

void sub_21D25A3E8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_21D25A49C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s15RemindersUICore52TTRICollectionViewCollapsedStatesPresenterCapabilityC21deferredActionPerform_6reasonyAA011TTRDeferredJ0C_SStF_0()
{
  result = swift_beginAccess();
  if (*(v0 + 32))
  {
    swift_beginAccess();
    sub_21DBF8E0C();

    TTRAnyTreeViewCollapsedStatesPersisting.saveCollapsedTreeViewItemIDs(_:)();
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TTRICollectionViewCollapsedStateChangeContext(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRICollectionViewCollapsedStateChangeContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t assignWithCopy for TTRIQuickBarInputAccessoryViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for TTRIQuickBarInputAccessoryViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIQuickBarInputAccessoryViewModel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for TTRIQuickBarInputAccessoryViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for TTRReminderDetailReminderSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  *(a1 + 16) = v11;
  v12 = v11;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRListBadgeView.SelectionParams(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for TTRListBadgeView.SelectionParams(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_21D25AAE4(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    if (a4)
    {
      v7 = a3;
      v8 = a4;
      v9 = [a1 store];
      v10 = [objc_allocWithZone(MEMORY[0x277D44548]) initWithStore:v9 storage:v8];
      v11 = [objc_allocWithZone(MEMORY[0x277D44660]) initWithStore:v9 account:v10 storage:v7];
      v12 = [objc_allocWithZone(MEMORY[0x277D44750]) initWithStore:v9 list:v11 storage:a2];
      [a1 updateReminder_];
    }

    else
    {
      v16 = objc_opt_self();
      v17 = a3;
      v18 = sub_21DBFA12C();
      [v16 internalErrorWithDebugDescription_];

      swift_willThrow();
    }
  }

  else
  {
    v13 = objc_opt_self();
    v14 = sub_21DBFA12C();
    [v13 internalErrorWithDebugDescription_];

    swift_willThrow();
  }
}

id sub_21D25ACE4(void *a1)
{
  v3 = [a1 saveRequest];
  v4 = [a1 storage];
  [v4 copyWithZone_];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_27CE5A390);
  sub_21DBF5F7C();
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v13);
    v4 = v13[5];
    v6 = [a1 accountID];
    v7 = [v3 _trackedAccountChangeItemForObjectID_];

    if (v7)
    {
      v8 = [v7 storage];

      [v8 copyWithZone_];
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
      sub_21D0D8CF0(0, &qword_27CE5A398);
      sub_21DBF5F7C();

      __swift_destroy_boxed_opaque_existential_0(v13);
    }

    v9 = [a1 listID];
    if (v9 && (v10 = v9, v11 = [v3 _trackedListChangeItemForObjectID_], v10, v11))
    {
      v12 = [v11 storage];

      [v12 copyWithZone_];
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
      sub_21D0D8CF0(0, &unk_27CE61D90);
      sub_21DBF5F7C();

      __swift_destroy_boxed_opaque_existential_0(v13);
    }

    else
    {
    }
  }

  return v4;
}

id TTRICompletedButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRICompletedButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for TTRICompletedButton();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  sub_21D25B598();

  return v9;
}

id TTRICompletedButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRICompletedButton.init(coder:)(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for TTRICompletedButton();
  v3 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    sub_21D25B598();
  }

  return v4;
}

double sub_21D25B2E4()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_21DBFA16C();
  v5 = v4;
  if (v3 == sub_21DBFA16C() && v5 == v6)
  {
    goto LABEL_15;
  }

  v8 = sub_21DBFC64C();

  if (v8)
  {
LABEL_6:

    return 33.0;
  }

  v9 = sub_21DBFA16C();
  v11 = v10;
  if (v9 == sub_21DBFA16C() && v11 == v12)
  {
LABEL_15:

    return 33.0;
  }

  v14 = sub_21DBFC64C();

  if (v14)
  {
    goto LABEL_6;
  }

  v15 = sub_21DBFA16C();
  v17 = v16;
  if (v15 == sub_21DBFA16C() && v17 == v18)
  {
    goto LABEL_14;
  }

  v21 = sub_21DBFC64C();

  if (v21)
  {
LABEL_19:

    return 42.0;
  }

  v22 = sub_21DBFA16C();
  v24 = v23;
  if (v22 == sub_21DBFA16C() && v24 == v25)
  {
    goto LABEL_14;
  }

  v26 = sub_21DBFC64C();

  if (v26)
  {
    goto LABEL_19;
  }

  v27 = sub_21DBFA16C();
  v29 = v28;
  if (v27 == sub_21DBFA16C() && v29 == v30)
  {
LABEL_14:

    return 42.0;
  }

  v31 = sub_21DBFC64C();

  result = 42.0;
  if ((v31 & 1) == 0)
  {
    return 24.0;
  }

  return result;
}

uint64_t sub_21D25B598()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65630);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D00;
  v1 = sub_21DBF8D4C();
  v2 = MEMORY[0x277D74DB8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  sub_21DBFB5CC();
  swift_unknownObjectRelease();
}

id TTRICompletedButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRICompletedButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D25B6A0(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v35 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v28 = v1;
  v38 = MEMORY[0x277D84F90];
  v30 = v6;
  sub_21D18EBA4(0, v9, 0);
  v10 = v38;
  v37 = v30 + 56;
  result = sub_21DBFBCCC();
  v12 = result;
  v13 = v30;
  v14 = 0;
  v29 = v30 + 64;
  v31 = v9;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v13 + 32))
  {
    v17 = v12 >> 6;
    if ((*(v37 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v36 = *(v13 + 36);
    v18 = v34;
    sub_21D104E74(*(v13 + 48) + *(v35 + 72) * v12, v34, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D104E74(v18, v8, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    swift_storeEnumTagMultiPayload();
    sub_21D106918(v18, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v38 = v10;
    v20 = *(v10 + 16);
    v19 = *(v10 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_21D18EBA4(v19 > 1, v20 + 1, 1);
      v10 = v38;
    }

    *(v10 + 16) = v20 + 1;
    result = sub_21D2A0DC8(v8, v10 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v20, type metadata accessor for TTRRemindersListViewModel.Item);
    v15 = 1 << *(v13 + 32);
    if (v12 >= v15)
    {
      goto LABEL_22;
    }

    v21 = *(v37 + 8 * v17);
    if ((v21 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v36 != *(v13 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v12 & 0x3F));
    if (v22)
    {
      v15 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
      v16 = v31;
    }

    else
    {
      v23 = v17 << 6;
      v24 = v17 + 1;
      v25 = (v29 + 8 * v17);
      v16 = v31;
      while (v24 < (v15 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_21D15746C(v12, v36, 0);
          v13 = v30;
          v15 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_21D15746C(v12, v36, 0);
      v13 = v30;
    }

LABEL_4:
    ++v14;
    v12 = v15;
    if (v14 == v16)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21D25BA5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6874695765766F6DLL;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v2)
    {
      v3 = 0xEE007473694C6E69;
    }

    else
    {
      v3 = 0x800000021DC43790;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x694C6F5465766F6DLL;
    v3 = 0xEA00000000007473;
  }

  else if (a1 == 3)
  {
    v3 = 0x800000021DC437C0;
    v4 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = 0x754F746E65646E69;
    v3 = 0xED0000746E656474;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6874695765766F6DLL;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2)
    {
      v5 = 0xEE007473694C6E69;
    }

    else
    {
      v5 = 0x800000021DC43790;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEA00000000007473;
    if (v4 != 0x694C6F5465766F6DLL)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x800000021DC437C0;
    if (v4 != 0xD00000000000001DLL)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED0000746E656474;
    if (v4 != 0x754F746E65646E69)
    {
LABEL_31:
      v7 = sub_21DBFC64C();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_21D25BC38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000017;
    }

    else
    {
      v3 = 0xD00000000000001BLL;
    }

    if (v2 == 2)
    {
      v4 = 0x800000021DC43930;
    }

    else
    {
      v4 = 0x800000021DC43950;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x724F6C61756E616DLL;
    }

    else
    {
      v3 = 0x6E65746E49707061;
    }

    if (v2)
    {
      v4 = 0xEE00676E69726564;
    }

    else
    {
      v4 = 0xE900000000000074;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000017;
    }

    else
    {
      v7 = 0xD00000000000001BLL;
    }

    if (a2 == 2)
    {
      v6 = 0x800000021DC43930;
    }

    else
    {
      v6 = 0x800000021DC43950;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x724F6C61756E616DLL;
    }

    else
    {
      v5 = 0x6E65746E49707061;
    }

    if (a2)
    {
      v6 = 0xEE00676E69726564;
    }

    else
    {
      v6 = 0xE900000000000074;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_21DBFC64C();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_21D25BD94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x49676E6974746567;
  v5 = 0xEC0000007261436ELL;
  v6 = 0x4F676E6974746567;
  v7 = 0xEF726143664F7475;
  if (a1 != 4)
  {
    v6 = 0x6D6F74737563;
    v7 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 1701670760;
  if (a1 != 1)
  {
    v8 = 1802661751;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v8 = 0x746E6572727563;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEC0000007261436ELL;
      if (v9 != 0x49676E6974746567)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xEF726143664F7475;
      if (v9 != 0x4F676E6974746567)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6D6F74737563)
      {
LABEL_34:
        v12 = sub_21DBFC64C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE400000000000000;
    if (a2 == 1)
    {
      if (v9 != 1701670760)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 1802661751)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x746E6572727563)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_21D25BF78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006D65744964;
  v3 = 0x6574656C706D6F63;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0xD00000000000001DLL;
  if (a1 == 4)
  {
    v6 = 0x6D657449706974;
  }

  else
  {
    v5 = 0x800000021DC43E30;
  }

  if (a1 == 3)
  {
    v6 = 0xD00000000000001FLL;
    v7 = 0x800000021DC43E00;
  }

  else
  {
    v7 = v5;
  }

  v8 = 0x7367617468736168;
  v9 = 0xEC0000006D657449;
  if (a1 != 1)
  {
    v8 = 0xD000000000000012;
    v9 = 0x800000021DC43DE0;
  }

  if (!a1)
  {
    v8 = 0x6574656C706D6F63;
    v9 = 0xED00006D65744964;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x800000021DC43E00;
      if (v10 != 0xD00000000000001FLL)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v10 != 0x6D657449706974)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v2 = 0x800000021DC43E30;
      if (v10 != 0xD00000000000001DLL)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC0000006D657449;
        if (v10 != 0x7367617468736168)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v3 = 0xD000000000000012;
      v2 = 0x800000021DC43DE0;
    }

    if (v10 != v3)
    {
LABEL_33:
      v12 = sub_21DBFC64C();
      goto LABEL_34;
    }
  }

LABEL_30:
  if (v11 != v2)
  {
    goto LABEL_33;
  }

  v12 = 1;
LABEL_34:

  return v12 & 1;
}

uint64_t sub_21D25C16C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x646E656B656577;
  v6 = 0x57664F7472617473;
  v7 = 0xEE007961646B6565;
  if (a1 != 4)
  {
    v6 = 0x6D6F74737563;
    v7 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x7961646F74;
  if (a1 != 1)
  {
    v9 = 0x776F72726F6D6F74;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x646E656B656577)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEE007961646B6565;
      if (v10 != 0x57664F7472617473)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6D6F74737563)
      {
LABEL_34:
        v13 = sub_21DBFC64C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7961646F74)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x776F72726F6D6F74)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701736302)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_21D25C354(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v3 = 0x6163696669746F6ELL;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xED0000736E6F6974;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x73746361746E6F63;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000021DC43740;
  }

  else
  {
    v3 = 0x6C41746E65677275;
    v4 = 0xEC000000736D7261;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v6 = 0x6163696669746F6ELL;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xED0000736E6F6974;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x73746361746E6F63)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x800000021DC43740;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEC000000736D7261;
    if (v3 != 0x6C41746E65677275)
    {
LABEL_31:
      v7 = sub_21DBFC64C();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_21D25C510(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF73676174687361;
  v3 = a1;
  if (a1 > 3u)
  {
    v10 = 0x522E646574696465;
    v11 = 0xEF7265646E696D65;
    if (a1 == 6)
    {
      v10 = 0x482E646574696465;
      v11 = 0xEF73676174687361;
    }

    v12 = 0x800000021DC43B90;
    v13 = 0xD00000000000001ELL;
    if (a1 != 4)
    {
      v13 = 0xD000000000000016;
      v12 = 0x800000021DC43BB0;
    }

    if (a1 <= 5u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v10;
    }

    if (v3 <= 5)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v4 = 0x800000021DC43B50;
    v5 = 0xD00000000000001ALL;
    if (a1 == 2)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x800000021DC43B70;
    }

    v6 = 0x800000021DC43B10;
    v7 = 0xD000000000000013;
    if (a1)
    {
      v6 = 0x800000021DC43B30;
    }

    else
    {
      v7 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        if (v8 != 0x482E646574696465)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v2 = 0xEF7265646E696D65;
        if (v8 != 0x522E646574696465)
        {
LABEL_48:
          v15 = sub_21DBFC64C();
          goto LABEL_49;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x800000021DC43B90;
      if (v8 != 0xD00000000000001ELL)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v2 = 0x800000021DC43BB0;
      if (v8 != 0xD000000000000016)
      {
        goto LABEL_48;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v2 = 0x800000021DC43B70;
        if (v8 != 0xD00000000000001ALL)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v14 = "tapped.NLPSuggestion";
    }

    else
    {
      if (a2)
      {
        v2 = 0x800000021DC43B30;
        if (v8 != 0xD000000000000013)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v14 = "tapped.UpgradeButton";
    }

    v2 = (v14 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000014)
    {
      goto LABEL_48;
    }
  }

LABEL_46:
  if (v9 != v2)
  {
    goto LABEL_48;
  }

  v15 = 1;
LABEL_49:

  return v15 & 1;
}

uint64_t sub_21D25C794(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE300000000000000;
    v12 = 0x656C756465686373;
    v13 = 0xE900000000000064;
    if (a1 != 2)
    {
      v12 = 0x64656767616C66;
      v13 = 0xE700000000000000;
    }

    v14 = 0x7961646F74;
    if (a1)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v14 = 7105633;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x686372616573;
    v5 = 0xE600000000000000;
    v6 = 0x646567676174;
    if (a1 != 7)
    {
      v6 = 0xD000000000000014;
      v5 = 0x800000021DC43AF0;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE800000000000000;
    v8 = 0x64656E6769737361;
    if (a1 != 4)
    {
      v8 = 0x6E756F4669726973;
      v7 = 0xEF737070416E4964;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE900000000000064;
        if (v9 != 0x656C756465686373)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x64656767616C66)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x7961646F74)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE300000000000000;
      if (v9 != 7105633)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x64656E6769737361)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xEF737070416E4964;
      if (v9 != 0x6E756F4669726973)
      {
LABEL_52:
        v16 = sub_21DBFC64C();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE600000000000000;
    if (v9 != 0x686372616573)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE600000000000000;
    if (v9 != 0x646567676174)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0x800000021DC43AF0;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_21D25CA5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x72756F487478656ELL;
    }

    else
    {
      v3 = 1701736302;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE700000000000000;
    v3 = 0x746867696E6F74;
  }

  else if (a1 == 3)
  {
    v3 = 0x776F72726F6D6F74;
    v4 = 0xEF676E696E726F4DLL;
  }

  else
  {
    v3 = 0x54646E4165746164;
    v4 = 0xEB00000000656D69;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x72756F487478656ELL;
    }

    else
    {
      v9 = 1701736302;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x776F72726F6D6F74;
    v6 = 0xEF676E696E726F4DLL;
    if (a2 != 3)
    {
      v5 = 0x54646E4165746164;
      v6 = 0xEB00000000656D69;
    }

    if (a2 == 2)
    {
      v7 = 0x746867696E6F74;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_21DBFC64C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_21D25CC08()
{
  v1 = v0;
  result = sub_21DBF5ABC();
  if ((v3 & 1) == 0)
  {
    v4 = result;
    v5 = *v0;
    v6 = (*v0 >> 62);
    if (v6)
    {
      goto LABEL_59;
    }

    for (result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10); v4 < result; result = sub_21DBFBD7C())
    {
      v7 = v4 + 1;
      result = sub_21DBF5A7C();
      if (v8)
      {
        if (v6)
        {
          result = sub_21DBFBD7C();
LABEL_11:
          v9 = result;
          v10 = sub_21DBFBD7C();
          result = v9;
          if (v7 == v10)
          {
LABEL_12:
            if (v5 >> 62)
            {
              result = sub_21DBFBD7C();
              v11 = result;
              if (result >= v4)
              {
                goto LABEL_14;
              }
            }

            else
            {
              v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v11 >= v4)
              {
LABEL_14:

                return sub_21DBD14A0(v4, v11);
              }
            }

            __break(1u);
            return result;
          }

          goto LABEL_17;
        }

        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      else if (v6)
      {
        goto LABEL_11;
      }

      if (v7 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

LABEL_17:
      v12 = v4 + 5;
      v27 = v1;
      while (1)
      {
        v13 = v12 - 4;
        if (v12 - 4 != result)
        {
          break;
        }

        result = sub_21DBF5A7C();
        if ((v14 & 1) == 0)
        {
          goto LABEL_41;
        }

        if (v5 >> 62)
        {
          result = sub_21DBFBD7C();
          v15 = __OFADD__(v13, 1);
          v16 = v12 - 3;
          if (v15)
          {
            goto LABEL_53;
          }
        }

        else
        {
          result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v15 = __OFADD__(v13, 1);
          v16 = v12 - 3;
          if (v15)
          {
            goto LABEL_53;
          }
        }

LABEL_42:
        if (v5 >> 62)
        {
          v26 = result;
          v25 = sub_21DBFBD7C();
          result = v26;
        }

        else
        {
          v25 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v12;
        if (v16 == v25)
        {
          goto LABEL_12;
        }
      }

      if (v13 == v4)
      {
        goto LABEL_40;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v18 = result;
        v6 = MEMORY[0x223D44740](v4, v5);
        v20 = MEMORY[0x223D44740](v12 - 4, v5);
      }

      else
      {
        if (v4 < 0)
        {
          goto LABEL_55;
        }

        v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v17)
        {
          goto LABEL_56;
        }

        if (v13 >= v17)
        {
          goto LABEL_57;
        }

        v18 = result;
        v19 = *(v5 + 8 * v12);
        v6 = *(v5 + 8 * v4 + 32);
        v20 = v19;
      }

      v21 = v20;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
      {
        v5 = sub_21D256E5C(v5);
        v22 = (v5 >> 62) & 1;
      }

      else
      {
        LODWORD(v22) = 0;
      }

      v1 = v5 & 0xFFFFFFFFFFFFFF8;
      v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
      *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v21;

      if ((v5 & 0x8000000000000000) == 0 && !v22)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

LABEL_38:
        if (v13 >= *(v1 + 16))
        {
          goto LABEL_58;
        }

        v24 = *(v1 + 8 * v12);
        *(v1 + 8 * v12) = v6;

        v1 = v27;
        *v27 = v5;
        result = v18;
LABEL_40:
        v15 = __OFADD__(v4++, 1);
        if (v15)
        {
          goto LABEL_54;
        }

LABEL_41:
        v15 = __OFADD__(v13, 1);
        v16 = v12 - 3;
        if (v15)
        {
          goto LABEL_53;
        }

        goto LABEL_42;
      }

      v5 = sub_21D256E5C(v5);
      v1 = v5 & 0xFFFFFFFFFFFFFF8;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_38;
      }

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
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      ;
    }
  }

  return result;
}

uint64_t sub_21D25CF18(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v5 = v3;
  result = sub_21DBF5ABC();
  if ((v7 & 1) == 0)
  {
    v8 = result;
    v9 = *v3;
    v10 = *v3 >> 62;
    if (v10)
    {
      goto LABEL_59;
    }

    for (result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10); v8 < result; result = sub_21DBFBD7C())
    {
      v11 = v8 + 1;
      result = sub_21DBF5A7C();
      if (v12)
      {
        if (v10)
        {
          result = sub_21DBFBD7C();
LABEL_11:
          v13 = result;
          v14 = sub_21DBFBD7C();
          result = v13;
          if (v11 == v14)
          {
LABEL_48:
            if (v9 >> 62)
            {
              result = sub_21DBFBD7C();
              if (result >= v8)
              {
                goto LABEL_50;
              }
            }

            else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v8)
            {
LABEL_50:

              return a2(v8);
            }

            __break(1u);
            return result;
          }

          goto LABEL_12;
        }

        result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      else if (v10)
      {
        goto LABEL_11;
      }

      if (v11 == *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

LABEL_12:
      v24 = a3;
      v25 = v5;
      a3 = (v8 + 5);
      while (1)
      {
        v15 = a3 - 4;
        if ((a3 - 4) == result)
        {
          break;
        }

        if (v15 != v8)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v18 = result;
            v10 = MEMORY[0x223D44740](v8, v9);
            v19 = MEMORY[0x223D44740](a3 - 4, v9);
          }

          else
          {
            if (v8 < 0)
            {
              goto LABEL_55;
            }

            v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v17)
            {
              goto LABEL_56;
            }

            if (v15 >= v17)
            {
              goto LABEL_57;
            }

            v18 = result;
            v10 = *(v9 + 8 * v8 + 32);
            v19 = *(v9 + 8 * a3);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
          {
            v9 = v24(v9);
            v20 = (v9 >> 62) & 1;
          }

          else
          {
            LODWORD(v20) = 0;
          }

          v5 = v9 & 0xFFFFFFFFFFFFFF8;
          *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v19;

          if ((v9 & 0x8000000000000000) != 0 || v20)
          {
            result = v24(v9);
            v9 = result;
            v5 = result & 0xFFFFFFFFFFFFFF8;
            if ((v15 & 0x8000000000000000) != 0)
            {
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }
          }

          else if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          if (v15 >= *(v5 + 16))
          {
            goto LABEL_58;
          }

          *(v5 + 8 * a3) = v10;

          *v25 = v9;
          result = v18;
        }

        if (__OFADD__(v8++, 1))
        {
          goto LABEL_54;
        }

LABEL_36:
        v5 = a3 - 3;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_53;
        }

LABEL_37:
        if (v9 >> 62)
        {
          v23 = result;
          v22 = sub_21DBFBD7C();
          result = v23;
        }

        else
        {
          v22 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a3 = (a3 + 1);
        if (v5 == v22)
        {
          goto LABEL_48;
        }
      }

      result = sub_21DBF5A7C();
      if ((v16 & 1) == 0)
      {
        goto LABEL_36;
      }

      if (!(v9 >> 62))
      {
        result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v5 = a3 - 3;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_53;
        }

        goto LABEL_37;
      }

      result = sub_21DBFBD7C();
      v5 = a3 - 3;
      if (!__OFADD__(v15, 1))
      {
        goto LABEL_37;
      }

LABEL_53:
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
      ;
    }
  }

  return result;
}