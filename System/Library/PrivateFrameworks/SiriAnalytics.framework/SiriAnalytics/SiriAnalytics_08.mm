uint64_t sub_1D990A390()
{
  if (*(v0 + 24))
  {
    return 1;
  }

  v1 = v0;
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for DarwinNotificationObserver();
  swift_allocObject();
  v4 = sub_1D99004B4(0xD000000000000029, 0x80000001D993D970, v2, sub_1D990B06C, v3);
  v5 = *(v1 + 24);
  *(v1 + 24) = v4;

  if (*(v1 + 24))
  {
    return 1;
  }

  if (qword_1ECB47AC8 != -1)
  {
    swift_once();
  }

  sub_1D98DCEB4(0xD000000000000035, 0x80000001D993D9A0, 0xD00000000000007CLL, 0x80000001D993D9E0, 0xD000000000000010, 0x80000001D993DA60);
  return 0;
}

uint64_t sub_1D990A4EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D990A700();
  }

  return result;
}

uint64_t sub_1D990A544(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D990A390();
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    swift_beginAccess();

    sub_1D987B990();
    v7 = *(*(v2 + 32) + 16);
    sub_1D987BA20(v7);
    v8 = *(v2 + 32);
    *(v8 + 16) = v7 + 1;
    v9 = v8 + 16 * v7;
    *(v9 + 32) = &unk_1D9935F68;
    *(v9 + 40) = v6;
    *(v2 + 32) = v8;
    swift_endAccess();
  }

  return v5 & 1;
}

uint64_t sub_1D990A618(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D9869144;

  return v6();
}

uint64_t sub_1D990A700()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_1D98D1E08();

  return sub_1D988C380(v3);
}

uint64_t sub_1D990A804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D990A824, 0, 0);
}

uint64_t sub_1D990A824()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_1D990A910;

    return sub_1D990AA50();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_25();

    return v5();
  }
}

uint64_t sub_1D990A910()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D990AA1C, 0, 0);
}

uint64_t sub_1D990AA1C()
{
  **(v0 + 40) = *(v0 + 56) == 0;
  OUTLINED_FUNCTION_25();
  return v1();
}

uint64_t sub_1D990AA50()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v0;
  type metadata accessor for UserHistoryDeletionRequestObserver();
  sub_1D98DE8FC();
  v3 = sub_1D992B814();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D990AAD0, v3, v2);
}

uint64_t sub_1D990AAD0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 32);
  v0[8] = v2;
  v3 = v2[2];
  v0[9] = v3;
  if (v3)
  {
    v0[10] = 0;
    v4 = v2[4];
    v0[11] = v2[5];

    v9 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_0_51(v6);

    return v9();
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v8();
  }
}

uint64_t sub_1D990AC18()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_17();
  *v5 = v4;

  v6 = *(v1 + 56);
  v7 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D990AD50, v7, v6);
}

uint64_t sub_1D990AD50()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[10] + 1;
  if (v1 == v0[9])
  {
    v2 = v0[8];

    OUTLINED_FUNCTION_25();

    return v3();
  }

  else
  {
    v0[10] = v1;
    v5 = v0[8] + 16 * v1;
    v6 = *(v5 + 32);
    v0[11] = *(v5 + 40);

    v9 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_0_51();

    return v9();
  }
}

uint64_t sub_1D990AE80()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_1D990AEB0()
{
  sub_1D990AE80();

  return swift_deallocClassInstance();
}

uint64_t sub_1D990AF08()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D9869144;

  return sub_1D990A804(v3, v4, v5, v6);
}

uint64_t sub_1D990AFB8()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D98C985C;

  return sub_1D990A618(v3, v5);
}

