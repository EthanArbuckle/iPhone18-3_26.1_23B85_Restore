uint64_t sub_265CF3638(void *a1, uint64_t a2)
{
  v4 = sub_265D58130();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_265D580D0();
  v23 = v8;
  v24 = v7;
  v9 = a1[12];
  v21 = a1[11];
  v22 = v9;
  v20[1] = __swift_project_boxed_opaque_existential_1(a1 + 8, v21);
  sub_265CD77F0();
  v10 = sub_265D5A090();
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v5 + 32))(v13 + v12, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  v14 = sub_265D592D0();

  v15 = a1[14];
  v16 = a1[15];
  v17 = a1[16];
  v18 = v23;
  a1[14] = v24;
  a1[15] = v18;
  a1[16] = v14;
  return sub_265CF4FB8(v15, v16);
}

uint64_t sub_265CF3824()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_265D580D0();
    v3 = *(v1 + 48);
    MEMORY[0x28223BE20](v2);
    sub_265D58CA0();
  }

  return result;
}

uint64_t sub_265CF38F8(void *a1)
{
  v3 = sub_265D59DE0();
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[14];
  v9 = a1[15];
  if (v9)
  {
    v35 = v6;
    v37 = result;
    v11 = a1[16];

    swift_unknownObjectRetain();
    sub_265D595F0();

    v12 = sub_265D59DD0();
    v13 = sub_265D5A080();

    v14 = os_log_type_enabled(v12, v13);
    v33 = a1 + 14;
    v34 = v1;
    v32[1] = v11;
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36 = v16;
      *v15 = 136446210;
      v17 = sub_265CF4FFC(v10, v9, &v36);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_265C01000, v12, v13, "Deactivating heartbeat coordinator for %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x266770CF0](v16, -1, -1);
      MEMORY[0x266770CF0](v15, -1, -1);
    }

    else
    {
    }

    (*(v35 + 8))(v8, v37);
    swift_beginAccess();
    v37 = a1;
    v18 = a1[13];
    v19 = *(v18 + 16);

    if (v19)
    {
      v20 = 0;
      v21 = (v18 + 56);
      while (v20 < *(v18 + 16))
      {
        ++v20;
        v22 = *v21;
        v23 = *(v21 - 3);
        v24 = v37[12];
        __swift_project_boxed_opaque_existential_1(v37 + 8, v37[11]);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_265D592E0();
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v21 += 4;
        if (v19 == v20)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:

      v25 = v37;
      v26 = v37[13];
      v37[13] = MEMORY[0x277D84F90];

      v27 = v25[12];
      __swift_project_boxed_opaque_existential_1(v25 + 8, v25[11]);
      sub_265D592E0();
      swift_unknownObjectRelease();
      v28 = v25[14];
      v29 = v25[15];
      v30 = v25[16];
      v31 = v33;
      *v33 = 0;
      v31[1] = 0;
      v31[2] = 0;
      return sub_265CF4FB8(v28, v29);
    }
  }

  return result;
}

uint64_t sub_265CF3BFC(void *a1, uint64_t a2, unint64_t a3)
{
  v85 = sub_265D58EB0();
  v7 = *(v85 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_265D59DE0();
  v10 = *(v87 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v87);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v77 = &v72 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v72 - v17;
  v19 = a1[15];
  if (v19)
  {
    v75 = v3;
    v20 = a1[14];

    v74 = a2;
    if (v20 == a2 && v19 == a3 || (sub_265D5A3C0() & 1) != 0)
    {
      v73 = a3;

      v83 = a1;
      v21 = a1[2];
      v22 = *(v21 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E810, &qword_265D5D278);
      v23 = v75;
      sub_265D58CA0();
      v24 = v90;
      v25 = *(v21 + 16);
      result = sub_265D58CA0();
      v75 = v23;
      v88 = v90;
      v86 = v24;
      v28 = v77;
      v82 = *(v24 + 16);
      if (v82)
      {
        v29 = 0;
        v30 = (v10 + 8);
        v81 = *MEMORY[0x277D4E060];
        v79 = (v7 + 8);
        v80 = (v7 + 104);
        v31 = (v86 + 40);
        *&v27 = 136446210;
        v76 = v27;
        while (v29 < *(v86 + 16))
        {
          v34 = *(v31 - 1);
          v89 = *v31;
          sub_265D595F0();
          swift_unknownObjectRetain();
          v35 = sub_265D59DD0();
          v36 = sub_265D5A080();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v92 = v78;
            *v37 = v76;
            v90 = v34;
            v91 = v89;
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
            v38 = sub_265D59EC0();
            v40 = v30;
            v41 = sub_265CF4FFC(v38, v39, &v92);

            *(v37 + 4) = v41;
            v30 = v40;
            _os_log_impl(&dword_265C01000, v35, v36, "Heartbeat coordinator sending heartbeat on connection: %{public}s", v37, 0xCu);
            v42 = v78;
            __swift_destroy_boxed_opaque_existential_1Tm(v78);
            MEMORY[0x266770CF0](v42, -1, -1);
            v43 = v37;
            v28 = v77;
            MEMORY[0x266770CF0](v43, -1, -1);

            (*v40)(v28, v87);
          }

          else
          {

            (*v30)(v28, v87);
          }

          ++v29;
          swift_getObjectType();
          v33 = v84;
          v32 = v85;
          (*v80)(v84, v81, v85);
          sub_265D58C80();
          result = (*v79)(v33, v32);
          v31 = (v31 + 24);
          if (v82 == v29)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_12:

        v44 = *(v88 + 16);
        v45 = v73;
        v46 = v74;
        if (!v44)
        {
LABEL_19:

          v54 = v83;
          v55 = v83[11];
          *&v89 = v83[12];
          __swift_project_boxed_opaque_existential_1(v83 + 8, v55);
          sub_265CD77F0();

          v56 = sub_265D5A090();
          v57 = swift_allocObject();
          swift_weakInit();
          v58 = swift_allocObject();
          v58[2] = v57;
          v58[3] = v46;
          v58[4] = v45;

          v59 = sub_265D592D0();

          v60 = v54[14];
          v61 = v54[15];
          v62 = v54[16];
          v54[14] = v46;
          v54[15] = v45;
          v54[16] = v59;
          return sub_265CF4FB8(v60, v61);
        }

        v47 = 0;
        v48 = (v88 + 48);
        while (v47 < *(v88 + 16))
        {
          v49 = *(v48 - 2);
          v50 = *(v48 - 1);
          v51 = *v48;
          v52 = swift_unknownObjectRetain();
          v53 = sub_265CF2808(v52);
          if (v53)
          {
            sub_265CF5F38(v53);
          }

          else
          {
            sub_265CF2A24(v49, v50, v51, v46, v45);
          }

          ++v47;
          result = swift_unknownObjectRelease();
          v48 += 3;
          if (v44 == v47)
          {
            goto LABEL_19;
          }
        }
      }

      __break(1u);
    }

    else
    {
      sub_265D595F0();

      v66 = sub_265D59DD0();
      v67 = sub_265D5A080();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = a3;
        v70 = swift_slowAlloc();
        v90 = v70;
        *v68 = 136446466;
        v71 = sub_265CF4FFC(v20, v19, &v90);

        *(v68 + 4) = v71;
        *(v68 + 12) = 2082;
        *(v68 + 14) = sub_265CF4FFC(v74, v69, &v90);
        _os_log_impl(&dword_265C01000, v66, v67, "Heartbeat coordinator is active but scheduled heartbeat is for the wrong session identifier %{public}s != %{public}s", v68, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v70, -1, -1);
        MEMORY[0x266770CF0](v68, -1, -1);
      }

      else
      {
      }

      return (*(v10 + 8))(v14, v87);
    }
  }

  else
  {
    sub_265D595F0();
    v63 = sub_265D59DD0();
    v64 = sub_265D5A080();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_265C01000, v63, v64, "Heartbeat coordinator is inactive yet we have a scheduled heartbeat", v65, 2u);
      MEMORY[0x266770CF0](v65, -1, -1);
    }

    return (*(v10 + 8))(v18, v87);
  }

  return result;
}

uint64_t sub_265CF4414()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 48);
    MEMORY[0x28223BE20](result);
    sub_265D58CA0();
  }

  return result;
}

uint64_t sub_265CF44DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v77 = a2;
  v78 = a3;
  v10 = sub_265D57ED0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v74[1] = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265D58FD0();
  v75 = *(v13 - 8);
  v76 = v13;
  v14 = *(v75 + 64);
  MEMORY[0x28223BE20](v13);
  v74[0] = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265D59DE0();
  v17 = *(v16 - 8);
  v80 = v16;
  v81 = v17;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v74 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v74 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v74 - v28;
  v30 = v5[6];
  sub_265D58CA0();
  v31 = v83;
  v79 = v85;
  if (v84)
  {

    v33 = v32;
    if (v31 == a4 && v32 == a5 || (sub_265D5A3C0() & 1) != 0)
    {
      v34 = v31;

      v35 = *(v6[2] + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E810, &qword_265D5D278);
      sub_265D58CA0();
      v36 = *(v83 + 16) + 1;
      v37 = 32;
      while (--v36)
      {
        v38 = *(v83 + v37);
        v37 += 24;
        if (v38 == a1)
        {

          sub_265D595F0();
          swift_unknownObjectRetain();
          v39 = sub_265D59DD0();
          v40 = sub_265D5A080();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v82[0] = v42;
            *v41 = 136446210;
            v83 = a1;
            v84 = v77;
            v85 = v78;
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
            v43 = sub_265D59EC0();
            v45 = v33;
            v46 = sub_265CF4FFC(v43, v44, v82);

            *(v41 + 4) = v46;
            v33 = v45;
            _os_log_impl(&dword_265C01000, v39, v40, "Heartbeat coordinator expectation timer fired for %{public}s, terminating session", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v42);
            MEMORY[0x266770CF0](v42, -1, -1);
            MEMORY[0x266770CF0](v41, -1, -1);
          }

          (*(v81 + 8))(v29, v80);
          v48 = v6[3];
          v47 = v6[4];
          swift_getObjectType();
          sub_265D5A030();
          LOBYTE(v83) = 1;
          sub_265D57EB0();
          v49 = v74[0];
          sub_265D58FC0();
          v50 = v76;
          sub_265D58ED0();
          sub_265CF4FB8(v34, v33);
          return (*(v75 + 8))(v49, v50);
        }
      }

      sub_265D595F0();
      swift_unknownObjectRetain();
      v56 = sub_265D59DD0();
      v57 = sub_265D5A080();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v82[0] = v59;
        *v58 = 136446210;
        v83 = a1;
        v84 = v77;
        v85 = v78;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
        v60 = sub_265D59EC0();
        v62 = v33;
        v63 = sub_265CF4FFC(v60, v61, v82);

        *(v58 + 4) = v63;
        _os_log_impl(&dword_265C01000, v56, v57, "Heartbeat coordinator expectation timer fired for connection no longer active: %{public}s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x266770CF0](v59, -1, -1);
        MEMORY[0x266770CF0](v58, -1, -1);

        sub_265CF4FB8(v34, v62);
      }

      else
      {
        sub_265CF4FB8(v34, v33);
      }

      v64 = *(v81 + 8);
      v65 = v27;
    }

    else
    {
      v66 = v31;
      sub_265D595F0();

      v67 = sub_265D59DD0();
      v68 = sub_265D5A080();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v83 = v70;
        *v69 = 136446466;
        v71 = v33;
        v72 = v66;
        v73 = sub_265CF4FFC(v66, v71, &v83);

        *(v69 + 4) = v73;
        *(v69 + 12) = 2082;
        *(v69 + 14) = sub_265CF4FFC(a4, a5, &v83);
        _os_log_impl(&dword_265C01000, v67, v68, "Heartbeat expectation session identifier mismatch %{public}s != %{public}s", v69, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v70, -1, -1);
        MEMORY[0x266770CF0](v69, -1, -1);

        sub_265CF4FB8(v72, v71);
      }

      else
      {
        sub_265CF4FB8(v66, v33);
      }

      v64 = *(v81 + 8);
      v65 = v24;
    }
  }

  else
  {
    v52 = v83;
    sub_265D595F0();
    v53 = sub_265D59DD0();
    v54 = sub_265D5A080();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_265C01000, v53, v54, "Heartbeat expectation when the heartbeat coordinator is inactive", v55, 2u);
      MEMORY[0x266770CF0](v55, -1, -1);

      sub_265CF4FB8(v52, 0);
    }

    else
    {
    }

    v64 = *(v81 + 8);
    v65 = v21;
  }

  return v64(v65, v80);
}

uint64_t sub_265CF4CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265CF44DC(a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_265CF4D5C()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v4 = v0[13];

  v5 = v0[16];
  sub_265CF4FB8(v0[14], v0[15]);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_22SeymourSessionServices0B20HeartbeatCoordinatorC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_265CF4DFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_265CF4E4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_265CF4EA4(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_265CF4FB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_265CF4FFC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_265CF50C8(v11, 0, 0, 1, a1, a2);
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
    sub_265CF51D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_265CF50C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_265CF5230(a5, a6);
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
    result = sub_265D5A230();
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

uint64_t sub_265CF51D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_265CF5230(uint64_t a1, unint64_t a2)
{
  v4 = sub_265CF527C(a1, a2);
  sub_265CF53AC(&unk_28777A720);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_265CF527C(uint64_t a1, unint64_t a2)
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

  v6 = sub_265CF5498(v5, 0);
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

  result = sub_265D5A230();
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
        v10 = sub_265D59F10();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_265CF5498(v10, 0);
        result = sub_265D5A1F0();
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

uint64_t sub_265CF53AC(uint64_t result)
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

  result = sub_265CF550C(result, v12, 1, v3);
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

void *sub_265CF5498(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E7F8, &unk_265D5D268);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_265CF550C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E7F8, &unk_265D5D268);
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

uint64_t sub_265CF5684(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    return swift_unknownObjectRetain();
  }

  return result;
}

size_t sub_265CF56C8(size_t a1, int64_t a2, char a3)
{
  result = sub_265CF57B4(a1, a2, a3, *v3, &unk_28003E830, &qword_265D5D298, MEMORY[0x277D51550]);
  *v3 = result;
  return result;
}

size_t sub_265CF570C(size_t a1, int64_t a2, char a3)
{
  result = sub_265CF5990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_265CF572C(void *a1, int64_t a2, char a3)
{
  result = sub_265CF5B80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_265CF574C(char *a1, int64_t a2, char a3)
{
  result = sub_265CF5CC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_265CF576C(void *a1, int64_t a2, char a3)
{
  result = sub_265CF5F84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_265CF57B4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_265CF5990(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E848, &unk_265D5D2A0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0) - 8);
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

void *sub_265CF5B80(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E820, &qword_265D5D288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E828, &qword_265D5D290);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_265CF5CC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E818, &qword_265D5D280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_265CF5DD4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_265CF5684(v2, v3);
}

uint64_t sub_265CF5E0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265CF5E98()
{
  v1 = *(*(sub_265D58130() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_265CF3824();
}

uint64_t sub_265CF5F38(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_265CF5F78()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_265CF4414();
}

void *sub_265CF5F84(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E858, &qword_265D5D2B0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E860, &qword_265D5D2B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_265CF613C()
{
  sub_265D5A460();
  MEMORY[0x266770530](0);
  return sub_265D5A4A0();
}

uint64_t sub_265CF61A8()
{
  sub_265D5A460();
  MEMORY[0x266770530](0);
  return sub_265D5A4A0();
}

uint64_t sub_265CF61E8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58AC0();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF6304, 0, 0);
}

uint64_t sub_265CF6304()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D58F20();
    v5 = *(MEMORY[0x277D4DFF0] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for SensorDataRelayCoordinator();
    v8 = sub_265CFD68C(&qword_28003E8B0, type metadata accessor for SensorDataRelayCoordinator);
    *v6 = v0;
    v6[1] = sub_265CF6474;
    v9 = v0[16];

    return MEMORY[0x2821AE8D8](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265CF6474()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CF665C, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265CF665C()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595C0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A080();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "Failed to start session: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265CF6844(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58AC0();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF6960, 0, 0);
}

uint64_t sub_265CF6960()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D59020();
    v5 = *(MEMORY[0x277D4DFE0] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for SensorDataRelayCoordinator();
    v8 = sub_265CFD68C(&qword_28003E8B0, type metadata accessor for SensorDataRelayCoordinator);
    *v6 = v0;
    v6[1] = sub_265CF6AD0;
    v9 = v0[16];

    return MEMORY[0x2821AE8C8](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265CF6AD0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CF6CB8, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265CF6CB8()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595C0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A080();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "Failed to end session: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265CF6EA0(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_265D58130();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF6FBC, 0, 0);
}

uint64_t sub_265CF6FBC()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  v3 = v0[16];
  if (Strong)
  {
    v4 = v0[9];
    sub_265D58E60();
    v5 = *(MEMORY[0x277D4DFE8] + 4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    v7 = type metadata accessor for SensorDataRelayCoordinator();
    v8 = sub_265CFD68C(&qword_28003E8B0, type metadata accessor for SensorDataRelayCoordinator);
    *v6 = v0;
    v6[1] = sub_265CF712C;
    v9 = v0[16];

    return MEMORY[0x2821AE8D0](v9, v7, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[16];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_265CF712C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265CF7314, 0, 0);
  }

  else
  {
    v9 = *(v2 + 128);
    v10 = *(v2 + 104);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_265CF7314()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  sub_265D595C0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A080();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 96);
    v22 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x2667704D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_265CF4FFC(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265C01000, v4, v5, "Failed to update session: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 104);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265CF74FC()
{
  v2 = v0;
  v64 = sub_265D58870();
  v50 = *(v64 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v64);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v49 - v7;
  v9 = sub_265D59BA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v57 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v52 = &v49 - v15;
  MEMORY[0x28223BE20](v14);
  v58 = &v49 - v16;
  v17 = *(*(v0 + 112) + 16);
  sub_265D58CA0();
  v51 = v1;
  v18 = qword_279BBBC98[SLOBYTE(v61[0])];
  v19 = *__swift_project_boxed_opaque_existential_1((v2 + 136), *(v2 + 160));
  v62 = type metadata accessor for RemoteParticipantHandshakeRegistry();
  v63 = &off_28777D8A8;
  v56 = v62;
  v61[0] = v19;
  sub_265C97624(v61, v60);

  result = __swift_destroy_boxed_opaque_existential_1Tm(v61);
  v21 = *(v18 + 16);
  v53 = v10;
  v55 = v21;
  if (v21)
  {
    v22 = 0;
    v54 = (v18 + 32);
    v23 = (v10 + 48);
    v24 = (v10 + 32);
    v25 = MEMORY[0x277D84F90];
    while (v22 < *(v18 + 16))
    {
      v26 = *(v54 + v22);
      v19 = __swift_project_boxed_opaque_existential_1(v60, v60[3]);
      off_28777D8C8[0]();
      if ((*v23)(v8, 1, v9) == 1)
      {
        result = sub_265CA4AE8(v8, &qword_28003E6C8, &unk_265D5C9D0);
      }

      else
      {
        v27 = *v24;
        v28 = v52;
        (*v24)(v52, v8, v9);
        v27(v57, v28, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_265D46B0C(0, v25[2] + 1, 1, v25);
        }

        v29 = v25;
        v30 = v25[2];
        v31 = v29;
        v32 = v29[3];
        v19 = v30 + 1;
        if (v30 >= v32 >> 1)
        {
          v31 = sub_265D46B0C(v32 > 1, v30 + 1, 1, v31);
        }

        v31[2] = v19;
        v33 = v31 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v30;
        v25 = v31;
        result = (v27)(v33, v57, v9);
      }

      if (v55 == ++v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1Tm(v60);

    v34 = v25[2];
    if (v34)
    {
      v35 = v53 + 16;
      v56 = *(v53 + 16);
      v57 = v9;
      v36 = v25 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v37 = *(v53 + 72);
      v54 = (v50 + 8);
      v55 = v37;
      v52 = v25;
      v53 += 8;
      v38 = MEMORY[0x277D84F90];
      do
      {
        v41 = v57;
        v40 = v58;
        v42 = v35;
        v56(v58, v36, v57);
        v43 = v59;
        sub_265D59B70();
        v19 = sub_265D58840();
        v45 = v44;
        (*v54)(v43, v64);
        (*v53)(v40, v41);
        if (v45)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_265D46A00(0, *(v38 + 2) + 1, 1, v38);
          }

          v47 = *(v38 + 2);
          v46 = *(v38 + 3);
          if (v47 >= v46 >> 1)
          {
            v38 = sub_265D46A00((v46 > 1), v47 + 1, 1, v38);
          }

          *(v38 + 2) = v47 + 1;
          v39 = &v38[16 * v47];
          *(v39 + 4) = v19;
          *(v39 + 5) = v45;
        }

        v36 += v55;
        --v34;
        v35 = v42;
      }

      while (v34);
    }

    else
    {

      v38 = MEMORY[0x277D84F90];
    }

    if (*(v38 + 2))
    {
      v19 = *(v38 + 4);
      v48 = *(v38 + 5);
    }

    else
    {

      sub_265CFD3D4();
      swift_allocError();
      swift_willThrow();
    }

    return v19;
  }

  return result;
}

uint64_t sub_265CF7AE0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF00, &qword_265D5B0D8);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = sub_265D58AC0();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = sub_265D59DE0();
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v12 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF7C9C, v1, 0);
}

uint64_t sub_265CF7C9C()
{
  v30 = v0;
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[7];
  sub_265D595C0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_265D59DD0();
  v7 = sub_265D5A080();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  v14 = v0[13];
  v13 = v0[14];
  if (v8)
  {
    v28 = v0[16];
    v15 = swift_slowAlloc();
    v26 = v7;
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315138;
    v17 = sub_265D589D0();
    v27 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_265CF4FFC(v17, v19, &v29);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_265C01000, v6, v26, "Starting Session: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266770CF0](v16, -1, -1);
    MEMORY[0x266770CF0](v15, -1, -1);

    (*(v10 + 8))(v27, v28);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = v0[8];
  v0[5] = sub_265CF74FC();
  v0[6] = v22;
  v0[19] = v22;
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_265CF7F44;
  v24 = v0[8];

  return sub_265CF8314();
}

uint64_t sub_265CF7F44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = sub_265CF8280;
  }

  else
  {
    v9 = v4[5];
    v7 = v4[8];
    v4[22] = a1;
    v4[23] = v9;
    v8 = sub_265CF8074;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_265CF8074()
{
  v1 = v0[22];
  v16 = v0[19];
  v17 = v0[23];
  v18 = v0[18];
  v19 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = sub_265D59FA0();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = sub_265CFD68C(&qword_28003E870, type metadata accessor for SensorDataRelayCoordinator);
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v9;
  v10[4] = v7;
  swift_retain_n();
  v11 = sub_265CF9B7C(0, 0, v3, &unk_265D5D550, v10);
  v12 = sub_265D589C0();
  *v2 = v1;
  *(v2 + 8) = v11;
  *(v2 + 16) = v17;
  *(v2 + 24) = v16;
  *(v2 + 32) = 0;
  *(v2 + 40) = v12;
  (*(v4 + 104))(v2, *MEMORY[0x277D4F250], v5);
  v13 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_state;
  swift_beginAccess();
  (*(v4 + 40))(v7 + v13, v2, v5);
  swift_endAccess();

  v14 = v0[1];

  return v14();
}

uint64_t sub_265CF8280()
{
  v1 = v0[19];

  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v6 = v0[11];
  v5 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_265CF8314()
{
  v1[34] = v0;
  v2 = sub_265D59DE0();
  v1[35] = v2;
  v3 = *(v2 - 8);
  v1[36] = v3;
  v4 = *(v3 + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF83EC, v0, 0);
}

uint64_t sub_265CF83EC()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = [objc_allocWithZone(MEMORY[0x277D04420]) init];
  v0[40] = v3;
  v0[22] = sub_265CFD578;
  v0[23] = v2;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_265D4BEAC;
  v0[21] = &block_descriptor_45;
  v4 = _Block_copy(v0 + 18);
  v5 = v0[23];

  [v3 setInvalidationHandler_];
  _Block_release(v4);
  v0[28] = sub_265CFD1D8;
  v0[29] = 0;
  v0[24] = MEMORY[0x277D85DD0];
  v0[25] = 1107296256;
  v0[26] = sub_265D4BEAC;
  v0[27] = &block_descriptor_48;
  v6 = _Block_copy(v0 + 24);
  [v3 setInterruptionHandler_];
  _Block_release(v6);
  sub_265D595C0();
  v7 = sub_265D59DD0();
  v8 = sub_265D5A080();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_265C01000, v7, v8, "Activating DataRelayServiceClient...", v9, 2u);
    MEMORY[0x266770CF0](v9, -1, -1);
  }

  v10 = v0[39];
  v11 = v0[35];
  v12 = v0[36];

  v13 = *(v12 + 8);
  v0[41] = v13;
  v13(v10, v11);
  v0[2] = v0;
  v0[3] = sub_265CF86CC;
  v14 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E890, &unk_265D5D530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_265CFD30C;
  v0[13] = &block_descriptor_51;
  v0[14] = v14;
  [v3 activateWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_265CF86CC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 336) = v3;
  v4 = *(v1 + 272);
  if (v3)
  {
    v5 = sub_265CF891C;
  }

  else
  {
    v5 = sub_265CF87EC;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_265CF87EC()
{
  v1 = v0[38];
  sub_265D595C0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_265C01000, v2, v3, "DataRelayServiceClient activated.", v4, 2u);
    MEMORY[0x266770CF0](v4, -1, -1);
  }

  v5 = v0[41];
  v7 = v0[38];
  v6 = v0[39];
  v9 = v0[36];
  v8 = v0[37];
  v10 = v0[35];

  v5(v7, v10);

  v11 = v0[1];
  v12 = v0[40];

  return v11(v12);
}

uint64_t sub_265CF891C()
{
  v29 = v0;
  v1 = v0[42];
  v2 = v0[37];
  swift_willThrow();
  sub_265D595C0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A080();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[42];
    v27 = v0[41];
    v8 = v0[36];
    v7 = v0[37];
    v9 = v0[35];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = v0[30];
    v13 = MEMORY[0x2667704D0](v0[31], v0[32]);
    v15 = sub_265CF4FFC(v13, v14, &v28);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_265C01000, v4, v5, "Failed to activate DataRelayServiceClient: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266770CF0](v11, -1, -1);
    MEMORY[0x266770CF0](v10, -1, -1);

    v27(v7, v9);
  }

  else
  {
    v16 = v0[41];
    v18 = v0[36];
    v17 = v0[37];
    v19 = v0[35];

    v16(v17, v19);
  }

  v20 = v0[42];
  v21 = v0[40];
  v23 = v0[37];
  v22 = v0[38];
  [v21 invalidate];
  swift_willThrow();

  v24 = v0[1];
  v25 = v0[42];

  return v24();
}

uint64_t sub_265CF8B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E898, &qword_265D5D558);
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E8A0, &qword_265D5D560);
  v4[6] = v9;
  v10 = *(v9 - 8);
  v4[7] = v10;
  v11 = *(v10 + 64) + 15;
  v4[8] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E8A8, &qword_265D5D568);
  v4[9] = v12;
  v13 = *(v12 - 8);
  v4[10] = v13;
  v14 = *(v13 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF8CCC, a4, 0);
}

