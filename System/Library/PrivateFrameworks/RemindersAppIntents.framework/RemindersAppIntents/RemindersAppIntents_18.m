void sub_261CB66A8(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_261D00494();
      sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_261D00454() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_261D00464();
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  swift_dynamicCast();
  v5 = sub_261B37CA4(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 56) + 8 * a1);

  v9 = v8;
}

uint64_t sub_261CB6838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261CB68A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261CB6900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261CB6968(uint64_t a1, char a2, void *a3)
{
  v6 = type metadata accessor for ListEntity();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE140, &qword_261D03188);
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v53 - v17);
  if (*(a1 + 16))
  {
    v54 = *(a1 + 16);
    v55 = a1;
    v19 = *(result + 48);
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v57 = *(v16 + 72);
    v53 = v20;
    sub_261AFB668(a1 + v20, &v53 - v17, &unk_27FEDE140, &qword_261D03188);
    v21 = *v18;
    v56 = v19;
    sub_261CB6838(v18 + v19, v12, type metadata accessor for ListEntity);
    v22 = *a3;
    v24 = sub_261B37CA4(v21);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      sub_261CA2E78(v27, a2 & 1);
      v29 = *a3;
      v30 = sub_261B37CA4(v21);
      if ((v28 & 1) != (v31 & 1))
      {
LABEL_26:
        sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
        result = sub_261D00654();
        __break(1u);
        return result;
      }

      v24 = v30;
      v32 = *a3;
      if ((v28 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_9:
      v33 = *(v58 + 72) * v24;
      sub_261CB6900(v32[7] + v33, v10, type metadata accessor for ListEntity);
      sub_261CB68A0(v12, type metadata accessor for ListEntity);

      result = sub_261CB7318(v10, v32[7] + v33);
LABEL_13:
      v37 = v54 - 1;
      if (v54 == 1)
      {
        return result;
      }

      v38 = v55 + v57 + v53;
      while (1)
      {
        sub_261AFB668(v38, v18, &unk_27FEDE140, &qword_261D03188);
        v40 = *v18;
        sub_261CB6838(v18 + v56, v12, type metadata accessor for ListEntity);
        v41 = *a3;
        v42 = sub_261B37CA4(v40);
        v44 = v41[2];
        v45 = (v43 & 1) == 0;
        v35 = __OFADD__(v44, v45);
        v46 = v44 + v45;
        if (v35)
        {
          goto LABEL_24;
        }

        v47 = v43;
        if (v41[3] < v46)
        {
          sub_261CA2E78(v46, 1);
          v48 = *a3;
          v42 = sub_261B37CA4(v40);
          if ((v47 & 1) != (v49 & 1))
          {
            goto LABEL_26;
          }
        }

        v50 = *a3;
        if (v47)
        {
          v39 = *(v58 + 72) * v42;
          sub_261CB6900(v50[7] + v39, v10, type metadata accessor for ListEntity);
          sub_261CB68A0(v12, type metadata accessor for ListEntity);

          result = sub_261CB7318(v10, v50[7] + v39);
        }

        else
        {
          v50[(v42 >> 6) + 8] |= 1 << v42;
          *(v50[6] + 8 * v42) = v40;
          result = sub_261CB6838(v12, v50[7] + *(v58 + 72) * v42, type metadata accessor for ListEntity);
          v51 = v50[2];
          v35 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v35)
          {
            goto LABEL_25;
          }

          v50[2] = v52;
        }

        v38 += v57;
        if (!--v37)
        {
          return result;
        }
      }
    }

    if (a2)
    {
      v32 = *a3;
      if (v23)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_261CA4780();
      v32 = *a3;
      if (v28)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v32[(v24 >> 6) + 8] |= 1 << v24;
    *(v32[6] + 8 * v24) = v21;
    result = sub_261CB6838(v12, v32[7] + *(v58 + 72) * v24, type metadata accessor for ListEntity);
    v34 = v32[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v32[2] = v36;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_261CB6E48(uint64_t a1)
{
  v2 = type metadata accessor for AppEntityID();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v54 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = type metadata accessor for ListEntity();
  v5 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for ReminderEntity();
  v7 = *(*(v55 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v55);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v48 - v11;
  v12 = MEMORY[0x277D84F98];
  v60 = MEMORY[0x277D84F98];
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v50 = *(v10 + 80);
  v14 = *(v10 + 72);
  v52 = (v50 + 32) & ~v50;
  v15 = a1 + v52;
  v49 = xmmword_261D03450;
  v51 = v2;
  while (1)
  {
    v58 = v13;
    v17 = v59;
    sub_261CB6900(v15, v59, type metadata accessor for ReminderEntity);
    v18 = v56;
    v19 = *(v17 + *(v55 + 48));
    sub_261CFCA04();
    v20 = v54;
    sub_261CB6900(v18 + *(v57 + 20), v54, type metadata accessor for AppEntityID);
    sub_261CB68A0(v18, type metadata accessor for ListEntity);
    v21 = v2;
    v22 = *(v2 + 20);
    v23 = *v20;
    v24 = v20[1];
    v25 = objc_allocWithZone(MEMORY[0x277D44700]);
    v26 = sub_261CFD814();
    v27 = sub_261CFFA54();
    v28 = [v25 initWithUUID:v26 entityName:v27];

    sub_261CB68A0(v20, type metadata accessor for AppEntityID);
    v30 = sub_261B37CA4(v28);
    v31 = v12[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v12[3] < v33)
    {
      sub_261CA2C08(v33, 1);
      v12 = v60;
      v35 = sub_261B37CA4(v28);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_19;
      }

      v30 = v35;
    }

    if (v34)
    {

      v37 = v12[7];
      sub_261CB6838(v59, v53, type metadata accessor for ReminderEntity);
      v38 = *(v37 + 8 * v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v37 + 8 * v30) = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_261B41560(0, v38[2] + 1, 1, v38);
        *(v37 + 8 * v30) = v38;
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v38 = sub_261B41560(v40 > 1, v41 + 1, 1, v38);
        *(v37 + 8 * v30) = v38;
      }

      v16 = v58;
      v38[2] = v41 + 1;
      sub_261CB6838(v53, v38 + v52 + v41 * v14, type metadata accessor for ReminderEntity);
      v2 = v51;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA670, &qword_261D03228);
      v42 = v52;
      v43 = swift_allocObject();
      *(v43 + 16) = v49;
      sub_261CB6838(v59, v43 + v42, type metadata accessor for ReminderEntity);
      v12[(v30 >> 6) + 8] |= 1 << v30;
      *(v12[6] + 8 * v30) = v28;
      *(v12[7] + 8 * v30) = v43;
      v44 = v12[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_18;
      }

      v12[2] = v46;
      v2 = v21;
      v16 = v58;
    }

    v15 += v14;
    v13 = v16 - 1;
    if (!v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  result = sub_261D00654();
  __break(1u);
  return result;
}

uint64_t sub_261CB7318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListEntity();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_261CB737C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE158);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE158);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261CB7F84()
{
  v473 = v0;
  v1 = v0;
  v472 = *MEMORY[0x277D85DE8];
  v2 = v0[154];
  v3 = v0[151];
  v4 = v0[65];

  v5 = *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA670, &qword_261D03228);
  v6 = *(v3 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v463 = xmmword_261D03450;
  *(v8 + 16) = xmmword_261D03450;
  v9 = *(v1 + 80);
  sub_261CFCBB4();
  v10 = sub_261B9A654(v8, 1);
  v12 = v11;
  v13 = *(v1 + 1200);
  swift_setDeallocating();
  v14 = *(v8 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v468 = v1;
  v15 = sub_261B9BFF4(3, v10, v12);

  v16 = sub_261CFC488(v15);
  if (qword_27FED9D10 != -1)
  {
    goto LABEL_165;
  }

  while (1)
  {
    v17 = sub_261CFF7A4();
    __swift_project_value_buffer(v17, qword_27FEDE158);
    sub_261B4E63C((v1 + 16), (v1 + 240));
    v18 = sub_261CFF784();
    v19 = sub_261CFFE84();
    sub_261B4E674((v1 + 16));
    v457 = v15;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v468[153];
      v21 = v468[150];
      v22 = v468[149];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v469 = v24;
      *v23 = 136446210;
      sub_261CFCBB4();
      sub_261B7C0F0(v20 + *(v21 + 40), v22);
      v25 = v20;
      v1 = v468;
      sub_261CBBB3C(v25, type metadata accessor for ReminderEntity);
      v26 = AppEntityID.entityIdentifierString.getter();
      v28 = v27;
      v29 = v22;
      v15 = v457;
      sub_261CBBB3C(v29, type metadata accessor for AppEntityID);
      v30 = sub_261B879C8(v26, v28, &v469);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_261AE2000, v18, v19, "[UpdateReminderIntentPerforming] Update reminder with id: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x26671D560](v24, -1, -1);
      MEMORY[0x26671D560](v23, -1, -1);
    }

    v31 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v31 setSaveIsNoopIfNoChangedKeys_];
    v32 = [v15 parentReminder];
    if (v32)
    {
      v33 = v32;
      v34 = [v31 updateReminder_];
    }

    else
    {
      v34 = 0;
    }

    v447 = v34;
    if (v16)
    {
      *&v469 = MEMORY[0x277D84F90];
      v1 = v16 & 0xFFFFFFFFFFFFFF8;
      if (v16 >> 62)
      {
        v35 = sub_261D00274();
      }

      else
      {
        v35 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = (v16 & 0xC000000000000001);
      sub_261CFD104();
      v36 = 0;
      v460 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v35 == v36)
        {

          v1 = v468;
          v15 = v457;
          goto LABEL_23;
        }

        if (v15)
        {
          v37 = MEMORY[0x26671CA10](v36, v16);
        }

        else
        {
          if (v36 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_162;
          }

          v37 = *(v16 + 8 * v36 + 32);
        }

        v38 = v37;
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        v40 = [v31 updateReminder_];

        ++v36;
        if (v40)
        {
          MEMORY[0x26671C310]();
          if (*((v469 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v469 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v41 = *((v469 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_261CFFC84();
          }

          sub_261CFFCB4();
          v460 = v469;
          v36 = v39;
        }
      }

      __break(1u);
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    v460 = MEMORY[0x277D84F90];
LABEL_23:
    v42 = *(v1 + 1176);
    v43 = *(v1 + 1168);
    v44 = *(v1 + 1160);
    sub_261CFE144();
    v471 = 0;
    v469 = 0u;
    v470 = 0u;
    v45 = v15;
    v450 = v31;
    v458 = sub_261CFE134();
    v46 = *(v1 + 88);
    sub_261CFCBD4();
    sub_261CFCB94();

    v47 = (*(v43 + 88))(v42, v44);
    v48 = *MEMORY[0x277CB9EB8];
    v49 = *(v1 + 1176);
    v50 = *(v1 + 1168);
    v51 = *(v1 + 1160);
    if (v47 == *MEMORY[0x277CB9EB8])
    {
      (*(v50 + 96))(*(v1 + 1176), v51);
      v52 = v49[1];
      if (v52)
      {
        v53 = *v49;
        v54 = HIBYTE(v52) & 0xF;
        if ((v52 & 0x2000000000000000) == 0)
        {
          v54 = v53 & 0xFFFFFFFFFFFFLL;
        }

        if (v54)
        {
          v55 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v56 = sub_261CFFA54();

          v57 = [v55 initWithString_];

          sub_261CFE0D4();
        }

        else
        {
        }
      }
    }

    else
    {
      (*(v50 + 8))(*(v1 + 1176), v51);
    }

    v58 = *(v1 + 1152);
    v59 = *(v1 + 1136);
    v60 = *(v1 + 1128);
    v61 = *(v1 + 16);
    sub_261CFCBD4();
    sub_261CFCB94();

    v466 = v48;
    if ((*(v59 + 88))(v58, v60) == v48)
    {
      v62 = *(v1 + 1144);
      v63 = *(v1 + 1136);
      v64 = *(v1 + 1128);
      (*(v63 + 16))(v62, *(v1 + 1152), v64);
      (*(v63 + 96))(v62, v64);
      if (*v62 != 2)
      {
        sub_261CFE114();
      }
    }

    v65 = *(v1 + 1152);
    v66 = *(v1 + 1136);
    v67 = *(v1 + 1128);
    v68 = *(v1 + 1096);
    v69 = *(v1 + 1088);
    v70 = *(v1 + 1080);

    (*(v66 + 8))(v65, v67);
    v71 = *(v1 + 96);
    sub_261CFCBD4();
    sub_261CFCB94();

    v454 = v45;
    if ((*(v69 + 88))(v68, v70) == v48)
    {
      v72 = *(v1 + 1112);
      v73 = *(v1 + 1104);
      v74 = *(v1 + 1096);
      (*(*(v1 + 1088) + 96))(v74, *(v1 + 1080));
      if ((*(v72 + 48))(v74, 1, v73) == 1)
      {
        sub_261AE6A40(*(v1 + 1096), &unk_27FEDE0C0, &unk_261D02500);
      }

      else
      {
        v75 = *(v1 + 1184);
        v76 = *(v1 + 1120);
        v77 = *(v1 + 1104);
        v78 = *(v1 + 1072);
        v79 = *(v1 + 1064);
        v80 = *(v1 + 1056);
        sub_261B01E2C(*(v1 + 1096), v76);
        v81 = (v76 + *(v77 + 20));
        v82 = *(v75 + 20);
        v83 = *v81;
        v84 = v81[1];
        v85 = objc_allocWithZone(MEMORY[0x277D44700]);
        v86 = sub_261CFD814();
        v87 = sub_261CFFA54();
        v88 = [v85 initWithUUID:v86 entityName:v87];

        (*(v79 + 104))(v78, *MEMORY[0x277D45C50], v80);
        sub_261CFD104();
        v89 = sub_261CFE0E4();

        v1 = v468;
        (*(v79 + 8))(v78, v80);
        sub_261CBBB3C(v76, type metadata accessor for ListEntity);
      }
    }

    else
    {
      (*(*(v1 + 1088) + 8))(*(v1 + 1096), *(v1 + 1080));
    }

    v90 = *(v1 + 1048);
    v91 = *(v1 + 1032);
    v92 = *(v1 + 1024);
    v93 = *(v1 + 1016);
    v94 = *(v1 + 992);
    v95 = v1;
    v96 = *(v1 + 984);
    v97 = v95[122];
    v98 = v95[121];
    v99 = v95[13];
    sub_261CFCBD4();
    sub_261CFCB94();

    v100 = v95[14];
    sub_261CFCBD4();
    sub_261CFCB94();

    v101 = *(v98 + 48);
    (*(v91 + 32))(v97, v90, v92);
    (*(v94 + 32))(v97 + v101, v93, v96);
    v102 = (*(v91 + 88))(v97, v92);
    v103 = v466;
    if (v102 == v466)
    {
      v104 = v95[130];
      v105 = v95[129];
      v106 = v95[128];
      (*(v105 + 16))(v104, v95[122], v106);
      (*(v105 + 96))(v104, v106);
      v107 = sub_261CFD4E4();
      v108 = *(v107 - 8);
      v1 = v95;
      if ((*(v108 + 48))(v104, 1, v107) == 1)
      {
        v109 = v95[129];
        v110 = v95[128];
        v111 = v95[124];
        v112 = *(v1 + 984);
        v113 = *(v1 + 976);
        v114 = v468[119];
        (*(v108 + 56))(v114, 1, 1, v107);
        sub_261CFE094();
        v115 = v114;
        v1 = v468;
        sub_261AE6A40(v115, &qword_27FEDA160, &qword_261D02220);
        sub_261CFE0A4();
        (*(v111 + 8))(v97 + v101, v112);
        v116 = v113;
        v103 = v466;
        (*(v109 + 8))(v116, v110);
        v16 = v458;
        v15 = v454;
        goto LABEL_60;
      }

      v132 = (*(v95[124] + 88))(v97 + v101, v95[123]);
      if (v132 == v466)
      {
        v133 = v95[125];
        v134 = v95[124];
        v135 = v95[123];
        (*(v134 + 16))(v133, v97 + v101, v135);
        (*(v134 + 96))(v133, v135);
        v136 = *(v133 + 8);
        v137 = v95[130];
        v138 = v95[129];
        v443 = v95[128];
        if (!v136)
        {
          v160 = v95[124];
          v161 = *(v1 + 984);
          v162 = *(v1 + 976);
          v163 = *(v1 + 952);
          sub_261B02380(v137, v163);
          v16 = v458;
          sub_261CFE094();
          sub_261CFE0A4();
          sub_261AE6A40(v163, &qword_27FEDA160, &qword_261D02220);
          (*(v160 + 8))(v97 + v101, v161);
          (*(v138 + 8))(v162, v443);
          goto LABEL_56;
        }

        v139 = v95[125];
        v429 = v95[124];
        v433 = v95[123];
        v437 = v95[129];
        v440 = v95[122];
        v140 = v95[119];
        v141 = v139[2];
        v142 = v139[3];
        v143 = *v139;
        sub_261B02380(v137, v140);
        sub_261CFE094();
        *&v469 = v143;
        *(&v469 + 1) = v136;
        *&v470 = v141;
        *(&v470 + 1) = v142;
        v144 = sub_261CF8274();
        sub_261CFE0A4();

        v1 = v468;
        v16 = v458;
        sub_261B49F50(v143, v136);
        sub_261AE6A40(v140, &qword_27FEDA160, &qword_261D02220);
        (*(v429 + 8))(v97 + v101, v433);
        v131 = v437;
        goto LABEL_49;
      }

      if (v132 == *MEMORY[0x277CB9EC0])
      {
        v145 = v95[130];
        v146 = v95[129];
        v147 = *(v1 + 1024);
        v148 = *(v1 + 992);
        v149 = *(v1 + 984);
        v150 = *(v1 + 976);
        v151 = v468[119];
        sub_261B02380(v145, v151);
        v16 = v458;
        sub_261CFE094();
        v152 = v151;
        v1 = v468;
        sub_261AE6A40(v152, &qword_27FEDA160, &qword_261D02220);
        (*(v148 + 8))(v97 + v101, v149);
        v153 = v150;
        v103 = v466;
        (*(v146 + 8))(v153, v147);
        v15 = v454;
        goto LABEL_60;
      }

      v154 = v95 + 130;
      v15 = v454;
      v16 = v458;
    }

    else
    {
      v1 = v95;
      v15 = v454;
      v16 = v458;
      if (v102 != *MEMORY[0x277CB9EC0] || (*(v95[124] + 88))(v97 + v101, v95[123]) != v466)
      {
        goto LABEL_59;
      }

      v117 = v95[126];
      v118 = v95[124];
      v119 = v95[123];
      (*(v118 + 16))(v117, v97 + v101, v119);
      (*(v118 + 96))(v117, v119);
      v120 = v117[1];
      if (!v120)
      {
        v155 = v468[129];
        v156 = v468[128];
        v157 = v468[124];
        v158 = v468[123];
        v159 = v468[122];
        sub_261CFE0A4();
        (*(v157 + 8))(v97 + v101, v158);
        (*(v155 + 8))(v159, v156);
        v1 = v468;
        goto LABEL_56;
      }

      v121 = *v117;
      v122 = v117[2];
      v123 = v117[3];
      v124 = sub_261CFDF94();
      v125 = [v124 dueDateComponents];

      if (v125)
      {
        v126 = v468[124];
        v432 = v468[129];
        v436 = v468[123];
        v440 = v468[122];
        v443 = v468[128];
        v127 = v468[120];
        sub_261CFD484();

        v128 = sub_261CFD4E4();
        (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
        sub_261AE6A40(v127, &qword_27FEDA160, &qword_261D02220);
        *&v469 = v121;
        *(&v469 + 1) = v120;
        *&v470 = v122;
        *(&v470 + 1) = v123;
        v129 = sub_261CF8274();
        sub_261CFE0A4();
        v130 = v121;
        v1 = v468;
        sub_261B49F50(v130, v120);

        v16 = v458;
        (*(v126 + 8))(v97 + v101, v436);
        v131 = v432;
LABEL_49:
        (*(v131 + 8))(v440, v443);
LABEL_56:
        v15 = v454;
        v103 = v466;
        goto LABEL_60;
      }

      v154 = v468 + 120;
      v164 = v468[120];
      v165 = v121;
      v1 = v468;
      sub_261B49F50(v165, v120);
      v166 = sub_261CFD4E4();
      (*(*(v166 - 8) + 56))(v164, 1, 1, v166);
      v15 = v454;
      v103 = v466;
    }

    sub_261AE6A40(*v154, &qword_27FEDA160, &qword_261D02220);
LABEL_59:
    sub_261AE6A40(*(v1 + 976), &qword_27FEDE1B0, &qword_261D111C0);
LABEL_60:
    v167 = *(v1 + 944);
    v168 = *(v1 + 928);
    v169 = *(v1 + 920);
    v170 = *(v1 + 120);
    sub_261CFCBD4();
    sub_261CFCB94();

    if ((*(v168 + 88))(v167, v169) == v103)
    {
      v171 = *(v1 + 936);
      v172 = *(v1 + 928);
      v173 = *(v1 + 920);
      v174 = *(v1 + 896);
      v175 = *(v1 + 888);
      (*(v172 + 16))(v171, *(v1 + 944), v173);
      (*(v172 + 96))(v171, v173);
      if ((*(v174 + 48))(v171, 1, v175) == 1)
      {
        sub_261CFE084();
      }

      else
      {
        v176 = *(v1 + 912);
        v177 = *(v1 + 904);
        v178 = *(v1 + 896);
        v179 = *(v1 + 888);
        (*(v178 + 32))(v176, *(v1 + 936), v179);
        sub_261B05020(0, &qword_27FEDA9E0, 0x277D44740);
        (*(v178 + 16))(v177, v176, v179);
        v180 = REMRecurrenceRule.init(fromRule:)(v177);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA628, &qword_261D031E8);
        v181 = *(sub_261CFE304() - 8);
        v182 = *(v181 + 72);
        v183 = (*(v181 + 80) + 32) & ~*(v181 + 80);
        *(swift_allocObject() + 16) = v463;
        v184 = v180;
        sub_261CFE2F4();
        sub_261CFE084();

        v103 = v466;
        (*(v178 + 8))(v176, v179);
      }
    }

    v185 = *(v1 + 880);
    v186 = *(v1 + 864);
    v187 = *(v1 + 856);
    (*(*(v1 + 928) + 8))(*(v1 + 944), *(v1 + 920));
    v188 = *(v1 + 128);
    sub_261CFCBD4();
    sub_261CFCB94();

    if ((*(v186 + 88))(v185, v187) == v103)
    {
      v189 = *(v1 + 872);
      v190 = *(v1 + 864);
      v191 = *(v1 + 856);
      (*(v190 + 16))(v189, *(v1 + 880), v191);
      (*(v190 + 96))(v189, v191);
      v192 = *v189;
      if (*v189)
      {
        v194 = v189[1];
        v193 = v189[2];
        sub_261B05020(0, &qword_27FEDA9C0, 0x277D44580);
        *&v469 = v192;
        *(&v469 + 1) = v194;
        *&v470 = v193;
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261B53114(&v469);
        if (v195)
        {
          v196 = v195;
          v197 = v195;
          MEMORY[0x26671A740](v196);
          v16 = v458;
          sub_261B49728(v192);
        }

        else
        {
          sub_261B05020(0, &qword_27FEDA9C8, 0x277D44590);
          *&v469 = v192;
          *(&v469 + 1) = v194;
          *&v470 = v193;
          sub_261CFCDA4();
          sub_261CFCDA4();
          sub_261CFCDA4();
          v197 = sub_261B535B8(&v469);
          MEMORY[0x26671A730]();
          v16 = v458;
          sub_261B49728(v192);
        }
      }

      else
      {
        MEMORY[0x26671A730](0);
        MEMORY[0x26671A740](0);
      }

      v103 = v466;
    }

    v198 = *(v1 + 848);
    v199 = *(v1 + 832);
    v200 = *(v1 + 824);
    (*(*(v1 + 864) + 8))(*(v1 + 880), *(v1 + 856));
    v201 = *(v1 + 136);
    sub_261CFCBD4();
    sub_261CFCB94();

    if ((*(v199 + 88))(v198, v200) == v103)
    {
      v202 = *(v1 + 840);
      v203 = *(v1 + 832);
      v204 = *(v1 + 824);
      v205 = *(v1 + 792);
      v206 = *(v1 + 784);
      (*(v203 + 16))(v202, *(v1 + 848), v204);
      (*(v203 + 96))(v202, v204);
      if ((*(v205 + 48))(v202, 1, v206) == 1)
      {
        sub_261CFE054();
      }

      else
      {
        v207 = *(v1 + 816);
        v208 = *(v1 + 808);
        v209 = *(v1 + 792);
        v210 = *(v1 + 784);
        (*(v209 + 32))(v207, *(v1 + 840), v210);
        sub_261B05020(0, &qword_27FEDB0D0, 0x277D445D8);
        (*(v209 + 16))(v208, v207, v210);
        v211 = sub_261C7D36C(v208);
        sub_261CFE054();

        (*(v209 + 8))(v207, v210);
      }
    }

    v212 = *(v1 + 792);
    v213 = *(v1 + 784);
    v214 = *(v1 + 776);
    (*(*(v1 + 832) + 8))(*(v1 + 848), *(v1 + 824));
    v215 = *(v1 + 144);
    sub_261CFCBB4();
    if ((*(v212 + 48))(v214, 1, v213) == 1)
    {
      sub_261AE6A40(*(v1 + 776), &unk_27FEDB0B0, &unk_261D035D0);
      goto LABEL_89;
    }

    (*(*(v1 + 792) + 32))(*(v1 + 800), *(v1 + 776), *(v1 + 784));
    v216 = [v15 list];
    v217 = [v216 sharees];
    if (!v217)
    {
      goto LABEL_87;
    }

    v218 = v217;
    sub_261B05020(0, &qword_27FEDA9D0, 0x277D447E8);
    v219 = sub_261CFFC64();

    if (![v216 isShared])
    {

LABEL_87:

LABEL_88:
      (*(*(v1 + 792) + 8))(*(v1 + 800), *(v1 + 784));
LABEL_89:
      sub_261CFE004();
      goto LABEL_90;
    }

    v220 = *(v1 + 800);
    v221 = swift_task_alloc();
    *(v221 + 16) = v220;
    v222 = sub_261B49450(sub_261B49774, v221, v219);

    if (!v222)
    {
      v103 = v466;
      goto LABEL_88;
    }

    if (*(v1 + 224))
    {
      v223 = *(v1 + 760);
      v224 = *(v1 + 752);
      v225 = *(v1 + 744);
      v226 = *(v1 + 216);
      sub_261CFD7F4();
      if ((*(v223 + 48))(v225, 1, v224) != 1)
      {
        v445 = *(v1 + 800);
        v353 = *(v1 + 792);
        *&v463 = *(v1 + 784);
        v354 = v468[96];
        v355 = v468[95];
        v356 = v468[94];
        (*(v355 + 32))(v354, v468[93], v356);
        v357 = objc_opt_self();
        v358 = sub_261CFD814();
        v359 = [v357 objectIDWithUUID_];

        v360 = [v222 &selRef_canBeIncludedInGroup];
        v361 = v359;
        v15 = v454;
        sub_261CFDFA4();

        v362 = v354;
        v1 = v468;
        (*(v355 + 8))(v362, v356);
        v16 = v458;
        (*(v353 + 8))(v445, v463);
        goto LABEL_160;
      }

      sub_261AE6A40(*(v1 + 744), &qword_27FEDA988, &unk_261D03480);
    }

    v227 = *(v1 + 800);
    v228 = *(v1 + 792);
    v229 = *(v1 + 784);
    v230 = [v222 objectID];
    sub_261CFDFA4();

    v1 = v468;
    (*(v228 + 8))(v227, v229);
LABEL_160:
    v103 = v466;
LABEL_90:
    v231 = *(v1 + 736);
    v232 = *(v1 + 720);
    v233 = *(v1 + 712);
    v234 = *(v1 + 24);
    sub_261CFCBD4();
    sub_261CFCB94();

    if ((*(v232 + 88))(v231, v233) == v103)
    {
      v235 = *(v1 + 728);
      v236 = *(v1 + 720);
      v237 = *(v1 + 712);
      v238 = *(v1 + 688);
      v239 = *(v1 + 680);
      (*(v236 + 16))(v235, *(v1 + 736), v237);
      (*(v236 + 96))(v235, v237);
      if ((*(v238 + 48))(v235, 1, v239) == 1)
      {
        sub_261CFE0C4();
      }

      else
      {
        v240 = *(v1 + 704);
        v241 = *(v1 + 696);
        v242 = *(v1 + 688);
        v243 = *(v1 + 680);
        (*(v242 + 32))(v240, *(v1 + 728), v243);
        sub_261B05020(0, &qword_27FEDE1F0, 0x277CCA898);
        (*(v242 + 16))(v241, v240, v243);
        v244 = sub_261CFFF94();
        sub_261CFE0C4();

        v103 = v466;
        (*(v242 + 8))(v240, v243);
      }
    }

    v245 = *(v1 + 672);
    v246 = *(v1 + 656);
    v247 = *(v1 + 648);
    (*(*(v1 + 720) + 8))(*(v1 + 736), *(v1 + 712));
    v248 = *(v1 + 200);
    sub_261CFCBD4();
    sub_261CFCB94();

    if ((*(v246 + 88))(v245, v247) == v103)
    {
      v249 = *(v1 + 664);
      v250 = *(v1 + 656);
      v251 = *(v1 + 648);
      (*(v250 + 16))(v249, *(v1 + 672), v251);
      (*(v250 + 96))(v249, v251);
      v252 = *v249;
      if (*v249)
      {
        v253 = *(v1 + 640);
        if (*(v252 + 16))
        {
          v254 = sub_261CFD754();
          v255 = *(v254 - 8);
          (*(v255 + 16))(v253, v252 + ((*(v255 + 80) + 32) & ~*(v255 + 80)), v254);

          (*(v255 + 56))(v253, 0, 1, v254);
        }

        else
        {

          v256 = sub_261CFD754();
          (*(*(v256 - 8) + 56))(v253, 1, 1, v256);
        }

        v257 = *(v1 + 640);
        sub_261CFE0B4();
        sub_261AE6A40(v257, &qword_27FEDB238, &unk_261D056F0);
      }
    }

    v258 = *(v1 + 632);
    v259 = *(v1 + 616);
    v260 = *(v1 + 608);
    (*(*(v1 + 656) + 8))(*(v1 + 672), *(v1 + 648));
    v261 = *(v1 + 160);
    sub_261CFCBD4();
    sub_261CFCB94();

    if ((*(v259 + 88))(v258, v260) == v103)
    {
      v262 = *(v1 + 624);
      v263 = *(v1 + 616);
      v264 = *(v1 + 608);
      (*(v263 + 16))(v262, *(v1 + 632), v264);
      (*(v263 + 96))(v262, v264);
      if (*v262 <= 2u)
      {
        sub_261CFE124();
      }
    }

    v265 = *(v1 + 600);
    v266 = *(v1 + 584);
    v267 = *(v1 + 576);
    (*(*(v1 + 616) + 8))(*(v1 + 632), *(v1 + 608));
    v268 = *(v1 + 168);
    sub_261CFCBD4();
    sub_261CFCB94();

    if ((*(v266 + 88))(v265, v267) == v103)
    {
      v269 = *(v1 + 592);
      v270 = *(v1 + 584);
      v271 = *(v1 + 576);
      (*(v270 + 16))(v269, *(v1 + 600), v271);
      (*(v270 + 96))(v269, v271);
      v272 = *v269;
      if (v272 < 4)
      {
        sub_261CFE044();
      }
    }

    v273 = *(v1 + 568);
    v274 = *(v1 + 552);
    v275 = *(v1 + 544);
    (*(*(v1 + 584) + 8))(*(v1 + 600), *(v1 + 576));
    v276 = *(v1 + 192);
    sub_261CFCBD4();
    sub_261CFCB94();

    if ((*(v274 + 88))(v273, v275) != v103)
    {
      break;
    }

    v277 = *(v1 + 560);
    v278 = *(v1 + 552);
    v279 = *(v1 + 544);
    (*(v278 + 16))(v277, *(v1 + 568), v279);
    (*(v278 + 96))(v277, v279);
    v280 = *v277;
    if (!v280)
    {
      break;
    }

    v281 = sub_261B49EB8(v280);

    v282 = [v15 hashtags];
    sub_261B05020(0, &qword_27FEDD488, 0x277D44648);
    sub_261C8680C();
    v283 = sub_261CFFD64();

    *(v1 + 496) = v283;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE1E0, &qword_261D111F0);
    sub_261CBBAD8();
    v284 = sub_261CFFC24();

    if (*(v281 + 16) <= *(v284 + 16) >> 3)
    {
      *&v469 = v284;
      sub_261CFD104();
      sub_261CBB954(v281);
      v285 = v469;
    }

    else
    {
      sub_261CFD104();
      v285 = sub_261B55F8C(v281, v284);
    }

    if (*(v284 + 16) <= *(v281 + 16) >> 3)
    {
      *&v469 = v281;
      sub_261CBB954(v284);

      v286 = v469;
    }

    else
    {
      v286 = sub_261B55F8C(v284, v281);
    }

    v287 = 0;
    v288 = -1;
    v289 = -1 << *(v285 + 32);
    if (-v289 < 64)
    {
      v288 = ~(-1 << -v289);
    }

    v1 = v288 & *(v285 + 56);
    v290 = (63 - v289) >> 6;
    while (v1)
    {
      v291 = v287;
LABEL_122:
      v292 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
      v293 = (*(v285 + 48) + ((v291 << 10) | (16 * v292)));
      v294 = *v293;
      v295 = v293[1];
      sub_261CFD104();
      sub_261CFE0F4();
    }

    while (1)
    {
      v291 = v287 + 1;
      if (__OFADD__(v287, 1))
      {
        break;
      }

      if (v291 >= v290)
      {

        v296 = 0;
        v297 = -1;
        v298 = -1 << *(v286 + 32);
        if (-v298 < 64)
        {
          v297 = ~(-1 << -v298);
        }

        v299 = v297 & *(v286 + 56);
        v300 = (63 - v298) >> 6;
        v1 = v468;
        while (v299)
        {
          v301 = v296;
LABEL_132:
          v302 = __clz(__rbit64(v299));
          v299 &= v299 - 1;
          v303 = (*(v286 + 48) + ((v301 << 10) | (16 * v302)));
          v304 = *v303;
          v305 = v303[1];
          sub_261CFD104();
          sub_261CFE0F4();
        }

        while (1)
        {
          v301 = v296 + 1;
          if (__OFADD__(v296, 1))
          {
            goto LABEL_164;
          }

          if (v301 >= v300)
          {

            goto LABEL_135;
          }

          v299 = *(v286 + 56 + 8 * v301);
          ++v296;
          if (v299)
          {
            v296 = v301;
            goto LABEL_132;
          }
        }
      }

      v1 = *(v285 + 56 + 8 * v291);
      ++v287;
      if (v1)
      {
        v287 = v291;
        goto LABEL_122;
      }
    }

LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    swift_once();
  }

LABEL_135:
  (*(*(v1 + 552) + 8))(*(v1 + 568), *(v1 + 544));
  v306 = v15;
  sub_261CFCDA4();
  v307 = sub_261CFF784();
  v308 = sub_261CFFE84();

  if (os_log_type_enabled(v307, v308))
  {
    v309 = swift_slowAlloc();
    v310 = swift_slowAlloc();
    v311 = swift_slowAlloc();
    *&v469 = v311;
    *v309 = 138543618;
    v312 = [v306 objectID];
    *(v309 + 4) = v312;
    *v310 = v312;
    *(v309 + 12) = 2082;
    v313 = sub_261CFDF94();
    v314 = [v313 changedKeys];

    sub_261CFFD64();
    v315 = sub_261CFFD74();
    v317 = v316;

    v318 = sub_261B879C8(v315, v317, &v469);

    *(v309 + 14) = v318;
    _os_log_impl(&dword_261AE2000, v307, v308, "[UpdateReminderIntentPerforming] Saving updated reminder with id: %{public}@, changedKeys: %{public}s", v309, 0x16u);
    sub_261AE6A40(v310, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v310, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v311);
    v319 = v311;
    v1 = v468;
    MEMORY[0x26671D560](v319, -1, -1);
    MEMORY[0x26671D560](v309, -1, -1);
  }

  *(v1 + 488) = 0;
  v320 = [v450 saveSynchronouslyWithError_];
  v321 = *(v1 + 488);
  if (!v320)
  {
    v330 = v321;

    sub_261CFD654();

    swift_willThrow();

LABEL_144:
    v333 = *(v1 + 1224);
    v334 = *(v1 + 1216);
    v335 = v468[149];
    v336 = v468[147];
    v337 = v468[144];
    v338 = v468[143];
    v339 = v468[140];
    v340 = v468[137];
    v341 = v468[134];
    v342 = v468[131];
    v381 = v468[130];
    v383 = v468[127];
    v385 = v468[126];
    v387 = v468[125];
    v389 = v468[122];
    v391 = v468[120];
    v393 = v468[119];
    v395 = v468[118];
    v397 = v468[117];
    v399 = v468[114];
    v401 = v468[113];
    v403 = v468[110];
    v405 = v468[109];
    v407 = v468[106];
    v409 = v468[105];
    v411 = v468[102];
    v413 = v468[101];
    v415 = v468[100];
    v417 = v468[97];
    v419 = v468[96];
    v421 = v468[93];
    v423 = v468[92];
    v425 = v468[91];
    v427 = v468[88];
    v430 = v468[87];
    v434 = v468[84];
    v438 = v468[83];
    v441 = v468[80];
    v444 = v468[79];
    v448 = v468[78];
    v451 = v468[75];
    v453 = v468[74];
    v456 = v468[71];
    v459 = v468[70];
    v461 = v468[67];
    v465 = v468[66];

    v343 = v468[1];
    v344 = *MEMORY[0x277D85DE8];
    goto LABEL_145;
  }

  v322 = *(v1 + 536);
  v323 = v321;
  v324 = sub_261CFDF94();
  v325 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v325 - 8) + 56))(v322, 1, 1, v325);
  v326 = v447;
  v327 = [v324 listChangeItem];
  if (!v327 || (v328 = v327, v329 = [v327 storage], v328, (v467 = v329) == 0))
  {
    v331 = v468[67];

    sub_261B01D70();
    swift_allocError();
    *v332 = 11;
    swift_willThrow();

    v1 = v468;

    sub_261AE6A40(v331, &qword_27FEDA108, &unk_261D020C0);
    goto LABEL_144;
  }

  v464 = [v324 storage];
  v455 = [v324 accountCapabilities];
  if (v447)
  {
    v452 = [v326 storage];
  }

  else
  {
    v452 = 0;
  }

  if (v460 >> 62)
  {
    v346 = sub_261D00274();
    if (!v346)
    {
      goto LABEL_168;
    }

LABEL_151:
    *&v469 = MEMORY[0x277D84F90];
    sub_261D003A4();
    if (v346 < 0)
    {
      __break(1u);
    }

    v347 = 0;
    do
    {
      if ((v460 & 0xC000000000000001) != 0)
      {
        v348 = MEMORY[0x26671CA10](v347, v460);
      }

      else
      {
        v348 = *(v460 + 8 * v347 + 32);
      }

      v349 = v348;
      ++v347;
      v350 = [v348 storage];

      sub_261D00374();
      v351 = *(v469 + 16);
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
    }

    while (v346 != v347);

    v352 = v469;
  }

  else
  {
    v346 = *((v460 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v346)
    {
      goto LABEL_151;
    }

LABEL_168:

    v352 = MEMORY[0x277D84F90];
  }

  v363 = v468[152];
  v364 = v468[150];
  v369 = v468[153];
  v370 = v468[149];
  v371 = v468[147];
  v372 = v468[144];
  v373 = v468[143];
  v374 = v468[140];
  v375 = v468[137];
  v376 = v468[134];
  v377 = v468[131];
  v378 = v468[130];
  v379 = v468[127];
  v380 = v468[126];
  v382 = v468[125];
  v384 = v468[122];
  v386 = v468[120];
  v388 = v468[119];
  v390 = v468[118];
  v392 = v468[117];
  v394 = v468[114];
  v396 = v468[113];
  v398 = v468[110];
  v400 = v468[109];
  v402 = v468[106];
  v404 = v468[105];
  v406 = v468[102];
  v408 = v468[101];
  v410 = v468[100];
  v412 = v468[97];
  v414 = v468[96];
  v416 = v468[93];
  v418 = v468[92];
  v420 = v468[91];
  v422 = v468[88];
  v424 = v468[87];
  v426 = v468[84];
  v428 = v468[83];
  v431 = v468[80];
  v435 = v468[79];
  v439 = v468[78];
  v442 = v468[75];
  v446 = v468[74];
  v449 = v468[71];
  v462 = v468[70];
  v365 = v468[67];
  v366 = v468[66];
  v367 = v468[64];
  sub_261AE7A78(v365, v366);
  sub_261C7EDC4(v464, v467, v455, v452, v352, v366, v363);

  sub_261AE6A40(v365, &qword_27FEDA108, &unk_261D020C0);
  sub_261CBBA80();
  sub_261CFC994();

  sub_261CBBB3C(v363, type metadata accessor for ReminderEntity);

  v343 = v468[1];
  v368 = *MEMORY[0x277D85DE8];
LABEL_145:

  return v343();
}

void sub_261CBADF4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  v4 = sub_261CFFA74();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_261CBAE5C(uint64_t a1, _OWORD *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

id sub_261CBAF08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB78, &unk_261D099C0);
  v2 = *v0;
  v3 = sub_261D002E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_261CBB058()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB70, &unk_261D05AA0);
  v2 = *v0;
  v3 = sub_261D002E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_261CFD104();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_261CBB1B4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;
    sub_261CFD104();
    v6 = a1;
    v7 = sub_261D002B4();

    if (v7)
    {
      v8 = sub_261CBB488();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v11 = *(v3 + 40);
  v12 = sub_261D000E4();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_261D000F4();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_261CBAF08();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_261CBB5F0(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_261CBB34C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_261D006C4();
  sub_261CFFB14();
  v7 = sub_261D006F4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_261D00614() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_261CBB058();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_261CBB790(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_261CBB488()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_261D00274();
  v4 = swift_unknownObjectRetain();
  v5 = sub_261B558DC(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);
  sub_261CFCDA4();
  v7 = sub_261D000E4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_261D000F4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_261CBB5F0(v9);
  result = sub_261D000F4();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_261CBB5F0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;
    sub_261CFCDA4();
    v9 = sub_261D001F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_261D000E4();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_261CBB790(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;
    sub_261CFCDA4();
    v9 = sub_261D001F4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_261D006C4();
        sub_261CFD104();
        sub_261CFFB14();
        v15 = sub_261D006F4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_261CBB954(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_261CFD104();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_261CFD104();
        sub_261CBB34C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

unint64_t sub_261CBBA80()
{
  result = qword_280D22350;
  if (!qword_280D22350)
  {
    type metadata accessor for ReminderEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22350);
  }

  return result;
}

unint64_t sub_261CBBAD8()
{
  result = qword_27FEDE1E8;
  if (!qword_27FEDE1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDE1E0, &qword_261D111F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE1E8);
  }

  return result;
}

uint64_t sub_261CBBB3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261CBBB9C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE1F8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE1F8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261CBC038()
{
  v133 = v0;
  v132 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);

  sub_261CFCBB4();
  v3 = *(v0 + 48);
  if (v3)
  {
    *(v0 + 136) = *(v0 + 40);
    v4 = *(v0 + 392);
    v5 = *(v0 + 272);
    v6 = *(v0 + 280);
    *(v0 + 144) = v3;
    sub_261CFD874();
    (*(v6 + 56))(v4, 0, 1, v5);
    sub_261B3BA3C();
    v7 = sub_261D00174();
    v9 = v8;
    sub_261AE6A40(v4, &qword_27FEDA708, &qword_261D03298);
LABEL_3:

    goto LABEL_9;
  }

  v10 = *(v0 + 400);
  sub_261CFCBB4();
  if (*(v0 + 56) || *(v0 + 64) != 0xE000000000000000)
  {
    v11 = *(v0 + 64);
    v12 = sub_261D00614();

    if ((v12 & 1) == 0)
    {
      v80 = *(v0 + 392);
      v79 = *(v0 + 400);
      v81 = *(v0 + 272);
      v82 = *(v0 + 280);
      sub_261CFCBB4();
      v83 = *(v0 + 80);
      *(v0 + 88) = *(v0 + 72);
      *(v0 + 96) = v83;
      sub_261CFD874();
      (*(v82 + 56))(v80, 0, 1, v81);
      sub_261B3BA3C();
      v7 = sub_261D00174();
      v9 = v84;
      sub_261AE6A40(v80, &qword_27FEDA708, &qword_261D03298);
      goto LABEL_3;
    }
  }

  else
  {
  }

  v7 = sub_261CFE294();
  v9 = v13;
LABEL_9:
  v127 = v7;
  if (qword_27FED9D18 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 416);
  v14 = *(v0 + 424);
  v17 = *(v0 + 400);
  v16 = *(v0 + 408);
  v18 = sub_261CFF7A4();
  __swift_project_value_buffer(v18, qword_27FEDE1F8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v19 = sub_261CFF784();
  v20 = sub_261CFFE84();

  if (os_log_type_enabled(v19, v20))
  {
    v122 = *(v0 + 416);
    v124 = *(v0 + 400);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v130 = v22;
    *v21 = 136315138;
    v131[0] = v124;
    v131[1] = v122;
    v23 = sub_261CBCFE8();
    v25 = sub_261B879C8(v23, v24, &v130);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_261AE2000, v19, v20, "[CreateSectionIntentPerforming] Creating section with %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x26671D560](v22, -1, -1);
    MEMORY[0x26671D560](v21, -1, -1);
  }

  v26 = *(v0 + 416);
  v27 = *(v0 + 384);
  v28 = *(v0 + 344);
  v29 = *(v0 + 192);
  sub_261CFCBB4();
  v30 = *(v27 + *(v28 + 84));
  v31 = *(v29 + 16);
  v32 = (v27 + *(v28 + 20));
  v33 = *(type metadata accessor for AppEntityID() + 20);
  v34 = *v32;
  v35 = v32[1];
  v36 = objc_allocWithZone(MEMORY[0x277D44700]);
  v37 = sub_261CFD814();
  v38 = sub_261CFFA54();
  v39 = [v36 initWithUUID:v37 entityName:v38];

  if (v30)
  {
    *(v0 + 152) = 0;
    v40 = [v31 fetchCustomSmartListWithObjectID:v39 error:v0 + 152];

    v41 = *(v0 + 152);
    if (v40)
    {
      v42 = 1;
      goto LABEL_18;
    }

LABEL_19:
    v49 = v41;

    sub_261CFD654();

    swift_willThrow();
    goto LABEL_26;
  }

  *(v0 + 176) = 0;
  v40 = [v31 fetchListWithObjectID:v39 error:v0 + 176];

  v41 = *(v0 + 176);
  if (!v40)
  {
    goto LABEL_19;
  }

  v42 = 0;
LABEL_18:
  v43 = *(v0 + 336);
  v44 = MEMORY[0x277D447D8];
  v45 = v41;
  v46 = objc_allocWithZone(v44);
  v47 = v40;
  v48 = [v46 initWithStore_];
  sub_261CBD204(v40, v48, v42, v43);
  sub_261CBD544(v40, v42);
  *(v0 + 160) = 0;
  v50 = [v48 saveSynchronouslyWithError_];
  v51 = *(v0 + 160);
  if (v50)
  {
    sub_261CBD5B4(*(v0 + 336), *(v0 + 328), type metadata accessor for SectionEntityID);
    sub_261CBD558(v40, v42);
    v52 = v51;
    v53 = *(v0 + 376);
    v104 = v9;
    v99 = v42;
    v95 = v48;
    if (v42)
    {
      sub_261B750A0(v47, 0, v53);
    }

    else
    {
      sub_261B73240(v47, v53);
    }

    v107 = *(v0 + 384);
    v108 = *(v0 + 392);
    v111 = *(v0 + 376);
    v100 = *(v0 + 368);
    v115 = *(v0 + 360);
    v97 = *(v0 + 352);
    v98 = *(v0 + 344);
    v106 = *(v0 + 336);
    v85 = *(v0 + 320);
    v112 = *(v0 + 328);
    v86 = *(v0 + 312);
    v126 = *(v0 + 304);
    v88 = *(v0 + 288);
    v87 = *(v0 + 296);
    v89 = *(v0 + 256);
    v90 = *(v0 + 264);
    v119 = *(v0 + 248);
    v113 = *(v0 + 240);
    v114 = *(v0 + 232);
    v101 = *(v0 + 224);
    v105 = *(v0 + 216);
    v103 = *(v0 + 208);
    v117 = *(v0 + 200);
    v102 = *(v0 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
    *v85 = sub_261CFCB24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
    sub_261CBD56C(&qword_280D227A0, type metadata accessor for ListEntity);
    v85[1] = sub_261CFCA64();
    v96 = v86[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2D0, &qword_261D096E8);
    sub_261CFF9B4();
    sub_261CFD874();
    v109 = *MEMORY[0x277CC9110];
    v110 = *(v89 + 104);
    v110(v90);
    sub_261CFD6B4();
    *(v85 + v96) = MEMORY[0x2667199E0](v126, &type metadata for UpdateSectionDisplayNameAppIntent);
    v93 = v86[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8D0, &qword_261D137D0);
    sub_261CFF9B4();
    sub_261CFD874();
    (v110)(v90, v109, v119);
    sub_261CFD6B4();
    *(v85 + v93) = MEMORY[0x2667199F0](v126, &type metadata for UpdateSectionIsCollapsedAppIntent);
    v94 = v86[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFD0, &qword_261D0D0D8);
    sub_261CFF9B4();
    sub_261CFD874();
    (v110)(v90, v109, v119);
    sub_261CFD6C4();
    *(v85 + v94) = sub_261CFCA54();
    v91 = v86[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
    sub_261CFF9B4();
    sub_261CFD874();
    (v110)(v90, v109, v119);
    sub_261CFD6C4();
    sub_261CBD56C(&qword_280D22358, type metadata accessor for ReminderEntity);
    *(v85 + v91) = sub_261CFCA54();
    sub_261CBD5B4(v112, v85 + v86[6], type metadata accessor for SectionEntityID);
    sub_261CBD5B4(v111, v113, type metadata accessor for ListEntity);
    (*(v97 + 56))(v113, 0, 1, v98);
    sub_261B425D4(v113, v114);
    sub_261CFCA14();
    sub_261AE6A40(v113, &unk_27FEDE0C0, &unk_261D02500);
    *(v0 + 104) = v127;
    *(v0 + 112) = v104;
    sub_261CFD104();
    sub_261CFD2E4();
    *(v0 + 440) = 0;
    sub_261CFD2E4();
    *(v0 + 120) = v127;
    *(v0 + 128) = v104;
    sub_261CFCA14();
    sub_261CBD5B4(v111, v100, type metadata accessor for ListEntity);
    sub_261CBD5B4(v100, v115, type metadata accessor for ListEntity);
    sub_261CFCA14();
    sub_261CBD61C(v100, type metadata accessor for ListEntity);
    sub_261CBD61C(v111, type metadata accessor for ListEntity);
    sub_261CBD61C(v112, type metadata accessor for SectionEntityID);
    sub_261BBEA50(2u, v117);
    sub_261CFC9E4();
    sub_261CBD56C(&qword_280D224D0, type metadata accessor for SectionEntity);
    sub_261CBD56C(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
    sub_261CFC974();

    sub_261CBD544(v40, v99);
    (*(v105 + 8))(v101, v103);
    sub_261CBD61C(v106, type metadata accessor for SectionEntityID);
    sub_261CBD61C(v85, type metadata accessor for SectionEntity);
    sub_261CBD61C(v107, type metadata accessor for ListEntity);

    v76 = *(v0 + 8);
    v92 = *MEMORY[0x277D85DE8];
    goto LABEL_27;
  }

  v54 = v51;

  v55 = sub_261CFD654();

  swift_willThrow();
  v56 = v55;
  v57 = sub_261CFF784();
  v58 = sub_261CFFE64();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    *&v131[0] = v128;
    *v59 = 136315138;
    swift_getErrorValue();
    v61 = *(v0 + 16);
    v60 = *(v0 + 24);
    v62 = *(v0 + 32);
    v63 = sub_261D00674();
    v65 = sub_261B879C8(v63, v64, v131);

    *(v59 + 4) = v65;
    _os_log_impl(&dword_261AE2000, v57, v58, "[CreateSectionIntentPerforming] Create section failed with save error: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v128);
    MEMORY[0x26671D560](v128, -1, -1);
    MEMORY[0x26671D560](v59, -1, -1);
  }

  v66 = *(v0 + 336);
  sub_261B01D70();
  swift_allocError();
  *v67 = 19;
  swift_willThrow();

  sub_261CBD544(v40, v42);
  sub_261CBD61C(v66, type metadata accessor for SectionEntityID);
LABEL_26:
  v68 = *(v0 + 392);
  v70 = *(v0 + 368);
  v69 = *(v0 + 376);
  v71 = *(v0 + 360);
  v73 = *(v0 + 328);
  v72 = *(v0 + 336);
  v74 = *(v0 + 320);
  v75 = *(v0 + 304);
  v116 = *(v0 + 296);
  v118 = *(v0 + 288);
  v120 = *(v0 + 264);
  v121 = *(v0 + 240);
  v123 = *(v0 + 232);
  v125 = *(v0 + 224);
  v129 = *(v0 + 200);
  sub_261CBD61C(*(v0 + 384), type metadata accessor for ListEntity);

  v76 = *(v0 + 8);
  v77 = *MEMORY[0x277D85DE8];
LABEL_27:

  return v76();
}

uint64_t sub_261CBCFE8()
{
  v1 = type metadata accessor for AppEntityID();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ListEntity();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 8);
  v9 = *(v0 + 16);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_261D00334();
  MEMORY[0x26671C210](0xD000000000000013, 0x8000000261D17970);
  sub_261CFCBB4();
  if (v15[1])
  {
    v11 = sub_261CFFAB4();
    v13 = v12;
  }

  else
  {
    v13 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x26671C210](v11, v13);

  MEMORY[0x26671C210](0x203A7473696C202CLL, 0xE800000000000000);
  sub_261CFCBB4();
  sub_261CBD5B4(&v8[*(v5 + 20)], v4, type metadata accessor for AppEntityID);
  sub_261CBD61C(v8, type metadata accessor for ListEntity);
  sub_261D00404();
  sub_261CBD61C(v4, type metadata accessor for AppEntityID);
  MEMORY[0x26671C210](8200233, 0xE300000000000000);
  return v16;
}

void sub_261CBD204(id a1@<X2>, id a2@<X4>, char a3@<W3>, uint64_t *a4@<X8>)
{
  if (a3)
  {
    v6 = [a2 updateSmartList_];
    v7 = [v6 sectionsContextChangeItem];
    if (v7)
    {
      v8 = v7;
      v9 = &selRef_addSmartListSectionWithDisplayName_toSmartListSectionContextChangeItem_;
LABEL_8:
      v13 = sub_261CFFA54();
      v14 = [a2 *v9];

      v15 = [v14 objectID];
      v16 = [v15 entityName];
      v17 = sub_261CFFA74();
      v19 = v18;

      v20 = [v15 uuid];
      v21 = type metadata accessor for AppEntityID();
      v22 = a4 + *(v21 + 20);
      sub_261CFD834();

      v23 = *(v21 + 24);
      v24 = type metadata accessor for RecurrentInstanceSpecifier(0);
      (*(*(v24 - 8) + 56))(a4 + v23, 1, 1, v24);
      *a4 = v17;
      a4[1] = v19;
      type metadata accessor for SectionEntityID();
      swift_storeEnumTagMultiPayload();
      return;
    }
  }

  else
  {
    if ([a1 isGroup])
    {
      sub_261B01D70();
      swift_allocError();
      *v11 = 28;
      swift_willThrow();
      return;
    }

    v6 = [a2 updateList_];
    v12 = [v6 sectionsContextChangeItem];
    if (v12)
    {
      v8 = v12;
      v9 = &selRef_addListSectionWithDisplayName_toListSectionContextChangeItem_;
      goto LABEL_8;
    }
  }

  sub_261B01D70();
  swift_allocError();
  *v25 = 28;
  swift_willThrow();
}

uint64_t sub_261CBD498(uint64_t a1, _OWORD *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

void sub_261CBD544(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

id sub_261CBD558(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t sub_261CBD56C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261CBD5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261CBD61C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SectionEntityID.entityIdentifierString.getter()
{
  v1 = type metadata accessor for AppEntityID();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SectionEntityID();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261B3C0DC(v0, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_261CBE768(v8, v4, type metadata accessor for AppEntityID);
  if (EnumCaseMultiPayload == 1)
  {
    v13[0] = AppEntityID.entityIdentifierString.getter();
    v13[1] = v10;
    MEMORY[0x26671C210](47, 0xE100000000000000);
    MEMORY[0x26671C210](0xD000000000000013, 0x8000000261D230E0);
    v11 = v13[0];
  }

  else
  {
    v11 = AppEntityID.entityIdentifierString.getter();
  }

  sub_261CBF218(v4, type metadata accessor for AppEntityID);
  return v11;
}

uint64_t type metadata accessor for SectionEntityID()
{
  result = qword_280D22200;
  if (!qword_280D22200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SectionEntityID.hash(into:)()
{
  v41 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v1 = *(v41 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v41);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v39 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AppEntityID();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = (&v38 - v18);
  v20 = type metadata accessor for SectionEntityID();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261B3C0DC(v0, v23);
  v24 = (v1 + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_261CBE768(v23, v17, type metadata accessor for AppEntityID);
    MEMORY[0x26671CDA0](1);
    v25 = *v17;
    v26 = v17[1];
    sub_261CFFB14();
    v27 = *(v13 + 20);
    sub_261CFD844();
    sub_261CBE8B4(&qword_27FEDBEE8, MEMORY[0x277CC95F0]);
    sub_261CFF944();
    sub_261AE7A78(v17 + *(v13 + 24), v10);
    v28 = v41;
    if ((*v24)(v10, 1, v41) == 1)
    {
      sub_261D006E4();
    }

    else
    {
      v33 = v40;
      sub_261CBE768(v10, v40, type metadata accessor for RecurrentInstanceSpecifier);
      sub_261D006E4();
      sub_261CFD4E4();
      sub_261CBE8B4(&qword_27FEDA170, MEMORY[0x277CC8990]);
      sub_261CFF944();
      v34 = *(v33 + *(v28 + 20));
      sub_261D006E4();
      sub_261CBF218(v33, type metadata accessor for RecurrentInstanceSpecifier);
    }

    v19 = v17;
  }

  else
  {
    sub_261CBE768(v23, v19, type metadata accessor for AppEntityID);
    MEMORY[0x26671CDA0](0);
    v29 = *v19;
    v30 = v19[1];
    sub_261CFFB14();
    v31 = *(v13 + 20);
    sub_261CFD844();
    sub_261CBE8B4(&qword_27FEDBEE8, MEMORY[0x277CC95F0]);
    sub_261CFF944();
    sub_261AE7A78(v19 + *(v13 + 24), v12);
    v32 = v41;
    if ((*v24)(v12, 1, v41) == 1)
    {
      sub_261D006E4();
    }

    else
    {
      v35 = v39;
      sub_261CBE768(v12, v39, type metadata accessor for RecurrentInstanceSpecifier);
      sub_261D006E4();
      sub_261CFD4E4();
      sub_261CBE8B4(&qword_27FEDA170, MEMORY[0x277CC8990]);
      sub_261CFF944();
      v36 = *(v35 + *(v32 + 20));
      sub_261D006E4();
      sub_261CBF218(v35, type metadata accessor for RecurrentInstanceSpecifier);
    }
  }

  return sub_261CBF218(v19, type metadata accessor for AppEntityID);
}

uint64_t SectionEntityID.hashValue.getter()
{
  sub_261D006C4();
  SectionEntityID.hash(into:)();
  return sub_261D006F4();
}

uint64_t sub_261CBDDE8()
{
  sub_261D006C4();
  SectionEntityID.hash(into:)();
  return sub_261D006F4();
}

uint64_t sub_261CBDE2C()
{
  sub_261D006C4();
  SectionEntityID.hash(into:)();
  return sub_261D006F4();
}

uint64_t SectionEntityID.description.getter()
{
  v1 = type metadata accessor for SectionEntityID();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppEntityID();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261B3C0DC(v0, v4);
  sub_261CBE768(v4, v8, type metadata accessor for AppEntityID);
  v9 = AppEntityID.entityIdentifierString.getter();
  sub_261CBF218(v8, type metadata accessor for AppEntityID);
  return v9;
}

uint64_t sub_261CBDF7C(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppEntityID();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261B3C0DC(v1, v4);
  sub_261CBE768(v4, v8, type metadata accessor for AppEntityID);
  v9 = AppEntityID.entityIdentifierString.getter();
  sub_261CBF218(v8, type metadata accessor for AppEntityID);
  return v9;
}

uint64_t static SectionEntityID.entityIdentifier(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA00, &qword_261D035A8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v39 - v10);
  v12 = type metadata accessor for AppEntityID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v20 = sub_261CFFBC4();
  sub_261CFD104();
  if ((v20 & 1) == 0)
  {
    AppEntityID.init(entityIdentifierString:)(a1, a2, v9);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_261AE6A40(v9, &qword_27FEDAA00, &qword_261D035A8);
      goto LABEL_12;
    }

    sub_261CBE768(v9, v17, type metadata accessor for AppEntityID);
    v34 = *v17;
    v35 = v17[1];
    if ((sub_261CFFBC4() & 1) == 0)
    {
      sub_261CBF218(v17, type metadata accessor for AppEntityID);
      goto LABEL_12;
    }

    v36 = v40;
    sub_261CBE768(v17, v40, type metadata accessor for AppEntityID);
    v37 = type metadata accessor for SectionEntityID();
LABEL_10:
    swift_storeEnumTagMultiPayload();
    return (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  }

  v21 = sub_261CFFB24();
  v22 = __OFADD__(v21, 1);
  result = v21 + 1;
  if (v22)
  {
    __break(1u);
    return result;
  }

  v24 = sub_261CBE7D0(result);
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = MEMORY[0x26671C1B0](v24, v26, v28, v30);
  v33 = v32;

  AppEntityID.init(entityIdentifierString:)(v31, v33, v11);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    sub_261CBE768(v11, v19, type metadata accessor for AppEntityID);
    v36 = v40;
    sub_261CBE768(v19, v40, type metadata accessor for AppEntityID);
    v37 = type metadata accessor for SectionEntityID();
    goto LABEL_10;
  }

  sub_261AE6A40(v11, &qword_27FEDAA00, &qword_261D035A8);
LABEL_12:
  v38 = type metadata accessor for SectionEntityID();
  return (*(*(v38 - 8) + 56))(v40, 1, 1, v38);
}

BOOL _s19RemindersAppIntents15SectionEntityIDO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEntityID();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v27 - v9);
  v11 = type metadata accessor for SectionEntityID();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = (&v27 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE218, &unk_261D11320);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v27 - v21;
  v23 = *(v20 + 56);
  sub_261B3C0DC(a1, &v27 - v21);
  sub_261B3C0DC(a2, &v22[v23]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_261B3C0DC(v22, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_261CBE768(&v22[v23], v10, type metadata accessor for AppEntityID);
      v24 = _s19RemindersAppIntents0B8EntityIDV2eeoiySbAC_ACtFZ_0(v17, v10);
      sub_261CBF218(v10, type metadata accessor for AppEntityID);
      v25 = v17;
      goto LABEL_6;
    }

LABEL_8:
    sub_261CBF218(v17, type metadata accessor for AppEntityID);
    sub_261AE6A40(v22, &qword_27FEDE218, &unk_261D11320);
    return 0;
  }

  sub_261B3C0DC(v22, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v17 = v15;
    goto LABEL_8;
  }

  sub_261CBE768(&v22[v23], v8, type metadata accessor for AppEntityID);
  v24 = _s19RemindersAppIntents0B8EntityIDV2eeoiySbAC_ACtFZ_0(v15, v8);
  sub_261CBF218(v8, type metadata accessor for AppEntityID);
  v25 = v15;
LABEL_6:
  sub_261CBF218(v25, type metadata accessor for AppEntityID);
  sub_261CBF218(v22, type metadata accessor for SectionEntityID);
  return v24;
}

uint64_t sub_261CBE768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261CBE7D0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_261CFFB34();

    return sub_261CFFBF4();
  }

  return result;
}

uint64_t sub_261CBE8B4(unint64_t *a1, void (*a2)(uint64_t))
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

char *initializeBufferWithCopyOfBuffer for SectionEntityID(char *a1, char *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = type metadata accessor for AppEntityID();
    v9 = *(v8 + 20);
    v10 = sub_261CFD844();
    v11 = *(*(v10 - 8) + 16);
    sub_261CFD104();
    v11(&a1[v9], &a2[v9], v10);
    v12 = *(v8 + 24);
    v13 = &a1[v12];
    v14 = &a2[v12];
    v15 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v16 = *(v15 - 8);
    v17 = (*(v16 + 48))(v14, 1, v15);
    if (EnumCaseMultiPayload == 1)
    {
      if (v17)
      {
        goto LABEL_7;
      }
    }

    else if (v17)
    {
LABEL_7:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v13, v14, *(*(v19 - 8) + 64));
LABEL_9:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v20 = sub_261CFD4E4();
    (*(*(v20 - 8) + 16))(v13, v14, v20);
    v13[*(v15 + 20)] = v14[*(v15 + 20)];
    (*(v16 + 56))(v13, 0, 1, v15);
    goto LABEL_9;
  }

  v18 = *a2;
  *a1 = *a2;
  a1 = (v18 + ((v4 + 16) & ~v4));
  sub_261CFCDA4();
  return a1;
}

uint64_t destroy for SectionEntityID(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = type metadata accessor for AppEntityID();
  v4 = *(v3 + 20);
  v5 = sub_261CFD844();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for RecurrentInstanceSpecifier(0);
  result = (*(*(v7 - 8) + 48))(a1 + v6, 1, v7);
  if (!result)
  {
    v9 = sub_261CFD4E4();
    v10 = *(*(v9 - 8) + 8);

    return v10(a1 + v6, v9);
  }

  return result;
}

char *initializeWithCopy for SectionEntityID(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = type metadata accessor for AppEntityID();
  v7 = *(v6 + 20);
  v8 = sub_261CFD844();
  v9 = *(*(v8 - 8) + 16);
  sub_261CFD104();
  v9(&a1[v7], &a2[v7], v8);
  v10 = *(v6 + 24);
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  if (EnumCaseMultiPayload == 1)
  {
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_6:
    v17 = sub_261CFD4E4();
    (*(*(v17 - 8) + 16))(v11, v12, v17);
    v11[*(v13 + 20)] = v12[*(v13 + 20)];
    (*(v14 + 56))(v11, 0, 1, v13);
    goto LABEL_7;
  }

  if (!v15)
  {
    goto LABEL_6;
  }

LABEL_5:
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  memcpy(v11, v12, *(*(v16 - 8) + 64));
LABEL_7:
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for SectionEntityID(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_261CBF218(a1, type metadata accessor for SectionEntityID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v5 = type metadata accessor for AppEntityID();
    v6 = *(v5 + 20);
    v7 = sub_261CFD844();
    v8 = *(*(v7 - 8) + 16);
    sub_261CFD104();
    v8(&a1[v6], &a2[v6], v7);
    v9 = *(v5 + 24);
    v10 = &a1[v9];
    v11 = &a2[v9];
    v12 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v11, 1, v12);
    if (EnumCaseMultiPayload == 1)
    {
      if (v14)
      {
        goto LABEL_6;
      }
    }

    else if (v14)
    {
LABEL_6:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v10, v11, *(*(v15 - 8) + 64));
LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v16 = sub_261CFD4E4();
    (*(*(v16 - 8) + 16))(v10, v11, v16);
    v10[*(v12 + 20)] = v11[*(v12 + 20)];
    (*(v13 + 56))(v10, 0, 1, v12);
    goto LABEL_8;
  }

  return a1;
}

uint64_t sub_261CBF218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for SectionEntityID(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *a1 = *a2;
  v5 = type metadata accessor for AppEntityID();
  v6 = *(v5 + 20);
  v7 = sub_261CFD844();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = *(v5 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  if (EnumCaseMultiPayload == 1)
  {
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_6:
    v15 = sub_261CFD4E4();
    (*(*(v15 - 8) + 32))(v9, v10, v15);
    v9[*(v11 + 20)] = v10[*(v11 + 20)];
    (*(v12 + 56))(v9, 0, 1, v11);
    goto LABEL_7;
  }

  if (!v13)
  {
    goto LABEL_6;
  }

LABEL_5:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  memcpy(v9, v10, *(*(v14 - 8) + 64));
LABEL_7:
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithTake for SectionEntityID(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_261CBF218(a1, type metadata accessor for SectionEntityID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    v5 = type metadata accessor for AppEntityID();
    v6 = *(v5 + 20);
    v7 = sub_261CFD844();
    (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
    v8 = *(v5 + 24);
    v9 = &a1[v8];
    v10 = &a2[v8];
    v11 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v10, 1, v11);
    if (EnumCaseMultiPayload == 1)
    {
      if (v13)
      {
        goto LABEL_6;
      }
    }

    else if (v13)
    {
LABEL_6:
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v9, v10, *(*(v14 - 8) + 64));
LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v15 = sub_261CFD4E4();
    (*(*(v15 - 8) + 32))(v9, v10, v15);
    v9[*(v11 + 20)] = v10[*(v11 + 20)];
    (*(v12 + 56))(v9, 0, 1, v11);
    goto LABEL_8;
  }

  return a1;
}

uint64_t sub_261CBF77C()
{
  result = type metadata accessor for AppEntityID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_261CBF804(uint64_t a1, uint64_t a2)
{
  v3 = sub_261CFDD34();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_261CC111C(&qword_27FEDE240), v9 = sub_261CFF934(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_261CC111C(&qword_27FEDE248);
      v17 = sub_261CFF974();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_261CBF9F4()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE220);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE220);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261CBFAE0(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_261CFE5A4();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v7 = sub_261CFE504();
  *(v3 + 56) = v7;
  v8 = *(v7 - 8);
  *(v3 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  sub_261CFFD24();
  *(v3 + 96) = sub_261CFFD14();
  v11 = sub_261CFFCF4();
  *(v3 + 104) = v11;
  *(v3 + 112) = v10;

  return MEMORY[0x2822009F8](sub_261CBFC4C, v11, v10);
}

uint64_t sub_261CBFC4C()
{
  if (qword_27FED9D20 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDE220);
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 136);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_261AE2000, v2, v3, "ReminderEditingUI: commit editing {allowingUserConfirmation: %{BOOL}d}", v5, 8u);
    MEMORY[0x26671D560](v5, -1, -1);
  }

  v6 = *(v0 + 24);

  v7 = *(v6 + 40);
  *(v0 + 120) = v7;
  if (v7)
  {
    v8 = *(*(v0 + 24) + 48);
    v9 = MEMORY[0x277D45E08];
    if (*(v0 + 136))
    {
      v9 = MEMORY[0x277D45E10];
    }

    (*(*(v0 + 40) + 104))(*(v0 + 48), *v9, *(v0 + 32));
    ObjectType = swift_getObjectType();
    v11 = *(MEMORY[0x277D45E28] + 4);
    swift_unknownObjectRetain();
    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    *v12 = v0;
    v12[1] = sub_261C74548;
    v13 = *(v0 + 88);
    v14 = *(v0 + 48);

    return MEMORY[0x2821A8630](v13, v14, ObjectType, v8);
  }

  else
  {
    v15 = *(v0 + 96);

    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 72);
    v19 = *(v0 + 48);
    **(v0 + 16) = 1;

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_261CBFE90(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_261CFE5A4();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v7 = sub_261CFE504();
  *(v3 + 56) = v7;
  v8 = *(v7 - 8);
  *(v3 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  sub_261CFFD24();
  *(v3 + 96) = sub_261CFFD14();
  v11 = sub_261CFFCF4();
  *(v3 + 104) = v11;
  *(v3 + 112) = v10;

  return MEMORY[0x2822009F8](sub_261CBFFFC, v11, v10);
}

uint64_t sub_261CBFFFC()
{
  if (qword_27FED9D20 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDE220);
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 136);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_261AE2000, v2, v3, "ReminderEditingUI: cancel editing {allowingUserConfirmation: %{BOOL}d}", v5, 8u);
    MEMORY[0x26671D560](v5, -1, -1);
  }

  v6 = *(v0 + 24);

  v7 = *(v6 + 40);
  *(v0 + 120) = v7;
  if (v7)
  {
    v8 = *(*(v0 + 24) + 48);
    v9 = MEMORY[0x277D45E08];
    if (*(v0 + 136))
    {
      v9 = MEMORY[0x277D45E10];
    }

    (*(*(v0 + 40) + 104))(*(v0 + 48), *v9, *(v0 + 32));
    ObjectType = swift_getObjectType();
    v11 = *(MEMORY[0x277D45E20] + 4);
    swift_unknownObjectRetain();
    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    *v12 = v0;
    v12[1] = sub_261C74A7C;
    v13 = *(v0 + 88);
    v14 = *(v0 + 48);

    return MEMORY[0x2821A8628](v13, v14, ObjectType, v8);
  }

  else
  {
    v15 = *(v0 + 96);

    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 72);
    v19 = *(v0 + 48);
    **(v0 + 16) = 1;

    v20 = *(v0 + 8);

    return v20();
  }
}

void (*sub_261CC0240(uint64_t *a1))(uint64_t a1, char a2)
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
  return sub_261C74EF0;
}

uint64_t sub_261CC02D4()
{
  if (!*(v0 + 40))
  {
    return 0;
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = sub_261CFE634();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_261CC0388(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*(v3 + 40))
  {
    return 0;
  }

  v5 = *(v3 + 48);
  v6 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(a3) = a3(ObjectType, v5);
  swift_unknownObjectRelease();
  return a3 & 1;
}

uint64_t sub_261CC0404()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 48);
    v2 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    swift_unknownObjectRetain();
    sub_261CFE5F4();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261CC04B4(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF4BDC;

  return sub_261CBFAE0(a1, a2);
}

uint64_t sub_261CC055C(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return sub_261CBFE90(a1, a2);
}

uint64_t sub_261CC0604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE238, &qword_261D113F8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - v9;
  v11 = sub_261CFED34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v33 = a2;
  if (sub_261CFE644())
  {
    sub_261CFF674();
    v16 = *MEMORY[0x277D45920];
    v17 = sub_261CFF644();
    (*(*(v17 - 8) + 104))(v15, v16, v17);
    (*(v12 + 104))(v15, *MEMORY[0x277D44EA8], v11);
    MEMORY[0x26671BD30](v15);
    (*(v12 + 8))(v15, v11);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = *(v3 + 24);
    sub_261CC0CA8(a3, v10);
    v20 = sub_261CFE704();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v10, 1, v20) == 1)
    {
      sub_261AE6A40(v10, &qword_27FEDE238, &qword_261D113F8);
    }

    else
    {
      v22 = sub_261CFE6F4();
      (*(v21 + 8))(v10, v20);
      if (v22)
      {
        v23 = sub_261CFE5E4();
        sub_261BE05D8(v22, v23, *(v4 + 32));

        _s24AuthorizationStatusStoreCMa();
        inited = swift_initStaticObject();
        v25 = v22;
        v26 = sub_261CFE654();
        sub_261CC0D18(v25, v26, inited);

        ObjectType = swift_getObjectType();
        (*(v19 + 24))(v4, &off_287447638, v25, ObjectType, v19);

        return swift_unknownObjectRelease();
      }
    }

    if (qword_27FED9D20 != -1)
    {
      swift_once();
    }

    v28 = sub_261CFF7A4();
    __swift_project_value_buffer(v28, qword_27FEDE220);
    v29 = sub_261CFF784();
    v30 = sub_261CFFE64();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_261AE2000, v29, v30, "ReminderEditingUI: unexpectedly got optimisticReminder=nil from reminderDetailDidCommit", v31, 2u);
      MEMORY[0x26671D560](v31, -1, -1);
    }

    qword_27FED9E08 = 0;
    v32 = swift_getObjectType();
    (*(v19 + 16))(v4, &off_287447638, v32, v19);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261CC0A60()
{
  v0 = sub_261CFED34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFF674();
  v5 = *MEMORY[0x277D45910];
  v6 = sub_261CFF644();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  (*(v1 + 104))(v4, *MEMORY[0x277D44EA8], v0);
  MEMORY[0x26671BD30](v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_261CC0BA4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, &off_287447638, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261CC0C3C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_261CFE314();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_261CC0CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE238, &qword_261D113F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_261CC0D18(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDAB0, &qword_261D0F650);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - v8;
  v10 = sub_261CFDD34();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[1] = a1;
  v15 = *(a2 + 16);
  v41 = a1;
  if (v15)
  {
    v16 = qword_27FED9C08;
    v17 = a1;
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = sub_261CFF7A4();
    __swift_project_value_buffer(v18, qword_27FEDD7E0);
    sub_261CFD104();
    v19 = sub_261CFF784();
    v20 = sub_261CFFE54();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v40 = a3;
      v22 = v21;
      v23 = swift_slowAlloc();
      v39 = v9;
      v24 = v23;
      v42[0] = v23;
      *v22 = 136315138;
      sub_261CC111C(&qword_27FEDE240);
      v25 = sub_261CFFD74();
      v27 = sub_261B879C8(v25, v26, v42);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_261AE2000, v19, v20, "RemindersInCalendar: detected authorization related property changes {flags: %s}", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v28 = v24;
      v9 = v39;
      MEMORY[0x26671D560](v28, -1, -1);
      v29 = v22;
      a3 = v40;
      MEMORY[0x26671D560](v29, -1, -1);
    }
  }

  else
  {
    v30 = a1;
  }

  v31 = v11[13];
  v31(v14, *MEMORY[0x277D45C60], v10);
  v32 = sub_261CBF804(v14, a2);
  v33 = v11[1];
  v33(v14, v10);
  if (v32)
  {
    v34 = [v41 displayDate];
    if (v34)
    {

      *(a3 + 16) |= 1uLL;
    }
  }

  v31(v14, *MEMORY[0x277D45C68], v10);
  v35 = sub_261CBF804(v14, a2);
  v33(v14, v10);
  if (v35)
  {
    sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    sub_261CFE1E4();

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDAB8, &qword_261D0F658);
    v37 = (*(*(v36 - 8) + 48))(v9, 1, v36);
    sub_261AE6A40(v9, &qword_27FEDDAB0, &qword_261D0F650);
    if (v37 != 1)
    {
      *(a3 + 16) |= 2uLL;
    }
  }

  else
  {
  }
}