BOOL sub_1D990B078(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

BOOL sub_1D990B128(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1D990B198(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = v4;
  *(v4 + OBJC_IVAR____TtC13SiriAnalytics9DbStorage_handle) = 0;
  type metadata accessor for PersistentStorage();
  v11 = sub_1D98F9900();
  if (v5)
  {
    v12 = sub_1D992AD44();
    OUTLINED_FUNCTION_5(v12);
    (*(v13 + 8))(a1);
    type metadata accessor for DbStorage();
    v14 = *(*v4 + 48);
    v15 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
  }

  else if (v11)
  {
    v16 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_storagePath;
    v17 = sub_1D992AD44();
    OUTLINED_FUNCTION_5(v17);
    (*(v18 + 32))(v4 + v16, a1);
    *(v4 + OBJC_IVAR____TtC13SiriAnalytics9DbStorage_storageProtectionClass) = a2;
    v19 = v4 + OBJC_IVAR____TtC13SiriAnalytics9DbStorage_pageSize;
    *v19 = a3;
    *(v19 + 8) = a4 & 1;
  }

  else
  {
    v20 = sub_1D992AD44();
    OUTLINED_FUNCTION_5(v20);
    (*(v21 + 8))(a1);
    type metadata accessor for DbStorage();
    v22 = *(*v4 + 48);
    v23 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

uint64_t sub_1D990B368()
{
  v1 = v0;
  sub_1D992AD34();
  v2 = (*(v0 + OBJC_IVAR____TtC13SiriAnalytics9DbStorage_storageProtectionClass) << 20) + 1048582;
  v3 = sub_1D992B6B4();

  v4 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_handle;
  swift_beginAccess();
  LODWORD(v4) = sqlite3_open_v2((v3 + 32), (v1 + v4), v2, 0);
  swift_endAccess();

  if (sub_1D9870308(v4, 0xD00000000000005CLL, 0x80000001D993DAE0, 0x7243724F6E65706FLL, 0xEE00292865746165))
  {
    if ((*(v1 + OBJC_IVAR____TtC13SiriAnalytics9DbStorage_pageSize + 8) & 1) == 0)
    {
      v5 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics9DbStorage_pageSize);
      OUTLINED_FUNCTION_6_24();
      sub_1D992BD64();

      OUTLINED_FUNCTION_38();
      v6 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v6);

      v7 = sub_1D990B804();

      if ((v7 & 1) == 0)
      {
        if (qword_1ED8BD6D8 != -1)
        {
          OUTLINED_FUNCTION_1_43();
        }

        OUTLINED_FUNCTION_6_24();
        sub_1D992BD64();

        OUTLINED_FUNCTION_38();
        v8 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v8);

        OUTLINED_FUNCTION_16_12();
        sub_1D98DCEB4(v9, v10, v11, v12, v13, v14);
      }
    }

    v15 = sub_1D990B804();
  }

  else
  {
    if (qword_1ED8BD6D8 != -1)
    {
      OUTLINED_FUNCTION_1_43();
    }

    OUTLINED_FUNCTION_6_24();
    sub_1D992BD64();

    OUTLINED_FUNCTION_38();
    sub_1D992AD44();
    sub_1D9887904();
    v16 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v16);

    OUTLINED_FUNCTION_16_12();
    sub_1D986A454(v17, v18, v19, v20, v21, v22);

    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1D990B67C()
{
  v1 = v0;
  if (sub_1D9870178())
  {
    if (qword_1ED8BD6D8 != -1)
    {
      OUTLINED_FUNCTION_1_43();
    }

    OUTLINED_FUNCTION_6_24();
    sub_1D992BD64();

    OUTLINED_FUNCTION_38();
    v8 = v2;
    sub_1D992AD44();
    sub_1D9887904();
    v3 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v3);

    sub_1D986A454(0xD000000000000014, v8, 0xD00000000000005CLL, 0x80000001D993DAE0, 0x696F706B63656863, 0xEC0000002928746ELL);

    v4 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_handle;
    OUTLINED_FUNCTION_9_19();
    swift_beginAccess();
    v5 = sqlite3_wal_checkpoint_v2(*(v1 + v4), 0, 1, 0, 0);
    v6 = sub_1D9870308(v5, 0xD00000000000005CLL, 0x80000001D993DAE0, 0x696F706B63656863, 0xEC0000002928746ELL);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1D990B804()
{
  if (sub_1D9870178())
  {
    v1 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_handle;
    OUTLINED_FUNCTION_9_19();
    swift_beginAccess();
    v2 = *(v0 + v1);
    sub_1D992B6B4();
    OUTLINED_FUNCTION_9_19();
    v7 = sqlite3_exec(v3, v4, v5, v6, 0);

    v8 = sub_1D9870308(v7, 0xD00000000000005CLL, 0x80000001D993DAE0, 0x2865747563657865, 0xEB00000000293A5FLL);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D990B8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = *MEMORY[0x1E69E9840];
  if ((sub_1D9870178() & 1) == 0 || (v6 = sub_1D98701CC(a1, a2, a3)) == 0 || (v7 = v6, (v8 = sqlite3_column_count(v6)) == 0))
  {
    v20 = 0;
    goto LABEL_15;
  }

  v9 = v8;
  if (v8 < 0)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  v10 = 0;
  v96 = MEMORY[0x1E69E7CC0];
  v92 = v7;
  while (v9 != v10)
  {
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_62;
    }

    if (!sqlite3_column_name(v7, v10))
    {
      goto LABEL_64;
    }

    v11 = sub_1D992B6F4();
    v13 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = v96[2];
      sub_1D986FB38();
      v96 = v18;
    }

    v15 = v96[2];
    v14 = v96[3];
    if (v15 >= v14 >> 1)
    {
      OUTLINED_FUNCTION_23_11(v14);
      sub_1D986FB38();
      v96 = v19;
    }

    v96[2] = v15 + 1;
    v16 = &v96[2 * v15];
    v16[4] = v11;
    v16[5] = v13;
    ++v10;
    v7 = v92;
  }

  if (sqlite3_step(v7) != 100)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_57;
  }

  v95 = v9;
  v20 = MEMORY[0x1E69E7CC0];
  do
  {
    v90 = v20;
    v23 = 0;
    v24 = v96 + 5;
    v25 = MEMORY[0x1E69E7CC8];
    do
    {
      if (v23 == 0x7FFFFFFF)
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v26 = OUTLINED_FUNCTION_14_16();
      v28 = 0.0;
      v29 = 0;
      v30 = 0;
      v31 = 4;
      switch(sqlite3_column_type(v26, v27))
      {
        case 1:
          v32 = OUTLINED_FUNCTION_14_16();
          v28 = COERCE_DOUBLE(sqlite3_column_int64(v32, v33));
          v29 = 0;
          v30 = 0;
          v31 = 1;
          break;
        case 2:
          v46 = OUTLINED_FUNCTION_14_16();
          v29 = 0;
          v30 = 0;
          v28 = sqlite3_column_double(v46, v47);
          v31 = 2;
          break;
        case 3:
          v48 = OUTLINED_FUNCTION_14_16();
          if (!sqlite3_column_text(v48, v49))
          {
            goto LABEL_30;
          }

          v28 = COERCE_DOUBLE(sub_1D992B704());
          v29 = v50;
          v30 = 0;
          v31 = 0;
          break;
        case 4:
          v34 = OUTLINED_FUNCTION_14_16();
          v36 = sqlite3_column_blob(v34, v35);
          if (!v36)
          {
            goto LABEL_30;
          }

          v37 = v36;
          v38 = OUTLINED_FUNCTION_14_16();
          v40 = sqlite3_column_bytes(v38, v39);
          if (v40)
          {
            v41 = v40;
            if (v40 < 15)
            {
              memset(__dst, 0, sizeof(__dst));
              v98 = v40;
              memcpy(__dst, v37, v40);
              v30 = 0;
              v28 = *__dst;
              v29 = v91 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v98 << 16)) << 32);
              v31 = 3;
              v91 = v29;
            }

            else
            {
              v42 = sub_1D992ABF4();
              v43 = *(v42 + 48);
              v44 = *(v42 + 52);
              swift_allocObject();
              if (v41 == 0x7FFFFFFF)
              {
                v45 = sub_1D992ABB4();
                sub_1D992AD54();
                v28 = COERCE_DOUBLE(swift_allocObject());
                v30 = 0;
                *(*&v28 + 16) = xmmword_1D9935F70;
                v29 = v45 | 0x8000000000000000;
              }

              else
              {
                v30 = 0;
                *&v28 = v41 << 32;
                v29 = sub_1D992ABB4() | 0x4000000000000000;
              }

              v31 = 3;
            }
          }

          else
          {
            v28 = 0.0;
            v30 = 0;
            v31 = 3;
            v29 = 0xC000000000000000;
          }

          break;
        case 5:
          break;
        default:
LABEL_30:
          v28 = 0.0;
          v29 = 0;
          v31 = -1;
          v30 = 1;
          break;
      }

      if (v96[2] <= v23)
      {
        goto LABEL_59;
      }

      v52 = *(v24 - 1);
      v51 = *v24;

      if ((v30 & 1) == 0)
      {
        v93 = v24;
        v60 = v31;
        v61 = *&v28;
        v62 = v29;
        v94 = v60;
        sub_1D986F8C0(*&v28, v29, v60);
        swift_isUniquelyReferenced_nonNull_native();
        *__dst = v25;
        v63 = OUTLINED_FUNCTION_17_13();
        v65 = sub_1D9889410(v63, v64);
        if (__OFADD__(v25[2], (v66 & 1) == 0))
        {
          goto LABEL_60;
        }

        v67 = v65;
        v68 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49168, &qword_1D9935FC0);
        if (sub_1D992BE34())
        {
          v69 = OUTLINED_FUNCTION_17_13();
          v71 = sub_1D9889410(v69, v70);
          v7 = v92;
          if ((v68 & 1) != (v72 & 1))
          {
            result = sub_1D992BFC4();
            __break(1u);
            return result;
          }

          v67 = v71;
          if ((v68 & 1) == 0)
          {
LABEL_39:
            v25 = *__dst;
            *(*__dst + 8 * (v67 >> 6) + 64) |= 1 << v67;
            v73 = (v25[6] + 16 * v67);
            *v73 = v52;
            v73[1] = v51;
            v74 = v25[7] + 24 * v67;
            *v74 = v61;
            *(v74 + 8) = v62;
            *(v74 + 16) = v94;
            sub_1D986DC38(v61, v62, v94);
            v75 = v25[2];
            v76 = __OFADD__(v75, 1);
            v77 = v75 + 1;
            if (v76)
            {
              goto LABEL_61;
            }

            v25[2] = v77;
            goto LABEL_43;
          }
        }

        else
        {
          v7 = v92;
          if ((v68 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        v25 = *__dst;
        v78 = *(*__dst + 56) + 24 * v67;
        v79 = *v78;
        v80 = *(v78 + 8);
        *v78 = v61;
        *(v78 + 8) = v62;
        v81 = *(v78 + 16);
        *(v78 + 16) = v94;
        sub_1D986C908(v79, v80, v81);
        sub_1D986DC38(v61, v62, v94);
LABEL_43:
        v24 = v93;
        goto LABEL_44;
      }

      v53 = OUTLINED_FUNCTION_17_13();
      v55 = sub_1D9889410(v53, v54);
      v57 = v56;

      if (v57)
      {
        swift_isUniquelyReferenced_nonNull_native();
        *__dst = v25;
        v58 = v25[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49168, &qword_1D9935FC0);
        sub_1D992BE34();
        v25 = *__dst;
        v59 = *(*(*__dst + 48) + 16 * v55 + 8);

        sub_1D986C908(*(v25[7] + 24 * v55), *(v25[7] + 24 * v55 + 8), *(v25[7] + 24 * v55 + 16));
        sub_1D992BE44();
      }

LABEL_44:
      ++v23;
      v24 += 2;
    }

    while (v95 != v23);
    v20 = v90;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D98BE484(0, *(v90 + 16) + 1, 1, v90);
      v20 = v85;
    }

    v84 = *(v20 + 16);
    v83 = *(v20 + 24);
    if (v84 >= v83 >> 1)
    {
      v86 = OUTLINED_FUNCTION_23_11(v83);
      sub_1D98BE484(v86, v87, v88, v20);
      v20 = v89;
    }

    *(v20 + 16) = v84 + 1;
    *(v20 + 8 * v84 + 32) = v25;
  }

  while (sqlite3_step(v7) == 100);
LABEL_57:
  sqlite3_finalize(v7);

LABEL_15:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

sqlite3 *sub_1D990BF54()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_handle;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    result = sqlite3_close_v2(result);
    *(v0 + v1) = 0;
  }

  return result;
}

