id _ICQGetLogSystem()
{
  if (_ICQGetLogSystem_onceToken != -1)
  {
    _ICQGetLogSystem_cold_1();
  }

  v1 = _ICQGetLogSystem_log;

  return v1;
}

id _ICQSignpostLogSystem()
{
  if (_ICQSignpostLogSystem_onceToken != -1)
  {
    _ICQSignpostLogSystem_cold_1();
  }

  v1 = _ICQSignpostLogSystem_log;

  return v1;
}

os_signpost_id_t _ICQSignpostCreateWithObject(NSObject *a1, const void *a2)
{
  v2 = os_signpost_id_make_with_pointer(a1, a2);
  mach_continuous_time();
  return v2;
}

uint64_t sub_275575024()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11iCloudQuota15ICQTaskLimiters_taskLimiters);
  *(v0 + 72) = v1;
  return MEMORY[0x2822009F8](sub_275575050, v1, 0);
}

uint64_t sub_275575050()
{
  v1 = v0[9];
  v0[10] = sub_275575888(v0[3], v0[4]);

  return MEMORY[0x2822009F8](sub_2755759B0, 0, 0);
}

unint64_t sub_2755750C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2755ECD7C();
  sub_2755EC9AC();
  v6 = sub_2755ECD9C();

  return sub_275575138(a1, a2, v6);
}

unint64_t sub_275575138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2755ECD0C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2755751F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = a6;
  v7[25] = v6;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v9 = sub_2755EC82C();
  v7[27] = v9;
  v10 = *(v9 - 8);
  v7[28] = v10;
  v11 = *(v10 + 64) + 15;
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_275575B64, v6, 0);
}

uint64_t sub_275575318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_27557645C(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_275576474(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_2755756C0(a1, &qword_2809F9D38, &qword_2755F3818);
    sub_2755786E4(a2, a3, v10);

    return sub_2755756C0(v10, &qword_2809F9D38, &qword_2755F3818);
  }

  return result;
}

uint64_t sub_2755753F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_275575414, 0, 0);
}

uint64_t sub_275575414()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_275578F68;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD000000000000033, 0x80000002755FA1D0, sub_2755768B8, v1, v5);
}

uint64_t sub_2755756C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t _ICQSignpostGetNanoseconds(uint64_t a1, uint64_t a2)
{
  if (_ICQSignpostGetNanoseconds_onceToken != -1)
  {
    _ICQSignpostGetNanoseconds_cold_1();
  }

  v3 = mach_continuous_time();
  LODWORD(v4) = _ICQSignpostGetNanoseconds_timebase_info;
  LODWORD(v5) = *algn_280C851AC;
  return (v4 / v5 * (v3 - a2));
}

uint64_t sub_275575784()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_27557726C;

  return sub_275575854(v9, v10, v11, v2, v3, v4, v5, v6);
}

uint64_t sub_275575854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_275575024, 0, 0);
}

uint64_t sub_275575888(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 112);
  if (*(v6 + 16) && (v7 = sub_2755750C0(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for TaskLimiter();
    v9 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v9 + 112) = MEMORY[0x277D84F98];
    swift_beginAccess();

    v10 = *(v3 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + 112);
    *(v3 + 112) = 0x8000000000000000;
    sub_2755D0824(v9, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + 112) = v13;
    swift_endAccess();
  }

  return v9;
}

uint64_t sub_2755759B0()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = swift_allocObject();
  v0[11] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(*v1 + 120);

  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_275579188;
  v8 = v0[10];
  v9 = v0[3];
  v10 = v0[4];

  return v12();
}

uint64_t sub_275575B2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275575B64()
{
  v104 = v0;
  v1 = v0[25];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = *(v1 + 112);

    v6 = sub_2755750C0(v4, v3);
    if (v7)
    {
      v8 = v0[24];
      sub_2755D0230(*(v2 + 56) + 40 * v6, (v0 + 2));

      sub_2755D0230((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D28, &qword_2755F3760);
      v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809F9F90, &qword_2755F3A50);
      sub_2755ECABC();
      if (swift_dynamicCast())
      {
        v10 = v0[32];
        v12 = v0[27];
        v11 = v0[28];
        v13 = v0[21];
        v14 = v0[18];
        v0[33] = v14;
        v15 = sub_2755763AC();
        (*(v11 + 16))(v10, v15, v12);

        v16 = sub_2755EC81C();
        v17 = sub_2755ECB0C();

        v18 = os_log_type_enabled(v16, v17);
        v19 = v0[32];
        v21 = v0[27];
        v20 = v0[28];
        if (v18)
        {
          v100 = v14;
          v23 = v0[20];
          v22 = v0[21];
          v24 = swift_slowAlloc();
          v97 = v19;
          v25 = swift_slowAlloc();
          v103[0] = v25;
          *v24 = 136315138;
          v26 = v22;
          v14 = v100;
          *(v24 + 4) = sub_2755CC688(v23, v26, v103);
          _os_log_impl(&dword_275572000, v16, v17, "TaskLimiter: reusing existing task for identifier %s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x277C7DA70](v25, -1, -1);
          MEMORY[0x277C7DA70](v24, -1, -1);

          (*(v20 + 8))(v97, v21);
        }

        else
        {

          (*(v20 + 8))(v19, v21);
        }

        v92 = *(MEMORY[0x277D857C8] + 4);
        v93 = swift_task_alloc();
        v0[34] = v93;
        *v93 = v0;
        v93[1] = sub_2755CFBA4;
        v87 = v0[24];
        v88 = v0[19];
        v89 = MEMORY[0x277D84950];
        v90 = v14;
        v91 = v9;
        goto LABEL_17;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  v27 = v0[31];
  v28 = v0[27];
  v29 = v0[28];
  v30 = v0[21];
  v31 = sub_2755763AC();
  v98 = *(v29 + 16);
  v101 = v31;
  v98(v27);

  v32 = sub_2755EC81C();
  v33 = sub_2755ECB0C();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v0[31];
  v37 = v0[27];
  v36 = v0[28];
  if (v34)
  {
    v39 = v0[20];
    v38 = v0[21];
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v103[0] = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_2755CC688(v39, v38, v103);
    _os_log_impl(&dword_275572000, v32, v33, "TaskLimiter: creating new task for identifier %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x277C7DA70](v41, -1, -1);
    MEMORY[0x277C7DA70](v40, -1, -1);
  }

  v96 = *(v36 + 8);
  v96(v35, v37);
  v42 = v0[30];
  v43 = v0[26];
  v44 = v0[27];
  v46 = v0[23];
  v45 = v0[24];
  v48 = v0[21];
  v47 = v0[22];
  v49 = sub_2755ECA9C();
  (*(*(v49 - 8) + 56))(v43, 1, 1, v49);
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v50[4] = v45;
  v50[5] = v47;
  v50[6] = v46;

  v51 = sub_2755CFE20(0, 0, v43, &unk_2755F3758, v50);
  v0[36] = v51;
  (v98)(v42, v101, v44);

  v52 = sub_2755EC81C();
  v53 = sub_2755ECB0C();

  v54 = os_log_type_enabled(v52, v53);
  v55 = v0[30];
  v57 = v0[27];
  v56 = v0[28];
  if (v54)
  {
    v58 = v51;
    v60 = v0[20];
    v59 = v0[21];
    v61 = swift_slowAlloc();
    v95 = v55;
    v62 = swift_slowAlloc();
    v103[0] = v62;
    *v61 = 136315138;
    v63 = v60;
    v51 = v58;
    *(v61 + 4) = sub_2755CC688(v63, v59, v103);
    _os_log_impl(&dword_275572000, v52, v53, "TaskLimiter: storing task for identifier %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x277C7DA70](v62, -1, -1);
    MEMORY[0x277C7DA70](v61, -1, -1);

    v64 = v95;
  }

  else
  {

    v64 = v55;
  }

  v96(v64, v57);
  v65 = v0[29];
  v66 = v0[27];
  v67 = v0[24];
  v68 = v0[20];
  v69 = v0[21];
  v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809F9F90, &qword_2755F3A50);
  v103[3] = sub_2755ECABC();
  v103[4] = &off_288430840;
  v103[0] = v51;
  swift_beginAccess();

  sub_275575318(v103, v68, v69);
  swift_endAccess();
  (v98)(v65, v101, v66);

  v71 = sub_2755EC81C();
  v72 = sub_2755ECB0C();

  v73 = os_log_type_enabled(v71, v72);
  v75 = v0[28];
  v74 = v0[29];
  v76 = v0[27];
  if (v73)
  {
    v99 = v0[29];
    v77 = v51;
    v79 = v0[20];
    v78 = v0[21];
    v80 = swift_slowAlloc();
    v102 = v70;
    v103[0] = swift_slowAlloc();
    v81 = v103[0];
    *v80 = 136315138;
    v82 = v79;
    v51 = v77;
    *(v80 + 4) = sub_2755CC688(v82, v78, v103);
    _os_log_impl(&dword_275572000, v71, v72, "TaskLimiter: performing task operation for identifier %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);
    v83 = v81;
    v70 = v102;
    MEMORY[0x277C7DA70](v83, -1, -1);
    MEMORY[0x277C7DA70](v80, -1, -1);

    v84 = v99;
  }

  else
  {

    v84 = v74;
  }

  v96(v84, v76);
  v85 = *(MEMORY[0x277D857C8] + 4);
  v86 = swift_task_alloc();
  v0[37] = v86;
  *v86 = v0;
  v86[1] = sub_2755781D4;
  v87 = v0[24];
  v88 = v0[19];
  v89 = MEMORY[0x277D84950];
  v90 = v51;
  v91 = v70;
LABEL_17:

  return MEMORY[0x282200430](v88, v90, v87, v91, v89);
}

uint64_t sub_27557636C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2755763D0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_2755EC82C();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_27557645C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_275576474(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2755750C0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2755D09C4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2755D02B8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2755750C0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2755ECD2C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_27557645C(a1, v23);
  }

  else
  {
    sub_2755765C8(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_2755765C8(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_27557645C(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_275576638(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27557726C;

  return sub_275576714(a1, v4, v5, v7);
}

uint64_t sub_275576714(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_27557726C;

  return v9(a1);
}

uint64_t sub_27557680C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_275577558;

  return sub_2755753F0(a1, v5, v4);
}

uint64_t sub_2755768C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_275578EB8;
  v7[3] = &block_descriptor_0;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275576ADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_2755ECA9C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = a1;

  sub_2755CEE70(0, 0, v7, &unk_2755F3CB8, v9);
}

uint64_t sub_275576BF4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275576C48(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_275577614;

  return v7(a1);
}

uint64_t sub_275576D40()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_275577558;

  return sub_275576DD8(v4, v5, v6, v2, v3);
}

uint64_t sub_275576DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = (*a4 + 160) & 0xFFFFFFFFFFFFLL | 0x654F000000000000;
  v5[4] = *(*a4 + 160);
  v5[5] = v6;
  return MEMORY[0x2822009F8](sub_275576E14, a4, 0);
}

uint64_t sub_275576E14()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  (*(v0 + 32))();

  return MEMORY[0x2822009F8](sub_27557720C, 0, 0);
}

uint64_t sub_275576E80()
{
  v1 = v0;
  v2 = sub_2755EC82C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[17];
  v8 = v0[18];
  __swift_project_boxed_opaque_existential_0(v0 + 14, v7);
  v9 = (*(v8 + 8))(0xD000000000000013, 0x80000002755FA570, v7, v8);
  if (v9 && (v10 = sub_2755D9084(v9), , v10))
  {
    v11 = 1 << *(v10 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v10 + 64);
    v14 = (v11 + 63) >> 6;

    for (i = 0; v13; result = sub_2755DD284(v28))
    {
      v17 = i;
LABEL_11:
      v18 = (*(v10 + 56) + ((v17 << 10) | (16 * __clz(__rbit64(v13)))));
      v20 = *v18;
      v19 = v18[1];
      v13 &= v13 - 1;
      v28[0] = v20;
      v28[1] = v19;
    }

    while (1)
    {
      v17 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v25 = v1[17];
        v26 = v1[18];
        __swift_project_boxed_opaque_existential_0(v1 + 14, v25);
        return (*(v26 + 24))(0xD000000000000013, 0x80000002755FA570, v25, v26);
      }

      v13 = *(v10 + 64 + 8 * v17);
      ++i;
      if (v13)
      {
        i = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = sub_2755763AC();
    (*(v3 + 16))(v6, v21, v2);
    v22 = sub_2755EC81C();
    v23 = sub_2755ECB0C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_275572000, v22, v23, "No cached LiftUI data to discard", v24, 2u);
      MEMORY[0x277C7DA70](v24, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_275577184()
{
  v1 = *v0;
  v2 = sub_2755EC95C();
  v3 = [v1 dictionaryForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_2755EC90C();

  return v4;
}

uint64_t sub_27557720C()
{
  v1 = *(v0 + 24);
  MEMORY[0x277C7C7E0]();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27557726C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_275577514()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27557755C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_275577558;

  return sub_275576C48(a1, v5);
}

uint64_t sub_275577614()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_275577754()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_27557726C;

  return sub_275577824(v9, v10, v11, v2, v3, v4, v5, v6);
}

uint64_t sub_275577824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = v10;
  v8[30] = v11;
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[24] = a4;
  return MEMORY[0x2822009F8](sub_275577858, 0, 0);
}

uint64_t sub_275577858()
{
  v1 = *(*(v0 + 192) + OBJC_IVAR____TtC11iCloudQuota15ICQTaskLimiters_taskLimiters);
  *(v0 + 248) = v1;
  return MEMORY[0x2822009F8](sub_275577884, v1, 0);
}

uint64_t sub_275577884()
{
  v1 = v0[31];
  v0[32] = sub_275575888(v0[25], v0[26]);

  return MEMORY[0x2822009F8](sub_2755778F4, 0, 0);
}

uint64_t sub_2755778F4()
{
  v1 = v0[32];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[24];
  v5 = swift_allocObject();
  v0[33] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v6 = *(*v1 + 120);
  v7 = v4;

  v15 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[34] = v9;
  *v9 = v0;
  v9[1] = sub_2755785C8;
  v10 = v0[32];
  v11 = v0[25];
  v12 = v0[26];
  v13 = MEMORY[0x277D84F70] + 8;

  return (v15)(v0 + 12, v11, v12, &unk_2755F3728, v5, v13);
}

uint64_t sub_275577A84()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275577AC4(uint64_t a1)
{
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_275577558;

  return sub_275577B70(a1, v6, v5, v4);
}

uint64_t sub_275577B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_275577B94, 0, 0);
}

uint64_t sub_275577B94()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_275578034;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D84F70] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x286D726F66726570, 0xEE00293A6B736174, sub_275577C90, v1, v5);
}

uint64_t sub_275577CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_275577D74;
  v7[3] = &block_descriptor_32;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t sub_275577D74(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a2;
    sub_275578D44(&v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v11, a3);

  return sub_2755756C0(v11, &qword_2809F9CF8, &qword_2755F3F10);
}

uint64_t sub_275577E24(uint64_t a1, void *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D20, qword_2755F3738) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  if (a2)
  {
    *&v10[0] = a2;
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D20, qword_2755F3738);
    return sub_2755ECA6C();
  }

  else
  {
    sub_275578CDC(a1, &v8, &qword_2809F9CF8, &qword_2755F3F10);
    if (v9)
    {
      sub_275578D44(&v8, v10);
      sub_2755CDA88(v10, &v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D20, qword_2755F3738);
      sub_2755ECA7C();
      return __swift_destroy_boxed_opaque_existential_0(v10);
    }

    else
    {
      return sub_2755756C0(&v8, &qword_2809F9CF8, &qword_2755F3F10);
    }
  }
}