uint64_t sub_261CC111C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_261CFDD34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261CC1160()
{
  qword_27FED9E08 = 0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, &off_287447638, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_261CC11F4(void *a1)
{
  if (a1)
  {
    v2 = v1[4];
    v12 = a1;
    if ([v2 canUndo])
    {
      v3 = v12;
      v4 = [v3 groupsByEvent];
      if (!v4)
      {
        MEMORY[0x28223BE20](v4);
        sub_261CFFE44();

        return;
      }

      v5 = v1[2];
      v6 = v1[3];
      swift_getObjectType();
      v7 = sub_261CFE534();
      sub_261CFFE34();

      v8 = [v2 undoActionName];
      if (!v8)
      {
        sub_261CFFA74();
        v13 = sub_261CFFA54();

        v8 = v13;
      }

      [v3 setActionName:v8];
    }

    else
    {
      if (qword_27FED9D28 != -1)
      {
        swift_once();
      }

      v9 = sub_261CFF7A4();
      __swift_project_value_buffer(v9, qword_27FEDE250);
      v3 = sub_261CFF784();
      v10 = sub_261CFFE84();
      if (os_log_type_enabled(v3, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_261AE2000, v3, v10, "RemindersInCalendar: no undo actions to register", v11, 2u);
        MEMORY[0x26671D560](v11, -1, -1);
      }
    }
  }
}

uint64_t sub_261CC1438()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE250);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE250);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261CC1500(uint64_t a1)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB240, &qword_261D05720);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v32 - v3;
  v5 = sub_261CFDBE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE268, &qword_261D11438);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - v12;
  v14 = sub_261CFE474();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(MEMORY[0x277D45F18]);
  v20 = sub_261CFFA54();
  v21 = [v19 initWithDebugIdentifier_];

  v22 = sub_261CFDC24();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = v21;
  sub_261CFE464();
  v24 = v33;
  *(v33 + 32) = v23;
  (*(v6 + 104))(v9, *MEMORY[0x277D45C20], v5);
  (*(v15 + 16))(v4, v18, v14);
  (*(v15 + 56))(v4, 0, 1, v14);
  v25 = sub_261CFE5B4();
  v26 = v23;
  v27 = sub_261CFE494();
  v36 = v25;
  v37 = MEMORY[0x277D45E18];
  v35 = v27;
  v28 = objc_allocWithZone(sub_261CFE424());
  v29 = sub_261CFE414();

  (*(v15 + 8))(v18, v14);
  v30 = MEMORY[0x277D45DA8];
  result = v24;
  *(v24 + 16) = v29;
  *(v24 + 24) = v30;
  return result;
}