uint64_t sub_265CF8CCC()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D85778], v0[3]);
  sub_265D59FF0();
  sub_265D59FD0();
  (*(v3 + 8))(v2, v4);
  v5 = sub_265CFD68C(&qword_28003E870, type metadata accessor for SensorDataRelayCoordinator);
  v0[12] = v5;
  v6 = v0[2];
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_265CF8E4C;
  v9 = v0[11];
  v10 = v0[9];

  return MEMORY[0x2822003E8](v0 + 16, v6, v5, v10);
}

uint64_t sub_265CF8E4C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_265CF8F5C, v2, 0);
}

uint64_t sub_265CF8F5C()
{
  v1 = *(v0 + 128);
  if (v1 == 2)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 40);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_265CF9078;
    v7 = *(v0 + 16);

    return sub_265CF92AC(v1 & 1);
  }
}

uint64_t sub_265CF9078()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x2822009F8](sub_265CF9210, v4, 0);
  }

  else
  {
    v5 = v3[12];
    v6 = v3[2];
    v7 = *(MEMORY[0x277D85798] + 4);
    v8 = swift_task_alloc();
    v3[13] = v8;
    *v8 = v3;
    v8[1] = sub_265CF8E4C;
    v9 = v3[11];
    v10 = v3[9];

    return MEMORY[0x2822003E8](v3 + 16, v6, v5, v10);
  }
}

uint64_t sub_265CF9210()
{
  v1 = v0[8];
  v2 = v0[5];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_265CF92AC(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 192) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF00, &qword_265D5B0D8);
  *(v2 + 72) = v3;
  v4 = *(v3 - 8);
  *(v2 + 80) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v6 = sub_265D59DE0();
  *(v2 + 104) = v6;
  v7 = *(v6 - 8);
  *(v2 + 112) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF93FC, v1, 0);
}

uint64_t sub_265CF93FC()
{
  v1 = *(v0 + 136);
  sub_265D595C0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 192);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_265C01000, v2, v3, "HRM device route state changed: %{BOOL}d", v5, 8u);
    MEMORY[0x266770CF0](v5, -1, -1);
  }

  v6 = *(v0 + 136);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 96);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  v12 = *(v0 + 64);

  v59 = *(v8 + 8);
  v59(v6, v7);
  v13 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_state;
  swift_beginAccess();
  (*(v11 + 16))(v9, v12 + v13, v10);
  v14 = (*(v11 + 88))(v9, v10);
  if (v14 == *MEMORY[0x277D4F250])
  {
    v15 = v14;
    v16 = *(v0 + 96);
    v17 = *(v0 + 192);
    (*(*(v0 + 80) + 96))(v16, *(v0 + 72));
    v18 = *v16;
    *(v0 + 144) = *v16;
    v19 = *(v16 + 8);
    *(v0 + 152) = v19;
    v20 = *(v16 + 24);
    *(v0 + 160) = v20;
    v21 = *(v16 + 32);
    v22 = *(v16 + 40);
    *(v0 + 168) = v22;
    if (v17 != v21)
    {
      v23 = *(v0 + 88);
      v24 = *(v0 + 72);
      v25 = *(v0 + 80);
      v26 = *(v0 + 192);
      v57 = v24;
      v60 = *(*(v0 + 96) + 16);
      *v23 = v18;
      *(v23 + 8) = v19;
      *(v23 + 16) = v60;
      *(v23 + 24) = v20;
      *(v23 + 32) = v26;
      *(v23 + 40) = v22;
      v27 = v20;
      (*(v25 + 104))(v23, v15);
      swift_beginAccess();
      v28 = *(v25 + 40);
      v29 = v18;

      v30 = v27;

      v28(v12 + v13, v23, v57);
      swift_endAccess();
      v31 = swift_task_alloc();
      *(v0 + 176) = v31;
      *v31 = v0;
      v31[1] = sub_265CF98CC;
      v32 = *(v0 + 64);
      v33 = *(v0 + 192);

      return sub_265CFA548(v29, v60, v30, v33);
    }

    v50 = *(v0 + 128);
    sub_265D595C0();
    v51 = sub_265D59DD0();
    v52 = sub_265D5A080();
    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 128);
    v55 = *(v0 + 104);
    if (v53)
    {
      v58 = *(v0 + 128);
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_265C01000, v51, v52, "isRouted didn't change so skipping...", v56, 2u);
      MEMORY[0x266770CF0](v56, -1, -1);

      v42 = v58;
    }

    else
    {

      v42 = v54;
    }

    v43 = v55;
  }

  else
  {
    v35 = *(v0 + 120);
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
    sub_265D595C0();
    v36 = sub_265D59DD0();
    v37 = sub_265D5A070();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 120);
    v40 = *(v0 + 104);
    if (v38)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_265C01000, v36, v37, "No active session to update sensor data availability.", v41, 2u);
      MEMORY[0x266770CF0](v41, -1, -1);
    }

    v42 = v39;
    v43 = v40;
  }

  v59(v42, v43);
  v45 = *(v0 + 128);
  v44 = *(v0 + 136);
  v46 = *(v0 + 120);
  v48 = *(v0 + 88);
  v47 = *(v0 + 96);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_265CF98CC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_265CF9AB0;
  }

  else
  {
    v6 = sub_265CF99F8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265CF99F8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);

  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_265CF9AB0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);

  v9 = *(v0 + 8);
  v10 = *(v0 + 184);

  return v9();
}

uint64_t sub_265CF9B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_265CFD508(a3, v24 - v10);
  v12 = sub_265D59FA0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_265CA4AE8(v11, &qword_28003E530, &qword_265D5BF68);
  }

  else
  {
    sub_265D59F90();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_265D59F50();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_265D59EE0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_265CA4AE8(a3, &qword_28003E530, &qword_265D5BF68);

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

  sub_265CA4AE8(a3, &qword_28003E530, &qword_265D5BF68);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_265CF9E18(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF00, &qword_265D5B0D8);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = sub_265D58AC0();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v10 = sub_265D59DE0();
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CF9FA0, v2, 0);
}

uint64_t sub_265CF9FA0()
{
  v44 = v0;
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[5];
  sub_265D595C0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_265D59DD0();
  v7 = sub_265D5A080();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[13];
  v12 = v0[14];
  v14 = v0[11];
  v13 = v0[12];
  if (v8)
  {
    v42 = v0[14];
    v15 = swift_slowAlloc();
    v40 = v7;
    v16 = swift_slowAlloc();
    v43 = v16;
    *v15 = 136315138;
    v17 = sub_265D589D0();
    v41 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_265CF4FFC(v17, v19, &v43);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_265C01000, v6, v40, "Ending Session: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266770CF0](v16, -1, -1);
    MEMORY[0x266770CF0](v15, -1, -1);

    (*(v10 + 8))(v41, v42);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v22 = v0[9];
  v21 = v0[10];
  v24 = v0[7];
  v23 = v0[8];
  v25 = v0[6];
  (*(v22 + 104))(v21, *MEMORY[0x277D4F258], v23);
  v26 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_state;
  swift_beginAccess();
  (*(v22 + 40))(v24 + v26, v21, v23);
  swift_endAccess();
  if (*(v25 + 32))
  {
    v27 = v0[6];
    v28 = *v27;
    v29 = v27[2];
    v30 = v27[3];
    v31 = swift_task_alloc();
    v0[17] = v31;
    *v31 = v0;
    v31[1] = sub_265CFA310;
    v32 = v0[7];

    return sub_265CFA548(v28, v29, v30, 0);
  }

  else
  {
    v34 = v0[16];
    v35 = v0[13];
    v36 = v0[10];
    v37 = v0[6];
    v38 = *(v37 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
    sub_265D5A000();
    [*v37 invalidate];

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_265CFA310()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[16];
    v6 = v2[13];
    v7 = v2[10];

    v8 = *(v4 + 8);

    return v8();
  }

  else
  {
    v10 = v2[7];

    return MEMORY[0x2822009F8](sub_265CFA46C, v10, 0);
  }
}

uint64_t sub_265CFA46C()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[6];
  v5 = *(v4 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
  sub_265D5A000();
  [*v4 invalidate];

  v6 = v0[1];

  return v6();
}

uint64_t sub_265CFA548(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 464) = a4;
  *(v5 + 352) = a3;
  *(v5 + 360) = v4;
  *(v5 + 336) = a1;
  *(v5 + 344) = a2;
  v6 = sub_265D59DE0();
  *(v5 + 368) = v6;
  v7 = *(v6 - 8);
  *(v5 + 376) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CFA634, v4, 0);
}

uint64_t sub_265CFA634()
{
  v39 = v0;
  v1 = *(v0 + 352);
  if (*(v0 + 464) == 1)
  {
    v2 = *(v0 + 408);
    sub_265D595C0();

    v3 = sub_265D59DD0();
    v4 = sub_265D5A080();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 408);
    v7 = *(v0 + 368);
    v8 = *(v0 + 376);
    if (v5)
    {
      v10 = *(v0 + 344);
      v9 = *(v0 + 352);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v38 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_265CF4FFC(v10, v9, &v38);
      _os_log_impl(&dword_265C01000, v3, v4, "Calling dataRelayClient.sensorDataAvailable(%s, dataType:)", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x266770CF0](v12, -1, -1);
      MEMORY[0x266770CF0](v11, -1, -1);
    }

    v13 = *(v8 + 8);
    v13(v6, v7);
    v14 = v0 + 80;
    *(v0 + 416) = v13;
    v15 = *(v0 + 344);
    v16 = *(v0 + 352);
    v17 = *(v0 + 336);
    v18 = sub_265D59E90();
    *(v0 + 424) = v18;
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_265CFAA38;
    v19 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E890, &unk_265D5D530);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_265CFD30C;
    *(v0 + 232) = &block_descriptor_34;
    *(v0 + 240) = v19;
    [v17 sensorDataAvailable:v18 dataTypes:3 completion:v0 + 208];
  }

  else
  {
    v20 = *(v0 + 400);
    sub_265D595C0();

    v21 = sub_265D59DD0();
    v22 = sub_265D5A080();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 400);
    v25 = *(v0 + 368);
    v26 = *(v0 + 376);
    if (v23)
    {
      v28 = *(v0 + 344);
      v27 = *(v0 + 352);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_265CF4FFC(v28, v27, &v38);
      _os_log_impl(&dword_265C01000, v21, v22, "Calling dataRelayClient.sensorDataUnavailable(%s, dataType:)", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x266770CF0](v30, -1, -1);
      MEMORY[0x266770CF0](v29, -1, -1);
    }

    v31 = *(v26 + 8);
    v31(v24, v25);
    v14 = v0 + 16;
    *(v0 + 440) = v31;
    v32 = *(v0 + 344);
    v33 = *(v0 + 352);
    v34 = *(v0 + 336);
    v35 = sub_265D59E90();
    *(v0 + 448) = v35;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_265CFABEC;
    v36 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E890, &unk_265D5D530);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_265CFD30C;
    *(v0 + 168) = &block_descriptor_2;
    *(v0 + 176) = v36;
    [v34 sensorDataUnavailable:v35 dataTypes:3 completion:v0 + 144];
  }

  return MEMORY[0x282200938](v14);
}

uint64_t sub_265CFAA38()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 432) = v3;
  v4 = *(v1 + 360);
  if (v3)
  {
    v5 = sub_265CFADA0;
  }

  else
  {
    v5 = sub_265CFAB58;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_265CFAB58()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 384);
  v3 = *(v0 + 392);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_265CFABEC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 456) = v3;
  v4 = *(v1 + 360);
  if (v3)
  {
    v5 = sub_265CFAFAC;
  }

  else
  {
    v5 = sub_265CFAD0C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_265CFAD0C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 384);
  v3 = *(v0 + 392);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_265CFADA0()
{
  v30 = v0;
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[49];
  swift_willThrow();

  sub_265D595C0();
  v4 = v2;
  v5 = sub_265D59DD0();
  v6 = sub_265D5A080();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[54];
    v28 = v0[52];
    v8 = v0[49];
    v9 = v0[46];
    v10 = v0[47];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = v0[37];
    v14 = MEMORY[0x2667704D0](v0[38], v0[39]);
    v16 = sub_265CF4FFC(v14, v15, &v29);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_265C01000, v5, v6, "Failed to make sensor data available: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266770CF0](v12, -1, -1);
    MEMORY[0x266770CF0](v11, -1, -1);

    v28(v8, v9);
  }

  else
  {
    v17 = v0[52];
    v18 = v0[49];
    v19 = v0[46];
    v20 = v0[47];

    v17(v18, v19);
  }

  v21 = v0[54];
  v23 = v0[50];
  v22 = v0[51];
  v25 = v0[48];
  v24 = v0[49];
  swift_willThrow();

  v26 = v0[1];

  return v26();
}

uint64_t sub_265CFAFAC()
{
  v30 = v0;
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[48];
  swift_willThrow();

  sub_265D595C0();
  v4 = v2;
  v5 = sub_265D59DD0();
  v6 = sub_265D5A080();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[57];
    v28 = v0[55];
    v9 = v0[47];
    v8 = v0[48];
    v10 = v0[46];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = v0[34];
    v14 = MEMORY[0x2667704D0](v0[35], v0[36]);
    v16 = sub_265CF4FFC(v14, v15, &v29);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_265C01000, v5, v6, "Failed to make sensor data unavailable: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266770CF0](v12, -1, -1);
    MEMORY[0x266770CF0](v11, -1, -1);

    v28(v8, v10);
  }

  else
  {
    v17 = v0[55];
    v19 = v0[47];
    v18 = v0[48];
    v20 = v0[46];

    v17(v18, v20);
  }

  v21 = v0[57];
  v23 = v0[50];
  v22 = v0[51];
  v25 = v0[48];
  v24 = v0[49];
  swift_willThrow();

  v26 = v0[1];

  return v26();
}

uint64_t sub_265CFB1B8()
{
  v1 = v0[14];

  v2 = v0[15];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v3 = v0[22];

  v4 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_lock;
  v5 = sub_265D59930();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_state;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF00, &qword_265D5B0D8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for SensorDataRelayCoordinator()
{
  result = qword_2813B7110;
  if (!qword_2813B7110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265CFB2F0()
{
  v0 = sub_265D59930();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_265CFB3E8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_265CFB3E8()
{
  if (!qword_2813B8FC8)
  {
    v0 = sub_265D590F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813B8FC8);
    }
  }
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

uint64_t sub_265CFB44C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_265CFB494(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_265CFB538@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF00, &qword_265D5B0D8);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265CFB5CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF00, &qword_265D5B0D8);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_265CFB6C8()
{
  v0 = sub_265D590A0();
  v3[3] = v0;
  v3[4] = sub_265CFD68C(&qword_2813B8FE8, MEMORY[0x277D4F200]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1Tm, *MEMORY[0x277D4F1F0], v0);
  LOBYTE(v0) = sub_265D58BD0();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  if (v0 & 1) == 0 && (os_variant_has_internal_content())
  {
    return 0;
  }

  sub_265CF74FC();

  return 1;
}

uint64_t sub_265CFB7CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265C978E0;

  return sub_265CF7AE0(a1);
}

uint64_t sub_265CFB860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4DFF8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SensorDataRelayCoordinator();
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E0](a1, a2, v10, a4);
}

uint64_t sub_265CFB928(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = a2[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_265CFB9D0;

  return sub_265CF9E18(a1, v2 + 16);
}

uint64_t sub_265CFB9D0()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_265CFBAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4E000] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SensorDataRelayCoordinator();
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v10, a4);
}

uint64_t sub_265CFBB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4E008] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SensorDataRelayCoordinator();
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v10, a4);
}

uint64_t sub_265CFBC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D4E010] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SensorDataRelayCoordinator();
  *v9 = v4;
  v9[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v10, a4);
}

uint64_t sub_265CFBD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFF0] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for SensorDataRelayCoordinator();
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D8](a1, v8, a3);
}

uint64_t sub_265CFBDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFE0] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for SensorDataRelayCoordinator();
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8C8](a1, v8, a3);
}

uint64_t sub_265CFBE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D4DFE8] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for SensorDataRelayCoordinator();
  *v7 = v3;
  v7[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D0](a1, v8, a3);
}

uint64_t sub_265CFBF44@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265CFBFCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

unint64_t sub_265CFC108()
{
  result = qword_28003E880;
  if (!qword_28003E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E880);
  }

  return result;
}

uint64_t sub_265CFC15C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_265D59FA0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_265CFD68C(&qword_28003E870, type metadata accessor for SensorDataRelayCoordinator);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v7;
  v8[4] = a1;
  swift_retain_n();
  sub_265CF9B7C(0, 0, v5, &unk_265D5D580, v8);
}