uint64_t objectdestroy_41Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_275578034()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_275578170, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_275578170()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_2755781D4()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = sub_275578300;
  }

  else
  {
    v6 = sub_27557907C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_275578300()
{
  v1 = v0[36];
  v2 = v0[25];
  v4 = v0[20];
  v3 = v0[21];

  sub_2755783BC(v4, v3);
  v5 = v0[38];
  v7 = v0[31];
  v6 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[26];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2755783BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2755EC82C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v9 = sub_2755763AC();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2755EC81C();
  v11 = sub_2755ECB0C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v16[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2755CC688(a1, a2, v16);
    _os_log_impl(&dword_275572000, v10, v11, "TaskLimiter: cleaning up task for identifier %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x277C7DA70](v13, -1, -1);
    MEMORY[0x277C7DA70](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  swift_beginAccess();

  sub_275575318(v16, a1, a2);
  return swift_endAccess();
}

uint64_t sub_2755785C8()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_275578790;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_2755CECF4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

double sub_2755786E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2755750C0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2755D09C4();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_27557645C((*(v12 + 56) + 40 * v9), a3);
    sub_2755789F0(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_275578790()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);

  v3 = sub_2755EC4FC();
  v4 = [v3 domain];
  if (!v4)
  {
    sub_2755EC98C();
    v4 = sub_2755EC95C();
  }

  v21 = *(v0 + 256);
  v22 = *(v0 + 280);
  v5 = *(v0 + 240);
  v6 = [v3 code];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D08, &unk_2755F3CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2755F3680;
  v8 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2755EC98C();
  *(inited + 40) = v9;
  v10 = [v3 localizedDescription];
  v11 = sub_2755EC98C();
  v13 = v12;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v11;
  *(inited + 56) = v13;
  sub_275578BAC(inited);
  swift_setDeallocating();
  sub_2755756C0(inited + 32, &qword_2809F9D10, &qword_2755F3730);
  v14 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v15 = sub_2755EC8FC();

  v16 = [v14 initWithDomain:v4 code:v6 userInfo:v15];

  *(v0 + 144) = 0u;
  *(v0 + 128) = 0u;
  v17 = v16;
  v20(v0 + 128, v16);

  sub_2755756C0(v0 + 128, &qword_2809F9CF8, &qword_2755F3F10);
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2755789F0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2755ECBDC() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_2755ECD7C();

      sub_2755EC9AC();
      v15 = sub_2755ECD9C();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_275578BAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D18, &qword_2755F3D00);
    v3 = sub_2755ECC6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_275578CDC(v4, &v13, &qword_2809F9D10, &qword_2755F3730);
      v5 = v13;
      v6 = v14;
      result = sub_2755750C0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_275578D44(&v15, (v3[7] + 32 * result));
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

uint64_t sub_275578CDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_275578D44(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_275578D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_275578CDC(a1, v13, &qword_2809F9CF8, &qword_2755F3F10);
  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = sub_2755ECCFC();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  (*(a3 + 16))(a3, v11, a2);
  return swift_unknownObjectRelease();
}

uint64_t sub_275578EB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_275578EFC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D00, &qword_2755F3708) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_2755ECA7C();
}

uint64_t sub_275578F68()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_27557907C()
{
  v1 = v0[36];
  v2 = v0[25];
  v4 = v0[20];
  v3 = v0[21];

  sub_2755783BC(v4, v3);
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[26];

  v10 = v0[1];

  return v10();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_275579188()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_2755CF468;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_2755792A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2755792A4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  (*(v0 + 56))();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_275579398()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2755793D0()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275579418()
{
  v1 = *(v0 + 32);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2755794B8()
{
  v1 = sub_2755EC58C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275579584()
{
  v1 = sub_2755EC58C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_27557965C()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2755796A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2755796E0()
{
  v1 = sub_2755EC58C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2755797D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2755EC61C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_275579850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2755EC61C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_2755798CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275579904()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id _ICQAlertSpecificationForServerDict(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"alertInfo"];
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = objc_opt_new();
      [v2 setServerDict:v1];
      goto LABEL_9;
    }

    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v1;
      _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "alertInfo: expected NSDictionary, got %@", &v6, 0xCu);
    }
  }

  else
  {
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      _ICQAlertSpecificationForServerDict_cold_1(v3);
    }
  }

  v2 = 0;
LABEL_9:

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

__CFString *_ICQStringForAction(uint64_t a1)
{
  v1 = @"ICQActionNone";
  if (a1 <= 5)
  {
    v3 = @"ICQActionPresentPurchaseFlow";
    v4 = @"ICQActionPurchaseBuy";
    v5 = @"ICQActionPurchaseComplete";
    if (a1 != 5)
    {
      v5 = @"ICQActionNone";
    }

    if (a1 != 4)
    {
      v4 = v5;
    }

    if (a1 != 3)
    {
      v3 = v4;
    }

    if (a1 == 2)
    {
      v1 = @"ICQActionRejectOffer";
    }

    if (a1 == 1)
    {
      v1 = @"ICQActionDismiss";
    }

    if (a1 <= 2)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    switch(a1)
    {
      case 'd':
        result = @"ICQActionPresentManageStorage";
        break;
      case 'e':
        result = @"ICQActionCancel";
        break;
      case 'f':
        result = @"ICQActionShowInlineAlert";
        break;
      case 'g':
        result = @"ICQActionOpenPaymentUpdate";
        break;
      case 'h':
        result = @"ICQActionOpenCloudBackup";
        break;
      case 'i':
        result = @"ICQActionCloudUpgrade";
        break;
      case 'j':
        result = @"ICQActionPhotosOptimize";
        break;
      case 'k':
        result = @"ICQActionPhotosCloudEnable";
        break;
      case 'l':
        result = @"ICQActionPhotosCloudUpgradeEnable";
        break;
      case 'm':
        result = @"ICQActionFamilySetup";
        break;
      case 'n':
        result = @"ICQActionFamilyUsageWithRUI";
        break;
      case 'o':
        result = @"ICQActionStartFamilySharing";
        break;
      case 'p':
        result = @"ICQActionLaunchRemoteUI";
        break;
      case 'q':
        result = @"ICQActionLaunchJITAppKitUI";
        break;
      case 'r':
        result = @"ICQActionLaunchAMSDynamicUI";
        break;
      case 's':
        result = @"ICQActionLaunchLiftUI";
        break;
      case 't':
        result = @"ICQActionCloudUpgradeOslo";
        break;
      case 'u':
        result = @"ICQActionPhotosCloudUpgradeEnableOslo";
        break;
      case 'v':
        result = @"ICQActionDirectToOslo";
        break;
      case 'w':
        result = @"ICQActionLaunchLegacyPurchase";
        break;
      case 'x':
        result = @"ICQActionLaunchUpgradeFlowWithRUI";
        break;
      case 'y':
        result = @"ICQActionLaunchUpgradeFlowWithLiftUI";
        break;
      case 'z':
        result = @"ICQActionLaunchAppleOne";
        break;
      case '{':
        result = @"ICQActionHTTPCall";
        break;
      case '|':
        result = @"ICQActionHTTPGETCall";
        break;
      case '}':
        result = @"ICQActionDismissBanner";
        break;
      case '~':
        result = @"ICQActionLaunchNativeView";
        break;
      case '\x7F':
        result = @"ICQActionUpgradeOslo";
        break;
      default:
        if (a1 == 7)
        {
          v1 = @"ICQActionDriveAllowUnlimitedCellular";
        }

        if (a1 == 6)
        {
          result = @"ICQActionOpenURL";
        }

        else
        {
          result = v1;
        }

        break;
    }
  }

  return result;
}

uint64_t _ICQActionForString(void *a1)
{
  v1 = a1;
  if (_ICQActionForString_onceToken != -1)
  {
    _ICQActionForString_cold_1();
  }

  v2 = [_ICQActionForString_sActionForString objectForKeyedSubscript:v1];
  if (!v2)
  {
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _ICQActionForString_cold_2(v1, v3);
    }

    v2 = &unk_2884432F8;
  }

  v4 = [v2 integerValue];

  return v4;
}

void sub_27557C284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  objc_destroyWeak((v30 + 104));
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v31 - 184), 8);
  _Block_object_dispose((v31 - 152), 8);
  objc_destroyWeak((v31 - 104));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t ___isWAPIDevice_block_invoke()
{
  result = MGGetBoolAnswer();
  _isWAPIDevice_sIsWAPIDevice = result;
  return result;
}

uint64_t ICQUsedDiskSpaceForVolume(void *a1)
{
  v5[2] = 0;
  memset(v6, 0, 12);
  v5[0] = 5;
  v5[1] = 2155872256;
  v1 = getattrlist([a1 fileSystemRepresentation], v5, v6, 0xCuLL, 0);
  if (!v1)
  {
    return *(v6 + 4);
  }

  v2 = v1;
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ICQUsedDiskSpaceForVolume_cold_1(v2, v3);
  }

  return 0;
}

void sub_27557F398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id _ICQUpgradeNowSampleLink()
{
  if (_ICQUpgradeNowSampleLink_onceToken != -1)
  {
    _ICQUpgradeNowSampleLink_cold_1();
  }

  v1 = _ICQUpgradeNowSampleLink_sUpgradeNowSampleLink;

  return v1;
}

Class __getINDaemonConnectionClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __iCloudNotificationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27A651A08;
    v7 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void ICQOpenURL(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v2 openSensitiveURL:v1 withOptions:0];
  }

  else
  {
    v2 = _ICQGetLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      if (v1)
      {
        v3 = objc_opt_class();
        v4 = NSStringFromClass(v3);
      }

      else
      {
        v4 = @"Nil";
      }

      v6 = 138412546;
      v7 = v1;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_275572000, v2, OS_LOG_TYPE_DEFAULT, "attempt to open URL %@ of class %@", &v6, 0x16u);
      if (v1)
      {
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void _ICQOpenPurchaseFlowInSettings()
{
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/STORAGE_AND_BACKUP/STORAGE_UPGRADE"];
  ICQOpenURL(v0);
}

void _ICQOpenManageStorageInSettings()
{
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/STORAGE_AND_BACKUP/MANAGE_STORAGE"];
  ICQOpenURL(v0);
}

void _ICQOpenFamilySetupInSettings()
{
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&aaaction=setupFamily&clientAppContext=iCloudStorage"];
  ICQOpenURL(v0);
}

void _ICQOpenPrimaryPaymentInSettings()
{
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=PAYMENT_AND_SHIPPING/PRIMARY_PAYMENT"];
  ICQOpenURL(v0);
}

void _ICQOpenCloudBackupInSettings()
{
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/BACKUP"];
  ICQOpenURL(v0);
}

void __AlertSpecificationSampleForAlmostFullLevel_block_invoke()
{
  v0 = objc_opt_new();
  [v0 setTitle:@"Add iCloud Storage"];
  [v0 setMessage:{@"You are using 4.6 GB of your 5 GB iCloud storage. Add more storage to keep using iCloud Photo Library, iCloud Mail, and Backup."}];
  v1 = MEMORY[0x277CBEC10];
  v5 = [ICQLink linkWithText:@"Add iCloud Storage" action:3 parameters:MEMORY[0x277CBEC10]];
  v2 = [ICQLink linkWithText:@"Manage Storage" action:100 parameters:v1];
  v3 = [ICQLink linkWithText:@"Not Now" action:2 parameters:v1];
  [v0 setLink:v5 forButtonIndex:1];
  [v0 setLink:v2 forButtonIndex:2];
  [v0 setLink:v3 forButtonIndex:3];
  [v0 setDefaultButtonIndex:1];
  v4 = AlertSpecificationSampleForAlmostFullLevel_sAlertSpecification;
  AlertSpecificationSampleForAlmostFullLevel_sAlertSpecification = v0;
}

void __AlertSpecificationSampleForFullLevel_block_invoke()
{
  v0 = objc_opt_new();
  [v0 setTitle:@"iCloud Storage is Full"];
  [v0 setMessage:{@"iCloud Photo Library, iCloud Mail, and Backup are no longer updating. Add more storage to keep using iCloud.\n[ENG: LOCAL SAMPLE UI]"}];
  v1 = MEMORY[0x277CBEC10];
  v5 = [ICQLink linkWithText:@"Add iCloud Storage" action:3 parameters:MEMORY[0x277CBEC10]];
  v2 = [ICQLink linkWithText:@"Manage Storage" action:100 parameters:v1];
  v3 = [ICQLink linkWithText:@"Not Now" action:2 parameters:v1];
  [v0 setLink:v5 forButtonIndex:1];
  [v0 setLink:v2 forButtonIndex:2];
  [v0 setLink:v3 forButtonIndex:3];
  [v0 setDefaultButtonIndex:1];
  v4 = AlertSpecificationSampleForFullLevel_sAlertSpecification;
  AlertSpecificationSampleForFullLevel_sAlertSpecification = v0;
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

id getINDaemonConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getINDaemonConnectionClass_softClass_0;
  v7 = getINDaemonConnectionClass_softClass_0;
  if (!getINDaemonConnectionClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getINDaemonConnectionClass_block_invoke_0;
    v3[3] = &unk_27A6517A8;
    v3[4] = &v4;
    __getINDaemonConnectionClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_27558B870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27558BDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27558D15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _handlePushReceivedDarwinNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___handlePushReceivedDarwinNotification_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

Class __getINDaemonConnectionClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __iCloudNotificationLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27A651DD8;
    v7 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void ___handlePushReceivedDarwinNotification_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  v2 = *(a1 + 32);
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *v1;
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "received push received darwin notification %@", &v15, 0xCu);
  }

  if ([v2 isEqualToString:@"ICQDaemonOfferChangedDueToPushDarwinNotificationRegular"])
  {
    v5 = +[ICQOfferManager sharedOfferManager];
    v6 = v5;
    v7 = 3;
LABEL_9:
    [v5 _handlePushReceivedDarwinNotificationRequestType:v7];
    goto LABEL_10;
  }

  if ([v2 isEqualToString:@"ICQDaemonOfferChangedDueToPushDarwinNotificationPremium"])
  {
    v5 = +[ICQOfferManager sharedOfferManager];
    v6 = v5;
    v7 = 2;
    goto LABEL_9;
  }

  if ([v2 isEqualToString:@"ICQDaemonOfferChangedDueToPushDarwinNotificationDefault"])
  {
    v5 = +[ICQOfferManager sharedOfferManager];
    v6 = v5;
    v7 = 1;
    goto LABEL_9;
  }

  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    ___handlePushReceivedDarwinNotification_block_invoke_cold_1(v1, v6, v9, v10, v11, v12, v13, v14);
  }