void sub_261CC1860(void *a1, void *a2)
{
  v4 = a2[3];
  v3 = a2[4];
  v5 = a2[2];
  swift_getObjectType();
  v6 = sub_261CFE534();
  sub_261CFFE34();

  v7 = [v3 undoActionName];
  if (!v7)
  {
    sub_261CFFA74();
    v8 = sub_261CFFA54();

    v7 = v8;
  }

  v9 = v7;
  [a1 setActionName_];
}

uint64_t sub_261CC1924()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id AppEntityID.objectID.getter()
{
  v1 = *(type metadata accessor for AppEntityID() + 20);
  v2 = *v0;
  v3 = v0[1];
  v4 = objc_allocWithZone(MEMORY[0x277D44700]);
  v5 = sub_261CFD814();
  v6 = sub_261CFFA54();
  v7 = [v4 initWithUUID:v5 entityName:v6];

  return v7;
}

uint64_t AppEntityID.init(objectID:recurrentInstanceSpecifier:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [a1 entityName];
  v7 = sub_261CFFA74();
  v9 = v8;

  v10 = [a1 uuid];
  v11 = type metadata accessor for AppEntityID();
  v12 = a3 + *(v11 + 20);
  sub_261CFD834();

  *a3 = v7;
  a3[1] = v9;
  v13 = a3 + *(v11 + 24);

  return sub_261C88050(a2, v13);
}

