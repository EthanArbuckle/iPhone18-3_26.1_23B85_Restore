uint64_t sub_22369DFB0()
{
  v0 = MEMORY[0x223DE4210]();
  v1 = v0;
  if (v0 >> 62)
  {
LABEL_29:
    v2 = sub_22372B558();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_30:

    return 0;
  }

  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_30;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DE7ED0](v3, v1);
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v5 = *(v1 + 8 * v3 + 32);

      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    sub_2237278A8();

    if (v17)
    {
      break;
    }

    sub_22369E7F4(v16);
LABEL_5:
    ++v3;
    if (v4 == v2)
    {
      goto LABEL_30;
    }
  }

  sub_223661514(v16, v18);
  sub_2236227C8(v18, v16);
  sub_2237279B8();
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
LABEL_20:

    goto LABEL_5;
  }

  sub_2237279A8();

  if (!v16[0])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    goto LABEL_19;
  }

  v6 = sub_223727878();
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);

LABEL_19:

    goto LABEL_20;
  }

  v8 = v7;
  v9 = v6;

  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v10 = sub_22372AC98();
  __swift_project_value_buffer(v10, qword_27D097070);

  v11 = sub_22372AC88();
  v12 = sub_22372B268();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_223623274(v9, v8, v16);
    _os_log_impl(&dword_223620000, v11, v12, "Found name: %s in USO Graph.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DE8A80](v14, -1, -1);
    MEMORY[0x223DE8A80](v13, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v9;
}

uint64_t sub_22369E308(uint64_t a1)
{
  v37 = sub_2237275F8();
  v40 = *(v37 - 8);
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v37, v3);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_223727698();
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v36, v8);
  v35 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_223727668();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = *(a1 + 16);
  if (v30[0])
  {
    v16 = 0;
    v17 = *(sub_223727618() - 8);
    v30[2] = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v30[1] = *(v17 + 72);
    v38 = (v11 + 8);
    v32 = (v40 + 8);
    v33 = (v6 + 8);
    v34 = v11;
    while (1)
    {
      v31 = v16;
      v18 = sub_223727608();
      v19 = v18;
      v40 = *(v18 + 16);
      if (v40)
      {
        break;
      }

LABEL_3:
      v16 = v31 + 1;

      if (v16 == v30[0])
      {
        goto LABEL_12;
      }
    }

    v20 = 0;
    v39 = v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    while (v20 < *(v19 + 16))
    {
      (*(v11 + 16))(v15, v39 + *(v11 + 72) * v20, v10);
      if (sub_223727648())
      {
        v21 = v35;
        sub_223727658();
        sub_223727688();
        (*v33)(v21, v36);
        sub_223727768();
        (*v32)(v5, v37);

        v22 = sub_22369DFB0();
        v24 = v23;

        (*v38)(v15, v10);
        v11 = v34;
        if (v24)
        {

          return v22;
        }
      }

      else
      {
        (*v38)(v15, v10);
      }

      if (v40 == ++v20)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  if (qword_27D08E2C8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v25 = sub_22372AC98();
  __swift_project_value_buffer(v25, qword_27D097070);
  v26 = sub_22372AC88();
  v27 = sub_22372B268();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_223620000, v26, v27, "No identity was found in given list of NLXUserParse(s).", v28, 2u);
    MEMORY[0x223DE8A80](v28, -1, -1);
  }

  return 0;
}

uint64_t sub_22369E7F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F750, &qword_22372C960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22369E85C(void *a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X6>, char a7@<W7>, char *a8@<X8>, uint64_t a9, void *a10)
{
  v63 = a6;
  v64 = a8;
  v58 = a4;
  v59 = a5;
  v57 = a2;
  v62 = a10;
  v60 = a3;
  v61 = a9;
  v12 = sub_22372A548();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22372A3C8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24 - 8, v26);
  v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v57 - v31;
  if (a7)
  {
    if (a1)
    {
      v33 = qword_27D08E2C8;
      v60 = a1;
      if (v33 != -1)
      {
        swift_once();
      }

      v34 = sub_22372AC98();
      __swift_project_value_buffer(v34, qword_27D097070);
      v35 = sub_22372AC88();
      v36 = sub_22372B268();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_223620000, v35, v36, "MUX: Picking user based on given VoiceIDScoreCard", v37, 2u);
        MEMORY[0x223DE8A80](v37, -1, -1);
      }

      sub_223721204(v60, v63, v61, v62, v64);
      v38 = v60;
    }

    else
    {
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v51 = sub_22372AC98();
      __swift_project_value_buffer(v51, qword_27D097070);
      v52 = sub_22372AC88();
      v53 = sub_22372B268();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_223620000, v52, v53, "MUX: Pre NL User Selection: Non Speech: Since RMV is set, picking user from previous request.", v54, 2u);
        MEMORY[0x223DE8A80](v54, -1, -1);
      }

      v55 = v57[4];
      __swift_project_boxed_opaque_existential_1(v57, v57[3]);
      (*(v19 + 104))(v23, *MEMORY[0x277D5D1C0], v18);
      sub_22372A478();
      (*(v19 + 8))(v23, v18);
      if (v66)
      {
        v56 = swift_dynamicCast();
        (*(v13 + 56))(v32, v56 ^ 1u, 1, v12);
      }

      else
      {
        sub_223626478(v65, &unk_27D08F750, &qword_22372C960);
        (*(v13 + 56))(v32, 1, 1, v12);
      }

      sub_223721974(v32, v58, v59, v63, v60, v64);
      sub_223626478(v32, &unk_27D08E990, &qword_22372FCF0);
    }
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v39 = sub_22372AC98();
    __swift_project_value_buffer(v39, qword_27D097070);
    v40 = sub_22372AC88();
    v41 = sub_22372B288();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_223620000, v40, v41, "MUX: RMV not set. Defaulting to unknown user.", v42, 2u);
      MEMORY[0x223DE8A80](v42, -1, -1);
    }

    v43 = sub_22372A418();
    sub_22369352C(v63, v29);
    if ((*(v13 + 48))(v29, 1, v12) == 1)
    {
      sub_223626478(v29, &unk_27D08E990, &qword_22372FCF0);
      v44 = sub_22372AC88();
      v45 = sub_22372B278();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_223620000, v44, v45, "MUX: unknownUserId was not found, defaulting to nil.", v46, 2u);
        MEMORY[0x223DE8A80](v46, -1, -1);
      }

      v47 = type metadata accessor for MUXUserAttributes();
      (*(*(v47 - 8) + 56))(v64, 1, 1, v47);
    }

    else
    {
      v48 = *(v13 + 32);
      v48(v17, v29, v12);
      v49 = v64;
      v48(v64, v17, v12);
      v50 = type metadata accessor for MUXUserAttributes();
      *&v49[v50[5]] = 0;
      *&v49[v50[6]] = 0;
      *&v49[v50[8]] = v43;
      v49[v50[7]] = 1;
      v49[v50[9]] = 0;
      v49[v50[10]] = 0;
      (*(*(v50 - 1) + 56))(v49, 0, 1, v50);
    }
  }
}

void sub_22369EF30(void *a1@<X3>, uint64_t *a2@<X5>, void *a3@<X6>, void *a4@<X7>, char *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, void *a11)
{
  v63 = a2;
  v64 = a5;
  v62 = a11;
  v60 = a4;
  v61 = a10;
  v59 = a7;
  v57 = a3;
  v58 = a6;
  v12 = sub_22372A548();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22372A3C8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24 - 8, v26);
  v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v57 - v31;
  if (a9)
  {
    if (a1)
    {
      v33 = qword_27D08E2C8;
      v60 = a1;
      if (v33 != -1)
      {
        swift_once();
      }

      v34 = sub_22372AC98();
      __swift_project_value_buffer(v34, qword_27D097070);
      v35 = sub_22372AC88();
      v36 = sub_22372B268();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_223620000, v35, v36, "MUX: Picking user based on given VoiceIDScoreCard", v37, 2u);
        MEMORY[0x223DE8A80](v37, -1, -1);
      }

      sub_223721204(v60, v63, v61, v62, v64);
      v38 = v60;
    }

    else
    {
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v51 = sub_22372AC98();
      __swift_project_value_buffer(v51, qword_27D097070);
      v52 = sub_22372AC88();
      v53 = sub_22372B268();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_223620000, v52, v53, "MUX: Pre NL User Selection: Non Speech: Since RMV is set, picking user from previous request.", v54, 2u);
        MEMORY[0x223DE8A80](v54, -1, -1);
      }

      v55 = v57[4];
      __swift_project_boxed_opaque_existential_1(v57, v57[3]);
      (*(v19 + 104))(v23, *MEMORY[0x277D5D1C0], v18);
      sub_22372A478();
      (*(v19 + 8))(v23, v18);
      if (v66)
      {
        v56 = swift_dynamicCast();
        (*(v13 + 56))(v32, v56 ^ 1u, 1, v12);
      }

      else
      {
        sub_223626478(v65, &unk_27D08F750, &qword_22372C960);
        (*(v13 + 56))(v32, 1, 1, v12);
      }

      sub_223721974(v32, v60, v58, v63, v59, v64);
      sub_223626478(v32, &unk_27D08E990, &qword_22372FCF0);
    }
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v39 = sub_22372AC98();
    __swift_project_value_buffer(v39, qword_27D097070);
    v40 = sub_22372AC88();
    v41 = sub_22372B288();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_223620000, v40, v41, "MUX: RMV not set. Defaulting to unknown user.", v42, 2u);
      MEMORY[0x223DE8A80](v42, -1, -1);
    }

    v43 = sub_22372A418();
    sub_22369352C(v63, v29);
    if ((*(v13 + 48))(v29, 1, v12) == 1)
    {
      sub_223626478(v29, &unk_27D08E990, &qword_22372FCF0);
      v44 = sub_22372AC88();
      v45 = sub_22372B278();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_223620000, v44, v45, "MUX: unknownUserId was not found, defaulting to nil.", v46, 2u);
        MEMORY[0x223DE8A80](v46, -1, -1);
      }

      v47 = type metadata accessor for MUXUserAttributes();
      (*(*(v47 - 8) + 56))(v64, 1, 1, v47);
    }

    else
    {
      v48 = *(v13 + 32);
      v48(v17, v29, v12);
      v49 = v64;
      v48(v64, v17, v12);
      v50 = type metadata accessor for MUXUserAttributes();
      *&v49[v50[5]] = 0;
      *&v49[v50[6]] = 0;
      *&v49[v50[8]] = v43;
      v49[v50[7]] = 1;
      v49[v50[9]] = 0;
      v49[v50[10]] = 0;
      (*(*(v50 - 1) + 56))(v49, 0, 1, v50);
    }
  }
}

uint64_t sub_22369F68C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000014;
      v4 = 0x80000002237342E0;
    }

    else
    {
      v3 = 0x657A696C616E6966;
      v4 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x616974696E496C6ELL;
    }

    else
    {
      v3 = 0xD000000000000018;
    }

    if (v2)
    {
      v4 = 0xEB00000000646574;
    }

    else
    {
      v4 = 0x80000002237342B0;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x80000002237342E0;
      if (v3 != 0xD000000000000014)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE900000000000064;
      if (v3 != 0x657A696C616E6966)
      {
LABEL_26:
        v7 = sub_22372B6E8();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x616974696E496C6ELL;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (a2)
    {
      v6 = 0xEB00000000646574;
    }

    else
    {
      v6 = 0x80000002237342B0;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_22369F7FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6E69766965636572;
    }

    else
    {
      v3 = 0x696C616974696E69;
    }

    if (v2)
    {
      v4 = 0xED00007350525467;
    }

    else
    {
      v4 = 0xEB0000000064657ALL;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x8000000223734360;
    v3 = 0xD00000000000001FLL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6C616E6946707274;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 3)
    {
      v4 = 0xEC00000064657A69;
    }

    else
    {
      v4 = 0x8000000223734390;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6E69766965636572;
    }

    else
    {
      v9 = 0x696C616974696E69;
    }

    if (a2)
    {
      v8 = 0xED00007350525467;
    }

    else
    {
      v8 = 0xEB0000000064657ALL;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x6C616E6946707274;
    v6 = 0x8000000223734390;
    if (a2 == 3)
    {
      v6 = 0xEC00000064657A69;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v7 = 0xD00000000000001FLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x8000000223734360;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_22372B6E8();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_22369F9C4(void *a1)
{
  v3 = sub_223729F08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v8, *MEMORY[0x277D5CF40], v3);
  v9 = qword_27D097100;
  swift_beginAccess();
  (*(v4 + 40))(v1 + v9, v8, v3);
  swift_endAccess();
  return sub_2236AD404(a1);
}

uint64_t sub_22369FAFC(void *a1, unsigned int *a2)
{
  v5 = sub_223729F08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 104))(v10, *a2, v5);
  v11 = qword_27D097100;
  swift_beginAccess();
  (*(v6 + 40))(v2 + v11, v10, v5);
  swift_endAccess();
  v12 = type metadata accessor for MUXNonSpeechUserSelector();
  v13 = swift_allocObject();
  v18 = v12;
  v19 = &off_2836C59A8;
  *&v17 = v13;
  v14 = qword_27D097108;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + v14));
  sub_223661568(&v17, v2 + v14);
  swift_endAccess();
  return sub_2236AD404(a1);
}

uint64_t sub_22369FC84(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v33[-v7];
  v9 = sub_223729F08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v15 = sub_22372AC98();
  __swift_project_value_buffer(v15, qword_27D097070);
  v16 = a1;
  v17 = sub_22372AC88();
  v18 = sub_22372B268();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&dword_223620000, v17, v18, "MUXRequestProcessor received message: %@", v19, 0xCu);
    sub_223626478(v20, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v19, -1, -1);
  }

  (*(v10 + 104))(v14, *MEMORY[0x277D5CF40], v9);
  v22 = qword_27D097100;
  swift_beginAccess();
  (*(v10 + 40))(v2 + v22, v14, v9);
  swift_endAccess();
  v23 = type metadata accessor for MUXUserSelector();
  v24 = swift_allocObject();
  type metadata accessor for MUXNLParseUtils();
  *(v24 + 16) = swift_allocObject();
  v35 = v23;
  v36 = &off_2836C5AC8;
  *&v34 = v24;
  v25 = qword_27D097108;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + v25));
  sub_223661568(&v34, v2 + v25);
  swift_endAccess();
  v26 = sub_223728E58();
  v27 = sub_223729EE8();
  v28 = *(v27 - 8);
  v29 = (v28 + 56);
  if (v26)
  {
    v30 = MEMORY[0x277D5CE98];
  }

  else
  {
    v30 = MEMORY[0x277D5CE90];
  }

  (*(v28 + 104))(v8, *v30, v27);
  (*v29)(v8, 0, 1, v27);
  v31 = qword_27D097118;
  swift_beginAccess();
  sub_2236719F4(v8, v2 + v31, &unk_27D08F6F0, &qword_223732CD0);
  return swift_endAccess();
}

void sub_2236A0050(void *a1)
{
  v2 = v1;
  v188 = sub_22372A548();
  v189 = *(v188 - 8);
  v4 = *(v189 + 64);
  v6 = MEMORY[0x28223BE20](v188, v5);
  v184 = v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v187 = v175 - v9;
  v198 = sub_22372A298();
  v197 = *(v198 - 8);
  v10 = *(v197 + 64);
  MEMORY[0x28223BE20](v198, v11);
  v196 = v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v186 = v175 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v195 = v175 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v200 = v175 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE90, &unk_22372FF60);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v194 = v175 - v27;
  v199 = type metadata accessor for MUXUserAttributes();
  v193 = *(v199 - 8);
  v28 = *(v193 + 64);
  v30 = MEMORY[0x28223BE20](v199, v29);
  v183 = v175 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v185 = v175 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = v175 - v36;
  v38 = sub_223729F08();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v42 = MEMORY[0x28223BE20](v38, v41);
  v191 = v175 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v47 = v175 - v46;
  MEMORY[0x28223BE20](v45, v48);
  v50 = v175 - v49;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v192 = v37;
  v51 = sub_22372AC98();
  v52 = __swift_project_value_buffer(v51, qword_27D097070);
  v53 = a1;
  v201 = v52;
  v54 = sub_22372AC88();
  v55 = sub_22372B268();
  v202 = v53;

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138412290;
    v58 = v202;
    *(v56 + 4) = v202;
    *v57 = v58;
    v59 = v58;
    _os_log_impl(&dword_223620000, v54, v55, "MUXProcessor received MultiUserAsrResultCandidateMessage: %@", v56, 0xCu);
    sub_223626478(v57, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v57, -1, -1);
    MEMORY[0x223DE8A80](v56, -1, -1);
  }

  v60 = qword_27D097100;
  swift_beginAccess();
  v61 = *(v39 + 16);
  v203 = v2;
  v190 = v61;
  v61(v50, v2 + v60, v38);
  (*(v39 + 104))(v47, *MEMORY[0x277D5CF40], v38);
  sub_2236B12D0(&qword_28132B538, MEMORY[0x277D5CF58]);
  sub_22372B0F8();
  sub_22372B0F8();
  if (v205[0] == v204[10] && v205[1] == v204[11])
  {
    v62 = 1;
  }

  else
  {
    v62 = sub_22372B6E8();
  }

  v63 = *(v39 + 8);
  v63(v47, v38);
  v63(v50, v38);

  if ((v62 & 1) == 0)
  {
    v91 = v202;
    v92 = v203;

    v93 = sub_22372AC88();
    v94 = sub_22372B278();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v201 = v93;
      v97 = v96;
      v202 = swift_slowAlloc();
      v205[0] = v202;
      *v95 = 138412546;
      *(v95 + 4) = v91;
      *v97 = v91;
      *(v95 + 12) = 2080;
      v98 = v92 + v60;
      v99 = v191;
      v190(v191, v98, v38);
      v100 = v91;
      v101 = v94;
      v102 = sub_223729EF8();
      v104 = v103;
      v63(v99, v38);
      v105 = sub_223623274(v102, v104, v205);

      *(v95 + 14) = v105;
      v106 = v201;
      _os_log_impl(&dword_223620000, v201, v101, "%@ is not supported for this requestType: %s", v95, 0x16u);
      sub_223626478(v97, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v97, -1, -1);
      v107 = v202;
      __swift_destroy_boxed_opaque_existential_1Tm(v202);
      MEMORY[0x223DE8A80](v107, -1, -1);
      MEMORY[0x223DE8A80](v95, -1, -1);
    }

    else
    {
    }

    return;
  }

  v64 = v202;
  v65 = v203;
  sub_2236AD180();
  v66 = *(v65 + qword_27D097110);
  v67 = *(v66 + 72);
  if (v67 || (v68 = sub_223728E28(), v69 = *(v66 + 72), *(v66 + 72) = v68, v69, (v67 = *(v66 + 72)) != 0))
  {
    v177 = v67;
    v70 = qword_27D097108;
    swift_beginAccess();
    sub_223623934(v65 + v70, v205);
    v71 = v207;
    v182 = v206;
    v190 = __swift_project_boxed_opaque_existential_1(v205, v206);
    v72 = qword_27D097118;
    swift_beginAccess();
    sub_223634890(v203 + v72, v200, &unk_27D08F6F0, &qword_223732CD0);
    v181 = qword_27D097120;
    v73 = *(v203 + qword_27D097128);
    v74 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext;
    swift_beginAccess();
    v178 = *(v73 + v74);
    v75 = *(v203 + qword_27D097130 + 8);
    v180 = *(v203 + qword_27D097130);
    v179 = v75;
    v76 = qword_27D097138;
    swift_beginAccess();
    v175[0] = v76;
    v77 = v195;
    sub_223634890(v203 + v76, v195, &unk_27D08E990, &qword_22372FCF0);
    v78 = *(v203 + qword_27D097140);
    v191 = v67;

    LOBYTE(v78) = sub_223727EF8();
    v79 = v197;
    v80 = v196;
    v81 = v198;
    (*(v197 + 104))(v196, *MEMORY[0x277D5D0D0], v198);
    v82 = *(v66 + 80);
    v83 = *(v71 + 8);
    v84 = v82;
    v175[1] = v66;
    v176 = v84;
    v174 = v82;
    v85 = v194;
    v86 = v200;
    v83(v177, v200, v203 + v181, v178, v180, v179, v77, v78 & 1, v80, v174, v182, v71);

    (*(v79 + 8))(v80, v81);
    sub_223626478(v77, &unk_27D08E990, &qword_22372FCF0);
    sub_223626478(v86, &unk_27D08F6F0, &qword_223732CD0);
    v87 = v199;
    if ((*(v193 + 48))(v85, 1, v199) == 1)
    {
      sub_223626478(v85, &qword_27D08EE90, &unk_22372FF60);
      __swift_destroy_boxed_opaque_existential_1Tm(v205);
      v88 = sub_22372AC88();
      v89 = sub_22372B278();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_223620000, v88, v89, "Something went wrong during user selection. Was unable to select a user.", v90, 2u);
        MEMORY[0x223DE8A80](v90, -1, -1);
      }

      return;
    }

    v108 = v192;
    sub_2236852F0(v85, v192);
    __swift_destroy_boxed_opaque_existential_1Tm(v205);
    v109 = sub_2237290A8();
    v111 = sub_2236B473C(v109, v110, v108);

    if (v111)
    {
      v112 = *(v108 + v87[6]);
      swift_retain_n();
      sub_2236B138C(v112);
      sub_2236B1508(*(v108 + v87[5]));
      sub_2236B1684(*(v108 + v87[8]));
      sub_2236B1800(*(v108 + v87[7]));
      sub_2236B197C(*(v108 + v87[9]));
      sub_2236B1AF8(*(v108 + v87[10]));
    }

    else
    {
      v137 = v185;
      sub_22368509C(v108, v185);
      v138 = sub_22372AC88();
      v139 = sub_22372B278();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v205[0] = v141;
        *v140 = 136315138;
        sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298]);
        v142 = v188;
        v143 = sub_22372B6B8();
        v145 = v144;
        sub_223685354(v137);
        v146 = sub_223623274(v143, v145, v205);

        *(v140 + 4) = v146;
        _os_log_impl(&dword_223620000, v138, v139, "selectPreNLUser: Could not find ResultCandidateContext for selectedUserId: %s. Trying to use unknown user's RC.", v140, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v141);
        v147 = v203;
        MEMORY[0x223DE8A80](v141, -1, -1);
        MEMORY[0x223DE8A80](v140, -1, -1);

        v148 = v187;
      }

      else
      {

        sub_223685354(v137);
        v142 = v188;
        v148 = v187;
        v147 = v203;
      }

      v162 = v186;
      sub_223634890(v147 + v175[0], v186, &unk_27D08E990, &qword_22372FCF0);
      v163 = v189;
      if ((*(v189 + 48))(v162, 1, v142) == 1)
      {
        sub_223626478(v162, &unk_27D08E990, &qword_22372FCF0);
        v155 = sub_22372AC88();
        v164 = sub_22372B278();
        if (os_log_type_enabled(v155, v164))
        {
          v165 = swift_slowAlloc();
          *v165 = 0;
          _os_log_impl(&dword_223620000, v155, v164, "selectPreNLUser: sharedUserId of unknown user is nil. Will not post ASR output. Request will time out.", v165, 2u);
          MEMORY[0x223DE8A80](v165, -1, -1);

          goto LABEL_36;
        }

LABEL_41:
        goto LABEL_45;
      }

      v166 = v142;
      (*(v163 + 32))(v148, v162, v142);
      v167 = sub_2237290A8();
      v169 = v163;
      v111 = sub_2236B473C(v167, v168, v148);

      if (!v111)
      {
        v171 = sub_22372AC88();
        v172 = sub_22372B278();
        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          *v173 = 0;
          _os_log_impl(&dword_223620000, v171, v172, "selectPreNLUser: Could not find rcContext for unknown user. Will not post ASR output. Request will time out.", v173, 2u);
          MEMORY[0x223DE8A80](v173, -1, -1);
        }

        (*(v189 + 8))(v148, v166);
        goto LABEL_45;
      }

      swift_retain_n();
      sub_2236B138C(-1);
      sub_2236B1508(0);
      v170 = sub_22372A418();
      sub_2236B1684(v170);
      sub_2236B1800(1);
      sub_2236B197C(0);
      sub_2236B1AF8(0);

      (*(v169 + 8))(v148, v166);
    }

    type metadata accessor for MUXSpeechResultCandidateContext(0);
    v113 = swift_dynamicCastClass();
    if (v113)
    {
      v114 = v113;
      v115 = sub_2237290A8();
      sub_2236B477C(v115, v116, v114);

      v117 = sub_22372AC88();
      v118 = sub_22372B268();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v202 = swift_slowAlloc();
        v204[0] = v202;
        *v119 = 136315650;
        v120 = *(v114 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId);
        v121 = *(v114 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId + 8);

        v122 = sub_223623274(v120, v121, v204);

        *(v119 + 4) = v122;
        *(v119 + 12) = 2080;
        v123 = *(v114 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
        v124 = *(v114 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8);

        v125 = sub_223623274(v123, v124, v204);

        *(v119 + 14) = v125;
        *(v119 + 22) = 2080;
        v126 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        swift_beginAccess();
        v127 = v183;
        sub_22368509C(v111 + v126, v183);
        v128 = v189;
        v129 = v184;
        v130 = v127;
        v131 = v188;
        (*(v189 + 32))(v184, v130, v188);
        sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298]);
        v132 = sub_22372B6B8();
        v134 = v133;
        (*(v128 + 8))(v129, v131);
        v135 = sub_223623274(v132, v134, v204);
        v108 = v192;

        *(v119 + 24) = v135;
        _os_log_impl(&dword_223620000, v117, v118, "(selectPreNLUser: For ASR RC Id: %s and RC ID: %s), user: %s was chosen for running NL.", v119, 0x20u);
        v136 = v202;
        swift_arrayDestroy();
        MEMORY[0x223DE8A80](v136, -1, -1);
        MEMORY[0x223DE8A80](v119, -1, -1);
      }

      sub_2236AD6C8(v114);

      goto LABEL_45;
    }

    v155 = sub_22372AC88();
    v156 = sub_22372B278();

    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v205[0] = v158;
      *v157 = 136315138;
      v159 = *(v111 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
      v160 = *(v111 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8);

      v161 = sub_223623274(v159, v160, v205);

      *(v157 + 4) = v161;
      _os_log_impl(&dword_223620000, v155, v156, "selectPreNLUser: Found non speech ResultCandidateContext id : %s in a Speech request.", v157, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v158);
      MEMORY[0x223DE8A80](v158, -1, -1);
      MEMORY[0x223DE8A80](v157, -1, -1);

LABEL_36:

LABEL_45:
      sub_223685354(v108);
      return;
    }

    goto LABEL_41;
  }

  v149 = v64;
  v150 = sub_22372AC88();
  v151 = sub_22372B278();

  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    *v152 = 138412290;
    v154 = sub_223728E28();
    *(v152 + 4) = v154;
    *v153 = v154;
    _os_log_impl(&dword_223620000, v150, v151, "Somehow the voice ID score card in request context was not populated, even though we just stored one: %@", v152, 0xCu);
    sub_223626478(v153, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v153, -1, -1);
    MEMORY[0x223DE8A80](v152, -1, -1);
  }
}