uint64_t sub_1D990BFA4()
{
  sub_1D990BF54();
  v1 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_storagePath;
  v2 = sub_1D992AD44();
  OUTLINED_FUNCTION_5(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DbStorage()
{
  result = qword_1ED8BD6C0;
  if (!qword_1ED8BD6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D990C090()
{
  result = sub_1D992AD44();
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

uint64_t sub_1D990C140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v8 = objc_autoreleasePoolPush();
  sub_1D987F16C();
  objc_autoreleasePoolPop(OUTLINED_FUNCTION_20_4());
  __swift_destroy_boxed_opaque_existential_1(v10);
  return a2;
}

uint64_t sub_1D990C1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_18(a1, a2, a3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OUTLINED_FUNCTION_11_21(v10, v20);
  v12(v11);
  v13 = OUTLINED_FUNCTION_18_12();
  v15 = v14(v13);
  v18 = sub_1D990B8D4(v15, v16, v17);

  (*(v6 + 8))(v4, v3);
  return v18;
}

void OUTLINED_FUNCTION_13_17()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t sub_1D990C31C()
{
  v1 = v0;
  v2 = v0[2];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v64 = v3;
  if (v3)
  {
    v68[0] = MEMORY[0x1E69E7CC0];
    sub_1D986C620();
    v4 = v68[0];
    v5 = (v2 + 40);
    v6 = v3;
    do
    {
      v8 = *(v5 - 1);
      v7 = *v5;
      v68[0] = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_1D986C620();
        v4 = v68[0];
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v5 += 8;
      --v6;
    }

    while (v6);
    v3 = v64;
  }

  v68[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  v62 = OUTLINED_FUNCTION_1_44();
  v13 = v12;

  v14 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v60 = v13;
    v61 = v1;
    v69 = MEMORY[0x1E69E7CC0];
    sub_1D986C620();
    v15 = 0;
    v16 = v14;
    v14 = v69;
    v17 = v2 + 32;
    v63 = v2 + 32;
    do
    {
      v18 = v17 + (v15 << 6);
      v19 = *(v18 + 56);
      if (v19 <= 0xF7)
      {
        v21 = *(v18 + 24);
        v20 = *(v18 + 32);
        v23 = *(v18 + 40);
        v22 = *(v18 + 48);
        v67 = *(v18 + 8);

        v24 = OUTLINED_FUNCTION_0_53();
        sub_1D990CAC0(v24, v25, v26, v22, v19);
        v27 = OUTLINED_FUNCTION_0_53();
        sub_1D990CAC0(v27, v28, v29, v22, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = *(v16 + 16);
          sub_1D986CB30();
          v16 = v50;
        }

        v30 = *(v16 + 16);
        if (v30 >= *(v16 + 24) >> 1)
        {
          sub_1D986CB30();
          v16 = v51;
        }

        *(v16 + 16) = v30 + 1;
        v31 = v16 + 40 * v30;
        *(v31 + 32) = v21;
        *(v31 + 40) = v20;
        *(v31 + 48) = v23;
        *(v31 + 56) = v22;
        *(v31 + 64) = v19;
        if ((v19 & 0x80) != 0)
        {

          v40 = OUTLINED_FUNCTION_0_53();
          sub_1D990CAD4(v40, v41, v42, v22, v19);
          v20 = 0xE100000000000000;
          v21 = 63;
        }

        else
        {
          v65 = v22;
          v66 = v16;

          v32 = 4;
          v33 = &unk_1F5518210;
          while (--v32)
          {
            v34 = v33 + 2;
            v36 = *(v33 - 1);
            v35 = *v33;

            LOBYTE(v36) = sub_1D992B724();

            v33 = v34;
            if (v36)
            {

              v37 = OUTLINED_FUNCTION_0_53();
              sub_1D990CAD4(v37, v38, v39, v65, v19);
              goto LABEL_22;
            }
          }

          v68[0] = 64;
          v68[1] = 0xE100000000000000;
          MEMORY[0x1DA739C30](v21, v20);

          v43 = OUTLINED_FUNCTION_0_53();
          sub_1D990CAD4(v43, v44, v45, v65, v19);
          v21 = 64;
          v20 = 0xE100000000000000;
LABEL_22:
          v16 = v66;
        }

        v17 = v63;
        v3 = v64;
      }

      else
      {
        v20 = 0xE400000000000000;
        v21 = 1280070990;
      }

      v69 = v14;
      v46 = *(v14 + 16);
      if (v46 >= *(v14 + 24) >> 1)
      {
        v48 = v17;
        sub_1D986C620();
        v17 = v48;
        v14 = v69;
      }

      ++v15;
      *(v14 + 16) = v46 + 1;
      v47 = v14 + 16 * v46;
      *(v47 + 32) = v21;
      *(v47 + 40) = v20;
    }

    while (v15 != v3);
    v13 = v60;
    v1 = v61;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v68[0] = v14;
  v52 = OUTLINED_FUNCTION_1_44();
  v54 = v53;

  v55 = v1[3];
  if (v55)
  {
    v56 = sub_1D990C7DC(v55, v1[4]);
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0xE000000000000000;
  }

  sub_1D992BD64();

  strcpy(v68, "INSERT INTO ");
  BYTE5(v68[1]) = 0;
  HIWORD(v68[1]) = -5120;
  MEMORY[0x1DA739C30](*v1, v1[1]);
  MEMORY[0x1DA739C30](10250, 0xE200000000000000);
  MEMORY[0x1DA739C30](v62, v13);

  MEMORY[0x1DA739C30](0x5345554C41560A29, 0xEA0000000000280ALL);
  MEMORY[0x1DA739C30](v52, v54);

  MEMORY[0x1DA739C30](0x202020200A29, 0xE600000000000000);
  MEMORY[0x1DA739C30](v56, v58);

  MEMORY[0x1DA739C30](59, 0xE100000000000000);
  if (!*(v16 + 16))
  {
  }

  return v68[0];
}

uint64_t sub_1D990C7DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v26[0] = MEMORY[0x1E69E7CC0];
  sub_1D986C620();
  v6 = v26[0];
  v7 = (a1 + 40);
  do
  {
    v9 = *(v7 - 1);
    v8 = *v7;
    v26[0] = v6;
    v11 = *(v6 + 16);
    v10 = *(v6 + 24);

    if (v11 >= v10 >> 1)
    {
      sub_1D986C620();
      v6 = v26[0];
    }

    *(v6 + 16) = v11 + 1;
    v12 = v6 + 16 * v11;
    *(v12 + 32) = v9;
    *(v12 + 40) = v8;
    v7 += 3;
    --v2;
  }

  while (v2);
  v26[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  v24 = sub_1D992B5E4();
  v25 = v14;

  v27 = MEMORY[0x1E69E7CC0];
  sub_1D986C620();
  v15 = v27;
  v16 = (a2 + 40);
  do
  {
    v18 = *(v16 - 1);
    v17 = *v16;

    sub_1D992BD64();

    v26[0] = v18;
    v26[1] = v17;
    MEMORY[0x1DA739C30](0x756C637865203D20, 0xEC0000002E646564);
    MEMORY[0x1DA739C30](v18, v17);

    v27 = v15;
    v19 = *(v15 + 16);
    if (v19 >= *(v15 + 24) >> 1)
    {
      sub_1D986C620();
      v15 = v27;
    }

    *(v15 + 16) = v19 + 1;
    v20 = v15 + 16 * v19;
    *(v20 + 32) = v18;
    *(v20 + 40) = v17;
    v16 += 3;
    --v4;
  }

  while (v4);
  v21 = sub_1D992B5E4();
  v23 = v22;

  sub_1D992BD64();

  strcpy(v26, "ON CONFLICT(");
  MEMORY[0x1DA739C30](v24, v25);

  MEMORY[0x1DA739C30](0xD000000000000010, 0x80000001D993DC30);
  MEMORY[0x1DA739C30](v21, v23);

  return v26[0];
}

uint64_t sub_1D990CAC0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5 <= 0xF7u)
  {
    return sub_1D9870EF8(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1D990CAD4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5 <= 0xF7u)
  {
    return sub_1D9870F58(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1D990CAFC()
{
  v1 = v0[2];
  v2 = sub_1D990DA00();
  v0[3] = v2;
  v3 = sub_1D990DC04();
  v0[4] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E69CF458]) init];
  [v3 setStartedOrChanged_];

  v5 = [v3 startedOrChanged];
  if (v5)
  {
    v6 = v5;
    v7 = v0[2];
    v8 = type metadata accessor for PreprocessorTelemetry(0);
    [v6 setReason_];
  }

  [v2 setPreprocessorExecutionContext_];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1D990CC48;
  v10 = v0[2];
  v11 = OUTLINED_FUNCTION_19();

  return sub_1D990DDE8(v11);
}

uint64_t sub_1D990CC48()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D990CD2C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1D990CD88(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1D990CD9C()
{
  v35 = sub_1D990DA00();
  v0[13] = v35;
  v1 = [objc_allocWithZone(MEMORY[0x1E69CF460]) init];
  v0[14] = v1;
  if (!v1)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v2 = v1;
  v4 = v0[11];
  v3 = v0[12];
  sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
  v5 = sub_1D992AE84();
  OUTLINED_FUNCTION_6(v5);
  v7 = v6;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  (*(v7 + 16))(v10, v3, v5);
  v11 = sub_1D98B5B94(v10);

  v36 = v2;
  OUTLINED_FUNCTION_155(v12, sel_setContextId_);

  v13 = -1;
  v14 = -1 << *(v4 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v4 + 64);
  v16 = (63 - v14) >> 6;

  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_9:
      v19 = __clz(__rbit64(v15)) | (v18 << 6);
      v20 = (*(v4 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(*(v4 + 56) + 8 * v19);
      v24 = objc_allocWithZone(MEMORY[0x1E69CF410]);

      v25 = v23;
      v26 = [v24 init];
      if (!v26)
      {
        break;
      }

      v27 = v26;
      v15 &= v15 - 1;
      sub_1D990E6F4(v22, v21, v26);

      v28 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_addedCount;
      swift_beginAccess();
      [v27 setMessageCount_];
      v29 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_missingTimestampCount;
      swift_beginAccess();
      [v27 setMissingTimestampCount_];
      v30 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_result;
      swift_beginAccess();
      [v27 setResult_];
      [v36 addOrchestratorStatistics_];

      v17 = v18;
      if (!v15)
      {
        goto LABEL_6;
      }
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  while (1)
  {
LABEL_6:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(v4 + 64 + 8 * v18);
    ++v17;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  v31 = v0[11];

  [v35 setOrchestratorResultsStatsReported_];
  v32 = swift_task_alloc();
  v0[15] = v32;
  *v32 = v0;
  v32[1] = sub_1D990D0FC;
  v33 = v0[12];
  v34 = OUTLINED_FUNCTION_19();

  sub_1D990DDE8(v34);
}

uint64_t sub_1D990D0FC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D990D1E0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1D990D250()
{
  v1 = v0[2];
  v2 = sub_1D990DA00();
  v0[3] = v2;
  v3 = sub_1D990DC04();
  v0[4] = v3;
  v4 = sub_1D990DD2C();
  v0[5] = v4;
  v5 = *(v1 + *(type metadata accessor for PreprocessorTelemetry(0) + 40));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 24 * v6 + 8);
    if (v7 == 4)
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E69CF440]) init];
      OUTLINED_FUNCTION_155(v8, sel_setEnded_);

      v9 = [v3 ended];
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 5;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69CF448]) init];
  OUTLINED_FUNCTION_155(v10, sel_setFailed_);

  v11 = [v3 failed];
  if (v11)
  {
    v12 = v11;
    if (v7 == 5 || (v13 = sub_1D987A4C0(v7), (v13 & 0x100000000) != 0))
    {
      v13 = 0;
    }

    [v12 setFailedAtStep_];
  }

  v9 = [v3 failed];
LABEL_11:
  v14 = v9;
  if (v14)
  {
    v15 = v14;
    [v14 setPreprocessorExecutionMetrics_];
  }

  [v2 setPreprocessorExecutionContext_];
  v16 = swift_task_alloc();
  v0[6] = v16;
  *v16 = v0;
  v16[1] = sub_1D990D44C;
  v17 = v0[2];
  v18 = OUTLINED_FUNCTION_19();

  return sub_1D990DDE8(v18);
}

uint64_t sub_1D990D44C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D990D530()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_1D990D594(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

id sub_1D990D5A8()
{
  v1 = sub_1D990DA00();
  v0[4] = v1;
  result = [objc_allocWithZone(MEMORY[0x1E69CF468]) init];
  v0[5] = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  result = [objc_allocWithZone(MEMORY[0x1E69CF478]) init];
  v0[6] = result;
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = result;
  v6 = v0[2];
  v5 = v0[3];
  sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
  v7 = sub_1D992AE84();
  OUTLINED_FUNCTION_6(v7);
  v9 = v8;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  (*(v9 + 16))(v12, v6, v7);
  v13 = sub_1D98B5B94(v12);

  [v4 setClockIdentifier_];

  sub_1D9881EB8();
  v15 = sub_1D98B0EC0(v6, v14);
  LOBYTE(v12) = v16;

  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  [v4 setMessageCount_];
  *(swift_task_alloc() + 16) = v6;
  sub_1D98827BC();
  v19 = v18;

  v20 = sub_1D990E35C(v19);

  *(swift_task_alloc() + 16) = v6;
  sub_1D98827BC();
  v22 = v21;

  v23 = sub_1D990E35C(v22);

  sub_1D98EC180(v20, v4, &qword_1ECB47918, 0x1E69CF400, &selRef_setPublishedEventStatistics_);
  sub_1D98EC180(v23, v4, &qword_1ECB47918, 0x1E69CF400, &selRef_setRedactedEventStatistics_);
  [v3 setOffDeviceClockStatistics_];
  [v1 setPreprocessorSessionEndStatsReported_];
  v24 = swift_task_alloc();
  v0[7] = v24;
  *v24 = v0;
  v24[1] = sub_1D990D8B8;
  v25 = v0[3];
  v26 = OUTLINED_FUNCTION_19();

  return sub_1D990DDE8(v26);
}

uint64_t sub_1D990D8B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D990D99C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_25();

  return v3();
}

id sub_1D990DA00()
{
  result = [objc_allocWithZone(MEMORY[0x1E69CF420]) init];
  if (!result)
  {
    goto LABEL_13;
  }

  v1 = result;
  v2 = [objc_allocWithZone(MEMORY[0x1E69CF430]) init];
  [v1 setEventMetadata_];

  v3 = [v1 eventMetadata];
  if (v3)
  {
    v4 = v3;
    sub_1D986E35C(0, &qword_1ECB47938, 0x1E69CF428);
    v5 = static PFAPFADeviceDimensions.current()();
    OUTLINED_FUNCTION_155(v5, sel_setDeviceDimensions_);
  }

  v6 = [v1 eventMetadata];
  if (!v6)
  {
    return v1;
  }

  v7 = v6;
  v8 = sub_1D992AE04();
  v9 = OUTLINED_FUNCTION_6(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992ADE4();
  sub_1D992ADC4();
  v17 = v16;
  result = (*(v11 + 8))(v15, v8);
  v18 = v17 * 1000.0;
  if (COERCE__INT64(fabs(v17 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v18 > -9.22337204e18)
  {
    if (v18 < 9.22337204e18)
    {
      [v7 setEventTimestampInMsSince1970_];

      return v1;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

id sub_1D990DC04()
{
  result = [objc_allocWithZone(MEMORY[0x1E69CF438]) init];
  if (result)
  {
    v2 = result;
    sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
    v3 = sub_1D992AE84();
    v4 = OUTLINED_FUNCTION_6(v3);
    v6 = *(v5 + 64);
    v7 = MEMORY[0x1EEE9AC00](v4);
    v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v9, v0, v7);
    v11 = sub_1D98B5B94(v9);
    [v2 setContextId_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D990DDE8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D990DDFC()
{
  v1 = [*(v0 + 40) wrapAsAnyEvent];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = (v2 + *(type metadata accessor for PreprocessorTelemetry(0) + 28));
    v4 = v3[1];
    v35 = (*v3 + **v3);
    v5 = (*v3)[1];
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_1D990E0B4;
    v7 = OUTLINED_FUNCTION_19();

    return v35(v7);
  }

  else
  {
    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v9 = qword_1ECB49658;
    OUTLINED_FUNCTION_10_18();
    sub_1D98DCEB4(v10, v11, v12, v13, v14, v15);
    sub_1D990E7C4();
    v16 = swift_allocError();
    swift_willThrow();
    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v17 = OUTLINED_FUNCTION_11_22();
    OUTLINED_FUNCTION_8_0(v17, v18, v19, v20, v21, v22, v23, v24, v34, v36, v37);
    MEMORY[0x1DA739C30](0xD00000000000001ALL, 0x80000001D993DD00);
    *(v0 + 32) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
    sub_1D992BE24();
    v25 = *v9;
    v26 = *(v0 + 24);
    OUTLINED_FUNCTION_10_18();
    sub_1D98DCEB4(v27, v28, v29, v30, v31, v32);

    OUTLINED_FUNCTION_25();

    return v33();
  }
}

uint64_t sub_1D990E0B4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 64);
  v4 = *v1;
  OUTLINED_FUNCTION_17();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_1D990E210;
  }

  else
  {
    v7 = sub_1D990E1B8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D990E1B8()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_1D990E210()
{
  v2 = *(v1 + 72);
  if (qword_1ED8BD6F0 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v3 = OUTLINED_FUNCTION_11_22();
  OUTLINED_FUNCTION_8_0(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);
  MEMORY[0x1DA739C30](0xD00000000000001ALL, 0x80000001D993DD00);
  *(v1 + 32) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(*v0, *(v1 + 24), 0xD000000000000077, 0x80000001D993DC80, 0x293A5F2874696D65, 0xE800000000000000);

  OUTLINED_FUNCTION_25();

  return v11();
}

uint64_t sub_1D990E35C(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC8];
  v8 = &off_1E8588000;
  v37 = v1;
  v38 = v5;
  if (v4)
  {
    while (1)
    {
LABEL_8:
      v10 = __clz(__rbit64(v4)) | (v6 << 6);
      v11 = (*(a1 + 48) + 16 * v10);
      v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(*(a1 + 56) + 8 * v10);
      if (v7[2] && (v15 = sub_1D988B5F0(*v11), (v16 & 1) != 0))
      {
        v17 = *(v7[7] + 8 * v15);
      }

      else
      {
        v17 = [objc_allocWithZone(MEMORY[0x1E69CF400]) init];
        if (!v17)
        {
          goto LABEL_41;
        }
      }

      [v17 setAnyEventType_];
      v18 = [v17 messageCount];
      if (__CFADD__(v18, v14))
      {
        break;
      }

      [v17 v8[84]];
      v19 = sub_1D990E754(v17);
      v20 = MEMORY[0x1E69E7CC0];
      if (v19)
      {
        v20 = v19;
      }

      v40 = v20;
      v21 = [objc_allocWithZone(MEMORY[0x1E69CF408]) init];
      if (!v21)
      {
        goto LABEL_40;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      if (HIDWORD(v13))
      {
        goto LABEL_37;
      }

      v22 = v21;
      [v21 setOrdinal_];
      [v22 v8[84]];
      v23 = v22;
      MEMORY[0x1DA739CE0]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D992B7D4();
      }

      sub_1D992B7F4();
      sub_1D98EC180(v40, v17, &qword_1ECB47968, 0x1E69CF408, &selRef_setEventStatistics_);
      v24 = v17;
      swift_isUniquelyReferenced_nonNull_native();
      v25 = sub_1D988B5F0(v12);
      if (__OFADD__(v7[2], (v26 & 1) == 0))
      {
        goto LABEL_38;
      }

      v27 = v25;
      v28 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49178, &qword_1D9936008);
      if (sub_1D992BE34())
      {
        v29 = sub_1D988B5F0(v12);
        v8 = &off_1E8588000;
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_42;
        }

        v27 = v29;
      }

      else
      {
        v8 = &off_1E8588000;
      }

      if (v28)
      {
        v31 = v7[7];
        v32 = *(v31 + 8 * v27);
        *(v31 + 8 * v27) = v24;

        v23 = v24;
        v24 = v32;
      }

      else
      {
        v7[(v27 >> 6) + 8] |= 1 << v27;
        *(v7[6] + 4 * v27) = v12;
        *(v7[7] + 8 * v27) = v24;
        v33 = v7[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_39;
        }

        v7[2] = v35;
      }

      v4 &= v4 - 1;

      v1 = v37;
      v5 = v38;
      if (!v4)
      {
        goto LABEL_4;
      }
    }

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
LABEL_42:
    type metadata accessor for SISchemaAnyEventType(0);
    result = sub_1D992BFC4();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_4:
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v5)
      {
        break;
      }

      v4 = *(v1 + 8 * v9);
      ++v6;
      if (v4)
      {
        v6 = v9;
        goto LABEL_8;
      }
    }

    return sub_1D98D4654(v7);
  }

  return result;
}

void sub_1D990E6F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D992B614();
  [a3 setBundleId_];
}

uint64_t sub_1D990E754(void *a1)
{
  v1 = [a1 eventStatistics];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D986E35C(0, &qword_1ECB47968, 0x1E69CF408);
  v3 = sub_1D992B7B4();

  return v3;
}

unint64_t sub_1D990E7C4()
{
  result = qword_1ECB49170;
  if (!qword_1ECB49170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49170);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PreprocessorTelemetryError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D990E8C8()
{
  result = qword_1ECB49180;
  if (!qword_1ECB49180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49180);
  }

  return result;
}

uint64_t sub_1D990E940(uint64_t a1)
{
  result = 0x7078456B636F6C63;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x61727473746F6F62;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x75526C61756E616DLL;
      break;
    default:
      result = sub_1D992BFA4();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1D990EA18(unint64_t a1)
{
  if (a1 < 4)
  {
    return dword_1D992FA40[a1];
  }

  result = sub_1D992BFA4();
  __break(1u);
  return result;
}

unint64_t ProcessingReason.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D990EA7C()
{
  result = qword_1ECB49188;
  if (!qword_1ECB49188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49188);
  }

  return result;
}

unint64_t sub_1D990EAE8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ProcessingReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t ComponentId.init(identifierType:uuid:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for ComponentId(0) + 20);
  v6 = sub_1D992AE84();
  OUTLINED_FUNCTION_5(v6);
  v8 = *(v7 + 32);

  return v8(&a3[v5], a2);
}

uint64_t static TagPredicate.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_4();
  v3 = type metadata accessor for MessageGroupIdentifier(v2);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_23_1();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = *v1;
  v14 = *v0;
  switch(v13 >> 61)
  {
    case 1uLL:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
      v27 = swift_projectBox();
      if (v14 >> 61 != 1)
      {
        goto LABEL_22;
      }

      v28 = v27;
      v29 = *(v26 + 48);
      v30 = *(v27 + v29);
      v31 = swift_projectBox();
      v32 = *(v31 + v29);
      sub_1D988EE2C(v28, v12);
      sub_1D988EE2C(v31, v9);
      OUTLINED_FUNCTION_3_26();
      LOBYTE(v28) = static MessageGroupIdentifier.== infix(_:_:)(v12, v9);
      sub_1D990F474(v9, type metadata accessor for MessageGroupIdentifier);
      sub_1D990F474(v12, type metadata accessor for MessageGroupIdentifier);
      OUTLINED_FUNCTION_4_28();
      if ((v28 & 1) == 0)
      {
        goto LABEL_23;
      }

      v23 = v30 ^ v32 ^ 1;
      return v23 & 1;
    case 2uLL:
      if (v14 >> 61 == 2)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    case 3uLL:
      if (v14 >> 61 != 3)
      {
        goto LABEL_22;
      }

LABEL_11:
      v24 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_3_26();

      v23 = sub_1D990F358(v24, v25);

      goto LABEL_12;
    case 4uLL:
      if (v14 >> 61 != 4)
      {
        goto LABEL_22;
      }

      v22 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v38 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v39 = v22;
      OUTLINED_FUNCTION_3_26();
      v23 = static TagPredicate.== infix(_:_:)(&v39, &v38);
LABEL_12:
      OUTLINED_FUNCTION_4_28();
      return v23 & 1;
    case 5uLL:
      if (v13 == 0xA000000000000000)
      {
        if (v14 == 0xA000000000000000)
        {
          sub_1D9890810(0xA000000000000000);
          v33 = 0xA000000000000000;
LABEL_21:
          sub_1D9890810(v33);
          goto LABEL_40;
        }
      }

      else if (v14 == 0xA000000000000008)
      {
        sub_1D9890810(0xA000000000000008);
        v33 = 0xA000000000000008;
        goto LABEL_21;
      }

LABEL_22:
      OUTLINED_FUNCTION_3_26();
      OUTLINED_FUNCTION_4_28();
      goto LABEL_23;
    default:
      if (v14 >> 61)
      {
        goto LABEL_22;
      }

      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      v17 = *(v13 + 32);
      v18 = *(v14 + 16);
      v19 = *(v14 + 24);
      v20 = *(v14 + 32);
      OUTLINED_FUNCTION_3_26();
      OUTLINED_FUNCTION_4_28();
      if (!v17)
      {
        if (v20)
        {
          v35 = 0;
        }

        else
        {
          v35 = v15 == v18;
        }

        if (!v35 || v16 != v19)
        {
          goto LABEL_23;
        }

LABEL_40:
        v23 = 1;
        return v23 & 1;
      }

      if (v17 == 1)
      {
        v21 = v20 == 1;
      }

      else
      {
        v21 = v20 == 2;
      }

      if (v21 && v15 == v18)
      {
        goto LABEL_40;
      }

LABEL_23:
      v23 = 0;
      return v23 & 1;
  }
}

