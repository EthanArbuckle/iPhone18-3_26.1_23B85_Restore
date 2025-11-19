uint64_t sub_265BAEC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v44 = a1;
  v40 = *(a2 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](a1);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_265BF2C30();
  v7 = *(v43 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v43);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265BF3240();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v36 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  sub_265BF3130();
  sub_265BF3220();
  v18 = *(v12 + 8);
  v39 = v11;
  v37 = v12 + 8;
  v35 = v18;
  v18(v17, v11);
  v19 = objc_opt_self();
  v20 = *MEMORY[0x277CBE640];
  v21 = (v7 + 8);
  v41 = a3 + 16;
  v42 = a3;
  do
  {
    v22 = MEMORY[0x26676D6B0]();
    v23 = v4;
    v24 = [v19 mainRunLoop];
    sub_265BF2BF0();
    v25 = sub_265BF2C10();
    (*v21)(v10, v43);
    v26 = [v24 runMode:v20 beforeDate:v25];

    v4 = v23;
    objc_autoreleasePoolPop(v22);
  }

  while (v26 && ((*(v42 + 16))(v23) & 1) != 0);
  v27 = v36;
  sub_265BF3130();
  v28 = v40;
  v29 = v38;
  (*(v40 + 16))(v38, v44, v4);
  v30 = sub_265BF3230();
  v31 = sub_265BF34E0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109376;
    *(v32 + 4) = v26;
    *(v32 + 8) = 1024;
    v33 = (*(v42 + 16))(v4) & 1;
    (*(v28 + 8))(v29, v4);
    *(v32 + 10) = v33;
    _os_log_impl(&dword_265BAD000, v30, v31, "Daemon run complete runloop: %{BOOL}d, daemon: %{BOOL}d", v32, 0xEu);
    MEMORY[0x26676DCA0](v32, -1, -1);
  }

  else
  {
    (*(v28 + 8))(v29, v4);
  }

  return v35(v27, v39);
}

uint64_t sub_265BAF098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3140();
  sub_265BF3220();
  (*(v5 + 8))(v8, v4);
  if (qword_281068810 != -1)
  {
    swift_once();
  }

  return RemoteParticipantDiscovery.beginDiscoveringParticipantsWithRole(_:timeout:)(a1, a2, *&qword_281068818);
}

uint64_t RemoteParticipantDiscovery.beginDiscoveringParticipantsWithRole(_:timeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v96 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v97 = *(v7 - 8);
  v98 = v7;
  v8 = *(v97 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v95 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v94 = v89 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v103 = v89 - v14;
  v93 = v15;
  MEMORY[0x28223BE20](v13);
  v104 = v89 - v16;
  v17 = sub_265BF3240();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v90 = v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v89 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v89 - v25;
  sub_265BF3140();
  sub_265BF3220();
  v100 = *(v18 + 8);
  v101 = v18 + 8;
  v100(v26, v17);
  swift_beginAccess();
  sub_265BB0718((v4 + 19), &v110);
  v27 = v111;
  v91 = v17;
  LODWORD(v99) = a1;
  if (v111)
  {
    v28 = v110;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_265BB0750(v116, &qword_28003C480, &qword_265BF4EC8);
    sub_265BF3140();

    v29 = sub_265BF3230();
    v30 = sub_265BF34D0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v110 = v32;
      *v31 = 136446210;
      v33 = sub_265BB064C(v28, v27, &v110);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_265BAD000, v29, v30, "Clobbering existing discovery for identifier: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      v34 = v32;
      a1 = v99;
      MEMORY[0x26676DCA0](v34, -1, -1);
      MEMORY[0x26676DCA0](v31, -1, -1);
    }

    else
    {
    }

    v100(v24, v17);
  }

  else
  {
    sub_265BB07B4(&v110);
  }

  v35 = v4[6];
  v36 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v35);
  v37 = (*(v36 + 8))(a1, v35, v36, a3);
  v39 = v38;
  ObjectType = swift_getObjectType();
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v39[16];

  v42(sub_265BAFE24, v41, ObjectType, v39);

  v43 = swift_allocObject();
  swift_weakInit();
  v44 = v39[19];

  v44(sub_265BC3560, v43, ObjectType, v39);

  v45 = swift_allocObject();
  swift_weakInit();
  v46 = v39[22];

  v102 = v37;
  v46(sub_265BC3590, v45, ObjectType, v39);

  v47 = sub_265BF3370();
  v49 = v48;
  v50 = v4[11];
  v89[1] = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v50);
  sub_265BC3598();
  v51 = sub_265BF3520();
  v52 = swift_allocObject();
  v92 = v4;
  swift_weakInit();
  v53 = swift_allocObject();
  v53[2] = v52;
  v53[3] = v47;
  v53[4] = v49;

  v54 = sub_265BF3080();

  v55 = v99;

  if (v55 <= 5u && ((1 << v55) & 0x26) != 0)
  {
    v56 = v47;
    v57 = v92[16];
    v58 = v92[17];
    __swift_project_boxed_opaque_existential_1(v92 + 13, v57);
    v59 = v57;
    v47 = v56;
    (*(v58 + 8))(v109, v59, v58);
  }

  else
  {
    memset(v109, 0, 40);
  }

  v60 = v90;
  v110 = v47;
  v111 = v49;
  v112 = v102;
  v113 = v39;
  v114 = v55;
  v115 = v54;
  sub_265BC35F0(v109, v116);
  swift_unknownObjectRetain();
  v99 = v54;
  swift_unknownObjectRetain();
  sub_265BF3140();
  sub_265BB0718(&v110, v107);
  v61 = sub_265BF3230();
  v62 = sub_265BF34E0();
  v63 = os_log_type_enabled(v61, v62);
  v64 = v91;
  if (v63)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v106 = v66;
    *v65 = 136446210;
    sub_265BB0718(v107, &v105);
    v67 = sub_265BF3350();
    v69 = v68;
    sub_265BB07B4(v107);
    v70 = sub_265BB064C(v67, v69, &v106);

    *(v65 + 4) = v70;
    _os_log_impl(&dword_265BAD000, v61, v62, "Starting discovery: %{public}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
    MEMORY[0x26676DCA0](v66, -1, -1);
    MEMORY[0x26676DCA0](v65, -1, -1);
  }

  else
  {

    sub_265BB07B4(v107);
  }

  v100(v60, v64);
  RemoteParticipantDiscovery.endDiscovering()();
  v71 = swift_allocObject();
  swift_weakInit();
  sub_265BB0718(&v110, v107);
  v72 = swift_allocObject();
  *(v72 + 16) = v71;
  v73 = v107[3];
  *(v72 + 56) = v107[2];
  *(v72 + 72) = v73;
  *(v72 + 88) = v107[4];
  *(v72 + 104) = v108;
  v74 = v107[1];
  *(v72 + 24) = v107[0];
  *(v72 + 40) = v74;
  v75 = v103;
  sub_265BF2DF0();
  v76 = v97;
  v77 = v98;
  v100 = *(v97 + 16);
  v78 = v94;
  (v100)(v94, v75, v98);
  v79 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v80 = v79 + v93;
  v101 = swift_allocObject();
  v81 = *(v76 + 32);
  v81(v101 + v79, v78, v77);
  v82 = v95;
  (v100)(v95, v104, v77);
  v83 = (v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  v81(v84 + v79, v82, v77);
  v85 = (v84 + v83);
  v86 = v101;
  *v85 = sub_265BB2398;
  v85[1] = v86;
  sub_265BF2DF0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v87 = *(v76 + 8);
  v87(v103, v77);
  v87(v104, v77);
  sub_265BB07B4(&v110);
  return sub_265BB0750(v109, &qword_28003C480, &qword_265BF4EC8);
}

uint64_t sub_265BAFC3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265BAFC7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265BAFD10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_265BAFDBC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_265BAFE54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_265BAFEC8(void *a1)
{
  v2 = v1;
  v4 = sub_265BF3240();
  v69 = *(v4 - 8);
  v5 = *(v69 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v63[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v63[-v12];
  v14 = sub_265BF2CC0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v63[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v68 = &v63[-v20];
  swift_beginAccess();
  sub_265BB0718((v2 + 19), v71);
  if (v71[1])
  {
    v67 = v4;

    swift_unknownObjectRelease();
    v21 = v72;
    swift_unknownObjectRelease();
    sub_265BB0750(&v73, &qword_28003C480, &qword_265BF4EC8);
    if (sub_265BB0998(a1, v21))
    {
      v22 = a1;
      v23 = v68;
      sub_265BB8C58(v22, v21, v68);
      sub_265BF3140();
      v24 = v15;
      v25 = *(v15 + 16);
      v26 = v14;
      v25(v19, v23, v14);
      v27 = sub_265BF3230();
      v28 = sub_265BF34E0();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v66 = v22;
        v30 = v29;
        v65 = swift_slowAlloc();
        v71[0] = v65;
        *v30 = 136446466;
        v70 = v21;
        v31 = sub_265BF3350();
        v64 = v28;
        v33 = sub_265BB064C(v31, v32, v71);

        *(v30 + 4) = v33;
        *(v30 + 12) = 2082;
        sub_265BC3994(&qword_28003C4A8, MEMORY[0x277D515D0]);
        v34 = sub_265BF36D0();
        v36 = v35;
        v37 = *(v24 + 8);
        v37(v19, v26);
        v38 = sub_265BB064C(v34, v36, v71);

        *(v30 + 14) = v38;
        _os_log_impl(&dword_265BAD000, v27, v64, "Registering discovered participant (%{public}s: %{public}s", v30, 0x16u);
        v39 = v65;
        swift_arrayDestroy();
        MEMORY[0x26676DCA0](v39, -1, -1);
        v40 = v30;
        v22 = v66;
        MEMORY[0x26676DCA0](v40, -1, -1);
      }

      else
      {

        v37 = *(v24 + 8);
        v37(v19, v26);
      }

      v58 = (*(v69 + 8))(v13, v67);
      v59 = v2[2];
      MEMORY[0x28223BE20](v58);
      *&v63[-16] = v2;
      *&v63[-8] = v22;
      sub_265BF2EA0();
      swift_beginAccess();
      v60 = v2[30];
      if (v60)
      {
        v61 = v2[31];
        swift_endAccess();

        v62 = v68;
        v60(v68);
        sub_265BB060C(v60);
        return (v37)(v62, v26);
      }

      else
      {
        v37(v68, v26);
        return swift_endAccess();
      }
    }

    else
    {
      sub_265BF3140();
      v48 = a1;
      v49 = sub_265BF3230();
      v50 = sub_265BF34E0();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v71[0] = v53;
        *v51 = 136446466;
        v70 = v21;
        v54 = sub_265BF3350();
        v56 = sub_265BB064C(v54, v55, v71);

        *(v51 + 4) = v56;
        *(v51 + 12) = 2114;
        *(v51 + 14) = v48;
        *v52 = v48;
        v57 = v48;
        _os_log_impl(&dword_265BAD000, v49, v50, "Discovered unsupported (not %{public}s) device: %{public}@", v51, 0x16u);
        sub_265BB0750(v52, &qword_28003C4A0, &qword_265BF5020);
        MEMORY[0x26676DCA0](v52, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
        MEMORY[0x26676DCA0](v53, -1, -1);
        MEMORY[0x26676DCA0](v51, -1, -1);
      }

      return (*(v69 + 8))(v11, v67);
    }
  }

  else
  {
    sub_265BB07B4(v71);
    sub_265BF3140();
    v41 = a1;
    v42 = sub_265BF3230();
    v43 = sub_265BF34D0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138543362;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&dword_265BAD000, v42, v43, "Discovered device while inactive: %{public}@", v44, 0xCu);
      sub_265BB0750(v45, &qword_28003C4A0, &qword_265BF5020);
      MEMORY[0x26676DCA0](v45, -1, -1);
      MEMORY[0x26676DCA0](v44, -1, -1);
    }

    return (*(v69 + 8))(v8, v4);
  }
}

uint64_t sub_265BB060C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19SeymourServicesCore26RemoteParticipantDiscoveryC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_19SeymourServicesCore27AggressiveBluetoothScanning_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_265BB064C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_265BB07E4(v11, 0, 0, 1, a1, a2);
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
    sub_265BB08F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

uint64_t sub_265BB0750(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_265BB07E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_265BB0C48(a5, a6);
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
    result = sub_265BF3660();
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

uint64_t sub_265BB08F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_265BB0998(void *a1, unsigned __int8 a2)
{
  v2 = 1;
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      return ([a1 statusFlags] >> 16) & 1;
    }

    if (a2 != 4)
    {
      v6 = [a1 model];
      if (v6)
      {
        v7 = v6;
        v8 = v7;
        v9 = @"Watch";
        goto LABEL_15;
      }

      return 0;
    }
  }

  else
  {
    if (!a2)
    {
      return ([a1 statusFlags] >> 27) & 1;
    }

    if (a2 != 1)
    {
      v3 = [a1 model];
      if (v3)
      {
        v4 = v3;
        v5 = [v4 hasPrefix:@"Watch"];

        if (v5)
        {

          return 1;
        }

        v7 = v4;
        v8 = v7;
        v9 = @"iPhone";
LABEL_15:
        v2 = [v7 hasPrefix:v9];

        return v2;
      }

      return 0;
    }
  }

  return v2;
}

uint64_t sub_265BB0AA4(uint64_t a1, unint64_t a2)
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

  v6 = sub_265BB0BD4(v5, 0);
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

  result = sub_265BF3660();
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
        v10 = sub_265BF33C0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_265BB0BD4(v10, 0);
        result = sub_265BF3610();
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

void *sub_265BB0BD4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C340, &qword_265BF47D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_265BB0C48(uint64_t a1, unint64_t a2)
{
  v4 = sub_265BB0AA4(a1, a2);
  sub_265BB1274(&unk_2877733B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t RemoteParticipantDiscovery.endDiscovering()()
{
  v0 = sub_265BF3240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3140();
  sub_265BF3220();
  (*(v1 + 8))(v4, v0);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v5 = swift_allocObject();
  swift_weakInit();
  sub_265BB0718(v13, v11);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = v11[3];
  *(v6 + 56) = v11[2];
  *(v6 + 72) = v7;
  *(v6 + 88) = v11[4];
  *(v6 + 104) = v12;
  v8 = v11[1];
  *(v6 + 24) = v11[0];
  *(v6 + 40) = v8;
  sub_265BF2DF0();
  return sub_265BB07B4(v13);
}

uint64_t sub_265BB0E70()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB0EB4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_265BB1210(a1, a2, v2 + v6, v8, v9);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_265BB0FE0(char a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  [v4 setFlags_];
  [v4 setControlFlags_];
  [v4 setAwdlGuestDiscoveryTimeout_];
  [v4 setRssiThreshold_];
  return v4;
}

uint64_t sub_265BB10A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v13 = sub_265BF2E40();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;

  v13(a9, v14);
}

void sub_265BB1168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_265BAFDBC;
    v9[3] = a5;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v6 *a6];
  _Block_release(v8);
}

uint64_t sub_265BB1274(uint64_t result)
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

  result = sub_265BB71B4(result, v12, 1, v3);
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

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_265BB1424(void (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_retain_n();

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;

      sub_265BB15C8(a4, v8, a1, a2);
    }
  }

  else
  {
    v9 = sub_265BF2C40();
    sub_265BC3994(&qword_281068910, MEMORY[0x277D50320]);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D50318], v9);
    v12 = v10;
    v13 = 1;
    a1(&v12);
  }
}