uint64_t sub_261CC1B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 176) = a6;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = sub_261CFF734();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v10 = sub_261CFF6F4();
  *(v6 + 88) = v10;
  v11 = *(v10 - 8);
  *(v6 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261CC1C94, 0, 0);
}

uint64_t sub_261CC1C94()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = sub_261CFF724();
  *(v0 + 128) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 56);
  if (*(v0 + 176))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 120);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 120);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 40);
  (*(v12 + 16))(*(v0 + 112), v10, v11);
  v14 = sub_261CFF764();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 136) = sub_261CFF754();
  v17 = *(v12 + 8);
  *(v0 + 144) = v17;
  *(v0 + 152) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v10, v11);
  v22 = (v13 + *v13);
  v18 = v13[1];
  v19 = swift_task_alloc();
  *(v0 + 160) = v19;
  *v19 = v0;
  v19[1] = sub_261CC1F2C;
  v20 = *(v0 + 48);
  v21 = *(v0 + 32);

  return v22(v21);
}

uint64_t sub_261CC1F2C()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_261CC2244;
  }

  else
  {
    v3 = sub_261CC2040;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261CC2040()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 56);
    if ((*(v0 + 176) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 136);
        v10 = *(v0 + 72);
        v9 = *(v0 + 80);
        v11 = *(v0 + 64);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
          v12 = "";
        }

        v13 = *(v0 + 104);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v17 = *(v0 + 144);
  v16 = *(v0 + 152);
  v18 = *(v0 + 136);
  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  v21 = *(v0 + 104);
  v23 = *(v0 + 80);
  v22 = *(v0 + 88);

  v17(v21, v22);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_261CC2244()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[10];

  v6 = v0[1];
  v7 = v0[21];

  return v6();
}

uint64_t sub_261CC22DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 176) = a5;
  *(v5 + 48) = a2;
  *(v5 + 56) = a3;
  *(v5 + 40) = a1;
  v6 = sub_261CFF734();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v9 = sub_261CFF6F4();
  *(v5 + 88) = v9;
  v10 = *(v9 - 8);
  *(v5 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261CC2418, 0, 0);
}

uint64_t sub_261CC2418()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = sub_261CFF724();
  *(v0 + 128) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 56);
  if (*(v0 + 176))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 32);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 120);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 120);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 40);
  (*(v12 + 16))(*(v0 + 112), v10, v11);
  v14 = sub_261CFF764();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 136) = sub_261CFF754();
  v17 = *(v12 + 8);
  *(v0 + 144) = v17;
  *(v0 + 152) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v10, v11);
  v21 = (v13 + *v13);
  v18 = v13[1];
  v19 = swift_task_alloc();
  *(v0 + 160) = v19;
  *v19 = v0;
  v19[1] = sub_261CC26B0;
  v20 = *(v0 + 48);

  return v21(v0 + 16);
}

uint64_t sub_261CC26B0()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_261CC2244;
  }

  else
  {
    v3 = sub_261CC27C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261CC27C4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 56);
    if ((*(v0 + 176) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 136);
        v10 = *(v0 + 72);
        v9 = *(v0 + 80);
        v11 = *(v0 + 64);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
          v12 = "";
        }

        v13 = *(v0 + 104);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v17 = *(v0 + 144);
  v16 = *(v0 + 152);
  v18 = *(v0 + 136);
  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  v21 = *(v0 + 104);
  v23 = *(v0 + 80);
  v22 = *(v0 + 88);

  v17(v21, v22);
  v24 = *(v0 + 16);

  v25 = *(v0 + 8);

  return v25(v24);
}

uint64_t sub_261CC29F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_261B425D4(a1, &v18 - v9);
  v11 = *(a2 + 176);
  v20[10] = *(a2 + 160);
  v20[11] = v11;
  v20[12] = *(a2 + 192);
  v21 = *(a2 + 208);
  v12 = *(a2 + 112);
  v20[6] = *(a2 + 96);
  v20[7] = v12;
  v13 = *(a2 + 144);
  v20[8] = *(a2 + 128);
  v20[9] = v13;
  v14 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v14;
  v15 = *(a2 + 80);
  v20[4] = *(a2 + 64);
  v20[5] = v15;
  v16 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v16;
  sub_261B425D4(v10, v8);
  sub_261B49630(v20, &v19);
  sub_261CFCBC4();
  sub_261B59E9C(v10);
  return sub_261B4968C(v20);
}

uint64_t ReminderEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD10, &qword_261D083B0);
  swift_getKeyPath();
  *a1 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDE90, &qword_261D11470);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  a1[1] = result;
  return result;
}

uint64_t sub_261CC2C0C()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_261CFCDA4();
  sub_261CFCDA4();
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_261BCEF88;
  v4 = v0[2];
  v5 = v0[3];

  return sub_261C60A58("ReminderEntityQuery.suggestedHashtagLabels", 42, 2, v4, v5);
}

uint64_t ReminderEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261CC2D04, 0, 0);
}

uint64_t sub_261CC2D04()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_261BAEC14;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_261C611D0("ReminderEntityQuery.entitiesForIdentifiers", 42, 2, v5, v6, v7);
}

uint64_t sub_261CC2DE8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD10, &qword_261D083B0);
  swift_getKeyPath();
  *a1 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDE90, &qword_261D11470);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  a1[1] = result;
  return result;
}

uint64_t sub_261CC2EA0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261CC2EC8, 0, 0);
}

uint64_t sub_261CC2EC8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_261BADD64;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_261C611D0("ReminderEntityQuery.entitiesForIdentifiers", 42, 2, v5, v6, v7);
}

uint64_t sub_261CC2FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CB9C98] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_261AF43A8;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t sub_261CC3060(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_261CC3CFC();
  *v6 = v2;
  v6[1] = sub_261AF4BDC;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t ReminderEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = *v2;

  return MEMORY[0x2822009F8](sub_261CC31B8, 0, 0);
}

uint64_t sub_261CC31B8()
{
  v1 = v0[5];
  if (sub_261CFD1F4())
  {
    v2 = v0[4];
    swift_getKeyPath();
    sub_261C0F51C();
    sub_261CFCD54();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = type metadata accessor for ListEntity();
  v11 = *(v0 + 5);
  (*(*(v7 - 8) + 56))(v4, v3, 1, v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *(v8 + 16) = v11;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v4;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_261CC3354;

  return sub_261CC22DC(&unk_261D114A0, v8, "ReminderEntityQuery.entitiesMatchingString", 42, 2);
}

uint64_t sub_261CC3354(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_261CC34F8;
  }

  else
  {
    v8 = *(v4 + 56);
    *(v4 + 80) = a1;

    v7 = sub_261CC3484;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261CC3484()
{
  sub_261B59E9C(v0[4]);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_261CC34F8()
{
  v1 = v0[7];
  v2 = v0[4];

  sub_261B59E9C(v2);

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_261CC3570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  return MEMORY[0x2822009F8](sub_261CC3598, 0, 0);
}

uint64_t sub_261CC3598()
{
  v2 = v0[10];
  v1 = v0[11];
  sub_261CFC664();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v2;
  v0[8] = v1;
  v5 = *(v4 + 16);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_261CC36F4;
  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[12];

  return (v12)(v0 + 7, v10, v8, v9, v3, v4);
}

uint64_t sub_261CC36F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_261CC388C;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_261CC381C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261CC381C()
{
  **(v0 + 72) = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261CC388C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[16];

  return v1();
}

uint64_t sub_261CC38F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_261BA64E4;

  return ReminderEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_261CC3998(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_261AF43A8;

  return sub_261CC3570(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_261CC3A64()
{
  result = qword_27FEDE270;
  if (!qword_27FEDE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE270);
  }

  return result;
}

unint64_t sub_261CC3ABC()
{
  result = qword_27FEDE278;
  if (!qword_27FEDE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE278);
  }

  return result;
}

unint64_t sub_261CC3B5C()
{
  result = qword_27FEDE280;
  if (!qword_27FEDE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE280);
  }

  return result;
}

uint64_t sub_261CC3BF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_261CC3C44()
{
  result = qword_27FEDE288;
  if (!qword_27FEDE288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEDE0D0, qword_261D11550);
    sub_261CC3BF8(&qword_280D22350, type metadata accessor for ReminderEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE288);
  }

  return result;
}

unint64_t sub_261CC3CFC()
{
  result = qword_27FEDE290;
  if (!qword_27FEDE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE290);
  }

  return result;
}

uint64_t dispatch thunk of ReminderEntityReminderQueryPerforming.entities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261B0E3FC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ReminderEntityReminderQueryPerforming.entities(query:matching:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_261B0E3FC;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ReminderEntityReminderQueryPerforming.suggestedHashtagLabels(query:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_261B01F5C;

  return v11(a1, a2, a3);
}

RemindersAppIntents::AppIntentsDependencyKey_optional __swiftcall AppIntentsDependencyKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t AppIntentsDependencyKey.rawValue.getter()
{
  if (*v0)
  {
    result = 0x65726F74536D6572;
  }

  else
  {
    result = 0x6550746E65746E69;
  }

  *v0;
  return result;
}

uint64_t sub_261CC424C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65726F74536D6572;
  }

  else
  {
    v4 = 0x6550746E65746E69;
  }

  if (v3)
  {
    v5 = 0xEF72656D726F6672;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x65726F74536D6572;
  }

  else
  {
    v6 = 0x6550746E65746E69;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xEF72656D726F6672;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_261D00614();
  }

  return v9 & 1;
}

uint64_t sub_261CC4300@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261D00554();

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

void sub_261CC4360(uint64_t *a1@<X8>)
{
  v2 = 0x6550746E65746E69;
  if (*v1)
  {
    v2 = 0x65726F74536D6572;
  }

  v3 = 0xEF72656D726F6672;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261CC43AC()
{
  *v0;
  sub_261CFFB14();
}

uint64_t sub_261CC4428()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

id sub_261CC44C0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_261CC44DC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE2A8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE2A8);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RemindersInCalendarUtilities.DeleteRemindersRequest.reminderIDs.getter()
{
  v3 = *v0;
  sub_261CFD104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDEB8, &qword_261D10990);
  sub_261B57A9C();
  sub_261CA04A0(&unk_27FEDDEC8, &unk_27FEDDEB8, &qword_261D10990);
  sub_261CC49A8(&qword_27FEDA570, sub_261B57A9C);
  v1 = sub_261CFFC24();

  return v1;
}

uint64_t sub_261CC46A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  sub_261CFD104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDEB8, &qword_261D10990);
  sub_261B57A9C();
  sub_261CA04A0(&unk_27FEDDEC8, &unk_27FEDDEB8, &qword_261D10990);
  sub_261CC49A8(&qword_27FEDA570, sub_261B57A9C);
  v3 = sub_261CFFC24();

  *a2 = v3;
  return result;
}