LABEL_10:

  v8 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_27558FD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27559071C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _ICQModelSpecificLocalizedStringKeyForKey(void *a1)
{
  v1 = a1;
  v2 = MGCopyAnswer();
  v3 = [v2 uppercaseString];
  v4 = [v3 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  if ([v4 hasSuffix:@"_SIMULATOR"])
  {
    v5 = [v4 substringToIndex:{objc_msgSend(v4, "rangeOfString:", @"_SIMULATOR"}];

    v4 = v5;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v1, v4];

  return v6;
}

void sub_2755933F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2755964EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2755982A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27559913C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

Class __getCKContainerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CloudKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27A6526F0;
    v7 = 0;
    CloudKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CloudKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CKContainer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKContainerClass_block_invoke_cold_1();
  }

  getCKContainerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CloudKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

__CFString *_ICQStringForOfferType(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"ICQOfferTypeUnknown";
  }

  else
  {
    return off_27A652870[a1 - 1];
  }
}

uint64_t _ICQOfferTypeForString(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (_ICQOfferTypeForString_onceToken != -1)
  {
    _ICQOfferTypeForString_cold_1();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if (!v1)
  {
    goto LABEL_10;
  }

LABEL_3:
  v3 = [_ICQOfferTypeForString_sOfferTypeForString objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v2;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "_ICQOfferTypeForString - illegal offer type %@", &v9, 0xCu);
    }

    v5 = 0;
  }

LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t _ICQOfferTypeForServerString(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (_ICQOfferTypeForServerString_onceToken != -1)
  {
    _ICQOfferTypeForServerString_cold_1();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if (!v1)
  {
    goto LABEL_10;
  }

LABEL_3:
  v3 = [_ICQOfferTypeForServerString_sOfferTypeForServerString objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v2;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "_ICQOfferTypeForServerString - illegal server offer type %@", &v9, 0xCu);
    }

    v5 = 0;
  }

LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t _ICQIntegerFromDictionaryKey(void *a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = a1;
  v8 = [v5 numberWithInteger:a3];
  objc_opt_class();
  v9 = _ICQObjectForKey(v7, v6, v8);

  v10 = [v9 integerValue];
  return v10;
}

id _ICQObjectForKey(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1 objectForKey:v5];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
    if (v7)
    {
      v9 = _ICQGetLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412546;
        v13 = v5;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "persisted offer(s) bad %@: %@", &v12, 0x16u);
      }

      v8 = v6;
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

id _ICQStringFromDictionaryKey(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  objc_opt_class();
  v8 = _ICQObjectForKey(v7, v6, v5);

  return v8;
}

uint64_t _ICQLevelForString(void *a1)
{
  v1 = a1;
  if (_ICQLevelForString_onceToken != -1)
  {
    _ICQLevelForString_cold_1();
  }

  v2 = [_ICQLevelForString_sLevelForString objectForKeyedSubscript:v1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *_ICQStringForLevel(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"None";
  }

  else
  {
    return off_27A652908[a1 - 1];
  }
}

void sub_2755A7764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2755A9710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ICQCreateErrorWithMessage(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.quota" code:a1 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void sub_2755AB410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2755AB810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2755ABC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPLIsCPLDataclassEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoLibraryServicesLibrary();
  result = dlsym(v2, "PLIsCPLDataclassEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLIsCPLDataclassEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PhotoLibraryServicesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PhotoLibraryServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PhotoLibraryServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A652BB8;
    v6 = 0;
    PhotoLibraryServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PhotoLibraryServicesLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!PhotoLibraryServicesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __PhotoLibraryServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PhotoLibraryServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getPLCPLHasBeenEnabledForCurrentAccountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoLibraryServicesLibrary();
  result = dlsym(v2, "PLCPLHasBeenEnabledForCurrentAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLCPLHasBeenEnabledForCurrentAccountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPLCloudPhotoLibraryKeepOriginalsIsEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoLibraryServicesLibrary();
  result = dlsym(v2, "PLCloudPhotoLibraryKeepOriginalsIsEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLCloudPhotoLibraryKeepOriginalsIsEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPLPhotoLibraryClass_block_invoke(uint64_t a1)
{
  PhotoLibraryServicesLibrary();
  result = objc_getClass("PLPhotoLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPLPhotoLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPLPhotoLibraryClass_block_invoke_cold_1();
    return [(ICQBackupInfo *)v3 description];
  }

  return result;
}

id getINDaemonConnectionClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getINDaemonConnectionClass_softClass_1;
  v7 = getINDaemonConnectionClass_softClass_1;
  if (!getINDaemonConnectionClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getINDaemonConnectionClass_block_invoke_1;
    v3[3] = &unk_27A6517A8;
    v3[4] = &v4;
    __getINDaemonConnectionClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2755AE498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINDaemonConnectionClass_block_invoke_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __iCloudNotificationLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27A652CD0;
    v7 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v5[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary_1)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int16 *OUTLINED_FUNCTION_5_0@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

id _ICQServerDictionaryForBundleIdentifier(void *a1, void *a2, void *a3, int a4)
{
  v95 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v69 = a2;
  v70 = a3;
  if (![v69 isEqualToString:@"__WILDCARD__"])
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v67 = v7;
    v20 = v7;
    v21 = [v20 countByEnumeratingWithState:&v75 objects:v88 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v76;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v76 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v75 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v25)
            {
              v53 = _ICQGetLogSystem();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                v54 = objc_opt_class();
                Name = class_getName(v54);
                *buf = 136315394;
                v91 = Name;
                v92 = 2112;
                v93 = v25;
                _os_log_impl(&dword_275572000, v53, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
              }
            }

            v52 = 0;
LABEL_64:

LABEL_73:
            v32 = v69;
            v7 = v67;
            goto LABEL_90;
          }

          v26 = [v25 objectForKeyedSubscript:@"appId"];
          v27 = [v26 isEqualToString:v69];

          if (v27)
          {
            if (!v70 || ([v25 objectForKeyedSubscript:@"reason"], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "isEqualToString:", v70), v28, v29))
            {
              v52 = v25;
              goto LABEL_64;
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v75 objects:v88 count:16];
      }

      while (v22);
    }

    v30 = _ICQGetLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v91 = v69;
      _os_log_impl(&dword_275572000, v30, OS_LOG_TYPE_DEFAULT, "app specific spec for %@ not found in appId array; using workaround", buf, 0xCu);
    }

    v31 = _ICQGetLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      _ICQServerDictionaryForBundleIdentifier_cold_1();
    }

    v32 = _ICQContainerIDForKnownBundleID(v69);
    if (!v32)
    {
      v32 = _ICQBundleIDForKnownContainerID(v69);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v33 = v20;
    v34 = [v33 countByEnumeratingWithState:&v71 objects:v87 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v72;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v72 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v71 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v38)
            {
              v62 = _ICQGetLogSystem();
              v7 = v67;
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                v63 = objc_opt_class();
                v64 = class_getName(v63);
                *buf = 136315394;
                v91 = v64;
                v92 = 2112;
                v93 = v38;
                _os_log_impl(&dword_275572000, v62, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
              }

              v52 = 0;
              goto LABEL_86;
            }

LABEL_84:
            v52 = 0;
LABEL_85:
            v7 = v67;
LABEL_86:

            goto LABEL_90;
          }

          v39 = [v38 objectForKeyedSubscript:@"appId"];
          v40 = [v39 isEqualToString:v32];

          if (!v40)
          {
            if (![v32 isEqualToString:@"com.apple.icloud.docs"])
            {
              continue;
            }

            v41 = [v38 objectForKeyedSubscript:@"appId"];
            v42 = [v41 isEqualToString:@"com.apple.icloud.drive"];

            if (!v42)
            {
              continue;
            }
          }

          v52 = v38;
          goto LABEL_85;
        }

        v35 = [v33 countByEnumeratingWithState:&v71 objects:v87 count:16];
      }

      while (v35);
    }

    v33 = _ICQGetLogSystem();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v33, OS_LOG_TYPE_DEFAULT, "app specific spec still not found using workaround", buf, 2u);
    }

    goto LABEL_84;
  }

  if (a4)
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v83 objects:v94 count:16];
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = v8;
    v10 = *v84;
    v67 = v7;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v84 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v83 + 1) + 8 * v11);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v13 = [v12 objectForKeyedSubscript:@"mesg"];
      v14 = [v13 objectForKeyedSubscript:@"format"];
      v15 = [v14 isEqualToString:@"%@"];

      if (v15)
      {
        v52 = v12;
LABEL_72:

        goto LABEL_73;
      }

      if (v9 == ++v11)
      {
        v9 = [obj countByEnumeratingWithState:&v83 objects:v94 count:16];
        v7 = v67;
        if (v9)
        {
          goto LABEL_5;
        }

LABEL_12:

        v16 = _ICQGetLogSystem();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v17 = "warning: missing appBannerInfo that could be considered a button";
          v18 = v16;
          v19 = 2;
          goto LABEL_56;
        }

        goto LABEL_57;
      }
    }

    if (v12)
    {
      v56 = _ICQGetLogSystem();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = objc_opt_class();
        v58 = class_getName(v57);
        *buf = 136315394;
        v91 = v58;
        v92 = 2112;
        v93 = v12;
        _os_log_impl(&dword_275572000, v56, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
      }
    }

    v52 = 0;
    goto LABEL_72;
  }

  if (!v70)
  {
    v52 = [v7 firstObject];
    goto LABEL_89;
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v43 = v7;
  v44 = [v43 countByEnumeratingWithState:&v79 objects:v89 count:16];
  if (!v44)
  {
    goto LABEL_54;
  }

  v45 = v44;
  v46 = *v80;
  while (2)
  {
    v47 = v7;
    for (k = 0; k != v45; ++k)
    {
      if (*v80 != v46)
      {
        objc_enumerationMutation(v43);
      }

      v49 = *(*(&v79 + 1) + 8 * k);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = v47;
        if (v49)
        {
          v59 = _ICQGetLogSystem();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v60 = objc_opt_class();
            v61 = class_getName(v60);
            *buf = 136315394;
            v91 = v61;
            v92 = 2112;
            v93 = v49;
            _os_log_impl(&dword_275572000, v59, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", buf, 0x16u);
          }
        }

        v52 = 0;
        goto LABEL_88;
      }

      v50 = [v49 objectForKeyedSubscript:@"reason"];
      v51 = [v50 isEqualToString:v70];

      if (v51)
      {
        v52 = v49;
        v7 = v47;
LABEL_88:

        goto LABEL_89;
      }
    }

    v45 = [v43 countByEnumeratingWithState:&v79 objects:v89 count:16];
    v7 = v47;
    if (v45)
    {
      continue;
    }

    break;
  }

LABEL_54:

  v16 = _ICQGetLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v91 = v70;
    v17 = "warning: missing appBannerInfo for reason %@";
    v18 = v16;
    v19 = 12;
LABEL_56:
    _os_log_impl(&dword_275572000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
  }

LABEL_57:

  v52 = 0;
LABEL_89:
  v32 = v69;
LABEL_90:

  v65 = *MEMORY[0x277D85DE8];

  return v52;
}

_ICQBannerSpecification *_ICQBubbleBannerSpecificationForServerDict(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 objectForKeyedSubscript:@"bubbleBannerInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = _ICQServerDictionaryForBundleIdentifier(v4, v3, 0, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[_ICQBannerSpecification alloc] initWithDetailBannerInfo:v5 source:@"ICQBannerSourceBubbleBannerInfo"];
LABEL_12:

      goto LABEL_13;
    }

    if (v5)
    {
      v8 = _ICQGetLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v12 = 136315394;
        Name = class_getName(v9);
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v12, 0x16u);
      }
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v12 = 136315394;
      Name = class_getName(v7);
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v12, 0x16u);
    }

    goto LABEL_11;
  }

  v6 = 0;
LABEL_13:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

_ICQBannerSpecification *_ICQDetailBannerSpecificationForServerDict(void *a1, void *a2, char a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = _ICQBubbleBannerSpecificationForServerDict(v5, v6);
  v8 = v7;
  if (v7 && (a3 & 1) == 0)
  {
    v9 = v7;
    goto LABEL_32;
  }

  v10 = [v5 objectForKeyedSubscript:@"detailAppBannerInfo"];
  if (!v10)
  {
    v11 = v6;
    v12 = v5;
    if ([v11 isEqualToString:@"com.apple.icq"])
    {
      v13 = @"universalLinkInfo";
    }

    else
    {
      v13 = @"appBannerInfo";
    }

    v14 = [v12 objectForKeyedSubscript:v13];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = _ICQServerDictionaryForBundleIdentifier(v14, v11, 0, 0);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [[_ICQBannerSpecification alloc] initWithServerDictionary:v15];
LABEL_29:

LABEL_30:
        goto LABEL_31;
      }

      if (v15)
      {
        v20 = _ICQGetLogSystem();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = objc_opt_class();
          v24 = 136315394;
          Name = class_getName(v21);
          v26 = 2112;
          v27 = v15;
          _os_log_impl(&dword_275572000, v20, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v24, 0x16u);
        }
      }
    }

    else
    {
      if (!v14)
      {
        v9 = 0;
        goto LABEL_30;
      }

      v15 = _ICQGetLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v24 = 136315394;
        Name = class_getName(v17);
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v24, 0x16u);
      }
    }

    v9 = 0;
    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v24 = 136315394;
      Name = class_getName(v16);
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v24, 0x16u);
    }

    goto LABEL_23;
  }

  v11 = _ICQServerDictionaryForBundleIdentifier(v10, v6, 0, 0);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v11)
    {
      v18 = _ICQGetLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v24 = 136315394;
        Name = class_getName(v19);
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_275572000, v18, OS_LOG_TYPE_DEFAULT, "GUARD_OBJECT_CLASS: expected %s, got %@", &v24, 0x16u);
      }
    }

LABEL_23:
    v9 = 0;
    goto LABEL_31;
  }

  v9 = [[_ICQBannerSpecification alloc] initWithDetailBannerInfo:v11 source:@"ICQBannerSourceDetailAppBannerInfo"];
LABEL_31:

LABEL_32:
  v22 = *MEMORY[0x277D85DE8];

  return v9;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_2755B6CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2755B882C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2755BADBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _ICQDoesCriterionValueEqualBOOL(void *a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 BOOLValue] ^ a2 ^ 1;
  }

  else
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "criterion: expected BOOL value, got %@", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

void *__getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __SetupAssistantLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_27A652E70;
    v8 = 0;
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = SetupAssistantLibraryCore_frameworkLibrary;
    if (SetupAssistantLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SetupAssistantLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "BYSetupAssistantNeedsToRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantNeedsToRunSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getINDaemonConnectionClass_block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_2)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __iCloudNotificationLibraryCore_block_invoke_2;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27A652F00;
    v7 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v5[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary_2)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass_2 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id _ICQBannerLogSystem()
{
  if (_ICQBannerLogSystem_onceToken != -1)
  {
    _ICQBannerLogSystem_cold_1();
  }

  v1 = _ICQBannerLogSystem_log;

  return v1;
}

void ICQLogOfferDetailsForServerDictionary(void *a1)
{
  v92 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v1 objectForKeyedSubscript:@"offerType"];
      v3 = [v1 objectForKeyedSubscript:@"type"];
      v4 = [v1 objectForKeyedSubscript:@"notificationInfo"];
      v5 = [v1 objectForKeyedSubscript:@"iTunesAccountExists"];
      v84 = [v1 objectForKeyedSubscript:@"callbackInterval"];
      v6 = [v1 objectForKeyedSubscript:@"quotaInfo"];
      v83 = [v1 objectForKeyedSubscript:@"showAlert"];
      v80 = [v1 objectForKeyedSubscript:@"alertInfo"];
      v82 = [v1 objectForKeyedSubscript:@"showBanner"];
      v7 = [v1 objectForKeyedSubscript:@"appBannerInfo"];
      v75 = [v1 objectForKeyedSubscript:@"appContextInfo"];
      v79 = [v1 objectForKeyedSubscript:@"followUpInfo"];
      v78 = [v1 objectForKeyedSubscript:@"offerInfo"];
      v77 = [v1 objectForKeyedSubscript:@"planDetails"];
      v81 = [v1 objectForKeyedSubscript:@"container"];
      v8 = _ICQGetLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v91 = v2;
        _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "offerType: %{public}@", buf, 0xCu);
      }

      v9 = _ICQGetLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v91 = v3;
        _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "type: %{public}@", buf, 0xCu);
      }

      v76 = v3;

      v10 = _ICQGetLogSystem();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      v12 = v7;
      v13 = v6;
      if (v4)
      {
        if (!v11)
        {
          goto LABEL_17;
        }

        *buf = 138412290;
        v91 = v4;
        v14 = "notificationInfo: present %@";
        v15 = v10;
        v16 = 12;
      }

      else
      {
        if (!v11)
        {
          goto LABEL_17;
        }

        *buf = 0;
        v14 = "notificationInfo: missing";
        v15 = v10;
        v16 = 2;
      }

      _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
