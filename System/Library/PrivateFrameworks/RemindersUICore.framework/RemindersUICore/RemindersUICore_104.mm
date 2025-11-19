uint64_t sub_21DAA6CB8(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v13 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v63 = result;
  if (result)
  {
    MEMORY[0x28223BE20](result);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v52 = sub_21DAA8864(a5, v13, sub_21DAA9C14);

    v15 = MEMORY[0x277D84F90];
    v71 = MEMORY[0x277D84F90];
    v16 = *(v13 + 16);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v16)
    {
      v17 = v15;
      v18 = 0;
      v19 = MEMORY[0x277D84F90];
      v20 = 32;
      while (v18 < v16)
      {
        v21 = *(a5 + 16);
        if (v18 == v21)
        {
          goto LABEL_15;
        }

        if (v18 >= v21)
        {
          goto LABEL_36;
        }

        v22 = *(v13 + 32 + 8 * v18);
        v23 = (a5 + v20);
        v24 = *(a5 + v20 + 48);
        v68 = *(a5 + v20 + 32);
        v69 = v24;
        v70 = *(a5 + v20 + 64);
        v25 = *(a5 + v20 + 16);
        v66 = *(a5 + v20);
        v67 = v25;
        if (v22)
        {
          sub_21D1D9B34(&v66, v64);
          v26 = v22;
        }

        else
        {
          v27 = v23[3];
          *&v64[32] = v23[2];
          *&v64[48] = v27;
          *&v64[64] = v23[4];
          v28 = v23[1];
          *v64 = *v23;
          *&v64[16] = v28;
          sub_21D1D9B34(&v66, &v65);
          _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(v64);
          v26 = 0;
        }

        *v64 = v22;
        *&v64[24] = v67;
        *&v64[40] = v68;
        *&v64[56] = v69;
        *&v64[72] = v70;
        *&v64[8] = v66;
        v29 = v26;
        v30 = sub_21D0CF7E0(v64, &qword_27CE65D98);
        MEMORY[0x223D42D80](v30);
        if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        ++v18;
        sub_21DBFA6CC();
        v19 = v71;
        v16 = *(v13 + 16);
        v20 += 80;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }

    else
    {
      v17 = v15;
      v19 = v15;
LABEL_15:
      v56 = v19;

      if (!(v56 >> 62))
      {
        v31 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v31)
        {
LABEL_38:

          v33 = MEMORY[0x277D84F90];
LABEL_39:
          v48 = sub_21DAA58A0(v52, v33);

          *v64 = v48;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65DA0);
          swift_allocObject();
          sub_21DBF824C();
          v49 = *(v63 + 80);
          v50 = swift_allocObject();
          *(v50 + 16) = a9;
          *(v50 + 24) = a10;
          v51 = v49;

          sub_21DBF820C();
        }

LABEL_17:
        *&v66 = v17;
        result = sub_21D18F83C(0, v31 & ~(v31 >> 63), 0);
        if (v31 < 0)
        {
          __break(1u);
          return result;
        }

        v32 = 0;
        v33 = v66;
        v34 = *(a7 + 16);
        v55 = (a7 + 32);
        v57 = v34;
        v58 = v31;
        do
        {
          v60 = v32;
          if ((v56 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x223D44740]();
          }

          else
          {
            v35 = *(v56 + 32 + 8 * v32);
          }

          v36 = v35;
          v61 = v33;
          if (v34)
          {
            v37 = v55;
            v38 = v34;
            v39 = MEMORY[0x277D84F90];
            do
            {
              v40 = *v37;
              sub_21DAA81B0(v64);
              __swift_project_boxed_opaque_existential_1(v64, *&v64[24]);
              type metadata accessor for TTRAvatarImageRenderer();
              v41 = sub_21DAA85E0(v36, a8 & 1, a2, a3, v40);
              __swift_destroy_boxed_opaque_existential_0(v64);
              v42 = v41;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v39 = sub_21D215234(0, *(v39 + 2) + 1, 1, v39);
              }

              v44 = *(v39 + 2);
              v43 = *(v39 + 3);
              if (v44 >= v43 >> 1)
              {
                v39 = sub_21D215234((v43 > 1), v44 + 1, 1, v39);
              }

              *(v39 + 2) = v44 + 1;
              v45 = &v39[16 * v44];
              *(v45 + 4) = v41;
              *(v45 + 5) = v40;
              ++v37;
              --v38;
            }

            while (v38);
          }

          else
          {
            v39 = MEMORY[0x277D84F90];
          }

          v33 = v61;
          *&v66 = v61;
          v47 = *(v61 + 16);
          v46 = *(v61 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_21D18F83C((v46 > 1), v47 + 1, 1);
            v33 = v66;
          }

          v32 = v60 + 1;
          *(v33 + 16) = v47 + 1;
          *(v33 + 8 * v47 + 32) = v39;
          v34 = v57;
        }

        while (v60 + 1 != v58);

        goto LABEL_39;
      }
    }

    v31 = sub_21DBFBD7C();
    if (!v31)
    {
      goto LABEL_38;
    }

    goto LABEL_17;
  }

  return result;
}

char *sub_21DAA7290(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = (v2 + 32);
  v8 = *(a2 + 24);
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = *v7;
    sub_21DAA81B0(v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    type metadata accessor for TTRAvatarImageRenderer();
    v11 = sub_21DAA85E0(a1, v8, v5, v6, v10);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v12 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_21D215234(0, *(v9 + 2) + 1, 1, v9);
    }

    v14 = *(v9 + 2);
    v13 = *(v9 + 3);
    if (v14 >= v13 >> 1)
    {
      v9 = sub_21D215234((v13 > 1), v14 + 1, 1, v9);
    }

    *(v9 + 2) = v14 + 1;
    v15 = &v9[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v10;
    ++v7;
    --v3;
  }

  while (v3);
  return v9;
}

uint64_t sub_21DAA73F8(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, void (*a9)(uint64_t))
{
  if (qword_27CE570B0 != -1)
  {
    swift_once();
  }

  v15 = sub_21DBF84BC();
  __swift_project_value_buffer(v15, qword_27CE65D58);
  v16 = a1;
  v17 = sub_21DBF84AC();
  v18 = sub_21DBFAEBC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v61 = v20;
    *v19 = 136315138;
    swift_getErrorValue();
    v21 = sub_21DBFC74C();
    v23 = sub_21D0CDFB4(v21, v22, &v61);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_21D0C9000, v17, v18, "Unable to fetch avatars because %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x223D46520](v20, -1, -1);
    MEMORY[0x223D46520](v19, -1, -1);
  }

  *&v61 = a2;
  *(&v61 + 1) = a3;
  *&v62 = a5;
  BYTE8(v62) = a6 & 1;
  TTRParticipantAvatarProvider.genericAvatar(configuration:)(&v61, v60);
  v24 = v60[0];
  v25 = *(a7 + 16);
  if (!v25)
  {

    v27 = MEMORY[0x277D84F90];
    goto LABEL_62;
  }

  v66 = MEMORY[0x277D84F90];
  sub_21D18F81C(0, v25, 0);
  v26 = (a7 + 32);
  v27 = v66;
  for (i = v25 - 1; ; --i)
  {
    v29 = v26[2];
    v30 = v26[3];
    v31 = *v26;
    v62 = v26[1];
    v63 = v29;
    v32 = v26[4];
    v64 = v30;
    v65 = v32;
    v61 = v31;
    if (!a8)
    {
      if (*(&v62 + 1))
      {
        v33 = *(&v62 + 1);
        v34 = v62;
      }

      else
      {
        v33 = *(&v61 + 1);
        if (!*(&v61 + 1))
        {
          v33 = *(&v64 + 1);
          if (*(&v64 + 1))
          {
            v34 = v64;
            goto LABEL_11;
          }

          v33 = *(&v65 + 1);
          if (*(&v65 + 1))
          {
            v34 = v65;
            goto LABEL_11;
          }

          sub_21D1D9B34(&v61, v60);
LABEL_57:
          if (qword_280D1BAA8 != -1)
          {
            swift_once();
          }

          v36 = sub_21DBF516C();
          goto LABEL_42;
        }

        v34 = v61;
        sub_21DBF8E0C();
      }

      sub_21D1D9B34(&v61, v60);
      sub_21DBF8E0C();
      goto LABEL_44;
    }

    if (a8 == 1)
    {
      v33 = *(&v61 + 1);
      if (*(&v61 + 1))
      {
        v34 = v61;
LABEL_11:
        sub_21D1D9B34(&v61, v60);
LABEL_12:
        sub_21DBF8E0C();
        goto LABEL_44;
      }

      v44 = v62;
      v45 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
      v46 = swift_allocObject();
      v46[1] = xmmword_21DC08D20;
      v46[2] = v44;
      v46[3] = v45;
      sub_21D1D9B34(&v61, v60);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
      sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
      v47 = sub_21DBFA41C();

      if (*(v47 + 16))
      {
        v60[0] = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
        sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
        v34 = sub_21DBFA07C();
        v33 = v48;

        goto LABEL_44;
      }

      v33 = *(&v64 + 1);
      if (*(&v64 + 1))
      {
        v34 = v64;
        goto LABEL_12;
      }

      v33 = *(&v65 + 1);
      if (*(&v65 + 1))
      {
        v34 = v65;
        goto LABEL_12;
      }

      goto LABEL_57;
    }

    if (*(&v61 + 1))
    {
      v35 = HIBYTE(*(&v61 + 1)) & 0xFLL;
      if ((*(&v61 + 1) & 0x2000000000000000) == 0)
      {
        v35 = v61 & 0xFFFFFFFFFFFFLL;
      }

      if (v35)
      {
        sub_21D1D9B34(&v61, v60);
        v36 = sub_21DBFA3CC();
LABEL_42:
        v34 = v36;
        v33 = v37;
        goto LABEL_44;
      }
    }

    v38 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A20);
    v39 = swift_allocObject();
    v40 = v39;
    *(v39 + 16) = xmmword_21DC08D20;
    if (*(&v38 + 1))
    {
      v41 = HIBYTE(*(&v38 + 1)) & 0xFLL;
      if ((*(&v38 + 1) & 0x2000000000000000) == 0)
      {
        v41 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        sub_21D1D9B34(&v61, v60);
        v42 = sub_21DBFA3CC();
      }

      else
      {
        sub_21D1D9B34(&v61, v60);
        v42 = 0;
        v43 = 0;
      }

      *(v40 + 32) = v42;
      *(v40 + 40) = v43;
      v49 = *(&v63 + 1);
      if (!*(&v63 + 1))
      {
LABEL_31:
        *(v40 + 48) = 0;
        *(v40 + 56) = 0;
        goto LABEL_40;
      }
    }

    else
    {
      *(v39 + 32) = 0;
      *(v39 + 40) = 0;
      sub_21D1D9B34(&v61, v60);
      v49 = *(&v63 + 1);
      if (!*(&v63 + 1))
      {
        goto LABEL_31;
      }
    }

    v50 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v50 = v63 & 0xFFFFFFFFFFFFLL;
    }

    if (v50)
    {
      v51 = sub_21DBFA3CC();
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    *(v40 + 48) = v51;
    *(v40 + 56) = v52;
LABEL_40:
    v60[0] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A28);
    sub_21D0D0F1C(&qword_27CE58A30, &qword_27CE58A28);
    v53 = sub_21DBFA41C();

    if (*(v53 + 16))
    {
      v60[0] = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A38);
      sub_21D0D0F1C(&qword_27CE58A40, &qword_27CE58A38);
      v36 = sub_21DBFA3DC();
      goto LABEL_42;
    }

    v34 = 0;
    v33 = 0xE000000000000000;
LABEL_44:
    sub_21DBF8E0C();
    sub_21D1D9B90(&v61);
    v66 = v27;
    v55 = *(v27 + 16);
    v54 = *(v27 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_21D18F81C((v54 > 1), v55 + 1, 1);
      v27 = v66;
    }

    *(v27 + 16) = v55 + 1;
    v56 = (v27 + 24 * v55);
    v56[4] = v24;
    v56[5] = v34;
    v56[6] = v33;
    if (!i)
    {
      break;
    }

    v26 += 5;
  }

LABEL_62:
  a9(v27);
}

void TTRParticipantAvatarProvider.genericAvatar(configuration:)(double *a1@<X0>, char **a2@<X8>)
{
  v3 = *(a1 + 2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = (v3 + 32);
    v8 = MEMORY[0x277D84F90];
    do
    {
      v9 = *v7;
      sub_21DAA94AC(v5, v6, *v7);
      v11 = v10;
      v12 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_21D215234(0, *(v8 + 2) + 1, 1, v8);
      }

      v14 = *(v8 + 2);
      v13 = *(v8 + 3);
      if (v14 >= v13 >> 1)
      {
        v8 = sub_21D215234((v13 > 1), v14 + 1, 1, v8);
      }

      *(v8 + 2) = v14 + 1;
      v15 = &v8[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v9;
      ++v7;
      --v4;
    }

    while (v4);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  *a2 = v8;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
}

uint64_t sub_21DAA7C98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id))
{
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v10 = sub_21DAA8C28(a3, v8, sub_21DAA9D70);

    a6(v10);
  }

  return result;
}

uint64_t sub_21DAA7DD4@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v8 = a1[5];
  v50 = a1[4];
  v51 = v8;
  v52 = a1[6];
  v9 = a1[1];
  v46 = *a1;
  v47 = v9;
  v10 = a1[3];
  v48 = a1[2];
  v49 = v10;
  v11 = *(&v46 + 1);
  if (*(&v46 + 1))
  {
    if (*(&v52 + 1))
    {
      v12 = a1[5];
      *(a5 + 64) = a1[4];
      *(a5 + 80) = v12;
      *(a5 + 96) = a1[6];
      v13 = a1[1];
      *a5 = *a1;
      *(a5 + 16) = v13;
      v14 = a1[3];
      *(a5 + 32) = a1[2];
      *(a5 + 48) = v14;
      return sub_21D1D9C94(&v46, &v36);
    }

    v20 = *(&v46 + 1);
    goto LABEL_11;
  }

  v16 = a6;
  v17 = a7;
  v18 = a3;
  v19 = a4;
  if (a2)
  {
    v20 = a2;
  }

  else
  {
    v21 = a1[4];
    v43 = a1[3];
    v44 = v21;
    v45 = a1[5];
    v22 = a1[2];
    v41 = a1[1];
    v42 = v22;
    sub_21D1D9B34(&v47, &v36);
    v20 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&v41);
    v38 = v43;
    v39 = v44;
    v40 = v45;
    v36 = v41;
    v37 = v42;
    sub_21D1D9B90(&v36);
    a2 = 0;
  }

  v23 = *(&v52 + 1);
  v24 = a2;
  if (!v23)
  {
    a4 = v19;
    a3 = v18;
    a7 = v17;
    a6 = v16;
LABEL_11:
    *&v36 = a6;
    *(&v36 + 1) = a7;
    *&v37 = a3;
    BYTE8(v37) = a4 & 1;
    v27 = v11;
    v28 = sub_21DAA7290(v20, &v36);
    if (*(v28 + 2))
    {
      v26 = *(v28 + 4);
      v29 = v26;

      v23 = 0;
    }

    else
    {

      v23 = 0;
      v26 = 0;
    }

    goto LABEL_14;
  }

  v25 = 0;
  v26 = v23;
LABEL_14:
  v30 = v46;
  v31 = v52;
  *a5 = v46;
  *(a5 + 8) = v20;
  v32 = v50;
  *(a5 + 48) = v49;
  *(a5 + 64) = v32;
  *(a5 + 80) = v51;
  v33 = v48;
  *(a5 + 16) = v47;
  *(a5 + 32) = v33;
  *(a5 + 96) = v31;
  *(a5 + 104) = v26;
  v34 = v23;
  v35 = v30;
  return sub_21D1D9B34(&v47, &v36);
}

uint64_t sub_21DAA7FBC(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (qword_27CE570B0 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE65D58);
  v8 = a1;
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAEBC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_21DBFC74C();
    v15 = sub_21D0CDFB4(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_21D0C9000, v9, v10, "Unable to fetch avatars because %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  return a2(a4);
}

id sub_21DAA8150()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = v0;
    v4 = (*(v0 + 56))();
    v5 = *(v0 + 72);
    *(v3 + 72) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_21DAA81B0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_21DAA9C90(v1 + 88, &v9);
  if (v10)
  {
    return sub_21D0D0FD0(&v9, a1);
  }

  sub_21D0CF7E0(&v9, &qword_27CE65D80);
  v4 = sub_21DAA8150();
  v5 = [objc_opt_self() settingsWithContactStore:v4 cacheSize:0];

  v6 = [objc_allocWithZone(MEMORY[0x277CBDBD0]) initWithSettings_];
  v7 = type metadata accessor for TTRAvatarImageRenderer();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  a1[3] = v7;
  a1[4] = &off_282EE62F8;
  *a1 = v8;
  sub_21D0D32E4(a1, &v9);
  swift_beginAccess();
  sub_21DAA9D00(&v9, v1 + 88);
  return swift_endAccess();
}

void sub_21DAA82EC(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.65 alpha:1.0];
  v13 = [v12 CGColor];

  CGContextSetFillColorWithColor(a1, v13);
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  CGContextFillRect(a1, v20);
  CGContextSaveGState(a1);
  v21.origin.x = a3;
  v21.origin.y = a4;
  v21.size.width = a5;
  v21.size.height = a6;
  CGContextBeginTransparencyLayerWithRect(a1, v21, 0);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
  [a2 drawInRect_];
  CGContextSetBlendMode(a1, kCGBlendModeSourceIn);
  v14 = objc_opt_self();
  v15 = [v14 whiteColor];
  v16 = [v15 CGColor];

  CGContextSetFillColorWithColor(a1, v16);
  v17 = [v14 whiteColor];
  v18 = [v17 CGColor];

  CGContextSetStrokeColorWithColor(a1, v18);
  v22.origin.x = a3;
  v22.origin.y = a4;
  v22.size.width = a5;
  v22.size.height = a6;
  CGContextFillRect(a1, v22);
  CGContextEndTransparencyLayer(a1);

  CGContextRestoreGState(a1);
}

uint64_t TTRParticipantAvatarProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  sub_21D0CF7E0(v0 + 88, &qword_27CE65D80);
  return v0;
}

uint64_t TTRParticipantAvatarProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  sub_21D0CF7E0(v0 + 88, &qword_27CE65D80);

  return swift_deallocClassInstance();
}

id sub_21DAA85E0(void *a1, char a2, double a3, double a4, double a5)
{
  v7 = *v5;
  v8 = [objc_opt_self() scopeWithPointSize:a2 & 1 scale:0 rightToLeft:a3 style:{a4, a5}];
  v9 = *(v7 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC09CF0;
  *(v10 + 32) = a1;
  sub_21D4B6DC0();
  v11 = a1;
  v12 = sub_21DBFA5DC();

  v13 = [v9 avatarImageForContacts:v12 scope:v8];

  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_21DAA8700(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x223D44FA0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x223D44FD0](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21DAA8768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a5 + 40) = a6;
  *(a5 + 48) = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a5 + 16));
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a1, a6);
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0;
  *(a5 + 56) = a2;
  *(a5 + 64) = a3;
  *(a5 + 72) = 0;
  *(a5 + 80) = a4;
  return a5;
}

uint64_t _s15RemindersUICore39TTRParticipantAvatarRenderConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (sub_21D1D567C(*(a1 + 16), *(a2 + 16)))
  {
    return v4 ^ v5 ^ 1u;
  }

  else
  {
    return 0;
  }
}

id sub_21DAA8864(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, void *))
{
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v6 >= v5)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v63 = MEMORY[0x277D84F90];
  sub_21D18E678(0, v7, 0);
  v8 = v63;
  v42 = v4;
  v43 = a2;
  v48 = v6;
  v49 = v5;
  v46 = v7;
  if (!v7)
  {
    sub_21DBF8E0C();
    result = sub_21DBF8E0C();
    v15 = 0;
    v25 = 0;
    if (!v5)
    {
LABEL_21:

      return v8;
    }

    goto LABEL_22;
  }

  v9 = v63;
  sub_21DBF8E0C();
  result = sub_21DBF8E0C();
  if (v5)
  {
    v11 = 0;
    v12 = (v42 + 32);
    v45 = a2 + 32;
    while (1)
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v13 = v12[3];
      v52 = v12[2];
      v53 = v13;
      v54 = v12[4];
      v14 = v12[1];
      v50 = *v12;
      v51 = v14;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_33;
      }

      if (v6 == v11)
      {
        goto LABEL_40;
      }

      if (v11 >= v6)
      {
        goto LABEL_34;
      }

      if (__OFADD__(v11, 1))
      {
        goto LABEL_35;
      }

      v44 = v11 + 1;
      v16 = *(v45 + 8 * v11);
      v17 = v12[3];
      v59 = v12[2];
      v60 = v17;
      v61 = v12[4];
      v18 = v12[1];
      v57 = *v12;
      v58 = v18;
      v62 = v16;
      sub_21D1D9B34(&v50, v56);
      result = v16;
      if (*(&v57 + 1) == 1)
      {
        goto LABEL_40;
      }

      v19 = a3(&v57, v16);
      v21 = v20;
      v52 = v59;
      v53 = v60;
      v54 = v61;
      v55 = v62;
      v50 = v57;
      v51 = v58;
      result = sub_21D0CF7E0(&v50, &qword_27CE65DA8);
      v8 = v9;
      v63 = v9;
      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_21D18E678((v22 > 1), v23 + 1, 1);
        v8 = v63;
      }

      *(v8 + 16) = v23 + 1;
      v24 = v8 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      if (v46 == ++v11)
      {
        break;
      }

      v9 = v8;
      v12 += 5;
      v6 = v48;
      v5 = v49;
      if (v15 == v49)
      {
        goto LABEL_40;
      }
    }

    v4 = v42;
    v6 = v48;
    v5 = v49;
    v25 = v44;
    if (v15 == v49)
    {
      goto LABEL_21;
    }

LABEL_22:
    v26 = 80 * v15 + 32;
    while (v15 < v5)
    {
      v27 = (v4 + v26);
      v28 = *(v4 + v26 + 48);
      v56[2] = *(v4 + v26 + 32);
      v56[3] = v28;
      v56[4] = *(v4 + v26 + 64);
      v29 = *(v4 + v26 + 16);
      v56[0] = *(v4 + v26);
      v56[1] = v29;
      v30 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_37;
      }

      if (v6 == v25)
      {
        goto LABEL_21;
      }

      if (v25 >= v6)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v25, 1))
      {
        goto LABEL_39;
      }

      v31 = *(v43 + 8 * v25 + 32);
      v32 = v27[3];
      v59 = v27[2];
      v60 = v32;
      v61 = v27[4];
      v33 = v27[1];
      v57 = *v27;
      v58 = v33;
      v62 = v31;
      v34 = v25;
      sub_21D1D9B34(v56, &v50);
      v35 = v31;
      v36 = a3(&v57, v31);
      v38 = v37;
      v52 = v59;
      v53 = v60;
      v54 = v61;
      v55 = v62;
      v50 = v57;
      v51 = v58;
      result = sub_21D0CF7E0(&v50, &qword_27CE65DA8);
      v63 = v8;
      v40 = *(v8 + 16);
      v39 = *(v8 + 24);
      if (v40 >= v39 >> 1)
      {
        result = sub_21D18E678((v39 > 1), v40 + 1, 1);
        v8 = v63;
      }

      *(v8 + 16) = v40 + 1;
      v41 = v8 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      v25 = v34 + 1;
      ++v15;
      v26 += 80;
      v6 = v48;
      v5 = v49;
      v4 = v42;
      if (v30 == v49)
      {
        goto LABEL_21;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

LABEL_40:
  __break(1u);
  return result;
}