uint64_t sub_265BB15C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v78 = sub_265BF3240();
  v8 = *(v78 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v78);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v71 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v71 - v16;
  v18 = swift_allocObject();
  v76 = a3;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v79 = v18;
  v80 = a4;
  v19 = a2[2];
  swift_retain_n();
  v75 = v19;
  sub_265BF2EA0();
  sub_265BB0718(v105, v97);
  v77 = a1;
  sub_265BB0718(a1, &v98);
  if (!v97[1])
  {
    if (v99)
    {

      v21 = v100;
      v76 = v101;
      swift_unknownObjectRelease();
      v81[0] = v102;
      v81[1] = v103;
      v82 = v104;
      sub_265BF3140();
      sub_265BB0718(v77, &v91);
      v22 = sub_265BF3230();
      v23 = sub_265BF34E0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v74 = 0;
        v26 = v25;
        *&v89[0] = v25;
        *v24 = 136446210;
        sub_265BB0718(&v91, &v85);
        v27 = sub_265BF3350();
        v73 = v21;
        v28 = v27;
        v30 = v29;
        sub_265BB07B4(&v91);
        v31 = sub_265BB064C(v28, v30, v89);

        *(v24 + 4) = v31;
        _os_log_impl(&dword_265BAD000, v22, v23, "Becoming active: %{public}s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x26676DCA0](v26, -1, -1);
        MEMORY[0x26676DCA0](v24, -1, -1);
      }

      else
      {

        sub_265BB07B4(&v91);
      }

      (*(v8 + 8))(v17, v78);
      v46 = v79;
      v47 = sub_265BE5450(MEMORY[0x277D84F90]);
      swift_beginAccess();
      v48 = a2[18];
      a2[18] = v47;

      MEMORY[0x28223BE20](v49);
      v50 = v77;
      *(&v71 - 2) = a2;
      *(&v71 - 1) = v50;
      sub_265BF2EA0();
      sub_265BC35F0(v81, &v91);
      if (*(&v92 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
        AggressiveBluetoothScanning.activate()();
        __swift_destroy_boxed_opaque_existential_0Tm(&v91);
      }

      else
      {
        sub_265BB0750(&v91, &qword_28003C480, &qword_265BF4EC8);
      }

      ObjectType = swift_getObjectType();
      v62 = swift_allocObject();
      swift_weakInit();
      sub_265BB0718(v77, &v91);
      v63 = swift_allocObject();
      v64 = v94;
      *(v63 + 72) = v93;
      *(v63 + 88) = v64;
      *(v63 + 104) = v95;
      v65 = v92;
      *(v63 + 40) = v91;
      *(v63 + 16) = sub_265BB87AC;
      *(v63 + 24) = v46;
      *(v63 + 32) = v62;
      *(v63 + 120) = v96;
      *(v63 + 56) = v65;
      v66 = v76;
      v67 = *(v76 + 264);

      v67(sub_265BC39F8, v63, ObjectType, v66);
      swift_unknownObjectRelease();

      sub_265BB0750(v81, &qword_28003C480, &qword_265BF4EC8);
      sub_265BB07B4(v105);

      goto LABEL_24;
    }

    goto LABEL_7;
  }

  sub_265BB0718(v97, &v91);

  v20 = *(&v93 + 1);
  if (v99)
  {
    sub_265BB0750(&v94, &qword_28003C480, &qword_265BF4EC8);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_7:
    sub_265BF3140();
    v32 = sub_265BF3230();
    v33 = sub_265BF34E0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_265BAD000, v32, v33, "Transitioning to equivalent state, nothing to do", v34, 2u);
      MEMORY[0x26676DCA0](v34, -1, -1);
    }

    (*(v8 + 8))(v15, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
    sub_265BF3810();
    v35 = v91;
    v36 = BYTE8(v91);
    v85 = v91;
    v86 = BYTE8(v91);
    (v76)(&v85);
    sub_265BB85E0(v35, v36);
    sub_265BB07B4(v105);
    sub_265BB07B4(&v98);
    goto LABEL_24;
  }

  v72 = *(&v92 + 1);
  v73 = v92;
  v89[0] = v94;
  v89[1] = v95;
  v90 = v96;
  sub_265BF3140();
  sub_265BB0718(v105, &v85);
  v37 = sub_265BF3230();
  v38 = sub_265BF34E0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v83 = v40;
    *v39 = 136446210;
    sub_265BB0718(&v85, v81);
    v41 = sub_265BF3350();
    v74 = 0;
    v42 = v41;
    v71 = v20;
    v44 = v43;
    sub_265BB07B4(&v85);
    v45 = sub_265BB064C(v42, v44, &v83);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_265BAD000, v37, v38, "Becoming inactive: %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x26676DCA0](v40, -1, -1);
    MEMORY[0x26676DCA0](v39, -1, -1);
  }

  else
  {

    sub_265BB07B4(&v85);
  }

  (*(v8 + 8))(v12, v78);
  v51 = sub_265BE5450(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v52 = a2[18];
  a2[18] = v51;

  MEMORY[0x28223BE20](v53);
  v54 = v77;
  *(&v71 - 2) = a2;
  *(&v71 - 1) = v54;
  sub_265BF2EA0();
  v55 = a2[36];
  if (v55)
  {
    v56 = a2[37];

    v55(v57);
    sub_265BB060C(v55);
  }

  v58 = swift_getObjectType();
  (*(v72 + 272))(v58);
  sub_265BC35F0(v89, &v85);
  v59 = v87;
  if (v87)
  {
    v60 = v88;
    __swift_project_boxed_opaque_existential_1(&v85, v87);
    (*(v60 + 16))(v59, v60);
    __swift_destroy_boxed_opaque_existential_0Tm(&v85);
  }

  else
  {
    sub_265BB0750(&v85, &qword_28003C480, &qword_265BF4EC8);
  }

  v68 = a2[12];
  __swift_project_boxed_opaque_existential_1(a2 + 8, a2[11]);
  sub_265BF3090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
  sub_265BF3810();
  v69 = v85;
  LOBYTE(v68) = v86;
  v83 = v85;
  v84 = v86;
  (v76)(&v83);
  sub_265BB85E0(v69, v68);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_265BB0750(v89, &qword_28003C480, &qword_265BF4EC8);
  sub_265BB07B4(v105);
LABEL_24:
  sub_265BB07B4(v97);
}

uint64_t sub_265BB1F80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB1FB8()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[6])
  {

    v3 = v0[7];
    swift_unknownObjectRelease();
    v4 = v0[10];
    swift_unknownObjectRelease();
    if (v0[14])
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

void sub_265BB20AC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_265BBD73C;
    v4[3] = &block_descriptor_63;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setDeviceChangedHandler_];
  _Block_release(v3);
}

void sub_265BB2154(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v20 - v15;
  if (a2)
  {
    v20 = a1;
    v21 = 1;
    v17 = a1;
    a5(&v20);
    sub_265BB85E0(a1, 1);
  }

  else
  {
    a3(v14);
    v18 = sub_265BF2E40();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_265BB8864, v19);

    (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_265BB231C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_265BB2398@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_265BB231C(v4, a1);
}

_DWORD *sub_265BB24A4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_265BB24E8(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_265BB2518@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_265BB2544@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_265BB25F4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_265BB5164(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_265BB2634()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB266C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_265BB26B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB271C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB2764()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB279C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_265BB27D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB2820()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB286C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];
  if (v5 >> 60 != 15)
  {
    sub_265BBB1D0(v0[10], v5);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_265BB28D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB290C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265BB2960()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB29CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265BB2A60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_265BB2B0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB2B48()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_265BB2B80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB2BC4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_265BB2BD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BF2CC0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265BB2C84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BF2CC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265BB2D28()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB2D60()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_265BB2DC4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_265BB2E04()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 83, 7);
}

uint64_t sub_265BB2E4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB2E84()
{
  v1 = sub_265BF2CC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 10) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_265BB2F80()
{
  v1 = (type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v6 + 8);

  v8 = v1[7];
  v9 = sub_265BF2CC0();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = *(v6 + v1[12] + 8);

  v11 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_265BB30B8()
{
  v1 = sub_265BF2CC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 112) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);

  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  v9 = *(v0 + 10);

  v10 = *(v0 + 12);

  v11 = *(v0 + 13);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_265BB31B0()
{
  v1 = sub_265BF2CC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 3);

  v8 = *(v0 + 5);

  v9 = *(v0 + 9);

  v10 = *(v0 + 11);

  v11 = *(v0 + 12);

  (*(v2 + 8))(&v0[v4], v1);
  v12 = *&v0[v5];

  v13 = *&v0[v6 + 8];

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_265BB32C4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_265BB3324()
{
  v1 = sub_265BF2CC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 3);

  v7 = *(v0 + 5);

  v8 = *(v0 + 9);

  v9 = *(v0 + 11);

  v10 = *(v0 + 12);

  (*(v2 + 8))(&v0[v4], v1);
  v11 = *&v0[v5];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_265BB3438()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 43, 7);
}

uint64_t sub_265BB3470()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 51, 7);
}

uint64_t sub_265BB34A8()
{
  v1 = (type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  v8 = sub_265BF2CC0();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[12] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_265BB35B0()
{
  v1 = (type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = *(v5 + 8);

  v7 = v1[7];
  v8 = sub_265BF2CC0();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v5 + v1[12] + 8);

  v10 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_265BB37F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265BF2D90();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C4D0, &qword_265BF51A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_265BB38EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_265BF2D90();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C4D0, &qword_265BF51A0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_265BB39F4()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  v2 = *(v0 + 88);

  v3 = *(v0 + 104);

  v4 = *(v0 + 128);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_265BB3A54()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB3A8C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB3AEC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_265BF2FD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_265BB3C40()
{
  v1 = sub_265BF2FD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265BB3D04()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_265BF2FD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_265BB3E70()
{
  v1 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_265BB3EA8()
{
  v1 = sub_265BF2FD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_265BB3F8C()
{
  v1 = sub_265BF2C30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_265BB407C()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_265BB40B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB40F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB412C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_265BF2CF0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v7);

  v10 = *(v0 + v8 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v2 | 7);
}

uint64_t sub_265BB42A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_265BF2FD0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265BB4350(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BF2FD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265BB43F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB442C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB4464()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 69, 7);
}

uint64_t sub_265BB44B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB44EC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 37, 7);
}

uint64_t sub_265BB452C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_265BB4574()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265BB461C()
{
  v1 = sub_265BF2C30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_265BB4720()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB4774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_265BB47EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_265BB4868()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_265BB48A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB48D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265BB4910()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB4970()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265BB49B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265BB49F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265BB4A30()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_265BB4A90(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t static DaemonProtocol.main()(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x26676D6B0](v7);
  sub_265BB4BF8(v2, a1, a2);
  objc_autoreleasePoolPop(v10);
  v14 = a1;
  v15 = a2;
  v16 = v9;
  sub_265BB4CD4(v9, sub_265BB4CB0, v13, a1, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v11);
  return (*(v5 + 8))(v9, a1);
}

uint64_t sub_265BB4BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8))(a2, a3);
  _s19SeymourServicesCore7SandboxV9bootstrapyySSFZ_0(v5, v6);

  (*(a3 + 24))(a2, a3);
  return (*(a3 + 32))(a2, a3);
}

uint64_t sub_265BB4CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_265BB4E20(uint64_t a1, int a2)
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

uint64_t sub_265BB4E40(uint64_t result, int a2, int a3)
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

void sub_265BB4E90(uint64_t a1, unint64_t *a2)
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

uint64_t sub_265BB4F6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265BB5164(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t SigTermHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  sub_265BB5350(0, &qword_281068A30, 0x277D85CA0);
  sub_265BB5350(0, qword_281068A38, 0x277D85C78);
  v1 = sub_265BF3520();
  v2 = sub_265BF3550();

  *(v0 + 16) = v2;
  return v0;
}

uint64_t SigTermHandler.init()()
{
  v1 = v0;
  *(v0 + 24) = 0;
  sub_265BB5350(0, &qword_281068A30, 0x277D85CA0);
  sub_265BB5350(0, qword_281068A38, 0x277D85C78);
  v2 = sub_265BF3520();
  v3 = sub_265BF3550();

  *(v1 + 16) = v3;
  return v1;
}

uint64_t sub_265BB5350(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

Swift::Void __swiftcall SigTermHandler.activate()()
{
  v1 = v0;
  v2 = sub_265BF3270();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265BF32A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265BF3240();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v13 + 8))(v16, v12);
  v17 = *(v1 + 16);
  swift_getObjectType();
  v18 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_265BB5858;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265BB5860;
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);

  sub_265BF3290();
  sub_265BB58AC();
  sub_265BF3560();
  _Block_release(v19);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);

  v20 = sub_265BF3260();
  signal(15, v20);
  sub_265BF3570();
}

uint64_t sub_265BB56C8()
{
  v0 = sub_265BF3240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265BF3130();
  v5 = sub_265BF3230();
  v6 = sub_265BF34E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_265BAD000, v5, v6, "SigTerm received, exiting clean", v7, 2u);
    MEMORY[0x26676DCA0](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  xpc_transaction_exit_clean();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    *(v9 + 24) = 1;
  }

  return result;
}

uint64_t sub_265BB5860(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_265BB58AC()
{
  sub_265BF3270();
  sub_265BB59DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C2F0, &unk_265BF46E0);
  sub_265BB5A7C();
  return sub_265BF35C0();
}

uint64_t SigTermHandler.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SigTermHandler.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

unint64_t sub_265BB59DC()
{
  result = qword_281068928;
  if (!qword_281068928)
  {
    sub_265BF3270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281068928);
  }

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

unint64_t sub_265BB5A7C()
{
  result = qword_281068918;
  if (!qword_281068918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003C2F0, &unk_265BF46E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281068918);
  }

  return result;
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