uint64_t sub_1D990EE94@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ComponentId(0);
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
  v10 = OUTLINED_FUNCTION_9(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = type metadata accessor for MessageGroupIdentifier(0);
  v16 = OUTLINED_FUNCTION_9(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v19);
  if (*v1 >> 61 != 1)
  {
    goto LABEL_5;
  }

  v20 = swift_projectBox();
  sub_1D990F81C(v20, v14);
  sub_1D990F88C();
  sub_1D990F88C();
  sub_1D990F88C();
  if (*v8 != 1)
  {
    sub_1D990F474(v8, type metadata accessor for ComponentId);
LABEL_5:
    v26 = sub_1D992AE84();
    v24 = a1;
    v25 = 1;
    return __swift_storeEnumTagSinglePayload(v24, v25, 1, v26);
  }

  v21 = *(v3 + 20);
  v22 = sub_1D992AE84();
  OUTLINED_FUNCTION_5(v22);
  (*(v23 + 32))(a1, &v8[v21], v22);
  v24 = a1;
  v25 = 0;
  v26 = v22;
  return __swift_storeEnumTagSinglePayload(v24, v25, 1, v26);
}

uint64_t TagPredicate.init(requestIdentifier:clustered:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
  v7 = swift_allocBox();
  v9 = v8;
  v10 = *(v6 + 48);
  *v8 = 1;
  v11 = *(type metadata accessor for ComponentId(0) + 20);
  v12 = sub_1D992AE84();
  OUTLINED_FUNCTION_5(v12);
  result = (*(v13 + 32))(&v9[v11], a1);
  v9[v10] = a2;
  *a3 = v7 | 0x2000000000000000;
  return result;
}