id sub_21DAA8C28(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, __int128 *, void *))
{
  v3 = a2;
  v4 = a1;
  v5 = *(a1 + 16);
  v51 = *(a2 + 16);
  if (v51 >= v5)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v76 = MEMORY[0x277D84F90];
  sub_21D18F87C(0, v6, 0);
  v7 = v76;
  v48 = v3;
  v49 = v4;
  if (!v6)
  {
    sub_21DBF8E0C();
    result = sub_21DBF8E0C();
    v14 = 0;
    v15 = 0;
LABEL_20:
    v28 = v51;
    if (v14 == v5)
    {
LABEL_21:

      return v7;
    }

    v29 = 112 * v14 + 32;
    while (v14 < v5)
    {
      v30 = (v4 + v29);
      v31 = *(v4 + v29 + 80);
      v65 = *(v4 + v29 + 64);
      v66 = v31;
      v67 = *(v4 + v29 + 96);
      v32 = *(v4 + v29 + 16);
      v61 = *(v4 + v29);
      v62 = v32;
      v33 = *(v4 + v29 + 48);
      v63 = *(v4 + v29 + 32);
      v64 = v33;
      v34 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_37;
      }

      if (v28 == v15)
      {
        goto LABEL_21;
      }

      if (v15 >= v28)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v15, 1))
      {
        goto LABEL_39;
      }

      v35 = *(v3 + 8 * v15 + 32);
      v36 = v30[5];
      v72 = v30[4];
      v73 = v36;
      v74 = v30[6];
      v37 = v30[1];
      v68 = *v30;
      v69 = v37;
      v38 = v30[3];
      v70 = v30[2];
      v71 = v38;
      v75 = v35;
      sub_21D1D9C94(&v61, &v53);
      v39 = v35;
      a3(v52, &v68, v35);
      v57 = v72;
      v58 = v73;
      v59 = v74;
      v60 = v75;
      v53 = v68;
      v54 = v69;
      v55 = v70;
      v56 = v71;
      result = sub_21D0CF7E0(&v53, &qword_27CE65DB0);
      v76 = v7;
      v41 = *(v7 + 16);
      v40 = *(v7 + 24);
      if (v41 >= v40 >> 1)
      {
        result = sub_21D18F87C((v40 > 1), v41 + 1, 1);
        v7 = v76;
      }

      *(v7 + 16) = v41 + 1;
      v42 = (v7 + 112 * v41);
      v43 = v52[0];
      v44 = v52[2];
      v42[3] = v52[1];
      v42[4] = v44;
      v42[2] = v43;
      v45 = v52[3];
      v46 = v52[4];
      v47 = v52[6];
      v42[7] = v52[5];
      v42[8] = v47;
      v42[5] = v45;
      v42[6] = v46;
      ++v15;
      ++v14;
      v29 += 112;
      v3 = v48;
      v4 = v49;
      v28 = v51;
      if (v34 == v5)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_36;
  }

  sub_21DBF8E0C();
  result = sub_21DBF8E0C();
  if (v5)
  {
    v9 = 0;
    v10 = (v4 + 32);
    while (v9 < v5)
    {
      v11 = v10[5];
      v57 = v10[4];
      v58 = v11;
      v59 = v10[6];
      v12 = v10[1];
      v53 = *v10;
      v54 = v12;
      v13 = v10[3];
      v55 = v10[2];
      v56 = v13;
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_33;
      }

      if (v51 == v9)
      {
        goto LABEL_40;
      }

      if (v9 >= v51)
      {
        goto LABEL_34;
      }

      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_35;
      }

      v16 = *(v48 + 32 + 8 * v9);
      v17 = v10[5];
      v72 = v10[4];
      v73 = v17;
      v74 = v10[6];
      v18 = v10[1];
      v68 = *v10;
      v69 = v18;
      v19 = v10[3];
      v70 = v10[2];
      v71 = v19;
      v75 = v16;
      sub_21D1D9C94(&v53, &v61);
      result = v16;
      if (!v68)
      {
        goto LABEL_40;
      }

      a3(&v61, &v68, v16);
      v57 = v72;
      v58 = v73;
      v59 = v74;
      v60 = v75;
      v53 = v68;
      v54 = v69;
      v55 = v70;
      v56 = v71;
      result = sub_21D0CF7E0(&v53, &qword_27CE65DB0);
      v76 = v7;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_21D18F87C((v20 > 1), v21 + 1, 1);
        v7 = v76;
      }

      *(v7 + 16) = v21 + 1;
      v22 = (v7 + 112 * v21);
      v23 = v61;
      v24 = v63;
      v22[3] = v62;
      v22[4] = v24;
      v22[2] = v23;
      v25 = v64;
      v26 = v65;
      v27 = v67;
      v22[7] = v66;
      v22[8] = v27;
      v22[5] = v25;
      v22[6] = v26;
      if (v6 == ++v9)
      {
        v3 = v48;
        v4 = v49;
        goto LABEL_20;
      }

      v10 += 7;
      if (v14 == v5)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
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
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_21DAA9024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a1, a6);
  *(v16 + 40) = a6;
  *(v16 + 48) = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v16 + 16));
  (*(v13 + 32))(boxed_opaque_existential_0, v15, a6);
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  *(v16 + 120) = 0;
  *(v16 + 56) = a2;
  *(v16 + 64) = a3;
  *(v16 + 72) = 0;
  *(v16 + 80) = a4;
  return v16;
}

uint64_t sub_21DAA9218(void *a1, uint64_t *a2, _BYTE *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v8 = a2[6];
  v7 = a2[7];
  v10 = a2[8];
  v9 = a2[9];
  if (!*a3)
  {
    if (a1)
    {
      v24 = a2[6];
      v18 = [a1 givenName];
      v19 = sub_21DBFA16C();
      v21 = v20;

      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        return v19;
      }

      v8 = v24;
    }

    if (!v5)
    {
      if (!v3)
      {
        if (v7)
        {
          sub_21DBF8E0C();
          return v8;
        }

        else if (v9)
        {
          sub_21DBF8E0C();
          return v10;
        }

        else
        {
          if (qword_280D1BAA8 != -1)
          {
            swift_once();
          }

          return sub_21DBF516C();
        }
      }

      sub_21DBF8E0C();
      v6 = v4;
    }

    sub_21DBF8E0C();
    return v6;
  }

  if (*a3 == 1)
  {
    if (a1)
    {
      v12 = objc_opt_self();
      v13 = a1;
      v14 = [v12 stringFromContact:v13 style:0];
      if (v14)
      {
        v15 = v14;
        v16 = sub_21DBFA16C();

        return v16;
      }
    }

    return TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0)._countAndFlagsBits;
  }

  else
  {
    v23 = TTRParticipantModel.monogram()();
    result = v23.value._countAndFlagsBits;
    if (!v23.value._object)
    {
      return 0;
    }
  }

  return result;
}

void sub_21DAA94AC(double a1, double a2, double a3)
{
  v6 = sub_21DBF5DCC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBFA12C();
  v11 = [objc_opt_self() _systemImageNamed_];

  if (!v11)
  {
    return;
  }

  v12 = [objc_opt_self() configurationWithScale_];
  v13 = [v11 imageWithConfiguration_];

  v14 = a1 * a3;
  if (v14 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = a2 * a3;
  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v14 * 4.0;
  v17 = COERCE__INT64(fabs(v14 * 4.0)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v17)
  {
    goto LABEL_20;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v18 = v16;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v20 = __CGBitmapContextCreate(v14, v15, v18, DeviceRGB);

  if (v20 && (v23.origin.x = 0.0, v23.origin.y = 0.0, v23.size.width = v14, v23.size.height = v15, CGRectGetMidX(v23), v24.origin.x = 0.0, v24.origin.y = 0.0, v24.size.width = v14, v24.size.height = v15, CGRectGetMidY(v24), sub_21DBFAE3C(), (*(v7 + 104))(v9, *MEMORY[0x277CBF258], v6), sub_21DBFAE2C(), (*(v7 + 8))(v9, v6), sub_21DAA82EC(v20, v13, 0.0, 0.0, v14, v15), Image = CGBitmapContextCreateImage(v20), v20, Image))
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:Image scale:1 orientation:a3];
  }

  else
  {
  }
}

unint64_t sub_21DAA9838()
{
  result = qword_27CE65D88;
  if (!qword_27CE65D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65D88);
  }

  return result;
}

unint64_t sub_21DAA9890()
{
  result = qword_27CE65D90;
  if (!qword_27CE65D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE65D90);
  }

  return result;
}

uint64_t assignWithCopy for TTRParticipantAvatarResult.Image(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for TTRParticipantAvatarResult.Image(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRParticipantAvatarResult.Image(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRParticipantAvatarResult.Image(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTRParticipantAvatarRenderConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRParticipantAvatarRenderConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for TTRParticipantAvatarRenderConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t sub_21DAA9C14(_OWORD *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = a1[3];
  v8[2] = a1[2];
  v8[3] = v4;
  v8[4] = a1[4];
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v7 = v3;
  return sub_21DAA9218(a2, v8, &v7);
}

uint64_t sub_21DAA9C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DAA9D00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65D80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Int __swiftcall Int.init()()
{
  result = qword_27CE65DB8;
  if (__OFADD__(qword_27CE65DB8, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_27CE65DB8;
  }

  return result;
}

id TTRIAttachmentImportingController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void __swiftcall TTRIAttachmentImportingController.createPicker(of:)(UIViewController_optional *__return_ptr retstr, RemindersUICore::TTRIAttachmentImportingController::Source of)
{
  if (*of)
  {
    if (*of == 1)
    {
      [objc_msgSend(objc_allocWithZone(MEMORY[0x277D05D68]) init)];
      return;
    }

    v3 = [objc_allocWithZone(MEMORY[0x277D755C8]) init];
    [v3 setDelegate_];
    [v3 setSourceType_];
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D755C8]) init];
    [v3 setDelegate_];
    [v3 setSourceType_];
  }

  [v3 ttr:4 setImagePickerSavingOptions:?];
}

UIMenu __swiftcall TTRIAttachmentImportingController.menuForAvailableSources(presentingIn:)(UIViewController *presentingIn)
{
  v1 = sub_21DAAA400();
  v2 = v1[2];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    sub_21D0D8CF0(0, &qword_280D0C1D0);
    v3 = v1 + 8;
    do
    {
      v4 = *(v3 - 4);
      v5 = *(v3 - 3);
      v7 = *(v3 - 2);
      v6 = *(v3 - 1);
      v8 = *v3;
      v3 += 5;
      v9 = swift_allocObject();
      *(v9 + 16) = v6;
      *(v9 + 24) = v8;
      v10 = swift_allocObject();
      v10[2] = v4;
      v10[3] = v5;
      v10[4] = v7;
      v10[5] = sub_21D11DA60;
      v10[6] = v9;
      v11 = v7;
      swift_bridgeObjectRetain_n();
      v12 = v11;

      sub_21DBFB77C();
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      --v2;
    }

    while (v2);

    if (!(v14 >> 62))
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_21D0D8CF0(0, &qword_27CE5DE90);
    sub_21DBF8E0C();
    sub_21DBFC33C();

    goto LABEL_6;
  }

  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_8;
  }

LABEL_5:
  sub_21DBF8E0C();
  sub_21DBFC65C();
  sub_21D0D8CF0(0, &qword_27CE5DE90);
LABEL_6:

  sub_21D0D8CF0(0, &qword_280D0C1F0);
  return sub_21DBFB58C();
}

uint64_t sub_21DAAA154()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65DC0);
  v1 = __swift_project_value_buffer(v0, qword_27CE65DC0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRIAttachmentImportingController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIAttachmentImportingController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

uint64_t TTRIAttachmentImportingController.Source.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

void *sub_21DAAA400()
{
  v0 = _s15RemindersUICore33TTRIAttachmentImportingControllerC16availableSourcesShyAC6SourceOGvgZ_0();
  v1 = &off_278331000;
  if (sub_21D22D5B8(0, v0))
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v42 = sub_21DBF516C();
    v3 = v2;
    v4 = sub_21DBFA12C();
    v5 = [objc_opt_self() _systemImageNamed_];

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v6;
    v8[3] = v7;
    v8[4] = sub_21DAAAC2C;
    v8[5] = 0;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_21DAAC534;
    *(v9 + 24) = v8;
    sub_21DBF8E0C();
    v10 = v5;

    v11 = sub_21D214A2C(0, 1, 1, MEMORY[0x277D84F90]);
    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_21D214A2C((v12 > 1), v13 + 1, 1, v11);
    }

    v11[2] = v13 + 1;
    v14 = &v11[5 * v13];
    v14[4] = v42;
    v14[5] = v3;
    v14[6] = v5;
    v14[7] = sub_21D0E622C;
    v14[8] = v9;
    v1 = &off_278331000;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (sub_21D22D5B8(1, v0))
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v43 = sub_21DBF516C();
    v16 = v15;
    v17 = sub_21DBFA12C();
    v18 = [objc_opt_self() v1[413]];

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = sub_21DAAAC34;
    v21[5] = 0;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_21DAAC534;
    *(v22 + 24) = v21;
    sub_21DBF8E0C();
    v23 = v18;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_21D214A2C(0, v11[2] + 1, 1, v11);
    }

    v25 = v11[2];
    v24 = v11[3];
    if (v25 >= v24 >> 1)
    {
      v11 = sub_21D214A2C((v24 > 1), v25 + 1, 1, v11);
    }

    v11[2] = v25 + 1;
    v26 = &v11[5 * v25];
    v26[4] = v43;
    v26[5] = v16;
    v26[6] = v18;
    v26[7] = sub_21D0E622C;
    v26[8] = v22;
    v1 = &off_278331000;
  }

  v27 = sub_21D22D5B8(2, v0);

  if (v27)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v28 = sub_21DBF516C();
    v30 = v29;
    v31 = sub_21DBFA12C();
    v32 = [objc_opt_self() v1[413]];

    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v35[2] = v33;
    v35[3] = v34;
    v35[4] = sub_21DAAACBC;
    v35[5] = 0;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_21DAAC4E8;
    *(v36 + 24) = v35;
    sub_21DBF8E0C();
    v37 = v32;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_21D214A2C(0, v11[2] + 1, 1, v11);
    }

    v39 = v11[2];
    v38 = v11[3];
    if (v39 >= v38 >> 1)
    {
      v11 = sub_21D214A2C((v38 > 1), v39 + 1, 1, v11);
    }

    v11[2] = v39 + 1;
    v40 = &v11[5 * v39];
    v40[4] = v28;
    v40[5] = v30;
    v40[6] = v32;
    v40[7] = sub_21D0E6070;
    v40[8] = v36;
  }

  return v11;
}

void sub_21DAAAB8C(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      a3(v5, v6);

      v5 = v7;
    }
  }
}

void sub_21DAAAC34(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D05D68]) init];
  [v4 setDelegate_];
  [a2 presentViewController:v4 animated:1 completion:0];
}

void sub_21DAAACC4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D755C8]) init];
  [v6 setDelegate_];
  [v6 setSourceType_];
  [v6 ttr:4 setImagePickerSavingOptions:?];
  [a2 presentViewController:v6 animated:1 completion:0];
}

id TTRIAttachmentImportingController.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id TTRIAttachmentImportingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TTRIAttachmentImportingController.imagePickerController(_:didFinishPickingMediaWithInfo:)(UIImagePickerController *_, Swift::OpaquePointer didFinishPickingMediaWithInfo)
{
  v5 = swift_allocObject();
  v5[2]._rawValue = didFinishPickingMediaWithInfo._rawValue;
  v5[3]._rawValue = v2;
  v8[4] = sub_21DAAC308;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21D0D74FC;
  v8[3] = &block_descriptor_12_6;
  v6 = _Block_copy(v8);
  sub_21DBF8E0C();
  v7 = v2;

  [(UIImagePickerController *)_ dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

void sub_21DAAAFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v64 - v5;
  v7 = type metadata accessor for TTRDirectlySavableImageData(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  if (*(a1 + 16))
  {
    v22 = *MEMORY[0x277D77470];
    v23 = sub_21D10FE34(v22);
    if (v24)
    {
      sub_21D0CEB98(*(a1 + 56) + 32 * v23, v67);

      if (swift_dynamicCast())
      {
        v26 = v65;
        v25 = v66;
        sub_21D1BAF70(v65, v66);
        TTRDirectlySavableImageData.init(data:)(v26, v25, v18);
        sub_21DAAC424(v18, v21, type metadata accessor for TTRDirectlySavableImageData);
        if (qword_27CE570B8 != -1)
        {
          swift_once();
        }

        v36 = sub_21DBF84BC();
        __swift_project_value_buffer(v36, qword_27CE65DC0);
        sub_21D2329F8(v21, v15);
        v37 = sub_21DBF84AC();
        v38 = sub_21DBFAEDC();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v67[0] = v40;
          *v39 = 136315138;
          v64 = v37;
          TTRDirectlySavableImageData.debugDescription.getter();
          v42 = v41;
          v44 = v43;
          sub_21DAAC48C(v15);
          v45 = sub_21D0CDFB4(v42, v44, v67);

          *(v39 + 4) = v45;
          v46 = v64;
          _os_log_impl(&dword_21D0C9000, v64, v38, "TTRIAttachmentImportingController: picked image w/ data {imageData: %s}", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x223D46520](v40, -1, -1);
          MEMORY[0x223D46520](v39, -1, -1);
          sub_21D17B8A8(v26, v25);

LABEL_26:
          v58 = a2 + OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v59 = *(v58 + 8);
            ObjectType = swift_getObjectType();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65F10);
            v61 = *(type metadata accessor for TTRUnsavedAttachment(0) - 8);
            v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
            v63 = swift_allocObject();
            *(v63 + 16) = xmmword_21DC08D00;
            sub_21D2329F8(v21, v63 + v62);
            swift_storeEnumTagMultiPayload();
            (*(v59 + 16))(a2, v63, ObjectType, v59);
            swift_unknownObjectRelease();
          }

          sub_21DAAC48C(v21);
          return;
        }

        sub_21D17B8A8(v26, v25);

        v47 = v15;
        goto LABEL_25;
      }
    }

    else
    {
    }

    if (*(a1 + 16))
    {
      v27 = sub_21D10FE34(*MEMORY[0x277D76A80]);
      if (v28)
      {
        sub_21D0CEB98(*(a1 + 56) + 32 * v27, v67);
        sub_21D0D8CF0(0, &qword_280D17688);
        if (swift_dynamicCast())
        {
          v29 = v65;
          v30 = sub_21DBF843C();
          (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
          v31 = v29;
          TTRDirectlySavableImageData.init(image:sourceUTI:)(v31, v6, v12);
          sub_21DAAC424(v12, v21, type metadata accessor for TTRDirectlySavableImageData);
          if (qword_27CE570B8 != -1)
          {
            swift_once();
          }

          v48 = sub_21DBF84BC();
          __swift_project_value_buffer(v48, qword_27CE65DC0);
          sub_21D2329F8(v21, v9);
          v49 = sub_21DBF84AC();
          v50 = sub_21DBFAEDC();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v67[0] = v52;
            *v51 = 136315138;
            TTRDirectlySavableImageData.debugDescription.getter();
            v54 = v53;
            v56 = v55;
            sub_21DAAC48C(v9);
            v57 = sub_21D0CDFB4(v54, v56, v67);

            *(v51 + 4) = v57;
            _os_log_impl(&dword_21D0C9000, v49, v50, "TTRIAttachmentImportingController: picked image {imageData: %s}", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v52);
            MEMORY[0x223D46520](v52, -1, -1);
            MEMORY[0x223D46520](v51, -1, -1);

            goto LABEL_26;
          }

          v47 = v9;
LABEL_25:
          sub_21DAAC48C(v47);
          goto LABEL_26;
        }
      }
    }
  }

  if (qword_27CE570B8 != -1)
  {
    swift_once();
  }

  v32 = sub_21DBF84BC();
  __swift_project_value_buffer(v32, qword_27CE65DC0);
  v33 = sub_21DBF84AC();
  v34 = sub_21DBFAEBC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_21D0C9000, v33, v34, "TTRIAttachmentImportingController: failed to get image or image data", v35, 2u);
    MEMORY[0x223D46520](v35, -1, -1);
  }
}

void sub_21DAAB9E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v11[4] = a3;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21D0D74FC;
  v11[3] = a4;
  v9 = _Block_copy(v11);
  v10 = v4;

  [a1 dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);
}

