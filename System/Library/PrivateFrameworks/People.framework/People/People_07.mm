uint64_t sub_22F0753F0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 216) = a5;
  *(v6 + 224) = a6;
  *(v6 + 208) = a1;
  *(v6 + 192) = a3;
  *(v6 + 200) = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1418, &qword_22F0D7460) - 8) + 64) + 15;
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0754A0, 0, 0);
}

uint64_t sub_22F0754A0()
{
  v47 = v0;
  v1 = *(v0 + 200);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v45 = **(v0 + 192);
    while (1)
    {
      v4 = *(v0 + 240);
      v5 = *(v0 + 216);
      v6 = *(v0 + 208);
      v7 = v3[3];
      v8 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v7);
      v9 = (*(v8 + 8))(v7, v8);
      v11 = v10;
      v12 = sub_22F0D10EC();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v4, 1, 1, v12);
      sub_22EFFFB40(v3, v0 + 16);
      v14 = swift_allocObject();
      v14[2] = 0;
      v15 = v14 + 2;
      v14[3] = 0;
      v14[4] = v6;
      sub_22EFE6B9C((v0 + 16), (v14 + 5));
      v14[10] = v5;
      v14[11] = v9;
      v44 = v9;
      v14[12] = v11;
      sub_22F0CFF1C();
      sub_22F0CFF1C();
      v16 = swift_taskGroup_addPending();
      v17 = *(v0 + 240);
      if (v16)
      {
        break;
      }

      sub_22F003A4C(v17, &qword_27DAA1418, &qword_22F0D7460);
      sub_22F0D00CC();
      if (qword_280CBDBB0 != -1)
      {
        swift_once();
      }

      v25 = sub_22F0D0A1C();
      __swift_project_value_buffer(v25, qword_280CBDBB8);
      sub_22F0CFF1C();
      v26 = sub_22F0D09FC();
      v27 = sub_22F0D123C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v46 = v29;
        *v28 = 136315138;
        v30 = sub_22F00A560(v44, v11, &v46);

        *(v28 + 4) = v30;
        v31 = v27;
        v32 = v26;
        v33 = "Task add failed for %s";
LABEL_21:
        _os_log_impl(&dword_22EFE1000, v32, v31, v33, v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x2318FE8B0](v29, -1, -1);
        MEMORY[0x2318FE8B0](v28, -1, -1);

        goto LABEL_4;
      }

LABEL_3:

LABEL_4:
      v3 += 5;
      if (!--v2)
      {
        goto LABEL_22;
      }
    }

    v18 = *(v0 + 232);
    sub_22F01B0B8(v17, v18);
    v19 = (*(v13 + 48))(v18, 1, v12);
    v20 = *(v0 + 232);
    if (v19 == 1)
    {
      sub_22F003A4C(*(v0 + 232), &qword_27DAA1418, &qword_22F0D7460);
      if (*v15)
      {
LABEL_8:
        v21 = v14[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = sub_22F0D106C();
        v24 = v23;
        swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    else
    {
      sub_22F0D10DC();
      (*(v13 + 8))(v20, v12);
      if (*v15)
      {
        goto LABEL_8;
      }
    }

    v22 = 0;
    v24 = 0;
LABEL_15:
    sub_22F0CFFAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1CD0, &qword_22F0D8BA0);
    v34 = v24 | v22;
    if (v24 | v22)
    {
      v34 = v0 + 56;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v22;
      *(v0 + 80) = v24;
    }

    v35 = *(v0 + 240);
    *(v0 + 112) = 1;
    *(v0 + 120) = v34;
    *(v0 + 128) = v45;
    swift_task_create();
    sub_22F0D00CC();
    sub_22F0D00CC();
    sub_22F003A4C(v35, &qword_27DAA1418, &qword_22F0D7460);
    if (qword_280CBDBB0 != -1)
    {
      swift_once();
    }

    v36 = sub_22F0D0A1C();
    __swift_project_value_buffer(v36, qword_280CBDBB8);
    sub_22F0CFF1C();
    v26 = sub_22F0D09FC();
    v37 = sub_22F0D122C();

    if (os_log_type_enabled(v26, v37))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v46 = v29;
      *v28 = 136315138;
      v38 = sub_22F00A560(v44, v11, &v46);

      *(v28 + 4) = v38;
      v31 = v37;
      v32 = v26;
      v33 = "Added task for %s";
      goto LABEL_21;
    }

    goto LABEL_3;
  }

LABEL_22:
  v39 = *(MEMORY[0x277D85810] + 4);
  v40 = swift_task_alloc();
  *(v0 + 248) = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1CD8, &qword_22F0D8BD8);
  *v40 = v0;
  v40[1] = sub_22F075A50;
  v42 = *(v0 + 192);

  return MEMORY[0x2822004C0](v0 + 152, v41);
}

uint64_t sub_22F075A50()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v6 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_22F0763BC;
  }

  else
  {
    *(v2 + 264) = *(v2 + 152);
    *(v2 + 161) = *(v2 + 160);
    v4 = sub_22F075B74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22F075B74()
{
  v88 = v0;
  v1 = *(v0 + 161);
  if (v1 != 255)
  {
    v2 = *(v0 + 264);
    if ((v1 & 1) == 0)
    {
      if (v2)
      {
        isUniquelyReferenced_nonNull_native = v2 + 64;
        v20 = -1 << *(v2 + 32);
        if (-v20 < 64)
        {
          v21 = ~(-1 << -v20);
        }

        else
        {
          v21 = -1;
        }

        v22 = v21 & *(v2 + 64);
        sub_22F077378(*(v0 + 264), v1);
        sub_22F015CE4(v2, 0);
        v3 = 0;
        v23 = (63 - v20) >> 6;
        v83 = v23;
        v84 = v2 + 64;
        v85 = v2;
        while (1)
        {
          if (!v22)
          {
            while (1)
            {
              v24 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                break;
              }

              if (v24 >= v23)
              {
                v56 = *(v0 + 264);
                v57 = *(v0 + 161);
                sub_22F0D00CC();
                sub_22F059B88(v56, v57);
                v15 = v56;
                LOBYTE(v1) = v57;
                goto LABEL_52;
              }

              v22 = *(isUniquelyReferenced_nonNull_native + 8 * v24);
              ++v3;
              if (v22)
              {
                v3 = v24;
                goto LABEL_22;
              }
            }

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
            __break(1u);
            goto LABEL_66;
          }

LABEL_22:
          v25 = *(v0 + 224);
          v26 = __clz(__rbit64(v22)) | (v3 << 6);
          v27 = *(v2 + 56);
          v28 = (*(v2 + 48) + 16 * v26);
          v29 = *v28;
          v30 = v28[1];
          v31 = *(v27 + 8 * v26);
          sub_22F0CFF1C();
          sub_22F0CFF1C();
          v32 = *v25;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = *v25;
          v34 = v0;
          *(v0 + 184) = *v25;
          *v25 = 0x8000000000000000;
          v86 = v30;
          v36 = sub_22EFFDA80(v29, v30);
          v37 = *(v33 + 16);
          v38 = (v35 & 1) == 0;
          v39 = v37 + v38;
          if (__OFADD__(v37, v38))
          {
            goto LABEL_60;
          }

          v40 = v35;
          if (*(v33 + 24) >= v39)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_22F05FF84();
              v33 = *(v0 + 184);
            }

            isUniquelyReferenced_nonNull_native = v86;
          }

          else
          {
            sub_22F07A2A4(v39, isUniquelyReferenced_nonNull_native);
            v33 = *(v0 + 184);
            isUniquelyReferenced_nonNull_native = v86;
            v41 = sub_22EFFDA80(v29, v86);
            if ((v40 & 1) != (v42 & 1))
            {

              return sub_22F0D191C();
            }

            v36 = v41;
          }

          v0 = *(v0 + 224);
          v43 = *v0;
          *v0 = v33;

          v44 = *v0;
          if ((v40 & 1) == 0)
          {
            v44[(v36 >> 6) + 8] |= 1 << v36;
            v45 = (v44[6] + 16 * v36);
            *v45 = v29;
            v45[1] = isUniquelyReferenced_nonNull_native;
            *(v44[7] + 8 * v36) = MEMORY[0x277D84F90];
            v46 = v44[2];
            v47 = __OFADD__(v46, 1);
            v48 = v46 + 1;
            if (v47)
            {
              goto LABEL_64;
            }

            v44[2] = v48;
            sub_22F0CFF1C();
          }

          isUniquelyReferenced_nonNull_native = v44[7];
          v49 = *(v31 + 16);
          v50 = *(isUniquelyReferenced_nonNull_native + 8 * v36);
          v51 = v50[2];
          v0 = v51 + v49;
          if (__OFADD__(v51, v49))
          {
            goto LABEL_61;
          }

          sub_22F0CFF1C();
          v52 = swift_isUniquelyReferenced_nonNull_native();
          *(isUniquelyReferenced_nonNull_native + 8 * v36) = v50;
          if (!v52 || v0 > v50[3] >> 1)
          {
            if (v51 <= v0)
            {
              v53 = v51 + v49;
            }

            else
            {
              v53 = v51;
            }

            v50 = sub_22F03CB00(v52, v53, 1, v50);
            *(isUniquelyReferenced_nonNull_native + 8 * v36) = v50;
          }

          v0 = v34;
          v2 = v85;
          if (*(v31 + 16))
          {
            if ((v50[3] >> 1) - v50[2] < v49)
            {
              goto LABEL_63;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA06E0, &qword_22F0D2C10);
            swift_arrayInitWithCopy();

            if (v49)
            {
              v54 = v50[2];
              v47 = __OFADD__(v54, v49);
              v55 = v54 + v49;
              if (v47)
              {
                goto LABEL_65;
              }

              v50[2] = v55;
            }
          }

          else
          {

            if (v49)
            {
              goto LABEL_62;
            }
          }

          v22 &= v22 - 1;
          *(isUniquelyReferenced_nonNull_native + 8 * v36) = v50;

          v23 = v83;
          isUniquelyReferenced_nonNull_native = v84;
        }
      }

      v15 = 0;
      goto LABEL_52;
    }

    *(v0 + 168) = v2;
    sub_22F015CE4(v2, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
    if (swift_dynamicCast())
    {
      isUniquelyReferenced_nonNull_native = *(v0 + 136);
      v3 = *(v0 + 144);
      if (qword_280CBDBB0 != -1)
      {
LABEL_66:
        swift_once();
      }

      v5 = sub_22F0D0A1C();
      __swift_project_value_buffer(v5, qword_280CBDBB8);
      sub_22F0CFF1C();
      v6 = sub_22F0D09FC();
      v7 = sub_22F0D123C();

      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 161);
      v10 = *(v0 + 264);
      if (v8)
      {
        v11 = *(v0 + 208);
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v87 = v13;
        *v12 = 136315394;
        v14 = sub_22F00A560(isUniquelyReferenced_nonNull_native, v3, &v87);

        *(v12 + 4) = v14;
        *(v12 + 12) = 2048;
        *(v12 + 14) = v11;
        _os_log_impl(&dword_22EFE1000, v6, v7, "%s exceeded %f", v12, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x2318FE8B0](v13, -1, -1);
        MEMORY[0x2318FE8B0](v12, -1, -1);

        v15 = v10;
        LOBYTE(v1) = v9;
LABEL_52:
        sub_22F059B88(v15, v1);
        goto LABEL_53;
      }

      sub_22F059B88(v10, v9);
    }

    else
    {
      if (qword_280CBE8C0 != -1)
      {
        swift_once();
      }

      v58 = *(v0 + 264);
      v59 = sub_22F0D0A1C();
      __swift_project_value_buffer(v59, qword_280CBE8C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA07B0, &qword_22F0D2C58);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_22F0D2BF0;
      swift_getErrorValue();
      v61 = *(v0 + 88);
      v62 = *(v0 + 96);
      v63 = *(v0 + 104);
      sub_22F015CE4(v58, 1);
      v64 = v2;
      v65 = sub_22F0D192C();
      v67 = v66;
      *(v60 + 56) = MEMORY[0x277D837D0];
      *(v60 + 64) = sub_22F03DB30();
      *(v60 + 32) = v65;
      *(v60 + 40) = v67;
      v68 = sub_22F0D0CCC();
      v70 = v69;
      v71 = sub_22F0D09FC();
      v72 = sub_22F0D123C();
      v73 = os_log_type_enabled(v71, v72);
      v74 = *(v0 + 161);
      v75 = *(v0 + 264);
      if (!v73)
      {

        sub_22F059B88(v75, v74);

        sub_22F059B88(v75, v74);
        v15 = v75;
        LOBYTE(v1) = v74;
        goto LABEL_52;
      }

      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v87 = v77;
      *v76 = 136315138;
      v78 = sub_22F00A560(v68, v70, &v87);

      *(v76 + 4) = v78;
      _os_log_impl(&dword_22EFE1000, v71, v72, "%s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x2318FE8B0](v77, -1, -1);
      MEMORY[0x2318FE8B0](v76, -1, -1);

      sub_22F059B88(v75, v74);
      sub_22F059B88(v75, v74);
      sub_22F015BE4(v75, 1);
    }

LABEL_53:
    v79 = *(MEMORY[0x277D85810] + 4);
    v80 = swift_task_alloc();
    *(v0 + 248) = v80;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1CD8, &qword_22F0D8BD8);
    *v80 = v0;
    v80[1] = sub_22F075A50;
    v82 = *(v0 + 192);

    return MEMORY[0x2822004C0](v0 + 152, v81);
  }

  v17 = *(v0 + 232);
  v16 = *(v0 + 240);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_22F0763D8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 96) = a2;
  *(v8 + 88) = a1;
  v9 = sub_22F0D08DC();
  *(v8 + 136) = v9;
  v10 = *(v9 - 8);
  *(v8 + 144) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0764A4, 0, 0);
}

uint64_t sub_22F0764A4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = sub_22F0D1A0C();
  v8 = v7;
  sub_22EFFFB40(v3, v0 + 16);
  v9 = swift_allocObject();
  *(v0 + 160) = v9;
  sub_22EFE6B9C((v0 + 16), (v9 + 2));
  v9[7] = v4;
  v9[8] = v2;
  v9[9] = v1;
  v10 = *(MEMORY[0x277CE4600] + 4);
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1CD0, &qword_22F0D8BA0);
  *v11 = v0;
  v11[1] = sub_22F0765EC;
  v13 = *(v0 + 88);

  return MEMORY[0x2821372C0](v13, v6, v8, &unk_22F0D8BE8, v9, v12);
}