uint64_t sub_265CFC2A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265C96620;

  return sub_265CFC334();
}

uint64_t sub_265CFC334()
{
  v1[25] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF00, &qword_265D5B0D8);
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  v5 = sub_265D59DE0();
  v1[29] = v5;
  v6 = *(v5 - 8);
  v1[30] = v6;
  v7 = *(v6 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265CFC498, v0, 0);
}

uint64_t sub_265CFC498()
{
  v1 = *(v0 + 288);
  sub_265D595C0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_265C01000, v2, v3, "DataRelayServiceClient invalidated!", v4, 2u);
    MEMORY[0x266770CF0](v4, -1, -1);
  }

  v5 = *(v0 + 288);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v11 = *(v0 + 200);
  v10 = *(v0 + 208);

  v12 = *(v7 + 8);
  *(v0 + 296) = v12;
  v12(v5, v6);
  v13 = OBJC_IVAR____TtC22SeymourSessionServices26SensorDataRelayCoordinator_state;
  swift_beginAccess();
  (*(v9 + 16))(v8, v11 + v13, v10);
  v14 = (*(v9 + 88))(v8, v10);
  v15 = *(v0 + 216);
  v16 = *(v0 + 224);
  v17 = *(v0 + 208);
  if (v14 == *MEMORY[0x277D4F250])
  {
    v18 = *(v0 + 280);
    (*(v15 + 96))(*(v0 + 224), v17);
    v19 = *v16;
    *(v0 + 304) = *v16;
    *(v0 + 312) = *(v16 + 8);
    *(v0 + 320) = *(v16 + 16);
    *(v0 + 328) = *(v16 + 24);
    *(v0 + 368) = *(v16 + 32);
    *(v0 + 336) = *(v16 + 40);
    v20 = v19;
    sub_265D595C0();
    v21 = sub_265D59DD0();
    v22 = sub_265D5A080();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_265C01000, v21, v22, "Re-Activating DataRelayServiceClient...", v23, 2u);
      MEMORY[0x266770CF0](v23, -1, -1);
    }

    v24 = *(v0 + 280);
    v25 = *(v0 + 232);
    v26 = *(v0 + 240);

    v12(v24, v25);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_265CFC8F0;
    v27 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E890, &unk_265D5D530);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_265CFD30C;
    *(v0 + 104) = &block_descriptor_61;
    *(v0 + 112) = v27;
    [v20 activateWithCompletion_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v28 = *(v0 + 256);
    (*(v15 + 8))(*(v0 + 224), v17);
    sub_265D595C0();
    v29 = sub_265D59DD0();
    v30 = sub_265D5A070();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 256);
    v33 = *(v0 + 232);
    v34 = *(v0 + 240);
    if (v31)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_265C01000, v29, v30, "No active session to re-activate DataRelayServiceClient.", v35, 2u);
      MEMORY[0x266770CF0](v35, -1, -1);
    }

    v12(v32, v33);
    v37 = *(v0 + 280);
    v36 = *(v0 + 288);
    v39 = *(v0 + 264);
    v38 = *(v0 + 272);
    v41 = *(v0 + 248);
    v40 = *(v0 + 256);
    v42 = *(v0 + 224);

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_265CFC8F0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 344) = v3;
  v4 = *(v1 + 200);
  if (v3)
  {
    v5 = sub_265CFCE94;
  }

  else
  {
    v5 = sub_265CFCA10;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_265CFCA10()
{
  v1 = *(v0 + 272);
  sub_265D595C0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_265C01000, v2, v3, "DataRelayServiceClient re-activated.", v4, 2u);
    MEMORY[0x266770CF0](v4, -1, -1);
  }

  v5 = *(v0 + 328);
  v36 = *(v0 + 336);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v8 = *(v0 + 296);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);

  v8(v9, v12);
  sub_265D595C0();
  v13 = v7;

  v14 = sub_265D59DD0();
  v15 = sub_265D5A080();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 336);
  if (v16)
  {
    v18 = *(v0 + 368);
    v19 = *(v0 + 328);
    v21 = *(v0 + 304);
    v20 = *(v0 + 312);
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v18;

    _os_log_impl(&dword_265C01000, v14, v15, "Updating sensor data availability -- %{BOOL}d...", v22, 8u);
    MEMORY[0x266770CF0](v22, -1, -1);
  }

  else
  {
    v23 = *(v0 + 328);
    v24 = *(v0 + 312);

    v14 = *(v0 + 304);
  }

  v25 = *(v0 + 296);
  v26 = *(v0 + 264);
  v27 = *(v0 + 232);
  v28 = *(v0 + 240);

  v25(v26, v27);
  v29 = swift_task_alloc();
  *(v0 + 352) = v29;
  *v29 = v0;
  v29[1] = sub_265CFCC90;
  v30 = *(v0 + 368);
  v31 = *(v0 + 320);
  v32 = *(v0 + 328);
  v33 = *(v0 + 304);
  v34 = *(v0 + 200);

  return sub_265CFA548(v33, v31, v32, v30);
}

uint64_t sub_265CFCC90()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = sub_265CFD0E8;
  }

  else
  {
    v6 = sub_265CFCDBC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265CFCDBC()
{
  v1 = v0[41];
  v2 = v0[42];
  v4 = v0[38];
  v3 = v0[39];

  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[28];

  v12 = v0[1];

  return v12();
}

uint64_t sub_265CFCE94()
{
  v37 = v0;
  v1 = v0[43];
  v2 = v0[31];
  swift_willThrow();
  sub_265D595C0();
  v3 = v1;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A080();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[43];
    v34 = v0[37];
    v8 = v0[30];
    v7 = v0[31];
    v9 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = v0[21];
    v13 = MEMORY[0x2667704D0](v0[22], v0[23]);
    v15 = sub_265CF4FFC(v13, v14, &v36);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_265C01000, v4, v5, "Failed to re-activate DataRelayServiceClient: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266770CF0](v11, -1, -1);
    MEMORY[0x266770CF0](v10, -1, -1);

    v34(v7, v9);
  }

  else
  {
    v16 = v0[37];
    v18 = v0[30];
    v17 = v0[31];
    v19 = v0[29];

    v16(v17, v19);
  }

  v20 = v0[43];
  swift_willThrow();
  v21 = v0[42];
  v22 = v0[41];
  v24 = v0[38];
  v23 = v0[39];
  v26 = v0[35];
  v25 = v0[36];
  v28 = v0[33];
  v27 = v0[34];
  v30 = v0[31];
  v29 = v0[32];
  v33 = v0[28];
  v35 = v0[43];

  v31 = v0[1];

  return v31();
}

uint64_t sub_265CFD0E8()
{
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v10 = v0[31];
  v9 = v0[32];
  v13 = v0[28];
  v14 = v0[45];

  v11 = v0[1];

  return v11();
}

uint64_t sub_265CFD1D8()
{
  v0 = sub_265D59DE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595C0();
  v5 = sub_265D59DD0();
  v6 = sub_265D5A080();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_265C01000, v5, v6, "DataRelayServiceClient interrupted!", v7, 2u);
    MEMORY[0x266770CF0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_265CFD30C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

unint64_t sub_265CFD3D4()
{
  result = qword_28003E888;
  if (!qword_28003E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E888);
  }

  return result;
}

uint64_t sub_265CFD454(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265CF8B2C(a1, v4, v5, v6);
}

uint64_t sub_265CFD508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265CFD5D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_265C96620;

  return sub_265CFC2A4();
}

uint64_t sub_265CFD68C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SensorDataRelayCoordinator.SensorDataRelayCoordinatorError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SensorDataRelayCoordinator.SensorDataRelayCoordinatorError(_WORD *result, int a2, int a3)
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

unint64_t sub_265CFD7C0()
{
  result = qword_28003E8B8;
  if (!qword_28003E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E8B8);
  }

  return result;
}

uint64_t sub_265CFD864()
{
  v0 = sub_265D58AC0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_265D58EB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_265D0ECB4();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 648);
    v12 = *(result + 656);
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v6 + 104))(v9, *MEMORY[0x277D4E070], v5);
    sub_265D59020();
    sub_265D58C70();
    swift_unknownObjectRelease();
    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_265CFDAF0(uint64_t a1)
{
  v152 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v157 = v138 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v156 = v138 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v155 = v138 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v154 = v138 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v153 = v138 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v151 = v138 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v150 = v138 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v149 = v138 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v148 = v138 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v147 = v138 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v175 = v138 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v174 = v138 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v173 = v138 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v172 = v138 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v171 = v138 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v170 = v138 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v169 = v138 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v168 = v138 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v167 = v138 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8);
  v166 = v138 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8);
  v165 = v138 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65 - 8);
  v164 = v138 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68 - 8);
  v163 = v138 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71 - 8);
  v162 = v138 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v75 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74 - 8);
  v161 = v138 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77 - 8);
  v160 = v138 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v81 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80 - 8);
  v159 = v138 - v82;
  v146 = sub_265D58130();
  v145 = *(v146 - 8);
  v83 = *(v145 + 64);
  MEMORY[0x28223BE20](v146);
  v144 = v138 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_265D59DE0();
  v86 = *(v85 - 8);
  v87 = *(v86 + 64);
  v88 = MEMORY[0x28223BE20](v85);
  v90 = v138 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88);
  v92 = v138 - v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v94 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93 - 8);
  v96 = v138 - v95;
  v97 = sub_265D58AC0();
  v98 = *(v97 - 8);
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v97);
  v101 = v138 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v1;
  sub_265D0389C(v96);
  if ((*(v98 + 48))(v96, 1, v97) == 1)
  {
    sub_265CA4AE8(v96, &qword_28003E708, &unk_265D5CCC0);
    sub_265D595F0();
    v102 = sub_265D59DD0();
    v103 = sub_265D5A080();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_265C01000, v102, v103, "Session system received termination with no active session", v104, 2u);
      MEMORY[0x266770CF0](v104, -1, -1);
    }

    return (*(v86 + 8))(v90, v85);
  }

  else
  {
    v143 = v98;
    v106 = *(v98 + 32);
    v141 = v101;
    v142 = v97;
    v106(v101, v96, v97);
    sub_265D595F0();
    sub_265D59DC0();
    (*(v86 + 8))(v92, v85);
    v138[3] = sub_265D5A4C0();
    v140 = sub_265D589D0();
    v139 = v107;
    v108 = sub_265D58020();
    (*(*(v108 - 8) + 56))(v159, 1, 1, v108);
    v109 = sub_265D58410();
    (*(*(v109 - 8) + 56))(v160, 1, 1, v109);
    v110 = sub_265D58590();
    (*(*(v110 - 8) + 56))(v161, 1, 1, v110);
    v111 = sub_265D58050();
    (*(*(v111 - 8) + 56))(v162, 1, 1, v111);
    v112 = sub_265D58200();
    (*(*(v112 - 8) + 56))(v163, 1, 1, v112);
    v113 = sub_265D58BC0();
    (*(*(v113 - 8) + 56))(v164, 1, 1, v113);
    v114 = sub_265D583E0();
    (*(*(v114 - 8) + 56))(v165, 1, 1, v114);
    v115 = sub_265D581B0();
    (*(*(v115 - 8) + 56))(v166, 1, 1, v115);
    v116 = sub_265D57F50();
    (*(*(v116 - 8) + 56))(v167, 1, 1, v116);
    v117 = sub_265D582A0();
    (*(*(v117 - 8) + 56))(v168, 1, 1, v117);
    v118 = sub_265D58680();
    (*(*(v118 - 8) + 56))(v169, 1, 1, v118);
    v119 = sub_265D58210();
    (*(*(v119 - 8) + 56))(v170, 1, 1, v119);
    v120 = sub_265D57E80();
    (*(*(v120 - 8) + 56))(v171, 1, 1, v120);
    v121 = sub_265D58430();
    (*(*(v121 - 8) + 56))(v172, 1, 1, v121);
    v122 = sub_265D58300();
    (*(*(v122 - 8) + 56))(v173, 1, 1, v122);
    v123 = sub_265D586F0();
    (*(*(v123 - 8) + 56))(v174, 1, 1, v123);
    v124 = sub_265D57E90();
    (*(*(v124 - 8) + 56))(v175, 1, 1, v124);
    v125 = sub_265D581C0();
    (*(*(v125 - 8) + 56))(v147, 1, 1, v125);
    v126 = sub_265D58BB0();
    (*(*(v126 - 8) + 56))(v148, 1, 1, v126);
    v127 = sub_265D585C0();
    (*(*(v127 - 8) + 56))(v149, 1, 1, v127);
    v128 = sub_265D57EA0();
    (*(*(v128 - 8) + 56))(v150, 1, 1, v128);
    v129 = sub_265D57ED0();
    v130 = *(v129 - 8);
    v131 = v151;
    (*(v130 + 16))(v151, v152, v129);
    (*(v130 + 56))(v131, 0, 1, v129);
    v132 = sub_265D58240();
    (*(*(v132 - 8) + 56))(v153, 1, 1, v132);
    v133 = sub_265D58400();
    (*(*(v133 - 8) + 56))(v154, 1, 1, v133);
    v134 = sub_265D58600();
    (*(*(v134 - 8) + 56))(v155, 1, 1, v134);
    v135 = sub_265D58630();
    (*(*(v135 - 8) + 56))(v156, 1, 1, v135);
    v136 = sub_265D58B10();
    (*(*(v136 - 8) + 56))(v157, 1, 1, v136);
    sub_265D5A030();
    v137 = v144;
    sub_265D580B0();
    sub_265D01B9C(v137, 0);
    (*(v145 + 8))(v137, v146);
    return (*(v143 + 8))(v141, v142);
  }
}

uint64_t sub_265CFEFD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v156 = &v140 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v140 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v155 = &v140 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v140 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v161 = &v140 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v160 = &v140 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v159 = &v140 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v158 = &v140 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v157 = &v140 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v178 = &v140 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v177 = &v140 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v176 = &v140 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v154 = &v140 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v175 = &v140 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v174 = &v140 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v173 = &v140 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v172 = &v140 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v171 = &v140 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  v170 = &v140 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8);
  v169 = &v140 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64 - 8);
  v168 = &v140 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67 - 8);
  v167 = &v140 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70 - 8);
  v166 = &v140 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73 - 8);
  v165 = &v140 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76 - 8);
  v164 = &v140 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79 - 8);
  v163 = &v140 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v83 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82 - 8);
  v162 = &v140 - v84;
  v145 = sub_265D58330();
  v144 = *(v145 - 8);
  v85 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v143 = &v140 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_265D58130();
  v152 = *(v153 - 8);
  v87 = *(v152 + 64);
  MEMORY[0x28223BE20](v153);
  v151 = &v140 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_265D58300();
  v90 = *(v89 - 8);
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v89);
  v93 = &v140 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_265D59DE0();
  v149 = *(v150 - 8);
  v94 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v96 = &v140 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  v97 = *(v90 + 16);
  v147 = v90 + 16;
  v146 = v97;
  v97(v93, a1, v89);
  v98 = sub_265D59DD0();
  v99 = sub_265D5A080();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v148 = v90;
    v141 = a1;
    v101 = v100;
    v102 = swift_slowAlloc();
    v142 = v8;
    v103 = v102;
    v179 = v102;
    *v101 = 136315138;
    sub_265D10E08(&qword_28003E320, MEMORY[0x277D50FB0]);
    v104 = sub_265D5A3B0();
    v106 = v105;
    (*(v148 + 8))(v93, v89);
    v107 = sub_265CF4FFC(v104, v106, &v179);

    *(v101 + 4) = v107;
    _os_log_impl(&dword_265C01000, v98, v99, "SessionSystem: observed MultiUserSessionUpdated %s", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    v8 = v142;
    MEMORY[0x266770CF0](v103, -1, -1);
    v108 = v101;
    a1 = v141;
    v90 = v148;
    MEMORY[0x266770CF0](v108, -1, -1);
  }

  else
  {

    (*(v90 + 8))(v93, v89);
  }

  (*(v149 + 8))(v96, v150);
  LODWORD(v150) = sub_265D5A4C0();
  v109 = v143;
  sub_265D582F0();
  v149 = sub_265D58310();
  v148 = v110;
  (*(v144 + 8))(v109, v145);
  v111 = sub_265D58020();
  (*(*(v111 - 8) + 56))(v162, 1, 1, v111);
  v112 = sub_265D58410();
  (*(*(v112 - 8) + 56))(v163, 1, 1, v112);
  v113 = sub_265D58590();
  (*(*(v113 - 8) + 56))(v164, 1, 1, v113);
  v114 = sub_265D58050();
  (*(*(v114 - 8) + 56))(v165, 1, 1, v114);
  v115 = sub_265D58200();
  (*(*(v115 - 8) + 56))(v166, 1, 1, v115);
  v116 = sub_265D58BC0();
  (*(*(v116 - 8) + 56))(v167, 1, 1, v116);
  v117 = sub_265D583E0();
  (*(*(v117 - 8) + 56))(v168, 1, 1, v117);
  v118 = sub_265D581B0();
  (*(*(v118 - 8) + 56))(v169, 1, 1, v118);
  v119 = sub_265D57F50();
  (*(*(v119 - 8) + 56))(v170, 1, 1, v119);
  v120 = sub_265D582A0();
  (*(*(v120 - 8) + 56))(v171, 1, 1, v120);
  v121 = sub_265D58680();
  (*(*(v121 - 8) + 56))(v172, 1, 1, v121);
  v122 = sub_265D58210();
  (*(*(v122 - 8) + 56))(v173, 1, 1, v122);
  v123 = sub_265D57E80();
  (*(*(v123 - 8) + 56))(v174, 1, 1, v123);
  v124 = sub_265D58430();
  (*(*(v124 - 8) + 56))(v175, 1, 1, v124);
  v125 = v154;
  v146(v154, a1, v89);
  (*(v90 + 56))(v125, 0, 1, v89);
  v126 = sub_265D586F0();
  (*(*(v126 - 8) + 56))(v176, 1, 1, v126);
  v127 = sub_265D57E90();
  (*(*(v127 - 8) + 56))(v177, 1, 1, v127);
  v128 = sub_265D581C0();
  (*(*(v128 - 8) + 56))(v178, 1, 1, v128);
  v129 = sub_265D58BB0();
  (*(*(v129 - 8) + 56))(v157, 1, 1, v129);
  v130 = sub_265D585C0();
  (*(*(v130 - 8) + 56))(v158, 1, 1, v130);
  v131 = sub_265D57EA0();
  (*(*(v131 - 8) + 56))(v159, 1, 1, v131);
  v132 = sub_265D57ED0();
  (*(*(v132 - 8) + 56))(v160, 1, 1, v132);
  v133 = sub_265D58240();
  (*(*(v133 - 8) + 56))(v161, 1, 1, v133);
  v134 = sub_265D58400();
  (*(*(v134 - 8) + 56))(v15, 1, 1, v134);
  v135 = sub_265D58600();
  (*(*(v135 - 8) + 56))(v155, 1, 1, v135);
  v136 = sub_265D58630();
  (*(*(v136 - 8) + 56))(v8, 1, 1, v136);
  v137 = sub_265D58B10();
  (*(*(v137 - 8) + 56))(v156, 1, 1, v137);
  sub_265D5A030();
  v138 = v151;
  sub_265D580B0();
  sub_265D01B9C(v138, 4);
  return (*(v152 + 8))(v138, v153);
}