void sub_2236A15FC(void *a1)
{
  v2 = v1;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_27D097070);
  v5 = a1;
  v6 = sub_22372AC88();
  v7 = sub_22372B268();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_223620000, v6, v7, "MUXProcessor received UserIdentificationMessage: %@", v8, 0xCu);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v11 = sub_223728C08();
  if (v11)
  {
    v12 = *(v2 + qword_27D097110);
    oslog = v11;
    sub_2236B3B58(v11);
  }

  else
  {
    v13 = v5;
    oslog = sub_22372AC88();
    v14 = sub_22372B278();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v13;
      *v16 = v13;
      v17 = v13;
      _os_log_impl(&dword_223620000, oslog, v14, "Received User Identification message without voice ID score card: %@. This might be expected in the future, but for now this is unexpected.", v15, 0xCu);
      sub_223626478(v16, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v16, -1, -1);
      MEMORY[0x223DE8A80](v15, -1, -1);
    }
  }
}

void sub_2236A184C(void *a1)
{
  v2 = v1;
  v168 = sub_22372A548();
  v167 = *(v168 - 8);
  v4 = *(v167 + 64);
  MEMORY[0x28223BE20](v168, v5);
  v171 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_22372A298();
  v177 = *(v178 - 8);
  v7 = *(v177 + 64);
  MEMORY[0x28223BE20](v178, v8);
  v176 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v175 = &v160 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v180 = &v160 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE90, &unk_22372FF60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v174 = &v160 - v21;
  v179 = type metadata accessor for MUXUserAttributes();
  v173 = *(v179 - 1);
  v22 = *(v173 + 64);
  MEMORY[0x28223BE20](v179, v23);
  v172 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_223729F08();
  v184 = *(v25 - 8);
  v26 = v184[8];
  v28 = MEMORY[0x28223BE20](v25, v27);
  v170 = &v160 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v160 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v160 - v35;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v37 = sub_22372AC98();
  v38 = __swift_project_value_buffer(v37, qword_27D097070);
  v39 = a1;
  v181 = v38;
  v40 = sub_22372AC88();
  v41 = sub_22372B268();

  v42 = os_log_type_enabled(v40, v41);
  v183 = v2;
  v182 = v39;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v187[0] = v44;
    *v43 = 136315138;
    v45 = sub_2237290A8();
    v47 = sub_223623274(v45, v46, v187);

    *(v43 + 4) = v47;
    v48 = v183;
    _os_log_impl(&dword_223620000, v40, v41, "Handling MUXTextBasedResultCandidateMessage with rcId: %s.", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x223DE8A80](v44, -1, -1);
    v49 = v43;
    v2 = v48;
    MEMORY[0x223DE8A80](v49, -1, -1);
  }

  v50 = qword_27D097100;
  swift_beginAccess();
  v51 = v184;
  v169 = v184[2];
  v169(v36, v2 + v50, v25);
  (v51[13])(v33, *MEMORY[0x277D5CF28], v25);
  sub_2236B12D0(&qword_28132B538, MEMORY[0x277D5CF58]);
  sub_22372B0F8();
  sub_22372B0F8();
  if (v187[0] == v185 && v187[1] == v186)
  {
    v52 = 1;
  }

  else
  {
    v52 = sub_22372B6E8();
  }

  v54 = v184 + 1;
  v53 = v184[1];
  v53(v33, v25);
  v184 = v54;
  v53(v36, v25);

  if (v52)
  {
    v55 = v183;
    v56 = *(v183 + qword_27D097110);
    if (!*(v56 + 72))
    {
      v57 = sub_223729678();
      sub_2236B3B58(v57);

      v55 = v183;
    }

    v58 = qword_27D097108;
    swift_beginAccess();
    sub_223623934(v55 + v58, v187);
    v59 = v189;
    v170 = v188;
    v184 = __swift_project_boxed_opaque_existential_1(v187, v188);
    v163 = *(v56 + 72);
    v60 = v163;
    v61 = qword_27D097118;
    swift_beginAccess();
    sub_223634890(v55 + v61, v180, &unk_27D08F6F0, &qword_223732CD0);
    v169 = qword_27D097120;
    v62 = *(v55 + qword_27D097128);
    v63 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext;
    swift_beginAccess();
    v162 = *(v62 + v63);
    v64 = *(v55 + qword_27D097130 + 8);
    v166 = *(v55 + qword_27D097130);
    v165 = v64;
    v65 = qword_27D097138;
    swift_beginAccess();
    v66 = v175;
    sub_223634890(v55 + v65, v175, &unk_27D08E990, &qword_22372FCF0);
    v67 = *(v55 + qword_27D097140);
    v164 = v60;

    LOBYTE(v67) = sub_223727EF8();
    v68 = v177;
    v69 = v176;
    v70 = v178;
    (*(v177 + 104))(v176, *MEMORY[0x277D5D0D0], v178);
    v160 = v56;
    v71 = *(v56 + 80);
    v72 = *(v59 + 8);
    v161 = v71;
    v73 = v169 + v55;
    v159 = v71;
    v74 = v174;
    v75 = v180;
    v72(v163, v180, v73, v162, v166, v165, v66, v67 & 1, v69, v159, v170, v59);

    (*(v68 + 8))(v69, v70);
    sub_223626478(v66, &unk_27D08E990, &qword_22372FCF0);
    sub_223626478(v75, &unk_27D08F6F0, &qword_223732CD0);
    if ((*(v173 + 48))(v74, 1, v179) == 1)
    {
      sub_223626478(v74, &qword_27D08EE90, &unk_22372FF60);
      __swift_destroy_boxed_opaque_existential_1Tm(v187);
      v76 = v182;
      v77 = sub_22372AC88();
      v78 = sub_22372B278();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v187[0] = v80;
        *v79 = 136315138;
        v81 = sub_2237290A8();
        v83 = sub_223623274(v81, v82, v187);

        *(v79 + 4) = v83;
        _os_log_impl(&dword_223620000, v77, v78, "Pre NL user selection failed for text request: %s. This request will fail.", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x223DE8A80](v80, -1, -1);
        MEMORY[0x223DE8A80](v79, -1, -1);
      }
    }

    else
    {
      v99 = v172;
      sub_2236852F0(v74, v172);
      v100 = __swift_destroy_boxed_opaque_existential_1Tm(v187);
      MEMORY[0x28223BE20](v100, v101);
      v102 = v182;
      v103 = objc_allocWithZone(sub_2237293C8());
      v104 = sub_223729348();
      if (v104)
      {
        v105 = v104;
        v106 = sub_2237290A8();
        v184 = v105;
        v107 = v106;
        v109 = v108;
        v110 = sub_2237290A8();
        v112 = v111;
        v113 = sub_223729688();
        v115 = v114;
        v116 = v179;
        v117 = v179[5];
        LODWORD(v182) = *(v99 + v179[6]);
        v178 = *(v99 + v117);
        LODWORD(v180) = *(v99 + v179[8]);
        v118 = v167;
        v119 = v168;
        (*(v167 + 16))(v171, v99, v168);
        v120 = type metadata accessor for MUXTextBasedResultCandidateContext(0);
        v121 = *(v120 + 48);
        v122 = *(v120 + 52);
        v123 = swift_allocObject();
        v124 = (v123 + OBJC_IVAR____TtC24RequestDispatcherBridges34MUXTextBasedResultCandidateContext_utterance);
        *v124 = v113;
        v124[1] = v115;
        v125 = (v123 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId);
        *v125 = v107;
        v125[1] = v109;
        v126 = (v123 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
        *v126 = v110;
        v126[1] = v112;
        *(v123 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses) = 0;
        v127 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
        v128 = sub_223727678();
        (*(*(v128 - 8) + 56))(v123 + v127, 1, 1, v128);
        v129 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
        v130 = sub_223727758();
        (*(*(v130 - 8) + 56))(v123 + v129, 1, 1, v130);
        v131 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState;
        *(v123 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 0;
        *(v123 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback) = 0;
        *(v123 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) = 0;
        *(v123 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_isMitigated) = 0;
        v132 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
        v133 = sub_22372AEE8();
        (*(*(v133 - 8) + 56))(v123 + v132, 1, 1, v133);
        v134 = v123 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs;
        *v134 = 0;
        *(v134 + 8) = 1;
        v135 = v123 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        (*(v118 + 32))(v123 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute, v171, v119);
        *(v135 + v116[5]) = v178;
        *(v135 + v116[6]) = v182;
        *(v135 + v116[8]) = v180;
        *(v135 + v116[7]) = 0;
        *(v135 + v116[9]) = 2;
        *(v135 + v116[10]) = 2;
        v136 = (v123 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
        *v136 = v107;
        v136[1] = v109;
        v137 = v184;
        v138 = (v123 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        *v138 = v110;
        v138[1] = v112;

        sub_2236B4024(v139);
        sub_2236B1FA4(1u);
        *(v123 + v131) = 1;

        v140 = v137;
        v141 = sub_22372AC88();
        v142 = sub_22372B268();

        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          *v143 = 138412290;
          *(v143 + 4) = v140;
          *v144 = v137;
          v145 = v140;
          _os_log_impl(&dword_223620000, v141, v142, "Posting TextBasedResultCandidateMessage: %@", v143, 0xCu);
          sub_223626478(v144, &unk_27D08F250, &unk_22372D1D0);
          MEMORY[0x223DE8A80](v144, -1, -1);
          MEMORY[0x223DE8A80](v143, -1, -1);
        }

        sub_22372A758();
        __swift_project_boxed_opaque_existential_1(v187, v188);
        sub_223729D88();

        __swift_destroy_boxed_opaque_existential_1Tm(v187);
        v146 = v172;
      }

      else
      {
        v147 = v102;
        v148 = sub_22372AC88();
        v149 = sub_22372B278();

        if (os_log_type_enabled(v148, v149))
        {
          v150 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v187[0] = v151;
          *v150 = 136315394;
          v152 = sub_223729D38();
          v154 = sub_223623274(v152, v153, v187);

          *(v150 + 4) = v154;
          *(v150 + 12) = 2080;
          v155 = sub_2237290A8();
          v157 = sub_223623274(v155, v156, v187);

          *(v150 + 14) = v157;
          _os_log_impl(&dword_223620000, v148, v149, "Failed to create TextBasedResultCandidateMessage for request Id: %s for rc id : %s", v150, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v151, -1, -1);
          v158 = v150;
          v99 = v172;
          MEMORY[0x223DE8A80](v158, -1, -1);
        }

        v146 = v99;
      }

      sub_223685354(v146);
    }
  }

  else
  {
    v84 = v182;
    v85 = v183;

    v86 = sub_22372AC88();
    v87 = sub_22372B278();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v181 = v89;
      v182 = swift_slowAlloc();
      v187[0] = v182;
      *v88 = 138412546;
      *(v88 + 4) = v84;
      *v89 = v84;
      *(v88 + 12) = 2080;
      v90 = v85 + v50;
      v91 = v170;
      v169(v170, v90, v25);
      v92 = v84;
      v93 = sub_223729EF8();
      v95 = v94;
      v53(v91, v25);
      v96 = sub_223623274(v93, v95, v187);

      *(v88 + 14) = v96;
      _os_log_impl(&dword_223620000, v86, v87, "%@ is not supported for current requestType: %s", v88, 0x16u);
      v97 = v181;
      sub_223626478(v181, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v97, -1, -1);
      v98 = v182;
      __swift_destroy_boxed_opaque_existential_1Tm(v182);
      MEMORY[0x223DE8A80](v98, -1, -1);
      MEMORY[0x223DE8A80](v88, -1, -1);
    }
  }
}

uint64_t sub_2236A2A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v26 - v17;
  v19 = *MEMORY[0x277D5CDE0];
  v20 = sub_223729DE8();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v18, v19, v20);
  (*(v21 + 56))(v18, 0, 1, v20);
  sub_223729378();
  sub_223729D98();
  sub_223729368();
  sub_223729D58();
  v22 = sub_223727408();
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  sub_2237293A8();
  sub_223729D38();
  sub_223729398();
  sub_2237290A8();
  sub_223729358();
  sub_223729688();
  sub_2237293B8();
  v23 = sub_22372A548();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v8, a3, v23);
  (*(v24 + 56))(v8, 0, 1, v23);
  return sub_223729388();
}

void sub_2236A2CF8(void *a1)
{
  v170 = sub_22372A548();
  v166 = *(v170 - 8);
  v2 = *(v166 + 64);
  MEMORY[0x28223BE20](v170, v3);
  v169 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_22372A298();
  v176 = *(v177 - 8);
  v5 = *(v176 + 64);
  MEMORY[0x28223BE20](v177, v6);
  v175 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v174 = &v159 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v180 = (&v159 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE90, &unk_22372FF60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v159 - v19;
  v178 = type metadata accessor for MUXUserAttributes();
  v172 = *(v178 - 1);
  v21 = *(v172 + 64);
  MEMORY[0x28223BE20](v178, v22);
  v24 = &v159 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_223729F08();
  v183 = *(v25 - 8);
  v26 = v183[8];
  v28 = MEMORY[0x28223BE20](v25, v27);
  v168 = &v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v159 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v159 - v35;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v37 = sub_22372AC98();
  v38 = __swift_project_value_buffer(v37, qword_27D097070);
  v39 = a1;
  v181 = v38;
  v40 = sub_22372AC88();
  v41 = sub_22372B268();

  v42 = os_log_type_enabled(v40, v41);
  v171 = v24;
  v173 = v20;
  v179 = v39;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v186[0] = v44;
    *v43 = 136315138;
    v45 = sub_2237290A8();
    v47 = sub_223623274(v45, v46, v186);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_223620000, v40, v41, "Handling MUXDirectActionResultCandidateMessage with rcId: %s.", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x223DE8A80](v44, -1, -1);
    MEMORY[0x223DE8A80](v43, -1, -1);
  }

  v48 = qword_27D097100;
  v49 = v182;
  swift_beginAccess();
  v50 = v183;
  v167 = v183[2];
  v167(v36, v49 + v48, v25);
  (v50[13])(v33, *MEMORY[0x277D5CF08], v25);
  sub_2236B12D0(&qword_28132B538, MEMORY[0x277D5CF58]);
  sub_22372B0F8();
  sub_22372B0F8();
  if (v186[0] == v184 && v186[1] == v185)
  {
    v51 = 1;
  }

  else
  {
    v51 = sub_22372B6E8();
  }

  v53 = v183 + 1;
  v52 = v183[1];
  v52(v33, v25);
  v183 = v53;
  v52(v36, v25);

  if (v51)
  {
    v54 = qword_27D097108;
    v55 = v182;
    swift_beginAccess();
    sub_223623934(v55 + v54, v186);
    v56 = v188;
    v168 = v187;
    v183 = __swift_project_boxed_opaque_existential_1(v186, v187);
    v57 = *(v55 + qword_27D097110);
    v162 = *(v57 + 72);
    v58 = v162;
    v59 = qword_27D097118;
    swift_beginAccess();
    sub_223634890(v55 + v59, v180, &unk_27D08F6F0, &qword_223732CD0);
    v167 = qword_27D097120;
    v60 = *(v55 + qword_27D097128);
    v61 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext;
    swift_beginAccess();
    v161 = *(v60 + v61);
    v62 = *(v55 + qword_27D097130 + 8);
    v165 = *(v55 + qword_27D097130);
    v164 = v62;
    v63 = qword_27D097138;
    swift_beginAccess();
    v64 = v174;
    sub_223634890(v55 + v63, v174, &unk_27D08E990, &qword_22372FCF0);
    v65 = *(v55 + qword_27D097140);
    v163 = v58;

    LOBYTE(v65) = sub_223727EF8();
    v66 = v176;
    v67 = v175;
    v68 = v177;
    (*(v176 + 104))(v175, *MEMORY[0x277D5D0D0], v177);
    v159 = v57;
    v69 = *(v57 + 80);
    v70 = v56;
    v71 = *(v56 + 8);
    v160 = v69;
    v72 = v167 + v55;
    v158 = v69;
    v73 = v173;
    v74 = v180;
    v71(v162, v180, v72, v161, v165, v164, v64, v65 & 1, v67, v158, v168, v70);

    (*(v66 + 8))(v67, v68);
    sub_223626478(v64, &unk_27D08E990, &qword_22372FCF0);
    sub_223626478(v74, &unk_27D08F6F0, &qword_223732CD0);
    if ((*(v172 + 48))(v73, 1, v178) == 1)
    {
      sub_223626478(v73, &qword_27D08EE90, &unk_22372FF60);
      __swift_destroy_boxed_opaque_existential_1Tm(v186);
      v75 = v179;
      v76 = sub_22372AC88();
      v77 = sub_22372B278();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v186[0] = v79;
        *v78 = 136315138;
        v80 = sub_2237290A8();
        v82 = sub_223623274(v80, v81, v186);

        *(v78 + 4) = v82;
        _os_log_impl(&dword_223620000, v76, v77, "Pre NL user selection failed for direct action request: %s. This request will fail.", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        MEMORY[0x223DE8A80](v79, -1, -1);
        MEMORY[0x223DE8A80](v78, -1, -1);
      }
    }

    else
    {
      v98 = v171;
      sub_2236852F0(v73, v171);
      v99 = __swift_destroy_boxed_opaque_existential_1Tm(v186);
      MEMORY[0x28223BE20](v99, v100);
      v101 = v179;
      v102 = objc_allocWithZone(sub_223729668());
      v103 = sub_2237295D8();
      if (v103)
      {
        v104 = v103;
        v105 = sub_2237290A8();
        v107 = v106;
        v108 = sub_2237290A8();
        v110 = v109;
        v111 = sub_223729958();
        v183 = v104;
        v112 = v111;
        v114 = v113;
        v115 = sub_223729968();
        v116 = v178;
        v117 = v178[5];
        LODWORD(v180) = *(v98 + v178[6]);
        v177 = *(v98 + v117);
        LODWORD(v179) = *(v98 + v178[8]);
        v118 = v166;
        (*(v166 + 16))(v169, v98, v170);
        v119 = type metadata accessor for MUXDirectActionResultCandidateContext(0);
        v120 = *(v119 + 48);
        v121 = *(v119 + 52);
        v122 = swift_allocObject();
        v123 = (v122 + OBJC_IVAR____TtC24RequestDispatcherBridges37MUXDirectActionResultCandidateContext_directAction);
        *v123 = v112;
        v123[1] = v114;
        *(v122 + OBJC_IVAR____TtC24RequestDispatcherBridges37MUXDirectActionResultCandidateContext_requestExecutionParameters) = v115;
        v124 = (v122 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId);
        *v124 = v105;
        v124[1] = v107;
        v125 = (v122 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
        *v125 = v108;
        v125[1] = v110;
        *(v122 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses) = 0;
        v126 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
        v127 = sub_223727678();
        (*(*(v127 - 8) + 56))(v122 + v126, 1, 1, v127);
        v128 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
        v129 = sub_223727758();
        (*(*(v129 - 8) + 56))(v122 + v128, 1, 1, v129);
        v130 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState;
        *(v122 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 0;
        *(v122 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback) = 0;
        *(v122 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) = 0;
        *(v122 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_isMitigated) = 0;
        v131 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
        v132 = sub_22372AEE8();
        (*(*(v132 - 8) + 56))(v122 + v131, 1, 1, v132);
        v133 = v122 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs;
        *v133 = 0;
        *(v133 + 8) = 1;
        v134 = v122 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        (*(v118 + 32))(v122 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute, v169, v170);
        *(v134 + v116[5]) = v177;
        *(v134 + v116[6]) = v180;
        *(v134 + v116[8]) = v179;
        *(v134 + v116[7]) = 0;
        *(v134 + v116[9]) = 2;
        *(v134 + v116[10]) = 2;
        v135 = (v122 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
        *v135 = v105;
        v135[1] = v107;
        v136 = (v122 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        *v136 = v108;
        v136[1] = v110;

        sub_2236B4024(v137);
        sub_2236B1FA4(1u);
        *(v122 + v130) = 1;
        v138 = v183;

        v139 = v138;
        v140 = sub_22372AC88();
        v141 = sub_22372B268();

        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          *v142 = 138412290;
          *(v142 + 4) = v139;
          *v143 = v138;
          v144 = v139;
          _os_log_impl(&dword_223620000, v140, v141, "Posting DirectActionResultCandidateMessage: %@", v142, 0xCu);
          sub_223626478(v143, &unk_27D08F250, &unk_22372D1D0);
          MEMORY[0x223DE8A80](v143, -1, -1);
          MEMORY[0x223DE8A80](v142, -1, -1);
        }

        sub_22372A758();
        __swift_project_boxed_opaque_existential_1(v186, v187);
        sub_223729D88();

        __swift_destroy_boxed_opaque_existential_1Tm(v186);
        v145 = v171;
      }

      else
      {
        v146 = v101;
        v147 = sub_22372AC88();
        v148 = sub_22372B278();

        if (os_log_type_enabled(v147, v148))
        {
          v149 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          v186[0] = v150;
          *v149 = 136315394;
          v151 = sub_223729D38();
          v153 = sub_223623274(v151, v152, v186);

          *(v149 + 4) = v153;
          *(v149 + 12) = 2080;
          v154 = sub_2237290A8();
          v156 = sub_223623274(v154, v155, v186);

          *(v149 + 14) = v156;
          _os_log_impl(&dword_223620000, v147, v148, "Failed to create DirectActionResultCandidateMessage for request Id: %s for rc id : %s", v149, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v150, -1, -1);
          v157 = v149;
          v98 = v171;
          MEMORY[0x223DE8A80](v157, -1, -1);
        }

        v145 = v98;
      }

      sub_223685354(v145);
    }
  }

  else
  {
    v83 = v179;
    v84 = v182;

    v85 = sub_22372AC88();
    v86 = sub_22372B278();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v180 = v88;
      v181 = swift_slowAlloc();
      v186[0] = v181;
      *v87 = 138412546;
      *(v87 + 4) = v83;
      *v88 = v83;
      *(v87 + 12) = 2080;
      v89 = v84 + v48;
      v90 = v168;
      v167(v168, v89, v25);
      v91 = v83;
      v92 = sub_223729EF8();
      v94 = v93;
      v52(v90, v25);
      v95 = sub_223623274(v92, v94, v186);

      *(v87 + 14) = v95;
      _os_log_impl(&dword_223620000, v85, v86, "%@ is not supported for current requestType: %s", v87, 0x16u);
      v96 = v180;
      sub_223626478(v180, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v96, -1, -1);
      v97 = v181;
      __swift_destroy_boxed_opaque_existential_1Tm(v181);
      MEMORY[0x223DE8A80](v97, -1, -1);
      MEMORY[0x223DE8A80](v87, -1, -1);
    }
  }
}

uint64_t sub_2236A3EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v26 - v17;
  v19 = *MEMORY[0x277D5CDE0];
  v20 = sub_223729DE8();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v18, v19, v20);
  (*(v21 + 56))(v18, 0, 1, v20);
  sub_223729628();
  sub_223729D98();
  sub_223729608();
  sub_223729D58();
  v22 = sub_223727408();
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  sub_223729658();
  sub_223729D38();
  sub_223729648();
  sub_2237290A8();
  sub_2237295F8();
  sub_223729958();
  sub_2237295E8();
  sub_223729968();
  sub_223729618();
  v23 = sub_22372A548();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v8, a3, v23);
  (*(v24 + 56))(v8, 0, 1, v23);
  return sub_223729638();
}