uint64_t sub_22F0765EC()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (!v0)
  {
    v5 = v3[19];
    v4 = v3[20];
    sub_22F0D00CC();

    v6 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_22F076734, 0, 0);
}

uint64_t sub_22F076734()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  sub_22F0D00CC();
  *(v0 + 72) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 176);
  if (v4)
  {
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);

    v8 = *(v0 + 64);

    sub_22F077450();
    swift_allocError();
    *v9 = v7;
    v9[1] = v6;
    swift_willThrow();
    v10 = *(v0 + 72);
    sub_22F0CFF1C();
  }

  else
  {
    v11 = *(v0 + 152);
    v12 = *(v0 + 136);

    *(v0 + 80) = v5;
    v13 = v5;
    if (swift_dynamicCast())
    {
      v15 = *(v0 + 144);
      v14 = *(v0 + 152);
      v17 = *(v0 + 128);
      v16 = *(v0 + 136);
      v18 = *(v0 + 120);

      sub_22F077450();
      swift_allocError();
      *v19 = v18;
      v19[1] = v17;
      swift_willThrow();
      v20 = *(v15 + 8);
      sub_22F0CFF1C();
      v20(v14, v16);
    }

    else
    {

      v21 = *(v0 + 176);
    }
  }

  v22 = *(v0 + 152);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_22F076910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_22F0D05BC();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0769E4, 0, 0);
}

uint64_t sub_22F0769E4()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = v0[7];
  v4 = sub_22F0774A4(v2);
  v6 = v5;
  v7 = sub_22F0775A8(v2);
  v0[14] = _s6People0A9AnalyticsC24statusCoalescerStopwatch_9typeNames12contactCountAC9StopWatchCSS_SaySSGSitFZ_0(v4, v6, v7, *(v3 + 16));

  sub_22F0D05AC();
  v8 = v2[3];
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  v10 = *(v9 + 16);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_22F076B74;
  v13 = v0[7];

  return v15(v13, v8, v9);
}

uint64_t sub_22F076B74(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[15];
  v8 = *v2;
  v4[16] = v1;

  if (v1)
  {
    v6 = sub_22F076F08;
  }

  else
  {
    v6 = sub_22F076C90;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22F076C90()
{
  v29 = v0;
  if (qword_280CBDBB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = sub_22F0D0A1C();
  __swift_project_value_buffer(v6, qword_280CBDBB8);
  (*(v4 + 16))(v1, v2, v3);
  sub_22F0CFF1C();
  v7 = sub_22F0D09FC();
  v8 = sub_22F0D124C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  if (v9)
  {
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v27 = *(v0 + 104);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_22F00A560(v15, v14, &v28);
    *(v16 + 12) = 2048;
    sub_22F0D056C();
    v19 = v18;
    v20 = *(v12 + 8);
    v20(v10, v13);
    *(v16 + 14) = -v19;
    _os_log_impl(&dword_22EFE1000, v7, v8, "source: %s elapsed %f", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x2318FE8B0](v17, -1, -1);
    MEMORY[0x2318FE8B0](v16, -1, -1);

    v20(v27, v13);
  }

  else
  {

    v21 = *(v12 + 8);
    v21(v10, v13);
    v21(v11, v13);
  }

  v22 = *(v0 + 104);
  v23 = *(v0 + 112);
  v24 = *(v0 + 96);
  **(v0 + 40) = *(v0 + 24);
  sub_22F076FAC(v23);
  sub_22F0D00CC();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_22F076F08()
{
  v1 = v0[14];
  v2 = v0[12];
  (*(v0[11] + 8))(v0[13], v0[10]);
  sub_22F076FAC(v1);
  sub_22F0D00CC();

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_22F076FAC(uint64_t a1)
{
  v2 = sub_22F0D05BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 56) == 1 && (*(a1 + 40) & 1) == 0)
  {
    v8 = *(a1 + 32);
    v9 = result;
    sub_22F0D05AC();
    sub_22F0D04CC();
    v11 = v10;
    (*(v3 + 8))(v7, v9);
    v12 = v11 - v8;
    *(a1 + 48) = v12;
    *(a1 + 56) = 0;
    if (qword_280CBE8A8 != -1)
    {
      swift_once();
    }

    v21 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F0D2BF0;
    *(inited + 32) = 0x5464657370616C65;
    v14 = inited + 32;
    v15 = MEMORY[0x277D839F8];
    *(inited + 40) = 0xEB00000000656D69;
    *(inited + 72) = v15;
    *(inited + 80) = &protocol witness table for Double;
    *(inited + 48) = v12;
    v16 = sub_22F07D320(inited);
    swift_setDeallocating();
    sub_22F003A4C(v14, &qword_27DAA14D0, &qword_22F0D8880);
    v17 = *(a1 + 24);
    v18 = sub_22F0CFF1C();
    v19 = sub_22F08F1EC(v18, v16);

    sub_22F08FCF8(&v21, v19);
  }

  return result;
}

uint64_t sub_22F0771C0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v9 = *(v2 + 4);
  v8 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22F00CF60;

  return sub_22F0753F0(v7, a1, a2, v6, v9, v8);
}

uint64_t sub_22F07729C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 10);
  v8 = *(v1 + 11);
  v9 = *(v1 + 12);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22F00CF60;

  return sub_22F0763D8(a1, v6, v4, v5, (v1 + 5), v7, v8, v9);
}

id sub_22F077378(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_22F015CE4(result, a2 & 1);
  }

  return result;
}

uint64_t sub_22F077390(uint64_t a1)
{
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22F00CD54;

  return sub_22F076910(a1, (v1 + 2), v4, v5, v6);
}

unint64_t sub_22F077450()
{
  result = qword_27DAA1CE0;
  if (!qword_27DAA1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1CE0);
  }

  return result;
}

uint64_t sub_22F0774A4(uint64_t a1)
{
  sub_22EFFFB40(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E00, &qword_22F0D4FD0);
  type metadata accessor for DaemonStatusFetcher();
  if (swift_dynamicCast())
  {
    sub_22F0D00CC();
    v1 = 0x6E6F6D656164;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E18, &qword_22F0D4FE8);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v3);
      v1 = 0x7320737574617473;
    }

    else
    {
      v1 = 0x6E776F6E6B6E75;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v1;
}