uint64_t static MessageGroupIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentId(0);
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_23_1();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v25 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49190, &qword_1D9936218);
  v15 = OUTLINED_FUNCTION_9(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - v18;
  v21 = *(v20 + 56);
  sub_1D988EE2C(a1, &v25 - v18);
  sub_1D988EE2C(a2, &v19[v21]);
  sub_1D990F88C();
  sub_1D990F88C();
  if (*v13 == *v10)
  {
    v22 = *(v4 + 20);
    v23 = sub_1D992AE54();
    sub_1D990F474(v10, type metadata accessor for ComponentId);
    sub_1D990F474(v13, type metadata accessor for ComponentId);
    if (v23)
    {
      return 1;
    }
  }

  else
  {
    sub_1D990F474(v10, type metadata accessor for ComponentId);
    sub_1D990F474(v13, type metadata accessor for ComponentId);
  }

  return 0;
}

uint64_t sub_1D990F358(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v11 = v6;
        v7 = *v4++;
        v10 = v7;
        sub_1D98907D8(v5);
        sub_1D98907D8(v7);
        v8 = static TagPredicate.== infix(_:_:)(&v11, &v10);
        sub_1D9890810(v7);
        sub_1D9890810(v5);
        --v2;
      }

      while ((v8 & 1) != 0 && v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t static ComponentId.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_4();
  v3 = *(type metadata accessor for ComponentId(v2) + 20);
  return sub_1D992AE54() & 1;
}