void sub_2236A41A0(id a1)
{
  v2 = v1;
  if (qword_27D08E2C8 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v4 = sub_22372AC98();
    __swift_project_value_buffer(v4, qword_27D097070);
    a1 = a1;
    v5 = sub_22372AC88();
    v6 = sub_22372B268();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = a1;
      *v8 = a1;
      v9 = a1;
      _os_log_impl(&dword_223620000, v5, v6, "MUXProcessor received message: %@", v7, 0xCu);
      sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v8, -1, -1);
      MEMORY[0x223DE8A80](v7, -1, -1);
    }

    v10 = *(v2 + qword_27D097110);
    if (*(v10 + 40))
    {
      oslog = sub_22372AC88();
      v11 = sub_22372B278();
      if (os_log_type_enabled(oslog, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_223620000, oslog, v11, "selectedTopLevelCandidateId should be nil at this point.", v12, 2u);
        MEMORY[0x223DE8A80](v12, -1, -1);
      }

      return;
    }

    if (!*(v10 + 72))
    {
      v13 = sub_223728648();
      v14 = *(v10 + 72);
      *(v10 + 72) = v13;
    }

    v22 = sub_2237290A8();
    v23 = v15;
    v16 = sub_2236B4574(v22, v15);
    v17 = v16;
    if (!(v16 >> 62))
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        break;
      }

      goto LABEL_14;
    }

    v18 = sub_22372B558();
    if (!v18)
    {
      break;
    }

LABEL_14:
    v19 = 0;
    v2 = v17 & 0xFFFFFFFFFFFFFF8;
    while ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x223DE7ED0](v19, v17);
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_22;
      }

LABEL_18:
      *(v20 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_isMitigated) = sub_2237283B8() & 1;

      ++v19;
      if (v21 == v18)
      {
        goto LABEL_26;
      }
    }

    if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v20 = *(v17 + 8 * v19 + 32);

    v21 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

LABEL_26:

  sub_2236A45C8(v22, v23);
}

unint64_t sub_2236A44C0(unint64_t result, uint64_t *a2)
{
  v4 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DE7ED0](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v9 = v7;
        sub_2236A9368(&v9, a2);

        if (!v2)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_22372B558();
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_2236A45C8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  __swift_project_value_buffer(v6, qword_27D097070);

  v7 = sub_22372AC88();
  v8 = sub_22372B268();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_223623274(a1, a2, &v26);
    _os_log_impl(&dword_223620000, v7, v8, "Caching selectedTopLevelCandidateId: %s in RequestContext.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x223DE8A80](v10, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v11 = *(v3 + qword_27D097110);
  v12 = v11[5];
  v11[4] = a1;
  v11[5] = a2;

  swift_beginAccess();
  v13 = v11[8];
  if (!*(v13 + 16))
  {
    goto LABEL_10;
  }

  v14 = v11[8];

  v15 = sub_2236261A0(a1, a2);
  if ((v16 & 1) == 0)
  {

LABEL_10:

    v18 = sub_22372AC88();
    v19 = sub_22372B278();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_223623274(a1, a2, &v25);
      _os_log_impl(&dword_223620000, v18, v19, "No user was picked for selectedTopLevelCandidateId: %s. Cannot proceed.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x223DE8A80](v21, -1, -1);
      MEMORY[0x223DE8A80](v20, -1, -1);
    }

    goto LABEL_19;
  }

  v17 = *(*(v13 + 56) + 8 * v15);

  if (*(v17 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) <= 1u || *(v17 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) == 2)
  {
    v22 = sub_22372B6E8();

    if ((v22 & 1) == 0)
    {
      sub_2236A5E18(v17);

      return;
    }
  }

  else
  {
  }

  v18 = sub_22372AC88();
  v23 = sub_22372B278();
  if (os_log_type_enabled(v18, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_223620000, v18, v23, "Detected highly unusual state where ASR output seems to have been finalized before the ResultSelected/StoppedListeningForSpeechContinuation message arrived", v24, 2u);
    MEMORY[0x223DE8A80](v24, -1, -1);
  }

LABEL_19:
}

void sub_2236A49B0(void *a1)
{
  v2 = v1;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_27D097070);
  v5 = a1;
  v6 = sub_22372AC88();
  v7 = sub_22372B268();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_223620000, v6, v7, "MUXProcessor received message: %@", v8, 0xCu);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v11 = sub_223729088();
  v13 = v12;
  v14 = *(v2 + qword_27D097110);
  swift_beginAccess();
  v15 = *(v14 + 48);
  if (!*(v15 + 16))
  {
    goto LABEL_15;
  }

  v16 = sub_2236261A0(v11, v13);
  if ((v17 & 1) == 0)
  {

LABEL_15:

    v24 = sub_22372AC88();
    v25 = sub_22372B278();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v26 = 136315138;
      v28 = sub_223623274(v11, v13, &v29);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_223620000, v24, v25, "Couldn't find requestCandidateContext for rcId: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x223DE8A80](v27, -1, -1);
      MEMORY[0x223DE8A80](v26, -1, -1);
    }

    else
    {
    }

    return;
  }

  v18 = *(*(v15 + 56) + 8 * v16);

  type metadata accessor for MUXResultCandidateContext(0);
  v19 = swift_dynamicCastClass();
  if (!v19)
  {

    goto LABEL_15;
  }

  v20 = v19;

  if (*(v20 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) == 1)
  {
    *(v20 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) = 0;
    v21 = sub_22372AC88();
    v22 = sub_22372B268();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_223620000, v21, v22, "serverUserSelectionPending was true. We need to commit.", v23, 2u);
      MEMORY[0x223DE8A80](v23, -1, -1);
    }

    sub_2236A5E18(v20);
  }
}

void sub_2236A4D2C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MUXUserAttributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v102 = &v94[-v12];
  v13 = sub_22372A548();
  v103 = *(v13 - 8);
  isa = v103[8].isa;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v100 = &v94[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16, v18);
  v101 = &v94[-v20];
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v94[-v22];
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v24 = sub_22372AC98();
  __swift_project_value_buffer(v24, qword_27D097070);
  v25 = a1;
  v26 = sub_22372AC88();
  v27 = sub_22372B268();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&dword_223620000, v26, v27, "MUXProcessor received message: %@", v28, 0xCu);
    sub_223626478(v29, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v29, -1, -1);
    MEMORY[0x223DE8A80](v28, -1, -1);
  }

  v31 = v2;
  v32 = *(v2 + qword_27D097110);
  if (!v32[5])
  {
    v99 = v31;
    v36 = sub_2237290A8();
    v38 = v37;

    v39 = sub_22372AC88();
    v40 = sub_22372B268();

    v41 = os_log_type_enabled(v39, v40);
    v98 = v8;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v97 = v13;
      v43 = v42;
      v44 = v23;
      v45 = swift_slowAlloc();
      v106 = v45;
      *v43 = 136315138;
      *(v43 + 4) = sub_223623274(v36, v38, &v106);
      _os_log_impl(&dword_223620000, v39, v40, "Caching selectedTopLevelCandidateId: %s in RequestContext.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      v46 = v45;
      v23 = v44;
      MEMORY[0x223DE8A80](v46, -1, -1);
      v47 = v43;
      v13 = v97;
      MEMORY[0x223DE8A80](v47, -1, -1);
    }

    v48 = v32[5];
    v32[4] = v36;
    v32[5] = v38;

    swift_beginAccess();
    v49 = v32[6];
    if (*(v49 + 16))
    {
      v50 = v32[6];

      v51 = sub_2236261A0(v36, v38);
      if (v52)
      {
        v53 = *(*(v49 + 56) + 8 * v51);

        type metadata accessor for MUXResultCandidateContext(0);
        if (swift_dynamicCastClass())
        {
          type metadata accessor for MUXTextBasedResultCandidateContext(0);
          v54 = swift_dynamicCastClass();
          if (v54)
          {
            v55 = v54;

            if (*(v55 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) <= 1u || *(v55 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) == 2)
            {
              v61 = sub_22372B6E8();

              if ((v61 & 1) == 0)
              {
                v62 = v102;
                sub_2237294C8();
                v63 = v103;
                if ((v103[6].isa)(v62, 1, v13) == 1)
                {

                  sub_223626478(v62, &unk_27D08E990, &qword_22372FCF0);
                }

                else
                {
                  v67 = v63[4].isa;
                  v67(v23, v62, v13);
                  v68 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
                  swift_beginAccess();
                  v97 = v55;
                  v69 = v98;
                  sub_22368509C(v55 + v68, v98);

                  v70 = v53;
                  v71 = v101;
                  v96 = v67;
                  v67(v101, v69, v13);
                  sub_2236B12D0(qword_27D08EC10, MEMORY[0x277D5D298]);
                  LOBYTE(v69) = sub_22372AFC8();
                  v102 = v23;
                  v72 = v63;
                  v73 = v63[1].isa;
                  v73(v71, v13);
                  if ((v69 & 1) == 0)
                  {
                    v74 = v100;
                    (v72[2].isa)(v100, v102, v13);

                    v75 = sub_22372AC88();
                    v76 = sub_22372B278();

                    if (os_log_type_enabled(v75, v76))
                    {
                      v77 = swift_slowAlloc();
                      v103 = swift_slowAlloc();
                      v104 = v103;
                      *v77 = 136315394;
                      sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298]);
                      v99 = v70;
                      v95 = v76;
                      v78 = v75;
                      v79 = sub_22372B6B8();
                      v80 = v74;
                      v81 = v13;
                      v83 = v82;
                      v73(v80, v81);
                      v84 = sub_223623274(v79, v83, &v104);

                      *(v77 + 4) = v84;
                      *(v77 + 12) = 2080;
                      v85 = v98;
                      sub_22368509C(v97 + v68, v98);
                      v86 = v101;
                      v96(v101, v85, v81);
                      v87 = sub_22372B6B8();
                      v89 = v88;
                      v73(v86, v81);
                      v90 = sub_223623274(v87, v89, &v104);

                      *(v77 + 14) = v90;
                      _os_log_impl(&dword_223620000, v78, v95, "ExpectedSelectedUserId: %s is not equal to userId of selected RCContext: %s . May be the source sent incorrect expectedSelectedUserId?", v77, 0x16u);
                      v91 = v103;
                      swift_arrayDestroy();
                      MEMORY[0x223DE8A80](v91, -1, -1);
                      MEMORY[0x223DE8A80](v77, -1, -1);

                      v92 = v102;
                      v93 = v81;
                    }

                    else
                    {

                      v73(v74, v13);
                      v92 = v102;
                      v93 = v13;
                    }

                    v73(v92, v93);
                    return;
                  }

                  v73(v102, v13);
                  v55 = v97;
                }

                sub_2236A5E18(v55);
LABEL_37:

                return;
              }
            }

            else
            {
            }

            v64 = sub_22372AC88();
            v65 = sub_22372B278();
            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              *v66 = 0;
              _os_log_impl(&dword_223620000, v64, v65, "Detected highly unusual state where text based RC seems to have been finalized before the ResultSelected message arrived,", v66, 2u);
              MEMORY[0x223DE8A80](v66, -1, -1);
            }

            goto LABEL_37;
          }
        }
      }

      else
      {
      }
    }

    v56 = sub_22372AC88();
    v57 = sub_22372B278();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v105 = v59;
      *v58 = 136315138;
      v60 = sub_223623274(v36, v38, &v105);

      *(v58 + 4) = v60;
      _os_log_impl(&dword_223620000, v56, v57, "Unable to find MUXTextBasedResultCandidateContext for rcID: %s. Cannot post ResultSelectedMessage.", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x223DE8A80](v59, -1, -1);
      MEMORY[0x223DE8A80](v58, -1, -1);
    }

    else
    {
    }

    return;
  }

  v103 = sub_22372AC88();
  v33 = sub_22372B278();
  if (os_log_type_enabled(v103, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_223620000, v103, v33, "selectedTopLevelCandidateId should be nil at this point.", v34, 2u);
    MEMORY[0x223DE8A80](v34, -1, -1);
  }

  v35 = v103;
}

void sub_2236A584C(void *a1)
{
  v2 = v1;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_27D097070);
  v5 = a1;
  v6 = sub_22372AC88();
  v7 = sub_22372B268();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_223620000, v6, v7, "MUXProcessor received message: %@", v8, 0xCu);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v11 = *(v2 + qword_27D097110);
  if (!v11[5])
  {
    v14 = sub_2237290A8();
    v16 = v15;

    v17 = sub_22372AC88();
    v18 = sub_22372B268();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(v14, v16, &v40);
      _os_log_impl(&dword_223620000, v17, v18, "Caching selectedTopLevelCandidateId: %s in RequestContext.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = v11[5];
    v11[4] = v14;
    v11[5] = v16;

    swift_beginAccess();
    v22 = v11[6];
    if (*(v22 + 16))
    {
      v23 = v11[6];

      v24 = sub_2236261A0(v14, v16);
      if (v25)
      {
        v26 = *(*(v22 + 56) + 8 * v24);

        type metadata accessor for MUXResultCandidateContext(0);
        if (swift_dynamicCastClass())
        {
          type metadata accessor for MUXDirectActionResultCandidateContext(0);
          v27 = swift_dynamicCastClass();
          if (v27)
          {
            v28 = v27;

            if (*(v28 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) <= 1u || *(v28 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) == 2)
            {
              v34 = sub_22372B6E8();

              if ((v34 & 1) == 0)
              {
                sub_2236A5E18(v28);
LABEL_32:

                return;
              }
            }

            else
            {
            }

            v35 = sub_22372AC88();
            v36 = sub_22372B278();
            if (os_log_type_enabled(v35, v36))
            {
              v37 = swift_slowAlloc();
              *v37 = 0;
              _os_log_impl(&dword_223620000, v35, v36, "Detected highly unusual state where direct action based RC seems to have been finalized before the ResultSelected message arrived,", v37, 2u);
              MEMORY[0x223DE8A80](v37, -1, -1);
            }

            goto LABEL_32;
          }
        }
      }

      else
      {
      }
    }

    v29 = sub_22372AC88();
    v30 = sub_22372B278();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136315138;
      v33 = sub_223623274(v14, v16, &v39);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_223620000, v29, v30, "Unable to find MUXDirectActionResultCandidateContext for rcID: %s. Cannot post ResultSelectedMessage.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x223DE8A80](v32, -1, -1);
      MEMORY[0x223DE8A80](v31, -1, -1);
    }

    else
    {
    }

    return;
  }

  oslog = sub_22372AC88();
  v12 = sub_22372B278();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_223620000, oslog, v12, "selectedTopLevelCandidateId should be nil at this point.", v13, 2u);
    MEMORY[0x223DE8A80](v13, -1, -1);
  }
}

void sub_2236A5E18(uint64_t a1)
{
  v2 = v1;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_27D097070);

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v77 = v8;
    *v7 = 136315138;
    v9 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v10 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v11 = sub_223623274(v9, v10, &v77);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_223620000, v5, v6, "Attempting MUX commit logic for userLevelCandidateId: %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v12 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState;
  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) > 2u)
  {

    goto LABEL_18;
  }

  v13 = sub_22372B6E8();

  if (v13)
  {
LABEL_18:

    log = sub_22372AC88();
    v29 = sub_22372B268();

    if (!os_log_type_enabled(log, v29))
    {
      goto LABEL_51;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v77 = v31;
    *v30 = 136315138;
    v32 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    v33 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v34 = *(v32 + 8);

    v35 = sub_223623274(v33, v34, &v77);

    *(v30 + 4) = v35;
    v36 = "Cannot commit for userLevelCandidateId  %s because candidateState has already been finalized, no further action needed.";
    goto LABEL_20;
  }

  v14 = *(v2 + qword_27D097110);
  v15 = *(v14 + 40);
  if (!v15)
  {

    log = sub_22372AC88();
    v29 = sub_22372B268();

    if (!os_log_type_enabled(log, v29))
    {
      goto LABEL_51;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v77 = v31;
    *v30 = 136315138;
    v38 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    v39 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v40 = *(v38 + 8);

    v41 = sub_223623274(v39, v40, &v77);

    *(v30 + 4) = v41;
    v36 = "Cannot commit for userLevelCandidateId  %s because endpoint signal does not seem to have arrived.";
    goto LABEL_20;
  }

  v16 = *(v14 + 32);
  v17 = (a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v18 = v16 == *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId) && v15 == *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);
  if (!v18 && (sub_22372B6E8() & 1) == 0)
  {

    log = sub_22372AC88();
    v42 = sub_22372B288();

    if (os_log_type_enabled(log, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v77 = v44;
      *v43 = 136315650;
      v45 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
      v46 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v47 = *(v45 + 8);

      v48 = sub_223623274(v46, v47, &v77);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      v49 = *v17;
      v50 = v17[1];

      v51 = sub_223623274(v49, v50, &v77);

      *(v43 + 14) = v51;
      *(v43 + 22) = 2080;
      v52 = sub_223623274(v16, v15, &v77);

      *(v43 + 24) = v52;
      _os_log_impl(&dword_223620000, log, v42, "Cannot commit for userLevelCandidateId  %s because given Candidate's topLevelCandidateId: %s and selectedTopLevelCandidateId :%s do not match.", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v44, -1, -1);
      v37 = v43;
      goto LABEL_21;
    }

    goto LABEL_51;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback) != 1)
  {
    if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses))
    {
      if (*(a1 + v12) == 2)
      {

        goto LABEL_41;
      }

      v65 = sub_22372B6E8();

      if (v65)
      {
LABEL_41:
        if (sub_2236AA67C(a1))
        {
          type metadata accessor for MUXResultCandidateContext(0);
          v66 = swift_dynamicCastClass();
          if (v66)
          {
            sub_2236A6948(v66);
          }

          goto LABEL_44;
        }

        log = sub_22372AC88();
        v29 = sub_22372B278();

        if (os_log_type_enabled(log, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v77 = v31;
          *v30 = 136315138;
          v71 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
          v72 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
          v73 = *(v71 + 8);

          v74 = sub_223623274(v72, v73, &v77);

          *(v30 + 4) = v74;
          v36 = "Cannot commit for userLevelCandidateId  %s because Post NL User Selection failed.";
          goto LABEL_20;
        }

LABEL_51:
        v64 = log;
LABEL_52:

        return;
      }

      log = sub_22372AC88();
      v29 = sub_22372B288();

      if (!os_log_type_enabled(log, v29))
      {
        goto LABEL_51;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v77 = v31;
      *v30 = 136315138;
      v67 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
      v68 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v69 = *(v67 + 8);

      v70 = sub_223623274(v68, v69, &v77);

      *(v30 + 4) = v70;
      v36 = "Cannot commit for userLevelCandidateId  %s because NL Results were not processed. This is unusual.";
    }

    else
    {

      log = sub_22372AC88();
      v29 = sub_22372B288();

      if (!os_log_type_enabled(log, v29))
      {
        goto LABEL_51;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v77 = v31;
      *v30 = 136315138;
      v60 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
      v61 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v62 = *(v60 + 8);

      v63 = sub_223623274(v61, v62, &v77);

      *(v30 + 4) = v63;
      v36 = "Cannot commit for userLevelCandidateId  %s because nlUserParses not available.";
    }

LABEL_20:
    _os_log_impl(&dword_223620000, log, v29, v36, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x223DE8A80](v31, -1, -1);
    v37 = v30;
LABEL_21:
    MEMORY[0x223DE8A80](v37, -1, -1);
    v28 = log;
    goto LABEL_22;
  }

  v19 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending);

  oslog = sub_22372AC88();
  v20 = sub_22372B268();

  v21 = os_log_type_enabled(oslog, v20);
  if (v19 == 1)
  {
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v77 = v23;
      *v22 = 136315138;
      v24 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
      v25 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v26 = *(v24 + 8);

      v27 = sub_223623274(v25, v26, &v77);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_223620000, oslog, v20, "Cannot commit for userLevelCandidateId  %s because waiting for server user selection.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x223DE8A80](v23, -1, -1);
      MEMORY[0x223DE8A80](v22, -1, -1);
      v28 = oslog;
LABEL_22:

      return;
    }

    v64 = oslog;
    goto LABEL_52;
  }

  if (v21)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v77 = v54;
    *v53 = 136315138;
    v55 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v56 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v57 = sub_223623274(v55, v56, &v77);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_223620000, oslog, v20, "Proceeding to finalize userLevelCandidateId: %s on ServerFallback path.", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x223DE8A80](v54, -1, -1);
    MEMORY[0x223DE8A80](v53, -1, -1);
  }

  type metadata accessor for MUXResultCandidateContext(0);
  v58 = swift_dynamicCastClass();
  if (v58)
  {
    v59 = v58;

    sub_2236A6948(v59);
LABEL_44:
  }
}

void sub_2236A6948(uint64_t a1)
{
  v2 = sub_22372A3C8();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MUXUserAttributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v12 = sub_22372AC98();
  v13 = __swift_project_value_buffer(v12, qword_27D097070);

  v50 = v13;
  v14 = sub_22372AC88();
  v15 = sub_22372B268();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v52[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_223623274(*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId), *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8), v52);
    _os_log_impl(&dword_223620000, v14, v15, "Proceeding to post ResultSelected for given RC Id: %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x223DE8A80](v17, -1, -1);
    MEMORY[0x223DE8A80](v16, -1, -1);
  }

  v18 = v51;
  v19 = *(v51 + qword_27D097120 + 32);
  __swift_project_boxed_opaque_existential_1((v51 + qword_27D097120), *(v51 + qword_27D097120 + 24));
  v20 = sub_22372A548();
  v53 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  v22 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(a1 + v22, v11);
  (*(*(v20 - 8) + 32))(boxed_opaque_existential_1, v11, v20);
  v24 = v48;
  v23 = v49;
  (*(v48 + 104))(v6, *MEMORY[0x277D5D1C0], v49);
  sub_22372A4B8();
  (*(v24 + 8))(v6, v23);
  sub_223626478(v52, &unk_27D08F750, &qword_22372C960);
  v25 = *(v18 + qword_27D097110);
  v26 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId);
  v27 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId + 8);
  v28 = *(v25 + 40);
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;

  sub_2236B1FA4(3u);
  *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 3;
  sub_2236B477C(v26, v27, a1);
  MEMORY[0x28223BE20](v29, v30);
  *(&v48 - 2) = v18;
  *(&v48 - 1) = a1;
  v31 = objc_allocWithZone(sub_2237283A8());
  v32 = sub_223728398();
  if (v32)
  {
    v33 = v32;
    v34 = v32;
    v35 = sub_22372AC88();
    v36 = sub_22372B268();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v33;
      v39 = v34;
      _os_log_impl(&dword_223620000, v35, v36, "MUXProcessor posting ResultSelected message: %@", v37, 0xCu);
      sub_223626478(v38, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v38, -1, -1);
      MEMORY[0x223DE8A80](v37, -1, -1);
    }

    v40 = v51;
    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v52, v53);
    sub_223729D88();
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    v41 = *(v40 + qword_27D097148);

    v42 = sub_22372A768();
    sub_22369D220(v42, v43, *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId), *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8));
  }

  else
  {

    v44 = sub_22372AC88();
    v45 = sub_22372B278();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_223623274(*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId), *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8), v52);
      _os_log_impl(&dword_223620000, v44, v45, "Failed to create ResultSelectedMessage for rcId: %s.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x223DE8A80](v47, -1, -1);
      MEMORY[0x223DE8A80](v46, -1, -1);
    }
  }
}