uint64_t sub_265D00518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v11);

    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_265D0063C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v155 = &v138 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v149 = &v138 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v138 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v138 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v154 = &v138 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v153 = &v138 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v152 = &v138 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v151 = &v138 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v150 = &v138 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v172 = &v138 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v171 = &v138 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v148 = &v138 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v170 = &v138 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v169 = &v138 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v168 = &v138 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v167 = &v138 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v166 = &v138 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v165 = &v138 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  v164 = &v138 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8);
  v163 = &v138 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64 - 8);
  v162 = &v138 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67 - 8);
  v161 = &v138 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70 - 8);
  v160 = &v138 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73 - 8);
  v159 = &v138 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76 - 8);
  v158 = &v138 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79 - 8);
  v157 = &v138 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v83 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82 - 8);
  v156 = &v138 - v84;
  v147 = sub_265D58130();
  v146 = *(v147 - 8);
  v85 = *(v146 + 64);
  MEMORY[0x28223BE20](v147);
  v145 = &v138 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_265D586F0();
  v88 = *(v87 - 8);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  v91 = &v138 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_265D59DE0();
  v143 = *(v144 - 8);
  v92 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v94 = &v138 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59610();
  v95 = *(v88 + 16);
  v141 = v88 + 16;
  v140 = v95;
  v95(v91, a1, v87);
  v96 = sub_265D59DD0();
  v97 = sub_265D5A080();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v142 = a1;
    v99 = v98;
    v138 = swift_slowAlloc();
    v173 = v138;
    *v99 = 136315138;
    sub_265D10E08(&qword_28003E458, MEMORY[0x277D53008]);
    v100 = sub_265D5A3B0();
    v139 = v15;
    v101 = v88;
    v102 = v87;
    v104 = v103;
    (*(v101 + 8))(v91, v102);
    v105 = sub_265CF4FFC(v100, v104, &v173);
    v87 = v102;
    v88 = v101;
    v15 = v139;

    *(v99 + 4) = v105;
    _os_log_impl(&dword_265C01000, v96, v97, "SessionSystem: observed MultiUserSessionIdentitiesUpdated %s", v99, 0xCu);
    v106 = v138;
    __swift_destroy_boxed_opaque_existential_1Tm(v138);
    MEMORY[0x266770CF0](v106, -1, -1);
    v107 = v99;
    a1 = v142;
    MEMORY[0x266770CF0](v107, -1, -1);
  }

  else
  {

    (*(v88 + 8))(v91, v87);
  }

  (*(v143 + 8))(v94, v144);
  LODWORD(v142) = sub_265D5A4C0();
  v144 = sub_265D586E0();
  v143 = v108;
  v109 = sub_265D58020();
  (*(*(v109 - 8) + 56))(v156, 1, 1, v109);
  v110 = sub_265D58410();
  (*(*(v110 - 8) + 56))(v157, 1, 1, v110);
  v111 = sub_265D58590();
  (*(*(v111 - 8) + 56))(v158, 1, 1, v111);
  v112 = sub_265D58050();
  (*(*(v112 - 8) + 56))(v159, 1, 1, v112);
  v113 = sub_265D58200();
  (*(*(v113 - 8) + 56))(v160, 1, 1, v113);
  v114 = sub_265D58BC0();
  (*(*(v114 - 8) + 56))(v161, 1, 1, v114);
  v115 = sub_265D583E0();
  (*(*(v115 - 8) + 56))(v162, 1, 1, v115);
  v116 = sub_265D581B0();
  (*(*(v116 - 8) + 56))(v163, 1, 1, v116);
  v117 = sub_265D57F50();
  (*(*(v117 - 8) + 56))(v164, 1, 1, v117);
  v118 = sub_265D582A0();
  (*(*(v118 - 8) + 56))(v165, 1, 1, v118);
  v119 = sub_265D58680();
  (*(*(v119 - 8) + 56))(v166, 1, 1, v119);
  v120 = sub_265D58210();
  (*(*(v120 - 8) + 56))(v167, 1, 1, v120);
  v121 = sub_265D57E80();
  (*(*(v121 - 8) + 56))(v168, 1, 1, v121);
  v122 = sub_265D58430();
  (*(*(v122 - 8) + 56))(v169, 1, 1, v122);
  v123 = sub_265D58300();
  (*(*(v123 - 8) + 56))(v170, 1, 1, v123);
  v124 = v148;
  v140(v148, a1, v87);
  (*(v88 + 56))(v124, 0, 1, v87);
  v125 = sub_265D57E90();
  (*(*(v125 - 8) + 56))(v171, 1, 1, v125);
  v126 = sub_265D581C0();
  (*(*(v126 - 8) + 56))(v172, 1, 1, v126);
  v127 = sub_265D58BB0();
  (*(*(v127 - 8) + 56))(v150, 1, 1, v127);
  v128 = sub_265D585C0();
  (*(*(v128 - 8) + 56))(v151, 1, 1, v128);
  v129 = sub_265D57EA0();
  (*(*(v129 - 8) + 56))(v152, 1, 1, v129);
  v130 = sub_265D57ED0();
  (*(*(v130 - 8) + 56))(v153, 1, 1, v130);
  v131 = sub_265D58240();
  (*(*(v131 - 8) + 56))(v154, 1, 1, v131);
  v132 = sub_265D58400();
  (*(*(v132 - 8) + 56))(v15, 1, 1, v132);
  v133 = sub_265D58600();
  (*(*(v133 - 8) + 56))(v11, 1, 1, v133);
  v134 = sub_265D58630();
  (*(*(v134 - 8) + 56))(v149, 1, 1, v134);
  v135 = sub_265D58B10();
  (*(*(v135 - 8) + 56))(v155, 1, 1, v135);
  sub_265D5A030();
  v136 = v145;
  sub_265D580B0();
  sub_265D01B9C(v136, 4);
  return (*(v146 + 8))(v136, v147);
}

uint64_t sub_265D01A8C()
{
  v0 = sub_265D58130();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265D59070();
    sub_265D01B9C(v4, 0);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_265D01B9C(void (*a1)(void, void), int a2)
{
  v280 = a2;
  v281 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v268 = v254 - v5;
  v267 = sub_265D58E80();
  v266 = *(v267 - 8);
  v6 = *(v266 + 64);
  MEMORY[0x28223BE20](v267);
  v265 = v254 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SessionSystem.State(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v261 = v254 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265D59DE0();
  v284 = *(v11 - 8);
  v285 = v11;
  v12 = *(v284 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v254 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v259 = v254 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v262 = v254 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v264 = v254 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v274 = v254 - v23;
  MEMORY[0x28223BE20](v22);
  v272 = v254 - v24;
  v25 = sub_265D58130();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v254 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v258 = v254 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v260 = v254 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v263 = v254 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v273 = v254 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v286 = v254 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v269 = v254 - v42;
  MEMORY[0x28223BE20](v41);
  v276 = v254 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v271 = v254 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v49 = v254 - v48;
  v50 = sub_265D58AC0();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x28223BE20](v50);
  v55 = v254 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v53);
  v277 = v254 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v270 = v254 - v59;
  MEMORY[0x28223BE20](v58);
  v61 = v254 - v60;
  v278 = v2;
  sub_265D0389C(v49);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    sub_265CA4AE8(v49, &qword_28003E708, &unk_265D5CCC0);
    sub_265D595F0();
    (*(v26 + 16))(v30, v281, v25);
    v62 = sub_265D59DD0();
    v63 = sub_265D5A070();
    v64 = v26;
    if (os_log_type_enabled(v62, v63))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v288[0] = v66;
      *v65 = 136446210;
      v67 = sub_265D580D0();
      v69 = v68;
      (*(v64 + 8))(v30, v25);
      v70 = sub_265CF4FFC(v67, v69, v288);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_265C01000, v62, v63, "No active session for update: %{public}s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x266770CF0](v66, -1, -1);
      MEMORY[0x266770CF0](v65, -1, -1);
    }

    else
    {

      (*(v26 + 8))(v30, v25);
    }

    return (*(v284 + 8))(v15, v285);
  }

  v279 = v26;
  v283 = v25;
  (*(v51 + 32))(v61, v49, v50);
  v275 = v61;
  v71 = sub_265D589D0();
  v73 = v72;
  v74 = v281;
  v75 = sub_265D580D0();
  v282 = v50;
  if (v71 == v75 && v73 == v76)
  {

    v77 = v286;
    v78 = v280;
    v79 = v272;
  }

  else
  {
    v80 = sub_265D5A3C0();

    v77 = v286;
    v78 = v280;
    v79 = v272;
    if ((v80 & 1) == 0)
    {
      v87 = v259;
      sub_265D595F0();
      v88 = v279;
      v89 = v258;
      v90 = v74;
      v91 = v51;
      v93 = v282;
      v92 = v283;
      (*(v279 + 16))(v258, v90, v283);
      v94 = *(v51 + 16);
      v95 = v275;
      v94(v55, v275, v93);
      v96 = sub_265D59DD0();
      v97 = sub_265D5A070();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = v89;
        v99 = swift_slowAlloc();
        v286 = swift_slowAlloc();
        v288[0] = v286;
        *v99 = 136315394;
        v100 = sub_265D580D0();
        v102 = v101;
        (*(v88 + 8))(v98, v92);
        v103 = sub_265CF4FFC(v100, v102, v288);

        *(v99 + 4) = v103;
        *(v99 + 12) = 2082;
        v104 = sub_265D589D0();
        v106 = v105;
        v107 = *(v91 + 8);
        v108 = v55;
        v109 = v282;
        v107(v108, v282);
        v110 = sub_265CF4FFC(v104, v106, v288);

        *(v99 + 14) = v110;
        _os_log_impl(&dword_265C01000, v96, v97, "Remote session update identifier %s != active session %{public}s", v99, 0x16u);
        v111 = v286;
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v111, -1, -1);
        MEMORY[0x266770CF0](v99, -1, -1);

        (*(v284 + 8))(v259, v285);
        return (v107)(v275, v109);
      }

      else
      {

        v253 = *(v91 + 8);
        v253(v55, v93);
        (*(v88 + 8))(v89, v92);
        (*(v284 + 8))(v87, v285);
        return (v253)(v95, v93);
      }
    }
  }

  v254[1] = v278[47];
  v81 = sub_265D4607C(v78);
  v82 = v279;
  v83 = *(v279 + 16);
  v272 = (v279 + 16);
  v259 = v83;
  (v83)(v276, v74, v283);
  sub_265D5A030();
  v85 = v84;
  v255 = "ejection";
  if (v78)
  {
    v112 = sub_265D5A3C0();

    if ((v112 & 1) == 0)
    {
      v114 = v269;
      v115 = v276;
      sub_265D58060();
      v258 = sub_265D580D0();
      v117 = v116;
      sub_265D58090();
      v119 = v118;
      v113 = *(v82 + 8);
      v120 = v283;
      v113(v114, v283);
      v113(v115, v120);
      v121 = v278[6];
      __swift_project_boxed_opaque_existential_1(v278 + 2, v278[5]);
      v288[3] = &type metadata for SessionUpdateAnalyticsEvent;
      v288[4] = sub_265D0EEE0();
      v122 = swift_allocObject();
      v288[0] = v122;
      *(v122 + 16) = v85 - v119;
      *(v122 + 24) = v258;
      *(v122 + 32) = v117;
      *(v122 + 40) = v78;
      v77 = v286;
      sub_265D59000();
      __swift_destroy_boxed_opaque_existential_1Tm(v288);
      goto LABEL_18;
    }
  }

  else
  {
  }

  v113 = *(v82 + 8);
  v113(v276, v283);
LABEL_18:
  sub_265D58060();
  sub_265D595F0();
  v123 = *(v51 + 16);
  v124 = v270;
  v125 = v275;
  v258 = (v51 + 16);
  v256 = v123;
  v123(v270, v275, v282);
  v126 = sub_265D59DD0();
  v127 = sub_265D5A080();
  v128 = os_log_type_enabled(v126, v127);
  v276 = v113;
  if (v128)
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v288[0] = v130;
    *v129 = 141558274;
    *(v129 + 4) = 1752392040;
    *(v129 + 12) = 2080;
    sub_265D10E08(&qword_28003E7E8, MEMORY[0x277D53AE0]);
    v131 = sub_265D5A3B0();
    v133 = v132;
    v134 = v51;
    v270 = *(v51 + 8);
    (v270)(v124, v282);
    v135 = sub_265CF4FFC(v131, v133, v288);

    *(v129 + 14) = v135;
    _os_log_impl(&dword_265C01000, v126, v127, "Prior Session: %{mask.hash}s", v129, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v130);
    v136 = v130;
    v113 = v276;
    v125 = v275;
    MEMORY[0x266770CF0](v136, -1, -1);
    v137 = v129;
    v77 = v286;
    MEMORY[0x266770CF0](v137, -1, -1);
  }

  else
  {

    v134 = v51;
    v270 = *(v51 + 8);
    (v270)(v124, v282);
  }

  v281 = *(v284 + 8);
  v281(v79, v285);
  v138 = v274;
  sub_265D595F0();
  v139 = v273;
  v140 = v283;
  (v259)(v273, v77, v283);
  v141 = sub_265D59DD0();
  v142 = sub_265D5A080();
  v143 = os_log_type_enabled(v141, v142);
  v257 = v134;
  if (v143)
  {
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v288[0] = v145;
    *v144 = 136315906;
    v146 = 0x8000000265D5FC00;
    v147 = 0xD000000000000014;
    v148 = 0x8000000265D5FC20;
    v149 = 0xD000000000000018;
    if (v280 != 3)
    {
      v149 = 0xD000000000000010;
      v148 = 0x8000000265D5FC40;
    }

    if (v280 != 2)
    {
      v147 = v149;
      v146 = v148;
    }

    v150 = v255 | 0x8000000000000000;
    v151 = 0xD000000000000016;
    if (!v280)
    {
      v151 = 0x7665446C61636F6CLL;
      v150 = 0xEB00000000656369;
    }

    if (v280 <= 1u)
    {
      v152 = v151;
    }

    else
    {
      v152 = v147;
    }

    if (v280 <= 1u)
    {
      v153 = v150;
    }

    else
    {
      v153 = v146;
    }

    v154 = sub_265CF4FFC(v152, v153, v288);

    *(v144 + 4) = v154;
    *(v144 + 12) = 2050;
    *(v144 + 14) = v81;
    *(v144 + 22) = 2160;
    *(v144 + 24) = 1752392040;
    *(v144 + 32) = 2080;
    sub_265D10E08(&qword_28003E4B8, MEMORY[0x277D506A0]);
    v155 = v273;
    v156 = v283;
    v157 = sub_265D5A3B0();
    v159 = v158;
    v113(v155, v156);
    v160 = sub_265CF4FFC(v157, v159, v288);

    *(v144 + 34) = v160;
    _os_log_impl(&dword_265C01000, v141, v142, "Transformed remote update from %s with timestamp offset %{public}f. Update: %{mask.hash}s", v144, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266770CF0](v145, -1, -1);
    MEMORY[0x266770CF0](v144, -1, -1);

    v281(v274, v285);
    v161 = v257;
    v125 = v275;
    v77 = v286;
  }

  else
  {

    v113(v139, v140);
    v281(v138, v285);
    v161 = v134;
  }

  v162 = v277;
  sub_265D58990();
  sub_265D10E08(&qword_28003E8D8, MEMORY[0x277D53AE0]);
  if (sub_265D59E80())
  {
    v163 = v262;
    sub_265D595F0();
    v164 = v260;
    v165 = v283;
    (v259)(v260, v77, v283);
    v166 = sub_265D59DD0();
    v167 = sub_265D5A070();
    if (os_log_type_enabled(v166, v167))
    {
      v168 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v288[0] = v169;
      *v168 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E8E0, &qword_265D5D7C8);
      v170 = v163;
      v171 = swift_allocObject();
      *(v171 + 16) = xmmword_265D5AF60;
      v172 = sub_265D580C0();
      v173 = MEMORY[0x277D84D30];
      *(v171 + 56) = MEMORY[0x277D84CC0];
      *(v171 + 64) = v173;
      *(v171 + 32) = v172;
      v174 = sub_265D59EB0();
      v176 = v175;
      v177 = v164;
      v178 = v276;
      (v276)(v177, v283);
      v179 = sub_265CF4FFC(v174, v176, v288);
      v165 = v283;

      *(v168 + 4) = v179;
      _os_log_impl(&dword_265C01000, v166, v167, "Session update (identifier: %{public}s) had no new attributes", v168, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v169);
      MEMORY[0x266770CF0](v169, -1, -1);
      v180 = v168;
      v77 = v286;
      MEMORY[0x266770CF0](v180, -1, -1);

      v281(v170, v285);
      v181 = v282;
      v182 = v270;
      (v270)(v277, v282);
      v183 = v275;
    }

    else
    {

      v229 = v164;
      v178 = v276;
      (v276)(v229, v165);
      v281(v163, v285);
      v181 = v282;
      v182 = v270;
      (v270)(v277, v282);
      v183 = v125;
    }

    v182(v183, v181);
    return v178(v77, v165);
  }

  else
  {
    v184 = v278;
    v185 = __swift_project_boxed_opaque_existential_1(v278 + 7, v278[10]);
    v186 = v271;
    v187 = v125;
    v188 = v282;
    v189 = v256;
    v256(v271, v187, v282);
    v190 = (v161 + 56);
    v191 = *(v161 + 56);
    (v191)(v186, 0, 1, v188);
    v192 = *v185;
    sub_265CE72D0(v286, v186);
    sub_265CA4AE8(v186, &qword_28003E708, &unk_265D5CCC0);
    v193 = v261;
    v189(v261, v162, v188);
    v194 = v283;
    v274 = v190;
    v273 = v191;
    v195 = (v191)(v193, 0, 1, v188);
    v196 = v184[69];
    MEMORY[0x28223BE20](v195);
    v254[-2] = v184;
    v254[-1] = v193;
    sub_265D58CA0();
    sub_265D0E6F4(v193);
    v197 = off_2877801D0[0];
    type metadata accessor for SessionConnectionPool();
    v198 = v197();
    v199 = v286;
    v200 = v198;
    LODWORD(v262) = off_287780190[0]();
    v201 = v264;
    sub_265D595F0();
    v202 = v263;
    (v259)(v263, v199, v194);
    swift_bridgeObjectRetain_n();
    v203 = sub_265D59DD0();
    v204 = sub_265D5A080();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = v202;
      v206 = swift_slowAlloc();
      v272 = swift_slowAlloc();
      v288[0] = v272;
      *v206 = 136446978;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E8E0, &qword_265D5D7C8);
      v207 = swift_allocObject();
      *(v207 + 16) = xmmword_265D5AF60;
      v208 = sub_265D580C0();
      v209 = MEMORY[0x277D84D30];
      *(v207 + 56) = MEMORY[0x277D84CC0];
      *(v207 + 64) = v209;
      *(v207 + 32) = v208;
      v210 = sub_265D59EB0();
      v212 = v211;
      (v276)(v205, v194);
      v213 = sub_265CF4FFC(v210, v212, v288);

      *(v206 + 4) = v213;
      *(v206 + 12) = 2048;
      v214 = *(v200 + 16);

      *(v206 + 14) = v214;

      *(v206 + 22) = 2082;
      v215 = 0x8000000265D5FC00;
      v216 = 0xD000000000000014;
      v217 = 0x8000000265D5FC20;
      v218 = 0xD000000000000018;
      if (v280 != 3)
      {
        v218 = 0xD000000000000010;
        v217 = 0x8000000265D5FC40;
      }

      if (v280 != 2)
      {
        v216 = v218;
        v215 = v217;
      }

      v219 = v255 | 0x8000000000000000;
      v220 = 0xD000000000000016;
      if (!v280)
      {
        v220 = 0x7665446C61636F6CLL;
        v219 = 0xEB00000000656369;
      }

      if (v280 <= 1u)
      {
        v221 = v220;
      }

      else
      {
        v221 = v216;
      }

      if (v280 <= 1u)
      {
        v222 = v219;
      }

      else
      {
        v222 = v215;
      }

      v223 = sub_265CF4FFC(v221, v222, v288);

      *(v206 + 24) = v223;
      *(v206 + 32) = 2080;
      v287 = v262;
      v224 = sub_265D59EC0();
      v226 = sub_265CF4FFC(v224, v225, v288);

      *(v206 + 34) = v226;
      _os_log_impl(&dword_265C01000, v203, v204, "Broadcasting session update (update identifier: %{public}s to %ld connection(s) from %{public}s in %s mode", v206, 0x2Au);
      v227 = v272;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v227, -1, -1);
      MEMORY[0x266770CF0](v206, -1, -1);

      v228 = (v281)(v201, v285);
      v199 = v286;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (v276)(v202, v194);
      v228 = (v281)(v201, v285);
    }

    MEMORY[0x28223BE20](v228);
    v254[-2] = v199;
    sub_265CBA26C(sub_265D0EF34, &v254[-4], v200);

    v230 = v278;
    v231 = __swift_project_boxed_opaque_existential_1(v278 + 37, v278[40]);
    v232 = v271;
    v233 = v275;
    v234 = v282;
    v235 = v256;
    v256(v271, v275, v282);
    v236 = v273;
    (v273)(v232, 0, 1, v234);
    v237 = *v231;
    sub_265CE915C(v286, v232);
    sub_265CA4AE8(v232, &qword_28003E708, &unk_265D5CCC0);
    v238 = v230[62];
    v235(v232, v233, v234);
    v236(v232, 0, 1, v234);
    sub_265CF2DC8(v286, v232);
    sub_265CA4AE8(v232, &qword_28003E708, &unk_265D5CCC0);
    v239 = *__swift_project_boxed_opaque_existential_1(v230 + 64, v230[67]);
    sub_265D255C0();
    v240 = *__swift_project_boxed_opaque_existential_1(v230 + 70, v230[73]);
    sub_265CE6954();
    v241 = *__swift_project_boxed_opaque_existential_1(v230 + 27, v230[30]);
    sub_265CDB8D4();
    v242 = *__swift_project_boxed_opaque_existential_1(v230 + 50, v230[53]);
    sub_265D53380();
    v244 = v230[60];
    v243 = v230[61];
    swift_getObjectType();
    v245 = v277;
    sub_265D589A0();
    v246 = v265;
    sub_265D58E70();
    v247 = v267;
    v248 = v286;
    sub_265D58ED0();
    (*(v266 + 8))(v246, v247);
    v249 = v268;
    sub_265D58080();
    v250 = sub_265D57ED0();
    if ((*(*(v250 - 8) + 48))(v249, 1, v250) == 1)
    {
      v251 = v270;
      (v270)(v245, v234);
      v251(v233, v234);
      sub_265CA4AE8(v249, &qword_28003E840, &unk_265D5D0D0);
    }

    else
    {
      sub_265CA4AE8(v249, &qword_28003E840, &unk_265D5D0D0);
      sub_265D06414();
      v252 = v270;
      (v270)(v245, v234);
      v252(v233, v234);
    }

    return (v276)(v248, v283);
  }
}

uint64_t sub_265D0389C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SessionSystem.State(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v21[-v9];
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265D595F0();
  sub_265D59DC0();
  (*(v12 + 8))(v15, v11);
  v16 = *(v2 + 552);
  sub_265D58CA0();
  sub_265D0EFC8(v10, v8);
  v17 = sub_265D58AC0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v8, 1, v17) == 1)
  {
    sub_265D0E6F4(v8);
    v19 = 1;
  }

  else
  {
    (*(v18 + 32))(a1, v8, v17);
    v19 = 0;
  }

  return (*(v18 + 56))(a1, v19, 1, v17);
}