uint64_t getEnumTagSinglePayload for DeviceSystemService(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DeviceSystemService(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

SeymourServicesCore::AppLaunchState __swiftcall AppLauncher.appLaunchState(bundle:)(Swift::String bundle)
{
  object = bundle._object;
  countAndFlagsBits = bundle._countAndFlagsBits;
  v3 = sub_265BF3240();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  sub_265BB60C4();
  v9 = sub_265BF3330();
  v10 = [objc_opt_self() predicateMatchingBundleIdentifier_];

  v11 = sub_265BB7DD4(v10);
  v12 = [v11 currentState];

  if (v12)
  {
    v13 = [v12 taskState] != 4 && objc_msgSend(v12, sel_taskState) != 2;
    v19 = [v12 endowmentNamespaces];
    if (v19)
    {
      v20 = v19;
      v21 = sub_265BF3480();

      v22 = *MEMORY[0x277D0AC90];
      v23 = sub_265BF3340();
      v25 = sub_265BB6110(v23, v24, v21);

      if (!v13 && (v25 & 1) != 0)
      {
        return 1;
      }
    }

    else
    {
    }

    return 2;
  }

  else
  {
    sub_265BF3110();

    v15 = sub_265BF3230();
    v16 = sub_265BF34D0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 141558274;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_265BB064C(countAndFlagsBits, object, &v27);
      _os_log_impl(&dword_265BAD000, v15, v16, "Can't find process state for %{mask.hash}s", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x26676DCA0](v18, -1, -1);
      MEMORY[0x26676DCA0](v17, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
    return 0;
  }
}

unint64_t sub_265BB60C4()
{
  result = qword_28003C2F8;
  if (!qword_28003C2F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28003C2F8);
  }

  return result;
}

uint64_t sub_265BB6110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_265BF37B0();
  sub_265BF3390();
  v7 = sub_265BF37E0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_265BF36E0() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_265BB6208(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = *(a2 + 40);
  sub_265BF37B0();
  v4 = sub_265BF2D50();
  MEMORY[0x26676D5D0](v4);
  v5 = sub_265BF37E0();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    v10 = sub_265BF2D50();
    v11 = v10 == sub_265BF2D50();
    result = v11;
    if (v11)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t AppLauncher.launch(bundle:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v44 = a2;
  v45 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C308, &qword_265BF4738);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v40 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v46 = *(v41 - 8);
  v11 = v46[8];
  v12 = MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v16);
  v47 = &v40 - v19;
  sub_265BB7E98(v4, &v48);
  v20 = swift_allocObject();
  *(v20 + 16) = 1;
  v21 = v49;
  *(v20 + 24) = v48;
  *(v20 + 40) = v21;
  *(v20 + 56) = v50;
  sub_265BF2E00();
  sub_265BB7E98(v4, &v48);
  sub_265BB7EE8(a3, v10);
  v22 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v23 = v22 + v8;
  v24 = (v22 + v8) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v49;
  v25[1] = v48;
  v25[2] = v26;
  v25[3] = v50;
  sub_265BB7F58(v10, v25 + v22);
  *(v25 + v23) = 1;
  v27 = v25 + v24;
  v28 = v44;
  *(v27 + 1) = v43;
  *(v27 + 2) = v28;

  v40 = v18;
  sub_265BF2DF0();
  v29 = v46;
  v30 = v46[2];
  v31 = v41;
  v30(v15, v18, v41);
  v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v33 = swift_allocObject();
  v34 = v29[4];
  v34(v33 + v32, v15, v31);
  v35 = v42;
  v30(v42, v47, v31);
  v36 = swift_allocObject();
  v34(v36 + v32, v35, v31);
  v37 = (v36 + ((v32 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v37 = sub_265BB2394;
  v37[1] = v33;
  sub_265BF2DF0();
  v38 = v46[1];
  v38(v40, v31);
  return (v38)(v47, v31);
}

uint64_t AppLauncher.launch(bundle:url:appLaunchState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v47 = a1;
  v48 = a2;
  v49 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C308, &qword_265BF4738);
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v51 = *(v45 - 8);
  v13 = v51[8];
  v14 = MEMORY[0x28223BE20](v45);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v50 = &v43 - v19;
  MEMORY[0x28223BE20](v18);
  v52 = &v43 - v20;
  sub_265BB7E98(v6, &v53);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  v22 = v54;
  *(v21 + 24) = v53;
  *(v21 + 40) = v22;
  *(v21 + 56) = v55;
  sub_265BF2E00();
  sub_265BB7E98(v6, &v53);
  sub_265BB7EE8(a3, v12);
  v23 = (*(v44 + 80) + 64) & ~*(v44 + 80);
  v24 = v23 + v10;
  v25 = (v23 + v10) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v54;
  v26[1] = v53;
  v26[2] = v27;
  v26[3] = v55;
  sub_265BB7F58(v12, v26 + v23);
  *(v26 + v24) = a4;
  v28 = v26 + v25;
  v29 = v48;
  *(v28 + 1) = v47;
  *(v28 + 2) = v29;

  v30 = v50;
  sub_265BF2DF0();
  v31 = v51;
  v32 = v51[2];
  v33 = v30;
  v34 = v45;
  v32(v17, v33, v45);
  v35 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v36 = swift_allocObject();
  v37 = v31[4];
  v37(v36 + v35, v17, v34);
  v38 = v46;
  v32(v46, v52, v34);
  v39 = swift_allocObject();
  v37(v39 + v35, v38, v34);
  v40 = (v39 + ((v35 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v40 = sub_265BB885C;
  v40[1] = v36;
  sub_265BF2DF0();
  v41 = v51[1];
  v41(v50, v34);
  return (v41)(v52, v34);
}

void sub_265BB6AF4(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C308, &qword_265BF4738);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_265BF2BA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265BE5320(MEMORY[0x277D84F90]);
  sub_265BB7EE8(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_265BB0750(v7, &qword_28003C308, &qword_265BF4738);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v14 = *MEMORY[0x277D0AC40];
    v15 = sub_265BF3340();
    v17 = v16;
    v31 = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
    (*(v9 + 16))(boxed_opaque_existential_0, v12, v8);
    sub_265BB87C8(v30, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v13;
    sub_265BE48E8(v29, v15, v17, isUniquelyReferenced_nonNull_native);

    (*(v9 + 8))(v12, v8);
    v13 = v28;
  }

  if (a2 == 2)
  {
    v20 = *MEMORY[0x277D0ABF0];
    v21 = sub_265BF3340();
    v23 = v22;
    v31 = MEMORY[0x277D839B0];
    LOBYTE(v30[0]) = 1;
    sub_265BB87C8(v30, v29);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v28 = v13;
    sub_265BE48E8(v29, v21, v23, v24);

    v13 = v28;
  }

  sub_265BD8844(v13);
  v25 = sub_265BF32E0();

  v26 = [objc_opt_self() optionsWithDictionary_];

  if (v26)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_265BB6DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_265BF3240();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  sub_265BF3110();
  sub_265BF3220();
  (*(v10 + 8))(v13, v9);
  sub_265BB6AF4(a4, a5);
  v16 = v15;
  v17 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (v17)
  {
    v18 = v17;
    v19 = sub_265BF3330();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_265BB87AC;
    *(v20 + 24) = v14;
    aBlock[4] = sub_265BB87B8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265BB7108;
    aBlock[3] = &block_descriptor_0;
    v21 = _Block_copy(aBlock);
    v22 = v16;

    [v18 openApplication:v19 withOptions:v22 completion:v21];

    _Block_release(v21);
  }

  else
  {
  }
}

void sub_265BB7078(int a1, id a2, void (*a3)(void *, void))
{
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
  sub_265BF3800();
  a3(v5, v6);
  sub_265BB85E0(v5, v6);
}

void sub_265BB7108(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

char *sub_265BB71B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C340, &qword_265BF47D8);
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

void sub_265BB7424(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v20 - v15;
  if (a2)
  {
    v20[1] = 0;
    v20[2] = 0;
    v20[0] = a1;
    v21 = 1;
    v17 = a1;
    a5(v20);
    sub_265BB85E0(a1, 1);
  }

  else
  {
    a3(v14);
    v18 = sub_265BF2E40();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_265BB85EC, v19);

    (*(v12 + 8))(v16, v11);
  }
}

void sub_265BB75C8(void *a1, char a2, void (*a3)(_OWORD *), uint64_t a4, void (*a5)(_OWORD *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C328, &qword_265BF47C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  if (a2)
  {
    v21 = 1;
    *&v19[0] = a1;
    v20 = 1;
    v16 = a1;
    a5(v19);
    v22[2] = v19[2];
    v22[3] = v19[3];
    v22[4] = v19[4];
    v23 = v20;
    v22[0] = v19[0];
    v22[1] = v19[1];
    sub_265BB0750(v22, &qword_28003C330, &qword_265BF47C8);
  }

  else
  {
    *&v22[0] = a1;

    a3(v22);
    v17 = sub_265BF2E40();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_265BB883C, v18);

    (*(v12 + 8))(v15, v11);
    sub_265BB871C(a1, 0, MEMORY[0x277D84FB8]);
  }
}

void sub_265BB77D4(void *a1, char a2, void (*a3)(_OWORD *), uint64_t a4, void (*a5)(_OWORD *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C328, &qword_265BF47C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  if (a2)
  {
    v22 = 1;
    *&v20[0] = a1;
    v21 = 1;
    v16 = a1;
    a5(v20);
    v23[2] = v20[2];
    v23[3] = v20[3];
    v23[4] = v20[4];
    v24 = v21;
    v23[0] = v20[0];
    v23[1] = v20[1];
    sub_265BB0750(v23, &qword_28003C330, &qword_265BF47C8);
  }

  else
  {
    *&v23[0] = a1;
    v17 = a1;
    a3(v23);
    v18 = sub_265BF2E40();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_265BB869C, v19);

    (*(v12 + 8))(v15, v11);
    sub_265BB86A0(a1);
  }
}

void sub_265BB79C8(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void **), uint64_t a6, void (*a7)(void **), uint64_t a8)
{
  v26 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  v27 = a1;
  if (a4)
  {
    LOBYTE(v28) = 1;
    v19 = a1;
    v26(&v27);
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = 1;
  }

  else
  {
    v28 = a2;
    v29 = a3;
    swift_unknownObjectRetain();
    a5(&v27);
    v24 = sub_265BF2E40();
    v25 = swift_allocObject();
    *(v25 + 16) = v26;
    *(v25 + 24) = a8;

    v24(sub_265BB8864, v25);

    (*(v15 + 8))(v18, v14);
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = 0;
  }

  sub_265BB8678(v20, v21, v22, v23);
}

void sub_265BB7BA4(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  v22 = a1;
  if (a2)
  {
    v23 = 1;
    v16 = a1;
    a5(&v22);
    v17 = MEMORY[0x277D85008];
    v18 = a1;
    v19 = 1;
  }

  else
  {

    a3(&v22);
    v20 = sub_265BF2E40();
    v21 = swift_allocObject();
    *(v21 + 16) = a5;
    *(v21 + 24) = a6;

    v20(sub_265BB8654, v21);

    (*(v12 + 8))(v15, v11);
    v17 = MEMORY[0x277D85008];
    v18 = a1;
    v19 = 0;
  }

  sub_265BB871C(v18, v19, v17);
}

uint64_t sub_265BB7D84(uint64_t result, uint64_t (*a2)(__int128 *))
{
  v2 = *(result + 16);
  v3 = *(result + 24);
  v4 = *result;
  v5 = v2;
  v6 = v3;
  if (a2)
  {
    return a2(&v4);
  }

  return result;
}

id sub_265BB7DD4(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_265BF2B90();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_265BB7EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C308, &qword_265BF4738);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BB7F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C308, &qword_265BF4738);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BB7FCC()
{
  if (*(v0 + 16) == 1)
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
    __swift_project_boxed_opaque_existential_1((v0 + 32), v1);
    return (*(v2 + 8))(v1, v2);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C308, &qword_265BF4738) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v5 = sub_265BF2BA0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v3 + v4) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7 + 16);

  return MEMORY[0x2821FE8E8](v0, v7 + 24, v2 | 7);
}

void sub_265BB8168(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C308, &qword_265BF4738) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v2 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v2 + v7);

  sub_265BB6DFC(a1, a2, v2 + 16, v2 + v6, v11);
}

uint64_t objectdestroy_5Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265BB82BC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t objectdestroy_8Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_265BB83E8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_265BB10A8(a1, a2, v2 + v6, *v7, v7[1], &unk_28003C470, &qword_265BF4740, &unk_287773900, sub_265BB2094);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_265BB8524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265BB856C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_265BB85E0(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_265BB85EC(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *result;
  v7 = v4;
  v8 = v5;
  if (v2)
  {
    return v2(&v6);
  }

  return result;
}

void sub_265BB8678(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_265BB86C4(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 48);
  v6[2] = *(result + 32);
  v6[3] = v4;
  v6[4] = *(result + 64);
  v7 = *(result + 80);
  v5 = *(result + 16);
  v6[0] = *result;
  v6[1] = v5;
  if (v2)
  {
    return v2(v6);
  }

  return result;
}

void sub_265BB871C(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

uint64_t objectdestroy_27Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_30Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

_OWORD *sub_265BB87C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t static DataProtectionClass.current.getter()
{
  v0 = MKBGetDeviceLockState();
  v1 = MKBDeviceUnlockedSinceBoot() == 1;
  if (v0 == 3)
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 2;
  }
}

uint64_t DataProtectionClass.init(protectionType:)(void *a1)
{
  v2 = *MEMORY[0x277CCA190];
  v3 = sub_265BF3340();
  v5 = v4;
  if (v3 == sub_265BF3340() && v5 == v6)
  {

    return 3;
  }

  v8 = sub_265BF36E0();

  if (v8)
  {

    return 3;
  }

  v10 = *MEMORY[0x277CCA198];
  v11 = sub_265BF3340();
  v13 = v12;
  if (v11 == sub_265BF3340() && v13 == v14)
  {

    return 2;
  }

  else
  {
    v16 = sub_265BF36E0();

    if (v16)
    {

      return 2;
    }

    else
    {
      v17 = *MEMORY[0x277CCA1A0];
      v18 = sub_265BF3340();
      v20 = v19;
      if (v18 == sub_265BF3340() && v20 == v21)
      {

        return 1;
      }

      else
      {
        v22 = sub_265BF36E0();

        if (v22)
        {

          return 1;
        }

        else
        {
          v23 = *MEMORY[0x277CCA1B8];
          v24 = sub_265BF3340();
          v26 = v25;
          if (v24 != sub_265BF3340() || v26 != v27)
          {
            sub_265BF36E0();
          }

          return 0;
        }
      }
    }
  }
}

id RemoteParticipantLinkProvider.makeDiscoveryLink(role:timeout:)(char a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  [v4 setFlags_];
  [v4 setControlFlags_];
  [v4 setAwdlGuestDiscoveryTimeout_];
  [v4 setRssiThreshold_];
  return v4;
}

void sub_265BB8C58(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v21 = a3;
  v4 = *(*(sub_265BF2D60() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a1;
  v8 = [v7 model];
  if (v8)
  {
    v9 = v8;
    sub_265BF3340();

    v19 = sub_265BF2D40();
  }

  else
  {
    v19 = 4;
  }

  v10 = [v7 effectiveIdentifier];
  v11 = sub_265BF3340();
  v18[1] = v12;
  v18[2] = v11;

  sub_265BD68EC(v6);
  v13 = [v7 model];
  if (v13)
  {
    v14 = v13;
    sub_265BF3340();
  }

  sub_265BD6710([v7 statusFlags]);
  v15 = [v7 idsDeviceIdentifier];
  if (v15)
  {
    v16 = v15;
    sub_265BF3340();
  }

  v17 = [v7 name];

  if (v17)
  {
    sub_265BF3340();
  }

  sub_265BF2C60();
}

uint64_t RemoteParticipantConnectionBrokering.connect(to:service:authentication:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_265BF3240();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v11 + 8))(v14, v10);
  v15 = sub_265BF2CB0();
  if (v16)
  {
    return (*(a5 + 8))(a1, v15 == 3, a2 & 1, a3, a4, a5);
  }

  v18 = sub_265BF2D20();
  sub_265BB90C0();
  v19 = swift_allocError();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D525E8], v18);
  *(swift_allocObject() + 16) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
  return sub_265BF2E00();
}

unint64_t sub_265BB90C0()
{
  result = qword_281068900;
  if (!qword_281068900)
  {
    sub_265BF2D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281068900);
  }

  return result;
}

uint64_t RemoteParticipantConnectionBrokering.connectToAnyParticipant(havingRole:preferredDeviceType:service:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = a1 == 3;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  (*(a5 + 16))(a1, a2, v10, a3 & 1, sub_265BB947C, v11, a4, a5);
}

uint64_t sub_265BB921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = sub_265BF3240();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265BF3130();
  v11 = sub_265BF3230();
  v12 = sub_265BF34E0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v19[7] = a5;
    v15 = sub_265BF3350();
    v17 = sub_265BB064C(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_265BAD000, v11, v12, "ConnectToAnyParticipant (%s, privacy: .public) No handshake required", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x26676DCA0](v14, -1, -1);
    MEMORY[0x26676DCA0](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  return sub_265BF2E50();
}

id sub_265BB9448()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  return v1;
}

uint64_t RemoteParticipantConnectionBrokerProvider.init(analyticsReporter:eventHub:xpcBroadcastConnection:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = sub_265BB4A90(a1, a7);
  a7[5] = a2;
  a7[6] = a3;
  a7[7] = a4;
  a7[8] = a5;
  a7[9] = a6;
  return result;
}

uint64_t RemoteParticipantConnectionBrokerProvider.makeBroker(transportPriority:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v56 = a2;
  v5 = sub_265BF3060();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  sub_265BB9CAC(v2, v63);
  v13 = sub_265BF3370();
  v15 = v14;
  v61 = &type metadata for RemoteParticipantLinkProvider;
  v62 = &protocol witness table for RemoteParticipantLinkProvider;
  type metadata accessor for DeviceConnectionBroker();
  v16 = swift_allocObject();
  *(v16 + 152) = 0;
  *(v16 + 160) = 0;
  sub_265BB9CAC(v63, v16 + 16);
  *(v16 + 56) = v13;
  *(v16 + 64) = v15;
  v17 = sub_265BF2EC0();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_265BF2EB0();
  __swift_destroy_boxed_opaque_existential_0Tm(v63);
  *(v16 + 112) = v20;
  sub_265BB4A90(&v60, v16 + 72);
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 144) = 0;
  *(v16 + 120) = a1 & 1;
  v22 = *(v3 + 40);
  v21 = *(v3 + 48);
  v53 = *(v3 + 72);
  v57 = *(v3 + 56);
  sub_265BB9CAC(v3, v63);

  sub_265BF3050();
  type metadata accessor for RemoteParticipantDiscovery();
  v23 = swift_allocObject();
  (*(v6 + 16))(v10, v12, v5);
  v24 = sub_265BB9B7C(v10, v23);
  v55 = v24;
  (*(v6 + 8))(v12, v5);
  v61 = &type metadata for RemoteParticipantLinkProvider;
  v62 = &protocol witness table for RemoteParticipantLinkProvider;
  v59[3] = v5;
  v59[4] = MEMORY[0x277D4F358];
  __swift_allocate_boxed_opaque_existential_0(v59);
  sub_265BF3050();
  v52 = type metadata accessor for RemoteParticipantConnectionBroker(0);
  v25 = *(v52 + 48);
  v26 = *(v52 + 52);
  v27 = swift_allocObject();
  sub_265BB9CAC(v63, v27 + 16);
  *(v27 + 56) = v16;
  *(v27 + 64) = &off_287776A58;
  *(v27 + 72) = v24;
  *(v27 + 80) = &protocol witness table for RemoteParticipantDiscovery;
  *(v27 + 88) = v22;
  *(v27 + 96) = v21;
  v54 = v21;
  sub_265BB9CAC(&v60, v27 + 104);
  v28 = *(v17 + 48);
  v29 = *(v17 + 52);
  swift_allocObject();

  swift_unknownObjectRetain();
  *(v27 + 144) = sub_265BF2EB0();
  type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  swift_storeEnumTagMultiPayload();
  v30 = sub_265BF3000();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v27 + OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_subscriptionToken) = sub_265BF2FF0();
  sub_265BB9CAC(v59, v27 + 152);
  *(v27 + 192) = v57;
  *(v27 + 208) = v53;
  v33 = *(v27 + 72);
  v34 = *(v27 + 80);
  ObjectType = swift_getObjectType();
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = *(v34 + 32);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v37(sub_265BB9D10, v36, ObjectType, v34);
  swift_unknownObjectRelease();

  v39 = *(v27 + 72);
  v38 = *(v27 + 80);
  v40 = swift_getObjectType();
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = *(v38 + 8);
  swift_unknownObjectRetain();

  v42(sub_265BB9D18, v41, v40, v38);
  swift_unknownObjectRelease();

  v43 = *(v27 + 56);
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = *(v43 + 152);
  v46 = *(v43 + 160);
  *(v43 + 152) = sub_265BB9D20;
  *(v43 + 160) = v44;
  swift_unknownObjectRetain();
  swift_retain_n();
  sub_265BB060C(v45);
  swift_unknownObjectRelease();

  swift_getObjectType();
  sub_265BF3100();
  v47 = *(v27 + OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_subscriptionToken);
  swift_allocObject();
  swift_weakInit();

  sub_265BF2FB0();

  __swift_destroy_boxed_opaque_existential_0Tm(v58);
  __swift_destroy_boxed_opaque_existential_0Tm(v63);
  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  __swift_destroy_boxed_opaque_existential_0Tm(&v60);
  v48 = v56;
  v56[3] = v52;
  v48[4] = &off_287774C58;
  v49 = v48;

  *v49 = v27;
  return result;
}

