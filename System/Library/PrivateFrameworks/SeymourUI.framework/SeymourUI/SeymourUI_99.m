uint64_t sub_20C056F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20C056FA4()
{
  result = qword_27C772018;
  if (!qword_27C772018)
  {
    type metadata accessor for TVWorkoutPlanDetailHeaderShelf();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772018);
  }

  return result;
}

uint64_t sub_20C05705C(uint64_t a1)
{
  v4 = *(sub_20C132EE4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52A9D4;

  return sub_20C0532BC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20C057154(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C132EE4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20B52AC14;

  return sub_20C052508(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_20C057294()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EC8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17[-v3];
  v5 = sub_20C135524();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766810);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17[-v10];
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_isFilteringEnabled) != 1)
  {
    return 2;
  }

  v12 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filter;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v12, v11, &qword_27C766810);
  v13 = sub_20B84A8F0(v11);
  sub_20B520158(v11, &qword_27C766810);
  if (v13)
  {
    return 1;
  }

  v15 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterResult;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v15, v4, &qword_27C769EC8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20B520158(v4, &qword_27C769EC8);
    return 1;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v16 = sub_20BB110D4();
    (*(v6 + 8))(v8, v5);
    return !v16;
  }
}

uint64_t sub_20C057548()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766810);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_20C138094();
  v28 = *(v5 - 8);
  v29 = v28;
  MEMORY[0x28223BE20](v5);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = (&v27 - v12);
  v14 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filter;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v14, v4, &qword_27C766810);
  v15 = sub_20B84A8F0(v4);
  sub_20B520158(v4, &qword_27C766810);
  v16 = 0xD000000000000021;
  if (v15)
  {
    v16 = 0xD000000000000026;
    v17 = "3.decrease.circle";
  }

  else
  {
    v17 = "isFilteringEnabled";
  }

  *v13 = v16;
  v13[1] = v17 | 0x8000000000000000;
  swift_storeEnumTagMultiPayload();
  *v10 = 3;
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_storefrontLocalizer + 24));
  *v7 = sub_20C138D34();
  v7[1] = v18;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
  v19 = *(v28 + 72);
  v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20C1517D0;
  v22 = v21 + v20;
  v23 = MEMORY[0x277D53BC8];
  sub_20B9B7B94(v13, v22, MEMORY[0x277D53BC8]);
  sub_20B9B7B94(v10, v22 + v19, v23);
  sub_20B9B7B94(v7, v22 + 2 * v19, v23);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_mediaTagStringBuilder + 24));
  v24 = sub_20C138544();

  v25 = MEMORY[0x277D53BC8];
  sub_20C059284(v7, MEMORY[0x277D53BC8]);
  sub_20C059284(v10, v25);
  sub_20C059284(v13, v25);
  return v24;
}

uint64_t sub_20C0578C4(int a1)
{
  v3 = sub_20C13BB84();
  v81 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C554();
  v78 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v77 = (&v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_20C132EE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  MEMORY[0x28223BE20](v12);
  v80 = &v65 - v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_title + 8);
  if (!v16)
  {
    v56 = v81;
    sub_20C13B534();
    v57 = sub_20C13BB74();
    v58 = sub_20C13D1F4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_20B517000, v57, v58, "[FilterDetailHeaderShelf] not updating row, no title available", v59, 2u);
      MEMORY[0x20F2F6A40](v59, -1, -1);
    }

    return (*(v56 + 8))(v5, v3);
  }

  v76 = v14;
  v68 = v6;
  v67 = a1;
  v79 = v13;
  v81 = v1;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_title);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20C14F980;
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v16;

  *(v19 + 32) = sub_20C057548();
  *(v19 + 40) = sub_20C057294();
  *(v18 + 32) = v19 | 0x2000000000000004;
  v87 = 0uLL;
  LOBYTE(v88) = 1;
  *(&v88 + 1) = 0;
  *&v89 = 0;
  WORD4(v89) = 128;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  LOBYTE(v93) = 0;
  *(&v93 + 1) = v18;
  *&v94[0] = MEMORY[0x277D84F90];
  *(v94 + 8) = 0u;
  *(&v94[1] + 8) = 0u;
  *(&v94[2] + 1) = 0;
  v95 = 2;
  nullsub_1(&v87);
  v20 = v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row;
  v21 = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 144);
  v96[8] = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 128);
  v96[9] = v21;
  v97 = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 160);
  v22 = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 80);
  v96[4] = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 64);
  v96[5] = v22;
  v23 = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 112);
  v96[6] = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 96);
  v96[7] = v23;
  v24 = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 16);
  v96[0] = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row);
  v96[1] = v24;
  v25 = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 48);
  v96[2] = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 32);
  v96[3] = v25;
  v26 = v81;
  v27 = v94[2];
  *(v20 + 128) = v94[1];
  *(v20 + 144) = v27;
  *(v20 + 160) = v95;
  v28 = v92;
  *(v20 + 64) = v91;
  *(v20 + 80) = v28;
  v29 = v94[0];
  *(v20 + 96) = v93;
  *(v20 + 112) = v29;
  v30 = v88;
  *v20 = v87;
  *(v20 + 16) = v30;
  v31 = v90;
  *(v20 + 32) = v89;
  *(v20 + 48) = v31;
  sub_20B520158(v96, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v33 = result;
  if (*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    return swift_unknownObjectRelease();
  }

  if (![*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource])
  {
LABEL_24:
    sub_20C0C2D50(0);
    return swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  v66 = v33;
  v34 = v80;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v35 = v79;
  v36 = sub_20C13BE74();
  result = (*(v76 + 8))(v34, v35);
  v75 = *(v36 + 16);
  v76 = v36;
  if (!v75)
  {
LABEL_22:

    goto LABEL_24;
  }

  v37 = 0;
  v73 = v76 + 32;
  v74 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_identifier;
  v71 = (v9 + 8);
  v72 = (v9 + 16);
  while (2)
  {
    if (v37 < *(v76 + 16))
    {
      v38 = (v73 + 24 * v37);
      v39 = v38[1];
      v70 = *v38;
      v40 = v38[2];
      v79 = v37 + 1;
      (*v72)(v11, v26 + v74, v8);
      v41 = *(v39 + 16);

      v80 = v40;

      v42 = 0;
      do
      {
        if (v41 == v42)
        {
          (*v71)(v11, v8);
          goto LABEL_9;
        }

        v43 = v42 + 1;
        sub_20C05923C(&qword_27C7641A0, MEMORY[0x277CC95F0]);
        v44 = sub_20C13C894();
        v42 = v43;
      }

      while ((v44 & 1) == 0);
      (*v71)(v11, v8);
      v45 = *(v20 + 128);
      v46 = *(v20 + 144);
      v47 = *(v20 + 96);
      v83[7] = *(v20 + 112);
      v84 = v45;
      v85 = v46;
      v86 = *(v20 + 160);
      v48 = *(v20 + 80);
      v83[4] = *(v20 + 64);
      v83[5] = v48;
      v83[6] = v47;
      v49 = *(v20 + 16);
      v83[0] = *v20;
      v83[1] = v49;
      v50 = *(v20 + 48);
      v83[2] = *(v20 + 32);
      v83[3] = v50;
      v51 = sub_20B5EAF8C(v83);
      if (v51 == 1)
      {
        v52 = 0;
        v53 = 0;
      }

      else
      {
        v52 = *(&v84 + 1);
        v53 = v85;
      }

      v54 = v80;
      v69 = &v65;
      v82[0] = v52;
      v82[1] = v53;
      MEMORY[0x28223BE20](v51);
      *(&v65 - 2) = v82;
      v55 = sub_20B796758(sub_20B5EAFA4, (&v65 - 4), v54);

      if ((v55 & 1) == 0)
      {
LABEL_9:

        v37 = v79;
        v26 = v81;
        if (v79 == v75)
        {
          goto LABEL_22;
        }

        continue;
      }

      sub_20B5E2E18();
      v60 = sub_20C13D374();
      v62 = v77;
      v61 = v78;
      *v77 = v60;
      v63 = v68;
      (*(v61 + 104))(v62, *MEMORY[0x277D85200], v68);
      v64 = sub_20C13C584();
      result = (*(v61 + 8))(v62, v63);
      if ((v64 & 1) == 0)
      {
        goto LABEL_33;
      }

      if ((v67 & 0x80) != 0)
      {
        sub_20C10A2F8(v81, v70, v67 & 1, v66);
      }

      else
      {
        sub_20B61E0EC(v70, v39, v80, v81, v67 & 1, v66);
      }

      return swift_unknownObjectRelease();
    }

    break;
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_20C058174()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_storefrontLocalizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_mediaTagStringBuilder);

  v3 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterRoot;
  v4 = sub_20C134EC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filter, &qword_27C766810);

  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 128);
  v11[9] = v5;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 160);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 96);
  v11[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row);
  v11[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 32);
  v11[3] = v9;
  sub_20B520158(v11, &qword_27C762340);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterResult, &qword_27C769EC8);
  return v0;
}

uint64_t sub_20C05830C()
{
  sub_20C058174();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FilterDetailHeaderShelf()
{
  result = qword_27C772040;
  if (!qword_27C772040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C0583B8()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20C134EC4();
    if (v1 <= 0x3F)
    {
      sub_20BAC49F0(319, &qword_27C769EB8, MEMORY[0x277D504B0]);
      if (v2 <= 0x3F)
      {
        sub_20BAC49F0(319, &qword_27C769EC0, MEMORY[0x277D51980]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_20C05857C()
{
  swift_getObjectType();
  type metadata accessor for FilterResultUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20C05923C(&qword_27C7710D0, type metadata accessor for FilterResultUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  return sub_20C0578C4(1);
}

uint64_t sub_20C05869C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EC8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766810);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if (MEMORY[0x20F2EC610](a1, result + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterRoot))
    {
      v10 = type metadata accessor for FilterResultUpdated();
      v11 = *(v10 + 20);
      v12 = sub_20C133E24();
      v13 = *(v12 - 8);
      (*(v13 + 16))(v7, a1 + v11, v12);
      (*(v13 + 56))(v7, 0, 1, v12);
      v14 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filter;
      swift_beginAccess();
      sub_20B5DF2D4(v7, v9 + v14, &qword_27C766810);
      swift_endAccess();
      v15 = *(v10 + 24);
      v16 = sub_20C135524();
      v17 = *(v16 - 8);
      (*(v17 + 16))(v4, a1 + v15, v16);
      (*(v17 + 56))(v4, 0, 1, v16);
      v18 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterResult;
      swift_beginAccess();
      sub_20B5DF2D4(v4, v9 + v18, &qword_27C769EC8);
      swift_endAccess();
      sub_20C0578C4(129);
    }
  }

  return result;
}

uint64_t sub_20C058944@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20C0589BC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_20C058A84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7687A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = sub_20C1393B4();
  *(inited + 40) = v1;
  *(inited + 48) = 0;
  v2 = sub_20B6B2B0C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C7687B0);
  return v2;
}

uint64_t sub_20C058B20(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v7 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filter;
  v8 = sub_20C133E24();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = (v3 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_title);
  *v9 = 0;
  v9[1] = 0;
  v10 = v3 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row;
  sub_20B5D8060(v22);
  v11 = v22[9];
  *(v10 + 128) = v22[8];
  *(v10 + 144) = v11;
  *(v10 + 160) = v23;
  v12 = v22[5];
  *(v10 + 64) = v22[4];
  *(v10 + 80) = v12;
  v13 = v22[7];
  *(v10 + 96) = v22[6];
  *(v10 + 112) = v13;
  v14 = v22[1];
  *v10 = v22[0];
  *(v10 + 16) = v14;
  v15 = v22[3];
  *(v10 + 32) = v22[2];
  *(v10 + 48) = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterResult;
  v17 = sub_20C135524();
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_eventHub) = v21[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v21, v3 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v21, v3 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_mediaTagStringBuilder);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v3 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_subscriptionToken) = sub_20C13A914();
  v18 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterRoot;
  v19 = sub_20C134EC4();
  (*(*(v19 - 8) + 32))(v4 + v18, a2, v19);
  *(v4 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_isFilteringEnabled) = a3;
  return v4;
}

void sub_20C058DC4(uint64_t a1)
{
  v33 = type metadata accessor for FilterActionSelected();
  MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EC8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_20C135524();
  v34 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766810);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_isFilteringEnabled) == 1)
  {
    v15 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterRoot;
    v16 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filter;
    swift_beginAccess();
    v17 = v1;
    v18 = v1 + v16;
    v19 = v15;
    v20 = v9;
    sub_20B52F9E8(v18, v14, &qword_27C766810);
    v30 = v19;
    LOBYTE(v19) = sub_20B84A8F0(v14);
    sub_20B520158(v14, &qword_27C766810);
    if ((v19 & 1) == 0)
    {
      v21 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterResult;
      swift_beginAccess();
      sub_20B52F9E8(v17 + v21, v20, &qword_27C769EC8);
      v22 = v34;
      if ((*(v34 + 48))(v20, 1, v10) == 1)
      {
        sub_20B520158(v20, &qword_27C769EC8);
      }

      else
      {
        v23 = v31;
        (*(v22 + 32))(v31, v20, v10);
        v24 = sub_20BB110D4();
        (*(v22 + 8))(v23, v10);
        if (v24)
        {
          return;
        }
      }
    }

    sub_20B9B7B94(a1, v6, type metadata accessor for ShelfItemAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_20C059284(v6, type metadata accessor for ShelfItemAction);
    if (EnumCaseMultiPayload == 14)
    {
      swift_getObjectType();
      v26 = sub_20C134EC4();
      v27 = v17 + v30;
      v28 = v32;
      (*(*(v26 - 8) + 16))(v32, v27, v26);
      sub_20C05923C(&qword_27C766798, type metadata accessor for FilterActionSelected);
      sub_20C13A764();
      sub_20C059284(v28, type metadata accessor for FilterActionSelected);
    }
  }
}

uint64_t sub_20C05923C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C059284(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C0592E4(char a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20C14F580;
  v2 = objc_opt_self();
  v3 = sub_20C13C914();
  v4 = [v2 backgroundDecorationItemWithElementKind_];

  result = v1;
  *(v1 + 32) = v4;
  return result;
}

void sub_20C0593CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanRepetitionDetailView_stackView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v4 setAxis_];
  [v4 setSpacing_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v3] = v4;
  v45.receiver = v1;
  v45.super_class = type metadata accessor for TVWorkoutPlanRepetitionDetailView();
  v5 = objc_msgSendSuper2(&v45, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = *(a1 + 16);
  v7 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanRepetitionDetailView_stackView;
  v43 = v5;

  if (v6)
  {
    v8 = 0;
    v9 = a1 + 56;
    v44 = a1;
    while (v8 < *(a1 + 16))
    {
      v10 = *&v5[v7];
      objc_allocWithZone(type metadata accessor for TVWorkoutPlanRepetitionDetailRow());
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      a1 = v44;
      v11 = sub_20BB1124C();
      [v10 addArrangedSubview_];

      if (v8 >= *(v44 + 16) - 1)
      {
      }

      else
      {
        v12 = *&v5[v7];
        v13 = sub_20C059A40();
        [v12 addArrangedSubview_];

        a1 = v44;
      }

      ++v8;
      v9 += 32;
      if (v6 == v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    swift_bridgeObjectRelease_n();
    v14 = *&v5[v7];
    v15 = v43;
    [v15 addSubview_];
    [v15 setTranslatesAutoresizingMaskIntoConstraints_];

    v16 = objc_opt_self();
    v18 = *MEMORY[0x277D768C8];
    v17 = *(MEMORY[0x277D768C8] + 8);
    v19 = *(MEMORY[0x277D768C8] + 16);
    v20 = *(MEMORY[0x277D768C8] + 24);
    v21 = *&v5[v7];
    v22 = [v21 leadingAnchor];
    v23 = [v15 leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:v17];

    LODWORD(v25) = 1148846080;
    [v24 setPriority_];
    v26 = v24;
    v27 = [v21 trailingAnchor];
    v28 = [v15 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:-v20];

    LODWORD(v30) = 1148846080;
    [v29 setPriority_];
    v31 = v29;
    v32 = [v21 topAnchor];
    v33 = [v15 topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:v18];

    LODWORD(v35) = 1148846080;
    [v34 setPriority_];
    v36 = [v21 bottomAnchor];
    v37 = [v15 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:-v19];

    LODWORD(v39) = 1148846080;
    [v38 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_20C14FE90;
    *(v40 + 32) = v26;
    *(v40 + 40) = v31;
    *(v40 + 48) = v34;
    *(v40 + 56) = v38;
    v41 = v34;

    sub_20B5E29D0();
    v42 = sub_20C13CC54();

    [v16 activateConstraints_];
  }
}

id sub_20C0599D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVWorkoutPlanRepetitionDetailView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20C059A40()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = [objc_opt_self() systemGrayColor];
  [v0 setBackgroundColor_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = [v0 heightAnchor];
  sub_20C1387F4();
  v5 = [v4 constraintEqualToConstant_];

  *(v3 + 32) = v5;
  sub_20B5E29D0();
  v6 = sub_20C13CC54();

  [v2 activateConstraints_];

  return v0;
}

char *sub_20C059BC0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_platter;
  v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v12 layer];
  [v13 setCornerRadius_];

  [v12 setClipsToBounds_];
  *&v4[v11] = v12;
  v14 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_titleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAdjustsFontForContentSizeCategory_];
  [v15 setAllowsDefaultTighteningForTruncation_];
  [v15 setAdjustsFontSizeToFitWidth_];
  [v15 setTextAlignment_];
  *&v4[v14] = v15;
  v16 = &v4[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_styleProvider];
  sub_20C05B10C(v93);
  v17 = v93[3];
  v18 = v93[4];
  *(v16 + 2) = v93[2];
  *(v16 + 3) = v17;
  v19 = v93[5];
  *(v16 + 4) = v18;
  *(v16 + 5) = v19;
  v20 = v93[1];
  *v16 = v93[0];
  *(v16 + 1) = v20;
  *(v16 + 6) = xmmword_20C163B60;
  *(v16 + 14) = 0x4028000000000000;
  v88.receiver = v4;
  v88.super_class = type metadata accessor for PreferredMusicGenreCell();
  v21 = objc_msgSendSuper2(&v88, sel_initWithFrame_, a1, a2, a3, a4);
  v22 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_platter;
  v23 = *&v21[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_platter];
  v24 = &v21[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_styleProvider];
  v25 = *&v21[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_styleProvider + 8];
  v26 = v21;
  [v23 setBackgroundColor_];
  v27 = [v26 contentView];
  [v27 addSubview_];

  v28 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_titleLabel;
  [*&v26[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_titleLabel] setTextColor_];
  v29 = v26;
  v30 = [v29 &selRef_setMaximumFractionDigits_];
  v84 = v28;
  [v30 addSubview_];

  v31 = [v29 traitCollection];
  v32 = *&v26[v28];
  v86 = v24;
  v33 = *(v24 + 56);
  v89 = *(v24 + 40);
  v90 = v33;
  v91 = *(v24 + 72);
  v92 = *(v24 + 11);
  v34 = sub_20B7C6A74(v31);
  [v32 setFont_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766578);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20C14F980;
  v36 = sub_20C13C054();
  v37 = MEMORY[0x277D74DB8];
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  MEMORY[0x20F2F4CE0](v35, sel_contentSizeCategoryChanged);
  swift_unknownObjectRelease();

  v85 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20C14FF90;
  v39 = [*&v21[v22] leadingAnchor];
  v40 = [v29 &selRef_setMaximumFractionDigits_];
  v41 = [v40 leadingAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  *(v38 + 32) = v42;
  v43 = [*&v21[v22] trailingAnchor];
  v44 = [v29 &selRef_setMaximumFractionDigits_];
  v45 = [v44 trailingAnchor];

  v46 = [v43 &selRef:v45 alertControllerReleasedDictationButton:? + 5];
  *(v38 + 40) = v46;
  v47 = [*&v21[v22] topAnchor];
  v48 = [v29 &selRef_setMaximumFractionDigits_];
  v49 = [v48 &selRef_setLineBreakMode_];

  v50 = [v47 &selRef:v49 alertControllerReleasedDictationButton:? + 5];
  *(v38 + 48) = v50;
  v51 = [*&v21[v22] bottomAnchor];
  v52 = [v29 &selRef_setMaximumFractionDigits_];
  v53 = [v52 &selRef_secondaryLabel + 5];

  v54 = [v51 &selRef:v53 alertControllerReleasedDictationButton:? + 5];
  *(v38 + 56) = v54;
  v55 = [*&v26[v84] leadingAnchor];
  v56 = [v29 &selRef_setMaximumFractionDigits_];
  v57 = [v56 leadingAnchor];

  v58 = [v55 constraintEqualToAnchor:v57 constant:v86[12]];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v59) = v87;
  [v58 setPriority_];
  *(v38 + 64) = v58;
  v60 = [*&v26[v84] trailingAnchor];
  v61 = [v29 contentView];
  v62 = [v61 trailingAnchor];

  v63 = [v60 constraintEqualToAnchor:v62 constant:-v86[12]];
  sub_20C13BBA4();
  LODWORD(v64) = v87;
  [v63 setPriority_];
  *(v38 + 72) = v63;
  v65 = [*&v26[v84] centerYAnchor];
  v66 = [v29 contentView];
  v67 = [v66 centerYAnchor];

  v68 = [v65 constraintEqualToAnchor_];
  *(v38 + 80) = v68;
  v69 = [*&v26[v84] topAnchor];
  v70 = [v29 contentView];
  v71 = [v70 topAnchor];

  v72 = [v69 constraintGreaterThanOrEqualToAnchor:v71 constant:v86[14]];
  sub_20C13BBA4();
  LODWORD(v73) = v87;
  [v72 setPriority_];
  *(v38 + 88) = v72;
  v74 = [*&v26[v84] bottomAnchor];
  v75 = [v29 contentView];
  v76 = [v75 bottomAnchor];

  v77 = [v74 constraintLessThanOrEqualToAnchor:v76 constant:-v86[14]];
  sub_20C13BBA4();
  LODWORD(v78) = v87;
  [v77 setPriority_];
  *(v38 + 96) = v77;
  v79 = [v29 contentView];

  v80 = [v79 heightAnchor];
  v81 = [v80 constraintGreaterThanOrEqualToConstant_];

  *(v38 + 104) = v81;
  sub_20B5E29D0();
  v82 = sub_20C13CC54();

  [v85 activateConstraints_];

  return v29;
}