uint64_t sub_1D990F474(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D990F4CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 8))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D990F520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D990F580(unint64_t *result, uint64_t a2)
{
  if (a2 < 5)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D990F5B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49198, &qword_1D9936388);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D990F60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49198, &qword_1D9936388);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_1D990F670(uint64_t a1)
{
  sub_1D990F728();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for ComponentId(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_1D990F728()
{
  if (!qword_1ECB47FC0)
  {
    v0 = type metadata accessor for ComponentId(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB47FC0);
    }
  }
}

void sub_1D990F798()
{
  type metadata accessor for SISchemaComponentName(319);
  if (v0 <= 0x3F)
  {
    sub_1D992AE84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D990F81C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D990F88C()
{
  v2 = OUTLINED_FUNCTION_4();
  v4 = v3(v2);
  OUTLINED_FUNCTION_5(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

SiriAnalytics::TagSpace_optional __swiftcall TagSpace.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D990F928@<X0>(_DWORD *a1@<X8>)
{
  result = TagSpace.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D990F990(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a2[3];
  v8 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  OUTLINED_FUNCTION_0();
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12);
  v16 = a3(a1, v14, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v16;
}

uint64_t static TagShim.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1ECB491A0 = a1;
  return result;
}

uint64_t sub_1D990FBA4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECB491A0;
  return result;
}

uint64_t sub_1D990FBF0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECB491A0 = v1;
  return result;
}

uint64_t sub_1D990FC38(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SiriAnalyticsTagShim_underlying;
  sub_1D98B37DC(v1 + OBJC_IVAR___SiriAnalyticsTagShim_underlying, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB491B0, &qword_1D9932388);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB48500, &unk_1D9932390);
  if (swift_dynamicCast())
  {
    sub_1D986D53C(v37, v41);
    v5 = [objc_allocWithZone(MEMORY[0x1E69C65C0]) init];
    if (v5)
    {
      v6 = v5;
      sub_1D98B37DC(v1 + v4, v39);
      v7 = OUTLINED_FUNCTION_5_27();
      v8 = v40;
      __swift_destroy_boxed_opaque_existential_1(v39);
      (*(v8 + 8))(v37, v7, v8);
      __swift_project_boxed_opaque_existential_1(v41, v41[3]);
      sub_1D992B3F4();
      v10 = sub_1D99108B4(v6);
      v12 = v11;
      sub_1D98B37DC(v2 + v4, v39);
      v13 = OUTLINED_FUNCTION_5_27();
      v14 = v40;
      __swift_destroy_boxed_opaque_existential_1(v39);
      (*(v14 + 8))(v37, v13, v14);
      v15 = LOBYTE(v37[0]);
      v16 = OUTLINED_FUNCTION_4_29();
      [a1 encodeInt32:v15 forKey:v16];

      v36 = v10;
      if (v12 >> 60 == 15)
      {
        v17 = 0;
      }

      else
      {
        sub_1D987BA38(v10, v12);
        v17 = sub_1D992AD74();
        sub_1D9866358(v10, v12);
      }

      v18 = OUTLINED_FUNCTION_1_0();
      [a1 encodeObject:v17 forKey:v18];
      swift_unknownObjectRelease();

      v19 = sub_1D992AE84();
      v35[1] = v35;
      OUTLINED_FUNCTION_0();
      v21 = v20;
      v23 = *(v22 + 64);
      MEMORY[0x1EEE9AC00](v24);
      OUTLINED_FUNCTION_13();
      v27 = v26 - v25;
      v28 = OBJC_IVAR___SiriAnalyticsTagShim_identifier;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v29 - 8);
      v32 = v35 - v31;
      sub_1D9879FF8(v2 + v28, v35 - v31);
      if (__swift_getEnumTagSinglePayload(v32, 1, v19) == 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v41);
        sub_1D9866358(v36, v12);

        return sub_1D986DEE4(v32, &qword_1ECB481D0, &qword_1D992F9F0);
      }

      else
      {
        (*(v21 + 32))(v27, v32, v19);
        v33 = sub_1D992AE44();
        v34 = sub_1D992B614();
        [a1 encodeObject:v33 forKey:v34];

        sub_1D9866358(v36, v12);
        (*(v21 + 8))(v27, v19);
        return __swift_destroy_boxed_opaque_existential_1(v41);
      }
    }

    else
    {
      return __swift_destroy_boxed_opaque_existential_1(v41);
    }
  }

  else
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    return sub_1D986DEE4(v37, &unk_1ECB491C0, &unk_1D99305E0);
  }
}