uint64_t sub_261CC47A8(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDED8, &qword_261D10998);
  type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  sub_261CA04A0(&qword_27FEDDEE0, &qword_27FEDDED8, &qword_261D10998);
  sub_261CC49A8(&qword_27FEDDEE8, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
  v3 = sub_261CFFC24();
  v4 = *a2;

  *a2 = v3;
  return result;
}

uint64_t RemindersInCalendarUtilities.DeleteRemindersRequest.reminderIDs.setter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDED8, &qword_261D10998);
  type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  sub_261CA04A0(&qword_27FEDDEE0, &qword_27FEDDED8, &qword_261D10998);
  sub_261CC49A8(&qword_27FEDDEE8, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
  v2 = sub_261CFFC24();

  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_261CC49A8(unint64_t *a1, void (*a2)(uint64_t))
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

void (*RemindersInCalendarUtilities.DeleteRemindersRequest.reminderIDs.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v3[1] = v5;
  sub_261CFD104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDEB8, &qword_261D10990);
  sub_261B57A9C();
  sub_261CA04A0(&unk_27FEDDEC8, &unk_27FEDDEB8, &qword_261D10990);
  sub_261CC49A8(&qword_27FEDA570, sub_261B57A9C);
  v6 = sub_261CFFC24();
  v4[4] = 0;

  *v4 = v6;
  return sub_261CC4B4C;
}

void sub_261CC4B4C(uint64_t **a1, char a2)
{
  v2 = *a1;
  (*a1)[1] = **a1;
  v4 = v2[3];
  v3 = v2[4];
  v5 = v2[2];
  if (a2)
  {
    sub_261CFD104();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDED8, &qword_261D10998);
    type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
    sub_261CA04A0(&qword_27FEDDEE0, &qword_27FEDDED8, &qword_261D10998);
    sub_261CC49A8(&qword_27FEDDEE8, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
    v6 = sub_261CFFC24();

    *v5 = v6;
    v7 = *v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDED8, &qword_261D10998);
    type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
    sub_261CA04A0(&qword_27FEDDEE0, &qword_27FEDDED8, &qword_261D10998);
    sub_261CC49A8(&qword_27FEDDEE8, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
    v8 = sub_261CFFC24();

    *v5 = v8;
  }

  free(v2);
}

uint64_t RemindersInCalendarUtilities.DeleteRemindersRequest.reminderSpecifiers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void *RemindersInCalendarUtilities.DeleteRemindersRequest.undoManager.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t RemindersInCalendarUtilities.DeleteRemindersRequest.init(reminderIDs:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDED8, &qword_261D10998);
  type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  sub_261CA04A0(&qword_27FEDDEE0, &qword_27FEDDED8, &qword_261D10998);
  sub_261CC49A8(&qword_27FEDDEE8, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
  v2 = sub_261CFFC24();

  *a1 = v2;
  a1[1] = 0;
  return result;
}

uint64_t RemindersInCalendarUtilities.DeleteRemindersRequest.init(reminderSpecifiers:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t sub_261CC5018()
{
  v42 = v0;
  if (qword_27FED9D30 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = sub_261CFF7A4();
  __swift_project_value_buffer(v3, qword_27FEDE2A8);
  v4 = v1;
  sub_261CFD104();
  v5 = sub_261CFF784();
  v6 = sub_261CFFE84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v41 = v9;
    *v8 = 136315138;
    type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
    sub_261CC49A8(&qword_27FEDDEE8, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
    sub_261CFD104();
    v10 = sub_261CFFD74();
    v12 = v11;

    v13 = sub_261B879C8(v10, v12, &v41);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_261AE2000, v5, v6, "RemindersInCalendar: delete reminders {specifiers: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671D560](v9, -1, -1);
    MEMORY[0x26671D560](v8, -1, -1);
  }

  v15 = v0[11];
  v14 = v0[12];
  v16 = v0[10];
  sub_261CFF674();
  v17 = *MEMORY[0x277D45930];
  v18 = sub_261CFF644();
  (*(*(v18 - 8) + 104))(v14, v17, v18);
  (*(v15 + 104))(v14, *MEMORY[0x277D44EA8], v16);
  MEMORY[0x26671BD30](v14);
  (*(v15 + 8))(v14, v16);
  v19 = sub_261CFF784();
  v20 = sub_261CFFE54();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_261AE2000, v19, v20, "RemindersInCalendar: fetching reminders for deletion", v21, 2u);
    MEMORY[0x26671D560](v21, -1, -1);
  }

  v22 = v0[13];

  v0[7] = v22;
  sub_261CFD104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDEB8, &qword_261D10990);
  sub_261B57A9C();
  sub_261CA04A0(&unk_27FEDDEC8, &unk_27FEDDEB8, &qword_261D10990);
  sub_261CC49A8(&qword_27FEDA570, sub_261B57A9C);
  v23 = sub_261CFFC24();

  v24 = sub_261BC6FC4(v23);
  v0[18] = v24;
  v25 = v24;
  v26 = v0[13];

  v27 = sub_261B045AC(v25, v26);
  v0[19] = v27;
  if (qword_280D21E90 != -1)
  {
    swift_once();
  }

  v28 = v0[9];
  v29 = qword_280D21E98;
  _s29RemindersListInteractorHelperCMa();
  v0[20] = swift_initStackObject();
  v30 = sub_261CC1500(v29);
  v0[21] = v30;
  v0[22] = *(v30 + 16);
  v31 = *(*(v30 + 24) + 8);
  v32 = sub_261CFDC14();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v0[23] = sub_261CFDC04();
  v35 = sub_261BC53A8();
  v37 = v36;
  v0[24] = v35;
  v38 = *(MEMORY[0x277D45C28] + 4);
  v39 = swift_task_alloc();
  v0[25] = v39;
  *v39 = v0;
  v39[1] = sub_261CC55C4;
  v44 = v37;

  return MEMORY[0x2821A8058](v25, 0, v27, 1, 0, nullsub_1, 0, v35);
}

uint64_t sub_261CC55C4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v15 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v6 = *(v4 + 144);
    v7 = *(v4 + 152);

    v8 = *(v4 + 128);
    v9 = *(v4 + 136);
    v10 = sub_261CC57DC;
  }

  else
  {
    v11 = *(v4 + 192);
    v12 = *(v4 + 144);
    v13 = *(v4 + 152);

    swift_unknownObjectRelease();
    *(v4 + 216) = a1 & 1;
    v8 = *(v4 + 128);
    v9 = *(v4 + 136);
    v10 = sub_261CC5718;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_261CC5718()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 120);

  if (v1 == 1)
  {
    v3 = *(v0 + 168);
    sub_261CC11F4(*(v0 + 112));
  }

  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v8 = *(v0 + 96);
  **(v0 + 64) = v4 ^ 1;
  sub_261CC5878(v4);

  swift_unknownObjectRelease();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_261CC57DC()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[15];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v6 = v0[26];
  v7 = v0[12];

  v8 = v0[1];

  return v8();
}

void sub_261CC5878(char a1)
{
  if (qword_27FED9D30 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDE2A8);
  oslog = sub_261CFF784();
  v3 = sub_261CFFE84();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_261AE2000, oslog, v3, "RemindersInCalendar: delete reminders request finished {deleted: %{BOOL}d)}", v4, 8u);
    MEMORY[0x26671D560](v4, -1, -1);
  }
}

void _s22DeleteRemindersRequestVwxx(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
}

uint64_t *_s22DeleteRemindersRequestVwca(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_261CFD104();

  v5 = a1[1];
  v6 = a2[1];
  a1[1] = v6;
  v7 = v6;

  return a1;
}

uint64_t *_s22DeleteRemindersRequestVwta(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  return a1;
}

uint64_t _s21DeleteRemindersResultOwet(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 255;
  if ((a2 + 255) >= 0xFFFF00)
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

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 8)) - 255;
  }

  if (v4 == 2)
  {
    v4 = *(a1 + 1);
    if (!*(a1 + 1))
    {
      return v4;
    }

    return (*a1 | (v4 << 8)) - 255;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 8)) - 255;
  }

  return v4;
}

uint64_t _s21DeleteRemindersResultOwst(uint64_t result, int a2, int a3)
{
  v3 = a3 + 255;
  if ((a3 + 255) >= 0xFFFF00)
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

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_261CC5BA8()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE2C0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE2C0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SiriUtilities.ListID.hash(into:)()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    v2 = 1;
LABEL_5:
    MEMORY[0x26671CDA0](v2);
    return sub_261D00104();
  }

  MEMORY[0x26671CDA0](2);
  return MEMORY[0x26671CDA0](v1);
}

uint64_t SiriUtilities.ListID.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_261D006C4();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x26671CDA0](2);
      MEMORY[0x26671CDA0](v1);
      return sub_261D006F4();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x26671CDA0](v3);
  sub_261D00104();
  return sub_261D006F4();
}

uint64_t sub_261CC5D8C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_261D006C4();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x26671CDA0](2);
      MEMORY[0x26671CDA0](v1);
      return sub_261D006F4();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x26671CDA0](v3);
  sub_261D00104();
  return sub_261D006F4();
}

uint64_t sub_261CC5E18()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    v2 = 1;
LABEL_5:
    MEMORY[0x26671CDA0](v2);
    return sub_261D00104();
  }

  MEMORY[0x26671CDA0](2);
  return MEMORY[0x26671CDA0](v1);
}

uint64_t sub_261CC5E8C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_261D006C4();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x26671CDA0](2);
      MEMORY[0x26671CDA0](v1);
      return sub_261D006F4();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x26671CDA0](v3);
  sub_261D00104();
  return sub_261D006F4();
}

uint64_t SiriUtilities.Day.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261CFD7E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SiriUtilities.Day.reminders.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriUtilities.Day(0) + 20));

  return sub_261CFD104();
}

uint64_t SiriUtilities.Day.init(date:reminders:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for SiriUtilities.Day(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

void static SiriUtilities.Day.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_261CFD7B4())
  {
    v4 = *(type metadata accessor for SiriUtilities.Day(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);

    sub_261CC60D4(v5, v6);
  }
}

void sub_261CC60D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
    v5 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      v10 = *(i - 1);
      v9 = *i;
      sub_261CFD104();
      v11 = v7;
      sub_261CFD104();
      v12 = v10;
      if ((sub_261D000F4() & 1) == 0)
      {
        break;
      }

      if (v8)
      {
        if (!v9)
        {
          break;
        }

        sub_261CFD104();
        v13 = sub_261CC60D4(v8, v9);

        swift_bridgeObjectRelease_n();
        if ((v13 & 1) == 0)
        {
          return;
        }
      }

      else
      {

        if (v9)
        {
          goto LABEL_15;
        }
      }

      v5 += 2;
      if (!--v2)
      {
        return;
      }
    }

LABEL_15:
  }
}

uint64_t sub_261CC6238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriUtilities.Grouping(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_261CD38A8(v14, v11, type metadata accessor for SiriUtilities.Grouping);
        sub_261CD38A8(v15, v8, type metadata accessor for SiriUtilities.Grouping);
        v17 = _s19RemindersAppIntents13SiriUtilitiesO8GroupingO2eeoiySbAE_AEtFZ_0(v11, v8);
        sub_261CD1888(v8, type metadata accessor for SiriUtilities.Grouping);
        sub_261CD1888(v11, type metadata accessor for SiriUtilities.Grouping);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_261CC63F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriUtilities.Day(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_11:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_261CD38A8(v14, v11, type metadata accessor for SiriUtilities.Day);
      sub_261CD38A8(v15, v8, type metadata accessor for SiriUtilities.Day);
      if ((sub_261CFD7B4() & 1) == 0)
      {
        break;
      }

      sub_261CC60D4(*&v11[*(v4 + 20)], *&v8[*(v4 + 20)]);
      v18 = v17;
      sub_261CD1888(v8, type metadata accessor for SiriUtilities.Day);
      sub_261CD1888(v11, type metadata accessor for SiriUtilities.Day);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_261CD1888(v8, type metadata accessor for SiriUtilities.Day);
    sub_261CD1888(v11, type metadata accessor for SiriUtilities.Day);
    goto LABEL_11;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_261CC65F8(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26671CA10](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x26671CA10](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_261D000F4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_261D000F4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_261D00274();
  }

  result = sub_261D00274();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void sub_261CC6848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_261CFD7B4())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);

    sub_261CC60D4(v7, v8);
  }
}

id SiriUtilities.ListContents.listID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_261CCFD68(v2, v3);
}

uint64_t static SiriUtilities.fetchListContents(store:listID:prefetchRemindersCount:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDBA0, &qword_261D0F9E8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  v16 = *(a2 + 8);
  v20 = *a2;
  v21 = v16;
  v17 = sub_261CFD7E4();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = sub_261CFDA84();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  static SiriUtilities.fetchListContents(store:listID:prefetchRemindersCount:now:calendar:currentUserShareParticipantIDsOverride:)(a1, &v20, a3, v15, v11, 0, a4);
  sub_261AE6A40(v11, &qword_27FEDDBA0, &qword_261D0F9E8);
  return sub_261AE6A40(v15, &qword_27FEDAB68, &unk_261D11C90);
}

