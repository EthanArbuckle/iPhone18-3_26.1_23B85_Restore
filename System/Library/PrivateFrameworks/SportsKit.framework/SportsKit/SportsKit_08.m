uint64_t sub_26B6C3444(uint64_t result, uint64_t *a2)
{
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = *(sub_26B6E93B4() - 8);
    result = sub_26B6C8A70(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5++, a2);
  }

  while (!v2);
  return result;
}

uint64_t sub_26B6C3514(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409038, &unk_26B6F8D00) - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

BOOL sub_26B6C35FC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_26B6C36AC()
{
  v0 = sub_26B6E93B4();
  __swift_allocate_value_buffer(v0, qword_2810CE4E0);
  v1 = __swift_project_value_buffer(v0, qword_2810CE4E0);
  v2 = [objc_opt_self() defaultManager];
  NSFileManager.currentContainerURL.getter(v1);
}

uint64_t sub_26B6C3760()
{
  v0 = sub_26B6E93B4();
  OUTLINED_FUNCTION_16(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_54_2();

  return v4(v3);
}

uint64_t sub_26B6C37E8()
{
  v0 = sub_26B6E92C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = 0xD000000000000011;
  v6[1] = 0x800000026B6FD950;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  sub_26B641414();
  sub_26B6E93A4();
  return (*(v1 + 8))(v4, v0);
}

void sub_26B6C3978()
{
  OUTLINED_FUNCTION_10_0();
  v24[0] = v3;
  v24[1] = v4;
  v6 = v5;
  v7 = v0;
  v9 = v8;
  v10 = sub_26B6E93B4();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_84_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  v17 = OUTLINED_FUNCTION_46(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_14_12();
  MEMORY[0x28223BE20](v20);
  v22 = v24 - v21;
  v23 = *v6;
  swift_beginAccess();
  sub_26B67E194(v7 + v23, v22, &qword_280409220, &qword_26B6EC920);
  if (__swift_getEnumTagSinglePayload(v22, 1, v10) == 1)
  {
    sub_26B650BBC(v22, &qword_280409220, &qword_26B6EC920);
    sub_26B6E9344();
    sub_26B6E9354();
    (*(v13 + 8))(v2, v10);
    (*(v13 + 16))(v1, v9, v10);
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v10);
    swift_beginAccess();
    sub_26B6CF958(v1, v7 + v23);
    swift_endAccess();
  }

  else
  {
    (*(v13 + 32))(v9, v22, v10);
  }

  OUTLINED_FUNCTION_8_0();
}

void sub_26B6C3BC0()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_33_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v11 = OUTLINED_FUNCTION_46(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_30_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_51_3();
  v18 = *v5;
  swift_beginAccess();
  OUTLINED_FUNCTION_46_2();
  sub_26B67E194(v19, v20, v21, &qword_26B6EC920);
  v22 = sub_26B6E93B4();
  if (__swift_getEnumTagSinglePayload(v1, 1, v22) == 1)
  {
    sub_26B650BBC(v1, &qword_280409220, &qword_26B6EC920);
    v3(v0);
    v23 = *(*(v22 - 8) + 16);
    v24 = OUTLINED_FUNCTION_51_1();
    v25(v24);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v22);
    swift_beginAccess();
    sub_26B6CF958(v16, v0 + v18);
    swift_endAccess();
  }

  else
  {
    (*(*(v22 - 8) + 32))(v7, v1, v22);
  }

  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_26B6C3D78()
{
  v0 = sub_26B6E92C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = 0xD00000000000001ALL;
  v6[1] = 0x800000026B6FD930;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  sub_26B641414();
  sub_26B6E93A4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_26B6C3ED4()
{
  v0 = sub_26B6E92C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = 0xD000000000000019;
  v6[1] = 0x800000026B6FD910;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  sub_26B641414();
  sub_26B6E93A4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_26B6C4010()
{
  v2 = v0;
  v3 = sub_26B6E9094();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_6();
  v9 = OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___encoder;
  if (*(v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___encoder))
  {
    v10 = *(v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___encoder);
  }

  else
  {
    v11 = sub_26B6E90D4();
    OUTLINED_FUNCTION_11_9(v11);
    swift_allocObject();
    v10 = sub_26B6E90C4();
    (*(v6 + 104))(v1, *MEMORY[0x277CC8778], v3);
    sub_26B6E90A4();
    v12 = *(v2 + v9);
    *(v2 + v9) = v10;
  }

  return v10;
}

uint64_t sub_26B6C4120()
{
  v2 = v0;
  v3 = sub_26B6E9004();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_6();
  v9 = OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___decoder;
  if (*(v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___decoder))
  {
    v10 = *(v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___decoder);
  }

  else
  {
    v11 = sub_26B6E9054();
    OUTLINED_FUNCTION_11_9(v11);
    swift_allocObject();
    v10 = sub_26B6E9044();
    (*(v6 + 104))(v1, *MEMORY[0x277CC86D0], v3);
    sub_26B6E9014();
    v12 = *(v2 + v9);
    *(v2 + v9) = v10;
  }

  return v10;
}

void sub_26B6C4230()
{
  OUTLINED_FUNCTION_38();
  LODWORD(v99) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409038, &unk_26B6F8D00);
  v8 = OUTLINED_FUNCTION_4(v7);
  v98 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_30_0();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13_11();
  v16 = sub_26B6E93B4();
  v17 = OUTLINED_FUNCTION_4(v16);
  v96 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_10_12();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_12();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_26_8();
  MEMORY[0x28223BE20](v23);
  v25 = v88 - v24;
  v26 = sub_26B6C8844(v99);
  if (!v1)
  {
    v99 = v25;
    v100 = v14;
    v95 = v2;
    v97 = v5;
    v88[1] = 0;
    v89 = v4;
    v91 = v3;
    v92 = v0;
    v27 = v26[2];
    if (v27)
    {
      v94 = v7;
      v101 = MEMORY[0x277D84F90];
      v28 = v26;
      sub_26B63BA4C(0, v27, 0);
      v29 = v16;
      v30 = v99;
      v31 = v98[80];
      OUTLINED_FUNCTION_73_0();
      v90 = v28;
      v33 = v28 + v32;
      v93 = *(v34 + 72);
      v35 = (v96 + 32);
      v36 = v100;
      do
      {
        v98 = v27;
        v37 = v95;
        sub_26B67E194(v33, v95, &qword_280409038, &unk_26B6F8D00);
        sub_26B67EDE8(v37, v36, &qword_280409038, &unk_26B6F8D00);
        v38 = *(v94 + 48);
        v99 = *v35;
        (v99)(v30, v100, v29);
        v39 = sub_26B6E9564();
        OUTLINED_FUNCTION_16(v39);
        v36 = v100;
        (*(v40 + 8))(&v100[v38]);
        v41 = v29;
        v43 = *(v101 + 16);
        v42 = *(v101 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_26B63BA4C(v42 > 1, v43 + 1, 1);
          v36 = v100;
        }

        *(v101 + 16) = v43 + 1;
        v44 = v96[80];
        OUTLINED_FUNCTION_73_0();
        (v99)(v101 + v45 + *(v46 + 72) * v43, v30, v41);
        v33 += v93;
        v27 = (v98 - 1);
        v29 = v41;
      }

      while (v98 != 1);

      v47 = v101;
      v16 = v41;
    }

    else
    {

      v47 = MEMORY[0x277D84F90];
    }

    v48 = 0;
    v49 = *(v47 + 16);
    v51 = v96;
    v50 = v97;
    v99 = v96 + 8;
    v100 = v96 + 16;
    v98 = v96 + 32;
    v90 = MEMORY[0x277D84F90];
    v93 = v16;
    while (1)
    {
      while (1)
      {
        if (v49 == v48)
        {

          v63 = v90[2];
          if (v63)
          {
            v64 = v51[80];
            OUTLINED_FUNCTION_73_0();
            v67 = v65 + v66;
            v94 = *(v51 + 9);
            v68 = MEMORY[0x277D84F98];
            v95 = *(v51 + 2);
            v69 = v91;
            do
            {
              v70 = v95(v69, v67, v16);
              v71 = MEMORY[0x26D67E210](v70);
              sub_26B6C921C();
              if (v72)
              {
                v97 = v71;
                v98 = v63;
                v74 = *&v72[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId];
                v73 = *&v72[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId + 8];
                v96 = v72;
                v75 = *&v72[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_consumers];

                swift_isUniquelyReferenced_nonNull_native();
                v76 = sub_26B675324();
                if (__OFADD__(v68[2], (v77 & 1) == 0))
                {
                  goto LABEL_40;
                }

                v78 = v76;
                v79 = v77;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A2F0, &qword_26B6F2818);
                if (sub_26B6EA2E4())
                {
                  v80 = sub_26B675324();
                  if ((v79 & 1) != (v81 & 1))
                  {
                    goto LABEL_42;
                  }

                  v78 = v80;
                }

                if (v79)
                {
                  v82 = v68[7];
                  v83 = *(v82 + 8 * v78);
                  *(v82 + 8 * v78) = v75;
                }

                else
                {
                  OUTLINED_FUNCTION_4_7(&v68[v78 >> 6]);
                  v84 = (v68[6] + 16 * v78);
                  *v84 = v74;
                  v84[1] = v73;
                  *(v68[7] + 8 * v78) = v75;
                  v85 = v68[2];
                  v86 = __OFADD__(v85, 1);
                  v87 = v85 + 1;
                  if (v86)
                  {
                    goto LABEL_41;
                  }

                  v68[2] = v87;
                }

                v16 = v93;
                v69 = v91;
                v71 = v97;
                v63 = v98;
              }

              objc_autoreleasePoolPop(v71);
              (*v99)(v69, v16);
              v67 += v94;
              --v63;
            }

            while (v63);
          }

          goto LABEL_38;
        }

        if (v48 >= *(v47 + 16))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          sub_26B6EA674();
          __break(1u);
          return;
        }

        v52 = (v51[80] + 32) & ~v51[80];
        v53 = *(v51 + 9);
        (*(v51 + 2))(v50, v47 + v52 + v53 * v48, v16);
        if (sub_26B6E92D4() != 1920103779 || v54 != 0xE400000000000000)
        {
          break;
        }

LABEL_19:
        v50 = v97;
        v95 = *v98;
        v95(v89, v97, v16);
        v57 = v90;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26B63BA4C(0, v57[2] + 1, 1);
          v50 = v97;
          v59 = v57;
        }

        v61 = v59[2];
        v60 = v59[3];
        if (v61 >= v60 >> 1)
        {
          sub_26B63BA4C(v60 > 1, v61 + 1, 1);
          v50 = v97;
          v59 = v57;
        }

        ++v48;
        v59[2] = v61 + 1;
        v90 = v59;
        v62 = v59 + v52 + v61 * v53;
        v16 = v93;
        v95(v62, v89, v93);
      }

      v56 = sub_26B6EA5D4();

      if (v56)
      {
        goto LABEL_19;
      }

      v50 = v97;
      (*v99)(v97, v16);
      ++v48;
    }
  }

LABEL_38:
  OUTLINED_FUNCTION_37();
}

void sub_26B6C4948()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  OUTLINED_FUNCTION_66_1(*MEMORY[0x277D85DE8]);
  v2 = sub_26B6E93B4();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v8 = *(v0 + 16);
  sub_26B6E9384();
  v9 = sub_26B6E99F4();

  v10 = [v8 fileExistsAtPath_];

  if ((v10 & 1) == 0)
  {
    v11 = sub_26B6E9324();
    v61 = 0;
    v12 = OUTLINED_FUNCTION_58_2();
    v14 = [v12 v13];

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v16 = 0;
      v17 = sub_26B6E92B4();

      swift_willThrow();
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_26B6EA134();
      MEMORY[0x26D67D4D0](0xD000000000000029, 0x800000026B6FD6E0);
      v18 = sub_26B6E9384();
      MEMORY[0x26D67D4D0](v18);

      OUTLINED_FUNCTION_49_2();
      swift_getErrorValue();
      v19 = sub_26B6EA6B4();
      MEMORY[0x26D67D4D0](v19);

      if (qword_2810CE9F0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v20 = sub_26B6E95C4();
      OUTLINED_FUNCTION_19_5(v20, qword_2810D4308);

      v21 = sub_26B6E95A4();
      v22 = sub_26B6E9E74();

      v60 = v21;
      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_62_2();
        v23 = v5;
        v24 = swift_slowAlloc();
        OUTLINED_FUNCTION_39_4();
        v59 = v17;
        v25 = swift_slowAlloc();
        v61 = v25;
        *v24 = 136315138;
        v26 = sub_26B6D22D8(0, 0xE000000000000000, &v61);

        *(v24 + 4) = v26;
        _os_log_impl(&dword_26B630000, v60, v22, "%s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        v27 = OUTLINED_FUNCTION_9_11();
        MEMORY[0x26D67E950](v27);
        v5 = v23;
        OUTLINED_FUNCTION_14_8();
        MEMORY[0x26D67E950]();
      }

      else
      {
      }
    }
  }

  v28 = *(v1 + OBJC_IVAR____TtC9SportsKit15PersistentStore_sessionsDirectoryPath);
  v29 = *(v1 + OBJC_IVAR____TtC9SportsKit15PersistentStore_sessionsDirectoryPath + 8);
  OUTLINED_FUNCTION_33_3();
  sub_26B6E9344();
  sub_26B6E9384();
  OUTLINED_FUNCTION_75_1();
  v30 = *(v5 + 8);
  v31 = OUTLINED_FUNCTION_6_0();
  v30(v31);
  v32 = sub_26B6E99F4();

  v33 = OUTLINED_FUNCTION_58_2();
  v35 = [v33 v34];

  if ((v35 & 1) == 0)
  {
    OUTLINED_FUNCTION_33_3();
    sub_26B6E9344();
    v36 = sub_26B6E9324();
    v37 = OUTLINED_FUNCTION_6_0();
    v30(v37);
    v61 = 0;
    v38 = OUTLINED_FUNCTION_58_2();
    v40 = [v38 v39];

    if (v40)
    {
      v41 = v61;
    }

    else
    {
      v42 = v61;
      v43 = sub_26B6E92B4();

      swift_willThrow();
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_26B6EA134();
      MEMORY[0x26D67D4D0](0xD000000000000036, 0x800000026B6FD710);
      OUTLINED_FUNCTION_33_3();
      sub_26B6E9344();
      v44 = sub_26B6E9384();
      v46 = v45;
      v47 = OUTLINED_FUNCTION_6_0();
      v30(v47);
      MEMORY[0x26D67D4D0](v44, v46);

      OUTLINED_FUNCTION_49_2();
      swift_getErrorValue();
      v48 = sub_26B6EA6B4();
      MEMORY[0x26D67D4D0](v48);

      v50 = v61;
      v49 = v62;
      if (qword_2810CE9F0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v51 = sub_26B6E95C4();
      OUTLINED_FUNCTION_19_5(v51, qword_2810D4308);

      v52 = sub_26B6E95A4();
      v53 = sub_26B6E9E74();

      if (os_log_type_enabled(v52, v53))
      {
        OUTLINED_FUNCTION_62_2();
        v54 = swift_slowAlloc();
        OUTLINED_FUNCTION_39_4();
        v55 = swift_slowAlloc();
        v61 = v55;
        *v54 = 136315138;
        v56 = sub_26B6D22D8(v50, v49, &v61);

        *(v54 + 4) = v56;
        _os_log_impl(&dword_26B630000, v52, v53, "%s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        v57 = OUTLINED_FUNCTION_9_11();
        MEMORY[0x26D67E950](v57);
        OUTLINED_FUNCTION_14_8();
        MEMORY[0x26D67E950]();
      }

      else
      {
      }
    }
  }

  sub_26B6C7AB8();
  v58 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0();
}

void sub_26B6C4F68()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v0;
  v3 = sub_26B6E93B4();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_10_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_32_4();
  sub_26B6E9344();
  OUTLINED_FUNCTION_69_2();
  sub_26B6E9354();
  v10 = *(v6 + 8);
  v11 = OUTLINED_FUNCTION_48_2();
  v10(v11);
  v12 = *(v0 + 16);
  sub_26B6E9384();
  v13 = sub_26B6E99F4();

  v14 = [v12 fileExistsAtPath_];

  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 24);
    v16 = *(v2 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter), v15);
    (*(v16 + 16))(v1, v15, v16);
    v17 = sub_26B6E9054();
    OUTLINED_FUNCTION_11_9(v17);
    swift_allocObject();
    sub_26B6E9044();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B2B8, &unk_26B6F8D10);
    sub_26B6CE98C();
    OUTLINED_FUNCTION_2_2();
    sub_26B6E9024();
    v19 = OUTLINED_FUNCTION_75_0();
    v10(v19);
    v20 = OUTLINED_FUNCTION_12_3();
    sub_26B645A94(v20, v21);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_75_0();
    v10(v18);
  }

  OUTLINED_FUNCTION_8_0();
}

void sub_26B6C5190()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v5 = sub_26B6E93B4();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_26_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_32_4();
  sub_26B6E9344();
  OUTLINED_FUNCTION_69_2();
  sub_26B6E9354();
  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_68_2();
  v12(v13);
  sub_26B6CD144(v4, sub_26B6CD2B8, sub_26B6CD2B8);
  v14 = sub_26B6E90D4();
  OUTLINED_FUNCTION_11_9(v14);
  swift_allocObject();
  sub_26B6E90C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B2B8, &unk_26B6F8D10);
  sub_26B6CEA68();
  v15 = sub_26B6E90B4();
  if (v1)
  {
    v17 = OUTLINED_FUNCTION_75_0();
    v12(v17);
  }

  else
  {
    v18 = v15;
    v19 = v16;
    v23 = v12;

    v20 = *(v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 24);
    v21 = *(v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter), v20);
    (*(v21 + 8))(v18, v19, v2, 0x10000000, v20, v21);
    v22 = OUTLINED_FUNCTION_75_0();
    v23(v22);
    sub_26B645A94(v18, v19);
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B6C53B4(double a1)
{
  v4 = v1;
  v6 = sub_26B6E9564();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_6();
  if (qword_2810CE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v12 = sub_26B6E95C4();
  __swift_project_value_buffer(v12, qword_2810D4308);
  v13 = sub_26B6E95A4();
  v14 = sub_26B6E9E64();
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_28_5();
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26B630000, v13, v14, "PersistentStore:: Clean up file system - BEGIN", v15, 2u);
    OUTLINED_FUNCTION_14_8();
    MEMORY[0x26D67E950]();
  }

  sub_26B6E9554();
  v16 = sub_26B6C8844(1);
  if (!v2)
  {
    v27 = v16;
    v17 = sub_26B6C8844(0);
    v18 = sub_26B69285C(v17);
    MEMORY[0x28223BE20](v18);
    v26[2] = v3;
    *&v26[3] = a1;
    v26[4] = v4;
    sub_26B6C3514(sub_26B6CEB6C, v26, v27);

    v19 = sub_26B6E95A4();
    v20 = sub_26B6E9E64();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_28_5();
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26B630000, v19, v20, "PersistentStore:: Clean up file system - END", v21, 2u);
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
    }
  }

  v22 = *(v9 + 8);
  v23 = OUTLINED_FUNCTION_75_0();
  return v24(v23);
}