id sub_20C05A934(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_titleLabel];
  v4 = &v1[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_styleProvider];
  if (a1)
  {
    v5 = *(v4 + 3);
    [v3 setTextColor_];
    v6 = *&v1[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_platter];
    v7 = [v6 layer];
    v8 = [v5 CGColor];
    [v7 setBorderColor_];

    v9 = [v6 layer];
    v4 += 16;
  }

  else
  {
    [v3 setTextColor_];
    v10 = *&v1[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_platter];
    v11 = [v10 layer];
    [v11 setBorderColor_];

    v9 = [v10 layer];
  }

  [v9 setBorderWidth_];

  return [v1 accessibilityApplyState_];
}

id sub_20C05AAB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreferredMusicGenreCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PreferredMusicGenreCell()
{
  result = qword_281102458;
  if (!qword_281102458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C05ABF0()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20C05ACA4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20C05ACF0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20C05AD48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20C05ADB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_20C05ADF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_20C05AE64(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x28)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v8 = *&v1[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_titleLabel];
    v9 = sub_20C13C914();
    [v8 setText_];

    return sub_20C05A934(v7);
  }

  else
  {
    sub_20C13B534();

    v11 = v1;
    v12 = sub_20C13BB74();
    v13 = sub_20C13D1D4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = a1;
      v25 = v23;
      *v14 = 138543618;
      *(v14 + 4) = v11;
      *v15 = v11;
      *(v14 + 12) = 2082;
      v16 = sub_20B5F66D0();
      v17 = v11;
      v18 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v16);
      v20 = sub_20B51E694(v18, v19, &v25);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_20B517000, v12, v13, "Attempted to configure %{public}@ with item: %{public}s", v14, 0x16u);
      sub_20B520158(v15, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v15, -1, -1);
      v21 = v23;
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x20F2F6A40](v21, -1, -1);
      MEMORY[0x20F2F6A40](v14, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_20C05B10C@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v21 = [v2 systemGray5Color];
  v20 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v18 = [v2 whiteColor];
  v3 = *MEMORY[0x277D76940];
  v19 = *MEMORY[0x277D743F8];
  v4 = *MEMORY[0x277D76800];
  v23 = MEMORY[0x277D84FA0];
  v17 = v4;
  sub_20B6FF83C(v22, 1);
  v25 = 1;
  v24 = 0;
  v5 = v23;
  sub_20C13E164();
  v16 = v3;
  sub_20C13CA64();
  v6 = sub_20C13E1B4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(v5 + 48) + v8);
      if (v10 >= 4)
      {
        break;
      }

      v11 = sub_20C13DFF4();

      if (v11)
      {
        goto LABEL_7;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = v5;
    result = sub_20B706478(4, v8, isUniquelyReferenced_nonNull_native);
    v5 = v22[0];
  }

LABEL_7:
  v14 = v25;
  v15 = v24;
  *a1 = 0;
  *(a1 + 8) = v21;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = v20;
  *(a1 + 32) = v18;
  *(a1 + 40) = 0;
  *(a1 + 48) = v17;
  *(a1 + 56) = v16;
  *(a1 + 64) = 0;
  *(a1 + 68) = v14;
  *(a1 + 69) = 9;
  *(a1 + 72) = v19;
  *(a1 + 80) = v15;
  *(a1 + 88) = v5;
  return result;
}

void sub_20C05B3D8()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_platter;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v4 layer];
  [v5 setCornerRadius_];

  [v4 setClipsToBounds_];
  *(v0 + v3) = v4;
  v6 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_titleLabel;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setAdjustsFontForContentSizeCategory_];
  [v7 setAllowsDefaultTighteningForTruncation_];
  [v7 setAdjustsFontSizeToFitWidth_];
  [v7 setTextAlignment_];
  *(v0 + v6) = v7;
  v8 = v0 + OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_styleProvider;
  sub_20C05B10C(v12);
  v9 = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = v9;
  v10 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v10;
  v11 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v11;
  *(v8 + 112) = 0x4028000000000000;
  *(v8 + 96) = xmmword_20C163B60;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C05B61C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_20C05B664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C05B6CC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C05C59C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20B584050(v4);
}

uint64_t sub_20C05B760(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C05C574;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 64);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  sub_20B584050(v3);
  return sub_20B583ECC(v8);
}

uint64_t sub_20C05B81C()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  sub_20B584050(v1);
  return v1;
}

uint64_t sub_20C05B86C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_20B583ECC(v5);
}

uint64_t SummaryBannerActionPresenter.__allocating_init(dependencies:placement:)(uint64_t a1, char a2)
{
  v3 = swift_allocObject();
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FE00);
  sub_20C133AA4();

  *(v3 + 16) = a2;
  return v3;
}

uint64_t SummaryBannerActionPresenter.init(dependencies:placement:)(uint64_t a1, char a2)
{
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FE00);
  sub_20C133AA4();

  sub_20B52E424(&v5, v2 + 24);
  *(v2 + 16) = a2;
  return v2;
}

id sub_20C05BA10(void *a1, uint64_t a2, unint64_t a3)
{
  v64 = a2;
  v65 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v58 - v6;
  v66 = sub_20C132C14();
  v8 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = sub_20C13BB84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = &v58 - v20;
  if ([a1 style])
  {
    v22 = sub_20C13CDF4();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v3;

    sub_20B6383D0(0, 0, v7, &unk_20C18B5F8, v23);
  }

  else
  {
    v61 = v13;
    v62 = a1;
    v58 = v10;
    v59 = v3;
    v60 = v17;
    v63 = v8;
    if (v65)
    {
      v25 = v65;
      v26 = v15;
      v27 = v64;
    }

    else
    {
      v27 = sub_20C1393B4();
      v25 = v28;
      v26 = v15;
    }

    sub_20C13B424();

    v29 = sub_20C13BB74();
    v30 = sub_20C13D1F4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v67[0] = v32;
      *v31 = 136315138;
      v33 = sub_20B51E694(v27, v25, v67);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_20B517000, v29, v30, "[UM] Action received for engagement message deactivating content: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x20F2F6A40](v32, -1, -1);
      MEMORY[0x20F2F6A40](v31, -1, -1);
    }

    else
    {
    }

    v34 = *(v26 + 8);
    v35 = v21;
    v36 = v14;
    v34(v35, v14);
    result = [v62 deepLink];
    v37 = v63;
    if (result)
    {
      v38 = v61;
      v39 = result;
      sub_20C132B94();

      if (sub_20BDC98E0() == 2)
      {
        v40 = v60;
        sub_20C13B424();
        v41 = v58;
        (*(v37 + 16))(v58, v38, v66);
        v42 = sub_20C13BB74();
        v43 = sub_20C13D1F4();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = v41;
          v46 = swift_slowAlloc();
          v67[0] = v46;
          *v44 = 141558274;
          *(v44 + 4) = 1752392040;
          *(v44 + 12) = 2080;
          v47 = sub_20C132B24();
          v65 = v36;
          v49 = v48;
          v50 = *(v63 + 8);
          v50(v45, v66);
          v51 = sub_20B51E694(v47, v49, v67);

          *(v44 + 14) = v51;
          v52 = v43;
          v53 = v50;
          _os_log_impl(&dword_20B517000, v42, v52, "[UM] Navigating to: %{mask.hash}s", v44, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v46);
          v38 = v61;
          MEMORY[0x20F2F6A40](v46, -1, -1);
          MEMORY[0x20F2F6A40](v44, -1, -1);

          v54 = v60;
          v55 = v65;
        }

        else
        {

          v53 = *(v37 + 8);
          v53(v41, v66);
          v54 = v40;
          v55 = v36;
        }

        v34(v54, v55);
        v56 = v59;
        swift_beginAccess();
        v57 = *(v56 + 64);
        if (v57)
        {

          v57(v38);
          sub_20B583ECC(v57);
        }

        return (v53)(v38, v66);
      }

      else
      {
        return (*(v37 + 8))(v38, v66);
      }
    }
  }

  return result;
}

uint64_t sub_20C05C020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_20C13BB84();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C05C0E0, 0, 0);
}

uint64_t sub_20C05C0E0()
{
  sub_20C13B424();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1F4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20B517000, v1, v2, "[UM] Summary banner requested dismissal", v3, 2u);
    MEMORY[0x20F2F6A40](v3, -1, -1);
  }

  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);
  __swift_project_boxed_opaque_existential_1((v7 + 24), *(v7 + 48));
  v8 = sub_20C1393B4();
  v10 = v9;
  v0[6] = v9;
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_20C05C24C;

  return sub_20C0A1328(v8, v10, 0, 3);
}

uint64_t sub_20C05C24C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t SummaryBannerActionPresenter.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  sub_20B583ECC(*(v0 + 64));
  return v0;
}

uint64_t SummaryBannerActionPresenter.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  sub_20B583ECC(*(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_20C05C3E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20C05C020(a1, v4, v5, v6);
}

char *sub_20C05C5C4(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D20);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v60 - v10;
  v67 = sub_20C13BC44();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13BBC4();
  v62 = *(v12 - 8);
  v63 = v12;
  MEMORY[0x28223BE20](v12);
  v61 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_currentConstraints] = MEMORY[0x277D84F90];
  v14 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_itemInfo;
  v15 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = &v4[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView];
  v17 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v18) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v19];
  v20 = [v17 layer];
  [v20 setCornerRadius_];

  [v17 setClipsToBounds_];
  *v16 = v17;
  *(v16 + 1) = &off_2822B63E8;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  LODWORD(v22) = 1148846080;
  [v21 setContentCompressionResistancePriority:1 forAxis:v22];

  v23 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v24 = [v23 fontDescriptorWithSymbolicTraits_];
  if (v24)
  {
    v25 = v24;

    v23 = v25;
  }

  v26 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_titleLabel;
  v27 = objc_opt_self();
  v28 = [v27 fontWithDescriptor:v23 size:0.0];

  [v21 setFont_];
  [v21 setAllowsDefaultTighteningForTruncation_];
  v29 = objc_opt_self();
  v30 = [v29 whiteColor];
  [v21 setTextColor_];

  [v21 setLineBreakMode_];
  *&v4[v26] = v21;
  v31 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_subtitleLabel;
  v32 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  [v32 setAdjustsFontForContentSizeCategory_];
  LODWORD(v33) = 1148846080;
  [v32 setContentCompressionResistancePriority:1 forAxis:v33];

  v34 = [v27 preferredFontForTextStyle_];
  [v32 setFont_];

  [v32 setAllowsDefaultTighteningForTruncation_];
  v35 = [v29 systemGrayColor];
  [v32 setTextColor_];

  [v32 setLineBreakMode_];
  *&v4[v31] = v32;
  v36 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_bottomLine;
  v37 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  v38 = [v29 separatorColor];
  [v37 setBackgroundColor_];

  *&v4[v36] = v37;
  v39 = &v4[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_layout];
  *v39 = xmmword_20C18B6C0;
  *(v39 + 1) = xmmword_20C18B6D0;
  *(v39 + 4) = 0x4020000000000000;
  v40 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_textGuide;
  *&v4[v40] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v41 = type metadata accessor for CircleRowCell();
  v68.receiver = v4;
  v68.super_class = v41;
  v42 = objc_msgSendSuper2(&v68, sel_initWithFrame_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D28);
  sub_20C13BC74();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  v44 = v61;
  v43 = v62;
  v45 = v63;
  (*(v62 + 104))(v61, *MEMORY[0x277D74A98], v63);
  v46 = sub_20C13BBF4();
  (*(*(v46 - 8) + 56))(v66, 1, 1, v46);
  v47 = v42;
  v48 = v64;
  sub_20C13BC34();
  sub_20C13BC04();
  (*(v65 + 8))(v48, v67);
  (*(v43 + 8))(v44, v45);
  sub_20C13D464();
  v49 = [v47 contentView];
  [v49 addLayoutGuide_];

  v50 = [v47 contentView];
  [v50 addSubview_];

  v51 = *&v47[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_bottomLine];
  v52 = v47;
  [v52 addSubview_];
  v53 = [v52 contentView];
  [v53 addSubview_];

  v54 = [v52 contentView];
  [v54 addSubview_];

  v55 = [v52 traitCollection];
  v56 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500);

  v57 = sub_20C13CC54();

  [v56 deactivateConstraints_];

  v58 = [v55 preferredContentSizeCategory];
  LOBYTE(v56) = sub_20C13D424();

  if (v56)
  {
    sub_20C05D728();
  }

  else
  {
    sub_20C05E010();
  }

  [v52 setNeedsUpdateConstraints];

  return v52;
}

id sub_20C05D168(void *a1)
{
  v2 = v1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CircleRowCell();
  objc_msgSendSuper2(&v24, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v4 = a1;
    v5 = [v4 preferredContentSizeCategory];
    v6 = [v2 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    v8 = sub_20C13C954();
    v10 = v9;
    if (v8 == sub_20C13C954() && v10 == v11)
    {

      Strong = v4;
    }

    else
    {
      v13 = sub_20C13DFF4();

      if (v13)
      {
        Strong = v4;
      }

      else
      {
        v19 = [v2 traitCollection];
        Strong = swift_unknownObjectUnownedLoadStrong();
        v20 = objc_opt_self();
        sub_20B51C88C(0, &qword_281100500);

        v21 = sub_20C13CC54();

        [v20 deactivateConstraints_];

        v22 = [v19 preferredContentSizeCategory];
        LOBYTE(v20) = sub_20C13D424();

        if (v20)
        {
          sub_20C05D728();
        }

        else
        {
          sub_20C05E010();
        }

        [Strong setNeedsUpdateConstraints];
      }
    }
  }

  else
  {
    v15 = [v2 traitCollection];
    Strong = swift_unknownObjectUnownedLoadStrong();
    v16 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500);

    v17 = sub_20C13CC54();

    [v16 deactivateConstraints_];

    v18 = [v15 preferredContentSizeCategory];
    LOBYTE(v16) = sub_20C13D424();

    if (v16)
    {
      sub_20C05D728();
    }

    else
    {
      sub_20C05E010();
    }

    [Strong setNeedsUpdateConstraints];
  }

  swift_unknownObjectUnownedDestroy();
  return [v2 setNeedsUpdateConstraints];
}

id sub_20C05D500()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircleRowCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CircleRowCell()
{
  result = qword_2811039B8;
  if (!qword_2811039B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C05D648()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20C05D728()
{
  v1 = v0;
  [*&v0[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView] setHidden_];
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_titleLabel];
  [v2 setNumberOfLines_];
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_subtitleLabel];
  [v3 setNumberOfLines_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C150050;
  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_textGuide];
  v7 = [v6 leadingAnchor];
  v8 = [v1 contentView];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:20.0];
  v5[4] = v10;
  v11 = [v6 topAnchor];
  v12 = [v1 contentView];
  v13 = [v12 &selRef_setLineBreakMode_];

  v14 = [v11 constraintGreaterThanOrEqualToAnchor:v13 constant:8.0];
  v5[5] = v14;
  v15 = [v6 bottomAnchor];
  v16 = [v1 contentView];
  v17 = [v16 &selRef_secondaryLabel + 5];

  v18 = [v15 constraintLessThanOrEqualToAnchor:v17 constant:-8.0];
  v5[6] = v18;
  v19 = [v6 trailingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:-12.0];
  v5[7] = v22;
  v68 = v5;
  v23 = [v6 centerYAnchor];
  v24 = [v1 contentView];
  v25 = [v24 centerYAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v27) = v69;
  [v26 setPriority_];
  v5[8] = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C150040;
  v29 = [v2 leadingAnchor];
  v30 = [v6 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v28 + 32) = v31;
  v32 = [v2 trailingAnchor];
  v33 = [v6 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v28 + 40) = v34;
  v35 = [v2 topAnchor];
  v36 = [v6 topAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v28 + 48) = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20C14FE90;
  v39 = [v3 leadingAnchor];
  v40 = [v6 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v38 + 32) = v41;
  v42 = [v3 trailingAnchor];
  v43 = [v6 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v38 + 40) = v44;
  v45 = [v3 topAnchor];
  v46 = [v2 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v38 + 48) = v47;
  v48 = [v3 bottomAnchor];
  v49 = [v6 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v38 + 56) = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_20C14FE90;
  v52 = *&v1[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_bottomLine];
  v53 = [v52 leadingAnchor];
  v54 = [v1 leadingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:20.0];

  *(v51 + 32) = v55;
  v56 = [v52 trailingAnchor];
  v57 = [v1 trailingAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  *(v51 + 40) = v58;
  v59 = [v52 bottomAnchor];
  v60 = [v1 bottomAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v51 + 48) = v61;
  v62 = [v52 heightAnchor];
  sub_20C1387F4();
  v63 = [v62 constraintEqualToConstant_];

  *(v51 + 56) = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C152DF0;
  *(inited + 32) = v68;
  *(inited + 40) = v28;
  *(inited + 48) = v38;
  *(inited + 56) = v51;
  v65 = sub_20B853E04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  *&v1[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_currentConstraints] = v65;

  v66 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500);

  v67 = sub_20C13CC54();

  [v66 activateConstraints_];
}