uint64_t static SiriUtilities.fetchListContents(store:listID:prefetchRemindersCount:now:calendar:currentUserShareParticipantIDsOverride:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v536 = a6;
  v541 = a5;
  v594 = a4;
  v638 = a3;
  v642 = a2;
  v647 = a1;
  v608 = a7;
  v656 = *MEMORY[0x277D85DE8];
  v599 = sub_261CFF464();
  v623 = *(v599 - 8);
  v7 = *(v623 + 64);
  MEMORY[0x28223BE20](v599);
  v605 = &v492 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v520 = sub_261CFF484();
  v545 = *(v520 - 8);
  v9 = *(v545 + 64);
  v10 = MEMORY[0x28223BE20](v520);
  v497 = &v492 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v517 = &v492 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDBA0, &qword_261D0F9E8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v537 = &v492 - v15;
  v540 = sub_261CFDA84();
  v539 = *(v540 - 8);
  v16 = *(v539 + 64);
  MEMORY[0x28223BE20](v540);
  v538 = &v492 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v543 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE2D8, &qword_261D11880);
  v495 = *(v543 - 8);
  v18 = *(v495 + 64);
  MEMORY[0x28223BE20](v543);
  v557 = &v492 - v19;
  v606 = sub_261CFF164();
  v626 = *(v606 - 8);
  v20 = *(v626 + 64);
  MEMORY[0x28223BE20](v606);
  v612 = &v492 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v525 = sub_261CFF174();
  v551 = *(v525 - 8);
  v22 = *(v551 + 64);
  v23 = MEMORY[0x28223BE20](v525);
  v516 = &v492 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v512 = &v492 - v25;
  v524 = sub_261CFF234();
  v526 = *(v524 - 8);
  v26 = *(v526 + 64);
  v27 = MEMORY[0x28223BE20](v524);
  v515 = &v492 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v508 = &v492 - v29;
  v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE2E0, &qword_261D11888);
  v518 = *(v552 - 8);
  v30 = *(v518 + 64);
  MEMORY[0x28223BE20](v552);
  v555 = &v492 - v31;
  v511 = sub_261CFF564();
  v510 = *(v511 - 8);
  v32 = *(v510 + 64);
  v33 = MEMORY[0x28223BE20](v511);
  v509 = &v492 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v505 = &v492 - v35;
  v522 = sub_261CFF1D4();
  v507 = *(v522 - 8);
  v36 = *(v507 + 64);
  v37 = MEMORY[0x28223BE20](v522);
  v506 = &v492 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v504 = &v492 - v39;
  v548 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE2E8, &qword_261D11890);
  v499 = *(v548 - 8);
  v40 = *(v499 + 64);
  MEMORY[0x28223BE20](v548);
  v569 = &v492 - v41;
  v611 = sub_261CFF3D4();
  v625 = *(v611 - 8);
  v42 = *(v625 + 64);
  MEMORY[0x28223BE20](v611);
  v613 = &v492 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v523 = sub_261CFF404();
  v549 = *(v523 - 8);
  v44 = *(v549 + 64);
  v45 = MEMORY[0x28223BE20](v523);
  v513 = &v492 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v502 = &v492 - v47;
  v550 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD8F8, &qword_261D0F108);
  v514 = *(v550 - 8);
  v48 = *(v514 + 64);
  MEMORY[0x28223BE20](v550);
  v554 = &v492 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE2F0, &qword_261D11898);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v616 = &v492 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v597 = (&v492 - v54);
  v598 = sub_261CFF4D4();
  v622 = *(v598 - 8);
  v55 = *(v622 + 64);
  MEMORY[0x28223BE20](v598);
  v621 = &v492 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v519 = sub_261CFF4F4();
  v544 = *(v519 - 8);
  v57 = *(v544 + 64);
  v58 = MEMORY[0x28223BE20](v519);
  v496 = &v492 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v501 = &v492 - v60;
  v535 = sub_261CFF504();
  v534 = *(v535 - 8);
  v61 = *(v534 + 64);
  MEMORY[0x28223BE20](v535);
  v533 = &v492 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE2F8, &qword_261D118A0);
  v494 = *(v542 - 8);
  v63 = *(v494 + 64);
  MEMORY[0x28223BE20](v542);
  v556 = &v492 - v64;
  v620 = sub_261CFF2A4();
  v493 = *(v620 - 8);
  v65 = *(v493 + 64);
  MEMORY[0x28223BE20](v620);
  v619 = &v492 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v641 = sub_261CFF2D4();
  v624 = *(v641 - 1);
  v67 = *(v624 + 64);
  MEMORY[0x28223BE20](v641);
  v640 = &v492 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v650 = type metadata accessor for SiriUtilities.Grouping(0);
  v646 = *(v650 - 8);
  v69 = *(v646 + 8);
  v70 = MEMORY[0x28223BE20](v650);
  v615 = &v492 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v70);
  v596 = &v492 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v604 = (&v492 - v75);
  v76 = MEMORY[0x28223BE20](v74);
  v628 = &v492 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v603 = (&v492 - v79);
  v80 = MEMORY[0x28223BE20](v78);
  v627 = &v492 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v614 = &v492 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v595 = &v492 - v85;
  MEMORY[0x28223BE20](v84);
  v617 = &v492 - v86;
  v521 = sub_261CFF304();
  v547 = *(v521 - 8);
  v87 = *(v547 + 64);
  v88 = MEMORY[0x28223BE20](v521);
  v503 = &v492 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88);
  v500 = &v492 - v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v92 = *(*(v91 - 8) + 64);
  v93 = MEMORY[0x28223BE20](v91 - 8);
  v529 = &v492 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = MEMORY[0x28223BE20](v93);
  v530 = &v492 - v96;
  MEMORY[0x28223BE20](v95);
  v527 = &v492 - v97;
  v601 = sub_261CFD7E4();
  v600 = *(v601 - 8);
  v98 = *(v600 + 64);
  v99 = MEMORY[0x28223BE20](v601);
  v532 = &v492 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = MEMORY[0x28223BE20](v99);
  v531 = &v492 - v102;
  MEMORY[0x28223BE20](v101);
  v528 = &v492 - v103;
  v546 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE300, &qword_261D118A8);
  v498 = *(v546 - 8);
  v104 = *(v498 + 64);
  MEMORY[0x28223BE20](v546);
  v553 = &v492 - v105;
  v582 = sub_261CFF054();
  v567 = *(v582 - 8);
  v106 = *(v567 + 64);
  v107 = MEMORY[0x28223BE20](v582);
  v566 = &v492 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v107);
  v564 = &v492 - v109;
  v583 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0A0, &qword_261D050D0);
  v568 = *(v583 - 8);
  v110 = *(v568 + 64);
  MEMORY[0x28223BE20](v583);
  v610 = &v492 - v111;
  v602 = sub_261CFF274();
  v585 = *(v602 - 8);
  v112 = *(v585 + 64);
  v113 = MEMORY[0x28223BE20](v602);
  v563 = &v492 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = MEMORY[0x28223BE20](v113);
  v562 = &v492 - v116;
  MEMORY[0x28223BE20](v115);
  v584 = &v492 - v117;
  v561 = sub_261CFF114();
  v560 = *(v561 - 8);
  v118 = *(v560 + 64);
  v119 = MEMORY[0x28223BE20](v561);
  v559 = &v492 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v119);
  v558 = &v492 - v121;
  v581 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0F0, &qword_261D050F8);
  v565 = *(v581 - 8);
  v122 = *(v565 + 64);
  MEMORY[0x28223BE20](v581);
  v609 = &v492 - v123;
  v645 = sub_261CFF334();
  v637 = *(v645 - 8);
  v124 = *(v637 + 64);
  v125 = MEMORY[0x28223BE20](v645);
  v580 = (&v492 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = MEMORY[0x28223BE20](v125);
  v579 = (&v492 - v128);
  v129 = MEMORY[0x28223BE20](v127);
  v578 = (&v492 - v130);
  v131 = MEMORY[0x28223BE20](v129);
  v577 = (&v492 - v132);
  v133 = MEMORY[0x28223BE20](v131);
  v576 = (&v492 - v134);
  v135 = MEMORY[0x28223BE20](v133);
  v575 = (&v492 - v136);
  v137 = MEMORY[0x28223BE20](v135);
  v618 = (&v492 - v138);
  v139 = MEMORY[0x28223BE20](v137);
  v636 = &v492 - v140;
  MEMORY[0x28223BE20](v139);
  v142 = (&v492 - v141);
  v652 = sub_261CFF284();
  v644 = *(v652 - 1);
  v143 = *(v644 + 64);
  v144 = MEMORY[0x28223BE20](v652);
  v593 = &v492 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = MEMORY[0x28223BE20](v144);
  v592 = &v492 - v147;
  v148 = MEMORY[0x28223BE20](v146);
  v591 = &v492 - v149;
  v150 = MEMORY[0x28223BE20](v148);
  v589 = &v492 - v151;
  v152 = MEMORY[0x28223BE20](v150);
  v590 = &v492 - v153;
  v154 = MEMORY[0x28223BE20](v152);
  v588 = &v492 - v155;
  v156 = MEMORY[0x28223BE20](v154);
  v631 = &v492 - v157;
  v158 = MEMORY[0x28223BE20](v156);
  v635 = &v492 - v159;
  MEMORY[0x28223BE20](v158);
  v161 = &v492 - v160;
  v653 = sub_261CFF244();
  v649 = *(v653 - 1);
  v162 = *(v649 + 64);
  v163 = MEMORY[0x28223BE20](v653);
  v574 = &v492 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = MEMORY[0x28223BE20](v163);
  v573 = &v492 - v166;
  v167 = MEMORY[0x28223BE20](v165);
  v572 = &v492 - v168;
  v169 = MEMORY[0x28223BE20](v167);
  v587 = &v492 - v170;
  v171 = MEMORY[0x28223BE20](v169);
  v571 = &v492 - v172;
  v173 = MEMORY[0x28223BE20](v171);
  v570 = &v492 - v174;
  v175 = MEMORY[0x28223BE20](v173);
  v630 = &v492 - v176;
  v177 = MEMORY[0x28223BE20](v175);
  v634 = &v492 - v178;
  MEMORY[0x28223BE20](v177);
  v180 = &v492 - v179;
  v651 = sub_261CFF204();
  v643 = *(v651 - 8);
  v181 = *(v643 + 8);
  v182 = MEMORY[0x28223BE20](v651);
  v586 = &v492 - ((v183 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = MEMORY[0x28223BE20](v182);
  v186 = &v492 - v185;
  v187 = MEMORY[0x28223BE20](v184);
  v189 = &v492 - v188;
  v190 = MEMORY[0x28223BE20](v187);
  v192 = &v492 - v191;
  v193 = MEMORY[0x28223BE20](v190);
  v195 = &v492 - v194;
  v196 = MEMORY[0x28223BE20](v193);
  v198 = &v492 - v197;
  v199 = MEMORY[0x28223BE20](v196);
  v629 = &v492 - v200;
  v201 = MEMORY[0x28223BE20](v199);
  v648 = &v492 - v202;
  MEMORY[0x28223BE20](v201);
  v204 = &v492 - v203;
  v205 = sub_261CFF374();
  v206 = *(*(v205 - 8) + 64);
  v207 = MEMORY[0x28223BE20](v205);
  v208 = MEMORY[0x28223BE20](v207);
  v209 = MEMORY[0x28223BE20](v208);
  v210 = MEMORY[0x28223BE20](v209);
  v211 = MEMORY[0x28223BE20](v210);
  v213 = &v492 - v212;
  v214 = MEMORY[0x28223BE20](v211);
  v215 = MEMORY[0x28223BE20](v214);
  v216 = MEMORY[0x28223BE20](v215);
  v224 = *v642;
  v225 = *(v642 + 8);
  v633 = v226;
  v632 = v216;
  v607 = v224;
  LODWORD(v642) = v225;
  if (v225)
  {
    if (v225 == 1)
    {
      v650 = v220;
      v654 = 0;
      v227 = [v647 fetchCustomSmartListWithObjectID_error_];
      v228 = v652;
      if (v227)
      {
        v229 = v227;
        v230 = v654;
        v646 = v229;
        v231 = [v229 sortingStyle];
        sub_261CFF1E4();
        (*(v649 + 104))(v630, *MEMORY[0x277D45450], v653);
        v232 = v644;
        (*(v644 + 104))(v631, *MEMORY[0x277D45470], v228);
        if (v638 < 1)
        {
          v234 = MEMORY[0x277D45500];
          v233 = v618;
        }

        else
        {
          v233 = v618;
          *v618 = v638;
          v234 = MEMORY[0x277D45508];
        }

        v260 = v637;
        v261 = v645;
        (*(v637 + 104))(v233, *v234, v645);
        v262 = v643;
        (*(v643 + 2))(v648, v629, v651);
        (*(v232 + 16))(v635, v631, v228);
        (*(v260 + 16))(v636, v233, v261);
        v263 = v649;
        (*(v649 + 16))(v634, v630, v653);
        v264 = v650;
        sub_261CFF364();
        (*(v260 + 8))(v618, v261);
        (*(v232 + 8))(v631, v652);
        (*(v263 + 8))(v630, v653);
        (*(v262 + 1))(v629, v651);
        v265 = v646;
        v266 = v639;
        sub_261CFF0B4();
        if (!v266)
        {
          v267 = v564;
          v268 = sub_261CFF534();
          v269 = v584;
          MEMORY[0x26671B710](v268);
          v653 = *(v567 + 8);
          v653(v267, v582);
          v270 = sub_261CFF264();
          v652 = *(v585 + 8);
          v271 = v602;
          (v652)(v269, v602);
          v272 = sub_261CCBA28(v270);

          v273 = v566;
          v274 = sub_261CFF534();
          v275 = v563;
          MEMORY[0x26671B710](v274);
          v653(v273, v582);
          v276 = sub_261CFF254();
          (v652)(v275, v271);
          if (!(v276 >> 62))
          {
            sub_261CFD104();
            sub_261D00624();
            sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);

            v277 = v276;
LABEL_25:
            v278 = v568;

            (*(v278 + 8))(v610, v583);
            (*(v633 + 8))(v650, v632);
LABEL_168:
            v488 = v608;
            v489 = v607;
            *v608 = v607;
            v490 = v642;
            *(v488 + 8) = v642;
            v488[2] = v272;
            v488[3] = v277;
            result = sub_261CCFD68(v489, v490);
            goto LABEL_169;
          }

LABEL_172:
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          sub_261CFD104();
          v277 = sub_261D004F4();

          goto LABEL_25;
        }

        goto LABEL_28;
      }

      v257 = v654;
      sub_261CFD654();

      goto LABEL_20;
    }

    v243 = v652;
    if (v224 > 2u)
    {
      if (v224 == 3)
      {
        v641 = v219;
        v303 = v643;
        (*(v643 + 13))(v189, *MEMORY[0x277D45420], v651);
        (*(v644 + 104))(v591, *MEMORY[0x277D45470], v243);
        (*(v649 + 104))(v572, *MEMORY[0x277D45458], v653);
        if (v638 < 1)
        {
          v305 = MEMORY[0x277D45500];
          v304 = v578;
        }

        else
        {
          v304 = v578;
          *v578 = v638;
          v305 = MEMORY[0x277D45508];
        }

        v328 = v637;
        v329 = v645;
        (*(v637 + 104))(v304, *v305, v645);
        (*(v303 + 2))(v648, v189, v651);
        v330 = v644;
        (*(v644 + 16))(v635, v591, v243);
        (*(v328 + 16))(v636, v304, v329);
        v331 = v649;
        v332 = v572;
        v333 = v653;
        (*(v649 + 16))(v634, v572, v653);
        v326 = v641;
        sub_261CFF364();
        (*(v328 + 8))(v578, v645);
        (*(v331 + 8))(v332, v333);
        (*(v330 + 8))(v591, v652);
        (*(v643 + 1))(v189, v651);
        v334 = v639;
        sub_261CFF214();
        if (!v334)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA578, &qword_261D03160);
          v353 = *(v646 + 9);
          v354 = (v646[80] + 32) & ~v646[80];
          v272 = swift_allocObject();
          *(v272 + 1) = xmmword_261D03450;
          v355 = v504;
          v356 = sub_261CFF534();
          v357 = v505;
          MEMORY[0x26671B890](v356);
          v653 = *(v507 + 8);
          v653(v355, v522);
          v358 = sub_261CFF264();
          v359 = *(v510 + 8);
          v360 = v511;
          v359(v357, v511);
          v361 = sub_261CCBD0C(v358);

          *(v272 + v354) = v361;
          swift_storeEnumTagMultiPayload();
          v362 = v506;
          v363 = sub_261CFF534();
          v364 = v509;
          MEMORY[0x26671B890](v363);
          v653(v362, v522);
          v365 = sub_261CFF254();
          v359(v364, v360);
          if (v365 >> 62)
          {
            sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
            sub_261CFD104();
            v277 = sub_261D004F4();
          }

          else
          {
            sub_261CFD104();
            sub_261D00624();
            sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
            v277 = v365;
          }

          v366 = v499;

          (*(v366 + 8))(v569, v548);
          (*(v633 + 8))(v641, v632);
          goto LABEL_168;
        }

        goto LABEL_49;
      }

      v249 = MEMORY[0x277D45420];
      v250 = MEMORY[0x277D45458];
      v251 = v643;
      if (v224 == 4)
      {
        v641 = v217;
        (*(v643 + 13))(v186, *MEMORY[0x277D45420], v651);
        v252 = v644;
        (*(v644 + 104))(v592, *MEMORY[0x277D45470], v243);
        (*(v649 + 104))(v573, *v250, v653);
        v253 = v637;
        if (v638 < 1)
        {
          v255 = MEMORY[0x277D45500];
          v256 = v612;
          v254 = v579;
        }

        else
        {
          v254 = v579;
          *v579 = v638;
          v255 = MEMORY[0x277D45508];
          v256 = v612;
        }

        v381 = v645;
        (*(v253 + 104))(v254, *v255, v645);
        (*(v251 + 2))(v648, v186, v651);
        (*(v252 + 16))(v635, v592, v243);
        (*(v253 + 16))(v636, v254, v381);
        v382 = v649;
        v383 = v573;
        v384 = v653;
        (*(v649 + 16))(v634, v573, v653);
        v326 = v641;
        sub_261CFF364();
        (*(v253 + 8))(v579, v645);
        (*(v382 + 8))(v383, v384);
        (*(v644 + 8))(v592, v652);
        (*(v643 + 1))(v186, v651);
        v385 = v555;
        v386 = v639;
        sub_261CFF294();
        if (v386)
        {
          goto LABEL_49;
        }

        v387 = v508;
        v388 = sub_261CFF534();
        v389 = v512;
        MEMORY[0x26671B8F0](v388);
        v390 = v526 + 8;
        v391 = *(v526 + 8);
        v391(v387, v524);
        v392 = sub_261CFF134();
        v393 = *(v551 + 8);
        v551 += 8;
        v648 = v393;
        (v393)(v389, v525);
        v394 = *(v392 + 16);
        if (v394)
        {
          v647 = v391;
          v526 = v390;
          v395 = *(v626 + 16);
          v396 = *(v626 + 80);
          v645 = v392;
          v397 = v392 + ((v396 + 32) & ~v396);
          v651 = *(v626 + 72);
          v652 = v395;
          v626 += 16;
          v649 = v626 - 8;
          v272 = MEMORY[0x277D84F90];
          v398 = v606;
          v653 = 0;
          (v395)(v256, v397, v606);
          while (1)
          {
            v399 = sub_261CFF144();
            sub_261CCC89C(v399, &v654);
            v400 = v655;
            if (v655 == 255)
            {
              (*v649)(v256, v398);
            }

            else
            {
              v401 = v654;
              v402 = sub_261CFF154();
              v403 = sub_261CCBD0C(v402);

              (*v649)(v256, v398);
              v404 = v604;
              *v604 = v401;
              *(v404 + 8) = v400;
              *(v404 + 16) = v403;
              swift_storeEnumTagMultiPayload();
              sub_261CD3840(v404, v628, type metadata accessor for SiriUtilities.Grouping);
              v405 = v272;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v405 = sub_261B423D0(0, v272[2] + 1, 1, v272);
              }

              v407 = v405[2];
              v406 = v405[3];
              v398 = v606;
              v272 = v407 >= v406 >> 1 ? sub_261B423D0(v406 > 1, v407 + 1, 1, v405) : v405;
              v272[2] = v407 + 1;
              sub_261CD3840(v628, v272 + ((v646[80] + 32) & ~v646[80]) + *(v646 + 9) * v407, type metadata accessor for SiriUtilities.Grouping);
              v256 = v612;
            }

            v397 += v651;
            if (!--v394)
            {
              break;
            }

            (v652)(v256, v397, v398);
          }

          v385 = v555;
          v391 = v647;
        }

        else
        {

          v272 = MEMORY[0x277D84F90];
        }

        v474 = v515;
        v475 = sub_261CFF534();
        v476 = v516;
        MEMORY[0x26671B8F0](v475);
        v391(v474, v524);
        v477 = sub_261CFF124();
        (v648)(v476, v525);
        if (v477 >> 62)
        {
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          sub_261CFD104();
          v277 = sub_261D004F4();
        }

        else
        {
          sub_261CFD104();
          sub_261D00624();
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          v277 = v477;
        }

        (*(v518 + 8))(v385, v552);
      }

      else
      {
        v641 = v222;
        (*(v644 + 104))(v593, *MEMORY[0x277D45468], v652);
        (*(v251 + 13))(v586, *v249, v651);
        (*(v649 + 104))(v574, *v250, v653);
        if (v638 < 1)
        {
          v312 = MEMORY[0x277D45500];
          v313 = v605;
          v311 = v580;
        }

        else
        {
          v311 = v580;
          *v580 = v638;
          v312 = MEMORY[0x277D45508];
          v313 = v605;
        }

        v429 = v637;
        v430 = v645;
        (*(v637 + 104))(v311, *v312, v645);
        (*(v251 + 2))(v648, v586, v651);
        (*(v644 + 16))(v635, v593, v652);
        (*(v429 + 16))(v636, v311, v430);
        v431 = v649;
        v432 = v574;
        v433 = v653;
        (*(v649 + 16))(v634, v574, v653);
        sub_261CFF364();
        (*(v429 + 8))(v580, v645);
        (*(v431 + 8))(v432, v433);
        (*(v251 + 1))(v586, v651);
        (*(v644 + 8))(v593, v652);
        v434 = v529;
        sub_261AFB668(v594, v529, &qword_27FEDAB68, &unk_261D11C90);
        v435 = v600;
        v436 = *(v600 + 48);
        v437 = v601;
        if (v436(v434, 1, v601) == 1)
        {
          v438 = v532;
          sub_261CFD7D4();
          v439 = v436(v434, 1, v437);
          v440 = v539;
          v441 = v540;
          v442 = v538;
          if (v439 != 1)
          {
            sub_261AE6A40(v434, &qword_27FEDAB68, &unk_261D11C90);
          }
        }

        else
        {
          v443 = *(v435 + 32);
          v438 = v532;
          v443(v532, v434, v437);
          v440 = v539;
          v441 = v540;
          v442 = v538;
        }

        v444 = v537;
        sub_261AFB668(v541, v537, &qword_27FEDDBA0, &qword_261D0F9E8);
        v445 = *(v440 + 48);
        v446 = v445(v444, 1, v441);
        v447 = v639;
        if (v446 == 1)
        {
          sub_261CFDA74();
          if (v445(v444, 1, v441) != 1)
          {
            sub_261AE6A40(v444, &qword_27FEDDBA0, &qword_261D0F9E8);
          }
        }

        else
        {
          (*(v440 + 32))(v442, v444, v441);
        }

        v326 = v641;
        sub_261CFF514();
        if (v447)
        {
          (*(v440 + 8))(v442, v441);
          (*(v600 + 8))(v438, v601);
          goto LABEL_49;
        }

        (*(v440 + 8))(v442, v441);
        (*(v600 + 8))(v438, v601);
        v460 = v517;
        sub_261CFF534();
        v461 = sub_261CFF264();
        v462 = *(v545 + 8);
        v545 += 8;
        v651 = v462;
        v462(v460, v520);
        v653 = *(v461 + 16);
        if (v653)
        {
          v463 = 0;
          v652 = (v623 + 16);
          v464 = (v623 + 8);
          v465 = (v646 + 48);
          v272 = MEMORY[0x277D84F90];
          v466 = v599;
          while (v463 < *(v461 + 16))
          {
            (*(v623 + 16))(v313, v461 + ((*(v623 + 80) + 32) & ~*(v623 + 80)) + *(v623 + 72) * v463, v466);
            v467 = v616;
            sub_261CCCB28(v313, v616);
            (*v464)(v313, v466);
            if ((*v465)(v467, 1, v650) == 1)
            {
              sub_261AE6A40(v467, &qword_27FEDE2F0, &qword_261D11898);
            }

            else
            {
              v468 = v596;
              sub_261CD3840(v467, v596, type metadata accessor for SiriUtilities.Grouping);
              sub_261CD3840(v468, v615, type metadata accessor for SiriUtilities.Grouping);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v272 = sub_261B423D0(0, v272[2] + 1, 1, v272);
              }

              v470 = v272[2];
              v469 = v272[3];
              if (v470 >= v469 >> 1)
              {
                v272 = sub_261B423D0(v469 > 1, v470 + 1, 1, v272);
              }

              v272[2] = v470 + 1;
              sub_261CD3840(v615, v272 + ((v646[80] + 32) & ~v646[80]) + *(v646 + 9) * v470, type metadata accessor for SiriUtilities.Grouping);
              v466 = v599;
              v313 = v605;
            }

            if (v653 == ++v463)
            {
              goto LABEL_164;
            }
          }

          goto LABEL_171;
        }

        v272 = MEMORY[0x277D84F90];
LABEL_164:

        v484 = v497;
        v485 = v557;
        sub_261CFF534();
        v486 = sub_261CFF254();
        (v651)(v484, v520);
        if (v486 >> 62)
        {
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          sub_261CFD104();
          v277 = sub_261D004F4();
        }

        else
        {
          sub_261CFD104();
          sub_261D00624();
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          v277 = v486;
        }

        v487 = v495;

        (*(v487 + 8))(v485, v543);
      }
    }

    else
    {
      if (!v224)
      {
        v631 = v223;
        v298 = v643;
        (*(v643 + 13))(v198, *MEMORY[0x277D45420], v651);
        v299 = v644;
        (*(v644 + 104))(v588, *MEMORY[0x277D45470], v243);
        (*(v649 + 104))(v570, *MEMORY[0x277D45458], v653);
        if (v638 < 1)
        {
          v301 = MEMORY[0x277D45500];
          v302 = v637;
          v300 = v575;
        }

        else
        {
          v300 = v575;
          *v575 = v638;
          v301 = MEMORY[0x277D45508];
          v302 = v637;
        }

        v314 = v645;
        (*(v302 + 104))(v300, *v301, v645);
        (*(v298 + 2))(v648, v198, v651);
        (*(v299 + 16))(v635, v588, v243);
        (*(v302 + 16))(v636, v300, v314);
        v315 = v298;
        v316 = v649;
        v317 = v570;
        v318 = v653;
        (*(v649 + 16))(v634, v570, v653);
        sub_261CFF364();
        (*(v302 + 8))(v575, v645);
        (*(v316 + 8))(v317, v318);
        (*(v644 + 8))(v588, v652);
        (v315[1])(v198, v651);
        v319 = v527;
        sub_261AFB668(v594, v527, &qword_27FEDAB68, &unk_261D11C90);
        v320 = v600;
        v321 = *(v600 + 48);
        v322 = v601;
        if (v321(v319, 1, v601) == 1)
        {
          v323 = v528;
          sub_261CFD7D4();
          v324 = v321(v319, 1, v322);
          v325 = v553;
          if (v324 != 1)
          {
            sub_261AE6A40(v319, &qword_27FEDAB68, &unk_261D11C90);
          }
        }

        else
        {
          v323 = v528;
          (*(v320 + 32))(v528, v319, v322);
          v325 = v553;
        }

        v326 = v631;
        v327 = v639;
        sub_261CFF354();
        if (!v327)
        {
          (*(v320 + 8))(v323, v322);
          v335 = v500;
          sub_261CFF534();
          v336 = sub_261CFF2F4();
          v337 = *(v547 + 8);
          v547 += 8;
          v337(v335, v521);
          v338 = *(v336 + 16);
          if (v338)
          {
            v643 = v337;
            v654 = MEMORY[0x277D84F90];
            sub_261B3A3E0(0, v338, 0);
            v272 = v654;
            v339 = *(v624 + 16);
            v340 = (*(v624 + 80) + 32) & ~*(v624 + 80);
            v639 = v336;
            v341 = v336 + v340;
            v651 = *(v624 + 72);
            v652 = v339;
            v342 = (v493 + 88);
            LODWORD(v649) = *MEMORY[0x277D454B0];
            LODWORD(v648) = *MEMORY[0x277D45498];
            LODWORD(v647) = *MEMORY[0x277D454A0];
            LODWORD(v645) = *MEMORY[0x277D454C0];
            LODWORD(v644) = *MEMORY[0x277D454D0];
            LODWORD(v638) = *MEMORY[0x277D454C8];
            LODWORD(v637) = *MEMORY[0x277D454B8];
            v635 = (v493 + 8);
            v624 += 16;
            v343 = (v624 - 8);
            LODWORD(v636) = *MEMORY[0x277D454A8];
            v653 = 0;
            do
            {
              (v652)(v640, v341, v641);
              v344 = v619;
              sub_261CFF2B4();
              v345 = (*v342)(v344, v620);
              if (v345 == v649)
              {
                v346 = 0;
              }

              else if (v345 == v648)
              {
                v346 = 1;
              }

              else if (v345 == v647)
              {
                v346 = 2;
              }

              else if (v345 == v645)
              {
                v346 = 3;
              }

              else if (v345 == v644)
              {
                v346 = 4;
              }

              else if (v345 == v638)
              {
                v346 = 5;
              }

              else if (v345 == v637)
              {
                v346 = 6;
              }

              else
              {
                if (v345 != v636)
                {
                  (*v635)(v619, v620);
                }

                v346 = 7;
              }

              v347 = v640;
              v348 = sub_261CFF2C4();
              v349 = sub_261CCBD0C(v348);

              (*v343)(v347, v641);
              v350 = v617;
              *v617 = v346;
              *(v350 + 8) = v349;
              swift_storeEnumTagMultiPayload();
              v654 = v272;
              v352 = v272[2];
              v351 = v272[3];
              if (v352 >= v351 >> 1)
              {
                sub_261B3A3E0(v351 > 1, v352 + 1, 1);
                v272 = v654;
              }

              v272[2] = v352 + 1;
              sub_261CD3840(v350, v272 + ((v646[80] + 32) & ~v646[80]) + *(v646 + 9) * v352, type metadata accessor for SiriUtilities.Grouping);
              v341 += v651;
              --v338;
            }

            while (v338);

            v325 = v553;
            v337 = v643;
          }

          else
          {

            v272 = MEMORY[0x277D84F90];
          }

          v471 = v503;
          sub_261CFF534();
          v472 = sub_261CFF2E4();
          v337(v471, v521);
          if (v472 >> 62)
          {
            sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
            sub_261CFD104();
            v277 = sub_261D004F4();
          }

          else
          {
            sub_261CFD104();
            sub_261D00624();
            sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
            v277 = v472;
          }

          v473 = v498;

          (*(v473 + 8))(v325, v546);
          (*(v633 + 8))(v631, v632);
          goto LABEL_168;
        }

        (*(v320 + 8))(v323, v322);
        goto LABEL_49;
      }

      v244 = v644;
      if (v224 == 1)
      {
        v641 = v213;
        v245 = v643;
        (*(v643 + 13))(v195, *MEMORY[0x277D45420], v651);
        (*(v244 + 104))(v590, *MEMORY[0x277D45470], v243);
        (*(v649 + 104))(v571, *MEMORY[0x277D45458], v653);
        if (v638 < 1)
        {
          v247 = MEMORY[0x277D45500];
          v248 = v637;
          v246 = v576;
        }

        else
        {
          v246 = v576;
          *v576 = v638;
          v247 = MEMORY[0x277D45508];
          v248 = v637;
        }

        v367 = v645;
        (*(v248 + 104))(v246, *v247, v645);
        (*(v245 + 2))(v648, v195, v651);
        (*(v244 + 16))(v635, v590, v243);
        (*(v248 + 16))(v636, v246, v367);
        v368 = v649;
        v369 = v571;
        v370 = v653;
        (*(v649 + 16))(v634, v571, v653);
        sub_261CFF364();
        (*(v248 + 8))(v576, v645);
        (*(v368 + 8))(v369, v370);
        (*(v244 + 8))(v590, v652);
        (*(v643 + 1))(v195, v651);
        v371 = v534;
        v372 = v533;
        v373 = v535;
        (*(v534 + 104))(v533, *MEMORY[0x277D455D8], v535);
        v374 = v530;
        sub_261AFB668(v594, v530, &qword_27FEDAB68, &unk_261D11C90);
        v375 = v600;
        v376 = *(v600 + 48);
        v377 = v601;
        if (v376(v374, 1, v601) == 1)
        {
          v378 = v531;
          sub_261CFD7D4();
          v379 = v376(v374, 1, v377);
          v380 = v639;
          if (v379 != 1)
          {
            sub_261AE6A40(v374, &qword_27FEDAB68, &unk_261D11C90);
          }
        }

        else
        {
          v378 = v531;
          (*(v375 + 32))(v531, v374, v377);
          v380 = v639;
        }

        v326 = v641;
        sub_261CFF524();
        if (v380)
        {
          (*(v375 + 8))(v378, v377);
          (*(v371 + 8))(v372, v373);
LABEL_49:
          result = (*(v633 + 8))(v326, v632);
          goto LABEL_169;
        }

        (*(v375 + 8))(v378, v377);
        (*(v371 + 8))(v372, v373);
        v448 = v501;
        sub_261CFF534();
        v449 = sub_261CFF264();
        v450 = *(v544 + 8);
        v544 += 8;
        v651 = v450;
        v450(v448, v519);
        v653 = *(v449 + 16);
        if (v653)
        {
          v451 = 0;
          v652 = (v622 + 16);
          v452 = (v622 + 8);
          v453 = (v646 + 48);
          v272 = MEMORY[0x277D84F90];
          v454 = v598;
          v455 = v597;
          v456 = v621;
          while (v451 < *(v449 + 16))
          {
            (*(v622 + 16))(v456, v449 + ((*(v622 + 80) + 32) & ~*(v622 + 80)) + *(v622 + 72) * v451, v454);
            sub_261CCBEF0(v456, v455);
            (*v452)(v456, v454);
            if ((*v453)(v455, 1, v650) == 1)
            {
              sub_261AE6A40(v455, &qword_27FEDE2F0, &qword_261D11898);
            }

            else
            {
              v457 = v595;
              sub_261CD3840(v455, v595, type metadata accessor for SiriUtilities.Grouping);
              sub_261CD3840(v457, v614, type metadata accessor for SiriUtilities.Grouping);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v272 = sub_261B423D0(0, v272[2] + 1, 1, v272);
              }

              v459 = v272[2];
              v458 = v272[3];
              if (v459 >= v458 >> 1)
              {
                v272 = sub_261B423D0(v458 > 1, v459 + 1, 1, v272);
              }

              v272[2] = v459 + 1;
              sub_261CD3840(v614, v272 + ((v646[80] + 32) & ~v646[80]) + *(v646 + 9) * v459, type metadata accessor for SiriUtilities.Grouping);
              v454 = v598;
              v455 = v597;
            }

            ++v451;
            v456 = v621;
            if (v653 == v451)
            {
              goto LABEL_160;
            }
          }

          __break(1u);
LABEL_171:
          __break(1u);
          goto LABEL_172;
        }

        v272 = MEMORY[0x277D84F90];
LABEL_160:

        v480 = v496;
        v481 = v556;
        sub_261CFF534();
        v482 = sub_261CFF254();
        (v651)(v480, v519);
        if (v482 >> 62)
        {
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          sub_261CFD104();
          v277 = sub_261D004F4();
        }

        else
        {
          sub_261CFD104();
          sub_261D00624();
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          v277 = v482;
        }

        v483 = v494;

        (*(v483 + 8))(v481, v542);
      }

      else
      {
        v641 = v218;
        (*(v649 + 104))(v587, *MEMORY[0x277D45450], v653);
        (*(v643 + 13))(v192, *MEMORY[0x277D45420], v651);
        (*(v244 + 104))(v589, *MEMORY[0x277D45470], v243);
        v306 = v243;
        if (v638 < 1)
        {
          v308 = MEMORY[0x277D45500];
          v309 = v611;
          v310 = v613;
          v307 = v577;
        }

        else
        {
          v307 = v577;
          *v577 = v638;
          v308 = MEMORY[0x277D45508];
          v309 = v611;
          v310 = v613;
        }

        v408 = v637;
        v409 = v645;
        (*(v637 + 104))(v307, *v308, v645);
        (*(v643 + 2))(v648, v192, v651);
        (*(v244 + 16))(v635, v589, v306);
        (*(v408 + 16))(v636, v307, v409);
        v410 = v649;
        (*(v649 + 16))(v634, v587, v653);
        v326 = v641;
        sub_261CFF364();
        (*(v408 + 8))(v577, v645);
        (*(v244 + 8))(v589, v652);
        (*(v643 + 1))(v192, v651);
        (*(v410 + 8))(v587, v653);
        v411 = v554;
        v412 = v639;
        sub_261CFF344();
        if (v412)
        {
          goto LABEL_49;
        }

        v413 = v502;
        sub_261CFF534();
        v414 = sub_261CFF134();
        v415 = *(v549 + 8);
        v549 += 8;
        (v415)(v413, v523);
        v416 = *(v414 + 2);
        if (v416)
        {
          v648 = v415;
          v417 = *(v625 + 16);
          v418 = *(v625 + 80);
          v647 = v414;
          v419 = v414 + ((v418 + 32) & ~v418);
          v651 = *(v625 + 72);
          v652 = v417;
          v625 += 16;
          v649 = v625 - 8;
          v272 = MEMORY[0x277D84F90];
          v653 = 0;
          (v417)(v310, v419, v309);
          while (1)
          {
            v420 = sub_261CFF394();
            sub_261CCC89C(v420, &v654);
            v421 = v655;
            if (v655 == 255)
            {
              (*v649)(v310, v309);
            }

            else
            {
              v422 = v654;
              v423 = sub_261CFF1A4();
              v424 = sub_261CCBA28(v423);

              (*v649)(v310, v309);
              v425 = v603;
              *v603 = v422;
              *(v425 + 8) = v421;
              *(v425 + 16) = v424;
              swift_storeEnumTagMultiPayload();
              sub_261CD3840(v425, v627, type metadata accessor for SiriUtilities.Grouping);
              v426 = v272;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v426 = sub_261B423D0(0, v272[2] + 1, 1, v272);
              }

              v428 = v426[2];
              v427 = v426[3];
              v272 = v428 >= v427 >> 1 ? sub_261B423D0(v427 > 1, v428 + 1, 1, v426) : v426;
              v310 = v613;
              v272[2] = v428 + 1;
              sub_261CD3840(v627, v272 + ((v646[80] + 32) & ~v646[80]) + *(v646 + 9) * v428, type metadata accessor for SiriUtilities.Grouping);
              v309 = v611;
            }

            v419 += v651;
            if (!--v416)
            {
              break;
            }

            (v652)(v310, v419, v309);
          }

          v411 = v554;
          v415 = v648;
        }

        else
        {

          v272 = MEMORY[0x277D84F90];
        }

        v478 = v513;
        sub_261CFF534();
        v479 = sub_261CFF124();
        (v415)(v478, v523);
        if (v479 >> 62)
        {
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          sub_261CFD104();
          v277 = sub_261D004F4();
        }

        else
        {
          sub_261CFD104();
          sub_261D00624();
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          v277 = v479;
        }

        (*(v514 + 8))(v411, v550);
      }
    }

    (*(v633 + 8))(v641, v632);
    goto LABEL_168;
  }

  v650 = v180;
  v646 = &v492 - v221;
  v654 = 0;
  v235 = [v647 fetchListWithObjectID_error_];
  if (v235)
  {
    v236 = v235;
    v237 = v654;
    v238 = [v236 sortingStyle];
    v239 = v204;
    sub_261CFF1E4();
    (*(v649 + 104))(v650, *MEMORY[0x277D45450], v653);
    v240 = v644;
    v241 = v161;
    (*(v644 + 104))(v161, *MEMORY[0x277D45470], v652);
    v641 = v236;
    if (v638 < 1)
    {
      v242 = MEMORY[0x277D45500];
    }

    else
    {
      *v142 = v638;
      v242 = MEMORY[0x277D45508];
    }

    v279 = v637;
    v280 = *v242;
    v281 = *(v637 + 104);
    v492 = v142;
    v282 = v645;
    v281(v142, v280, v645);
    v283 = v643;
    (*(v643 + 2))(v648, v239, v651);
    (*(v240 + 16))(v635, v241, v652);
    v284 = *(v279 + 16);
    v638 = v241;
    v284(v636, v142, v282);
    v640 = v239;
    v285 = v649;
    (*(v649 + 16))(v634, v650, v653);
    v264 = v646;
    sub_261CFF364();
    (*(v279 + 8))(v492, v282);
    (*(v240 + 8))(v638, v652);
    (*(v285 + 8))(v650, v653);
    (*(v283 + 1))(v640, v651);
    v265 = v641;
    v286 = v639;
    sub_261CFF0C4();
    if (!v286)
    {
      v287 = v558;
      v288 = sub_261CFF534();
      v289 = v584;
      MEMORY[0x26671B7D0](v288);
      v653 = *(v560 + 8);
      v290 = v287;
      v291 = v561;
      v653(v290, v561);
      v292 = sub_261CFF264();
      v652 = *(v585 + 8);
      (v652)(v289, v602);
      v272 = sub_261CCBA28(v292);

      v293 = v559;
      v294 = sub_261CFF534();
      v295 = v562;
      MEMORY[0x26671B7D0](v294);
      v653(v293, v291);
      v296 = sub_261CFF254();
      (v652)(v295, v602);
      if (v296 >> 62)
      {
        sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
        sub_261CFD104();
        v277 = sub_261D004F4();
      }

      else
      {
        sub_261CFD104();
        sub_261D00624();
        sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);

        v277 = v296;
      }

      v297 = v565;

      (*(v297 + 8))(v609, v581);
      (*(v633 + 8))(v646, v632);
      goto LABEL_168;
    }