uint64_t sub_2236A6F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v22 - v12;
  v14 = *MEMORY[0x277D5CDE0];
  v15 = sub_223729DE8();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v13, v14, v15);
  (*(v16 + 56))(v13, 0, 1, v15);
  sub_2237283F8();
  sub_22372A728();
  sub_2237283C8();
  sub_22372A778();
  v17 = sub_223727408();
  (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  sub_223728418();
  sub_22372A768();
  sub_223728408();
  v18 = *(a3 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
  v19 = *(a3 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8);

  sub_2237283E8();
  v20 = *(a3 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_isMitigated);
  return sub_2237283D8();
}

void sub_2236A7190()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v134 - v5;
  v7 = type metadata accessor for MUXUserAttributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22372A548();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v16 = MEMORY[0x28223BE20](v12, v15);
  MEMORY[0x28223BE20](v16, v17);
  v20 = &v134 - v19;
  v21 = *(v1 + qword_27D097110);
  v22 = v21[5];
  if (!v22)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v42 = sub_22372AC98();
    __swift_project_value_buffer(v42, qword_27D097070);

    v152 = sub_22372AC88();
    v43 = sub_22372B278();

    if (os_log_type_enabled(v152, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v44 = 136315138;
      v46 = v21[2];
      v47 = v21[3];

      v48 = sub_223623274(v46, v47, aBlock);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_223620000, v152, v43, "Instrumentation: For requestContext with requestId %s, unable to find selectedTopLevelCandidateId, we lost the cache!", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x223DE8A80](v45, -1, -1);
      MEMORY[0x223DE8A80](v44, -1, -1);
    }

    else
    {
      v58 = v152;
    }

    return;
  }

  v150 = v18;
  v151 = v6;
  v152 = v21[4];
  swift_beginAccess();
  v23 = v21[8];
  v24 = *(v23 + 16);

  if (!v24)
  {
LABEL_13:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v49 = sub_22372AC98();
    __swift_project_value_buffer(v49, qword_27D097070);

    v50 = sub_22372AC88();
    v51 = sub_22372B278();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      aBlock[0] = v53;
      *v52 = 136315394;
      v54 = v21[2];
      v55 = v21[3];

      v56 = sub_223623274(v54, v55, aBlock);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      v57 = sub_223623274(v152, v22, aBlock);

      *(v52 + 14) = v57;
      _os_log_impl(&dword_223620000, v50, v51, "Instrumentation: For requestContext with requestId %s, unable to find selected RC Context for given selectedTopLevelCandidateId %s.", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v53, -1, -1);
      MEMORY[0x223DE8A80](v52, -1, -1);
    }

    else
    {
    }

    return;
  }

  v25 = sub_2236261A0(v152, v22);
  if ((v26 & 1) == 0)
  {

    goto LABEL_13;
  }

  v27 = *(*(v23 + 56) + 8 * v25);

  v149 = v27;
  v28 = v27 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  v145 = v28;
  sub_22368509C(v28, v11);
  v142 = v13[4];
  v142(v20, v11, v12);
  v143 = *(v1 + qword_27D097140);
  v29 = sub_22372AA08();
  v30 = v12;
  v31 = v29;
  v32 = v13 + 1;
  v33 = v13[1];
  v147 = v32;
  v148 = v30;
  v33(v20);
  v146 = v33;
  if (v31)
  {
    v34 = [v31 loggableMultiUserSharedUserId];
    v144 = v31;
    if (!v34)
    {
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v73 = sub_22372AC98();
      __swift_project_value_buffer(v73, qword_27D097070);

      v74 = sub_22372AC88();
      v75 = sub_22372B278();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        aBlock[0] = v151;
        *v76 = 136315650;
        v77 = v21[2];
        v78 = v21[3];

        v79 = sub_223623274(v77, v78, aBlock);

        *(v76 + 4) = v79;
        *(v76 + 12) = 2080;
        sub_22368509C(v145, v11);
        v80 = v148;
        v142(v20, v11, v148);
        sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298]);
        v81 = sub_22372B6B8();
        v83 = v82;
        v146(v20, v80);
        v84 = sub_223623274(v81, v83, aBlock);

        *(v76 + 14) = v84;
        *(v76 + 22) = 2080;
        v85 = sub_223623274(v152, v22, aBlock);

        *(v76 + 24) = v85;
        _os_log_impl(&dword_223620000, v74, v75, "Instrumentation: For requestContext with requestId %s, unable to find loggable shared User Id for selected user id: %s and selectedTopLevelCandidateId %s.", v76, 0x20u);
        v86 = v151;
        swift_arrayDestroy();
        MEMORY[0x223DE8A80](v86, -1, -1);
        MEMORY[0x223DE8A80](v76, -1, -1);
      }

      else
      {
      }

      goto LABEL_70;
    }

    v35 = v34;

    v138 = sub_22372AFE8();
    v139 = v36;

    v37 = [v31 sharedUserId];
    if (v37)
    {
      v38 = v37;
      v39 = sub_22372AFE8();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v87 = [v31 loggableMultiUserSharedUserId];
    if (v87)
    {
      v88 = v87;
      v89 = sub_22372AFE8();
      v91 = v90;

      if (v41)
      {
        if (v91)
        {
          if (v39 == v89 && v41 == v91)
          {

            v137 = 1;
          }

          else
          {
            v137 = sub_22372B6E8();
          }

          goto LABEL_47;
        }

        goto LABEL_40;
      }

      if (v91)
      {
        v137 = 0;
        goto LABEL_47;
      }
    }

    else if (v41)
    {
LABEL_40:
      v137 = 0;
LABEL_47:

      goto LABEL_48;
    }

    v137 = 1;
LABEL_48:
    v92 = sub_22372A9E8();
    v152 = *(v1 + qword_27D097148);

    v142 = sub_22372A748();
    v134 = sub_22372A768();
    v140 = v93;
    v135 = *(v149 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs);
    v94 = *(v149 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs + 8);
    v95 = v21[9];
    v96 = qword_27D097138;
    swift_beginAccess();
    v97 = v151;
    sub_223634890(v1 + v96, v151, &unk_27D08E990, &qword_22372FCF0);
    v141 = v95;
    v136 = sub_22372AA28();
    v98 = *(v145 + *(v7 + 20));
    sub_22372A508();
    v99 = sub_223727EF8();
    v100 = [objc_allocWithZone(MEMORY[0x277D596D8]) init];
    if (v100)
    {
      v101 = v100;
      if (v94)
      {
        v102 = 0;
      }

      else
      {
        v102 = v135;
      }

      [v100 setIsMultiUser_];
      [v101 setNlRerunLatencyInMs_];
      sub_22369D5DC(v95, v97, v92);

      sub_223630584(0, &qword_27D08F1E8, 0x277D59708);
      v103 = sub_22372B118();

      [v101 setUserScores_];

      [v101 setIsOutsider_];
      [v101 setIsSelectedUserPartOfMultipleHomes_];
      v104 = v98;
      v105 = v98 >= 5;
      v106 = v146;
      if (v105)
      {
        v107 = 0;
      }

      else
      {
        v107 = dword_22373007C[v104];
      }

      v117 = v150;
      [v101 setORCHUserIdentityClassification_];
      sub_22372A518();
      v118 = sub_22372AFD8();

      [v101 setSelectedSharedUserId_];

      v119 = v142;
      if ([v142 respondsToSelector_])
      {
        sub_22372A518();
        v120 = swift_allocObject();
        v121 = v152;
        v120[2] = v101;
        v120[3] = v121;
        v122 = v140;
        v120[4] = v134;
        v120[5] = v122;

        v123 = v101;
        v124 = sub_22372AFD8();

        aBlock[4] = sub_2236B12B8;
        aBlock[5] = v120;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22368503C;
        aBlock[3] = &block_descriptor_3;
        v125 = _Block_copy(aBlock);

        [v119 fetchDeviceAndUserIdsForSharedUserId:v124 withCallback:v125];
        _Block_release(v125);

        swift_unknownObjectRelease();

        v106(v117, v148);
        sub_223626478(v151, &unk_27D08E990, &qword_22372FCF0);
      }

      else
      {

        swift_unknownObjectRelease();

        v106(v117, v148);
        sub_223626478(v151, &unk_27D08E990, &qword_22372FCF0);
      }

      v108 = 0x27D08E000;
    }

    else
    {

      v108 = 0x27D08E000uLL;
      v109 = v146;
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v110 = sub_22372AC98();
      __swift_project_value_buffer(v110, qword_27D097070);
      v111 = v140;

      v112 = sub_22372AC88();
      v113 = sub_22372B278();

      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        aBlock[0] = v115;
        *v114 = 136315138;
        v116 = sub_223623274(v134, v111, aBlock);

        *(v114 + 4) = v116;
        _os_log_impl(&dword_223620000, v112, v113, "Instrumentation: Failed to create MUXRequestEnded message for : %s", v114, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v115);
        MEMORY[0x223DE8A80](v115, -1, -1);
        MEMORY[0x223DE8A80](v114, -1, -1);
      }

      else
      {
      }

      swift_unknownObjectRelease();

      v109(v150, v148);
      sub_223626478(v151, &unk_27D08E990, &qword_22372FCF0);
    }

    if (*(v108 + 712) != -1)
    {
      swift_once();
    }

    v126 = sub_22372AC98();
    __swift_project_value_buffer(v126, qword_27D097070);

    v127 = sub_22372AC88();
    v128 = sub_22372B268();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      aBlock[0] = v130;
      *v129 = 136315138;
      v131 = v21[2];
      v132 = v21[3];

      v133 = sub_223623274(v131, v132, aBlock);

      *(v129 + 4) = v133;
      _os_log_impl(&dword_223620000, v127, v128, "Instrumentation: Successfully logRequestCompleted() for requestId %s.", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v130);
      MEMORY[0x223DE8A80](v130, -1, -1);
      MEMORY[0x223DE8A80](v129, -1, -1);
    }

LABEL_70:
    return;
  }

  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v59 = sub_22372AC98();
  __swift_project_value_buffer(v59, qword_27D097070);

  v60 = sub_22372AC88();
  v61 = sub_22372B278();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    aBlock[0] = v151;
    *v62 = 136315650;
    v63 = v21[2];
    v64 = v21[3];

    v65 = sub_223623274(v63, v64, aBlock);

    *(v62 + 4) = v65;
    *(v62 + 12) = 2080;
    sub_22368509C(v145, v11);
    v66 = v148;
    v142(v20, v11, v148);
    sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298]);
    v67 = sub_22372B6B8();
    v69 = v68;
    v146(v20, v66);
    v70 = sub_223623274(v67, v69, aBlock);

    *(v62 + 14) = v70;
    *(v62 + 22) = 2080;
    v71 = sub_223623274(v152, v22, aBlock);

    *(v62 + 24) = v71;
    _os_log_impl(&dword_223620000, v60, v61, "Instrumentation: For requestContext with requestId %s, unable to find Home Member Info for selected user id: %s and selectedTopLevelCandidateId %s.", v62, 0x20u);
    v72 = v151;
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v72, -1, -1);
    MEMORY[0x223DE8A80](v62, -1, -1);
  }

  else
  {
  }
}

void sub_2236A843C(void *a1)
{
  v2 = v1;
  v130 = sub_22372A368();
  v129 = *(v130 - 8);
  v4 = *(v129 + 64);
  MEMORY[0x28223BE20](v130, v5);
  v128 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v132 = &v117 - v10;
  v136 = sub_223729F08();
  v138 = *(v136 - 8);
  v11 = v138[8];
  v13 = MEMORY[0x28223BE20](v136, v12);
  v131 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v133 = &v117 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v135 = &v117 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v134 = &v117 - v22;
  v23 = sub_223729DE8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v29 = sub_22372AC98();
  v30 = __swift_project_value_buffer(v29, qword_27D097070);
  v31 = a1;
  v32 = sub_22372AC88();
  v33 = sub_22372B268();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v137 = v2;
    v36 = v35;
    v139 = v35;
    *v34 = 136315138;
    sub_223729DA8();
    v37 = sub_223729DD8();
    v38 = v23;
    v39 = v31;
    v40 = v30;
    v42 = v41;
    (*(v24 + 8))(v28, v38);
    v43 = sub_223623274(v37, v42, &v139);
    v30 = v40;
    v31 = v39;

    *(v34 + 4) = v43;
    _os_log_impl(&dword_223620000, v32, v33, "Received MUXServerFallbackMessage from: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    v44 = v36;
    v2 = v137;
    MEMORY[0x223DE8A80](v44, -1, -1);
    MEMORY[0x223DE8A80](v34, -1, -1);
  }

  v45 = sub_2237290A8();
  v47 = v46;
  v48 = *(v2 + qword_27D097110);
  swift_beginAccess();
  v49 = *(v48 + 48);
  if (!*(v49 + 16))
  {
    goto LABEL_13;
  }

  v50 = *(v48 + 48);

  v51 = sub_2236261A0(v45, v47);
  if ((v52 & 1) == 0)
  {

LABEL_13:

    v65 = sub_22372AC88();
    v66 = sub_22372B278();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v139 = v68;
      *v67 = 136315138;
      v69 = sub_223623274(v45, v47, &v139);

      *(v67 + 4) = v69;
      _os_log_impl(&dword_223620000, v65, v66, "Could not find any Speech RC context for RCID: %s.. ignoring Server-fallback message", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x223DE8A80](v68, -1, -1);
      MEMORY[0x223DE8A80](v67, -1, -1);
    }

    else
    {
    }

    return;
  }

  v127 = v31;
  v53 = *(*(v49 + 56) + 8 * v51);

  type metadata accessor for MUXResultCandidateContext(0);
  v54 = swift_dynamicCastClass();
  if (!v54)
  {

    goto LABEL_13;
  }

  v118 = v45;
  v124 = v30;
  v125 = v53;
  v126 = v54;
  v55 = *(v54 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId);
  v56 = *(v54 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId + 8);

  v123 = sub_2236B4574(v55, v56);

  v146 = MEMORY[0x277D84F98];
  v57 = qword_27D097100;
  swift_beginAccess();
  v58 = v138;
  v59 = v138[2];
  v137 = v2;
  v122 = v57;
  v60 = v2 + v57;
  v61 = v136;
  v121 = v59;
  v59(v134, v60, v136);
  v62 = *MEMORY[0x277D5CF40];
  v119 = v58[13];
  v119(v135, v62, v61);
  v63 = sub_2236B12D0(&qword_28132B538, MEMORY[0x277D5CF58]);
  sub_22372B0F8();
  v120 = v63;
  sub_22372B0F8();
  if (v139 == v144 && v140 == v145)
  {
    v64 = 1;
  }

  else
  {
    v64 = sub_22372B6E8();
  }

  v70 = (v138 + 1);
  v71 = v138[1];
  v72 = v136;
  v71(v135, v136);
  v138 = v70;
  v71(v134, v72);

  if (v64)
  {
    sub_2236A44C0(v123, &v146);
  }

  v73 = qword_27D097120;
  v74 = qword_27D097118;
  v75 = v137;
  swift_beginAccess();
  v76 = v75 + v74;
  v77 = v132;
  sub_223634890(v76, v132, &unk_27D08F6F0, &qword_223732CD0);
  LOBYTE(v73) = sub_223724934((v75 + v73), v77);
  sub_223626478(v77, &unk_27D08F6F0, &qword_223732CD0);
  if (v73)
  {
    v78 = *(v75 + qword_27D097130 + 8);
    if (v78)
    {
      v79 = *(v75 + qword_27D097130);
      v80 = *(v75 + qword_27D097128);
      v81 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext;
      swift_beginAccess();
      v82 = *(v80 + v81);
      if (*(v82 + 16))
      {

        v83 = sub_2236261A0(v79, v78);
        if (v84)
        {
          v85 = *(*(v82 + 56) + 8 * v83);

          v86 = *(v85 + 72);
          v87 = v86;

          goto LABEL_26;
        }
      }

      v113 = sub_22372AC88();
      v114 = sub_22372B278();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        v116 = "Unable to find previus MUX request context in session context. Request will fail.";
        goto LABEL_44;
      }
    }

    else
    {

      v113 = sub_22372AC88();
      v114 = sub_22372B278();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        v116 = "Unable to find cached previousRequestId for a request that began with a prompt. Request will fail.";
LABEL_44:
        _os_log_impl(&dword_223620000, v113, v114, v116, v115, 2u);
        MEMORY[0x223DE8A80](v115, -1, -1);
      }
    }

    return;
  }

  v86 = *(v48 + 72);
  v87 = v86;
LABEL_26:
  v134 = v146;
  v88 = v136;
  v121(v133, v137 + v122, v136);
  v89 = v131;
  v119(v131, *MEMORY[0x277D5CF30], v88);
  v135 = v87;
  sub_22372B0F8();
  sub_22372B0F8();
  if (v139 == v142 && v140 == v143)
  {
    v90 = 1;
  }

  else
  {
    v90 = sub_22372B6E8();
  }

  v91 = v136;
  v71(v89, v136);
  v71(v133, v91);

  MEMORY[0x28223BE20](v92, v93);
  v94 = v134;
  *(&v117 - 4) = v127;
  *(&v117 - 3) = v94;
  *(&v117 - 16) = v90 & 1;
  *(&v117 - 1) = v86;
  v95 = objc_allocWithZone(sub_2237285E8());
  v96 = sub_223728538();

  if (v96)
  {
    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(&v139, v141);
    v138 = v96;
    sub_223729D88();
    __swift_destroy_boxed_opaque_existential_1Tm(&v139);
    *(v126 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2C8, &unk_22372FF70);
    v97 = v129;
    v98 = *(v129 + 72);
    v99 = (*(v129 + 80) + 32) & ~*(v129 + 80);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_22372FF50;
    v101 = v100 + v99;
    v102 = *(v97 + 104);
    v103 = v130;
    v102(v101, *MEMORY[0x277D5D178], v130);
    v102(v101 + v98, *MEMORY[0x277D5D170], v103);
    v102(v101 + 2 * v98, *MEMORY[0x277D5D168], v103);
    v102(v101 + 3 * v98, *MEMORY[0x277D5D180], v103);

    v104 = v128;
    sub_2237285F8();
    LOBYTE(v98) = sub_2236A95F8(v104, v100);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v97 + 8))(v104, v103);
    *(v126 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) = v98 & 1;

    v105 = sub_22372AC88();
    v106 = sub_22372B268();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v139 = v108;
      *v107 = 136315138;
      v109 = sub_223623274(v118, v47, &v139);

      *(v107 + 4) = v109;
      _os_log_impl(&dword_223620000, v105, v106, "Posted ExecuteNLOnServerMessage for rcId: %s", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v108);
      MEMORY[0x223DE8A80](v108, -1, -1);
      MEMORY[0x223DE8A80](v107, -1, -1);
    }

    else
    {
    }

    sub_2236A5E18(v126);
  }

  else
  {

    v110 = sub_22372AC88();
    v111 = sub_22372B278();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_223620000, v110, v111, "Could not create ExecuteNLOnServerMessage from MUXServerFallbackMessage", v112, 2u);
      MEMORY[0x223DE8A80](v112, -1, -1);
    }
  }
}

void sub_2236A9368(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for MUXUserAttributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22372A548();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  type metadata accessor for MUXSpeechResultCandidateContext(0);
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
    v18 = v16;
    swift_beginAccess();
    sub_22368509C(v18 + v17, v8);
    (*(v10 + 32))(v14, v8, v9);
    v19 = *(v18 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_speechPackage);
    v20 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *a2;
    *a2 = 0x8000000000000000;
    sub_22368DBF4(v19, v14, isUniquelyReferenced_nonNull_native);
    (*(v10 + 8))(v14, v9);
    *a2 = v26;
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v22 = sub_22372AC98();
    __swift_project_value_buffer(v22, qword_27D097070);
    v23 = sub_22372AC88();
    v24 = sub_22372B278();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_223620000, v23, v24, "Found non speech result candidate context in speech request. Failing the request.", v25, 2u);
      MEMORY[0x223DE8A80](v25, -1, -1);
    }
  }
}

BOOL sub_2236A95F8(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_22372A368() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_2236B12D0(&qword_27D08F310, MEMORY[0x277D5D190]);
  }

  while ((sub_22372AFC8() & 1) == 0);
  return v4 != v5;
}

void sub_2236A9704(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MUXUserAttributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v119 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22372A548();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v118 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v120 = &v115 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F920, qword_223730410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v122 = &v115 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EEB0, qword_22372FF80);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v121 = (&v115 - v23);
  v24 = sub_2237290A8();
  v26 = v25;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v27 = sub_22372AC98();
  v28 = __swift_project_value_buffer(v27, qword_27D097070);
  v29 = a1;
  v30 = sub_22372AC88();
  v31 = sub_22372B268();

  v32 = os_log_type_enabled(v30, v31);
  v123 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v116 = v24;
    v34 = v33;
    v35 = swift_slowAlloc();
    v117 = v28;
    v36 = v9;
    v37 = v35;
    v126[0] = v35;
    *v34 = 136315138;
    v38 = sub_2237290A8();
    v40 = v8;
    v41 = v2;
    v42 = sub_223623274(v38, v39, v126);

    *(v34 + 4) = v42;
    v2 = v41;
    v8 = v40;
    _os_log_impl(&dword_223620000, v30, v31, "Handling MUXNLResultCandidateMessage for rcId: %s.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    v43 = v37;
    v9 = v36;
    MEMORY[0x223DE8A80](v43, -1, -1);
    v44 = v34;
    v24 = v116;
    MEMORY[0x223DE8A80](v44, -1, -1);
  }

  v45 = *(v2 + qword_27D097110);
  swift_beginAccess();
  v46 = *(v45 + 48);
  if (!*(v46 + 16))
  {
    goto LABEL_16;
  }

  v47 = *(v45 + 48);

  v48 = sub_2236261A0(v24, v26);
  if ((v49 & 1) == 0)
  {

    goto LABEL_16;
  }

  v50 = v24;
  v51 = *(*(v46 + 56) + 8 * v48);

  v52 = type metadata accessor for MUXResultCandidateContext(0);
  v53 = swift_dynamicCastClass();
  if (!v53)
  {

    v24 = v50;
LABEL_16:

    v89 = sub_22372AC88();
    v90 = sub_22372B278();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v125[0] = v92;
      *v91 = 136315138;
      v93 = sub_223623274(v24, v26, v125);

      *(v91 + 4) = v93;
      _os_log_impl(&dword_223620000, v89, v90, "Could not find any RC context for RCID: %s.. ignoring NLResultCandidateMessage", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      MEMORY[0x223DE8A80](v92, -1, -1);
      MEMORY[0x223DE8A80](v91, -1, -1);
    }

    else
    {
    }

LABEL_23:

    return;
  }

  v54 = v53;
  v117 = v52;

  v55 = sub_223728748();
  v56 = *(v54 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses);
  *(v54 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses) = v55;

  v57 = v121;
  sub_223728758();
  v58 = sub_223727678();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  v59 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
  swift_beginAccess();
  sub_2236719F4(v57, v54 + v59, &qword_27D08EEB0, qword_22372FF80);
  swift_endAccess();
  v60 = v122;
  sub_223728768();
  v61 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
  swift_beginAccess();
  sub_2236719F4(v60, v54 + v61, &qword_27D08F920, qword_223730410);
  swift_endAccess();

  v122 = sub_2236AA67C(v54);
  if (!v122)
  {
LABEL_20:

    v89 = sub_22372AC88();
    v94 = sub_22372B278();

    if (os_log_type_enabled(v89, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v97 = v54;
      v98 = v96;
      v125[0] = v96;
      *v95 = 136315138;
      v99 = *(v97 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
      v100 = *(v97 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8);

      v101 = sub_223623274(v99, v100, v125);

      *(v95 + 4) = v101;
      _os_log_impl(&dword_223620000, v89, v94, "Post NL User Selection failed for rcId: %s.", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v98);
      MEMORY[0x223DE8A80](v98, -1, -1);
      MEMORY[0x223DE8A80](v95, -1, -1);
    }

    goto LABEL_23;
  }

  v121 = swift_dynamicCastClass();
  if (!v121)
  {

    goto LABEL_20;
  }

  v115 = v2;
  v116 = v54;
  v117 = v51;
  v62 = v120;
  v63 = v123;
  sub_2237295C8();
  v64 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  v65 = v121;
  swift_beginAccess();
  v66 = v65 + v64;
  v67 = v119;
  sub_22368509C(v66, v119);
  v68 = v118;
  (*(v9 + 32))(v118, v67, v8);
  v69 = sub_22372A538();
  v70 = *(v9 + 8);
  v70(v68, v8);
  v119 = v9 + 8;
  v70(v62, v8);
  v71 = v63;
  v72 = sub_22372AC88();
  v73 = sub_22372B288();

  v74 = os_log_type_enabled(v72, v73);
  if (v69)
  {
    if (v74)
    {
      v75 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v124 = v123;
      *v75 = 136315394;
      v76 = v70;
      v77 = v120;
      sub_2237295C8();
      sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298]);
      v78 = sub_22372B6B8();
      v80 = v79;
      v76(v77, v8);
      v81 = sub_223623274(v78, v80, &v124);

      *(v75 + 4) = v81;
      *(v75 + 12) = 2080;
      v82 = sub_2237290A8();
      v84 = sub_223623274(v82, v83, &v124);

      *(v75 + 14) = v84;
      _os_log_impl(&dword_223620000, v72, v73, "Since postNL user selected user is the same as the current user: %s, posting NLResultCandidateMessage for rcId: %s and proceeding to commit.", v75, 0x16u);
      v85 = v123;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v85, -1, -1);
      MEMORY[0x223DE8A80](v75, -1, -1);
    }

    v86 = v121;
    sub_2236ADF14(v121);
    v87 = *(v116 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId);
    v88 = *(v116 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId + 8);

    sub_2236B477C(v87, v88, v86);

    sub_2236A5E18(v86);
  }

  else
  {
    if (v74)
    {
      v102 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v124 = v123;
      *v102 = 136315394;
      v103 = v70;
      v104 = v120;
      sub_2237295C8();
      sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298]);
      v105 = sub_22372B6B8();
      v107 = v106;
      v103(v104, v8);
      v108 = sub_223623274(v105, v107, &v124);

      *(v102 + 4) = v108;
      *(v102 + 12) = 2080;
      v109 = sub_2237290A8();
      v111 = sub_223623274(v109, v110, &v124);

      *(v102 + 14) = v111;
      _os_log_impl(&dword_223620000, v72, v73, "Since postNL user selected user is NOT the same as the current user: %s, will not post NLResultCandidateMessage for rcId: %s.", v102, 0x16u);
      v112 = v123;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v112, -1, -1);
      MEMORY[0x223DE8A80](v102, -1, -1);
    }

    v113 = *(v116 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId);
    v114 = *(v116 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId + 8);

    sub_2236B477C(v113, v114, v121);
  }
}