void sub_20C05E010()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView];
  [v2 setHidden_];
  v94 = *&v1[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_titleLabel];
  [v94 setNumberOfLines_];
  v92 = *&v1[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_subtitleLabel];
  [v92 setNumberOfLines_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14FE90;
  v4 = v3;
  v5 = [v2 leadingAnchor];
  v6 = [v1 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:20.0];
  v4[4] = v8;
  v9 = [v2 widthAnchor];
  v10 = [v9 constraintEqualToConstant_];

  v4[5] = v10;
  v11 = [v2 heightAnchor];
  v12 = [v11 &selRef_visibleCells + 1];

  v4[6] = v12;
  v93 = v4;
  v13 = [v2 centerYAnchor];
  v14 = [v1 contentView];
  v15 = [v14 &selRef_setNumberOfTapsRequired_];

  v16 = [v13 constraintEqualToAnchor_];
  v4[7] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20C150050;
  v18 = v17;
  v19 = *&v1[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_textGuide];
  v20 = [v19 leadingAnchor];
  v21 = [v2 trailingAnchor];
  v22 = [v20 &selRef_passwordEntryCancelledHandler + 6];

  v18[4] = v22;
  v23 = [v19 topAnchor];
  v24 = [v1 contentView];
  v25 = [v24 &selRef_setLineBreakMode_];

  v26 = [v23 constraintGreaterThanOrEqualToAnchor:v25 constant:8.0];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v27) = v95;
  [v26 setPriority_];
  v18[5] = v26;
  v28 = v18;
  v29 = [v19 bottomAnchor];
  v30 = [v1 contentView];
  v31 = [v30 &selRef_secondaryLabel + 5];

  v32 = [v29 constraintLessThanOrEqualToAnchor:v31 constant:-8.0];
  sub_20C13BBA4();
  LODWORD(v33) = v95;
  [v32 setPriority_];
  v28[6] = v32;
  v34 = [v19 trailingAnchor];
  v35 = [v1 contentView];
  v36 = [v35 trailingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:-12.0];
  v28[7] = v37;
  v91 = v28;
  v38 = [v19 centerYAnchor];
  v39 = [v1 contentView];
  v40 = [v39 centerYAnchor];

  v41 = [v38 constraintEqualToAnchor_];
  v28[8] = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C14F580;
  v43 = v42;
  v90 = v42;
  v44 = [v1 contentView];
  v45 = [v44 heightAnchor];

  v46 = [v45 constraintEqualToConstant_];
  sub_20C13BBA4();
  LODWORD(v47) = v95;
  [v46 setPriority_];
  *(v43 + 32) = v46;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_20C150040;
  v49 = v48;
  v50 = [v94 leadingAnchor];
  v51 = [v19 leadingAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  v49[4] = v52;
  v53 = [v94 trailingAnchor];
  v54 = [v19 trailingAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  v89 = v49;
  v49[5] = v55;
  v56 = [v94 topAnchor];
  v57 = [v19 topAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  v49[6] = v58;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_20C14FE90;
  v60 = [v92 leadingAnchor];
  v61 = [v19 leadingAnchor];
  v62 = [v60 constraintEqualToAnchor_];

  *(v59 + 32) = v62;
  v63 = [v92 trailingAnchor];
  v64 = [v19 trailingAnchor];
  v65 = [v63 constraintEqualToAnchor_];

  *(v59 + 40) = v65;
  v66 = [v92 topAnchor];
  v67 = [v94 bottomAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v59 + 48) = v68;
  v69 = [v92 bottomAnchor];
  v70 = [v19 bottomAnchor];
  v71 = [v69 constraintEqualToAnchor_];

  *(v59 + 56) = v71;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_20C14FE90;
  v73 = *&v1[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_bottomLine];
  v74 = [v73 leadingAnchor];
  v75 = [v1 leadingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:77.0];

  *(v72 + 32) = v76;
  v77 = [v73 trailingAnchor];
  v78 = [v1 trailingAnchor];
  v79 = [v77 constraintEqualToAnchor_];

  *(v72 + 40) = v79;
  v80 = [v73 bottomAnchor];
  v81 = [v1 bottomAnchor];
  v82 = [v80 constraintEqualToAnchor_];

  *(v72 + 48) = v82;
  v83 = [v73 heightAnchor];
  sub_20C1387F4();
  v84 = [v83 constraintEqualToConstant_];

  *(v72 + 56) = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 32) = v93;
  *(inited + 16) = xmmword_20C150DB0;
  *(inited + 40) = v91;
  *(inited + 48) = v90;
  *(inited + 56) = v89;
  *(inited + 64) = v59;
  *(inited + 72) = v72;
  v86 = sub_20B853E04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  *&v1[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_currentConstraints] = v86;

  v87 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500);

  v88 = sub_20C13CC54();

  [v87 activateConstraints_];
}