uint64_t sub_21DAABAA8(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21DAABB60(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v14[4] = a5;
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21D0D74FC;
  v14[3] = a6;
  v11 = _Block_copy(v14);
  v12 = a1;
  v13 = a3;

  [v13 dismissViewControllerAnimated:1 completion:v11];

  _Block_release(v11);
}

Swift::Void __swiftcall TTRIAttachmentImportingController.documentCameraViewController(_:didFinishWith:)(VNDocumentCameraViewController *_, VNDocumentCameraScan didFinishWith)
{
  v5 = swift_allocObject();
  v5[2].super.isa = didFinishWith.super.isa;
  v5[3].super.isa = v2;
  v9[4] = sub_21DAAC310;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21D0D74FC;
  v9[3] = &block_descriptor_24_4;
  v6 = _Block_copy(v9);
  v7 = didFinishWith.super.isa;
  v8 = v2;

  [(VNDocumentCameraViewController *)_ dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

int64_t sub_21DAABD30(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRUnsavedAttachment(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = (&v33 - v10);
  result = [a1 pageCount];
  if (result >= 1)
  {
    result = [a1 pageCount];
    if (result < 0)
    {
      __break(1u);
      goto LABEL_28;
    }

    v13 = result;
    v34 = a2;
    v14 = MEMORY[0x277D84F90];
    if (result)
    {
      v35 = v4;
      v36 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v15 = 0;
      do
      {
        v16 = v15 + 1;
        v17 = [a1 imageOfPageAtIndex_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v15 = v16;
      }

      while (v13 != v16);
      v4 = v35;
      v18 = v36;
      v14 = MEMORY[0x277D84F90];
      if (!(v36 >> 62))
      {
LABEL_7:
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v19)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        goto LABEL_7;
      }
    }

    v19 = sub_21DBFBD7C();
    if (v19)
    {
LABEL_8:
      v36 = v14;
      result = sub_21D18F89C(0, v19 & ~(v19 >> 63), 0);
      if ((v19 & 0x8000000000000000) == 0)
      {
        v20 = v36;
        if ((v18 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v19; ++i)
          {
            *v11 = MEMORY[0x223D44740](i, v18);
            swift_storeEnumTagMultiPayload();
            v36 = v20;
            v23 = *(v20 + 16);
            v22 = *(v20 + 24);
            if (v23 >= v22 >> 1)
            {
              sub_21D18F89C(v22 > 1, v23 + 1, 1);
              v20 = v36;
            }

            *(v20 + 16) = v23 + 1;
            sub_21DAAC424(v11, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, type metadata accessor for TTRUnsavedAttachment);
          }
        }

        else
        {
          v35 = v4;
          v24 = 32;
          do
          {
            v25 = *(v18 + v24);
            *v7 = v25;
            swift_storeEnumTagMultiPayload();
            v36 = v20;
            v27 = *(v20 + 16);
            v26 = *(v20 + 24);
            v28 = v25;
            if (v27 >= v26 >> 1)
            {
              sub_21D18F89C(v26 > 1, v27 + 1, 1);
              v20 = v36;
            }

            *(v20 + 16) = v27 + 1;
            sub_21DAAC424(v7, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, type metadata accessor for TTRUnsavedAttachment);
            v24 += 8;
            --v19;
          }

          while (v19);
        }

        goto LABEL_23;
      }

LABEL_28:
      __break(1u);
      return result;
    }

LABEL_17:

    v20 = MEMORY[0x277D84F90];
LABEL_23:
    v29 = v34;
    v30 = v34 + OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v30 + 8);
      ObjectType = swift_getObjectType();
      (*(v31 + 16))(v29, v20, ObjectType, v31);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t _s15RemindersUICore33TTRIAttachmentImportingControllerC16availableSourcesShyAC6SourceOGvgZ_0()
{
  v5 = MEMORY[0x277D84FA0];
  v0 = objc_opt_self();
  if ([v0 isSourceTypeAvailable_])
  {
    sub_21D29D120(&v3, 0);
    sub_21D29D120(&v2, 1);
  }

  if ([v0 isSourceTypeAvailable_])
  {
    sub_21D29D120(&v4, 2);
  }

  return v5;
}

unint64_t sub_21DAAC31C()
{
  result = qword_280D116D8;
  if (!qword_280D116D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D116D8);
  }

  return result;
}

unint64_t sub_21DAAC3CC()
{
  result = qword_27CE57C28;
  if (!qword_27CE57C28)
  {
    type metadata accessor for InfoKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE57C28);
  }

  return result;
}

uint64_t sub_21DAAC424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DAAC48C(uint64_t a1)
{
  v2 = type metadata accessor for TTRDirectlySavableImageData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTRObservableViewModelCollection.updateAndPublishAll(using:)(void (*a1)(char *, char *), uint64_t a2)
{
  v7 = 0;
  v4 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  return sub_21DAAC9E0(&v7, a1, a2, v4, WitnessTable);
}

uint64_t TTRObservableViewModelCollection<>.updateAndPublishIfChanged<A>(forItemIDs:shouldForcePublish:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v12 = sub_21DBFBA8C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  v17 = *(a4 - 8);
  (*(v17 + 16))(&v19 - v15, a1, a4, v14);
  (*(v17 + 56))(v16, 0, 1, a4);
  sub_21D0E3D78(v16, *(v6 + 16), *(v6 + 24), a2, a3, a4, a5, v20);
  return (*(v13 + 8))(v16, v12);
}

uint64_t TTRObservableViewModelCollection.updateAndPublish<A>(forItemIDs:using:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_21DBFBA8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  v14 = *(a4 - 8);
  (*(v14 + 16))(&v16 - v12, a1, a4);
  (*(v14 + 56))(v13, 0, 1, a4);
  sub_21DAAC9E0(v13, a2, a3, a4, a5);
  return (*(v11 + 8))(v13, v10);
}

Swift::Void __swiftcall TTRObservableViewModelCollection.updateAndPublishAll()()
{
  v5 = 0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  sub_21DAAC9E0(&v5, v1, v2, v3, WitnessTable);
}

uint64_t sub_21DAAC9E0(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v86 = a5;
  v95 = a3;
  v94 = a2;
  v100 = a1;
  v85 = *v5;
  v7 = v85;
  v99 = *(v85 + 80);
  v8 = v99;
  v93 = sub_21DBFBA8C();
  v9 = *(v93 - 8);
  v10 = MEMORY[0x28223BE20](v93 - 8);
  v92 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v111 = v77 - v13;
  v14 = *(v8 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v77 - v15;
  v110 = sub_21DBFBA8C();
  v117 = *(v110 - 8);
  v16 = MEMORY[0x28223BE20](v110);
  v18 = v77 - v17;
  v106 = a4;
  v19 = *(a4 - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v84 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *(*(v7 + 88) - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v107 = v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v96 = v77 - v24;
  v26 = v25;
  v77[1] = type metadata accessor for TTRObservableViewModel();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v105 = sub_21DBFBA8C();
  v116 = *(v105 - 8);
  v28 = MEMORY[0x28223BE20](v105);
  v30 = v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v112 = v77 - v31;
  swift_beginAccess();
  v32 = v5[4];
  if ((v32 & 0xC000000000000001) != 0)
  {
    v33 = sub_21DBFC21C();
    v34 = 0;
    v35 = 0;
    v108 = v33 | 0x8000000000000000;
    v109 = 0;
  }

  else
  {
    v36 = -1 << *(v32 + 32);
    v34 = ~v36;
    v37 = *(v32 + 64);
    v108 = v32;
    v109 = v32 + 64;
    v38 = -v36;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v35 = v39 & v37;
  }

  v113 = (v88 + 32);
  v104 = TupleTypeMetadata2 - 8;
  v77[0] = v34;
  v40 = (v34 + 64) >> 6;
  v87 = v88 + 16;
  v103 = (v116 + 32);
  v98 = (v117 + 16);
  v97 = (v19 + 48);
  v83 = (v19 + 32);
  v82 = (v19 + 8);
  v101 = (v88 + 8);
  v81 = (v117 + 8);
  v91 = (v9 + 16);
  v90 = (v9 + 8);
  v89 = (v14 + 48);
  v79 = (v14 + 32);
  v78 = (v14 + 8);
  result = sub_21DBF8E0C();
  v42 = 0;
  v114 = v30;
  v115 = TupleTypeMetadata2;
  v43 = v112;
  for (i = v40; ; v40 = i)
  {
    v44 = v108;
    if ((v108 & 0x8000000000000000) != 0)
    {
      v60 = sub_21DBFC2DC();
      v47 = v107;
      if (v60)
      {
        v61 = v96;
        sub_21DBFC60C();
        swift_unknownObjectRelease();
        sub_21DBFC60C();
        swift_unknownObjectRelease();
        v62 = *(TupleTypeMetadata2 + 48);
        v63 = v61;
        v43 = v112;
        (*v113)(v30, v63, v26);
        *&v30[v62] = v118;
        v58 = *(TupleTypeMetadata2 - 8);
        (*(v58 + 56))(v30, 0, 1, TupleTypeMetadata2);
      }

      else
      {
        v58 = *(TupleTypeMetadata2 - 8);
        (*(v58 + 56))(v30, 1, 1, TupleTypeMetadata2);
      }

      v116 = v42;
      v117 = v35;
      v59 = v106;
      goto LABEL_26;
    }

    v45 = v35;
    v46 = v42;
    v47 = v107;
    if (!v35)
    {
      break;
    }

LABEL_20:
    v117 = (v45 - 1) & v45;
    v51 = __clz(__rbit64(v45)) | (v46 << 6);
    v52 = v88;
    v53 = v96;
    (*(v88 + 16))(v96, *(v108 + 48) + *(v88 + 72) * v51, v26);
    v54 = *(*(v44 + 56) + 8 * v51);
    v55 = *(v115 + 48);
    v56 = *(v52 + 32);
    v57 = v53;
    v30 = v114;
    TupleTypeMetadata2 = v115;
    v56(v114, v57, v26);
    *&v30[v55] = v54;
    v58 = *(TupleTypeMetadata2 - 8);
    (*(v58 + 56))(v30, 0, 1, TupleTypeMetadata2);

    v116 = v46;
LABEL_21:
    v59 = v106;
    v43 = v112;
LABEL_26:
    (*v103)(v43, v30, v105);
    if ((*(v58 + 48))(v43, 1, TupleTypeMetadata2) == 1)
    {
      return sub_21D0CFAF8();
    }

    v64 = *&v43[*(TupleTypeMetadata2 + 48)];
    (*v113)(v47, v43, v26);
    (*v98)(v18, v100, v110);
    if ((*v97)(v18, 1, v59) == 1)
    {
      (*v81)(v18, v110);
      v65 = v99;
    }

    else
    {
      v66 = v84;
      (*v83)(v84, v18, v59);
      v67 = sub_21DBFA59C();
      v68 = v59;
      v69 = v67;
      (*v82)(v66, v68);
      v65 = v99;
      if ((v69 & 1) == 0)
      {
        (*v101)(v47, v26);

        v42 = v116;
        v35 = v117;
        continue;
      }
    }

    v70 = v26;
    v71 = *(*v64 + 88);
    swift_beginAccess();
    v72 = v92;
    v73 = v93;
    (*v91)(v92, v64 + v71, v93);
    v94(v47, v72);
    v74 = *v90;
    v75 = v111;
    (*v90)(v72, v73);
    if ((*v89)(v75, 1, v65) == 1)
    {
      v26 = v70;
      (*v101)(v47, v70);

      result = v74(v75, v73);
    }

    else
    {
      v76 = v80;
      (*v79)(v80, v75, v65);
      TTRObservableViewModel.updateAndPublish(_:)(v76);

      (*v78)(v76, v65);
      v26 = v70;
      result = (*v101)(v47, v70);
    }

    v42 = v116;
    v35 = v117;
    v30 = v114;
    TupleTypeMetadata2 = v115;
    v43 = v112;
  }

  if (v40 <= v42 + 1)
  {
    v48 = v42 + 1;
  }

  else
  {
    v48 = v40;
  }

  v49 = v48 - 1;
  v50 = v42;
  while (1)
  {
    v46 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v46 >= v40)
    {
      v116 = v49;
      v58 = *(TupleTypeMetadata2 - 8);
      (*(v58 + 56))(v30, 1, 1, TupleTypeMetadata2);
      v117 = 0;
      goto LABEL_21;
    }

    v45 = *(v109 + 8 * v46);
    ++v50;
    if (v45)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t TTRObservableViewModelCollection.deinit()
{

  return v0;
}

uint64_t TTRObservableViewModelCollection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TTRObservableViewModelCollection<>.updateAllAndPublishIfChanged(shouldForcePublish:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  return sub_21D0E3D78(&v12, v7, v8, a1, a2, v9, a3, WitnessTable);
}

uint64_t sub_21DAAD6F4(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v131 = a3;
  v130 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v6 - 8);
  v123 = &v113 - v7;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388);
  MEMORY[0x28223BE20](v124);
  v122 = &v113 - v8;
  v121 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v121);
  v137 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F20);
  MEMORY[0x28223BE20](v10 - 8);
  v129 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v128 = &v113 - v13;
  v127 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v14 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v118 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v16 = *(v120 - 8);
  MEMORY[0x28223BE20](v120 - 8);
  v114 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v132 = &v113 - v19;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0);
  MEMORY[0x28223BE20](v148);
  v21 = &v113 - v20;
  v147 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v139 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v142 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v141 = (&v113 - v24);
  MEMORY[0x28223BE20](v25);
  v143 = &v113 - v26;
  MEMORY[0x28223BE20](v27);
  v140 = &v113 - v28;
  MEMORY[0x28223BE20](v29);
  v154 = &v113 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v113 - v32;
  MEMORY[0x28223BE20](v34);
  v135 = &v113 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F28);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v113 - v40;
  swift_beginAccess();
  v42 = *(a4 + 32);
  v43 = *(v42 + 64);
  v138 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & v43;
  v125 = (v44 + 63) >> 6;
  v152 = a1 + 56;
  v116 = 0x800000021DC43E30;
  v115 = 0x800000021DC43E00;
  v133 = 0x800000021DC43DE0;
  v119 = (v16 + 48);
  v126 = (v14 + 48);
  v117 = (v14 + 56);
  v136 = v42;
  result = sub_21DBF8E0C();
  v48 = 0;
  v151 = a1;
  v153 = v33;
  v145 = v38;
  v144 = v41;
  while (v46)
  {
    v49 = v48;
LABEL_17:
    v52 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v53 = v52 | (v49 << 6);
    v54 = v136;
    v55 = v135;
    sub_21DAB0A24(*(v136 + 48) + *(v139 + 72) * v53, v135, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v56 = *(*(v54 + 56) + 8 * v53);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F30);
    v58 = *(v57 + 48);
    v59 = v55;
    v38 = v145;
    sub_21DAB09BC(v59, v145, type metadata accessor for TTRRemindersListViewModel.ItemID);
    *&v38[v58] = v56;
    (*(*(v57 - 8) + 56))(v38, 0, 1, v57);

    v41 = v144;
LABEL_18:
    sub_21DAB08EC(v38, v41);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F30);
    if ((*(*(v60 - 8) + 48))(v41, 1, v60) == 1)
    {
    }

    v61 = *&v41[*(v60 + 48)];
    sub_21DAB09BC(v41, v153, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (!a1)
    {
      goto LABEL_98;
    }

    if (!*(a1 + 16))
    {
      sub_21DAB095C(v153, type metadata accessor for TTRRemindersListViewModel.ItemID);

      goto LABEL_6;
    }

    sub_21DBFC7DC();
    TTRRemindersListViewModel.ItemID.hash(into:)();
    v62 = sub_21DBFC82C();
    v63 = -1 << *(a1 + 32);
    v64 = v62 & ~v63;
    if (((*(v152 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
    {
LABEL_5:

      result = sub_21DAB095C(v153, type metadata accessor for TTRRemindersListViewModel.ItemID);
      goto LABEL_6;
    }

    v149 = ~v63;
    v150 = *(v139 + 72);
    v146 = v61;
    while (1)
    {
      v67 = v154;
      sub_21DAB0A24(*(a1 + 48) + v150 * v64, v154, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v68 = *(v148 + 48);
      sub_21DAB0A24(v67, v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21DAB0A24(v153, &v21[v68], type metadata accessor for TTRRemindersListViewModel.ItemID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v71 = v141;
          sub_21DAB0A24(v21, v141, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v72 = *v71;
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v73 = *&v21[v68];
            sub_21D1B2ABC();
            v74 = sub_21DBFB63C();

            sub_21DAB095C(v154, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (v74)
            {
              goto LABEL_97;
            }

            goto LABEL_89;
          }

          sub_21DAB095C(v154, type metadata accessor for TTRRemindersListViewModel.ItemID);

LABEL_25:
          sub_21D0CF7E0(v21, &qword_27CE58AD0);
LABEL_26:
          a1 = v151;
          goto LABEL_27;
        }

        v84 = v142;
        sub_21DAB0A24(v21, v142, type metadata accessor for TTRRemindersListViewModel.ItemID);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          v65 = type metadata accessor for TTRRemindersListViewModel.ItemID;
          v66 = v154;
LABEL_24:
          sub_21DAB095C(v66, v65);
          goto LABEL_25;
        }

        v85 = *v84;
        if (v85 > 2)
        {
          if (v85 == 3)
          {
            v88 = 0xD00000000000001FLL;
            v93 = &v147;
          }

          else
          {
            if (v85 == 4)
            {
              v89 = 0xE700000000000000;
              v88 = 0x6D657449706974;
              goto LABEL_68;
            }

            v88 = 0xD00000000000001DLL;
            v93 = &v148;
          }

          v89 = *(v93 - 32);
        }

        else
        {
          v86 = 0xD000000000000012;
          if (v85 == 1)
          {
            v86 = 0x7367617468736168;
          }

          v87 = 0xEC0000006D657449;
          if (v85 != 1)
          {
            v87 = v133;
          }

          if (*v84)
          {
            v88 = v86;
          }

          else
          {
            v88 = 0x6574656C706D6F63;
          }

          if (*v84)
          {
            v89 = v87;
          }

          else
          {
            v89 = 0xED00006D65744964;
          }
        }

LABEL_68:
        v94 = v21[v68];
        if (v94 <= 2)
        {
          if (v21[v68])
          {
            if (v94 == 1)
            {
              v95 = 0x7367617468736168;
            }

            else
            {
              v95 = 0xD000000000000012;
            }

            if (v94 == 1)
            {
              v96 = 0xEC0000006D657449;
            }

            else
            {
              v96 = v133;
            }

            if (v88 != v95)
            {
              goto LABEL_88;
            }

LABEL_87:
            if (v89 == v96)
            {

              v103 = type metadata accessor for TTRRemindersListViewModel.ItemID;
              v104 = v154;
              goto LABEL_96;
            }
          }

          else
          {
            v96 = 0xED00006D65744964;
            if (v88 == 0x6574656C706D6F63)
            {
              goto LABEL_87;
            }
          }

LABEL_88:
          v99 = sub_21DBFC64C();

          sub_21DAB095C(v154, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (v99)
          {
            goto LABEL_97;
          }

LABEL_89:
          sub_21DAB095C(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
          goto LABEL_26;
        }

        if (v94 == 3)
        {
          v97 = 0xD00000000000001FLL;
          v98 = &v147;
        }

        else
        {
          if (v94 == 4)
          {
            v96 = 0xE700000000000000;
            if (v88 == 0x6D657449706974)
            {
              goto LABEL_87;
            }

            goto LABEL_88;
          }

          v97 = 0xD00000000000001DLL;
          v98 = &v148;
        }

        v96 = *(v98 - 32);
        if (v88 == v97)
        {
          goto LABEL_87;
        }

        goto LABEL_88;
      }

      if (EnumCaseMultiPayload)
      {
        break;
      }

      v70 = v140;
      sub_21DAB0A24(v21, v140, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_21DAB095C(v154, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21DAB095C(v70, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v61 = v146;
        goto LABEL_25;
      }

      v90 = &v21[v68];
      v91 = v132;
      sub_21DAB09BC(v90, v132, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v92 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v70, v91);
      sub_21DAB095C(v91, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21DAB095C(v154, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21DAB095C(v70, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21DAB095C(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
      a1 = v151;
      v61 = v146;
      if (v92)
      {
        goto LABEL_98;
      }

LABEL_27:
      v64 = (v64 + 1) & v149;
      if (((*(v152 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v75 = v143;
    sub_21DAB0A24(v21, v143, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21DAB095C(v154, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v65 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
      v66 = v75;
      goto LABEL_24;
    }

    v76 = v137;
    sub_21DAB09BC(&v21[v68], v137, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D1B2ABC();
    if ((sub_21DBFB63C() & 1) == 0)
    {
      sub_21DAB095C(v154, type metadata accessor for TTRRemindersListViewModel.ItemID);
      goto LABEL_91;
    }

    v77 = *(v121 + 20);
    v78 = *(v124 + 48);
    v79 = v122;
    sub_21D0D3954(v75 + v77, v122, &unk_27CE5CD70);
    v134 = v78;
    sub_21D0D3954(v76 + v77, v79 + v78, &unk_27CE5CD70);
    v80 = *v119;
    v81 = v120;
    if ((*v119)(v79, 1, v120) != 1)
    {
      sub_21D0D3954(v79, v123, &unk_27CE5CD70);
      if (v80(v79 + v134, 1, v81) == 1)
      {
        sub_21DAB095C(v154, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21DAB095C(v123, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v83 = v79;
        v61 = v146;
        goto LABEL_64;
      }

      v100 = v114;
      sub_21DAB09BC(v79 + v134, v114, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v101 = v123;
      LODWORD(v134) = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v123, v100);
      sub_21DAB095C(v100, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21DAB095C(v154, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21DAB095C(v101, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D0CF7E0(v79, &unk_27CE5CD70);
      v76 = v137;
      v75 = v143;
      v61 = v146;
      if (v134)
      {
        goto LABEL_95;
      }

LABEL_91:
      sub_21DAB095C(v76, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21DAB095C(v75, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21DAB095C(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
      a1 = v151;
      v38 = v145;
      goto LABEL_27;
    }

    sub_21DAB095C(v154, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v82 = v80(v79 + v134, 1, v81) == 1;
    v83 = v79;
    v61 = v146;
    if (!v82)
    {
LABEL_64:
      sub_21D0CF7E0(v83, &qword_27CE58388);
      v76 = v137;
      v75 = v143;
      goto LABEL_91;
    }

    sub_21D0CF7E0(v79, &unk_27CE5CD70);
    v76 = v137;
    v75 = v143;
LABEL_95:
    sub_21DAB095C(v76, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v104 = v75;
    v103 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
LABEL_96:
    sub_21DAB095C(v104, v103);
LABEL_97:
    sub_21DAB095C(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
    a1 = v151;
LABEL_98:
    v146 = v61;
    v105 = *(*v61 + 88);
    swift_beginAccess();
    v150 = v105;
    v106 = v129;
    sub_21D0D3954(v61 + v105, v129, &qword_27CE65F20);
    v107 = v127;
    v108 = v128;
    v130(v153, v106);
    sub_21D0CF7E0(v106, &qword_27CE65F20);
    if ((*v126)(v108, 1, v107) == 1)
    {
      sub_21DAB095C(v153, type metadata accessor for TTRRemindersListViewModel.ItemID);

      result = sub_21D0CF7E0(v108, &qword_27CE65F20);
    }

    else
    {
      v109 = v108;
      v110 = v118;
      sub_21DAB09BC(v109, v118, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
      sub_21DAB0A24(v110, v106, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
      (*v117)(v106, 0, 1, v107);
      v111 = v146;
      v112 = v150;
      swift_beginAccess();
      sub_21DAB0A8C(v106, v111 + v112);
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
      sub_21D0EAF6C();
      a1 = v151;
      sub_21DBF912C();

      sub_21DAB095C(v110, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
      result = sub_21DAB095C(v153, type metadata accessor for TTRRemindersListViewModel.ItemID);
    }

    v38 = v145;
LABEL_6:
    v41 = v144;
  }

  if (v125 <= v48 + 1)
  {
    v50 = v48 + 1;
  }

  else
  {
    v50 = v125;
  }

  v51 = v50 - 1;
  while (1)
  {
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v49 >= v125)
    {
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F30);
      (*(*(v102 - 8) + 56))(v38, 1, 1, v102);
      v46 = 0;
      v48 = v51;
      goto LABEL_18;
    }

    v46 = *(v138 + 8 * v49);
    ++v48;
    if (v46)
    {
      v48 = v49;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t TTRObservableViewModelCollection<>.updateAndPublishIfChanged<A>(forItemIDs:using:shouldForcePublish:)(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v22 = a7;
  v14 = sub_21DBFBA8C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  v19 = *(a6 - 8);
  (*(v19 + 16))(&v21 - v17, a1, a6, v16);
  (*(v19 + 56))(v18, 0, 1, a6);
  sub_21D0E3D78(v18, a2, a3, a4, a5, a6, v22, v23);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_21DAAED30(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v183 = a5;
  v197 = a3;
  v196 = a2;
  v218 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v177 = &v176 - v12;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388);
  MEMORY[0x28223BE20](v203);
  v198 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v176 = &v176 - v15;
  v202 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v202);
  v215 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v181 = &v176 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F20);
  MEMORY[0x28223BE20](v19 - 8);
  v195 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v194 = &v176 - v22;
  v193 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v23 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v192 = &v176 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v25 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v180 = &v176 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v179 = &v176 - v28;
  MEMORY[0x28223BE20](v29);
  v204 = &v176 - v30;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0);
  MEMORY[0x28223BE20](v225);
  v214 = &v176 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v176 - v33;
  v227 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v213 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v190 = &v176 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v185 = (&v176 - v37);
  MEMORY[0x28223BE20](v38);
  v186 = &v176 - v39;
  MEMORY[0x28223BE20](v40);
  v184 = &v176 - v41;
  MEMORY[0x28223BE20](v42);
  v211 = &v176 - v43;
  MEMORY[0x28223BE20](v44);
  v222 = &v176 - v45;
  MEMORY[0x28223BE20](v46);
  v221 = (&v176 - v47);
  MEMORY[0x28223BE20](v48);
  v224 = &v176 - v49;
  MEMORY[0x28223BE20](v50);
  v52 = &v176 - v51;
  MEMORY[0x28223BE20](v53);
  v226 = &v176 - v54;
  MEMORY[0x28223BE20](v55);
  v205 = &v176 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F28);
  MEMORY[0x28223BE20](v57 - 8);
  v212 = &v176 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v208 = &v176 - v60;
  swift_beginAccess();
  v61 = *(a4 + 32);
  v62 = *(v61 + 64);
  v209 = v61 + 64;
  v63 = 1 << *(v61 + 32);
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  else
  {
    v64 = -1;
  }

  v219 = v64 & v62;
  v187 = (v63 + 63) >> 6;
  v189 = 0x800000021DC43E30;
  v188 = 0x800000021DC43E00;
  v207 = 0x800000021DC43DE0;
  v200 = (v25 + 48);
  v191 = (v23 + 48);
  v206 = v61;
  result = sub_21DBF8E0C();
  v66 = 0;
  v216 = a6;
  v199 = v10;
  v220 = v52;
  v182 = a6 + 56;
LABEL_6:
  v67 = v219;
  if (v219)
  {
    v68 = v66;
    goto LABEL_16;
  }

  if (v187 <= v66 + 1)
  {
    v69 = v66 + 1;
  }

  else
  {
    v69 = v187;
  }

  v70 = v69 - 1;
  v71 = v212;
  while (1)
  {
    v68 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    if (v68 >= v187)
    {
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F30);
      (*(*(v119 - 8) + 56))(v71, 1, 1, v119);
      v219 = 0;
      v66 = v70;
      goto LABEL_17;
    }

    v67 = *(v209 + 8 * v68);
    ++v66;
    if (v67)
    {
      v66 = v68;
LABEL_16:
      v219 = (v67 - 1) & v67;
      v72 = __clz(__rbit64(v67)) | (v68 << 6);
      v73 = v206;
      v74 = v205;
      sub_21DAB0A24(*(v206 + 48) + *(v213 + 72) * v72, v205, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v75 = *(*(v73 + 56) + 8 * v72);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F30);
      v77 = *(v76 + 48);
      v78 = v74;
      v71 = v212;
      sub_21DAB09BC(v78, v212, type metadata accessor for TTRRemindersListViewModel.ItemID);
      *(v71 + v77) = v75;
      (*(*(v76 - 8) + 56))(v71, 0, 1, v76);

LABEL_17:
      v79 = v208;
      sub_21DAB08EC(v71, v208);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F30);
      if ((*(*(v80 - 8) + 48))(v79, 1, v80) == 1)
      {
      }

      v217 = *(v79 + *(v80 + 48));
      v81 = v226;
      sub_21DAB09BC(v79, v226, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v82 = v215;
      if (!v218)
      {
        goto LABEL_94;
      }

      v83 = *(v218 + 16);
      if (!v83)
      {
LABEL_89:
        sub_21DAB095C(v81, type metadata accessor for TTRRemindersListViewModel.ItemID);

        goto LABEL_6;
      }

      v84 = v218 + ((*(v213 + 80) + 32) & ~*(v213 + 80));
      v223 = *(v213 + 72);
      while (2)
      {
        v85 = *(v225 + 48);
        sub_21DAB0A24(v84, v34, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21DAB0A24(v81, &v34[v85], type metadata accessor for TTRRemindersListViewModel.ItemID);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v87 = v224;
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            v89 = v221;
            sub_21DAB0A24(v34, v221, type metadata accessor for TTRRemindersListViewModel.ItemID);
            v90 = *v89;
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v91 = *&v34[v85];
              sub_21D1B2ABC();
              v92 = sub_21DBFB63C();

              if (v92)
              {
                goto LABEL_93;
              }

              goto LABEL_86;
            }

            goto LABEL_50;
          }

          sub_21DAB0A24(v34, v222, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload() != 3)
          {
LABEL_50:
            sub_21D0CF7E0(v34, &qword_27CE58AD0);
            goto LABEL_87;
          }

          v101 = *v222;
          if (v101 > 2)
          {
            if (v101 == 3)
            {
              v104 = 0xD00000000000001FLL;
              v109 = &v220;
            }

            else
            {
              if (v101 == 4)
              {
                v105 = 0xE700000000000000;
                v104 = 0x6D657449706974;
                goto LABEL_62;
              }

              v104 = 0xD00000000000001DLL;
              v109 = &v221;
            }

            v105 = *(v109 - 32);
          }

          else
          {
            v102 = 0xD000000000000012;
            if (v101 == 1)
            {
              v102 = 0x7367617468736168;
            }

            v103 = 0xEC0000006D657449;
            if (v101 != 1)
            {
              v103 = v207;
            }

            if (*v222)
            {
              v104 = v102;
            }

            else
            {
              v104 = 0x6574656C706D6F63;
            }

            if (*v222)
            {
              v105 = v103;
            }

            else
            {
              v105 = 0xED00006D65744964;
            }
          }

LABEL_62:
          v110 = v34[v85];
          if (v110 <= 2)
          {
            if (v34[v85])
            {
              if (v110 == 1)
              {
                v111 = 0x7367617468736168;
              }

              else
              {
                v111 = 0xD000000000000012;
              }

              if (v110 == 1)
              {
                v112 = 0xEC0000006D657449;
              }

              else
              {
                v112 = v207;
              }

              if (v104 != v111)
              {
LABEL_82:
                v115 = sub_21DBFC64C();

                if (v115)
                {
                  goto LABEL_93;
                }

                goto LABEL_86;
              }
            }

            else
            {
              v112 = 0xED00006D65744964;
              if (v104 != 0x6574656C706D6F63)
              {
                goto LABEL_82;
              }
            }

LABEL_81:
            if (v105 == v112)
            {

              goto LABEL_93;
            }

            goto LABEL_82;
          }

          if (v110 == 3)
          {
            v113 = 0xD00000000000001FLL;
            v114 = &v220;
          }

          else
          {
            if (v110 == 4)
            {
              v112 = 0xE700000000000000;
              if (v104 != 0x6D657449706974)
              {
                goto LABEL_82;
              }

              goto LABEL_81;
            }

            v113 = 0xD00000000000001DLL;
            v114 = &v221;
          }

          v112 = *(v114 - 32);
          if (v104 != v113)
          {
            goto LABEL_82;
          }

          goto LABEL_81;
        }

        if (!EnumCaseMultiPayload)
        {
          v87 = v220;
          sub_21DAB0A24(v34, v220, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload())
          {
            v88 = type metadata accessor for TTRRemindersListViewModel.SectionID;
            goto LABEL_49;
          }

          v106 = &v34[v85];
          v107 = v204;
          sub_21DAB09BC(v106, v204, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v108 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v87, v107);
          sub_21DAB095C(v107, type metadata accessor for TTRRemindersListViewModel.SectionID);
          sub_21DAB095C(v87, type metadata accessor for TTRRemindersListViewModel.SectionID);
          sub_21DAB095C(v34, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v81 = v226;
          if (v108)
          {
            goto LABEL_94;
          }

LABEL_88:
          v84 += v223;
          if (!--v83)
          {
            goto LABEL_89;
          }

          continue;
        }

        break;
      }

      sub_21DAB0A24(v34, v224, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v88 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
LABEL_49:
        sub_21DAB095C(v87, v88);
        goto LABEL_50;
      }

      sub_21DAB09BC(&v34[v85], v82, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D1B2ABC();
      v93 = v82;
      if ((sub_21DBFB63C() & 1) == 0)
      {
        goto LABEL_85;
      }

      v94 = *(v202 + 20);
      v95 = *(v203 + 48);
      v96 = v198;
      sub_21D0D3954(v87 + v94, v198, &unk_27CE5CD70);
      sub_21D0D3954(v82 + v94, v96 + v95, &unk_27CE5CD70);
      v97 = *v200;
      v98 = v201;
      if ((*v200)(v96, 1, v201) != 1)
      {
        sub_21D0D3954(v96, v199, &unk_27CE5CD70);
        if (v97(v96 + v95, 1, v98) == 1)
        {
          sub_21DAB095C(v199, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v100 = v96;
          goto LABEL_58;
        }

        v116 = v180;
        sub_21DAB09BC(v96 + v95, v180, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v117 = v199;
        v118 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v199, v116);
        sub_21DAB095C(v116, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21DAB095C(v117, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21D0CF7E0(v96, &unk_27CE5CD70);
        v93 = v215;
        v87 = v224;
        if (v118)
        {
          goto LABEL_92;
        }

LABEL_85:
        v82 = v93;
        sub_21DAB095C(v93, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        sub_21DAB095C(v87, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_86:
        sub_21DAB095C(v34, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_87:
        v81 = v226;
        goto LABEL_88;
      }

      v99 = v97(v96 + v95, 1, v98) == 1;
      v100 = v96;
      if (!v99)
      {
LABEL_58:
        sub_21D0CF7E0(v100, &qword_27CE58388);
        v93 = v215;
        v87 = v224;
        goto LABEL_85;
      }

      sub_21D0CF7E0(v96, &unk_27CE5CD70);
      v93 = v215;
      v87 = v224;
LABEL_92:
      sub_21DAB095C(v93, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21DAB095C(v87, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_93:
      sub_21DAB095C(v34, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v81 = v226;
LABEL_94:
      v120 = v217;
      v121 = *(*v217 + 88);
      swift_beginAccess();
      v122 = v195;
      sub_21D0D3954(v120 + v121, v195, &qword_27CE65F20);
      v123 = v194;
      v196(v81, v122);
      sub_21D0CF7E0(v122, &qword_27CE65F20);
      v124 = (*v191)(v123, 1, v193);
      v125 = v216;
      if (v124 == 1)
      {
        sub_21DAB095C(v81, type metadata accessor for TTRRemindersListViewModel.ItemID);

        result = sub_21D0CF7E0(v123, &qword_27CE65F20);
        goto LABEL_6;
      }

      sub_21DAB09BC(v123, v192, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
      v126 = v182;
      if (v183)
      {
        goto LABEL_96;
      }

      if (!*(v125 + 16) || (sub_21DBFC7DC(), TTRRemindersListViewModel.ItemID.hash(into:)(), v128 = sub_21DBFC82C(), v129 = -1 << *(v125 + 32), v130 = v128 & ~v129, ((*(v126 + ((v130 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v130) & 1) == 0))
      {
        v127 = 0;
        goto LABEL_168;
      }

      v210 = ~v129;
      v223 = *(v213 + 72);
      v131 = v211;
      while (2)
      {
        sub_21DAB0A24(*(v125 + 48) + v223 * v130, v131, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v132 = *(v225 + 48);
        v133 = v131;
        v134 = v214;
        sub_21DAB0A24(v133, v214, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v135 = v134;
        sub_21DAB0A24(v226, v134 + v132, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v136 = swift_getEnumCaseMultiPayload();
        if (v136 > 1)
        {
          if (v136 == 2)
          {
            v140 = v134;
            v141 = v185;
            sub_21DAB0A24(v140, v185, type metadata accessor for TTRRemindersListViewModel.ItemID);
            v142 = *v141;
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v143 = *(v135 + v132);
              sub_21D1B2ABC();
              v144 = v135;
              v145 = sub_21DBFB63C();

              if (v145)
              {
                goto LABEL_173;
              }

              goto LABEL_163;
            }

LABEL_101:
            sub_21D0CF7E0(v135, &qword_27CE58AD0);
            goto LABEL_102;
          }

          sub_21DAB0A24(v134, v190, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload() != 3)
          {
            goto LABEL_101;
          }

          v155 = *v190;
          if (v155 > 2)
          {
            if (v155 == 3)
            {
              v158 = 0xD00000000000001FLL;
              v164 = &v220;
            }

            else
            {
              if (v155 == 4)
              {
                v159 = 0xE700000000000000;
                v158 = 0x6D657449706974;
                goto LABEL_142;
              }

              v158 = 0xD00000000000001DLL;
              v164 = &v221;
            }

            v159 = *(v164 - 32);
          }

          else
          {
            v156 = 0xD000000000000012;
            if (v155 == 1)
            {
              v156 = 0x7367617468736168;
            }

            v157 = 0xEC0000006D657449;
            if (v155 != 1)
            {
              v157 = v207;
            }

            if (*v190)
            {
              v158 = v156;
            }

            else
            {
              v158 = 0x6574656C706D6F63;
            }

            if (*v190)
            {
              v159 = v157;
            }

            else
            {
              v159 = 0xED00006D65744964;
            }
          }

LABEL_142:
          v165 = *(v214 + v132);
          if (v165 <= 2)
          {
            if (*(v214 + v132))
            {
              if (v165 == 1)
              {
                v166 = 0x7367617468736168;
              }

              else
              {
                v166 = 0xD000000000000012;
              }

              if (v165 == 1)
              {
                v167 = 0xEC0000006D657449;
              }

              else
              {
                v167 = v207;
              }

              if (v158 != v166)
              {
                goto LABEL_162;
              }

LABEL_161:
              if (v159 == v167)
              {

                goto LABEL_172;
              }
            }

            else
            {
              v167 = 0xED00006D65744964;
              if (v158 == 0x6574656C706D6F63)
              {
                goto LABEL_161;
              }
            }

LABEL_162:
            v170 = sub_21DBFC64C();

            v144 = v214;
            if (v170)
            {
              goto LABEL_173;
            }

LABEL_163:
            v171 = v144;
LABEL_166:
            sub_21DAB095C(v171, type metadata accessor for TTRRemindersListViewModel.ItemID);
            goto LABEL_102;
          }

          if (v165 == 3)
          {
            v168 = 0xD00000000000001FLL;
            v169 = &v220;
          }

          else
          {
            if (v165 == 4)
            {
              v167 = 0xE700000000000000;
              if (v158 == 0x6D657449706974)
              {
                goto LABEL_161;
              }

              goto LABEL_162;
            }

            v168 = 0xD00000000000001DLL;
            v169 = &v221;
          }

          v167 = *(v169 - 32);
          if (v158 == v168)
          {
            goto LABEL_161;
          }

          goto LABEL_162;
        }

        if (!v136)
        {
          v137 = v134;
          v138 = v184;
          sub_21DAB0A24(v137, v184, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload())
          {
            v139 = type metadata accessor for TTRRemindersListViewModel.SectionID;
            goto LABEL_130;
          }

          v160 = v135 + v132;
          v161 = v179;
          sub_21DAB09BC(v160, v179, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v162 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v138, v161);
          sub_21DAB095C(v161, type metadata accessor for TTRRemindersListViewModel.SectionID);
          sub_21DAB095C(v138, type metadata accessor for TTRRemindersListViewModel.SectionID);
          sub_21DAB095C(v135, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (v162)
          {
            goto LABEL_174;
          }

LABEL_102:
          v131 = v211;
          sub_21DAB095C(v211, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v130 = (v130 + 1) & v210;
          v125 = v216;
          if (((*(v126 + ((v130 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v130) & 1) == 0)
          {
            v127 = 0;
            goto LABEL_168;
          }

          continue;
        }

        break;
      }

      v146 = v134;
      v138 = v186;
      sub_21DAB0A24(v146, v186, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v139 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
LABEL_130:
        sub_21DAB095C(v138, v139);
        goto LABEL_101;
      }

      v147 = v181;
      sub_21DAB09BC(v135 + v132, v181, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D1B2ABC();
      v148 = v138;
      if ((sub_21DBFB63C() & 1) == 0)
      {
        goto LABEL_165;
      }

      v149 = *(v202 + 20);
      v150 = *(v203 + 48);
      v151 = v176;
      sub_21D0D3954(v138 + v149, v176, &unk_27CE5CD70);
      v178 = v150;
      sub_21D0D3954(v147 + v149, v151 + v150, &unk_27CE5CD70);
      v152 = *v200;
      v153 = v201;
      if ((*v200)(v151, 1, v201) != 1)
      {
        sub_21D0D3954(v151, v177, &unk_27CE5CD70);
        v163 = v178;
        if (v152(v151 + v178, 1, v153) == 1)
        {
          sub_21DAB095C(v177, type metadata accessor for TTRRemindersListViewModel.SectionID);
          v154 = v151;
          goto LABEL_138;
        }

        v172 = v180;
        sub_21DAB09BC(v151 + v163, v180, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v173 = v177;
        v174 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v177, v172);
        sub_21DAB095C(v172, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21DAB095C(v173, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21D0CF7E0(v151, &unk_27CE5CD70);
        v147 = v181;
        v148 = v186;
        if (v174)
        {
          goto LABEL_171;
        }

LABEL_165:
        sub_21DAB095C(v147, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        sub_21DAB095C(v148, type metadata accessor for TTRRemindersListViewModel.ReminderID);
        v171 = v214;
        goto LABEL_166;
      }

      v99 = v152(v151 + v178, 1, v153) == 1;
      v154 = v151;
      if (!v99)
      {
LABEL_138:
        sub_21D0CF7E0(v154, &qword_27CE58388);
        v147 = v181;
        v148 = v186;
        goto LABEL_165;
      }

      sub_21D0CF7E0(v151, &unk_27CE5CD70);
      v147 = v181;
      v148 = v186;
LABEL_171:
      sub_21DAB095C(v147, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21DAB095C(v148, type metadata accessor for TTRRemindersListViewModel.ReminderID);
LABEL_172:
      v144 = v214;
LABEL_173:
      sub_21DAB095C(v144, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_174:
      sub_21DAB095C(v211, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_96:
      v127 = 1;
LABEL_168:
      v175 = v192;
      sub_21DAEC1D4(v192, v127);

      sub_21DAB095C(v175, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
      result = sub_21DAB095C(v226, type metadata accessor for TTRRemindersListViewModel.ItemID);
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21DAB08EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DAB095C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21DAB09BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DAB0A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DAB0A8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DAB0AFC(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  swift_beginAccess();
  v5 = v1[4];

  v6 = v5;
  v4(v3, a1, v6);

  MEMORY[0x28223BE20](v7);
  sub_21DBF5EFC();

  sub_21DBF814C();
}

uint64_t sub_21DAB0D84()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65F38);
  v1 = __swift_project_value_buffer(v0, qword_27CE65F38);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21DAB0E4C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F50);
  sub_21DBFA1AC();
  MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
  sub_21DBF625C();
}

uint64_t sub_21DAB0F74@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = a1 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = result;
  if (result)
  {
    v7 = *(v4 + 8);
    swift_getObjectType();
    v8 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
    swift_beginAccess();
    v9 = *(v7 + 16);
    v10 = *(a1 + v8);
    v9();

    result = swift_unknownObjectRelease();
  }

  *a2 = v6 == 0;
  return result;
}

uint64_t sub_21DAB10AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v3 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F50);
  sub_21DBFA1AC();
  MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
  sub_21DBF625C();
  swift_unknownObjectRelease();
}

void (*sub_21DAB1204(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21DAB12A4;
}

void sub_21DAB12A4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    *v3 = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F50);
    sub_21DBFA1AC();
    MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
    sub_21DBFAEDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();
  }

  free(v3);
}

void sub_21DAB1404(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_21DAB1464()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_21DAB14B8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_21DAB1518()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t TTRShowTemplateDataModelSource.__allocating_init(store:template:listRepresentation:countCompleted:sortingStyle:canChangeSortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  LOBYTE(a4) = *a4;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation) = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_dataViewMonitor) = 0;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_store) = a1;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template) = a2;
  swift_beginAccess();
  *(v12 + v13) = a3;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_countCompleted) = a4;
  *(v12 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  v14 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v15 = sub_21DBF70DC();
  (*(*(v15 - 8) + 32))(v12 + v14, a5, v15);
  *(v12 + 16) = a6;
  return v12;
}

uint64_t TTRShowTemplateDataModelSource.init(store:template:listRepresentation:countCompleted:sortingStyle:canChangeSortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  v12 = *a4;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_dataViewMonitor) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_store) = a1;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template) = a2;
  swift_beginAccess();
  *(v6 + v13) = a3;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_countCompleted) = v12;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  v14 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v15 = sub_21DBF70DC();
  (*(*(v15 - 8) + 32))(v6 + v14, a5, v15);
  *(v6 + 16) = a6;
  return v6;
}

uint64_t sub_21DAB1808(void *a1)
{
  v2 = sub_21DBF773C();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF71EC();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF714C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F68);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F70);
  v14 = *(v13 - 8);
  *&v15 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v17 = &v23 - v16;
  v18 = [a1 objectID];
  (*(v7 + 104))(v9, *MEMORY[0x277D45450], v6);
  sub_21DBF6CDC();
  (*(v7 + 8))(v9, v6);

  (*(v14 + 56))(v12, 0, 1, v13);
  (*(v14 + 32))(v17, v12, v13);
  v19 = v24;
  sub_21DBF76DC();
  v20 = v27;
  sub_21DBF71DC();
  (*(v25 + 8))(v19, v26);
  v21 = sub_21DBF718C();
  (*(v28 + 8))(v20, v29);
  (*(v14 + 8))(v17, v13);
  return v21;
}

uint64_t sub_21DAB1C40@<X0>(_OWORD *a1@<X8>)
{
  v75 = a1;
  v63 = sub_21DBF773C();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58560);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v57 - v4;
  v5 = sub_21DBF71EC();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = &v57 - v8;
  v9 = sub_21DBFB1AC();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF714C();
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF70DC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F68);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F70);
  v76 = *(v21 - 8);
  v77 = v21;
  MEMORY[0x28223BE20](v21);
  v71 = &v57 - v22;
  v23 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
  swift_beginAccess();
  v24 = [*(v1 + v23) objectID];
  v25 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v26 = *(v15 + 16);
  v64 = v1;
  v27 = v1 + v25;
  v28 = v72;
  v29 = v73;
  v74 = v14;
  v26(v17, v27, v14);
  (*(v28 + 104))(v13, *MEMORY[0x277D45450], v29);
  sub_21DBF6CDC();
  v58 = v23;

  (*(v28 + 8))(v13, v29);
  (*(v15 + 8))(v17, v74);
  v31 = v76;
  v30 = v77;
  (*(v76 + 56))(v20, 0, 1, v77);
  v32 = v71;
  (*(v31 + 32))(v71, v20, v30);
  v33 = v65;
  v34 = sub_21DBF76DC();
  v35 = v70;
  MEMORY[0x223D3F980](v34);
  v36 = v69;
  v37 = *(v68 + 8);
  v37(v33, v69);
  v38 = v66;
  v39 = v67;
  if ((*(v66 + 48))(v35, 1, v67) == 1)
  {
    (*(v31 + 8))(v32, v30);
    result = sub_21D0CF7E0(v35, &qword_27CE58560);
    v41 = v75;
    v75[2] = 0u;
    v41[3] = 0u;
    *v41 = 0u;
    v41[1] = 0u;
  }

  else
  {
    v42 = v59;
    (*(v38 + 32))(v59, v35, v39);
    v43 = v60;
    sub_21DBF76DC();
    v44 = v61;
    sub_21DBF71DC();
    v37(v43, v36);
    v45 = sub_21DBF718C();
    (*(v62 + 8))(v44, v63);
    if (MEMORY[0x277D84F90] >> 62 && sub_21DBFBD7C())
    {
      sub_21D1CE198(MEMORY[0x277D84F90]);
      v46 = v56;
    }

    else
    {
      v46 = MEMORY[0x277D84FA0];
    }

    v47 = *(v64 + v58);
    v48 = v47;
    v49 = v42;
    v50 = sub_21DBFB18C();
    v51 = sub_21DBFB19C();
    v52 = sub_21DBFB17C();
    v54 = v53;
    (*(v38 + 8))(v49, v39);
    result = (*(v76 + 8))(v71, v77);
    v78 = 1;
    v55 = v75;
    *v75 = v45;
    *(v55 + 1) = v46;
    *(v55 + 2) = v47;
    *(v55 + 24) = 1;
    *(v55 + 4) = v50;
    *(v55 + 20) = v51;
    *(v55 + 6) = v52;
    *(v55 + 7) = v54;
  }

  return result;
}

void sub_21DAB242C(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = qword_27CE570C0;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE65F38);
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAEDC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21D0C9000, v8, v9, "TTRShowTemplateDataModelSource start synchronously", v10, 2u);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  v11 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
  swift_beginAccess();
  v12 = *(v2 + v11);
  LOBYTE(v11) = sub_21DAB2650(v12, v6);

  if ((v11 & 1) == 0)
  {
LABEL_8:
    if (qword_27CE570C0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_27CE65F38);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAEDC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21D0C9000, v14, v15, "TTRShowTemplateDataModelSource start asynchronously", v16, 2u);
      MEMORY[0x223D46520](v16, -1, -1);
    }

    v17 = 10;
    sub_21DAB4D4C(&v17);
  }
}

uint64_t sub_21DAB2650(void *a1, uint64_t a2)
{
  v228 = a2;
  v227 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88);
  MEMORY[0x28223BE20](v2 - 8);
  v210 = &v190 - v3;
  v207 = sub_21DBFB11C();
  v206 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v205 = &v190 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v203);
  v204 = &v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v6 - 8);
  v202 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3B8);
  MEMORY[0x28223BE20](v8 - 8);
  v199 = &v190 - v9;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8);
  MEMORY[0x28223BE20](v232);
  v226 = &v190 - v10;
  v216 = sub_21DBF76AC();
  v219 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v215 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v225 = &v190 - v13;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65FC8);
  MEMORY[0x28223BE20](v213);
  v212 = &v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v214 = &v190 - v16;
  v224 = sub_21DBF70DC();
  v222 = *(v224 - 1);
  MEMORY[0x28223BE20](v224);
  v223 = &v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0);
  v198 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v209 = &v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v201 = &v190 - v21;
  MEMORY[0x28223BE20](v22);
  v200 = &v190 - v23;
  MEMORY[0x28223BE20](v24);
  v197 = &v190 - v25;
  MEMORY[0x28223BE20](v26);
  v211 = &v190 - v27;
  MEMORY[0x28223BE20](v28);
  v218 = &v190 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v190 - v31;
  v33 = type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0);
  MEMORY[0x28223BE20](v33);
  v221 = &v190 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v190 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58560);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v190 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v190 - v42;
  v195 = sub_21DBF719C();
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v45 = &v190 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21DBF74FC();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v196 = &v190 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v51 = &v190 - v50;
  sub_21DBF72BC();
  v52 = sub_21DBF72DC();
  (*(*(v52 - 8) + 56))(v43, 0, 1, v52);
  MEMORY[0x223D3F930](MEMORY[0x277D84F90], v43, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  v53 = sub_21DBFB60C();
  v54 = sub_21DBFB1AC();
  (*(*(v54 - 8) + 56))(v40, 1, 1, v54);
  v193 = v45;
  v55 = v45;
  v56 = v37;
  MEMORY[0x223D3FC90](v55, v53, v40);
  v208 = v33;
  v57 = *(v33 + 20);
  v58 = *(v47 + 16);
  v220 = v51;
  v58(&v37[v57], v51, v46);
  v229 = v47;
  v59 = v225;
  v60 = *(v47 + 56);
  v231 = v46;
  v60(&v37[v57], 0, 1, v46);
  v61 = v227;
  *v56 = v227;
  v217 = v18;
  v62 = *(v18 + 48);
  sub_21DAB6934(v56, v32);
  *&v32[v62] = 0;
  v63 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v64 = v230;
  swift_beginAccess();
  v65 = v222;
  v66 = v223;
  v67 = v224;
  (v222)[2](v223, v64 + v63, v224);
  type metadata accessor for TTRShowTemplateMonitorableDataView(0);
  v68 = swift_allocObject();
  *(v68 + 16) = v61;
  v69 = v65;
  v70 = v221;
  v71 = v67;
  v72 = v32;
  v73 = v226;
  v69[4](v68 + OBJC_IVAR____TtC15RemindersUICore34TTRShowTemplateMonitorableDataView_sortingStyle, v66, v71);
  sub_21D0D3954(v72, v73, &qword_27CE5C1C0);
  swift_storeEnumTagMultiPayload();
  v74 = v61;
  v75 = TTRShowTemplateMonitorableDataView.fetchData(from:userInteractive:)(v70, v59, v73, 1);
  v192 = 0;
  v224 = v56;
  v222 = v74;
  v227 = v68;
  v223 = v72;
  sub_21D0CF7E0(v73, &qword_27CE5C1B8);
  v76 = v214;
  sub_21DAB6998(v70, v214);
  v77 = v217;
  *(v76 + *(v217 + 48)) = v75;
  v78 = v213;
  v79 = *(v219 + 32);
  v80 = v59;
  v81 = v216;
  v79(v76 + *(v213 + 48), v80, v216);
  v82 = v212;
  sub_21D0D3954(v76, v212, &qword_27CE65FC8);
  v83 = *(v77 + 48);
  v84 = *&v82[v83];
  v85 = *(v78 + 48);
  v86 = v218;
  sub_21DAB6998(v82, v218);
  *(v86 + v83) = v84;
  v87 = &v82[v85];
  v88 = v215;
  v79(v215, v87, v81);
  v89 = v211;
  sub_21D0D3954(v86, v211, &qword_27CE5C1C0);
  v90 = v219;
  if (!*&v89[*(v77 + 48)])
  {
    v143 = v81;
    sub_21DAB69FC(v89);
    v146 = v224;
    if (qword_27CE570C0 != -1)
    {
      swift_once();
    }

    v147 = sub_21DBF84BC();
    __swift_project_value_buffer(v147, qword_27CE65F38);
    v148 = sub_21DBF84AC();
    v149 = sub_21DBFAEBC();
    v150 = os_log_type_enabled(v148, v149);
    v151 = v223;
    v136 = v231;
    if (v150)
    {
      v152 = swift_slowAlloc();
      *v152 = 0;
      _os_log_impl(&dword_21D0C9000, v148, v149, "startSynchronously failed, missing initial fetch result token", v152, 2u);
      MEMORY[0x223D46520](v152, -1, -1);
    }

    sub_21D0CF7E0(v218, &qword_27CE5C1C0);
    sub_21D0CF7E0(v76, &qword_27CE65FC8);
    sub_21D0CF7E0(v151, &qword_27CE5C1C0);
    v145 = v146;
    goto LABEL_13;
  }

  v191 = *&v89[*(v77 + 48)];
  sub_21DAB69FC(v89);
  v91 = v197;
  sub_21D0D3954(v86, v197, &qword_27CE5C1C0);
  v92 = v217;
  v93 = *(v217 + 48);
  v94 = *(v91 + v93);
  v95 = v200;
  sub_21DAB6998(v91, v200);
  *(v95 + v93) = v94;
  v225 = sub_21D0D8CF0(0, &qword_280D1B900);

  v96 = sub_21DBFB12C();
  v212 = v96;
  sub_21DBF60DC();
  v221 = sub_21DBF60BC();
  v97 = sub_21DBF60AC();
  v211 = v97;
  v213 = *MEMORY[0x277D76648];
  v98 = v213;
  v226 = *MEMORY[0x277D76768];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3C0);
  v99 = swift_allocObject();
  v100 = *(*v99 + 104);
  v101 = *(v198 + 56);
  v101(v99 + v100, 1, 1, v92);
  v102 = (v99 + *(*v99 + 136));
  *v102 = 0;
  v102[1] = 0;
  *(v99 + *(*v99 + 112)) = v96;
  *(v99 + *(*v99 + 120)) = v97;
  sub_21D0D3954(v95, v99 + *(*v99 + 96), &qword_27CE5C1C0);
  swift_storeEnumTagMultiPayload();
  v103 = v199;
  sub_21D0D3954(v95, v199, &qword_27CE5C1C0);
  v101(v103, 0, 1, v92);
  swift_beginAccess();
  v104 = v98;
  v105 = v226;
  v212 = v212;
  v106 = v211;
  sub_21DAB8200(v103, v99 + v100);
  swift_endAccess();
  sub_21DBF9D4C();
  v236[6] = MEMORY[0x277D84F90];
  sub_21D66282C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
  sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
  sub_21DBFBCBC();
  (*(v206 + 104))(v205, *MEMORY[0x277D85260], v207);
  v107 = sub_21DBFB14C();
  v108 = v95;
  v109 = v95;
  v110 = v201;
  sub_21D0D3954(v108, v201, &qword_27CE5C1C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3C8);
  v111 = swift_allocObject();
  *(v111 + 72) = 0u;
  *(v111 + 88) = 0u;
  *(v111 + 104) = 0;
  *(v111 + 108) = -1;
  *(v111 + 120) = 0;
  *(v111 + 128) = 1;
  v112 = *(*v111 + 216);
  v113 = swift_slowAlloc();
  *(v111 + v112) = v113;
  *(v111 + *(*v111 + 224)) = 0;
  v114 = v221;
  *(v111 + 16) = v107;
  *(v111 + 24) = v114;
  v115 = v227;
  *(v111 + 32) = v106;
  *(v111 + 40) = v115;
  sub_21D0D3954(v110, v111 + *(*v111 + 208), &qword_27CE5C1C0);
  swift_storeEnumTagMultiPayload();
  *v113 = 0;

  sub_21D0CF7E0(v110, &qword_27CE5C1C0);
  sub_21D0CF7E0(v109, &qword_27CE5C1C0);
  v116 = v226;
  *(v111 + 48) = v213;
  *(v111 + 56) = v116;
  *(v111 + 64) = 1;
  *(v99 + *(*v99 + 128)) = v111;
  v117 = swift_allocObject();
  swift_weakInit();
  v118 = swift_allocObject();
  v119 = v230;
  swift_weakInit();
  v120 = swift_allocObject();
  *(v120 + 16) = v117;
  *(v120 + 24) = v118;
  v121 = *(v111 + 72);
  *(v111 + 72) = sub_21D5046D0;
  *(v111 + 80) = v120;

  sub_21D0D0E88(v121);

  v122 = *(v99 + *(*v99 + 128));
  v123 = swift_allocObject();
  swift_weakInit();
  v124 = *(v122 + 88);
  *(v122 + 88) = sub_21D5046D8;
  *(v122 + 96) = v123;

  v125 = v124;
  v126 = v119;
  sub_21D0D0E88(v125);

  v127 = swift_allocObject();
  swift_weakInit();
  v128 = swift_allocObject();
  swift_weakInit();
  v129 = swift_allocObject();
  *(v129 + 16) = v127;
  *(v129 + 24) = v128;
  v130 = (v99 + *(*v99 + 136));
  v131 = *v130;
  *v130 = sub_21D5046E0;
  v130[1] = v129;

  sub_21D0D0E88(v131);

  v132 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_dataViewMonitor;
  swift_beginAccess();
  *(v119 + v132) = v99;

  v133 = v209;
  sub_21D0D3954(v218, v209, &qword_27CE5C1C0);

  v134 = v210;
  sub_21D0D3954(v133 + *(v208 + 20), v210, &qword_27CE65F88);
  sub_21DAB69FC(v133);
  v135 = v229;
  v136 = v231;
  if ((*(v229 + 48))(v134, 1, v231) == 1)
  {
    sub_21D0CF7E0(v134, &qword_27CE65F88);
    v137 = v224;
    v138 = v223;
    if (qword_27CE570C0 != -1)
    {
      swift_once();
    }

    v139 = sub_21DBF84BC();
    __swift_project_value_buffer(v139, qword_27CE65F38);
    v140 = sub_21DBF84AC();
    v141 = sub_21DBFAEBC();
    v142 = os_log_type_enabled(v140, v141);
    v143 = v216;
    v90 = v219;
    v88 = v215;
    if (v142)
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&dword_21D0C9000, v140, v141, "TTRShowTemplateMonitorableDataView filed to unwrap dateViewTemplateModel", v144, 2u);
      MEMORY[0x223D46520](v144, -1, -1);
    }

    sub_21D0CF7E0(v218, &qword_27CE5C1C0);
    sub_21D0CF7E0(v214, &qword_27CE65FC8);
    sub_21D0CF7E0(v138, &qword_27CE5C1C0);
    v145 = v137;
LABEL_13:
    sub_21DAB69FC(v145);
    (*(v229 + 8))(v220, v136);
    (*(v90 + 8))(v88, v143);
    return 0;
  }

  v154 = v196;
  (*(v135 + 32))(v196, v134, v136);
  v155 = v126 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v157 = *(v155 + 1), ObjectType = swift_getObjectType(), v159 = (*(*(v157 + 8) + 8))(ObjectType), v161 = v160, Strong = swift_unknownObjectRelease(), (v161 & 1) != 0))
  {
    v159 = 30;
  }

  v162 = v194;
  v163 = v193;
  v164 = v159 * 1.5;
  v165 = v195;
  if (COERCE__INT64(fabs(v164)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v164 <= -9.22337204e18)
  {
    goto LABEL_30;
  }

  if (v164 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v166 = v164;
  MEMORY[0x223D3FCA0](Strong);
  v159 = sub_21DA68CBC(v166);
  (*(v162 + 8))(v163, v165);
  if (qword_27CE570C0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v167 = sub_21DBF84BC();
  __swift_project_value_buffer(v167, qword_27CE65F38);
  sub_21DBF8E0C();
  v168 = sub_21DBF84AC();
  v169 = sub_21DBFAEAC();

  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v236[0] = v171;
    *v170 = 136315138;
    if (v159 >> 62)
    {
      v172 = sub_21DBFBD7C();
    }

    else
    {
      v172 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v235 = v172;
    sub_21D679D9C();
    v173 = sub_21DBFBC0C();
    v175 = sub_21D0CDFB4(v173, v174, v236);

    *(v170 + 4) = v175;
    _os_log_impl(&dword_21D0C9000, v168, v169, "Fetching initial set of reminders {count: %s}", v170, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v171);
    MEMORY[0x223D46520](v171, -1, -1);
    MEMORY[0x223D46520](v170, -1, -1);

    v126 = v230;
  }

  else
  {
  }

  v176 = [v222 store];
  v177 = sub_21DBFB12C();
  v178 = swift_allocObject();
  *(v178 + 16) = 0;
  v179 = v191;
  v180 = sub_21D87E81C(v176, sub_21D554248, v178, v179, v177);
  swift_beginAccess();
  v180[3] = &protocol witness table for TTRShowTemplateDataModelSource;
  swift_unknownObjectWeakAssign();
  sub_21DAB0AFC(v159);

  v181 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
  swift_beginAccess();
  *(v126 + v181) = v180;

  if (*(v126 + v132))
  {

    sub_21D400B64(1);
  }

  v233 = 0;
  v234 = 0xE000000000000000;
  sub_21DBFBEEC();
  v233 = *v126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F50);
  v182 = sub_21DBFA1AC();
  v184 = v183;

  v233 = v182;
  v234 = v184;
  MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
  v185 = sub_21DBFAEDC();
  MEMORY[0x28223BE20](v185);
  v186 = v222;
  *(&v190 - 6) = v187;
  *(&v190 - 5) = v186;
  *(&v190 - 4) = v228;
  *(&v190 - 3) = v154;
  v188 = v215;
  *(&v190 - 2) = v215;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
  sub_21DBF625C();

  sub_21D0CF7E0(v218, &qword_27CE5C1C0);
  sub_21D0CF7E0(v214, &qword_27CE65FC8);
  sub_21D0CF7E0(v223, &qword_27CE5C1C0);
  sub_21DAB69FC(v224);
  v189 = *(v229 + 8);
  v189(v220, v136);
  v189(v154, v136);
  (*(v219 + 8))(v188, v216);
  return 1;
}

uint64_t TTRShowTemplateMonitorableDataView.__allocating_init(template:sortingStyle:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = OBJC_IVAR____TtC15RemindersUICore34TTRShowTemplateMonitorableDataView_sortingStyle;
  v6 = sub_21DBF70DC();
  (*(*(v6 - 8) + 32))(v4 + v5, a2, v6);
  return v4;
}

id TTRShowTemplateMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v60) = a4;
  v50 = a1;
  v51 = a2;
  v62[1] = *MEMORY[0x277D85DE8];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F80);
  MEMORY[0x28223BE20](v48);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v44 - v6;
  v45 = type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0);
  MEMORY[0x28223BE20](v45);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_21DBF714C();
  v8 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21DBF70DC();
  v11 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_21DBF763C();
  v14 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EC70);
  v52 = *(v17 - 8);
  v53 = v17;
  MEMORY[0x28223BE20](v17);
  v59 = &v44 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3B8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v44 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8);
  sub_21DBFC83C();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
    sub_21D0CF7E0(v21, &qword_27CE5D3B8);
    v23 = 0;
  }

  else
  {
    v23 = *&v21[*(v22 + 48)];
    sub_21DAB69FC(v21);
  }

  v24 = *(v61 + 16);
  v25 = [v24 store];
  v56 = v25;
  if (v60)
  {
    v26 = v25;
  }

  else
  {
    v26 = [v25 nonUserInteractiveStore];
  }

  v60 = v26;
  v27 = [v24 objectID];
  (*(v11 + 16))(v13, v61 + OBJC_IVAR____TtC15RemindersUICore34TTRShowTemplateMonitorableDataView_sortingStyle, v54);
  (*(v8 + 104))(v10, *MEMORY[0x277D45450], v57);
  sub_21DBF762C();
  v29 = v59;
  v28 = v60;
  v30 = v58;
  sub_21DBF6CEC();
  if (v30)
  {
    (*(v14 + 8))(v16, v55);
  }

  else
  {
    (*(v14 + 8))(v16, v55);

    v31 = [v24 objectID];
    v62[0] = 0;
    v32 = [v28 fetchTemplateWithObjectID:v31 error:v62];

    if (v32)
    {
      v33 = *(v45 + 20);
      v34 = v62[0];
      v35 = v47;
      v36 = v53;
      sub_21DBF76DC();
      v37 = sub_21DBF74FC();
      (*(*(v37 - 8) + 56))(&v35[v33], 0, 1, v37);
      *v35 = v32;
      v38 = v48;
      v39 = *(v48 + 48);
      v40 = v29;
      v41 = v49;
      sub_21DAB6934(v35, v49);
      *(v41 + v39) = sub_21DBF76BC();
      v42 = v46;
      sub_21D0D3954(v41, v46, &qword_27CE65F80);
      v28 = *(v42 + *(v38 + 48));
      sub_21DAB6998(v42, v50);
      sub_21DBF76CC();

      sub_21D0CF7E0(v41, &qword_27CE65F80);
      sub_21DAB69FC(v35);
      (*(v52 + 8))(v40, v36);
    }

    else
    {
      v28 = v62[0];
      sub_21DBF52DC();

      swift_willThrow();
      (*(v52 + 8))(v29, v53);
    }
  }

  return v28;
}

uint64_t sub_21DAB4C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, BOOL *a6@<X8>)
{
  v11 = a1 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v13 = result;
  if (result)
  {
    v14 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 24))(a2, a3, a4, a5, ObjectType, v14);
    result = swift_unknownObjectRelease();
  }

  *a6 = v13 == 0;
  return result;
}

uint64_t sub_21DAB4D4C(unsigned __int8 *a1)
{
  v2 = v1;
  v43 = sub_21DBF70DC();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3B8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = *a1;
  v16 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v17 = *(v2 + v16);
  v41 = v15;
  if (v17)
  {
    v18 = v2 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      v44[0] = v15;
      (*(*(v19 + 8) + 16))(v44, ObjectType);
      swift_unknownObjectRelease();
    }

    v21 = *(v2 + v16);
    if (v21)
    {
      v22 = *(*v21 + 104);
      swift_beginAccess();
      sub_21D0D3954(v21 + v22, v14, &qword_27CE5D3B8);
      if ((*(v7 + 48))(v14, 1, v6) != 1)
      {
        v23 = *&v14[*(v6 + 48)];
        sub_21DAB69FC(v14);
        goto LABEL_8;
      }

      sub_21D0CF7E0(v14, &qword_27CE5D3B8);
    }
  }

  v23 = 0;
LABEL_8:
  v24 = *(v6 + 48);
  v25 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
  swift_beginAccess();
  v26 = *(v2 + v25);
  v27 = v6;
  v28 = *(type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0) + 20);
  v29 = sub_21DBF74FC();
  (*(*(v29 - 8) + 56))(&v11[v28], 1, 1, v29);
  *v11 = v26;
  *&v11[v24] = v23;
  v30 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v31 = v40;
  v32 = v43;
  (*(v4 + 16))(v40, v2 + v30, v43);
  type metadata accessor for TTRShowTemplateMonitorableDataView(0);
  v33 = swift_allocObject();
  *(v33 + 16) = v26;
  (*(v4 + 32))(v33 + OBJC_IVAR____TtC15RemindersUICore34TTRShowTemplateMonitorableDataView_sortingStyle, v31, v32);
  v34 = *(v27 + 48);
  v35 = v42;
  sub_21DAB6934(v11, v42);
  *(v35 + v34) = v23;
  swift_beginAccess();
  v36 = v23;
  v37 = v26;
  sub_21D50126C((v2 + v16), v35, v33, v2, v41);
  sub_21D0CF7E0(v35, &qword_27CE5C1C0);
  swift_endAccess();

  return sub_21D0CF7E0(v11, &qword_27CE5C1C0);
}

uint64_t sub_21DAB5204()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate);
}

uint64_t TTRShowTemplateDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate);

  return v0;
}

uint64_t TTRShowTemplateDataModelSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;

  sub_21D157444(v0 + v3);

  return swift_deallocClassInstance();
}

uint64_t sub_21DAB545C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v9 = result;
  if (result)
  {
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 24))(0, 0, a2, a3, ObjectType, v10);
    result = swift_unknownObjectRelease();
  }

  *a4 = v9 == 0;
  return result;
}

uint64_t TTRShowTemplateDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowTemplateDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v87 = a4;
  v86 = sub_21DBF719C();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v83 - v11;
  v90 = sub_21DBF74FC();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0);
  MEMORY[0x28223BE20](v14);
  v91 = (&v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0);
  MEMORY[0x28223BE20](v16);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v20 = a2;
  v22 = &v83 - v21;
  sub_21DAB6934(v20, &v83 - v21);
  *&v22[*(v16 + 48)] = a3;
  v23 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v24 = *(v4 + v23);
  if (!v24 || v24 != a1)
  {
    v25 = a3;
    return sub_21D0CF7E0(v22, &qword_27CE5C1C0);
  }

  sub_21D0D3954(v22, v18, &qword_27CE5C1C0);
  v27 = *&v18[*(v16 + 48)];
  v28 = a3;

  v29 = v91;
  sub_21DAB6998(v18, v91);
  sub_21D0D3954(v29 + *(v14 + 20), v12, &qword_27CE65F88);
  v30 = v89;
  v31 = v90;
  if ((*(v89 + 48))(v12, 1, v90) == 1)
  {
    sub_21D0CF7E0(v12, &qword_27CE65F88);
    if (qword_27CE570C0 != -1)
    {
      swift_once();
    }

    v32 = sub_21DBF84BC();
    __swift_project_value_buffer(v32, qword_27CE65F38);
    v33 = sub_21DBF84AC();
    v34 = sub_21DBFAECC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_21D0C9000, v33, v34, "TTRShowTemplateDataModelSource: unexpected nil listModel in didFetch callback", v35, 2u);
      MEMORY[0x223D46520](v35, -1, -1);
    }

    sub_21DAB69FC(v91);
    return sub_21D0CF7E0(v22, &qword_27CE5C1C0);
  }

  v84 = v4;
  (*(v30 + 32))(v88, v12, v31);
  v36 = sub_21DBF6E3C();
  sub_21D4F5F28(v36);
  v38 = v37;

  if (a3)
  {
    v39 = v22;
    v40 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    v41 = v84;
    swift_beginAccess();
    if (*(v41 + v40))
    {
      v42 = v28;

      sub_21D4F9F64(v42, v38);
    }

    else
    {
      v44 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
      swift_beginAccess();
      v45 = *(v41 + v44);
      v46 = v28;
      v47 = [v45 store];
      sub_21D0D8CF0(0, &qword_280D1B900);
      v48 = sub_21DBFB12C();
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      v50 = sub_21D87E81C(v47, sub_21D1947D8, v49, v46, v48);
      *(v41 + v40) = v50;

      swift_beginAccess();
      v50[3] = &protocol witness table for TTRShowTemplateDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    v22 = v39;
  }

  else
  {
  }

  MEMORY[0x223D3FCA0](v43);
  v51 = sub_21DBF716C();
  (*(v85 + 8))(v9, v86);
  v83 = v22;
  if (!(v51 >> 62))
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_19;
    }

LABEL_35:

LABEL_37:
    v69 = v88;
    v70 = sub_21DBF6C2C();
    v71 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation;
    v72 = v84;
    swift_beginAccess();
    v73 = *(v72 + v71);
    *(v72 + v71) = v70;

    v74 = v91;
    v75 = *v91;
    v76 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
    swift_beginAccess();
    v77 = *(v72 + v76);
    *(v72 + v76) = v75;
    v78 = v75;

    v92 = 0;
    v93 = 0xE000000000000000;
    sub_21DBFBEEC();
    v92 = *v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F50);
    v79 = sub_21DBFA1AC();
    v81 = v80;

    v92 = v79;
    v93 = v81;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v82 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v82);
    *(&v83 - 4) = v72;
    *(&v83 - 3) = v69;
    *(&v83 - 2) = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();

    sub_21DAB69FC(v74);
    (*(v89 + 8))(v69, v90);
    v22 = v83;
    return sub_21D0CF7E0(v22, &qword_27CE5C1C0);
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_35;
  }

  v52 = sub_21DBFBD7C();
  if (!v52)
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_28:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
      v62 = sub_21DBFC40C();
      goto LABEL_33;
    }

LABEL_32:
    v62 = MEMORY[0x277D84F98];
LABEL_33:
    v63 = v84;
    v94[0] = v62;
    v64 = sub_21DBF8E0C();
    sub_21D1931C0(v64, 1, v94);

    v65 = v94[0];
    v66 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v63 + v66))
    {

      sub_21D188810(v65);
      v68 = v67;

      TTRBatchFetchManager<A>.override(objects:)(v68);
    }

    else
    {
    }

    goto LABEL_37;
  }