void sub_26B6C5658(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v8 = sub_26B6E93B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409038, &unk_26B6F8D00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v56 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  v20 = *(v17 + 48);
  sub_26B6E94A4();
  if (v21 >= a2)
  {
    v54 = v12;
    v55 = v4;
    v22 = *(a4 + 16);
    sub_26B67E194(a1, v19, &qword_280409038, &unk_26B6F8D00);
    v23 = *(v13 + 48);
    v24 = sub_26B6E9324();
    v25 = sub_26B6E9564();
    v26 = *(v25 - 8);
    v27 = *(v26 + 8);
    v51 = v26 + 8;
    v52 = v27;
    v27(&v19[v23], v25);
    v53 = v9;
    v28 = *(v9 + 8);
    v28(v19, v8);
    v57[0] = 0;
    LODWORD(v22) = [v22 removeItemAtURL:v24 error:v57];

    if (v22)
    {
      v50 = v28;
      v29 = qword_2810CE9F0;
      v30 = v57[0];
      if (v29 != -1)
      {
        swift_once();
      }

      v31 = sub_26B6E95C4();
      __swift_project_value_buffer(v31, qword_2810D4308);
      v32 = v56;
      sub_26B67E194(a1, v56, &qword_280409038, &unk_26B6F8D00);
      v33 = sub_26B6E95A4();
      v34 = sub_26B6E9E64();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v47 = v35;
        v49 = swift_slowAlloc();
        v57[0] = v49;
        *v35 = 136315138;
        v48 = v34;
        sub_26B67E194(v32, v19, &qword_280409038, &unk_26B6F8D00);
        v36 = *(v13 + 48);
        v37 = v54;
        (*(v53 + 32))(v54, v19, v8);
        v52(&v19[v36], v25);
        sub_26B6CEB24(&qword_2810CD7B8, MEMORY[0x277CC9260]);
        v38 = sub_26B6EA564();
        v40 = v39;
        v50(v37, v8);
        sub_26B650BBC(v32, &qword_280409038, &unk_26B6F8D00);
        v41 = sub_26B6D22D8(v38, v40, v57);

        v42 = v47;
        *(v47 + 1) = v41;
        v43 = v42;
        _os_log_impl(&dword_26B630000, v33, v48, "PersistentStore:: Removing file at URL: %s", v42, 0xCu);
        v44 = v49;
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x26D67E950](v44, -1, -1);
        MEMORY[0x26D67E950](v43, -1, -1);
      }

      else
      {

        sub_26B650BBC(v32, &qword_280409038, &unk_26B6F8D00);
      }
    }

    else
    {
      v45 = v57[0];
      sub_26B6E92B4();

      swift_willThrow();
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

void sub_26B6C5B0C()
{
  OUTLINED_FUNCTION_38();
  v31 = v2;
  v4 = v3;
  v5 = sub_26B6E93B4();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13_11();
  v16 = sub_26B6E90D4();
  OUTLINED_FUNCTION_11_9(v16);
  swift_allocObject();
  sub_26B6E90C4();
  type metadata accessor for SportingEventSubscription(0);
  OUTLINED_FUNCTION_15_9();
  sub_26B6CEB24(v17, v18);
  OUTLINED_FUNCTION_53_2();
  v30 = sub_26B6E90B4();
  if (v1)
  {

    sub_26B6CEB90();
    OUTLINED_FUNCTION_65_2();
    *v20 = 0;
    swift_willThrow();
  }

  else
  {
    v21 = v19;

    v29 = *(v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter), *(v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 24));
    sub_26B6C6988(v31 & 1);
    v22 = *(v4 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId);
    v23 = *(v4 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId + 8);
    sub_26B6E9344();
    v24 = *(v8 + 8);
    v24(v13, v5);
    OUTLINED_FUNCTION_28_6();
    sub_26B6E9354();
    v25 = OUTLINED_FUNCTION_48_2();
    (v24)(v25);
    v26 = *(v29 + 8);
    OUTLINED_FUNCTION_37_5();
    v27();
    v28 = OUTLINED_FUNCTION_75_0();
    (v24)(v28);
    sub_26B645A94(v30, v21);
  }

  OUTLINED_FUNCTION_37();
}

void sub_26B6C5D6C()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_66_1(*MEMORY[0x277D85DE8]);
  v8 = sub_26B6E93B4();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_55_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_52_2();
  v33[0] = v7;
  v33[1] = v5;
  sub_26B641414();
  if (sub_26B6EA074())
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v19 = sub_26B6E95C4();
    v20 = __swift_project_value_buffer(v19, qword_2810D4308);
    v21 = sub_26B6E95A4();
    sub_26B6E9E74();
    v22 = OUTLINED_FUNCTION_24_5();
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_28_5();
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26B630000, v21, v20, "canonicalId cannot contain parental traversal string patterns", v24, 2u);
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
    }
  }

  else
  {
    sub_26B6C6988(v3 & 1);
    OUTLINED_FUNCTION_30_4();
    sub_26B6E9344();
    v25 = *(v11 + 8);
    v25(v16, v8);
    OUTLINED_FUNCTION_28_6();
    sub_26B6E9354();
    v25(v1, v8);
    v26 = *(v0 + 16);
    v27 = sub_26B6E9324();
    v33[0] = 0;
    v28 = [v26 removeItemAtURL:v27 error:v33];

    if (v28)
    {
      v29 = v33[0];
    }

    else
    {
      v31 = v33[0];
      sub_26B6E92B4();

      swift_willThrow();
    }

    v30 = OUTLINED_FUNCTION_6_0();
    (v25)(v30);
  }

  v32 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_37();
}

void sub_26B6C6028()
{
  OUTLINED_FUNCTION_38();
  v35 = v4;
  v36 = v5;
  v37 = v6;
  OUTLINED_FUNCTION_66_1(*MEMORY[0x277D85DE8]);
  v38 = sub_26B6E93B4();
  v7 = OUTLINED_FUNCTION_4(v38);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_55_2();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v33 - v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52_2();
  objc_opt_self();
  v16 = sub_26B6E9914();
  v39 = 0;
  OUTLINED_FUNCTION_37_5();
  v19 = [v17 v18];

  v20 = v39;
  if (v19)
  {
    v21 = v9;
    v34 = sub_26B6E9474();
    v23 = v22;

    v33[2] = v1;
    v24 = *(v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 32);
    v33[1] = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter), *(v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 24));
    sub_26B6C6988(v35 & 1);
    sub_26B6E9344();
    v25 = *(v21 + 8);
    v26 = v3;
    v27 = v38;
    v25(v26, v38);
    sub_26B6E9354();
    v25(v15, v27);
    v28 = v34;
    (*(v24 + 8))();
    v25(v2, v27);
    sub_26B645A94(v28, v23);
  }

  else
  {
    v29 = v20;
    v30 = sub_26B6E92B4();

    swift_willThrow();
    sub_26B6CEB90();
    OUTLINED_FUNCTION_65_2();
    *v31 = 0;
    swift_willThrow();
  }

  v32 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_37();
}

void sub_26B6C6324()
{
  OUTLINED_FUNCTION_38();
  v24 = v2;
  v25 = v3;
  v23 = v4;
  v26 = v5;
  v27 = v6;
  v7 = sub_26B6E93B4();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_10_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_12();
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v17 = *(v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 24);
  v18 = *(v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 32);
  v22 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter), v17);
  sub_26B6C6988(v23);
  sub_26B6E9344();
  v19 = *(v10 + 8);
  v20 = OUTLINED_FUNCTION_48_2();
  v19(v20);
  sub_26B6E9354();
  (v19)(v1, v7);
  (*(v18 + 8))(v26, v27, v16, 0, v17, v18);
  v21 = OUTLINED_FUNCTION_68_2();
  v19(v21);
  OUTLINED_FUNCTION_37();
}

void sub_26B6C64C0()
{
  sub_26B6CA0A0();
  OUTLINED_FUNCTION_12_3();
  if (sub_26B6C669C())
  {
  }

  else
  {
    v1 = *(v0 + 16);
    OUTLINED_FUNCTION_51_1();
    v2 = sub_26B6E99F4();
    v3 = [v1 createFileAtPath:v2 contents:0 attributes:0];

    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v4 = sub_26B6E95C4();
    OUTLINED_FUNCTION_19_5(v4, qword_2810D4308);

    oslog = sub_26B6E95A4();
    v5 = sub_26B6E9E64();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      OUTLINED_FUNCTION_39_4();
      v12 = swift_slowAlloc();
      *v6 = 136315394;
      v7 = OUTLINED_FUNCTION_51_1();
      v10 = sub_26B6D22D8(v7, v8, v9);

      *(v6 + 4) = v10;
      *(v6 + 12) = 1024;
      *(v6 + 14) = v3;
      _os_log_impl(&dword_26B630000, oslog, v5, "create file at path %s result: %{BOOL}d", v6, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
    }

    else
    {
    }
  }
}

id sub_26B6C669C()
{
  sub_26B6CA0A0();
  v1 = *(v0 + 16);
  v2 = sub_26B6E99F4();

  v3 = [v1 fileExistsAtPath_];

  return v3;
}

void sub_26B6C66FC()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  OUTLINED_FUNCTION_66_1(*MEMORY[0x277D85DE8]);
  v4 = sub_26B6E93B4();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_85_0();
  v10 = *(v0 + 16);
  sub_26B6C6988(v3);
  v11 = sub_26B6E9324();
  v12 = v7;
  v34 = *(v7 + 8);
  v34(v1, v4);
  v13 = OUTLINED_FUNCTION_58_2();
  v15 = [v13 v14];

  if (v15)
  {
    v16 = sub_26B6E9C34();
    v17 = 0;

    v18 = *(v16 + 16);
    if (v18)
    {
      v35 = MEMORY[0x277D84F90];
      sub_26B63B9EC(0, v18, 0);
      v33 = *(v12 + 16);
      v19 = *(v12 + 80);
      OUTLINED_FUNCTION_73_0();
      v21 = v16 + v20;
      v32 = *(v22 + 56);
      do
      {
        v33(v1, v21, v4);
        v23 = sub_26B6E9314();
        v25 = v24;
        v26 = OUTLINED_FUNCTION_6_0();
        (v34)(v26);
        v28 = *(v35 + 16);
        v27 = *(v35 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_26B63B9EC(v27 > 1, v28 + 1, 1);
        }

        *(v35 + 16) = v28 + 1;
        v29 = v35 + 16 * v28;
        *(v29 + 32) = v23;
        *(v29 + 40) = v25;
        v21 += v32;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v30 = 0;
    sub_26B6E92B4();

    swift_willThrow();
  }

  v31 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B6C6988(char a1)
{
  if (a1)
  {
    v2 = sub_26B6E93B4();
    OUTLINED_FUNCTION_16(v2);
    v4 = *(v3 + 16);
    v5 = OUTLINED_FUNCTION_54_2();

    return v6(v5);
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC9SportsKit15PersistentStore_sessionsDirectoryPath);
    v9 = *(v1 + OBJC_IVAR____TtC9SportsKit15PersistentStore_sessionsDirectoryPath + 8);
    return sub_26B6E9344();
  }
}

void sub_26B6C6A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_38();
  a19 = v24;
  a20 = v25;
  v89 = v20;
  v27 = v26;
  v90 = v28;
  v29 = sub_26B6E93B4();
  v30 = OUTLINED_FUNCTION_4(v29);
  v87 = v31;
  v88 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_0();
  v86 = v35 - v34;
  v91 = sub_26B6E9564();
  v36 = OUTLINED_FUNCTION_4(v91);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_85_0();
  v39 = *(v27 + 16);
  v40 = MEMORY[0x277D84F98];
  v41 = (v27 + 40);
  if (v39)
  {
    do
    {
      v92 = v41;
      v93 = v39;
      v42 = *(v41 - 1);
      v43 = *v41;

      v44 = v22;
      sub_26B6E9554();
      swift_isUniquelyReferenced_nonNull_native();
      v94 = v40;
      v45 = sub_26B675324();
      if (__OFADD__(*(v40 + 16), (v46 & 1) == 0))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v47 = v45;
      v23 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F18, &qword_26B6F17F0);
      if (sub_26B6EA2E4())
      {
        v48 = sub_26B675324();
        if ((v23 & 1) != (v49 & 1))
        {
          sub_26B6EA674();
          __break(1u);
          return;
        }

        v47 = v48;
      }

      v50 = v94;
      if (v23)
      {
        v51 = OUTLINED_FUNCTION_67_1();
        (*(v52 + 40))(v51, v22);
      }

      else
      {
        OUTLINED_FUNCTION_4_7(v94 + 8 * (v47 >> 6));
        v53 = (*(v94 + 48) + 16 * v47);
        *v53 = v42;
        v53[1] = v43;
        v54 = OUTLINED_FUNCTION_67_1();
        (*(v55 + 32))(v54, v22);

        v56 = *(v50 + 16);
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_19;
        }

        *(v50 + 16) = v58;
      }

      v41 = v92 + 2;
      v39 = v93 - 1;
      v40 = v50;
    }

    while (v93 != 1);
  }

  a10 = v40;
  v44 = v89;
  sub_26B6C78DC();

  v60 = sub_26B6CE2F0(v59, v90);
  sub_26B6C30FC(v60, &a10);

  v62 = sub_26B6C7018(v61);
  OUTLINED_FUNCTION_7_14();
  v65 = sub_26B6CD144(v95, v63, v64);

  v67 = sub_26B6C70D8(v66, v65);
  v68 = sub_26B6E90D4();
  OUTLINED_FUNCTION_11_9(v68);
  swift_allocObject();
  sub_26B6E90C4();
  v94 = v62;
  v95 = v67;
  sub_26B6CEBE4();
  v69 = sub_26B6E90B4();
  if (v21)
  {

    sub_26B6CEB90();
    v71 = OUTLINED_FUNCTION_65_2();
    OUTLINED_FUNCTION_63_3(v71, v72);
  }

  else
  {
    v23 = v69;
    v93 = v70;

    if (qword_2810CE9F0 != -1)
    {
LABEL_20:
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v73 = sub_26B6E95C4();
    __swift_project_value_buffer(v73, qword_2810D4308);

    v74 = sub_26B6E95A4();
    v75 = sub_26B6E9E64();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v76 = 136315394;
      v77 = MEMORY[0x26D67D610](v90, MEMORY[0x277D837D0]);
      v79 = sub_26B6D22D8(v77, v78, &v94);

      *(v76 + 4) = v79;
      *(v76 + 12) = 2080;

      v80 = sub_26B6E9954();
      v82 = v81;

      v83 = sub_26B6D22D8(v80, v82, &v94);
      v44 = v89;

      *(v76 + 14) = v83;
      _os_log_impl(&dword_26B630000, v74, v75, "PersistentStore: replaceActivities: new active ids: %s, dismissed diff: %s", v76, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
    }

    v84 = *(v44 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 24);
    v85 = *(v44 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 32);
    __swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter), v84);
    sub_26B6C37C8();
    (*(v85 + 8))(v23, v93, v86, 0, v84, v85);
    (*(v87 + 8))(v86, v88);
    sub_26B645A94(v23, v93);
  }

  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B6C7018(uint64_t a1)
{
  result = MEMORY[0x26D67D7F0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_26B652648(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B6C70D8(uint64_t a1, uint64_t a2)
{
  swift_isUniquelyReferenced_nonNull_native();
  sub_26B6CCD7C();
  if (v2)
  {
  }

  return a2;
}

void sub_26B6C715C()
{
  OUTLINED_FUNCTION_38();
  v5 = OUTLINED_FUNCTION_76_1();
  v6 = OUTLINED_FUNCTION_4(v5);
  v39 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_85_0();
  v36 = v0;
  sub_26B6C78DC();
  v10 = v37;
  v11 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409058, &qword_26B6F8D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B6EBA50;
  *(inited + 32) = v1;
  *(inited + 40) = v3;

  v13 = sub_26B64D900(inited, v10);
  OUTLINED_FUNCTION_7_14();
  v14 = v4;
  v17 = sub_26B6CD144(v11, v15, v16);

  v18 = sub_26B6E90D4();
  OUTLINED_FUNCTION_11_9(v18);
  swift_allocObject();
  sub_26B6E90C4();
  v37 = v13;
  v38 = v17;
  sub_26B6CEBE4();
  v19 = sub_26B6E90B4();
  if (v14)
  {

    sub_26B6CEB90();
    v21 = OUTLINED_FUNCTION_65_2();
    OUTLINED_FUNCTION_63_3(v21, v22);
  }

  else
  {
    v23 = v20;
    v34 = v19;
    v35 = v2;

    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v24 = sub_26B6E95C4();
    __swift_project_value_buffer(v24, qword_2810D4308);

    v25 = sub_26B6E95A4();
    v26 = sub_26B6E9E64();

    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_62_2();
      v27 = swift_slowAlloc();
      OUTLINED_FUNCTION_39_4();
      v28 = v23;
      v29 = swift_slowAlloc();
      v37 = v29;
      *v27 = 136315138;
      *(v27 + 4) = sub_26B6D22D8(v1, v3, &v37);
      _os_log_impl(&dword_26B630000, v25, v26, "PersistentStore: writeActivity: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v23 = v28;
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
      v30 = OUTLINED_FUNCTION_9_11();
      MEMORY[0x26D67E950](v30);
    }

    v31 = *(v36 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 32);
    __swift_project_boxed_opaque_existential_1((v36 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter), *(v36 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 24));
    sub_26B6C37C8();
    v32 = *(v31 + 8);
    OUTLINED_FUNCTION_37_5();
    v33();
    (*(v39 + 8))(v35, v5);
    sub_26B645A94(v34, v23);
  }

  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_37();
}

void sub_26B6C749C()
{
  OUTLINED_FUNCTION_38();
  v41 = OUTLINED_FUNCTION_76_1();
  v4 = OUTLINED_FUNCTION_4(v41);
  v46 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  v42 = v0;
  sub_26B6C78DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409058, &qword_26B6F8D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B6EBA50;
  *(inited + 32) = v1;
  *(inited + 40) = v2;

  sub_26B6CB9A0(inited, v43);
  swift_setDeallocating();
  sub_26B6CB358();
  OUTLINED_FUNCTION_7_14();
  v12 = v3;
  v15 = sub_26B6CD144(v45, v13, v14);
  v16 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E90, &qword_26B6F14B8);
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E98, &unk_26B6F14C0) - 8);
  v18 = *(*v17 + 72);
  v19 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26B6EBA50;
  v21 = (v20 + v19);
  v22 = v17[14];
  *v21 = v1;
  v21[1] = v2;

  sub_26B6E9554();
  sub_26B6E9564();
  v23 = sub_26B6E9944();
  sub_26B6C70D8(v23, v15);
  v24 = sub_26B6E90D4();
  OUTLINED_FUNCTION_11_9(v24);
  swift_allocObject();
  sub_26B6E90C4();
  sub_26B6CEBE4();
  v25 = sub_26B6E90B4();
  if (v16)
  {

    sub_26B6CEB90();
    v27 = OUTLINED_FUNCTION_65_2();
    OUTLINED_FUNCTION_63_3(v27, v28);
  }

  else
  {
    v29 = v25;
    v40 = v26;

    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v30 = sub_26B6E95C4();
    __swift_project_value_buffer(v30, qword_2810D4308);

    v31 = sub_26B6E95A4();
    v32 = sub_26B6E9E64();

    if (os_log_type_enabled(v31, v32))
    {
      OUTLINED_FUNCTION_62_2();
      v33 = swift_slowAlloc();
      OUTLINED_FUNCTION_39_4();
      v44 = swift_slowAlloc();
      *v33 = 136315138;
      v34 = OUTLINED_FUNCTION_2_2();
      *(v33 + 4) = sub_26B6D22D8(v34, v35, v36);
      _os_log_impl(&dword_26B630000, v31, v32, "PersistentStore: removeActivity: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      v37 = OUTLINED_FUNCTION_9_11();
      MEMORY[0x26D67E950](v37);
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
    }

    v38 = *(v42 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 24);
    v39 = *(v42 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 32);
    __swift_project_boxed_opaque_existential_1((v42 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter), v38);
    sub_26B6C37C8();
    (*(v39 + 8))(v29, v40, v10, 0, v38, v39);
    (*(v46 + 8))(v10, v41);
    sub_26B645A94(v29, v40);
  }

  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B6C78DC()
{
  OUTLINED_FUNCTION_83_0();
  v2 = sub_26B6E93B4();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  v11 = *(v1 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 24);
  v12 = *(v1 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter), v11);
  sub_26B6C37C8();
  (*(v12 + 16))(v10, v11, v12);
  (*(v5 + 8))(v10, v2);
  v13 = sub_26B6E9054();
  OUTLINED_FUNCTION_11_9(v13);
  swift_allocObject();
  sub_26B6E9044();
  sub_26B6CEC38();
  sub_26B6E9024();
  v14 = OUTLINED_FUNCTION_12_3();
  sub_26B645A94(v14, v15);

  result = v18;
  *v0 = v17;
  v0[1] = v18;
  return result;
}

void sub_26B6C7AB8()
{
  v1 = sub_26B6E93B4();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  sub_26B6C37C8();
  sub_26B6E9384();
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_12_3();
  v9(v8);
  v10 = *(v0 + 16);
  OUTLINED_FUNCTION_51_1();
  v11 = sub_26B6E99F4();
  v12 = [v10 fileExistsAtPath_];

  if (v12 & 1) != 0 || (OUTLINED_FUNCTION_51_1(), v13 = sub_26B6E99F4(), OUTLINED_FUNCTION_37_5(), v16 = [v14 v15], v13, (v16))
  {
  }

  else
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v17 = sub_26B6E95C4();
    OUTLINED_FUNCTION_19_5(v17, qword_2810D4308);

    v18 = sub_26B6E95A4();
    v19 = sub_26B6E9E64();

    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_62_2();
      v20 = swift_slowAlloc();
      OUTLINED_FUNCTION_39_4();
      v25 = swift_slowAlloc();
      *v20 = 136315138;
      v21 = OUTLINED_FUNCTION_51_1();
      v24 = sub_26B6D22D8(v21, v22, v23);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_26B630000, v18, v19, "PersistentStore: Unable to create file: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
    }

    else
    {
    }
  }
}