LABEL_17:

      if (v5)
      {
        v19 = objc_opt_respondsToSelector();
        v20 = _ICQGetLogSystem();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          if (v21)
          {
            v22 = [v5 BOOLValue];
            *buf = 67109120;
            LODWORD(v91) = v22;
            _os_log_impl(&dword_275572000, v20, OS_LOG_TYPE_DEFAULT, "iTunesAccountExists: %d", buf, 8u);
          }
        }

        else if (v21)
        {
          v23 = objc_opt_class();
          *buf = 138412290;
          v91 = v23;
          v24 = v23;
          _os_log_impl(&dword_275572000, v20, OS_LOG_TYPE_DEFAULT, "iTunesAccountExists: unexpected class %@", buf, 0xCu);
        }
      }

      if (v84)
      {
        v25 = objc_opt_respondsToSelector();
        v26 = _ICQGetLogSystem();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        if (v25)
        {
          if (v27)
          {
            [v84 doubleValue];
            *buf = 134217984;
            v91 = v28;
            _os_log_impl(&dword_275572000, v26, OS_LOG_TYPE_DEFAULT, "callbackInterval: %g", buf, 0xCu);
          }
        }

        else if (v27)
        {
          v29 = objc_opt_class();
          *buf = 138412290;
          v91 = v29;
          v30 = v29;
          _os_log_impl(&dword_275572000, v26, OS_LOG_TYPE_DEFAULT, "callbackInterval: unexpected class %@", buf, 0xCu);
        }
      }

      if (v83)
      {
        v31 = objc_opt_respondsToSelector();
        v32 = _ICQGetLogSystem();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          if (v33)
          {
            v34 = [v83 BOOLValue];
            *buf = 67109120;
            LODWORD(v91) = v34;
            _os_log_impl(&dword_275572000, v32, OS_LOG_TYPE_DEFAULT, "showAlert: %d", buf, 8u);
          }
        }

        else if (v33)
        {
          v35 = objc_opt_class();
          *buf = 138412290;
          v91 = v35;
          v36 = v35;
          _os_log_impl(&dword_275572000, v32, OS_LOG_TYPE_DEFAULT, "showAlert: unexpected class %@", buf, 0xCu);
        }
      }

      v37 = _ICQGetLogSystem();
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
      if (v80)
      {
        if (!v38)
        {
          goto LABEL_44;
        }

        *buf = 0;
        v39 = "alertInfo: present";
      }

      else
      {
        if (!v38)
        {
          goto LABEL_44;
        }

        *buf = 0;
        v39 = "alertInfo: missing";
      }

      _os_log_impl(&dword_275572000, v37, OS_LOG_TYPE_DEFAULT, v39, buf, 2u);
LABEL_44:

      if (v82)
      {
        v40 = objc_opt_respondsToSelector();
        v41 = _ICQGetLogSystem();
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
        if (v40)
        {
          if (v42)
          {
            v43 = [v82 BOOLValue];
            *buf = 67109120;
            LODWORD(v91) = v43;
            _os_log_impl(&dword_275572000, v41, OS_LOG_TYPE_DEFAULT, "showBanner: %d", buf, 8u);
          }
        }

        else if (v42)
        {
          v44 = objc_opt_class();
          *buf = 138412290;
          v91 = v44;
          v45 = v44;
          _os_log_impl(&dword_275572000, v41, OS_LOG_TYPE_DEFAULT, "showBanner: unexpected class %@", buf, 0xCu);
        }
      }

      v46 = _ICQGetLogSystem();
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
      v48 = v13;
      if (v7)
      {
        v49 = v75;
        if (!v47)
        {
          goto LABEL_57;
        }

        *buf = 0;
        v50 = "appBannerInfo: present";
      }

      else
      {
        v49 = v75;
        if (!v47)
        {
          goto LABEL_57;
        }

        *buf = 0;
        v50 = "appBannerInfo: missing";
      }

      _os_log_impl(&dword_275572000, v46, OS_LOG_TYPE_DEFAULT, v50, buf, 2u);
LABEL_57:

      v51 = v76;
      if (v49)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v71 = v48;
          v72 = v4;
          v73 = v2;
          v74 = v1;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v52 = v49;
          v53 = [v52 countByEnumeratingWithState:&v85 objects:v89 count:16];
          v54 = 0x277CBE000uLL;
          if (v53)
          {
            v55 = v53;
            v56 = *v86;
            do
            {
              for (i = 0; i != v55; ++i)
              {
                if (*v86 != v56)
                {
                  objc_enumerationMutation(v52);
                }

                v58 = *(*(&v85 + 1) + 8 * i);
                v59 = *(v54 + 2752);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v60 = MEMORY[0x277CCACA8];
                  v61 = [v58 objectForKeyedSubscript:@"appId"];
                  v62 = [v60 stringWithFormat:@"appContextInfo: appId:%@ offerInfo: ", v61];

                  v63 = [v58 objectForKeyedSubscript:@"offerInfo"];
                  ICQLogDictKeys(v62, v63);

                  v54 = 0x277CBE000;
                }
              }

              v55 = [v52 countByEnumeratingWithState:&v85 objects:v89 count:16];
            }

            while (v55);
          }

          v2 = v73;
          v1 = v74;
          v49 = v75;
          v51 = v76;
          v4 = v72;
          v48 = v71;
        }

        v64 = _ICQGetLogSystem();
        if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
LABEL_74:

          v66 = _ICQGetLogSystem();
          v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
          if (v79)
          {
            if (v67)
            {
              *buf = 0;
              v68 = "followUpInfo: present";
LABEL_79:
              _os_log_impl(&dword_275572000, v66, OS_LOG_TYPE_DEFAULT, v68, buf, 2u);
            }
          }

          else if (v67)
          {
            *buf = 0;
            v68 = "followUpInfo: missing";
            goto LABEL_79;
          }

          ICQLogDictKeys(@"app-independent offerInfo: ", v78);
          ICQLogDictKeys(@"planDetails: ", v77);
          ICQLogDictKeys(@"quotaInfo: ", v48);
          if (v81)
          {
            v69 = _ICQGetLogSystem();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v91 = v81;
              _os_log_impl(&dword_275572000, v69, OS_LOG_TYPE_DEFAULT, "container: %@", buf, 0xCu);
            }
          }

          goto LABEL_85;
        }

        *buf = 0;
        v65 = "appContextInfo: present";
      }

      else
      {
        v64 = _ICQGetLogSystem();
        if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_74;
        }

        *buf = 0;
        v65 = "appContextInfo: missing";
      }

      _os_log_impl(&dword_275572000, v64, OS_LOG_TYPE_DEFAULT, v65, buf, 2u);
      goto LABEL_74;
    }

    v2 = _ICQGetLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      *buf = 138412290;
      v91 = v17;
      v18 = v17;
      _os_log_impl(&dword_275572000, v2, OS_LOG_TYPE_DEFAULT, "event details: unexpected class %@", buf, 0xCu);
    }
  }

  else
  {
    v2 = _ICQGetLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v2, OS_LOG_TYPE_DEFAULT, "event details: nil", buf, 2u);
    }
  }

LABEL_85:

  v70 = *MEMORY[0x277D85DE8];
}

void ICQLogDictKeys(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
  {
    v5 = [v4 allKeys];
  }

  else
  {
    v5 = @"missing";
  }

  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

__CFString *StringFromResponseData(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v7 = 0;
    v2 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v1 options:0 error:&v7];
    v3 = v7;
    if (v3)
    {
      v4 = v3;
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v1 encoding:4];

      v2 = v5;
    }
  }

  else
  {
    v2 = @"<no data>";
  }

  return v2;
}

void ICQLogDataTaskComplete(void *a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = StringFromResponseData(v8);
    v14 = 138544130;
    v15 = v7;
    v16 = 2114;
    v17 = v12;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ request completed with data: %{public}@\n\nwith response: %{public}@\n\t\nwith error: %{public}@", &v14, 0x2Au);
  }

  v13 = *MEMORY[0x277D85DE8];
}

os_signpost_id_t _ICQSignpostCreate(NSObject *a1)
{
  v1 = os_signpost_id_generate(a1);
  mach_continuous_time();
  return v1;
}

id _ICQBundleIDForKnownContainerID(void *a1)
{
  v1 = _ICQInitKnownBundleContainerMappings_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _ICQBundleIDForKnownContainerID_cold_1();
  }

  v3 = [sBundleIDForKnownContainerID objectForKeyedSubscript:v2];

  return v3;
}

id _ICQContainerIDForKnownBundleID(void *a1)
{
  v1 = _ICQInitKnownBundleContainerMappings_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _ICQBundleIDForKnownContainerID_cold_1();
  }

  v3 = [sContainerIDForKnownBundleID objectForKeyedSubscript:v2];

  return v3;
}

id _ICQStringForKey(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 objectForKeyedSubscript:v3];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = _ICQGetLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v10 = 138412546;
        v11 = v3;
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "expected NSString from key %@ but got %@", &v10, 0x16u);
      }

      v4 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

id _ICQStringForOneOfKeys(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = _ICQStringForKey(v3, *(*(&v13 + 1) + 8 * i));
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id _ICQDictionaryForKey(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 objectForKeyedSubscript:v3];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = _ICQGetLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v10 = 138412546;
        v11 = v3;
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "expected NSDictionary from key %@ but got %@", &v10, 0x16u);
      }

      v4 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

id _ICQArrayForKey(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 objectForKeyedSubscript:v3];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = _ICQGetLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v10 = 138412546;
        v11 = v3;
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "expected NSDictionary from key %@ but got %@", &v10, 0x16u);
      }

      v4 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

id _ICQDictionaryForOneOfKeys(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = _ICQDictionaryForKey(v3, *(*(&v13 + 1) + 8 * i));
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t _ICQBooleanForServerObjectDefault(void *a1, uint64_t a2)
{
  v3 = a1;
  if (_ICQBooleanForServerObjectDefault_onceToken != -1)
  {
    _ICQBooleanForServerObjectDefault_cold_1();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a2 = [v3 BOOLValue];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = _ICQBooleanForServerObjectDefault_sBoolDict;
      v5 = [v3 uppercaseString];
      v6 = [v4 objectForKey:v5];

      if (v6)
      {
        a2 = [v6 BOOLValue];
      }
    }
  }

  return a2;
}

uint64_t _ICQActionForServerActionString(void *a1)
{
  v1 = a1;
  if (_ICQActionForServerActionString_onceToken != -1)
  {
    _ICQActionForServerActionString_cold_1();
  }

  v2 = [_ICQActionForServerActionString_actionForServerActionString objectForKeyedSubscript:v1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = _ICQActionForString(v1);
  }

  v5 = v4;

  return v5;
}

id _ICQActionParametersForServerActionParameters(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_new();
  v7 = v6;
  if (v5)
  {
    [v6 setObject:v5 forKey:@"URL"];
  }

  v26 = v5;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    v25 = @"alertKey";
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        if ([(__CFString *)v13 isEqualToString:@"buyQueryParams", v25])
        {
          v14 = [v8 objectForKeyedSubscript:v13];
          v15 = v7;
          v16 = v14;
          v17 = @"URLQueryParameters";
LABEL_14:
          [v15 setObject:v16 forKey:v17];
          goto LABEL_15;
        }

        if ([(__CFString *)v13 isEqualToString:@"linkURL"])
        {
          v14 = [v8 objectForKeyedSubscript:v13];
          v15 = v7;
          v16 = v14;
          v17 = @"URL";
          goto LABEL_14;
        }

        if ([(__CFString *)v13 isEqualToString:@"openUrl"])
        {
          v14 = [v8 objectForKeyedSubscript:v13];
          v15 = v7;
          v16 = v14;
          v17 = @"openURL";
          goto LABEL_14;
        }

        if ([(__CFString *)v13 isEqualToString:@"route"])
        {
          v14 = [v8 objectForKeyedSubscript:v13];
          v18 = v7;
          v19 = v14;
          v20 = @"route";
          goto LABEL_30;
        }

        if ([(__CFString *)v13 isEqualToString:@"purchaseAttribution"])
        {
          v14 = [v8 objectForKeyedSubscript:v13];
          v18 = v7;
          v19 = v14;
          v20 = @"purchaseAttribution";
          goto LABEL_30;
        }

        if (([(__CFString *)v13 isEqualToString:@"skipCFU"]& 1) != 0 || ([(__CFString *)v13 isEqualToString:@"dismissLockScreen"]& 1) != 0 || [(__CFString *)v13 isEqualToString:@"zeroCFUAction"])
        {
          v14 = [v8 objectForKeyedSubscript:v13];
          if ([(__CFString *)v14 BOOLValue])
          {
            v19 = @"true";
          }

          else
          {
            v19 = @"false";
          }

          v18 = v7;
LABEL_29:
          v20 = v13;
LABEL_30:
          [v18 setObject:v19 forKeyedSubscript:v20];
LABEL_15:

          goto LABEL_16;
        }

        if (([(__CFString *)v13 isEqualToString:@"amsParams"]& 1) != 0 || ([(__CFString *)v13 isEqualToString:@"buyParams"]& 1) != 0 || ([(__CFString *)v13 isEqualToString:@"interruptedBuyErrorCodes"]& 1) != 0 || ([(__CFString *)v13 isEqualToString:@"userAgentSuffix"]& 1) != 0 || ([(__CFString *)v13 isEqualToString:@"actionOnActionCompleteURL"]& 1) != 0 || [(__CFString *)v13 isEqualToString:@"actionOnActionComplete"])
        {
          v14 = [v8 objectForKeyedSubscript:v13];
          v18 = v7;
          v19 = v14;
          goto LABEL_29;
        }

        if ([(__CFString *)v13 isEqualToString:@"alertKey"])
        {
          v14 = [v8 objectForKeyedSubscript:v13];
          v18 = v7;
          v19 = v14;
          v20 = v25;
          goto LABEL_30;
        }

LABEL_16:
        ++v12;
      }

      while (v10 != v12);
      v21 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v10 = v21;
    }

    while (v21);
  }

  v22 = [v7 copy];
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