LABEL_19:
  v94[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v52 & ~(v52 >> 63), 0);
  if ((v52 & 0x8000000000000000) == 0)
  {
    v53 = 0;
    v54 = v94[0];
    do
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x223D44740](v53, v51);
      }

      else
      {
        v55 = *(v51 + 8 * v53 + 32);
      }

      v56 = v55;
      v57 = [v55 objectID];
      v94[0] = v54;
      v59 = *(v54 + 16);
      v58 = *(v54 + 24);
      if (v59 >= v58 >> 1)
      {
        v61 = v57;
        sub_21D18E6B8((v58 > 1), v59 + 1, 1);
        v57 = v61;
        v54 = v94[0];
      }

      ++v53;
      *(v54 + 16) = v59 + 1;
      v60 = v54 + 16 * v59;
      *(v60 + 32) = v57;
      *(v60 + 40) = v56;
    }

    while (v52 != v53);

    if (*(v54 + 16))
    {
      goto LABEL_28;
    }

    goto LABEL_32;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21DAB6010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v8 = a1 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v10 = result;
  if (result)
  {
    v23 = a4;
    v11 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v12 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
    swift_beginAccess();
    v13 = *(a1 + v12);
    v14 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_listRepresentation;
    swift_beginAccess();
    v15 = *(a1 + v14);
    v16 = *(v11 + 24);
    v17 = v15;
    v18 = v13;
    v19 = a3;
    v20 = v18;
    v21 = v11;
    a4 = v23;
    v16(v13, v15, a2, v19, ObjectType, v21);

    result = swift_unknownObjectRelease();
  }

  *a4 = v10 == 0;
  return result;
}