void sub_26B6C7D28()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v0;
  v35[0] = v3;
  v35[1] = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_26B6E93B4();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_10_12();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v35 - v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_51_3();
  v21 = *v6;
  v36 = v10;
  v37 = v8;
  OUTLINED_FUNCTION_64_3();
  if (OUTLINED_FUNCTION_44_3())
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v22 = sub_26B6E95C4();
    OUTLINED_FUNCTION_19_5(v22, qword_2810D4308);
    v23 = sub_26B6E95A4();
    sub_26B6E9E74();
    v24 = OUTLINED_FUNCTION_24_5();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_28_5();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_33_5(&dword_26B630000, v26, v27, "competitorId cannot contain parental traversal string patterns");
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950](v28, v29);
    }
  }

  else
  {
    (*(v14 + 16))(v20, v2 + OBJC_IVAR____TtC9SportsKit15PersistentStore_storeURL, v11);
    if (v21)
    {
      v30 = 0;
      v31 = 0xE000000000000000;
    }

    else
    {
      v36 = 0x2D657A69732DLL;
      v37 = 0xE600000000000000;
      v35[2] = 56;
      v32 = sub_26B6EA564();
      MEMORY[0x26D67D4D0](v32);

      v30 = v36;
      v31 = v37;
    }

    v36 = v10;
    v37 = v8;

    MEMORY[0x26D67D4D0](v30, v31);

    sub_26B6E9344();

    v33 = *(v14 + 8);
    v33(v20, v11);
    sub_26B6E9354();
    sub_26B6E9384();
    OUTLINED_FUNCTION_75_1();
    v34 = OUTLINED_FUNCTION_48_2();
    (v33)(v34);
    v33(v1, v11);
  }

  OUTLINED_FUNCTION_8_0();
}

void sub_26B6C7FD4()
{
  OUTLINED_FUNCTION_38();
  v3 = v0;
  v4 = sub_26B6E93B4();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_14_12();
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = *(v0 + 16);
  sub_26B6C394C();
  sub_26B6E9384();
  v28 = *(v7 + 8);
  v28(v12, v4);
  v14 = sub_26B6E99F4();

  LOBYTE(v12) = [v13 fileExistsAtPath_];

  if (v12)
  {
    goto LABEL_7;
  }

  if (qword_2810CE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v15 = sub_26B6E95C4();
  __swift_project_value_buffer(v15, qword_2810D4308);
  v16 = sub_26B6E95A4();
  v17 = sub_26B6E9E64();
  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_28_5();
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26B630000, v16, v17, "PersistentStore.readCloudChannelSubscription - file does not exist, creating file.", v18, 2u);
    v19 = OUTLINED_FUNCTION_9_11();
    MEMORY[0x26D67E950](v19);
  }

  sub_26B6E9564();
  sub_26B6E9944();
  OUTLINED_FUNCTION_67();
  type metadata accessor for CloudChannelSubscription();
  swift_allocObject();
  CloudChannelSubscription.init(demand:)(v16);
  sub_26B6C8308();

  if (!v1)
  {
LABEL_7:
    v20 = *(v3 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 24);
    v21 = *(v3 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 32);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter), v20);
    sub_26B6C394C();
    (*(v21 + 16))(v2, v20, v21);
    v22 = OUTLINED_FUNCTION_12_3();
    (v28)(v22);
    if (!v1)
    {
      sub_26B6C4120();
      OUTLINED_FUNCTION_67();
      type metadata accessor for CloudChannelSubscription();
      OUTLINED_FUNCTION_17_8();
      sub_26B6CEB24(v23, v24);
      sub_26B6E9024();
      v25 = OUTLINED_FUNCTION_33_3();
      sub_26B645A94(v25, v26);
    }
  }

  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_37();
}

void sub_26B6C8308()
{
  OUTLINED_FUNCTION_38();
  v1 = OUTLINED_FUNCTION_77_1();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_6();
  sub_26B6C4010();
  type metadata accessor for CloudChannelSubscription();
  OUTLINED_FUNCTION_17_8();
  sub_26B6CEB24(v5, v6);
  OUTLINED_FUNCTION_53_2();
  sub_26B6E90B4();
  OUTLINED_FUNCTION_56_3();

  if (!v0)
  {
    OUTLINED_FUNCTION_22_9(OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter);
    sub_26B6C394C();
    v7 = OUTLINED_FUNCTION_8_9();
    v8(v7);
    v9 = OUTLINED_FUNCTION_70_2();
    v10(v9);
    v11 = OUTLINED_FUNCTION_30_4();
    sub_26B645A94(v11, v12);
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_37();
}

void sub_26B6C8428()
{
  OUTLINED_FUNCTION_38();
  v3 = sub_26B6E93B4();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_84_0();
  v9 = OUTLINED_FUNCTION_30_6(OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter);
  __swift_project_boxed_opaque_existential_1(v9, v10);
  sub_26B6C3924();
  v11 = *(v1 + 16);
  OUTLINED_FUNCTION_46_2();
  v13 = v12();
  if (v0)
  {
    (*(v6 + 8))(v2, v3);
  }

  else
  {
    v15 = v13;
    v16 = v14;
    (*(v6 + 8))(v2, v3);
    sub_26B6C4120();
    OUTLINED_FUNCTION_67();
    type metadata accessor for ScoreboardSubscription();
    OUTLINED_FUNCTION_16_11();
    sub_26B6CEB24(v17, v18);
    OUTLINED_FUNCTION_46_2();
    sub_26B6E9024();
    sub_26B645A94(v15, v16);
  }

  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_37();
}

void sub_26B6C85BC()
{
  OUTLINED_FUNCTION_38();
  v1 = OUTLINED_FUNCTION_77_1();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_6();
  sub_26B6C4010();
  type metadata accessor for ScoreboardSubscription();
  OUTLINED_FUNCTION_16_11();
  sub_26B6CEB24(v5, v6);
  OUTLINED_FUNCTION_53_2();
  sub_26B6E90B4();
  OUTLINED_FUNCTION_56_3();

  if (!v0)
  {
    OUTLINED_FUNCTION_22_9(OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter);
    sub_26B6C3924();
    v7 = OUTLINED_FUNCTION_8_9();
    v8(v7);
    v9 = OUTLINED_FUNCTION_70_2();
    v10(v9);
    v11 = OUTLINED_FUNCTION_30_4();
    sub_26B645A94(v11, v12);
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_37();
}

id sub_26B6C86DC()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = sub_26B6E93B4();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_85_0();
  v7 = *(v0 + 16);
  sub_26B6C3924();
  sub_26B6E9384();
  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_6_0();
  v10(v9);
  v11 = sub_26B6E99F4();

  v12 = OUTLINED_FUNCTION_58_2();
  v14 = [v12 v13];

  if (v14)
  {
    result = 0;
  }

  else
  {
    v16 = 0;
    sub_26B6E92B4();

    result = swift_willThrow();
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_26B6C8844(char a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_11();
  v4 = sub_26B6E93B4();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v12 = v11 - v10;
  v26[0] = MEMORY[0x277D84F90];
  v13 = *(v1 + 16);
  sub_26B6C6988(a1);
  v14 = sub_26B6E9324();
  (*(v7 + 8))(v12, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B370, &unk_26B6F8FD8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26B6EBA50;
  v16 = *MEMORY[0x277CBE7B0];
  *(v15 + 32) = *MEMORY[0x277CBE7B0];
  v25 = 0;
  v17 = v16;
  v18 = sub_26B6CE780(v14, v15, 0, &v25, v13);

  v19 = v25;
  if (!v18)
  {
    v22 = v25;
    sub_26B6E92B4();

    swift_willThrow();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_12_3();
  v20 = sub_26B6E9C34();
  v21 = v19;

  sub_26B6C3444(v20, v26);

  if (v2)
  {
LABEL_5:

    goto LABEL_6;
  }

  v19 = sub_26B6C8FE4(v26[0]);

LABEL_6:
  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t sub_26B6C8A70(uint64_t a1, uint64_t *a2)
{
  v38 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409050, &unk_26B6EC170);
  v37 = *(v35 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v36 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - v8;
  v10 = sub_26B6E9564();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_26B6E9234();
  v39 = *(v44 - 8);
  v15 = *(v39 + 64);
  MEMORY[0x28223BE20](v44);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B6E9314();
  v18 = sub_26B6E9B94();

  if (v18)
  {
    goto LABEL_7;
  }

  sub_26B6E9314();
  v19 = sub_26B6E9B94();

  if (v19)
  {
    goto LABEL_7;
  }

  sub_26B6E9314();
  v20 = sub_26B6E9B94();

  if (v20)
  {
    goto LABEL_7;
  }

  sub_26B6E9314();
  v21 = sub_26B6E9B94();

  if (v21)
  {
    goto LABEL_7;
  }

  sub_26B6E9314();
  v22 = sub_26B6E9B94();

  if (v22 & 1) != 0 || (v42 = sub_26B6E92E4(), v43 = v23, v40 = 0xD000000000000010, v41 = 0x800000026B6FD970, sub_26B641414(), v24 = sub_26B6EA074(), result = , (v24))
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B370, &unk_26B6F8FD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26B6EBA50;
    v27 = *MEMORY[0x277CBE7B0];
    *(inited + 32) = *MEMORY[0x277CBE7B0];
    v28 = v27;
    sub_26B6CCB78(inited);
    sub_26B6E92F4();

    if (!v2)
    {
      sub_26B6E9224();
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
        (*(v39 + 8))(v17, v44);
        return sub_26B650BBC(v9, &qword_280409370, &qword_26B6ED070);
      }

      else
      {
        (*(v11 + 32))(v14, v9, v10);
        v29 = *(v35 + 48);
        v30 = sub_26B6E93B4();
        v31 = v36;
        (*(*(v30 - 8) + 16))(v36, a1, v30);
        (*(v11 + 16))(v31 + v29, v14, v10);
        v32 = v38;
        sub_26B6CB270(sub_26B63ACD8);
        v33 = *(*v32 + 16);
        sub_26B6CB310(v33, sub_26B63ACD8);
        (*(v11 + 8))(v14, v10);
        (*(v39 + 8))(v17, v44);
        v34 = *v32;
        *(v34 + 16) = v33 + 1;
        return sub_26B67EDE8(v31, v34 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v33, &qword_280409050, &unk_26B6EC170);
      }
    }
  }

  return result;
}

uint64_t sub_26B6C8FE4(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409050, &unk_26B6EC170);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409038, &unk_26B6F8D00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v19 = MEMORY[0x277D84F90];
    sub_26B63BA2C(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_26B67E194(v13, v5, &qword_280409050, &unk_26B6EC170);
      swift_dynamicCast();
      v19 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_26B63BA2C(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      sub_26B67EDE8(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_280409038, &unk_26B6F8D00);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void sub_26B6C921C()
{
  OUTLINED_FUNCTION_10_0();
  v1 = sub_26B6E93B4();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_6();
  v5 = OUTLINED_FUNCTION_30_6(OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_46_2();
  v8();
  v9 = sub_26B6E9054();
  OUTLINED_FUNCTION_11_9(v9);
  swift_allocObject();
  sub_26B6E9044();
  v10 = OUTLINED_FUNCTION_67();
  type metadata accessor for SportingEventSubscription(v10);
  OUTLINED_FUNCTION_15_9();
  sub_26B6CEB24(v11, v12);
  OUTLINED_FUNCTION_30_4();
  sub_26B6E9024();
  v13 = OUTLINED_FUNCTION_2_2();
  sub_26B645A94(v13, v14);

  OUTLINED_FUNCTION_8_0();
}

void sub_26B6C9580()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_83_0();
  v1 = sub_26B6E93B4();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_84_0();
  v5 = OUTLINED_FUNCTION_30_6(OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter);
  v7 = __swift_project_boxed_opaque_existential_1(v5, v6);
  sub_26B6C3BA0();
  v8 = OUTLINED_FUNCTION_36_6();
  v9(v8);
  if (v7)
  {

    v10 = OUTLINED_FUNCTION_20_9();
    v11(v10);
    if (qword_280408D40 != -1)
    {
      swift_once();
    }

    *v0 = qword_280421AB0;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_20_9();
    v13(v12);
    sub_26B6C4120();
    sub_26B6CEC8C();
    OUTLINED_FUNCTION_78_1();
    v14 = OUTLINED_FUNCTION_2_2();
    sub_26B645A94(v14, v15);

    *v0 = v16;
  }

  OUTLINED_FUNCTION_8_0();
}

void sub_26B6C9714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  v12 = v10;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = sub_26B6E93B4();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_6();
  sub_26B6C9580();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409058, &qword_26B6F8D20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B6EBA50;
  *(inited + 32) = v16;
  *(inited + 40) = v14;

  if (v18)
  {
    v26 = sub_26B6C7018(inited);
    sub_26B6C2F68(v26, a10);
  }

  else
  {
    v27 = sub_26B6C7018(inited);
    sub_26B64D7FC(v27, a10);
  }

  sub_26B6C4010();
  sub_26B6CECE0();
  sub_26B6E90B4();
  OUTLINED_FUNCTION_56_3();

  if (!v12)
  {
    OUTLINED_FUNCTION_22_9(OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter);
    sub_26B6C3BA0();
    v28 = OUTLINED_FUNCTION_8_9();
    v29(v28);
    (*(v22 + 8))(v11, v19);
    v30 = OUTLINED_FUNCTION_30_4();
    sub_26B645A94(v30, v31);
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_37();
}

void sub_26B6C98E8()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_83_0();
  v1 = sub_26B6E93B4();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_84_0();
  v5 = OUTLINED_FUNCTION_30_6(OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter);
  v7 = __swift_project_boxed_opaque_existential_1(v5, v6);
  sub_26B6C3EB4();
  v8 = OUTLINED_FUNCTION_36_6();
  v9(v8);
  if (v7)
  {

    v10 = OUTLINED_FUNCTION_20_9();
    v11(v10);
    if (qword_280408D68 != -1)
    {
      swift_once();
    }

    *v0 = qword_280421AC0;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_20_9();
    v13(v12);
    sub_26B6C4120();
    sub_26B6CED34();
    OUTLINED_FUNCTION_78_1();
    v14 = OUTLINED_FUNCTION_2_2();
    sub_26B645A94(v14, v15);

    *v0 = v16;
  }

  OUTLINED_FUNCTION_8_0();
}

void sub_26B6C9A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_38();
  v55 = v16;
  v54 = v17;
  v19 = v18;
  v20 = sub_26B6E93B4();
  v21 = OUTLINED_FUNCTION_4(v20);
  v52 = v22;
  v53 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_0();
  v56 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  v28 = OUTLINED_FUNCTION_46(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_55_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_52_2();
  v32 = sub_26B6E9564();
  v33 = OUTLINED_FUNCTION_4(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_14_12();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_13_11();
  sub_26B6C98E8();
  sub_26B67E194(v19, v13, &qword_280409370, &qword_26B6ED070);
  if (__swift_getEnumTagSinglePayload(v13, 1, v32) == 1)
  {
    sub_26B650BBC(v13, &qword_280409370, &qword_26B6ED070);
    v39 = sub_26B675324();
    if (v40)
    {
      v41 = v39;
      swift_isUniquelyReferenced_nonNull_native();
      v42 = a10[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F18, &qword_26B6F17F0);
      sub_26B6EA2E4();
      v43 = *(a10[6] + 16 * v41 + 8);

      (*(v35 + 32))(v15, a10[7] + *(v35 + 72) * v41, v32);
      sub_26B6EA304();
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v45 = v56;
    __swift_storeEnumTagSinglePayload(v15, v44, 1, v32);
    sub_26B650BBC(v15, &qword_280409370, &qword_26B6ED070);
  }

  else
  {
    (*(v35 + 32))(v12, v13, v32);
    (*(v35 + 16))(v14, v12, v32);

    swift_isUniquelyReferenced_nonNull_native();
    sub_26B67DD18(v14, v54, v55);

    (*(v35 + 8))(v12, v32);
    v45 = v56;
  }

  sub_26B6C4010();
  sub_26B6CED88();
  sub_26B6E90B4();

  if (!v11)
  {
    v46 = *(v10 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 32);
    __swift_project_boxed_opaque_existential_1((v10 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter), *(v10 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter + 24));
    sub_26B6C3EB4();
    v47 = *(v46 + 8);
    v48 = OUTLINED_FUNCTION_75_0();
    v49(v48);
    (*(v52 + 8))(v45, v53);
    v50 = OUTLINED_FUNCTION_75_0();
    sub_26B645A94(v50, v51);
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_37();
}

void sub_26B6C9EA0()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_26B6E93B4();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_26_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_12();
  MEMORY[0x28223BE20](v13);
  v15 = v25 - v14;
  v25[2] = v5;
  v25[3] = v3;
  OUTLINED_FUNCTION_64_3();
  if (OUTLINED_FUNCTION_44_3())
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v16 = sub_26B6E95C4();
    OUTLINED_FUNCTION_19_5(v16, qword_2810D4308);
    v17 = sub_26B6E95A4();
    sub_26B6E9E74();
    v18 = OUTLINED_FUNCTION_24_5();
    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_28_5();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_33_5(&dword_26B630000, v20, v21, "canonicalId cannot contain parental traversal string patterns");
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
    }
  }

  else
  {
    sub_26B6C6988(v1 & 1);
    sub_26B6E9344();
    OUTLINED_FUNCTION_28_6();
    sub_26B6E9354();
    v22 = *(v9 + 8);
    v23 = OUTLINED_FUNCTION_68_2();
    v22(v23);
    sub_26B6C921C();
    v24 = OUTLINED_FUNCTION_48_2();
    v22(v24);
    (v22)(v15, v6);
  }

  OUTLINED_FUNCTION_8_0();
}

void sub_26B6CA0A0()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v3 = sub_26B6E93B4();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_26_8();
  v10 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_64_3();
  if (OUTLINED_FUNCTION_44_3())
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v11 = sub_26B6E95C4();
    OUTLINED_FUNCTION_19_5(v11, qword_2810D4308);
    v12 = sub_26B6E95A4();
    sub_26B6E9E74();
    v13 = OUTLINED_FUNCTION_24_5();
    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_28_5();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_33_5(&dword_26B630000, v15, v16, "eventId cannot contain parental traversal string patterns");
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
    }
  }

  else
  {
    sub_26B6C6988(v2 & 1);
    sub_26B6E9344();
    OUTLINED_FUNCTION_28_6();
    sub_26B6E9354();
    v17 = *(v6 + 8);
    v18 = OUTLINED_FUNCTION_68_2();
    v17(v18);
    sub_26B6E9384();
    OUTLINED_FUNCTION_75_1();
    v19 = OUTLINED_FUNCTION_75_0();
    v17(v19);
    (v17)(v0, v3);
  }

  OUTLINED_FUNCTION_8_0();
}

uint64_t PersistentStore.deinit()
{
  v1 = OBJC_IVAR____TtC9SportsKit15PersistentStore_storeURL;
  v2 = sub_26B6E93B4();
  OUTLINED_FUNCTION_16(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter));
  v4 = *(v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore_sessionsDirectoryPath + 8);

  OUTLINED_FUNCTION_33_7(OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___activityDataURL);
  OUTLINED_FUNCTION_33_7(OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___scoreboardsDataURL);
  OUTLINED_FUNCTION_33_7(OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___cloudChannelSubscriptionURL);
  OUTLINED_FUNCTION_33_7(OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___autostartSuppressionsURL);
  OUTLINED_FUNCTION_33_7(OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___scheduledActivitiesURL);
  v5 = *(v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___encoder);

  v6 = *(v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___decoder);

  return v0;
}

uint64_t PersistentStore.__deallocating_deinit()
{
  PersistentStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t DatedSubscribers.lastSubscription.getter()
{
  v0 = OUTLINED_FUNCTION_83_0();
  v1 = *(type metadata accessor for DatedSubscribers(v0) + 20);
  v2 = sub_26B6E9564();
  OUTLINED_FUNCTION_16(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_54_2();

  return v6(v5);
}

uint64_t DatedSubscribers.init(subscriberCount:lastSubscription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for DatedSubscribers(0) + 20);
  v6 = sub_26B6E9564();
  OUTLINED_FUNCTION_16(v6);
  v8 = *(v7 + 32);

  return v8(&a3[v5], a2);
}

void *static DatedSubscribers.+ infix(_:_:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v5 = a3 + *(type metadata accessor for DatedSubscribers(0) + 20);
    result = sub_26B6E9554();
    *a3 = v4;
  }

  return result;
}

void *static DatedSubscribers.- infix(_:_:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *result - a2;
  if (__OFSUB__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_67();
    v7 = *(type metadata accessor for DatedSubscribers(v6) + 20);
    v8 = sub_26B6E9564();
    OUTLINED_FUNCTION_16(v8);
    result = (*(v9 + 16))(&a3[v7], v3 + v7);
    *a3 = v5;
  }

  return result;
}

uint64_t static DatedSubscribers.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_67();
  v4 = *(type metadata accessor for DatedSubscribers(v3) + 20);

  return sub_26B6E9524();
}