void TagShim.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OUTLINED_FUNCTION_4_29();
  v5 = [a1 decodeInt32ForKey_];

  if ((v5 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_15;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = OUTLINED_FUNCTION_1_0();
  v8 = [a1 decodeObjectForKey_];

  if (v8)
  {
    sub_1D992BC24();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v36 = v39;
  v37 = v40;
  if (!*(&v40 + 1))
  {

    sub_1D986DEE4(&v36, &unk_1ECB488D0, &unk_1D99335F0);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:

LABEL_23:
    type metadata accessor for TagShim();
    v29 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v30 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v34 = &v34;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - v11;
  v13 = sub_1D992B614();
  v14 = [a1 containsValueForKey_];

  if (v14 && (sub_1D9910B54(), (v15 = sub_1D992BB94()) != 0))
  {
    v16 = v15;
    MEMORY[0x1EEE9AC00](v15);
    v17 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = sub_1D992AE84();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
    sub_1D98BBC34();
    sub_1D992BEF4();

    if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
    {
      v19 = v12;
      v20 = 1;
    }

    else
    {
      (*(*(v18 - 8) + 32))(v12, v17, v18);
      v19 = v12;
      v20 = 0;
    }

    v21 = v18;
  }

  else
  {
    v21 = sub_1D992AE84();
    v19 = v12;
    v20 = 1;
  }

  __swift_storeEnumTagSinglePayload(v19, v20, 1, v21);
  sub_1D98EF68C(v12, v2 + OBJC_IVAR___SiriAnalyticsTagShim_identifier);
  v22 = objc_allocWithZone(MEMORY[0x1E69C65B8]);
  v23 = OUTLINED_FUNCTION_33();
  sub_1D987BA38(v23, v24);
  v25 = OUTLINED_FUNCTION_33();
  v27 = sub_1D9880B04(v25, v26);
  if (!v27)
  {
    goto LABEL_27;
  }

  v28 = v27;
  if (v6)
  {
    *(&v37 + 1) = &type metadata for DataClassificationTag;
    v38 = &protocol witness table for DataClassificationTag;
    *&v36 = swift_allocObject();
    static DataClassificationTag.read(from:)(v36 + 16);
  }

  else
  {
    *(&v37 + 1) = &type metadata for SensitiveConditionTag;
    v38 = &protocol witness table for SensitiveConditionTag;
    static SensitiveConditionTag.read(from:)();
  }

  v31 = OUTLINED_FUNCTION_33();
  sub_1D987106C(v31, v32);
  sub_1D986D53C(&v36, v2 + OBJC_IVAR___SiriAnalyticsTagShim_underlying);
  v33 = type metadata accessor for TagShim();
  v35.receiver = v2;
  v35.super_class = v33;
  objc_msgSendSuper2(&v35, sel_init);
}

uint64_t sub_1D9910620()
{
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1D992BD64();
  MEMORY[0x1DA739C30](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = sub_1D992C104();
  MEMORY[0x1DA739C30](v1);

  MEMORY[0x1DA739C30](0x69746E656469203ALL, 0xEF203D2072656966);
  v2 = OBJC_IVAR___SiriAnalyticsTagShim_identifier;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1D9879FF8(v0 + v2, v8 - v5);
  v6 = sub_1D992B6A4();
  MEMORY[0x1DA739C30](v6);

  MEMORY[0x1DA739C30](0x203D20676174202CLL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB491B0, &qword_1D9932388);
  sub_1D992BE24();
  MEMORY[0x1DA739C30](62, 0xE100000000000000);
  return v8[0];
}

id TagShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TagShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D99108B4(void *a1)
{
  v1 = [a1 immutableData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D992AD84();

  return v3;
}

id sub_1D9910918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  v17 = objc_allocWithZone(type metadata accessor for TagShim());
  (*(v10 + 16))(v16, a2, a4);
  v18 = sub_1D9910A24(a1, v16, v17, a4, a5);
  (*(v10 + 8))(a2, a4);
  return v18;
}

id sub_1D9910A24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  sub_1D9879FF8(a1, a3 + OBJC_IVAR___SiriAnalyticsTagShim_identifier);
  sub_1D98B37DC(v13, a3 + OBJC_IVAR___SiriAnalyticsTagShim_underlying);
  v12.receiver = a3;
  v12.super_class = type metadata accessor for TagShim();
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_1D986DEE4(a1, &qword_1ECB481D0, &qword_1D992F9F0);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

uint64_t type metadata accessor for TagShim()
{
  result = qword_1ED8BF660;
  if (!qword_1ED8BF660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D9910B54()
{
  result = qword_1ED8BD640;
  if (!qword_1ED8BD640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8BD640);
  }

  return result;
}

unint64_t sub_1D9910B9C()
{
  result = qword_1ECB491D0;
  if (!qword_1ECB491D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB491D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TagSpace(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1D9910CE8()
{
  sub_1D98946B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D9910DF4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D9910F2C();
  if (!v1)
  {
    sub_1D991109C(&v6);
    if (v7)
    {
      sub_1D986B804(v9, &qword_1ECB49268, &unk_1D99366C0);
      sub_1D986D53C(&v6, v8);
      return sub_1D986D53C(v8, a1);
    }

    else
    {
      sub_1D986B804(&v6, &unk_1ECB491C0, &unk_1D99305E0);
      v4 = sub_1D992B484();
      sub_1D98847C8();
      swift_allocError();
      (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E6999BA8], v4);
      swift_willThrow();
      return sub_1D986B804(v9, &qword_1ECB49268, &unk_1D99366C0);
    }
  }

  return result;
}

uint64_t sub_1D9910F2C()
{
  sub_1D9911EEC();
  sub_1D992B964();
  if (!v0)
  {
    v1 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E6999BA8], v1);
    swift_willThrow();
  }

  return sub_1D9866358(0, 0xF000000000000000);
}

uint64_t sub_1D991109C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  sub_1D9866D90((v3 + 5), &v19, &unk_1ECB491C0, &unk_1D99305E0);
  if (*(&v20 + 1))
  {
    return sub_1D986D53C(&v19, a1);
  }

  v22 = a1;
  sub_1D986B804(&v19, &unk_1ECB491C0, &unk_1D99305E0);
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[1];
  v9 = v3[2];
  v10 = sub_1D992BC04();
  v18 = *(v10 - 8);
  v11 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14 = *(v7 + 8);
  result = sub_1D992B474();
  if (!v2)
  {
    v15 = v18;
    if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
    {
      (*(v15 + 8))(v13, v10);
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }

    else
    {
      *(&v20 + 1) = v6;
      v21 = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v13, v6);
    }

    sub_1D9909AD4(&v19, (v3 + 5), &unk_1ECB491C0, &unk_1D99305E0);
    return sub_1D9866D90((v3 + 5), v22, &unk_1ECB491C0, &unk_1D99305E0);
  }

  return result;
}

uint64_t sub_1D99112B0(char a1, char *a2, ValueMetadata **a3, uint64_t *a4, void *a5)
{
  v10 = sub_1D991178C(a1);
  if (v10)
  {
    *a2 = a1;
    *a3 = v10;
    a3[1] = v11;
    v12 = [a5 readData];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1D992AD84();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xF000000000000000;
    }

    v20 = *a4;
    v21 = a4[1];
    *a4 = v14;
    a4[1] = v16;
    return sub_1D9866358(v20, v21);
  }

  else
  {
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD000000000000021, 0x80000001D9937770);
    sub_1D992BE24();
    sub_1D98DCEB4(0, 0xE000000000000000, 0xD00000000000006DLL, 0x80000001D99377A0, 0x6F72662864616572, 0xEB00000000293A6DLL);

    v17 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x1E6999BA8], v17);
    return swift_willThrow();
  }
}

uint64_t static DataClassificationTag.read(from:)@<X0>(uint64_t a1@<X8>)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v14 = 0xF000000000000007;
  sub_1D9911A18();
  sub_1D992B964();
  if (!v1)
  {
    sub_1D9866D90(v12, &v9, &qword_1ECB49240, &qword_1D99364B0);
    if (v10)
    {
      sub_1D986D53C(&v9, v11);
      v3 = v14;
      if ((~v14 & 0xF000000000000007) != 0)
      {
        sub_1D986D53C(v11, a1);
        *(a1 + 40) = v3;
        v8 = v14;
        sub_1D98907D8(v3);
        v6 = v8;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      sub_1D986B804(&v9, &qword_1ECB49240, &qword_1D99364B0);
    }

    v4 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E6999BA8], v4);
    swift_willThrow();
  }

  v6 = v14;
LABEL_8:
  sub_1D9890E8C(v6);
  return sub_1D986B804(v12, &qword_1ECB49240, &qword_1D99364B0);
}

uint64_t sub_1D9911664(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v5);
  if (OUTLINED_FUNCTION_1_45())
  {
    v8 = 0;
  }

  else if (OUTLINED_FUNCTION_1_45())
  {
    v8 = 1;
  }

  else if (OUTLINED_FUNCTION_1_45())
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  (*(v3 + 8))(v7, a2);
  return v8;
}