id _ICQLinkForServerValues(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = v15;
  if (v12 && v14)
  {
    v17 = _ICQGetLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138413058;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "link overrides action in text:%@ action:%@ params:%@ link:%@", &v27, 0x2Au);
    }

    goto LABEL_7;
  }

  if (v14)
  {
LABEL_7:
    v18 = 6;
    goto LABEL_8;
  }

  if (_ICQActionForServerActionString(v12))
  {
    v15 = _ICQActionForServerActionString(v12);
  }

  else
  {
    v15 = _ICQActionForString(v12);
  }

  v18 = v15;
LABEL_8:
  v19 = _ICQActionParametersForServerActionParameters(v15, v13, v14);
  v20 = v19;
  if (v16)
  {
    if (v19)
    {
      v21 = [v19 mutableCopy];
    }

    else
    {
      v21 = objc_opt_new();
    }

    v22 = v21;
    [v21 setObject:v16 forKey:@"ServerLinkId"];
    v23 = [v22 copy];

    v20 = v23;
  }

  v24 = [ICQLink linkWithText:v11 options:a6 action:v18 parameters:v20];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

id _ICQLinkForServerMessageParameterWithOptions(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (!v3)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = _ICQGetLogSystem();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

LABEL_10:
      v10 = 0;
      goto LABEL_22;
    }

    v26 = 138412290;
    v27 = v3;
    v9 = "link: expected dict: invalid server message parameter:%@";
LABEL_8:
    _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, v9, &v26, 0xCu);
    goto LABEL_9;
  }

  v4 = [v3 objectForKeyedSubscript:@"display"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"actParams"];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [v3 objectForKeyedSubscript:@"params"];
    }

    v12 = v7;

    v13 = [v3 objectForKeyedSubscript:@"display"];
    v14 = [v3 objectForKeyedSubscript:@"action"];
    v15 = [v3 objectForKeyedSubscript:@"link"];
    v17 = v13;
    v18 = v14;
    v19 = v12;
    v20 = v15;
    v21 = 0;
    goto LABEL_18;
  }

  v11 = [v3 objectForKeyedSubscript:@"btnTitle"];

  if (v11)
  {
    v12 = [v3 objectForKeyedSubscript:@"btnTitle"];
    v13 = [v3 objectForKeyedSubscript:@"btnAction"];
    v14 = [v3 objectForKeyedSubscript:@"btnActParams"];
    v15 = v14;
    if (!v14)
    {
      v15 = [v3 objectForKeyedSubscript:@"actParams"];
    }

    v16 = [v3 objectForKeyedSubscript:@"btnId"];
    v10 = _ICQLinkForServerValues(v12, v13, v15, 0, v16, a2);

    if (v14)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v24 = [v3 objectForKeyedSubscript:@"BtnTitle"];

  if (!v24)
  {
    v25 = [v3 objectForKeyedSubscript:@"action"];

    if (v25)
    {
      v12 = [v3 objectForKeyedSubscript:@"action"];
      v13 = [v3 objectForKeyedSubscript:@"btnActParams"];
      v14 = v13;
      if (!v13)
      {
        v14 = [v3 objectForKeyedSubscript:@"actParams"];
      }

      v10 = _ICQLinkForServerValues(0, v12, v14, 0, 0, a2);
      if (v13)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v8 = _ICQGetLogSystem();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v26 = 138412290;
    v27 = v3;
    v9 = "Invalid link: %@";
    goto LABEL_8;
  }

  v12 = [v3 objectForKeyedSubscript:@"BtnTitle"];
  v13 = [v3 objectForKeyedSubscript:@"BtnAction"];
  v14 = [v3 objectForKeyedSubscript:@"BtnActParams"];
  v15 = [v3 objectForKeyedSubscript:@"BtnId"];
  v17 = v12;
  v18 = v13;
  v19 = v14;
  v20 = 0;
  v21 = v15;
LABEL_18:
  v10 = _ICQLinkForServerValues(v17, v18, v19, v20, v21, a2);
LABEL_19:

LABEL_20:
LABEL_21:

LABEL_22:
  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

id _ICQLinksForServerMessageParametersWithOptions(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v16 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v10 = [v9 objectForKeyedSubscript:@"id"];
          if ([v10 isEqualToString:@"cancel"])
          {
            v11 = _ICQGetLogSystem();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v24 = v9;
              _os_log_debug_impl(&dword_275572000, v11, OS_LOG_TYPE_DEBUG, "Main links array excludes dismiss link: %@", buf, 0xCu);
            }
          }

          else
          {
            v11 = _ICQLinkForServerMessageParameterWithOptions(v9, a2);
            if (v11)
            {
              [v17 addObject:v11];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    v12 = v17;
    v13 = [v17 copy];
    v3 = v16;
LABEL_19:

    goto LABEL_20;
  }

  if (v3)
  {
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v3;
      _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "links: expected array: invalid server message parameters:%@", buf, 0xCu);
    }

    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_19;
  }

  v13 = MEMORY[0x277CBEBF8];
LABEL_20:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id _ICQLinksForServerActionBasedUniversalLink(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEC10] mutableCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v14 = v1;
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v3 objectForKeyedSubscript:v8];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = _ICQLinkForServerMessageParameterWithOptions(v9, 0);
              [v2 setObject:v10 forKeyedSubscript:v8];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v5);
      v1 = v14;
    }
  }

  else
  {
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v1;
      _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "universal links: invalid server parameters:%@", buf, 0xCu);
    }
  }

  v11 = [v2 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id _ICQBindingsKeyForServerMessageParameterKey(void *a1, void *a2)
{
  v2 = _ICQStringForKey(a1, a2);
  if ([v2 hasPrefix:@"%$"])
  {
    v3 = [v2 substringFromIndex:{objc_msgSend(@"%$", "length")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id _ICQMessageWithFormat(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  v6 = objc_opt_new();
  v21 = v5;
  v7 = [v3 rangeOfString:@"%@" options:2 range:{0, v5}];
  v9 = v8;
  v10 = 0;
  if ([v4 count] && v9)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = [v4 objectAtIndexedSubscript:v11];
      v13 = [v3 substringWithRange:{v10, v7 - v10}];
      [v6 appendString:v13];

      v14 = MEMORY[0x277CCACA8];
      v15 = [v12 text];
      v16 = [v14 stringWithFormat:@"%@", v15];
      [v6 appendString:v16];

      if ([v12 options])
      {
        [v6 appendString:@" >"];
      }

      v10 = v7 + v9;
      ++v11;

      v7 = [v3 rangeOfString:@"%@" options:2 range:{v7 + v9, v21 - (v7 + v9)}];
      v9 = v17;
    }

    while (v11 < [v4 count] && v9);
  }

  v18 = [v3 substringFromIndex:v10];
  [v6 appendString:v18];

  v19 = [v6 copy];

  return v19;
}

id _ICQLinkButtonForServerMessage(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"format"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 componentsSeparatedByString:@"%@"];
      v7 = [v6 count];

      if (v7 >= 3)
      {
        v8 = _ICQGetLogSystem();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = v5;
          _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "format is %@; button may not contain more than one %%@", &v14, 0xCu);
        }
      }
    }

    v9 = [v3 objectForKeyedSubscript:@"params"];
    v10 = _ICQLinksForServerMessageParametersWithOptions(v9, a2);

    v11 = [v10 firstObject];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void _ICQAppendServerMessageFormatAndLinks(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
LABEL_10:
    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "expected message; bad plist object:%@", &v16, 0xCu);
    }

    v8 = &stru_288431E38;
    goto LABEL_10;
  }

  v9 = [v5 objectForKeyedSubscript:@"format"];
  v10 = v9;
  v11 = &stru_288431E38;
  if (v9)
  {
    v11 = v9;
  }

  v8 = v11;

  v12 = [v5 objectForKeyedSubscript:@"params"];
  v13 = _ICQLinksForServerMessageParametersWithOptions(v12, 0);

LABEL_11:
  if ([v6 length])
  {
    [v6 appendString:@"\u2029"];
  }

  [v6 appendString:v8];
  [v7 addObjectsFromArray:v13];

  v15 = *MEMORY[0x277D85DE8];
}

void _ICQServerHeaderGetFormatAndLinks(void *a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20[0] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

      v5 = v6;
    }
  }

  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        _ICQAppendServerMessageFormatAndLinks(*(*(&v15 + 1) + 8 * v13++), v7, v8);
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  if (a2)
  {
    *a2 = [v7 copy];
  }

  if (a3)
  {
    *a3 = [v8 copy];
  }

  v14 = *MEMORY[0x277D85DE8];
}

id _ICQMessageForServerHeader(void *a1)
{
  v6 = &stru_288431E38;
  v5 = MEMORY[0x277CBEBF8];
  _ICQServerHeaderGetFormatAndLinks(a1, &v6, &v5);
  v1 = v6;
  v2 = v5;
  v3 = _ICQMessageWithFormat(v1, v2);

  return v3;
}

void _ICQServerDictToOfferTypeAndLevel(void *a1, unint64_t *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = [v5 objectForKeyedSubscript:@"offerType"];
  v7 = _ICQOfferTypeForServerString(v6);

  v8 = [v5 objectForKeyedSubscript:@"type"];

  v9 = _ICQLevelForString(v8);
  if (v7 - 2 < 7)
  {
    v10 = qword_2755F33E0[v7 - 2];
    if (!a2)
    {
      goto LABEL_20;
    }

LABEL_19:
    *a2 = v7;
    goto LABEL_20;
  }

  v11 = v9 - 1;
  if (v7 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v7;
  }

  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  if (v9)
  {
    v12 = v7;
  }

  v14 = v11 >= 3;
  if (v11 >= 3)
  {
    v10 = v13;
  }

  else
  {
    v10 = v9;
  }

  if (v14)
  {
    v7 = v12;
  }

  else
  {
    v7 = 1;
  }

  if (a2)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (a3)
  {
    *a3 = v10;
  }
}

uint64_t _ICQIsBuddyOfferDictionary(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 objectForKeyedSubscript:@"isBuddyOffer"];
    v3 = _ICQBooleanForServerObjectDefault(v2, 0);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _ICQIsDefaultOfferDictionary(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 objectForKeyedSubscript:@"isDefaultOffer"];
    v3 = _ICQBooleanForServerObjectDefault(v2, 0);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _ICQIsPremiumOfferDictionary(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 objectForKeyedSubscript:@"isPremiumOffer"];
    v3 = _ICQBooleanForServerObjectDefault(v2, 0);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _ICQIsEventOfferDictionary(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 objectForKeyedSubscript:@"isEventOffer"];
    v3 = _ICQBooleanForServerObjectDefault(v2, 0);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

Class __getINDaemonConnectionClass_block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_3)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __iCloudNotificationLibraryCore_block_invoke_3;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27A653020;
    v7 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_3 = _sl_dlopen();
    v2 = v5[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary_3)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_3 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2755C9F58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_2755C9FA4(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_2755C9FFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  return v1;
}

uint64_t sub_2755CA070()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2755EC8AC();
}

uint64_t (*sub_2755CA0E0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2755EC88C();
  return sub_2755CA184;
}

uint64_t sub_2755CA1D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C58, &qword_2755F3488);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 152))(v7);
}

uint64_t sub_2755CA2E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C58, &qword_2755F3488);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C50, &qword_2755F3480);
  sub_2755EC87C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2755CA41C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C58, &qword_2755F3488);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__storageApps;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C50, &qword_2755F3480);
  sub_2755EC86C();
  swift_endAccess();
  return sub_2755CA58C;
}

uint64_t sub_2755CA5C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2755CA658()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  return v1;
}

uint64_t sub_2755CA6CC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2755EC8AC();
}

uint64_t (*sub_2755CA73C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2755EC88C();
  return sub_2755CDDE0;
}

uint64_t sub_2755CA82C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C68, &qword_2755F34E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 200))(v7);
}

uint64_t sub_2755CA93C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C68, &qword_2755F34E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  sub_2755EC87C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2755CAA74(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C68, &qword_2755F34E0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__didError;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  sub_2755EC86C();
  swift_endAccess();
  return sub_2755CDDE4;
}

uint64_t sub_2755CAC34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_2755CAC80(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 224);

  return v3(v4);
}

uint64_t sub_2755CACD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2755EC89C();

  return v1;
}

uint64_t sub_2755CAD48()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2755EC8AC();
}

uint64_t (*sub_2755CADB8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2755EC88C();
  return sub_2755CDDE0;
}

void sub_2755CAE5C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_2755CAF14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C80, &qword_2755F3540);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 248))(v7);
}

uint64_t sub_2755CB024(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_2755EC86C();
  return swift_endAccess();
}

uint64_t sub_2755CB09C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C80, &qword_2755F3540);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C78, &qword_2755F3538);
  sub_2755EC87C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2755CB1D4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C80, &qword_2755F3540);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__navigationPath;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C78, &qword_2755F3538);
  sub_2755EC86C();
  swift_endAccess();
  return sub_2755CDDE4;
}

void sub_2755CB344(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_2755EC87C();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_2755EC87C();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

char *StorageAppsModel.__allocating_init(account:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_2755CCD98(a1);

  return v5;
}

char *StorageAppsModel.init(account:)(void *a1)
{
  v2 = sub_2755CCD98(a1);

  return v2;
}

char *StorageAppsModel.deinit()
{
  v1 = v0;
  type metadata accessor for DarwinRegistrar();
  type metadata accessor for StorageAppsModel();
  sub_2755CE05C(v0);
  v2 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__storageApps;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C50, &qword_2755F3480);
  (*(*(v3 - 8) + 8))(&v1[v2], v3);
  v4 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__didError;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  (*(*(v5 - 8) + 8))(&v1[v4], v5);
  v6 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__navigationPath;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C78, &qword_2755F3538);
  (*(*(v7 - 8) + 8))(&v1[v6], v7);

  v8 = *&v1[OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId + 8];

  return v1;
}

uint64_t StorageAppsModel.__deallocating_deinit()
{
  v1 = v0;
  type metadata accessor for DarwinRegistrar();
  type metadata accessor for StorageAppsModel();
  sub_2755CE05C(v0);
  v2 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__storageApps;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C50, &qword_2755F3480);
  (*(*(v3 - 8) + 8))(&v1[v2], v3);
  v4 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__didError;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  (*(*(v5 - 8) + 8))(&v1[v4], v5);
  v6 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__navigationPath;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C78, &qword_2755F3538);
  (*(*(v7 - 8) + 8))(&v1[v6], v7);

  v8 = *&v1[OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId + 8];

  v9 = *(*v1 + 48);
  v10 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_2755CB848(uint64_t a1, uint64_t a2)
{
  (*(*v2 + 176))(0);
  v5 = [objc_allocWithZone(ICQCloudStorageDataController) initWithAccount_];
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v9[4] = sub_2755CD10C;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2755CBC80;
  v9[3] = &block_descriptor;
  v8 = _Block_copy(v9);
  sub_2755CD118(a1);

  [v5 fetchStorageAppsWithCompletion_];
  _Block_release(v8);
}