uint64_t sub_26B6CA9F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6269726373627573 && a2 == 0xEF746E756F437265;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026B6FD8F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B6CAACC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6269726373627573;
  }
}

uint64_t sub_26B6CAB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6CA9F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6CAB44(uint64_t a1)
{
  v2 = sub_26B6CEDDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6CAB80(uint64_t a1)
{
  v2 = sub_26B6CEDDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DatedSubscribers.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B310, &qword_26B6F8D28);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_85_0();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6CEDDC();
  sub_26B6EA7C4();
  v12 = *v3;
  sub_26B6EA524();
  if (!v2)
  {
    v13 = *(type metadata accessor for DatedSubscribers(0) + 20);
    sub_26B6E9564();
    OUTLINED_FUNCTION_3_15();
    sub_26B6CEB24(v14, v15);
    sub_26B6EA534();
  }

  v16 = *(v8 + 8);
  v17 = OUTLINED_FUNCTION_48_2();
  return v18(v17);
}

uint64_t DatedSubscribers.hash(into:)()
{
  MEMORY[0x26D67E0E0](*v0);
  v1 = *(type metadata accessor for DatedSubscribers(0) + 20);
  sub_26B6E9564();
  OUTLINED_FUNCTION_3_15();
  sub_26B6CEB24(v2, v3);
  return sub_26B6E9984();
}

uint64_t DatedSubscribers.hashValue.getter()
{
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](*v0);
  v1 = *(type metadata accessor for DatedSubscribers(0) + 20);
  sub_26B6E9564();
  OUTLINED_FUNCTION_3_15();
  sub_26B6CEB24(v2, v3);
  sub_26B6E9984();
  return sub_26B6EA744();
}