void sub_265D03B04(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = sub_265D58AC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v57 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = &v52 - v8;
  v9 = type metadata accessor for SessionSystem.State(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  v16 = sub_265D59DE0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v58 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v52 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  sub_265D595F0();
  sub_265D59DC0();
  v26 = *(v17 + 8);
  v59 = v16;
  v27 = v16;
  v28 = v26;
  v56 = v17 + 8;
  v26(v25, v27);
  v29 = *(v2 + 552);
  sub_265D58CA0();
  v30 = v3;
  v60 = v15;
  sub_265D0EE7C(v15, v13);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    sub_265D595F0();
    v31 = sub_265D59DD0();
    v32 = sub_265D5A080();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_265C01000, v31, v32, "Session system is inactive, new sessions are allowed", v33, 2u);
      MEMORY[0x266770CF0](v33, -1, -1);
    }

    v28(v23, v59);
    sub_265D58970();
    sub_265D0E6F4(v60);
  }

  else
  {
    v34 = v55;
    (*(v4 + 32))(v55, v13, v3);
    sub_265D595F0();
    (*(v4 + 16))(v57, v34, v3);
    v35 = sub_265D59DD0();
    v36 = sub_265D5A080();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v54 = v30;
      v38 = v37;
      v39 = swift_slowAlloc();
      v62 = v39;
      *v38 = 136446210;
      v40 = v57;
      v41 = sub_265D589D0();
      v53 = v28;
      v42 = v34;
      v44 = v43;
      v45 = *(v4 + 8);
      v45(v40, v54);
      v46 = sub_265CF4FFC(v41, v44, &v62);
      v34 = v42;

      *(v38 + 4) = v46;
      _os_log_impl(&dword_265C01000, v35, v36, "Session system is active %{public}s, not allowing new session", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x266770CF0](v39, -1, -1);
      v47 = v38;
      v30 = v54;
      MEMORY[0x266770CF0](v47, -1, -1);

      v53(v58, v59);
    }

    else
    {

      v45 = *(v4 + 8);
      v45(v57, v30);
      v28(v58, v59);
    }

    v48 = sub_265D57FE0();
    sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8]);
    v49 = swift_allocError();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D50380], v48);
    *(swift_allocObject() + 16) = v49;
    v51 = v49;
    sub_265D58940();
    v45(v34, v30);
    sub_265D0E6F4(v60);
  }
}

uint64_t sub_265D04134(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v9 + 8))(v12, v8);
  sub_265D0389C(v7);
  v13 = sub_265D58AC0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_265CA4AE8(v7, &qword_28003E708, &unk_265D5CCC0);
LABEL_3:
    v15 = sub_265D57FE0();
    sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8]);
    v16 = swift_allocError();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D50338], v15);
    *(swift_allocObject() + 16) = v16;
    return sub_265D58940();
  }

  v19 = sub_265D589D0();
  v21 = v20;
  (*(v14 + 8))(v7, v13);
  if (v19 == a1 && v21 == a2)
  {
  }

  else
  {
    v23 = sub_265D5A3C0();

    if ((v23 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return sub_265D58970();
}

uint64_t sub_265D04464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v58 = a4;
  v9 = sub_265D59DE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  sub_265D595F0();
  swift_unknownObjectRetain();
  v17 = sub_265D59DD0();
  v18 = sub_265D5A080();
  swift_unknownObjectRelease();
  v19 = os_log_type_enabled(v17, v18);
  v54 = a2;
  v55 = a3;
  v57 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v53 = a5;
    v21 = v20;
    v52 = swift_slowAlloc();
    v59[2] = a3;
    v60 = v52;
    *v21 = 136446466;
    v59[0] = a1;
    v59[1] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    v22 = sub_265D59EC0();
    v24 = v9;
    v25 = v14;
    v26 = v10;
    v27 = sub_265CF4FFC(v22, v23, &v60);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2082;
    LOBYTE(v59[0]) = v58;
    v28 = sub_265D59EC0();
    v30 = sub_265CF4FFC(v28, v29, &v60);
    v10 = v26;
    v14 = v25;
    v9 = v24;

    *(v21 + 14) = v30;
    _os_log_impl(&dword_265C01000, v17, v18, "Updating session connection pool with %{public}s role %{public}s", v21, 0x16u);
    v31 = v52;
    swift_arrayDestroy();
    MEMORY[0x266770CF0](v31, -1, -1);
    MEMORY[0x266770CF0](v21, -1, -1);
  }

  v32 = *(v10 + 8);
  v32(v16, v9);
  if (v58 > 2u)
  {
    if (v58 == 3)
    {
      v45 = *(v56 + 376);
      v46 = off_2877801A0[0];
      type metadata accessor for SessionConnectionPool();
      v46();
      return sub_265D58970();
    }

    if (v58 == 4)
    {
      v41 = *(v56 + 376);
      v42 = off_287780198[0];
      type metadata accessor for SessionConnectionPool();
      v42();
      return sub_265D58970();
    }

LABEL_10:
    v43 = *(v56 + 376);
    v44 = off_287780198[0];
    type metadata accessor for SessionConnectionPool();
    v44();
    off_2877801A8[0]();
    return sub_265D58970();
  }

  if (v58 >= 2u)
  {
    goto LABEL_10;
  }

  sub_265D595F0();
  v33 = sub_265D59DD0();
  v34 = sub_265D5A070();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v57 = v10;
    v37 = v36;
    v59[0] = v36;
    *v35 = 136446210;
    LOBYTE(v60) = v58;
    v38 = sub_265D59EC0();
    v40 = sub_265CF4FFC(v38, v39, v59);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_265C01000, v33, v34, "Unexpected connection pool role: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266770CF0](v37, -1, -1);
    MEMORY[0x266770CF0](v35, -1, -1);
  }

  v32(v14, v9);
  v48 = sub_265D57FE0();
  sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8]);
  v49 = swift_allocError();
  (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D50348], v48);
  *(swift_allocObject() + 16) = v49;
  return sub_265D58940();
}

uint64_t sub_265D049EC()
{
  v1 = v0;
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v3 + 8))(v6, v2);
  v7 = *(v1 + 376);
  v8 = off_287780198[0];
  type metadata accessor for SessionConnectionPool();
  v8();
  off_2877801C0[0]();
  return off_2877801C8[0]();
}

uint64_t sub_265D04B60(uint64_t result)
{
  if (result <= 2u)
  {
    if (result < 2u)
    {
      return result;
    }

LABEL_7:
    v4 = *(v1 + 376);
    v5 = off_287780198[0];
    type metadata accessor for SessionConnectionPool();
    v5();
    return off_2877801C8[0]();
  }

  if (result != 3)
  {
    if (result == 4)
    {
      v2 = *(v1 + 376);
      v3 = off_287780198[0];
      type metadata accessor for SessionConnectionPool();
      return v3();
    }

    goto LABEL_7;
  }

  v6 = *(v1 + 376);
  v7 = off_2877801C0[0];
  type metadata accessor for SessionConnectionPool();
  return v7();
}

uint64_t sub_265D04C6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 376);
  v8 = a2[3];
  v9 = off_2877801B0;
  type metadata accessor for SessionConnectionPool();
  v9();
  return sub_265D04464(*a2, a2[1], a2[2], a3, a4);
}

uint64_t sub_265D04D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionSystem.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_265D58AC0();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = *(a2 + 552);
  v13 = a2;
  v14 = v7;
  sub_265D58CA0();
  return sub_265D0E6F4(v7);
}

uint64_t sub_265D04E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_265D58AC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D0389C(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_265CA4AE8(v9, &qword_28003E708, &unk_265D5CCC0);
    v15 = sub_265D57FE0();
    sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8]);
    v16 = swift_allocError();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D50358], v15);
    *(swift_allocObject() + 16) = v16;
    return sub_265D58940();
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v19 = *(a1 + 392);
    sub_265D42790(v14, a2, a3);
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_265D050CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - v7;
  v9 = sub_265D589D0();
  v11 = v10;
  sub_265D0389C(v8);
  v12 = sub_265D58AC0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_265CA4AE8(v8, &qword_28003E708, &unk_265D5CCC0);

LABEL_3:
    sub_265D0F294(*a3, a3[1], a3[2], a1);
    v14 = sub_265D57FE0();
    sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D50350], v14);
    return swift_willThrow();
  }

  v23 = a1;
  v17 = sub_265D589D0();
  v19 = v18;
  (*(v13 + 8))(v8, v12);
  if (v9 == v17 && v11 == v19)
  {
  }

  else
  {
    v21 = sub_265D5A3C0();

    a1 = v23;
    if ((v21 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_265D05334(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - v7;
  v9 = sub_265D58AC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D0389C(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_265CA4AE8(v8, &qword_28003E708, &unk_265D5CCC0);
  }

  (*(v10 + 32))(v13, v8, v9);
  v15 = a3[2];
  sub_265D0553C(v13, *a3, a3[1]);
  v16 = *(a2 + 480);
  v17 = *(a2 + 488);
  swift_getObjectType();
  v18[0] = *(a2 + 376);
  v18[1] = v18[0];
  sub_265C95A64();
  swift_unknownObjectRetain();
  sub_265D58ED0();
  swift_unknownObjectRelease();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_265D0553C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v31 = a1;
  v3 = sub_265D59DE0();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_265D58EB0();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v32);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265D58130();
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v29 - v17;
  v19 = sub_265D58AC0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D0389C(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_265CA4AE8(v18, &qword_28003E708, &unk_265D5CCC0);
    sub_265D595F0();
    v24 = sub_265D59DD0();
    v25 = sub_265D5A070();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_265C01000, v24, v25, "No active session. This is unexpected", v26, 2u);
      MEMORY[0x266770CF0](v26, -1, -1);
    }

    return (*(v35 + 8))(v6, v36);
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    sub_265D589A0();
    swift_getObjectType();
    v28 = v32;
    (*(v7 + 104))(v10, *MEMORY[0x277D4E040], v32);
    sub_265D58C70();
    (*(v7 + 8))(v10, v28);
    (*(v30 + 8))(v14, v11);
    return (*(v20 + 8))(v23, v19);
  }
}

uint64_t sub_265D0596C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC22SeymourSessionServices13SessionSystem_state;
  swift_beginAccess();
  sub_265D0EE00(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_265D059D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265D58EB0();
  v108 = *(v4 - 8);
  v109 = v4;
  v5 = *(v108 + 64);
  MEMORY[0x28223BE20](v4);
  v106 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265D58F40();
  v104 = *(v7 - 8);
  v105 = v7;
  v8 = *(v104 + 64);
  MEMORY[0x28223BE20](v7);
  v103 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265D581A0();
  v97 = *(v10 - 8);
  v98 = v10;
  v11 = *(v97 + 64);
  MEMORY[0x28223BE20](v10);
  v96 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SessionSystem.State(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v94 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265D58AC0();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v102 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v99 = &v91 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v91 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v91 - v26;
  v28 = sub_265D59DE0();
  v110 = *(v28 - 8);
  v29 = *(v110 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v111 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v91 - v32;
  sub_265D595F0();
  v34 = v17;
  v35 = v17[2];
  v35(v27, a1, v16);
  v107 = a1;
  v112 = v35;
  v35(v25, a1, v16);
  v36 = sub_265D59DD0();
  v37 = sub_265D5A080();
  v38 = os_log_type_enabled(v36, v37);
  v113 = v28;
  v101 = v17 + 2;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v114[0] = v93;
    *v39 = 136446722;
    v92 = v37;
    v40 = sub_265D589D0();
    v91 = v36;
    v42 = v41;
    v100 = v2;
    v43 = v34[1];
    v43(v27, v16);
    v44 = sub_265CF4FFC(v40, v42, v114);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2160;
    *(v39 + 14) = 1752392040;
    *(v39 + 22) = 2080;
    sub_265D10E08(&qword_28003E7E8, MEMORY[0x277D53AE0]);
    v45 = sub_265D5A3B0();
    v47 = v46;
    v95 = v43;
    v43(v25, v16);
    v2 = v100;
    v48 = sub_265CF4FFC(v45, v47, v114);

    *(v39 + 24) = v48;
    v49 = v91;
    _os_log_impl(&dword_265C01000, v91, v92, "Activating session: %{public}s, details: %{mask.hash}s", v39, 0x20u);
    v50 = v93;
    swift_arrayDestroy();
    MEMORY[0x266770CF0](v50, -1, -1);
    MEMORY[0x266770CF0](v39, -1, -1);

    v51 = *(v110 + 8);
    v52 = v33;
    v53 = v113;
  }

  else
  {

    v54 = v17[1];
    v54(v25, v16);
    v95 = v54;
    v54(v27, v16);
    v51 = *(v110 + 8);
    v52 = v33;
    v53 = v28;
  }

  v93 = v51;
  v51(v52, v53);
  v55 = v34;
  v56 = v94;
  v57 = v107;
  v58 = v112;
  v112(v94, v107, v16);
  v100 = v55;
  v59 = (v55[7])(v56, 0, 1, v16);
  v60 = v2[69];
  MEMORY[0x28223BE20](v59);
  sub_265D58CA0();
  sub_265D0E6F4(v56);
  v61 = *__swift_project_boxed_opaque_existential_1(v2 + 64, v2[67]);
  sub_265D252F4();
  v62 = v2[80];
  __swift_project_boxed_opaque_existential_1(v2 + 76, v2[79]);
  sub_265D59330();
  v63 = v96;
  sub_265D58A10();
  v64 = sub_265D58190();
  v66 = v65;
  LOBYTE(v62) = v67;
  (*(v97 + 8))(v63, v98);
  if (v62)
  {
    sub_265D58B40();
  }

  else
  {
    sub_265CA4B90(v64, v66, 0);
  }

  v68 = *__swift_project_boxed_opaque_existential_1(v2 + 27, v2[30]);
  sub_265CDAFE4();
  v69 = v111;
  sub_265D595F0();
  v70 = v99;
  v58(v99, v57, v16);
  v71 = sub_265D59DD0();
  v72 = sub_265D5A080();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = v70;
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v114[0] = v75;
    *v74 = 136446210;
    v76 = sub_265D589D0();
    v78 = v77;
    v95(v73, v16);
    v79 = sub_265CF4FFC(v76, v78, v114);
    v58 = v112;

    *(v74 + 4) = v79;
    _os_log_impl(&dword_265C01000, v71, v72, "Activated session with identifier: %{public}s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    MEMORY[0x266770CF0](v75, -1, -1);
    MEMORY[0x266770CF0](v74, -1, -1);

    v80 = v111;
  }

  else
  {

    v95(v70, v16);
    v80 = v69;
  }

  v93(v80, v113);
  v82 = v2[60];
  v81 = v2[61];
  swift_getObjectType();
  v58(v102, v57, v16);
  v83 = v103;
  sub_265D58F30();
  v84 = v105;
  sub_265D58ED0();
  (*(v104 + 8))(v83, v84);
  sub_265D0ECB4();
  v85 = v2[81];
  v86 = v2[82];
  swift_getObjectType();
  v88 = v108;
  v87 = v109;
  v89 = v106;
  (*(v108 + 104))(v106, *MEMORY[0x277D4E058], v109);
  sub_265D58C70();
  return (*(v88 + 8))(v89, v87);
}

uint64_t sub_265D06414()
{
  v1 = v0;
  v2 = sub_265D59040();
  v92 = *(v2 - 8);
  v3 = *(v92 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SessionSystem.State(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v91 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_265D59DE0();
  v93 = *(v95 - 8);
  v9 = *(v93 + 8);
  v10 = MEMORY[0x28223BE20](v95);
  v12 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v89 = v80 - v14;
  MEMORY[0x28223BE20](v13);
  v86 = v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v80 - v18;
  v20 = sub_265D58AC0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v90 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v80 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v80 - v28;
  sub_265D0389C(v19);
  v94 = v21;
  v30 = v21;
  v31 = v20;
  if ((*(v30 + 48))(v19, 1, v20) == 1)
  {
    sub_265CA4AE8(v19, &qword_28003E708, &unk_265D5CCC0);
    sub_265D595F0();
    v32 = sub_265D59DD0();
    v33 = sub_265D5A080();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_265C01000, v32, v33, "No active session to deactivate", v34, 2u);
      MEMORY[0x266770CF0](v34, -1, -1);
    }

    return (*(v93 + 1))(v12, v95);
  }

  else
  {
    v83 = v5;
    v84 = v2;
    v36 = v94;
    (*(v94 + 32))(v29, v19, v20);
    v37 = v86;
    sub_265D595F0();
    v87 = *(v36 + 16);
    v88 = v36 + 16;
    v87(v27, v29, v31);
    v38 = sub_265D59DD0();
    v39 = sub_265D5A080();
    v40 = os_log_type_enabled(v38, v39);
    v85 = v29;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v96[0] = v42;
      *v41 = 136446210;
      v43 = sub_265D589D0();
      v45 = v44;
      v46 = *(v94 + 8);
      v81 = (v94 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v82 = v46;
      v46(v27, v31);
      v47 = sub_265CF4FFC(v43, v45, v96);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_265C01000, v38, v39, "Deactivating session: %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      v48 = v42;
      v29 = v85;
      MEMORY[0x266770CF0](v48, -1, -1);
      MEMORY[0x266770CF0](v41, -1, -1);
    }

    else
    {

      v49 = *(v94 + 8);
      v81 = (v94 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v82 = v49;
      v49(v27, v31);
    }

    v50 = *(v93 + 1);
    v80[1] = (v93 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v93 = v50;
    v50(v37, v95);
    v51 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v52 = v90;
    v87(v90, v29, v31);
    v53 = v1[47];
    v54 = off_287780190[0];
    type metadata accessor for SessionConnectionPool();
    LOBYTE(v53) = v54();
    v55 = type metadata accessor for SessionCompletionAnalyticsEvent();
    v96[3] = v55;
    v96[4] = sub_265D10E08(&qword_28003E8E8, type metadata accessor for SessionCompletionAnalyticsEvent);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v96);
    *boxed_opaque_existential_1Tm = v53;
    v57 = boxed_opaque_existential_1Tm + v55[5];
    sub_265D58A30();
    v58 = boxed_opaque_existential_1Tm + v55[6];
    sub_265D58A60();
    v59 = boxed_opaque_existential_1Tm + v55[7];
    sub_265D589F0();
    v60 = boxed_opaque_existential_1Tm + v55[8];
    sub_265D58A70();
    v61 = boxed_opaque_existential_1Tm + v55[9];
    sub_265D58A80();
    v62 = v82;
    v82(v52, v31);
    sub_265D59000();
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    sub_265D049EC();
    __swift_project_boxed_opaque_existential_1(v1 + 50, v1[53]);
    v63 = off_287780790;
    type metadata accessor for SessionHandshakeCoordinator();
    v63();
    __swift_project_boxed_opaque_existential_1(v1 + 55, v1[58]);
    v64 = off_28777D8D8;
    type metadata accessor for RemoteParticipantHandshakeRegistry();
    v64();
    v65 = v1[62];
    v66 = off_28777DB68[0];
    type metadata accessor for SessionHeartbeatCoordinator();
    v66();
    v67 = *__swift_project_boxed_opaque_existential_1(v1 + 64, v1[67]);
    v68 = v89;
    sub_265D595F0();
    sub_265D59DC0();
    v93(v68, v95);
    v69 = *(v67 + 72);
    *(v67 + 72) = 0;
    swift_unknownObjectRelease();
    v70 = v1[80];
    __swift_project_boxed_opaque_existential_1(v1 + 76, v1[79]);
    sub_265D59320();
    v71 = *__swift_project_boxed_opaque_existential_1(v1 + 27, v1[30]);
    v72 = v85;
    sub_265CDB4A0();
    v73 = v91;
    v74 = (*(v94 + 56))(v91, 1, 1, v31);
    v75 = v1[69];
    MEMORY[0x28223BE20](v74);
    sub_265D58CA0();
    sub_265D0E6F4(v73);
    v77 = v1[60];
    v76 = v1[61];
    swift_getObjectType();
    v87(v52, v72, v31);
    v78 = v83;
    sub_265D59030();
    v79 = v84;
    sub_265D58ED0();
    (*(v92 + 8))(v78, v79);
    return v62(v72, v31);
  }
}

uint64_t *sub_265D06D60()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 42);
  v1 = v0[47];
  swift_unknownObjectRelease();
  v2 = v0[49];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 50);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 55);
  v3 = v0[60];
  swift_unknownObjectRelease();
  v4 = v0[62];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  v5 = v0[69];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 70);
  v6 = v0[75];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 76);
  v7 = v0[81];
  swift_unknownObjectRelease();
  sub_265D0E6F4(v0 + OBJC_IVAR____TtC22SeymourSessionServices13SessionSystem_state);
  return v0;
}

uint64_t sub_265D06E30()
{
  sub_265D06D60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_265D06EB0()
{
  result = type metadata accessor for SessionSystem.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_265D06FD4()
{
  v0 = sub_265D58AC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_265D0702C@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v24 - v3;
  v5 = sub_265D58AC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - v10;
  v12 = sub_265D59DE0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v13 + 8))(v16, v12);
  sub_265D0389C(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_265CA4AE8(v4, &qword_28003E708, &unk_265D5CCC0);
    v17 = sub_265D57FE0();
    sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8]);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D50358], v17);
    *(swift_allocObject() + 16) = v18;
    return sub_265D58940();
  }

  else
  {
    v21 = *(v6 + 32);
    v21(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v23 = swift_allocObject();
    v21((v23 + v22), v9, v5);
    sub_265D58940();
    return (*(v6 + 8))(v11, v5);
  }
}

uint64_t sub_265D07404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v28 = a1;
  v27 = sub_265D58AC0();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v27);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v29);
  v8 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v12 + 8))(v15, v11);
  v16 = v31;
  sub_265D03B04(v10);
  v17 = v27;
  (*(v2 + 16))(v4, v28, v27);
  v18 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  (*(v2 + 32))(v19 + v18, v4, v17);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_265D10BD0;
  *(v20 + 24) = v19;
  v21 = v29;
  (*(v5 + 16))(v8, v10, v29);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + v22, v8, v21);
  v24 = (v23 + ((v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_265CC4B4C;
  v24[1] = v20;

  sub_265D58930();
  return (*(v5 + 8))(v10, v21);
}

uint64_t sub_265D077A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12[1] = a3;
  v5 = sub_265D58AC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_265D049EC();
  __swift_project_boxed_opaque_existential_1((a1 + 400), *(a1 + 424));
  v8 = off_287780790;
  type metadata accessor for SessionHandshakeCoordinator();
  v8();
  sub_265D059D8(a2);
  (*(v6 + 16))(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  return sub_265D58940();
}

uint64_t sub_265D07940@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E260, &unk_265D5EDA0);
  v73 = *(v75 - 8);
  v3 = *(v73 + 64);
  v4 = MEMORY[0x28223BE20](v75);
  v72 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v76 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v9;
  MEMORY[0x28223BE20](v8);
  v78 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v69 - v13;
  v15 = sub_265D58AC0();
  v84 = *(v15 - 8);
  v85 = v15;
  v16 = *(v84 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v17);
  v82 = &v69 - v18;
  v19 = sub_265D59DE0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v69 - v25;
  sub_265D595F0();
  sub_265D59DC0();
  v27 = *(v20 + 8);
  v27(v26, v19);
  v77 = a1;
  if (a1 <= 2u)
  {
    if (a1 < 2u)
    {
      sub_265D595F0();
      v28 = sub_265D59DD0();
      v29 = sub_265D5A070();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_265C01000, v28, v29, "This method should not be called from a non session-host device", v30, 2u);
        MEMORY[0x266770CF0](v30, -1, -1);
      }

      v27(v24, v19);
      v31 = sub_265D57FE0();
      sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8]);
      v32 = swift_allocError();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D50398], v31);
      *(swift_allocObject() + 16) = v32;
      return sub_265D58940();
    }