uint64_t sub_2755CB9B4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2755EC8CC();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2755EC8EC();
  v25 = *(v14 - 8);
  v26 = v14;
  v15 = *(v25 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2755CDAE8(0, &qword_2809F9CC8, 0x277D85C78);
  v24 = sub_2755ECB3C();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a1;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  aBlock[4] = sub_2755CDB30;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275578EB8;
  aBlock[3] = &block_descriptor_24;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  v21 = a1;

  sub_2755CD118(a4);

  sub_2755EC8DC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2755CDD08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CD8, &unk_2755F44F0);
  sub_2755CDD60();
  sub_2755ECBBC();
  v22 = v24;
  MEMORY[0x277C7CBD0](0, v17, v13, v19);
  _Block_release(v19);

  (*(v27 + 8))(v13, v10);
  return (*(v25 + 8))(v17, v26);
}

void sub_2755CBC80(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_2755CBD0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2755EC82C();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v73 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v63 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v63 - v14;
  v16 = sub_2755763AC();
  v17 = v7[2];
  v68 = v16;
  v69 = v17;
  v70 = v7 + 2;
  (v17)(v15);

  v18 = sub_2755EC81C();
  v19 = sub_2755ECB2C();

  v20 = os_log_type_enabled(v18, v19);
  v72 = v6;
  v67 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v71 = v7;
    v23 = v22;
    v76[0] = v22;
    *v21 = 136315138;
    v24 = a1;
    if (a2)
    {
      v25 = a2;
    }

    else
    {
      a1 = 7104878;
      v25 = 0xE300000000000000;
    }

    v26 = sub_2755CC688(a1, v25, v76);

    *(v21 + 4) = v26;
    a1 = v24;
    _os_log_impl(&dword_275572000, v18, v19, "Manage Storage navigation to bundleId: %s!", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v7 = v71;
    MEMORY[0x277C7DA70](v23, -1, -1);
    v27 = v21;
    v6 = v72;
    MEMORY[0x277C7DA70](v27, -1, -1);
  }

  v28 = v7[1];
  v29 = v28(v15, v6);
  v30 = (*(*v3 + 120))(v29);
  if (!v30)
  {
    v69(v73, v68, v6);
    v46 = sub_2755EC81C();
    v47 = sub_2755ECB2C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = a1;
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_275572000, v46, v47, "No storage apps, delaying navigation until request returns", v49, 2u);
      v50 = v49;
      a1 = v48;
      MEMORY[0x277C7DA70](v50, -1, -1);
    }

    v28(v73, v6);
    v51 = &v3[OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId];
    v52 = *&v3[OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId + 8];
    *v51 = a1;
    v51[1] = a2;

    return;
  }

  v31 = v30;
  v65 = v28;
  v32 = &v3[OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId];
  v33 = *&v3[OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId + 8];
  *v32 = 0;
  *(v32 + 1) = 0;

  v35 = (*(*v3 + 216))(v34);
  v75 = a1;
  if (v35 >> 62)
  {
LABEL_32:
    v36 = sub_2755ECC3C();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = *(*v3 + 232);
  v63[1] = *v3 + 232;
  v64 = v37;
  v38 = v37(v76);
  sub_2755CC444(v36);
  v38(v76, 0);
  if (!a2)
  {

    return;
  }

  v39 = [v31 apps];
  sub_2755CDAE8(0, &qword_2809F9C88, off_27A650D00);
  v40 = sub_2755ECA1C();

  v63[0] = v3;
  v71 = v7;
  v74 = a2;
  v66 = v31;
  if (!(v40 >> 62))
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      goto LABEL_12;
    }

LABEL_34:

    return;
  }

  v41 = sub_2755ECC3C();
  if (!v41)
  {
    goto LABEL_34;
  }

LABEL_12:
  v31 = 0;
  v73 = (v40 & 0xC000000000000001);
  a2 = v40 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v73)
    {
      v42 = MEMORY[0x277C7CC90](v31, v40);
    }

    else
    {
      if (v31 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v42 = *(v40 + 8 * v31 + 32);
    }

    v43 = v42;
    v3 = (v31 + 1);
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v44 = [v42 bundleIds];
    v7 = sub_2755ECA1C();

    v76[0] = v75;
    v76[1] = v74;
    MEMORY[0x28223BE20](v45);
    v63[-2] = v76;
    LOBYTE(v44) = sub_2755CCC30(sub_2755CD128, &v63[-4], v7);

    if (v44)
    {
      break;
    }

    ++v31;
    if (v3 == v41)
    {
      goto LABEL_34;
    }
  }

  v53 = v67;
  v54 = v72;
  v69(v67, v68, v72);
  v55 = sub_2755EC81C();
  v56 = sub_2755ECB2C();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_275572000, v55, v56, "Manage Storage navigation found matching bundleId", v57, 2u);
    MEMORY[0x277C7DA70](v57, -1, -1);
  }

  v65(v53, v54);
  v58 = [v43 action];
  v59 = v64(v76);
  v61 = v60;
  MEMORY[0x277C7CA80]();
  if (*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v62 = *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2755ECA2C();
  }

  sub_2755ECA3C();
  v59(v76, 0);
}

uint64_t sub_2755CC444(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (!(*v1 >> 62))
  {
    v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = -v2;
    if (!__OFSUB__(0, v2))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = result;
  v2 = sub_2755ECC3C();
  result = v6;
  v3 = -v2;
  if (__OFSUB__(0, v2))
  {
    goto LABEL_19;
  }

LABEL_5:
  v4 = -result;
  if (v3 <= 0 && v3 > v4)
  {
    goto LABEL_22;
  }

  result = v2 - result;
  if (__OFADD__(v2, v4))
  {
    goto LABEL_20;
  }

  if (v2 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return sub_2755CD2DC(result, v2);
}

uint64_t sub_2755CC4FC()
{
  v1 = (*(*v0 + 232))(v7);
  v3 = *v2;
  *v2 = MEMORY[0x277D84F90];

  v1(v7, 0);
  v4 = (v0 + OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId);
  v5 = *(v0 + OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId + 8);
  *v4 = 0;
  v4[1] = 0;

  return (*(*v0 + 128))(0);
}

void sub_2755CC5C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(*a2 + 296);

    v2(v3);
  }
}

uint64_t sub_2755CC63C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StorageAppsModel();
  result = sub_2755EC84C();
  *a1 = result;
  return result;
}

uint64_t sub_2755CC688(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2755CC754(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_2755CDA88(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2755CC754(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2755CC860(a5, a6);
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
    result = sub_2755ECC2C();
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

uint64_t sub_2755CC860(uint64_t a1, unint64_t a2)
{
  v4 = sub_2755CC8AC(a1, a2);
  sub_2755CC9DC(&unk_288430458);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2755CC8AC(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2755CCAC8(v5, 0);
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

  result = sub_2755ECC2C();
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
        v10 = sub_2755EC9BC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2755CCAC8(v10, 0);
        result = sub_2755ECBFC();
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

uint64_t sub_2755CC9DC(uint64_t result)
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

  result = sub_2755CCB3C(result, v12, 1, v3);
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

void *sub_2755CCAC8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CB8, &unk_2755F3600);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2755CCB3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CB8, &unk_2755F3600);
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

uint64_t sub_2755CCC30(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2755CCCDC(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_2755ECC3C();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_2755ECC1C();
    *v1 = result;
  }

  return result;
}

char *sub_2755CCD98(void *a1)
{
  v2 = v1;
  v29 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C78, &qword_2755F3538);
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v28);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C60, &qword_2755F34D8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C50, &qword_2755F3480);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__storageApps;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C48, &qword_2755F3430);
  sub_2755EC85C();
  (*(v13 + 32))(&v2[v17], v16, v12);
  v18 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__didError;
  LOBYTE(v30) = 0;
  sub_2755EC85C();
  (*(v8 + 32))(&v2[v18], v11, v7);
  v19 = OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel__navigationPath;
  v30 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9C70, &qword_2755F34E8);
  sub_2755EC85C();
  (*(v3 + 32))(&v2[v19], v6, v28);
  v20 = &v2[OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = v29;
  *&v2[OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_account] = v29;
  type metadata accessor for DarwinRegistrar();
  v22 = v21;
  v23 = sub_2755CDDE8();
  v24 = *v23;
  v25 = v23[1];
  type metadata accessor for StorageAppsModel();

  sub_2755CDE10(v2, v24, v25, sub_2755CC5C0);

  return v2;
}

uint64_t type metadata accessor for StorageAppsModel()
{
  result = qword_2809FA360;
  if (!qword_2809FA360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2755CD118(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2755CD128(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2755ECD0C() & 1;
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2755CD1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2755CDAE8(0, &qword_2809F9CC0, off_27A650CE8);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2755ECC3C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2755ECC3C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2755CD2DC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2755ECC3C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_2755ECC3C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_2755CCCDC(result);

  return sub_2755CD1CC(v4, v2, 0);
}

uint64_t _s11iCloudQuota16StorageAppsModelC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 120))();
  v5 = (*(*a2 + 120))();
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      sub_2755CDAE8(0, &qword_2809F9CB0, off_27A650D38);
      v7 = sub_2755ECB7C();

      if ((v7 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      sub_2755CDAE8(0, &qword_2809F9CA8, 0x277D82BB8);
      v8 = *(a1 + OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_account);
      v9 = *(a2 + OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_account);
      return sub_2755ECB7C() & 1;
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  return 0;
}

void sub_2755CD4E4()
{
  sub_2755CDA34(319, &qword_2809F9C90, &qword_2809F9C48, &qword_2755F3430);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2755CD9E4();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2755CDA34(319, &qword_2809F9CA0, &qword_2809F9C70, &qword_2755F34E8);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

void sub_2755CD9E4()
{
  if (!qword_2809F9C98)
  {
    v0 = sub_2755EC8BC();
    if (!v1)
    {
      atomic_store(v0, &qword_2809F9C98);
    }
  }
}

void sub_2755CDA34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2755EC8BC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2755CDA88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2755CDAE8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2755CDB30()
{
  v1 = v0[3];
  v2 = v0[4];
  if (v0[2])
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (v3)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*Strong + 176))(1);
    }
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      v8 = *(*v7 + 128);
      v9 = v1;
      v8(v1);
    }

    else
    {
      v10 = v1;
    }

    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = *(v11 + OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId);
      v13 = *(v11 + OBJC_IVAR____TtC11iCloudQuota16StorageAppsModel_needsNavigatingToBundleId + 8);

      if (v13)
      {
        swift_beginAccess();
        v14 = swift_weakLoadStrong();
        if (v14)
        {
          (*(*v14 + 312))(v12, v13);
        }
      }
    }

    if (v6)
    {
      v6(v11);
    }
  }
}

unint64_t sub_2755CDD08()
{
  result = qword_2809F9CD0;
  if (!qword_2809F9CD0)
  {
    sub_2755EC8CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9CD0);
  }

  return result;
}

unint64_t sub_2755CDD60()
{
  result = qword_2809F9CE0;
  if (!qword_2809F9CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F9CD8, &unk_2755F44F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F9CE0);
  }

  return result;
}

void sub_2755CDE10(const void *a1, uint64_t a2, unint64_t a3, void (__cdecl *a4)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef))
{
  v8 = sub_2755EC82C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v13)
  {
    v14 = v13;
    v21 = sub_2755EC95C();
    CFNotificationCenterAddObserver(v14, a1, a4, v21, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v15 = v21;
  }

  else
  {
    v16 = sub_2755763AC();
    (*(v9 + 16))(v12, v16, v8);

    v17 = sub_2755EC81C();
    v18 = sub_2755ECB1C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_2755CC688(a2, a3, &v22);
      _os_log_impl(&dword_275572000, v17, v18, "Could not get darwin notification center, failed to register object for notification %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x277C7DA70](v20, -1, -1);
      MEMORY[0x277C7DA70](v19, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
  }
}

void sub_2755CE05C(const void *a1)
{
  v2 = sub_2755EC82C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v7)
  {
    v14 = v7;
    CFNotificationCenterRemoveEveryObserver(v7, a1);
    v8 = v14;
  }

  else
  {
    v9 = sub_2755763AC();
    (*(v3 + 16))(v6, v9, v2);
    v10 = sub_2755EC81C();
    v11 = sub_2755ECB1C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_275572000, v10, v11, "Could not get darwin notification center, failed to unregister object.", v12, 2u);
      MEMORY[0x277C7DA70](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_2755CE248(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad) = 0;
  v6 = OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_signposter;
  v7 = sub_2755EC7BC();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t sub_2755CE2D8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad) = 0;
  v3 = OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_signposter;
  v4 = sub_2755EC7BC();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_2755CE354()
{
  v1 = v0;
  v2 = sub_2755EC79C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  sub_2755EC78C();
  v10 = sub_2755EC7AC();
  v11 = sub_2755ECB6C();
  if (sub_2755ECB8C())
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_2755EC77C();
    _os_signpost_emit_with_name_impl(&dword_275572000, v10, v11, v13, "ManageStorageDrilldown", "", v12, 2u);
    MEMORY[0x277C7DA70](v12, -1, -1);
  }

  (*(v3 + 16))(v7, v9, v2);
  v14 = sub_2755EC7FC();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_2755EC7EC();
  (*(v3 + 8))(v9, v2);
  v18 = *(v1 + OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad);
  *(v1 + OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad) = v17;
}

uint64_t sub_2755CE534(int a1)
{
  v2 = v1;
  v4 = sub_2755EC7CC();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2755EC79C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad;
  if (*(v2 + OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad))
  {
    v23 = a1;

    v15 = sub_2755EC7AC();
    sub_2755EC7DC();
    v22 = sub_2755ECB5C();
    if (sub_2755ECB8C())
    {

      sub_2755EC80C();

      v16 = v24;
      if ((*(v24 + 88))(v7, v4) == *MEMORY[0x277D85B00])
      {
        v17 = 0;
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v16 + 8))(v7, v4);
        v18 = "success: %{BOOL}d";
        v17 = 1;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      *(v19 + 1) = v17;
      *(v19 + 2) = 1024;
      *(v19 + 4) = v23 & 1;
      v20 = sub_2755EC77C();
      _os_signpost_emit_with_name_impl(&dword_275572000, v15, v22, v20, "ManageStorageDrilldown", v18, v19, 8u);
      MEMORY[0x277C7DA70](v19, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    v21 = *(v2 + v14);
    *(v2 + v14) = 0;
  }

  return result;
}

uint64_t sub_2755CE7E4()
{
  v1 = v0;
  v2 = sub_2755EC7CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2755EC79C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad;
  if (*(v1 + OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad))
  {
    v22 = v3;

    v14 = sub_2755EC7AC();
    sub_2755EC7DC();
    v21 = sub_2755ECB5C();
    if (sub_2755ECB8C())
    {

      sub_2755EC80C();

      v15 = v22;
      if ((*(v22 + 88))(v6, v2) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v15 + 8))(v6, v2);
        v16 = "didExitBeforeLoaded";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_2755EC77C();
      _os_signpost_emit_with_name_impl(&dword_275572000, v14, v21, v18, "ManageStorageDrilldown", v16, v17, 2u);
      MEMORY[0x277C7DA70](v17, -1, -1);
    }

    (*(v8 + 8))(v12, v7);
    v19 = *(v1 + v13);
    *(v1 + v13) = 0;
  }

  return result;
}

uint64_t sub_2755CEA70()
{
  v1 = OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_signposter;
  v2 = sub_2755EC7BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad);

  return v0;
}