uint64_t sub_265BB9B7C(uint64_t a1, uint64_t a2)
{
  v17 = &type metadata for RemoteParticipantLinkProvider;
  v18 = &protocol witness table for RemoteParticipantLinkProvider;
  v14 = &type metadata for BluetoothScannerProvider;
  v15 = &protocol witness table for BluetoothScannerProvider;
  v4 = sub_265BF3060();
  v11 = v4;
  v12 = MEMORY[0x277D4F358];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v10);
  (*(*(v4 - 8) + 32))(boxed_opaque_existential_0, a1, v4);
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0u;
  *(a2 + 296) = 0;
  *(a2 + 152) = 0u;
  *(a2 + 264) = 0u;
  *(a2 + 280) = 0u;
  *(a2 + 144) = sub_265BE5450(MEMORY[0x277D84F90]);
  v6 = sub_265BF2EC0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(a2 + 16) = sub_265BF2EB0();
  sub_265BB4A90(&v16, a2 + 24);
  sub_265BB4A90(&v13, a2 + 104);
  sub_265BB4A90(&v10, a2 + 64);
  return a2;
}

uint64_t sub_265BB9CAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_265BB9D64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265BB9DAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RemoteParticipantError.init(error:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265BF2D20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  v9 = sub_265BF3720();
  v11 = v10;
  swift_getErrorValue();
  v12 = sub_265BF3710();
  v27[1] = *MEMORY[0x277D44250];
  if (sub_265BF3340() == v9 && v13 == v11)
  {

    if (v12 == -71165)
    {
LABEL_7:
      v16 = MEMORY[0x277D525E0];
LABEL_24:

LABEL_25:
      (*(v5 + 104))(v8, *v16, v4);
      (*(v5 + 32))(a2, v8, v4);
      v23 = 0;
      return (*(v5 + 56))(a2, v23, 1, v4);
    }
  }

  else
  {
    v15 = sub_265BF36E0();

    if ((v15 & 1) != 0 && v12 == -71165)
    {
      goto LABEL_7;
    }
  }

  if (sub_265BF3340() == v9 && v17 == v11)
  {
  }

  else
  {
    v19 = sub_265BF36E0();

    if ((v19 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (v12 == -6776)
  {
    v16 = MEMORY[0x277D52618];
    goto LABEL_24;
  }

LABEL_18:
  v20 = *MEMORY[0x277CCA590];
  if (sub_265BF3340() == v9 && v21 == v11)
  {
  }

  else
  {
    v22 = sub_265BF36E0();

    if ((v22 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v12 == -25300)
  {
    v16 = MEMORY[0x277D52630];
    goto LABEL_24;
  }

LABEL_27:
  if (sub_265BF3340() == v9 && v25 == v11)
  {

    if (v12 != -6754)
    {
      v23 = 1;
      return (*(v5 + 56))(a2, v23, 1, v4);
    }

    goto LABEL_33;
  }

  v26 = sub_265BF36E0();

  v23 = 1;
  if ((v26 & 1) != 0 && v12 == -6754)
  {
LABEL_33:
    v16 = MEMORY[0x277D52630];
    goto LABEL_25;
  }

  return (*(v5 + 56))(a2, v23, 1, v4);
}

uint64_t RemoteParticipantError.init(reason:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = **(&unk_279BBA9C8 + a1);
  v4 = sub_265BF2D20();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_265BBA26C(uint64_t a1, void *a2)
{
  if (*(*a1 + 16))
  {
    sub_265BB9CAC(*a1 + 32, v42);
    v3 = [a2 effectiveIdentifier];
    v4 = sub_265BF3340();
    v40 = v5;
    v41 = v4;

    v6 = [a2 name];
    if (v6)
    {
      v7 = v6;
      v8 = sub_265BF3340();
      v10 = v9;
    }

    else
    {
      v15 = v43;
      v16 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v8 = (*(v16 + 48))(v15, v16);
      v10 = v17;
    }

    v18 = [a2 model];
    if (v18)
    {
      v19 = v18;
      v20 = sub_265BF3340();
      v22 = v21;
    }

    else
    {
      v23 = v43;
      v24 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v20 = (*(v24 + 56))(v23, v24);
      v22 = v25;
    }

    v26 = [a2 idsDeviceIdentifier];
    if (v26)
    {
      v27 = v26;
      v28 = sub_265BF3340();
      v30 = v29;
    }

    else
    {
      v31 = v43;
      v32 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v28 = (*(v32 + 32))(v31, v32);
      v30 = v33;
    }

    v34 = v43;
    v35 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v36 = (*(v35 + 24))(v34, v35);
    v38 = v37;
    v39 = swift_allocObject();
    v39[2] = v41;
    v39[3] = v40;
    v39[4] = v8;
    v39[5] = v10;
    v39[6] = v20;
    v39[7] = v22;
    v39[8] = v28;
    v39[9] = v30;
    v39[10] = v36;
    v39[11] = v38;
    sub_265BF2E00();
    return __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  else
  {
    v11 = sub_265BF2D20();
    sub_265BB90C0();
    v12 = swift_allocError();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D52670], v11);
    *(swift_allocObject() + 16) = v12;

    return sub_265BF2E00();
  }
}

uint64_t LocalDeviceProvider.queryLocalDeviceIdentity()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C320, &qword_265BF4990);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  sub_265BBABEC();
  sub_265BF2DF0();
  sub_265BBAC38(v0, v17);
  v8 = swift_allocObject();
  v9 = v17[1];
  *(v8 + 16) = v17[0];
  *(v8 + 32) = v9;
  *(v8 + 48) = v18;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_265BBAC70;
  *(v10 + 24) = v8;
  (*(v2 + 16))(v5, v7, v1);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v2 + 32))(v13 + v11, v5, v1);
  v14 = (v13 + v12);
  *v14 = sub_265BBAC78;
  v14[1] = v10;
  sub_265BF2DF0();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_265BBA7E8(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C338, &qword_265BF47D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v12 + 8))(1, v11, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = sub_265BBB03C;
  v17[1] = v13;
  v18 = a1;
  sub_265BF2DF0();
  return (*(v5 + 8))(v10, v4);
}

void sub_265BBA9F8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_allocWithZone(MEMORY[0x277D44160]);

  v6 = [v5 init];
  v7 = swift_allocObject();
  v7[2] = sub_265BBB2F8;
  v7[3] = v4;
  v7[4] = v6;
  v16 = sub_265BBB338;
  v17 = v7;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_265BAFDBC;
  v15 = &block_descriptor_1;
  v8 = _Block_copy(&v12);

  v9 = v6;

  [v9 setLocalDeviceUpdatedHandler_];
  _Block_release(v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_265BBB2F8;
  *(v10 + 24) = v4;
  v16 = sub_265BBB390;
  v17 = v10;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_265BD5854;
  v15 = &block_descriptor_42;
  v11 = _Block_copy(&v12);

  [v9 activateWithCompletion_];
  _Block_release(v11);
}

unint64_t sub_265BBABEC()
{
  result = qword_2810683C8;
  if (!qword_2810683C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810683C8);
  }

  return result;
}

uint64_t sub_265BBAC78(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void sub_265BBACA4(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }
}

uint64_t sub_265BBAD04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C320, &qword_265BF4990);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  sub_265BBABEC();
  sub_265BF2DF0();
  sub_265BBAC38(v0, v17);
  v8 = swift_allocObject();
  v9 = v17[1];
  *(v8 + 16) = v17[0];
  *(v8 + 32) = v9;
  *(v8 + 48) = v18;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_265BBB39C;
  *(v10 + 24) = v8;
  (*(v2 + 16))(v5, v7, v1);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v2 + 32))(v13 + v11, v5, v1);
  v14 = (v13 + v12);
  *v14 = sub_265BBB3A4;
  v14[1] = v10;
  sub_265BF2DF0();
  return (*(v2 + 8))(v7, v1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265BBAF9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265BBAFE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_5Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);
  v8 = *(v2 + v7 + 8);

  return MEMORY[0x2821FE8E8](v2, v7 + 16, v5 | 7);
}

uint64_t sub_265BBB108(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_265BBB1D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_265BBB224@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10 = v2;
  v11 = v1[5];
  v3 = v11;
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_265BBB29C(v8, &v7);
}

uint64_t sub_265BBB2F8(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

id sub_265BBB338(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  (*(v1 + 16))(a1, 0);

  return [v3 invalidate];
}

uint64_t DeviceIdentity.init(identifier:name:model:idsIdentifier:identityResolvingKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t DeviceIdentity.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeviceIdentity.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DeviceIdentity.model.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t DeviceIdentity.idsIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t DeviceIdentity.identityResolvingKey.getter()
{
  v1 = *(v0 + 64);
  sub_265BBB4BC(v1, *(v0 + 72));
  return v1;
}

uint64_t sub_265BBB4BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_265BBB4D0(a1, a2);
  }

  return a1;
}

uint64_t sub_265BBB4D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t DeviceIdentity.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  sub_265BF3390();
  if (v6)
  {
    sub_265BF37D0();
    sub_265BF3390();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_265BF37D0();
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_265BF37D0();
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_265BF37D0();
  sub_265BF3390();
  if (v10)
  {
LABEL_4:
    sub_265BF37D0();
    sub_265BF3390();
    goto LABEL_8;
  }

LABEL_7:
  sub_265BF37D0();
LABEL_8:
  if (v12 >> 60 == 15)
  {
    return sub_265BF37D0();
  }

  sub_265BF37D0();

  return MEMORY[0x28211D370](a1, v11, v12);
}

uint64_t DeviceIdentity.hashValue.getter()
{
  sub_265BF37B0();
  DeviceIdentity.hash(into:)(v1);
  return sub_265BF37E0();
}

uint64_t sub_265BBB6AC()
{
  sub_265BF37B0();
  DeviceIdentity.hash(into:)(v1);
  return sub_265BF37E0();
}

uint64_t sub_265BBB6F0()
{
  sub_265BF37B0();
  DeviceIdentity.hash(into:)(v1);
  return sub_265BF37E0();
}

uint64_t sub_265BBB730@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_265BF2B50();
    if (v10)
    {
      v11 = sub_265BF2B70();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_265BF2B60();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_265BF2B50();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_265BF2B70();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_265BF2B60();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_265BBB960(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_265BBBAF0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_265BBB1D0(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_265BBB730(v14, a3, a4, &v13);
  v10 = v4;
  sub_265BBB1D0(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_265BBBAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_265BF2B50();
  v11 = result;
  if (result)
  {
    result = sub_265BF2B70();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_265BF2B60();
  sub_265BBB730(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_265BBBBA8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_265BBB4D0(a3, a4);
          return sub_265BBB960(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s19SeymourServicesCore14DeviceIdentityV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v20 = a1[9];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v15 = a2[6];
  v16 = a1[6];
  v17 = a2[8];
  v18 = a1[8];
  v19 = a2[9];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_265BF36E0() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7 || (v2 != v8 || v3 != v7) && (sub_265BF36E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10 || (v4 != v9 || v5 != v10) && (sub_265BF36E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (!v6)
  {
    if (!v11)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v11 || (v16 != v15 || v6 != v11) && (sub_265BF36E0() & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  if (v20 >> 60 == 15)
  {
    v12 = v19;
    if (v19 >> 60 == 15)
    {
      sub_265BBB4BC(v18, v20);
      sub_265BBB4BC(v17, v19);
      sub_265BBC0A4(v18, v20);
      return 1;
    }

    goto LABEL_29;
  }

  v12 = v19;
  if (v19 >> 60 == 15)
  {
LABEL_29:
    sub_265BBB4BC(v18, v20);
    sub_265BBB4BC(v17, v12);
    sub_265BBC0A4(v18, v20);
    sub_265BBC0A4(v17, v12);
    return 0;
  }

  sub_265BBB4BC(v18, v20);
  sub_265BBB4BC(v17, v19);
  v14 = sub_265BBBBA8(v18, v20, v17, v19);
  sub_265BBC0A4(v17, v19);
  sub_265BBC0A4(v18, v20);
  return (v14 & 1) != 0;
}

unint64_t sub_265BBBF60()
{
  result = qword_28003C350;
  if (!qword_28003C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C350);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265BBBFF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_265BBC040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265BBC0A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_265BBB1D0(a1, a2);
  }

  return a1;
}

uint64_t sub_265BBC0D0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_265BF3340();

  return v6;
}

void sub_265BBC17C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_265BD5854;
    v4[3] = &block_descriptor_2;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 activateWithCompletion_];
  _Block_release(v3);
}

unint64_t sub_265BBC2CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C358, &qword_265BF4C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265BF4BC0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000265BF9930;
  v2 = *v0;
  *(inited + 48) = sub_265BF3440();
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000265BF9950;
  v3 = v0[1];
  v4 = v0[2];
  *(inited + 72) = sub_265BF3330();
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x8000000265BF9970;
  v10 = v0[3];
  v11 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C360, &unk_265BF4C10);
  sub_265BF3670();
  v5 = sub_265BF3330();

  *(inited + 96) = v5;
  *(inited + 104) = 0x65636976726573;
  *(inited + 112) = 0xE700000000000000;
  LOBYTE(v10) = *(v0 + 33);
  sub_265BF3670();
  v6 = sub_265BF3330();

  *(inited + 120) = v6;
  *(inited + 128) = 0x6369706F74;
  *(inited + 136) = 0xE500000000000000;
  LOBYTE(v10) = *(v0 + 34);
  sub_265BF3670();
  v7 = sub_265BF3330();

  *(inited + 144) = v7;
  v8 = sub_265BE5464(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C368, &qword_265BF54A0);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_265BBC50C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F2B8];
  v3 = sub_265BF3040();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265BBC5B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_265BBC5FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall AggressiveBluetoothScanning.activate()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v5 + 8))(v8, v4);
  (*(v2 + 8))(sub_265BBC794, 0, v3, v2);
}

uint64_t sub_265BBC794(void *a1)
{
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    sub_265BF3130();
    v9 = a1;
    v10 = sub_265BF3230();
    v11 = sub_265BF34D0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136446210;
      swift_getErrorValue();
      v14 = MEMORY[0x26676D550](v17[2], v17[3]);
      v16 = sub_265BB064C(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_265BAD000, v10, v11, "Error activating SF aggressive scanner: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x26676DCA0](v13, -1, -1);
      MEMORY[0x26676DCA0](v12, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

void sub_265BBC984(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *v2;
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_265BD5854;
    v5[3] = &block_descriptor_3;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
    v3 = *v2;
  }

  [v3 activateWithCompletion_];
  _Block_release(v4);
}

id RemoteParticipantHostLinkProvider.makeLink()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D54CE0]) init];
  [v0 setIdentifier_];
  [v0 setAdvertiseRate_];
  v1 = sub_265BF3330();
  [v0 setLabel_];

  [v0 setDeviceActionType_];
  [v0 setPairSetupDisabled_];
  [v0 setNeedsKeyboard_];
  return v0;
}

id (*sub_265BBCBDC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 flags];
  return sub_265BBCC30;
}

id (*sub_265BBCC6C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 controlFlags];
  return sub_265BBCCC0;
}

uint64_t (*sub_265BBCCD4(uint64_t **a1))()
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
  v2[4] = sub_265BBCD48(v2);
  return sub_265BBCD44;
}

void (*sub_265BBCD48(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 serviceType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_265BF3340();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_265BBCDD0;
}

void sub_265BBCDD0(uint64_t *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    if (v3)
    {
      v4 = *a1;
      v5 = a1[1];

      v7 = sub_265BF3330();
    }

    else
    {
      v7 = 0;
    }

    [a1[2] setServiceType_];
  }

  else if (v3)
  {
    v6 = *a1;
    v7 = sub_265BF3330();

    [a1[2] setServiceType_];
  }

  else
  {
    v7 = 0;
    [a1[2] setServiceType_];
  }
}

id sub_265BBCEA4()
{
  v1 = [v0 localDevice];

  return v1;
}

uint64_t (*sub_265BBCEDC())()
{
  result = [v0 localDeviceUpdatedHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_265BBE684;
  }

  return result;
}

uint64_t (*sub_265BBCF64(uint64_t **a1))()
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
  v2[4] = sub_265BBCFD4(v2);
  return sub_265BBE688;
}

void (*sub_265BBCFD4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 localDeviceUpdatedHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_265BBE684;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_265BBD09C;
}

id sub_265BBD0B8()
{
  v1 = [v0 destinationDevice];

  return v1;
}

void sub_265BBD0F0(void *a1)
{
  [v1 setDestinationDevice_];
}

void (*sub_265BBD138(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 destinationDevice];
  return sub_265BBD194;
}

void sub_265BBD194(id *a1)
{
  v1 = *a1;
  [a1[1] setDestinationDevice_];
}

uint64_t (*sub_265BBD1DC())()
{
  result = [v0 deviceFoundHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_265BBE684;
  }

  return result;
}

uint64_t (*sub_265BBD250(uint64_t **a1))()
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
  v2[4] = sub_265BBD2C0(v2);
  return sub_265BBE688;
}

void (*sub_265BBD2C0(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 deviceFoundHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_265BBE684;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_265BBD388;
}

uint64_t (*sub_265BBD3A4())()
{
  result = [v0 deviceLostHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_265BBE684;
  }

  return result;
}

uint64_t (*sub_265BBD418(uint64_t **a1))()
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
  v2[4] = sub_265BBD488(v2);
  return sub_265BBE688;
}