void DatedSubscribers.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v25 = v5;
  v27 = sub_26B6E9564();
  v6 = OUTLINED_FUNCTION_4(v27);
  v24 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_6();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B320, &qword_26B6F8D30);
  v10 = OUTLINED_FUNCTION_4(v28);
  v26 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_84_0();
  v14 = type metadata accessor for DatedSubscribers(0);
  v15 = OUTLINED_FUNCTION_16(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_0();
  v20 = (v19 - v18);
  v21 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_26B6CEDDC();
  sub_26B6EA784();
  if (!v0)
  {
    *v20 = sub_26B6EA454();
    OUTLINED_FUNCTION_3_15();
    sub_26B6CEB24(v22, v23);
    sub_26B6EA464();
    (*(v26 + 8))(v2, v28);
    (*(v24 + 32))(v20 + *(v14 + 20), v1, v27);
    sub_26B6CEE30(v20, v25);
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B6CB108(uint64_t a1, uint64_t a2)
{
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](*v2);
  v4 = *(a2 + 20);
  sub_26B6E9564();
  sub_26B6CEB24(&qword_280409608, MEMORY[0x277CC9578]);
  sub_26B6E9984();
  return sub_26B6EA744();
}

uint64_t sub_26B6CB1E4()
{
  sub_26B6E9A24();
  OUTLINED_FUNCTION_75_1();
  sub_26B6EA714();
  sub_26B6E9AE4();
  v0 = sub_26B6EA744();

  return v0;
}

uint64_t sub_26B6CB270(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_26B6CB2CC(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

uint64_t sub_26B6CB310(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_26B6CB358()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26B6CB39C(uint64_t result)
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

        sub_26B6CBDA8(v12, v13);

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

uint64_t sub_26B6CB4C8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v59 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v50 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v52 = v12;
    v53 = v7;
    v54 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = *(v5 + 40);
        sub_26B6EA714();

        sub_26B6E9AE4();
        v21 = sub_26B6EA744();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v23 = (*(v5 + 48) + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (sub_26B6EA5D4() & 1) != 0)
          {
            v56 = v50;
            v57 = v16;
            v58 = v11;
            v3 = v53;
            v12 = v54;
            v55[0] = v54;
            v55[1] = v53;

            v26 = *(v5 + 32);
            v47 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v47;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v48 = &v46;
              MEMORY[0x28223BE20](v25);
              v7 = &v46 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 16);
              v51 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v52;
              while (1)
              {
                v49 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = *(v5 + 40);
                sub_26B6EA714();

                sub_26B6E9AE4();
                v36 = sub_26B6EA744();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v53;
                    v12 = v54;
                    v30 = v52;
                    goto LABEL_24;
                  }

                  v38 = (*(v5 + 48) + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = sub_26B6EA5D4();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v51[v7];
                v51[v7] = v41 & ~v8;
                v3 = v53;
                v12 = v54;
                v30 = v52;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v49 - 1;
                if (__OFSUB__(v49, 1))
                {
                  __break(1u);
                }

                if (v49 == 1)
                {

                  v5 = MEMORY[0x277D84FA0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_26B6CC378(v51, v47, v49, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v44 = swift_slowAlloc();
            v45 = sub_26B6CC268(v44, v47, (v5 + 56), v47, v5, v7, v55);

            MEMORY[0x26D67E950](v44, -1, -1);
            v50 = v56;
            v5 = v45;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v53;
        v14 = v54;
        v12 = v52;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_26B63686C();
  }

  else
  {

    v5 = MEMORY[0x277D84FA0];
  }

  v42 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_26B6CB9A0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v46[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v46[0] = a1;
    v3 = *(a1 + 16);
    v44 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;

    v43 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v44 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      v9 = *(v2 + 40);
      sub_26B6EA714();

      sub_26B6E9AE4();
      v10 = sub_26B6EA744();
      v11 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v12 = v10 & v11;
        v13 = (v10 & v11) >> 6;
        v14 = 1 << (v10 & v11);
        if ((v14 & *(v4 + 8 * v13)) == 0)
        {

          v3 = v43;
          goto LABEL_3;
        }

        v15 = (*(v2 + 48) + 16 * v12);
        v16 = *v15 == v8 && v15[1] == v7;
        if (v16 || (sub_26B6EA5D4() & 1) != 0)
        {
          break;
        }

        v10 = v12 + 1;
      }

      v17 = v5;
      v46[1] = v5;

      v19 = *(v2 + 32);
      v20 = ((1 << v19) + 63) >> 6;
      v21 = 8 * v20;
      if ((v19 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v37 = swift_slowAlloc();
          v38 = sub_26B6CC2F0(v37, v20, (v2 + 56), v20, v2, v12, v46);

          MEMORY[0x26D67E950](v37, -1, -1);

          v2 = v38;
          goto LABEL_35;
        }
      }

      v39[0] = v20;
      v39[1] = v39;
      MEMORY[0x28223BE20](v18);
      v22 = v39 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v22, (v2 + 56), v21);
      v23 = *&v22[8 * v13] & ~v14;
      v41 = v22;
      *&v22[8 * v13] = v23;
      v24 = *(v2 + 16) - 1;
      v12 = v45;
      v43 = *(v45 + 16);
      v20 = v17;
      while (1)
      {
        v40 = v24;
        v42 = v17;
LABEL_16:
        while (2)
        {
          if (v20 == v43)
          {
            v2 = sub_26B6CC378(v41, v39[0], v40, v2);
            goto LABEL_33;
          }

          if ((v17 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v20 >= *(v12 + 16))
          {
            goto LABEL_37;
          }

          v25 = (v44 + 16 * v20);
          v14 = *v25;
          v13 = v25[1];
          ++v20;
          v26 = *(v2 + 40);
          sub_26B6EA714();

          sub_26B6E9AE4();
          v27 = sub_26B6EA744();
          v21 = ~(-1 << *(v2 + 32));
          do
          {
            v28 = v27 & v21;
            v29 = (v27 & v21) >> 6;
            v30 = 1 << (v27 & v21);
            if ((v30 & *(v4 + 8 * v29)) == 0)
            {

              v12 = v45;
              v17 = v42;
              goto LABEL_16;
            }

            v31 = (*(v2 + 48) + 16 * v28);
            if (*v31 == v14 && v31[1] == v13)
            {
              break;
            }

            v33 = sub_26B6EA5D4();
            v27 = v28 + 1;
          }

          while ((v33 & 1) == 0);

          v34 = v41[v29];
          v41[v29] = v34 & ~v30;
          v16 = (v34 & v30) == 0;
          v12 = v45;
          v17 = v42;
          if (v16)
          {
            continue;
          }

          break;
        }

        v24 = v40 - 1;
        if (__OFSUB__(v40, 1))
        {
          break;
        }

        v17 = v20;
        if (v40 == 1)
        {

          v2 = MEMORY[0x277D84FA0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    v2 = MEMORY[0x277D84FA0];
  }

LABEL_35:
  v35 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_26B6CBDA8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_26B6EA714();
  sub_26B6E9AE4();
  v7 = sub_26B6EA744();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_26B6EA5D4() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26B6CC594();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_26B6CC7EC(v9);
  *v2 = v19;
  return v16;
}

uint64_t sub_26B6CBED0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    sub_26B6EA714();

    sub_26B6E9AE4();
    v17 = sub_26B6EA744();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = sub_26B6EA5D4();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_26B6CC378(v28, a2, v27, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_26B6CC0BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v26 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v27 = a5;
  while (1)
  {
    v25 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_26B6CC378(v26, a2, v25, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    v14 = *(a3 + 40);
    sub_26B6EA714();

    sub_26B6E9AE4();
    v15 = sub_26B6EA744();
    v16 = ~(-1 << *(a3 + 32));
    do
    {
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = 1 << (v15 & v16);
      if ((v19 & *(v8 + 8 * v18)) == 0)
      {

        a5 = v27;
        goto LABEL_3;
      }

      v20 = (*(a3 + 48) + 16 * v17);
      if (*v20 == v13 && v20[1] == v12)
      {
        break;
      }

      v22 = sub_26B6EA5D4();
      v15 = v17 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = v26[v18];
    v26[v18] = v23 & ~v19;
    a5 = v27;
    if ((v23 & v19) == 0)
    {
      goto LABEL_3;
    }

    v7 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_20;
    }

    if (v25 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26B6CC268(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_26B6CBED0(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_26B6CC2F0(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_26B6CC0BC(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_26B6CC378(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409578, &qword_26B6EDD00);
  result = sub_26B6EA104();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_26B6EA714();

    sub_26B6E9AE4();
    result = sub_26B6EA744();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_26B6CC594()
{
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409578, &qword_26B6EDD00);
  v3 = *v0;
  v4 = sub_26B6EA0E4();
  if (*(v3 + 16))
  {
    result = OUTLINED_FUNCTION_23_8();
    if (v8)
    {
      v9 = result >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      result = memmove(result, v1, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v3 + 16);
    v11 = 1 << *(v3 + 32);
    v12 = *(v3 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v3 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = (*(v4 + 48) + 16 * v19);
        *v22 = *v20;
        v22[1] = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v1 + v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v4;
  }

  return result;
}

void *sub_26B6CC6CC()
{
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409580, &qword_26B6F8FF0);
  v3 = *v0;
  v4 = sub_26B6EA0E4();
  if (*(v3 + 16))
  {
    result = OUTLINED_FUNCTION_23_8();
    if (v8)
    {
      v9 = result >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      result = memmove(result, v1, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v3 + 16);
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v4 + 48) + v16) = *(*(v3 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v1 + v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v4;
  }

  return result;
}

unint64_t sub_26B6CC7EC(unint64_t result)
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

    v9 = sub_26B6EA0D4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_26B6EA714();

        sub_26B6E9AE4();
        v15 = sub_26B6EA744();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
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

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_26B6CC9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26B6EA5D4() & 1;
  }
}

uint64_t sub_26B6CC9E8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409578, &qword_26B6EDD00);
  result = sub_26B6EA104();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_26B6EA714();

    sub_26B6E9AE4();
    result = sub_26B6EA744();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_26B6EA5D4() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_26B6CCB78(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B378, &qword_26B6F8FE8), v2 = sub_26B6EA104(), v3 = v2, (v26 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v24 = v1;
    v25 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v25 + 8 * v4++);
      v7 = *(v3 + 40);
      sub_26B6E9A24();
      sub_26B6EA714();
      v27 = v6;
      sub_26B6E9AE4();
      v8 = sub_26B6EA744();

      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v14 = *(*(v3 + 48) + 8 * v10);
        v15 = sub_26B6E9A24();
        v17 = v16;
        if (v15 == sub_26B6E9A24() && v17 == v18)
        {

          goto LABEL_17;
        }

        v20 = sub_26B6EA5D4();

        if (v20)
        {

          goto LABEL_17;
        }

        v8 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v27;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v23;
LABEL_17:
      v1 = v24;
      if (v4 == v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_26B6CCD7C()
{
  OUTLINED_FUNCTION_38();
  v58 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v51 = sub_26B6E9564();
  v9 = OUTLINED_FUNCTION_4(v51);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_0();
  v48 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B358, &qword_26B6F8FB8);
  v20 = OUTLINED_FUNCTION_46(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v47 - v23;
  sub_26B6CF9F4(v8, v6, v4, v56);
  v52 = v56[0];
  v53 = v56[1];
  v54 = v56[2];
  v55 = v57;
  v49 = v11;
  v50 = (v11 + 32);
  v47[4] = v11 + 8;
  v47[5] = v11 + 16;
  v47[3] = v11 + 40;
  v47[1] = v8;

  v47[0] = v4;

  while (1)
  {
    sub_26B6CFA30(v24);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E98, &unk_26B6F14C0);
    if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
    {
      sub_26B63686C();

      OUTLINED_FUNCTION_37();
      return;
    }

    v27 = *v24;
    v26 = *(v24 + 1);
    v28 = *v50;
    v29 = v18;
    (*v50)(v18, &v24[*(v25 + 48)], v51);
    v30 = *v58;
    v32 = sub_26B675324();
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v35 = v31;
    if (v30[3] >= v33 + v34)
    {
      if ((v2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F18, &qword_26B6F17F0);
        sub_26B6EA2F4();
      }
    }

    else
    {
      sub_26B676878();
      v36 = *v58;
      v37 = sub_26B675324();
      if ((v35 & 1) != (v38 & 1))
      {
        goto LABEL_16;
      }

      v32 = v37;
    }

    v39 = *v58;
    if (v35)
    {
      v41 = v48;
      v40 = v49;
      v18 = v29;
      v42 = v51;
      (*(v49 + 16))(v48, v29, v51);
      (*(v40 + 8))(v29, v42);

      (*(v40 + 40))(v39[7] + *(v40 + 72) * v32, v41, v42);
      v2 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_4_7(&v39[v32 >> 6]);
      v43 = (v39[6] + 16 * v32);
      *v43 = v27;
      v43[1] = v26;
      v18 = v29;
      v28((v39[7] + *(v49 + 72) * v32), v29, v51);
      v44 = v39[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_15;
      }

      v39[2] = v46;
      v2 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  sub_26B6EA674();
  __break(1u);
}

uint64_t sub_26B6CD144(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      v5 = sub_26B6CDA5C(v13, v7, v5, a3);
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  sub_26B676BD4(0, v7, v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  v8 = OUTLINED_FUNCTION_12_3();
  v9 = a2(v8);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    v5 = v9;
  }

LABEL_5:
  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_26B6CD2B8(unint64_t *a1, uint64_t a2, void *a3)
{
  v43 = a2;
  v44 = a1;
  v56 = sub_26B6E9564();
  v4 = *(v56 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B360, &qword_26B6F8FC0);
  v7 = *(*(v55 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v55);
  v54 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = (&v43 - v10);
  v11 = type metadata accessor for DatedSubscribers(0);
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = *(v50 + 64);
  result = MEMORY[0x28223BE20](v11);
  v49 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0;
  v15 = 0;
  v57 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v47 = (v4 + 8);
  v48 = (v4 + 16);
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v58 = (v21 - 1) & v21;
LABEL_11:
    v26 = v23 | (v15 << 6);
    v27 = v57[7];
    v28 = (v57[6] + 16 * v26);
    v29 = *v28;
    v30 = v28[1];
    v31 = v49;
    v32 = *(v50 + 72);
    v46 = v26;
    sub_26B6CFD80(v27 + v32 * v26, v49);
    v33 = v52;
    *v52 = v29;
    *(v33 + 8) = v30;
    v34 = v55;
    sub_26B6CFD80(v31, v33 + *(v55 + 48));
    v35 = v54;
    sub_26B67E194(v33, v54, &qword_28040B360, &qword_26B6F8FC0);
    v36 = *(v35 + 8);
    swift_bridgeObjectRetain_n();

    v37 = v35 + *(v34 + 48);
    v38 = v53;
    v39 = v56;
    (*v48)(v53, v37 + *(v51 + 20), v56);
    sub_26B6CFDE4(v37);
    sub_26B6E9504();
    v41 = v40;
    (*v47)(v38, v39);
    sub_26B650BBC(v33, &qword_28040B360, &qword_26B6F8FC0);
    sub_26B6CFDE4(v31);

    v21 = v58;
    if (fabs(v41) < 172800.0)
    {
      *(v44 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      if (__OFADD__(v45++, 1))
      {
        __break(1u);
        return sub_26B6CDB80(v44, v43, v45, v57);
      }
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_26B6CDB80(v44, v43, v45, v57);
    }

    v25 = v17[v15];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v58 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B6CD68C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
  v4 = *(*(v62 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v62);
  v56 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = (&v43 - v7);
  v54 = sub_26B6E9564();
  v8 = *(*(v54 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v54);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v61 = &v43 - v13;
  v14 = 0;
  v57 = a3;
  v15 = *(a3 + 64);
  v48 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v46 = 0;
  v47 = (v16 + 63) >> 6;
  v51 = v12 + 16;
  v53 = v12;
  v50 = v12 + 8;
  while (v18)
  {
    v19 = __clz(__rbit64(v18));
    v60 = (v18 - 1) & v18;
LABEL_11:
    v22 = v19 | (v14 << 6);
    v23 = v57[7];
    v24 = (v57[6] + 16 * v22);
    v25 = *v24;
    v59 = v24[1];
    v26 = v59;
    v27 = v53;
    v28 = v54;
    v29 = *(v53 + 72);
    v49 = v22;
    v30 = *(v53 + 16);
    v31 = v61;
    v30(v61, v23 + v29 * v22, v54);
    v32 = v55;
    *v55 = v25;
    *(v32 + 8) = v26;
    v30((v32 + *(v62 + 48)), v31, v28);
    swift_bridgeObjectRetain_n();
    v33 = v52;
    sub_26B6E9554();
    sub_26B6E9514();
    v35 = v34;
    v58 = *(v27 + 8);
    v58(v33, v28);
    v36 = v56;
    sub_26B67E194(v32, v56, &qword_280409090, &unk_26B6EC1B0);
    v37 = *(v36 + 8);

    v38 = *(v62 + 48);
    sub_26B6E9514();
    v40 = v39;
    sub_26B650BBC(v32, &qword_280409090, &unk_26B6EC1B0);
    v41 = v58;
    v58((v36 + v38), v28);
    v41(v61, v28);

    v18 = v60;
    if (v35 - v40 < 259200.0)
    {
      *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      if (__OFADD__(v46++, 1))
      {
        __break(1u);
        return sub_26B6CDE88(v45, v44, v46, v57);
      }
    }
  }

  v20 = v14;
  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v14 >= v47)
    {
      return sub_26B6CDE88(v45, v44, v46, v57);
    }

    v21 = *(v48 + 8 * v14);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v60 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_26B6CDA5C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v5 = OUTLINED_FUNCTION_12_3();
    v6 = a4(v5);

    return v6;
  }

  return result;
}

unint64_t *sub_26B6CDAE0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    swift_bridgeObjectRetain_n();
    v8 = sub_26B6CE5C0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_26B6CDB80(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DatedSubscribers(0);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v39 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v41 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B368, &qword_26B6F8FC8);
  result = sub_26B6EA354();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v41;
  v40 = a4;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v42;
    v45 = *(v43 + 72);
    sub_26B6CFD80(v23 + v45 * v22, v42);
    sub_26B6CEE30(v27, v18);
    v28 = *(v14 + 40);
    sub_26B6EA714();

    sub_26B6E9AE4();
    result = sub_26B6EA744();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v18 = v41;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v18 = v41;
LABEL_25:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v14 + 48) + 16 * v32);
    *v37 = v26;
    v37[1] = v25;
    result = sub_26B6CEE30(v18, *(v14 + 56) + v32 * v45);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v40;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26B6CDE88(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v7 = sub_26B6E9564();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v46 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v51 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F10, &qword_26B6F17E8);
  result = sub_26B6EA354();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v50;
  }

  v16 = 0;
  v48 = result;
  v49 = v56 + 16;
  v17 = v56 + 32;
  v18 = result + 64;
  v19 = v51;
  v47 = a4;
  while (v15)
  {
    v20 = v19;
    v21 = v17;
    v22 = __clz(__rbit64(v15));
    v53 = (v15 - 1) & v15;
LABEL_16:
    v25 = v22 | (v16 << 6);
    v26 = a4[7];
    v27 = (a4[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = v56;
    v55 = *(v56 + 72);
    v31 = v52;
    (*(v56 + 16))(v52, v26 + v55 * v25, v20);
    v32 = *(v30 + 32);
    v33 = v31;
    v17 = v21;
    v32(v57, v33, v20);
    v14 = v48;
    v34 = *(v48 + 40);
    sub_26B6EA714();

    v54 = v28;
    sub_26B6E9AE4();
    result = sub_26B6EA744();
    v35 = -1 << *(v14 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      v19 = v51;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v18 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v19 = v51;
LABEL_25:
    *(v18 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v14 + 48) + 16 * v38);
    v44 = v55;
    *v43 = v54;
    v43[1] = v29;
    result = (v32)(*(v14 + 56) + v38 * v44, v57, v19);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v47;
    v15 = v53;
    if (!a3)
    {
      return v14;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v24 = v50[v16];
    ++v23;
    if (v24)
    {
      v20 = v19;
      v21 = v17;
      v22 = __clz(__rbit64(v24));
      v53 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26B6CE200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26B6E9564();
  (*(*(v7 - 8) + 16))(a1, a4, v7);

  return a2;
}

uint64_t sub_26B6CE280@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E98, &unk_26B6F14C0);
  result = sub_26B6CE200(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_26B6CE2F0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v33[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v32 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27[1] = v27;
    MEMORY[0x28223BE20](v7);
    v28 = v5;
    v29 = (v27 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    v8 = sub_26B676BD4(0, v5, v29);
    v30 = 0;
    v31 = v2;
    v9 = 0;
    v11 = *(v2 + 56);
    v2 += 56;
    v10 = v11;
    v12 = 1 << *(v2 - 24);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v6 = v13 & v10;
    v5 = (v12 + 63) >> 6;
    while (v6)
    {
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_12:
      v17 = v14 | (v9 << 6);
      v18 = (*(v31 + 48) + 16 * v17);
      v19 = v18[1];
      v33[0] = *v18;
      v33[1] = v19;
      MEMORY[0x28223BE20](v8);
      v27[-2] = v33;

      v20 = sub_26B6C35FC(sub_26B655E5C, &v27[-4], v32);

      if (!v20)
      {
        *(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_26B6CC378(v29, v28, v30, v31);
          goto LABEL_17;
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v5)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v6 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = v32;

  v22 = sub_26B6CDAE0(v25, v5, v2, v26);

  MEMORY[0x26D67E950](v25, -1, -1);
LABEL_17:
  swift_bridgeObjectRelease_n();
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

unint64_t *sub_26B6CE5C0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v21 = a2;
  v22 = result;
  v23 = 0;
  v24 = a3;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v24 + 48) + 16 * v13);
    v15 = v14[1];
    v25[0] = *v14;
    v25[1] = v15;
    MEMORY[0x28223BE20](result);
    v20[2] = v25;

    v16 = sub_26B6C35FC(sub_26B655EEC, v20, v26);

    if (!v16)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v24;

        v19 = sub_26B6CC378(v22, v21, v23, v18);

        return v19;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

id sub_26B6CE780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for URLResourceKey(0);
  v9 = sub_26B6E9C24();

  v10 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:v9 options:a3 error:a4];

  return v10;
}

uint64_t sub_26B6CE814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter);
  v8[3] = type metadata accessor for PersistentStoreWriter();
  v8[4] = &off_287C2FA88;
  *v8 = a3;
  v9 = (a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore_sessionsDirectoryPath);
  *v9 = 0x736E6F6973736573;
  v9[1] = 0xE800000000000000;
  v10 = OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___activityDataURL;
  v11 = sub_26B6E93B4();
  __swift_storeEnumTagSinglePayload(a4 + v10, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___scoreboardsDataURL, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___cloudChannelSubscriptionURL, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___autostartSuppressionsURL, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___scheduledActivitiesURL, 1, 1, v11);
  *(a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___encoder) = 0;
  *(a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___decoder) = 0;
  *(a4 + 16) = a1;
  (*(*(v11 - 8) + 32))(a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore_storeURL, a2, v11);
  return a4;
}

unint64_t sub_26B6CE98C()
{
  result = qword_28040B2C0;
  if (!qword_28040B2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040B2B8, &unk_26B6F8D10);
    sub_26B6CEB24(&qword_28040B2C8, type metadata accessor for DatedSubscribers);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B2C0);
  }

  return result;
}

unint64_t sub_26B6CEA68()
{
  result = qword_28040B2D0;
  if (!qword_28040B2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040B2B8, &unk_26B6F8D10);
    sub_26B6CEB24(&qword_28040B2D8, type metadata accessor for DatedSubscribers);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B2D0);
  }

  return result;
}

uint64_t sub_26B6CEB24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26B6CEB90()
{
  result = qword_28040B2E8;
  if (!qword_28040B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B2E8);
  }

  return result;
}

unint64_t sub_26B6CEBE4()
{
  result = qword_2810CCB90;
  if (!qword_2810CCB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CCB90);
  }

  return result;
}

unint64_t sub_26B6CEC38()
{
  result = qword_2810CE390;
  if (!qword_2810CE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE390);
  }

  return result;
}

unint64_t sub_26B6CEC8C()
{
  result = qword_28040B2F0;
  if (!qword_28040B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B2F0);
  }

  return result;
}

unint64_t sub_26B6CECE0()
{
  result = qword_28040B2F8;
  if (!qword_28040B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B2F8);
  }

  return result;
}

unint64_t sub_26B6CED34()
{
  result = qword_28040B300;
  if (!qword_28040B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B300);
  }

  return result;
}

unint64_t sub_26B6CED88()
{
  result = qword_28040B308;
  if (!qword_28040B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B308);
  }

  return result;
}

unint64_t sub_26B6CEDDC()
{
  result = qword_28040B318;
  if (!qword_28040B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B318);
  }

  return result;
}

uint64_t sub_26B6CEE30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatedSubscribers(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26B6CEEE4()
{
  v0 = sub_26B6E93B4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26B6CF678();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_26B6CF678()
{
  if (!qword_2810CEA08)
  {
    sub_26B6E93B4();
    v0 = sub_26B6E9FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2810CEA08);
    }
  }
}

uint64_t sub_26B6CF6F8()
{
  result = sub_26B6E9564();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DatedSubscribers.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B6CF854()
{
  result = qword_28040B340;
  if (!qword_28040B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B340);
  }

  return result;
}

unint64_t sub_26B6CF8AC()
{
  result = qword_28040B348;
  if (!qword_28040B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B348);
  }

  return result;
}

unint64_t sub_26B6CF904()
{
  result = qword_28040B350;
  if (!qword_28040B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B350);
  }

  return result;
}

uint64_t sub_26B6CF958(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B6CF9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_26B6CFA30@<X0>(uint64_t a1@<X8>)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v5 = &v40 - v4;
  v6 = sub_26B6E9564();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F58, &unk_26B6F18F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v45 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v40 = v5;
  v44 = v20;
  if (v22)
  {
    v42 = a1;
    v23 = v21;
LABEL_7:
    v41 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v23 << 6);
    v25 = (*(v18 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    (*(v7 + 16))(v10, *(v18 + 56) + *(v7 + 72) * v24, v6);
    v28 = v43;
    v29 = *(v43 + 48);
    *v17 = v26;
    *(v17 + 1) = v27;
    v30 = v10;
    v31 = v28;
    (*(v7 + 32))(&v17[v29], v30, v6);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v31);

    v32 = v41;
    a1 = v42;
LABEL_8:
    *v1 = v18;
    v1[1] = v19;
    v33 = v45;
    v1[2] = v44;
    v1[3] = v21;
    v1[4] = v32;
    v34 = v1[5];
    v35 = v1[6];
    sub_26B67EDE8(v17, v33, &qword_280409F58, &unk_26B6F18F0);
    v36 = 1;
    if (__swift_getEnumTagSinglePayload(v33, 1, v31) != 1)
    {
      v37 = v33;
      v38 = v40;
      sub_26B67EDE8(v37, v40, &qword_280409090, &unk_26B6EC1B0);
      v34(v38);
      sub_26B650BBC(v38, &qword_280409090, &unk_26B6EC1B0);
      v36 = 0;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E98, &unk_26B6F14C0);
    return __swift_storeEnumTagSinglePayload(a1, v36, 1, v39);
  }

  else
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= ((v20 + 64) >> 6))
      {
        v31 = v43;
        __swift_storeEnumTagSinglePayload(&v40 - v16, 1, 1, v43);
        v32 = 0;
        goto LABEL_8;
      }

      v22 = *(v19 + 8 * v23);
      ++v21;
      if (v22)
      {
        v42 = a1;
        v21 = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B6CFD80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatedSubscribers(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B6CFDE4(uint64_t a1)
{
  v2 = type metadata accessor for DatedSubscribers(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_23_8()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_6@<X0>(uint64_t a1@<X8>)
{
  result = v1 + a1;
  v3 = *(v1 + a1 + 24);
  v4 = *(v1 + a1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_7@<X0>(uint64_t a1@<X8>)
{

  return sub_26B650BBC(v2 + a1, v1, v3);
}

uint64_t OUTLINED_FUNCTION_44_3()
{

  return sub_26B6EA074();
}

void OUTLINED_FUNCTION_49_2()
{

  JUMPOUT(0x26D67D4D0);
}

uint64_t OUTLINED_FUNCTION_63_3(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

unint64_t OUTLINED_FUNCTION_64_3()
{
  *(v0 - 112) = 11822;
  *(v0 - 104) = 0xE200000000000000;

  return sub_26B641414();
}

uint64_t OUTLINED_FUNCTION_65_2()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_70_2()
{
  v2 = *(v1 - 88);
  v3 = *(*(v1 - 96) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_76_1()
{

  return sub_26B6E93B4();
}

uint64_t OUTLINED_FUNCTION_77_1()
{

  return sub_26B6E93B4();
}

uint64_t OUTLINED_FUNCTION_78_1()
{

  return sub_26B6E9024();
}

void Dictionary<>.subscript.getter()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_26B6E9FF4();
  OUTLINED_FUNCTION_4(v8);
  v35 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = sub_26B6EA2D4();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v23 = v22 - v21;
  v24 = v5[1];
  v34 = *v5;
  v38 = v34;
  v39 = v24;
  type metadata accessor for SportsJSONContext.Property();
  SportsJSONContext.Property.codingUserInfoKey.getter(v23);
  v25 = sub_26B6D05EC(v3, &v36);
  (*(v18 + 8))(v23, v15, v25);
  if (!v37)
  {
    sub_26B6D2848(&v36, &qword_2804092A0, &qword_26B6F2850);
LABEL_10:
    v27 = v7;
    v28 = 1;
    goto LABEL_11;
  }

  sub_26B643E0C(&v36, v40);
  sub_26B643E1C(v40, &v36);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_15_10(v14, 1);
    (*(v35 + 8))(v14, v8);
    if (qword_280408DB0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v29 = sub_26B6E95C4();
    __swift_project_value_buffer(v29, qword_280421AF8);

    v30 = sub_26B6E95A4();
    v31 = sub_26B6E9E74();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v36 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_26B6D22D8(v34, v24, &v36);
      _os_log_impl(&dword_26B630000, v30, v31, "Value found for property %s is not of the same type. Returning nil.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_3_4();
    }

    __swift_destroy_boxed_opaque_existential_1(v40);
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  OUTLINED_FUNCTION_15_10(v14, 0);
  OUTLINED_FUNCTION_7_15(v1);
  (*(v26 + 32))(v7, v14, v1);
  v27 = v7;
  v28 = 0;
LABEL_11:
  OUTLINED_FUNCTION_15_10(v27, v28);
  OUTLINED_FUNCTION_8_0();
}

double sub_26B6D05EC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_26B6753C0(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_26B643E1C(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_26B6D0650(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_26B675414(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_26B6D0698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_26B675324();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 32 * v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];

  return v7;
}

uint64_t sub_26B6D071C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_26B675324(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_26B6E9564();
    OUTLINED_FUNCTION_7_15(v8);
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    v10 = a2;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    v12 = sub_26B6E9564();
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

SportsKit::SportsJSONContext __swiftcall SportsJSONContext.init()()
{
  v1 = v0;
  result.storage._rawValue = sub_26B6E9944();
  v1->storage._rawValue = result.storage._rawValue;
  return result;
}

SportsKit::SportsJSONContext __swiftcall SportsJSONContext.init(userInfo:)(Swift::OpaquePointer userInfo)
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v72 = v3;
  isUniquelyReferenced_nonNull_native = sub_26B6EA2D4();
  v5 = OUTLINED_FUNCTION_4(isUniquelyReferenced_nonNull_native);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_0();
  v12 = v10 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_13_12(v14, v15, v16, v17, v18, v19, v20, v21, v72);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B380, &qword_26B6F8FF8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_30_0();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v72 - v28;
  v88 = sub_26B6E9944();
  v30 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B388, &qword_26B6F9000);
  sub_26B6E9934();
  v31 = 0;
  v76 = v7;
  v77 = v2;
  v33 = *(v2 + 64);
  v32 = v2 + 64;
  v34 = *(v32 - 32);
  OUTLINED_FUNCTION_13_5();
  v37 = v36 & v35;
  v39 = (v38 + 63) >> 6;
  v74 = v7 + 16;
  v83 = v26;
  v84 = (v7 + 32);
  v81 = v7 + 8;
  v82 = isUniquelyReferenced_nonNull_native;
  v78 = v39;
  v79 = v32;
  v80 = v29;
  v73 = v12;
  if ((v36 & v35) != 0)
  {
    while (1)
    {
      v40 = v31;
LABEL_7:
      v41 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v42 = v41 | (v40 << 6);
      v44 = v76;
      v43 = v77;
      (*(v76 + 16))(v75, *(v77 + 48) + *(v76 + 72) * v42, isUniquelyReferenced_nonNull_native);
      sub_26B643E1C(*(v43 + 56) + 32 * v42, v87);
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B390, &qword_26B6F9008) + 48);
      v26 = v83;
      (*(v44 + 32))();
      sub_26B643E0C(v87, (v26 + v45));
      OUTLINED_FUNCTION_15_10(v26, 0);
      v12 = v73;
LABEL_8:
      sub_26B6D27D8(v26, v29);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B390, &qword_26B6F9008);
      if (__swift_getEnumTagSinglePayload(v29, 1, v46) == 1)
      {
        break;
      }

      v47 = *(v46 + 48);
      (*v84)(v12, v29, isUniquelyReferenced_nonNull_native);
      sub_26B643E0C(&v29[v47], v87);
      v48 = sub_26B6EA2C4();
      v50 = v49;
      sub_26B643E1C(v87, v86);
      v51 = v88;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v51;
      v88 = 0x8000000000000000;
      OUTLINED_FUNCTION_12_12();
      sub_26B675324();
      OUTLINED_FUNCTION_19_2();
      if (__OFADD__(v54, v55))
      {
        goto LABEL_22;
      }

      v56 = v52;
      v12 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B398, &unk_26B6F9010);
      if (sub_26B6EA2E4())
      {
        OUTLINED_FUNCTION_12_12();
        v57 = sub_26B675324();
        if ((v12 & 1) != (v58 & 1))
        {
          goto LABEL_24;
        }

        v56 = v57;
      }

      if (v12)
      {

        v59 = v85;
        v60 = (*(v85 + 56) + 32 * v56);
        __swift_destroy_boxed_opaque_existential_1(v60);
        sub_26B643E0C(v86, v60);
        __swift_destroy_boxed_opaque_existential_1(v87);
        v61 = OUTLINED_FUNCTION_9_12();
        v62(v61);
      }

      else
      {
        v59 = v85;
        OUTLINED_FUNCTION_9_6(v85 + 8 * (v56 >> 6));
        v64 = (v63 + 16 * v56);
        *v64 = v48;
        v64[1] = v50;
        sub_26B643E0C(v86, (*(v59 + 56) + 32 * v56));
        __swift_destroy_boxed_opaque_existential_1(v87);
        v65 = OUTLINED_FUNCTION_9_12();
        v66(v65);
        v67 = *(v59 + 16);
        v68 = __OFADD__(v67, 1);
        v69 = v67 + 1;
        if (v68)
        {
          goto LABEL_23;
        }

        *(v59 + 16) = v69;
      }

      v88 = v59;
      v26 = v83;
      v32 = v79;
      v29 = v80;
      v39 = v78;
      if (!v37)
      {
        goto LABEL_3;
      }
    }

    *v72 = v88;
    OUTLINED_FUNCTION_8_0();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v40 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v40 >= v39)
      {
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B390, &qword_26B6F9008);
        __swift_storeEnumTagSinglePayload(v26, 1, 1, v70);
        v37 = 0;
        goto LABEL_8;
      }

      v37 = *(v32 + 8 * v40);
      ++v31;
      if (v37)
      {
        v31 = v40;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result.storage._rawValue = sub_26B6EA674();
    __break(1u);
  }

  return result;
}

uint64_t SportsJSONContext.Property.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SportsJSONContext.Property.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SportsJSONContext.Property.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SportsJSONContext.Property.codingUserInfoKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3A0, &qword_26B6FA4A0) - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  v7 = *v1;
  v8 = v1[1];

  sub_26B6EA2B4();
  v9 = sub_26B6EA2D4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
  {
    sub_26B6D2848(v6, &qword_28040B3A0, &qword_26B6FA4A0);
    v12[2] = 0;
    v12[3] = 0xE000000000000000;
    sub_26B6EA134();
    MEMORY[0x26D67D4D0](0xD000000000000012, 0x800000026B6FD9C0);
    v12[0] = v7;
    v12[1] = v8;
    sub_26B6EA5C4();
    MEMORY[0x26D67D4D0](0xD00000000000001ALL, 0x800000026B6FD9E0);
    result = sub_26B6EA314();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_15(v9);
    return (*(v10 + 32))(a1, v6, v9);
  }

  return result;
}

uint64_t static SportsJSONContext.Property.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26B6EA5D4();
  }
}

void Dictionary<>.init(jsonContext:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3A0, &qword_26B6FA4A0) - 8) + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v71 - v4;
  v6 = sub_26B6EA2D4();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_0();
  v81 = v12 - v13;
  v15 = MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_13_12(v15, v16, v17, v18, v19, v20, v21, v22, v71);
  v23 = *v1;
  v89 = MEMORY[0x277D84F98];
  v24 = *(v23 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3A8, &unk_26B6F9020);
  sub_26B6E9934();
  v25 = 0;
  v27 = v23 + 64;
  v26 = *(v23 + 64);
  v79 = v23;
  v28 = *(v23 + 32);
  OUTLINED_FUNCTION_13_5();
  v31 = v30 & v29;
  v33 = (v32 + 63) >> 6;
  v75 = (v9 + 32);
  v78 = (v9 + 16);
  v72 = v9;
  v74 = (v9 + 8);
  *&v34 = 136315138;
  v73 = v34;
  v76 = v5;
  v77 = v6;
  while (v31)
  {
    v35 = v25;
LABEL_8:
    v36 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v37 = v36 | (v35 << 6);
    v38 = (*(v79 + 48) + 16 * v37);
    v40 = *v38;
    v39 = v38[1];
    sub_26B643E1C(*(v79 + 56) + 32 * v37, v83);
    *&v84 = v40;
    *(&v84 + 1) = v39;
    sub_26B643E0C(v83, &v85);

LABEL_9:
    v87 = v84;
    v88[0] = v85;
    v88[1] = v86;
    if (!*(&v84 + 1))
    {

      OUTLINED_FUNCTION_8_0();
      return;
    }

    sub_26B643E0C(v88, &v84);

    OUTLINED_FUNCTION_12_12();
    sub_26B6EA2B4();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_26B6D2848(v5, &qword_28040B3A0, &qword_26B6FA4A0);
      if (qword_280408DB0 != -1)
      {
        OUTLINED_FUNCTION_0_16();
        swift_once();
      }

      v41 = sub_26B6E95C4();
      __swift_project_value_buffer(v41, qword_280421AF8);

      v42 = sub_26B6E95A4();
      v43 = sub_26B6E9E74();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *&v83[0] = v45;
        *v44 = v73;
        v46 = OUTLINED_FUNCTION_12_12();
        v49 = sub_26B6D22D8(v46, v47, v48);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_26B630000, v42, v43, "Could not coerce %s into CodingUserInfoKey", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        v5 = v76;
        OUTLINED_FUNCTION_3_4();
        v6 = v77;
        OUTLINED_FUNCTION_3_4();
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(&v84);
    }

    else
    {

      v50 = v80;
      (*v75)(v80, v5, v6);
      v51 = *v78;
      (*v78)(v81, v50, v6);
      sub_26B643E1C(&v84, v83);
      v52 = v89;
      swift_isUniquelyReferenced_nonNull_native();
      v82 = v52;
      sub_26B6753C0();
      OUTLINED_FUNCTION_19_2();
      if (__OFADD__(v55, v56))
      {
        goto LABEL_30;
      }

      v57 = v53;
      v58 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F08, &qword_26B6F17E0);
      if (sub_26B6EA2E4())
      {
        v59 = sub_26B6753C0();
        v6 = v77;
        if ((v58 & 1) != (v60 & 1))
        {
          goto LABEL_32;
        }

        v57 = v59;
      }

      else
      {
        v6 = v77;
      }

      v61 = v82;
      if (v58)
      {
        v62 = (*(v82 + 56) + 32 * v57);
        __swift_destroy_boxed_opaque_existential_1(v62);
        sub_26B643E0C(v83, v62);
        v63 = *v74;
        (*v74)(v81, v6);
        v63(v80, v6);
        __swift_destroy_boxed_opaque_existential_1(&v84);
      }

      else
      {
        OUTLINED_FUNCTION_9_6(v82 + 8 * (v57 >> 6));
        v64 = v72;
        v66 = v81;
        v51(v65 + *(v72 + 72) * v57, v81, v6);
        sub_26B643E0C(v83, (*(v61 + 56) + 32 * v57));
        v67 = *(v64 + 8);
        v67(v66, v6);
        v67(v80, v6);
        __swift_destroy_boxed_opaque_existential_1(&v84);
        v68 = *(v61 + 16);
        v69 = __OFADD__(v68, 1);
        v70 = v68 + 1;
        if (v69)
        {
          goto LABEL_31;
        }

        *(v61 + 16) = v70;
      }

      v89 = v61;
      v5 = v76;
    }
  }

  while (1)
  {
    v35 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v35 >= v33)
    {
      v31 = 0;
      v85 = 0u;
      v86 = 0u;
      v84 = 0u;
      goto LABEL_9;
    }

    v31 = *(v27 + 8 * v35);
    ++v25;
    if (v31)
    {
      v25 = v35;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  sub_26B6EA674();
  __break(1u);
}

uint64_t sub_26B6D15BC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 8);
  v4 = *a1;
  v6 = *a2;
  v7 = a2[1];

  Dictionary<>.subscript.getter();
}