uint64_t sub_20C05EBBC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI13CircleRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20C05EC08@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20C05EC60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20C05ECE0(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v209 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v163 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v190 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v191 = &v163 - v7;
  v189 = v8;
  MEMORY[0x28223BE20](v9);
  v192 = &v163 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v163 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v200 = *(v14 - 8);
  v15 = *(v200 + 64);
  MEMORY[0x28223BE20](v14);
  v188 = &v163 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v202 = &v163 - v17;
  v197 = sub_20C1391C4();
  v196 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v19 = &v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_20C138A64();
  v198 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v201 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v21 - 8);
  v195 = &v163 - v22;
  v23 = sub_20C13C554();
  v207 = *(v23 - 8);
  v208 = v23;
  MEMORY[0x28223BE20](v23);
  v206 = (&v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_20C137C24();
  v210 = *(v25 - 8);
  v211 = v25;
  MEMORY[0x28223BE20](v25);
  v203 = &v163 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = v26;
  MEMORY[0x28223BE20](v27);
  v212 = &v163 - v28;
  v205 = sub_20C136CD4();
  v29 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v213 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C134E44();
  MEMORY[0x28223BE20](v31 - 8);
  v214 = &v163 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C134014();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v37 = &v163 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x20)
  {
    v176 = v19;
    v177 = v13;
    v174 = v15;
    v187 = v29;
    v178 = v14;
    v38 = v35;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v40 = swift_projectBox();
    v41 = v40 + *(v39 + 64);
    v42 = *v41;
    v43 = *(v41 + 8);
    v45 = *(v41 + 16);
    v44 = *(v41 + 24);
    v46 = *(v41 + 32);
    v47 = *(v41 + 40);
    v186 = v34;
    v48 = *(v34 + 16);
    v209 = v38;
    v48(v37, v40, v38);
    v49 = v215;
    v50 = *&v215[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_titleLabel];
    v51 = v42;
    v180 = v43;
    v52 = v45;
    v184 = v44;

    v183 = v46;

    v181 = v47;

    v182 = v51;
    [v50 setAttributedText_];
    sub_20C133F34();
    if (v53)
    {
      v54 = sub_20C13C914();

      [v50 setAccessibilityLabel_];
    }

    v185 = v37;
    sub_20C133F04();
    v179 = sub_20C138054();
    v56 = v55;
    sub_20C134E34();
    v57 = v212;
    sub_20C136CB4();
    v58 = sub_20C136CC4();
    v60 = v59;
    sub_20B51C88C(0, &qword_281100530);
    v61 = sub_20C13D374();
    v62 = v206;
    v63 = v207;
    *v206 = v61;
    v64 = v208;
    v63[13](v62, *MEMORY[0x277D85200], v208);
    v65 = sub_20C13C584();
    result = (v63[1])(v62, v64);
    if (v65)
    {
      v68 = *&v49[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView];
      v67 = *&v49[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v68 setContentMode_];
      if (sub_20BA66C54(v57, v68, v67, 0))
      {
        v206 = v52;
        v70 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v71 = v210;
        v72 = *(v210 + 16);
        v207 = v58;
        v173 = ObjectType;
        v73 = v203;
        v175 = v60;
        v74 = v211;
        v167 = v210 + 16;
        v168 = v72;
        v72(v203, v57, v211);
        v75 = *(v71 + 80);
        v208 = v56;
        v76 = (v75 + 24) & ~v75;
        v164 = v204 + 7;
        v77 = (v204 + 7 + v76) & 0xFFFFFFFFFFFFFFF8;
        v171 = v67;
        v172 = v68;
        v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
        v79 = (v78 + 23) & 0xFFFFFFFFFFFFFFF8;
        v170 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
        v169 = v75;
        v80 = swift_allocObject();
        *(v80 + 16) = v70;
        v81 = v71;
        v82 = v73;
        v83 = *(v81 + 32);
        v84 = v80 + v76;
        v85 = v208;
        v86 = v74;
        v87 = v175;
        v166 = v81 + 32;
        v165 = v83;
        v83(v84, v73, v86);
        v88 = (v80 + v77);
        *v88 = v207;
        v88[1] = v87;
        v89 = (v80 + v78);
        *v89 = v179;
        v89[1] = v85;
        *(v80 + v79) = 2;
        v90 = v80 + v170;
        *v90 = MEMORY[0x277D84F90];
        *(v90 + 8) = 0;
        v91 = (v80 + ((v79 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v91 = 0;
        v91[1] = 0;
        v92 = v171;
        v93 = *(v171 + 152);

        v94 = v80;
        v95 = v172;
        v96 = v173;
        v93(sub_20C06013C, v94);

        [v95 bounds];
        if (v97 <= 0.0 || (v99 = v98, v98 <= 0.0))
        {

          v133 = v211;
          v57 = v212;
        }

        else
        {
          v100 = v97;
          v170 = ~v169;
          v101 = v92;
          v102 = v95;
          v103 = v96;
          (*(v92 + 120))(0, v96, v92);
          v104 = v195;
          v106 = v211;
          v105 = v212;
          v107 = v168;
          v168(v195, v212, v211);
          v108 = v107;
          (*(v210 + 56))(v104, 0, 1, v106);
          (*(v101 + 16))(v104, v103, v101);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v109 = sub_20C13D5A4();
          [v102 setBackgroundColor_];

          (*(v101 + 176))(COERCE_DOUBLE(*&v100), COERCE_DOUBLE(*&v99), 0, v103, v101);
          v110 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v108(v82, v105, v106);
          v111 = (v169 + 16) & v170;
          v112 = (v164 + v111) & 0xFFFFFFFFFFFFFFF8;
          v113 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
          v114 = swift_allocObject();
          v165(v114 + v111, v82, v106);
          *(v114 + v112) = v110;
          v57 = v212;
          v115 = (v114 + v113);
          *v115 = v100;
          v115[1] = v99;
          v195 = v114;
          v116 = (v114 + ((v113 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v116 = 0;
          v116[1] = 0;
          v117 = v82;
          v168(v82, v57, v106);
          (*(v196 + 104))(v176, *MEMORY[0x277D542A8], v197);

          v118 = v201;
          sub_20C138A54();
          v119 = v177;
          sub_20B5F160C(v118, v177);
          v120 = v200;
          v121 = v178;
          if ((*(v200 + 48))(v119, 1, v178) == 1)
          {
            sub_20B520158(v119, &unk_27C766670);
            sub_20BA1D944();

            (*(v198 + 8))(v118, v199);
          }

          else
          {
            v207 = *(v120 + 32);
            (v207)(v202, v119, v121);
            v135 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v136 = v211;
            v168(v117, v57, v211);
            v137 = (v169 + 40) & v170;
            v138 = v137 + v204;
            v139 = (v137 + v204) & 0xFFFFFFFFFFFFFFF8;
            v140 = swift_allocObject();
            *(v140 + 2) = v135;
            v140[3] = v100;
            v140[4] = v99;
            v165(v140 + v137, v117, v136);
            *(v140 + v138) = 0;
            v141 = v140 + v139;
            *(v141 + 1) = 0;
            *(v141 + 2) = 0;
            v142 = swift_allocObject();
            *(v142 + 16) = sub_20C0602D0;
            *(v142 + 24) = v140;
            v143 = v188;
            (*(v120 + 16))(v188, v202, v121);
            v144 = (*(v120 + 80) + 16) & ~*(v120 + 80);
            v145 = (v174 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
            v146 = swift_allocObject();
            (v207)(v146 + v144, v143, v121);
            v147 = (v146 + v145);
            *v147 = sub_20B5F67A4;
            v147[1] = v142;
            v148 = v191;
            sub_20C137C94();
            v149 = swift_allocObject();
            v150 = v195;
            *(v149 + 16) = sub_20C060214;
            *(v149 + 24) = v150;
            v151 = swift_allocObject();
            *(v151 + 16) = sub_20B5F67D4;
            *(v151 + 24) = v149;
            v152 = v193;
            v153 = v190;
            v154 = v194;
            (*(v193 + 16))(v190, v148, v194);
            v155 = (*(v152 + 80) + 16) & ~*(v152 + 80);
            v156 = (v189 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
            v157 = swift_allocObject();
            (*(v152 + 32))(v157 + v155, v153, v154);
            v158 = (v157 + v156);
            *v158 = sub_20B5DF204;
            v158[1] = v151;

            v159 = v192;
            sub_20C137C94();
            v160 = *(v152 + 8);
            v160(v148, v154);
            v161 = sub_20C137CB4();
            v162 = swift_allocObject();
            *(v162 + 16) = 0;
            *(v162 + 24) = 0;
            v161(sub_20B52347C, v162);

            v57 = v212;

            v160(v159, v154);
            (*(v120 + 8))(v202, v178);
            (*(v198 + 8))(v201, v199);
          }

          v133 = v211;
        }

        v134 = v187;
        v52 = v206;
      }

      else
      {

        v133 = v211;
        v134 = v187;
      }

      (*(v210 + 8))(v57, v133);
      (*(v134 + 8))(v213, v205);

      sub_20B62A2AC(v214);
      return (*(v186 + 8))(v185, v209);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v122 = v215;
    v123 = sub_20C13BB74();
    v124 = sub_20C13D1D4();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v216 = a1;
      v217 = v127;
      *v125 = 138543618;
      *(v125 + 4) = v122;
      *v126 = v122;
      *(v125 + 12) = 2082;
      v128 = sub_20B5F66D0();
      v129 = v122;
      v130 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v128);
      v132 = sub_20B51E694(v130, v131, &v217);

      *(v125 + 14) = v132;
      _os_log_impl(&dword_20B517000, v123, v124, "Attempted to configure %{public}@ with item: %{public}s", v125, 0x16u);
      sub_20B520158(v126, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v126, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v127);
      MEMORY[0x20F2F6A40](v127, -1, -1);
      MEMORY[0x20F2F6A40](v125, -1, -1);
    }

    return (*(v209 + 8))(v4, v2);
  }

  return result;
}

void sub_20C06013C()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA2F498(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20C060214(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA629A0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20C0602D0(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F1F28(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20C060384()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI13CircleRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI13CircleRowCell_currentConstraints) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView);
  v4 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v5) = 1148846080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v6];
  v7 = [v4 layer];
  [v7 setCornerRadius_];

  [v4 setClipsToBounds_];
  *v3 = v4;
  v3[1] = &off_2822B63E8;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  LODWORD(v9) = 1148846080;
  [v8 setContentCompressionResistancePriority:1 forAxis:v9];

  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];
  if (v11)
  {
    v12 = v11;

    v10 = v12;
  }

  v13 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_titleLabel;
  v14 = objc_opt_self();
  v15 = [v14 fontWithDescriptor:v10 size:0.0];

  [v8 setFont_];
  [v8 setAllowsDefaultTighteningForTruncation_];
  v16 = objc_opt_self();
  v17 = [v16 whiteColor];
  [v8 setTextColor_];

  [v8 setLineBreakMode_];
  *(v0 + v13) = v8;
  v18 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_subtitleLabel;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAdjustsFontForContentSizeCategory_];
  LODWORD(v20) = 1148846080;
  [v19 setContentCompressionResistancePriority:1 forAxis:v20];

  v21 = [v14 preferredFontForTextStyle_];
  [v19 setFont_];

  [v19 setAllowsDefaultTighteningForTruncation_];
  v22 = [v16 systemGrayColor];
  [v19 setTextColor_];

  [v19 setLineBreakMode_];
  *(v0 + v18) = v19;
  v23 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_bottomLine;
  v24 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = [v16 separatorColor];
  [v24 setBackgroundColor_];

  *(v0 + v23) = v24;
  v26 = v0 + OBJC_IVAR____TtC9SeymourUI13CircleRowCell_layout;
  *v26 = xmmword_20C18B6C0;
  *(v26 + 16) = xmmword_20C18B6D0;
  *(v26 + 32) = 0x4020000000000000;
  v27 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_textGuide;
  *(v0 + v27) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI18LoadingButtonStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C0608A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 48))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C060904(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_20C060968(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = a2;
  }

  return result;
}

BOOL sub_20C0609B4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_20C0609FC(v7, v8);
}

BOOL sub_20C0609FC(void *a1, void *a2)
{
  v3 = a1[1];
  if (v3 == 1)
  {
    return a2[1] == 1;
  }

  v5 = a2[1];
  if (v5 == 1)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v11 = a2[2];
  v10 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v5 || (*a1 != *a2 || v3 != v5) && (sub_20C13DFF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v7)
  {
    if (!v10 || (v6 != v11 || v7 != v10) && (sub_20C13DFF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v9)
  {
    if (v12 && (v8 == v13 && v9 == v12 || (sub_20C13DFF4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

id sub_20C060B2C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = sub_20C060B88(v0);
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_20C060B88(uint64_t a1)
{
  v2 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *(a1 + 24);
  v58 = *(a1 + 32);
  v59 = v3;

  v5 = sub_20BEF6434(v4);

  v57 = sub_20C1380F4();
  v6 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v56 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v6 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v7 = sub_20C13C724();
  v8 = type metadata accessor for CatalogPageImpressionTracker();
  v9 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v10 = MEMORY[0x277D221C0];
  v9[2] = sub_20C13C6D4();
  v9[3] = v7;
  v9[4] = v10;
  v71[3] = v8;
  v11 = sub_20B63EE48();
  v71[4] = v11;
  v71[0] = v9;
  v12 = type metadata accessor for MetricLocationStore();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F98];
  *(v13 + 16) = MEMORY[0x277D84F90];
  *(v13 + 24) = v15;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v71, v8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v19;
  v70[3] = v8;
  v70[4] = v11;
  v70[0] = v21;
  v69[3] = v12;
  v69[4] = &off_2822B6968;
  v69[0] = v13;
  v22 = *(v5 + 16);
  if (v22)
  {
    v54 = v12;
    v55 = v11;
    v68[0] = v14;
    sub_20BB5D394(0, v22, 0);
    v23 = 32;
    v24 = v68[0];
    do
    {
      v25 = *(v5 + v23);
      v68[0] = v24;
      v26 = *(v24 + 16);
      v27 = *(v24 + 24);
      v60 = v25;
      swift_unknownObjectRetain();
      if (v26 >= v27 >> 1)
      {
        sub_20BB5D394((v27 > 1), v26 + 1, 1);
        v24 = v68[0];
      }

      *(v24 + 16) = v26 + 1;
      v28 = v24 + 24 * v26;
      *(v28 + 32) = v60;
      *(v28 + 48) = 0;
      v23 += 16;
      --v22;
    }

    while (v22);

    v12 = v54;
    v11 = v55;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  sub_20B51CC64(v70, v68);
  sub_20B51CC64(v69, v67);
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v68, v68[3]);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = (&v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v67, v67[3]);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = (&v54 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37, v35);
  v39 = *v32;
  v40 = *v37;
  v65 = v8;
  v66 = v11;
  v64[0] = v39;
  v62 = v12;
  v63 = &off_2822B6968;
  v61[0] = v40;
  v41 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  v43 = MEMORY[0x28223BE20](v42);
  v45 = (&v54 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45, v43);
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
  v48 = MEMORY[0x28223BE20](v47);
  v50 = (&v54 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50, v48);
  v52 = sub_20BE3AA74(v59, v58, v24, v57, v56, *v45, *v50, 2, v41);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v71);
  return v52;
}

uint64_t sub_20C0611E4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X3>, unint64_t a5@<X4>, char *a6@<X5>, unint64_t a7@<X6>, _OWORD *a8@<X7>, void *a9@<X8>)
{
  v125 = a8;
  v132 = a7;
  v126 = a6;
  v123 = a5;
  v122 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  MEMORY[0x28223BE20](v14 - 8);
  v118 = &v96 - v15;
  v121 = sub_20C134EC4();
  v124 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v16;
  MEMORY[0x28223BE20](v17);
  v119 = &v96 - v18;
  v19 = sub_20C135524();
  v115 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v117 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v116 = &v96 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v96 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v96 - v27;
  v29 = sub_20C133E24();
  MEMORY[0x28223BE20](v29);
  v35 = MEMORY[0x28223BE20](v30);
  v36 = *a1;
  if (v36 == 6)
  {
    v103 = 6;
    v105 = a9;
    v106 = v9;
    v104 = a2;
    v37 = *(a2 + 16);
    v97 = *(v33 + 16);
    v113 = v34;
    v112 = &v96 - v31;
    v102 = a3;
    v111 = v32;
    v100 = v33;
    (v97)(&v96 - v31, a3, v32, v35);
    v38 = *(v115 + 16);
    v107 = v38;
    v108 = v115 + 16;
    v110 = v28;
    v38(v28, v122, v19);
    v109 = v25;
    v38(v25, v132, v19);
    v39 = v124 + 16;
    v40 = *(v124 + 16);
    v41 = v119;
    v40(v119, v126, v121);
    v98 = v40;
    v99 = v39;
    sub_20B6AE918(v123, v118);
    type metadata accessor for TVCatalogThemeFilterOptionsShelf();
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_20C132ED4();
    v43 = v42 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row;
    sub_20B5D8060(v130);
    v44 = v130[7];
    v45 = v130[9];
    *(v43 + 128) = v130[8];
    *(v43 + 144) = v45;
    v46 = v130[5];
    v47 = v130[6];
    *(v43 + 64) = v130[4];
    *(v43 + 80) = v46;
    *(v43 + 160) = v131;
    *(v43 + 96) = v47;
    *(v43 + 112) = v44;
    v48 = v130[1];
    *v43 = v130[0];
    *(v43 + 16) = v48;
    v49 = v130[3];
    *(v43 + 32) = v130[2];
    *(v43 + 48) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
    sub_20C133AA4();
    v97(v113, v112, v111);
    v50 = v107;
    v107(v116, v110, v19);
    v40(v120, v41, v121);
    v50(v117, v109, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E48);
    v51 = swift_allocObject();
    *(v51 + 48) = 0u;
    *(v51 + 64) = 0u;
    *(v51 + 80) = 0u;
    *(v51 + 96) = 0u;
    *(v51 + 112) = 0u;
    v52 = *(*v51 + 176);
    v53 = sub_20C133A74();
    v54 = *(*(v53 - 8) + 56);
    v54(v51 + v52, 1, 1, v53);
    v54(v51 + *(*v51 + 184), 1, 1, v53);
    v54(v51 + *(*v51 + 192), 1, 1, v53);
    *(v51 + 40) = v37;
    v101 = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
    sub_20C133AA4();
    v55 = v128;
    *(v51 + 16) = v127;
    *(v51 + 24) = v55;
    sub_20C13A924();
    swift_allocObject();
    swift_unknownObjectRetain();
    v56 = sub_20C13A914();
    v57 = v115;
    v58 = *(v115 + 8);
    v58(v109, v19);
    v58(v110, v19);
    v59 = v100;
    v60 = v111;
    (*(v100 + 8))(v112, v111);
    *(v51 + 32) = v56;
    v61 = MEMORY[0x277D84F90];
    *(v51 + *(*v51 + 216)) = MEMORY[0x277D84F90];
    *(v51 + *(*v51 + 224)) = v61;
    *(v51 + *(*v51 + 208)) = 6;
    *(v51 + *(*v51 + 200)) = 456;
    (*(v59 + 32))(v51 + qword_27C79BF30, v113, v60);
    v62 = v116;
    v107((v51 + qword_27C79BF38), v116, v19);
    v63 = *(v57 + 32);
    v63(v51 + *(*v51 + 232), v62, v19);
    v63(v51 + *(*v51 + 240), v117, v19);
    v64 = *(*v51 + 248);
    v65 = *(v124 + 32);
    v124 += 32;
    v66 = v121;
    v65(v51 + v64, v120, v121);
    *(v42 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator) = v51;
    sub_20B6AE988(v118, v42 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_rootModality);
    v67 = v119;
    v98(v42 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_filterRoot, v119, v66);
    sub_20B52E424(&v129, v42 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_storefrontLocalizer);
    *(v42 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_content) = 0;
    v68 = swift_allocObject();
    swift_weakInit();
    v69 = *(v51 + 48);
    *(v51 + 48) = sub_20B88FAC0;
    *(v51 + 56) = v68;

    sub_20B583ECC(v69);

    v70 = *(v42 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator);
    v71 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator;
    v118 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator;
    v72 = swift_allocObject();
    swift_weakInit();
    v73 = *(v70 + 64);
    *(v70 + 64) = sub_20B88FAC8;
    *(v70 + 72) = v72;

    sub_20B583ECC(v73);

    v74 = *(v42 + v71);
    v75 = swift_allocObject();
    swift_weakInit();
    v76 = v120;
    v77 = v67;
    v78 = v124;
    v65(v120, v77, v66);
    v79 = (*(v78 + 48) + 24) & ~*(v78 + 48);
    v80 = swift_allocObject();
    *(v80 + 16) = v75;
    v65(v80 + v79, v76, v66);
    v81 = *(v74 + 80);
    *(v74 + 80) = sub_20C063648;
    *(v74 + 88) = v80;

    sub_20B583ECC(v81);

    v82 = v118;
    v83 = *(v42 + v118);
    v84 = swift_allocObject();
    swift_weakInit();
    v85 = *(v83 + 96);
    *(v83 + 96) = sub_20B7E05FC;
    *(v83 + 104) = v84;

    sub_20B583ECC(v85);

    v86 = *(v42 + v82);
    v87 = swift_allocObject();
    swift_weakInit();

    v88 = *(v86 + 112);
    *(v86 + 112) = sub_20B88FAE8;
    *(v86 + 120) = v87;
    swift_retain_n();
    sub_20B583ECC(v88);

    a3 = v102;
    v89 = v122;
    v90 = v123;
    v91 = sub_20B889EDC(v101, v102, v122, v123, v126, v132, v125, 0xA2uLL, 6u);
    if (*(v91 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_20C14F980;
      *(v92 + 32) = v42;
      *(v92 + 40) = &off_2822D9808;
      *&v129 = v92;
      sub_20B8D93EC(v91);
      v93 = v129;
    }

    else
    {

      v93 = MEMORY[0x277D84F90];
    }

    a9 = v105;
    LOBYTE(v36) = v103;
  }

  else
  {
    v89 = v122;
    v90 = v123;
    v93 = sub_20B889EDC(*(a2 + 16), a3, v122, v123, v126, v132, v125, 0xEAuLL, v36);
  }

  v94 = sub_20C061FA8(v36, a3, v89, v90, v126, v132, v125);
  *&v130[0] = v93;
  result = sub_20B8D93EC(v94);
  *a9 = *&v130[0];
  return result;
}

uint64_t sub_20C061FA8(unsigned __int8 a1, char *a2, char *a3, unint64_t a4, unint64_t a5, unint64_t a6, _OWORD *a7)
{
  v8 = v7;
  LOBYTE(v15) = a1;
  v16 = a1;
  v188 = *MEMORY[0x277D85DE8];
  v17 = sub_20C133A74();
  v18 = *(v17 - 8);
  v180 = v17;
  v181 = v18;
  MEMORY[0x28223BE20](v17);
  v178 = v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = v145 - v21;
  v176 = sub_20C134EC4();
  v171 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v174 = v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = v22;
  MEMORY[0x28223BE20](v23);
  v177 = v145 - v24;
  v25 = sub_20C135524();
  v168 = *(v25 - 8);
  v169 = v25;
  MEMORY[0x28223BE20](v25);
  v166 = v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v165 = v145 - v28;
  MEMORY[0x28223BE20](v29);
  v167 = v145 - v30;
  MEMORY[0x28223BE20](v31);
  v175 = v145 - v32;
  v33 = sub_20C133E24();
  MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v34);
  if (v16 != 6)
  {
    return sub_20B889EDC(*(v8 + 16), a2, a3, a4, a5, a6, a7, 0x3CuLL, v15);
  }

  v39 = v38;
  v164 = v145 - v36;
  v161 = v37;
  v162 = v35;
  sub_20C135864();
  v40 = sub_20C13CFB4();

  if (!*(v40 + 16))
  {
    goto LABEL_38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20);
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_20C14F980;
  v41 = *(v8 + 16);
  v42 = v39;
  v147 = *(v39 + 16);
  v148 = v39 + 16;
  v147(v164, a2, v162);
  v43 = a4;
  v44 = v168 + 16;
  v45 = *(v168 + 16);
  v46 = a3;
  v47 = v169;
  v45(v175, v46, v169);
  v158 = v44;
  v150 = v45;
  v45(v167, a6, v47);
  v159 = *(v171 + 16);
  v160 = v171 + 16;
  v159(v177, a5, v176);
  sub_20B6AE918(v43, v170);
  v145[0] = type metadata accessor for TVCatalogThemeFilterOptionsShelf();
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v153 = v48;
  v49 = v48 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row;
  sub_20B5D8060(v186);
  v50 = v186[9];
  *(v49 + 128) = v186[8];
  *(v49 + 144) = v50;
  *(v49 + 160) = v187;
  v51 = v186[5];
  *(v49 + 64) = v186[4];
  *(v49 + 80) = v51;
  v52 = v186[7];
  *(v49 + 96) = v186[6];
  *(v49 + 112) = v52;
  v53 = v186[1];
  *v49 = v186[0];
  *(v49 + 16) = v53;
  v54 = v186[3];
  *(v49 + 32) = v186[2];
  *(v49 + 48) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  v149 = v41;
  sub_20C133AA4();
  v55 = *(v40 + 32);
  LODWORD(v49) = v55 & 0x3F;
  a6 = ((1 << v55) + 63) >> 6;
  a7 = (8 * a6);
  v56 = swift_bridgeObjectRetain_n();
  v179 = v40;
  v151 = v42;
  if (v49 > 0xD)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v154 = v145;
    v155 = a6;
    MEMORY[0x28223BE20](v56);
    v156 = v145 - ((a7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v156, a7);
    v157 = 0;
    v8 = 0;
    v58 = *(v40 + 56);
    v40 += 56;
    v57 = v58;
    v59 = 1 << *(v40 - 24);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    a5 = v60 & v57;
    a2 = ((v59 + 63) >> 6);
    v172 = v181 + 8;
    v173 = v181 + 16;
    while (a5)
    {
      v61 = __clz(__rbit64(a5));
      a5 &= a5 - 1;
LABEL_14:
      a6 = v61 | (v8 << 6);
      a7 = v178;
      a4 = v180;
      v15 = v181;
      (*(v181 + 16))(v178, *(v179 + 48) + *(v181 + 72) * a6, v180);
      a3 = sub_20C133A64();
      (*(v15 + 8))(a7, a4);
      if (a3)
      {
        *&v156[(a6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a6;
        v64 = __OFADD__(v157++, 1);
        if (v64)
        {
          __break(1u);
          return sub_20B889EDC(*(v8 + 16), a2, a3, a4, a5, a6, a7, 0x3CuLL, v15);
        }
      }
    }

    v62 = v8;
    while (1)
    {
      v8 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v8 >= a2)
      {
        v40 = v179;
        v66 = sub_20BC0E730(v156, v155, v157, v179);
        v155 = 0;
        goto LABEL_20;
      }

      v63 = *(v40 + 8 * v8);
      ++v62;
      if (v63)
      {
        v61 = __clz(__rbit64(v63));
        a5 = (v63 - 1) & v63;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v91 = swift_slowAlloc();
  v92 = sub_20B9840FC(v91, a6, v40, sub_20BC68DB0, 0);
  v155 = 0;
  v66 = v92;

  MEMORY[0x20F2F6A40](v91, -1, -1);
LABEL_20:
  *&v183[0] = v66;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E38);
  sub_20B88FA5C();
  a7 = v183;
  v67 = sub_20C13CBF4();

  v69 = *(v40 + 32);
  v70 = v69 & 0x3F;
  v71 = (1 << v69) + 63;
  a6 = v71 >> 6;
  v154 = v67;
  if (v70 <= 0xD)
  {
    goto LABEL_21;
  }

  v90 = 8 * (v71 >> 6);

  a7 = v90;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_21:
    v145[1] = v145;
    v146 = a6;
    MEMORY[0x28223BE20](v68);
    v156 = v145 - ((v72 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v156, v72);
    v157 = 0;
    v73 = 0;
    v75 = *(v40 + 56);
    v40 += 56;
    v74 = v75;
    v76 = 1 << *(v40 - 24);
    v77 = -1;
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    v78 = v77 & v74;
    v79 = (v76 + 63) >> 6;
    v172 = v181 + 8;
    v173 = v181 + 16;
    while (1)
    {
      if (!v78)
      {
        v81 = v73;
        while (1)
        {
          v73 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            goto LABEL_40;
          }

          if (v73 >= v79)
          {
            goto LABEL_35;
          }

          v82 = *(v40 + 8 * v73);
          ++v81;
          if (v82)
          {
            v80 = __clz(__rbit64(v82));
            v78 = (v82 - 1) & v82;
            goto LABEL_31;
          }
        }
      }

      v80 = __clz(__rbit64(v78));
      v78 &= v78 - 1;
LABEL_31:
      v83 = v80 | (v73 << 6);
      a7 = v178;
      v84 = v180;
      a6 = v181;
      (*(v181 + 16))(v178, *(v179 + 48) + *(v181 + 72) * v83, v180);
      v85 = sub_20C133A64();
      (*(a6 + 8))(a7, v84);
      if (!v85)
      {
        *&v156[(v83 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v83;
        v64 = __OFADD__(v157++, 1);
        if (v64)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_35:
    v86 = sub_20BC0E730(v156, v146, v157, v179);
    v87 = *(v86 + 16);
    if (!v87)
    {
      goto LABEL_48;
    }

    goto LABEL_36;
  }

  v93 = swift_slowAlloc();
  v94 = v155;
  v95 = sub_20B9840FC(v93, a6, v40, sub_20BC68DE4, 0);
  v155 = v94;
  if (v94)
  {

    v144 = v93;
    goto LABEL_55;
  }

  v86 = v95;

  MEMORY[0x20F2F6A40](v93, -1, -1);
  v87 = *(v86 + 16);
  if (!v87)
  {
LABEL_48:
    v88 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

LABEL_36:
  v88 = sub_20BEDE94C(v87, 0);
  v89 = sub_20BEE2084(v183, &v88[(*(v181 + 80) + 32) & ~*(v181 + 80)], v87, v86);

  sub_20B6D87E8();
  if (v89 != v87)
  {
    __break(1u);
LABEL_38:

    return MEMORY[0x277D84F90];
  }

LABEL_49:
  v96 = v155;
  v182 = v88;
  sub_20C06364C(&v182);
  if (v96)
  {

    while (1)
    {
      v136 = v153;
      sub_20B583E6C(v153 + 16);
      v137 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_identifier;
      v138 = sub_20C132EE4();
      (*(*(v138 - 8) + 8))(v136 + v137, v138);
      v139 = *(v136 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 144);
      v183[8] = *(v136 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 128);
      v183[9] = v139;
      v184 = *(v136 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 160);
      v140 = *(v136 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 80);
      v183[4] = *(v136 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 64);
      v183[5] = v140;
      v141 = *(v136 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 112);
      v183[6] = *(v136 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 96);
      v183[7] = v141;
      v142 = *(v136 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 16);
      v183[0] = *(v136 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row);
      v183[1] = v142;
      v143 = *(v136 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 48);
      v183[2] = *(v136 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 32);
      v183[3] = v143;
      sub_20B634408(v183);
      swift_deallocPartialClassInstance();
      __break(1u);

      v144 = v137;
LABEL_55:
      MEMORY[0x20F2F6A40](v144, -1, -1);
    }
  }

  *&v183[0] = v154;
  sub_20B8D91F0(v182);
  v178 = *&v183[0];
  v97 = v162;
  v147(v161, v164, v162);
  v98 = v169;
  v99 = v150;
  v150(v165, v175, v169);
  v159(v174, v177, v176);
  v100 = v167;
  v99(v166, v167, v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E48);
  v101 = swift_allocObject();
  *(v101 + 48) = 0u;
  *(v101 + 64) = 0u;
  *(v101 + 80) = 0u;
  *(v101 + 96) = 0u;
  *(v101 + 112) = 0u;
  v102 = v180;
  v103 = *(v181 + 56);
  v103(v101 + *(*v101 + 176), 1, 1, v180);
  v103(v101 + *(*v101 + 184), 1, 1, v102);
  v103(v101 + *(*v101 + 192), 1, 1, v102);
  *(v101 + 40) = v149;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v104 = *(&v183[0] + 1);
  *(v101 + 16) = *&v183[0];
  *(v101 + 24) = v104;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v105 = sub_20C13A914();
  v106 = v168;
  v107 = *(v168 + 8);
  v107(v100, v98);
  v107(v175, v98);
  v108 = v151;
  (*(v151 + 8))(v164, v97);
  *(v101 + 32) = v105;
  v109 = v178;
  *(v101 + *(*v101 + 216)) = v178;
  *(v101 + *(*v101 + 224)) = v109;
  *(v101 + *(*v101 + 208)) = 6;
  *(v101 + *(*v101 + 200)) = 60;
  (*(v108 + 32))(v101 + qword_27C79BF30, v161, v97);
  v110 = v165;
  v99((v101 + qword_27C79BF38), v165, v98);
  v111 = *(v106 + 32);
  v111(v101 + *(*v101 + 232), v110, v98);
  v111(v101 + *(*v101 + 240), v166, v98);
  v112 = *(*v101 + 248);
  v113 = v171 + 32;
  v181 = *(v171 + 32);
  v114 = v176;
  (v181)(v101 + v112, v174, v176);
  v115 = v153;
  *(v153 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator) = v101;
  sub_20B6AE988(v170, v115 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_rootModality);
  v159((v115 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_filterRoot), v177, v114);
  sub_20B52E424(&v185, v115 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_storefrontLocalizer);
  *(v115 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_content) = v179;
  v116 = swift_allocObject();
  swift_weakInit();
  v117 = *(v101 + 48);
  *(v101 + 48) = sub_20C064DF8;
  *(v101 + 56) = v116;

  sub_20B583ECC(v117);

  v118 = *(v115 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator);
  v119 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator;
  v180 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator;
  v120 = swift_allocObject();
  swift_weakInit();
  v121 = *(v118 + 64);
  *(v118 + 64) = sub_20C064DFC;
  *(v118 + 72) = v120;

  sub_20B583ECC(v121);

  v122 = *(v115 + v119);
  v123 = swift_allocObject();
  swift_weakInit();
  v124 = v174;
  v125 = v181;
  (v181)(v174, v177, v114);
  v126 = (*(v113 + 48) + 24) & ~*(v113 + 48);
  v127 = swift_allocObject();
  *(v127 + 16) = v123;
  v125(v127 + v126, v124, v114);
  v128 = *(v122 + 80);
  *(v122 + 80) = sub_20C064E04;
  *(v122 + 88) = v127;

  sub_20B583ECC(v128);

  v129 = v180;
  v130 = *(v115 + v180);
  v131 = swift_allocObject();
  swift_weakInit();
  v132 = *(v130 + 96);
  *(v130 + 96) = sub_20C064E00;
  *(v130 + 104) = v131;

  sub_20B583ECC(v132);

  v133 = *(v115 + v129);
  v134 = swift_allocObject();
  swift_weakInit();

  v135 = *(v133 + 112);
  *(v133 + 112) = sub_20C064E08;
  *(v133 + 120) = v134;
  swift_retain_n();
  sub_20B583ECC(v135);

  result = v152;
  *(v152 + 32) = v115;
  *(result + 40) = &off_2822D9808;
  return result;
}

uint64_t sub_20C063280()
{

  return swift_deallocClassInstance();
}

uint64_t sub_20C0632F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_20C060B2C();

  v13 = *MEMORY[0x277D51800];
  v14 = sub_20C1352F4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v11, v13, v14);
  (*(v15 + 56))(v11, 0, 1, v14);
  v16 = sub_20C132C14();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = sub_20C135ED4();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  v18 = sub_20C136914();
  (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
  return sub_20C133384();
}

void sub_20C06364C(void **a1)
{
  v2 = *(sub_20C133A74() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0E34(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20C0636F4(v5);
  *a1 = v3;
}

void sub_20C0636F4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C133A74();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C133A74() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20C063B2C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20C063820(0, v2, 1, a1);
  }
}

void sub_20C063820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C133A74();
  MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v34 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_20C133A54();
      v27 = v26;
      if (v25 == sub_20C133A54() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_20C13DFF4();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_20C063B2C(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_20C133A74();
  MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v150 = &v129 - v12;
  MEMORY[0x28223BE20](v13);
  v155 = &v129 - v14;
  MEMORY[0x28223BE20](v15);
  v154 = &v129 - v16;
  MEMORY[0x28223BE20](v17);
  v147 = &v129 - v18;
  MEMORY[0x28223BE20](v19);
  v146 = &v129 - v20;
  MEMORY[0x28223BE20](v21);
  v134 = &v129 - v22;
  v25 = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v26;
  v27 = *(a3 + 1);
  v144 = v24;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_20C0646E8(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v29], v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_20B6A07A0(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v29;
          v156 = a3;
          sub_20B6A0714(v123 - 1);
          v29 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_20B6A07A0(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = &v32[v33 * v31];
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, &v32[v33 * v30], v9);
      v31 = sub_20C133A54();
      v37 = v36;
      v38 = sub_20C133A54();
      v132 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_20C13DFF4();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = &v32[v42];
      v44 = v145 * v5;
      v45 = &v32[v145 * v5];
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_20C133A54();
        v52 = v51;
        if (v50 == sub_20C133A54() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_20C13DFF4();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = a3 + 1;
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              (v149)(v139, v57 + v54, v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v149)(v57 + v6, v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = *(a3 + 1);
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_20BC05740(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_20BC05740((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_20C0646E8(&v118[*(v144 + 72) * v119], &v118[*(v144 + 72) * v120], &v118[*(v144 + 72) * v29], v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_20B6A07A0(a3);
        }

        if (v117 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v121 = &a3[16 * v117];
        *(v121 + 4) = v119;
        *(v121 + 5) = v29;
        v156 = a3;
        sub_20B6A0714(v31);
        v29 = v156;
        v77 = *(v156 + 16);
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = *(a3 + 1);
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = *(a3 + 1);
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = &v60[v31 * v61];
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_20C133A54();
    v69 = v68;
    if (v5 == sub_20C133A54() && v69 == v70)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_20C13DFF4();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v73)(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

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
}

void sub_20C0646E8(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v70 = sub_20C133A74();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v58 - v11;
  MEMORY[0x28223BE20](v12);
  v69 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = (a2 - a1) / v17;
  v73 = a1;
  v72 = a4;
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

    v40 = a4 + v21;
    if (v21 < 1)
    {
      v43 = a4 + v21;
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = a4 + v21;
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = (a2 + v41);
          v68 = (a2 + v41);
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_20C133A54();
            v51 = v50;
            if (v49 == sub_20C133A54() && v51 == v52)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_20C13DFF4();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
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

    v67 = (a4 + v20);
    v71 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_20C133A54();
        v31 = v30;
        if (v29 == sub_20C133A54() && v31 == v32)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_20C13DFF4();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = v25 + v65;
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 += v65;
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_20B6A0844(&v73, &v72, &v71);
}

uint64_t sub_20C064D84(uint64_t a1)
{
  v3 = *(sub_20C134EC4() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_20BC68E88(a1, v4, v5);
}

uint64_t EngagementPresentationCoordinator.allowsModalMessageDisplay.getter()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_modalContextProvider))
  {
    v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_modalContextProvider + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    swift_unknownObjectRetain();
    v8 = v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  sub_20C13B424();
  v9 = sub_20C13BB74();
  v10 = sub_20C13D1B4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v8 & 1;
    _os_log_impl(&dword_20B517000, v9, v10, "[IAM] Requesting modal message display: allowed=%{BOOL}d", v11, 8u);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return v8 & 1;
}

uint64_t EngagementPresentationCoordinator.contextProperty(withName:)@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_20C136624();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772070);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  v10 = OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_engagementBannerRuleInfo;
  swift_beginAccess();
  sub_20C06550C(v1 + v10, v9);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    result = sub_20C06557C(v9);
    *a1 = 0u;
    a1[1] = 0u;
  }

  else
  {
    (*(v4 + 16))(v6, v9, v3);
    sub_20C06557C(v9);
    sub_20C136614();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void __swiftcall EngagementPresentationCoordinator.viewControllerForModalPresentation()(UIViewController_optional *__return_ptr retstr)
{
  v2 = v1;
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20B517000, v7, v8, "[IAM] Preparing controller for IAM modal presentation", v9, 2u);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_modalContextProvider))
  {
    v10 = *(v2 + OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_modalContextProvider + 8);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 16);
    swift_unknownObjectRetain();
    v12(ObjectType, v10);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_20C06550C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C06557C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id MarketingPurchaseHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_20C065618(void *a1, void *a2, uint64_t a3)
{
  v71 = a3;
  v5 = sub_20C13C4B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13C4F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13BB84();
  v72 = *(v13 - 8);
  v73 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v20 = &v66 - v19;
  if (a2)
  {
    v21 = a2;
    sub_20C13B534();
    v22 = a2;
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1D4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      swift_getErrorValue();
      v27 = MEMORY[0x20F2F5850](v75, v76);
      v29 = sub_20B51E694(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_20B517000, v23, v24, "Purchase failed with error: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      MEMORY[0x20F2F6A40](v25, -1, -1);
    }

    (*(v72 + 8))(v20, v73);
    sub_20C066764(a2);
    v30 = a2;
LABEL_5:

    return;
  }

  v67 = v12;
  v68 = v10;
  v69 = v8;
  v70 = v6;
  if (!a1)
  {
    sub_20C13B534();
    v47 = sub_20C13BB74();
    v48 = sub_20C13D1D4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_20B517000, v47, v48, "No purchase result found", v49, 2u);
      MEMORY[0x20F2F6A40](v49, -1, -1);
    }

    (*(v72 + 8))(v15, v73);
    v50 = sub_20C138A74();
    sub_20C066CDC(&qword_27C767070, MEMORY[0x277D54128]);
    v51 = swift_allocError();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D54110], v50);
    sub_20C066764(v51);
    v30 = v51;
    goto LABEL_5;
  }

  v31 = v18;
  v32 = a1;
  v33 = [v32 correlationID];
  if (v33)
  {
    v34 = v33;
    v35 = sub_20C13C954();
    v37 = v36;

    sub_20C13B534();

    v38 = sub_20C13BB74();
    v39 = sub_20C13D1F4();

    v40 = os_log_type_enabled(v38, v39);
    v66 = v9;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v35;
      v44 = v39;
      v45 = v42;
      aBlock[0] = v42;
      *v41 = 136446210;
      v46 = sub_20B51E694(v43, v37, aBlock);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_20B517000, v38, v44, "Successful purchase with correlation ID: %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x20F2F6A40](v45, -1, -1);
      MEMORY[0x20F2F6A40](v41, -1, -1);
    }

    else
    {
    }

    (*(v72 + 8))(v31, v73);
    v56 = v68;
    v57 = v71;
    sub_20B5E2E18();
    v58 = sub_20C13D374();
    v59 = swift_allocObject();
    v60 = v74;
    v59[2] = v74;
    v59[3] = v32;
    v59[4] = v57;
    aBlock[4] = sub_20C066D6C;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_16_2;
    v61 = _Block_copy(aBlock);

    v62 = v32;
    v63 = v60;

    v64 = v67;
    sub_20C13C4D4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_20C066CDC(&qword_281103AB0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B682EA8();
    v65 = v69;
    sub_20C13DA94();
    MEMORY[0x20F2F4AF0](0, v64, v65, v61);
    _Block_release(v61);

    (*(v70 + 8))(v65, v5);
    (*(v56 + 8))(v64, v66);
  }

  else
  {
    v53 = sub_20C138A74();
    sub_20C066CDC(&qword_27C767070, MEMORY[0x277D54128]);
    v54 = swift_allocError();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D54108], v53);
    sub_20C066764(v54);
  }
}

void sub_20C065E48(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v63 = a1;
  v6 = sub_20C13C4B4();
  v62 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13C4F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13BB84();
  v64 = *(v13 - 8);
  v65 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - v20;
  if (a2)
  {
    v22 = a2;
    sub_20C13B534();
    v23 = a2;
    v24 = sub_20C13BB74();
    v25 = sub_20C13D1D4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136446210;
      swift_getErrorValue();
      v28 = MEMORY[0x20F2F5850](v66, v67);
      v30 = sub_20B51E694(v28, v29, aBlock);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_20B517000, v24, v25, "Carrier link failed with error: %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x20F2F6A40](v27, -1, -1);
      MEMORY[0x20F2F6A40](v26, -1, -1);
    }

    (*(v64 + 8))(v21, v65);
    sub_20C066764(a2);
    v31 = a2;
LABEL_5:

    return;
  }

  v56 = v12;
  v57 = v10;
  v58 = v8;
  v59 = v9;
  v60 = v6;
  v32 = v63;
  if (!v63)
  {
    sub_20C13B534();
    v49 = sub_20C13BB74();
    v50 = sub_20C13D1D4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_20B517000, v49, v50, "No carrier link result found", v51, 2u);
      MEMORY[0x20F2F6A40](v51, -1, -1);
    }

    (*(v64 + 8))(v15, v65);
    v52 = sub_20C138A74();
    sub_20C066CDC(&qword_27C767070, MEMORY[0x277D54128]);
    v53 = swift_allocError();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D54120], v52);
    sub_20C066764(v53);
    v31 = v53;
    goto LABEL_5;
  }

  v33 = v63;
  sub_20C13B534();
  v34 = v33;
  v35 = sub_20C13BB74();
  v36 = sub_20C13D1F4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v55 = v4;
    v38 = v37;
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v34;
    *v39 = v32;
    v40 = v34;
    _os_log_impl(&dword_20B517000, v35, v36, "Successful carrier link with result: %@", v38, 0xCu);
    sub_20B64F5CC(v39);
    MEMORY[0x20F2F6A40](v39, -1, -1);
    v4 = v55;
    MEMORY[0x20F2F6A40](v38, -1, -1);
  }

  (*(v64 + 8))(v18, v65);
  sub_20B5E2E18();
  v41 = sub_20C13D374();
  v42 = swift_allocObject();
  v42[2] = v4;
  v42[3] = v34;
  v42[4] = v61;
  aBlock[4] = sub_20C066CB4;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_10_3;
  v43 = _Block_copy(aBlock);

  v44 = v34;
  v45 = v4;

  v46 = v56;
  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20C066CDC(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  v47 = v58;
  v48 = v60;
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v46, v47, v43);
  _Block_release(v43);

  (*(v62 + 8))(v47, v48);
  (*(v57 + 8))(v46, v59);
}

uint64_t sub_20C06654C(uint64_t a1, void *a2, uint64_t a3, unsigned int *a4)
{
  v7 = sub_20C138FB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_20C139454();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18[1] = *(v15 + 8);
    v18[0] = swift_getObjectType();
    *v10 = a2;
    (*(v8 + 104))(v10, *a4, v7);

    v17 = a2;
    sub_20C139434();
    sub_20C066CDC(&unk_281103B10, MEMORY[0x277D543B0]);
    sub_20C13A764();
    swift_unknownObjectRelease();
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_20C066764(void *a1)
{
  v3 = sub_20C13C4B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13C4F4();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5E2E18();
  v10 = sub_20C13D374();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_20C066CAC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_177;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  v14 = a1;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20C066CDC(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

uint64_t sub_20C066A24(uint64_t a1, void *a2)
{
  v3 = sub_20C138FA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v8 = a2;
    sub_20C138F94();
    sub_20C066CDC(&qword_27C769A40, MEMORY[0x277D54200]);
    sub_20C13A764();
    swift_unknownObjectRelease();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

id MarketingPurchaseHandler.init()()
{
  *&v0[OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketingPurchaseHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MarketingPurchaseHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketingPurchaseHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20C066CDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_6Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

char *sub_20C066DA4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_imageView;
  v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemGrayColor];
  [v12 setBackgroundColor_];

  v14 = [v12 layer];
  [v14 setCornerRadius_];

  [v12 setClipsToBounds_];
  [v12 setClipsToBounds_];

  *&v4[v9] = v12;
  v15 = OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_titleLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v17 = objc_opt_self();
  v18 = [v17 preferredFontForTextStyle_];
  [v16 setFont_];

  v19 = [v11 whiteColor];
  [v16 setTextColor_];

  [v16 setLineBreakMode_];
  *&v4[v15] = v16;
  v20 = OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_detailLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v22 = [v17 preferredFontForTextStyle_];
  [v21 setFont_];

  v23 = [v11 systemGrayColor];
  [v21 setTextColor_];

  *&v4[v20] = v21;
  v67.receiver = v4;
  v67.super_class = type metadata accessor for TVSummaryHeaderView();
  v24 = objc_msgSendSuper2(&v67, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_imageView;
  v26 = *&v24[OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_imageView];
  v27 = v24;
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v28 = *&v24[v25];
  v29 = v27;
  [v29 addSubview_];
  v66 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20C150050;
  v31 = [*&v24[v25] widthAnchor];
  v32 = [v31 constraintEqualToConstant_];

  *(v30 + 32) = v32;
  v33 = [*&v24[v25] heightAnchor];
  v34 = [v33 constraintEqualToConstant_];

  *(v30 + 40) = v34;
  v35 = [*&v24[v25] leadingAnchor];
  v36 = [v29 leadingAnchor];

  v37 = [v35 constraintEqualToAnchor_];
  *(v30 + 48) = v37;
  v38 = [*&v24[v25] topAnchor];
  v39 = [v29 topAnchor];

  v40 = [v38 constraintEqualToAnchor_];
  *(v30 + 56) = v40;
  v41 = [*&v24[v25] bottomAnchor];
  v42 = [v29 bottomAnchor];

  v43 = [v41 constraintEqualToAnchor_];
  *(v30 + 64) = v43;
  sub_20B51C88C(0, &qword_281100500);
  v44 = sub_20C13CC54();

  [v66 activateConstraints_];

  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_20C151490;
  v46 = *&v29[OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_titleLabel];
  *(v45 + 32) = v46;
  v47 = *&v29[OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_detailLabel];
  *(v45 + 40) = v47;
  v48 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910);
  v49 = v46;
  v50 = v47;
  v51 = sub_20C13CC54();

  v52 = [v48 initWithArrangedSubviews_];

  [v52 setAxis_];
  [v52 setSpacing_];
  v53 = v52;
  [v53 setTranslatesAutoresizingMaskIntoConstraints_];
  [v29 addSubview_];
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_20C150040;
  v55 = [v53 leadingAnchor];
  v56 = [*&v24[v25] trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:30.0];

  *(v54 + 32) = v57;
  v58 = [v53 centerYAnchor];
  v59 = [*&v24[v25] centerYAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v54 + 40) = v60;
  v61 = [v53 trailingAnchor];

  v62 = [v29 trailingAnchor];
  v63 = [v61 constraintEqualToAnchor_];

  *(v54 + 48) = v63;
  v64 = sub_20C13CC54();

  [v66 activateConstraints_];

  return v29;
}

id sub_20C0675B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSummaryHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20C067668()
{
  v1 = OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_imageView;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemGrayColor];
  [v4 setBackgroundColor_];

  v6 = [v4 layer];
  [v6 setCornerRadius_];

  [v4 setClipsToBounds_];
  [v4 setClipsToBounds_];

  *(v0 + v1) = v4;
  v7 = OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_titleLabel;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontForTextStyle_];
  [v8 setFont_];

  v11 = [v3 whiteColor];
  [v8 setTextColor_];

  [v8 setLineBreakMode_];
  *(v0 + v7) = v8;
  v12 = OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_detailLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v14 = [v9 preferredFontForTextStyle_];
  [v13 setFont_];

  v15 = [v3 systemGrayColor];
  [v13 setTextColor_];

  *(v0 + v12) = v13;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C0678EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764480);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v16 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_selectedPreferences;
  swift_beginAccess();
  *(v3 + v16) = a2;

  v17 = sub_20C1365A4();
  sub_20C068C38(v17, v18, v11);

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v21 = v31;
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_20C069FA0;
  *(v22 + 24) = v20;
  (*(v6 + 16))(v8, v11, v5);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = (v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v6 + 32))(v25 + v23, v8, v5);
  v26 = (v25 + v24);
  *v26 = sub_20B7F7ED0;
  v26[1] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  sub_20C137C94();
  (*(v6 + 8))(v11, v5);
  v27 = v32;
  v28 = sub_20C137CB4();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  v28(sub_20B52347C, v29);

  return (*(v33 + 8))(v15, v27);
}

uint64_t sub_20C067C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v7 = result;
  if (result)
  {
    sub_20C067D1C(a1, a2);
  }

  *a3 = v7 == 0;
  return result;
}

uint64_t sub_20C067D1C(uint64_t a1, uint64_t a2)
{
  v48 = sub_20C134E04();
  v4 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20C1333E4();
  v6 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for WorkoutPlanPreference();
  v8 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v39 = v2;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_preferenceType))
  {
    v16 = sub_20C135494();
  }

  else
  {
    v16 = sub_20C1354F4();
  }

  v17 = v16;
  v51 = *(a2 + 16);
  if (v51)
  {
    v18 = 0;
    v40 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v50 = a2 + v40;
    v53 = *(v8 + 72);
    v43 = (v6 + 8);
    v44 = (v6 + 32);
    v42 = (v4 + 32);
    v41 = (v4 + 8);
    v19 = v16 + 56;
    v20 = MEMORY[0x277D84F90];
    do
    {
      sub_20B8DCE6C(v50 + v53 * v18, v15);
      sub_20B8DCE6C(v15, v12);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = v47;
        v22 = v48;
        (*v42)(v47, v12, v48);
        v23 = sub_20C134DD4();
        v25 = v24;
        v26 = v41;
      }

      else
      {
        v21 = v45;
        v22 = v46;
        (*v44)(v45, v12, v46);
        v23 = sub_20C1333B4();
        v25 = v27;
        v26 = v43;
      }

      (*v26)(v21, v22);
      if (*(v17 + 16) && (sub_20C13E164(), sub_20C13CA64(), v28 = sub_20C13E1B4(), v29 = -1 << *(v17 + 32), v30 = v28 & ~v29, ((*(v19 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
      {
        v31 = ~v29;
        while (1)
        {
          v32 = (*(v17 + 48) + 16 * v30);
          v33 = *v32 == v23 && v32[1] == v25;
          if (v33 || (sub_20C13DFF4() & 1) != 0)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v19 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        sub_20BEFB0C0(v15, v49);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5EA28(0, *(v20 + 16) + 1, 1);
          v20 = v55;
        }

        v36 = *(v20 + 16);
        v35 = *(v20 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_20BB5EA28(v35 > 1, v36 + 1, 1);
          v20 = v55;
        }

        *(v20 + 16) = v36 + 1;
        sub_20BEFB0C0(v49, v20 + v40 + v36 * v53);
      }

      else
      {
LABEL_6:

        sub_20C069BA0(v15, type metadata accessor for WorkoutPlanPreference);
      }

      ++v18;
    }

    while (v18 != v51);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v54 = v20;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770370);
  sub_20C069F3C();
  v37 = sub_20C13CBF4();

  *(v39 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_preferences) = v37;

  return sub_20C0684A4();
}

uint64_t sub_20C06826C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_20C134E04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C1333E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WorkoutPlanPreference();
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B8DCE6C(a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v14, v4);
    v15 = sub_20C134DF4();
    v17 = v16;
    result = (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    v15 = sub_20C1333D4();
    v17 = v19;
    result = (*(v9 + 8))(v11, v8);
  }

  *a2 = v15;
  a2[1] = v17;
  return result;
}

uint64_t sub_20C0684A4()
{
  v1 = sub_20C13C554();
  v76 = *(v1 - 8);
  v77 = v1;
  MEMORY[0x28223BE20](v1);
  v75 = (&v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = sub_20C134E04();
  v3 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_20C1333E4();
  v5 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for WorkoutPlanPreference();
  v7 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v75 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_preferences);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_selectedPreferences;
    v15 = v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v92 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_preferences);

    v90 = v14;
    swift_beginAccess();
    v89 = *(v7 + 72);
    v80 = (v5 + 8);
    v81 = (v5 + 32);
    v78 = (v3 + 8);
    v79 = (v3 + 32);
    v16 = MEMORY[0x277D84F90];
    v17 = v0;
    v18 = v87;
    v19 = v11;
    v82 = v17;
    while (1)
    {
      v93 = v13;
      sub_20B8DCE6C(v15, v19);
      v21 = *(v17 + v90);

      v22 = sub_20B8D7478(v19, v21);

      sub_20B8DCE6C(v19, v18);
      v23 = v19;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v25 = v85;
      v24 = v86;
      (*v79)(v85, v18, v86);
      v26 = sub_20C069C00(v25, v22 & 1, *(v92 + 16));
      (*v78)(v25, v24);
      sub_20C069BA0(v23, type metadata accessor for WorkoutPlanPreference);
      v19 = v23;
      if ((~v26 & 0xF000000000000007) != 0)
      {
        goto LABEL_9;
      }

      v20 = v93;
LABEL_4:
      v15 += v89;
      v13 = v20 - 1;
      if (!v13)
      {
        v39 = v16;

        goto LABEL_16;
      }
    }

    v27 = v83;
    v28 = v18;
    v29 = v84;
    (*v81)(v83, v28, v84);
    v88 = v16;
    v30 = *(v92 + 16);
    v31 = swift_allocObject();
    v32 = sub_20C1333D4();
    v34 = v33;
    v35 = v29;
    v18 = v87;
    (*v80)(v27, v35);
    sub_20C069BA0(v23, type metadata accessor for WorkoutPlanPreference);
    *(v31 + 16) = v32;
    *(v31 + 24) = v34;
    *(v31 + 32) = v22 & 1;
    *(v31 + 40) = v30;
    v17 = v82;
    v16 = v88;
    v26 = v31 | 0x5000000000000000;
    v19 = v23;
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v93;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_20BC05D3C(0, *(v16 + 2) + 1, 1, v16);
    }

    v38 = *(v16 + 2);
    v37 = *(v16 + 3);
    if (v38 >= v37 >> 1)
    {
      v16 = sub_20BC05D3C((v37 > 1), v38 + 1, 1, v16);
    }

    *(v16 + 2) = v38 + 1;
    *&v16[8 * v38 + 32] = v26;
    goto LABEL_4;
  }

  v39 = MEMORY[0x277D84F90];
  v17 = v0;
LABEL_16:
  v40 = sub_20C1365D4();
  v42 = v41;
  *&v105 = v40;
  *(&v105 + 1) = v41;
  v44 = v43 & 1;
  LOBYTE(v106) = v43 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F68);
  sub_20C133BD4();
  sub_20B583F4C(v40, v42, v44);
  if (v94 == 14)
  {
    v45 = 0;
    v46 = 2;
  }

  else
  {
    v47 = sub_20B6DBC10(0, v94);
    if (v48)
    {
      v45 = v47;
    }

    else
    {
      v45 = 0;
    }

    if (v48)
    {
      v46 = v48;
    }

    else
    {
      v46 = 2;
    }
  }

  v49 = sub_20C1365E4();
  v94 = 0uLL;
  LOBYTE(v95) = 1;
  *(&v95 + 1) = 0;
  *&v96 = 0;
  WORD4(v96) = 128;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  LOBYTE(v100) = 0;
  *(&v100 + 1) = v39;
  v101 = MEMORY[0x277D84F90];
  *&v102 = 0;
  *(&v102 + 1) = v49;
  *&v103 = v50;
  *(&v103 + 1) = v45;
  v104 = v46;
  nullsub_1(&v94);
  v51 = v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row;
  v52 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 144);
  v113 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 128);
  v114 = v52;
  v115 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 160);
  v53 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 80);
  v109 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 64);
  v110 = v53;
  v54 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 112);
  v111 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 96);
  v112 = v54;
  v55 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 16);
  v105 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row);
  v106 = v55;
  v56 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 48);
  v107 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 32);
  v108 = v56;
  v57 = v103;
  *(v51 + 128) = v102;
  *(v51 + 144) = v57;
  *(v51 + 160) = v104;
  v58 = v99;
  *(v51 + 64) = v98;
  *(v51 + 80) = v58;
  v59 = v101;
  *(v51 + 96) = v100;
  *(v51 + 112) = v59;
  v60 = v95;
  *v51 = v94;
  *(v51 + 16) = v60;
  v61 = v97;
  *(v51 + 32) = v96;
  *(v51 + 48) = v61;
  sub_20B520158(&v105, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v63 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v64 = sub_20B61D2A8(v17, result);
      if (v65)
      {
        v67 = v64;
        v68 = v65;
        v69 = v66;
        sub_20B5E2E18();
        v70 = sub_20C13D374();
        v72 = v75;
        v71 = v76;
        *v75 = v70;
        v73 = v77;
        (*(v71 + 104))(v72, *MEMORY[0x277D85200], v77);
        v74 = sub_20C13C584();
        result = (*(v71 + 8))(v72, v73);
        if ((v74 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B620AD4(v67, v68, v69, v17, 0, v63);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20C068C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a2;
  v15 = a1;
  v19 = a3;
  v20 = sub_20C133E24();
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C30);
  v5 = *(sub_20C135C84() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v14 = xmmword_20C14F980;
  *(v7 + 16) = xmmword_20C14F980;
  v8 = v7 + v6;
  *v8 = xmmword_20C15AF00;
  *(v8 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  sub_20BE8C0B0(v7);
  swift_setDeallocating();
  v9 = MEMORY[0x277D52060];
  sub_20C069BA0(v7 + v6, MEMORY[0x277D52060]);
  swift_deallocClassInstance();
  v10 = swift_allocObject();
  *(v10 + 16) = v14;
  v11 = (v10 + v6);
  v12 = v16;
  *v11 = v15;
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();

  sub_20BE8C0B0(v10);
  swift_setDeallocating();
  sub_20C069BA0(v10 + v6, v9);
  swift_deallocClassInstance();
  sub_20C133DE4();
  __swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_catalogClient), *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_catalogClient + 24));
  sub_20C139F84();
  return (*(v18 + 8))(v4, v20);
}

uint64_t sub_20C068EDC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v41 - v4;
  v5 = sub_20C134E04();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C1333E4();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C1352E4();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  v55 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for WorkoutPlanPreference();
  MEMORY[0x28223BE20](v48);
  v49 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v41 = &v41 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772198);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - v18;
  v20 = sub_20C134F24();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_selectedPreferences;
  swift_beginAccess();
  v25 = v1;
  v26 = *(v1 + v24);

  v27 = a1;
  LOBYTE(a1) = sub_20B8D7478(a1, v26);

  v50 = v21;
  v51 = v20;
  v28 = *(v21 + 104);
  if (a1)
  {
    v28(v23, *MEMORY[0x277D51440], v20);
    swift_beginAccess();
    v29 = v27;
    sub_20B6CA3A0(v27, v19);
    sub_20B520158(v19, &qword_27C772198);
  }

  else
  {
    v28(v23, *MEMORY[0x277D51450], v20);
    v29 = v27;
    v30 = v41;
    sub_20B8DCE6C(v27, v41);
    swift_beginAccess();
    sub_20B701054(v16, v30);
    sub_20C069BA0(v16, type metadata accessor for WorkoutPlanPreference);
  }

  swift_endAccess();
  v56 = v25;
  v32 = v52;
  v31 = v53;
  (*(v52 + 104))(v55, *MEMORY[0x277D51768], v53);
  v33 = v49;
  sub_20B8DCE6C(v29, v49);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v45;
    v35 = v46;
    v36 = v47;
    (*(v46 + 32))(v45, v33, v47);
    sub_20C134DD4();
  }

  else
  {
    v34 = v42;
    v35 = v43;
    v36 = v44;
    (*(v43 + 32))(v42, v33, v44);
    sub_20C1333B4();
  }

  (*(v35 + 8))(v34, v36);
  v37 = sub_20C135ED4();
  v38 = v54;
  (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
  type metadata accessor for WorkoutPlanPreferencePickerShelf();
  sub_20C069B48();
  v39 = v55;
  sub_20C138D94();

  sub_20B520158(v38, &unk_27C7621D0);
  (*(v32 + 8))(v39, v31);
  swift_getObjectType();
  sub_20BAC91C4();
  sub_20C13A764();
  sub_20C0684A4();
  return (*(v50 + 8))(v23, v51);
}