void (*sub_265BBD488(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 deviceLostHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_265BBE5C8;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_265BBD550;
}

void sub_265BBD56C(uint64_t a1, char a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 48);
  if (a2)
  {
    if (v7)
    {
      v8 = v6[7];
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x277D85DD0];
      v6[1] = 1107296256;
      v6[2] = sub_265BAFDBC;
      v6[3] = a5;
      v9 = _Block_copy(v6);
      v10 = v6[5];
    }

    else
    {
      v9 = 0;
    }

    [v6[8] *a4];
    _Block_release(v9);
    v14 = v6[7];
    sub_265BB060C(v6[6]);
  }

  else
  {
    if (v7)
    {
      v11 = v6[7];
      v6[4] = v7;
      v6[5] = v11;
      *v6 = MEMORY[0x277D85DD0];
      v6[1] = 1107296256;
      v6[2] = sub_265BAFDBC;
      v6[3] = a3;
      v12 = _Block_copy(v6);
      v13 = v6[5];
    }

    else
    {
      v12 = 0;
    }

    [v6[8] *a4];
    _Block_release(v12);
  }

  free(v6);
}

uint64_t (*sub_265BBD6C8())()
{
  result = [v0 deviceChangedHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_265BBE624;
  }

  return result;
}

void sub_265BBD73C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t (*sub_265BBD7B0(uint64_t **a1))()
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
  v2[4] = sub_265BBD820(v2);
  return sub_265BBE688;
}

void (*sub_265BBD820(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 deviceChangedHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_265BBE5B0;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_265BBD8E8;
}

void sub_265BBD8E8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    if (v3)
    {
      v4 = v2[7];
      v2[4] = v3;
      v2[5] = v4;
      *v2 = MEMORY[0x277D85DD0];
      v2[1] = 1107296256;
      v2[2] = sub_265BBD73C;
      v2[3] = &block_descriptor_54;
      v5 = _Block_copy(v2);
      v6 = v2[5];
    }

    else
    {
      v5 = 0;
    }

    [v2[8] setDeviceChangedHandler_];
    _Block_release(v5);
    v10 = v2[7];
    sub_265BB060C(v2[6]);
  }

  else
  {
    if (v3)
    {
      v7 = v2[7];
      v2[4] = v3;
      v2[5] = v7;
      *v2 = MEMORY[0x277D85DD0];
      v2[1] = 1107296256;
      v2[2] = sub_265BBD73C;
      v2[3] = &block_descriptor_57;
      v8 = _Block_copy(v2);
      v9 = v2[5];
    }

    else
    {
      v8 = 0;
    }

    [v2[8] setDeviceChangedHandler_];
    _Block_release(v8);
  }

  free(v2);
}

uint64_t (*sub_265BBDA50())()
{
  result = [v0 invalidationHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_265BBE628;
  }

  return result;
}

uint64_t (*sub_265BBDAD8(uint64_t **a1))()
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
  v2[4] = sub_265BBDB48(v2);
  return sub_265BBE688;
}

void (*sub_265BBDB48(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 invalidationHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_265BBE628;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_265BBDC10;
}

uint64_t (*sub_265BBDC2C())()
{
  result = [v0 interruptionHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_265BBE628;
  }

  return result;
}

uint64_t (*sub_265BBDCB4(uint64_t **a1))()
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
  v2[4] = sub_265BBDD24(v2);
  return sub_265BBE688;
}

void (*sub_265BBDD24(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 interruptionHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_265BBE628;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_265BBDDEC;
}

uint64_t (*sub_265BBDE08())()
{
  result = [v0 disconnectHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_265BBE628;
  }

  return result;
}

void sub_265BBDE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_265BB5860;
    v9[3] = a5;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v6 *a6];
  _Block_release(v8);
}

uint64_t (*sub_265BBDF38(uint64_t **a1))()
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
  v2[4] = sub_265BBDFF0(v2);
  return sub_265BBE688;
}

void sub_265BBDFA8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_265BBDFF0(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 disconnectHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_265BBE5A0;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_265BBE0B8;
}

void sub_265BBE0D4(uint64_t a1, char a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 48);
  if (a2)
  {
    if (v7)
    {
      v8 = v6[7];
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x277D85DD0];
      v6[1] = 1107296256;
      v6[2] = sub_265BB5860;
      v6[3] = a5;
      v9 = _Block_copy(v6);
      v10 = v6[5];
    }

    else
    {
      v9 = 0;
    }

    [v6[8] *a4];
    _Block_release(v9);
    v14 = v6[7];
    sub_265BB060C(v6[6]);
  }

  else
  {
    if (v7)
    {
      v11 = v6[7];
      v6[4] = v7;
      v6[5] = v11;
      *v6 = MEMORY[0x277D85DD0];
      v6[1] = 1107296256;
      v6[2] = sub_265BB5860;
      v6[3] = a3;
      v12 = _Block_copy(v6);
      v13 = v6[5];
    }

    else
    {
      v12 = 0;
    }

    [v6[8] *a4];
    _Block_release(v12);
  }

  free(v6);
}

void sub_265BBE230(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_265BD5854;
    v4[3] = &block_descriptor_4;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 activateWithCompletion_];
  _Block_release(v3);
}

unint64_t sub_265BBE68C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C358, &qword_265BF4C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265BF4D80;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  v2 = *v0;
  *(inited + 48) = sub_265BF3440();
  *(inited + 56) = 0x646F43726F727265;
  *(inited + 64) = 0xE900000000000065;
  v3 = v0[1];
  v4 = v0[2];
  *(inited + 72) = sub_265BF3330();
  *(inited + 80) = 0x6D6F44726F727265;
  *(inited + 88) = 0xEB000000006E6961;
  v5 = v0[3];
  v6 = v0[4];
  *(inited + 96) = sub_265BF3330();
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x8000000265BF9950;
  v7 = v0[5];
  v8 = v0[6];
  *(inited + 120) = sub_265BF3330();
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x8000000265BF9970;
  v14 = v0[7];
  v15 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C360, &unk_265BF4C10);
  sub_265BF3670();
  v9 = sub_265BF3330();

  *(inited + 144) = v9;
  *(inited + 152) = 0x65636976726573;
  *(inited + 160) = 0xE700000000000000;
  LOBYTE(v14) = *(v0 + 65);
  sub_265BF3670();
  v10 = sub_265BF3330();

  *(inited + 168) = v10;
  *(inited + 176) = 0x6369706F74;
  *(inited + 184) = 0xE500000000000000;
  LOBYTE(v14) = *(v0 + 66);
  sub_265BF3670();
  v11 = sub_265BF3330();

  *(inited + 192) = v11;
  v12 = sub_265BE5464(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C368, &qword_265BF54A0);
  swift_arrayDestroy();
  return v12;
}

__n128 __swift_memcpy67_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_265BBE964(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 67))
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

uint64_t sub_265BBE9AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 67) = 1;
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

    *(result + 67) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265BBEA14(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v3 = sub_265BF2D90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265BF3240();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v42 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  sub_265BF3130();
  v15 = *(v4 + 16);
  v41 = v2;
  v15(v7, v2, v3);
  v16 = sub_265BF3230();
  v17 = sub_265BF34E0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = v8;
    v19 = v18;
    v36 = swift_slowAlloc();
    v43 = v36;
    *v19 = 136446210;
    sub_265BBF888(&qword_28003C438, MEMORY[0x277D537B0]);
    v20 = sub_265BF36D0();
    v37 = v9;
    v22 = v21;
    (*(v4 + 8))(v7, v3);
    v23 = sub_265BB064C(v20, v22, &v43);
    v9 = v37;

    *(v19 + 4) = v23;
    _os_log_impl(&dword_265BAD000, v16, v17, "Validating handshake request: %{public}s", v19, 0xCu);
    v24 = v36;
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x26676DCA0](v24, -1, -1);
    v25 = v19;
    v8 = v38;
    MEMORY[0x26676DCA0](v25, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v26 = *(v9 + 8);
  v26(v14, v8);
  v27 = sub_265BF2D80();
  v28 = v42;
  if (v27 >= v40 && sub_265BF2D70() <= v39)
  {
    return sub_265BF2E50();
  }

  sub_265BF3130();
  v29 = sub_265BF3230();
  v30 = sub_265BF34D0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134349312;
    *(v31 + 4) = 8;
    *(v31 + 12) = 2050;
    *(v31 + 14) = 6;
    _os_log_impl(&dword_265BAD000, v29, v30, "Request incompatible with host version: %{public}ld, minimum required version (%{public}ld", v31, 0x16u);
    MEMORY[0x26676DCA0](v31, -1, -1);
  }

  v26(v28, v8);
  v32 = sub_265BF2D20();
  sub_265BBF888(&qword_281068900, MEMORY[0x277D52688]);
  v33 = swift_allocError();
  (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D52648], v32);
  *(swift_allocObject() + 16) = v33;
  return sub_265BF2E00();
}

uint64_t sub_265BBEEE4@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v43[1] = a3;
  v5 = sub_265BF3240();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v43 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v43 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v43 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v43 - v20;
  sub_265BF3130();
  sub_265BF3220();
  v22 = *(v6 + 8);
  v22(v21, v5);
  sub_265BBF7B0(a1, &v44);
  if (v45)
  {
    sub_265BB4A90(&v44, v46);
    v23 = sub_265BF2E70();
    if (v23 == sub_265BF2E70())
    {
      sub_265BF3130();
      v24 = sub_265BF3230();
      v25 = sub_265BF34E0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_265BAD000, v24, v25, "TV is always assumed to be unlocked", v26, 2u);
        MEMORY[0x26676DCA0](v26, -1, -1);
      }

      v27 = v13;
    }

    else
    {
      if (a2 - 1 >= 2 && a2)
      {
        goto LABEL_19;
      }

      v32 = v47;
      v33 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      (*(v33 + 16))(v32, v33);
      if (sub_265BF3030())
      {
        sub_265BF3130();
        v34 = sub_265BF3230();
        v35 = sub_265BF34D0();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_265BAD000, v34, v35, "Device locked, rejecting remote participant handshake", v36, 2u);
          MEMORY[0x26676DCA0](v36, -1, -1);
        }

        v22(v16, v5);
        v37 = sub_265BF2D20();
        sub_265BBF888(&qword_281068900, MEMORY[0x277D52688]);
        v38 = swift_allocError();
        (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D525F0], v37);
        *(swift_allocObject() + 16) = v38;
        sub_265BF2E00();
        return __swift_destroy_boxed_opaque_existential_0Tm(v46);
      }

      sub_265BF3130();
      v40 = sub_265BF3230();
      v41 = sub_265BF34E0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_265BAD000, v40, v41, "We are unlocked!!", v42, 2u);
        MEMORY[0x26676DCA0](v42, -1, -1);
      }

      v27 = v19;
    }

    v22(v27, v5);
LABEL_19:
    sub_265BF2E50();
    return __swift_destroy_boxed_opaque_existential_0Tm(v46);
  }

  sub_265BBF820(&v44);
  sub_265BF3130();
  v28 = sub_265BF3230();
  v29 = sub_265BF34E0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_265BAD000, v28, v29, "No data protection monitor, assuming we are unlocked", v30, 2u);
    MEMORY[0x26676DCA0](v30, -1, -1);
  }

  v22(v10, v5);
  return sub_265BF2E50();
}

uint64_t RemoteParticipantHandshakeRequest.validateHandshake(dataProtectionMonitor:platform:)@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v31 - v12;
  MEMORY[0x28223BE20](v11);
  v37 = &v31 - v14;
  v15 = sub_265BF3240();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v16 + 8))(v19, v15);
  sub_265BBEA14(8, 6);
  v33 = v13;
  sub_265BBEEE4(v35, a2, v13);
  v20 = v5;
  v21 = *(v5 + 16);
  v21(v10, v13, v4);
  v22 = *(v20 + 80);
  v32 = v20;
  v23 = (v22 + 16) & ~v22;
  v24 = swift_allocObject();
  v25 = *(v20 + 32);
  v25(v24 + v23, v10, v4);
  v26 = v34;
  v21(v34, v37, v4);
  v27 = swift_allocObject();
  v25(v27 + v23, v26, v4);
  v28 = (v27 + ((v23 + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_265BB2398;
  v28[1] = v24;
  sub_265BF2DF0();
  v29 = *(v32 + 8);
  v29(v33, v4);
  return (v29)(v37, v4);
}

uint64_t sub_265BBF7B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C430, &qword_265BF4E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BBF820(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C430, &qword_265BF4E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265BBF888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265BBF8EC(void *a1)
{
  v2 = sub_265BF2D20();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C440, &qword_265BF4E38);
  v39 = sub_265BF3360();
  v8 = v7;
  swift_getErrorValue();
  v9 = sub_265BF3720();
  v11 = v10;
  swift_getErrorValue();
  v12 = sub_265BF3710();
  v13 = *MEMORY[0x277D44250];
  v15 = sub_265BF3340() == v9 && v14 == v11;
  v40 = v12;
  if (v15)
  {

    if (v12 == -71165)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v16 = sub_265BF36E0();

    if ((v16 & 1) != 0 && v40 == -71165)
    {
      goto LABEL_26;
    }
  }

  if (sub_265BF3340() == v9 && v17 == v11)
  {
  }

  else
  {
    v19 = sub_265BF36E0();

    if ((v19 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (v40 != -6714)
  {
LABEL_17:
    v20 = v39 == v9 && v8 == v11;
    v21 = v20;
    v37 = v21;
    if (!v20 && (sub_265BF36E0() & 1) == 0)
    {
      goto LABEL_30;
    }

    v22 = *MEMORY[0x277D525E0];
    v23 = v38;
    v36 = *(v38 + 104);
    v36(v6, v22, v2);
    sub_265BB90C0();
    v24 = sub_265BF3710();
    (*(v23 + 8))(v6, v2);
    if (v24 == v40)
    {
      goto LABEL_26;
    }

    if (v37)
    {
      v26 = v38;
      v27 = v36;
    }

    else
    {
LABEL_30:
      if ((sub_265BF36E0() & 1) == 0)
      {
LABEL_35:
        if ((sub_265BF36E0() & 1) == 0)
        {
          goto LABEL_41;
        }

        v30 = *(v38 + 104);
LABEL_37:
        v31 = v30;
        v30(v6, *MEMORY[0x277D525F0], v2);
        sub_265BB90C0();
        v32 = sub_265BF3710();
        (*(v38 + 8))(v6, v2);
        if (v32 == v40)
        {

          return 2;
        }

        if (v37)
        {

          v33 = v38;
          goto LABEL_43;
        }

LABEL_41:
        v34 = sub_265BF36E0();

        if ((v34 & 1) == 0)
        {

          return 4;
        }

        v33 = v38;
        v31 = *(v38 + 104);
LABEL_43:
        v31(v6, *MEMORY[0x277D52600], v2);
        sub_265BB90C0();
        v35 = sub_265BF3710();

        (*(v33 + 8))(v6, v2);
        if (v35 == v40)
        {
          return 3;
        }

        return 4;
      }

      v26 = v38;
      v27 = *(v38 + 104);
    }

    v28 = *MEMORY[0x277D52648];
    v36 = v27;
    v27(v6, v28, v2);
    sub_265BB90C0();
    v29 = sub_265BF3710();
    (*(v26 + 8))(v6, v2);
    if (v29 == v40)
    {

      return 1;
    }

    v30 = v36;
    if (v37)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_26:

  return 0;
}

uint64_t RPClient.requestIdentities(matching:)(int a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C448, &qword_265BF4E40);

  return sub_265BF2DF0();
}

void sub_265BBFE84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_265BBB2F8;
  *(v9 + 24) = v8;
  v11[4] = sub_265BC03C0;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_265BC0280;
  v11[3] = &block_descriptor_5;
  v10 = _Block_copy(v11);

  [a3 getIdentitiesWithFlags:a4 completion:v10];
  _Block_release(v10);
}

void sub_265BBFFB0(unint64_t a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    v4 = sub_265BC00C8(a1);
    a3(v4, 0);
  }

  else
  {
    if (a2)
    {
      v6 = a2;
      a3(a2, 1);
      v7 = a2;
    }

    else
    {
      v8 = sub_265BF2D20();
      sub_265BB90C0();
      v9 = swift_allocError();
      (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D52668], v8);
      a3(v9, 1);
      v7 = v9;
    }
  }
}

void *sub_265BC00C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_265BF3690();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_265BC041C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x26676D450](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_265BC041C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_265BC03D0();
        v16 = &protocol witness table for RPIdentity;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_265BB4A90(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_265BC041C((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = sub_265BC03D0();
        v16 = &protocol witness table for RPIdentity;
        *&v14 = v13;
        *(v3 + 16) = v11 + 1;
        sub_265BB4A90(&v14, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_265BC0280(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_265BC03D0();
    v4 = sub_265BF33F0();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_265BC0314(int a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C448, &qword_265BF4E40);

  return sub_265BF2DF0();
}

unint64_t sub_265BC03D0()
{
  result = qword_28003C450;
  if (!qword_28003C450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28003C450);
  }

  return result;
}

void *sub_265BC041C(void *a1, int64_t a2, char a3)
{
  result = sub_265BC043C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_265BC043C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C458, &qword_265BF4E98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C460, &qword_265BF4EA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t RemoteParticipantDiscovery.__allocating_init(linkProvider:bluetoothScannerProvider:timerProvider:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  v8 = a1[3];
  v7 = a1[4];
  v31 = v6;
  v32 = v7;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = a2[3];
  v30 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v14);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v21 = a3[3];
  v20 = a3[4];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a3, v21);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  v27 = sub_265BC3370(v12, v18, v25, v31, v8, v21, v14, v32, v20, v30);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v27;
}

uint64_t RemoteParticipantDiscovery.init(linkProvider:bluetoothScannerProvider:timerProvider:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[3];
  v29 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2[3];
  v28 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v19 = a3[3];
  v18 = a3[4];
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a3, v19);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23);
  v25 = sub_265BC3370(v10, v16, v23, v30, v6, v19, v12, v29, v18, v28);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v25;
}

uint64_t *RemoteParticipantDiscovery.deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - v4;
  RemoteParticipantDiscovery.endDiscovering()();
  v6 = sub_265BF2E40();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v6(sub_265BC355C, v7);

  (*(v2 + 8))(v5, v1);
  v8 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  v9 = v0[18];

  sub_265BB07B4((v0 + 19));
  v10 = v0[31];
  sub_265BB060C(v0[30]);
  v11 = v0[33];
  sub_265BB060C(v0[32]);
  v12 = v0[35];
  sub_265BB060C(v0[34]);
  v13 = v0[37];
  sub_265BB060C(v0[36]);
  return v0;
}

uint64_t RemoteParticipantDiscovery.__deallocating_deinit()
{
  RemoteParticipantDiscovery.deinit();

  return MEMORY[0x2821FE8D8](v0, 304, 7);
}

void sub_265BC0C38(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + 16);
      MEMORY[0x28223BE20](Strong);
      sub_265BF2EA0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
    sub_265BF3810();
    a2(v7, v8);
    sub_265BB85E0(v7, v8);
  }
}