void sub_2236AA248()
{
  v1 = v0;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_27D097070);
  v3 = sub_22372AC88();
  v4 = sub_22372B268();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_223620000, v3, v4, "Handling FlowPluginInfoMessage", v5, 2u);
    MEMORY[0x223DE8A80](v5, -1, -1);
  }

  v6 = sub_2237290A8();
  v8 = v7;
  if (v6 == sub_22372A908() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_22372B6E8();

    if ((v10 & 1) == 0)
    {
      v13 = sub_2237290A8();
      v12 = v21;
      v11 = *(v1 + qword_27D097110);

      goto LABEL_14;
    }
  }

  v11 = *(v1 + qword_27D097110);
  v12 = v11[5];
  if (v12)
  {
    v13 = v11[4];
    v14 = v11[5];
    swift_bridgeObjectRetain_n();
LABEL_14:
    swift_beginAccess();
    v22 = v11[6];
    if (*(v22 + 16) && (, v23 = sub_2236261A0(v13, v12), v25 = v24, , (v25 & 1) != 0))
    {
      v26 = *(*(v22 + 56) + 8 * v23);
      swift_retain_n();

      v27 = sub_223728298();
      sub_2236AEA78(v26, v27 & 1);
    }

    else
    {

      v28 = sub_22372AC88();
      v29 = sub_22372B278();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v34 = v31;
        *v30 = 136315138;
        v32 = sub_223623274(v13, v12, &v34);

        *(v30 + 4) = v32;
        _os_log_impl(&dword_223620000, v28, v29, "handleFlowPluginInfoMessage: Unable to find candidate context for id: %s, this can affect Conversation.", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x223DE8A80](v31, -1, -1);
        MEMORY[0x223DE8A80](v30, -1, -1);
      }

      else
      {
      }
    }

    return;
  }

  oslog = sub_22372AC88();
  v15 = sub_22372B278();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v17;
    *v16 = 136315138;
    v18 = sub_22372A908();
    v20 = sub_223623274(v18, v19, &v35);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_223620000, oslog, v15, "FlowPluginInfoMessage has a %s value for ResultCandidateId, but we do not know the selected result candidate ID either. Cannot post voice identification signal.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x223DE8A80](v17, -1, -1);
    MEMORY[0x223DE8A80](v16, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2236AA67C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22372AEE8();
  v229 = *(v4 - 8);
  v5 = *(v229 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v217 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v217 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE88, &qword_223730060);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v18 = &v217 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v217 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v217 - v24;
  v234 = sub_223729F08();
  v233 = *(v234 - 8);
  v26 = *(v233 + 64);
  v28 = MEMORY[0x28223BE20](v234, v27);
  v231 = &v217 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v232 = &v217 - v31;
  v259 = sub_22372A548();
  v254 = *(v259 - 8);
  v32 = *(v254 + 64);
  v34 = MEMORY[0x28223BE20](v259, v33);
  v228 = &v217 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v36);
  v253 = &v217 - v37;
  v260 = sub_22372A298();
  v258 = *(v260 - 8);
  v38 = *(v258 + 64);
  MEMORY[0x28223BE20](v260, v39);
  v257 = &v217 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8, v43);
  v255 = &v217 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v46 = *(*(v45 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v45 - 8, v47);
  v252 = &v217 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v50);
  v52 = &v217 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE90, &unk_22372FF60);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8, v55);
  v256 = &v217 - v56;
  v57 = type metadata accessor for MUXUserAttributes();
  v58 = *(*(v57 - 8) + 64);
  v60 = MEMORY[0x28223BE20](v57, v59);
  v62 = MEMORY[0x28223BE20](v60, v61);
  v64 = MEMORY[0x28223BE20](v62, v63);
  v261 = a1;
  v69 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses);
  if (!v69)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v96 = sub_22372AC98();
    __swift_project_value_buffer(v96, qword_27D097070);

    v93 = sub_22372AC88();
    v97 = sub_22372B278();

    if (!os_log_type_enabled(v93, v97))
    {
      goto LABEL_12;
    }

    v95 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v266 = v98;
    *v95 = 136315138;
    v99 = *(v261 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v100 = *(v261 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v101 = sub_223623274(v99, v100, &v266);

    *(v95 + 4) = v101;
    _os_log_impl(&dword_223620000, v93, v97, "Should not be calling doPostNLUserSelection without nlParses for candidateId: %s, cannot proceed with post NL user selection.", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    MEMORY[0x223DE8A80](v98, -1, -1);
    goto LABEL_11;
  }

  v226 = v67;
  v218 = v66;
  v221 = v18;
  v220 = v25;
  v219 = v22;
  v222 = v9;
  v223 = v12;
  v230 = &v217 - v65;
  v224 = v4;
  v70 = qword_27D097108;
  v251 = v64;
  v245 = v69;
  v250 = v68;
  swift_beginAccess();
  sub_223623934(v2 + v70, &v266);
  v246 = v267;
  v238 = v268;
  v249 = __swift_project_boxed_opaque_existential_1(&v266, v267);
  v71 = *(v2 + qword_27D097110);
  v72 = *(v261 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);
  v247 = *(v261 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
  v242 = v72;
  v73 = *(v71 + 72);
  v74 = *(v2 + qword_27D097140);
  v248 = v73;

  v244 = sub_223727F08();
  v75 = qword_27D097138;
  swift_beginAccess();
  v225 = v75;
  v243 = v52;
  sub_223634890(v2 + v75, v52, &unk_27D08E990, &qword_22372FCF0);
  v240 = qword_27D097120;
  v76 = *(v2 + qword_27D097130 + 8);
  v241 = *(v2 + qword_27D097130);
  v239 = v76;
  v77 = *(v2 + qword_27D097128);
  v78 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext;
  swift_beginAccess();
  v79 = *(v77 + v78);
  v80 = qword_27D097118;
  swift_beginAccess();
  v81 = v255;
  sub_223634890(v2 + v80, v255, &unk_27D08F6F0, &qword_223732CD0);
  v235 = v79;

  LOBYTE(v74) = sub_223727EF8();
  v82 = v258;
  v83 = v257;
  (*(v258 + 104))(v257, *MEMORY[0x277D5D0D0], v260);
  v227 = v71;
  v84 = *(v71 + 80);
  v85 = v2;
  v86 = v238;
  v236 = *(v238 + 16);
  v237 = v84;
  v216 = v246;
  v246 = v85;
  v87 = v85 + v240;
  v88 = v256;
  v89 = v73;
  v90 = v243;
  v236(v247, v242, v245, v89, v244, v243, v87, v241, v239, v79, v81, v74 & 1, v83, v84, v216, v86);

  (*(v82 + 8))(v83, v260);
  sub_223626478(v81, &unk_27D08F6F0, &qword_223732CD0);
  sub_223626478(v90, &unk_27D08E990, &qword_22372FCF0);
  v91 = v251;
  if ((*(v250 + 48))(v88, 1, v251) == 1)
  {
    sub_223626478(v88, &qword_27D08EE90, &unk_22372FF60);
    __swift_destroy_boxed_opaque_existential_1Tm(&v266);
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v92 = sub_22372AC98();
    __swift_project_value_buffer(v92, qword_27D097070);
    v93 = sub_22372AC88();
    v94 = sub_22372B278();
    if (!os_log_type_enabled(v93, v94))
    {
      goto LABEL_12;
    }

    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_223620000, v93, v94, "selectPostNLUser: Something went wrong during post NL user selection. Was unable to select a user.", v95, 2u);
LABEL_11:
    MEMORY[0x223DE8A80](v95, -1, -1);
LABEL_12:

    return 0;
  }

  v102 = v230;
  sub_2236852F0(v88, v230);
  __swift_destroy_boxed_opaque_existential_1Tm(&v266);
  v103 = (v261 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v105 = *(v261 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v104 = *(v261 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);
  v106 = v227;
  swift_beginAccess();
  v107 = *(v106 + 56);
  if (!*(v107 + 16))
  {
    v111 = v246;
    goto LABEL_20;
  }

  v108 = sub_2236261A0(v105, v104);
  v110 = v109;

  v111 = v246;
  if ((v110 & 1) == 0)
  {

    goto LABEL_20;
  }

  v112 = v106;
  v113 = *(*(v107 + 56) + 8 * v108);

  MEMORY[0x28223BE20](v114, v115);
  v216 = v102;
  v116 = sub_223685A30(sub_223685A48, &v215, v113);

  if (!v116)
  {
    v106 = v112;
LABEL_20:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v119 = sub_22372AC98();
    __swift_project_value_buffer(v119, qword_27D097070);
    v120 = v226;
    sub_22368509C(v102, v226);
    v121 = sub_22372AC88();
    v122 = sub_22372B278();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v261 = 0;
      v124 = v106;
      v125 = v123;
      v126 = swift_slowAlloc();
      v265 = v126;
      *v125 = 136315138;
      sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298]);
      v127 = sub_22372B6B8();
      v129 = v128;
      sub_223685354(v120);
      v130 = sub_223623274(v127, v129, &v265);
      v111 = v246;

      *(v125 + 4) = v130;
      _os_log_impl(&dword_223620000, v121, v122, "selectPostNLUser: Could not find CandidateContext for selectedUserId: %s. Trying to use unknown user's candidate.", v125, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v126);
      v131 = v126;
      v102 = v230;
      MEMORY[0x223DE8A80](v131, -1, -1);
      v132 = v125;
      v106 = v124;
      MEMORY[0x223DE8A80](v132, -1, -1);
    }

    else
    {

      sub_223685354(v120);
    }

    v133 = v254;
    v134 = v252;
    sub_223634890(v111 + v225, v252, &unk_27D08E990, &qword_22372FCF0);
    if ((*(v133 + 48))(v134, 1, v259) == 1)
    {
      sub_223626478(v134, &unk_27D08E990, &qword_22372FCF0);
      v135 = sub_22372AC88();
      v136 = sub_22372B278();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        *v137 = 0;
        _os_log_impl(&dword_223620000, v135, v136, "selectPostNLUser: sharedUserId of unknown user is nil. Will not post NL output. Request will time out.", v137, 2u);
        MEMORY[0x223DE8A80](v137, -1, -1);
      }
    }

    else
    {
      (*(v133 + 32))(v253, v134, v259);
      v138 = *(v106 + 56);
      if (*(v138 + 16))
      {
        v139 = *v103;
        v140 = v103[1];

        v141 = sub_2236261A0(v139, v140);
        v143 = v142;

        if (v143)
        {
          v144 = *(*(v138 + 56) + 8 * v141);

          MEMORY[0x28223BE20](v145, v146);
          v216 = v253;
          v116 = sub_223685A30(sub_2236853B0, &v215, v144);

          if (v116)
          {

            sub_2236B138C(-1);

            sub_2236B1508(0);

            v147 = sub_22372A418();
            sub_2236B1684(v147);

            sub_2236B1800(1);

            sub_2236B197C(0);

            sub_2236B1AF8(0);

            (*(v254 + 8))(v253, v259);
            goto LABEL_33;
          }
        }

        else
        {
        }
      }

      v197 = sub_22372AC88();
      v198 = sub_22372B278();
      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        *v199 = 0;
        _os_log_impl(&dword_223620000, v197, v198, "selectPostNLUser: Could not find context for unknown user. Will not post NL output. Request will time out.", v199, 2u);
        MEMORY[0x223DE8A80](v199, -1, -1);
      }

      (*(v254 + 8))(v253, v259);
    }

    sub_223685354(v102);
    return 0;
  }

  v117 = *(v102 + v91[6]);

  sub_2236B138C(v117);
  v118 = *(v102 + v91[5]);

  sub_2236B1508(v118);

  LODWORD(v118) = *(v102 + v91[8]);

  sub_2236B1684(v118);

  LOBYTE(v118) = *(v102 + v91[7]);

  sub_2236B1800(v118);

  LOBYTE(v118) = *(v102 + v91[9]);

  sub_2236B197C(v118);

  LOBYTE(v118) = *(v102 + v91[10]);

  sub_2236B1AF8(v118);

LABEL_33:
  v148 = qword_27D097100;
  swift_beginAccess();
  v149 = v233;
  v150 = v234;
  (*(v233 + 16))(v232, v111 + v148, v234);
  (*(v149 + 104))(v231, *MEMORY[0x277D5CF40], v150);
  sub_2236B12D0(&qword_28132B538, MEMORY[0x277D5CF58]);
  sub_22372B0F8();
  sub_22372B0F8();
  v151 = v224;
  if (v264[0] == v262 && v264[1] == v263)
  {
    v152 = *(v233 + 8);
    v153 = v234;
    v152(v231, v234);
    v152(v232, v153);
  }

  else
  {
    LODWORD(v261) = sub_22372B6E8();
    v154 = *(v233 + 8);
    v155 = v234;
    v154(v231, v234);
    v154(v232, v155);

    if ((v261 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  v157 = sub_2236B02C8(v156);

  if (v157)
  {
    type metadata accessor for MUXResultCandidateContext(0);
    v158 = swift_dynamicCastClass();
    if (v158)
    {
      v159 = v158;
      v160 = qword_27D08E2C8;

      if (v160 != -1)
      {
        swift_once();
      }

      v161 = sub_22372AC98();
      __swift_project_value_buffer(v161, qword_27D097070);
      v162 = sub_22372AC88();
      v163 = sub_22372B288();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        v264[0] = v261;
        *v164 = 136315394;
        LODWORD(v260) = v163;
        v165 = *(v116 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        v166 = *(v116 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

        v167 = sub_223623274(v165, v166, v264);

        *(v164 + 4) = v167;
        *(v164 + 12) = 2080;
        v168 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
        swift_beginAccess();
        v169 = v218;
        sub_22368509C(v116 + v168, v218);
        v170 = v254;
        v171 = v228;
        v172 = v259;
        (*(v254 + 32))(v228, v169, v259);
        sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298]);
        v173 = sub_22372B6B8();
        v175 = v174;
        (*(v170 + 8))(v171, v172);
        v176 = sub_223623274(v173, v175, v264);

        *(v164 + 14) = v176;
        _os_log_impl(&dword_223620000, v162, v260, "After examining post NL user selection results, it is deemed necessary to retrigger NL for RCID: %s of user id: %s by posting AsrResultCandidateMessage.", v164, 0x16u);
        v177 = v261;
        swift_arrayDestroy();
        v102 = v230;
        MEMORY[0x223DE8A80](v177, -1, -1);
        MEMORY[0x223DE8A80](v164, -1, -1);
      }

      sub_2236AD6C8(v159);
    }

    v178 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
    swift_beginAccess();
    v179 = v220;
    sub_223634890(v116 + v178, v220, &qword_27D08EE88, &qword_223730060);
    v180 = v229;
    v181 = (*(v229 + 48))(v179, 1, v151);
    sub_223626478(v179, &qword_27D08EE88, &qword_223730060);
    if (v181 == 1)
    {

      v182 = v219;
      sub_22372AED8();
      sub_223685354(v102);
      (*(v180 + 56))(v182, 0, 1, v151);
      swift_beginAccess();
      sub_2236719F4(v182, v116 + v178, &qword_27D08EE88, &qword_223730060);
      swift_endAccess();
LABEL_69:

      return v116;
    }

    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v206 = sub_22372AC98();
    __swift_project_value_buffer(v206, qword_27D097070);
    v207 = sub_22372AC88();
    v208 = sub_22372B278();
    if (os_log_type_enabled(v207, v208))
    {
      v209 = swift_slowAlloc();
      *v209 = 0;
      _os_log_impl(&dword_223620000, v207, v208, "Detected a strange state where it looks like NL was re-triggered twice for the same candidate.", v209, 2u);
      MEMORY[0x223DE8A80](v209, -1, -1);
    }

LABEL_71:
    sub_223685354(v102);
    return v116;
  }

LABEL_46:
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v183 = sub_22372AC98();
  __swift_project_value_buffer(v183, qword_27D097070);
  v184 = sub_22372AC88();
  v185 = sub_22372B268();
  if (os_log_type_enabled(v184, v185))
  {
    v186 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    v264[0] = v187;
    *v186 = 136315138;
    v188 = *(v116 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v189 = *(v116 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v190 = sub_223623274(v188, v189, v264);

    *(v186 + 4) = v190;
    v102 = v230;
    _os_log_impl(&dword_223620000, v184, v185, "Post NL candidate already has passed all re-trigger checks, there is no need to re-trigger NL for this candidate ID: %s.", v186, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v187);
    MEMORY[0x223DE8A80](v187, -1, -1);
    MEMORY[0x223DE8A80](v186, -1, -1);
  }

  v191 = v229;
  v192 = v223;
  v193 = v222;
  v194 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
  swift_beginAccess();
  v195 = v116 + v194;
  v196 = v221;
  sub_223634890(v195, v221, &qword_27D08EE88, &qword_223730060);
  if ((*(v191 + 48))(v196, 1, v151) == 1)
  {
    sub_223685354(v102);
    sub_223626478(v196, &qword_27D08EE88, &qword_223730060);
    return v116;
  }

  (*(v191 + 32))(v192, v196, v151);
  sub_22372AED8();
  sub_2236B12D0(&qword_27D08EE98, MEMORY[0x277D851E0]);
  if (sub_22372AFB8())
  {
    v201 = sub_22372AC88();
    v202 = sub_22372B278();
    if (os_log_type_enabled(v201, v202))
    {
      v203 = v191;
      v204 = swift_slowAlloc();
      *v204 = 0;
      _os_log_impl(&dword_223620000, v201, v202, "Detected inconsistency in observed timestamps. Please alert Siri Orchestration | Client.", v204, 2u);
      MEMORY[0x223DE8A80](v204, -1, -1);

      v205 = *(v203 + 8);
      v205(v193, v151);
      v205(v192, v151);
    }

    else
    {

      v214 = *(v191 + 8);
      v214(v193, v151);
      v214(v192, v151);
    }

    goto LABEL_71;
  }

  v210 = sub_22372AEC8();
  v211 = sub_22372AEC8();
  v212 = *(v191 + 8);
  v212(v193, v151);
  v212(v192, v151);
  result = sub_223685354(v102);
  if (v210 >= v211)
  {
    v213 = v116 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs;
    *v213 = (v210 - v211) / 0xF4240;
    *(v213 + 8) = 0;
    goto LABEL_69;
  }

  __break(1u);
  return result;
}

uint64_t sub_2236AC2F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v154 = a6;
  v153 = a5;
  v150 = a3;
  v158 = a1;
  v142 = sub_223727638();
  v143 = *(v142 - 8);
  v8 = *(v143 + 64);
  MEMORY[0x28223BE20](v142, v9);
  v141 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_22372A548();
  v149 = *(v170 - 8);
  v11 = *(v149 + 64);
  v13 = MEMORY[0x28223BE20](v170, v12);
  v163 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v136 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v136 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v148 = &v136 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2E0, &qword_223730018);
  v26 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v25 - 8, v27);
  v156 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v155 = &v136 - v31;
  if (qword_27D08E2C8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v32 = sub_22372AC98();
  v33 = __swift_project_value_buffer(v32, qword_27D097070);

  v167 = v33;
  v34 = sub_22372AC88();
  v35 = sub_22372B268();

  v36 = os_log_type_enabled(v34, v35);
  v136 = v18;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v171 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_223623274(v158, a2, &v171);
    _os_log_impl(&dword_223620000, v34, v35, "Creating MUXResultCandidateContext objects for topLevelCandidateId: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x223DE8A80](v38, -1, -1);
    MEMORY[0x223DE8A80](v37, -1, -1);
  }

  v39 = *(v150 + 64);
  v138 = v150 + 64;
  v40 = 1 << *(v150 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v18 = v41 & v39;
  v146 = qword_27D097140;
  v151 = qword_27D097110;
  v137 = (v40 + 63) >> 6;
  v166 = (v149 + 16);
  v169 = (v149 + 32);
  v157 = (v149 + 8);
  v140 = v143 + 16;
  v139 = v143 + 8;

  v42 = 0;
  *&v43 = 136315138;
  v145 = v43;
  *&v43 = 136315394;
  v144 = v43;
  v152 = a4;
  v164 = a2;
  v165 = v22;
  while (1)
  {
    if (!v18)
    {
      if (v137 <= v42 + 1)
      {
        v46 = v42 + 1;
      }

      else
      {
        v46 = v137;
      }

      v47 = v46 - 1;
      while (1)
      {
        v45 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v45 >= v137)
        {
          v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2E8, &unk_223730020);
          v85 = v156;
          (*(*(v84 - 8) + 56))(v156, 1, 1, v84);
          v60 = v85;
          v18 = 0;
          goto LABEL_20;
        }

        v18 = *(v138 + 8 * v45);
        ++v42;
        if (v18)
        {
          v44 = a4;
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v44 = a4;
    v45 = v42;
LABEL_19:
    v48 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v49 = v48 | (v45 << 6);
    v50 = v150;
    v51 = v149;
    v52 = v148;
    v53 = v170;
    (*(v149 + 16))(v148, *(v150 + 48) + *(v149 + 72) * v49, v170);
    v54 = *(*(v50 + 56) + 8 * v49);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2E8, &unk_223730020);
    v56 = *(v55 + 48);
    v57 = *(v51 + 32);
    v58 = v156;
    v57(v156, v52, v53);
    *&v58[v56] = v54;
    (*(*(v55 - 8) + 56))(v58, 0, 1, v55);
    v59 = v54;
    v47 = v45;
    v60 = v58;
    a4 = v44;
    a2 = v164;
    v22 = v165;
LABEL_20:
    v61 = v155;
    sub_2236B0250(v60, v155);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2E8, &unk_223730020);
    if ((*(*(v62 - 8) + 48))(v61, 1, v62) == 1)
    {
    }

    v63 = *(v61 + *(v62 + 48));
    v161 = *v169;
    v162 = v47;
    v161(v22, v61, v170);
    v171 = [v63 resultCandidateId];
    v168 = sub_22372B6B8();
    v65 = v64;
    v66 = sub_22372A518();
    if (*(a4 + 16))
    {
      v68 = sub_2236261A0(v66, v67);
      v70 = v69;

      if (v70)
      {
        v71 = *(*(a4 + 56) + 4 * v68);
        goto LABEL_32;
      }
    }

    else
    {
    }

    v72 = *(v159 + v146);
    if (sub_22372AA18())
    {
      v71 = -1;
    }

    else
    {
      v73 = v22;
      v74 = v136;
      (*v166)(v136, v73, v170);
      v75 = sub_22372AC88();
      v76 = sub_22372B278();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v171 = v160;
        *v77 = v145;
        sub_2236B12D0(&qword_28132B4E8, MEMORY[0x277D5D298]);
        v78 = v170;
        v79 = sub_22372B6B8();
        v81 = v80;
        (*v157)(v74, v78);
        v82 = sub_223623274(v79, v81, &v171);

        *(v77 + 4) = v82;
        _os_log_impl(&dword_223620000, v75, v76, "Encountered known userId: %s in speechPackage for which no VoiceIdScores are avaiable. This can lead to issues for User Selection. Defaulting to -1 for now.", v77, 0xCu);
        v83 = v160;
        __swift_destroy_boxed_opaque_existential_1Tm(v160);
        a2 = v164;
        MEMORY[0x223DE8A80](v83, -1, -1);
        MEMORY[0x223DE8A80](v77, -1, -1);
      }

      else
      {

        (*v157)(v74, v170);
      }

      v71 = -1;
      v22 = v165;
    }

LABEL_32:

    v86 = sub_22372AC88();
    v87 = sub_22372B268();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v171 = v89;
      *v88 = v144;
      *(v88 + 4) = sub_223623274(v168, v65, &v171);
      *(v88 + 12) = 2080;
      *(v88 + 14) = sub_223623274(v158, a2, &v171);
      _os_log_impl(&dword_223620000, v86, v87, "Caching userCandidateId: %s from topLevelCandidateId: %s.", v88, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v89, -1, -1);
      MEMORY[0x223DE8A80](v88, -1, -1);
    }

    v90 = *(v159 + v151);
    (*v166)(v163, v22, v170);
    v91 = type metadata accessor for MUXSpeechResultCandidateContext(0);
    v92 = *(v91 + 48);
    v93 = *(v91 + 52);
    v94 = swift_allocObject();
    *(v94 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_speechPackage) = v63;

    v95 = v63;
    v96 = [v95 recognition];
    v160 = v90;
    if (v96)
    {
      v97 = sub_22372B318();
      if (*(v97 + 16))
      {
        v98 = v143;
        v99 = *(v143 + 16);
        v100 = v97 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
        v101 = v141;
        v147 = v65;
        v102 = v95;
        v103 = v71;
        v104 = v142;
        v99(v141, v100, v142);

        v105 = sub_223727628();
        v107 = v106;
        v108 = *(v98 + 8);
        v22 = v165;
        v109 = v104;
        v71 = v103;
        v95 = v102;
        v65 = v147;
        v108(v101, v109);
        goto LABEL_39;
      }
    }

    v107 = 0xE500000000000000;
    v105 = 0x3E6C696E3CLL;
LABEL_39:

    v110 = (v94 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_utterance);
    *v110 = v105;
    v110[1] = v107;
    v111 = (v94 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId);
    v112 = v158;
    a2 = v164;
    *v111 = v158;
    v111[1] = a2;
    v113 = (v94 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
    v114 = v168;
    *v113 = v168;
    v113[1] = v65;
    *(v94 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses) = 0;
    v115 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
    v116 = sub_223727678();
    (*(*(v116 - 8) + 56))(v94 + v115, 1, 1, v116);
    v117 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
    v118 = sub_223727758();
    (*(*(v118 - 8) + 56))(v94 + v117, 1, 1, v118);
    *(v94 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 0;
    *(v94 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback) = 0;
    *(v94 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) = 0;
    *(v94 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_isMitigated) = 0;
    v119 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
    v120 = sub_22372AEE8();
    (*(*(v120 - 8) + 56))(v94 + v119, 1, 1, v120);
    v121 = v94 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs;
    *v121 = 0;
    *(v121 + 8) = 1;
    v122 = v94 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
    v161((v94 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute), v163, v170);
    v123 = type metadata accessor for MUXUserAttributes();
    *(v122 + v123[5]) = v153;
    *(v122 + v123[6]) = v71;
    *(v122 + v123[8]) = v154;
    *(v122 + v123[7]) = 0;
    *(v122 + v123[9]) = 2;
    *(v122 + v123[10]) = 2;
    v124 = (v94 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
    *v124 = v112;
    v124[1] = a2;
    v125 = (v94 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    *v125 = v114;
    v125[1] = v65;

    sub_2236B4024(v94);

    v126 = sub_22372AC88();
    v127 = sub_22372B268();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v171 = v129;
      *v128 = v145;

      v130 = sub_2236B3588();
      v132 = v131;

      v133 = sub_223623274(v130, v132, &v171);

      *(v128 + 4) = v133;
      _os_log_impl(&dword_223620000, v126, v127, "Created %s", v128, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v129);
      MEMORY[0x223DE8A80](v129, -1, -1);
      v134 = v128;
      v22 = v165;
      MEMORY[0x223DE8A80](v134, -1, -1);
    }

    else
    {
    }

    (*v157)(v22, v170);
    v42 = v162;
    a4 = v152;
  }
}

void sub_2236AD180()
{
  v30 = sub_2237290A8();
  v32 = v0;
  v31 = sub_223728E38();
  v1 = sub_223728E28();
  v2 = [v1 spIdKnownUserScores];

  if (!v2)
  {
LABEL_19:
    __break(1u);
    return;
  }

  sub_223630584(0, &qword_27D08EAE0, 0x277CCABB0);
  v3 = sub_22372AF58();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F160, &qword_223730070);
  v4 = sub_22372B578();
  v5 = v4;
  v6 = 0;
  v8 = v3 + 64;
  v7 = *(v3 + 64);
  v34 = v3;
  v9 = 1 << *(v3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  v33 = v4 + 64;
  if ((v10 & v7) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_11:
      v16 = v13 | (v6 << 6);
      v17 = (*(v34 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = *(*(v34 + 56) + 8 * v16);

      v21 = [v20 intValue];
      *(v33 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v22 = (v5[6] + 16 * v16);
      *v22 = v19;
      v22[1] = v18;
      *(v5[7] + 4 * v16) = v21;
      v23 = v5[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v5[2] = v25;
      if (!v11)
      {
        goto LABEL_6;
      }
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_6:
  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v6 >= v12)
    {
      break;
    }

    v15 = *(v8 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  v26 = sub_223728E28();
  v27 = [v26 userIdentityClassification];

  v28 = sub_223728E28();
  sub_22372A418();
  v29 = sub_22372B308();

  sub_2236AC2F8(v30, v32, v31, v5, v27, v29);
}

uint64_t sub_2236AD404(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v24 - v7;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_27D097070);
  v10 = a1;
  v11 = sub_22372AC88();
  v12 = sub_22372B268();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v13 = 138412546;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2080;
    v16 = v10;
    v17 = sub_223729D38();
    v19 = sub_223623274(v17, v18, &v25);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_223620000, v11, v12, "MUXBridge handling start request message: %@, requestId: %s", v13, 0x16u);
    sub_223626478(v14, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x223DE8A80](v15, -1, -1);
    MEMORY[0x223DE8A80](v13, -1, -1);
  }

  sub_223728058();
  v20 = sub_223729EE8();
  (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
  v21 = qword_27D097118;
  swift_beginAccess();
  sub_2236719F4(v8, v2 + v21, &unk_27D08F6F0, &qword_223732CD0);
  swift_endAccess();
  v22 = *(v2 + qword_27D097148);

  sub_22372A768();
  sub_22369C49C();
}

void sub_2236AD6C8(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for MUXSpeechResultCandidateContext(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v6 = v4;
    MEMORY[0x28223BE20](v4, v5);
    objc_allocWithZone(sub_223728A18());

    v7 = sub_223728978();
    if (v7)
    {
      v8 = v7;

      sub_2236B1FA4(1u);
      *(v6 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 1;

      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v9 = sub_22372AC98();
      __swift_project_value_buffer(v9, qword_27D097070);
      v10 = v8;
      v11 = sub_22372AC88();
      v12 = sub_22372B268();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        *(v13 + 4) = v10;
        *v14 = v8;
        v15 = v10;
        _os_log_impl(&dword_223620000, v11, v12, "Posted AsrResultCandidateMessage: %@", v13, 0xCu);
        sub_223626478(v14, &unk_27D08F250, &unk_22372D1D0);
        MEMORY[0x223DE8A80](v14, -1, -1);
        MEMORY[0x223DE8A80](v13, -1, -1);
      }

      sub_22372A758();
      __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      sub_223729D88();
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      v16 = *(v2 + qword_27D097148);

      v17 = sub_22372A768();
      sub_22369D200(v17, v18, *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId), *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8));
    }

    else
    {
      if (qword_27D08E2C8 != -1)
      {
        swift_once();
      }

      v22 = sub_22372AC98();
      __swift_project_value_buffer(v22, qword_27D097070);

      v23 = sub_22372AC88();
      v24 = sub_22372B278();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v31[0] = v26;
        *v25 = 136315138;
        v27 = sub_22372A768();
        v29 = sub_223623274(v27, v28, v31);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_223620000, v23, v24, "Failed to create AsrResultCandidateMessage for request: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x223DE8A80](v26, -1, -1);
        MEMORY[0x223DE8A80](v25, -1, -1);
      }
    }
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v19 = sub_22372AC98();
    __swift_project_value_buffer(v19, qword_27D097070);
    v30 = sub_22372AC88();
    v20 = sub_22372B278();
    if (os_log_type_enabled(v30, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_223620000, v30, v20, "Cannot post an ASRResultCandidateMessage for a non ASR RC.", v21, 2u);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }
  }
}

uint64_t sub_2236ADB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for MUXUserAttributes();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v7);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v38 - v22;
  v24 = *MEMORY[0x277D5CDD8];
  v25 = sub_223729DE8();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v23, v24, v25);
  (*(v26 + 56))(v23, 0, 1, v25);
  sub_2237289D8();
  sub_22372A728();
  sub_223728998();
  sub_22372A778();
  v27 = sub_223727408();
  (*(*(v27 - 8) + 56))(v18, 0, 1, v27);
  sub_223728A08();
  sub_22372A768();
  sub_2237289F8();
  v28 = *(a3 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
  v29 = *(a3 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8);

  sub_223728988();
  v30 = *(a3 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_speechPackage);
  sub_2237289B8();
  v31 = a3 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  v32 = v39;
  sub_22368509C(v31, v39);
  v33 = sub_22372A548();
  v34 = *(v33 - 8);
  (*(v34 + 32))(v13, v32, v33);
  (*(v34 + 56))(v13, 0, 1, v33);
  sub_2237289E8();
  v35 = *(v31 + *(v5 + 32));
  v40 = 0;
  sub_2237289A8();
  v36 = *(v31 + *(v5 + 28));
  return sub_2237289C8();
}