LABEL_28:

    result = (*(v633 + 8))(v264, v632);
    goto LABEL_169;
  }

  v258 = v654;
  sub_261CFD654();

LABEL_20:
  result = swift_willThrow();
LABEL_169:
  v491 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_261CCBA28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE2F0, &qword_261D11898);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for SiriUtilities.Grouping(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v23 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v22 = &v21 - v11;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = *(sub_261CFF1B4() - 8);
  v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v15 = *(v13 + 72);
  v16 = MEMORY[0x277D84F90];
  v21 = v15;
  do
  {
    sub_261CCD860(v14, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_261AE6A40(v5, &qword_27FEDE2F0, &qword_261D11898);
    }

    else
    {
      v17 = v22;
      sub_261CD3840(v5, v22, type metadata accessor for SiriUtilities.Grouping);
      sub_261CD3840(v17, v23, type metadata accessor for SiriUtilities.Grouping);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_261B423D0(0, v16[2] + 1, 1, v16);
      }

      v19 = v16[2];
      v18 = v16[3];
      if (v19 >= v18 >> 1)
      {
        v16 = sub_261B423D0(v18 > 1, v19 + 1, 1, v16);
      }

      v16[2] = v19 + 1;
      sub_261CD3840(v23, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, type metadata accessor for SiriUtilities.Grouping);
      v15 = v21;
    }

    v14 += v15;
    --v12;
  }

  while (v12);
  return v16;
}

uint64_t sub_261CCBD0C(uint64_t a1)
{
  v2 = sub_261CFF0F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v24 = MEMORY[0x277D84F90];
    sub_261B3A3C0(0, v7, 0);
    v8 = v24;
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v21 = *(v9 + 56);
    v22 = v10;
    v20 = (v9 - 8);
    v23 = v9;
    do
    {
      v22(v6, v11, v2);
      if (sub_261CFF0E4())
      {
        v12 = sub_261CCBD0C();
      }

      else
      {
        v12 = 0;
      }

      v13 = sub_261CFF0D4();
      v14 = v2;
      (*v20)(v6, v2);
      v24 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_261B3A3C0((v15 > 1), v16 + 1, 1);
        v8 = v24;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v12;
      v11 += v21;
      --v7;
      v2 = v14;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_261CCBEF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_261CFF4C4();
  v62 = *(v4 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD7E4();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = v64[8];
  MEMORY[0x28223BE20](v8);
  v63 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261CFF4D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v59 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v60 = &v59 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = (&v59 - v18);
  v20 = *(v12 + 16);
  v61 = a1;
  v20(&v59 - v18, a1, v11);
  v21 = (*(v12 + 88))(v19, v11);
  if (v21 == *MEMORY[0x277D455D0])
  {
    (*(v12 + 96))(v19, v11);
    v22 = sub_261CCD5D4(*v19, MEMORY[0x277D455A8], MEMORY[0x277D45598], MEMORY[0x277D455A0]);

    *a2 = v22;
    type metadata accessor for SiriUtilities.ScheduledGroup(0);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    v33 = type metadata accessor for SiriUtilities.Grouping(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v33 - 8) + 56))(a2, 0, 1, v33);
  }

  if (v21 == *MEMORY[0x277D455B0])
  {
    goto LABEL_7;
  }

  if (v21 == *MEMORY[0x277D455B8])
  {
    (*(v12 + 96))(v19, v11);
    v23 = v62;
    v24 = (*(v62 + 32))(v7, v19, v4);
    MEMORY[0x26671BB70](v24);
    v25 = sub_261CFF4B4();
    v26 = sub_261CCBD0C(v25);

    (*(v23 + 8))(v7, v4);
    *(a2 + *(type metadata accessor for SiriUtilities.Day(0) + 20)) = v26;
    type metadata accessor for SiriUtilities.ScheduledGroup(0);
    goto LABEL_8;
  }

  if (v21 == *MEMORY[0x277D455C8])
  {
LABEL_7:
    (*(v12 + 96))(v19, v11);
    v27 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE370, &qword_261D11C60) + 48));
    v29 = v63;
    v28 = v64;
    v30 = v65;
    (v64[4])(v63, v19, v65);
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    (v28[2])(a2, v29, v30);
    v32 = sub_261CCD5D4(v27, MEMORY[0x277D455A8], MEMORY[0x277D45598], MEMORY[0x277D455A0]);

    (v28[1])(v29, v30);
    *(a2 + v31) = v32;
    type metadata accessor for SiriUtilities.ScheduledGroup(0);
    goto LABEL_8;
  }

  v35 = a2;
  if (v21 == *MEMORY[0x277D455C0])
  {
    (*(v12 + 96))(v19, v11);
    v36 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE370, &qword_261D11C60) + 48));
    v38 = v63;
    v37 = v64;
    v39 = v19;
    v40 = v65;
    (v64[4])(v63, v39, v65);
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    (v37[2])(a2, v38, v40);
    v42 = sub_261CCD5D4(v36, MEMORY[0x277D455A8], MEMORY[0x277D45598], MEMORY[0x277D455A0]);

    (v37[1])(v38, v40);
    *(a2 + v41) = v42;
    type metadata accessor for SiriUtilities.ScheduledGroup(0);
    swift_storeEnumTagMultiPayload();
    v43 = type metadata accessor for SiriUtilities.Grouping(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v43 - 8) + 56))(a2, 0, 1, v43);
  }

  else
  {
    if (qword_27FED9D38 != -1)
    {
      swift_once();
    }

    v44 = sub_261CFF7A4();
    __swift_project_value_buffer(v44, qword_27FEDE2C0);
    v45 = v60;
    v20(v60, v61, v11);
    v46 = sub_261CFF784();
    LODWORD(v65) = sub_261CFFE64();
    if (os_log_type_enabled(v46, v65))
    {
      v47 = swift_slowAlloc();
      v63 = v47;
      v64 = swift_slowAlloc();
      v66 = v64;
      *v47 = 136315138;
      v20(v59, v45, v11);
      v48 = sub_261CFFAB4();
      v49 = v45;
      v50 = v48;
      v52 = v51;
      v53 = *(v12 + 8);
      v53(v49, v11);
      v54 = sub_261B879C8(v50, v52, &v66);
      v35 = a2;

      v55 = v63;
      *(v63 + 4) = v54;
      v56 = v55;
      _os_log_impl(&dword_261AE2000, v46, v65, "Unhandled bucket: %s", v55, 0xCu);
      v57 = v64;
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x26671D560](v57, -1, -1);
      MEMORY[0x26671D560](v56, -1, -1);
    }

    else
    {

      v53 = *(v12 + 8);
      v53(v45, v11);
    }

    v58 = type metadata accessor for SiriUtilities.Grouping(0);
    (*(*(v58 - 8) + 56))(v35, 1, 1, v58);
    return (v53)(v19, v11);
  }
}

void sub_261CCC89C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 entityName];
  v5 = sub_261CFFA74();
  v7 = v6;

  v8 = v5 == 0x73694C44434D4552 && v7 == 0xE900000000000074;
  if (v8 || (sub_261D00614() & 1) != 0)
  {

    v9 = 0;
  }

  else if (v5 == 0x616D5344434D4552 && v7 == 0xEE007473694C7472)
  {

    v9 = 1;
  }

  else
  {
    v11 = sub_261D00614();

    if (v11)
    {
      v9 = 1;
    }

    else
    {
      if (qword_27FED9D38 != -1)
      {
        swift_once();
      }

      v12 = sub_261CFF7A4();
      __swift_project_value_buffer(v12, qword_27FEDE2C0);
      v13 = v2;
      v14 = sub_261CFF784();
      v15 = sub_261CFFE64();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136315138;
        v18 = [v13 entityName];
        v19 = sub_261CFFA74();
        v21 = v20;

        v22 = sub_261B879C8(v19, v21, &v23);

        *(v16 + 4) = v22;
        _os_log_impl(&dword_261AE2000, v14, v15, "Unable to handle entity type %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x26671D560](v17, -1, -1);
        MEMORY[0x26671D560](v16, -1, -1);
      }

      else
      {
      }

      v2 = 0;
      v9 = -1;
    }
  }

  *a2 = v2;
  *(a2 + 8) = v9;
}

uint64_t sub_261CCCB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261CFF324();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v4);
  v75 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD7E4();
  v80 = *(v7 - 1);
  v81 = v7;
  v8 = *(v80 + 64);
  MEMORY[0x28223BE20](v7);
  v79 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFF454();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_261CFF464();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v73 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v78 = &v73 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v73 - v22;
  v24 = *(v16 + 16);
  v74 = a1;
  v25 = a1;
  v26 = v24;
  v24(&v73 - v22, v25, v15);
  v27 = (*(v16 + 88))(v23, v15);
  if (v27 == *MEMORY[0x277D45580])
  {
    (*(v16 + 96))(v23, v15);
    v28 = (*(v11 + 32))(v14, v23, v10);
    MEMORY[0x26671BB00](v28);
    v29 = sub_261CFF444();
    v30 = sub_261CCBD0C(v29);

    (*(v11 + 8))(v14, v10);
    *(a2 + *(type metadata accessor for SiriUtilities.Day(0) + 20)) = v30;
    type metadata accessor for SiriUtilities.CompletedGroup(0);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    v37 = type metadata accessor for SiriUtilities.Grouping(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v37 - 8) + 56))(a2, 0, 1, v37);
  }

  if (v27 == *MEMORY[0x277D45570])
  {
    (*(v16 + 96))(v23, v15);
    v31 = *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE380, &qword_261D11C70) + 48)];
    v33 = v79;
    v32 = v80;
    v34 = v81;
    (*(v80 + 32))(v79, v23, v81);
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    (*(v32 + 16))(a2, v33, v34);
    v36 = sub_261CCD5D4(v31, MEMORY[0x277D45568], MEMORY[0x277D45558], MEMORY[0x277D45560]);

    (*(v32 + 8))(v33, v34);
    *(a2 + v35) = v36;
    type metadata accessor for SiriUtilities.CompletedGroup(0);
    goto LABEL_5;
  }

  v39 = a2;
  if (v27 == *MEMORY[0x277D45578] || v27 == *MEMORY[0x277D45590])
  {
    (*(v16 + 96))(v23, v15);
    v40 = *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE380, &qword_261D11C70) + 48)];
    v42 = v79;
    v41 = v80;
    v43 = v23;
    v44 = v81;
    (*(v80 + 32))(v79, v43, v81);
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    (*(v41 + 16))(v39, v42, v44);
    v46 = sub_261CCD5D4(v40, MEMORY[0x277D45568], MEMORY[0x277D45558], MEMORY[0x277D45560]);

    (*(v41 + 8))(v42, v44);
    *(v39 + v45) = v46;
    type metadata accessor for SiriUtilities.CompletedGroup(0);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    v54 = type metadata accessor for SiriUtilities.Grouping(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v54 - 8) + 56))(v39, 0, 1, v54);
  }

  if (v27 == *MEMORY[0x277D45588])
  {
    (*(v16 + 96))(v23, v15);
    v47 = *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE378, &qword_261D11C68) + 48)];
    v49 = v75;
    v48 = v76;
    v50 = v23;
    v51 = v77;
    (*(v76 + 32))(v75, v50, v77);
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    MEMORY[0x26671B9E0]();
    v53 = sub_261CCD5D4(v47, MEMORY[0x277D45568], MEMORY[0x277D45558], MEMORY[0x277D45560]);

    (*(v48 + 8))(v49, v51);
    *(v39 + v52) = v53;
    type metadata accessor for SiriUtilities.CompletedGroup(0);
    goto LABEL_11;
  }

  if (qword_27FED9D38 != -1)
  {
    swift_once();
  }

  v55 = sub_261CFF7A4();
  __swift_project_value_buffer(v55, qword_27FEDE2C0);
  v26(v78, v74, v15);
  v56 = sub_261CFF784();
  v57 = sub_261CFFE64();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v79 = v58;
    v81 = swift_slowAlloc();
    v82 = v81;
    *v58 = 136315138;
    LODWORD(v80) = v57;
    v59 = v78;
    v26(v73, v78, v15);
    v60 = sub_261CFFAB4();
    v61 = v59;
    v62 = v60;
    v64 = v63;
    v65 = *(v16 + 8);
    v65(v61, v15);
    v66 = sub_261B879C8(v62, v64, &v82);

    v67 = v79;
    *(v79 + 4) = v66;
    v68 = v65;
    v69 = v67;
    _os_log_impl(&dword_261AE2000, v56, v80, "Unhandled bucket: %s", v67, 0xCu);
    v70 = v81;
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x26671D560](v70, -1, -1);
    v71 = v69;
    v39 = a2;
    MEMORY[0x26671D560](v71, -1, -1);
  }

  else
  {

    v68 = *(v16 + 8);
    v68(v78, v15);
  }

  v72 = type metadata accessor for SiriUtilities.Grouping(0);
  (*(*(v72 - 8) + 56))(v39, 1, 1, v72);
  return (v68)(v23, v15);
}