uint64_t sub_20C06956C()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 144);
  v13[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 128);
  v13[9] = v3;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 80);
  v13[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 64);
  v13[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 112);
  v13[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 96);
  v13[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 16);
  v13[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row);
  v13[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 48);
  v13[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 32);
  v13[3] = v7;
  sub_20B520158(v13, &qword_27C762340);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_catalogClient);
  v8 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_metricPage;
  v9 = sub_20C1333A4();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_modalityReference;
  v11 = sub_20C1365F4();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  return v0;
}

uint64_t sub_20C0696F0()
{
  sub_20C06956C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanPreferencePickerShelf()
{
  result = qword_27C772188;
  if (!qword_27C772188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C06979C()
{
  result = sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    result = sub_20C1333A4();
    if (v2 <= 0x3F)
    {
      result = sub_20C1365F4();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_20C0698E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20C069960@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

void sub_20C069A0C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanPreference() - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_preferences);
    if (*(v8 + 16) > a2)
    {
      sub_20B8DCE6C(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a2, &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_20C068EDC(v7);
      sub_20C069BA0(v7, type metadata accessor for WorkoutPlanPreference);
      return;
    }
  }

  __break(1u);
}

unint64_t sub_20C069B48()
{
  result = qword_27C7721A0;
  if (!qword_27C7721A0)
  {
    type metadata accessor for WorkoutPlanPreferencePickerShelf();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7721A0);
  }

  return result;
}

uint64_t sub_20C069BA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C069C00(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_20C137C24();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C134E04();
  sub_20C138D44();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20B520158(v11, &unk_27C766680);
    sub_20C13B4A4();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "[WorkoutPlanPreferencePickerShelf] failed to find artwork for trainer", v18, 2u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    return 0xF000000000000007;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7681A0);
    v21 = swift_allocBox();
    v31 = a3;
    v32 = v21;
    v23 = v22;
    v24 = (v22 + v20[12]);
    v25 = v20[16];
    v26 = v20[20];
    (*(v13 + 16))(v22, v15, v12);
    v27 = sub_20C134DF4();
    v29 = v28;
    (*(v13 + 8))(v15, v12);
    *v24 = v27;
    v24[1] = v29;
    *(v23 + v25) = a2 & 1;
    v30 = v32;
    *(v23 + v26) = v31;
    return v30 | 0x7000000000000005;
  }
}