uint64_t sub_265BC0D98(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_265BC3A08(a2, a1 + 152);
  return swift_endAccess();
}

void sub_265BC0DFC(void *a1, int a2)
{
  LODWORD(v116) = a2;
  v120 = sub_265BF2CC0();
  v4 = *(v120 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v120);
  v115 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v119 = &v110 - v9;
  MEMORY[0x28223BE20](v8);
  v122 = &v110 - v10;
  v11 = sub_265BF3240();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v110 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v117 = &v110 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v110 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v110 - v25;
  swift_beginAccess();
  v121 = v2;
  sub_265BB0718(v2 + 152, v124);
  if (v124[1])
  {

    swift_unknownObjectRelease();
    v27 = v125;
    swift_unknownObjectRelease();
    sub_265BB0750(&v126, &qword_28003C480, &qword_265BF4EC8);
    if (sub_265BB0998(a1, v27))
    {
      v114 = v4;
      sub_265BF3140();
      v28 = a1;
      v29 = sub_265BF3230();
      v30 = sub_265BF34E0();

      v31 = os_log_type_enabled(v29, v30);
      v118 = v11;
      v113 = v12;
      if (v31)
      {
        v32 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v124[0] = v33;
        *v32 = 136446722;
        v123 = v27;
        v34 = sub_265BF3350();
        v36 = sub_265BB064C(v34, v35, v124);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2082;
        v37 = RPDeviceChangeFlags.logOutput.getter(v116);
        v39 = sub_265BB064C(v37, v38, v124);

        *(v32 + 14) = v39;
        *(v32 + 22) = 2114;
        *(v32 + 24) = v28;
        v40 = v112;
        *v112 = v28;
        v41 = v28;
        _os_log_impl(&dword_265BAD000, v29, v30, "Discovery (%{public}s has a changed device: %{public}s -> %{public}@", v32, 0x20u);
        sub_265BB0750(v40, &qword_28003C4A0, &qword_265BF5020);
        MEMORY[0x26676DCA0](v40, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x26676DCA0](v33, -1, -1);
        MEMORY[0x26676DCA0](v32, -1, -1);

        v42 = *(v113 + 8);
        v43 = v26;
        v44 = v118;
      }

      else
      {

        v42 = *(v12 + 8);
        v43 = v26;
        v44 = v11;
      }

      v116 = v42;
      v42(v43, v44);
      v65 = v120;
      v66 = v28;
      v67 = v122;
      v112 = v66;
      sub_265BB8C58(v66, v27, v122);
      sub_265BF3140();
      v68 = v114;
      v69 = *(v114 + 16);
      v70 = v119;
      v69(v119, v67, v65);
      v71 = sub_265BF3230();
      v72 = sub_265BF34E0();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v111 = v69;
        v74 = v70;
        v75 = v73;
        v76 = swift_slowAlloc();
        v124[0] = v76;
        *v75 = 136446210;
        sub_265BC3994(&qword_28003C4A8, MEMORY[0x277D515D0]);
        v77 = sub_265BF36D0();
        v78 = v65;
        v80 = v79;
        v81 = *(v68 + 8);
        v82 = v74;
        v69 = v111;
        v81(v82, v78);
        v83 = sub_265BB064C(v77, v80, v124);

        *(v75 + 4) = v83;
        _os_log_impl(&dword_265BAD000, v71, v72, "Updating previously discovered participant: %{public}s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v76);
        MEMORY[0x26676DCA0](v76, -1, -1);
        MEMORY[0x26676DCA0](v75, -1, -1);

        v84 = v81;
      }

      else
      {

        v84 = *(v68 + 8);
        v84(v70, v65);
      }

      v85 = v116(v24, v118);
      v86 = v121;
      v87 = *(v121 + 2);
      MEMORY[0x28223BE20](v85);
      v88 = v112;
      *(&v110 - 2) = v86;
      *(&v110 - 1) = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C488, &qword_265BF4ED0);
      sub_265BF2EA0();
      v89 = v124[0];
      if (v124[0])
      {
        swift_beginAccess();
        v90 = *(v86 + 34);
        if (v90)
        {
          v91 = *(v86 + 35);
          swift_endAccess();

          v92 = v122;
          v90(v122);
          sub_265BB060C(v90);

          v84(v92, v120);
        }

        else
        {
          v84(v122, v120);
          swift_endAccess();
        }
      }

      else
      {
        v121 = v84;
        v93 = v117;
        sub_265BF3140();
        v94 = v115;
        v95 = v120;
        v69(v115, v122, v120);
        v96 = sub_265BF3230();
        v97 = sub_265BF34E0();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v124[0] = v99;
          *v98 = 136446210;
          sub_265BC3994(&qword_28003C4A8, MEMORY[0x277D515D0]);
          v100 = sub_265BF36D0();
          v101 = v94;
          v103 = v102;
          v104 = v121;
          v121(v101, v95);
          v105 = sub_265BB064C(v100, v103, v124);

          *(v98 + 4) = v105;
          _os_log_impl(&dword_265BAD000, v96, v97, "We don't have a registered device for %{public}s, broadcasting discovery!", v98, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v99);
          MEMORY[0x26676DCA0](v99, -1, -1);
          MEMORY[0x26676DCA0](v98, -1, -1);

          v106 = v117;
        }

        else
        {

          v104 = v121;
          v121(v94, v95);
          v106 = v93;
        }

        v116(v106, v118);
        swift_beginAccess();
        v107 = *(v86 + 30);
        if (v107)
        {
          v108 = *(v86 + 31);
          swift_endAccess();

          v109 = v122;
          v107(v122);
          sub_265BB060C(v107);
          v104(v109, v95);
        }

        else
        {
          v104(v122, v95);
          swift_endAccess();
        }
      }
    }

    else
    {
      sub_265BF3140();
      v53 = a1;
      v54 = sub_265BF3230();
      v55 = sub_265BF34E0();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = v12;
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v118 = v11;
        v59 = v58;
        v60 = swift_slowAlloc();
        v124[0] = v60;
        *v57 = 138543618;
        *(v57 + 4) = v53;
        *v59 = v53;
        *(v57 + 12) = 2082;
        v123 = v27;
        v61 = v53;
        v62 = sub_265BF3350();
        v64 = sub_265BB064C(v62, v63, v124);

        *(v57 + 14) = v64;
        _os_log_impl(&dword_265BAD000, v54, v55, "%{public}@ is no longer supported as %{public}s...", v57, 0x16u);
        sub_265BB0750(v59, &qword_28003C4A0, &qword_265BF5020);
        MEMORY[0x26676DCA0](v59, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        MEMORY[0x26676DCA0](v60, -1, -1);
        MEMORY[0x26676DCA0](v57, -1, -1);

        (*(v56 + 8))(v19, v118);
      }

      else
      {

        (*(v12 + 8))(v19, v11);
      }

      sub_265BC1A38(v53);
    }
  }

  else
  {
    sub_265BB07B4(v124);
    sub_265BF3140();
    v45 = a1;
    v46 = sub_265BF3230();
    v47 = sub_265BF34D0();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = v12;
      v50 = swift_slowAlloc();
      *v48 = 138543362;
      *(v48 + 4) = v45;
      *v50 = v45;
      v51 = v45;
      _os_log_impl(&dword_265BAD000, v46, v47, "Changed device while inactive: %{public}@", v48, 0xCu);
      sub_265BB0750(v50, &qword_28003C4A0, &qword_265BF5020);
      v52 = v50;
      v12 = v49;
      MEMORY[0x26676DCA0](v52, -1, -1);
      MEMORY[0x26676DCA0](v48, -1, -1);
    }

    (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_265BC1A38(void *a1)
{
  v2 = v1;
  v4 = sub_265BF3240();
  v77 = *(v4 - 8);
  v5 = *(v77 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v69 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v69 - v12;
  v14 = sub_265BF2CC0();
  v76 = *(v14 - 8);
  v15 = *(v76 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v69 - v19;
  swift_beginAccess();
  sub_265BB0718((v2 + 19), v79);
  if (v79[1])
  {
    v74 = v20;
    v75 = v4;
    v21 = v14;

    swift_unknownObjectRelease();
    v22 = v80;
    swift_unknownObjectRelease();
    v23 = sub_265BB0750(&v81, &qword_28003C480, &qword_265BF4EC8);
    v24 = v2[2];
    MEMORY[0x28223BE20](v23);
    *(&v69 - 2) = v2;
    *(&v69 - 1) = a1;
    v73 = v24;
    sub_265BF2EA0();
    if (LOBYTE(v79[0]) == 1)
    {
      v72 = 0;
      v25 = a1;
      v26 = v74;
      sub_265BB8C58(v25, v22, v74);
      sub_265BF3140();
      v27 = v76;
      v28 = v21;
      (*(v76 + 16))(v18, v26, v21);
      v29 = sub_265BF3230();
      v30 = sub_265BF34E0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v71 = v25;
        v32 = v31;
        v70 = swift_slowAlloc();
        v79[0] = v70;
        *v32 = 136446466;
        v78 = v22;
        v33 = sub_265BF3350();
        v34 = v30;
        v36 = sub_265BB064C(v33, v35, v79);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2082;
        sub_265BC3994(&qword_28003C4A8, MEMORY[0x277D515D0]);
        v37 = sub_265BF36D0();
        v39 = v38;
        v40 = *(v76 + 8);
        v40(v18, v28);
        v41 = sub_265BB064C(v37, v39, v79);

        *(v32 + 14) = v41;
        _os_log_impl(&dword_265BAD000, v29, v34, "Removing lost participant (%{public}s: %{public}s", v32, 0x16u);
        v42 = v70;
        swift_arrayDestroy();
        MEMORY[0x26676DCA0](v42, -1, -1);
        v43 = v32;
        v25 = v71;
        MEMORY[0x26676DCA0](v43, -1, -1);
      }

      else
      {

        v40 = *(v27 + 8);
        v40(v18, v28);
      }

      v64 = (*(v77 + 8))(v13, v75);
      v65 = v28;
      MEMORY[0x28223BE20](v64);
      *(&v69 - 2) = v2;
      *(&v69 - 1) = v25;
      sub_265BF2EA0();
      swift_beginAccess();
      v66 = v2[32];
      v67 = v74;
      if (v66)
      {
        v68 = v2[33];
        swift_endAccess();

        v66(v67);
        sub_265BB060C(v66);
        return (v40)(v67, v65);
      }

      else
      {
        v40(v74, v65);
        return swift_endAccess();
      }
    }

    else
    {
      v53 = v22;
      sub_265BF3140();
      v54 = a1;
      v55 = sub_265BF3230();
      v56 = sub_265BF34E0();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v79[0] = v59;
        *v57 = 136446466;
        v78 = v53;
        v60 = sub_265BF3350();
        v62 = sub_265BB064C(v60, v61, v79);

        *(v57 + 4) = v62;
        *(v57 + 12) = 2114;
        *(v57 + 14) = v54;
        *v58 = v54;
        v63 = v54;
        _os_log_impl(&dword_265BAD000, v55, v56, "Existing device matching %{public}s not found: %{public}@", v57, 0x16u);
        sub_265BB0750(v58, &qword_28003C4A0, &qword_265BF5020);
        MEMORY[0x26676DCA0](v58, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        MEMORY[0x26676DCA0](v59, -1, -1);
        MEMORY[0x26676DCA0](v57, -1, -1);
      }

      return (*(v77 + 8))(v11, v75);
    }
  }

  else
  {
    sub_265BB07B4(v79);
    sub_265BF3140();
    v44 = a1;
    v45 = sub_265BF3230();
    v46 = sub_265BF34D0();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = v4;
      v49 = swift_slowAlloc();
      *v47 = 138543362;
      *(v47 + 4) = v44;
      *v49 = v44;
      v50 = v44;
      _os_log_impl(&dword_265BAD000, v45, v46, "Lost device while inactive: %{public}@", v47, 0xCu);
      sub_265BB0750(v49, &qword_28003C4A0, &qword_265BF5020);
      v51 = v49;
      v4 = v48;
      MEMORY[0x26676DCA0](v51, -1, -1);
      MEMORY[0x26676DCA0](v47, -1, -1);
    }

    return (*(v77 + 8))(v8, v4);
  }
}

uint64_t sub_265BC21F8@<X0>(id a1@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v6 = [a1 effectiveIdentifier];
  v7 = sub_265BF3340();
  v9 = v8;

  swift_beginAccess();
  v10 = *(a2 + 144);
  if (!*(v10 + 16))
  {

    goto LABEL_5;
  }

  v11 = sub_265BE38DC(v7, v9);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v14 = *(*(v10 + 56) + 8 * v11);
  v15 = v14;
LABEL_6:
  swift_endAccess();
  v16 = [a1 effectiveIdentifier];
  v17 = sub_265BF3340();
  v19 = v18;

  swift_beginAccess();
  v20 = a1;
  v21 = *(a2 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a2 + 144);
  *(a2 + 144) = 0x8000000000000000;
  sub_265BE4A38(v20, v17, v19, isUniquelyReferenced_nonNull_native);

  *(a2 + 144) = v24;
  result = swift_endAccess();
  *a3 = v14;
  return result;
}

uint64_t sub_265BC2370(uint64_t a1, id a2)
{
  v4 = [a2 effectiveIdentifier];
  v5 = sub_265BF3340();
  v7 = v6;

  swift_beginAccess();
  v8 = a2;
  v9 = *(a1 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + 144);
  *(a1 + 144) = 0x8000000000000000;
  sub_265BE4A38(v8, v5, v7, isUniquelyReferenced_nonNull_native);

  *(a1 + 144) = v12;
  return swift_endAccess();
}

uint64_t sub_265BC2444@<X0>(id a1@<X1>, uint64_t a2@<X0>, _BYTE *a3@<X8>)
{
  v5 = [a1 effectiveIdentifier];
  v6 = sub_265BF3340();
  v8 = v7;

  swift_beginAccess();
  if (*(*(a2 + 144) + 16))
  {
    sub_265BE38DC(v6, v8);
    v10 = v9;
  }

  else
  {

    v10 = 0;
  }

  result = swift_endAccess();
  *a3 = v10 & 1;
  return result;
}

uint64_t sub_265BC2510(int a1, id a2)
{
  v2 = [a2 effectiveIdentifier];
  v3 = sub_265BF3340();
  v5 = v4;

  swift_beginAccess();
  sub_265BD3760(0, v3, v5);
  return swift_endAccess();
}

uint64_t sub_265BC25B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  sub_265BF2EA0();
  sub_265BB0718(v13, &v10);
  v6 = v11;
  if (v11)
  {
    v7 = v10;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_265BB0750(&v12, &qword_28003C480, &qword_265BF4EC8);
    if (v7 == a1 && v6 == a2)
    {

      sub_265BB07B4(v13);
      return 1;
    }

    v8 = sub_265BF36E0();

    sub_265BB07B4(v13);
    if (v8)
    {
      return 1;
    }
  }

  else
  {
    sub_265BB07B4(v13);
    sub_265BB07B4(&v10);
  }

  return 0;
}