uint64_t sub_2755CEAE0()
{
  v1 = OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_signposter;
  v2 = sub_2755EC7BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11iCloudQuota22ManageStorageAnalytics_manageStorageDrilldownLoad);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManageStorageAnalytics()
{
  result = qword_2809FA380;
  if (!qword_2809FA380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2755CEBE0()
{
  result = sub_2755EC7BC();
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

uint64_t sub_2755CECF4()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  sub_2755CDA88((v0 + 12), (v0 + 20));
  v3(v0 + 20, 0);

  sub_2755756C0((v0 + 20), &qword_2809F9CF8, &qword_2755F3F10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2755CEDA0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_275577558;

  return sub_275577824(v9, v10, v11, v2, v3, v4, v5, v6);
}

uint64_t sub_2755CEE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_275578CDC(a3, v27 - v11, &qword_2809F9CE8, &qword_2755F3690);
  v13 = sub_2755ECA9C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2755756C0(v12, &qword_2809F9CE8, &qword_2755F3690);
  }

  else
  {
    sub_2755ECA8C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2755ECA5C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2755EC99C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2755CF170(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t a1, void *a2), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D20, qword_2755F3738);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  a2(sub_275577E24, v10);
}

uint64_t sub_2755CF310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void, void, char *, uint64_t, void *))
{
  v25 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v24 - v18;
  v20 = sub_2755ECA9C();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v9;
  v21[5] = a1;
  v21[6] = a2;
  v21[7] = a3;
  v21[8] = a4;
  v21[9] = a5;
  v21[10] = a6;
  v22 = v9;

  a9(0, 0, v19, v25, v21);
}

uint64_t sub_2755CF468()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_2755CF4D4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_275577558;

  return sub_275575854(v9, v10, v11, v2, v3, v4, v5, v6);
}

uint64_t sub_2755CF5A4(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D00, &qword_2755F3708);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  a2(sub_275578EFC, v10);
}