unint64_t sub_20C069F3C()
{
  result = qword_27C7721A8;
  if (!qword_27C7721A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C770370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7721A8);
  }

  return result;
}

uint64_t WorkoutPlanCreationInterceptor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t WorkoutPlanCreationInterceptor.interceptRequest(_:display:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for NavigationRequest();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = v4;
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764880);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0);
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x28223BE20](v11);
  v54 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v12;
  MEMORY[0x28223BE20](v13);
  v55 = &v46 - v14;
  v15 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C13BB84();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v19 + 8))(v21, v18);
  sub_20B77FEA0(a1, v17, type metadata accessor for NavigationResource);
  if (swift_getEnumCaseMultiPayload() == 21)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = "SeymourUI/WorkoutPlanCreationInterceptor.swift";
    *(v22 + 24) = 46;
    *(v22 + 32) = 2;
    *(v22 + 40) = 30;
    *(v22 + 48) = &unk_20C18BA48;
    *(v22 + 56) = v49;
    sub_20C133954();

    v48 = v10;
    sub_20C137C94();
    v49 = type metadata accessor for NavigationRequest;
    v47 = v5;
    sub_20B77FEA0(a1, v5, type metadata accessor for NavigationRequest);
    v23 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v24 = swift_allocObject();
    v58 = type metadata accessor for NavigationRequest;
    sub_20B77FF08(v5, v24 + v23, type metadata accessor for NavigationRequest);
    v26 = v52;
    v25 = v53;
    v27 = v50;
    (*(v52 + 16))(v50, v10, v53);
    v28 = *(v26 + 80);
    v46 = a1;
    v29 = (v28 + 16) & ~v28;
    v30 = (v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    (*(v26 + 32))(v31 + v29, v27, v25);
    v32 = (v31 + v30);
    *v32 = sub_20C06B554;
    v32[1] = v24;
    v33 = v55;
    sub_20C137C94();
    (*(v26 + 8))(v48, v25);
    v34 = v47;
    sub_20B77FEA0(v46, v47, v49);
    v35 = swift_allocObject();
    sub_20B77FF08(v34, v35 + v23, v58);
    v37 = v56;
    v36 = v57;
    v38 = v54;
    (*(v56 + 16))(v54, v33, v57);
    v39 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v40 = (v51 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    (*(v37 + 32))(v41 + v39, v38, v36);
    v42 = (v41 + v40);
    *v42 = sub_20C06B5FC;
    v42[1] = v35;
    sub_20C137C94();
    return (*(v37 + 8))(v33, v36);
  }

  else
  {
    sub_20B77FEA0(a1, v5, type metadata accessor for NavigationRequest);
    v44 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v45 = swift_allocObject();
    sub_20B77FF08(v5, v45 + v44, type metadata accessor for NavigationRequest);
    sub_20C137CA4();
    return sub_20B77FF74(v17, type metadata accessor for NavigationResource);
  }
}

uint64_t sub_20C06A714@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v90 = a1;
  v83 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0);
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v79 = v2;
  v80 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v81 = &v66 - v4;
  v5 = type metadata accessor for NavigationSource();
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x28223BE20](v5);
  v88 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for NavigationIntent();
  v89 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v85 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NavigationResource();
  v69 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v75 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767800);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v87 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E40);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = &v66 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767810);
  MEMORY[0x28223BE20](v19 - 8);
  v68 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  v24 = type metadata accessor for NavigationRequest();
  v71 = *(v24 - 1);
  MEMORY[0x28223BE20](v24);
  v72 = v25;
  v73 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v76 = &v66 - v27;
  v28 = sub_20C13BB84();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B454();
  v32 = sub_20C13BB74();
  v33 = sub_20C13D1F4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v67 = v24;
    v35 = v8;
    v36 = v34;
    *v34 = 0;
    _os_log_impl(&dword_20B517000, v32, v33, "Active plan, navigating to detail instead of creation", v34, 2u);
    v37 = v36;
    v8 = v35;
    v24 = v67;
    MEMORY[0x20F2F6A40](v37, -1, -1);
  }

  (*(v29 + 8))(v31, v28);
  swift_storeEnumTagMultiPayload();
  v38 = v69;
  (*(v69 + 56))(v23, 0, 1, v8);
  v39 = v86;
  *v86 = 1;
  v40 = v70;
  swift_storeEnumTagMultiPayload();
  (*(v89 + 56))(v39, 0, 1, v40);
  v42 = v77;
  v41 = v78;
  (*(v77 + 56))(v87, 1, 1, v78);
  v43 = v23;
  v44 = v68;
  sub_20B5DF134(v43, v68, &unk_27C767810);
  v45 = *(v38 + 48);
  if (v45(v44, 1, v8) == 1)
  {
    v46 = v75;
    sub_20B77FEA0(v90, v75, type metadata accessor for NavigationResource);
    v47 = v45(v44, 1, v8);
    v48 = v74;
    if (v47 != 1)
    {
      sub_20B520158(v44, &unk_27C767810);
    }
  }

  else
  {
    v46 = v75;
    sub_20B77FF08(v44, v75, type metadata accessor for NavigationResource);
    v48 = v74;
  }

  sub_20B5DF134(v86, v16, &qword_27C764E40);
  v49 = *(v89 + 48);
  if (v49(v16, 1, v40) == 1)
  {
    sub_20B77FEA0(v90 + v24[5], v85, type metadata accessor for NavigationIntent);
    if (v49(v16, 1, v40) != 1)
    {
      sub_20B520158(v16, &qword_27C764E40);
    }
  }

  else
  {
    sub_20B77FF08(v16, v85, type metadata accessor for NavigationIntent);
  }

  sub_20B5DF134(v87, v48, &unk_27C767800);
  v50 = *(v42 + 48);
  if (v50(v48, 1, v41) == 1)
  {
    sub_20B77FEA0(v90 + v24[6], v88, type metadata accessor for NavigationSource);
    if (v50(v48, 1, v41) != 1)
    {
      sub_20B520158(v48, &unk_27C767800);
    }
  }

  else
  {
    sub_20B77FF08(v48, v88, type metadata accessor for NavigationSource);
  }

  v51 = *(v90 + v24[8]);
  v52 = *(v90 + v24[9]);
  v53 = v76;
  sub_20B77FF08(v46, v76, type metadata accessor for NavigationResource);
  sub_20B77FF08(v85, v53 + v24[5], type metadata accessor for NavigationIntent);
  sub_20B77FF08(v88, v53 + v24[6], type metadata accessor for NavigationSource);
  *(v53 + v24[7]) = 0;
  *(v53 + v24[8]) = v51;
  *(v53 + v24[9]) = v52;
  v54 = v73;
  sub_20B77FEA0(v53, v73, type metadata accessor for NavigationRequest);
  v55 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v56 = swift_allocObject();
  sub_20B77FF08(v54, v56 + v55, type metadata accessor for NavigationRequest);
  v57 = v81;
  sub_20C137CA4();
  sub_20B5E2E18();
  v58 = sub_20C13D374();
  v59 = v82;
  v60 = v80;
  v61 = v84;
  (*(v82 + 16))(v80, v57, v84);
  v62 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v63 = (v79 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v59 + 32))(v64 + v62, v60, v61);
  *(v64 + v63) = v58;
  sub_20C137C94();
  (*(v59 + 8))(v57, v61);
  return sub_20B77FF74(v53, type metadata accessor for NavigationRequest);
}

uint64_t sub_20C06B1C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for NavigationRequest();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  sub_20B77FEA0(a1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_20B77FF08(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for NavigationRequest);
  sub_20C137CA4();
  sub_20B5E2E18();
  v15 = sub_20C13D374();
  (*(v7 + 16))(v9, v12, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v16, v9, v6);
  *(v18 + v17) = v15;
  sub_20C137C94();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_20C06B4A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20B772A2C(a1, v1);
}

uint64_t sub_20C06B554@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NavigationRequest() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20C06A714(v4, a1);
}

uint64_t sub_20C06B5FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NavigationRequest() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20C06B1C8(v4, a1);
}

uint64_t sub_20C06B6A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20C06B76C(uint64_t a1)
{
  result = sub_20C06B794();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20C06B794()
{
  result = qword_27C7721B0;
  if (!qword_27C7721B0)
  {
    type metadata accessor for WorkoutPlanCreationInterceptor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7721B0);
  }

  return result;
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &qword_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = (v2 + 16) & ~v2;
    v28 = v0;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v0 = v28;
    v3 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_20C06BFF4()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C79D308 = v2;
  unk_27C79D310 = v4;
}

void sub_20C06C0C0()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C79D318 = v2;
  unk_27C79D320 = v4;
}

uint64_t sub_20C06C18C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_20C134104();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_configuration;
  swift_beginAccess();
  sub_20BBAED30(v8, v1 + v11);
  swift_endAccess();
  sub_20C13CDC4();
  v12 = sub_20C13CDF4();
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_20C13CDA4();

  v14 = sub_20C13CD94();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;

  sub_20B6380FC(0, 0, v5, &unk_20C18BC98, v15);
}

uint64_t sub_20C06C3E4(uint64_t a1)
{
  v43 = sub_20C137294();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C135C54();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = MEMORY[0x277D84F90];
    v33 = a1;
    sub_20BB5EB50(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = sub_20C13DAA4();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      sub_20C137284();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_20BB5EB50(v21 > 1, v22 + 1, 1);
        v20 = v47;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_20B526EA4(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_20B526EA4(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
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
  }

  return result;
}

uint64_t sub_20C06C7A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639B0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v27 - v4);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v27 = v1;
  v35 = MEMORY[0x277D84F90];
  sub_20BB5EB10(0, v6, 0);
  v7 = v35;
  v8 = a1 + 56;
  result = sub_20C13DAA4();
  v10 = result;
  v11 = 0;
  v28 = a1 + 64;
  v29 = v6;
  v30 = a1 + 56;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v14 = *(a1 + 36);
    v33 = v11;
    v34 = v14;
    v15 = *(a1 + 48);
    v16 = sub_20C134D54();
    (*(*(v16 - 8) + 16))(v5 + *(v32 + 48), v15 + *(*(v16 - 8) + 72) * v10, v16);
    *v5 = sub_20C134D24();
    v5[1] = v17;
    v35 = v7;
    v19 = *(v7 + 16);
    v18 = *(v7 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_20BB5EB10(v18 > 1, v19 + 1, 1);
      v7 = v35;
    }

    *(v7 + 16) = v19 + 1;
    result = sub_20C073D3C(v5, v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v19);
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_22;
    }

    v8 = v30;
    v20 = *(v30 + 8 * v13);
    if ((v20 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v10 & 0x3F));
    if (v21)
    {
      v12 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v13 << 6;
      v23 = v13 + 1;
      v24 = (v28 + 8 * v13);
      while (v23 < (v12 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_20B526EA4(v10, v34, 0);
          v12 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_20B526EA4(v10, v34, 0);
    }

LABEL_4:
    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v29)
    {
      return v7;
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

uint64_t sub_20C06CAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a4;
  v8 = sub_20C133134();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v12 = v4 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row;
  sub_20B5D8060(v39);
  v13 = v39[9];
  *(v12 + 128) = v39[8];
  *(v12 + 144) = v13;
  *(v12 + 160) = v40;
  v14 = v39[5];
  *(v12 + 64) = v39[4];
  *(v12 + 80) = v14;
  v15 = v39[7];
  *(v12 + 96) = v39[6];
  *(v12 + 112) = v15;
  v16 = v39[1];
  *v12 = v39[0];
  *(v12 + 16) = v16;
  v17 = v39[3];
  *(v12 + 32) = v39[2];
  *(v12 + 48) = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_configuration;
  v19 = sub_20C134104();
  (*(*(v19 - 8) + 56))(v5 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_descriptions;
  v21 = MEMORY[0x277D84F90];
  *(v5 + v20) = sub_20B6B0904(MEMORY[0x277D84F90]);
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_isSubscribed) = 0;
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_weekdayCompletedReferencesMetrics) = MEMORY[0x277D84FA0];
  v22 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlan;
  v36 = sub_20C133954();
  v34 = *(v36 - 8);
  v23 = v5 + v22;
  v24 = a2;
  (*(v34 + 16))(v23, a2, v36);
  v25 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_offset;
  v35 = sub_20C135214();
  v26 = *(v35 - 8);
  (*(v26 + 16))(v5 + v25, a3, v35);
  (*(v9 + 104))(v11, *MEMORY[0x277CC9968], v8);
  v27 = a3;
  v28 = v24;
  v29 = sub_20C133824();
  (*(v9 + 8))(v11, v8);
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_itemReferences) = v29;
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_resumableWorkoutSessions) = sub_20B6B0A18(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(v38, v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_archivedSessionClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_bag) = *&v38[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v38, v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v38, v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_eventHub) = v38[0];
  sub_20C133AA4();
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_platform) = v38[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v38, v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v38, v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_subscriptionToken) = sub_20C13A914();
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlanStringBuilder) = *&v38[0];
  type metadata accessor for ShelfLazyLockupFetcher();
  v30 = swift_allocObject();
  *(v30 + 152) = v21;

  *(v30 + 160) = sub_20B6B0C04(v21);
  *(v30 + 168) = MEMORY[0x277D84FA0];
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();

  *(v30 + 136) = 10;
  *(v30 + 144) = 42;
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_lazyLockupFetcher) = v30;

  v31 = sub_20BD950F8(v37, v5);

  (*(v26 + 8))(v27, v35);
  (*(v34 + 8))(v28, v36);
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_weekdayCompletedReferencesMetrics) = v31;

  return v5;
}