void *sub_22F0775A8(uint64_t a1)
{
  sub_22EFFFB40(a1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E00, &qword_22F0D4FD0);
  type metadata accessor for DaemonStatusFetcher();
  if (swift_dynamicCast())
  {
    v1 = *(v32 + 16);
    v2 = *(v1 + 16);
    if (v2)
    {
      v29[0] = MEMORY[0x277D84F90];
      sub_22EFFC4E8(0, v2, 0);
      v3 = 0xEF74736575716552;
      v4 = v29[0];
      v5 = (v1 + 32);
      do
      {
        v7 = *v5++;
        v6 = v7;
        v8 = v7 == 8;
        v9 = 0xEA00000000006C6CLL;
        if (v7 == 8)
        {
          v10 = 0x614364657373696DLL;
        }

        else
        {
          v10 = 0x7261646E656C6163;
        }

        if (!v8)
        {
          v9 = 0xE800000000000000;
        }

        if (v6 == 7)
        {
          v10 = 0x7373654D64616572;
          v9 = 0xEB00000000656761;
        }

        if (v6 == 5)
        {
          v11 = 0x617453646C696863;
        }

        else
        {
          v11 = 0x654D646165726E75;
        }

        if (v6 == 5)
        {
          v12 = 0xEA00000000006574;
        }

        else
        {
          v12 = 0xED00006567617373;
        }

        if (v6 <= 6)
        {
          v10 = v11;
          v9 = v12;
        }

        v13 = 0xD000000000000011;
        if (v6 == 3)
        {
          v13 = 0x7975426F546B7361;
          v14 = v3;
        }

        else
        {
          v14 = 0x800000022F0DC350;
        }

        if (v6 == 2)
        {
          v13 = 0x6E6F697461636F6CLL;
          v14 = 0xE800000000000000;
        }

        v15 = 0xEB00000000657461;
        v16 = 0x74536E6F69746F6DLL;
        if (!v6)
        {
          v16 = 0x6C69617641646E64;
          v15 = 0xEF7974696C696261;
        }

        if (v6 <= 1)
        {
          v13 = v16;
          v14 = v15;
        }

        if (v6 <= 4)
        {
          v17 = v13;
        }

        else
        {
          v17 = v10;
        }

        if (v6 <= 4)
        {
          v18 = v14;
        }

        else
        {
          v18 = v9;
        }

        v29[0] = v4;
        v20 = v4[2];
        v19 = v4[3];
        if (v20 >= v19 >> 1)
        {
          v22 = v3;
          sub_22EFFC4E8((v19 > 1), v20 + 1, 1);
          v3 = v22;
          v4 = v29[0];
        }

        v4[2] = v20 + 1;
        v21 = &v4[2 * v20];
        v21[4] = v17;
        v21[5] = v18;
        --v2;
      }

      while (v2);
      sub_22F0D00CC();
    }

    else
    {
      sub_22F0D00CC();
      v4 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E18, &qword_22F0D4FE8);
    if (swift_dynamicCast())
    {
      sub_22EFE6B9C(&v32, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
      v4 = swift_allocObject();
      *(v4 + 1) = xmmword_22F0D2BF0;
      v23 = v30;
      v24 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      (*(v24 + 16))(&v28, v23, v24);
      if (v28 > 4u)
      {
        if (v28 <= 6u)
        {
          if (v28 == 5)
          {
            v25 = 0x617453646C696863;
            v26 = 0xEA00000000006574;
          }

          else
          {
            v25 = 0x654D646165726E75;
            v26 = 0xED00006567617373;
          }
        }

        else if (v28 == 7)
        {
          v25 = 0x7373654D64616572;
          v26 = 0xEB00000000656761;
        }

        else if (v28 == 8)
        {
          v26 = 0xEA00000000006C6CLL;
          v25 = 0x614364657373696DLL;
        }

        else
        {
          v26 = 0xE800000000000000;
          v25 = 0x7261646E656C6163;
        }
      }

      else if (v28 <= 1u)
      {
        if (v28)
        {
          v26 = 0xEB00000000657461;
          v25 = 0x74536E6F69746F6DLL;
        }

        else
        {
          v26 = 0xEF7974696C696261;
          v25 = 0x6C69617641646E64;
        }
      }

      else if (v28 == 2)
      {
        v26 = 0xE800000000000000;
        v25 = 0x6E6F697461636F6CLL;
      }

      else if (v28 == 3)
      {
        v25 = 0x7975426F546B7361;
        v26 = 0xEF74736575716552;
      }

      else
      {
        v26 = 0x800000022F0DC350;
        v25 = 0xD000000000000011;
      }

      v4[4] = v25;
      v4[5] = v26;
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }

    else
    {
      v4 = &unk_2843CB140;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return v4;
}

uint64_t static PeopleFeatureFlags.shared.getter()
{
  type metadata accessor for PeopleFeatureFlags();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_22F07CF94(MEMORY[0x277D84F90]);
  if (qword_280CBEEF0 != -1)
  {
    swift_once();
  }

  v1 = (*(*off_280CBEEF8 + 136))();
  swift_beginAccess();
  v2 = *(v0 + 16);
  *(v0 + 16) = v1;

  return v0;
}

uint64_t static FeatureFlagsProvider.== infix(_:_:)()
{
  v0 = sub_22F077D20();
  v2 = v1;
  if (v0 == sub_22F077D20() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_22F0D188C();
  }

  return v4 & 1;
}

People::PeopleFeatureFlagNames_optional __swiftcall PeopleFeatureFlagNames.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22F077D08()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t sub_22F077D14()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return result;
}

uint64_t sub_22F077D20()
{
  v1 = 0;
  v2 = *(*v0 + 136);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = byte_2843C9F68[v1 + 32];
    v5 = v2();
    if (*(v5 + 16) && (v6 = sub_22EFFD904(v4), (v7 & 1) != 0))
    {
      v8 = *(*(v5 + 56) + v6);

      if (v8)
      {
        v24 = v3;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22EFFC508(0, *(v3 + 2) + 1, 1);
          v3 = v24;
        }

        v10 = *(v3 + 2);
        v9 = *(v3 + 3);
        if (v10 >= v9 >> 1)
        {
          sub_22EFFC508((v9 > 1), v10 + 1, 1);
          v3 = v24;
        }

        *(v3 + 2) = v10 + 1;
        v3[v10 + 32] = v4;
      }
    }

    else
    {
    }

    ++v1;
  }

  while (v1 != 8);
  v11 = *(v3 + 2);
  if (v11)
  {
    v24 = MEMORY[0x277D84F90];
    sub_22EFFC4E8(0, v11, 0);
    v12 = 32;
    v13 = v24;
    do
    {
      v23 = v3[v12];
      v14 = sub_22F0D183C();
      v24 = v13;
      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      if (v17 >= v16 >> 1)
      {
        v19 = v14;
        v20 = v15;
        sub_22EFFC4E8((v16 > 1), v17 + 1, 1);
        v15 = v20;
        v14 = v19;
        v13 = v24;
      }

      *(v13 + 2) = v17 + 1;
      v18 = &v13[16 * v17];
      *(v18 + 4) = v14;
      *(v18 + 5) = v15;
      ++v12;
      --v11;
    }

    while (v11);
    sub_22F0D00CC();
  }

  else
  {
    sub_22F0D00CC();
    v13 = MEMORY[0x277D84F90];
  }

  v24 = v13;
  sub_22F0CFF1C();
  sub_22F07C55C(&v24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
  sub_22F0419F0(&qword_27DAA1D88, &unk_27DAA0DE0, &unk_22F0D4FB0);
  v21 = sub_22F0D0BAC();
  sub_22F0D00CC();
  return v21;
}

uint64_t sub_22F077FEC()
{
  sub_22F077D20();
  sub_22F0D0D5C();
}

uint64_t sub_22F078050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22F0D188C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22F0780D4(uint64_t a1)
{
  v2 = sub_22F07D074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F078110(uint64_t a1)
{
  v2 = sub_22F07D074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F07814C(void *a1)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1CF0, &qword_22F0D8CA0);
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v41 = &v38 - v5;
  v6 = *(*v1 + 136);
  v45 = *v1 + 136;
  v46 = v6;
  v7 = v6(v4);
  v8 = v7;
  v9 = v7 + 64;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = sub_22F0CFF1C();
  v15 = 0;
  v44 = MEMORY[0x277D84F98];
  while (v12)
  {
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = *(*(v8 + 48) + (v17 | (v15 << 6)));
    v19 = v46(v14);
    if (*(v19 + 16) && (v20 = sub_22EFFD904(v18), (v21 & 1) != 0))
    {
      v22 = *(*(v19 + 56) + v20);

      if (v22)
      {
        v23 = v44;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v23;
        v25 = sub_22EFFDADC(v18);
        v26 = v23[2];
        v27 = (v24 & 1) == 0;
        v14 = v26 + v27;
        if (__OFADD__(v26, v27))
        {
          goto LABEL_25;
        }

        v28 = v24;
        if (v23[3] >= v14)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v44 = v25;
            v14 = sub_22F060EF4();
            v25 = v44;
          }
        }

        else
        {
          sub_22F07BA1C(v14, isUniquelyReferenced_nonNull_native);
          v14 = sub_22EFFDADC(v18);
          if ((v28 & 1) != (v29 & 1))
          {
            goto LABEL_27;
          }

          v25 = v14;
        }

        v30 = v47;
        v44 = v47;
        if (v28)
        {
          *(v47[7] + v25) = 1;
        }

        else
        {
          v47[(v25 >> 6) + 8] |= 1 << v25;
          *(v30[6] + 8 * v25) = v18;
          *(v30[7] + v25) = 1;
          v31 = v30[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_26;
          }

          v30[2] = v33;
        }
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      sub_22F0D00CC();

      v34 = v40[4];
      __swift_project_boxed_opaque_existential_1(v40, v40[3]);
      sub_22F07D074();
      v35 = v41;
      sub_22F0D19FC();
      v47 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D00, &qword_22F0D8CA8);
      sub_22F07D0C8(&qword_27DAA1D08);
      v36 = v43;
      sub_22F0D180C();
      (*(v42 + 8))(v35, v36);
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22F0D191C();
  __break(1u);
  return result;
}

uint64_t sub_22F078508(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D10, &qword_22F0D8CB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F07D074();
  result = sub_22F0D19EC();
  if (v2)
  {
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D00, &qword_22F0D8CA8);
  sub_22F07D0C8(&qword_27DAA1D18);
  sub_22F0D17BC();
  v59 = 0;
  v58 = v6;
  v12 = v60[0];
  v13 = (*v3 + 152);
  v56 = *v13;
  v57 = v3;
  v55 = v13;
  v14 = v56(v60);
  v16 = v15;
  v17 = *v15;

  *v16 = MEMORY[0x277D84F98];
  v14(v60, 0);
  v18 = v12 + 64;
  v19 = 1 << *(v12 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v12 + 64);
  v22 = (v19 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v23 = 0;
  while (v21)
  {
LABEL_10:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = *(*(v12 + 48) + ((v23 << 9) | (8 * v25)));
    if (v26 <= 7)
    {
      if (*(v12 + 16))
      {
        v27 = sub_22EFFDADC(v26);
        if ((v28 & 1) != 0 && *(*(v12 + 56) + v27) == 1)
        {
          v54 = v12;
          v52 = v56(v60);
          v30 = v29;
          v31 = *v29;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v61 = *v30;
          v32 = v61;
          v51 = v30;
          *v30 = 0x8000000000000000;
          v34 = sub_22EFFD904(v26);
          v35 = v32[2];
          v36 = (v33 & 1) == 0;
          v37 = v35 + v36;
          if (__OFADD__(v35, v36))
          {
            goto LABEL_29;
          }

          if (v32[3] >= v37)
          {
            v12 = v54;
            if (isUniquelyReferenced_nonNull_native)
            {
              v44 = v61;
              if (v33)
              {
                goto LABEL_21;
              }
            }

            else
            {
              isUniquelyReferenced_nonNull_native = v33;
              v50 = v34;
              sub_22F05F840();
              v34 = v50;
              v44 = v61;
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_21;
              }
            }
          }

          else
          {
            v38 = v33;
            sub_22F0795A8(v37, isUniquelyReferenced_nonNull_native);
            v39 = sub_22EFFD904(v26);
            v41 = v40 & 1;
            v42 = v38;
            v43 = v38 & 1;
            v12 = v54;
            if (v43 != v41)
            {
              goto LABEL_31;
            }

            v34 = v39;
            v44 = v61;
            if (v42)
            {
LABEL_21:
              *(v44[7] + v34) = 1;
              goto LABEL_25;
            }
          }

          v44[(v34 >> 6) + 8] |= 1 << v34;
          *(v44[6] + v34) = v26;
          *(v44[7] + v34) = 1;
          v45 = v44[2];
          v46 = __OFADD__(v45, 1);
          v47 = v45 + 1;
          if (v46)
          {
            goto LABEL_30;
          }

          v44[2] = v47;
LABEL_25:
          v48 = v52;
          v49 = *v51;
          *v51 = v44;

          v48(v60, 0);
        }
      }
    }
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {
      (*(v58 + 8))(v9, v5);
      sub_22F0D00CC();
      return swift_bridgeObjectRelease_n();
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_22F0D191C();
  __break(1u);
  return result;
}

uint64_t FeatureFlagsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_22F07CF94(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t FeatureFlagsProvider.__allocating_init(from:)(uint64_t *a1)
{
  v4 = (*(v1 + 120))();
  sub_22F078508(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (v2)
  {
    sub_22F0D00CC();
  }

  return v4;
}

uint64_t sub_22F078A58()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  return sub_22F0CFF1C();
}

uint64_t sub_22F078A90(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_22F078B28(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = (*(*v1 + 136))();
  if (*(v3 + 16) && (v4 = sub_22EFFD904(v2), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_22F078BA4()
{
  sub_22F0D199C();
  sub_22F077D20();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F078C00@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22F078CA4()
{
  v1 = *v0;
  sub_22F077D20();
  sub_22F0D0D5C();
}

uint64_t sub_22F078CF8()
{
  sub_22F0D199C();
  v1 = *v0;
  sub_22F077D20();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F078D54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22F077D20();
  v6 = v5;
  if (v4 == sub_22F077D20() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22F0D188C();
  }

  return v9 & 1;
}

void *sub_22F078DDC()
{
  type metadata accessor for PeopleFeatureFlags();
  swift_allocObject();
  result = sub_22F07905C(1);
  off_280CBEEF8 = result;
  return result;
}

uint64_t static PeopleFeatureFlags.isDomainFeatureFlagEnabled(for:feature:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v21 = sub_22F0D153C();
  v22 = v12;
  MEMORY[0x2318FD2C0](46, 0xE100000000000000);
  v13 = sub_22F0D153C();
  MEMORY[0x2318FD2C0](v13);

  if (qword_280CBDBF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = off_27DAA1CE8;
  if (*(off_27DAA1CE8 + 2) && (v15 = sub_22EFFDA80(v21, v22), (v16 & 1) != 0))
  {
    v17 = *(v14[7] + v15);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_22F07CF94(MEMORY[0x277D84F90]);
    if (qword_280CBEEF0 != -1)
    {
      swift_once();
    }

    (*(*off_280CBEEF8 + 136))();

    v17 = sub_22F07E1A8(a1, a2, a3, a4, a5, a6);

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = off_27DAA1CE8;
    off_27DAA1CE8 = 0x8000000000000000;
    sub_22F0184B4(v17 & 1, v21, v22, isUniquelyReferenced_nonNull_native);

    off_27DAA1CE8 = v20;
    swift_endAccess();
  }

  return v17 & 1;
}

uint64_t sub_22F07905C(char a1)
{
  *(v1 + 16) = sub_22F07CF94(MEMORY[0x277D84F90]);
  if ((a1 & 1) == 0)
  {
    return v1;
  }

  v35 = (v1 + 16);
  v36 = v1;
  v3 = sub_22F07CF94(MEMORY[0x277D84F90]);
  v4 = 0;
  v5 = byte_2843C9F68;
  while (1)
  {
    v6 = v5[v4 + 32];
    if (v6 <= 3)
    {
      if (v5[v4 + 32] <= 1u)
      {
        if (v5[v4 + 32])
        {
          v7 = "showCityState";
          v8 = 13;
        }

        else
        {
          v7 = "AllCoreMotionStatus";
          v8 = 19;
        }

        goto LABEL_21;
      }

      if (v6 == 2)
      {
        v7 = "CalendarPersonStatus";
        v8 = 20;
        goto LABEL_21;
      }

      v7 = "showLocationBadge";
LABEL_20:
      v8 = 17;
      goto LABEL_21;
    }

    if (v5[v4 + 32] > 5u)
    {
      if (v6 == 6)
      {
        v7 = "lockScreenWidget";
        v8 = 16;
        goto LABEL_21;
      }

      v7 = "PeopleWidgetOnMac";
      goto LABEL_20;
    }

    if (v6 == 4)
    {
      v7 = "multiBadgeInWidget";
      v8 = 18;
    }

    else
    {
      v7 = "requestsAndLocation";
      v8 = 19;
    }

LABEL_21:
    v37 = v3;
    v38[3] = &type metadata for FeatureFlagsProvider.Key;
    v38[4] = sub_22F07E98C();
    v9 = swift_allocObject();
    v38[0] = v9;
    *(v9 + 16) = "People";
    *(v9 + 24) = 6;
    *(v9 + 32) = 2;
    *(v9 + 40) = v7;
    *(v9 + 48) = v8;
    *(v9 + 56) = 2;
    v10 = sub_22F0D070C();
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    if (qword_280CBEF00 != -1)
    {
      swift_once();
    }

    v11 = sub_22F0D0A1C();
    __swift_project_value_buffer(v11, qword_280CBEF08);
    v12 = sub_22F0D09FC();
    v13 = sub_22F0D124C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = v5;
      v16 = swift_slowAlloc();
      v38[0] = v16;
      *v14 = 136315394;
      v17 = sub_22F0D153C();
      v19 = sub_22F00A560(v17, v18, v38);

      *(v14 + 4) = v19;
      *(v14 + 12) = 1024;
      *(v14 + 14) = v10 & 1;
      _os_log_impl(&dword_22EFE1000, v12, v13, "%s is enabled: %{BOOL}d", v14, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      v20 = v16;
      v5 = v15;
      MEMORY[0x2318FE8B0](v20, -1, -1);
      MEMORY[0x2318FE8B0](v14, -1, -1);
    }

    v3 = v37;
    if ((v10 & 1) == 0)
    {
      goto LABEL_4;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v37;
    v22 = sub_22EFFD904(v6);
    v24 = *(v37 + 16);
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (*(v37 + 24) < v27)
    {
      sub_22F0795A8(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_22EFFD904(v6);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_40;
      }

LABEL_31:
      v3 = v38[0];
      if (v28)
      {
        goto LABEL_3;
      }

      goto LABEL_32;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_31;
    }

    v32 = v22;
    sub_22F05F840();
    v22 = v32;
    v3 = v38[0];
    if (v28)
    {
LABEL_3:
      *(v3[7] + v22) = 1;
      goto LABEL_4;
    }

LABEL_32:
    v3[(v22 >> 6) + 8] |= 1 << v22;
    *(v3[6] + v22) = v6;
    *(v3[7] + v22) = 1;
    v30 = v3[2];
    v26 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v26)
    {
      goto LABEL_39;
    }

    v3[2] = v31;
LABEL_4:
    if (++v4 == 8)
    {
      swift_beginAccess();
      v33 = *v35;
      *v35 = v3;

      return v36;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_22F0D191C();
  __break(1u);
  return result;
}

uint64_t PeopleFeatureFlags.__allocating_init(from:)(uint64_t *a1)
{
  _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0x726F707075736E55, 0xEB00000000646574, 500);
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t PeopleFeatureFlags.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PeopleFeatureFlags.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22F0795A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1970, &qword_22F0D8478);
  result = sub_22F0D170C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      sub_22F0D199C();
      MEMORY[0x2318FDEE0](v21);
      result = sub_22F0D19CC();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_22F079828(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1948, &qword_22F0D8468);
  v36 = a2;
  result = sub_22F0D170C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_22EFE6B9C(v25, v37);
      }

      else
      {
        sub_22EFFFB40(v25, v37);
        sub_22F0CFF1C();
      }

      v26 = *(v8 + 40);
      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_22EFE6B9C(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_22F079AEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA19A8, &qword_22F0D9180);
  result = sub_22F0D170C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      result = sub_22F0D198C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    result = sub_22F0D00CC();
    v3 = v33;
  }

  else
  {
    result = sub_22F0D00CC();
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22F079D54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA19A0, &qword_22F0D8488);
  v41 = a2;
  result = sub_22F0D170C();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v42 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v43 = *v23;
      v25 = *(v5 + 56) + 24 * v22;
      v27 = *v25;
      v26 = *(v25 + 8);
      v28 = *(v25 + 16);
      if ((v41 & 1) == 0)
      {
        sub_22F0CFF1C();
        v29 = v27;
        sub_22F00AC04(v26, v28);
      }

      v30 = *(v8 + 40);
      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v43;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v27;
      v18[1] = v26;
      v18[2] = v28;
      ++*(v8 + 16);
      v5 = v40;
      v13 = v42;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22F07A034(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1988, &unk_22F0D9160);
  result = sub_22F0D170C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
        sub_22F0CFF1C();
      }

      v25 = *(v8 + 40);
      result = sub_22F0D198C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22F07A2A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA08B0, &qword_22F0D2CE0);
  v38 = a2;
  result = sub_22F0D170C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
        sub_22F0CFF1C();
        sub_22F0CFF1C();
      }

      v27 = *(v8 + 40);
      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22F07A54C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1938, &unk_22F0D90E0);
  v40 = a2;
  result = sub_22F0D170C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
        sub_22F0CFF1C();
        sub_22F0CFF1C();
      }

      v29 = *(v8 + 40);
      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22F07A80C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ResolvedFamily();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1990, &unk_22F0D9170);
  v41 = a2;
  result = sub_22F0D170C();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v40 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        sub_22F07E9E0(v28, v9, type metadata accessor for ResolvedFamily);
      }

      else
      {
        sub_22F06158C(v28, v9, type metadata accessor for ResolvedFamily);
      }

      v29 = *(v13 + 40);
      result = sub_22F0D198C();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_22F07E9E0(v9, *(v13 + 56) + v27 * v21, type metadata accessor for ResolvedFamily);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_22F07AB54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1998, &qword_22F0D9E70);
  v38 = a2;
  result = sub_22F0D170C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
        sub_22F0CFF1C();
        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22F07ADFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1958, &unk_22F0D9120);
  result = sub_22F0D170C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        sub_22F0CFF1C();
      }

      v24 = *(v8 + 40);
      result = sub_22F0D12EC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22F07B06C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA11A8, &qword_22F0D5C20);
  v36 = a2;
  result = sub_22F0D170C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_22EFFFA24(v25, v37);
      }

      else
      {
        sub_22F003598(v25, v37);
        sub_22F0CFF1C();
      }

      v26 = *(v8 + 40);
      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_22EFFFA24(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_22F07B324(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_22F0D05BC();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1980, &qword_22F0D8480);
  v46 = a2;
  result = sub_22F0D170C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
        sub_22F0CFF1C();
      }

      v32 = *(v12 + 40);
      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_22F07B6A4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PeopleLocation();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1930, &unk_22F0D90D0);
  v44 = a2;
  result = sub_22F0D170C();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_22F07E9E0(v31, v45, type metadata accessor for PeopleLocation);
      }

      else
      {
        sub_22F06158C(v31, v45, type metadata accessor for PeopleLocation);
        sub_22F0CFF1C();
      }

      v32 = *(v12 + 40);
      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_22F07E9E0(v45, *(v12 + 56) + v30 * v20, type metadata accessor for PeopleLocation);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_22F07BA1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1978, &qword_22F0D9140);
  result = sub_22F0D170C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      result = sub_22F0D198C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    result = sub_22F0D00CC();
    v3 = v33;
  }

  else
  {
    result = sub_22F0D00CC();
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22F07BC80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1968, &unk_22F0D9130);
  v38 = a2;
  result = sub_22F0D170C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
        sub_22F0CFF1C();
      }

      v27 = *(v8 + 40);
      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22F07BF34(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for LocationItem(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1950, &qword_22F0D90C0);
  v44 = a2;
  result = sub_22F0D170C();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_22F07E9E0(v31, v45, type metadata accessor for LocationItem);
      }

      else
      {
        sub_22F06158C(v31, v45, type metadata accessor for LocationItem);
        sub_22F0CFF1C();
      }

      v32 = *(v12 + 40);
      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_22F07E9E0(v45, *(v12 + 56) + v30 * v20, type metadata accessor for LocationItem);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_22F07C2C0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_22F0D170C();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];
        sub_22F0CFF1C();
        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_22F07C55C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F0BFBE8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22F07C5C8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22F07C5C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22F0D182C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22F0D0FCC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22F07C790(v7, v8, a1, v4);
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
    return sub_22F07C6C0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22F07C6C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22F0D188C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F07C790(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22F0BE90C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22F07CD6C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22F0D188C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22F0D188C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F03C658(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22F03C658((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_22F07CD6C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22F0BE90C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22F0BE880(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22F0D188C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_22F07CD6C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22F0D188C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22F0D188C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

unint64_t sub_22F07CF94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1970, &qword_22F0D8478);
    v3 = sub_22F0D171C();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_22EFFD904(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F07D074()
{
  result = qword_27DAA1CF8;
  if (!qword_27DAA1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1CF8);
  }

  return result;
}

uint64_t sub_22F07D0C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1D00, &qword_22F0D8CA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F07D138(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D78, &qword_22F0D9148);
    v3 = sub_22F0D171C();
    sub_22F0CFFAC();
    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 1);
      v5 = *i;
      v13[0] = *(i - 16);
      v14 = v6;
      v15 = v5;
      sub_22F0CFF1C();
      result = sub_22EFFD970(v13);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v13[0];
      v9 = (v3[7] + 16 * result);
      *v9 = v6;
      v9[1] = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {
        sub_22F0D00CC();
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F07D244(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D80, &unk_22F0D9150);
    v3 = sub_22F0D171C();
    v4 = (a1 + 32);
    sub_22F0CFFAC();
    while (1)
    {
      v5 = *v4;
      v6 = sub_22F0CFF1C();
      result = sub_22EFFDA00(v6);
      if (v8)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 56) + 8 * result) = v5;
      v9 = *(v3 + 16);
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v11;
      ++v4;
      if (!--v1)
      {
        sub_22F0D00CC();
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F07D320(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1948, &qword_22F0D8468);
    v3 = sub_22F0D171C();
    v4 = a1 + 32;
    sub_22F0CFFAC();
    while (1)
    {
      sub_22F049FF4(v4, &v13, &qword_27DAA14D0, &qword_22F0D8880);
      v5 = v13;
      v6 = v14;
      result = sub_22EFFDA80(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22EFE6B9C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {
        sub_22F0D00CC();
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F07D454(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA11A8, &qword_22F0D5C20);
    v3 = sub_22F0D171C();
    v4 = a1 + 32;
    sub_22F0CFFAC();
    while (1)
    {
      sub_22F049FF4(v4, &v13, &qword_27DAA1198, &qword_22F0D5AF8);
      v5 = v13;
      v6 = v14;
      result = sub_22EFFDA80(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22EFFFA24(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {
        sub_22F0D00CC();
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F07D584(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1938, &unk_22F0D90E0);
    v3 = sub_22F0D171C();
    sub_22F0CFFAC();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_22F0CFF1C();
      sub_22F0CFF1C();
      result = sub_22EFFDA80(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {
        sub_22F0D00CC();
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_22F07D698(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1988, &unk_22F0D9160);
  v3 = sub_22F0D171C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_22EFFDADC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_22F0CFF1C();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;
    sub_22F0CFF1C();
    v8 = sub_22EFFDADC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22F07D7A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA08B0, &qword_22F0D2CE0);
    v3 = sub_22F0D171C();
    sub_22F0CFFAC();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_22F0CFF1C();
      sub_22F0CFF1C();
      result = sub_22EFFDA80(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        sub_22F0D00CC();
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F07D8A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1998, &qword_22F0D9E70);
    v3 = sub_22F0D171C();
    sub_22F0CFFAC();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_22F0CFF1C();
      swift_unknownObjectRetain();
      result = sub_22EFFDA80(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        sub_22F0D00CC();
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F07D9A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D78, &qword_22F0D9148);
    v3 = sub_22F0D171C();
    sub_22F0CFFAC();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;
      sub_22F0CFF1C();
      result = sub_22EFFDB20(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        sub_22F0D00CC();
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F07DAA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1958, &unk_22F0D9120);
    v3 = sub_22F0D171C();
    sub_22F0CFFAC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      sub_22F0CFF1C();
      result = sub_22EFFDBAC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        sub_22F0D00CC();
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F07DB98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D58, &qword_22F0D90B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1950, &qword_22F0D90C0);
    v8 = sub_22F0D171C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_22F0CFFAC();
    while (1)
    {
      sub_22F049FF4(v10, v6, &qword_27DAA1D58, &qword_22F0D90B8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22EFFDA80(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for LocationItem(0);
      result = sub_22F07E9E0(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for LocationItem);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {
        sub_22F0D00CC();
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F07DD80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D70, &unk_22F0D9110);
    v3 = sub_22F0D171C();
    sub_22F0CFFAC();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_22F0CFF1C();
      v8 = v7;
      result = sub_22EFFDA80(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {
        sub_22F0D00CC();
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F07DE84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA11B0, &qword_22F0D5C28);
    v3 = sub_22F0D171C();
    v4 = a1 + 32;
    sub_22F0CFFAC();
    while (1)
    {
      sub_22F049FF4(v4, v13, &qword_27DAA1D68, &unk_22F0D9100);
      result = sub_22EFFDA98(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22EFFFA24(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {
        sub_22F0D00CC();
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F07DFC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D60, &qword_22F0D90C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v22 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1930, &unk_22F0D90D0);
    v8 = sub_22F0D171C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    sub_22F0CFFAC();
    while (1)
    {
      sub_22F049FF4(v10, v6, &qword_27DAA1D60, &qword_22F0D90C8);
      result = sub_22EFFDA80(*v6, v6[1]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v8[6] + 16 * result);
      v16 = v6[1];
      *v15 = *v6;
      v15[1] = v16;
      v17 = v8[7];
      v18 = type metadata accessor for PeopleLocation();
      result = sub_22F07E9E0(v6 + v9, v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for PeopleLocation);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {
        sub_22F0D00CC();
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22F07E1A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v28[3] = &type metadata for FeatureFlagsProvider.Key;
  v28[4] = sub_22F07E98C();
  v12 = swift_allocObject();
  v28[0] = v12;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  v13 = sub_22F0D070C();
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  if (qword_280CBEF00 != -1)
  {
    swift_once();
  }

  v14 = sub_22F0D0A1C();
  __swift_project_value_buffer(v14, qword_280CBEF08);
  v15 = sub_22F0D09FC();
  v16 = sub_22F0D124C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v13;
    v18 = swift_slowAlloc();
    v28[0] = v18;
    *v17 = 136315650;
    v19 = sub_22F0D153C();
    v21 = sub_22F00A560(v19, v20, v28);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = sub_22F0D153C();
    v24 = sub_22F00A560(v22, v23, v28);

    *(v17 + 14) = v24;
    *(v17 + 22) = 1024;
    *(v17 + 24) = v27 & 1;
    _os_log_impl(&dword_22EFE1000, v15, v16, "%s:%s is enabled: %{BOOL}d", v17, 0x1Cu);
    swift_arrayDestroy();
    v25 = v18;
    v13 = v27;
    MEMORY[0x2318FE8B0](v25, -1, -1);
    MEMORY[0x2318FE8B0](v17, -1, -1);
  }

  return v13 & 1;
}

unint64_t sub_22F07E3D0()
{
  result = qword_280CBEC58;
  if (!qword_280CBEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBEC58);
  }

  return result;
}

unint64_t sub_22F07E46C()
{
  result = qword_27DAA1D30;
  if (!qword_27DAA1D30)
  {
    type metadata accessor for FeatureFlagsProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1D30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PeopleFeatureFlagNames(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PeopleFeatureFlagNames(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22F07E830()
{
  result = qword_27DAA1D38;
  if (!qword_27DAA1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1D38);
  }

  return result;
}

unint64_t sub_22F07E888()
{
  result = qword_27DAA1D40;
  if (!qword_27DAA1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1D40);
  }

  return result;
}

unint64_t sub_22F07E8E0()
{
  result = qword_27DAA1D48;
  if (!qword_27DAA1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1D48);
  }

  return result;
}

unint64_t sub_22F07E938()
{
  result = qword_27DAA1D50;
  if (!qword_27DAA1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1D50);
  }

  return result;
}

unint64_t sub_22F07E98C()
{
  result = qword_280CBF030;
  if (!qword_280CBF030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBF030);
  }

  return result;
}

uint64_t sub_22F07E9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F07EA48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F07EA68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 41) = v3;
  return result;
}

uint64_t PersonTypeAppEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280CBEC28 != -1)
  {
    swift_once();
  }

  v2 = qword_280CBEC30;
  a1[3] = type metadata accessor for ContactFetcher();
  a1[4] = &protocol witness table for ContactFetcher;
  *a1 = v2;

  return sub_22F0CFFAC();
}

char *sub_22F07EB60()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v4 = MEMORY[0x277D84F90];
  v5 = (*(v3 + 56))(10, MEMORY[0x277D84F90], v2, v3);
  v6 = v5;
  if (v5 >> 62)
  {
    v7 = sub_22F0D143C();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    v10 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v40[0] = v4;
  result = sub_22EFFC4E8(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
    return result;
  }

  v39 = v0;
  v9 = 0;
  v10 = v40[0];
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2318FDAB0](v9, v6);
    }

    else
    {
      v11 = *(v6 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = [v11 identifier];
    v14 = sub_22F0D0CAC();
    v16 = v15;

    v40[0] = v10;
    v18 = *(v10 + 16);
    v17 = *(v10 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_22EFFC4E8((v17 > 1), v18 + 1, 1);
      v10 = v40[0];
    }

    ++v9;
    *(v10 + 16) = v18 + 1;
    v19 = v10 + 16 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
  }

  while (v7 != v9);

  v4 = MEMORY[0x277D84F90];
  v1 = v39;
LABEL_14:
  v20 = v1[3];
  v21 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v20);
  v22 = (*(v21 + 48))(500, 0, v20, v21);
  v23 = v22;
  v41 = v4;
  if (v22 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
  {
    v25 = 0;
    v38 = v23 & 0xFFFFFFFFFFFFFF8;
    v39 = v23 & 0xC000000000000001;
    v37 = v23;
    while (1)
    {
      if (v39)
      {
        v27 = MEMORY[0x2318FDAB0](v25, v23);
      }

      else
      {
        if (v25 >= *(v38 + 16))
        {
          goto LABEL_27;
        }

        v27 = *(v23 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v30 = i;
      v31 = [v27 identifier];
      v32 = sub_22F0D0CAC();
      v34 = v33;

      v40[0] = v32;
      v40[1] = v34;
      MEMORY[0x28223BE20](v35);
      v36[2] = v40;
      LOBYTE(v31) = sub_22F051C9C(sub_22F034BF4, v36, v10);

      if (v31)
      {
      }

      else
      {
        sub_22F0D15EC();
        v26 = *(v41 + 16);
        sub_22F0D162C();
        sub_22F0D163C();
        sub_22F0D15FC();
      }

      i = v30;
      v23 = v37;
      ++v25;
      if (v29 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:

  return v41;
}

uint64_t sub_22F07EEC8@<X0>(uint64_t a1@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D90, &qword_22F0D9210);
  v3 = *(v24 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1540, &qword_22F0DB420);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  v11 = v1[3];
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v11);
  v13 = (*(v12 + 56))(10, MEMORY[0x277D84F90], v11, v12);
  v29 = v1;
  v14 = sub_22F052050(sub_22F0825E0, v28, v13);

  v15 = sub_22F07EB60();
  v27 = v1;
  v16 = sub_22F052050(sub_22F0825E0, v26, v15);

  v17 = sub_22F0D036C();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  sub_22F034988();
  v25 = a1;
  sub_22F0CFF3C();
  if (*(v14 + 2))
  {
    v19 = (v18)(v10, 1, 1, v17);
    MEMORY[0x28223BE20](v19);
    *(&v24 - 2) = v14;
    *(&v24 - 1) = v16;
    sub_22F0CFF3C();
  }

  else
  {

    v20 = (v18)(v10, 1, 1, v17);
    MEMORY[0x28223BE20](v20);
    *(&v24 - 2) = v16;
    sub_22F0CFF3C();
  }

  v22 = v24;
  v21 = v25;
  (*(v3 + 8))(v25, v24);
  return (*(v3 + 32))(v21, v6, v22);
}

uint64_t PersonTypeAppEntityQuery.buildPersonType(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v3 = sub_22F0D036C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 identifier];
  v7 = sub_22F0D0CAC();
  v9 = v8;

  v52 = v7;
  v53 = v9;
  type metadata accessor for DaemonConnection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = [v11 bundleForClass_];
  v13 = sub_22F0D031C();
  v15 = v14;

  v16 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v16 setStyle_];
  v49 = v13;
  object = v15;
  v51 = v16;
  v17 = ContactFormatter.displayName(for:includePhone:)(a1, 1);
  countAndFlagsBits = v17._countAndFlagsBits;

  v18 = [v11 bundleForClass_];
  v19 = sub_22F0D031C();
  v21 = v20;

  v22 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v22 setStyle_];
  v49 = v19;
  object = v21;
  v51 = v22;
  ContactFormatter.displayName(for:includePhone:)(a1, 1);

  if (qword_280CBDFD0 != -1)
  {
    swift_once();
  }

  v23 = sub_22F00ED5C();
  v25 = v24;

  if (v25)
  {
    v49 = 124;
    object = 0xE100000000000000;
    MEMORY[0x2318FD2C0](v23, v25);

    MEMORY[0x2318FD2C0](v49, object);
  }

  v26 = countAndFlagsBits;
  if (qword_280CBDB28 != -1)
  {
    swift_once();
  }

  v27 = sub_22F0D0A1C();
  __swift_project_value_buffer(v27, qword_280CBDB30);
  v29 = v52;
  v28 = v53;
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  v30 = a1;
  v31 = sub_22F0D09FC();
  v32 = sub_22F0D122C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v49 = v34;
    *v33 = 136315906;
    *(v33 + 4) = sub_22F00A560(0xD000000000000015, 0x800000022F0DEE80, &v49);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_22F00A560(v29, v28, &v49);
    *(v33 + 22) = 2080;
    *(v33 + 24) = sub_22F00A560(v26, v17._object, &v49);
    *(v33 + 32) = 2080;
    v35 = [v30 description];
    v36 = sub_22F0D0CAC();
    v37 = v29;
    v39 = v38;

    v40 = v36;
    v26 = countAndFlagsBits;
    v41 = sub_22F00A560(v40, v39, &v49);
    v29 = v37;

    *(v33 + 34) = v41;
    _os_log_impl(&dword_22EFE1000, v31, v32, "PersonTypeAppEntity: %s id: %s, displayString: %s, contact: %s", v33, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v34, -1, -1);
    MEMORY[0x2318FE8B0](v33, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1548, &qword_22F0D6FB0);
  sub_22F0D034C();
  v42 = sub_22F0CFE4C();
  sub_22F0D034C();
  v43 = sub_22F0CFE4C();
  v49 = v29;
  object = v28;
  sub_22F0CFE1C();
  v49 = v26;
  object = v17._object;
  result = sub_22F0CFE1C();
  v45 = v47;
  *v47 = v42;
  v45[1] = v43;
  return result;
}

uint64_t sub_22F07F7BC()
{
  v0 = sub_22F0D036C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16E8, &qword_22F0D7700);
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  sub_22F0D034C();
  sub_22F034988();
  sub_22F0CFF1C();
  sub_22F0CFF2C();
  sub_22F0D034C();
  sub_22F0CFF1C();
  sub_22F0CFF2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16E0, &unk_22F0D93D0);
  v11 = *(v3 + 72);
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22F0D6710;
  v14 = v13 + v12;
  v15 = *(v4 + 16);
  v15(v14, v10, v2);
  v15(v14 + v11, v8, v2);
  v16 = sub_22F0CFF1C();

  v17 = *(v4 + 8);
  v17(v8, v2);
  v17(v10, v2);
  return v16;
}

uint64_t sub_22F07FA54()
{
  v0 = sub_22F0D036C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16E8, &qword_22F0D7700);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  sub_22F0D034C();
  sub_22F034988();
  sub_22F0CFF1C();
  sub_22F0CFF2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16E0, &unk_22F0D93D0);
  v7 = *(v3 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22F0D2BF0;
  (*(v3 + 16))(v9 + v8, v6, v2);
  v10 = sub_22F0CFF1C();

  (*(v3 + 8))(v6, v2);
  return v10;
}

uint64_t PersonTypeAppEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22F07FC68, 0, 0);
}

uint64_t sub_22F07FC68()
{
  v18 = v0;
  if (qword_280CBDB28 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_22F0D0A1C();
  __swift_project_value_buffer(v2, qword_280CBDB30);
  sub_22F0CFF1C();
  v3 = sub_22F0D09FC();
  v4 = sub_22F0D124C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_22F00A560(0x7365697469746E65, 0xEE00293A726F6628, v17);
    *(v6 + 12) = 2080;
    v8 = MEMORY[0x2318FD490](v5, MEMORY[0x277D837D0]);
    v10 = sub_22F00A560(v8, v9, v17);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_22EFE1000, v3, v4, "PersonTypeAppEntity: %s IDs: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v7, -1, -1);
    MEMORY[0x2318FE8B0](v6, -1, -1);
  }

  v11 = v0[2];
  v12 = v0[3];
  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  v14 = sub_22F052218(sub_22F082394, v13, v11);

  v15 = v0[1];

  return v15(v14);
}

void PersonTypeAppEntityQuery.queryPersonType(for:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22F0D036C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = _s6People19PersonTypeAppEntityV15decodeContactID3forSSSgAF_tFZ_0(a1, a2);
  if (v10 && (v11 = v9, v12 = v10, v13 = v3[3], v14 = v3[4], __swift_project_boxed_opaque_existential_1(v3, v13), v15 = (*(v14 + 24))(v11, v12, 0, v13, v14), , v15))
  {
    type metadata accessor for DaemonConnection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    v18 = sub_22F0D031C();
    v20 = v19;

    v21 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
    [v21 setStyle_];
    v53 = v18;
    v54 = v20;
    v55 = v21;
    v22 = ContactFormatter.displayName(for:includePhone:)(v15, 1);

    if (qword_280CBDB28 != -1)
    {
      swift_once();
    }

    countAndFlagsBits = v22._countAndFlagsBits;
    v24 = sub_22F0D0A1C();
    __swift_project_value_buffer(v24, qword_280CBDB30);
    sub_22F0CFF1C();
    sub_22F0CFF1C();
    v25 = v15;
    v26 = sub_22F0D09FC();
    v27 = sub_22F0D122C();

    if (os_log_type_enabled(v26, v27))
    {
      v52 = a3;
      v28 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v53 = v51;
      *v28 = 136315906;
      *(v28 + 4) = sub_22F00A560(0xD000000000000015, 0x800000022F0DEEA0, &v53);
      v50 = v27;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_22F00A560(a1, a2, &v53);
      *(v28 + 22) = 2080;
      *(v28 + 24) = sub_22F00A560(v22._countAndFlagsBits, v22._object, &v53);
      *(v28 + 32) = 2080;
      v29 = [v25 description];
      v30 = v25;
      v31 = sub_22F0D0CAC();
      v49 = v26;
      v32 = a1;
      v34 = v33;

      v35 = v31;
      v25 = v30;
      countAndFlagsBits = v22._countAndFlagsBits;
      object = v22._object;
      v37 = v32;
      v38 = sub_22F00A560(v35, v34, &v53);

      *(v28 + 34) = v38;
      _os_log_impl(&dword_22EFE1000, v49, v50, "Returning existing PersonTypeAppEntity: %s id: %s, displayString: %s, contact: %s", v28, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v51, -1, -1);
      v39 = v28;
      a3 = v52;
      MEMORY[0x2318FE8B0](v39, -1, -1);
    }

    else
    {

      object = v22._object;
      v37 = a1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1548, &qword_22F0D6FB0);
    sub_22F0D034C();
    v47 = sub_22F0CFE4C();
    sub_22F0D034C();
    v48 = sub_22F0CFE4C();
    v53 = v37;
    v54 = a2;
    sub_22F0CFF1C();
    sub_22F0CFE1C();
    v53 = countAndFlagsBits;
    v54 = object;
    sub_22F0CFE1C();

    *a3 = v47;
    a3[1] = v48;
  }

  else
  {
    if (qword_280CBDB28 != -1)
    {
      swift_once();
    }

    v40 = sub_22F0D0A1C();
    __swift_project_value_buffer(v40, qword_280CBDB30);
    sub_22F0CFF1C();
    v41 = sub_22F0D09FC();
    v42 = sub_22F0D123C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = a1;
      v46 = v44;
      v53 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_22F00A560(v45, a2, &v53);
      _os_log_impl(&dword_22EFE1000, v41, v42, "PersonTypeAppEntity: Could not find contact for id: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x2318FE8B0](v46, -1, -1);
      MEMORY[0x2318FE8B0](v43, -1, -1);
    }

    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t PersonTypeAppEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[40] = a3;
  v4[41] = v3;
  v4[38] = a1;
  v4[39] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1540, &qword_22F0DB420) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v6 = sub_22F0D01DC();
  v4[43] = v6;
  v7 = *(v6 - 8);
  v4[44] = v7;
  v8 = *(v7 + 64) + 15;
  v4[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F080528, 0, 0);
}

uint64_t sub_22F080528()
{
  v128 = v0;
  if (qword_280CBDB28 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v1 = sub_22F0D0A1C();
    __swift_project_value_buffer(v1, qword_280CBDB30);
    v2 = sub_22F0D09FC();
    v3 = sub_22F0D124C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v127 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_22F00A560(0xD000000000000013, 0x800000022F0DEEC0, &v127);
      _os_log_impl(&dword_22EFE1000, v2, v3, "PersonTypeAppEntity: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x2318FE8B0](v5, -1, -1);
      MEMORY[0x2318FE8B0](v4, -1, -1);
    }

    object = v0[19].value._object;
    countAndFlagsBits = v0[20].value._countAndFlagsBits;
    v8 = String.trimToNil()();
    v9 = v0[20].value._object;
    if (!v8.value._object)
    {
      sub_22F07EEC8(v0[19].value._countAndFlagsBits);
      goto LABEL_76;
    }

    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v12 = (*(v11 + 48))(0, 1, v10, v11);
    v13 = v12;
    v127 = MEMORY[0x277D84F90];
    if (!(v12 >> 62))
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        break;
      }

      goto LABEL_7;
    }

    v14 = sub_22F0D143C();
    if (!v14)
    {
      break;
    }

LABEL_7:
    v15 = 0;
    v121 = v13 & 0xFFFFFFFFFFFFFF8;
    v122 = v13 & 0xC000000000000001;
    v126 = (v0[22].value._countAndFlagsBits + 8);
    v16 = MEMORY[0x277D837D0];
    v119 = v14;
    v120 = v13;
    while (1)
    {
      if (v122)
      {
        v18 = MEMORY[0x2318FDAB0](v15, v13);
      }

      else
      {
        if (v15 >= *(v121 + 16))
        {
          goto LABEL_54;
        }

        v18 = *(v13 + 8 * v15 + 32);
      }

      v19 = v18;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v123 = v15 + 1;
      v20 = v0[22].value._object;
      v21 = v0[21].value._object;
      v22 = [v18 givenName];
      v23 = sub_22F0D0CAC();
      v25 = v24;

      v0[1].value._countAndFlagsBits = v23;
      v0[1].value._object = v25;
      sub_22F0D01CC();
      sub_22F00901C();
      v26 = sub_22F0D136C();
      v28 = v27;
      v125 = *v126;
      (*v126)(v20, v21);

      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        v0[2].value._countAndFlagsBits = v26;
        v0[2].value._object = v28;
        v0[3] = v8;
        v30 = sub_22F0D13AC();

        if (v30)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      v31 = v0[22].value._object;
      v32 = v0[21].value._object;
      v124 = v19;
      v33 = [v19 middleName];
      v34 = sub_22F0D0CAC();
      v35 = v16;
      v37 = v36;

      v0[4].value._countAndFlagsBits = v34;
      v0[4].value._object = v37;
      sub_22F0D01CC();
      v38 = sub_22F0D136C();
      v40 = v39;
      v125(v31, v32);

      v41 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v41 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        v0[5].value._countAndFlagsBits = v38;
        v0[5].value._object = v40;
        v0[6] = v8;
        v42 = sub_22F0D13AC();

        v16 = v35;
        v43 = v124;
        if (v42)
        {
          goto LABEL_8;
        }
      }

      else
      {

        v16 = v35;
        v43 = v124;
      }

      v44 = v0[22].value._object;
      v45 = v0[21].value._object;
      v46 = [v43 familyName];
      v47 = sub_22F0D0CAC();
      v48 = v16;
      v50 = v49;

      v0[7].value._countAndFlagsBits = v47;
      v0[7].value._object = v50;
      sub_22F0D01CC();
      v51 = sub_22F0D136C();
      v53 = v52;
      v125(v44, v45);

      v54 = HIBYTE(v53) & 0xF;
      if ((v53 & 0x2000000000000000) == 0)
      {
        v54 = v51 & 0xFFFFFFFFFFFFLL;
      }

      if (v54)
      {
        v0[8].value._countAndFlagsBits = v51;
        v0[8].value._object = v53;
        v0[9] = v8;
        v55 = sub_22F0D13AC();

        v16 = v48;
        v56 = v124;
        if (v55)
        {
          goto LABEL_8;
        }
      }

      else
      {

        v16 = v48;
        v56 = v124;
      }

      v57 = v0[22].value._object;
      v58 = v0[21].value._object;
      v59 = [v56 phoneticGivenName];
      v60 = sub_22F0D0CAC();
      v61 = v16;
      v63 = v62;

      v0[10].value._countAndFlagsBits = v60;
      v0[10].value._object = v63;
      sub_22F0D01CC();
      v64 = sub_22F0D136C();
      v66 = v65;
      v125(v57, v58);

      v67 = HIBYTE(v66) & 0xF;
      if ((v66 & 0x2000000000000000) == 0)
      {
        v67 = v64 & 0xFFFFFFFFFFFFLL;
      }

      if (v67)
      {
        v0[11].value._countAndFlagsBits = v64;
        v0[11].value._object = v66;
        v0[12] = v8;
        v68 = sub_22F0D13AC();

        v16 = v61;
        v69 = v124;
        if (v68)
        {
          goto LABEL_8;
        }
      }

      else
      {

        v16 = v61;
        v69 = v124;
      }

      v70 = v0[22].value._object;
      v71 = v0[21].value._object;
      v72 = [v69 phoneticMiddleName];
      v73 = sub_22F0D0CAC();
      v74 = v16;
      v76 = v75;

      v0[13].value._countAndFlagsBits = v73;
      v0[13].value._object = v76;
      sub_22F0D01CC();
      v77 = sub_22F0D136C();
      v79 = v78;
      v125(v70, v71);

      v80 = HIBYTE(v79) & 0xF;
      if ((v79 & 0x2000000000000000) == 0)
      {
        v80 = v77 & 0xFFFFFFFFFFFFLL;
      }

      if (v80)
      {
        v0[14].value._countAndFlagsBits = v77;
        v0[14].value._object = v79;
        v0[15] = v8;
        v81 = sub_22F0D13AC();

        v16 = v74;
        v82 = v124;
        if (v81)
        {
          goto LABEL_8;
        }
      }

      else
      {

        v16 = v74;
        v82 = v124;
      }

      v83 = v0[22].value._object;
      v84 = v82;
      v85 = v0[21].value._object;
      v86 = [v84 phoneticFamilyName];
      v87 = sub_22F0D0CAC();
      v88 = v16;
      v90 = v89;

      v0[16].value._countAndFlagsBits = v87;
      v0[16].value._object = v90;
      sub_22F0D01CC();
      v91 = sub_22F0D136C();
      v93 = v92;
      v125(v83, v85);

      v94 = HIBYTE(v93) & 0xF;
      if ((v93 & 0x2000000000000000) == 0)
      {
        v94 = v91 & 0xFFFFFFFFFFFFLL;
      }

      if (!v94)
      {

        v16 = v88;
        goto LABEL_9;
      }

      v0[17].value._countAndFlagsBits = v91;
      v0[17].value._object = v93;
      v0[18] = v8;
      v95 = sub_22F0D13AC();

      v16 = v88;
      if ((v95 & 1) == 0)
      {

        goto LABEL_9;
      }

LABEL_8:
      sub_22F0D15EC();
      v17 = v127[2];
      sub_22F0D162C();
      sub_22F0D163C();
      sub_22F0D15FC();
LABEL_9:
      ++v15;
      v13 = v120;
      if (v123 == v119)
      {
        v96 = v127;
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
  }

  v96 = MEMORY[0x277D84F90];
LABEL_58:

  v97 = v96 < 0 || (v96 & 0x4000000000000000) != 0;
  if (!v97)
  {
    result = *(v96 + 16);
    if (result >= 0x1F4)
    {
      v99 = 500;
    }

    else
    {
      v99 = *(v96 + 16);
    }

    if (result >= v99)
    {
      goto LABEL_66;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    return result;
  }

  v117 = sub_22F0D143C();
  result = sub_22F0D143C();
  if (result < 0)
  {
    goto LABEL_88;
  }

  if (v117 >= 0x1F4)
  {
    v118 = 500;
  }

  else
  {
    v118 = v117;
  }

  if (v117 >= 0)
  {
    v99 = v118;
  }

  else
  {
    v99 = 500;
  }

  result = sub_22F0D143C();
  if (result < v99)
  {
    goto LABEL_87;
  }

LABEL_66:
  if ((v96 & 0xC000000000000001) != 0)
  {
    sub_22F0CFF1C();
    if (v99)
    {
      sub_22F0459DC();
      v100 = 0;
      do
      {
        v101 = v100 + 1;
        sub_22F0D155C();
        v100 = v101;
      }

      while (v99 != v101);
    }
  }

  else
  {
    sub_22F0CFF1C();
  }

  sub_22F0D00CC();
  if (v97)
  {
    sub_22F0D16EC();
    v103 = v102;
    v105 = v104;
    v107 = v106;
    sub_22F0D00CC();
  }

  else
  {
    v105 = 0;
    v103 = v96 + 32;
    v107 = (2 * v99) | 1;
  }

  v109 = v0[20].value._object;
  v108 = v0[21].value._countAndFlagsBits;
  v110 = v0[19].value._countAndFlagsBits;
  v111 = swift_task_alloc();
  *(v111 + 16) = v109;
  v112 = sub_22F058F38(sub_22F0823C8, v111, v103, v105, v107);
  swift_unknownObjectRelease();

  v113 = sub_22F0D036C();
  (*(*(v113 - 8) + 56))(v108, 1, 1, v113);
  *(swift_task_alloc() + 16) = v112;
  sub_22F034988();
  sub_22F0CFF3C();

LABEL_76:
  v114 = v0[22].value._object;
  v115 = v0[21].value._countAndFlagsBits;

  v116 = v0->value._object;

  return v116();
}

uint64_t sub_22F080FA8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  PersonTypeAppEntityQuery.buildPersonType(for:)(*a1, &v5);
  sub_22F034988();
  sub_22F0CFDBC();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1700, &qword_22F0D7718);
  return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
}

uint64_t sub_22F081054()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16E8, &qword_22F0D7700);
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v11 - v4;
  sub_22F034988();
  sub_22F0CFF1C();
  sub_22F0CFEFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16E0, &unk_22F0D93D0);
  v6 = *(v1 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22F0D2BF0;
  (*(v2 + 16))(v8 + v7, v5, v0);
  v9 = sub_22F0CFF1C();

  (*(v2 + 8))(v5, v0);
  return v9;
}

uint64_t PersonTypeAppEntityQuery.suggestedEntities()(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_22F0D036C();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16E8, &qword_22F0D7700);
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1540, &qword_22F0DB420) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F08134C, 0, 0);
}