void sub_2236ADF14(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EEB0, qword_22372FF80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = v41 - v6;
  v8 = sub_223727678();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = (v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses);
  if (!v14)
  {
    goto LABEL_4;
  }

  v15 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
  swift_beginAccess();
  sub_223634890(a1 + v15, v7, &qword_27D08EEB0, qword_22372FF80);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_223626478(v7, &qword_27D08EEB0, qword_22372FF80);
LABEL_4:
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_27D097070);

    v17 = sub_22372AC88();
    v18 = sub_22372B288();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v42[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId), *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8), v42);
      _os_log_impl(&dword_223620000, v17, v18, "nlUserParses/nlResponseStatusCode not available for rcId: %s, cannot proceed with posting NLResultCandidateMessage.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    return;
  }

  v21 = (*(v9 + 32))(v13, v7, v8);
  MEMORY[0x28223BE20](v21, v22);
  v41[1] = v1;
  v41[-4] = v1;
  v41[-3] = a1;
  v41[-2] = v14;
  v41[-1] = v13;
  v23 = objc_allocWithZone(sub_223728738());

  v24 = sub_223728678();

  if (v24)
  {
    sub_2236B1FA4(2u);
    *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 2;
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v25 = sub_22372AC98();
    __swift_project_value_buffer(v25, qword_27D097070);
    v26 = v24;

    v27 = sub_22372AC88();
    v28 = sub_22372B268();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      v42[0] = v41[0];
      *v29 = 138412546;
      *(v29 + 4) = v26;
      *v30 = v24;
      *(v29 + 12) = 2080;
      v31 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId;
      v32 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
      v33 = *(v31 + 1);
      v34 = v26;
      *(v29 + 14) = sub_223623274(v32, v33, v42);
      _os_log_impl(&dword_223620000, v27, v28, "Posting NLResultCandidateMessage: %@ for rcID: %s.", v29, 0x16u);
      sub_223626478(v30, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v30, -1, -1);
      v35 = v41[0];
      __swift_destroy_boxed_opaque_existential_1Tm(v41[0]);
      MEMORY[0x223DE8A80](v35, -1, -1);
      MEMORY[0x223DE8A80](v29, -1, -1);
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v36 = sub_22372AC98();
    __swift_project_value_buffer(v36, qword_27D097070);

    v37 = sub_22372AC88();
    v38 = sub_22372B278();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_223623274(*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId), *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8), v42);
      _os_log_impl(&dword_223620000, v37, v38, "NLResultCandidateMessage could not be created for rcId: %s.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x223DE8A80](v40, -1, -1);
      MEMORY[0x223DE8A80](v39, -1, -1);
    }
  }

  (*(v9 + 8))(v13, v8);
}

uint64_t sub_2236AE570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v52 = a3;
  v53 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F920, qword_223730410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v56 = &v51 - v8;
  v9 = type metadata accessor for MUXUserAttributes();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v12);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EEB0, qword_22372FF80);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v51 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = &v51 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v33 = &v51 - v32;
  v34 = *MEMORY[0x277D5CDE0];
  v35 = sub_223729DE8();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v33, v34, v35);
  (*(v36 + 56))(v33, 0, 1, v35);
  sub_2237286F8();
  sub_22372A728();
  sub_2237286A8();
  sub_22372A778();
  v37 = sub_223727408();
  (*(*(v37 - 8) + 56))(v28, 0, 1, v37);
  sub_223728728();
  sub_22372A768();
  sub_223728718();
  v38 = v52;
  v39 = *(v52 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId);
  v40 = *(v52 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8);

  sub_223728688();

  sub_223728698();
  v41 = sub_223727678();
  v42 = *(v41 - 8);
  (*(v42 + 16))(v23, v55, v41);
  (*(v42 + 56))(v23, 0, 1, v41);
  sub_2237286C8();
  v43 = v38 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  v44 = v54;
  sub_22368509C(v43, v54);
  v45 = sub_22372A548();
  v46 = *(v45 - 8);
  (*(v46 + 32))(v18, v44, v45);
  (*(v46 + 56))(v18, 0, 1, v45);
  sub_223728708();
  v47 = *(v43 + *(v10 + 32));
  v57 = 0;
  sub_2237286B8();
  v48 = *(v43 + *(v10 + 28));
  sub_2237286E8();
  v49 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
  swift_beginAccess();
  sub_223634890(v38 + v49, v56, &qword_27D08F920, qword_223730410);
  return sub_2237286D8();
}

void sub_2236AEA78(uint64_t a1, int a2)
{
  v42 = a2;
  v4 = type metadata accessor for MUXUserAttributes();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v37 - v13;
  v15 = sub_223729F08();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22372A768();
  v40 = v22;
  v41 = v21;
  v23 = qword_27D097100;
  swift_beginAccess();
  v24 = *(v16 + 16);
  v38 = v2;
  v24(v20, v2 + v23, v15);
  v39 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback);
  v25 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  v26 = *(v25 + *(v5 + 28));
  v27 = *(v25 + *(v5 + 36));
  sub_22368509C(v25, v9);
  v28 = sub_22372A548();
  v29 = *(v28 - 8);
  (*(v29 + 32))(v14, v9, v28);
  (*(v29 + 56))(v14, 0, 1, v28);
  v30 = sub_22372AA48();

  sub_223626478(v14, &unk_27D08E990, &qword_22372FCF0);
  (*(v16 + 8))(v20, v15);
  if (v30)
  {
    v31 = sub_22372A748();
    aBlock[4] = sub_2236AEEA8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22365AC5C;
    aBlock[3] = &block_descriptor_2;
    v32 = _Block_copy(aBlock);
    v33 = v30;
    [v31 handleCommand:v33 completion:v32];
    _Block_release(v32);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v34 = sub_22372AC98();
    __swift_project_value_buffer(v34, qword_27D097070);
    v33 = sub_22372AC88();
    v35 = sub_22372B278();
    if (os_log_type_enabled(v33, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_223620000, v33, v35, "Could not send VoiceIdentificationSignal", v36, 2u);
      MEMORY[0x223DE8A80](v36, -1, -1);
    }
  }
}

void sub_2236AEEA8(uint64_t a1, void *a2)
{
  if (qword_281328E68 != -1)
  {
    swift_once();
  }

  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B698);
  v4 = a2;
  oslog = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F990, &unk_22372FDA0);
    v9 = sub_22372B038();
    v11 = sub_223623274(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_223620000, oslog, v5, "Sent VoiceIdentificationSignal, error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  else
  {
  }
}

void sub_2236AF04C(void *a1)
{
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_27D097070);
  v3 = a1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_223620000, v4, v5, "MUXBridge received message: %@", v6, 0xCu);
    sub_223626478(v7, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  sub_2236A7190();
}

uint64_t sub_2236AF230()
{
  v1 = qword_27D097100;
  v2 = sub_223729F08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_27D097128);

  v4 = *(v0 + qword_27D097110);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_27D097108));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_27D097120));
  v5 = *(v0 + qword_27D097130 + 8);

  sub_223626478(v0 + qword_27D097118, &unk_27D08F6F0, &qword_223732CD0);
  sub_223626478(v0 + qword_27D097138, &unk_27D08E990, &qword_22372FCF0);
  v6 = *(v0 + qword_27D097148);
}

uint64_t MUXRequestProcessor.deinit()
{
  v0 = sub_22372A788();
  v1 = qword_27D097100;
  v2 = sub_223729F08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_27D097128);

  v4 = *(v0 + qword_27D097110);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_27D097108));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_27D097120));
  v5 = *(v0 + qword_27D097130 + 8);

  sub_223626478(v0 + qword_27D097118, &unk_27D08F6F0, &qword_223732CD0);
  sub_223626478(v0 + qword_27D097138, &unk_27D08E990, &qword_22372FCF0);
  v6 = *(v0 + qword_27D097148);

  return v0;
}

uint64_t MUXRequestProcessor.__deallocating_deinit()
{
  v0 = *MUXRequestProcessor.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2236AF4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F318, &qword_223730068);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v26 - v19;
  sub_223729DA8();
  v21 = sub_223729DE8();
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  sub_2237285B8();
  sub_223729D98();
  sub_223728548();
  sub_223729D58();
  v22 = sub_223727408();
  (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
  sub_2237285D8();
  sub_223729D38();
  sub_2237285C8();
  sub_2237290A8();
  sub_223728568();
  sub_223728608();
  sub_223728588();
  sub_2237285F8();
  v23 = sub_22372A368();
  (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
  sub_223728558();

  sub_2237285A8();
  sub_223728578();
  v24 = a5;
  return sub_223728598();
}

unint64_t sub_2236AF76C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22372B798();

  return sub_2236AF88C(a1, v4);
}

unint64_t sub_2236AF7B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22372A548();
  sub_2236B12D0(&unk_27D08F1B0, MEMORY[0x277D5D298]);
  v5 = sub_22372AF98();

  return sub_2236AF8F8(a1, v5);
}

unint64_t sub_2236AF848(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22372B418();

  return sub_2236AFAB8(a1, v5);
}

unint64_t sub_2236AF88C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2236AF8F8(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_22372A548();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_2236B12D0(qword_27D08EC10, MEMORY[0x277D5D298]);
      v17 = sub_22372AFC8();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_2236AFAB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2236B0188(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DE7E70](v9, a1);
      sub_2236B01E4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t type metadata accessor for MUXRequestProcessor()
{
  result = qword_27D08F2D0;
  if (!qword_27D08F2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2236AFBDC()
{
  v0 = sub_223729F08();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2236B012C(319, &qword_28132B550, MEMORY[0x277D5CEA0]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2236B012C(319, &qword_28132B4E0, MEMORY[0x277D5D298]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_2236B012C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22372B3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2236B0250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2E0, &qword_223730018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2236B02C8(uint64_t a1)
{
  type metadata accessor for MUXSpeechResultCandidateContext(0);
  if (!swift_dynamicCastClass())
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v12 = sub_22372AC98();
    __swift_project_value_buffer(v12, qword_27D097070);
    v13 = sub_22372AC88();
    v14 = sub_22372B278();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_223620000, v13, v14, "Re trigger is only for Speech Requests.", v15, 2u);
      MEMORY[0x223DE8A80](v15, -1, -1);
    }

    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses))
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) - 2 < 2)
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v2 = sub_22372AC98();
    __swift_project_value_buffer(v2, qword_27D097070);

    v3 = sub_22372AC88();
    v4 = sub_22372B278();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_24;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315138;
    v7 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    v8 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v9 = *(v7 + 8);

    v10 = sub_223623274(v8, v9, &v31);

    *(v5 + 4) = v10;
    v11 = "Encountered highly unusual situation where rcId: %s should have NL results but does not. File a radar to Siri Orchestration.";
LABEL_23:
    _os_log_impl(&dword_223620000, v3, v4, v11, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x223DE8A80](v6, -1, -1);
    MEMORY[0x223DE8A80](v5, -1, -1);
LABEL_24:

    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState))
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v26 = sub_22372AC98();
    __swift_project_value_buffer(v26, qword_27D097070);

    v3 = sub_22372AC88();
    v4 = sub_22372B268();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_24;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315138;
    v27 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    v28 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v29 = *(v27 + 8);

    v30 = sub_223623274(v28, v29, &v31);

    *(v5 + 4) = v30;
    v11 = "NL has already been triggered for rcID: %s. Proceeding to wait for results.";
    goto LABEL_23;
  }

  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v16 = sub_22372AC98();
  __swift_project_value_buffer(v16, qword_27D097070);

  v17 = sub_22372AC88();
  v18 = sub_22372B268();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136315138;
    v21 = a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    v22 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v23 = *(v21 + 8);

    v24 = sub_223623274(v22, v23, &v31);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_223620000, v17, v18, "NL needs to be triggered for topLevelId: %s as it was never triggered.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v19, -1, -1);
  }

  return 1;
}

void sub_2236B0770(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v38 = a6;
  v39 = a2;
  v40 = a3;
  v9 = sub_223727408();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v15 = sub_22372AC98();
  __swift_project_value_buffer(v15, qword_27D097070);

  v16 = sub_22372AC88();
  v17 = sub_22372B278();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = a1;
    v19 = a5;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v41 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_223623274(v40, a4, &v41);
    _os_log_impl(&dword_223620000, v16, v17, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223DE8A80](v21, -1, -1);
    v22 = v20;
    a5 = v19;
    a1 = v18;
    MEMORY[0x223DE8A80](v22, -1, -1);
  }

  if (a5)
  {
    v23 = objc_allocWithZone(MEMORY[0x277D47208]);

    v24 = a5;
    v25 = [v23 init];
    sub_2237273F8();
    sub_2237273B8();
    (*(v10 + 8))(v14, v9);
    v26 = sub_22372AFD8();

    [v25 setAceId_];

    v27 = v25;
    v28 = [a1 aceId];
    [v27 setRefId_];

    v29 = v39;
    [v27 setErrorCode_];
    v30 = v40;
    v31 = sub_22372AFD8();
    [v27 setReason_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F308, &unk_223730050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22372E090;
    *(inited + 32) = 0x6567617373654DLL;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v30;
    *(inited + 56) = a4;

    v33 = v27;
    sub_22368F690(inited);
    swift_setDeallocating();
    sub_223626478(inited + 32, &qword_27D08F1D8, &qword_22372FBD0);
    v34 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v35 = sub_22372AFD8();
    v36 = sub_22372AF48();

    v37 = [v34 initWithDomain:v35 code:v29 userInfo:v36];

    v24(v27, v37);
    sub_22363FFD8(v24);
  }
}

void sub_2236B0BCC(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v68 = a1;
  v6 = sub_22372A548();
  v67 = *(v6 - 8);
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_223729F08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v60 - v18;
  v20 = qword_27D097100;
  swift_beginAccess();
  v21 = *(v11 + 16);
  v65 = v3;
  v21(v19, v3 + v20, v10);
  (*(v11 + 104))(v16, *MEMORY[0x277D5CF30], v10);
  sub_2236B12D0(&qword_28132B538, MEMORY[0x277D5CF58]);
  sub_22372B0F8();
  sub_22372B0F8();
  if (v71 == v69 && v72 == v70)
  {
    v22 = *(v11 + 8);
    v22(v16, v10);
    v22(v19, v10);
  }

  else
  {
    LODWORD(v64) = sub_22372B6E8();
    v23 = *(v11 + 8);
    v23(v16, v10);
    v23(v19, v10);

    if ((v64 & 1) == 0)
    {
      v57 = 0xD000000000000036;
      v58 = 0x8000000223735990;
      v59 = v68;
LABEL_15:
      sub_2236B0770(v59, -1, v57, v58, a2, a3);
      return;
    }
  }

  v24 = v68;
  v25 = [v68 userId];
  if (!v25)
  {
LABEL_14:
    v58 = 0x80000002237359D0;
    v59 = v24;
    v57 = 0xD000000000000020;
    goto LABEL_15;
  }

  v26 = v25;
  v27 = sub_22372AFE8();
  v29 = v28;

  v30 = [v24 processedAudioDuration];
  if (!v30)
  {

    goto LABEL_14;
  }

  v31 = v30;
  v32 = [v24 asrOutput];
  if (!v32)
  {

    goto LABEL_14;
  }

  v33 = v32;
  [v31 doubleValue];
  v34 = sub_22372B298();
  v64 = v31;
  v35 = v34;

  v36 = v66;
  sub_22372A508();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2F0, &unk_223730030);
  v63 = v33;
  v37 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F168, &unk_22372FB80) - 8);
  v38 = *(*v37 + 72);
  v39 = *(*v37 + 80);
  v61 = v27;
  v40 = (v39 + 32) & ~v39;
  v41 = swift_allocObject();
  v60 = xmmword_22372E090;
  *(v41 + 16) = xmmword_22372E090;
  v42 = v41 + v40;
  v43 = v37[14];
  v44 = v67;
  (*(v67 + 16))(v42, v36, v6);
  *(v42 + v43) = v35;
  v62 = v35;
  v45 = sub_223690860(v41);
  swift_setDeallocating();
  sub_223626478(v42, &qword_27D08F168, &unk_22372FB80);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2F8, &qword_223730040);
  inited = swift_initStackObject();
  *(inited + 16) = v60;
  *(inited + 32) = v61;
  v47 = inited + 32;
  *(inited + 40) = v29;
  v48 = v36;
  *(inited + 48) = 100;
  v49 = sub_223690A48(inited);
  swift_setDeallocating();
  sub_223626478(v47, &qword_27D08F300, &qword_223730048);
  v50 = sub_22372A418();
  v51 = v65;
  sub_2236AC2F8(48, 0xE100000000000000, v45, v49, 3, v50);

  v52 = *(v51 + qword_27D097110);
  v53 = sub_2236B473C(48, 0xE100000000000000, v36);
  if (!v53)
  {
    sub_2236B0770(v68, -1, 0xD000000000000026, 0x8000000223735A00, a2, a3);

    goto LABEL_18;
  }

  v54 = v53;
  v55 = v62;
  v56 = v63;
  sub_2236AD6C8(v53);
  sub_2236A6948(v54);
  if (a2)
  {
    a2(0, 0);

LABEL_18:

    (*(v44 + 8))(v48, v6);
    return;
  }

  (*(v44 + 8))(v48, v6);
}

uint64_t sub_2236B12D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2236B138C(int a1)
{
  v3 = type metadata accessor for MUXUserAttributes();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v20[-v11];
  v13 = v1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v13, v9);
  v14 = sub_22372A548();
  (*(*(v14 - 8) + 32))(v12, v9, v14);
  v15 = *(v13 + v4[10]);
  v16 = *(v13 + v4[9]);
  v17 = *(v13 + v4[11]);
  v18 = *(v13 + v4[12]);
  *&v12[v4[7]] = *(v13 + v4[7]);
  *&v12[v4[8]] = a1;
  *&v12[v4[10]] = v15;
  v12[v4[9]] = v16;
  v12[v4[11]] = v17;
  v12[v4[12]] = v18;
  swift_beginAccess();
  sub_2236B51B8(v12, v13);
  return swift_endAccess();
}