uint64_t sub_20C06D144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_20C13CDA4();
  v4[7] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_20C06D1DC, v6, v5);
}

uint64_t sub_20C06D1DC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_20C06D2E4;

    return sub_20C06D428(1);
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20C06D2E4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_20C073F30, v3, v2);
}

uint64_t sub_20C06D428(char a1)
{
  *(v2 + 400) = v1;
  *(v2 + 496) = a1;
  v3 = sub_20C13C554();
  *(v2 + 408) = v3;
  *(v2 + 416) = *(v3 - 8);
  *(v2 + 424) = swift_task_alloc();
  v4 = sub_20C133954();
  *(v2 + 432) = v4;
  *(v2 + 440) = *(v4 - 8);
  *(v2 + 448) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800);
  *(v2 + 456) = swift_task_alloc();
  sub_20C13CDA4();
  *(v2 + 464) = sub_20C13CD94();
  v6 = sub_20C13CD24();
  *(v2 + 472) = v6;
  *(v2 + 480) = v5;

  return MEMORY[0x2822009F8](sub_20C06D5B4, v6, v5);
}

uint64_t sub_20C06D5B4()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 400);
  v3 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_configuration;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v3, v1, &qword_27C761800);
  v4 = sub_20C134104();
  if ((*(*(v4 - 8) + 48))(v1, 1, v4) == 1)
  {
    v5 = *(v0 + 456);

    sub_20B520158(v5, &qword_27C761800);
LABEL_5:

    v12 = *(v0 + 8);

    return v12();
  }

  v6 = *(v0 + 448);
  v7 = *(v0 + 432);
  v8 = *(v0 + 440);
  v9 = *(v0 + 400);
  sub_20B520158(*(v0 + 456), &qword_27C761800);
  v10 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlan;
  swift_beginAccess();
  (*(v8 + 16))(v6, v9 + v10, v7);
  LOBYTE(v9) = sub_20C133924();
  (*(v8 + 8))(v6, v7);
  if (v9)
  {
    v11 = *(v0 + 496);

    sub_20C06F440(v11);
    goto LABEL_5;
  }

  v14 = swift_task_alloc();
  *(v0 + 488) = v14;
  *v14 = v0;
  v14[1] = sub_20C06D7F4;

  return sub_20C06F7C4();
}

uint64_t sub_20C06D7F4(char a1)
{
  v2 = *v1;
  *(*v1 + 497) = a1;

  v3 = *(v2 + 480);
  v4 = *(v2 + 472);

  return MEMORY[0x2822009F8](sub_20C06D91C, v4, v3);
}

uint64_t sub_20C06D91C()
{
  v1 = *(v0 + 497);
  v2 = *(v0 + 400);

  v3 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_isSubscribed;
  *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_isSubscribed) = v1;
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_lazyLockupFetcher);
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = sub_20C073B48;
  v5[4] = v2;

  v6 = sub_20C02AE88(sub_20C073B50, v5);

  v7 = *(v2 + v3);
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  v8 = 0x800000020C1BBAB0;
  v9 = 0xD000000000000013;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  if (!v7)
  {
    v9 = 0;
  }

  *(v0 + 224) = 128;
  if (!v7)
  {
    v8 = 0;
  }

  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = v9;
  *(v0 + 256) = v8;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0;
  *(v0 + 280) = v7;
  v10 = MEMORY[0x277D84F90];
  *(v0 + 288) = v6;
  *(v0 + 296) = v10;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0;
  *(v0 + 344) = 2;
  nullsub_1(v0 + 184);
  v11 = v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row;
  v13 = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 16);
  v12 = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 32);
  *(v0 + 16) = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row);
  *(v0 + 32) = v13;
  *(v0 + 48) = v12;
  v14 = *(v11 + 80);
  v15 = *(v11 + 96);
  v16 = *(v11 + 64);
  *(v0 + 64) = *(v11 + 48);
  *(v0 + 112) = v15;
  *(v0 + 96) = v14;
  *(v0 + 80) = v16;
  v18 = *(v11 + 128);
  v17 = *(v11 + 144);
  v19 = *(v11 + 160);
  *(v0 + 128) = *(v11 + 112);
  *(v0 + 176) = v19;
  *(v0 + 160) = v17;
  *(v0 + 144) = v18;
  v20 = *(v0 + 184);
  v21 = *(v0 + 216);
  *(v11 + 16) = *(v0 + 200);
  *(v11 + 32) = v21;
  *v11 = v20;
  v22 = *(v0 + 232);
  v23 = *(v0 + 248);
  v24 = *(v0 + 280);
  *(v11 + 80) = *(v0 + 264);
  *(v11 + 96) = v24;
  *(v11 + 48) = v22;
  *(v11 + 64) = v23;
  v25 = *(v0 + 296);
  v26 = *(v0 + 312);
  v27 = *(v0 + 328);
  *(v11 + 160) = *(v0 + 344);
  *(v11 + 128) = v26;
  *(v11 + 144) = v27;
  *(v11 + 112) = v25;
  sub_20B520158(v0 + 16, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    goto LABEL_7;
  }

  v29 = Strong;
  v30 = sub_20B61E008(*(v0 + 400), Strong);
  if (!v31)
  {
    sub_20C0C2D50(0);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v33 = v30;
  v34 = v31;
  v35 = v32;
  v37 = *(v0 + 416);
  v36 = *(v0 + 424);
  v38 = *(v0 + 408);
  sub_20B5E2E18();
  *v36 = sub_20C13D374();
  (*(v37 + 104))(v36, *MEMORY[0x277D85200], v38);
  v39 = sub_20C13C584();
  result = (*(v37 + 8))(v36, v38);
  if ((v39 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  sub_20B6218E8(v33, v34, v35, *(v0 + 400), *(v0 + 496), v29);
  swift_unknownObjectRelease();

LABEL_11:

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_20C06DC50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20C06DCE4(1);
}

uint64_t sub_20C06DCE4(char a1)
{
  *(v2 + 72) = v1;
  *(v2 + 240) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772270);
  *(v2 + 80) = v3;
  *(v2 + 88) = *(v3 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  v4 = sub_20C136594();
  *(v2 + 112) = v4;
  *(v2 + 120) = *(v4 - 8);
  *(v2 + 128) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  *(v2 + 136) = v5;
  *(v2 + 144) = *(v5 - 8);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = sub_20C13CDA4();
  *(v2 + 168) = sub_20C13CD94();
  v6 = swift_task_alloc();
  *(v2 + 176) = v6;
  *v6 = v2;
  v6[1] = sub_20C06DED0;

  return sub_20C06E94C();
}

uint64_t sub_20C06DED0(uint64_t a1)
{
  v2 = *v1;
  v2[23] = a1;

  v4 = sub_20C13CD24();
  v2[24] = v4;
  v2[25] = v3;

  return MEMORY[0x2822009F8](sub_20C06E01C, v4, v3);
}

uint64_t sub_20C06E01C()
{
  v1 = v0[23];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_resumableWorkoutSessions;
  swift_beginAccess();
  *(v2 + v3) = v1;

  v4 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_itemReferences;
  swift_beginAccess();
  v0[8] = *(v2 + v4);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E80);
  sub_20C073C60();
  sub_20C073CC4(&qword_27C762288, MEMORY[0x277D51FE0]);
  v5 = sub_20C13CBF4();

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v0[15];
    v8 = v0[11];
    v20 = MEMORY[0x277D84F90];
    sub_20BB5D604(0, v6, 0);
    v9 = v20;
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v19 = *(v8 + 72);
    do
    {
      v11 = v0[12];
      v12 = v0[13];
      sub_20B52F9E8(v10, v12, &unk_27C772270);
      sub_20B52F9E8(v12, v11, &unk_27C772270);
      sub_20C1367E4();

      sub_20C136554();
      sub_20B520158(v12, &unk_27C772270);
      v13 = sub_20C135C54();
      (*(*(v13 - 8) + 8))(v11, v13);
      v15 = *(v20 + 16);
      v14 = *(v20 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_20BB5D604(v14 > 1, v15 + 1, 1);
      }

      v16 = v0[16];
      v17 = v0[14];
      *(v20 + 16) = v15 + 1;
      (*(v7 + 32))(v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v16, v17);
      v10 += v19;
      --v6;
    }

    while (v6);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  sub_20C02BC6C(v9, v0[19]);

  return MEMORY[0x2822009F8](sub_20C06E388, 0, 0);
}

uint64_t sub_20C06E388()
{
  v1 = v0[19];
  v2 = swift_task_alloc();
  v0[26] = v2;
  *(v2 + 16) = "SeymourUI/WorkoutPlanWeekdayDetailShelf.swift";
  *(v2 + 24) = 45;
  *(v2 + 32) = 2;
  *(v2 + 40) = 112;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_20C06E498;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B526AD8, v2, v4);
}

uint64_t sub_20C06E498()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_20C06E840;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v4 = v2[24];
    v5 = v2[25];
    v3 = sub_20C06E5F0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20C06E5F0()
{
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_20C06E688;
  v2 = *(v0 + 240);

  return sub_20C06D428(v2);
}

uint64_t sub_20C06E688()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x2822009F8](sub_20C06E7A8, v3, v2);
}

uint64_t sub_20C06E7A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C06E840()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[24];
  v2 = v0[25];

  return MEMORY[0x2822009F8](sub_20C06E8B4, v1, v2);
}

uint64_t sub_20C06E8B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C06E94C()
{
  v1[10] = v0;
  v2 = sub_20C13BB84();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290);
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v4 = sub_20C135C54();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C06EAD0, 0, 0);
}

uint64_t sub_20C06EAD0()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_itemReferences;
  swift_beginAccess();
  v46 = v2;

  v4 = sub_20B71C580(v3);

  v6 = sub_20C06C3E4(v5);

  v7 = sub_20B71A56C(v6);

  if (*(v7 + 16) <= *(v4 + 16) >> 3)
  {
    sub_20B6CE83C(v7);

    v8 = v4;
  }

  else
  {
    v8 = sub_20B6D0E2C(v7, v4);
  }

  v9 = v0[18];
  v10 = -1;
  v11 = -1 << *(v8 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v8 + 56);
  v13 = (63 - v11) >> 6;
  v14 = (v9 + 8);

  v23 = 0;
  v24 = MEMORY[0x277D84F90];
LABEL_7:
  v45 = v24;
  v0[20] = v24;
  while (v12)
  {
LABEL_14:
    v28 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    (*(v9 + 16))(v0[19], *(v8 + 48) + *(v9 + 72) * (v28 | (v23 << 6)), v0[17]);
    swift_beginAccess();
    if (*(*(v1 + v46) + 16))
    {
      sub_20B65B0BC(v0[19]);
      if (v29)
      {
        v42 = v0[17];
        v43 = v0[19];
        swift_endAccess();

        v30 = sub_20C1367E4();
        v44 = v31;

        (*v14)(v43, v42);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_20BC05BA4(0, *(v45 + 16) + 1, 1, v45);
          v45 = isUniquelyReferenced_nonNull_native;
        }

        v33 = *(v45 + 16);
        v32 = *(v45 + 24);
        v34 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_20BC05BA4((v32 > 1), v33 + 1, 1, v45);
          v34 = v33 + 1;
          v45 = isUniquelyReferenced_nonNull_native;
        }

        *(v45 + 16) = v34;
        v35 = v45 + 16 * v33;
        *(v35 + 32) = v30;
        *(v35 + 40) = v44;
        v24 = v45;
        goto LABEL_7;
      }
    }

    v25 = v0[19];
    v26 = v0[17];
    swift_endAccess();
    isUniquelyReferenced_nonNull_native = (*v14)(v25, v26);
  }

  while (1)
  {
    v27 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      return MEMORY[0x2822008A0](isUniquelyReferenced_nonNull_native, v16, v17, v18, v19, v20, v21, v22);
    }

    if (v27 >= v13)
    {
      break;
    }

    v12 = *(v8 + 56 + 8 * v27);
    ++v23;
    if (v12)
    {
      v23 = v27;
      goto LABEL_14;
    }
  }

  v36 = v0[16];
  v37 = v0[10];

  __swift_project_boxed_opaque_existential_1((v37 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_archivedSessionClient), *(v37 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_archivedSessionClient + 24));

  sub_20B527580(v38);

  sub_20C139B94();

  v39 = swift_task_alloc();
  v0[21] = v39;
  *(v39 + 16) = "SeymourUI/WorkoutPlanWeekdayDetailShelf.swift";
  *(v39 + 24) = 45;
  *(v39 + 32) = 2;
  *(v39 + 40) = 282;
  *(v39 + 48) = v36;
  v40 = swift_task_alloc();
  v0[22] = v40;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763850);
  *v40 = v0;
  v40[1] = sub_20C06EF28;
  v20 = sub_20C073D0C;
  isUniquelyReferenced_nonNull_native = (v0 + 8);
  v19 = 0x800000020C192D10;
  v16 = 0;
  v17 = 0;
  v18 = 0xD000000000000013;
  v21 = v39;

  return MEMORY[0x2822008A0](isUniquelyReferenced_nonNull_native, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_20C06EF28()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {

    v3 = sub_20C06F1D8;
  }

  else
  {
    v5 = v2[15];
    v4 = v2[16];
    v6 = v2[14];

    v2[24] = v2[8];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20C06F0A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20C06F0A0()
{
  v9 = v0;
  v1 = v0[23];
  v2 = sub_20C06C7A8(v0[24]);

  if (*(v2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7722A0);
    v3 = sub_20C13DE84();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v8 = v3;

  sub_20C0731C0(v4, 1, &v8);
  if (v1)
  {

    return swift_unexpectedError();
  }

  else
  {

    v6 = v8;

    v7 = v0[1];

    return v7(v6);
  }
}

uint64_t sub_20C06F1D8()
{
  v25 = v0;
  v1 = v0[23];
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_20C13B454();

  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = v0[20];
    v7 = v0[12];
    v23 = v0[13];
    v8 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 134218242;
    v11 = *(v6 + 16);

    *(v9 + 4) = v11;

    *(v9 + 12) = 2082;
    v0[9] = v5;
    v12 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v13 = sub_20C13C9D4();
    v15 = sub_20B51E694(v13, v14, &v24);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_20B517000, v3, v4, "Unable to query resumable sessions for %ld: %{public}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v7 + 8))(v23, v8);
  }

  else
  {
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[11];
    swift_bridgeObjectRelease_n();

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[23];
  v20 = sub_20B6B0A18(MEMORY[0x277D84F90]);

  v21 = v0[1];

  return v21(v20);
}

uint64_t sub_20C06F440(int a1)
{
  v2 = v1;
  v4 = sub_20C13C554();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  __swift_project_boxed_opaque_existential_1((*(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlanStringBuilder) + 48), *(*(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlanStringBuilder) + 72));
  *(v7 + 40) = sub_20B5E107C();
  *(v7 + 48) = v8;
  *(v7 + 24) = 0;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20C14F980;
  *(v9 + 32) = v7 | 0x1000000000000006;
  v34 = 0uLL;
  LOBYTE(v35) = 1;
  *(&v35 + 1) = 0;
  *&v36 = 0;
  WORD4(v36) = 128;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  LOBYTE(v40) = 0;
  *(&v40 + 1) = v9;
  *&v41[0] = MEMORY[0x277D84F90];
  *(v41 + 8) = 0u;
  *(&v41[1] + 8) = 0u;
  *(&v41[2] + 1) = 0;
  v42 = 2;
  nullsub_1(&v34);
  v10 = v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row;
  v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 144);
  v43[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 128);
  v43[9] = v11;
  v44 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 160);
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 80);
  v43[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 64);
  v43[5] = v12;
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 112);
  v43[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 96);
  v43[7] = v13;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 16);
  v43[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row);
  v43[1] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 48);
  v43[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 32);
  v43[3] = v15;
  v16 = v41[2];
  *(v10 + 128) = v41[1];
  *(v10 + 144) = v16;
  *(v10 + 160) = v42;
  v17 = v39;
  *(v10 + 64) = v38;
  *(v10 + 80) = v17;
  v18 = v41[0];
  *(v10 + 96) = v40;
  *(v10 + 112) = v18;
  v19 = v35;
  *v10 = v34;
  *(v10 + 16) = v19;
  v20 = v37;
  *(v10 + 32) = v36;
  *(v10 + 48) = v20;

  sub_20B520158(v43, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v22 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    v32 = a1;
    v23 = sub_20B61E008(v1, Strong);
    if (v24)
    {
      v26 = v24;
      v27 = v25;
      v31 = v23;
      sub_20B5E2E18();
      *v6 = sub_20C13D374();
      v28 = v33;
      (*(v33 + 104))(v6, *MEMORY[0x277D85200], v4);
      v29 = sub_20C13C584();
      result = (*(v28 + 8))(v6, v4);
      if ((v29 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      sub_20B6218E8(v31, v26, v27, v2, v32 & 1, v22);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20C06F7C4()
{
  v1[6] = v0;
  v2 = sub_20C13BB84();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C06F884, 0, 0);
}

uint64_t sub_20C06F884()
{
  v1 = (*(v0 + 48) + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_subscriptionCache);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_20B6162B0;

  return MEMORY[0x2821B5680](v3, v2);
}

unint64_t sub_20C06F948(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v117 = a1;
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v107 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133954();
  v106 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v105 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
  MEMORY[0x28223BE20](v10);
  v12 = &v91 - v11;
  v13 = sub_20C134014();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a2 >> 57) & 0x78 | a2 & 7) == 0x20)
  {
    v93 = v6;
    v94 = v5;
    v17 = swift_projectBox();
    sub_20B52F9E8(v17, v12, &unk_27C772250);
    v18 = &v12[v10[16]];
    v19 = *(v18 + 1);
    v112 = *v18;
    v113 = v19;
    v20 = *(v18 + 2);
    v116 = *(v18 + 3);
    v22 = *(v18 + 4);
    v21 = *(v18 + 5);
    v114 = v22;
    v108 = v21;
    v109 = v20;
    sub_20B6222E8(*&v12[v10[20]], *&v12[v10[20] + 8]);
    LODWORD(v100) = v12[v10[28]];
    v23 = *&v12[v10[32]];
    (*(v14 + 32))(v16, v12, v13);
    v101 = sub_20C0702A8(v16, v117);
    v24 = sub_20C133E44();
    v26 = v25;
    v27 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_descriptions;
    swift_beginAccess();
    v115 = a3;
    v28 = *(a3 + v27);
    v29 = *(v28 + 16);
    v104 = v14;
    v92 = v8;
    if (v29)
    {
      v30 = sub_20B65AA60(v24, v26);
      v32 = v31;

      if (v32)
      {
        v33 = (*(v28 + 56) + 16 * v30);
        v34 = *v33;
        v35 = v33[1];
        swift_endAccess();
        v36 = objc_allocWithZone(MEMORY[0x277CCA898]);

        v37 = v112;
        v38 = v113;
        v39 = sub_20C13C914();
        v40 = [v36 initWithString_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
        v41 = *(sub_20C138094() - 8);
        v42 = v13;
        v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_20C14F980;
        v45 = (v44 + v43);
        v13 = v42;
        *v45 = v34;
        v45[1] = v35;
        v46 = v40;
        v14 = v104;
        swift_storeEnumTagMultiPayload();
        v47 = v114;
        goto LABEL_8;
      }
    }

    else
    {
    }

    swift_endAccess();
    v48 = v112;
    v49 = v113;
    v46 = v109;

    v47 = v114;
    v44 = v108;
LABEL_8:
    v111 = v44;

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A70);
    v102 = swift_allocBox();
    v103 = v13;
    v52 = v51;
    v53 = v50[12];
    (*(v14 + 16))(v51, v16, v13);
    v110 = v16;
    v54 = v115;
    v52[v53] = *(*(v115 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_lazyLockupFetcher) + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v118[0] = v23;
    sub_20B622330(v101, sub_20B6219F8, 0, isUniquelyReferenced_nonNull_native, v118);

    v97 = 0;
    v99 = &v91;
    v57 = v50[16];
    v58 = v50[20];
    v59 = v50[24];
    v60 = v50[28];
    v101 = v50;
    v96 = v50[32];
    *&v52[v57] = v118[0];
    v61 = &v52[v58];
    v62 = &v52[v59];
    v63 = v113;
    *v61 = v112;
    v61[1] = v63;
    v64 = v116;
    v61[2] = v46;
    v61[3] = v64;
    v65 = v111;
    v61[4] = v47;
    v61[5] = v65;
    *v62 = xmmword_20C157520;
    *(v62 + 3) = 0;
    *(v62 + 4) = 0;
    *(v62 + 2) = 0;
    *(v62 + 20) = 0;
    v52[v60] = v100;
    v95 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_weekdayCompletedReferencesMetrics;
    v66 = *(v54 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_weekdayCompletedReferencesMetrics);
    MEMORY[0x28223BE20](v56);
    v67 = v110;
    v68 = v117;
    *(&v91 - 2) = v110;
    *(&v91 - 1) = v68;
    v112 = v69;
    v100 = v63;
    v98 = v46;

    LOBYTE(v63) = sub_20B796C44(sub_20C073B5C, (&v91 - 4), v66);

    v113 = v52;
    v52[v96] = v63 & 1;
    v71 = v115;
    v72 = *(v115 + v95);
    MEMORY[0x28223BE20](v70);
    *(&v91 - 2) = v67;
    *(&v91 - 1) = v68;

    LOBYTE(v63) = sub_20B796C44(sub_20C073F14, (&v91 - 4), v72);

    if (v63)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v73 = v100;
      v74 = v112;
    }

    else
    {
      v75 = v98;
      v76 = v100;
      v77 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlan;
      swift_beginAccess();
      v78 = v105;
      v79 = v106;
      v80 = v92;
      (*(v106 + 16))(v105, v71 + v77, v92);
      v81 = v107;
      sub_20C132E64();
      v82 = sub_20C133904();
      LOBYTE(v77) = v83;
      (*(v93 + 8))(v81, v94);
      (*(v79 + 8))(v78, v80);
      if ((v77 & 1) == 0)
      {
        v86 = sub_20C135204();

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        v87 = v112;
        v85 = v86 == v82;
        goto LABEL_14;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v84 = v112;
    }

    v85 = 0;
LABEL_14:
    v88 = v113;
    v89 = *(v101 + 36);
    (*(v104 + 8))(v110, v103);
    v88[v89] = v85;
    return v102 | 0x9000000000000002;
  }

  return a2;
}

void *sub_20C0702A8(uint64_t a1, uint64_t a2)
{
  v5 = sub_20C135214();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v54 - v12;
  v14 = sub_20C134104();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_configuration;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v18, v13, &qword_27C761800);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20B520158(v13, &qword_27C761800);
    return sub_20B6B2348(MEMORY[0x277D84F90]);
  }

  (*(v15 + 32))(v17, v13, v14);
  v20 = v2;
  if (!sub_20C0709AC(a1, a2))
  {
    goto LABEL_13;
  }

  v21 = sub_20C133FF4();
  if (v23 == -1)
  {
    goto LABEL_13;
  }

  if ((v23 & 1) == 0)
  {
    sub_20B584078(v21, v22, v23);
LABEL_13:
    v39 = sub_20B6B2348(MEMORY[0x277D84F90]);
    (*(v15 + 8))(v17, v14);
    return v39;
  }

  v57 = a2;
  v24 = v21;
  v25 = sub_20C133F74();
  MEMORY[0x28223BE20](v25);
  v54[-2] = v17;
  LOBYTE(v54[-1]) = v24;
  v56 = v24;
  if ((v24 & 0xFE) != 0)
  {
    v26 = sub_20B622280;
  }

  else
  {
    v26 = sub_20B6222C8;
  }

  v55 = sub_20B613908(v26, &v54[-4], v25);
  v54[1] = 0;

  v27 = sub_20C133E44();
  v29 = v28;
  v30 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_resumableWorkoutSessions;
  swift_beginAccess();
  v31 = *(v20 + v30);
  if (*(v31 + 16))
  {
    v32 = sub_20B65AA60(v27, v29);
    v34 = v33;

    v35 = v62;
    if (v34)
    {
      v36 = *(v31 + 56);
      v37 = sub_20C134D54();
      v38 = *(v37 - 8);
      (*(v38 + 16))(v35, v36 + *(v38 + 72) * v32, v37);
      (*(v38 + 56))(v35, 0, 1, v37);
    }

    else
    {
      v41 = sub_20C134D54();
      (*(*(v41 - 8) + 56))(v35, 1, 1, v41);
    }
  }

  else
  {

    v40 = sub_20C134D54();
    v35 = v62;
    (*(*(v40 - 8) + 56))(v62, 1, 1, v40);
  }

  swift_endAccess();
  v42 = sub_20C133E44();
  v44 = v43;
  (*(v59 + 16))(v58, v20 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_offset, v60);
  v45 = v61;
  sub_20C135BF4();
  v46 = sub_20C135C54();
  v47 = (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  MEMORY[0x28223BE20](v47);
  v48 = v55;
  LOBYTE(v54[-8]) = v56;
  v54[-7] = v49;
  v54[-6] = v48;
  v54[-5] = v35;
  v54[-4] = v42;
  v54[-3] = v44;
  v54[-2] = v45;
  v50 = sub_20B6142EC(sub_20C073B7C, &v54[-10], v48);

  sub_20B520158(v45, &qword_27C76A410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 0;
  v52 = inited + 32;
  *(inited + 40) = v50;
  v53 = sub_20B6B2348(inited);
  swift_setDeallocating();
  sub_20B520158(v52, &unk_27C762A50);
  sub_20B520158(v35, &unk_27C7623D0);
  (*(v15 + 8))(v17, v14);
  return v53;
}

BOOL sub_20C0709AC(uint64_t a1, uint64_t a2)
{
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C133954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_isSubscribed) != 1)
  {
    return 0;
  }

  v21 = v6;
  v22 = v5;
  v14 = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_weekdayCompletedReferencesMetrics);
  MEMORY[0x28223BE20](v11);
  *(&v21 - 2) = a1;
  *(&v21 - 1) = a2;

  v15 = sub_20B796C44(sub_20C073F14, (&v21 - 4), v14);

  if (v15)
  {
    return 0;
  }

  v16 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlan;
  swift_beginAccess();
  (*(v10 + 16))(v13, v2 + v16, v9);
  sub_20C132E64();
  v17 = sub_20C133904();
  v19 = v18;
  (*(v21 + 8))(v8, v22);
  (*(v10 + 8))(v13, v9);
  return (v19 & 1) == 0 && v17 >= sub_20C135204();
}