uint64_t sub_265BC26D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v37 = &v32 - v8;
  v9 = sub_265BF3240();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = sub_265BC25B0(a2, a3);

    if (v15)
    {
      sub_265BF3140();

      v16 = sub_265BF3230();
      v17 = sub_265BF34E0();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v36 = v5;
        v19 = v18;
        v34 = swift_slowAlloc();
        v39[0] = v34;
        *v19 = 136446466;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        v33 = v17;
        v38 = Strong;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C498, &qword_265BF5018);
        v32 = v16;
        v21 = sub_265BF3590();
        v35 = v6;
        v23 = v22;

        v24 = sub_265BB064C(v21, v23, v39);
        v6 = v35;

        *(v19 + 4) = v24;
        *(v19 + 12) = 2082;
        *(v19 + 14) = sub_265BB064C(a2, a3, v39);
        v25 = v32;
        _os_log_impl(&dword_265BAD000, v32, v33, "%{public}s: Remote participant discovery (%{public}s expired", v19, 0x16u);
        v26 = v34;
        swift_arrayDestroy();
        MEMORY[0x26676DCA0](v26, -1, -1);
        v27 = v19;
        v5 = v36;
        MEMORY[0x26676DCA0](v27, -1, -1);
      }

      else
      {
      }

      (*(v10 + 8))(v13, v9);
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v28 = v37;
        RemoteParticipantDiscovery.endDiscovering()();

        v29 = v6;
        v30 = sub_265BF2E40();
        v31 = swift_allocObject();
        *(v31 + 16) = 0;
        *(v31 + 24) = 0;
        v30(sub_265BC3A74, v31);

        return (*(v29 + 8))(v28, v5);
      }
    }
  }

  return result;
}

uint64_t RemoteParticipantDiscovery.onParticipantDiscovered(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 240);
  v6 = *(v2 + 248);
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  sub_265BB2BC4(a1);
  return sub_265BB060C(v5);
}

uint64_t RemoteParticipantDiscovery.onParticipantLost(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 256);
  v6 = *(v2 + 264);
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  sub_265BB2BC4(a1);
  return sub_265BB060C(v5);
}

uint64_t RemoteParticipantDiscovery.onParticipantUpdated(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 272);
  v6 = *(v2 + 280);
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  sub_265BB2BC4(a1);
  return sub_265BB060C(v5);
}

uint64_t RemoteParticipantDiscovery.onDiscoveryExpired(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 288);
  v4 = *(v2 + 296);
  *(v2 + 288) = a1;
  *(v2 + 296) = a2;
  sub_265BB2BC4(a1);

  return sub_265BB060C(v3);
}

uint64_t RemoteParticipantDiscovery.beginDiscoveringParticipantsWithRole(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3140();
  sub_265BF3220();
  (*(v5 + 8))(v8, v4);
  if (qword_281068810 != -1)
  {
    swift_once();
  }

  return RemoteParticipantDiscovery.beginDiscoveringParticipantsWithRole(_:timeout:)(a1, a2, *&qword_281068818);
}

uint64_t sub_265BC2DB0(void *a1, int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265BC0DFC(a1, a2);
  }

  return result;
}

uint64_t RemoteParticipantDiscovery.queryDiscoveredDevice(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265BF3140();
  sub_265BF3220();
  (*(v5 + 8))(v8, v4);
  v9 = *(v2 + 16);
  v12 = v2;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C488, &qword_265BF4ED0);
  sub_265BF2EA0();
  return v14;
}

uint64_t sub_265BC2F78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_265BF2C70();
  v6 = v5;
  swift_beginAccess();
  v7 = *(a1 + 144);
  if (!*(v7 + 16))
  {

    goto LABEL_5;
  }

  v8 = sub_265BE38DC(v4, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v11 = *(*(v7 + 56) + 8 * v8);
  v12 = v11;
LABEL_6:
  *a2 = v11;
  return swift_endAccess();
}

uint64_t sub_265BC3034(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 240);
  v6 = *(v2 + 248);
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  sub_265BB2BC4(a1);
  return sub_265BB060C(v5);
}

uint64_t sub_265BC30A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 256);
  v6 = *(v2 + 264);
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  sub_265BB2BC4(a1);
  return sub_265BB060C(v5);
}

uint64_t sub_265BC3114(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 272);
  v6 = *(v2 + 280);
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  sub_265BB2BC4(a1);
  return sub_265BB060C(v5);
}

uint64_t sub_265BC3184(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 288);
  v4 = *(v2 + 296);
  *(v2 + 288) = a1;
  *(v2 + 296) = a2;
  sub_265BB2BC4(a1);

  return sub_265BB060C(v3);
}

uint64_t sub_265BC31D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265BF3140();
  sub_265BF3220();
  (*(v5 + 8))(v8, v4);
  v9 = *(v2 + 16);
  v12 = v2;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C488, &qword_265BF4ED0);
  sub_265BF2EA0();
  return v14;
}

uint64_t sub_265BC3328(uint64_t result, uint64_t (*a2)(uint64_t *))
{
  v2 = *(result + 8);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

uint64_t sub_265BC3370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = a5;
  v32 = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v30);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  v28 = a7;
  v29 = a10;
  v18 = __swift_allocate_boxed_opaque_existential_0(&v27);
  (*(*(a7 - 8) + 32))(v18, a2, a7);
  v25 = a6;
  v26 = a9;
  v19 = __swift_allocate_boxed_opaque_existential_0(&v24);
  (*(*(a6 - 8) + 32))(v19, a3, a6);
  *(a4 + 168) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 232) = 0u;
  *(a4 + 248) = 0u;
  *(a4 + 296) = 0;
  *(a4 + 152) = 0u;
  *(a4 + 264) = 0u;
  *(a4 + 280) = 0u;
  *(a4 + 144) = sub_265BE5450(MEMORY[0x277D84F90]);
  v20 = sub_265BF2EC0();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(a4 + 16) = sub_265BF2EB0();
  sub_265BB4A90(&v30, a4 + 24);
  sub_265BB4A90(&v27, a4 + 104);
  sub_265BB4A90(&v24, a4 + 64);
  return a4;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_265BC3598()
{
  result = qword_281068A38[0];
  if (!qword_281068A38[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_281068A38);
  }

  return result;
}

uint64_t sub_265BC35F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C480, &qword_265BF4EC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_5Tm_1()
{
  v1 = v0[2];

  if (v0[4])
  {

    v2 = v0[5];
    swift_unknownObjectRelease();
    v3 = v0[8];
    swift_unknownObjectRelease();
    if (v0[12])
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_265BC37E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265BC3830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_265BC3894(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_265BC38DC(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 8);
  v5 = *result;
  v6 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

uint64_t sub_265BC3994(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_265BC39F8(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_265BC0C38(a1, *(v1 + 16));
}

uint64_t sub_265BC3A78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 144);
    sub_265BF2EA0();
  }

  return result;
}

uint64_t sub_265BC3B04(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265BC43D0(a1);
  }

  return result;
}

uint64_t sub_265BC3B64()
{
  v0 = sub_265BF2F90();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 192);
    v7 = *(result + 200);
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v1 + 104))(v4, *MEMORY[0x277D4E190], v0);
    sub_265BF2DC0();
    sub_265BF2E90();
    swift_unknownObjectRelease();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_265BC3CE0()
{
  v0 = sub_265BF2DE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265BF2F90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 192);
    v12 = *(result + 200);
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v6 + 104))(v9, *MEMORY[0x277D4E1A8], v5);
    sub_265BF30E0();
    sub_265BF2E90();
    swift_unknownObjectRelease();
    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_265BC3EF4(void *a1, void *a2)
{
  v3 = v2;
  v40 = a2;
  v39 = a1;
  v4 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = sub_265BF3240();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v16 + 8))(v19, v15);
  v20 = *(v3 + 144);
  sub_265BF2EA0();
  sub_265BD2384(v14, v12, type metadata accessor for RemoteParticipantConnectionBroker.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_10;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v12 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C4B0, &unk_265BF5190) + 48);
LABEL_5:
    sub_265BD244C(v12, v7);
    v23 = *v7;
    v22 = v7[1];

    sub_265BD23EC(v7, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
    if (v23 != v39 || v22 != v40)
    {
      v25 = sub_265BF36E0();

      if (v25)
      {
        return sub_265BD23EC(v14, type metadata accessor for RemoteParticipantConnectionBroker.State);
      }

LABEL_10:
      v26 = sub_265BF2D20();
      sub_265BD21C8(&qword_281068900, MEMORY[0x277D52688]);
      swift_allocError();
      (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D52660], v26);
      swift_willThrow();
      return sub_265BD23EC(v14, type metadata accessor for RemoteParticipantConnectionBroker.State);
    }

LABEL_11:

    return sub_265BD23EC(v14, type metadata accessor for RemoteParticipantConnectionBroker.State);
  }

  v29 = *v12;
  v30 = *(v12 + 1);
  v31 = *(v12 + 3);
  v32 = *(v12 + 7);
  v34 = *(v12 + 9);
  v33 = *(v12 + 10);
  v35 = v29 == v39 && v30 == v40;
  if (!v35 && (sub_265BF36E0() & 1) == 0)
  {
    v36 = sub_265BF2D20();
    sub_265BD21C8(&qword_281068900, MEMORY[0x277D52688]);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D52660], v36);
    swift_willThrow();

    goto LABEL_11;
  }

  sub_265BD23EC(v14, type metadata accessor for RemoteParticipantConnectionBroker.State);
}