ValueMetadata *sub_1D991178C(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = &type metadata for InternalPlatformClassifications;
      sub_1D98CEED4();
    }

    else
    {
      v1 = &type metadata for RemoteRequestDataClassification;
      sub_1D98CD5E8();
    }
  }

  else
  {
    v1 = &type metadata for SearchRequestDataClassification;
    sub_1D98D1CD8();
  }

  return v1;
}

uint64_t sub_1D99117EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9911664(a1, a2);
  *a3 = result;
  return result;
}

uint64_t DataClassificationTag.write(to:)()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = __swift_project_boxed_opaque_existential_1(v0, v2);
  v11[3] = v2;
  v11[4] = *(v3 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49248, &qword_1D99364B8);
  v10 = sub_1D9911A6C();
  v8[0] = swift_allocObject();
  sub_1D9866D90(v11, v8[0] + 16, &qword_1ECB49248, &qword_1D99364B8);
  sub_1D992B9D4();
  if (!v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    v6 = v0[5];
    v9 = &type metadata for TagPredicate;
    v10 = sub_1D9891570();
    v8[0] = v6;
    sub_1D98907D8(v6);
    sub_1D992B9D4();
  }

  sub_1D986B804(v11, &qword_1ECB49248, &qword_1D99364B8);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1D99119F8(_BYTE *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1D9911988(a1);
}

unint64_t sub_1D9911A18()
{
  result = qword_1ECB47D30;
  if (!qword_1ECB47D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47D30);
  }

  return result;
}

unint64_t sub_1D9911A6C()
{
  result = qword_1ECB47FC8[0];
  if (!qword_1ECB47FC8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB49248, &qword_1D99364B8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECB47FC8);
  }

  return result;
}

unint64_t sub_1D9911AD4()
{
  result = qword_1ECB47D28;
  if (!qword_1ECB47D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47D28);
  }

  return result;
}

uint64_t sub_1D9911B28(uint64_t a1)
{
  result = sub_1D9910DF4(v7);
  if (!v1)
  {
    sub_1D986D53C(v7, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB48500, &unk_1D9932390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48DF0, &unk_1D9934960);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v5 = 0;
      memset(v4, 0, sizeof(v4));
    }

    return sub_1D9909AD4(v4, a1, &qword_1ECB49240, &qword_1D99364B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataClassificationTagProtoUnionDomain(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s6FieldsOwst_3(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D9911E70()
{
  result = qword_1ECB49250;
  if (!qword_1ECB49250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49250);
  }

  return result;
}

unint64_t sub_1D9911EC4(uint64_t a1)
{
  result = sub_1D9911EEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D9911EEC()
{
  result = qword_1ECB47B48;
  if (!qword_1ECB47B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B48);
  }

  return result;
}

unint64_t sub_1D9911F44()
{
  result = qword_1ECB49258;
  if (!qword_1ECB49258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49258);
  }

  return result;
}

unint64_t sub_1D9911F98()
{
  result = qword_1ECB49260;
  if (!qword_1ECB49260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49260);
  }

  return result;
}

uint64_t type metadata accessor for StagedMessagePolicyHeaders()
{
  result = qword_1ECB47BD0;
  if (!qword_1ECB47BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D99120B8()
{
  result = sub_1D992AE04();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D991216C()
{
  v0 = sub_1D992B484();
  OUTLINED_FUNCTION_0_54();
  sub_1D991276C(v1, v2);
  swift_allocError();
  *v3 = 0x726F707075736E55;
  v3[1] = 0xEB00000000646574;
  (*(*(v0 - 8) + 104))(v3, *MEMORY[0x1E6999BB8], v0);
  return swift_willThrow();
}

uint64_t sub_1D9912238@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1D992AE04();
  __swift_storeEnumTagSinglePayload(&v20[-v6], 1, 1, v7);
  v21 = &v20[-v6];
  v22 = a1;
  sub_1D9909A64();
  v8 = sub_1D992B994();
  if (!v2)
  {
    v23 = v20;
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x1EEE9AC00](v8);
    v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    MEMORY[0x1EEE9AC00](v13);
    sub_1D98D88C8(&v20[-v6], &v20[-v6]);
    if (__swift_getEnumTagSinglePayload(&v20[-v6], 1, v7) == 1)
    {
      sub_1D9912704(&v20[-v6]);
      v14 = sub_1D992B484();
      OUTLINED_FUNCTION_0_54();
      sub_1D991276C(v15, v16);
      swift_allocError();
      (*(*(v14 - 8) + 104))(v17, *MEMORY[0x1E6999BA8], v14);
      swift_willThrow();
    }

    else
    {
      v18 = *(v9 + 32);
      v18(v12, &v20[-v6], v7);
      v18(a2, v12, v7);
    }
  }

  return sub_1D9912704(&v20[-v6]);
}

BOOL sub_1D99124E0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 == 3)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
    v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v4 - 8);
    v7 = &v9 - v6;
    sub_1D992B9A4();
    sub_1D99127B4(v7, a2);
  }

  return v2 == 3;
}

uint64_t sub_1D9912704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D991276C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D99127B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9912824()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1D991831C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D99190F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1D9919844(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1D991AE8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1D991B450(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1D991B9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D991BF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D991C55C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_1D991CD50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_1D991D4E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1D9923438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D9923A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SiriAnalyticsLoggingInit()
{
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }
}

uint64_t __SiriAnalyticsLoggingInit_block_invoke()
{
  v0 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryXPC);
  v1 = SiriAnalyticsLogContextXPC;
  SiriAnalyticsLogContextXPC = v0;

  v2 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryUtility);
  v3 = SiriAnalyticsLogContextUtility;
  SiriAnalyticsLogContextUtility = v2;

  v4 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryAssistant);
  v5 = SiriAnalyticsLogContextAssistant;
  SiriAnalyticsLogContextAssistant = v4;

  v6 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryStreaming);
  v7 = SiriAnalyticsLogContextStreaming;
  SiriAnalyticsLogContextStreaming = v6;

  v8 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryStorage);
  v9 = SiriAnalyticsLogContextStorage;
  SiriAnalyticsLogContextStorage = v8;

  v10 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryTime);
  v11 = SiriAnalyticsLogContextTime;
  SiriAnalyticsLogContextTime = v10;

  v12 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryResolution);
  v13 = SiriAnalyticsLogContextResolution;
  SiriAnalyticsLogContextResolution = v12;

  v14 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryPerformance);
  v15 = SiriAnalyticsLogContextPerformance;
  SiriAnalyticsLogContextPerformance = v14;

  v16 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryMessageTailing);
  v17 = SiriAnalyticsLogContextMessageTailing;
  SiriAnalyticsLogContextMessageTailing = v16;

  v18 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategorySensitiveConditions);
  v19 = SiriAnalyticsLogContextSensitiveConditions;
  SiriAnalyticsLogContextSensitiveConditions = v18;

  v20 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryDB);
  v21 = SiriAnalyticsLogContextDB;
  SiriAnalyticsLogContextDB = v20;

  v22 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryMetastore);
  v23 = SiriAnalyticsLogContextMetastore;
  SiriAnalyticsLogContextMetastore = v22;

  v24 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryMessageStaging);
  v25 = SiriAnalyticsLogContextMessageStaging;
  SiriAnalyticsLogContextMessageStaging = v24;

  v26 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryPreprocessor);
  v27 = SiriAnalyticsLogContextPreprocessor;
  SiriAnalyticsLogContextPreprocessor = v26;

  v28 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryUnifiedBiomeStream);
  v29 = SiriAnalyticsLogContextUnifiedBiomeStream;
  SiriAnalyticsLogContextUnifiedBiomeStream = v28;

  v30 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryLargeUpload);
  v31 = SiriAnalyticsLogContextLargeUpload;
  SiriAnalyticsLogContextLargeUpload = v30;

  SiriAnalyticsLogContextOrchestrator = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryOrchestrator);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __Block_byref_object_copy__865(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SiriAnalyticsIsInternalInstall()
{
  if (SiriAnalyticsIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&SiriAnalyticsIsInternalInstall_onceToken, &__block_literal_global_884);
  }

  return SiriAnalyticsIsInternalInstall_isInternal;
}

uint64_t __SiriAnalyticsIsInternalInstall_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  SiriAnalyticsIsInternalInstall_isInternal = result;
  return result;
}