uint64_t sub_21DAB6160()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DAB61DC(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0) + 48));

  return TTRShowTemplateDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowTemplateDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F50);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
  sub_21DBF625C();
}

uint64_t sub_21DAB6380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void TTRShowTemplateDataModelSource.update(error:)(void *a1)
{
  v2 = v1;
  if (qword_27CE570C0 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE65F38);
  v5 = a1;

  oslog = sub_21DBF84AC();
  v6 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    swift_getErrorValue();
    v9 = sub_21DBFC75C();
    v11 = sub_21D0CDFB4(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
    swift_beginAccess();
    v13 = *(v2 + v12);
    v14 = [v13 description];
    v15 = sub_21DBFA16C();
    v17 = v16;

    MEMORY[0x223D42AA0](v15, v17);

    v18 = sub_21D0CDFB4(0x6574616C706D6574, 0xEA0000000000203ALL, &v20);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_21D0C9000, oslog, v6, "TTRShowTemplateDataModelSource update error {error: %s, dataModelSource: %s}", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v8, -1, -1);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRShowTemplateMonitorableDataView.init(template:sortingStyle:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC15RemindersUICore34TTRShowTemplateMonitorableDataView_sortingStyle;
  v5 = sub_21DBF70DC();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t TTRShowTemplateMonitorableDataView.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore34TTRShowTemplateMonitorableDataView_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRShowTemplateMonitorableDataView.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore34TTRShowTemplateMonitorableDataView_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21DAB6838(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = TTRShowTemplateMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

id sub_21DAB6894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v12 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *(a2 + 16) = v4;
  *(a2 + 24) = v12;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *a2 = v2;
  *(a2 + 8) = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v8 = v2;
  v9 = v3;
  v10 = v4;

  return v12;
}

uint64_t sub_21DAB6934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DAB6998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DAB69FC(uint64_t a1)
{
  v2 = type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DAB6A58(uint64_t a1)
{
  v42 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v39 - v6;
  v47 = sub_21DBF74FC();
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3B8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - v12;
  v14 = type metadata accessor for TTRShowTemplateMonitorableDataView.TemplateModel(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v48 = &v39 - v18;
  v19 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_dataViewMonitor;
  result = swift_beginAccess();
  v44 = v1;
  v21 = *(v1 + v19);
  if (v21)
  {
    v41 = v3;
    v40 = v2;
    v22 = *(*v21 + 96);
    swift_beginAccess();
    sub_21D0D3954(v21 + v22, v10, &qword_27CE5C1B8);
    sub_21DBFC83C();
    sub_21D0CF7E0(v10, &qword_27CE5C1B8);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0);
    if ((*(*(v23 - 8) + 48))(v13, 1, v23) == 1)
    {
      return sub_21D0CF7E0(v13, &qword_27CE5D3B8);
    }

    else
    {

      sub_21DAB6998(v13, v16);
      v24 = v48;
      sub_21DAB6998(v16, v48);
      v25 = v45;
      sub_21D0D3954(v24 + *(v14 + 20), v45, &qword_27CE65F88);
      v26 = v49;
      v27 = v47;
      if ((*(v49 + 48))(v25, 1, v47) == 1)
      {
        sub_21DAB69FC(v24);
        return sub_21D0CF7E0(v25, &qword_27CE65F88);
      }

      else
      {
        (*(v26 + 32))(v46, v25, v27);
        v52 = v42;
        swift_getKeyPath();
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80);
        sub_21D0D9418(&qword_27CE589E8, &qword_27CE5DF80);
        sub_21D183A0C();
        v28 = sub_21DBFA46C();

        v29 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        v30 = v44;
        swift_beginAccess();
        if (*(v30 + v29))
        {

          TTRBatchFetchManager<A>.override(objects:)(v28);
        }

        v31 = sub_21D183AA0(v28);

        sub_21D19ED38(v31);

        v32 = v41;
        if (MEMORY[0x277D84F90] >> 62)
        {
          if (sub_21DBFBD7C())
          {
            sub_21DB83C28(MEMORY[0x277D84F90]);
          }

          if (sub_21DBFBD7C())
          {
            sub_21DB83C28(MEMORY[0x277D84F90]);
          }

          if (sub_21DBFBD7C())
          {
            sub_21DB83C28(MEMORY[0x277D84F90]);
          }

          v32 = v41;
          v30 = v44;
          v27 = v47;
        }

        v33 = v43;
        sub_21DBF767C();
        v50 = 0;
        v51 = 0xE000000000000000;
        sub_21DBFBEEC();
        v50 = *v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F50);
        v34 = sub_21DBFA1AC();
        v36 = v35;

        v50 = v34;
        v51 = v36;
        MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
        v37 = sub_21DBFAEDC();
        MEMORY[0x28223BE20](v37);
        *(&v39 - 4) = v30;
        v38 = v46;
        *(&v39 - 3) = v46;
        *(&v39 - 2) = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
        sub_21DBF625C();

        sub_21DAB69FC(v48);
        (*(v32 + 8))(v33, v40);
        return (*(v49 + 8))(v38, v27);
      }
    }
  }

  return result;
}

void sub_21DAB7224(void *a1)
{
  v2 = v1;
  if (qword_27CE570C0 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE65F38);
  v5 = a1;

  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAEBC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32[0] = v31;
    *v8 = 136315394;
    swift_getErrorValue();
    v9 = sub_21DBFC75C();
    v11 = sub_21D0CDFB4(v9, v10, v32);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v33 = 0x6574616C706D6574;
    v34 = 0xEA0000000000203ALL;
    v12 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
    swift_beginAccess();
    v13 = *(v2 + v12);
    v14 = [v13 description];
    v15 = sub_21DBFA16C();
    v17 = v16;

    MEMORY[0x223D42AA0](v15, v17);

    v18 = sub_21D0CDFB4(v33, v34, v32);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_21D0C9000, v6, v7, "TTRShowTemplateDataModelSource did hit error {error: %s, dataModelSource: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v31, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  v19 = objc_opt_self();
  v20 = sub_21DBF52CC();
  v21 = OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_template;
  swift_beginAccess();
  v22 = [*(v2 + v21) objectID];
  LODWORD(v19) = [v19 isNoSuchObjectError:v20 forObjectID:v22];

  if (v19)
  {

    v23 = sub_21DBF84AC();
    v24 = sub_21DBFAEBC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      v27 = [*(v2 + v21) objectID];
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&dword_21D0C9000, v23, v24, "TTRShowTemplateDataModelSource: template got deleted {objectID: %{public}@}", v25, 0xCu);
      sub_21D0CF7E0(v26, &unk_27CE60070);
      MEMORY[0x223D46520](v26, -1, -1);
      MEMORY[0x223D46520](v25, -1, -1);
    }

    v28 = v2 + OBJC_IVAR____TtC15RemindersUICore30TTRShowTemplateDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 8);
      ObjectType = swift_getObjectType();
      (*(v29 + 40))(ObjectType, v29);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_21DAB7884()
{
  result = sub_21DBF70DC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void **initializeBufferWithCopyOfBuffer for TTRShowTemplateMonitorableDataView.TemplateModel(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v8 = sub_21DBF74FC();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    v11 = v4;
    if (v10(a2 + v7, 1, v8))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88);
      memcpy(v6 + v7, a2 + v7, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(v6 + v7, a2 + v7, v8);
      (*(v9 + 56))(v6 + v7, 0, 1, v8);
    }
  }

  return v6;
}