uint64_t sub_2236B1508(uint64_t a1)
{
  v3 = type metadata accessor for MUXUserAttributes();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21[-v11];
  v13 = v1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v13, v9);
  v14 = sub_22372A548();
  (*(*(v14 - 8) + 32))(v12, v9, v14);
  v15 = *(v13 + v4[8]);
  v16 = *(v13 + v4[10]);
  v17 = *(v13 + v4[9]);
  v18 = *(v13 + v4[11]);
  v19 = *(v13 + v4[12]);
  *&v12[v4[7]] = a1;
  *&v12[v4[8]] = v15;
  *&v12[v4[10]] = v16;
  v12[v4[9]] = v17;
  v12[v4[11]] = v18;
  v12[v4[12]] = v19;
  swift_beginAccess();
  sub_2236B51B8(v12, v13);
  return swift_endAccess();
}

uint64_t sub_2236B1684(int a1)
{
  v3 = type metadata accessor for MUXUserAttributes();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v20[-v11];
  v13 = v1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v13, v9);
  v14 = sub_22372A548();
  (*(*(v14 - 8) + 32))(v12, v9, v14);
  v15 = *(v13 + v4[8]);
  v16 = *(v13 + v4[9]);
  v17 = *(v13 + v4[11]);
  v18 = *(v13 + v4[12]);
  *&v12[v4[7]] = *(v13 + v4[7]);
  *&v12[v4[8]] = v15;
  *&v12[v4[10]] = a1;
  v12[v4[9]] = v16;
  v12[v4[11]] = v17;
  v12[v4[12]] = v18;
  swift_beginAccess();
  sub_2236B51B8(v12, v13);
  return swift_endAccess();
}

uint64_t sub_2236B1800(char a1)
{
  v3 = type metadata accessor for MUXUserAttributes();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v20[-v11];
  v13 = v1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v13, v9);
  v14 = sub_22372A548();
  (*(*(v14 - 8) + 32))(v12, v9, v14);
  v15 = *(v13 + v4[8]);
  v16 = *(v13 + v4[10]);
  v17 = *(v13 + v4[11]);
  v18 = *(v13 + v4[12]);
  *&v12[v4[7]] = *(v13 + v4[7]);
  *&v12[v4[8]] = v15;
  *&v12[v4[10]] = v16;
  v12[v4[9]] = a1;
  v12[v4[11]] = v17;
  v12[v4[12]] = v18;
  swift_beginAccess();
  sub_2236B51B8(v12, v13);
  return swift_endAccess();
}

uint64_t sub_2236B197C(char a1)
{
  v3 = type metadata accessor for MUXUserAttributes();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v20[-v11];
  v13 = v1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v13, v9);
  v14 = sub_22372A548();
  (*(*(v14 - 8) + 32))(v12, v9, v14);
  v15 = *(v13 + v4[8]);
  v16 = *(v13 + v4[10]);
  v17 = *(v13 + v4[9]);
  v18 = *(v13 + v4[12]);
  *&v12[v4[7]] = *(v13 + v4[7]);
  *&v12[v4[8]] = v15;
  *&v12[v4[10]] = v16;
  v12[v4[9]] = v17;
  v12[v4[11]] = a1;
  v12[v4[12]] = v18;
  swift_beginAccess();
  sub_2236B51B8(v12, v13);
  return swift_endAccess();
}

uint64_t sub_2236B1AF8(char a1)
{
  v3 = type metadata accessor for MUXUserAttributes();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v20[-v11];
  v13 = v1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v13, v9);
  v14 = sub_22372A548();
  (*(*(v14 - 8) + 32))(v12, v9, v14);
  v15 = *(v13 + v4[8]);
  v16 = *(v13 + v4[10]);
  v17 = *(v13 + v4[9]);
  v18 = *(v13 + v4[11]);
  *&v12[v4[7]] = *(v13 + v4[7]);
  *&v12[v4[8]] = v15;
  *&v12[v4[10]] = v16;
  v12[v4[9]] = v17;
  v12[v4[11]] = v18;
  v12[v4[12]] = a1;
  swift_beginAccess();
  sub_2236B51B8(v12, v13);
  return swift_endAccess();
}

uint64_t sub_2236B1C80()
{
  v1 = *v0;
  sub_22372B7A8();
  sub_22372B078();

  return sub_22372B7C8();
}

uint64_t sub_2236B1D54()
{
  *v0;
  sub_22372B078();
}

uint64_t sub_2236B1E14()
{
  v1 = *v0;
  sub_22372B7A8();
  sub_22372B078();

  return sub_22372B7C8();
}

uint64_t sub_2236B1EE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2236B50F4();
  *a2 = result;
  return result;
}

void sub_2236B1F14(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000646574;
  v3 = 0x616974696E496C6ELL;
  v4 = 0x80000002237342E0;
  v5 = 0x657A696C616E6966;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000018;
    v2 = 0x80000002237342B0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_2236B1FA4(unsigned __int8 a1)
{
  v2 = v1;
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_27D097070);

  oslog = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315906;
    v8 = *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
    v9 = *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

    v10 = sub_223623274(v8, v9, &v26);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v12 = *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v13 = sub_223623274(v11, v12, &v26);

    *(v6 + 14) = v13;
    v14 = *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState);
    *(v6 + 22) = 2080;
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v16 = 0xD000000000000014;
        v15 = 0x80000002237342E0;
      }

      else
      {
        v16 = 0x657A696C616E6966;
        v15 = 0xE900000000000064;
      }
    }

    else if (v14)
    {
      v16 = 0x616974696E496C6ELL;
      v15 = 0xEB00000000646574;
    }

    else
    {
      v15 = 0x80000002237342B0;
      v16 = 0xD000000000000018;
    }

    v17 = sub_223623274(v16, v15, &v26);

    *(v6 + 24) = v17;
    *(v6 + 32) = 2080;
    v18 = 0x80000002237342E0;
    v19 = 0x657A696C616E6966;
    if (a1 == 2)
    {
      v19 = 0xD000000000000014;
    }

    else
    {
      v18 = 0xE900000000000064;
    }

    v20 = 0x80000002237342B0;
    v21 = 0xD000000000000018;
    if (a1)
    {
      v21 = 0x616974696E496C6ELL;
      v20 = 0xEB00000000646574;
    }

    if (a1 <= 1u)
    {
      v22 = v21;
    }

    else
    {
      v22 = v19;
    }

    if (a1 <= 1u)
    {
      v23 = v20;
    }

    else
    {
      v23 = v18;
    }

    v24 = sub_223623274(v22, v23, &v26);

    *(v6 + 34) = v24;
    _os_log_impl(&dword_223620000, oslog, v5, "MUX: candidateState for topLevelCandidateId %s, userLevelCandidateId %s changed from %s to %s", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }
}

uint64_t sub_2236B22BC()
{
  v1 = v0;
  v2 = type metadata accessor for MUXUserAttributes();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_22372B458();
  v17 = v15;
  v18 = v16;
  MEMORY[0x223DE7AD0](0xD000000000000014, 0x8000000223736230);
  v7 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v8 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

  MEMORY[0x223DE7AD0](v7, v8);

  MEMORY[0x223DE7AD0](0xD000000000000017, 0x80000002237361B0);
  v9 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
  v10 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

  MEMORY[0x223DE7AD0](v9, v10);

  MEMORY[0x223DE7AD0](0xD00000000000001ALL, 0x8000000223736250);
  v11 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v1 + v11, v6);
  v12 = sub_2236B5380();
  MEMORY[0x223DE7AD0](v12);

  sub_223685354(v6);
  MEMORY[0x223DE7AD0](0xD000000000000012, 0x8000000223736270);
  v14[7] = *(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState);
  sub_22372B528();
  MEMORY[0x223DE7AD0](34, 0xE100000000000000);
  return v17;
}

uint64_t sub_2236B24B0()
{
  sub_223685354(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute);
  v1 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses);

  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode, &qword_27D08EEB0, qword_22372FF80);
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult, &qword_27D08F920, qword_223730410);
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime, &qword_27D08EE88, &qword_223730060);
  v2 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

  v3 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2236B25D4()
{
  v0 = type metadata accessor for MUXUserAttributes();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_2236B279C(319, &qword_27D08F330, MEMORY[0x277D5DBC0]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_2236B279C(319, &qword_27D08F338, MEMORY[0x277D5DD70]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_2236B279C(319, &qword_27D08F340, MEMORY[0x277D851E0]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2236B279C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22372B3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2236B2840()
{
  v1 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLResponse);

  v2 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLRepetitions);
}

uint64_t sub_2236B2880()
{
  sub_223685354(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute);
  v1 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses);

  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode, &qword_27D08EEB0, qword_22372FF80);
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult, &qword_27D08F920, qword_223730410);
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime, &qword_27D08EE88, &qword_223730060);
  v2 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

  v3 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

  v4 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLResponse);

  v5 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLRepetitions);

  return v0;
}

uint64_t sub_2236B2994()
{
  v1 = type metadata accessor for MUXUserAttributes();
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22372A548();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_22372B458();
  v25 = v23;
  v26 = v24;
  MEMORY[0x223DE7AD0](0x3A644972657375, 0xE700000000000000);
  v13 = v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v13, v6);
  (*(v8 + 32))(v12, v6, v7);
  sub_2236B5160();
  v14 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v14);

  (*(v8 + 8))(v12, v7);
  MEMORY[0x223DE7AD0](0xD000000000000016, 0x8000000223736190);
  v15 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v16 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

  MEMORY[0x223DE7AD0](v15, v16);

  MEMORY[0x223DE7AD0](0xD000000000000017, 0x80000002237361B0);
  v17 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
  v18 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

  MEMORY[0x223DE7AD0](v17, v18);

  MEMORY[0x223DE7AD0](0xD000000000000010, 0x80000002237361D0);
  LODWORD(v22) = *(v13 + v2[8]);
  v19 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v19);

  MEMORY[0x223DE7AD0](0xD000000000000019, 0x80000002237361F0);
  v22 = *(v13 + v2[7]);
  type metadata accessor for AFUserIdentityClassfication(0);
  sub_22372B528();
  MEMORY[0x223DE7AD0](0xD000000000000015, 0x8000000223736210);
  LODWORD(v22) = *(v13 + v2[10]);
  v20 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v20);

  return v25;
}

uint64_t sub_2236B2D5C()
{
  v1 = type metadata accessor for MUXUserAttributes();
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22372A548();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_22372B458();
  v25 = v23;
  v26 = v24;
  MEMORY[0x223DE7AD0](0x3A644972657375, 0xE700000000000000);
  v13 = v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v13, v6);
  (*(v8 + 32))(v12, v6, v7);
  sub_2236B5160();
  v14 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v14);

  (*(v8 + 8))(v12, v7);
  MEMORY[0x223DE7AD0](0x617265747475202CLL, 0xEC0000003A65636ELL);
  MEMORY[0x223DE7AD0](*(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges26MUXTextTRPCandidateContext_utterance), *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges26MUXTextTRPCandidateContext_utterance + 8));
  MEMORY[0x223DE7AD0](0xD000000000000016, 0x8000000223736190);
  v15 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v16 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

  MEMORY[0x223DE7AD0](v15, v16);

  MEMORY[0x223DE7AD0](0xD000000000000017, 0x80000002237361B0);
  v17 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
  v18 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

  MEMORY[0x223DE7AD0](v17, v18);

  MEMORY[0x223DE7AD0](0xD000000000000010, 0x80000002237361D0);
  LODWORD(v22) = *(v13 + v2[8]);
  v19 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v19);

  MEMORY[0x223DE7AD0](0xD000000000000019, 0x80000002237361F0);
  v22 = *(v13 + v2[7]);
  type metadata accessor for AFUserIdentityClassfication(0);
  sub_22372B528();
  MEMORY[0x223DE7AD0](0xD000000000000015, 0x8000000223736210);
  LODWORD(v22) = *(v13 + v2[10]);
  v20 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v20);

  return v25;
}

uint64_t sub_2236B3158()
{
  sub_2236B2880();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2236B3234()
{
  v1 = v0;
  BYTE8(v4) = 0;
  sub_22372B458();
  v2 = sub_2236B22BC();
  MEMORY[0x223DE7AD0](v2);

  MEMORY[0x223DE7AD0](0xD000000000000017, 0x8000000223736130);
  MEMORY[0x223DE7AD0](*(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId), *(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId + 8));
  MEMORY[0x223DE7AD0](0xD000000000000014, 0x8000000223736150);
  MEMORY[0x223DE7AD0](*(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId), *(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8));
  MEMORY[0x223DE7AD0](0xD000000000000013, 0x8000000223736170);
  *&v4 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState);
  sub_22372B528();
  MEMORY[0x223DE7AD0](34, 0xE100000000000000);
  return *(&v4 + 1);
}

uint64_t sub_2236B3374()
{
  v1 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8);
}

uint64_t sub_2236B33BC()
{
  sub_223685354(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute);
  v1 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses);

  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode, &qword_27D08EEB0, qword_22372FF80);
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult, &qword_27D08F920, qword_223730410);
  sub_223626478(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime, &qword_27D08EE88, &qword_223730060);
  v2 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId + 8);

  v3 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

  v4 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId + 8);

  v5 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId + 8);

  return v0;
}

uint64_t sub_2236B34BC(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_2236B3588()
{
  sub_22372B458();

  v1 = sub_2236B3234();
  MEMORY[0x223DE7AD0](v1);

  MEMORY[0x223DE7AD0](0x617265747475202CLL, 0xED0000203A65636ELL);
  MEMORY[0x223DE7AD0](*(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_utterance), *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_utterance + 8));
  MEMORY[0x223DE7AD0](93, 0xE100000000000000);
  return 0xD000000000000020;
}

uint64_t sub_2236B3660()
{
  v1 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_utterance + 8);
}

uint64_t sub_2236B36A4()
{
  sub_2236B33BC();
  v1 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_speechPackage);

  v2 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges31MUXSpeechResultCandidateContext_utterance + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2236B377C()
{
  sub_22372B458();
  MEMORY[0x223DE7AD0](0xD000000000000023, 0x80000002237360D0);
  v1 = sub_2236B3234();
  MEMORY[0x223DE7AD0](v1);

  MEMORY[0x223DE7AD0](0x617265747475202CLL, 0xED0000203A65636ELL);
  MEMORY[0x223DE7AD0](*(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges34MUXTextBasedResultCandidateContext_utterance), *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges34MUXTextBasedResultCandidateContext_utterance + 8));
  MEMORY[0x223DE7AD0](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_2236B388C(void (*a1)(void), void *a2)
{
  a1();
  v4 = *(v2 + *a2 + 8);

  v5 = *(*v2 + 48);
  v6 = *(*v2 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_2236B3970()
{
  sub_22372B458();

  v0 = sub_2236B3234();
  MEMORY[0x223DE7AD0](v0);

  MEMORY[0x223DE7AD0](93, 0xE100000000000000);
  return 0xD000000000000026;
}

uint64_t sub_2236B3A00()
{
  v1 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges37MUXDirectActionResultCandidateContext_directAction + 8);

  v2 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges37MUXDirectActionResultCandidateContext_requestExecutionParameters);
}

uint64_t sub_2236B3A44()
{
  sub_2236B33BC();
  v1 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges37MUXDirectActionResultCandidateContext_directAction + 8);

  v2 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges37MUXDirectActionResultCandidateContext_requestExecutionParameters);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2236B3B58(void *a1)
{
  if (a1)
  {
    oslog = *(v1 + 72);
    *(v1 + 72) = a1;
    v2 = a1;
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v3 = sub_22372AC98();
    __swift_project_value_buffer(v3, qword_27D097070);
    oslog = sub_22372AC88();
    v4 = sub_22372B278();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_223623274(0xD000000000000028, 0x8000000223736290, &v8);
      _os_log_impl(&dword_223620000, oslog, v4, "%s: Ignoring empty voice id score card.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x223DE8A80](v6, -1, -1);
      MEMORY[0x223DE8A80](v5, -1, -1);
    }
  }
}

uint64_t sub_2236B3CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v9 = sub_22372A548();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v38 - v17;
  v19 = *(v10 + 16);
  v19(&v38 - v17, a3, v9);
  v20 = type metadata accessor for MUXTextTRPCandidateContext(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = (v23 + OBJC_IVAR____TtC24RequestDispatcherBridges26MUXTextTRPCandidateContext_utterance);
  *v24 = a1;
  v24[1] = a2;
  v19(v15, v18, v9);

  LODWORD(a2) = sub_22372A418();
  (*(v10 + 8))(v18, v9);
  *(v23 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLResponse) = 0;
  *(v23 + OBJC_IVAR____TtC24RequestDispatcherBridges22MUXTRPCandidateContext_tcuMappedNLRepetitions) = 0;
  *(v23 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses) = 0;
  v25 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlResponseStatusCode;
  v26 = sub_223727678();
  (*(*(v26 - 8) + 56))(v23 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlLanguageVariantResult;
  v28 = sub_223727758();
  (*(*(v28 - 8) + 56))(v23 + v27, 1, 1, v28);
  *(v23 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) = 0;
  *(v23 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedForServerFallback) = 0;
  *(v23 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_serverUserSelectionPending) = 0;
  *(v23 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_isMitigated) = 0;
  v29 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunStartTime;
  v30 = sub_22372AEE8();
  (*(*(v30 - 8) + 56))(v23 + v29, 1, 1, v30);
  v31 = v23 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlRerunTimeInMs;
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v23 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  (*(v10 + 32))(v23 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute, v15, v9);
  v33 = type metadata accessor for MUXUserAttributes();
  *(v32 + v33[5]) = 4;
  *(v32 + v33[6]) = 100;
  *(v32 + v33[8]) = a2;
  *(v32 + v33[7]) = 0;
  *(v32 + v33[9]) = 2;
  *(v32 + v33[10]) = 2;
  v34 = (v23 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId);
  v35 = v38;
  *v34 = v38;
  v34[1] = a5;
  v36 = (v23 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
  *v36 = v35;
  v36[1] = a5;
  swift_bridgeObjectRetain_n();
  sub_2236B4024(v23);
  return v23;
}

void sub_2236B4024(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for MUXResultCandidateContext(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = &OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_asrResultCandidateId;
    v6 = &OBJC_IVAR____TtC24RequestDispatcherBridges25MUXResultCandidateContext_resultCandidateId;
LABEL_5:
    v7 = (v4 + *v6);
    v9 = *v7;
    v8 = v7[1];
    v10 = (v4 + *v5);
    v12 = *v10;
    v11 = v10[1];

    swift_beginAccess();

    v13 = *(v1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41[0] = *(v1 + 48);
    *(v1 + 48) = 0x8000000000000000;
    sub_22368D8DC(a1, v9, v8, isUniquelyReferenced_nonNull_native);

    *(v1 + 48) = v41[0];
    swift_endAccess();
    swift_beginAccess();
    v15 = *(v1 + 56);
    if (*(v15 + 16))
    {
      v16 = *(v2 + 56);

      v17 = sub_2236261A0(v12, v11);
      if (v18)
      {
        v19 = *(*(v15 + 56) + 8 * v17);
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v42 = v19;

    MEMORY[0x223DE7B50](v20);
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v38 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22372B148();
    }

    sub_22372B158();
    v21 = v42;
    swift_beginAccess();

    v22 = *(v2 + 56);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v2 + 56);
    *(v2 + 56) = 0x8000000000000000;
    sub_22368D8B4(v21, v12, v11, v23);

    *(v2 + 56) = v40;
    swift_endAccess();
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_27D097070);

    v25 = sub_22372AC88();
    v26 = sub_22372B268();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41[0] = v28;
      *v27 = 136315394;
      v29 = sub_223623274(v9, v8, v41);

      *(v27 + 4) = v29;
      *(v27 + 12) = 2080;
      v30 = sub_223623274(v12, v11, v41);

      *(v27 + 14) = v30;
      _os_log_impl(&dword_223620000, v25, v26, "Successfully cache candidateContext for userLevelCandidateId: %s and topLevelCandidateId: %s.", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v28, -1, -1);
      MEMORY[0x223DE8A80](v27, -1, -1);
    }

    else
    {
    }

    return;
  }

  type metadata accessor for MUXTRPCandidateContext(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = &OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_topLevelCandidateId;
    v6 = &OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId;
    goto LABEL_5;
  }

  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v31 = sub_22372AC98();
  __swift_project_value_buffer(v31, qword_27D097070);

  oslog = sub_22372AC88();
  v32 = sub_22372B278();

  if (os_log_type_enabled(oslog, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43 = v34;
    *v33 = 136315138;
    v35 = (*(*a1 + 472))();
    v37 = sub_223623274(v35, v36, &v43);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_223620000, oslog, v32, "Unable to find userLevelCandidateId in candidateContext %s.", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x223DE8A80](v34, -1, -1);
    MEMORY[0x223DE8A80](v33, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2236B4574(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  v6 = MEMORY[0x277D84F90];
  if (*(v5 + 16))
  {

    v7 = sub_2236261A0(a1, a2);
    if (v8)
    {
      v9 = *(*(v5 + 56) + 8 * v7);

      v16 = v6;
      if (v9 >> 62)
      {
LABEL_23:
        v10 = sub_22372B558();
        if (v10)
        {
LABEL_5:
          v11 = 0;
          do
          {
            v12 = v11;
            while (1)
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                MEMORY[0x223DE7ED0](v12, v9);
                v11 = v12 + 1;
                if (__OFADD__(v12, 1))
                {
                  goto LABEL_21;
                }
              }

              else
              {
                if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_22;
                }

                v13 = *(v9 + 8 * v12 + 32);

                v11 = v12 + 1;
                if (__OFADD__(v12, 1))
                {
LABEL_21:
                  __break(1u);
LABEL_22:
                  __break(1u);
                  goto LABEL_23;
                }
              }

              type metadata accessor for MUXResultCandidateContext(0);
              if (swift_dynamicCastClass())
              {
                break;
              }

              ++v12;
              if (v11 == v10)
              {
                goto LABEL_24;
              }
            }

            MEMORY[0x223DE7B50]();
            if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v14 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22372B148();
            }

            sub_22372B158();
            v6 = v16;
          }

          while (v11 != v10);
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          goto LABEL_5;
        }
      }
    }

LABEL_24:
  }

  return v6;
}

void sub_2236B477C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for MUXUserAttributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22372A548();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v17 = *(v3 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v3 + 64);
  *(v3 + 64) = 0x8000000000000000;
  sub_22368D8DC(a3, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + 64) = v39;
  swift_endAccess();
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v19 = sub_22372AC98();
  __swift_project_value_buffer(v19, qword_27D097070);

  v20 = sub_22372AC88();
  v21 = sub_22372B268();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v12;
    v23 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v23 = 136315650;
    v36 = a1;
    v24 = *(a3 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
    v25 = *(a3 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

    v26 = sub_223623274(v24, v25, &v39);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    v27 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
    swift_beginAccess();
    v28 = a3 + v27;
    v29 = v38;
    sub_22368509C(v28, v38);
    (*(v22 + 32))(v16, v29, v11);
    sub_2236B5160();
    v30 = sub_22372B6B8();
    v32 = v31;
    (*(v22 + 8))(v16, v11);
    v33 = sub_223623274(v30, v32, &v39);

    *(v23 + 14) = v33;
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_223623274(v36, a2, &v39);
    _os_log_impl(&dword_223620000, v20, v21, "Successfully cache selected MUXCandidateContext for userLevelCandidateId: %s, userId: %s, and topLevelCandidateId: %s.", v23, 0x20u);
    v34 = v37;
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v34, -1, -1);
    MEMORY[0x223DE8A80](v23, -1, -1);
  }
}

uint64_t sub_2236B4B58(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t a5, unint64_t a6)
{
  swift_beginAccess();
  v12 = *(v6 + 56);
  if (!*(v12 + 16))
  {
    return 0;
  }

  v13 = sub_2236261A0(a1, a2);
  if ((v14 & 1) == 0)
  {

    return 0;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  v26 = MEMORY[0x277D84F90];
  if (v15 >> 62)
  {
LABEL_24:
    v16 = sub_22372B558();
    v24 = a5;
    v25 = a6;
    if (v16)
    {
LABEL_5:
      a5 = 0;
      a6 = v15 & 0xC000000000000001;
      do
      {
        v17 = a5;
        while (1)
        {
          if (a6)
          {
            MEMORY[0x223DE7ED0](v17, v15);
            a5 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_22;
            }
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v18 = *(v15 + 8 * v17 + 32);

            a5 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
LABEL_22:
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }
          }

          a4(0);
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v17;
          if (a5 == v16)
          {
            goto LABEL_25;
          }
        }

        MEMORY[0x223DE7B50]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22372B148();
        }

        sub_22372B158();
      }

      while (a5 != v16);
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = a5;
    v25 = a6;
    if (v16)
    {
      goto LABEL_5;
    }
  }

LABEL_25:

  MEMORY[0x28223BE20](v21, v22);
  v23 = v25(v24);

  return v23;
}

uint64_t sub_2236B4DA0(uint64_t *a1)
{
  v2 = type metadata accessor for MUXUserAttributes();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_selectedUserAttribute;
  swift_beginAccess();
  sub_22368509C(v7 + v8, v6);
  v9 = sub_22372A538();
  v10 = sub_22372A548();
  (*(*(v10 - 8) + 8))(v6, v10);
  return v9 & 1;
}

uint64_t sub_2236B4EA0()
{
  v1 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_sessionId;
  v2 = sub_223727408();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_sessionUserId;
  v4 = sub_22372A548();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges17MUXSessionContext_requestIdToRequestContext);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2236B4FB4()
{
  result = sub_223727408();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22372A548();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2236B50A0()
{
  result = qword_27D08F3D8;
  if (!qword_27D08F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F3D8);
  }

  return result;
}