LABEL_9:
    v34 = 3;
    goto LABEL_11;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      v34 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v34 = 2;
LABEL_11:
  v35 = v83;
  sub_265D0389C(v14);
  v37 = v84;
  v36 = v85;
  if ((*(v84 + 48))(v14, 1, v85) == 1)
  {
    sub_265CA4AE8(v14, &qword_28003E708, &unk_265D5CCC0);
    v38 = sub_265D57FE0();
    sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8]);
    v39 = swift_allocError();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D50358], v38);
    *(swift_allocObject() + 16) = v39;
    return sub_265D58940();
  }

  v71 = v34;
  v42 = v37;
  v70 = *(v37 + 32);
  v43 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v82;
  v70();
  v45 = *__swift_project_boxed_opaque_existential_1((v35 + 400), *(v35 + 424));
  v46 = v77;
  sub_265D537E0(v77, v81);
  (*(v42 + 16))(v43, v44, v36);
  v47 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v48 = swift_allocObject();
  v49 = v36;
  v50 = v48;
  *(v48 + 16) = v83;
  (v70)(v48 + v47, v43, v49);
  v51 = (v50 + v47 + v16);
  *v51 = v46;
  v51[1] = v71;
  v53 = v72;
  v52 = v73;
  v54 = v81;
  v55 = v75;
  (*(v73 + 16))(v72, v81, v75);
  v56 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v57 = swift_allocObject();
  (*(v52 + 32))(v57 + v56, v53, v55);
  v58 = (v57 + ((v3 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v58 = sub_265D106CC;
  v58[1] = v50;

  v59 = v78;
  sub_265D58930();
  (*(v52 + 8))(v54, v55);
  v60 = swift_allocObject();
  *(v60 + 16) = v46;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_265D107A4;
  *(v61 + 24) = v60;
  v63 = v79;
  v62 = v80;
  v64 = v76;
  (*(v79 + 16))(v76, v59, v80);
  v65 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v66 = (v74 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  (*(v63 + 32))(v67 + v65, v64, v62);
  v68 = (v67 + v66);
  *v68 = sub_265D10E50;
  v68[1] = v61;
  sub_265D58930();
  (*(v63 + 8))(v59, v62);
  return (*(v84 + 8))(v82, v85);
}

uint64_t sub_265D08260@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v160) = a5;
  v154 = a4;
  v144 = a3;
  v142 = a6;
  v145 = sub_265D58AC0();
  v152 = *(v145 - 8);
  v147 = *(v152 + 64);
  MEMORY[0x28223BE20](v145);
  v146 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E250, "<Q");
  v137 = *(v138 - 8);
  v136 = *(v137 + 64);
  v9 = MEMORY[0x28223BE20](v138);
  v135 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v133 = &v128 - v11;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v12 = *(v150 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v150);
  v15 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v128 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v143 = &v128 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v134 = &v128 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v139 = &v128 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v140 = &v128 - v26;
  MEMORY[0x28223BE20](v25);
  v141 = &v128 - v27;
  v28 = sub_265D59DE0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1[1];
  v162 = *a1;
  v163 = v33;
  v164 = *(a1 + 4);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v29 + 8))(v32, v28);
  v34 = v144;
  v35 = sub_265D589D0();
  sub_265D04134(v35, v36);

  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  v38 = v163;
  *(v37 + 24) = v162;
  *(v37 + 40) = v38;
  *(v37 + 56) = v164;
  *(v37 + 64) = v160;
  *(v37 + 65) = v154;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_265D10EC0;
  *(v39 + 24) = v37;
  v40 = v12;
  v157 = *(v12 + 16);
  v158 = v12 + 16;
  v41 = v18;
  v42 = v18;
  v43 = v150;
  v157(v15, v41, v150);
  v44 = *(v40 + 80);
  v160 = v44;
  v45 = (v44 + 16) & ~v44;
  v156 = v45;
  v46 = (v13 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v153 = *(v40 + 32);
  v159 = v40 + 32;
  v48 = v47 + v45;
  v49 = v43;
  v153(v48, v15, v43);
  v50 = (v47 + v46);
  *v50 = sub_265D10E6C;
  v50[1] = v39;
  v148 = a2;

  sub_265D0F15C(&v162, v161);
  v51 = v143;
  sub_265D58930();
  v52 = *(v40 + 8);
  v155 = v40 + 8;
  v151 = v52;
  v53 = v42;
  v52(v42, v49);
  v54 = v152;
  v55 = *(v152 + 16);
  v131 = v152 + 16;
  v132 = v55;
  v56 = v146;
  v57 = v34;
  v58 = v145;
  v55(v146, v57, v145);
  v129 = *(v54 + 80);
  v59 = (v129 + 24) & ~v129;
  v60 = v59 + v147;
  v61 = swift_allocObject();
  *(v61 + 16) = a2;
  v62 = *(v54 + 32);
  v152 = v54 + 32;
  v130 = v62;
  v62(v61 + v59, v56, v58);
  *(v61 + v60) = v154;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_265D10EC8;
  *(v63 + 24) = v61;
  v64 = v51;
  v65 = v51;
  v66 = v150;
  v157(v53, v65, v150);
  v149 = v46;
  v67 = swift_allocObject();
  v153(v67 + v156, v53, v66);
  v68 = (v67 + v46);
  *v68 = sub_265CC4B4C;
  v68[1] = v63;
  v69 = v148;

  v70 = v133;
  sub_265D58930();
  v71 = v151;
  v151(v64, v66);
  v72 = swift_allocObject();
  *(v72 + 16) = sub_265D10E78;
  *(v72 + 24) = v69;
  v73 = v137;
  v74 = v135;
  v75 = v70;
  v76 = v138;
  (*(v137 + 16))(v135, v70, v138);
  v77 = v73;
  v78 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v79 = (v136 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v74;
  v82 = v76;
  (*(v77 + 32))(v80 + v78, v81, v76);
  v83 = (v80 + v79);
  *v83 = sub_265D10E70;
  v83[1] = v72;

  v84 = v134;
  sub_265D58930();
  (*(v77 + 8))(v75, v82);
  v85 = swift_allocObject();
  *(v85 + 16) = v69;
  v86 = v69;
  v87 = v163;
  *(v85 + 24) = v162;
  *(v85 + 40) = v87;
  *(v85 + 56) = v164;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_265D10EC4;
  *(v88 + 24) = v85;
  v89 = v143;
  v90 = v150;
  v157(v143, v84, v150);
  v91 = v149;
  v92 = swift_allocObject();
  v153(v92 + v156, v89, v90);
  v93 = (v92 + v91);
  *v93 = sub_265D10E6C;
  v93[1] = v88;

  sub_265D0F15C(&v162, v161);
  v94 = v139;
  sub_265D58930();
  v71(v84, v90);
  v95 = v146;
  v96 = v145;
  v132(v146, v144, v145);
  v97 = (v129 + 16) & ~v129;
  v98 = (v147 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = swift_allocObject();
  v130(v99 + v97, v95, v96);
  *(v99 + v98) = v86;
  v100 = v99 + ((v98 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v100 + 32) = v164;
  v101 = v163;
  *v100 = v162;
  *(v100 + 16) = v101;
  v102 = swift_allocObject();
  *(v102 + 16) = sub_265D10ECC;
  *(v102 + 24) = v99;
  v103 = swift_allocObject();
  *(v103 + 16) = sub_265D10F40;
  *(v103 + 24) = v102;
  v104 = v94;
  v105 = v157;
  v157(v84, v94, v90);
  v106 = v149;
  v107 = swift_allocObject();
  v108 = v156;
  v109 = v84;
  v110 = v153;
  v153(v107 + v156, v109, v90);
  v111 = (v107 + v106);
  *v111 = sub_265D10E50;
  v111[1] = v103;
  v112 = v148;

  sub_265D0F15C(&v162, v161);
  v113 = v140;
  sub_265D58930();
  v151(v104, v90);
  v114 = swift_allocObject();
  *(v114 + 16) = v112;
  v115 = v163;
  *(v114 + 24) = v162;
  *(v114 + 40) = v115;
  *(v114 + 56) = v164;
  v116 = swift_allocObject();
  *(v116 + 16) = sub_265D10EA8;
  *(v116 + 24) = v114;
  v105(v104, v113, v90);
  v117 = v149;
  v118 = swift_allocObject();
  v110(v118 + v108, v104, v90);
  v119 = (v118 + v117);
  *v119 = sub_265D10E50;
  v119[1] = v116;
  v120 = v148;

  sub_265D0F15C(&v162, v161);
  v121 = v141;
  sub_265D58930();
  v122 = v151;
  v151(v113, v90);
  v123 = swift_allocObject();
  *(v123 + 16) = v120;
  *(v123 + 24) = v154;
  v124 = swift_allocObject();
  *(v124 + 16) = sub_265D10E90;
  *(v124 + 24) = v123;
  v157(v113, v121, v90);
  v125 = swift_allocObject();
  v110(v125 + v156, v113, v90);
  v126 = (v125 + v117);
  *v126 = sub_265D10E74;
  v126[1] = v124;

  sub_265D58930();
  return v122(v121, v90);
}

uint64_t sub_265D09094(uint64_t a1, char a2)
{
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  v9 = sub_265D59DD0();
  v10 = sub_265D5A080();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;
    v19 = a2;
    v14 = sub_265D59EC0();
    v16 = sub_265CF4FFC(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_265C01000, v9, v10, "Distributed session participant role request succeeded: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266770CF0](v13, -1, -1);
    MEMORY[0x266770CF0](v12, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_265D09254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = sub_265D583D0();
  v89 = *(v3 - 8);
  v90 = v3;
  v4 = *(v89 + 64);
  MEMORY[0x28223BE20](v3);
  v86 = v5;
  v87 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E260, &unk_265D5EDA0);
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v81 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v91 = *(v10 - 8);
  v92 = v10;
  v11 = *(v91 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v84 = v13;
  v85 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v88 = &v79 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v79 - v17;
  v19 = sub_265D58AC0();
  v97 = *(v19 - 8);
  v98 = v19;
  v20 = *(v97 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v96 = &v79 - v23;
  v24 = sub_265D59DE0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v79 - v30;
  sub_265D595F0();
  sub_265D59DC0();
  v32 = *(v25 + 8);
  v32(v31, v24);
  v94 = a1;
  v33 = sub_265D583C0();
  if ((v34 & 1) == 0)
  {
    v42 = sub_265D58580();
    sub_265D10E08(&qword_28003E220, MEMORY[0x277D52688]);
    v43 = swift_allocError();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D525E8], v42);
    *(swift_allocObject() + 16) = v43;
    return sub_265D58940();
  }

  v35 = v33;
  if (v33 <= 2u)
  {
    if (v33 < 2u)
    {
      sub_265D595F0();
      v36 = sub_265D59DD0();
      v37 = sub_265D5A070();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_265C01000, v36, v37, "This method should not be called from a non session-host device", v38, 2u);
        MEMORY[0x266770CF0](v38, -1, -1);
      }

      v32(v29, v24);
      v39 = sub_265D57FE0();
      sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8]);
      v40 = swift_allocError();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D50398], v39);
      *(swift_allocObject() + 16) = v40;
      return sub_265D58940();
    }

LABEL_11:
    v45 = 3;
    goto LABEL_13;
  }

  if (v33 == 3)
  {
    v45 = 2;
    goto LABEL_13;
  }

  if (v33 != 4)
  {
    goto LABEL_11;
  }

  v45 = 1;
LABEL_13:
  v46 = v95;
  sub_265D0389C(v18);
  v48 = v97;
  v47 = v98;
  if ((*(v97 + 48))(v18, 1, v98) != 1)
  {
    v53 = v46;
    v80 = v45;
    v79 = *(v48 + 32);
    v79(v96, v18, v47);
    v54 = *__swift_project_boxed_opaque_existential_1((v46 + 400), *(v46 + 424));
    sub_265D54900(v94, v93);
    (*(v48 + 16))(v22, v96, v47);
    v55 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v53;
    v79((v56 + v55), v22, v47);
    v57 = (v56 + v55 + v20);
    *v57 = v35;
    v57[1] = v80;
    v59 = v81;
    v58 = v82;
    v60 = v93;
    v61 = v83;
    (*(v82 + 16))(v81, v93, v83);
    v62 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v63 = swift_allocObject();
    (*(v58 + 32))(v63 + v62, v59, v61);
    v64 = (v63 + ((v7 + v62 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v64 = sub_265D0F084;
    v64[1] = v56;

    v65 = v88;
    sub_265D58930();
    (*(v58 + 8))(v60, v61);
    v67 = v89;
    v66 = v90;
    v68 = v87;
    (*(v89 + 16))(v87, v94, v90);
    v69 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v70 = swift_allocObject();
    (*(v67 + 32))(v70 + v69, v68, v66);
    v71 = swift_allocObject();
    *(v71 + 16) = sub_265D0F0C4;
    *(v71 + 24) = v70;
    v73 = v91;
    v72 = v92;
    v74 = v85;
    (*(v91 + 16))(v85, v65, v92);
    v75 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v76 = (v84 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    (*(v73 + 32))(v77 + v75, v74, v72);
    v78 = (v77 + v76);
    *v78 = sub_265D10E50;
    v78[1] = v71;
    sub_265D58930();
    (*(v73 + 8))(v65, v72);
    return (*(v97 + 8))(v96, v98);
  }

  sub_265CA4AE8(v18, &qword_28003E708, &unk_265D5CCC0);
  v49 = sub_265D57FE0();
  sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8]);
  v50 = swift_allocError();
  (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D50358], v49);
  *(swift_allocObject() + 16) = v50;
  return sub_265D58940();
}

uint64_t sub_265D09D00@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v160) = a5;
  v154 = a4;
  v144 = a3;
  v142 = a6;
  v145 = sub_265D58AC0();
  v152 = *(v145 - 8);
  v147 = *(v152 + 64);
  MEMORY[0x28223BE20](v145);
  v146 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E250, "<Q");
  v137 = *(v138 - 8);
  v136 = *(v137 + 64);
  v9 = MEMORY[0x28223BE20](v138);
  v135 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v133 = &v128 - v11;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v12 = *(v150 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v150);
  v15 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v128 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v143 = &v128 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v134 = &v128 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v139 = &v128 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v140 = &v128 - v26;
  MEMORY[0x28223BE20](v25);
  v141 = &v128 - v27;
  v28 = sub_265D59DE0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1[1];
  v162 = *a1;
  v163 = v33;
  v164 = *(a1 + 4);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v29 + 8))(v32, v28);
  v34 = v144;
  v35 = sub_265D589D0();
  sub_265D04134(v35, v36);

  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  v38 = v163;
  *(v37 + 24) = v162;
  *(v37 + 40) = v38;
  *(v37 + 56) = v164;
  *(v37 + 64) = v160;
  *(v37 + 65) = v154;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_265D0F140;
  *(v39 + 24) = v37;
  v40 = v12;
  v157 = *(v12 + 16);
  v158 = v12 + 16;
  v41 = v18;
  v42 = v18;
  v43 = v150;
  v157(v15, v41, v150);
  v44 = *(v40 + 80);
  v160 = v44;
  v45 = (v44 + 16) & ~v44;
  v156 = v45;
  v46 = (v13 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v153 = *(v40 + 32);
  v159 = v40 + 32;
  v48 = v47 + v45;
  v49 = v43;
  v153(v48, v15, v43);
  v50 = (v47 + v46);
  *v50 = sub_265D0F154;
  v50[1] = v39;
  v148 = a2;

  sub_265D0F15C(&v162, v161);
  v51 = v143;
  sub_265D58930();
  v52 = *(v40 + 8);
  v155 = v40 + 8;
  v151 = v52;
  v53 = v42;
  v52(v42, v49);
  v54 = v152;
  v55 = *(v152 + 16);
  v131 = v152 + 16;
  v132 = v55;
  v56 = v146;
  v57 = v34;
  v58 = v145;
  v55(v146, v57, v145);
  v129 = *(v54 + 80);
  v59 = (v129 + 24) & ~v129;
  v60 = v59 + v147;
  v61 = swift_allocObject();
  *(v61 + 16) = a2;
  v62 = *(v54 + 32);
  v152 = v54 + 32;
  v130 = v62;
  v62(v61 + v59, v56, v58);
  *(v61 + v60) = v154;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_265D0F1B8;
  *(v63 + 24) = v61;
  v64 = v51;
  v65 = v51;
  v66 = v150;
  v157(v53, v65, v150);
  v149 = v46;
  v67 = swift_allocObject();
  v153(v67 + v156, v53, v66);
  v68 = (v67 + v46);
  *v68 = sub_265CC4B4C;
  v68[1] = v63;
  v69 = v148;

  v70 = v133;
  sub_265D58930();
  v71 = v151;
  v151(v64, v66);
  v72 = swift_allocObject();
  *(v72 + 16) = sub_265D0F1BC;
  *(v72 + 24) = v69;
  v73 = v137;
  v74 = v135;
  v75 = v70;
  v76 = v138;
  (*(v137 + 16))(v135, v70, v138);
  v77 = v73;
  v78 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v79 = (v136 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v74;
  v82 = v76;
  (*(v77 + 32))(v80 + v78, v81, v76);
  v83 = (v80 + v79);
  *v83 = sub_265D0F1D8;
  v83[1] = v72;

  v84 = v134;
  sub_265D58930();
  (*(v77 + 8))(v75, v82);
  v85 = swift_allocObject();
  *(v85 + 16) = v69;
  v86 = v69;
  v87 = v163;
  *(v85 + 24) = v162;
  *(v85 + 40) = v87;
  *(v85 + 56) = v164;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_265D0F1E0;
  *(v88 + 24) = v85;
  v89 = v143;
  v90 = v150;
  v157(v143, v84, v150);
  v91 = v149;
  v92 = swift_allocObject();
  v153(v92 + v156, v89, v90);
  v93 = (v92 + v91);
  *v93 = sub_265D10E6C;
  v93[1] = v88;

  sub_265D0F15C(&v162, v161);
  v94 = v139;
  sub_265D58930();
  v71(v84, v90);
  v95 = v146;
  v96 = v145;
  v132(v146, v144, v145);
  v97 = (v129 + 16) & ~v129;
  v98 = (v147 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = swift_allocObject();
  v130(v99 + v97, v95, v96);
  *(v99 + v98) = v86;
  v100 = v99 + ((v98 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v100 + 32) = v164;
  v101 = v163;
  *v100 = v162;
  *(v100 + 16) = v101;
  v102 = swift_allocObject();
  *(v102 + 16) = sub_265D0F1EC;
  *(v102 + 24) = v99;
  v103 = swift_allocObject();
  *(v103 + 16) = sub_265D0F204;
  *(v103 + 24) = v102;
  v104 = v94;
  v105 = v157;
  v157(v84, v94, v90);
  v106 = v149;
  v107 = swift_allocObject();
  v108 = v156;
  v109 = v84;
  v110 = v153;
  v153(v107 + v156, v109, v90);
  v111 = (v107 + v106);
  *v111 = sub_265D10E50;
  v111[1] = v103;
  v112 = v148;

  sub_265D0F15C(&v162, v161);
  v113 = v140;
  sub_265D58930();
  v151(v104, v90);
  v114 = swift_allocObject();
  *(v114 + 16) = v112;
  v115 = v163;
  *(v114 + 24) = v162;
  *(v114 + 40) = v115;
  *(v114 + 56) = v164;
  v116 = swift_allocObject();
  *(v116 + 16) = sub_265D0F22C;
  *(v116 + 24) = v114;
  v105(v104, v113, v90);
  v117 = v149;
  v118 = swift_allocObject();
  v110(v118 + v108, v104, v90);
  v119 = (v118 + v117);
  *v119 = sub_265D10E50;
  v119[1] = v116;
  v120 = v148;

  sub_265D0F15C(&v162, v161);
  v121 = v141;
  sub_265D58930();
  v122 = v151;
  v151(v113, v90);
  v123 = swift_allocObject();
  *(v123 + 16) = v120;
  *(v123 + 24) = v154;
  v124 = swift_allocObject();
  *(v124 + 16) = sub_265D0F24C;
  *(v124 + 24) = v123;
  v157(v113, v121, v90);
  v125 = swift_allocObject();
  v110(v125 + v156, v113, v90);
  v126 = (v125 + v117);
  *v126 = sub_265D0F264;
  v126[1] = v124;

  sub_265D58930();
  return v122(v121, v90);
}

uint64_t sub_265D0AB34(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D583D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265D59DE0();
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  (*(v5 + 16))(v8, a2, v4);
  v13 = sub_265D59DD0();
  v14 = sub_265D5A080();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v9;
    v16 = v15;
    v23 = swift_slowAlloc();
    v27 = v23;
    *v16 = 136446210;
    sub_265D10E08(&qword_28003E8F0, MEMORY[0x277D515D0]);
    v17 = sub_265D5A3B0();
    v25 = v2;
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_265CF4FFC(v17, v19, &v27);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_265C01000, v13, v14, "Distributed session participant request succeeded: %{public}s", v16, 0xCu);
    v21 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x266770CF0](v21, -1, -1);
    MEMORY[0x266770CF0](v16, -1, -1);

    return (*(v26 + 8))(v12, v24);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    return (*(v26 + 8))(v12, v9);
  }
}