uint64_t sub_22F08134C()
{
  v50 = v0;
  if (qword_280CBDB28 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D0A1C();
  __swift_project_value_buffer(v1, qword_280CBDB30);
  v2 = sub_22F0D09FC();
  v3 = sub_22F0D124C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v49 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_22F00A560(0xD000000000000013, 0x800000022F0DEEE0, &v49);
    _os_log_impl(&dword_22EFE1000, v2, v3, "PersonTypeAppEntity: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x2318FE8B0](v5, -1, -1);
    MEMORY[0x2318FE8B0](v4, -1, -1);
  }

  v6 = v0[19];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v12 = (*(v11 + 56))(10, MEMORY[0x277D84F90], v10, v11);
  v13 = swift_task_alloc();
  *(v13 + 16) = v9;
  v14 = sub_22F052050(sub_22F0825E0, v13, v12);

  (*(v7 + 56))(v6, 1, 1, v8);
  sub_22F034988();
  sub_22F0CFF3C();
  if (*(v14 + 2))
  {
    v15 = v0[18];
    v16 = v0[14];
    v17 = v0[10];
    sub_22F0D034C();
    sub_22F0CFF2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D90, &qword_22F0D9210);
    v18 = sub_22F0CFF4C();
    v20 = v19;
    v21 = *v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v20 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_22F03D470(0, v21[2] + 1, 1, v21);
      *v20 = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_22F03D470(v23 > 1, v24 + 1, 1, v21);
      *v20 = v21;
    }

    v25 = v0[18];
    v26 = v0[15];
    v27 = v0[16];
    v21[2] = v24 + 1;
    (*(v27 + 32))(v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, v25, v26);
    v18(v0 + 2, 0);
  }

  else
  {
  }

  v28 = v0[17];
  v29 = v0[14];
  v31 = v0[10];
  v30 = v0[11];
  sub_22F0D034C();
  v32 = sub_22F07EB60();
  v33 = swift_task_alloc();
  *(v33 + 16) = v30;
  sub_22F052050(sub_22F0823EC, v33, v32);

  sub_22F0CFF2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D90, &qword_22F0D9210);
  v34 = sub_22F0CFF4C();
  v36 = v35;
  v37 = *v35;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  *v36 = v37;
  if ((v38 & 1) == 0)
  {
    v37 = sub_22F03D470(0, v37[2] + 1, 1, v37);
    *v36 = v37;
  }

  v40 = v37[2];
  v39 = v37[3];
  if (v40 >= v39 >> 1)
  {
    v37 = sub_22F03D470(v39 > 1, v40 + 1, 1, v37);
    *v36 = v37;
  }

  v42 = v0[18];
  v41 = v0[19];
  v43 = v0[16];
  v44 = v0[17];
  v46 = v0[14];
  v45 = v0[15];
  v37[2] = v40 + 1;
  (*(v43 + 32))(v37 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v40, v44, v45);
  v34(v0 + 6, 0);

  v47 = v0[1];

  return v47();
}