uint64_t destroy for TTRShowTemplateMonitorableDataView.TemplateModel(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_21DBF74FC();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

void **initializeWithCopy for TTRShowTemplateMonitorableDataView.TemplateModel(void **a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_21DBF74FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v5;
  if (v9(a2 + v6, 1, v7))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88);
    memcpy(a1 + v6, a2 + v6, *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  return a1;
}

void **assignWithCopy for TTRShowTemplateMonitorableDataView.TemplateModel(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = sub_21DBF74FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  LODWORD(v7) = v12(a1 + v9, 1, v10);
  v13 = v12(a2 + v9, 1, v10);
  if (!v7)
  {
    if (!v13)
    {
      (*(v11 + 24))(a1 + v9, a2 + v9, v10);
      return a1;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88);
    memcpy(a1 + v9, a2 + v9, *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v11 + 16))(a1 + v9, a2 + v9, v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
  return a1;
}

char *initializeWithTake for TTRShowTemplateMonitorableDataView.TemplateModel(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF74FC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

void **assignWithTake for TTRShowTemplateMonitorableDataView.TemplateModel(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_21DBF74FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F88);
    memcpy(a1 + v7, a2 + v7, *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

void sub_21DAB810C()
{
  sub_21DAB81A8();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21DAB81A8()
{
  if (!qword_27CE65FC0)
  {
    sub_21DBF74FC();
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE65FC0);
    }
  }
}

uint64_t sub_21DAB8200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static TTRProcessMoveSubjects.process<A>(moveSubjects:disallowOverride:moveFilters:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v67 = a2;
  v53 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v46 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = sub_21DBFBA8C();
  v61 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v62 = &v46 - v16;
  v17 = sub_21DBFC38C();
  v52 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  v65 = sub_21DBFC37C();
  v49 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v21 = &v46 - v20;
  v22 = sub_21DBF5B9C();
  v50 = *(v22 - 8);
  v51 = v22;
  MEMORY[0x28223BE20](v22);
  v54 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5B8C();
  if (v67)
  {
    v24 = 1;
    v25 = a4;
LABEL_16:
    v38 = v25;
    v39 = MEMORY[0x223D42CB0]();
    MEMORY[0x28223BE20](v39);
    *(&v46 - 4) = v38;
    *(&v46 - 3) = a5;
    v40 = v54;
    *(&v46 - 2) = v54;
    v41 = swift_getTupleTypeMetadata2();
    WitnessTable = swift_getWitnessTable();
    v44 = sub_21D110EC8(sub_21DAB8CF0, (&v46 - 6), v17, v41, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v43);
    (*(v52 + 8))(v19, v17);
    v45 = v53;
    *v53 = v24 & 1;
    *(v45 + 1) = v44;
    return (*(v50 + 8))(v40, v51);
  }

  v47 = a4;
  v48 = a5;
  v46 = a1;
  MEMORY[0x223D42CB0](a4, a5);
  sub_21DBFC35C();
  v67 = 0;
  v60 = TupleTypeMetadata2 - 8;
  v61 += 4;
  v55 = (v66 + 8);
  v56 = v21;
  v58 = a3 + 40;
  v59 = (v66 + 32);
  v26 = TupleTypeMetadata2;
  v57 = v19;
LABEL_6:
  v27 = v63;
  sub_21DBFC36C();
  v28 = v62;
  (*v61)(v62, v27, v64);
  if ((*(*(v26 - 8) + 48))(v28, 1, v26) == 1)
  {
    (*(v49 + 8))(v21, v65);
    a5 = v48;
    v25 = v47;
    v24 = v67;
    goto LABEL_16;
  }

  v29 = v17;
  v66 = *v28;
  v30 = v26;
  (*v59)(v12, &v28[*(v26 + 48)], AssociatedTypeWitness);
  v31 = AssociatedTypeWitness;
  swift_getFunctionTypeMetadata1();
  v32 = 0;
  v33 = v58;
  while (1)
  {
    if (v32 == sub_21DBFA6DC())
    {
      sub_21DBF5AFC();
LABEL_5:
      AssociatedTypeWitness = v31;
      (*v55)(v12, v31);
      v17 = v29;
      v21 = v56;
      v19 = v57;
      v26 = v30;
      goto LABEL_6;
    }

    v34 = sub_21DBFA6AC();
    result = sub_21DBFA61C();
    if ((v34 & 1) == 0)
    {
      break;
    }

    if (__OFADD__(v32, 1))
    {
      goto LABEL_18;
    }

    v36 = *(v33 - 8);

    v36(&v68, v12);

    ++v32;
    v33 += 16;
    if (v68)
    {
      v37 = v67;
      if (v68 != 1)
      {
        v37 = 1;
      }

      v67 = v37;
      goto LABEL_5;
    }
  }

  result = sub_21DBFBF7C();
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t TTRProcessMoveSubjects.MoveFilterStatus.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21DAB8A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v21 = a3;
  v22 = sub_21DBF5B9C();
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v20 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  (*(v16 + 16))(v10, a1, TupleTypeMetadata2, v13);
  (*(v11 + 32))(v15, &v10[*(TupleTypeMetadata2 + 48)], AssociatedTypeWitness);
  v20 = *(swift_getTupleTypeMetadata2() + 48);
  v17 = v21;
  (*(v11 + 16))(v21, v15, AssociatedTypeWitness);
  v18 = v22;
  (*(v4 + 16))(v6, v23, v22);
  LOBYTE(v10) = sub_21DBF5B2C();
  (*(v4 + 8))(v6, v18);
  result = (*(v11 + 8))(v15, AssociatedTypeWitness);
  *(v17 + v20) = v10 & 1;
  return result;
}

unint64_t sub_21DAB8D30()
{
  result = qword_27CE65FD0[0];
  if (!qword_27CE65FD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE65FD0);
  }

  return result;
}

uint64_t sub_21DAB8DE8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE66058);
  v1 = __swift_project_value_buffer(v0, qword_27CE66058);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRRemindersBoardItemCollapsedStates.setCollapsed<A>(_:for:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    return (*(a5 + 40))(a2, a4, a6, a3);
  }

  else
  {
    return (*(a5 + 48))(a2, a4, a6, a3);
  }
}

uint64_t TTRRemindersBoardItemCollapsedStates.toggleCollapsed(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 32))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58908);
  v7 = *(type metadata accessor for TTRRemindersListViewModel.ItemID(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  sub_21D371AB0(a1, v9 + v8);
  v13 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66070);
  v11 = sub_21D0D9418(&qword_27CE66078, &qword_27CE66070);
  if (v6)
  {
    (*(a3 + 48))(&v13, v10, v11, a2, a3);
  }

  else
  {
    (*(a3 + 40))(&v13, v10, v11, a2, a3);
  }
}

uint64_t sub_21DAB9080@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
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
    v7 = sub_21D0E6070;
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

uint64_t sub_21DAB9114(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
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

uint64_t TTRRemindersBoardCollapsedStatesPresenterCapability.collapsedStateDidChangeExplicitly.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRRemindersBoardCollapsedStatesPresenterCapability.collapsedStateDidChangeExplicitly.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_21D0D0E88(v5);
}

uint64_t TTRRemindersBoardCollapsedStatesPresenterCapability.collapsedStatesPersistence.setter(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 32) = a1;

  v4 = *(v1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);

    v7 = v5(v6);
  }

  else
  {

    v7 = MEMORY[0x277D84FA0];
  }

  swift_beginAccess();
  *(v2 + 40) = v7;
}

uint64_t (*TTRRemindersBoardCollapsedStatesPresenterCapability.collapsedStatesPersistence.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21DAB941C;
}

uint64_t sub_21DAB941C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + 32);
    if (v6)
    {
      v7 = *(v6 + 16);

      v9 = v7(v8);

      v5 = *(a1 + 24);
    }

    else
    {
      v9 = MEMORY[0x277D84FA0];
    }

    swift_beginAccess();
    *(v5 + 40) = v9;
  }

  return result;
}

uint64_t TTRRemindersBoardCollapsedStatesPresenterCapability.__allocating_init()()
{
  v0 = swift_allocObject();
  TTRRemindersBoardCollapsedStatesPresenterCapability.init()();
  return v0;
}

void *TTRRemindersBoardCollapsedStatesPresenterCapability.init()()
{
  v1 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v1);
  v0[2] = 0;
  v0[3] = 0;
  v2 = MEMORY[0x277D84FA0];
  v0[4] = 0;
  v0[5] = v2;
  sub_21D0CE468();
  v3 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v4 = swift_allocObject();
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v5 = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0D9418(&qword_280D0C3D0, &unk_27CE5CD90);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v4[5] = sub_21DBF5EEC();
  v4[6] = v5;
  v4[4] = v3;
  v0[6] = v4;
  swift_beginAccess();
  v4[3] = &protocol witness table for TTRRemindersBoardCollapsedStatesPresenterCapability;
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t TTRRemindersBoardCollapsedStatesPresenterCapability.isCollapsed(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  sub_21DBF8E0C();
  LOBYTE(a1) = sub_21D1E1F5C(a1, v3);

  return a1 & 1;
}

uint64_t TTRRemindersBoardCollapsedStatesPresenterCapability.collapse<A>(_:)()
{
  v1 = v0;
  if (qword_27CE570C8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE66058);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  swift_beginAccess();
  v3 = *(v0 + 40);
  swift_beginAccess();
  sub_21DBF8E0C();
  sub_21DAB98C8(v1 + 40);
  swift_endAccess();
  v4 = sub_21DBF8E0C();
  sub_21D320EEC(v4, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    swift_beginAccess();
    v8 = *(v1 + 16);
    if (v8)
    {

      v8(v9);
      sub_21D0D0E88(v8);
    }

    result = swift_beginAccess();
    if (*(v1 + 32))
    {

      v10._object = 0x800000021DC494E0;
      v10._countAndFlagsBits = 0xD000000000000016;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v10);
    }
  }

  return result;
}

uint64_t sub_21DAB98C8(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63058);
  return sub_21DBFAB8C();
}

uint64_t TTRRemindersBoardCollapsedStatesPresenterCapability.expand<A>(_:)()
{
  if (qword_27CE570C8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE66058);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  swift_beginAccess();
  v2 = v0[5];
  swift_beginAccess();
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63058);
  sub_21DBFAB7C();
  swift_endAccess();
  v3 = sub_21DBF8E0C();
  sub_21D320EEC(v3, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    swift_beginAccess();
    v7 = v0[2];
    if (v7)
    {

      v7(v8);
      sub_21D0D0E88(v7);
    }

    result = swift_beginAccess();
    if (v0[4])
    {

      v9._object = 0x800000021DC494E0;
      v9._countAndFlagsBits = 0xD000000000000016;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v9);
    }
  }

  return result;
}

uint64_t TTRRemindersBoardCollapsedStatesPresenterCapability.pruneNonExistentItemIDs(with:)()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  *(v0 + 40) = sub_21DABA250(v1, sub_21DAB9FB4);
  swift_endAccess();

  sub_21D320EEC(v2, v1);
  v4 = v3;

  if ((v4 & 1) == 0)
  {
    result = swift_beginAccess();
    if (*(v0 + 32))
    {

      v6._object = 0x800000021DC494E0;
      v6._countAndFlagsBits = 0xD000000000000016;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v6);
    }
  }

  return result;
}

BOOL sub_21DAB9CA0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(v8 + 40))(a1, v7, v8);
  v9 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v10 = (*(*(v9 - 8) + 48))(v6, 1, v9) == 1;
  sub_21D5578D8(v6);
  return v10;
}

uint64_t TTRRemindersBoardCollapsedStatesPresenterCapability.deinit()
{
  sub_21D0D0E88(*(v0 + 16));

  return v0;
}

uint64_t TTRRemindersBoardCollapsedStatesPresenterCapability.__deallocating_deinit()
{
  sub_21D0D0E88(*(v0 + 16));

  return swift_deallocClassInstance();
}

void (*sub_21DAB9E40(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = TTRRemindersBoardCollapsedStatesPresenterCapability.collapsedStatesPersistence.modify(v2);
  return sub_21D25A3E8;
}

uint64_t sub_21DAB9EB0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  sub_21DBF8E0C();
  LOBYTE(a1) = sub_21D1E1F5C(a1, v3);

  return a1 & 1;
}

void *sub_21DAB9F24(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    sub_21DABA060(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t _s15RemindersUICore51TTRRemindersBoardCollapsedStatesPresenterCapabilityC21deferredActionPerform_6reasonyAA011TTRDeferredJ0C_SStF_0()
{
  result = swift_beginAccess();
  v2 = *(v0 + 32);
  if (v2)
  {
    swift_beginAccess();
    v3 = *(v2 + 32);

    v4 = sub_21DBF8E0C();
    v3(v4);
  }

  return result;
}

void sub_21DABA060(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v29 = a4;
  v25 = a2;
  v26 = a1;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v9 = 0;
  v30 = a3;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    sub_21D371AB0(*(v30 + 48) + *(v28 + 72) * v20, v8);
    v21 = v29(v8);
    sub_21D371B14(v8);
    if (v4)
    {
      return;
    }

    if ((v21 & 1) == 0)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:
        v23 = v30;

        sub_21D7C08F0(v26, v25, v27, v23);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_21DABA250(uint64_t a1, uint64_t (*a2)(char *))
{
  v30 = a2;
  v32 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(a1 + 32);
  v8 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v25 = v8;
    v27 = &v25;
    MEMORY[0x28223BE20](v5);
    v26 = &v25 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v9);
    v28 = 0;
    v8 = 0;
    v31 = a1;
    v11 = *(a1 + 56);
    a1 += 56;
    v10 = v11;
    v12 = 1 << *(a1 - 24);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v10;
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v19 = v16 | (v8 << 6);
      sub_21D371AB0(*(v31 + 48) + *(v29 + 72) * v19, v7);
      v20 = v30(v7);
      sub_21D371B14(v7);
      if (v2)
      {

        return swift_willThrow();
      }

      if ((v20 & 1) == 0)
      {
        *&v26[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
          return sub_21D7C08F0(v26, v25, v28, v31);
        }
      }
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return sub_21D7C08F0(v26, v25, v28, v31);
      }

      v18 = *(a1 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = sub_21DAB9F24(v23, v8, a1, v30);

  result = MEMORY[0x223D46520](v23, -1, -1);
  if (!v2)
  {
    return v24;
  }

  return result;
}

uint64_t sub_21DABA628@<X0>(char *a1@<X8>)
{
  if ((*(v1 + 24) & 1) != 0 || *(v1 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_suggestedRemindersStateHasChanges) == 1)
  {
    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_needsReload))
    {
      v3 = 2;
    }

    else
    {
      v3 = (*(v1 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_prefersNoAnimation) & 1) == 0;
    }

    v4 = OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_itemToStartEditing;
    swift_beginAccess();
    updated = type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext();
    sub_21D589C24(v1 + v4, &a1[*(updated + 20)]);
    *a1 = v3;
    return (*(*(updated - 8) + 56))(a1, 0, 1, updated);
  }

  else
  {
    v7 = type metadata accessor for TTRSECreateRemindersTreeViewModelUpdateContext();
    v8 = *(*(v7 - 8) + 56);

    return v8(a1, 1, 1, v7);
  }
}