uint64_t sub_265BC43D0(void *a1)
{
  v379 = a1;
  v381 = sub_265BF2CC0();
  v371 = *(v381 - 1);
  v1 = *(v371 + 64);
  v2 = MEMORY[0x28223BE20](v381);
  v360 = &v338 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v364 = &v338 - v4;
  v5 = sub_265BF2C30();
  v354 = *(v5 - 8);
  v355 = v5;
  v6 = *(v354 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v349 = v8;
  v350 = &v338 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v372 = &v338 - v9;
  v10 = sub_265BF3210();
  v342 = *(v10 - 8);
  v343 = v10;
  v11 = *(v342 + 64);
  MEMORY[0x28223BE20](v10);
  v344 = &v338 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265BF31F0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v341 = &v338 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265BF2F60();
  v351 = *(v16 - 8);
  v352 = v16;
  v17 = *(v351 + 64);
  MEMORY[0x28223BE20](v16);
  v368 = &v338 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v378 = *(v356 - 8);
  v19 = v378[8];
  v20 = MEMORY[0x28223BE20](v356);
  v367 = &v338 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v348 = &v338 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v369 = &v338 - v25;
  v346 = v26;
  MEMORY[0x28223BE20](v24);
  v370 = &v338 - v27;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v380 = *(v366 - 8);
  v28 = v380[8];
  v29 = MEMORY[0x28223BE20](v366);
  v345 = &v338 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v373 = &v338 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v353 = &v338 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v357 = &v338 - v35;
  MEMORY[0x28223BE20](v34);
  v358 = &v338 - v36;
  v385 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0);
  v347 = *(v385 - 8);
  v37 = *(v347 + 64);
  v38 = MEMORY[0x28223BE20](v385);
  v359 = (&v338 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = MEMORY[0x28223BE20](v38);
  v340 = &v338 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v377 = (&v338 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v365 = (&v338 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v386 = &v338 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v384 = (&v338 - v48);
  v49 = MEMORY[0x28223BE20](v47);
  v383 = &v338 - v50;
  MEMORY[0x28223BE20](v49);
  v382 = (&v338 - v51);
  v52 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v338 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v58 = &v338 - v57;
  v59 = sub_265BF3240();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  v62 = MEMORY[0x28223BE20](v59);
  v375 = (&v338 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = MEMORY[0x28223BE20](v62);
  v363 = &v338 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v339 = &v338 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v362 = (&v338 - v69);
  v70 = MEMORY[0x28223BE20](v68);
  v361 = &v338 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v376 = &v338 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v76 = &v338 - v75;
  v77 = MEMORY[0x28223BE20](v74);
  v374 = &v338 - v78;
  MEMORY[0x28223BE20](v77);
  v80 = &v338 - v79;
  sub_265BF3130();
  sub_265BF3220();
  v388 = *(v60 + 8);
  v389 = v59;
  v387 = (v60 + 8);
  v388(v80, v59);
  v81 = *(v391 + 18);
  sub_265BF2EA0();
  v390 = v58;
  sub_265BD2384(v58, v56, type metadata accessor for RemoteParticipantConnectionBroker.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v88 = v383;
    v89 = v384;
    v90 = v382;
    v374 = v37;
    v375 = v81;
    v363 = v28;
    if (EnumCaseMultiPayload)
    {

      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C4B0, &unk_265BF5190);
      v150 = v90;
      sub_265BD244C(&v56[*(v149 + 48)], v90);
      v151 = v76;
      sub_265BF3130();
      v152 = v88;
      sub_265BD2384(v90, v88, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      sub_265BD2384(v90, v89, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      v153 = sub_265BF3230();
      v154 = sub_265BF34E0();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        v391 = v151;
        v156 = v155;
        v157 = swift_slowAlloc();
        *&v400 = v157;
        *v156 = 136446466;
        v158 = *(v385 + 20);
        sub_265BD21C8(&qword_28003C4A8, MEMORY[0x277D515D0]);
        v159 = sub_265BF36D0();
        v160 = v152;
        v161 = v159;
        v163 = v162;
        sub_265BD23EC(v160, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        v164 = sub_265BB064C(v161, v163, &v400);

        *(v156 + 4) = v164;
        *(v156 + 12) = 2082;
        v165 = v89;
        v166 = *v89;
        v167 = v89[1];

        sub_265BD23EC(v165, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        v168 = sub_265BB064C(v166, v167, &v400);

        *(v156 + 14) = v168;
        _os_log_impl(&dword_265BAD000, v153, v154, "Participant connection broker ignoring discovered participant while already connecting to %{public}s with identifier %{public}s", v156, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26676DCA0](v157, -1, -1);
        MEMORY[0x26676DCA0](v156, -1, -1);

        v169 = v391;
      }

      else
      {

        sub_265BD23EC(v89, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        sub_265BD23EC(v152, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        v169 = v151;
      }

      v388(v169, v389);
      sub_265BD23EC(v150, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      goto LABEL_43;
    }

    v384 = 0;
    v91 = v56;
    v92 = v386;
    sub_265BD244C(v91, v386);
    v93 = v391;
    v94 = *(v391 + 9);
    v95 = *(v391 + 10);
    ObjectType = swift_getObjectType();
    v97 = v385;
    v98 = *(v385 + 20);
    v99 = (*(v95 + 64))(v98 + v92, ObjectType, v95);
    if (v99)
    {
      v100 = v99;
      v382 = v98;
      sub_265BF3130();
      v101 = v365;
      sub_265BD2384(v92, v365, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      v102 = v100;
      v103 = sub_265BF3230();
      v104 = sub_265BF34E0();

      v105 = os_log_type_enabled(v103, v104);
      v383 = v102;
      if (v105)
      {
        v106 = v101;
        v107 = v102;
        v108 = swift_slowAlloc();
        v379 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v110 = v97;
        v111 = v109;
        *&v400 = v109;
        *v108 = 136446466;
        v112 = *(v110 + 20);
        sub_265BD21C8(&qword_28003C4A8, MEMORY[0x277D515D0]);
        v113 = sub_265BF36D0();
        v115 = v114;
        sub_265BD23EC(v106, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        v116 = sub_265BB064C(v113, v115, &v400);
        v93 = v391;

        *(v108 + 4) = v116;
        *(v108 + 12) = 2114;
        *(v108 + 14) = v107;
        v117 = v379;
        *v379 = v100;
        v118 = v107;
        _os_log_impl(&dword_265BAD000, v103, v104, "We have found a device that matches %{public}s. Connecting to device: %{public}@", v108, 0x16u);
        sub_265BD2214(v117);
        v92 = v386;
        MEMORY[0x26676DCA0](v117, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v111);
        MEMORY[0x26676DCA0](v111, -1, -1);
        MEMORY[0x26676DCA0](v108, -1, -1);
      }

      else
      {

        sub_265BD23EC(v101, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      }

      v388(v376, v389);
      v202 = sub_265BF2CB0();
      v203 = v377;
      if (v204)
      {
        LODWORD(v389) = v202;
        v205 = v93[5];
        v388 = v93[6];
        v387 = __swift_project_boxed_opaque_existential_1(v93 + 2, v205);
        sub_265BD2384(v92, v203, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        sub_265BF3450();
        v206 = v385;
        v208 = v207 - *(v203 + *(v385 + 36));
        v210 = *v203;
        v209 = v203[1];
        v211 = *(v385 + 20);

        v212 = sub_265BF2CB0();
        v214 = v213;
        v215 = v203;
        v216 = *(v203 + *(v206 + 28));
        v217 = *(v215 + *(v206 + 24));
        sub_265BD23EC(v215, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        *(&v401 + 1) = &type metadata for ValidDeviceDiscoveredAnalyticsEvent;
        *&v402 = sub_265BD2B7C();
        v218 = swift_allocObject();
        *&v400 = v218;
        *(v218 + 16) = v208;
        *(v218 + 24) = v210;
        *(v218 + 32) = v209;
        *(v218 + 40) = v212;
        v219 = v391;
        *(v218 + 48) = v214 & 1;
        *(v218 + 49) = v216;
        *(v218 + 50) = v217;
        v220 = v386;
        sub_265BF3010();
        v221 = __swift_destroy_boxed_opaque_existential_0Tm(&v400);
        MEMORY[0x28223BE20](v221);
        v222 = v383;
        *(&v338 - 4) = v219;
        *(&v338 - 3) = v222;
        *(&v338 - 2) = v220;
        sub_265BF2EA0();
        v223 = v219[7];
        v224 = *(v220 + *(v206 + 24));
        v225 = *(v220 + *(v206 + 28));
        if (v389 == 4)
        {
          v226 = 0;
        }

        else
        {
          v226 = 1;
          v242 = 1;
          if ((v389 - 3) >= 2)
          {
LABEL_48:
            v243 = *(v220 + *(v385 + 32));
            v244 = swift_allocObject();
            v245 = v383;
            *(v244 + 16) = v223;
            *(v244 + 24) = v245;
            *(v244 + 32) = v225;
            *(v244 + 33) = v226;
            *(v244 + 34) = v243;
            *(v244 + 35) = v242;
            *(v244 + 36) = v224;
            v364 = v245;
            swift_unknownObjectRetain();
            v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
            v247 = v369;
            v340 = v246;
            sub_265BF2DF0();
            sub_265BF3180();
            v248 = sub_265BF2F30();
            v249 = *(v248 + 48);
            v250 = *(v248 + 52);
            swift_allocObject();
            v251 = sub_265BF2F00();
            v252 = v344;
            sub_265BF2F50();

            sub_265BF3200();
            sub_265BF31E0();
            (*(v342 + 8))(v252, v343);
            sub_265BF2F50();
            v253 = sub_265BF31C0();
            v254 = *(v253 + 48);
            v255 = *(v253 + 52);
            swift_allocObject();
            v256 = sub_265BF3190();
            v362 = v256;
            *&v400 = v251;
            v257 = sub_265BF3350();
            v361 = v257;
            v259 = v258;
            sub_265BF2C20();
            v260 = swift_allocObject();
            v382 = v251;
            *(v260 + 16) = v251;
            *(v260 + 24) = v256;
            *(v260 + 32) = v257;
            *(v260 + 40) = v259;
            v360 = v259;
            *(v260 + 48) = "DeviceConnection.connect";
            *(v260 + 56) = 24;
            *(v260 + 64) = 2;

            v261 = v373;
            sub_265BF2DF0();
            v262 = v378;
            v263 = v378[2];
            v379 = v378 + 2;
            v381 = v263;
            v264 = v367;
            v265 = v356;
            v263(v367, v247, v356);
            v266 = v262;
            v376 = *(v262 + 80);
            v359 = (((v376 + 16) & ~v376) + v346);
            v267 = (v376 + 16) & ~v376;
            v371 = v267;
            v268 = swift_allocObject();
            v269 = v266[4];
            v365 = v266 + 4;
            v375 = v269;
            v269(v268 + v267, v264, v265);
            v270 = v380;
            v271 = v380[2];
            v388 = (v380 + 2);
            v389 = v271;
            v272 = v345;
            v273 = v261;
            v274 = v366;
            v271(v345, v273, v366);
            v275 = *(v270 + 80);
            v276 = v270;
            v387 = v275;
            v277 = (v275 + 16) & ~v275;
            v384 = v277;
            v363 = (&v363[v277 + 7] & 0xFFFFFFFFFFFFFFF8);
            v278 = v363;
            v279 = swift_allocObject();
            v280 = v276[4];
            v383 = (v276 + 4);
            v385 = v280;
            v280(v279 + v277, v272, v274);
            v281 = &v278[v279];
            *v281 = sub_265BD3390;
            *(v281 + 1) = v268;
            v282 = v348;
            sub_265BF2DF0();
            v284 = v354;
            v283 = v355;
            v285 = v350;
            (*(v354 + 16))(v350, v372, v355);
            v286 = (*(v284 + 80) + 49) & ~*(v284 + 80);
            v287 = (v349 + v286 + 7) & 0xFFFFFFFFFFFFFFF8;
            v288 = swift_allocObject();
            v289 = v360;
            *(v288 + 16) = v361;
            *(v288 + 24) = v289;
            *(v288 + 32) = "DeviceConnection.connect";
            *(v288 + 40) = 24;
            *(v288 + 48) = 2;
            (*(v284 + 32))(v288 + v286, v285, v283);
            *(v288 + v287) = v362;
            v290 = v381;
            *(v288 + ((v287 + 15) & 0xFFFFFFFFFFFFFFF8)) = v382;
            v291 = v367;
            v290(v367, v282, v265);
            v292 = (v359 + 7) & 0xFFFFFFFFFFFFFFF8;
            v293 = swift_allocObject();
            v375(v293 + v371, v291, v265);
            v294 = (v293 + v292);
            *v294 = sub_265BD3364;
            v294[1] = v288;

            sub_265BF2DF0();
            v296 = v378 + 1;
            v295 = v378[1];
            v295(v282, v265);
            v362 = v295;
            v378 = v296;
            v367 = v380[1];
            ++v380;
            v297 = v366;
            (v367)(v373, v366);
            (*(v284 + 8))(v372, v283);
            (*(v351 + 8))(v368, v352);
            v298 = v369;
            v295(v369, v265);

            v382 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent;
            v299 = v377;
            sub_265BD2384(v386, v377, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
            v372 = *(v347 + 80);
            v300 = (v372 + 24) & ~v372;
            v374 += v300;
            v368 = v300;
            v301 = swift_allocObject();
            v302 = v297;
            v303 = v391;
            *(v301 + 16) = v391;
            sub_265BD244C(v299, v301 + v300);
            v304 = swift_allocObject();
            *(v304 + 16) = sub_265BD3010;
            *(v304 + 24) = v301;
            v305 = v370;
            v381(v298, v370, v265);
            v306 = swift_allocObject();
            v375(v306 + v371, v298, v265);
            v307 = (v306 + v292);
            *v307 = sub_265BD3090;
            v307[1] = v304;

            v308 = v353;
            sub_265BF2DF0();
            v362(v305, v265);
            v309 = v373;
            v389(v373, v308, v302);
            v310 = v363;
            v311 = swift_allocObject();
            (v385)(v384 + v311, v309, v302);
            v312 = &v310[v311];
            *v312 = sub_265BD3098;
            v312[1] = v303;

            v313 = v357;
            sub_265BF2DF0();
            (v367)(v308, v302);
            v314 = v377;
            sub_265BD2384(v386, v377, v382);
            v315 = (v374 + 7) & 0xFFFFFFFFFFFFFFF8;
            v316 = swift_allocObject();
            v317 = v364;
            *(v316 + 16) = v364;
            sub_265BD244C(v314, &v368[v316]);
            *(v316 + v315) = v303;
            v318 = swift_allocObject();
            *(v318 + 16) = sub_265BD30C4;
            *(v318 + 24) = v316;
            v389(v309, v313, v302);
            v319 = swift_allocObject();
            (v385)(v384 + v319, v309, v302);
            v320 = &v310[v319];
            *v320 = sub_265BD3358;
            *(v320 + 1) = v318;
            v321 = v317;

            v322 = v358;
            sub_265BF2DF0();
            v323 = v367;
            (v367)(v313, v302);
            v324 = sub_265BF2E40();
            v325 = swift_allocObject();
            *(v325 + 16) = 0;
            *(v325 + 24) = 0;
            v324(sub_265BB8864, v325);

            v323(v322, v302);
            sub_265BD23EC(v390, type metadata accessor for RemoteParticipantConnectionBroker.State);
            v241 = v386;
            v240 = v382;
            return sub_265BD23EC(v241, v240);
          }
        }

        v242 = v226;
        v226 = 0;
        goto LABEL_48;
      }

      v227 = v361;
      sub_265BF3130();
      v228 = v340;
      sub_265BD2384(v92, v340, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      v229 = sub_265BF3230();
      v230 = sub_265BF34D0();
      if (os_log_type_enabled(v229, v230))
      {
        v231 = swift_slowAlloc();
        v232 = swift_slowAlloc();
        *&v394 = v232;
        *v231 = 136446210;
        v233 = v228 + *(v385 + 20);
        *&v400 = sub_265BF2CB0();
        BYTE8(v400) = v234 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C360, &unk_265BF4C10);
        v235 = sub_265BF3350();
        v237 = v236;
        sub_265BD23EC(v228, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        v238 = sub_265BB064C(v235, v237, &v394);

        *(v231 + 4) = v238;
        _os_log_impl(&dword_265BAD000, v229, v230, "Discovered remote participant with unknown role (%{public}s. Ignoring", v231, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v232);
        MEMORY[0x26676DCA0](v232, -1, -1);
        MEMORY[0x26676DCA0](v231, -1, -1);

        v201 = v361;
      }

      else
      {

        sub_265BD23EC(v228, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        v201 = v227;
      }
    }

    else
    {
      v184 = v362;
      sub_265BF3130();
      v185 = v359;
      sub_265BD2384(v92, v359, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      v186 = v371;
      v187 = v364;
      v188 = v381;
      (*(v371 + 16))(v364, v379, v381);
      v189 = sub_265BF3230();
      v190 = sub_265BF34D0();
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        v391 = swift_slowAlloc();
        *&v400 = v391;
        *v191 = 136446466;
        v192 = *v185;
        v193 = v185[1];

        sub_265BD23EC(v185, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        v194 = sub_265BB064C(v192, v193, &v400);

        *(v191 + 4) = v194;
        *(v191 + 12) = 2082;
        sub_265BD21C8(&qword_28003C4A8, MEMORY[0x277D515D0]);
        v195 = v364;
        v196 = sub_265BF36D0();
        v198 = v197;
        (*(v186 + 8))(v195, v188);
        v199 = sub_265BB064C(v196, v198, &v400);

        *(v191 + 14) = v199;
        _os_log_impl(&dword_265BAD000, v189, v190, "Unable to find device for discovered participant matching intent (%{public}s): %{public}s", v191, 0x16u);
        v200 = v391;
        swift_arrayDestroy();
        MEMORY[0x26676DCA0](v200, -1, -1);
        MEMORY[0x26676DCA0](v191, -1, -1);

        v201 = v362;
      }

      else
      {

        (*(v186 + 8))(v187, v188);
        sub_265BD23EC(v185, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
        v201 = v184;
      }
    }

    v388(v201, v389);
    sub_265BD23EC(v390, type metadata accessor for RemoteParticipantConnectionBroker.State);
    v240 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent;
    v241 = v92;
    return sub_265BD23EC(v241, v240);
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v83 = v374;
      sub_265BF3130();
      v84 = sub_265BF3230();
      v85 = sub_265BF34E0();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_265BAD000, v84, v85, "Participant connection broker ignoring discovered participant while idle", v86, 2u);
        MEMORY[0x26676DCA0](v86, -1, -1);
      }

      v87 = v83;
    }

    else
    {
      v145 = v375;
      sub_265BF3130();
      v146 = sub_265BF3230();
      v147 = sub_265BF34E0();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        *v148 = 0;
        _os_log_impl(&dword_265BAD000, v146, v147, "Participant connection broker ignoring device discovered after completing", v148, 2u);
        MEMORY[0x26676DCA0](v148, -1, -1);
      }

      v87 = v145;
    }

    goto LABEL_42;
  }

  v384 = 0;
  v119 = *(v56 + 3);
  v402 = *(v56 + 2);
  v403 = v119;
  v404 = *(v56 + 4);
  v405 = *(v56 + 10);
  v120 = *(v56 + 1);
  v400 = *v56;
  v401 = v120;
  v121 = v391;
  v122 = *(v391 + 9);
  v123 = *(v391 + 10);
  v124 = swift_getObjectType();
  v125 = v379;
  v126 = (*(v123 + 64))(v379, v124, v123);
  if (!v126)
  {
    v170 = v363;
    sub_265BF3130();
    v171 = v371;
    v172 = v360;
    v173 = v381;
    (*(v371 + 16))(v360, v125, v381);
    sub_265BD1ED4(&v400, &v394);
    v174 = sub_265BF3230();
    v175 = sub_265BF34D0();
    sub_265BD1F0C(&v400);
    if (os_log_type_enabled(v174, v175))
    {
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      *&v394 = v177;
      *v176 = 136446466;
      v178 = v400;

      v179 = sub_265BB064C(v178, *(&v178 + 1), &v394);

      *(v176 + 4) = v179;
      *(v176 + 12) = 2082;
      sub_265BD21C8(&qword_28003C4A8, MEMORY[0x277D515D0]);
      v180 = sub_265BF36D0();
      v182 = v181;
      (*(v171 + 8))(v172, v173);
      v183 = sub_265BB064C(v180, v182, &v394);

      *(v176 + 14) = v183;
      _os_log_impl(&dword_265BAD000, v174, v175, "Participant connection broker failed to look up discovered participant device for intent (%{public}s): %{public}s", v176, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v177, -1, -1);
      MEMORY[0x26676DCA0](v176, -1, -1);

      sub_265BD1F0C(&v400);
      v87 = v363;
    }

    else
    {

      sub_265BD1F0C(&v400);
      (*(v171 + 8))(v172, v173);
      v87 = v170;
    }

    goto LABEL_42;
  }

  v127 = v126;
  v375 = v81;
  v128 = *(&v401 + 1);
  if (*(*(&v401 + 1) + 16))
  {
    v129 = [v126 model];
    if (v129)
    {
      v130 = v129;
      sub_265BF3340();

      v131 = sub_265BF2D40();
      if (v131 != 4)
      {
        v132 = v131;
        if (!sub_265BB6208(v131, v128))
        {
          v326 = v339;
          sub_265BF3130();
          sub_265BD1ED4(&v400, &v394);
          v327 = sub_265BF3230();
          v328 = sub_265BF34D0();
          sub_265BD1F0C(&v400);
          if (os_log_type_enabled(v327, v328))
          {
            v329 = swift_slowAlloc();
            v330 = swift_slowAlloc();
            *&v394 = v330;
            *v329 = 141558786;
            *(v329 + 4) = 1752392040;
            *(v329 + 12) = 2080;
            LOBYTE(v392[0]) = v132;
            v331 = sub_265BF3350();
            v333 = sub_265BB064C(v331, v332, &v394);

            *(v329 + 14) = v333;
            *(v329 + 22) = 2160;
            *(v329 + 24) = 1752392040;
            *(v329 + 32) = 2080;
            sub_265BD2BEC();
            v334 = sub_265BF3490();
            v336 = sub_265BB064C(v334, v335, &v394);

            *(v329 + 34) = v336;
            _os_log_impl(&dword_265BAD000, v327, v328, "Discovered Any Participant Device Type %{mask.hash}s does not match intent preferred device types %{mask.hash}s", v329, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x26676DCA0](v330, -1, -1);
            MEMORY[0x26676DCA0](v329, -1, -1);

            sub_265BD1F0C(&v400);
            v87 = v339;
          }

          else
          {

            sub_265BD1F0C(&v400);
            v87 = v326;
          }

LABEL_42:
          v388(v87, v389);
LABEL_43:
          v240 = type metadata accessor for RemoteParticipantConnectionBroker.State;
          v241 = v390;
          return sub_265BD23EC(v241, v240);
        }
      }
    }
  }

  v133 = v121[6];
  __swift_project_boxed_opaque_existential_1(v121 + 2, v121[5]);
  sub_265BD1ED4(&v400, &v394);
  sub_265BF3450();
  v135 = v134 - *(&v402 + 1);
  v136 = v400;

  sub_265BD1F0C(&v400);
  v137 = v401;
  v138 = BYTE1(v402);
  v139 = v402;
  *(&v395 + 1) = &type metadata for ValidDeviceDiscoveredAnalyticsEvent;
  *&v396 = sub_265BD2B7C();
  v140 = swift_allocObject();
  *&v394 = v140;
  *(v140 + 16) = v135;
  *(v140 + 24) = v136;
  *(v140 + 40) = v137;
  *(v140 + 48) = 1;
  *(v140 + 49) = v138;
  *(v140 + 50) = v139;
  sub_265BF3010();
  __swift_destroy_boxed_opaque_existential_0Tm(&v394);
  if (v405 >> 62)
  {
    v141 = sub_265BF3690();
  }

  else
  {
    v141 = *((v405 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v396 = v402;
  v397 = v403;
  v398 = v404;
  v399 = v405;
  v394 = v400;
  v395 = v401;
  sub_265BD1ED4(&v400, v392);
  v142 = v127;
  MEMORY[0x26676D1F0]();
  v143 = v391;
  if (*((v399 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v399 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v337 = *((v399 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_265BF3410();
  }

  v144 = sub_265BF3430();
  MEMORY[0x28223BE20](v144);
  *(&v338 - 2) = v143;
  *(&v338 - 1) = &v394;
  sub_265BF2EA0();
  if (v141)
  {
    sub_265BD23EC(v390, type metadata accessor for RemoteParticipantConnectionBroker.State);

    sub_265BD1F0C(&v400);
  }

  else
  {
    sub_265BC7D60(v136, *(&v136 + 1));
    sub_265BD1F0C(&v400);

    sub_265BD23EC(v390, type metadata accessor for RemoteParticipantConnectionBroker.State);
  }

  v392[2] = v396;
  v392[3] = v397;
  v392[4] = v398;
  v393 = v399;
  v392[0] = v394;
  v392[1] = v395;
  return sub_265BD1F0C(v392);
}

uint64_t sub_265BC692C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C4B0, &unk_265BF5190) + 48);
  *v9 = a2;
  sub_265BD2384(a3, v9 + v10, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
  swift_storeEnumTagMultiPayload();
  v11 = OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state;
  swift_beginAccess();
  v12 = a2;
  sub_265BD2718(v9, a1 + v11);
  return swift_endAccess();
}