uint64_t PersonTypeAppEntityQuery.defaultResult()(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return MEMORY[0x2822009F8](sub_22F0818C4, 0, 0);
}

uint64_t sub_22F0818C4()
{
  v47 = v0;
  v1 = v0[25];
  v2 = v1[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v5 = (*(v3 + 56))(1, MEMORY[0x277D84F90], v2, v3);
  if (v5 >> 62)
  {
    v4 = v5;
    v22 = sub_22F0D143C();
    v5 = v4;
    if (v22)
    {
      goto LABEL_3;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2318FDAB0](0);
      goto LABEL_6;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v5 + 32);
LABEL_6:
      v7 = v6;

      if (qword_280CBDB28 != -1)
      {
        swift_once();
      }

      v8 = sub_22F0D0A1C();
      __swift_project_value_buffer(v8, qword_280CBDB30);
      v9 = v7;
      v10 = sub_22F0D09FC();
      v11 = sub_22F0D124C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v46 = v13;
        *v12 = 136315138;
        v14 = [v9 debugDescription];
        v15 = sub_22F0D0CAC();
        v17 = v16;

        v18 = sub_22F00A560(v15, v17, &v46);

        *(v12 + 4) = v18;
        _os_log_impl(&dword_22EFE1000, v10, v11, "PersonTypeAppEntity: Default contact for is from recommendations list: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x2318FE8B0](v13, -1, -1);
        MEMORY[0x2318FE8B0](v12, -1, -1);
      }

      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      v19 = v0[24];
      LOBYTE(v46) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F0D2BF0;
      *(inited + 32) = 0xD000000000000012;
      v21 = inited + 32;
      *(inited + 40) = 0x800000022F0DEF00;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 80) = &protocol witness table for Bool;
      *(inited + 48) = 1;
LABEL_21:
      v38 = sub_22F07D320(inited);
      swift_setDeallocating();
      sub_22F069CDC(v21);
      sub_22F08FCF8(&v46, v38);

      PersonTypeAppEntityQuery.buildPersonType(for:)(v9, &v46);

      *v19 = v46;
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_32;
  }

  v23 = v0[25];

  v25 = v1[3];
  v24 = v1[4];
  __swift_project_boxed_opaque_existential_1(v23, v25);
  v26 = (*(v24 + 8))(v25, v24);
  if (v26)
  {
    v4 = v26;
    if (qword_280CBDB28 == -1)
    {
LABEL_16:
      v27 = sub_22F0D0A1C();
      __swift_project_value_buffer(v27, qword_280CBDB30);
      v9 = v4;
      v28 = sub_22F0D09FC();
      v29 = sub_22F0D124C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v46 = v31;
        *v30 = 136315138;
        v32 = [v9 debugDescription];
        v33 = sub_22F0D0CAC();
        v35 = v34;

        v36 = sub_22F00A560(v33, v35, &v46);

        *(v30 + 4) = v36;
        _os_log_impl(&dword_22EFE1000, v28, v29, "PersonTypeAppEntity: Default contact for is from contacts list: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x2318FE8B0](v31, -1, -1);
        MEMORY[0x2318FE8B0](v30, -1, -1);
      }

      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      v19 = v0[24];
      LOBYTE(v46) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F0D2BF0;
      *(inited + 32) = 0xD000000000000012;
      v21 = inited + 32;
      v37 = MEMORY[0x277D839B0];
      *(inited + 40) = 0x800000022F0DEF00;
      *(inited + 72) = v37;
      *(inited + 80) = &protocol witness table for Bool;
      *(inited + 48) = 0;
      goto LABEL_21;
    }

LABEL_32:
    swift_once();
    goto LABEL_16;
  }

  if (qword_280CBDB28 != -1)
  {
    swift_once();
  }

  v41 = sub_22F0D0A1C();
  __swift_project_value_buffer(v41, qword_280CBDB30);
  v42 = sub_22F0D09FC();
  v43 = sub_22F0D124C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_22EFE1000, v42, v43, "PersonTypeAppEntity: No default found, 0 recommendations 0 contacts", v44, 2u);
    MEMORY[0x2318FE8B0](v44, -1, -1);
  }

  v45 = v0[24];

  *v45 = 0;
  v45[1] = 0;