uint64_t sub_265D0AE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36[1] = a1;
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E208, &qword_265D5D7D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v36 - v13;
  v15 = v2[45];
  v16 = v2[46];
  v36[0] = v2;
  __swift_project_boxed_opaque_existential_1(v2 + 42, v15);
  sub_265D59D20();
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  sub_265D59CF0();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_265D0B3B8;
  *(v17 + 24) = 0;
  (*(v4 + 16))(v7, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v7, v3);
  v20 = (v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_265D0F048;
  v20[1] = v17;
  sub_265D58930();
  (*(v4 + 8))(v9, v3);
  v21 = v37;
  v22 = sub_265D58960();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v22(sub_265CA4BF4, v23);

  (*(v38 + 8))(v14, v21);
  v24 = sub_265D583C0();
  if (v25)
  {
    if (((1 << v24) & 0x34) != 0)
    {
      v26 = *(v36[0] + 376);
      v27 = off_2877801C8[0];
      type metadata accessor for SessionConnectionPool();
      v27();
LABEL_9:
      sub_265D58970();
      return __swift_destroy_boxed_opaque_existential_1Tm(v40);
    }

    if (((1 << v24) & 3) == 0)
    {
      __swift_project_boxed_opaque_existential_1((v36[0] + 560), *(v36[0] + 584));
      v34 = off_28777D928;
      type metadata accessor for SessionRemoteDisplayCoordinator();
      v34();
      goto LABEL_9;
    }

    v31 = sub_265D57FE0();
    sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8]);
    v32 = swift_allocError();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D50348], v31);
    *(swift_allocObject() + 16) = v32;
  }

  else
  {
    v28 = sub_265D58580();
    sub_265D10E08(&qword_28003E220, MEMORY[0x277D52688]);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D525E8], v28);
    *(swift_allocObject() + 16) = v29;
  }

  sub_265D58940();
  return __swift_destroy_boxed_opaque_existential_1Tm(v40);
}

uint64_t sub_265D0B3B8(uint64_t *a1)
{
  v2 = sub_265D58EB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  swift_getObjectType();
  (*(v3 + 104))(v6, *MEMORY[0x277D4E128], v2);
  sub_265D58C80();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_265D0B4D8(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v154 = v143 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v143 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v153 = v143 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v143 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v143 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v143 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = v143 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = v143 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v178 = v143 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v177 = v143 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v176 = v143 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v175 = v143 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v49 = v143 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v174 = v143 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v173 = v143 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v172 = v143 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8);
  v171 = v143 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8);
  v170 = v143 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65 - 8);
  v169 = v143 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68 - 8);
  v168 = v143 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71 - 8);
  v167 = v143 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v75 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74 - 8);
  v166 = v143 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77 - 8);
  v165 = v143 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v81 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80 - 8);
  v164 = v143 - v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v84 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83 - 8);
  v163 = v143 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v87 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86 - 8);
  v162 = v143 - v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v90 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89 - 8);
  v161 = v143 - v91;
  v159 = sub_265D58130();
  v158 = *(v159 - 8);
  v92 = *(v158 + 64);
  MEMORY[0x28223BE20](v159);
  v156 = v143 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_265D585C0();
  v155 = *(v157 - 8);
  v94 = *(v155 + 64);
  MEMORY[0x28223BE20](v157);
  v180 = v143 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E708, &unk_265D5CCC0);
  v97 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96 - 8);
  v99 = v143 - v98;
  v179 = sub_265D58AC0();
  v160 = *(v179 - 8);
  v100 = *(v160 + 64);
  result = MEMORY[0x28223BE20](v179);
  v103 = v143 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v3)
  {
    v104 = *(v2 + 376);
    v148 = v17;
    v151 = v49;
    v105 = v33;
    v152 = v29;
    v150 = v25;
    v106 = off_287780190[0];
    v149 = v103;
    type metadata accessor for SessionConnectionPool();
    result = v106();
    v107 = v151;
    v108 = v150;
    v109 = v152;
    if (!result)
    {
      v147 = v10;
      sub_265D0389C(v99);
      v110 = v160;
      if ((*(v160 + 48))(v99, 1, v179) == 1)
      {
        return sub_265CA4AE8(v99, &qword_28003E708, &unk_265D5CCC0);
      }

      else
      {
        (*(v110 + 32))();
        sub_265D5A030();
        sub_265D585A0();
        v144 = sub_265D5A4C0();
        v146 = sub_265D589D0();
        v145 = v111;
        v112 = sub_265D58020();
        (*(*(v112 - 8) + 56))(v161, 1, 1, v112);
        v113 = sub_265D58410();
        (*(*(v113 - 8) + 56))(v162, 1, 1, v113);
        v114 = sub_265D58590();
        (*(*(v114 - 8) + 56))(v163, 1, 1, v114);
        v115 = sub_265D58050();
        (*(*(v115 - 8) + 56))(v164, 1, 1, v115);
        v116 = sub_265D58200();
        (*(*(v116 - 8) + 56))(v165, 1, 1, v116);
        v117 = sub_265D58BC0();
        (*(*(v117 - 8) + 56))(v166, 1, 1, v117);
        v118 = sub_265D583E0();
        (*(*(v118 - 8) + 56))(v167, 1, 1, v118);
        v119 = sub_265D581B0();
        (*(*(v119 - 8) + 56))(v168, 1, 1, v119);
        v120 = sub_265D57F50();
        (*(*(v120 - 8) + 56))(v169, 1, 1, v120);
        v121 = sub_265D582A0();
        (*(*(v121 - 8) + 56))(v170, 1, 1, v121);
        v122 = sub_265D58680();
        (*(*(v122 - 8) + 56))(v171, 1, 1, v122);
        v123 = sub_265D58210();
        (*(*(v123 - 8) + 56))(v172, 1, 1, v123);
        v124 = sub_265D57E80();
        (*(*(v124 - 8) + 56))(v173, 1, 1, v124);
        v125 = sub_265D58430();
        (*(*(v125 - 8) + 56))(v174, 1, 1, v125);
        v126 = sub_265D58300();
        (*(*(v126 - 8) + 56))(v107, 1, 1, v126);
        v127 = sub_265D586F0();
        (*(*(v127 - 8) + 56))(v175, 1, 1, v127);
        v128 = sub_265D57E90();
        (*(*(v128 - 8) + 56))(v176, 1, 1, v128);
        v129 = sub_265D581C0();
        (*(*(v129 - 8) + 56))(v177, 1, 1, v129);
        v130 = sub_265D58BB0();
        (*(*(v130 - 8) + 56))(v178, 1, 1, v130);
        v131 = v148;
        v143[1] = v2;
        v132 = v110;
        v133 = v155;
        v134 = v157;
        (*(v155 + 16))(v105, v180, v157);
        (*(v133 + 56))(v105, 0, 1, v134);
        v135 = sub_265D57EA0();
        (*(*(v135 - 8) + 56))(v109, 1, 1, v135);
        v136 = sub_265D57ED0();
        (*(*(v136 - 8) + 56))(v108, 1, 1, v136);
        v137 = sub_265D58240();
        (*(*(v137 - 8) + 56))(v21, 1, 1, v137);
        v138 = sub_265D58400();
        (*(*(v138 - 8) + 56))(v131, 1, 1, v138);
        v139 = sub_265D58600();
        (*(*(v139 - 8) + 56))(v153, 1, 1, v139);
        v140 = sub_265D58630();
        (*(*(v140 - 8) + 56))(v147, 1, 1, v140);
        v141 = sub_265D58B10();
        (*(*(v141 - 8) + 56))(v154, 1, 1, v141);
        sub_265D5A030();
        v142 = v156;
        sub_265D580B0();
        sub_265D01B9C(v142, 0);
        sub_265D06414();
        (*(v158 + 8))(v142, v159);
        (*(v133 + 8))(v180, v134);
        return (*(v132 + 8))(v149, v179);
      }
    }
  }

  return result;
}

uint64_t sub_265D0C8D0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v137) = a2;
  v129 = a3;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E250, "<Q");
  v125 = *(v126 - 8);
  v4 = *(v125 + 64);
  v5 = MEMORY[0x28223BE20](v126);
  v123 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v141 = &v114 - v8;
  v122 = v9;
  MEMORY[0x28223BE20](v7);
  v124 = &v114 - v10;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v150 = *(v144 - 8);
  v11 = *(v150 + 64);
  v12 = MEMORY[0x28223BE20](v144);
  v119 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v145 = &v114 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v127 = &v114 - v17;
  v135 = v18;
  MEMORY[0x28223BE20](v16);
  v128 = &v114 - v19;
  v20 = sub_265D58AC0();
  v148 = *(v20 - 8);
  v149 = v20;
  v21 = *(v148 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v142 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v23;
  MEMORY[0x28223BE20](v22);
  v143 = &v114 - v24;
  v25 = sub_265D58670();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = MEMORY[0x28223BE20](v25);
  v136 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v114 - v30;
  v32 = sub_265D59DE0();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v114 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  v37 = v26[2];
  v140 = a1;
  v138 = v25;
  v134 = v37;
  v37(v31, a1, v25);
  v38 = sub_265D59DD0();
  v39 = sub_265D5A080();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v132 = v32;
    v41 = v40;
    v131 = swift_slowAlloc();
    v152[0] = v131;
    *v41 = 136446210;
    sub_265D10E08(&qword_28003E8C0, MEMORY[0x277D52DA0]);
    v42 = v138;
    v43 = sub_265D5A3B0();
    v133 = v26;
    v44 = v33;
    v46 = v45;
    (*(v133 + 1))(v31, v42);
    v47 = sub_265CF4FFC(v43, v46, v152);

    *(v41 + 4) = v47;
    _os_log_impl(&dword_265C01000, v38, v39, "Handling distributed session activation request %{public}s", v41, 0xCu);
    v48 = v131;
    __swift_destroy_boxed_opaque_existential_1Tm(v131);
    MEMORY[0x266770CF0](v48, -1, -1);
    MEMORY[0x266770CF0](v41, -1, -1);

    (*(v44 + 8))(v36, v132);
    v26 = v133;
  }

  else
  {

    (v26[1])(v31, v138);
    (*(v33 + 8))(v36, v32);
  }

  v49 = v142;
  v50 = v140;
  sub_265D58660();
  sub_265D58640();
  v51 = v143;
  sub_265D589B0();
  v52 = v148;
  v53 = *(v148 + 8);
  v120 = v148 + 8;
  v121 = v53;
  v54 = v149;
  v53(v49, v149);
  v55 = v147;
  sub_265D03B04(v145);
  v56 = v136;
  v57 = v138;
  v134(v136, v50, v138);
  v130 = *(v52 + 16);
  v140 = v52 + 16;
  v58 = v49;
  v130(v49, v51, v54);
  v59 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v118 = *(v52 + 80);
  v60 = v52;
  v61 = (v139 + v118 + v59) & ~v118;
  v139 = v118 | 7;
  v62 = swift_allocObject();
  *(v62 + 16) = v137;
  *(v62 + 24) = v55;
  (v26[4])(v62 + v59, v56, v57);
  v63 = *(v60 + 32);
  v148 = v60 + 32;
  v136 = v63;
  (v63)(v62 + v61, v58, v54);
  v64 = swift_allocObject();
  *(v64 + 16) = sub_265D0E750;
  *(v64 + 24) = v62;
  v65 = v150;
  v66 = *(v150 + 16);
  v137 = v150 + 16;
  v138 = v66;
  v67 = v119;
  v69 = v144;
  v68 = v145;
  v66(v119, v145, v144);
  v70 = *(v65 + 80);
  v134 = v70;
  v71 = (v70 + 16) & ~v70;
  v132 = v71;
  v72 = (v135 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v117 = v72;
  v73 = swift_allocObject();
  v74 = *(v65 + 32);
  v131 = (v65 + 32);
  v133 = v74;
  v74(v73 + v71, v67, v69);
  v75 = (v73 + v72);
  *v75 = sub_265CC3740;
  v75[1] = v64;

  v76 = v141;
  sub_265D58930();
  v77 = *(v65 + 8);
  v150 = v65 + 8;
  v135 = v77;
  v77(v68, v69);
  v78 = *__swift_project_boxed_opaque_existential_1((v55 + 96), *(v55 + 120));
  v152[3] = type metadata accessor for AppRequirementCoordinator(0);
  v152[4] = &off_28777FBC0;
  v152[0] = v78;
  sub_265C97624(v152, &v151);
  v116 = swift_allocObject();
  sub_265C033C4(&v151, v116 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm(v152);
  v79 = v125;
  v119 = *(v125 + 16);
  v80 = v123;
  v81 = v126;
  (v119)(v123, v76, v126);
  v82 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v115 = v82;
  v83 = (v122 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  v122 = *(v79 + 32);
  v122(v84 + v82, v80, v81);
  v85 = (v84 + v83);
  v86 = v116;
  *v85 = sub_265D0E854;
  v85[1] = v86;
  v87 = v124;
  sub_265D58930();
  v125 = *(v79 + 8);
  v88 = v141;
  (v125)(v141, v81);
  v89 = *(v147 + 392);
  (v119)(v88, v87, v81);
  v90 = swift_allocObject();
  v122(v90 + v115, v88, v81);
  v91 = (v90 + v83);
  *v91 = sub_265D0E8C4;
  v91[1] = v89;

  v92 = v127;
  sub_265D58930();
  (v125)(v87, v81);
  v94 = v142;
  v93 = v143;
  v95 = v149;
  v130(v142, v143, v149);
  v96 = (v118 + 24) & ~v118;
  v97 = swift_allocObject();
  v98 = v147;
  *(v97 + 16) = v147;
  (v136)(v97 + v96, v94, v95);
  v99 = swift_allocObject();
  *(v99 + 16) = sub_265D0E8F0;
  *(v99 + 24) = v97;
  v100 = swift_allocObject();
  *(v100 + 16) = sub_265D0E954;
  *(v100 + 24) = v99;
  v102 = v144;
  v101 = v145;
  v138(v145, v92, v144);
  v103 = v117;
  v104 = swift_allocObject();
  v133(v104 + v132, v101, v102);
  v105 = (v104 + v103);
  *v105 = sub_265CC49C0;
  v105[1] = v100;

  v106 = v128;
  sub_265D58930();
  v135(v92, v102);
  v107 = v149;
  v130(v94, v93, v149);
  v108 = swift_allocObject();
  *(v108 + 16) = v98;
  (v136)(v108 + v96, v94, v107);
  v109 = swift_allocObject();
  *(v109 + 16) = sub_265D0EA38;
  *(v109 + 24) = v108;
  v110 = swift_allocObject();
  *(v110 + 16) = sub_265D10F28;
  *(v110 + 24) = v109;
  v138(v92, v106, v102);
  v111 = swift_allocObject();
  v133(v111 + v132, v92, v102);
  v112 = (v111 + v103);
  *v112 = sub_265D10E50;
  v112[1] = v110;

  sub_265D58930();
  v135(v106, v102);
  return v121(v93, v107);
}

uint64_t sub_265D0D7B4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a3;
  v36 = sub_265D58AC0();
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v36);
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) >= 3u)
  {
    sub_265D595F0();
    v21 = sub_265D59DD0();
    v22 = sub_265D5A070();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136446210;
      if (a1)
      {
        v25 = 0xD000000000000010;
      }

      else
      {
        v25 = 0x7665446C61636F6CLL;
      }

      if (a1)
      {
        v26 = 0x8000000265D5FC40;
      }

      else
      {
        v26 = 0xEB00000000656369;
      }

      v27 = sub_265CF4FFC(v25, v26, &v37);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_265C01000, v21, v22, "Unexpected request for distributed session from: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x266770CF0](v24, -1, -1);
      MEMORY[0x266770CF0](v23, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    v28 = sub_265D57FE0();
    sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8]);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D50348], v28);
    *(swift_allocObject() + 16) = v29;
  }

  else
  {
    v16 = *(a2 + 376);
    v34 = a5;
    v17 = v36;
    v32[1] = a1;
    v33 = a4;
    v18 = off_287780198[0];
    type metadata accessor for SessionConnectionPool();
    v18();
    sub_265D58640();
    off_2877801B0();
    (*(v9 + 16))(v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v17);
    v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v20 = swift_allocObject();
    (*(v9 + 32))(v20 + v19, v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  }

  return sub_265D58940();
}

uint64_t sub_265D0DC0C(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_265D58AC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265D59470();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 480);
  v14 = *(a1 + 488);
  swift_getObjectType();
  (*(v4 + 16))(v7, v17, v3);
  sub_265D59460();
  sub_265D58ED0();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_265D0DDB8(uint64_t *a1)
{
  v2 = sub_265D58EB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  swift_getObjectType();
  (*(v3 + 104))(v6, *MEMORY[0x277D4E040], v2);
  sub_265D58130();
  sub_265D58C70();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_265D0DEFC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v34 - v4;
  v5 = sub_265D58EB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265D59DE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  v15 = *(v11 + 8);
  v36 = v14;
  v37 = v11 + 8;
  v38 = v10;
  v35 = v15;
  v15(v14, v10);
  v39 = v1;
  v16 = *(v1 + 376);
  v17 = off_2877801D0[0];
  type metadata accessor for SessionConnectionPool();
  result = v17();
  v43 = *(result + 16);
  v44 = result;
  if (v43)
  {
    v19 = 0;
    v20 = *MEMORY[0x277D4E128];
    v21 = (v6 + 104);
    v22 = (v6 + 8);
    v23 = (v44 + 40);
    while (v19 < *(v44 + 16))
    {
      ++v19;
      v24 = *(v23 - 1);
      v25 = *v23;
      swift_getObjectType();
      (*v21)(v9, v20, v5);
      swift_unknownObjectRetain();
      sub_265D58C80();
      swift_unknownObjectRelease();
      result = (*v22)(v9, v5);
      v23 += 3;
      if (v43 == v19)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v26 = v39;
    sub_265D06414();
    v27 = *(v26 + 392);
    v28 = v36;
    sub_265D595E0();
    sub_265D59DC0();
    v35(v28, v38);
    v29 = *(v27 + 56);
    sub_265D58CA0();
    v30 = v40;
    sub_265D58970();
    v31 = v42;
    v32 = sub_265D58960();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v32(sub_265CA442C, v33);

    return (*(v41 + 8))(v30, v31);
  }

  return result;
}

void sub_265D0E334(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  v9 = *(v5 + 8);
  v9(v8, v4);
  v10 = *__swift_project_boxed_opaque_existential_1((v2 + 96), *(v2 + 120));
  sub_265D595E0();
  sub_265D59DC0();
  v9(v8, v4);
  v11 = sub_265D57FE0();
  sub_265D10E08(&qword_28003E8C8, MEMORY[0x277D503C8]);
  v12 = swift_allocError();
  (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D503A8], v11);
  sub_265D2AAC8(v12, 1, a1);
}

uint64_t sub_265D0E550()
{
  v1 = sub_265D59DE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_265D595F0();
  sub_265D59DC0();
  (*(v2 + 8))(v5, v1);
  v7 = *(v6 + 392);
  v8 = sub_265D580D0();
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v10;
  sub_265D58AC0();

  return sub_265D58940();
}

uint64_t sub_265D0E6F4(uint64_t a1)
{
  v2 = type metadata accessor for SessionSystem.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D0E750@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_265D58670() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_265D58AC0() - 8);
  v7 = *(v1 + 24);
  v8 = *(v1 + 16);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_265D0D7B4(v8, v7, v1 + v4, v9, a1);
}

uint64_t sub_265D0E8F0()
{
  v1 = *(sub_265D58AC0() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  return sub_265D059D8(v2);
}

uint64_t sub_265D0E954()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_265D0E984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  return sub_265D58930();
}

uint64_t sub_265D0EA38()
{
  v1 = *(sub_265D58AC0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_265D0DC0C(v2, v3);
}

void sub_265D0EA9C(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr))
{
  a3(&v5);
  v4 = v5;
  v6 = 0;
  a1(&v5);

  sub_265CA4470(v4, 0);
}

uint64_t sub_265D0EB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = *a1;
  *(v7 + 48) = v6;

  swift_unknownObjectRetain();

  return sub_265D58930();
}

void sub_265D0EC10(void (*a1)(__int128 *), uint64_t a2, void (*a3)(void **__return_ptr, __int128 *), uint64_t a4, __int128 *a5)
{
  v6 = *(a5 + 2);
  v8 = *a5;
  v9 = v6;
  a3(&v10, &v8);
  v7 = v10;
  *&v8 = v10;
  BYTE8(v8) = 0;
  a1(&v8);

  sub_265CA4470(v7, 0);
}

uint64_t sub_265D0ECB4()
{
  v0 = sub_265D59DE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v1 + 8))(v4, v0);
  sub_265D59420();
  LODWORD(v0) = sub_265D593D0();
  v5 = sub_265D58D80();
  notify_set_state(v0, v5);
  sub_265D593C0();
  v6 = sub_265D59EE0();

  notify_post((v6 + 32));
}

uint64_t sub_265D0EE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionSystem.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D0EE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionSystem.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_265D0EEE0()
{
  result = qword_28003E8D0;
  if (!qword_28003E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E8D0);
  }

  return result;
}

uint64_t sub_265D0EF68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices13SessionSystem_state;
  swift_beginAccess();
  return sub_265D0EE7C(v1 + v3, a1);
}