uint64_t sub_261CCD5D4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v33 = a3;
  v34 = a4;
  v32 = a2(0);
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v32);
  v8 = &v28 - v7;
  v9 = type metadata accessor for SiriUtilities.Day(0);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v35 = MEMORY[0x277D84F90];
    sub_261B3A424(0, v13, 0);
    v14 = v35;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v28 = *(v15 + 56);
    v29 = v16;
    v18 = (v15 - 8);
    do
    {
      v19 = v32;
      v20 = v15;
      v21 = v29(v8, v17, v32);
      v22 = v33(v21);
      v23 = v34(v22);
      v24 = sub_261CCBD0C(v23);

      (*v18)(v8, v19);
      *&v12[*(v31 + 20)] = v24;
      v35 = v14;
      v26 = *(v14 + 16);
      v25 = *(v14 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_261B3A424(v25 > 1, v26 + 1, 1);
        v14 = v35;
      }

      *(v14 + 16) = v26 + 1;
      sub_261CD3840(v12, v14 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, type metadata accessor for SiriUtilities.Day);
      v17 += v28;
      --v13;
      v15 = v20;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_261CCD860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261CFF1B4();
  v54 = *(v4 - 8);
  *&v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_261CFD674();
  v50 = *(v52 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_261CFD884();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_261CFFA44();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFF184();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v49 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  v20 = sub_261CFF1A4();
  v21 = sub_261CCBD0C(v20);
  v22 = v13;

  sub_261CFF194();
  v23 = (*(v14 + 88))(v19, v13);
  if (v23 == *MEMORY[0x277D453E0])
  {
    (*(v14 + 96))(v19, v13);
    v55 = *v19;
    v24 = *(v19 + 2);
    v25 = *(v19 + 4);

    *a2 = v55;
    *(a2 + 16) = v24;
    *(a2 + 24) = v21;
    v26 = type metadata accessor for SiriUtilities.Grouping(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v26 - 8) + 56))(a2, 0, 1, v26);
  }

  else
  {
    v48 = a2;
    if (v23 == *MEMORY[0x277D453D8])
    {
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE358, &qword_261D11BD0) + 48);
      sub_261CFF9B4();
      sub_261CFD874();
      (*(v50 + 104))(v51, *MEMORY[0x277CC9110], v52);
      v29 = v48;
      sub_261CFD6C4();
      *(v29 + v28) = v21;
      v30 = type metadata accessor for SiriUtilities.Grouping(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
    }

    else
    {

      if (qword_27FED9D38 != -1)
      {
        swift_once();
      }

      v31 = sub_261CFF7A4();
      __swift_project_value_buffer(v31, qword_27FEDE2C0);
      v33 = v53;
      v32 = v54;
      v34 = v55;
      (*(v54 + 16))(v53, a1, v55);
      v35 = sub_261CFF784();
      v36 = sub_261CFFE64();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = v22;
        v56 = v51;
        *v37 = 136315138;
        sub_261CFF194();
        v38 = sub_261CFFAB4();
        v39 = v33;
        v40 = v38;
        v42 = v41;
        (*(v32 + 8))(v39, v55);
        v43 = sub_261B879C8(v40, v42, &v56);

        *(v37 + 4) = v43;
        _os_log_impl(&dword_261AE2000, v35, v36, "Unhandled section type: %s", v37, 0xCu);
        v44 = v51;
        __swift_destroy_boxed_opaque_existential_0(v51);
        v22 = v52;
        MEMORY[0x26671D560](v44, -1, -1);
        MEMORY[0x26671D560](v37, -1, -1);
      }

      else
      {

        (*(v32 + 8))(v33, v34);
      }

      v45 = v48;
      v46 = type metadata accessor for SiriUtilities.Grouping(0);
      (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
      return (*(v14 + 8))(v19, v22);
    }
  }
}

BOOL _s19RemindersAppIntents13SiriUtilitiesO6ListIDO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
      sub_261CCFD68(v4, 0);
      sub_261CCFD68(v2, 0);
      v6 = sub_261D000F4();
      sub_261CCFEB4(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (v3 != 1)
  {
    if (v5 == 2)
    {
      sub_261CCFEB4(*a1, 2u);
      sub_261CCFEB4(v4, 2u);
      return v4 == v2;
    }

    goto LABEL_9;
  }

  if (v5 != 1)
  {
LABEL_6:
    v9 = v2;
LABEL_9:
    sub_261CCFD68(v4, v5);
    sub_261CCFEB4(v2, v3);
    sub_261CCFEB4(v4, v5);
    return 0;
  }

  sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
  sub_261CCFD68(v4, 1u);
  sub_261CCFD68(v2, 1u);
  LOBYTE(v6) = sub_261D000F4();
  sub_261CCFEB4(v2, 1u);
  v7 = v4;
  v8 = 1;
LABEL_11:
  sub_261CCFEB4(v7, v8);
  return v6 & 1;
}

uint64_t _s19RemindersAppIntents13SiriUtilitiesO14ScheduledGroupO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v77 = a1;
  v78 = a2;
  v71 = type metadata accessor for SiriUtilities.Day(0);
  v2 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v74 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD7E4();
  v5 = *(v4 - 8);
  v75 = v4;
  v76 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v73 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v72 = &v71 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v71 - v11;
  v13 = type metadata accessor for SiriUtilities.ScheduledGroup(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v71 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v71 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v71 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = (&v71 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE398, &qword_261D11C88);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v71 - v32;
  v34 = (&v71 + *(v31 + 56) - v32);
  sub_261CD38A8(v77, &v71 - v32, type metadata accessor for SiriUtilities.ScheduledGroup);
  sub_261CD38A8(v78, v34, type metadata accessor for SiriUtilities.ScheduledGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_261CD38A8(v33, v26, type metadata accessor for SiriUtilities.ScheduledGroup);
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
      v61 = *&v26[v60];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v62 = v33;
        v63 = *(v34 + v60);
        v65 = v75;
        v64 = v76;
        (*(v76 + 32))(v12, v34, v75);
        v66 = sub_261CFD7B4();
        v67 = *(v64 + 8);
        v67(v26, v65);
        if (v66)
        {
          v46 = sub_261CC63F0(v61, v63);

          v67(v12, v65);
          sub_261CD1888(v62, type metadata accessor for SiriUtilities.ScheduledGroup);
          return v46 & 1;
        }

        v67(v12, v65);

        sub_261CD1888(v62, type metadata accessor for SiriUtilities.ScheduledGroup);
LABEL_27:
        v46 = 0;
        return v46 & 1;
      }

      (*(v76 + 8))(v26, v75);
    }

    else
    {
      sub_261CD38A8(v33, v28, type metadata accessor for SiriUtilities.ScheduledGroup);
      v49 = *v28;
      if (!swift_getEnumCaseMultiPayload())
      {
        v46 = sub_261CC63F0(v49, *v34);

        sub_261CD1888(v33, type metadata accessor for SiriUtilities.ScheduledGroup);
        return v46 & 1;
      }
    }

LABEL_26:
    sub_261AE6A40(v33, &qword_27FEDE398, &qword_261D11C88);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v36 = v33;
      sub_261CD38A8(v33, v20, type metadata accessor for SiriUtilities.ScheduledGroup);
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
      v38 = *&v20[v37];
      v39 = swift_getEnumCaseMultiPayload();
      v41 = v75;
      v40 = v76;
      if (v39 == 3)
      {
        v42 = *(v34 + v37);
        v43 = v72;
        (*(v76 + 32))(v72, v34, v75);
        v44 = sub_261CFD7B4();
        v45 = *(v40 + 8);
        v45(v20, v41);
        if (v44)
        {
          v46 = sub_261CC63F0(v38, v42);

          v47 = v43;
          v48 = v41;
LABEL_17:
          v45(v47, v48);
          sub_261CD1888(v36, type metadata accessor for SiriUtilities.ScheduledGroup);
          return v46 & 1;
        }

        v69 = v43;
        v70 = v41;
LABEL_33:
        v45(v69, v70);

        sub_261CD1888(v36, type metadata accessor for SiriUtilities.ScheduledGroup);
        goto LABEL_27;
      }

      (*(v40 + 8))(v20, v41);
    }

    else
    {
      v36 = v33;
      sub_261CD38A8(v33, v17, type metadata accessor for SiriUtilities.ScheduledGroup);
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
      v53 = *&v17[v52];
      v54 = swift_getEnumCaseMultiPayload();
      v56 = v75;
      v55 = v76;
      if (v54 == 4)
      {
        v57 = *(v34 + v52);
        v58 = v73;
        (*(v76 + 32))(v73, v34, v75);
        v59 = sub_261CFD7B4();
        v45 = *(v55 + 8);
        v45(v17, v56);
        if (v59)
        {
          v46 = sub_261CC63F0(v53, v57);

          v47 = v58;
          v48 = v56;
          goto LABEL_17;
        }

        v69 = v58;
        v70 = v56;
        goto LABEL_33;
      }

      (*(v55 + 8))(v17, v56);
    }

    v33 = v36;
    goto LABEL_26;
  }

  sub_261CD38A8(v33, v23, type metadata accessor for SiriUtilities.ScheduledGroup);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_261CD1888(v23, type metadata accessor for SiriUtilities.Day);
    goto LABEL_26;
  }

  v50 = v74;
  sub_261CD3840(v34, v74, type metadata accessor for SiriUtilities.Day);
  if ((sub_261CFD7B4() & 1) == 0 || (sub_261CC60D4(*&v23[*(v71 + 20)], *(v50 + *(v71 + 20))), (v51 & 1) == 0))
  {
    sub_261CD1888(v50, type metadata accessor for SiriUtilities.Day);
    sub_261CD1888(v23, type metadata accessor for SiriUtilities.Day);
    sub_261CD1888(v33, type metadata accessor for SiriUtilities.ScheduledGroup);
    goto LABEL_27;
  }

  sub_261CD1888(v50, type metadata accessor for SiriUtilities.Day);
  sub_261CD1888(v23, type metadata accessor for SiriUtilities.Day);
  sub_261CD1888(v33, type metadata accessor for SiriUtilities.ScheduledGroup);
  v46 = 1;
  return v46 & 1;
}

uint64_t _s19RemindersAppIntents13SiriUtilitiesO14CompletedGroupO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFD7E4();
  v5 = *(v4 - 8);
  v88 = v4;
  v89 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v84 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v83 = &v81 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v82 = &v81 - v12;
  MEMORY[0x28223BE20](v11);
  v87 = &v81 - v13;
  v14 = type metadata accessor for SiriUtilities.Day(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SiriUtilities.CompletedGroup(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v86 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v85 = &v81 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v81 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v81 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v81 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE390, &qword_261D11C80);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v36 = &v81 + *(v34 + 56) - v35;
  v37 = a1;
  v38 = &v81 - v35;
  sub_261CD38A8(v37, &v81 - v35, type metadata accessor for SiriUtilities.CompletedGroup);
  v39 = a2;
  v40 = v36;
  sub_261CD38A8(v39, v36, type metadata accessor for SiriUtilities.CompletedGroup);
  v90 = v38;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v53 = v87;
    if (EnumCaseMultiPayload)
    {
      sub_261CD38A8(v90, v29, type metadata accessor for SiriUtilities.CompletedGroup);
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
      v71 = *&v29[v70];
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v77 = v88;
        v75 = *(v89 + 8);
        v76 = v29;
        goto LABEL_27;
      }

      v72 = *&v36[v70];
      v57 = v88;
      v73 = v89;
      (*(v89 + 32))(v53, v40, v88);
      v74 = sub_261CFD7B4();
      v62 = *(v73 + 8);
      v62(v29, v57);
      if (v74)
      {
        v52 = sub_261CC63F0(v71, v72);

        v63 = v53;
        goto LABEL_20;
      }

      v79 = v53;
LABEL_37:
      v62(v79, v57);
      goto LABEL_38;
    }

    sub_261CD38A8(v90, v31, type metadata accessor for SiriUtilities.CompletedGroup);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_261CD3840(v36, v17, type metadata accessor for SiriUtilities.Day);
      if (sub_261CFD7B4())
      {
        sub_261CC60D4(*&v31[*(v14 + 20)], *&v17[*(v14 + 20)]);
        if (v78)
        {
          sub_261CD1888(v17, type metadata accessor for SiriUtilities.Day);
          sub_261CD1888(v31, type metadata accessor for SiriUtilities.Day);
          sub_261CD1888(v90, type metadata accessor for SiriUtilities.CompletedGroup);
          v52 = 1;
          return v52 & 1;
        }
      }

      sub_261CD1888(v17, type metadata accessor for SiriUtilities.Day);
      sub_261CD1888(v31, type metadata accessor for SiriUtilities.Day);
      goto LABEL_40;
    }

    sub_261CD1888(v31, type metadata accessor for SiriUtilities.Day);
LABEL_28:
    sub_261AE6A40(v90, &qword_27FEDE390, &qword_261D11C80);
LABEL_41:
    v52 = 0;
    return v52 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_261CD38A8(v90, v26, type metadata accessor for SiriUtilities.CompletedGroup);
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    v55 = *&v26[v54];
    v56 = swift_getEnumCaseMultiPayload();
    v57 = v88;
    if (v56 == 2)
    {
      v58 = *&v36[v54];
      v59 = v89;
      v60 = v82;
      (*(v89 + 32))(v82, v40, v88);
      v61 = sub_261CFD7B4();
      v62 = *(v59 + 8);
      v62(v26, v57);
      if (v61)
      {
        v52 = sub_261CC63F0(v55, v58);

        v63 = v60;
LABEL_20:
        v62(v63, v57);
        goto LABEL_21;
      }

      v79 = v60;
      goto LABEL_37;
    }

    (*(v89 + 8))(v26, v57);
    goto LABEL_28;
  }

  v42 = v88;
  v43 = v36;
  if (EnumCaseMultiPayload != 3)
  {
    v64 = v86;
    sub_261CD38A8(v90, v86, type metadata accessor for SiriUtilities.CompletedGroup);
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    v66 = *(v64 + v65);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v67 = *&v36[v65];
      v68 = v89;
      v49 = v84;
      (*(v89 + 32))(v84, v43, v42);
      v69 = sub_261CFD7B4();
      v51 = *(v68 + 8);
      v51(v64, v42);
      if (v69)
      {
        v52 = sub_261CC63F0(v66, v67);

        goto LABEL_16;
      }

      v51(v49, v42);

      goto LABEL_39;
    }

    v75 = *(v89 + 8);
    v76 = v64;
    goto LABEL_25;
  }

  v44 = v85;
  sub_261CD38A8(v90, v85, type metadata accessor for SiriUtilities.CompletedGroup);
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
  v46 = *(v44 + v45);
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    v75 = *(v89 + 8);
    v76 = v44;
LABEL_25:
    v77 = v42;
LABEL_27:
    v75(v76, v77);
    goto LABEL_28;
  }

  v47 = *&v43[v45];
  v48 = v89;
  v49 = v83;
  (*(v89 + 32))(v83, v43, v42);
  v50 = sub_261CFD7B4();
  v51 = *(v48 + 8);
  v51(v44, v42);
  if ((v50 & 1) == 0)
  {
    v51(v49, v42);
LABEL_38:

LABEL_39:

LABEL_40:
    sub_261CD1888(v90, type metadata accessor for SiriUtilities.CompletedGroup);
    goto LABEL_41;
  }

  v52 = sub_261CC63F0(v46, v47);

LABEL_16:

  v51(v49, v42);
LABEL_21:
  sub_261CD1888(v90, type metadata accessor for SiriUtilities.CompletedGroup);
  return v52 & 1;
}

uint64_t _s19RemindersAppIntents13SiriUtilitiesO8GroupingO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v99 = a1;
  v3 = type metadata accessor for SiriUtilities.CompletedGroup(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v93 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SiriUtilities.ScheduledGroup(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v91 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD6A4();
  v97 = *(v9 - 8);
  v98 = v9;
  v10 = *(v97 + 64);
  MEMORY[0x28223BE20](v9);
  v92 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SiriUtilities.Grouping(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v90 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v90 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v96 = &v90 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v95 = &v90 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v90 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v94 = &v90 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = (&v90 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE388, &qword_261D11C78);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v90 - v37;
  v39 = &v90 + *(v36 + 56) - v37;
  sub_261CD38A8(v99, &v90 - v37, type metadata accessor for SiriUtilities.Grouping);
  v40 = a2;
  v41 = v39;
  sub_261CD38A8(v40, v39, type metadata accessor for SiriUtilities.Grouping);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        sub_261CD38A8(v38, v16, type metadata accessor for SiriUtilities.Grouping);
        v51 = *v16;
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          goto LABEL_31;
        }

        v52 = *v39;
LABEL_29:
        sub_261CC60D4(v51, v52);
        v76 = v38;
        v50 = v77;

        goto LABEL_30;
      }

      sub_261CD38A8(v38, v19, type metadata accessor for SiriUtilities.Grouping);
      v53 = *v19;
      v54 = v19[8];
      v55 = *(v19 + 2);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v56 = *v39;
        v57 = v39[8];
        v58 = *(v39 + 2);
        v102 = v53;
        v103 = v54;
        v100 = v56;
        v101 = v57;
        if (_s19RemindersAppIntents13SiriUtilitiesO6ListIDO2eeoiySbAE_AEtFZ_0(&v102, &v100))
        {
          sub_261CC60D4(v55, v58);
LABEL_24:
          v73 = v38;
          v50 = v59;
          sub_261CCFEB4(v56, v57);
          sub_261CCFEB4(v53, v54);

          sub_261CD1888(v73, type metadata accessor for SiriUtilities.Grouping);
          return v50 & 1;
        }

LABEL_35:

        sub_261CCFEB4(v56, v57);
        sub_261CCFEB4(v53, v54);
        goto LABEL_36;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v47 = v96;
        sub_261CD38A8(v38, v96, type metadata accessor for SiriUtilities.Grouping);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v48 = v93;
          sub_261CD3840(v39, v93, type metadata accessor for SiriUtilities.CompletedGroup);
          v49 = v38;
          v50 = _s19RemindersAppIntents13SiriUtilitiesO14CompletedGroupO2eeoiySbAE_AEtFZ_0(v47, v48);
          sub_261CD1888(v48, type metadata accessor for SiriUtilities.CompletedGroup);
          sub_261CD1888(v47, type metadata accessor for SiriUtilities.CompletedGroup);
          sub_261CD1888(v49, type metadata accessor for SiriUtilities.Grouping);
          return v50 & 1;
        }

        v78 = type metadata accessor for SiriUtilities.CompletedGroup;
        v79 = v47;
        goto LABEL_38;
      }

      sub_261CD38A8(v38, v22, type metadata accessor for SiriUtilities.Grouping);
      v53 = *v22;
      v54 = v22[8];
      v71 = *(v22 + 2);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v56 = *v39;
        v57 = v39[8];
        v72 = *(v39 + 2);
        v102 = v53;
        v103 = v54;
        v100 = v56;
        v101 = v57;
        if (_s19RemindersAppIntents13SiriUtilitiesO6ListIDO2eeoiySbAE_AEtFZ_0(&v102, &v100))
        {
          v59 = sub_261CC6238(v71, v72);
          goto LABEL_24;
        }

        goto LABEL_35;
      }
    }

    sub_261CCFEB4(v53, v54);
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_261CD38A8(v38, v29, type metadata accessor for SiriUtilities.Grouping);
      v51 = *(v29 + 1);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_31;
      }

      v52 = *(v39 + 1);
      if (*v29 != *v39)
      {

LABEL_36:
        sub_261CD1888(v38, type metadata accessor for SiriUtilities.Grouping);
LABEL_40:
        v50 = 0;
        return v50 & 1;
      }

      goto LABEL_29;
    }

    v74 = v95;
    sub_261CD38A8(v38, v95, type metadata accessor for SiriUtilities.Grouping);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v75 = v91;
      sub_261CD3840(v39, v91, type metadata accessor for SiriUtilities.ScheduledGroup);
      v76 = v38;
      v50 = _s19RemindersAppIntents13SiriUtilitiesO14ScheduledGroupO2eeoiySbAE_AEtFZ_0(v74, v75);
      sub_261CD1888(v75, type metadata accessor for SiriUtilities.ScheduledGroup);
      sub_261CD1888(v74, type metadata accessor for SiriUtilities.ScheduledGroup);
LABEL_30:
      sub_261CD1888(v76, type metadata accessor for SiriUtilities.Grouping);
      return v50 & 1;
    }

    v78 = type metadata accessor for SiriUtilities.ScheduledGroup;
    v79 = v74;
LABEL_38:
    sub_261CD1888(v79, v78);
    goto LABEL_39;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_261CD38A8(v38, v33, type metadata accessor for SiriUtilities.Grouping);
    v44 = *v33;
    v43 = v33[1];
    v46 = v33[2];
    v45 = v33[3];
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_31:

LABEL_39:
      sub_261AE6A40(v38, &qword_27FEDE388, &qword_261D11C78);
      goto LABEL_40;
    }

    v81 = v38;
    v82 = v41;
    v84 = *v41;
    v83 = *(v41 + 1);
    v85 = *(v41 + 2);
    v86 = *(v82 + 3);
    sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
    v87 = sub_261D000F4();

    if (v87)
    {
      if (v43 == v83 && v46 == v85)
      {

LABEL_50:
        sub_261CC60D4(v45, v86);
        v50 = v89;

        sub_261CD1888(v81, type metadata accessor for SiriUtilities.Grouping);
        return v50 & 1;
      }

      v88 = sub_261D00614();

      if (v88)
      {
        goto LABEL_50;
      }
    }

    else
    {
    }

    sub_261CD1888(v81, type metadata accessor for SiriUtilities.Grouping);
    goto LABEL_40;
  }

  v60 = v38;
  v61 = v94;
  sub_261CD38A8(v38, v94, type metadata accessor for SiriUtilities.Grouping);
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE358, &qword_261D11BD0) + 48);
  v63 = *(v61 + v62);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    (*(v97 + 8))(v61, v98);
    v38 = v60;
    goto LABEL_39;
  }

  v64 = *&v39[v62];
  v66 = v97;
  v65 = v98;
  v67 = v92;
  (*(v97 + 32))(v92, v39, v98);
  v68 = MEMORY[0x266719D60](v61, v67);
  v69 = *(v66 + 8);
  v69(v61, v65);
  if ((v68 & 1) == 0)
  {
    v69(v67, v65);

    sub_261CD1888(v60, type metadata accessor for SiriUtilities.Grouping);
    goto LABEL_40;
  }

  sub_261CC60D4(v63, v64);
  v50 = v70;

  v69(v67, v65);
  sub_261CD1888(v60, type metadata accessor for SiriUtilities.Grouping);
  return v50 & 1;
}

uint64_t _s19RemindersAppIntents13SiriUtilitiesO12ListContentsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *a2;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  v12 = *a1;
  v13 = v7;
  v10 = v4;
  v11 = v8;
  sub_261CCFD68(v12, v7);
  sub_261CCFD68(v4, v8);
  LOBYTE(v4) = _s19RemindersAppIntents13SiriUtilitiesO6ListIDO2eeoiySbAE_AEtFZ_0(&v12, &v10);
  sub_261CCFEB4(v10, v11);
  sub_261CCFEB4(v12, v13);
  if ((v4 & 1) == 0 || (sub_261CC6238(v3, v6) & 1) == 0)
  {
    return 0;
  }

  return sub_261CC65F8(v2, v5);
}

uint64_t _s19RemindersAppIntents13SiriUtilitiesO12ReminderLiteV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
  if (sub_261D000F4())
  {
    if (v3)
    {
      if (v4)
      {
        sub_261CFD104();
        sub_261CC60D4(v3, v4);
        v7 = v6;

        if (v7)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

id sub_261CCFD68(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

unint64_t sub_261CCFDA0()
{
  result = qword_27FEDE308;
  if (!qword_27FEDE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE308);
  }

  return result;
}

unint64_t sub_261CCFDF8()
{
  result = qword_27FEDE310;
  if (!qword_27FEDE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE310);
  }

  return result;
}

unint64_t sub_261CCFE50()
{
  result = qword_27FEDE318;
  if (!qword_27FEDE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE318);
  }

  return result;
}

void sub_261CCFEB4(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t _s6ListIDOwca(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_261CCFD68(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_261CCFEB4(v5, v6);
  return a1;
}

uint64_t _s6ListIDOwta(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_261CCFEB4(v4, v5);
  return a1;
}

uint64_t _s12ReminderLiteVwxx(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t _s12ReminderLiteVwca(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  sub_261CFD104();

  return a1;
}

uint64_t _s12ReminderLiteVwta(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t _s14TodayGroupTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14TodayGroupTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t *_s3DayVwCP(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
  }

  else
  {
    v7 = sub_261CFD7E4();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    sub_261CFD104();
  }

  return a1;
}

uint64_t _s3DayVwxx(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFD7E4();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20));
}

uint64_t _s3DayVwcp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_261CFD104();
  return a1;
}

uint64_t _s3DayVwca(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);
  sub_261CFD104();

  return a1;
}

uint64_t _s3DayVwtk(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}