uint64_t sub_21DABA780(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_suggestedRemindersStateHasChanges;
  if (*(v4 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_suggestedRemindersStateHasChanges))
  {
    goto LABEL_14;
  }

  v7 = v4[4];
  v6 = v4[5];
  v9 = v4[6];
  v8 = v4[7];
  if (v6)
  {
    if (a2)
    {
      if ((v7 ^ result))
      {
        sub_21D24A7C4(result, a2);
        sub_21D24A7C4(v7, v6);
      }

      else
      {
        v10 = ((result & 0x100) == 0) ^ BYTE1(v7) & 1;
        sub_21D24A7C4(result, a2);
        sub_21D24A7C4(v7, v6);
        if (v10 & 1) != 0 && (sub_21D1D7450(v6, a2) & 1) != 0 && (sub_21D322414(v9, a3))
        {
          sub_21D371718(v8, a4);
          v15 = v14;

          result = sub_21D24A814(v7, v6);
          v16 = v15 ^ 1;
          goto LABEL_15;
        }
      }

      v19 = v7;
      v20 = v6;
      goto LABEL_13;
    }

LABEL_10:
    v17 = result;
    sub_21D24A7C4(result, a2);
    sub_21D24A7C4(v7, v6);
    sub_21D24A814(v7, v6);
    v19 = v17;
    v20 = a2;
LABEL_13:
    result = sub_21D24A814(v19, v20);
LABEL_14:
    v16 = 1;
    goto LABEL_15;
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v16 = 0;
LABEL_15:
  *(v4 + v5) = v16 & 1;
  v21 = *(v4 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
  if (v21)
  {

    v21(v4);

    return sub_21D0D0E88(v21);
  }

  return result;
}

uint64_t sub_21DABA99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = 0;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  v11 = OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_itemToStartEditing;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0);
  (*(*(v12 - 8) + 56))(v5 + v11, 1, 1, v12);
  v13 = (v5 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
  *v13 = 0;
  v13[1] = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_suggestedRemindersStateHasChanges) = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_needsReload) = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_prefersNoAnimation) = 0;
  *(v5 + 16) = a1;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return v5;
}

uint64_t sub_21DABAA88()
{

  sub_21D24A814(*(v0 + 32), *(v0 + 40));
  sub_21DABAD50(v0 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_itemToStartEditing);
  sub_21D0D0E88(*(v0 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRSECreateRemindersPresentationTreeTransaction()
{
  result = qword_27CE66080;
  if (!qword_27CE66080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21DABAB68()
{
  sub_21D58AE7C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21DABAC2C(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = *(a1 + 16);
  v9 = *(v8 + 104);
  v10 = *(v8 + 112);

  v11 = sub_21D25E9D8(v9, v10);

  LOBYTE(v8) = sub_21D646688(v11, a2, a3, a4);
  *(a1 + 16) = v11;

  *(a1 + 24) = (*(a1 + 24) | v8) & 1;
  v12 = *(a1 + OBJC_IVAR____TtC15RemindersUICore47TTRSECreateRemindersPresentationTreeTransaction_synchronizeStatesWithHost);
  if (v12)
  {

    v12(a1);

    return sub_21D0D0E88(v12);
  }

  else
  {
  }
}

uint64_t sub_21DABAD50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void TTRIPermissionsWarmingSheetViewController.setAction<A>(_:forButton:handler:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v34 = &v33 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  LOBYTE(a2) = *a2;
  sub_21DABB41C();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  sub_21DBF8E0C();

  v18 = sub_21DBFB77C();
  v19 = sub_21DABB398();
  if (a2)
  {
    v20 = sub_21D848108();

    [v20 addAction:v18 forControlEvents:64];
    v21 = OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView;
    v22 = *(v5 + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView);
    v23 = sub_21D848108();

    sub_21DBFB97C();
    v24 = sub_21DBFB95C();
    if ((*(*(v24 - 8) + 48))(v11, 1, v24))
    {
      sub_21D303258(v11, v34);
      sub_21DBFB98C();

      sub_21D3032C8(v11);
    }

    else
    {
      sub_21DBF8E0C();
      sub_21DBFB92C();
      sub_21DBFB98C();
    }

    v30 = *(v5 + v21);
    v31 = sub_21D848108();
  }

  else
  {
    v25 = sub_21D847E38();

    [v25 addAction:v18 forControlEvents:64];
    v26 = OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView;
    v27 = *(v5 + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView);
    v28 = sub_21D847E38();

    sub_21DBFB97C();
    v29 = sub_21DBFB95C();
    if ((*(*(v29 - 8) + 48))(v16, 1, v29))
    {
      sub_21D303258(v16, v34);
      sub_21DBFB98C();

      sub_21D3032C8(v16);
    }

    else
    {
      sub_21DBF8E0C();
      sub_21DBFB92C();
      sub_21DBFB98C();
    }

    v30 = *(v5 + v26);
    v31 = sub_21D847E38();
  }

  v32 = v31;

  [v32 setHidden_];
}

uint64_t TTRIPermissionsWarmingSheetViewController.Buttons.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

id sub_21DABB398()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for TTRIPermissionsWarmingSheetView()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

unint64_t sub_21DABB41C()
{
  result = qword_280D0C1D0;
  if (!qword_280D0C1D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D0C1D0);
  }

  return result;
}

void (*TTRIPermissionsWarmingSheetViewController.title.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = sub_21DABB398();
  v4 = sub_21D847A30();

  v5 = [v4 text];
  if (v5)
  {
    v6 = sub_21DBFA16C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_21DABB50C;
}

uint64_t sub_21DABB53C(uint64_t (*a1)(void))
{
  v2 = sub_21DABB398();
  v3 = a1();

  v4 = [v3 text];
  if (!v4)
  {
    return 0;
  }

  v5 = sub_21DBFA16C();

  return v5;
}

void sub_21DABB5C8(uint64_t *a1@<X8>)
{
  v2 = sub_21DABB398();
  v3 = sub_21D847BF4();

  v4 = [v3 text];
  if (v4)
  {
    v5 = sub_21DBFA16C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
}

void sub_21DABB650(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_21DABB398();
  v3 = sub_21D847BF4();

  if (v1)
  {
    v4 = sub_21DBFA12C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setText_];
}

void sub_21DABB6F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_21DABB398();
  v6 = a3();

  if (a2)
  {
    v7 = sub_21DBFA12C();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText_];
}

void (*TTRIPermissionsWarmingSheetViewController.message.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = sub_21DABB398();
  v4 = sub_21D847BF4();

  v5 = [v4 text];
  if (v5)
  {
    v6 = sub_21DBFA16C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_21DABB83C;
}

void sub_21DABB854(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  v4 = *(a1 + 8);
  v5 = *(*(a1 + 16) + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView);
  if (a2)
  {
    sub_21DBF8E0C();
    v6 = v5;
    v9 = a3();

    if (v4)
    {
      v7 = sub_21DBFA12C();
    }

    else
    {
      v7 = 0;
    }

    [v9 setText_];
  }

  else
  {
    v8 = v5;
    v9 = a3();

    if (v4)
    {
      v7 = sub_21DBFA12C();
    }

    else
    {
      v7 = 0;
    }

    [v9 setText_];
  }
}

id TTRIPermissionsWarmingSheetViewController.headerImage.getter()
{
  v0 = sub_21DABB398();
  v1 = sub_21D8478FC();

  v4.receiver = v1;
  v4.super_class = type metadata accessor for TTRISizedToFitImageView();
  v2 = objc_msgSendSuper2(&v4, sel_image);

  return v2;
}

void sub_21DABB9D0(void *a1@<X8>)
{
  v2 = sub_21DABB398();
  v3 = sub_21D8478FC();

  v5.receiver = v3;
  v5.super_class = type metadata accessor for TTRISizedToFitImageView();
  v4 = objc_msgSendSuper2(&v5, sel_image);

  *a1 = v4;
}

void sub_21DABBA48(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_21DABB398();
  v3 = sub_21D8478FC();

  v4.receiver = v3;
  v4.super_class = type metadata accessor for TTRISizedToFitImageView();
  objc_msgSendSuper2(&v4, sel_setImage_, v1);
  sub_21DAD34C4();
}

void TTRIPermissionsWarmingSheetViewController.headerImage.setter(void *a1)
{
  v2 = sub_21DABB398();
  v3 = sub_21D8478FC();

  v4.receiver = v3;
  v4.super_class = type metadata accessor for TTRISizedToFitImageView();
  objc_msgSendSuper2(&v4, sel_setImage_, a1);
  sub_21DAD34C4();
}

void (*TTRIPermissionsWarmingSheetViewController.headerImage.modify(uint64_t *a1))(objc_super **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = sub_21DABB398();
  v6 = sub_21D8478FC();

  v7 = type metadata accessor for TTRISizedToFitImageView();
  v4[4].receiver = v7;
  v4->receiver = v6;
  v4->super_class = v7;
  v8 = [(objc_super *)v4 image];

  v4[3].receiver = v8;
  return sub_21DABBBE8;
}

void sub_21DABBBE8(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver = (*a1)[3].receiver;
  v4 = (*a1)[4].receiver;
  v5 = *((*a1)[3].super_class + OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView);
  if (a2)
  {
    v6 = receiver;
    v7 = v5;
    v8 = sub_21D8478FC();

    v2[1].receiver = v8;
    v2[1].super_class = v4;
    objc_msgSendSuper2(v2 + 1, sel_setImage_, v6);
    sub_21DAD34C4();

    v9 = v2[3].receiver;
  }

  else
  {
    v10 = v5;
    v9 = sub_21D8478FC();

    v2[2].receiver = v9;
    v2[2].super_class = v4;
    objc_msgSendSuper2(v2 + 2, sel_setImage_, receiver);
    sub_21DAD34C4();
  }

  free(v2);
}

char *TTRIPermissionsWarmingSheetViewController.__allocating_init(title:message:headerImage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = [objc_allocWithZone(v5) initWithNibName:0 bundle:0];
  v10 = sub_21DABB398();
  v11 = sub_21D847A30();

  if (a2)
  {
    v12 = sub_21DBFA12C();
  }

  else
  {
    v12 = 0;
  }

  [v11 setText_];

  v13 = OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView;
  v14 = *&v9[OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView];
  v15 = sub_21D847BF4();

  if (a4)
  {
    v16 = sub_21DBFA12C();
  }

  else
  {
    v16 = 0;
  }

  [v15 setText_];

  v17 = *&v9[v13];
  v18 = sub_21D8478FC();

  v20.receiver = v18;
  v20.super_class = type metadata accessor for TTRISizedToFitImageView();
  objc_msgSendSuper2(&v20, sel_setImage_, a5);
  sub_21DAD34C4();

  return v9;
}

Swift::Void __swiftcall TTRIPermissionsWarmingSheetViewController.loadView()()
{
  v1 = sub_21DABB398();
  [v0 setView_];
}

id TTRIPermissionsWarmingSheetViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TTRIPermissionsWarmingSheetViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView] = 0;
  if (a2)
  {
    v7 = sub_21DBFA12C();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id TTRIPermissionsWarmingSheetViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRIPermissionsWarmingSheetViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore41TTRIPermissionsWarmingSheetViewController____lazy_storage___permissionsPromptView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id TTRIPermissionsWarmingSheetViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21DABC2A0()
{
  result = qword_27CE66098[0];
  if (!qword_27CE66098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE66098);
  }

  return result;
}

BOOL TTRReminderHashtagData.shouldShowStructuredTagField.getter()
{
  if (*v0 != 1)
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 != 0;
}

uint64_t TTRReminderHashtagData.init(supportsHashtags:inlineHashtagVisibility:tags:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a3;
  return result;
}

uint64_t TTRReminderHashtagData.ttrAccessibilityTagSummary.getter()
{
  v1.value = 5;
  v1.is_nil = 0;
  return TTRReminderHashtagData.ttrAccessibilityTagSummary(withTagLimit:)(v1)._countAndFlagsBits;
}

uint64_t TTRReminderHashtagData.detailText.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (!sub_21DBFBD7C())
    {
      return 0;
    }

    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v2;
    }
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D83B88];
  *(v3 + 16) = xmmword_21DC08D00;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v2;
  v2 = sub_21DBFA13C();

  return v2;
}

void sub_21DABC590()
{
  byte_280D15478 = 0;
  qword_280D15480 = 0;
  unk_280D15488 = MEMORY[0x277D84F90];
}

uint64_t static TTRReminderHashtagData.unsupported.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D15470 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_280D15480;
  v2 = unk_280D15488;
  *a1 = byte_280D15478;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  sub_21DBF8E0C();

  return sub_21DBF8E0C();
}

void TTRReminderHashtagData.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v1;
}

Swift::String __swiftcall TTRReminderHashtagData.ttrAccessibilityTagSummary(withTagLimit:)(Swift::Int_optional withTagLimit)
{
  v2 = *(v1 + 16);
  v3 = v2 >> 62;
  if (withTagLimit.is_nil)
  {
    goto LABEL_4;
  }

  if (v3)
  {
    value = withTagLimit.value;
    v4 = sub_21DBFBD7C();
    if (v4 < value)
    {
      goto LABEL_4;
    }

LABEL_25:
    if (qword_27CE57558 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D83B88];
    *(v27 + 16) = xmmword_21DC08D00;
    v29 = MEMORY[0x277D83C10];
    *(v27 + 56) = v28;
    *(v27 + 64) = v29;
    *(v27 + 32) = v4;
    v30 = sub_21DBFA13C();
    v32 = v31;

    v25 = v32;
    v24 = v30;
    goto LABEL_28;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 >= withTagLimit.value)
  {
    goto LABEL_25;
  }

LABEL_4:
  if (v3)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v6 = 0;
    v36 = v2 & 0xFFFFFFFFFFFFFF8;
    v37 = v2 & 0xC000000000000001;
    v34 = xmmword_21DC08D00;
    v35 = v2;
    while (1)
    {
      if (v37)
      {
        v11 = MEMORY[0x223D44740](v6, v2);
      }

      else
      {
        if (v6 >= *(v36 + 16))
        {
          goto LABEL_21;
        }

        v11 = *(v2 + 8 * v6 + 32);
      }

      v12 = v11;
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = [objc_opt_self() currentRequest];
      if (v14 && (v15 = v14, v16 = [v14 technology], v15, LOBYTE(v15) = AXTechnology.ttrShouldUseSpeakableStrings.getter(), v16, (v15 & 1) != 0))
      {
        v17 = i;
        if (qword_27CE57550 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
        v18 = swift_allocObject();
        *(v18 + 16) = v34;
        v19 = [v12 name];
        v20 = sub_21DBFA16C();
        v22 = v21;

        *(v18 + 56) = MEMORY[0x277D837D0];
        *(v18 + 64) = sub_21D17A884();
        *(v18 + 32) = v20;
        *(v18 + 40) = v22;
        v8 = sub_21DBFA13C();
        v10 = v23;
        i = v17;
        v2 = v35;
      }

      else
      {
        v7 = [v12 name];
        sub_21DBFA16C();

        v8 = sub_21DBFA22C();
        v10 = v9;
      }

      MEMORY[0x223D42AA0](v8, v10);

      ++v6;
      if (v13 == i)
      {
        v24 = 0;
        v25 = 0xE000000000000000;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
LABEL_28:
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t _s15RemindersUICore22TTRReminderHashtagDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 2);
  v5 = *(a2 + 1);
  v4 = *(a2 + 2);
  if (*(a1 + 1))
  {
    if (v5)
    {
      sub_21DBF8E0C();
      v6 = sub_21DBF8E0C();
      v7 = sub_21D3220EC(v6, v5);

      if (v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_9:

  return sub_21D1D7630(v3, v4);
}

uint64_t sub_21DABCAF4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRReminderHashtagData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRReminderHashtagData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t TTRMoveRemindersToListPresenterCapability.TargetList.init(listOrCustomSmartList:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t TTRMoveRemindersToListPresenterCapability.paramsForDropping(_:into:reminderForDragItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *(*v5 + 80);
  if (!*(a2 + 8))
  {
    v14 = sub_21DABEB58(a1, 1, a3, a4, v8);
    sub_21DABCD90(v14, v7, &v19);

    if (v19)
    {
      v15 = v20;
      *a5 = v19;
      *(a5 + 8) = v15;
      *(a5 + 24) = 0;
      *(a5 + 32) = 0;
      return result;
    }

    goto LABEL_9;
  }

  if (*(a2 + 8) != 1)
  {
    v16 = sub_21DABEB58(a1, 0, a3, a4, v8);
    v22 = v7;
    sub_21DABE1E0(v16, &v22, &v19);

    v17 = v20;
    if (v20)
    {
      v18 = *(&v20 + 1);
      *a5 = v19;
      *(a5 + 8) = v17;
      *(a5 + 16) = v18;
      *(a5 + 24) = 0;
      v13 = 2;
      goto LABEL_10;
    }

LABEL_9:
    *a5 = 0u;
    *(a5 + 16) = 0u;
    v13 = -1;
    goto LABEL_10;
  }

  v9 = sub_21DABEB58(a1, 0, a3, a4, v8);
  sub_21DABD8C4(v9, v7, &v19);

  if (!v19)
  {
    goto LABEL_9;
  }

  v11 = v21;
  v12 = v20;
  *a5 = v19;
  *(a5 + 8) = v12;
  *(a5 + 24) = v11;
  v13 = 1;
LABEL_10:
  *(a5 + 32) = v13;
  return result;
}

id sub_21DABCD90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v95 = a2;
  v4 = a1;
  v81 = a3;
  v5 = *(*v3 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v80 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v78 - v9;
  v85 = sub_21D0D8CF0(255, &qword_280D17860);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v93 = sub_21DBFBA8C();
  v12 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v78 - v16;
  v17 = sub_21DBF9E3C();
  v18 = 0;
  v96 = TupleTypeMetadata2 - 8;
  v99 = MEMORY[0x277D84F90];
  v100 = v17;
  v92 = (v12 + 32);
  v90 = (v6 + 32);
  v82 = MEMORY[0x277D84F90];
  v87 = (v6 + 8);
  v79 = (v6 + 16);
  v84 = v5;
  v88 = v14;
  v89 = v4;
  v86 = v10;
  v91 = TupleTypeMetadata2;
LABEL_2:
  v19 = v94;
  while (1)
  {
    if (v18 == sub_21DBFA6DC())
    {
      v97 = v18;
      v20 = *(TupleTypeMetadata2 - 8);
      (*(v20 + 56))(v14, 1, 1, TupleTypeMetadata2);
    }

    else
    {
      v21 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v21)
      {
        v22 = *(TupleTypeMetadata2 - 8);
        result = (*(v22 + 16))(v14, v4 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, TupleTypeMetadata2);
        v24 = __OFADD__(v18, 1);
        v25 = v18 + 1;
        if (v24)
        {
          goto LABEL_42;
        }
      }

      else
      {
        result = sub_21DBFBF7C();
        v22 = *(TupleTypeMetadata2 - 8);
        if (*(v22 + 64) != 8)
        {
          goto LABEL_43;
        }

        v98[0] = result;
        (*(v22 + 16))(v14, v98, TupleTypeMetadata2);
        result = swift_unknownObjectRelease();
        v19 = v94;
        v24 = __OFADD__(v18, 1);
        v25 = v18 + 1;
        if (v24)
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          return result;
        }
      }

      v97 = v25;
      v20 = v22;
      (*(v22 + 56))(v14, 0, 1, TupleTypeMetadata2);
    }

    (*v92)(v19, v14, v93);
    if ((*(v20 + 48))(v19, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v26 = *&v19[*(TupleTypeMetadata2 + 48)];
    (*v90)(v10, v19, v5);
    v27 = [v26 list];
    v28 = &off_278331000;
    v29 = [v27 objectID];

    v30 = v95;
    v31 = [v95 objectID];
    sub_21D0D8CF0(0, &qword_280D17880);
    v32 = v10;
    v33 = sub_21DBFB63C();

    if (v33)
    {
      (*v87)(v32, v5);

      v4 = v89;
      v10 = v32;
      goto LABEL_4;
    }

    v98[3] = v85;
    v98[4] = &protocol witness table for REMReminder;
    v98[0] = v26;
    v83 = __swift_project_boxed_opaque_existential_1(v98, v85);
    v34 = v26;
    v35 = [v34 list];
    v36 = [v35 objectID];

    v37 = [v30 objectID];
    v38 = sub_21DBFB63C();

    if (v38)
    {
      goto LABEL_35;
    }

    v39 = [v34 objectID];
    v40 = [v39 entityName];

    v41 = sub_21DBFA16C();
    v43 = v42;

    v44 = objc_opt_self();
    v45 = [v44 cdEntityNameForSavedReminder];
    v46 = sub_21DBFA16C();
    v48 = v47;

    if (v41 == v46 && v43 == v48)
    {

LABEL_17:
      v10 = v86;
      v5 = v84;
      (*v87)(v86, v84);
LABEL_18:

      __swift_destroy_boxed_opaque_existential_0(v98);
      v4 = v89;
LABEL_4:
      v14 = v88;
      v19 = v94;
      v18 = v97;
      TupleTypeMetadata2 = v91;
    }

    else
    {
      v49 = sub_21DBFC64C();

      if (v49)
      {
        goto LABEL_17;
      }

      v50 = [v95 objectID];
      v51 = [v50 entityName];

      v52 = sub_21DBFA16C();
      v54 = v53;

      v55 = [v44 cdEntityName];
      v56 = sub_21DBFA16C();
      v58 = v57;

      if (v52 == v56 && v54 == v58)
      {

        v5 = v84;
        TupleTypeMetadata2 = v91;
      }

      else
      {
        v59 = sub_21DBFC64C();

        v5 = v84;
        TupleTypeMetadata2 = v91;
        if ((v59 & 1) == 0)
        {
          v60 = [v34 accountID];
          v61 = v95;
          v62 = [v95 accountID];
          v63 = sub_21DBFB63C();

          if (v63)
          {
            v67 = [v61 account];
            v68 = [v67 capabilities];

            LOBYTE(v67) = [v68 supportsMoveAcrossLists];
            v28 = &off_278331000;
            if (v67)
            {
              v69 = [v61 account];
              v70 = [v69 capabilities];

              LOBYTE(v69) = [v70 supportsMoveAcrossSharedLists];
              if ((v69 & 1) == 0)
              {
                v71 = [*v83 list];
                v72 = [v71 isShared];

                if ((v72 & 1) == 0)
                {
                  [v61 isShared];
                }
              }
            }

LABEL_35:
            __swift_destroy_boxed_opaque_existential_0(v98);
            v10 = v86;
            (*v79)(v80, v86, v5);
            sub_21DBFA74C();
            sub_21DBFA6FC();
            v73 = [v34 v28[425]];
            MEMORY[0x223D42D80]();
            if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();

            (*v87)(v10, v5);
            v82 = v99;
            v14 = v88;
            v4 = v89;
            v18 = v97;
            TupleTypeMetadata2 = v91;
            goto LABEL_2;
          }

          v64 = [v34 account];
          v65 = [v61 account];
          v66 = [v64 canCopyReminderLosslesslyToAccount_];

          v28 = &off_278331000;
          if (v66)
          {
            goto LABEL_35;
          }

          v10 = v86;
          (*v87)(v86, v5);
          goto LABEL_18;
        }
      }

      v10 = v86;
      (*v87)(v86, v5);

      __swift_destroy_boxed_opaque_existential_0(v98);
      v14 = v88;
      v4 = v89;
      v19 = v94;
      v18 = v97;
    }
  }

  v74 = v100;
  v98[0] = v100;
  sub_21DBFA74C();
  swift_getWitnessTable();
  if (sub_21DBFACFC())
  {

    v75 = 0;
    v74 = 0;
    v76 = 0;
    v77 = v81;
  }

  else
  {
    v75 = v95;
    result = v95;
    v77 = v81;
    v76 = v82;
  }

  *v77 = v75;
  v77[1] = v74;
  v77[2] = v76;
  return result;
}

void sub_21DABD8C4(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v70 = a2;
  v6 = *v3;
  v62 = sub_21DBF563C();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v6 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  sub_21D0D8CF0(255, &qword_280D17860);
  v69 = v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v67 = sub_21DBFBA8C();
  v17 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v68 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v55 - v21;
  v23 = [v70 customContext];
  if (v23 && (v24 = v23, v25 = sub_21DBFB4FC(), v24, (v63 = v25) != 0))
  {
    v71 = v15;
    v57 = v12;
    v58 = a3;
    v26 = v69;
    v27 = sub_21DBF9E3C();
    v28 = 0;
    v76 = MEMORY[0x277D84F90];
    v77 = v27;
    v72 = TupleTypeMetadata2 - 8;
    v65 = (v9 + 32);
    v66 = (v17 + 32);
    v64 = (v9 + 8);
    v75 = MEMORY[0x277D84FA0];
    v59 = MEMORY[0x277D84F90];
    ++v60;
    v56 = (v9 + 16);
LABEL_5:
    v29 = v68;
    while (1)
    {
      if (v28 == sub_21DBFA6DC())
      {
        v30 = *(TupleTypeMetadata2 - 8);
        (*(v30 + 56))(v29, 1, 1, TupleTypeMetadata2);
      }

      else
      {
        v31 = sub_21DBFA6AC();
        sub_21DBFA61C();
        if (v31)
        {
          v32 = *(TupleTypeMetadata2 - 8);
          (*(v32 + 16))(v29, a1 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28, TupleTypeMetadata2);
          v33 = __OFADD__(v28++, 1);
          if (v33)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v46 = sub_21DBFBF7C();
          v32 = *(TupleTypeMetadata2 - 8);
          if (*(v32 + 64) != 8)
          {
            goto LABEL_34;
          }

          v73 = v46;
          (*(v32 + 16))(v29, &v73, TupleTypeMetadata2);
          swift_unknownObjectRelease();
          v33 = __OFADD__(v28++, 1);
          if (v33)
          {
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
            return;
          }
        }

        v30 = v32;
        (*(v32 + 56))(v29, 0, 1, TupleTypeMetadata2);
        v26 = v69;
      }

      (*v66)(v22, v29, v67);
      if ((*(v30 + 48))(v22, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v34 = a1;
      v35 = *&v22[*(TupleTypeMetadata2 + 48)];
      v36 = v71;
      (*v65)(v71, v22, v26);
      sub_21D0D8CF0(0, &qword_280D17680);
      v37 = v26;
      v38 = [v35 accountID];
      v39 = [v70 accountID];
      v40 = sub_21DBFB63C();

      if ((v40 & 1) == 0)
      {
        (*v64)(v36, v37);

        a1 = v34;
        v26 = v37;
        goto LABEL_5;
      }

      type metadata accessor for TTRReminderEditor();
      v41 = v61;
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      static TTRReminderEditor.canMatch(reminder:to:now:)(v35, v63, v41, &v73);
      (*v60)(v41, v62);
      v42 = v73;
      a1 = v34;
      if (!v74)
      {

        sub_21D9D830C(v42, 0);
        v26 = v69;
        (*v64)(v71, v69);
        goto LABEL_5;
      }

      v29 = v68;
      v43 = v69;
      if (v74 == 1)
      {
        (*v56)(v57, v71, v69);
        v59 = sub_21DBFA74C();
        sub_21DBF8E0C();
        sub_21DBFA6FC();
        v44 = [v35 objectID];
        MEMORY[0x223D42D80]();
        if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v59 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v59 = v76;
        sub_21D3237F4(v42);

        sub_21D9D830C(v42, 1u);
        (*v64)(v71, v43);
        a1 = v34;
        v26 = v43;
      }

      else
      {
        (*v56)(v57, v71, v69);
        sub_21DBFA74C();
        sub_21DBFA6FC();
        v45 = [v35 objectID];
        MEMORY[0x223D42D80]();
        if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        (*v64)(v71, v43);
        v59 = v76;
        v26 = v43;
      }
    }

    v47 = v77;
    v73 = v77;
    sub_21DBFA74C();
    swift_getWitnessTable();
    v48 = sub_21DBFACFC();

    v49 = v75;
    if (v48)
    {

      v50 = v58;
      *v58 = 0u;
      v50[1] = 0u;
    }

    else
    {
      v51 = v58;
      v52 = v59;
      v53 = v70;
      *v58 = v70;
      v51[1] = v47;
      v51[2] = v52;
      v51[3] = v49;

      v54 = v53;
    }
  }

  else
  {
    *a3 = 0u;
    a3[1] = 0u;
  }
}

uint64_t sub_21DABE1E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = *a2;
  if (*a2 > 2u || *a2)
  {
    v8 = sub_21DBFC64C();

    if ((v8 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return result;
    }
  }

  else
  {
  }

  v18 = a1;
  MEMORY[0x28223BE20](result);
  v10 = *(v6 + 80);
  sub_21D0D8CF0(255, &qword_280D17860);
  swift_getTupleTypeMetadata2();
  v11 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_21D0E5014(sub_21DABF3C8, v17, v11, v10, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);
  v18 = a1;
  MEMORY[0x28223BE20](v14);
  v17[2] = v10;
  v15 = sub_21D0D8CF0(0, &qword_280D17880);
  result = sub_21D0E5014(sub_21DABF3E8, v17, v11, v15, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v16);
  *a3 = v7;
  a3[1] = v14;
  a3[2] = result;
  return result;
}

void TTRMoveRemindersToListPresenterCapability.showSmartListAddInfoAlertIfNeeded(_:)(void (*a1)(void))
{
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v2 = qword_280D1AA18;
  v3 = OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults;
  v4 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v4 || (v5 = sub_21DBFA12C(), v6 = [v4 BOOLForKey_], v5, (v6 & 1) == 0))
  {
    a1();
    v7 = *(v2 + v3);
    if (v7)
    {
      v8 = sub_21DBFA12C();
      [v7 setBool:1 forKey:v8];
    }
  }
}

id sub_21DABE5F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    result = [result objectID];
  }

  *a2 = result;
  return result;
}

void sub_21DABE63C(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a2)
  {
    v23 = a2;
    if (a3)
    {
      v11 = [v23 parentReminder];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 objectID];

        if (v13)
        {
          v14 = sub_21D1E21BC(v13, a4);

          if (v14)
          {
            sub_21D0D8CF0(255, &qword_280D17860);
            TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
            (*(*(TupleTypeMetadata2 - 8) + 56))(a6, 1, 1, TupleTypeMetadata2);

            return;
          }
        }
      }
    }

    sub_21D0D8CF0(255, &qword_280D17860);
    v16 = swift_getTupleTypeMetadata2();
    v17 = *(v16 + 48);
    (*(*(a5 - 8) + 16))(a6, a1, a5);
    *(a6 + v17) = v23;
    v18 = *(*(v16 - 8) + 56);
    v19 = a6;
    v20 = 0;
    v21 = v16;
  }

  else
  {
    sub_21D0D8CF0(255, &qword_280D17860);
    v22 = swift_getTupleTypeMetadata2();
    v18 = *(*(v22 - 8) + 56);
    v21 = v22;
    v19 = a6;
    v20 = 1;
  }

  v18(v19, v20, 1, v21);
}

uint64_t sub_21DABE8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21D0D8CF0(255, &qword_280D17860);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, TupleTypeMetadata2, v7);

  return (*(*(a2 - 8) + 32))(a3, v9, a2);
}

uint64_t sub_21DABE9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_21D0D8CF0(255, &qword_280D17860);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v14 - v8;
  (*(v10 + 16))(&v14 - v8, a1, TupleTypeMetadata2, v7);
  v11 = *&v9[*(TupleTypeMetadata2 + 48)];
  v12 = [v11 objectID];

  *a3 = v12;
  return (*(*(a2 - 8) + 8))(v9, a2);
}