uint64_t sub_265D0EFC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionSystem.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D0F204()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_265D0F294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v147 = a4;
  v163 = a2;
  v159 = a1;
  v4 = sub_265D58EB0();
  v161 = *(v4 - 8);
  v162 = v4;
  v5 = *(v161 + 64);
  MEMORY[0x28223BE20](v4);
  v160 = v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v158 = v137 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v157 = v137 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v156 = v137 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v155 = v137 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v154 = v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v153 = v137 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v152 = v137 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v151 = v137 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v150 = v137 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v174 = v137 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v173 = v137 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v172 = v137 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v171 = v137 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v170 = v137 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v169 = v137 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v168 = v137 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v167 = v137 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  v166 = v137 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8);
  v64 = v137 - v63;
  v137[1] = v137 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65 - 8);
  v68 = v137 - v67;
  v137[2] = v137 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69 - 8);
  v72 = v137 - v71;
  v137[3] = v137 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73 - 8);
  v76 = v137 - v75;
  v137[4] = v137 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77 - 8);
  v80 = v137 - v79;
  v139 = v137 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81 - 8);
  v84 = v137 - v83;
  v140 = v137 - v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85 - 8);
  v88 = v137 - v87;
  v141 = v137 - v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v90 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89 - 8);
  v92 = v137 - v91;
  v142 = v137 - v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v94 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93 - 8);
  v96 = v137 - v95;
  v143 = v137 - v95;
  v148 = sub_265D58130();
  v149 = *(v148 - 8);
  v97 = *(v149 + 64);
  MEMORY[0x28223BE20](v148);
  v146 = v137 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_265D57ED0();
  v138 = *(v164 - 8);
  v99 = *(v138 + 64);
  MEMORY[0x28223BE20](v164);
  v165 = v137 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D5A030();
  v175 = 1;
  sub_265D57EB0();
  v144 = sub_265D5A4C0();
  v147 = sub_265D589D0();
  v145 = v101;
  v102 = sub_265D58020();
  (*(*(v102 - 8) + 56))(v96, 1, 1, v102);
  v103 = sub_265D58410();
  (*(*(v103 - 8) + 56))(v92, 1, 1, v103);
  v104 = sub_265D58590();
  (*(*(v104 - 8) + 56))(v88, 1, 1, v104);
  v105 = sub_265D58050();
  (*(*(v105 - 8) + 56))(v84, 1, 1, v105);
  v106 = sub_265D58200();
  (*(*(v106 - 8) + 56))(v80, 1, 1, v106);
  v107 = sub_265D58BC0();
  (*(*(v107 - 8) + 56))(v76, 1, 1, v107);
  v108 = sub_265D583E0();
  (*(*(v108 - 8) + 56))(v72, 1, 1, v108);
  v109 = sub_265D581B0();
  (*(*(v109 - 8) + 56))(v68, 1, 1, v109);
  v110 = sub_265D57F50();
  (*(*(v110 - 8) + 56))(v64, 1, 1, v110);
  v111 = sub_265D582A0();
  (*(*(v111 - 8) + 56))(v166, 1, 1, v111);
  v112 = sub_265D58680();
  (*(*(v112 - 8) + 56))(v167, 1, 1, v112);
  v113 = sub_265D58210();
  (*(*(v113 - 8) + 56))(v168, 1, 1, v113);
  v114 = sub_265D57E80();
  (*(*(v114 - 8) + 56))(v169, 1, 1, v114);
  v115 = sub_265D58430();
  (*(*(v115 - 8) + 56))(v170, 1, 1, v115);
  v116 = sub_265D58300();
  (*(*(v116 - 8) + 56))(v171, 1, 1, v116);
  v117 = sub_265D586F0();
  (*(*(v117 - 8) + 56))(v172, 1, 1, v117);
  v118 = sub_265D57E90();
  (*(*(v118 - 8) + 56))(v173, 1, 1, v118);
  v119 = sub_265D581C0();
  (*(*(v119 - 8) + 56))(v174, 1, 1, v119);
  v120 = sub_265D58BB0();
  (*(*(v120 - 8) + 56))(v150, 1, 1, v120);
  v121 = sub_265D585C0();
  (*(*(v121 - 8) + 56))(v151, 1, 1, v121);
  v122 = sub_265D57EA0();
  (*(*(v122 - 8) + 56))(v152, 1, 1, v122);
  v123 = v138;
  v124 = v153;
  v125 = v164;
  (*(v138 + 16))(v153, v165, v164);
  (*(v123 + 56))(v124, 0, 1, v125);
  v126 = sub_265D58240();
  (*(*(v126 - 8) + 56))(v154, 1, 1, v126);
  v127 = sub_265D58400();
  (*(*(v127 - 8) + 56))(v155, 1, 1, v127);
  v128 = sub_265D58600();
  (*(*(v128 - 8) + 56))(v156, 1, 1, v128);
  v129 = sub_265D58630();
  (*(*(v129 - 8) + 56))(v157, 1, 1, v129);
  v130 = sub_265D58B10();
  (*(*(v130 - 8) + 56))(v158, 1, 1, v130);
  sub_265D5A030();
  v131 = v146;
  sub_265D580B0();
  swift_getObjectType();
  v132 = v160;
  v133 = v161;
  v134 = v162;
  (*(v161 + 104))(v160, *MEMORY[0x277D4E040], v162);
  v135 = v148;
  sub_265D58C70();
  (*(v133 + 8))(v132, v134);
  (*(v149 + 8))(v131, v135);
  return (*(v123 + 8))(v165, v164);
}

uint64_t objectdestroy_111Tm()
{
  v1 = sub_265D58AC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 2, v3 | 7);
}

uint64_t sub_265D106E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(sub_265D58AC0() - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v2 + 16);
  v8 = v2 + ((v5 + 24) & ~v5);
  v9 = *(v8 + v6 + 1);
  v10 = *(v8 + v6);

  return a2(a1, v7);
}

uint64_t objectdestroy_142Tm()
{
  v1 = sub_265D58AC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

void sub_265D10888(uint64_t a1@<X8>)
{
  v3 = *(sub_265D58AC0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v6 = *(v5 + *(v3 + 64));
  __swift_project_boxed_opaque_existential_1((v4 + 176), *(v4 + 200));
  sub_265D26244(v5, v6, a1);
}

uint64_t objectdestroy_171Tm()
{
  v1 = sub_265D58AC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v6 + 40, v3 | 7);
}

uint64_t sub_265D109E0()
{
  v1 = *(sub_265D58AC0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265D050CC(v0 + v2, *(v0 + v3), (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_132Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

id sub_265D10AC8(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  sub_265D04B60(v3);
  swift_willThrow();
  return a1;
}

uint64_t objectdestroy_35Tm()
{
  v1 = sub_265D58AC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265D10BD0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_265D58AC0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_265D077A8(v4, v5, a1);
}

uint64_t sub_265D10C44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_68Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_265D10E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265D10F80()
{
  v0 = sub_265D58AC0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265D58F20();
    sub_265D1108C(v4);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

void sub_265D1108C(uint64_t a1)
{
  v55 = a1;
  v56 = sub_265D58AC0();
  v2 = *(v56 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v56);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - v7;
  v9 = sub_265D59DE0();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  v54 = v1;
  v19 = *(v1 + 80);
  v20 = off_287780190[0];
  type metadata accessor for SessionConnectionPool();
  v21 = v20();
  if (v21 > 2u)
  {
LABEL_4:
    sub_265D59600();
    v22 = sub_265D59DD0();
    v23 = sub_265D5A080();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v60 = v25;
      *v24 = 136446210;
      v59 = v21;
      v26 = sub_265D59EC0();
      v28 = sub_265CF4FFC(v26, v27, &v60);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_265C01000, v22, v23, "Unsupported multiplex mode for remote key delivery coordinator: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x266770CF0](v25, -1, -1);
      MEMORY[0x266770CF0](v24, -1, -1);
    }

    (*(v57 + 8))(v13, v58);
    return;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      goto LABEL_4;
    }

    sub_265D59600();
    v40 = v2;
    v41 = *(v2 + 16);
    v42 = v56;
    v41(v6, v55, v56);
    v43 = sub_265D59DD0();
    v44 = sub_265D5A080();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v60 = v46;
      *v45 = 136446210;
      sub_265D1DF34(&qword_28003E7E8, MEMORY[0x277D53AE0]);
      v47 = sub_265D5A3B0();
      v49 = v48;
      (*(v40 + 8))(v6, v42);
      v50 = sub_265CF4FFC(v47, v49, &v60);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_265C01000, v43, v44, "Session %{public}s activated on participant client, waiting for connection pool to update for Remote Key Delivery", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266770CF0](v46, -1, -1);
      MEMORY[0x266770CF0](v45, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v6, v42);
    }

    (*(v57 + 8))(v16, v58);
  }

  else
  {
    sub_265D59600();
    v29 = v2;
    v30 = *(v2 + 16);
    v31 = v56;
    v30(v8, v55, v56);
    v32 = sub_265D59DD0();
    v33 = sub_265D5A080();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v60 = v35;
      *v34 = 136446210;
      sub_265D1DF34(&qword_28003E7E8, MEMORY[0x277D53AE0]);
      v36 = sub_265D5A3B0();
      v38 = v37;
      (*(v29 + 8))(v8, v31);
      v39 = sub_265CF4FFC(v36, v38, &v60);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_265C01000, v32, v33, "Session %{public}s activated on display host, making reverse connection for Remote Key Delivery", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x266770CF0](v35, -1, -1);
      MEMORY[0x266770CF0](v34, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v8, v31);
    }

    (*(v57 + 8))(v18, v58);
    v51 = *(v54 + 184);
    v52 = *(*v51 + *MEMORY[0x277D841D0] + 16);
    v53 = (*(*v51 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v51 + v53));
    sub_265D1DF7C((v51 + v52));
    os_unfair_lock_unlock((v51 + v53));
  }
}

uint64_t sub_265D116E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D58AC0();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265D59040();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265D59DE0();
  v34 = *(v13 - 8);
  v35 = v13;
  v14 = *(v34 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  (*(v9 + 16))(v12, a1, v8);
  v17 = sub_265D59DD0();
  v18 = sub_265D5A080();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = v18;
    v20 = v19;
    v30 = swift_slowAlloc();
    v36 = v30;
    *v20 = 136446210;
    sub_265D59020();
    sub_265D1DF34(&qword_28003E7E8, MEMORY[0x277D53AE0]);
    v21 = sub_265D5A3B0();
    v32 = a2;
    v23 = v22;
    (*(v33 + 8))(v7, v4);
    (*(v9 + 8))(v12, v8);
    v24 = sub_265CF4FFC(v21, v23, &v36);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_265C01000, v17, v31, "Deactivating Remote Key Delivery Participant Coordinator for %{public}s", v20, 0xCu);
    v25 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x266770CF0](v25, -1, -1);
    MEMORY[0x266770CF0](v20, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  (*(v34 + 8))(v16, v35);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = *(result + 184);
    v28 = *(*v27 + *MEMORY[0x277D841D0] + 16);
    v29 = (*(*v27 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v27 + v29));
    sub_265D136E0(v27 + v28);
    os_unfair_lock_unlock((v27 + v29));
  }

  return result;
}

uint64_t sub_265D11AE4()
{
  v0 = sub_265D59DE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59600();
  v5 = sub_265D59DD0();
  v6 = sub_265D5A080();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_265C01000, v5, v6, "Deactivating Remote Key Delivery Participant Coordinator for distributed session", v7, 2u);
    MEMORY[0x266770CF0](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 184);
    v10 = *(*v9 + *MEMORY[0x277D841D0] + 16);
    v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v9 + v11));
    sub_265D136E0(v9 + v10);
    os_unfair_lock_unlock((v9 + v11));
  }

  return result;
}

uint64_t sub_265D11CB8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265D11D10();
  }

  return result;
}

void sub_265D11D10()
{
  v1 = v0;
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + 80);
  v8 = off_287780190[0];
  type metadata accessor for SessionConnectionPool();
  v9 = v8();
  if (((1 << v9) & 0x1A) != 0)
  {
    v10 = v9;
    sub_265D59600();
    v11 = sub_265D59DD0();
    v12 = sub_265D5A080();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446210;
      v21[15] = v10;
      v15 = sub_265D59EC0();
      v17 = sub_265CF4FFC(v15, v16, &v22);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_265C01000, v11, v12, "Unsupported multiplex mode for remote key delivery coordinator to transition to connecting: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x266770CF0](v14, -1, -1);
      MEMORY[0x266770CF0](v13, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v18 = *(v1 + 184);
    v19 = *(*v18 + *MEMORY[0x277D841D0] + 16);
    v20 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v18 + v20));
    sub_265D1D8DC((v18 + v19));

    os_unfair_lock_unlock((v18 + v20));
  }
}

uint64_t sub_265D11FA0(char *a1)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RemoteKeyDeliveryParticipantCoordinator.State();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_265D1D0DC(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_265D1D140(v10);
  }

  sub_265D1D140(a1);
  v12 = *v10;
  sub_265D59600();
  sub_265D59DC0();
  (*(v3 + 8))(v6, v2);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E918, &qword_265D5D900) + 48);
  *a1 = v12;
  v14 = sub_265D58520();
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  swift_storeEnumTagMultiPayload();

  sub_265D59160();
}

uint64_t sub_265D121E8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E208, &qword_265D5D7D0);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v2[9] = *(v4 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = sub_265D59DE0();
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v7 = *(v6 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D12330, 0, 0);
}

uint64_t sub_265D12330()
{
  v1 = v0[15];
  sub_265D59600();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_265C01000, v2, v3, "Brokering remote key delivery connection...", v4, 2u);
    MEMORY[0x266770CF0](v4, -1, -1);
  }

  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];
  v22 = v0[9];
  v23 = v0[12];
  v12 = v0[6];
  v11 = v0[7];

  (*(v5 + 8))(v6, v7);
  sub_265D12884(v8);
  (*(v10 + 16))(v9, v8, v11);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v9, v11);
  v15 = (v14 + ((v22 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_265D1D994;
  v15[1] = v12;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
  sub_265D58930();
  v17 = *(v10 + 8);
  v0[16] = v17;
  v0[17] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v8, v11);
  v18 = swift_task_alloc();
  v0[18] = v18;
  *(v18 + 16) = "SeymourSessionServices/RemoteKeyDeliveryParticipantCoordinator.swift";
  *(v18 + 24) = 68;
  *(v18 + 32) = 2;
  *(v18 + 40) = 131;
  *(v18 + 48) = v23;
  v19 = *(MEMORY[0x277D85A40] + 4);
  v20 = swift_task_alloc();
  v0[19] = v20;
  *v20 = v0;
  v20[1] = sub_265D12600;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x8000000265D61700, sub_265D1D9C4, v18, v16);
}

uint64_t sub_265D12600()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(v2 + 160) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D127E4, 0, 0);
  }

  else
  {
    v7 = *(v2 + 128);
    v6 = *(v2 + 136);
    v8 = *(v2 + 120);
    v10 = *(v2 + 88);
    v9 = *(v2 + 96);
    v17 = *(v2 + 80);
    v11 = *(v2 + 56);
    v12 = *(v2 + 32);
    v13 = *(v2 + 40);
    v16 = *(v2 + 16);

    *v13 = v16;
    *(v13 + 16) = v12;
    v7(v9, v11);

    v14 = *(v4 + 8);

    return v14();
  }
}

uint64_t sub_265D127E4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = *(v0 + 80);
  (*(v0 + 128))(*(v0 + 96), *(v0 + 56));

  v5 = *(v0 + 8);
  v6 = *(v0 + 160);

  return v5();
}

uint64_t sub_265D12884@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_265D59DE0();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 8);
  MEMORY[0x28223BE20](v2);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v50 - v7;
  v9 = sub_265D59BA0();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  v15 = v1;
  v16 = *(v1 + 80);
  v17 = off_287780190[0];
  type metadata accessor for SessionConnectionPool();
  v18 = v17();
  if (v18 > 2)
  {
    goto LABEL_4;
  }

  if (v18)
  {
    if (v18 != 1)
    {
      v34 = off_287780200();
      if (v34)
      {
        v37 = v34;
        v38 = v35;
        v39 = v36;
        v40 = swift_allocObject();
        v40[2] = v37;
        v40[3] = v38;
        v40[4] = v39;
      }

      else
      {
        v47 = sub_265D58580();
        sub_265D1DF34(&qword_28003E220, MEMORY[0x277D52688]);
        v48 = swift_allocError();
        (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D52628], v47);
        *(swift_allocObject() + 16) = v48;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
      goto LABEL_5;
    }

LABEL_4:
    v19 = sub_265D58580();
    sub_265D1DF34(&qword_28003E220, MEMORY[0x277D52688]);
    v20 = swift_allocError();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D52620], v19);
    *(swift_allocObject() + 16) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
LABEL_5:

    return sub_265D58940();
  }

  v23 = v15;
  __swift_project_boxed_opaque_existential_1((v15 + 96), *(v15 + 120));
  v24 = off_28777D8D0[0];
  type metadata accessor for RemoteParticipantHandshakeRegistry();
  v24();
  v25 = v54;
  v26 = v55;
  if ((*(v54 + 48))(v8, 1, v55) == 1)
  {
    sub_265CA4AE8(v8, &qword_28003E6C8, &unk_265D5C9D0);
    v27 = v51;
    sub_265D59600();
    v28 = sub_265D59DD0();
    v29 = sub_265D5A070();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_265C01000, v28, v29, "Brokering key delivery, but no incoming handshake request recorded in registry", v30, 2u);
      MEMORY[0x266770CF0](v30, -1, -1);
    }

    (*(v52 + 1))(v27, v53);
    v31 = sub_265D58580();
    sub_265D1DF34(&qword_28003E220, MEMORY[0x277D52688]);
    v32 = swift_allocError();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D52670], v31);
    *(swift_allocObject() + 16) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    return sub_265D58940();
  }

  else
  {
    v41 = *(v25 + 32);
    v51 = (v25 + 32);
    v52 = v41;
    v41(v14, v8, v26);
    v42 = v23;
    v43 = *(v23 + 64);
    v44 = *(v23 + 72);
    __swift_project_boxed_opaque_existential_1((v42 + 40), v43);
    sub_265D59D20();
    v53 = v57[4];
    __swift_project_boxed_opaque_existential_1(v57, v57[3]);
    (*(v25 + 16))(v12, v14, v26);
    v45 = (*(v25 + 80) + 24) & ~*(v25 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = v42;
    v52(v46 + v45, v12, v26);

    sub_265D59CA0();

    (*(v25 + 8))(v14, v26);
    return __swift_destroy_boxed_opaque_existential_1Tm(v57);
  }
}

void sub_265D13024(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D59DE0();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v56 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v56 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  v17 = sub_265D58580();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24) == 1)
  {
    v58 = a2;
    v59 = v4;
    v22 = *a1;
    v23 = *(a1 + 8);
    v24 = *(a1 + 16);
    v63 = v22;
    sub_265D1DB44(v22, v23, v24, 1);
    v25 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
    if (swift_dynamicCast())
    {
      v57 = v23;
      v26 = (*(v18 + 88))(v21, v17);
      if (v26 == *MEMORY[0x277D52620])
      {
        sub_265D59600();
        v27 = v58;

        v28 = sub_265D59DD0();
        v29 = sub_265D5A070();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v56 = v24;
          v32 = v31;
          v62[0] = v31;
          *v30 = 136446210;
          v33 = *(v27 + 80);
          v34 = off_287780190[0];
          type metadata accessor for SessionConnectionPool();
          v61 = v34();
          v35 = sub_265D59EC0();
          v37 = sub_265CF4FFC(v35, v36, v62);

          *(v30 + 4) = v37;
          _os_log_impl(&dword_265C01000, v28, v29, "We are in the wrong multiplex mode %{public}s to be used with the key delivery connection broker", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
          MEMORY[0x266770CF0](v32, -1, -1);
          MEMORY[0x266770CF0](v30, -1, -1);

          sub_265CA4010(v22, v57, v56, 1);
        }

        else
        {
          sub_265CA4010(v22, v57, v24, 1);
        }

        (*(v60 + 8))(v16, v59);
LABEL_23:

        return;
      }

      if (v26 == *MEMORY[0x277D52628])
      {
        v38 = v24;
        sub_265D59600();
        v39 = sub_265D59DD0();
        v40 = sub_265D5A070();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_265C01000, v39, v40, "Unable to find an existing remote participant connection", v41, 2u);
          MEMORY[0x266770CF0](v41, -1, -1);

          sub_265CA4010(v22, v57, v38, 1);
        }

        else
        {
          sub_265CA4010(v22, v57, v38, 1);
        }

        (*(v60 + 8))(v11, v59);
        goto LABEL_23;
      }

      if (v26 == *MEMORY[0x277D52670])
      {
        sub_265D59600();
        v42 = sub_265D59DD0();
        v43 = sub_265D5A070();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = v24;
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_265C01000, v42, v43, "Unable to find a remote display clien for the display host", v45, 2u);
          MEMORY[0x266770CF0](v45, -1, -1);

          sub_265CA4010(v22, v57, v44, 1);
        }

        else
        {
          sub_265CA4010(v22, v57, v24, 1);
        }

        (*(v60 + 8))(v14, v59);
        goto LABEL_23;
      }

      (*(v18 + 8))(v21, v17);
      v23 = v57;
    }

    sub_265D59600();
    v46 = v22;
    v47 = sub_265D59DD0();
    v48 = sub_265D5A070();
    sub_265CA4010(v22, v23, v24, 1);
    v49 = v23;
    if (os_log_type_enabled(v47, v48))
    {
      v50 = v24;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v63 = v52;
      *v51 = 136446210;
      swift_getErrorValue();
      v53 = MEMORY[0x2667704D0](v62[2], v62[3]);
      v55 = sub_265CF4FFC(v53, v54, &v63);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_265C01000, v47, v48, "Error brokering remote key delivery participant connection: %{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x266770CF0](v52, -1, -1);
      MEMORY[0x266770CF0](v51, -1, -1);

      sub_265CA4010(v22, v49, v50, 1);
    }

    else
    {
      sub_265CA4010(v22, v23, v24, 1);
    }

    (*(v60 + 8))(v8, v59);
  }
}