LABEL_22:
  v39 = v0[1];

  return v39();
}

uint64_t sub_22F081F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22F00CD54;

  return PersonTypeAppEntityQuery.entities(matching:)(a1, a2, a3);
}

uint64_t sub_22F081FD4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280CBEC28 != -1)
  {
    swift_once();
  }

  v2 = qword_280CBEC30;
  a1[3] = type metadata accessor for ContactFetcher();
  a1[4] = &protocol witness table for ContactFetcher;
  *a1 = v2;

  return sub_22F0CFFAC();
}

uint64_t sub_22F082058(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F06574C;

  return PersonTypeAppEntityQuery.entities(for:)(a1);
}

uint64_t sub_22F0820EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F00CF60;

  return PersonTypeAppEntityQuery.suggestedEntities()(a1);
}

uint64_t sub_22F082184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22F015708;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_22F082244(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_22F03487C();
  *v6 = v2;
  v6[1] = sub_22F00CF60;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_22F0822F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F00CD54;

  return PersonTypeAppEntityQuery.defaultResult()(a1);
}

unint64_t sub_22F082408()
{
  result = qword_280CBDDB0;
  if (!qword_280CBDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDB0);
  }

  return result;
}

unint64_t sub_22F082460()
{
  result = qword_280CBDDA8;
  if (!qword_280CBDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDA8);
  }

  return result;
}

unint64_t sub_22F0824BC()
{
  result = qword_280CBDDC0;
  if (!qword_280CBDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDC0);
  }

  return result;
}

unint64_t sub_22F082518()
{
  result = qword_27DAA1D98;
  if (!qword_27DAA1D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1D90, &qword_22F0D9210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1D98);
  }

  return result;
}