uint64_t sub_2755CF6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v23 - v9;
  sub_275578CDC(a3, v23 - v9, &qword_2809F9CE8, &qword_2755F3690);
  v11 = sub_2755ECA9C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2755756C0(v10, &qword_2809F9CE8, &qword_2755F3690);
  }

  else
  {
    sub_2755ECA8C();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2755ECA5C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2755EC99C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

id ICQTaskLimiters.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICQTaskLimiters.init()()
{
  v1 = OBJC_IVAR____TtC11iCloudQuota15ICQTaskLimiters_taskLimiters;
  type metadata accessor for TaskLimiters();
  *&v0[v1] = sub_2755D0D4C();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ICQTaskLimiters();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ICQTaskLimiters.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICQTaskLimiters();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2755CFBA4()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = sub_2755CFD74;
  }

  else
  {
    v6 = sub_2755CFCD0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2755CFCD0()
{
  v1 = v0[33];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[26];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2755CFD74()
{
  v1 = v0[33];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[35];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[26];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2755CFE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v25[-1] - v10;
  v26[0] = a4;
  v26[1] = a5;
  sub_2755D0CDC(a3, &v25[-1] - v10);
  v12 = sub_2755ECA9C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2755756C0(v11, &qword_2809F9CE8, &qword_2755F3690);
  }

  else
  {
    sub_2755ECA8C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2755ECA5C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2755EC99C();
      v21 = *(v20 + 16);
      sub_2755D0174(v20 + 32, v26, v25);

      v22 = v25[0];
      sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2755756C0(a3, &qword_2809F9CE8, &qword_2755F3690);
  if (v19 | v17)
  {
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = v17;
    v25[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2755D0094()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2755D00C0()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t sub_2755D0104()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t sub_2755D013C()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2755D0174@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2755D0230(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2755D02B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D40, &unk_2755F3820);
  v36 = a2;
  result = sub_2755ECC5C();
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
        sub_27557645C(v25, v37);
      }

      else
      {
        sub_2755D0230(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2755ECD7C();
      sub_2755EC9AC();
      result = sub_2755ECD9C();
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
      result = sub_27557645C(v37, *(v8 + 56) + 40 * v16);
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2755D057C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D30, &qword_2755F3810);
  v38 = a2;
  result = sub_2755ECC5C();
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
      }

      v27 = *(v8 + 40);
      sub_2755ECD7C();
      sub_2755EC9AC();
      result = sub_2755ECD9C();
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2755D0824(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2755750C0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2755D057C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2755750C0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2755ECD2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2755D0B6C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
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

void *sub_2755D09C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D40, &unk_2755F3820);
  v2 = *v0;
  v3 = sub_2755ECC4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_2755D0230(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_27557645C(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2755D0B6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D30, &qword_2755F3810);
  v2 = *v0;
  v3 = sub_2755ECC4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_2755D0CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2755D0D60()
{
  v0 = sub_2755ECC8C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2755D0DB4(char a1)
{
  if (a1)
  {
    return 0x7373696D736964;
  }

  else
  {
    return 0x79616C70736964;
  }
}

uint64_t sub_2755D0DE4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7373696D736964;
  }

  else
  {
    v2 = 0x79616C70736964;
  }

  if (*a2)
  {
    v3 = 0x7373696D736964;
  }

  else
  {
    v3 = 0x79616C70736964;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2755ECD0C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2755D0E6C()
{
  v1 = *v0;
  sub_2755ECD7C();
  sub_2755EC9AC();

  return sub_2755ECD9C();
}

uint64_t sub_2755D0EE4()
{
  *v0;
  sub_2755EC9AC();
}

uint64_t sub_2755D0F40()
{
  v1 = *v0;
  sub_2755ECD7C();
  sub_2755EC9AC();

  return sub_2755ECD9C();
}

uint64_t sub_2755D0FB4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2755ECC8C();

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

void sub_2755D1014(uint64_t *a1@<X8>)
{
  v2 = 0x79616C70736964;
  if (*v1)
  {
    v2 = 0x7373696D736964;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

id sub_2755D1188()
{
  v0 = objc_allocWithZone(type metadata accessor for BubbleBannerTracker());
  result = sub_2755D12FC(0);
  qword_280C85118 = result;
  return result;
}

uint64_t *sub_2755D11F4()
{
  if (qword_280C85110 != -1)
  {
    swift_once();
  }

  return &qword_280C85118;
}

id static BubbleBannerTracker.shared.getter()
{
  if (qword_280C85110 != -1)
  {
    swift_once();
  }

  v1 = qword_280C85118;

  return v1;
}

id sub_2755D12FC(id a1)
{
  v2 = &v1[OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerDismissedKey];
  *v2 = 0xD000000000000015;
  *(v2 + 1) = 0x80000002755FA290;
  v3 = &v1[OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerDisplayedKey];
  *v3 = 0xD000000000000015;
  *(v3 + 1) = 0x80000002755FA2B0;
  v4 = &v1[OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerCAEventKey];
  *v4 = 0xD00000000000001CLL;
  *(v4 + 1) = 0x80000002755FA2D0;
  v5 = &v1[OBJC_IVAR___ICQBubbleBannerTracker_kFullReason];
  *v5 = 0xD000000000000011;
  *(v5 + 1) = 0x80000002755FA2F0;
  v6 = &v1[OBJC_IVAR___ICQBubbleBannerTracker_kAlmostFullReason];
  *v6 = 0xD000000000000017;
  *(v6 + 1) = 0x80000002755FA310;
  if (!a1)
  {
    a1 = [objc_opt_self() standardUserDefaults];
  }

  *&v1[OBJC_IVAR___ICQBubbleBannerTracker_userDefaults] = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BubbleBannerTracker();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_2755D1458(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = sub_2755EC61C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2755EC5EC();
  v14 = a3;
  v15 = a1;
  sub_2755D46F0(v14, v13, a6);

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_2755D1564()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DA0, &qword_2755F39A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2755F3830;
  *(inited + 32) = 0x795472656E6E6162;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = sub_2755ECAEC();
  *(inited + 56) = 0x616C707369447369;
  *(inited + 64) = 0xEB00000000646579;
  *(inited + 72) = sub_2755ECA4C();
  strcpy((inited + 80), "lastDismissed");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_2755ECADC();
  strcpy((inited + 104), "suppressUntil");
  *(inited + 118) = -4864;
  *(inited + 120) = sub_2755ECADC();
  v1 = sub_2755D4F9C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9DA8, &qword_2755F39B0);
  swift_arrayDestroy();
  return v1;
}

id sub_2755D16CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_2755D4F50();
    v5 = sub_2755EC8FC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2755D1758@<X0>(uint64_t a1@<X8>)
{
  sub_2755EC5FC();
  v2 = sub_2755EC61C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_2755D17C8(char *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v175 = a4;
  v183 = a1;
  v11 = sub_2755EC82C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v161 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v176 = &v161 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v174 = &v161 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v172 = &v161 - v25;
  MEMORY[0x28223BE20](v24);
  v177 = &v161 - v26;
  v27 = sub_2755EC6DC();
  v181 = *(v27 - 8);
  v182 = v27;
  v28 = v181[8];
  MEMORY[0x28223BE20](v27);
  v179 = &v161 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_2755EC6EC();
  v178 = *(v180 - 1);
  v30 = *(v178 + 64);
  MEMORY[0x28223BE20](v180);
  v32 = &v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D78, &qword_2755F3850);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v161 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v161 - v38;
  v40 = sub_2755EC61C();
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v43 = MEMORY[0x28223BE20](v42);
  v44 = MEMORY[0x28223BE20](v43);
  v45 = MEMORY[0x28223BE20](v44);
  v46 = MEMORY[0x28223BE20](v45);
  if (a6)
  {
    v53 = sub_2755DEA84();
    (*(v12 + 16))(v16, v53, v11);
    v54 = sub_2755EC81C();
    v55 = sub_2755ECB0C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_2755CC688(0xD00000000000003ALL, 0x80000002755FA330, &aBlock);
      _os_log_impl(&dword_275572000, v54, v55, "%s Banner was dismissed in the same session returning false", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x277C7DA70](v57, -1, -1);
      MEMORY[0x277C7DA70](v56, -1, -1);
    }

    (*(v12 + 8))(v16, v11);
    return 0;
  }

  v162 = v48;
  v163 = v47;
  v164 = a5;
  v165 = v52;
  v167 = v51;
  v168 = &v161 - v49;
  v170 = v50;
  v171 = v46;
  v173 = v12;
  v59 = *&v7[OBJC_IVAR___ICQBubbleBannerTracker_userDefaults];
  v60 = *&v7[OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerDismissedKey];
  v169 = *&v7[OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerDismissedKey + 8];
  v61 = sub_2755EC95C();
  v62 = [v59 dictionaryForKey_];

  if (!v62)
  {
    goto LABEL_22;
  }

  v166 = v11;
  v63 = sub_2755EC90C();

  result = [v183 aa_altDSID];
  if (result)
  {
    v64 = result;
    v65 = sub_2755EC98C();
    v67 = v66;

    if (*(v63 + 16))
    {
      v183 = v7;
      v68 = sub_2755750C0(v65, v67);
      v70 = v69;

      if (v70)
      {
        sub_2755CDA88(*(v63 + 56) + 32 * v68, &aBlock);

        v71 = v171;
        v72 = swift_dynamicCast();
        v73 = v170;
        (*(v170 + 56))(v39, v72 ^ 1u, 1, v71);
        v74 = *(v73 + 48);
        v75 = v74(v39, 1, v71);
        v7 = v183;
        if (v75 != 1)
        {
          v76 = *(v73 + 32);
          v76(v168, v39, v71);
          result = sub_2755EC5FC();
          v77 = a2 / 1000.0;
          if (COERCE__INT64(fabs(a2 / 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v77 > -9.22337204e18)
          {
            if (v77 < 9.22337204e18)
            {
              sub_2755EC6CC();
              v78 = v181;
              v79 = v182;
              v80 = v179;
              v181[13](v179, *MEMORY[0x277CC99A8], v182);
              sub_2755EC6BC();
              (v78[1])(v80, v79);
              (*(v178 + 8))(v32, v180);
              v81 = v171;
              v82 = v74(v37, 1, v171);
              v83 = v173;
              v84 = (v173 + 16);
              if (v82 == 1)
              {
                sub_2755D4B88(v37);
                v85 = sub_2755DEA84();
                v86 = v176;
                v87 = v166;
                (*v84)(v176, v85, v166);
                v88 = sub_2755EC81C();
                v89 = sub_2755ECB0C();
                if (os_log_type_enabled(v88, v89))
                {
                  v90 = swift_slowAlloc();
                  v91 = swift_slowAlloc();
                  aBlock = v91;
                  *v90 = 136315138;
                  *(v90 + 4) = sub_2755CC688(0xD00000000000003ALL, 0x80000002755FA330, &aBlock);
                  _os_log_impl(&dword_275572000, v88, v89, "%s Unable to compute endate from given info.", v90, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v91);
                  MEMORY[0x277C7DA70](v91, -1, -1);
                  MEMORY[0x277C7DA70](v90, -1, -1);
                }

                (*(v83 + 8))(v86, v87);
                v92 = *(v170 + 8);
                v93 = v171;
                v92(v167, v171);
                v92(v168, v93);
                return 0;
              }

              v76(v165, v37, v81);
              v101 = sub_2755DEA84();
              v102 = *v84;
              v103 = v177;
              v179 = v101;
              v104 = v166;
              v180 = v102;
              v181 = v84;
              (v102)(v177);
              v105 = v170;
              v106 = *(v170 + 16);
              v107 = v162;
              v106(v162, v168, v81);
              v108 = v163;
              v106(v163, v167, v81);
              v109 = sub_2755EC81C();
              v110 = sub_2755ECB0C();
              if (os_log_type_enabled(v109, v110))
              {
                v111 = swift_slowAlloc();
                v178 = swift_slowAlloc();
                aBlock = v178;
                *v111 = 136315906;
                *(v111 + 4) = sub_2755CC688(0xD00000000000003ALL, 0x80000002755FA330, &aBlock);
                *(v111 + 12) = 2080;
                sub_2755D4C00(&qword_2809F9D88);
                LODWORD(v176) = v110;
                v112 = sub_2755ECCDC();
                v114 = v113;
                v115 = *(v105 + 8);
                v115(v107, v81);
                v116 = sub_2755CC688(v112, v114, &aBlock);
                v117 = v115;

                *(v111 + 14) = v116;
                *(v111 + 22) = 2048;
                *(v111 + 24) = a2;
                *(v111 + 32) = 2080;
                v104 = v166;
                v118 = sub_2755ECCDC();
                v120 = v119;
                v182 = v117;
                v117(v108, v81);
                v121 = sub_2755CC688(v118, v120, &aBlock);
                v122 = v173;

                *(v111 + 34) = v121;
                _os_log_impl(&dword_275572000, v109, v176, "%s Checking Banner supression threshold lastDismissed: %s supressUntil: %f current: %s", v111, 0x2Au);
                v123 = v178;
                swift_arrayDestroy();
                MEMORY[0x277C7DA70](v123, -1, -1);
                MEMORY[0x277C7DA70](v111, -1, -1);

                v124 = *(v122 + 8);
                v124(v177, v104);
              }

              else
              {

                v125 = *(v105 + 8);
                v125(v108, v81);
                v182 = v125;
                v125(v107, v81);
                v124 = *(v173 + 8);
                v124(v103, v104);
              }

              v126 = v81;
              v127 = v174;
              sub_2755D4C00(&qword_2809F9D80);
              if (sub_2755EC93C())
              {
                v180(v127, v179, v104);
                v128 = sub_2755EC81C();
                v129 = sub_2755ECB0C();
                if (os_log_type_enabled(v128, v129))
                {
                  v130 = swift_slowAlloc();
                  v131 = swift_slowAlloc();
                  aBlock = v131;
                  *v130 = 136315138;
                  *(v130 + 4) = sub_2755CC688(0xD00000000000003ALL, 0x80000002755FA330, &aBlock);
                  _os_log_impl(&dword_275572000, v128, v129, "%s Supression threshold not passed. Supressing banner", v130, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v131);
                  MEMORY[0x277C7DA70](v131, -1, -1);
                  v132 = v130;
                  v126 = v171;
                  MEMORY[0x277C7DA70](v132, -1, -1);
                }

                v124(v127, v104);
                sub_2755EC5DC();
                v134 = v133;
                v135 = v183;
                v136 = v175;
                if (*&v183[OBJC_IVAR___ICQBubbleBannerTracker_kFullReason] == v175 && *&v183[OBJC_IVAR___ICQBubbleBannerTracker_kFullReason + 8] == v164 || (sub_2755ECD0C() & 1) != 0)
                {
                  v137 = 0;
                }

                else if (*&v135[OBJC_IVAR___ICQBubbleBannerTracker_kAlmostFullReason] == v136 && *&v135[OBJC_IVAR___ICQBubbleBannerTracker_kAlmostFullReason + 8] == v164)
                {
                  v137 = 1;
                }

                else if (sub_2755ECD0C())
                {
                  v137 = 1;
                }

                else
                {
                  v137 = -1;
                }

                v138 = *&v135[OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerCAEventKey];
                v139 = *&v135[OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerCAEventKey + 8];
                v140 = sub_2755EC95C();
                v141 = swift_allocObject();
                *(v141 + 16) = v137;
                *(v141 + 24) = 0;
                *(v141 + 32) = v134;
                *(v141 + 40) = a2;
                v188 = sub_2755D510C;
                v189 = v141;
                aBlock = MEMORY[0x277D85DD0];
                v185 = 1107296256;
                v186 = sub_2755D16CC;
                v187 = &block_descriptor_8;
                v142 = _Block_copy(&aBlock);

                AnalyticsSendEventLazy();
                _Block_release(v142);

                v143 = v182;
                v182(v165, v126);
                v143(v167, v126);
                v143(v168, v126);
                return 0;
              }

              v144 = v172;
              v180(v172, v179, v104);
              v145 = sub_2755EC81C();
              v146 = sub_2755ECB0C();
              if (os_log_type_enabled(v145, v146))
              {
                v147 = swift_slowAlloc();
                v148 = swift_slowAlloc();
                aBlock = v148;
                *v147 = 136315138;
                *(v147 + 4) = sub_2755CC688(0xD00000000000003ALL, 0x80000002755FA330, &aBlock);
                _os_log_impl(&dword_275572000, v145, v146, "%s Supression threshold passed. Displaying banner", v147, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v148);
                MEMORY[0x277C7DA70](v148, -1, -1);
                v149 = v147;
                v126 = v171;
                MEMORY[0x277C7DA70](v149, -1, -1);
              }

              v124(v144, v104);
              sub_2755EC5DC();
              v151 = v150;
              v152 = v183;
              v153 = v175;
              if (*&v183[OBJC_IVAR___ICQBubbleBannerTracker_kFullReason] == v175 && *&v183[OBJC_IVAR___ICQBubbleBannerTracker_kFullReason + 8] == v164 || (sub_2755ECD0C() & 1) != 0)
              {
                v154 = 0;
              }

              else if (*&v152[OBJC_IVAR___ICQBubbleBannerTracker_kAlmostFullReason] == v153 && *&v152[OBJC_IVAR___ICQBubbleBannerTracker_kAlmostFullReason + 8] == v164)
              {
                v154 = 1;
              }

              else if (sub_2755ECD0C())
              {
                v154 = 1;
              }

              else
              {
                v154 = -1;
              }

              v155 = *&v152[OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerCAEventKey];
              v156 = *&v152[OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerCAEventKey + 8];
              v157 = sub_2755EC95C();
              v158 = swift_allocObject();
              *(v158 + 16) = v154;
              *(v158 + 24) = 1;
              *(v158 + 32) = v151;
              *(v158 + 40) = a2;
              v188 = sub_2755D4BF0;
              v189 = v158;
              aBlock = MEMORY[0x277D85DD0];
              v185 = 1107296256;
              v186 = sub_2755D16CC;
              v187 = &block_descriptor_1;
              v159 = _Block_copy(&aBlock);

              AnalyticsSendEventLazy();
              _Block_release(v159);

              v160 = v182;
              v182(v165, v126);
              v160(v167, v126);
              v160(v168, v126);
              return 1;
            }

            goto LABEL_58;
          }

          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        goto LABEL_21;
      }

      v7 = v183;
    }

    else
    {
    }

    (*(v170 + 56))(v39, 1, 1, v171);
LABEL_21:
    sub_2755D4B88(v39);
    v11 = v166;
LABEL_22:
    v94 = sub_2755DEA84();
    v95 = v173;
    (*(v173 + 16))(v19, v94, v11);
    v96 = v7;
    v97 = sub_2755EC81C();
    v98 = sub_2755ECB0C();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      aBlock = v100;
      *v99 = 136315394;
      *(v99 + 4) = sub_2755CC688(0xD00000000000003ALL, 0x80000002755FA330, &aBlock);
      *(v99 + 12) = 2080;
      *(v99 + 14) = sub_2755CC688(v60, v169, &aBlock);
      _os_log_impl(&dword_275572000, v97, v98, "%s No cached event found for, possibly first display of the banner %s returning true", v99, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C7DA70](v100, -1, -1);
      MEMORY[0x277C7DA70](v99, -1, -1);
    }

    (*(v95 + 8))(v19, v11);
    return 1;
  }

LABEL_59:
  __break(1u);
  return result;
}

id sub_2755D2CE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v161 = a2;
  v162 = a3;
  v167 = a1;
  v165 = a4;
  v7 = sub_2755EC82C();
  v166 = *(v7 - 8);
  v8 = *(v166 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v142[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v150 = &v142[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v151 = &v142[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v147 = &v142[-v17];
  MEMORY[0x28223BE20](v16);
  v152 = &v142[-v18];
  v19 = sub_2755EC6DC();
  v155 = *(v19 - 8);
  v20 = v155[8];
  MEMORY[0x28223BE20](v19);
  v22 = &v142[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v154 = sub_2755EC6EC();
  v153 = *(v154 - 1);
  v23 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v25 = &v142[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9D78, &qword_2755F3850);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v142[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v32 = &v142[-v31];
  v33 = sub_2755EC61C();
  v168 = *(v33 - 8);
  v169 = v33;
  v34 = *(v168 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v164 = &v142[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x28223BE20](v35);
  v156 = &v142[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v149 = &v142[-v40];
  v41 = MEMORY[0x28223BE20](v39);
  v148 = &v142[-v42];
  v43 = MEMORY[0x28223BE20](v41);
  v157 = &v142[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v158 = &v142[-v46];
  MEMORY[0x28223BE20](v45);
  v159 = &v142[-v47];
  v48 = *(v5 + OBJC_IVAR___ICQBubbleBannerTracker_userDefaults);
  v163 = v5;
  v49 = *(v5 + OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerDisplayedKey);
  v50 = *(v5 + OBJC_IVAR___ICQBubbleBannerTracker_kBubbleBannerDisplayedKey + 8);
  v51 = sub_2755EC95C();
  v52 = [v48 dictionaryForKey_];

  if (!v52)
  {
    goto LABEL_16;
  }

  v160 = v7;
  v53 = sub_2755EC90C();

  result = [v167 aa_altDSID];
  if (!result)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v55 = result;
  v56 = sub_2755EC98C();
  v58 = v57;

  if (!*(v53 + 16))
  {

    goto LABEL_14;
  }

  v59 = sub_2755750C0(v56, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
LABEL_14:

    (*(v168 + 56))(v32, 1, 1, v169);
    goto LABEL_15;
  }

  sub_2755CDA88(*(v53 + 56) + 32 * v59, v170);

  v62 = v169;
  v63 = swift_dynamicCast();
  v64 = v168;
  v146 = *(v168 + 56);
  v146(v32, v63 ^ 1u, 1, v62);
  v65 = *(v64 + 48);
  if (v65(v32, 1, v62) == 1)
  {
LABEL_15:
    sub_2755D4B88(v32);
    v7 = v160;
LABEL_16:
    v82 = sub_2755DEA84();
    v83 = v166;
    (*(v166 + 16))(v11, v82, v7);
    v84 = sub_2755EC81C();
    v85 = sub_2755ECB0C();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v170[0] = v87;
      *v86 = 136315138;
      *(v86 + 4) = sub_2755CC688(0xD000000000000021, 0x80000002755FA390, v170);
      _os_log_impl(&dword_275572000, v84, v85, "%s No cached events found, ignoring decay thresholds and displaying banner at the top.", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x277C7DA70](v87, -1, -1);
      MEMORY[0x277C7DA70](v86, -1, -1);
    }

    (*(v83 + 8))(v11, v7);
    v89 = v164;
    v88 = v165;
    v90 = v168;
    v91 = v162;
    v92 = v163;
    v93 = v161;
    sub_2755EC5FC();
    (*((*MEMORY[0x277D85000] & *v92) + 0x88))(v167, v89, v93, v91);
    v94 = v169;
    (*(v90 + 32))(v88, v89, v169);
    return (*(v90 + 56))(v88, 0, 1, v94);
  }

  v66 = v169;
  v67 = *(v168 + 32);
  v145 = v168 + 32;
  v144 = v67;
  v67(v159, v32, v169);
  result = sub_2755EC5FC();
  v68 = a5 / 1000.0;
  if (COERCE__INT64(fabs(a5 / 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v68 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v68 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_2755EC6CC();
  v69 = v155;
  (v155[13])(v22, *MEMORY[0x277CC99A8], v19);
  sub_2755EC6BC();
  (v69[1])(v22, v19);
  (*(v153 + 8))(v25, v154);
  v70 = v65(v30, 1, v66);
  v71 = v166;
  v72 = (v166 + 16);
  if (v70 == 1)
  {
    sub_2755D4B88(v30);
    v73 = sub_2755DEA84();
    v74 = v150;
    v75 = v160;
    (*v72)(v150, v73, v160);
    v76 = sub_2755EC81C();
    v77 = sub_2755ECB0C();
    v78 = os_log_type_enabled(v76, v77);
    v79 = v168;
    if (v78)
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v170[0] = v81;
      *v80 = 136315138;
      *(v80 + 4) = sub_2755CC688(0xD000000000000021, 0x80000002755FA390, v170);
      _os_log_impl(&dword_275572000, v76, v77, "%s Unable to compute endate from given info.", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x277C7DA70](v81, -1, -1);
      MEMORY[0x277C7DA70](v80, -1, -1);
    }

    (*(v71 + 8))(v74, v75);
    (*(v79 + 8))(v158, v66);
LABEL_26:
    v129 = v165;
    v130 = v146;
    v144(v165, v159, v66);
    return v130(v129, 0, 1, v66);
  }

  v95 = v157;
  v144(v157, v30, v66);
  v96 = sub_2755DEA84();
  v97 = *v72;
  v98 = v152;
  v153 = v96;
  v155 = v72;
  v154 = v97;
  v97(v152);
  v99 = v168;
  v100 = *(v168 + 16);
  v101 = v148;
  v100(v148, v159, v66);
  v102 = v149;
  v100(v149, v158, v66);
  v100(v156, v95, v66);
  v103 = sub_2755EC81C();
  v104 = sub_2755ECB0C();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v143 = v104;
    v106 = v105;
    v150 = swift_slowAlloc();
    v170[0] = v150;
    *v106 = 136316162;
    *(v106 + 4) = sub_2755CC688(0xD000000000000021, 0x80000002755FA390, v170);
    *(v106 + 12) = 2080;
    sub_2755D4C00(&qword_2809F9D88);
    v107 = sub_2755ECCDC();
    v109 = v108;
    v110 = *(v99 + 8);
    v110(v101, v169);
    v111 = sub_2755CC688(v107, v109, v170);

    *(v106 + 14) = v111;
    *(v106 + 22) = 2048;
    *(v106 + 24) = a5;
    *(v106 + 32) = 2080;
    v112 = sub_2755ECCDC();
    v114 = v113;
    v110(v102, v169);
    v115 = sub_2755CC688(v112, v114, v170);

    *(v106 + 34) = v115;
    *(v106 + 42) = 2080;
    v116 = v156;
    v66 = v169;
    v117 = sub_2755ECCDC();
    v119 = v118;
    v110(v116, v66);
    v120 = sub_2755CC688(v117, v119, v170);

    *(v106 + 44) = v120;
    _os_log_impl(&dword_275572000, v103, v143, "%s Checking Banner decay threshold lastDisplayed: %s decayUntil: %f current: %s end: %s", v106, 0x34u);
    v121 = v150;
    swift_arrayDestroy();
    MEMORY[0x277C7DA70](v121, -1, -1);
    MEMORY[0x277C7DA70](v106, -1, -1);

    v122 = *(v166 + 8);
    v122(v152, v160);
  }

  else
  {

    v110 = *(v99 + 8);
    v110(v156, v66);
    v110(v102, v66);
    v110(v101, v66);
    v122 = *(v71 + 8);
    v122(v98, v160);
  }

  v123 = v151;
  sub_2755D4C00(&qword_2809F9D80);
  if (sub_2755EC93C())
  {
    v124 = v160;
    (v154)(v123, v153, v160);
    v125 = sub_2755EC81C();
    v126 = sub_2755ECB0C();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v170[0] = v128;
      *v127 = 136315138;
      *(v127 + 4) = sub_2755CC688(0xD000000000000021, 0x80000002755FA390, v170);
      _os_log_impl(&dword_275572000, v125, v126, "%s Decay threshold not passed. We will let the banner decay.", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v128);
      MEMORY[0x277C7DA70](v128, -1, -1);
      MEMORY[0x277C7DA70](v127, -1, -1);
    }

    v122(v123, v124);
    v110(v157, v66);
    v110(v158, v66);
    goto LABEL_26;
  }

  v131 = v147;
  v132 = v160;
  (v154)(v147, v153, v160);
  v133 = sub_2755EC81C();
  v134 = sub_2755ECB0C();
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v170[0] = v136;
    *v135 = 136315138;
    *(v135 + 4) = sub_2755CC688(0xD000000000000021, 0x80000002755FA390, v170);
    _os_log_impl(&dword_275572000, v133, v134, "%s Decay threshold passed. Displaying banner at the top of the stack.", v135, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v136);
    MEMORY[0x277C7DA70](v136, -1, -1);
    MEMORY[0x277C7DA70](v135, -1, -1);
  }

  v122(v131, v132);
  v138 = v164;
  v137 = v165;
  v139 = v162;
  v140 = v163;
  v141 = v161;
  sub_2755EC5FC();
  (*((*MEMORY[0x277D85000] & *v140) + 0x88))(v167, v138, v141, v139);
  v110(v157, v66);
  v110(v158, v66);
  v110(v159, v66);
  v144(v137, v138, v66);
  return v146(v137, 0, 1, v66);
}

id BubbleBannerTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BubbleBannerTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BubbleBannerTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}