uint64_t sub_21DABEB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a1;
  v17 = a5;
  v18 = a3;
  v19 = a4;
  v6 = sub_21DBFA74C();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66320);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_21D0E5014(sub_21DABF408, v16, v6, v7, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);
  v20 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66328);
  sub_21D0D8CF0(0, &qword_280D17880);
  v12 = sub_21DABF448();
  sub_21D183A0C();
  sub_21DBFA42C();
  v20 = a1;
  v24 = v10;
  v13 = swift_getWitnessTable();
  sub_21DBFC6EC();

  v24 = v26;
  v25 = v27;
  v20 = v6;
  v21 = v11;
  v22 = v13;
  v23 = v12;
  sub_21DBFBF5C();
  sub_21D0D8CF0(255, &qword_280D17860);
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  v14 = sub_21DBFA4EC();

  return v14;
}

uint64_t sub_21DABEE30(id *a1)
{
}

void *sub_21DABEE74(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21DABEEC4(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21DABEF38(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_21DABEFA0(id *a1)
{
}

void *sub_21DABEFEC(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  v6 = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t sub_21DABF044(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21DABF0D0(uint64_t a1, _OWORD *a2)
{
  *a1 = *a2;

  *(a1 + 16) = a2[1];

  return a1;
}

void *sub_21DABF158(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 2)
  {
    if (a5 == 1)
    {
      v6 = result;
      sub_21DBF8E0C();
    }

    else
    {
      if (a5)
      {
        return result;
      }

      v5 = result;
    }
  }

  sub_21DBF8E0C();

  return sub_21DBF8E0C();
}

void *sub_21DABF1FC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 2)
  {
    if (a5 == 1)
    {
    }

    else
    {
      if (a5)
      {
        return result;
      }
    }
  }
}

uint64_t sub_21DABF28C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_21DABF158(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t sub_21DABF2F0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_21DABF158(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  sub_21DABF1FC(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t sub_21DABF364(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  sub_21DABF1FC(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t sub_21DABF408@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 24))();
  *a1 = result;
  return result;
}

unint64_t sub_21DABF448()
{
  result = qword_27CE66330;
  if (!qword_27CE66330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE66328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66330);
  }

  return result;
}

uint64_t sub_21DABF4BC(uint64_t a1)
{
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE66320);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
}

uint64_t TTRDateBucketSectionHeaderTitleFormatterBase.init(locale:calendar:allowsRelativeDates:referenceDateForYearAndEra:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerRelativeDateFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateExcludingYearFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateIncludingYearFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___relativeDateFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___absoluteDateFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___yearFormatter) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___monthFormatter) = 0;
  v9 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_locale;
  v10 = sub_21DBF582C();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  v11 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar;
  v12 = sub_21DBF5A2C();
  (*(*(v12 - 8) + 32))(v4 + v11, a2, v12);
  *(v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates) = a3;
  sub_21D46CA8C(a4, v4 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra);
  return v4;
}

void TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v193) = a2;
  v174 = sub_21DBF4CAC();
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v179 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v172 = &v169 - v8;
  v177 = sub_21DBF580C();
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v175 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF40);
  MEMORY[0x28223BE20](v10 - 8);
  v178 = &v169 - v11;
  v12 = sub_21DBF509C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v195 = &v169 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v169 - v19;
  v21 = sub_21DBF563C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v193)
  {
    v25 = sub_21DAC0E60();
    if (v26)
    {
      v27 = 0;
      v28 = 0;
      v29 = 1;
      v30 = v26;
LABEL_75:
      *a3 = v25;
      *(a3 + 8) = v30;
      *(a3 + 16) = v27;
      *(a3 + 24) = v28;
      *(a3 + 32) = v29;
      return;
    }
  }

  v190 = a1;
  v180 = a3;
  v191 = v3;
  sub_21D0D3954(v3 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra, v20, &qword_27CE58D68);
  v31 = *(v22 + 48);
  v32 = v31(v20, 1, v21);
  v193 = v15;
  v183 = v12;
  v182 = v13;
  v192 = v21;
  v181 = v22;
  v194 = v24;
  if (v32 == 1)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    if (v31(v20, 1, v21) != 1)
    {
      sub_21D0CF7E0(v20, &qword_27CE58D68);
    }
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
  }

  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8);
  v33 = sub_21DBF5A0C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v188 = v36 + 2 * v35;
  v37 = v35;
  v185 = v35;
  v38 = swift_allocObject();
  v187 = xmmword_21DC08D20;
  *(v38 + 16) = xmmword_21DC08D20;
  v186 = *MEMORY[0x277CC9988];
  v39 = *(v34 + 104);
  v39(v38 + v36);
  v184 = *MEMORY[0x277CC9978];
  v39(v38 + v36 + v37);
  sub_21D1D0F50(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v40 = v191;
  sub_21DBF58DC();

  v171 = sub_21DBF4F7C();
  LOBYTE(v37) = v41;
  v170 = sub_21DBF4F2C();
  v43 = v42;
  v44 = swift_allocObject();
  *(v44 + 16) = v187;
  v45 = v44 + v36;
  (v39)(v45, v186, v33);
  (v39)(v45 + v185, v184, v33);
  sub_21D1D0F50(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v46 = v193;
  sub_21DBF58DC();

  v47 = sub_21DBF4F7C();
  v49 = v48;
  v50 = sub_21DBF4F2C();
  if (v37)
  {
    v52 = v192;
    if ((v49 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v52 = v192;
    if ((v49 & 1) != 0 || v171 != v47)
    {
      goto LABEL_20;
    }
  }

  if (v43)
  {
    if ((v51 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_18:
    v53 = sub_21DAC0CBC();
    v54 = sub_21DBF55BC();
    v55 = [v53 _attributedStringWithFieldsFromDate_];

    if (v55)
    {
      goto LABEL_21;
    }

    v56 = *(v40 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateExcludingYearFormatter);
    v57 = sub_21DBF55BC();
    v58 = [v56 stringFromDate_];
LABEL_33:
    v92 = v58;

    v93 = sub_21DBFA16C();
    v30 = v94;

    v95 = *(v182 + 8);
    v96 = v183;
    v95(v46, v183);
    v95(v195, v96);
    (*(v181 + 8))(v194, v52);
    v25 = v93;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    a3 = v180;
    goto LABEL_75;
  }

  if ((v51 & 1) == 0 && v170 == v50)
  {
    goto LABEL_18;
  }

LABEL_20:
  v59 = sub_21DAC0CD0();
  v60 = sub_21DBF55BC();
  v55 = [v59 _attributedStringWithFieldsFromDate_];

  if (!v55)
  {
    v56 = *(v40 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateIncludingYearFormatter);
    v57 = sub_21DBF55BC();
    v58 = [v56 stringFromDate_];
    goto LABEL_33;
  }

LABEL_21:
  v61 = v55;
  v62 = [v61 string];
  v63 = sub_21DBFA16C();
  v30 = v64;

  v65 = sub_21DBFA12C();
  v198 = MEMORY[0x277D84F90];
  v66 = [v61 string];
  v67 = sub_21DBFA16C();
  v69 = v68;

  v70 = MEMORY[0x223D42B30](v67, v69);

  v71 = swift_allocObject();
  v71[2] = sub_21DAC1CDC;
  v71[3] = 0;
  v71[4] = &v198;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_21D1A6510;
  *(v72 + 24) = v71;
  v204 = sub_21D24B3B4;
  v205 = v72;
  aBlock = MEMORY[0x277D85DD0];
  v201 = 1107296256;
  v202 = sub_21D1A6068;
  v203 = &block_descriptor_145;
  v73 = _Block_copy(&aBlock);

  [v61 enumerateAttribute:v65 inRange:0 options:v70 usingBlock:{0, v73}];

  _Block_release(v73);
  LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

  if (v70)
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v74 = v198;

  if (v74[2] != 1)
  {

    goto LABEL_51;
  }

  v75 = v74[4];
  v76 = v74[5];

  v198 = v75;
  v199 = v76;
  v77 = [v61 string];
  if (!v77)
  {
    sub_21DBFA16C();
    v77 = sub_21DBFA12C();
  }

  v78 = [objc_allocWithZone(MEMORY[0x277CCAB68]) initWithString_];

  v79 = v175;
  sub_21DBF581C();
  v80 = v178;
  sub_21DBF57DC();
  (*(v176 + 8))(v79, v177);
  v81 = sub_21DBF572C();
  v82 = *(v81 - 8);
  v83 = (*(v82 + 48))(v80, 1, v81);
  v84 = v179;
  if (v83 == 1)
  {
    sub_21D0CF7E0(v80, &qword_27CE5CF40);
    goto LABEL_27;
  }

  v97 = sub_21DBF571C();
  v99 = v98;
  (*(v82 + 8))(v80, v81);
  if (v97 == 24938 && v99 == 0xE200000000000000 || (sub_21DBFC64C() & 1) != 0 || v97 == 28523 && v99 == 0xE200000000000000)
  {
  }

  else
  {
    v168 = sub_21DBFC64C();

    if ((v168 & 1) == 0)
    {
LABEL_27:
      v85 = 0;
      v86 = v198;
      if (v198)
      {
LABEL_28:
        v87 = v199;
        v88 = v86 + v199;
        v89 = v78;
        if (v88 == [v89 length])
        {
          v90 = [v89 length];

          v91 = __OFSUB__(v90, v87);
          v28 = &v90[-v87];
          if (v91)
          {
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v27 = 0;
          goto LABEL_57;
        }

LABEL_51:
        v115 = *(v182 + 8);
        v116 = v183;
        v115(v193, v183);
        v115(v195, v116);
        (*(v181 + 8))(v194, v192);
        v27 = 0;
        v28 = 0;
        v29 = 1;
        a3 = v180;
        v25 = v63;
        goto LABEL_75;
      }

LABEL_56:
      v27 = v199;
      v120 = [v78 length];
      v28 = &v120[-v27];
      if (__OFSUB__(v120, v27))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

LABEL_57:
      v121 = v63;
      v190 = v78;
      if ((v85 & 1) == 0)
      {

        v196 = v27;
        v197 = v28;
        v122 = v198 == 0;
        v123 = 2 * (v198 != 0);
        v124 = swift_allocObject();
        *(v124 + 16) = v78;
        *(v124 + 24) = &unk_282EA6548;
        *(v124 + 32) = &v196;
        *(v124 + 40) = v122;
        *(v124 + 48) = &v198;
        v125 = swift_allocObject();
        *(v125 + 16) = sub_21DAC20D0;
        *(v125 + 24) = v124;
        v204 = sub_21D301E58;
        v205 = v125;
        aBlock = MEMORY[0x277D85DD0];
        v201 = 1107296256;
        v202 = sub_21D472CC4;
        v203 = &block_descriptor_12_7;
        v126 = _Block_copy(&aBlock);
        v127 = v78;

        [v61 enumerateAttributesInRange:v27 options:v28 usingBlock:{v123, v126}];
        _Block_release(v126);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        v121 = sub_21DBFA16C();
        v30 = v129;
        v27 = v196;
        v28 = v197;
        v84 = v179;
      }

      v191 = v121;
      v130 = sub_21DBFA12C();
      v131 = [v130 substringWithRange_];

      v132 = sub_21DBFA16C();
      v134 = v133;

      v135 = v198;
      if (v198)
      {
        v136 = sub_21DBF4BBC();
        MEMORY[0x28223BE20](v136);
        *(&v169 - 2) = v84;
        sub_21D3F7D48(sub_21D24B3BC, (&v169 - 4), v132, v134);
        if (v137)
        {

          v138 = 0;
          v139 = 0xE000000000000000;
          v140 = v84;
        }

        else
        {
          sub_21DBFA29C();
          v145 = sub_21DBFA3FC();
          v147 = v146;
          v149 = v148;
          v189 = v135;
          v150 = v84;
          v152 = v151;

          v138 = MEMORY[0x223D429B0](v145, v147, v149, v152);
          v139 = v153;

          v140 = v150;
          v135 = v189;
        }

        v154 = v174;
        v155 = v173;
      }

      else
      {
        v141 = v172;
        v142 = sub_21DBF4BBC();
        MEMORY[0x28223BE20](v142);
        *(&v169 - 2) = v141;
        v143 = sub_21D3F7414(sub_21D24B3BC, (&v169 - 4), v132, v134);
        if (v144)
        {

          v138 = 0;
          v139 = 0xE000000000000000;
        }

        else
        {
          v156 = sub_21D3F7BA8(v143, v132, v134);
          v158 = v157;
          v160 = v159;
          v162 = v161;

          v138 = MEMORY[0x223D429B0](v156, v158, v160, v162);
          v139 = v163;
        }

        v154 = v174;
        v155 = v173;
        v140 = v172;
      }

      (*(v155 + 8))(v140, v154);
      v164 = MEMORY[0x223D42B30](v138, v139);

      v165 = *(v182 + 8);
      v166 = v183;
      v165(v193, v183);
      v165(v195, v166);
      (*(v181 + 8))(v194, v192);
      v167 = &v28[-v164];
      if (!__OFSUB__(v28, v164))
      {
        a3 = v180;
        v25 = v191;
        if (v167 < 1)
        {
LABEL_74:
          v29 = 0;
          goto LABEL_75;
        }

        v91 = __OFSUB__(v28, v167);
        v28 = v164;
        if (!v91)
        {
          if (v135)
          {
            goto LABEL_74;
          }

          v91 = __OFADD__(v27, v167);
          v27 += v167;
          if (!v91)
          {
            goto LABEL_74;
          }

          goto LABEL_88;
        }

        goto LABEL_84;
      }

      goto LABEL_81;
    }
  }

  v100 = v198;
  v101 = v199;
  v102 = sub_21DBFA12C();
  v103 = sub_21DBFA12C();
  [v78 replaceOccurrencesOfString:v102 withString:v103 options:260 range:{v100 + v101, 1}];

  v104 = sub_21DBFA12C();
  v105 = sub_21DBFA12C();
  v106 = v100 - 1;
  v107 = v78;
  v108 = __OFSUB__(v100, 1);
  if (__OFSUB__(v100, 1))
  {
    goto LABEL_82;
  }

  v109 = v107;
  v110 = [v107 replaceOccurrencesOfString:v104 withString:v105 options:260 range:{v106 & ~(v106 >> 63), 1}];

  if (v110 == 1)
  {
    v100 = (v100 - 1);
    v198 = v106;
    v91 = __OFSUB__(v106--, 1);
    v108 = v91;
  }

  if (v108)
  {
    goto LABEL_83;
  }

  v78 = v109;
  v111 = [v109 substringWithRange_];
  v112 = sub_21DBFA16C();
  v114 = v113;

  if (v112 == 32 && v114 == 0xE100000000000000)
  {

    goto LABEL_55;
  }

  v117 = sub_21DBFC64C();

  if (v117)
  {
LABEL_55:
    v63 = sub_21DBFA16C();
    v30 = v119;
    v86 = v198;
    v85 = 1;
    if (v198)
    {
      goto LABEL_28;
    }

    goto LABEL_56;
  }

  v118 = sub_21DBFA12C();
  [v109 insertString:v118 atIndex:v100];

  if (!__OFADD__(v100, 1))
  {
    v198 = (v100 + 1);
    goto LABEL_55;
  }

LABEL_89:
  __break(1u);
}