double sub_22F08258C@<D0>(void **a1@<X0>, _OWORD *a2@<X8>)
{
  PersonTypeAppEntityQuery.buildPersonType(for:)(*a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_22F0825D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22F07F7BC();
}

uint64_t sub_22F0825FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_22EFFC4E8(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_22F0D13FC();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);
    result = sub_22F0CFF1C();
    if (v13 >= v14 >> 1)
    {
      result = sub_22EFFC4E8((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_22F0097CC(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_22F0097CC(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
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

uint64_t static MessageDeviceCapabilityLookup.sharedInstance.getter()
{
  if (qword_27DAA0590 != -1)
  {
    swift_once();
  }

  return sub_22F0CFFAC();
}

BOOL DiscoveredHandles.allMembersMeetRequirements.getter()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *v0;
  sub_22F0CFF1C();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  if (!v4)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_5:
    while (1)
    {
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = *(*(v1 + 56) + ((v7 << 9) | (8 * v9)));
      if (!*(v10 + 16))
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_7;
      }
    }

    sub_22F0CFF1C();
    v28 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22EFFC6AC(0, *(v8 + 16) + 1, 1);
      v8 = v28;
    }

    v12 = *(v8 + 16);
    v13 = *(v8 + 24);
    v14 = v12 + 1;
    if (v12 >= v13 >> 1)
    {
      v15 = v12 + 1;
      v27 = v12;
      sub_22EFFC6AC((v13 > 1), v12 + 1, 1);
      v14 = v15;
      v12 = v27;
      v8 = v28;
    }

    *(v8 + 16) = v14;
    *(v8 + 8 * v12 + 32) = v10;
  }

  while (v4);
  while (1)
  {
LABEL_7:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v11 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v11);
    ++v7;
    if (v4)
    {
      v7 = v11;
      goto LABEL_5;
    }
  }

  sub_22F0D00CC();
  if (qword_27DAA0570 == -1)
  {
    goto LABEL_18;
  }

LABEL_23:
  swift_once();
LABEL_18:
  v16 = sub_22F0D0A1C();
  __swift_project_value_buffer(v16, qword_27DAA1A28);
  sub_22F0CFFAC();
  v17 = sub_22F0D09FC();
  v18 = sub_22F0D124C();
  sub_22F0D00CC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
    v22 = MEMORY[0x2318FD490](v8, v21);
    v24 = sub_22F00A560(v22, v23, &v28);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_22EFE1000, v17, v18, "DevCaps: noGoodHandles is [%s]", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x2318FE8B0](v20, -1, -1);
    MEMORY[0x2318FE8B0](v19, -1, -1);
  }

  v25 = *(v8 + 16);
  sub_22F0D00CC();
  return v25 == 0;
}

unint64_t static DiscoveredHandles.emptyFamily.getter@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22F07DAA0(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

unint64_t DiscoveredHandles.description.getter()
{
  v1 = *v0;
  sub_22F0D152C();

  v8 = *(v1 + 16);
  v2 = sub_22F0D183C();
  MEMORY[0x2318FD2C0](v2);

  MEMORY[0x2318FD2C0](0x73656C646E616820, 0xE900000000000020);
  sub_22F0D152C();

  MEMORY[0x2318FD2C0](0xD00000000000001DLL, 0x800000022F0DEF40);
  v3 = DiscoveredHandles.allMembersMeetRequirements.getter();
  v4 = !v3;
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x2318FD2C0](v5, v6);

  return 0xD000000000000012;
}

uint64_t DiscoveredHandles.iMessageHandles.getter()
{
  v1 = *v0;
  v2 = *v0 + 64;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*v0 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(*(v1 + 56) + ((v8 << 9) | (8 * v10)));
      if (v11[2])
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v14 = v11[4];
    v13 = v11[5];
    sub_22F0CFF1C();
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F03C784(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v15 = *(v9 + 16);
    v16 = *(v9 + 24);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v21 = v15 + 1;
      v19 = v9;
      v20 = *(v9 + 16);
      result = sub_22F03C784((v16 > 1), v15 + 1, 1, v19);
      v15 = v20;
      v17 = v21;
      v9 = result;
    }

    *(v9 + 16) = v17;
    v18 = v9 + 16 * v15;
    *(v18 + 32) = v14;
    *(v18 + 40) = v13;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {
      sub_22F0D00CC();

      return v9;
    }

    v5 = *(v2 + 8 * v12);
    ++v8;
    if (v5)
    {
      v8 = v12;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

void *sub_22F082E44()
{
  v1 = sub_22F0D126C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = sub_22F0D0A6C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_22F0D127C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[2] = 0x5F7061636F6E5F5FLL;
  v0[3] = 0xE90000000000005FLL;
  sub_22F01B924(0, &qword_280CBEC70, 0x277D85C78);
  (*(v6 + 104))(v9, *MEMORY[0x277D85268], v5);
  sub_22F0D0A5C();
  v11[1] = MEMORY[0x277D84F90];
  sub_22F03329C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1E90, qword_22F0DA870);
  sub_22F0332F4();
  sub_22F0D13EC();
  v0[4] = sub_22F0D129C();
  return v0;
}

void *sub_22F08307C()
{
  type metadata accessor for MessageDeviceCapabilityLookup();
  swift_allocObject();
  result = sub_22F082E44();
  off_27DAA1DA0 = result;
  return result;
}

uint64_t sub_22F0830B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22F0830DC, 0, 0);
}

uint64_t sub_22F0830DC()
{
  v1 = v0[4];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_22F08318C;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_22F0834D8(v7, v5, v3, v2);
}

uint64_t sub_22F08318C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22F083280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22F0832A8, 0, 0);
}

uint64_t sub_22F0832A8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = String.trimToNil()();
  v0[7] = v3.value._object;
  if (v3.value._object)
  {
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_22F0833C8;
    v5 = v0[6];
    v6 = v0[2];
    v7 = v0[3];

    return sub_22F0834D8(v6, v7, v3.value._countAndFlagsBits, v3.value._object);
  }

  else
  {
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000023, 0x800000022F0DEF60, 500);
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22F0833C8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22F0834D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22F083500, 0, 0);
}

uint64_t sub_22F083500()
{
  v78 = v0;
  v1 = v0[3];
  if (v1 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F0D143C())
  {
    v73 = i;
    if (!i)
    {
      v43 = v0;
      v44 = 0x800000022F0DF050;
      v45 = 0xD000000000000011;
      goto LABEL_48;
    }

    v3 = [objc_opt_self() sharedInstance];
    v0[7] = v3;
    if (!v3)
    {
      break;
    }

    v71 = v3;
    v72 = v0;
    v4 = 0;
    v5 = v0[3];
    v76 = v1 & 0xC000000000000001;
    v77[0] = MEMORY[0x277D84F98];
    v75 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v5 + 32;
    v0 = v73;
    while (1)
    {
      if (v76)
      {
        v8 = MEMORY[0x2318FDAB0](v4, v72[3]);
      }

      else
      {
        if (v4 >= *(v75 + 16))
        {
          goto LABEL_57;
        }

        v8 = *(v6 + 8 * v4);
      }

      v9 = v8;
      v10 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v11 = [v8 appleID];
      if (v11 && (v12 = v11, sub_22F0D0CAC(), v12, v13 = String.trimToNil()(), , v13.value._object))
      {
        v1 = sub_22F03C784(0, 1, 1, MEMORY[0x277D84F90]);
        v15 = *(v1 + 16);
        v14 = *(v1 + 24);
        if (v15 >= v14 >> 1)
        {
          v1 = sub_22F03C784((v14 > 1), v15 + 1, 1, v1);
        }

        *(v1 + 16) = v15 + 1;
        *(v1 + 16 * v15 + 32) = v13;
        v0 = v73;
      }

      else
      {
        v1 = MEMORY[0x277D84F90];
      }

      v7 = v9;
      sub_22F085D00(v1, v77, v7);

      ++v4;
      if (v10 == v0)
      {
        v1 = v77[0];
        v72[8] = v77[0];
        v16 = sub_22F0CFF1C();
        v17 = sub_22F0825FC(v16);
        v72[9] = v17;

        if (qword_27DAA0570 != -1)
        {
          swift_once();
        }

        v18 = sub_22F0D0A1C();
        __swift_project_value_buffer(v18, qword_27DAA1A28);
        sub_22F0CFF1C();
        v19 = sub_22F0D09FC();
        v20 = sub_22F0D124C();

        v74 = v1;
        v70 = v17;
        if (os_log_type_enabled(v19, v20))
        {
          v1 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v77[0] = v21;
          *v1 = 136315138;
          v22 = MEMORY[0x2318FD490](v17, MEMORY[0x277D837D0]);
          v24 = sub_22F00A560(v22, v23, v77);

          *(v1 + 4) = v24;
          _os_log_impl(&dword_22EFE1000, v19, v20, "IDS handles for dev cap lookup %s", v1, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v21);
          MEMORY[0x2318FE8B0](v21, -1, -1);
          MEMORY[0x2318FE8B0](v1, -1, -1);
        }

        v25 = 0;
        v26 = MEMORY[0x277D84F98];
        while (1)
        {
          if (v76)
          {
            v29 = MEMORY[0x2318FDAB0](v25, v72[3]);
          }

          else
          {
            if (v25 >= *(v75 + 16))
            {
              goto LABEL_59;
            }

            v29 = *(v6 + 8 * v25);
          }

          v30 = v29;
          v31 = (v25 + 1);
          if (__OFADD__(v25, 1))
          {
            goto LABEL_58;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77[0] = v26;
          v34 = sub_22EFFDBAC(v30);
          v35 = v26[2];
          v36 = (v33 & 1) == 0;
          v37 = v35 + v36;
          if (__OFADD__(v35, v36))
          {
            goto LABEL_60;
          }

          v1 = v33;
          if (v26[3] >= v37)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v33 & 1) == 0)
              {
                goto LABEL_36;
              }
            }

            else
            {
              sub_22F060614();
              v26 = v77[0];
              if ((v1 & 1) == 0)
              {
                goto LABEL_36;
              }
            }
          }

          else
          {
            sub_22F07ADFC(v37, isUniquelyReferenced_nonNull_native);
            v26 = v77[0];
            v38 = sub_22EFFDBAC(v30);
            if ((v1 & 1) != (v39 & 1))
            {
              sub_22F01B924(0, &qword_280CBD148, 0x277D08268);

              return sub_22F0D191C();
            }

            v34 = v38;
            if ((v1 & 1) == 0)
            {
LABEL_36:
              v26[(v34 >> 6) + 8] |= 1 << v34;
              *(v26[6] + 8 * v34) = v30;
              *(v26[7] + 8 * v34) = MEMORY[0x277D84F90];
              v40 = v26[2];
              v41 = __OFADD__(v40, 1);
              v42 = v40 + 1;
              if (v41)
              {
                goto LABEL_61;
              }

              v26[2] = v42;
              goto LABEL_24;
            }
          }

          v27 = v26[7];
          v28 = *(v27 + 8 * v34);
          *(v27 + 8 * v34) = MEMORY[0x277D84F90];

LABEL_24:
          ++v25;
          if (v31 == v0)
          {
            v46 = v72[5];
            v47 = swift_allocObject();
            v72[10] = v47;
            *(v47 + 16) = v26;
            sub_22F0CFF1C();
            sub_22F0CFF1C();
            v48 = sub_22F0D09FC();
            v49 = sub_22F0D124C();

            if (os_log_type_enabled(v48, v49))
            {
              v51 = v72[4];
              v50 = v72[5];
              v52 = swift_slowAlloc();
              v53 = swift_slowAlloc();
              v77[0] = v53;
              *v52 = 136315394;
              *(v52 + 4) = sub_22F00A560(v51, v50, v77);
              *(v52 + 12) = 2080;
              v54 = MEMORY[0x2318FD490](v17, MEMORY[0x277D837D0]);
              v56 = sub_22F00A560(v54, v55, v77);

              *(v52 + 14) = v56;
              _os_log_impl(&dword_22EFE1000, v48, v49, "Checking for %s with %s", v52, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x2318FE8B0](v53, -1, -1);
              MEMORY[0x2318FE8B0](v52, -1, -1);
            }

            v57 = v72[5];
            v58 = v72[6];
            v59 = v72[4];
            v60 = [objc_opt_self() refreshIDInfo];
            v72[11] = v60;
            [v60 setForceRefresh_];
            v61 = swift_task_alloc();
            v72[12] = v61;
            v61[2] = v71;
            v61[3] = v70;
            v61[4] = 1;
            v61[5] = v60;
            v61[6] = v58;
            v61[7] = v47;
            v61[8] = v59;
            v61[9] = v57;
            v61[10] = v74;
            v62 = *(MEMORY[0x277D859E0] + 4);
            v63 = swift_task_alloc();
            v72[13] = v63;
            *v63 = v72;
            v63[1] = sub_22F083D8C;
            v64 = v72[2];

            return MEMORY[0x2822007B8](v64, 0, 0, 0xD000000000000024, 0x800000022F0DF020, sub_22F0865EC, v61, &type metadata for DiscoveredHandles);
          }
        }
      }
    }

    __break(1u);
LABEL_57:
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
    ;
  }

  v43 = v0;
  v45 = 0xD000000000000029;
  v44 = 0x800000022F0DEFD0;
LABEL_48:
  v65 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v45, v44, 500);
  if (qword_27DAA0570 != -1)
  {
    swift_once();
  }

  v66 = sub_22F0D0A1C();
  __swift_project_value_buffer(v66, qword_27DAA1A28);
  v67 = v65;
  Logger.ifError(_:message:)(v65);

  swift_willThrow();
  v68 = v43[1];

  return v68();
}

uint64_t sub_22F083D8C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_22F083EE4, 0, 0);
}

uint64_t sub_22F083EE4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  sub_22F0D00CC();
  v3 = *(v0 + 8);

  return v3();
}

void sub_22F083F58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = a8;
  v40 = a4;
  v41 = a5;
  v39 = a2;
  v34 = a10;
  v35 = a7;
  v32 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DA8, &qword_22F0D94F0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  sub_22F0190C4(a3);
  v38 = sub_22F0D0F2C();

  v36 = sub_22F0D0C7C();
  v31 = sub_22F0D0C7C();
  v33 = *(a6 + 32);
  (*(v14 + 16))(v17, a1, v13);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v14 + 32))(v22 + v18, v17, v13);
  v23 = v34;
  *(v22 + v19) = v35;
  *(v22 + v20) = a6;
  v24 = (v22 + v21);
  v25 = v32;
  *v24 = v37;
  v24[1] = v25;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = sub_22F086624;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F04CEB4;
  aBlock[3] = &block_descriptor_7;
  v26 = _Block_copy(aBlock);
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  sub_22F0D00CC();
  v27 = v38;
  v28 = v36;
  v29 = v31;
  [v39 idInfoForDestinations:v38 service:v36 infoTypes:v40 options:v41 listenerID:v31 queue:v33 completionBlock:v26];
  _Block_release(v26);
}

void sub_22F084230(uint64_t a1, id a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = a2;
    v10 = a2;
    if (qword_27DAA0570 == -1)
    {
LABEL_3:
      v11 = sub_22F0D0A1C();
      __swift_project_value_buffer(v11, qword_27DAA1A28);
      v12 = v9;
      Logger.ifError(_:message:)(v9);

      swift_beginAccess();
      v55 = *(a4 + 16);
      sub_22F0CFF1C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DA8, &qword_22F0D94F0);
      sub_22F0D108C();

      return;
    }