uint64_t sub_2236B50F4()
{
  v0 = sub_22372B5F8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2236B5160()
{
  result = qword_28132B4E8;
  if (!qword_28132B4E8)
  {
    sub_22372A548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28132B4E8);
  }

  return result;
}

uint64_t sub_2236B51B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MUXUserAttributes();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MUXUserAttributes()
{
  result = qword_281329890;
  if (!qword_281329890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2236B52D0()
{
  sub_22372A548();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AFUserIdentityClassfication(319);
    if (v1 <= 0x3F)
    {
      sub_223671CDC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2236B5380()
{
  sub_22372B458();
  MEMORY[0x223DE7AD0](0xD000000000000024, 0x80000002237362C0);
  sub_22372A548();
  sub_2236B5160();
  v1 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v1);

  MEMORY[0x223DE7AD0](0xD000000000000011, 0x80000002237362F0);
  v2 = type metadata accessor for MUXUserAttributes();
  v10 = *(v0 + v2[5]);
  type metadata accessor for AFUserIdentityClassfication(0);
  sub_22372B528();
  MEMORY[0x223DE7AD0](0x496563696F76202CLL, 0xEF3A65726F635344);
  LODWORD(v10) = *(v0 + v2[6]);
  v3 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v3);

  MEMORY[0x223DE7AD0](0xD000000000000014, 0x8000000223736310);
  LODWORD(v10) = *(v0 + v2[8]);
  v4 = sub_22372B6B8();
  MEMORY[0x223DE7AD0](v4);

  MEMORY[0x223DE7AD0](0xD000000000000014, 0x8000000223736330);
  if (*(v0 + v2[7]))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + v2[7]))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DE7AD0](v5, v6);

  MEMORY[0x223DE7AD0](0xD00000000000001BLL, 0x8000000223736350);
  v11 = *(v0 + v2[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F3E0, &unk_223730480);
  v7 = sub_22372B038();
  MEMORY[0x223DE7AD0](v7);

  MEMORY[0x223DE7AD0](0xD00000000000001FLL, 0x8000000223736370);
  v12 = *(v0 + v2[10]);
  v8 = sub_22372B038();
  MEMORY[0x223DE7AD0](v8);

  MEMORY[0x223DE7AD0](23840, 0xE200000000000000);
  return 0;
}

void sub_2236B5670(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, void *a11)
{
  v60 = a4;
  v61 = a7;
  v62 = a9;
  v58 = a10;
  v59 = a11;
  v17 = sub_22372A3C8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v57 - v26;
  if (sub_223724934(a3, a2))
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v28 = sub_22372AC98();
    __swift_project_value_buffer(v28, qword_27D097070);
    v29 = sub_22372AC88();
    v30 = sub_22372B288();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_223620000, v29, v30, "MUX: Pre NL User Selection: Siri is prompting, picking user from previous request.", v31, 2u);
      MEMORY[0x223DE8A80](v31, -1, -1);
    }

    v32 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    (*(v18 + 104))(v22, *MEMORY[0x277D5D1C0], v17);
    sub_22372A478();
    (*(v18 + 8))(v22, v17);
    if (v64)
    {
      v33 = sub_22372A548();
      v34 = swift_dynamicCast();
      (*(*(v33 - 8) + 56))(v27, v34 ^ 1u, 1, v33);
    }

    else
    {
      sub_223626478(v63, &unk_27D08F750, &qword_22372C960);
      v43 = sub_22372A548();
      (*(*(v43 - 8) + 56))(v27, 1, 1, v43);
    }

    sub_223721974(v27, a5, a6, v61, v60, v62);
    sub_223626478(v27, &unk_27D08E990, &qword_22372FCF0);
  }

  else if (a1)
  {
    v35 = qword_27D08E2C8;
    v60 = a1;
    if (a8)
    {
      if (v35 != -1)
      {
        swift_once();
      }

      v36 = sub_22372AC98();
      __swift_project_value_buffer(v36, qword_27D097070);
      v60 = v60;
      v37 = sub_22372AC88();
      v38 = sub_22372B288();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v60;
        *(v39 + 4) = v60;
        *v40 = a1;
        v42 = v41;
        _os_log_impl(&dword_223620000, v37, v38, "MUX: Pre NL User Selection: Using VoiceIdScoreCard: %@ for pre NL user selection.", v39, 0xCu);
        sub_223626478(v40, &unk_27D08F250, &unk_22372D1D0);
        MEMORY[0x223DE8A80](v40, -1, -1);
        MEMORY[0x223DE8A80](v39, -1, -1);
      }
    }

    else
    {
      if (v35 != -1)
      {
        swift_once();
      }

      v52 = sub_22372AC98();
      __swift_project_value_buffer(v52, qword_27D097070);
      v53 = sub_22372AC88();
      v54 = sub_22372B288();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_223620000, v53, v54, "MUX: RMV not enabled. Selecting user from synthetic VoiceIDScoreCard.", v55, 2u);
        MEMORY[0x223DE8A80](v55, -1, -1);
      }
    }

    sub_223721204(v60, v61, v58, v59, v62);
    v56 = v60;
  }

  else
  {
    if (qword_27D08E2C8 != -1)
    {
      swift_once();
    }

    v44 = sub_22372AC98();
    __swift_project_value_buffer(v44, qword_27D097070);
    v45 = sub_22372AC88();
    v46 = sub_22372B278();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_223620000, v45, v46, "MUX: VoiceIDScoreCard must not be nil during pre NL user selection", v47, 2u);
      MEMORY[0x223DE8A80](v47, -1, -1);
    }

    v48 = type metadata accessor for MUXUserAttributes();
    v49 = *(*(v48 - 8) + 56);
    v50 = v48;
    v51 = v62;

    v49(v51, 1, 1, v50);
  }
}

void sub_2236B5CE8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, void *a15)
{
  v86 = a7;
  v87 = a5;
  v88 = a1;
  v89 = a3;
  v91 = a15;
  v92 = a6;
  v90 = a14;
  v18 = a13;
  v84 = a8;
  v85 = a12;
  v82 = a10;
  v83 = a11;
  v19 = sub_22372A3C8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v80 = &v78[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v81 = &v78[-v27];
  if (qword_27D08E2C8 != -1)
  {
    swift_once();
  }

  v28 = sub_22372AC98();
  v29 = __swift_project_value_buffer(v28, qword_27D097070);
  v30 = a4;
  v31 = sub_22372AC88();
  v32 = sub_22372B288();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v93 = v29;
    v79 = a13;
    v34 = v33;
    v35 = v20;
    v36 = a2;
    v37 = v19;
    v38 = a9;
    v39 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v30;
    *v39 = a4;
    v40 = v30;
    _os_log_impl(&dword_223620000, v31, v32, "MUX: VoiceIdScoreCard used during post NL user selection: %@", v34, 0xCu);
    sub_223626478(v39, &unk_27D08F250, &unk_22372D1D0);
    v41 = v39;
    a9 = v38;
    v19 = v37;
    a2 = v36;
    v20 = v35;
    MEMORY[0x223DE8A80](v41, -1, -1);
    v42 = v34;
    v18 = v79;
    MEMORY[0x223DE8A80](v42, -1, -1);
  }

  if (a4)
  {
    v93 = v30;
    if (v18)
    {

      v43 = sub_22372AC88();
      v44 = sub_22372B268();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v94[0] = v46;
        *v45 = 136315138;
        *(v45 + 4) = sub_223623274(v88, a2, v94);
        _os_log_impl(&dword_223620000, v43, v44, "MUX: Post NL User Selection initiated for rcId: %s.", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        MEMORY[0x223DE8A80](v46, -1, -1);
        MEMORY[0x223DE8A80](v45, -1, -1);
      }

      v47 = sub_22369E308(v89);
      if (v48)
      {
        v49 = v47;
        v50 = v48;

        v51 = sub_22372AC88();
        v52 = sub_22372B288();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v94[0] = v54;
          *v53 = 136315394;
          *(v53 + 4) = sub_223623274(v49, v50, v94);
          *(v53 + 12) = 2080;
          *(v53 + 14) = sub_223623274(v88, a2, v94);
          _os_log_impl(&dword_223620000, v51, v52, "MUX: Post NL User Selection: Found name : %s in NLXUserParses of rc id: %s, proceeding to select user based on stated identity.", v53, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v54, -1, -1);
          MEMORY[0x223DE8A80](v53, -1, -1);
        }

        sub_223722F40(v49, v50, v87, v93, v92, v90, v91, a9);

        return;
      }

      if (sub_223724934(v86, v85))
      {

        v64 = sub_22372AC88();
        v65 = sub_22372B288();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v94[0] = v67;
          *v66 = 136315138;
          *(v66 + 4) = sub_223623274(v88, a2, v94);
          _os_log_impl(&dword_223620000, v64, v65, "MUX: Post NL User Selection: Found Siri is prompting for rc id: %s, trying to pick the same user who was picked during previous request", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v67);
          MEMORY[0x223DE8A80](v67, -1, -1);
          MEMORY[0x223DE8A80](v66, -1, -1);
        }

        v68 = v86[4];
        __swift_project_boxed_opaque_existential_1(v86, v86[3]);
        v69 = v80;
        (*(v20 + 104))(v80, *MEMORY[0x277D5D1C0], v19);
        sub_22372A478();
        (*(v20 + 8))(v69, v19);
        if (v94[3])
        {
          v70 = sub_22372A548();
          v71 = v81;
          v72 = swift_dynamicCast();
          (*(*(v70 - 8) + 56))(v71, v72 ^ 1u, 1, v70);
        }

        else
        {
          sub_223626478(v94, &unk_27D08F750, &qword_22372C960);
          v77 = sub_22372A548();
          v71 = v81;
          (*(*(v77 - 8) + 56))(v81, 1, 1, v77);
        }

        sub_223721974(v71, v84, v82, v92, v83, a9);

        sub_223626478(v71, &unk_27D08E990, &qword_22372FCF0);
        return;
      }

      v93 = v93;
      v60 = sub_22372AC88();
      v73 = sub_22372B288();

      if (!os_log_type_enabled(v60, v73))
      {
        goto LABEL_23;
      }

      v62 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v62 = 138412290;
      v75 = v93;
      *(v62 + 4) = v93;
      *v74 = a4;
      v76 = v75;
      _os_log_impl(&dword_223620000, v60, v73, "MUX: Post NL User Selection: Using VoiceIdScoreCard: %@ for Post NL user selection.", v62, 0xCu);
      sub_223626478(v74, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v74, -1, -1);
    }

    else
    {
      v60 = sub_22372AC88();
      v61 = sub_22372B288();
      if (!os_log_type_enabled(v60, v61))
      {
LABEL_23:

        sub_223721204(v93, v92, v90, v91, a9);
        v63 = v93;

        return;
      }

      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_223620000, v60, v61, "MUX: RMV not enabled. Selecting user from synthetic VoiceIDScoreCard.", v62, 2u);
    }

    MEMORY[0x223DE8A80](v62, -1, -1);
    goto LABEL_23;
  }

  v55 = sub_22372AC88();
  v56 = sub_22372B278();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_223620000, v55, v56, "MUX: VoiceIDScoreCard must not be nil during post NL user selection", v57, 2u);
    MEMORY[0x223DE8A80](v57, -1, -1);
  }

  v58 = type metadata accessor for MUXUserAttributes();
  v59 = *(*(v58 - 8) + 56);

  v59(a9, 1, 1, v58);
}

uint64_t EndRemoteIntelligenceSessionMessage.__allocating_init(build:)(void (*a1)(char *))
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return RemoteIntelligenceSessionMessage.init(build:)(a1);
}

uint64_t EndRemoteIntelligenceSessionMessage.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  sub_223623934(a1, v7);
  v5 = RemoteIntelligenceSessionMessage.init(from:)(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t EndRemoteIntelligenceSessionMessage.init(from:)(uint64_t *a1)
{
  sub_223623934(a1, v4);
  v2 = RemoteIntelligenceSessionMessage.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t EndRemoteIntelligenceSessionMessage.deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  return v0;
}

uint64_t EndRemoteIntelligenceSessionMessage.__deallocating_deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EndRemoteIntelligenceSessionMessage()
{
  result = qword_281329078;
  if (!qword_281329078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2236B69B8()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0x65676175676E616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_2236B6A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43;
  if (v6 || (sub_22372B6E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002237364C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22372B6E8();

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

uint64_t sub_2236B6AE8(uint64_t a1)
{
  v2 = sub_2236B7968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B6B24(uint64_t a1)
{
  v2 = sub_2236B7968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StartRemoteIntelligenceSessionMessage.languageCode.getter()
{
  v1 = *(v0 + qword_28132B728);
  v2 = *(v0 + qword_28132B728 + 8);

  return v1;
}

uint64_t StartRemoteIntelligenceSessionMessage.remoteIntelligenceVersion.getter()
{
  v1 = *(v0 + qword_28132B730);
  v2 = *(v0 + qword_28132B730 + 8);

  return v1;
}

uint64_t StartRemoteIntelligenceSessionMessage.__allocating_init(build:)(void (*a1)(char *))
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return StartRemoteIntelligenceSessionMessage.init(build:)(a1);
}

uint64_t StartRemoteIntelligenceSessionMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  v4 = *v1;
  started = type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0);
  v6 = (started - 8);
  v7 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started, v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_223727408();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v12(&v10[v6[7]], 1, 1, v11);
  v13 = &v10[v6[8]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v10[v6[9]];
  *v14 = xmmword_223730530;
  a1(v10);
  v16 = *(v13 + 1);
  if (v16)
  {
    v17 = (v2 + qword_28132B728);
    *v17 = *v13;
    v17[1] = v16;
    v18 = *(v14 + 1);
    v19 = (v2 + qword_28132B730);
    *v19 = *v14;
    v19[1] = v18;
    MEMORY[0x28223BE20](v18, v15);
    v32[-2] = v10;

    v20 = RemoteIntelligenceSessionMessage.init(build:)(sub_2236B795C);
    sub_2236B6F94(v10);
  }

  else
  {
    if (qword_27D08E2D0 != -1)
    {
      swift_once();
    }

    v21 = sub_22372AC98();
    __swift_project_value_buffer(v21, qword_27D097088);
    v22 = sub_22372AC88();
    v23 = sub_22372B278();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[0] = v25;
      v32[1] = v4;
      *v24 = 136446210;
      swift_getMetatypeMetadata();
      v26 = sub_22372B038();
      v28 = sub_223623274(v26, v27, v32);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_223620000, v22, v23, "Could not build %{public}s: Builder has missing required fields", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x223DE8A80](v25, -1, -1);
      MEMORY[0x223DE8A80](v24, -1, -1);
    }

    sub_2236B6F94(v10);
    type metadata accessor for StartRemoteIntelligenceSessionMessage(0);
    v29 = *(*v2 + 48);
    v30 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v20;
}

uint64_t sub_2236B6F94(uint64_t a1)
{
  started = type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t StartRemoteIntelligenceSessionMessage.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return StartRemoteIntelligenceSessionMessage.init(from:)(a1);
}

uint64_t StartRemoteIntelligenceSessionMessage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F3E8, &qword_223730540);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22[-1] - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236B7968();
  sub_22372B7D8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for StartRemoteIntelligenceSessionMessage(0);
    v13 = *(*v1 + 48);
    v14 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v22[0]) = 0;
    v12 = sub_22372B628();
    v16 = (v1 + qword_28132B728);
    *v16 = v12;
    v16[1] = v17;
    LOBYTE(v22[0]) = 1;
    v18 = sub_22372B628();
    v19 = (v1 + qword_28132B730);
    *v19 = v18;
    v19[1] = v20;
    sub_223623934(a1, v22);
    v3 = RemoteIntelligenceSessionMessage.init(from:)(v22);
    (*(v6 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t sub_2236B7298(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F3F8, &qword_223730548);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236B7968();
  sub_22372B7E8();
  v11 = *(v1 + qword_28132B728);
  v12 = *(v1 + qword_28132B728 + 8);
  LOBYTE(v14) = 0;
  sub_22372B688();
  if (!v2)
  {
    v14 = *(v1 + qword_28132B730);
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F970, &unk_223730550);
    sub_2236B79BC();
    sub_22372B6A8();
    sub_22370D2DC(a1);
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t StartRemoteIntelligenceSessionMessage.Builder.messageId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0) + 20);

  return sub_22364FCB0(v3, a1);
}

uint64_t StartRemoteIntelligenceSessionMessage.Builder.messageId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0) + 20);

  return sub_2236511D0(a1, v3);
}

uint64_t StartRemoteIntelligenceSessionMessage.Builder.languageCode.getter()
{
  v1 = (v0 + *(type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StartRemoteIntelligenceSessionMessage.Builder.languageCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StartRemoteIntelligenceSessionMessage.Builder.remoteIntelligenceVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StartRemoteIntelligenceSessionMessage.Builder.remoteIntelligenceVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StartRemoteIntelligenceSessionMessage.Builder(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2236B7730()
{
  v1 = *(v0 + qword_28132B728 + 8);

  v2 = *(v0 + qword_28132B730 + 8);
}

uint64_t StartRemoteIntelligenceSessionMessage.deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  v4 = *(v0 + qword_28132B728 + 8);

  v5 = *(v0 + qword_28132B730 + 8);

  return v0;
}

uint64_t StartRemoteIntelligenceSessionMessage.__deallocating_deinit()
{
  v0 = sub_223727548();
  v1 = qword_28132B758;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_28132B760, v2);
  v4 = *(v0 + qword_28132B728 + 8);

  v5 = *(v0 + qword_28132B730 + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_2236B7968()
{
  result = qword_27D08F3F0;
  if (!qword_27D08F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F3F0);
  }

  return result;
}

unint64_t sub_2236B79BC()
{
  result = qword_27D08F400;
  if (!qword_27D08F400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D08F970, &unk_223730550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F400);
  }

  return result;
}

void sub_2236B7AF0()
{
  sub_22369BEEC();
  if (v0 <= 0x3F)
  {
    sub_2236B7B74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2236B7B74()
{
  if (!qword_281328DF0)
  {
    v0 = sub_22372B3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_281328DF0);
    }
  }
}

unint64_t sub_2236B7BD8()
{
  result = qword_27D08F418;
  if (!qword_27D08F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F418);
  }

  return result;
}

unint64_t sub_2236B7C30()
{
  result = qword_27D08F420;
  if (!qword_27D08F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F420);
  }

  return result;
}

unint64_t sub_2236B7C88()
{
  result = qword_27D08F428;
  if (!qword_27D08F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F428);
  }

  return result;
}

unint64_t sub_2236B7CF0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v3 = 0x4E6E6F6973736573;
    v4 = 0x6D656C706D696E75;
    if (a1 != 8)
    {
      v4 = 0xD000000000000015;
    }

    if (a1 != 7)
    {
      v3 = v4;
    }

    v5 = 0xD00000000000001ELL;
    if (a1 != 5)
    {
      v5 = 0xD00000000000001DLL;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 <= 1u)
  {
    if (a1)
    {
      return 0xD000000000000013;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    v1 = 0xD00000000000001BLL;
    if (a1 != 3)
    {
      v1 = 0xD00000000000001ALL;
    }

    if (a1 == 2)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2236B7E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2236BB62C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2236B7EA4(uint64_t a1)
{
  v2 = sub_2236BA4CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B7EE0(uint64_t a1)
{
  v2 = sub_2236BA4CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B7F28(uint64_t a1)
{
  v2 = sub_2236BA76C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B7F64(uint64_t a1)
{
  v2 = sub_2236BA76C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B7FA0(uint64_t a1)
{
  v2 = sub_2236BA7C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B7FDC(uint64_t a1)
{
  v2 = sub_2236BA7C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B8018(uint64_t a1)
{
  v2 = sub_2236BA814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B8054(uint64_t a1)
{
  v2 = sub_2236BA814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B8090(uint64_t a1)
{
  v2 = sub_2236BA520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B80CC(uint64_t a1)
{
  v2 = sub_2236BA520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B8108(uint64_t a1)
{
  v2 = sub_2236BA6C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B8144(uint64_t a1)
{
  v2 = sub_2236BA6C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B8180(uint64_t a1)
{
  v2 = sub_2236BA61C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B81BC(uint64_t a1)
{
  v2 = sub_2236BA61C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B81F8(uint64_t a1)
{
  v2 = sub_2236BA718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B8234(uint64_t a1)
{
  v2 = sub_2236BA718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B8270(uint64_t a1)
{
  v2 = sub_2236BA670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B82AC(uint64_t a1)
{
  v2 = sub_2236BA670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B82E8(uint64_t a1)
{
  v2 = sub_2236BA5C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B8324(uint64_t a1)
{
  v2 = sub_2236BA5C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2236B8360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22372B6E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2236B83E0(uint64_t a1)
{
  v2 = sub_2236BA574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236B841C(uint64_t a1)
{
  v2 = sub_2236BA574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteIntelligenceError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F430, &qword_223730720);
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v83 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F438, &qword_223730728);
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v82 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F440, &qword_223730730);
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v79 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F448, &qword_223730738);
  v77 = *(v15 - 8);
  v78 = v15;
  v16 = *(v77 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v76 = &v62 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F450, &qword_223730740);
  v74 = *(v19 - 8);
  v75 = v19;
  v20 = *(v74 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v73 = &v62 - v22;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F458, &qword_223730748);
  v71 = *(v72 - 8);
  v23 = *(v71 + 64);
  MEMORY[0x28223BE20](v72, v24);
  v70 = &v62 - v25;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F460, &qword_223730750);
  v68 = *(v69 - 8);
  v26 = *(v68 + 64);
  MEMORY[0x28223BE20](v69, v27);
  v67 = &v62 - v28;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F468, &qword_223730758);
  v65 = *(v66 - 8);
  v29 = *(v65 + 64);
  MEMORY[0x28223BE20](v66, v30);
  v64 = &v62 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F470, &qword_223730760);
  v63 = *(v32 - 8);
  v33 = *(v63 + 64);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v62 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F478, &qword_223730768);
  v62 = *(v37 - 8);
  v38 = *(v62 + 64);
  MEMORY[0x28223BE20](v37, v39);
  v41 = &v62 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F480, &qword_223730770);
  v43 = *(v42 - 8);
  v91 = v42;
  v92 = v43;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42, v45);
  v47 = &v62 - v46;
  v48 = v1[1];
  v88 = *v1;
  v89 = v48;
  v49 = *(v1 + 16);
  v50 = a1;
  v52 = a1[3];
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(v50, v52);
  sub_2236BA4CC();
  v90 = v47;
  sub_22372B7E8();
  if (v49 > 4)
  {
    if (v49 <= 6)
    {
      if (v49 == 5)
      {
        v98 = 5;
        sub_2236BA670();
        v41 = v73;
        v54 = v90;
        v53 = v91;
        sub_22372B678();
        v37 = v75;
        sub_22372B688();
        v55 = v74;
      }

      else
      {
        v99 = 6;
        sub_2236BA61C();
        v41 = v76;
        v54 = v90;
        v53 = v91;
        sub_22372B678();
        v37 = v78;
        sub_22372B688();
        v55 = v77;
      }
    }

    else if (v49 == 7)
    {
      v100 = 7;
      sub_2236BA5C8();
      v41 = v79;
      v54 = v90;
      v53 = v91;
      sub_22372B678();
      v37 = v81;
      sub_22372B688();
      v55 = v80;
    }

    else
    {
      if (v49 != 8)
      {
        v102 = 9;
        sub_2236BA520();
        v56 = v83;
        v58 = v90;
        v57 = v91;
        sub_22372B678();
        (*(v86 + 8))(v56, v87);
        return (*(v92 + 8))(v58, v57);
      }

      v101 = 8;
      sub_2236BA574();
      v41 = v82;
      v54 = v90;
      v53 = v91;
      sub_22372B678();
      v37 = v85;
      sub_22372B688();
      v55 = v84;
    }
  }

  else if (v49 <= 1)
  {
    if (v49)
    {
      v94 = 1;
      sub_2236BA7C0();
      v61 = v90;
      v60 = v91;
      sub_22372B678();
      sub_22372B688();
      (*(v63 + 8))(v36, v32);
      return (*(v92 + 8))(v61, v60);
    }

    v93 = 0;
    sub_2236BA814();
    v54 = v90;
    v53 = v91;
    sub_22372B678();
    sub_22372B688();
    v55 = v62;
  }

  else if (v49 == 2)
  {
    v95 = 2;
    sub_2236BA76C();
    v41 = v64;
    v54 = v90;
    v53 = v91;
    sub_22372B678();
    v37 = v66;
    sub_22372B688();
    v55 = v65;
  }

  else if (v49 == 3)
  {
    v96 = 3;
    sub_2236BA718();
    v41 = v67;
    v54 = v90;
    v53 = v91;
    sub_22372B678();
    v37 = v69;
    sub_22372B688();
    v55 = v68;
  }

  else
  {
    v97 = 4;
    sub_2236BA6C4();
    v41 = v70;
    v54 = v90;
    v53 = v91;
    sub_22372B678();
    v37 = v72;
    sub_22372B688();
    v55 = v71;
  }

  (*(v55 + 8))(v41, v37);
  return (*(v92 + 8))(v54, v53);
}