void sub_26B6D1630(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = sub_26B6E9FF4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = *a3;
  v10 = a3[1];
  (*(v12 + 16))(v13 - v9, a1);
  v13[0] = v11;
  v13[1] = v10;

  Dictionary<>.subscript.setter();
}

void Dictionary<>.subscript.setter()
{
  OUTLINED_FUNCTION_10_0();
  v66 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_26B6EA2D4();
  v8 = OUTLINED_FUNCTION_4(v7);
  v67 = v9;
  v68 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v65 = v13 - v12;
  v14 = sub_26B6E9FF4();
  OUTLINED_FUNCTION_4(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v60 - v21;
  v64 = *(v2 - 8);
  v23 = *(v64 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_30_0();
  v63 = (v24 - v25);
  MEMORY[0x28223BE20](v26);
  v28 = &v60 - v27;
  v29 = *v4;
  v30 = v4[1];
  v31 = v6;
  (*(v16 + 16))(v22, v6, v14);
  if (__swift_getEnumTagSinglePayload(v22, 1, v2) == 1)
  {
    v32 = *(v16 + 8);
    v32(v22, v14);
    *&v72 = v29;
    *(&v72 + 1) = v30;
    type metadata accessor for SportsJSONContext.Property();
    v33 = v65;
    SportsJSONContext.Property.codingUserInfoKey.getter(v65);

    sub_26B676120(v33, v34, v35, v36, v37, v38, v39, v40, v60, v61);
    v32(v6, v14);
    (*(v67 + 1))(v33, v68);
    v41 = v74;
LABEL_7:
    sub_26B6D2848(v41, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_8;
  }

  v62 = v14;
  v42 = v6;
  v43 = v64;
  (*(v64 + 32))(v28, v22, v2);
  v71[3] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v71);
  (*(v43 + 16))(boxed_opaque_existential_0, v28, v2);
  v61 = v29;
  v69 = v29;
  v70 = v30;
  type metadata accessor for SportsJSONContext.Property();
  v45 = v65;
  SportsJSONContext.Property.codingUserInfoKey.getter(v65);
  sub_26B6D2904();
  (*(v67 + 1))(v45, v68);
  if (!v73)
  {

    (*(v16 + 8))(v31, v62);
    (*(v43 + 8))(v28, v2);
    v41 = &v72;
    goto LABEL_7;
  }

  sub_26B643E0C(&v72, v74);
  sub_26B643E1C(v74, &v72);
  v46 = v63;
  v47 = v42;
  if (swift_dynamicCast())
  {

    (*(v16 + 8))(v42, v62);
    __swift_destroy_boxed_opaque_existential_1(v74);
    v48 = *(v43 + 8);
    v48(v28, v2);
    v48(v46, v2);
  }

  else
  {
    v68 = v2;
    v49 = v62;
    v50 = v30;
    if (qword_280408DB0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v51 = sub_26B6E95C4();
    __swift_project_value_buffer(v51, qword_280421AF8);

    v52 = sub_26B6E95A4();
    v53 = sub_26B6E9E74();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v61;
    if (v54)
    {
      v56 = swift_slowAlloc();
      v67 = v28;
      v57 = v56;
      v58 = swift_slowAlloc();
      *&v72 = v58;
      *v57 = 136315138;
      v59 = sub_26B6D22D8(v55, v50, &v72);

      *(v57 + 4) = v59;
      _os_log_impl(&dword_26B630000, v52, v53, "New value stored for property %s does not match old type. This may indicate a bug.", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_3_4();

      (*(v16 + 8))(v47, v49);
      __swift_destroy_boxed_opaque_existential_1(v74);
      (*(v43 + 8))(v67, v68);
    }

    else
    {

      (*(v16 + 8))(v47, v49);
      __swift_destroy_boxed_opaque_existential_1(v74);
      (*(v43 + 8))(v28, v68);
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_8_0();
}

void (*Dictionary<>.subscript.modify(void *a1, uint64_t *a2, uint64_t a3))(void **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v7[2] = a3;
  v7[3] = v3;
  v8 = sub_26B6E9FF4();
  v7[4] = v8;
  v9 = *(v8 - 8);
  v7[5] = v9;
  v10 = *(v9 + 64);
  v7[6] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v13 = *a2;
  v12 = a2[1];
  v7[7] = v11;
  v7[8] = v13;
  v7[9] = v12;
  *v7 = v13;
  v7[1] = v12;
  v14 = *v3;

  Dictionary<>.subscript.getter();
  return sub_26B6D1DC8;
}

void sub_26B6D1DC8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[8];
    v3 = v2[9];
    v6 = v2[6];
    v5 = v2[7];
    v7 = v2[4];
    v8 = v2[5];
    v10 = v2[2];
    v9 = v2[3];
    (*(v8 + 16))(v6, v5, v7);
    Dictionary<>.subscript.setter();
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    v6 = v2[6];
    v5 = v2[7];
    v11 = v2[2];
    v12 = v2[3];
    Dictionary<>.subscript.setter();
  }

  free(v5);
  free(v6);

  free(v2);
}

void SportsJSONInitFailureObserver.tryingToEncode(_:didFailWith:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_26B6EA1C4();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  v16 = v15 - v14;
  swift_getErrorValue();
  sub_26B6EA6B4();
  v17 = v5;
  sub_26B6EA194();
  v18 = sub_26B6EA1D4();
  v19 = swift_allocError();
  v21 = v20;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3B0, &qword_26B6F9030) + 48);
  *(v21 + 3) = swift_getMetatypeMetadata();
  *v21 = v7;
  (*(v11 + 16))(&v21[v22], v16, v8);
  v23 = *MEMORY[0x277D841A8];
  OUTLINED_FUNCTION_7_15(v18);
  (*(v24 + 104))(v21);
  (*(v1 + 8))(v7, v19, v3, v1);
  (*(v11 + 8))(v16, v8);

  OUTLINED_FUNCTION_8_0();
}

void sub_26B6D20AC(uint64_t a1, void *a2, const char *a3)
{
  if (qword_280408DB0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v5 = sub_26B6E95C4();
  __swift_project_value_buffer(v5, qword_280421AF8);
  v6 = a2;
  oslog = sub_26B6E95A4();
  v7 = sub_26B6E9E74();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = sub_26B6EA7F4();
    v11 = sub_26B6D22D8(v9, v10, &v16);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v12 = sub_26B6EA6B4();
    v14 = sub_26B6D22D8(v12, v13, &v16);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_26B630000, oslog, v7, a3, v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_3_4();
  }

  else
  {
  }
}

uint64_t sub_26B6D22D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26B6D239C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_26B643E1C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26B6D239C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26B6D249C(a5, a6);
    *a1 = v9;
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
    result = sub_26B6EA1E4();
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

uint64_t sub_26B6D249C(uint64_t a1, unint64_t a2)
{
  v4 = sub_26B6D24E8(a1, a2);
  sub_26B6D2600(&unk_287C27F18);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26B6D24E8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26B6E9B34())
  {
    result = sub_26B6AD01C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26B6EA114();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26B6EA1E4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26B6D2600(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_26B6D26E4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_26B6D26E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B1C0, &unk_26B6F8268);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_26B6D27D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B380, &qword_26B6F8FF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B6D2848(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7_15(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_26B6D2904()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v23 = v4;
  v24 = v3;
  v5 = sub_26B6EA2D4();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v13 = v12 - v11;
  v14 = *v0;
  swift_isUniquelyReferenced_nonNull_native();
  v25 = *v0;
  sub_26B6753C0();
  OUTLINED_FUNCTION_19_2();
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v15;
  v20 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F08, &qword_26B6F17E0);
  if (sub_26B6EA2E4())
  {
    v21 = sub_26B6753C0();
    if ((v20 & 1) == (v22 & 1))
    {
      v19 = v21;
      goto LABEL_5;
    }

LABEL_10:
    sub_26B6EA674();
    __break(1u);
    return;
  }

LABEL_5:
  if (v20)
  {
    sub_26B643E0C((*(v25 + 56) + 32 * v19), v23);
    sub_26B643E0C(v24, (*(v25 + 56) + 32 * v19));
  }

  else
  {
    (*(v8 + 16))(v13, v2, v5);
    sub_26B67E1E4(v19, v13, v24, v25);
    *v23 = 0u;
    v23[1] = 0u;
  }

  *v0 = v25;
  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_26B6D2AB0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_9_12()
{
  v2 = *(v1 - 192);
  v3 = **(v1 - 200);
  return v0;
}

uint64_t OUTLINED_FUNCTION_15_10(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t BaseballClockFormatter.FormattedComponents.pitchCount.getter()
{
  v1 = *(v0 + 16);
  v4 = *(v0 + 8);
  v5 = sub_26B6EA564();
  MEMORY[0x26D67D4D0](45, 0xE100000000000000);
  v2 = sub_26B6EA564();
  MEMORY[0x26D67D4D0](v2);

  return v5;
}

void sub_26B6D2C94()
{
  qword_2810CC8E8 = MEMORY[0x277D84F90];
  unk_2810CC8F0 = 0;
  qword_2810CC8F8 = 0;
  qword_2810CC900 = 0;
}

uint64_t static BaseballClockFormatter.FormattedComponents.defaultComponents.getter()
{
  if (qword_2810CC8E0 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  OUTLINED_FUNCTION_1_17(&qword_2810CC8E8);
}

BOOL static BaseballClockFormatter.FormattedComponents.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = sub_26B636F5C(*a1, *a2);
  v9 = v4 == v7;
  if (v2 != v5 || v3 != v6)
  {
    v9 = 0;
  }

  return (v8 & 1) != 0 && v9;
}

void static BaseballClockFormatter.formattedComponents(subscription:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_mostRecentPlay;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (!*(v5 + 16))
  {
LABEL_6:
    if (qword_2810CC8E0 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_7;
  }

  v6 = sub_26B675414(1);
  if ((v7 & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  v9 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = *(*(*(v10 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock) + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current) + OBJC_IVAR____TtC9SportsKit18SportingEventClock_period);
  switch(*(v10 + OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus))
  {
    case 1:
      v12 = v11;

      goto LABEL_9;
    default:
      v13 = sub_26B6EA5D4();
      v14 = v11;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_9:
      v15 = OBJC_IVAR____TtC9SportsKit17SportingEventPlay__clock;
      v16 = *&v8[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__clock];
      if (!v16)
      {
        goto LABEL_21;
      }

      v17 = *(v16 + OBJC_IVAR____TtC9SportsKit18SportingEventClock_period);
      if (!sub_26B6D32F4(v17))
      {

LABEL_21:
        if (qword_2810CC8E0 != -1)
        {
          OUTLINED_FUNCTION_0_17();
        }

        v24 = qword_2810CC8E8;
        v45 = unk_2810CC8F0;
        v25 = qword_2810CC900;

        *a2 = v24;
        *(a2 + 8) = v45;
        *(a2 + 24) = v25;
        return;
      }

      v44 = v15;
      v18 = *&v8[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__competitors];
      v19 = sub_26B6542CC(v18);
      v20 = v18 & 0xC000000000000001;

      v21 = 0;
      break;
  }

  while (1)
  {
    if (v19 == v21)
    {

      v43 = 0;
      v26 = 0;
      goto LABEL_25;
    }

    sub_26B693DF0(v21, v20 == 0, v18);
    v22 = v20 ? MEMORY[0x26D67DB30](v21, v18) : *(v18 + 8 * v21 + 32);
    v23 = v22;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    SportingEventCompetitorContainer.baseballScores.getter(v47);
    if (v48 != 1)
    {
      SportingEventCompetitorContainer.baseballScores.getter(v47);
      if (v50 != 1)
      {

        SportingEventCompetitorContainer.baseballScores.getter(v47);

        v40 = v47[4];
        if (v52)
        {
          v26 = 0;
        }

        else
        {
          v26 = v51;
        }

        if (v48)
        {
          v40 = 0;
        }

        v43 = v40;
        if (v50 != 1)
        {
          v42 = v49;
          goto LABEL_26;
        }

LABEL_25:
        v42 = 0;
LABEL_26:
        SportingEventPlay.baseballPlay.getter(v47);
        v27 = v47[0];

        sub_26B6D3450(v47);
        v28 = 0;
        v29 = *(v27 + 16);
        v30 = MEMORY[0x277D84F90];
LABEL_27:
        v31 = 32 * v28 + 56;
        while (v29 != v28)
        {
          if (v28 >= *(v27 + 16))
          {
            __break(1u);
            goto LABEL_54;
          }

          v32 = *(v27 + v31);
          v31 += 32;
          ++v28;
          if (v32 > 0)
          {
            v46 = v17;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = *(v30 + 16);
              sub_26B63A8C8();
              v30 = v35;
            }

            v33 = *(v30 + 16);
            if (v33 >= *(v30 + 24) >> 1)
            {
              sub_26B63A8C8();
              v30 = v36;
            }

            *(v30 + 16) = v33 + 1;
            *(v30 + 8 * v33 + 32) = v32;
            v17 = v46;
            goto LABEL_27;
          }
        }

        if (v26 == 3)
        {

LABEL_38:

          *a2 = MEMORY[0x277D84F90];
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *(a2 + 24) = v26;
          return;
        }

        v37 = *&v8[v44];
        if (v37 && (v38 = *(v37 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__activityStatus)) != 0 && (v39 = *(v38 + OBJC_IVAR____TtC9SportsKit32SportingEventClockActivityStatus_breakType), v39 != 7))
        {
          v41 = sub_26B6470B8(v39, 6);

          if (v41)
          {
            goto LABEL_38;
          }
        }

        else
        {
        }

        *a2 = v30;
        *(a2 + 8) = v43;
        *(a2 + 16) = v42;
        *(a2 + 24) = v26;
        return;
      }
    }

    ++v21;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  OUTLINED_FUNCTION_0_17();
LABEL_7:
  OUTLINED_FUNCTION_1_17(&qword_2810CC8E8);
}

BOOL sub_26B6D32F4(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type) == 10 || (sub_26B6475E8() & 1) == 0 || *(v1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type) == 10 || (sub_26B6475E8() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index);
  }

  if (*(a1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index + 8))
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else if (*(a1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index) < v3)
  {
    return 0;
  }

  v5 = *(v1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subdivision);
  v6 = 0;
  switch(*(a1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subdivision))
  {
    case 1:
      goto LABEL_18;
    case 2:
      v6 = 3;
      goto LABEL_18;
    case 3:
      v6 = 2;
      goto LABEL_18;
    case 4:
      v6 = 1;
      goto LABEL_18;
    case 6:
      return (v5 - 5) < 0xFCu;
    default:
      v6 = 0x8000000000000000;
LABEL_18:
      v7 = v5 - 1;
      if (v7 > 3u)
      {
        v8 = 0x8000000000000000;
      }

      else
      {
        v8 = qword_26B6F9218[v7];
      }

      result = v6 >= v8;
      break;
  }

  return result;
}

uint64_t sub_26B6D34E0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26B6D3520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_1_17@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 24);
  *v1 = *a1;
  result = *(a1 + 8);
  *(v1 + 8) = result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_26B6D35AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3C0, &unk_26B6F9280);
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v9 - v6;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409208, &qword_26B6EC768);
  (*(v3 + 104))(v7, *MEMORY[0x277D85778], v0);
  sub_26B6E9D84();
}

uint64_t sub_26B6D36E8(char *a1)
{
  v2 = v1;
  v45 = *v2;
  v4 = sub_26B6E93B4();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v17 = OBJC_IVAR____TtC9SportsKit24ScoreboardsUpdateMonitor_continuations;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3C8, &unk_26B6F9290);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = MEMORY[0x277D84F90];
  v44 = v17;
  *&v17[v2] = v18;
  v49 = a1;
  sub_26B6E9344();
  sub_26B6E9354();
  v47 = v7;
  v19 = *(v7 + 8);
  v19(v14, v4);
  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  sub_26B6E9384();
  v22 = sub_26B6E99F4();

  LOBYTE(a1) = [v21 fileExistsAtPath_];

  if (a1)
  {
    v23 = v48;
  }

  else
  {
    v24 = sub_26B6E90D4();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = sub_26B6E90C4();
    type metadata accessor for ScoreboardSubscription();
    v28 = swift_allocObject();
    *(v28 + 16) = MEMORY[0x277D84F90];
    v50 = v28;
    sub_26B6D448C(&qword_2810CE268);
    v29 = v48;
    v30 = sub_26B6E90B4();
    v23 = v29;
    if (v29)
    {

      v19(v49, v4);

      v19(v16, v4);
      v32 = *&v44[v2];

      v33 = *(*v2 + 48);
      v34 = *(*v2 + 52);
      swift_deallocPartialClassInstance();
      return v27;
    }

    v48 = v30;
    v45 = v31;

    v35 = [v20 defaultManager];
    sub_26B6E9384();
    v36 = sub_26B6E99F4();
    v44 = v36;

    v37 = v36;
    v38 = v48;
    v39 = v45;
    sub_26B6D44D0(v37, v48, v45, 0, v35);

    sub_26B645A94(v38, v39);
  }

  v40 = v46;
  (*(v47 + 16))(v46, v16, v4);
  v41 = v40;
  v27 = v2;
  v42 = sub_26B679110(v41);
  if (v23)
  {
    v19(v49, v4);
    v19(v16, v4);
  }

  else
  {
    v27 = v42;
    v19(v49, v4);
    v19(v16, v4);
    *(v27 + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_delegate + 8) = &off_287C2F940;
    swift_unknownObjectWeakAssign();
  }

  return v27;
}

uint64_t sub_26B6D3B7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit24ScoreboardsUpdateMonitor_continuations);

  os_unfair_lock_lock((v1 + 24));
  sub_26B6D3BF8((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  v2 = sub_26B679ADC();
  v3 = *(v2 + OBJC_IVAR____TtC9SportsKit24ScoreboardsUpdateMonitor_continuations);

  return v2;
}

uint64_t sub_26B6D3BF8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409080, &unk_26B6EC1A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *a1;
  v9 = *(*a1 + 16);
  if (v9)
  {
    v18 = a1;
    v19 = v1;
    v12 = *(v4 + 16);
    v10 = v4 + 16;
    v11 = v12;
    v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v7, v13, v3);
      sub_26B6E9D64();
      (*(v10 - 8))(v7, v3);
      v13 += v14;
      --v9;
    }

    while (v9);

    a1 = v18;
  }

  else
  {
    v16 = *a1;
  }

  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_26B6D3D64()
{
  v0 = sub_26B6D3B7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ScoreboardsUpdateMonitor()
{
  result = qword_2810CC728;
  if (!qword_2810CC728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B6D3E54()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9SportsKit24ScoreboardsUpdateMonitor_continuations);

    MEMORY[0x28223BE20](v2);
    os_unfair_lock_lock((v1 + 24));
    sub_26B6D4470((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
  }

  return result;
}

uint64_t sub_26B6D3F20(uint64_t *a1, uint64_t a2)
{
  sub_26B6CB258();
  v4 = *(*a1 + 16);
  sub_26B6CB2F8(v4);
  v5 = *a1;
  *(*a1 + 16) = v4 + 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409080, &unk_26B6EC1A0);
  result = (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a2, v6);
  *a1 = v5;
  return result;
}

uint64_t sub_26B6D3FDC()
{
  v1 = sub_26B6E9054();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_26B6E9044();
  type metadata accessor for ScoreboardSubscription();
  sub_26B6D448C(&qword_2810CE260);
  sub_26B6E9024();

  v4 = *(v0 + OBJC_IVAR____TtC9SportsKit24ScoreboardsUpdateMonitor_continuations);

  os_unfair_lock_lock(v4 + 6);
  sub_26B6D444C(&v4[4]);
  os_unfair_lock_unlock(v4 + 6);
}

uint64_t sub_26B6D422C(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3B8, &unk_26B6F9270);
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v22);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409080, &unk_26B6EC1A0);
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v20 - v11;
  v13 = *(*a1 + 16);
  if (v13)
  {
    v14 = v10;
    v15 = *a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    swift_beginAccess();
    v16 = *(v14 + 16);
    v14 += 16;
    v21 = v16;
    v17 = *(v14 + 56);
    v18 = (v3 + 8);
    v19 = (v14 - 8);
    do
    {
      v21(v12, v15, v7);
      v24 = *(v23 + 16);

      sub_26B6E9D54();
      (*v18)(v6, v22);
      result = (*v19)(v12, v7);
      v15 += v17;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_26B6D448C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScoreboardSubscription();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_26B6D44D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_26B6E9464();
  v9 = [a5 createFileAtPath:a1 contents:v8 attributes:a4];

  return v9;
}

uint64_t sub_26B6D4540(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000026B6FDAB0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B6D45DC()
{
  sub_26B6E9564();
  result = sub_26B6E9944();
  qword_280421AC0 = result;
  return result;
}

uint64_t sub_26B6D4624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6D4540(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B6D4650(uint64_t a1)
{
  v2 = sub_26B6D4830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6D468C(uint64_t a1)
{
  v2 = sub_26B6D4830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsScheduledActivities.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3D0, &unk_26B6F92A0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6D4830();

  sub_26B6EA7C4();
  v14[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F70, &qword_26B6F1910);
  sub_26B67E468();
  sub_26B6EA534();

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_26B6D4830()
{
  result = qword_28040B3D8;
  if (!qword_28040B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B3D8);
  }

  return result;
}

uint64_t SportsScheduledActivities.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3E0, &qword_26B6F92B0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6D4830();
  sub_26B6EA784();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F70, &qword_26B6F1910);
    sub_26B67E5E0();
    sub_26B6EA464();
    (*(v8 + 8))(v12, v5);
    *a2 = v15[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for SportsScheduledActivities.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_26B6D4AE8()
{
  result = qword_28040B3E8;
  if (!qword_28040B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B3E8);
  }

  return result;
}

unint64_t sub_26B6D4B40()
{
  result = qword_28040B3F0;
  if (!qword_28040B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B3F0);
  }

  return result;
}

unint64_t sub_26B6D4B98()
{
  result = qword_28040B3F8;
  if (!qword_28040B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B3F8);
  }

  return result;
}

void static RunningClockComponentsFormatter.DataSource.== infix(_:_:)()
{
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_41_2();
  v5 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(v4);
  v6 = OUTLINED_FUNCTION_16(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
  OUTLINED_FUNCTION_46(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B418, &qword_26B6F94B8);
  OUTLINED_FUNCTION_16(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_16_0();
  v20 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v20 && (sub_26B6EA5D4() & 1) == 0 || *(v1 + 16) != *(v0 + 16) || *(v1 + 17) != *(v0 + 17) || *(v1 + 18) != *(v0 + 18))
  {
    goto LABEL_9;
  }

  v21 = *(v0 + 32);
  if (*(v1 + 32))
  {
    if (!*(v0 + 32))
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (*(v1 + 24) != *(v0 + 24))
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_9;
    }
  }

  v22 = *(v0 + 33);
  if (*(v1 + 33) == 10)
  {
    if (v22 != 10)
    {
      goto LABEL_9;
    }
  }

  else if (v22 == 10 || (sub_26B6475E8() & 1) == 0)
  {
    goto LABEL_9;
  }

  v23 = *(v0 + 34);
  if (*(v1 + 34) == 6)
  {
    if (v23 != 6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v42 = *(v1 + 34);
    if (v23 == 6)
    {
      goto LABEL_9;
    }

    v41 = v23;
    if ((static SportingEventClockPeriodSubdivision.== infix(_:_:)(&v42, &v41) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v24 = *(v0 + 35);
  v25 = *(v1 + 35);
  if ((sub_26B646CAC() & 1) == 0)
  {
    goto LABEL_9;
  }

  v40 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  v26 = v40[12];
  v27 = *(v16 + 48);
  sub_26B650B70(v1 + v26, v2, &qword_28040B410, &qword_26B6F94B0);
  sub_26B650B70(v0 + v26, v2 + v27, &qword_28040B410, &qword_26B6F94B0);
  OUTLINED_FUNCTION_127(v2, 1, v5);
  if (!v20)
  {
    sub_26B650B70(v2, v3, &qword_28040B410, &qword_26B6F94B0);
    OUTLINED_FUNCTION_127(v2 + v27, 1, v5);
    if (!v28)
    {
      sub_26B6DB7A8();
      static RunningClockComponentsFormatter.LiveClockComponents.== infix(_:_:)();
      v31 = v30;
      sub_26B6DB340(v11, type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents);
      sub_26B6DB340(v3, type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents);
      sub_26B650BBC(v2, &qword_28040B410, &qword_26B6F94B0);
      if ((v31 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_37;
    }

    OUTLINED_FUNCTION_18_10();
    sub_26B6DB340(v3, v29);
LABEL_35:
    sub_26B650BBC(v2, &qword_28040B418, &qword_26B6F94B8);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_127(v2 + v27, 1, v5);
  if (!v20)
  {
    goto LABEL_35;
  }

  sub_26B650BBC(v2, &qword_28040B410, &qword_26B6F94B0);
LABEL_37:
  if (*(v1 + v40[13]) != *(v0 + v40[13]))
  {
    goto LABEL_9;
  }

  v32 = v40[14];
  v33 = (v1 + v32);
  v34 = *(v1 + v32 + 8);
  v35 = (v0 + v32);
  v36 = *(v0 + v32 + 8);
  if (v34)
  {
    if (!v36)
    {
      goto LABEL_9;
    }

LABEL_44:
    v37 = v40[15];
    v38 = *(v1 + v37);
    v39 = *(v0 + v37);
    sub_26B6371EC();
    goto LABEL_9;
  }

  if (*v33 != *v35)
  {
    LOBYTE(v36) = 1;
  }

  if ((v36 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_9:
  OUTLINED_FUNCTION_8_0();
}

id RunningClockComponentsFormatter.__allocating_init(localizationProvider:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_43_3();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v9 = OUTLINED_FUNCTION_44_4(v8);
  v10(v9);
  v11 = OUTLINED_FUNCTION_62_3();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t RunningClockComponentsFormatter.formattedComponents(subscription:)()
{
  v0 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  v1 = OUTLINED_FUNCTION_46(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_0();
  v6 = v5 - v4;
  SportingEventSubscription.createRunningClockDataSource(preferStaticClock:)();
  RunningClockComponentsFormatter.formattedComponents(dataSource:)();
  OUTLINED_FUNCTION_6_13();
  return sub_26B6DB340(v6, v7);
}

void static RunningClockComponentsFormatter.LiveClockComponents.== infix(_:_:)()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v5 = v4;
  v6 = sub_26B6E9564();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26_6();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804095E8, &qword_26B6F94D0);
  OUTLINED_FUNCTION_16(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_0_18();
  sub_26B6DB3EC(v23, v24);
  OUTLINED_FUNCTION_42_2();
  if ((sub_26B6E99D4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B420, &unk_26B6F94C0) + 36);
  OUTLINED_FUNCTION_42_2();
  if ((sub_26B6E99D4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v33 = v9;
  v32 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
  v26 = *(v32 + 20);
  v27 = *(v19 + 48);
  sub_26B650B70(v5 + v26, v0, &qword_280409370, &qword_26B6ED070);
  sub_26B650B70(v3 + v26, v0 + v27, &qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_127(v0, 1, v6);
  if (v28)
  {
    OUTLINED_FUNCTION_127(v0 + v27, 1, v6);
    if (v28)
    {
      sub_26B650BBC(v0, &qword_280409370, &qword_26B6ED070);
LABEL_14:
      v31 = *(v5 + *(v32 + 24)) ^ *(v3 + *(v32 + 24)) ^ 1u;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_26B650B70(v0, v1, &qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_127(v0 + v27, 1, v6);
  if (v28)
  {
    (*(v33 + 8))(v1, v6);
LABEL_11:
    sub_26B650BBC(v0, &qword_2804095E8, &qword_26B6F94D0);
    goto LABEL_12;
  }

  (*(v33 + 32))(v14, v0 + v27, v6);
  OUTLINED_FUNCTION_42_2();
  v29 = sub_26B6E99D4();
  v30 = *(v33 + 8);
  v30(v14, v6);
  v30(v1, v6);
  sub_26B650BBC(v0, &qword_280409370, &qword_26B6ED070);
  if (v29)
  {
    goto LABEL_14;
  }

LABEL_12:
  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_26B6D55EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74416573756170 && a2 == 0xE700000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x776F64746E756F63 && a2 == 0xE90000000000006ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_26B6EA5D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26B6D5708(char a1)
{
  if (!a1)
  {
    return 0x65746E4965746164;
  }

  if (a1 == 1)
  {
    return 0x74416573756170;
  }

  return 0x776F64746E756F63;
}

uint64_t sub_26B6D5774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6D55EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6D579C(uint64_t a1)
{
  v2 = sub_26B6DB398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6D57D8(uint64_t a1)
{
  v2 = sub_26B6DB398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RunningClockComponentsFormatter.LiveClockComponents.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B428, &qword_26B6F94D8);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_16_0();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6DB398();
  OUTLINED_FUNCTION_49_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B420, &unk_26B6F94C0);
  sub_26B6DB434(&qword_28040B438, &qword_2810CD7B0);
  OUTLINED_FUNCTION_59_0();
  sub_26B6EA534();
  if (!v2)
  {
    v13 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
    v14 = *(v13 + 20);
    sub_26B6E9564();
    OUTLINED_FUNCTION_0_18();
    sub_26B6DB3EC(v15, v16);
    OUTLINED_FUNCTION_59_0();
    sub_26B6EA4E4();
    v17 = *(v4 + *(v13 + 24));
    sub_26B6EA504();
  }

  return (*(v8 + 8))(v3, v6);
}

void RunningClockComponentsFormatter.LiveClockComponents.hash(into:)()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v0;
  v3 = sub_26B6E9564();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_0_18();
  sub_26B6DB3EC(v16, v17);
  sub_26B6E9984();
  v18 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B420, &unk_26B6F94C0) + 36);
  sub_26B6E9984();
  v19 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
  sub_26B650B70(v2 + *(v19 + 20), v1, &qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_127(v1, 1, v3);
  if (v20)
  {
    OUTLINED_FUNCTION_142();
  }

  else
  {
    (*(v6 + 32))(v11, v1, v3);
    OUTLINED_FUNCTION_140();
    sub_26B6E9984();
    (*(v6 + 8))(v11, v3);
  }

  v21 = *(v2 + *(v19 + 24));
  sub_26B6EA734();
  OUTLINED_FUNCTION_8_0();
}

void RunningClockComponentsFormatter.LiveClockComponents.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v33[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B420, &unk_26B6F94C0);
  OUTLINED_FUNCTION_16(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v34 = v33 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B440, &qword_26B6F94E0);
  v16 = OUTLINED_FUNCTION_4(v15);
  v33[2] = v17;
  v33[3] = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v21 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
  v22 = OUTLINED_FUNCTION_16(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_6();
  v26 = v4[3];
  v25 = v4[4];
  v35 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v26);
  sub_26B6DB398();
  sub_26B6EA784();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_26B6DB434(&qword_28040B448, &qword_2810CEA00);
    sub_26B6EA464();
    sub_26B650F44(v34, v2, &qword_28040B420, &unk_26B6F94C0);
    sub_26B6E9564();
    OUTLINED_FUNCTION_0_18();
    sub_26B6DB3EC(v27, v28);
    sub_26B6EA414();
    sub_26B650F44(v1, v2 + *(v21 + 20), &qword_280409370, &qword_26B6ED070);
    v29 = sub_26B6EA434();
    v30 = OUTLINED_FUNCTION_35_6();
    v31(v30);
    *(v2 + *(v21 + 24)) = v29 & 1;
    sub_26B6DB5B0();
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_18_10();
    sub_26B6DB340(v2, v32);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t RunningClockComponentsFormatter.FormattedComponents.prefix.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_22_0();
}

uint64_t RunningClockComponentsFormatter.FormattedComponents.suffix.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_22_0();
}

uint64_t RunningClockComponentsFormatter.FormattedComponents.clock.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_22_0();
}

uint64_t RunningClockComponentsFormatter.FormattedComponents.headerTitle.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_22_0();
}

uint64_t RunningClockComponentsFormatter.FormattedComponents.init(prefix:suffix:clock:liveClock:headerTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v13 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
  result = sub_26B650F44(a7, a9 + *(v13 + 32), &qword_28040B410, &qword_26B6F94B0);
  a9[6] = a8;
  a9[7] = a10;
  return result;
}

double sub_26B6D61A8()
{
  v0 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
  __swift_allocate_value_buffer(v0, qword_280421AC8);
  v1 = __swift_project_value_buffer(v0, qword_280421AC8);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  return result;
}

uint64_t RunningClockComponentsFormatter.DataSource.sport.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_22_0();
}

uint64_t RunningClockComponentsFormatter.DataSource.periodIndex.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t RunningClockComponentsFormatter.DataSource.additionalMinutes.getter()
{
  v1 = (v0 + *(type metadata accessor for RunningClockComponentsFormatter.DataSource(0) + 56));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t RunningClockComponentsFormatter.DataSource.competitors.getter()
{
  v1 = *(v0 + *(type metadata accessor for RunningClockComponentsFormatter.DataSource(0) + 60));
}

uint64_t sub_26B6D6358(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F7073 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E69467369 && a2 == 0xE700000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974666C61487369 && a2 == 0xEA0000000000656DLL;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x646F697265507369 && a2 == 0xEB00000000646E45;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E49646F69726570 && a2 == 0xEB00000000786564;
          if (v9 || (sub_26B6EA5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7954646F69726570 && a2 == 0xEA00000000006570;
            if (v10 || (sub_26B6EA5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x800000026B6FDB90 == a2;
              if (v11 || (sub_26B6EA5D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x73736572676F7270 && a2 == 0xEE00737574617453;
                if (v12 || (sub_26B6EA5D4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x800000026B6FDBB0 == a2;
                  if (v13 || (sub_26B6EA5D4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x800000026B6FDBD0 == a2;
                    if (v14 || (sub_26B6EA5D4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x800000026B6FDBF0 == a2;
                      if (v15 || (sub_26B6EA5D4() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x74697465706D6F63 && a2 == 0xEB0000000073726FLL)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_26B6EA5D4();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26B6D6728(char a1)
{
  result = 0x74726F7073;
  switch(a1)
  {
    case 1:
      result = 0x6C616E69467369;
      break;
    case 2:
      result = 0x6974666C61487369;
      break;
    case 3:
      result = 0x646F697265507369;
      break;
    case 4:
      result = 0x6E49646F69726570;
      break;
    case 5:
      result = 0x7954646F69726570;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x73736572676F7270;
      break;
    case 8:
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x74697465706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B6D689C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6D6358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6D68C4(uint64_t a1)
{
  v2 = sub_26B6DB4D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6D6900(uint64_t a1)
{
  v2 = sub_26B6DB4D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RunningClockComponentsFormatter.DataSource.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B450, &qword_26B6F94E8);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_0();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6DB4D0();
  OUTLINED_FUNCTION_49_0();
  v13 = *v4;
  v14 = v4[1];
  OUTLINED_FUNCTION_39_1();
  sub_26B6EA4F4();
  if (!v2)
  {
    v15 = *(v4 + 16);
    OUTLINED_FUNCTION_8_10(1);
    sub_26B6EA504();
    v16 = *(v4 + 17);
    OUTLINED_FUNCTION_8_10(2);
    sub_26B6EA504();
    v17 = *(v4 + 18);
    OUTLINED_FUNCTION_8_10(3);
    sub_26B6EA504();
    v18 = v4[3];
    v19 = *(v4 + 32);
    OUTLINED_FUNCTION_39_1();
    sub_26B6EA4D4();
    v29 = *(v4 + 33);
    sub_26B6B19CC();
    OUTLINED_FUNCTION_9_13();
    sub_26B6EA4E4();
    v30 = *(v4 + 34);
    sub_26B6B1B28();
    OUTLINED_FUNCTION_9_13();
    sub_26B6EA4E4();
    v31 = *(v4 + 35);
    sub_26B6AE1A0();
    OUTLINED_FUNCTION_9_13();
    sub_26B6EA534();
    v20 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
    v21 = v20[12];
    type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
    OUTLINED_FUNCTION_20_10();
    sub_26B6DB3EC(v22, v23);
    OUTLINED_FUNCTION_59_0();
    OUTLINED_FUNCTION_39_1();
    sub_26B6EA4E4();
    v24 = *(v4 + v20[13]);
    OUTLINED_FUNCTION_8_10(9);
    sub_26B6EA524();
    v25 = (v4 + v20[14]);
    v26 = *v25;
    v27 = *(v25 + 8);
    OUTLINED_FUNCTION_39_1();
    sub_26B6EA4D4();
    v32 = *(v4 + v20[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6A8, &qword_26B6F94F0);
    sub_26B6DB524(&qword_2810CC2B0, &qword_2810CDE00);
    OUTLINED_FUNCTION_59_0();
    OUTLINED_FUNCTION_39_1();
    sub_26B6EA534();
  }

  return (*(v8 + 8))(v3, v6);
}

void RunningClockComponentsFormatter.DataSource.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_26B6E9AE4();
  v6 = *(v1 + 16);
  sub_26B6EA734();
  v7 = *(v1 + 17);
  sub_26B6EA734();
  v8 = *(v1 + 18);
  sub_26B6EA734();
  if (*(v1 + 32) == 1)
  {
    OUTLINED_FUNCTION_142();
  }

  else
  {
    v9 = v1[3];
    OUTLINED_FUNCTION_140();
    MEMORY[0x26D67E0E0](v9);
  }

  if (*(v1 + 33) == 10)
  {
    OUTLINED_FUNCTION_142();
  }

  else
  {
    OUTLINED_FUNCTION_140();
    sub_26B638654();
  }

  if (*(v1 + 34) == 6)
  {
    OUTLINED_FUNCTION_142();
  }

  else
  {
    OUTLINED_FUNCTION_140();
    sub_26B6381C0();
  }

  v10 = *(v1 + 35);
  sub_26B63852C();
  v11 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  v12 = v1 + v11[12];
  sub_26B6DAEBC();
  MEMORY[0x26D67E0E0](*(v2 + v11[13]));
  v13 = (v2 + v11[14]);
  if (*(v13 + 8) == 1)
  {
    OUTLINED_FUNCTION_142();
  }

  else
  {
    v14 = *v13;
    OUTLINED_FUNCTION_140();
    MEMORY[0x26D67E0E0](v14);
  }

  v15 = *(v2 + v11[15]);

  sub_26B63C588(a1, v15);
}

uint64_t sub_26B6D6E00(void (*a1)(_BYTE *))
{
  sub_26B6EA714();
  a1(v3);
  return sub_26B6EA744();
}

void RunningClockComponentsFormatter.DataSource.init(from:)()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
  OUTLINED_FUNCTION_46(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B468, &qword_26B6F94F8);
  OUTLINED_FUNCTION_4(v37);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v36 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  v16 = OUTLINED_FUNCTION_16(v36);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v38 = v20 - v19;
  v21 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_26B6DB4D0();
  sub_26B6EA784();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v35[0] = v4;
    v35[1] = v12;
    LOBYTE(v39) = 0;
    OUTLINED_FUNCTION_17_9();
    v22 = sub_26B6EA424();
    v23 = v38;
    *v38 = v22;
    *(v23 + 8) = v24;
    OUTLINED_FUNCTION_5_13(1);
    *(v23 + 16) = sub_26B6EA434() & 1;
    OUTLINED_FUNCTION_5_13(2);
    *(v23 + 17) = sub_26B6EA434() & 1;
    OUTLINED_FUNCTION_5_13(3);
    *(v23 + 18) = sub_26B6EA434() & 1;
    OUTLINED_FUNCTION_5_13(4);
    *(v23 + 24) = sub_26B6EA404();
    *(v23 + 32) = v25 & 1;
    sub_26B684F4C();
    OUTLINED_FUNCTION_10_13();
    sub_26B6EA414();
    *(v23 + 33) = v39;
    sub_26B684FA0();
    OUTLINED_FUNCTION_10_13();
    sub_26B6EA414();
    *(v23 + 34) = v39;
    sub_26B6ADE7C();
    OUTLINED_FUNCTION_10_13();
    sub_26B6EA464();
    *(v38 + 35) = v39;
    type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
    LOBYTE(v39) = 8;
    OUTLINED_FUNCTION_20_10();
    sub_26B6DB3EC(v26, v27);
    OUTLINED_FUNCTION_17_9();
    sub_26B6EA414();
    sub_26B650F44(v10, v38 + v36[12], &qword_28040B410, &qword_26B6F94B0);
    OUTLINED_FUNCTION_5_13(9);
    *(v38 + v36[13]) = sub_26B6EA454();
    LOBYTE(v39) = 10;
    OUTLINED_FUNCTION_17_9();
    v28 = sub_26B6EA404();
    v29 = v38 + v36[14];
    *v29 = v28;
    *(v29 + 8) = v30 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6A8, &qword_26B6F94F0);
    sub_26B6DB524(&qword_2810CDC38, &qword_2810CDDF8);
    OUTLINED_FUNCTION_17_9();
    sub_26B6EA464();
    v31 = OUTLINED_FUNCTION_40_4();
    v32(v31, v37);
    v33 = v38;
    *(v38 + v36[15]) = v39;
    sub_26B6DB5B0();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_6_13();
    sub_26B6DB340(v33, v34);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B6D73A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_26B6EA714();
  a4(v6);
  return sub_26B6EA744();
}

SportsKit::RunningClockComponentsFormatter::StyleOptions::ShootoutStyle_optional __swiftcall RunningClockComponentsFormatter.StyleOptions.ShootoutStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_26B6D7450@<X0>(uint64_t *a1@<X8>)
{
  result = RunningClockComponentsFormatter.StyleOptions.ShootoutStyle.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26B6D756C@<X0>(uint64_t *a1@<X8>)
{
  result = RunningClockComponentsFormatter.StyleOptions.FinalDisplayStyle.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static RunningClockComponentsFormatter.StyleOptions.default.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_280408D78 != -1)
  {
    result = OUTLINED_FUNCTION_34_4();
  }

  v2 = HIBYTE(word_28040B400);
  *a1 = word_28040B400;
  a1[1] = v2;
  return result;
}

__int16 *sub_26B6D76BC()
{
  if (qword_280408D80 != -1)
  {
    OUTLINED_FUNCTION_31_5();
  }

  return &word_28040B402;
}

uint64_t static RunningClockComponentsFormatter.StyleOptions.defaultShootoutStyle.modify()
{
  if (qword_280408D80 != -1)
  {
    OUTLINED_FUNCTION_31_5();
  }

  OUTLINED_FUNCTION_21_5();
  return OUTLINED_FUNCTION_58_3();
}

__int16 *sub_26B6D77B4()
{
  if (qword_280408D88 != -1)
  {
    OUTLINED_FUNCTION_30_7();
  }

  return &word_28040B404;
}

uint64_t static RunningClockComponentsFormatter.StyleOptions.abbreviatedShootoutStyle.modify()
{
  if (qword_280408D88 != -1)
  {
    OUTLINED_FUNCTION_30_7();
  }

  OUTLINED_FUNCTION_21_5();
  return OUTLINED_FUNCTION_58_3();
}

__int16 *sub_26B6D78AC()
{
  if (qword_280408D90 != -1)
  {
    OUTLINED_FUNCTION_29_7();
  }

  return &word_28040B406;
}

uint64_t static RunningClockComponentsFormatter.StyleOptions.shortShootoutStyle.modify()
{
  if (qword_280408D90 != -1)
  {
    OUTLINED_FUNCTION_29_7();
  }

  OUTLINED_FUNCTION_21_5();
  return OUTLINED_FUNCTION_58_3();
}

__int16 *sub_26B6D79A4()
{
  if (qword_280408D98 != -1)
  {
    OUTLINED_FUNCTION_27_4();
  }

  return &word_28040B408;
}

uint64_t sub_26B6D7A04@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = OUTLINED_FUNCTION_29_2();
  v8 = *a3;
  *a4 = *a2;
  a4[1] = v8;
  return result;
}

uint64_t sub_26B6D7A90(char *a1, void *a2, _BYTE *a3, _BYTE *a4)
{
  v6 = *a1;
  v7 = a1[1];
  if (*a2 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_56_4();
  result = swift_beginAccess();
  *a3 = v6;
  *a4 = v7;
  return result;
}

uint64_t static RunningClockComponentsFormatter.StyleOptions.fullShootoutStyle.modify()
{
  if (qword_280408D98 != -1)
  {
    OUTLINED_FUNCTION_27_4();
  }

  OUTLINED_FUNCTION_21_5();
  return OUTLINED_FUNCTION_58_3();
}

uint64_t sub_26B6D7B64@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X4>, char *a3@<X5>, _BYTE *a4@<X8>)
{
  a1();
  OUTLINED_FUNCTION_56_4();
  result = OUTLINED_FUNCTION_29_2();
  v8 = *a3;
  *a4 = *a2;
  a4[1] = v8;
  return result;
}

uint64_t sub_26B6D7BBC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), _BYTE *a6, _BYTE *a7)
{
  v9 = *a1;
  v10 = a1[1];
  a5();
  OUTLINED_FUNCTION_56_4();
  result = swift_beginAccess();
  *a6 = v9;
  *a7 = v10;
  return result;
}

uint64_t sub_26B6D7CA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F746F6F6873 && a2 == 0xED0000656C797453;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026B6FDC10 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B6D7D80(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x74756F746F6F6873;
  }
}

uint64_t sub_26B6D7DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6D7CA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6D7DF8(uint64_t a1)
{
  v2 = sub_26B6DB604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6D7E34(uint64_t a1)
{
  v2 = sub_26B6DB604();

  return MEMORY[0x2821FE720](a1, v2);
}

void RunningClockComponentsFormatter.StyleOptions.encode(to:)()
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B478, &qword_26B6F9500);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_16_0();
  v11 = *v0;
  v13 = v0[1];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_26B6DB604();
  OUTLINED_FUNCTION_49_0();
  sub_26B6DB658();
  sub_26B6EA534();
  if (!v1)
  {
    sub_26B6DB6AC();
    sub_26B6EA534();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_37();
}

uint64_t RunningClockComponentsFormatter.StyleOptions.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x26D67E0E0](*v0);
  return MEMORY[0x26D67E0E0](v1);
}

uint64_t RunningClockComponentsFormatter.StyleOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](v1);
  MEMORY[0x26D67E0E0](v2);
  return sub_26B6EA744();
}

void RunningClockComponentsFormatter.StyleOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B498, &qword_26B6F9508);
  OUTLINED_FUNCTION_4(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  v39 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_26B6DB604();
  sub_26B6EA784();
  if (!v24)
  {
    a13 = 0;
    sub_26B6DB700();
    OUTLINED_FUNCTION_67_2();
    v40 = a14;
    a11 = 1;
    sub_26B6DB754();
    OUTLINED_FUNCTION_67_2();
    (*(v33 + 8))(v38, v31);
    v41 = a12;
    *v30 = v40;
    v30[1] = v41;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B6D8214()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](v1);
  MEMORY[0x26D67E0E0](v2);
  return sub_26B6EA744();
}

uint64_t RunningClockComponentsFormatter.styleOptions.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_styleOptions);
  OUTLINED_FUNCTION_56_4();
  result = OUTLINED_FUNCTION_29_2();
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

uint64_t RunningClockComponentsFormatter.styleOptions.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_styleOptions);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

id RunningClockComponentsFormatter.init(localizationProvider:)(uint64_t *a1)
{
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_43_3();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v7 = OUTLINED_FUNCTION_44_4(v6);
  v8(v7);
  v9 = OUTLINED_FUNCTION_62_3();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

id sub_26B6D8460()
{
  [v0 setUnitsStyle_];
  [v0 setAllowedUnits_];

  return [v0 setZeroFormattingBehavior_];
}

id sub_26B6D84BC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_styleOptions];
  if (qword_280408D78 != -1)
  {
    OUTLINED_FUNCTION_34_4();
  }

  v5 = HIBYTE(word_28040B400);
  *v4 = word_28040B400;
  v4[1] = v5;
  v6 = &v1[OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_localizationProvider];
  *(v6 + 3) = &type metadata for RunningClockDefaultLocalization;
  *(v6 + 4) = &protocol witness table for RunningClockDefaultLocalization;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_26B6D8460();
  }

  return v8;
}

double RunningClockComponentsFormatter.formattedComponents(dataSource:)()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B4B8, &qword_26B6F9510);
  OUTLINED_FUNCTION_46(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v10 = *v3;
  v11 = *(v3 + 8);

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  Sport.init(rawValue:)(v12);
  v13 = v48[0];
  if (*(v3 + 16) != 1 || *(v3 + 33) != 10 && (sub_26B6475E8() & 1) != 0)
  {
    switch(*(v3 + 35))
    {
      case 1:
        OUTLINED_FUNCTION_94();
        goto LABEL_19;
      case 2:
        OUTLINED_FUNCTION_25_6();
        goto LABEL_19;
      case 3:
        OUTLINED_FUNCTION_24_6();
        goto LABEL_19;
      case 4:

        goto LABEL_20;
      case 5:
        OUTLINED_FUNCTION_85();
        goto LABEL_19;
      case 6:
        OUTLINED_FUNCTION_84();
        goto LABEL_19;
      case 8:
        OUTLINED_FUNCTION_82();
        goto LABEL_19;
      case 9:
        OUTLINED_FUNCTION_12_0();
        goto LABEL_19;
      default:
LABEL_19:
        v16 = OUTLINED_FUNCTION_45_3();

        if (v16)
        {
LABEL_20:
          v15 = 12;
          goto LABEL_59;
        }

        switch(*(v3 + 35))
        {
          case 1:
            OUTLINED_FUNCTION_94();
            goto LABEL_30;
          case 2:
            OUTLINED_FUNCTION_25_6();
            goto LABEL_30;
          case 3:
            OUTLINED_FUNCTION_24_6();
            goto LABEL_30;
          case 5:
            OUTLINED_FUNCTION_85();
            goto LABEL_30;
          case 6:
            OUTLINED_FUNCTION_84();
            goto LABEL_30;
          case 7:

            goto LABEL_31;
          case 8:
            OUTLINED_FUNCTION_82();
            goto LABEL_30;
          case 9:
            OUTLINED_FUNCTION_12_0();
            goto LABEL_30;
          default:
LABEL_30:
            v17 = sub_26B6EA5D4();

            if (v17)
            {
LABEL_31:
              v15 = 13;
              goto LABEL_59;
            }

            switch(*(v3 + 35))
            {
              case 1:
                OUTLINED_FUNCTION_94();
                goto LABEL_41;
              case 2:
                OUTLINED_FUNCTION_25_6();
                goto LABEL_41;
              case 3:
                OUTLINED_FUNCTION_24_6();
                goto LABEL_41;
              case 4:
                OUTLINED_FUNCTION_36_7();
                goto LABEL_41;
              case 5:
                OUTLINED_FUNCTION_85();
                OUTLINED_FUNCTION_36_7();
                goto LABEL_41;
              case 6:

                goto LABEL_42;
              case 8:
                OUTLINED_FUNCTION_82();
                goto LABEL_41;
              case 9:
                OUTLINED_FUNCTION_12_0();
                goto LABEL_41;
              default:
LABEL_41:
                v18 = OUTLINED_FUNCTION_45_3();

                if (v18)
                {
LABEL_42:
                  v15 = 10;
                  goto LABEL_59;
                }

                switch(*(v3 + 35))
                {
                  case 1:
                    OUTLINED_FUNCTION_94();
                    goto LABEL_51;
                  case 2:
                    OUTLINED_FUNCTION_25_6();
                    goto LABEL_51;
                  case 3:
                    OUTLINED_FUNCTION_24_6();
                    goto LABEL_51;
                  case 4:
                    OUTLINED_FUNCTION_36_7();
                    goto LABEL_51;
                  case 5:
                    OUTLINED_FUNCTION_85();
                    OUTLINED_FUNCTION_36_7();
                    goto LABEL_51;
                  case 6:
                    OUTLINED_FUNCTION_36_7();
                    OUTLINED_FUNCTION_84();
                    goto LABEL_51;
                  case 8:

                    goto LABEL_52;
                  case 9:
                    OUTLINED_FUNCTION_12_0();
                    goto LABEL_51;
                  default:
LABEL_51:
                    v19 = sub_26B6EA5D4();

                    if (v19)
                    {
LABEL_52:
                      v15 = 11;
                      goto LABEL_59;
                    }

                    switch(*(v3 + 35))
                    {
                      case 4:
                      case 6:
                        OUTLINED_FUNCTION_36_7();
                        goto LABEL_57;
                      case 5:

                        goto LABEL_58;
                      default:
LABEL_57:
                        v20 = OUTLINED_FUNCTION_45_3();

                        if (v20)
                        {
LABEL_58:
                          v15 = 14;
                          goto LABEL_59;
                        }

                        if (v48[0] == 5)
                        {
                          sub_26B6D9038(v3, v1);
                          v25 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
                          OUTLINED_FUNCTION_127(v1, 1, v25);
                          if (!v26)
                          {
                            sub_26B6DB7A8();
                            goto LABEL_62;
                          }

                          sub_26B650BBC(v1, &qword_28040B4B8, &qword_26B6F9510);
                        }

                        else if (!v48[0])
                        {
                          OUTLINED_FUNCTION_8_0();

                          return sub_26B6D8ED4(v22, v23);
                        }

                        if (*(v3 + 17) == 1)
                        {
                          v15 = 1;
                          goto LABEL_59;
                        }

                        v48[0] = *(v3 + 33);
                        v27 = *(v3 + 24);
                        v28 = *(v3 + 32);
                        v47 = v13;
                        v29 = sub_26B6D93E0(v48, v27, v28, &v47);
                        v31 = v30;
                        if (*(v3 + 18) != 1)
                        {
                          v32 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
                          v33 = v3 + v32[14];
                          v34 = *v33;
                          v35 = *(v33 + 8);
                          v48[0] = v13;
                          v36 = sub_26B6D9704(v34, v35, v48);
                          v38 = v37;
                          v39 = sub_26B6D98A4(*(v3 + v32[13]));
                          v41 = v40;
                          v42 = v32[12];
                          v43 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
                          sub_26B650B70(v3 + v42, v5 + *(v43 + 32), &qword_28040B410, &qword_26B6F94B0);
                          *v5 = v29;
                          v5[1] = v31;
                          v5[2] = v36;
                          v5[3] = v38;
                          v5[4] = v39;
                          v5[5] = v41;
                          goto LABEL_61;
                        }

                        v3 = 0xE700000000000000;
                        switch(v13)
                        {
                          case 1:
                            v3 = 0xEA00000000006C6CLL;
                            goto LABEL_85;
                          case 3:
                          case 7:
                            v3 = 0xE600000000000000;
                            goto LABEL_85;
                          case 4:
                            v3 = 0xE500000000000000;
                            goto LABEL_85;
                          case 5:

                            if (v27 == 2)
                            {
                              v44 = v28;
                            }

                            else
                            {
                              v44 = 1;
                            }

                            if (v44)
                            {
                              goto LABEL_89;
                            }

                            goto LABEL_88;
                          case 8:
                            goto LABEL_85;
                          default:
                            v3 = 0xE800000000000000;
LABEL_85:
                            v45 = sub_26B6EA5D4();

                            if ((v45 & 1) != 0 && v28 != 1 && v27 == 2)
                            {
LABEL_88:
                              v46 = 2;
                            }

                            else
                            {
LABEL_89:
                              v46 = 4;
                            }

                            OUTLINED_FUNCTION_46_3(v46);
                            OUTLINED_FUNCTION_38_4();
                            *v5 = v29;
                            v5[1] = v31;
                            v5[2] = 0;
                            v5[3] = 0;
                            break;
                        }

                        break;
                    }

                    break;
                }

                break;
            }

            break;
        }

        break;
    }

    goto LABEL_60;
  }

  v3 = v0 + OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_styleOptions;
  OUTLINED_FUNCTION_29_2();
  if ((*(v3 + 1) & 1) == 0)
  {
    v15 = 3;
LABEL_59:
    OUTLINED_FUNCTION_46_3(v15);
    OUTLINED_FUNCTION_38_4();
    *v5 = 0u;
    *(v5 + 1) = 0u;
LABEL_60:
    v5[4] = v0;
    v5[5] = v3;
LABEL_61:
    v5[6] = 0;
    v5[7] = 0;
    goto LABEL_62;
  }

  if (qword_280408D70 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
  __swift_project_value_buffer(v14, qword_280421AC8);
  sub_26B6DB5B0();
LABEL_62:
  OUTLINED_FUNCTION_8_0();
  return result;
}