LABEL_33:
    swift_once();
    goto LABEL_3;
  }

  if (a1 && *(a1 + 16))
  {
    v18 = qword_27DAA0570;
    sub_22F0CFF1C();
    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_22F0D0A1C();
    __swift_project_value_buffer(v19, qword_27DAA1A28);
    sub_22F0CFF1C();
    sub_22F0CFFAC();
    v20 = sub_22F0D09FC();
    v21 = sub_22F0D124C();
    sub_22F0D00CC();

    v53 = a6;
    if (os_log_type_enabled(v20, v21))
    {
      buf = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54[0] = v52;
      *buf = 136315138;
      sub_22F0CFFAC();
      v9 = 0;
      v22 = sub_22F085994(a1);
      sub_22F0D00CC();
      log = v20;
      v23 = MEMORY[0x2318FD490](v22, MEMORY[0x277D837D0]);
      v24 = v21;
      v26 = v25;

      v27 = sub_22F00A560(v23, v26, v54);

      *(buf + 4) = v27;
      _os_log_impl(&dword_22EFE1000, log, v24, "DevCaps: checking %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x2318FE8B0](v52, -1, -1);
      MEMORY[0x2318FE8B0](buf, -1, -1);
    }

    else
    {

      v9 = 0;
    }

    v33 = 1 << *(a1 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(a1 + 64);
    v36 = (v33 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    sub_22F0CFFAC();
    sub_22F0CFF1C();
    sub_22F0CFF1C();
    v37 = 0;
    while (v35)
    {
      v38 = v37;
LABEL_25:
      v39 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      sub_22F003428(*(a1 + 48) + 40 * (v39 | (v38 << 6)), v54);
      sub_22F08489C(v54, a1, v53, a7, a5, a8, (a4 + 16));
      sub_22F003484(v54);
    }

    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v36)
      {

        sub_22F0D00CC();

        sub_22F0D00CC();
        swift_bridgeObjectRelease_n();
        goto LABEL_27;
      }

      v35 = *(a1 + 64 + 8 * v38);
      ++v37;
      if (v35)
      {
        v37 = v38;
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  if (qword_27DAA0570 != -1)
  {
    swift_once();
  }

  v28 = sub_22F0D0A1C();
  __swift_project_value_buffer(v28, qword_27DAA1A28);
  sub_22F0CFF1C();
  v29 = sub_22F0D09FC();
  v30 = sub_22F0D124C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v54[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_22F00A560(a6, a7, v54);
    _os_log_impl(&dword_22EFE1000, v29, v30, "DevCaps: no results for %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x2318FE8B0](v32, -1, -1);
    MEMORY[0x2318FE8B0](v31, -1, -1);
  }

LABEL_27:
  swift_beginAccess();
  v40 = *(a4 + 16);
  v41 = qword_27DAA0570;
  sub_22F0CFF1C();
  if (v41 != -1)
  {
    swift_once();
  }

  v42 = sub_22F0D0A1C();
  __swift_project_value_buffer(v42, qword_27DAA1A28);
  sub_22F0CFF1C();
  v43 = sub_22F0D09FC();
  v44 = sub_22F0D124C();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v55 = v46;
    *v45 = 136315138;
    v54[5] = v40;
    v47 = DiscoveredHandles.description.getter();
    v49 = sub_22F00A560(v47, v48, &v55);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_22EFE1000, v43, v44, "DevCaps: Done with %s\n\n", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x2318FE8B0](v46, -1, -1);
    MEMORY[0x2318FE8B0](v45, -1, -1);
  }

  v55 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1DA8, &qword_22F0D94F0);
  sub_22F0D108C();
}

void sub_22F08489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, id *a7)
{
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v10 = sub_22F0D0A1C();
  __swift_project_value_buffer(v10, qword_280CBEC40);
  sub_22F003428(a1, v124);
  v11 = sub_22F0D09FC();
  v12 = sub_22F0D122C();
  if (os_log_type_enabled(v11, v12))
  {
    v112 = a2;
    v13 = swift_slowAlloc();
    v115 = a5;
    v14 = swift_slowAlloc();
    v122 = v14;
    *v13 = 136315138;
    v15 = sub_22F0D146C();
    v16 = v10;
    v18 = v17;
    sub_22F003484(v124);
    v19 = sub_22F00A560(v15, v18, &v122);
    v10 = v16;

    *(v13 + 4) = v19;
    _os_log_impl(&dword_22EFE1000, v11, v12, "DevCaps: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v20 = v14;
    a5 = v115;
    MEMORY[0x2318FE8B0](v20, -1, -1);
    v21 = v13;
    a2 = v112;
    MEMORY[0x2318FE8B0](v21, -1, -1);

    if (!*(v112 + 16))
    {
      goto LABEL_80;
    }
  }

  else
  {

    sub_22F003484(v124);
    if (!*(a2 + 16))
    {
      goto LABEL_80;
    }
  }

  v22 = sub_22EFFDA98(a1);
  if ((v23 & 1) == 0 || (sub_22F003598(*(a2 + 56) + 32 * v22, v124), sub_22F01B924(0, &qword_27DAA1DB0, 0x277D189D0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_80:
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v10, qword_27DAA1A28);
    sub_22F003428(a1, v124);
    v100 = sub_22F0D09FC();
    v101 = sub_22F0D124C();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v122 = v103;
      *v102 = 136315138;
      v104 = sub_22F0D146C();
      v106 = v105;
      sub_22F003484(v124);
      v107 = sub_22F00A560(v104, v106, &v122);

      *(v102 + 4) = v107;
      _os_log_impl(&dword_22EFE1000, v100, v101, "DevCaps: '%s' did not resolve to any ids endpoints", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      MEMORY[0x2318FE8B0](v103, -1, -1);
      MEMORY[0x2318FE8B0](v102, -1, -1);

      return;
    }

    goto LABEL_85;
  }

  v110 = v10;
  v24 = v122;
  v25 = [v122 endpoints];
  if (!v25)
  {

LABEL_79:
    v10 = v110;
    goto LABEL_80;
  }

  v26 = v25;
  sub_22F01B924(0, &qword_27DAA1DB8, 0x277D189C0);
  v27 = sub_22F0D0F4C();

  v109 = v27 >> 62;
  if (v27 >> 62)
  {
    goto LABEL_77;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_78:

    goto LABEL_79;
  }

  while (1)
  {
    v116 = v27;
    v108 = v24;
    if (a5[2] == a3 && a5[3] == a4)
    {
      break;
    }

    if (sub_22F0D188C())
    {
      break;
    }

    v24 = 0;
    v124[0] = MEMORY[0x277D84F90];
    v111 = v27 & 0xFFFFFFFFFFFFFF8;
    v113 = v27 & 0xC000000000000001;
    while (1)
    {
      if (v113)
      {
        v30 = MEMORY[0x2318FDAB0](v24, v27);
      }

      else
      {
        if (v24 >= *(v111 + 16))
        {
          goto LABEL_76;
        }

        v30 = *(v27 + 8 * v24 + 32);
      }

      v31 = v30;
      v32 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v33 = [v30 capabilities];
      v34 = sub_22F0D0C7C();
      a5 = [v33 valueForCapability_];

      if (a5)
      {
        sub_22F0D15EC();
        v35 = *(v124[0] + 16);
        sub_22F0D162C();
        sub_22F0D163C();
        sub_22F0D15FC();
      }

      else
      {
      }

      v27 = v116;
      ++v24;
      if (v32 == v28)
      {
        v29 = v124[0];
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    v28 = sub_22F0D143C();
    if (!v28)
    {
      goto LABEL_78;
    }
  }

  sub_22F0CFF1C();
  v29 = v27;
LABEL_28:
  v36 = v29 >> 62;
  if (v29 >> 62)
  {
    v37 = sub_22F0D143C();
  }

  else
  {
    v37 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v109)
  {
    v38 = sub_22F0D143C();
  }

  else
  {
    v38 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_22F003428(a1, v124);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v39 = sub_22F0D09FC();
  v40 = sub_22F0D124C();
  if (os_log_type_enabled(v39, v40))
  {
    v114 = v38;
    v120 = v37;
    v41 = v29;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v122 = v43;
    *v42 = 136315650;
    v44 = sub_22F0D146C();
    v46 = v45;
    sub_22F003484(v124);
    v47 = sub_22F00A560(v44, v46, &v122);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2048;
    if (v36)
    {
      v48 = sub_22F0D143C();
    }

    else
    {
      v48 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v42 + 14) = v48;

    *(v42 + 22) = 2048;
    if (v109)
    {
      v49 = sub_22F0D143C();
    }

    else
    {
      v49 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v42 + 24) = v49;

    _os_log_impl(&dword_22EFE1000, v39, v40, "'%s' matched %ld of %ld\n", v42, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x2318FE8B0](v43, -1, -1);
    MEMORY[0x2318FE8B0](v42, -1, -1);

    v37 = v120;
    v38 = v114;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    sub_22F003484(v124);
  }

  if (v37 != v38)
  {

    v73 = v110;
    if (qword_27DAA0570 != -1)
    {
      swift_once();
      v73 = v110;
    }

    __swift_project_value_buffer(v73, qword_27DAA1A28);
    sub_22F003428(a1, v124);
    v74 = sub_22F0D09FC();
    v75 = sub_22F0D124C();
    if (!os_log_type_enabled(v74, v75))
    {

LABEL_85:
      sub_22F003484(v124);
      return;
    }

    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v122 = v77;
    *v76 = 136315138;
    v78 = sub_22F0D146C();
    v80 = v79;
    sub_22F003484(v124);
    v81 = sub_22F00A560(v78, v80, &v122);

    *(v76 + 4) = v81;
    _os_log_impl(&dword_22EFE1000, v74, v75, "'%s' not all endpoints match", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    MEMORY[0x2318FE8B0](v77, -1, -1);
    v82 = v76;
LABEL_59:
    MEMORY[0x2318FE8B0](v82, -1, -1);
    goto LABEL_72;
  }

  v124[3] = MEMORY[0x277D84030];
  v124[0] = swift_allocObject();
  sub_22F003428(a1, v124[0] + 16);
  sub_22F003598(v124, &v122);
  v122 = sub_22F0D0CFC();
  v123 = v50;
  v51 = 0xE000000000000000;
  sub_22F00901C();
  v52 = sub_22F0D137C();
  v54 = v53;

  v122 = v52;
  v123 = v54;
  v55 = sub_22F0D137C();
  v57 = v56;

  __swift_destroy_boxed_opaque_existential_1Tm(v124);
  if (!*(a6 + 16) || (v58 = sub_22EFFDA80(v55, v57), (v59 & 1) == 0))
  {

    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v110, qword_27DAA1A28);
    sub_22F0CFF1C();
    v74 = sub_22F0D09FC();
    v83 = sub_22F0D123C();

    if (!os_log_type_enabled(v74, v83))
    {

      goto LABEL_72;
    }

    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v124[0] = v85;
    *v84 = 136315138;
    v86 = sub_22F00A560(v55, v57, v124);

    *(v84 + 4) = v86;
    _os_log_impl(&dword_22EFE1000, v74, v83, "%s can't locate person!", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v85);
    MEMORY[0x2318FE8B0](v85, -1, -1);
    v82 = v84;
    goto LABEL_59;
  }

  v60 = *(*(a6 + 56) + 8 * v58);
  swift_beginAccess();
  v61 = v60;
  v62 = *a7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v122 = *a7;
  v64 = v122;
  *a7 = 0x8000000000000000;
  v66 = sub_22EFFDBAC(v61);
  v67 = v64[2];
  v68 = (v65 & 1) == 0;
  v69 = v67 + v68;
  if (__OFADD__(v67, v68))
  {
    __break(1u);
    goto LABEL_88;
  }

  v70 = v65;
  if (v64[3] >= v69)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a7 = v64;
      if (v65)
      {
        goto LABEL_65;
      }
    }

    else
    {
      sub_22F060614();
      v64 = v122;
      *a7 = v122;
      if (v70)
      {
LABEL_65:
        v51 = v64[7];
        v64 = *(v51 + 8 * v66);
        v88 = swift_isUniquelyReferenced_nonNull_native();
        *(v51 + 8 * v66) = v64;
        if (v88)
        {
LABEL_66:
          v90 = v64[2];
          v89 = v64[3];
          if (v90 >= v89 >> 1)
          {
            v64 = sub_22F03C784((v89 > 1), v90 + 1, 1, v64);
            *(v51 + 8 * v66) = v64;
          }

          v64[2] = v90 + 1;
          v91 = &v64[2 * v90];
          *(v91 + 4) = v55;
          *(v91 + 5) = v57;
          swift_endAccess();
          sub_22F0CFF1C();

          if (qword_27DAA0570 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v110, qword_27DAA1A28);
          v74 = v61;
          sub_22F0CFF1C();
          v92 = sub_22F0D09FC();
          v93 = sub_22F0D122C();

          if (!os_log_type_enabled(v92, v93))
          {

            goto LABEL_73;
          }

          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v124[0] = v95;
          *v94 = 136315394;
          v96 = FAFamilyMember.displayNameWithFallback.getter();
          v98 = sub_22F00A560(v96, v97, v124);

          *(v94 + 4) = v98;
          *(v94 + 12) = 2080;
          v99 = sub_22F00A560(v55, v57, v124);

          *(v94 + 14) = v99;
          _os_log_impl(&dword_22EFE1000, v92, v93, "%s += %s", v94, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318FE8B0](v95, -1, -1);
          MEMORY[0x2318FE8B0](v94, -1, -1);

LABEL_72:
LABEL_73:

          return;
        }

LABEL_88:
        v64 = sub_22F03C784(0, v64[2] + 1, 1, v64);
        *(v51 + 8 * v66) = v64;
        goto LABEL_66;
      }
    }

LABEL_64:
    sub_22F018620(v66, v61, MEMORY[0x277D84F90], v64);
    v87 = v61;
    goto LABEL_65;
  }

  sub_22F07ADFC(v69, isUniquelyReferenced_nonNull_native);
  v64 = v122;
  v71 = sub_22EFFDBAC(v61);
  if ((v70 & 1) == (v72 & 1))
  {
    v66 = v71;
    *a7 = v64;
    if (v70)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  sub_22F01B924(0, &qword_280CBD148, 0x277D08268);
  sub_22F0D191C();
  __break(1u);
}