BOOL sub_20C070C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20 = sub_20C135C54();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C136104();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = a1;
  sub_20C137264();
  v11 = sub_20C1360D4();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (v11 == sub_20C133E44() && v13 == v14)
  {

    goto LABEL_8;
  }

  v16 = sub_20C13DFF4();

  result = 0;
  if (v16)
  {
LABEL_8:
    sub_20C137284();
    v18 = sub_20C135C34();
    (*(v4 + 8))(v6, v20);
    return v18 == v21;
  }

  return result;
}

uint64_t sub_20C070E3C()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 144);
  v13[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 128);
  v13[9] = v3;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 80);
  v13[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 64);
  v13[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 112);
  v13[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 96);
  v13[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 16);
  v13[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row);
  v13[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 48);
  v13[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 32);
  v13[3] = v7;
  sub_20B520158(v13, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_archivedSessionClient);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_bookmarkClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_catalogClient);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_subscriptionCache);

  v8 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_offset;
  v9 = sub_20C135214();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_storefrontLocalizer);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_configuration, &qword_27C761800);

  v10 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlan;
  v11 = sub_20C133954();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_20C071080()
{
  sub_20C070E3C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanWeekdayDetailShelf()
{
  result = qword_27C772230;
  if (!qword_27C772230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C07112C()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20C135214();
    if (v1 <= 0x3F)
    {
      sub_20B524ACC();
      if (v2 <= 0x3F)
      {
        sub_20C133954();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_20C0712E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9[-v3 - 8];
  swift_getObjectType();
  sub_20C13B0D4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v9);

  sub_20C13CDC4();
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_20B6383D0(0, 0, v4, &unk_20C18BC38, v6);
}

uint64_t sub_20C0714C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_20C13CDF4();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    v5 = swift_allocObject();
    swift_weakInit();
    sub_20C13CDA4();

    v6 = sub_20C13CD94();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v5;

    sub_20B6380FC(0, 0, v2, &unk_20C18BC80, v7);
  }

  return result;
}

uint64_t sub_20C071650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_20C13BB84();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[7] = v6;
  *v6 = v4;
  v6[1] = sub_20C071744;

  return sub_20C06DCE4(0);
}

uint64_t sub_20C071744()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C071880, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20C071880()
{
  v24 = v0;
  v1 = *(v0 + 64);
  sub_20C13B454();

  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 40);
    v21 = *(v0 + 32);
    v22 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315394;
    sub_20C135214();
    sub_20C073CC4(&unk_27C772260, MEMORY[0x277D51640]);
    v9 = sub_20C13DFA4();
    v11 = sub_20B51E694(v9, v10, &v23);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v0 + 16) = v5;
    v12 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v13 = sub_20C13C9D4();
    v15 = sub_20B51E694(v13, v14, &v23);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to activate weekday detail %s: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);

    (*(v6 + 8))(v22, v21);
  }

  else
  {
    v17 = *(v0 + 40);
    v16 = *(v0 + 48);
    v18 = *(v0 + 32);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_20C071B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v5[10] = *(v7 + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772240);
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  sub_20C13CDA4();
  v5[16] = sub_20C13CD94();
  v10 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20C071C88, v10, v9);
}

uint64_t sub_20C071C88()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = *(v0 + 112);
    v2 = *(v0 + 96);
    v18 = *(v0 + 120);
    v19 = *(v0 + 104);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);

    sub_20C02C77C(v7, v2);

    v9 = swift_allocObject();
    *(v9 + 16) = sub_20C073974;
    *(v9 + 24) = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_20C07397C;
    *(v10 + 24) = v9;
    (*(v5 + 16))(v4, v2, v6);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v11, v4, v6);
    v13 = (v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v13 = sub_20C0739BC;
    v13[1] = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772248);
    sub_20C137C94();
    (*(v5 + 8))(v2, v6);
    v14 = sub_20C137CB4();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v14(sub_20B52E4A0, v15);

    (*(v20 + 8))(v18, v19);
  }

  **(v0 + 40) = Strong == 0;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_20C071F6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_20C13CDA4();

  v6 = sub_20C13CD94();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  return sub_20B6380FC(0, 0, v4, &unk_20C18BC10, v7);
}

uint64_t sub_20C07208C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_20C13CDA4();
  v4[7] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_20C072124, v6, v5);
}

uint64_t sub_20C072124()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_20BCD6534;

    return sub_20C06D428(1);
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

void sub_20C07222C(unint64_t a1, void *a2, uint64_t a3)
{
  v128 = a2;
  v113 = a3;
  v4 = sub_20C13BB84();
  v125 = *(v4 - 8);
  v126 = v4;
  MEMORY[0x28223BE20](v4);
  v124 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v107);
  v7 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133954();
  v108 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v116 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C135214();
  v111 = *(v10 - 8);
  v112 = v10;
  MEMORY[0x28223BE20](v10);
  v110 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for WorkoutPlanSwappableItem();
  MEMORY[0x28223BE20](v109);
  v117 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50);
  MEMORY[0x28223BE20](v13 - 8);
  v120 = (&v105 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v15 - 8);
  v118 = (&v105 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v122 = *(v17 - 8);
  v123 = v17;
  MEMORY[0x28223BE20](v17);
  v121 = &v105 - v18;
  v19 = type metadata accessor for ButtonAction(0);
  MEMORY[0x28223BE20](v19 - 8);
  v119 = (&v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v21);
  v23 = (&v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A70);
  MEMORY[0x28223BE20](v24);
  v26 = &v105 - v25;
  v27 = sub_20C134014();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x4A)
  {
    v105 = v7;
    v106 = v8;
    v31 = swift_projectBox();
    sub_20B52F9E8(v31, v26, &unk_27C762A70);

    v32 = &v26[*(v24 + 80)];
    v33 = v27;
    v114 = v30;
    v115 = v28;
    v35 = *v32;
    v34 = *(v32 + 1);
    v36 = *(v32 + 2);

    v37 = v115;
    v38 = v114;

    v39 = v27;
    sub_20B6222E8(*&v26[*(v24 + 96)], *&v26[*(v24 + 96) + 8]);
    (*(v37 + 32))(v38, v26, v27);
    sub_20B5EAE70(v128, v23);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      v54 = v127;
      v55 = *v23;
      v56 = sub_20C133FE4();
      if (v57)
      {
        (*(v37 + 8))(v38, v27);
      }

      else
      {
        v62 = v56;
        v128 = v55;
        v63 = sub_20C133E44();
        v65 = v64;
        v66 = sub_20C133FF4();
        v68 = v67;
        v70 = v69;
        v71 = v54;
        (*(v111 + 16))(v110, v54 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_offset, v112);
        v72 = v117;
        v73 = v65;
        sub_20C135BF4();
        *v72 = v62;
        *(v72 + 8) = v63;
        *(v72 + 16) = v65;
        *(v72 + 24) = v66;
        *(v72 + 32) = v68;
        *(v72 + 40) = v70;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v75 = Strong;
          v76 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlan;
          swift_beginAccess();
          v77 = v108;
          (*(v108 + 16))(v116, v71 + v76, v106);
          v78 = sub_20C136664();
          v79 = v105;
          (*(*(v78 - 8) + 56))(v105, 1, 1, v78);
          v80 = v107;
          v81 = *(v107 + 20);
          v82 = *MEMORY[0x277D513D8];
          v83 = sub_20C134F24();
          (*(*(v83 - 8) + 104))(v79 + v81, v82, v83);
          v84 = v80[6];
          v85 = sub_20C132C14();
          (*(*(v85 - 8) + 56))(v79 + v84, 1, 1, v85);
          v86 = v80[8];
          v87 = sub_20C135ED4();
          (*(*(v87 - 8) + 56))(v79 + v86, 1, 1, v87);
          v88 = v80[10];
          v89 = *MEMORY[0x277D51768];
          v90 = sub_20C1352E4();
          (*(*(v90 - 8) + 104))(v79 + v88, v89, v90);
          v91 = v80[11];
          v92 = sub_20C136E94();
          (*(*(v92 - 8) + 56))(v79 + v91, 1, 1, v92);

          v93 = sub_20B6B29D4(MEMORY[0x277D84F90]);
          v94 = (v79 + v80[7]);
          *v94 = v63;
          v94[1] = v73;
          v95 = (v79 + v80[9]);
          *v95 = 0;
          v95[1] = 0;
          *(v79 + v80[12]) = v93;
          sub_20BF9FD54(v71, v79, v75);
          v96 = v75 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
          v97 = swift_unknownObjectWeakLoadStrong();
          v98 = v128;
          if (v97)
          {
            v99 = *(v96 + 8);
            ObjectType = swift_getObjectType();
            v102 = v116;
            v101 = v117;
            (*(v99 + 272))(v75, v117, v116, v98, ObjectType, v99);
            swift_unknownObjectRelease();
            v104 = v114;
            v103 = v115;
          }

          else
          {
            v104 = v114;
            v103 = v115;
            v102 = v116;
            v101 = v117;
          }

          swift_unknownObjectRelease();

          sub_20C073854(v105, type metadata accessor for ShelfMetricAction);
          (*(v77 + 8))(v102, v106);
          sub_20C073854(v101, type metadata accessor for WorkoutPlanSwappableItem);
          (*(v103 + 8))(v104, v39);
        }

        else
        {

          sub_20C073854(v72, type metadata accessor for WorkoutPlanSwappableItem);
          (*(v115 + 8))(v114, v39);
        }
      }
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v41 = v23;
      v42 = v119;
      sub_20B5F6860(v41, v119);
      v43 = sub_20C133E44();
      v45 = v44;
      v46 = sub_20C135ED4();
      v47 = v118;
      (*(*(v46 - 8) + 56))(v118, 1, 1, v46);
      v48 = sub_20C1352E4();
      v49 = v120;
      (*(*(v48 - 8) + 56))(v120, 1, 1, v48);
      v50 = v121;
      sub_20B5A7F7C(v42, v43, v45, v47, 0, 0, v49, v121);

      sub_20B520158(v49, &unk_27C765D50);
      sub_20B520158(v47, &unk_27C7621D0);
      v51 = v123;
      v52 = sub_20C137CB4();
      v53 = swift_allocObject();
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      v52(sub_20B52347C, v53);

      (*(v122 + 8))(v50, v51);
      sub_20C073854(v42, type metadata accessor for ButtonAction);
      (*(v37 + 8))(v38, v33);
    }

    else
    {
      v58 = v124;
      sub_20C13B534();
      v59 = sub_20C13BB74();
      v60 = sub_20C13D1D4();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_20B517000, v59, v60, "[WorkoutPlanWeekdayDetailShelf] Unexpected shelf item action", v61, 2u);
        MEMORY[0x20F2F6A40](v61, -1, -1);
      }

      (*(v125 + 8))(v58, v126);
      (*(v37 + 8))(v38, v33);
      sub_20C073854(v23, type metadata accessor for ShelfItemAction);
    }
  }
}

uint64_t sub_20C072EE4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20C072F5C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20C07301C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_20C13CDA4();

  v7 = sub_20C13CD94();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  v8[5] = a1;

  sub_20B6380FC(0, 0, v4, &unk_20C18BBF0, v8);
}

BOOL sub_20C07317C(uint64_t a1)
{
  v2 = *(sub_20C02A560() + 16);

  return v2 - 1 > a1;
}

void sub_20C0731C0(uint64_t a1, char a2, void *a3)
{
  v59 = sub_20C134D54();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639B0);
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v50 - v10);
  v54 = *(a1 + 16);
  if (!v54)
  {
    goto LABEL_24;
  }

  v50 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v56 + 80);
  v55 = a1;
  v14 = (v57 + 32);
  v52 = a1 + ((v13 + 32) & ~v13);
  sub_20B52F9E8(v52, v11, &qword_27C7639B0);
  v15 = v11[1];
  v62 = *v11;
  v16 = v62;
  v63 = v15;
  v17 = *v14;
  v53 = v12;
  v51 = v17;
  v17(v58, v11 + v12, v59);
  v18 = *a3;
  v20 = sub_20B65AA60(v16, v15);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_20BA121C8();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_20BA0DE90(v23, a2 & 1);
  v25 = sub_20B65AA60(v16, v15);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v29 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v30 = (v29[6] + 16 * v20);
      *v30 = v16;
      v30[1] = v15;
      v51((v29[7] + *(v57 + 72) * v20), v58, v59);
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v29[2] = v33;
      if (v54 != 1)
      {
        v34 = 1;
        while (v34 < *(v55 + 16))
        {
          sub_20B52F9E8(v52 + *(v56 + 72) * v34, v11, &qword_27C7639B0);
          v35 = v11[1];
          v62 = *v11;
          v36 = v62;
          v63 = v35;
          v37 = *v14;
          (*v14)(v58, v11 + v53, v59);
          v38 = *a3;
          v39 = sub_20B65AA60(v36, v35);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v32 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v32)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (v38[3] < v43)
          {
            sub_20BA0DE90(v43, 1);
            v39 = sub_20B65AA60(v36, v35);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v47 = (v46[6] + 16 * v39);
          *v47 = v36;
          v47[1] = v35;
          v37((v46[7] + *(v57 + 72) * v39), v58, v59);
          v48 = v46[2];
          v32 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v32)
          {
            goto LABEL_27;
          }

          ++v34;
          v46[2] = v49;
          if (v54 == v34)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = swift_allocError();
    swift_willThrow();
    v64 = v27;
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v57 + 8))(v58, v59);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_20C13E054();
  __break(1u);
LABEL_29:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD00000000000001BLL, 0x800000020C1B67A0);
  sub_20C13DDF4();
  MEMORY[0x20F2F4230](39, 0xE100000000000000);
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C07372C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772248);

  return sub_20C137C94();
}

void sub_20C0737C4(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr))
{
  a3(&v5);
  v4 = v5;
  v6 = 0;
  a1(&v5);

  sub_20C073A88(v4, 0);
}