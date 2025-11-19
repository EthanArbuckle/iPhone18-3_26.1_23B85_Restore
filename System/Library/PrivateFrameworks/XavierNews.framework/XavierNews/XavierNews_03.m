uint64_t sub_217EADAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EB5098(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EADB14(uint64_t a1)
{
  v2 = sub_217EB3BF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EADB50(uint64_t a1)
{
  v2 = sub_217EB3BF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EADB8C()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0x73746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x536D756D696E696DLL;
  }
}

uint64_t sub_217EADBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EB51BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EADC24(uint64_t a1)
{
  v2 = sub_217EB3D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EADC60(uint64_t a1)
{
  v2 = sub_217EB3D70();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_217EADC9C()
{
  v1 = 0x536D756D696E696DLL;
  v2 = 0x73746E657665;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217EADD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EB52DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EADD54(uint64_t a1)
{
  v2 = sub_217EB3C44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EADD90(uint64_t a1)
{
  v2 = sub_217EB3C44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EADDD4()
{
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](0);
  return sub_217F4B254();
}

uint64_t sub_217EADE18()
{
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](0);
  return sub_217F4B254();
}

uint64_t sub_217EADE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217F4B144();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217EADEFC(uint64_t a1)
{
  v2 = sub_217EB3DC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EADF38(uint64_t a1)
{
  v2 = sub_217EB3DC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.Outcome.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A20, &qword_217F4E4A8);
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v44 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A28, &qword_217F4E4B0);
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A30, &qword_217F4E4B8);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A38, &qword_217F4E4C0);
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v20 = v1[1];
  v47 = *v1;
  v21 = v1[3];
  v39 = v1[2];
  v40 = v20;
  v38 = v21;
  v22 = *(v1 + 32);
  v23 = a1[3];
  v24 = a1[4];
  v25 = a1;
  v27 = &v37 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v23);
  sub_217EB3BF0();
  sub_217F4B294();
  if (!v22)
  {
    LOBYTE(v51) = 0;
    sub_217EB3DC4();
    sub_217F4B004();
    v51 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A40, &qword_217F4E4C8);
    sub_217EB3C98();
    sub_217F4B0C4();
    (*(v41 + 8))(v16, v12);
    return (*(v49 + 8))(v27, v17);
  }

  if (v22 != 1)
  {
    LOBYTE(v51) = 2;
    sub_217EB3C44();
    v34 = v44;
    v28 = v17;
    sub_217F4B004();
    LOBYTE(v51) = 0;
    v30 = v46;
    v35 = v48;
    sub_217F4B0B4();
    if (v35)
    {
      v31 = *(v45 + 8);
      v32 = v34;
      goto LABEL_9;
    }

    LOBYTE(v51) = 1;
    sub_217F4B0B4();
    LOBYTE(v51) = 2;
    sub_217F4B0B4();
    v51 = v38;
    v50 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A40, &qword_217F4E4C8);
    sub_217EB3C98();
    sub_217F4B0C4();
    v31 = *(v45 + 8);
    v32 = v34;
LABEL_16:
    v36 = v30;
    goto LABEL_17;
  }

  LOBYTE(v51) = 1;
  sub_217EB3D70();
  v28 = v17;
  sub_217F4B004();
  LOBYTE(v51) = 0;
  v29 = v48;
  v30 = v43;
  sub_217F4B0B4();
  if (!v29)
  {
    LOBYTE(v51) = 1;
    sub_217F4B0B4();
    v51 = v39;
    v50 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A40, &qword_217F4E4C8);
    sub_217EB3C98();
    sub_217F4B0C4();
    v31 = *(v42 + 8);
    v32 = v11;
    goto LABEL_16;
  }

  v31 = *(v42 + 8);
  v32 = v11;
LABEL_9:
  v36 = v30;
LABEL_17:
  v31(v32, v36);
  return (*(v49 + 8))(v27, v28);
}

uint64_t ClusteringJournal.Result.Outcome.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A50, &qword_217F4E4D0);
  v56 = *(v58 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v58, v4);
  v59 = v50 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A58, &qword_217F4E4D8);
  v55 = *(v57 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v57, v7);
  v9 = v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A60, &qword_217F4E4E0);
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A68, &qword_217F4E4E8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v50 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_217EB3BF0();
  v23 = v60;
  sub_217F4B274();
  if (!v23)
  {
    v51 = v10;
    v52 = v9;
    v24 = v57;
    v25 = v58;
    v60 = v16;
    v26 = v20;
    v27 = sub_217F4AFE4();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 3) : (v30 = 1), v30))
    {
      v31 = sub_217F4AE04();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5270, &qword_217F4E290) + 48);
      *v33 = &type metadata for ClusteringJournal.Result.Outcome;
      sub_217F4AF04();
      sub_217F4ADE4();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v60 + 8))(v26, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      v50[1] = v27;
      if (v29)
      {
        if (v29 == 1)
        {
          LOBYTE(v63) = 1;
          sub_217EB3D70();
          sub_217F4AEF4();
          LOBYTE(v63) = 0;
          v35 = v24;
          v42 = sub_217F4AFB4();
          LOBYTE(v63) = 1;
          v43 = sub_217F4AFB4();
          v44 = v55;
          v54 = v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A40, &qword_217F4E4C8);
          v62 = 2;
          sub_217EB3E18();
          v46 = v52;
          sub_217F4AFC4();
          (*(v44 + 8))(v46, v35);
          (*(v60 + 8))(v26, v15);
          swift_unknownObjectRelease();
          v47 = 0;
          v48 = v63;
        }

        else
        {
          LOBYTE(v63) = 2;
          sub_217EB3C44();
          sub_217F4AEF4();
          LOBYTE(v63) = 0;
          v39 = sub_217F4AFB4();
          v40 = v60;
          v41 = v39;
          LOBYTE(v63) = 1;
          v54 = sub_217F4AFB4();
          LOBYTE(v63) = 2;
          v57 = sub_217F4AFB4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A40, &qword_217F4E4C8);
          v62 = 3;
          sub_217EB3E18();
          v49 = v59;
          sub_217F4AFC4();
          (*(v56 + 8))(v49, v25);
          (*(v40 + 8))(v26, v15);
          swift_unknownObjectRelease();
          v47 = v63;
          v48 = v57;
          v42 = v41;
        }

        v37 = v54;
      }

      else
      {
        LOBYTE(v63) = 0;
        sub_217EB3DC4();
        sub_217F4AEF4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A40, &qword_217F4E4C8);
        sub_217EB3E18();
        v36 = v51;
        sub_217F4AFC4();
        (*(v54 + 8))(v14, v36);
        (*(v60 + 8))(v26, v15);
        swift_unknownObjectRelease();
        v37 = 0;
        v48 = 0;
        v47 = 0;
        v42 = v63;
      }

      v38 = v53;
      *v53 = v42;
      v38[1] = v37;
      v38[2] = v48;
      v38[3] = v47;
      *(v38 + 32) = v29;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t ClusteringJournal.Result.group.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_217EB3EF0(v2, v3, v4);
}

uint64_t ClusteringJournal.Result.outcome.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 72);
  *(a1 + 32) = v6;
  return sub_217EB3F08(v2, v3, v4, v5, v6);
}

uint64_t ClusteringJournal.Result.requirements.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v4 = *(v1 + 144);
  v10 = *(v1 + 128);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 160);
  v6 = *(v1 + 96);
  v9[0] = *(v1 + 80);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_217EB2C48(v9, v8);
}

uint64_t sub_217EAEDC4()
{
  v1 = 0x70756F7267;
  v2 = 0x6D65726975716572;
  if (*v0 != 2)
  {
    v2 = 0x74616469646E6163;
  }

  if (*v0)
  {
    v1 = 0x656D6F6374756FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217EAEE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EB5450(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EAEE7C(uint64_t a1)
{
  v2 = sub_217EB3F70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EAEEB8(uint64_t a1)
{
  v2 = sub_217EB3F70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.Result.deinit()
{
  sub_217EB3F30(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_217EB3F48(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 88);
  v2 = *(v0 + 136);
  v3 = *(v0 + 160);

  v4 = *(v0 + 168);

  return v0;
}

uint64_t ClusteringJournal.Result.__deallocating_deinit()
{
  sub_217EB3F30(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_217EB3F48(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = *(v0 + 88);
  v2 = *(v0 + 136);
  v3 = *(v0 + 160);

  v4 = *(v0 + 168);

  return swift_deallocClassInstance();
}

uint64_t ClusteringJournal.Result.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A80, &qword_217F4E4F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v23[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB3F70();
  sub_217F4B294();
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  *&v34 = *(v3 + 16);
  *(&v34 + 1) = v12;
  LOBYTE(v35) = v13;
  LOBYTE(v28) = 0;
  sub_217EB3EF0(v34, v12, v13);
  sub_217EB3FC4();
  sub_217F4B0C4();
  sub_217EB3F30(v34, *(&v34 + 1), v35);
  if (!v2)
  {
    v14 = *(v3 + 48);
    v15 = *(v3 + 56);
    v16 = *(v3 + 64);
    v17 = *(v3 + 72);
    v41 = *(v3 + 40);
    v42 = v14;
    v43 = v15;
    v44 = v16;
    v45 = v17;
    v40 = 1;
    sub_217EB3F08(v41, v14, v15, v16, v17);
    sub_217EB4018();
    sub_217F4B0C4();
    sub_217EB3F48(v41, v42, v43, v44, v45);
    v18 = *(v3 + 128);
    v19 = *(v3 + 96);
    v36 = *(v3 + 112);
    v37 = v18;
    v20 = *(v3 + 128);
    v38 = *(v3 + 144);
    v21 = *(v3 + 96);
    v34 = *(v3 + 80);
    v35 = v21;
    v30 = v36;
    v31 = v20;
    v32 = *(v3 + 144);
    v39 = *(v3 + 160);
    v33 = *(v3 + 160);
    v28 = v34;
    v29 = v19;
    v27 = 2;
    sub_217EB2C48(&v34, v25);
    sub_217EB406C();
    sub_217F4B0C4();
    v25[2] = v30;
    v25[3] = v31;
    v25[4] = v32;
    v26 = v33;
    v25[0] = v28;
    v25[1] = v29;
    sub_217EB2C80(v25);
    v24 = *(v3 + 168);
    v23[7] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A88, &qword_217F4E4F8);
    sub_217EB40C0();
    sub_217F4B054();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t ClusteringJournal.Result.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ClusteringJournal.Result.init(from:)(a1);
  return v2;
}

uint64_t *ClusteringJournal.Result.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A90, &unk_217F4E500);
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v22, v7);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB3F70();
  sub_217F4B274();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    v19 = a1;
  }

  else
  {
    v11 = v5;
    LOBYTE(v23) = 0;
    sub_217EB41A0();
    v12 = v22;
    sub_217F4AFC4();
    v13 = v25;
    *(v1 + 1) = v24;
    *(v1 + 32) = v13;
    LOBYTE(v23) = 1;
    sub_217EB41F4();
    sub_217F4AFC4();
    v14 = v26;
    v15 = v25;
    *(v1 + 5) = v24;
    *(v1 + 7) = v15;
    *(v1 + 72) = v14;
    v31 = 2;
    sub_217EB4248();
    sub_217F4AFC4();
    v21 = a1;
    v16 = v27;
    *(v1 + 7) = v26;
    *(v1 + 8) = v16;
    *(v1 + 9) = v28;
    v1[20] = v29;
    v17 = v25;
    *(v1 + 5) = v24;
    *(v1 + 6) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5A88, &qword_217F4E4F8);
    v30 = 3;
    sub_217EB429C();
    sub_217F4AF54();
    (*(v11 + 8))(v9, v12);
    v1[21] = v23;
    v19 = v21;
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v1;
}

uint64_t *sub_217EAF708@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ClusteringJournal.Result.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t ClusteringJournal.inventory.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 144);
}

uint64_t ClusteringJournal.inventory.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = v2;
}

uint64_t ClusteringJournal.results.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
}

uint64_t ClusteringJournal.results.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 152);
  *(v1 + 152) = a1;
}

uint64_t ClusteringJournal.configuration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 160), 0x780uLL);
  memcpy(a1, (v1 + 160), 0x780uLL);
  return sub_217EB4358(__dst, v4);
}

uint64_t ClusteringJournal.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10XavierNews17ClusteringJournal_date;
  v4 = sub_217F4A9F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

Swift::Void __swiftcall ClusteringJournal.startedBuildingCandidateGroups()()
{
  if (*(v0 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode) != 2)
  {
    swift_beginAccess();
    if (*(v0 + 16))
    {
      v1 = qword_280C28808;

      if (v1 != -1)
      {
        swift_once();
      }

      sub_217F4AD34();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_217F4BC20;
      type metadata accessor for ClusteringJournal.Result();
      v3 = MEMORY[0x277D837D0];
      v4 = sub_217F4AA74();
      v6 = v5;

      *(v2 + 56) = v3;
      *(v2 + 64) = sub_217E86438();
      *(v2 + 32) = v4;
      *(v2 + 40) = v6;
      sub_217F4AA44();
    }

    else
    {
      *(v0 + 16) = MEMORY[0x277D84F98];
    }
  }
}

Swift::Void __swiftcall ClusteringJournal.finishedBuildingCandidateGroups(selectedTag:)(Swift::String selectedTag)
{
  v2 = OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode;
  if (*(v1 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode) != 2)
  {
    object = selectedTag._object;
    countAndFlagsBits = selectedTag._countAndFlagsBits;
    swift_beginAccess();
    v5 = *(v1 + 16);
    if (!v5)
    {
      if (qword_280C28808 != -1)
      {
        swift_once();
      }

      sub_217F4AD34();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_217F4BC20;
      *(v18 + 56) = MEMORY[0x277D837D0];
      *(v18 + 64) = sub_217E86438();
      *(v18 + 32) = countAndFlagsBits;
      *(v18 + 40) = object;

      sub_217F4AA44();
      goto LABEL_19;
    }

    v6 = *(v5 + 16);
    v7 = *(v1 + 16);

    if (!v6 || (v41 = v1, v8 = sub_217E8E88C(countAndFlagsBits, object), (v9 & 1) == 0))
    {
      if (qword_280C28808 != -1)
      {
        swift_once();
      }

      sub_217F4AD34();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_217F4C8A0;
      v13 = MEMORY[0x277D837D0];
      *(v12 + 56) = MEMORY[0x277D837D0];
      v14 = sub_217E86438();
      *(v12 + 64) = v14;
      *(v12 + 32) = countAndFlagsBits;
      *(v12 + 40) = object;
      type metadata accessor for ClusteringJournal.Result();

      v15 = sub_217F4AA74();
      v17 = v16;

      *(v12 + 96) = v13;
      *(v12 + 104) = v14;
      *(v12 + 72) = v15;
      *(v12 + 80) = v17;
      sub_217F4AA44();
      goto LABEL_19;
    }

    v10 = *(*(v5 + 56) + 8 * v8);
    v11 = *(v1 + v2);
    if (v11 == 2)
    {
    }

    else
    {

      if (v11)
      {

        v40 = sub_217EB5708(v5, countAndFlagsBits, object);

LABEL_16:
        v19 = *(v10 + 16);
        v20 = *(v10 + 24);
        v21 = *(v10 + 40);
        v22 = *(v10 + 48);
        v23 = *(v10 + 64);
        v39 = *(v10 + 56);
        v24 = *(v10 + 32);
        v25 = *(v10 + 112);
        v26 = *(v10 + 144);
        v27 = *(v10 + 72);
        v46 = *(v10 + 128);
        v47 = v26;
        v48 = *(v10 + 160);
        v28 = *(v10 + 96);
        v43 = *(v10 + 80);
        v44 = v28;
        v45 = v25;
        type metadata accessor for ClusteringJournal.Result();
        v29 = swift_allocObject();
        v30 = v46;
        v31 = v47;
        v32 = v44;
        *(v29 + 112) = v45;
        *(v29 + 128) = v30;
        *(v29 + 16) = v19;
        *(v29 + 24) = v20;
        *(v29 + 32) = v24;
        *(v29 + 40) = v21;
        *(v29 + 48) = v22;
        *(v29 + 56) = v39;
        *(v29 + 64) = v23;
        *(v29 + 72) = v27;
        *(v29 + 144) = v31;
        v33 = v48;
        *(v29 + 80) = v43;
        *(v29 + 96) = v32;
        *(v29 + 160) = v33;
        *(v29 + 168) = v40;
        swift_beginAccess();
        sub_217EB3EF0(v19, v20, v24);
        sub_217EB3F08(v21, v22, v39, v23, v27);
        v34 = sub_217EB2C48(&v43, v42);
        MEMORY[0x21CEAEB90](v34);
        v35 = v41;
        if (*((*(v41 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v41 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v38 = *((*(v41 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_217F4AC34();
          v35 = v41;
        }

        v36 = v35;
        sub_217F4AC64();
        swift_endAccess();

        v37 = *(v36 + 16);
        *(v36 + 16) = 0;
LABEL_19:

        return;
      }
    }

    v40 = 0;
    goto LABEL_16;
  }
}

Swift::Void __swiftcall ClusteringJournal.failedToFindCandidateGroup()()
{
  if (*(v0 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode) != 2)
  {
    swift_beginAccess();
    v1 = *(v0 + 16);
    *(v0 + 16) = 0;
  }
}

uint64_t ClusteringJournal.startedClustering(group:)(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode) != 2)
  {
    v3 = *result;
    v2 = *(result + 8);
    v4 = *(result + 16);
    v6 = *(v1 + 24);
    v5 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (v7 == 255)
    {
      *(v1 + 24) = v3;
      *(v1 + 32) = v2;
      *(v1 + 40) = v4;
      sub_217EB3EF0(v3, v2, v4);
      sub_217EB58D4(v6, v5, 0xFFu);
      swift_beginAccess();
      v11 = *(v1 + 48);
      *(v1 + 48) = MEMORY[0x277D84F90];
    }

    else
    {
      sub_217EB3EF0(*(v1 + 24), *(v1 + 32), *(v1 + 40));
      if (qword_280C28808 != -1)
      {
        swift_once();
      }

      sub_217F4AD34();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_217F4C8A0;
      sub_217F4AE54();
      v9 = MEMORY[0x277D837D0];
      *(v8 + 56) = MEMORY[0x277D837D0];
      v10 = sub_217E86438();
      *(v8 + 64) = v10;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0xE000000000000000;
      sub_217F4AE54();
      sub_217EB58D4(v6, v5, v7);
      *(v8 + 96) = v9;
      *(v8 + 104) = v10;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0xE000000000000000;
      sub_217F4AA44();
    }
  }

  return result;
}

uint64_t ClusteringJournal.set(clusteringRequirements:)(uint64_t result)
{
  v2 = *(result + 48);
  v42 = *(result + 32);
  v43 = v2;
  v44 = *(result + 64);
  v45 = *(result + 80);
  v3 = *(result + 16);
  v40 = *result;
  v41 = v3;
  if (*(v1 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode) != 2)
  {
    v4 = *(v1 + 56);
    v5 = *(v1 + 104);
    v31 = *(v1 + 88);
    v32 = v5;
    v33 = *(v1 + 120);
    v34 = *(v1 + 136);
    v6 = *(v1 + 72);
    v30[0] = v4;
    v30[1] = v6;
    v7 = *(&v4 + 1);
    v39 = v34;
    v37 = v5;
    v38 = v33;
    v35 = v6;
    v36 = v31;
    if (*(&v4 + 1))
    {
      v17 = v4;
      v8 = *(v1 + 104);
      v26 = *(v1 + 88);
      v27 = v8;
      v28 = *(v1 + 120);
      v29 = *(v1 + 136);
      v9 = *(v1 + 72);
      v24 = *(v1 + 56);
      v25 = v9;
      sub_217EB2C48(&v24, &v18);
      if (qword_280C28808 != -1)
      {
        swift_once();
      }

      sub_217F4AD34();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_217F4C8A0;
      v20 = v42;
      v21 = v43;
      v22 = v44;
      v23 = v45;
      v18 = v40;
      v19 = v41;
      sub_217F4AE54();
      v11 = MEMORY[0x277D837D0];
      *(v10 + 56) = MEMORY[0x277D837D0];
      v12 = sub_217E86438();
      *(v10 + 64) = v12;
      *(v10 + 32) = 0;
      *(v10 + 40) = 0xE000000000000000;
      *&v18 = v17;
      *(&v18 + 1) = v7;
      v21 = v37;
      v22 = v38;
      v23 = v39;
      v19 = v35;
      v20 = v36;
      sub_217F4AE54();
      sub_217EB58E8(v30);
      *(v10 + 96) = v11;
      *(v10 + 104) = v12;
      *(v10 + 72) = 0;
      *(v10 + 80) = 0xE000000000000000;
      sub_217F4AA44();
    }

    else
    {
      v13 = *(v1 + 104);
      v26 = *(v1 + 88);
      v27 = v13;
      v28 = *(v1 + 120);
      v14 = *(v1 + 72);
      v24 = *(v1 + 56);
      v25 = v14;
      v15 = *(result + 48);
      *(v1 + 88) = *(result + 32);
      *(v1 + 104) = v15;
      *(v1 + 120) = *(result + 64);
      v16 = *(result + 16);
      *(v1 + 56) = *result;
      v29 = *(v1 + 136);
      *(v1 + 136) = *(result + 80);
      *(v1 + 72) = v16;
      sub_217EB2C48(&v40, &v18);
      return sub_217EB58E8(&v24);
    }
  }

  return result;
}

uint64_t ClusteringJournal.record(event:)(uint64_t result)
{
  v2 = *(result + 32);
  v3 = *(result + 48);
  v4 = *result;
  v16 = *(result + 16);
  v17 = v2;
  v18 = v3;
  v19 = *(result + 64);
  v15 = v4;
  if (*(v1 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode) != 2)
  {
    swift_beginAccess();
    if (*(v1 + 48))
    {
      swift_beginAccess();
      v5 = *(v1 + 48);
      sub_217EB5950(&v15, &v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 48) = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_217E8DC24(0, *(v5 + 2) + 1, 1, v5);
        *(v1 + 48) = v5;
      }

      v8 = *(v5 + 2);
      v7 = *(v5 + 3);
      if (v8 >= v7 >> 1)
      {
        v5 = sub_217E8DC24((v7 > 1), v8 + 1, 1, v5);
      }

      *(v5 + 2) = v8 + 1;
      v9 = &v5[72 * v8];
      *(v9 + 2) = v15;
      v10 = v16;
      v11 = v17;
      v12 = v18;
      v9[96] = v19;
      *(v9 + 4) = v11;
      *(v9 + 5) = v12;
      *(v9 + 3) = v10;
      *(v1 + 48) = v5;
      return swift_endAccess();
    }

    else
    {
      if (qword_280C28808 != -1)
      {
        swift_once();
      }

      sub_217F4AD34();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_217F4BC20;
      sub_217F4AE54();
      *(v13 + 56) = MEMORY[0x277D837D0];
      *(v13 + 64) = sub_217E86438();
      *(v13 + 32) = 0;
      *(v13 + 40) = 0xE000000000000000;
      sub_217F4AA44();
    }
  }

  return result;
}

uint64_t sub_217EB06FC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode) != 2)
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 40);
    if (v3 == 255)
    {
      if (qword_280C28808 != -1)
      {
        swift_once();
      }

      sub_217F4AD34();

      return sub_217F4AA44();
    }

    else
    {
      v5 = *result;
      v4 = *(result + 8);
      v6 = *(result + 16);
      v7 = *(result + 24);
      v8 = *(result + 32);
      v9 = *(v1 + 32);
      v10 = *(v1 + 56);
      v11 = *(v1 + 104);
      v63 = *(v1 + 88);
      v64 = v11;
      v65 = *(v1 + 120);
      v66 = *(v1 + 136);
      v12 = *(v1 + 72);
      v62[0] = v10;
      v62[1] = v12;
      v13 = v10;
      v71 = v66;
      v69 = v11;
      v70 = v65;
      v67 = v12;
      v68 = v63;
      if (*(&v10 + 1))
      {
        v52 = v5;
        v53 = v4;
        v54 = v6;
        swift_beginAccess();
        v14 = *(v1 + 16);
        if (v14)
        {
          if (v3 == 1)
          {
            v22 = *(v14 + 16);
            sub_217EB9F48(v2, v9, 1u);
            sub_217EB9F48(v2, v9, 1u);
            if (v22)
            {
              sub_217EB9F5C(v62, &v55);
              sub_217E8E88C(v2, v9);
              if (v23)
              {
                sub_217EB58D4(v2, v9, 1u);
                sub_217EB58E8(v62);
                if (qword_280C28808 == -1)
                {
LABEL_27:
                  sub_217F4AD34();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
                  v24 = swift_allocObject();
                  *(v24 + 16) = xmmword_217F4BC20;
                  *(v24 + 56) = MEMORY[0x277D837D0];
                  *(v24 + 64) = sub_217E86438();
                  *(v24 + 32) = v2;
                  *(v24 + 40) = v9;
                  sub_217F4AA44();

LABEL_42:
                  v45 = *(v1 + 24);
                  v46 = *(v1 + 32);
                  *(v1 + 24) = 0;
                  *(v1 + 32) = 0;
                  v47 = *(v1 + 40);
                  *(v1 + 40) = -1;
                  sub_217EB58D4(v45, v46, v47);
                  swift_beginAccess();
                  v48 = *(v1 + 48);
                  *(v1 + 48) = 0;

                  v49 = *(v1 + 104);
                  v57 = *(v1 + 88);
                  v58 = v49;
                  v59 = *(v1 + 120);
                  v60 = *(v1 + 136);
                  v50 = *(v1 + 72);
                  v55 = *(v1 + 56);
                  v56 = v50;
                  *(v1 + 56) = 0u;
                  *(v1 + 72) = 0u;
                  *(v1 + 88) = 0u;
                  *(v1 + 104) = 0u;
                  *(v1 + 120) = 0u;
                  *(v1 + 136) = 0;
                  return sub_217EB58E8(&v55);
                }

LABEL_44:
                swift_once();
                goto LABEL_27;
              }
            }

            else
            {
              sub_217EB9F5C(v62, &v55);
            }

            type metadata accessor for ClusteringJournal.Result();
            v36 = swift_allocObject();
            *(v36 + 16) = v2;
            *(v36 + 24) = v9;
            *(v36 + 32) = 1;
            *(v36 + 40) = v52;
            *(v36 + 48) = v53;
            *(v36 + 56) = v54;
            *(v36 + 64) = v7;
            *(v36 + 72) = v8;
            *(v36 + 80) = v13;
            v37 = v70;
            *(v36 + 128) = v69;
            *(v36 + 144) = v37;
            v38 = v71;
            v39 = v68;
            *(v36 + 96) = v67;
            *(v36 + 112) = v39;
            *(v36 + 160) = v38;
            *(v36 + 168) = 0;
            swift_beginAccess();
            if (*(v1 + 16))
            {
              sub_217EB3F08(v52, v53, v54, v7, v8);

              v40 = *(v1 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v61 = *(v1 + 16);
              *(v1 + 16) = 0x8000000000000000;
              v32 = v1;
              sub_217F19CD8(v36, v2, v9, isUniquelyReferenced_nonNull_native);
              v33 = v2;
              v34 = v9;
              v35 = 1;
              goto LABEL_38;
            }

            swift_endAccess();
            sub_217EB3F08(v52, v53, v54, v7, v8);

            v42 = v2;
            v43 = v9;
            v44 = 1;
LABEL_41:
            sub_217EB58D4(v42, v43, v44);
            goto LABEL_42;
          }

          if (!v3)
          {
            v15 = *(v14 + 16);
            sub_217EB9F48(v2, v9, 0);
            sub_217EB9F48(v2, v9, 0);
            if (v15)
            {
              sub_217EB9F5C(v62, &v55);
              sub_217E8E88C(v2, v9);
              if (v16)
              {
                sub_217EB58D4(v2, v9, 0);
                sub_217EB58E8(v62);
                if (qword_280C28808 == -1)
                {
                  goto LABEL_27;
                }

                goto LABEL_44;
              }
            }

            else
            {
              sub_217EB9F5C(v62, &v55);
            }

            type metadata accessor for ClusteringJournal.Result();
            v26 = swift_allocObject();
            *(v26 + 16) = v2;
            *(v26 + 24) = v9;
            *(v26 + 32) = 0;
            *(v26 + 40) = v52;
            *(v26 + 48) = v53;
            *(v26 + 56) = v54;
            *(v26 + 64) = v7;
            *(v26 + 72) = v8;
            *(v26 + 80) = v13;
            v27 = v70;
            *(v26 + 128) = v69;
            *(v26 + 144) = v27;
            v28 = v71;
            v29 = v68;
            *(v26 + 96) = v67;
            *(v26 + 112) = v29;
            *(v26 + 160) = v28;
            *(v26 + 168) = 0;
            swift_beginAccess();
            if (*(v1 + 16))
            {
              sub_217EB3F08(v52, v53, v54, v7, v8);

              v30 = *(v1 + 16);
              v31 = swift_isUniquelyReferenced_nonNull_native();
              v61 = *(v1 + 16);
              *(v1 + 16) = 0x8000000000000000;
              v32 = v1;
              sub_217F19CD8(v26, v2, v9, v31);
              v33 = v2;
              v34 = v9;
              v35 = 0;
LABEL_38:
              sub_217EB58D4(v33, v34, v35);
              *(v32 + 16) = v61;
              swift_endAccess();

              goto LABEL_42;
            }

            swift_endAccess();
            sub_217EB3F08(v52, v53, v54, v7, v8);

            v42 = v2;
            v43 = v9;
            v44 = 0;
            goto LABEL_41;
          }

          sub_217EB9F48(v2, v9, v3);
          if (qword_280C28808 == -1)
          {
LABEL_31:
            sub_217F4AD34();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
            v25 = swift_allocObject();
            *(v25 + 16) = xmmword_217F4BC20;
            *&v55 = v2;
            *(&v55 + 1) = v9;
            LOBYTE(v56) = v3;
            sub_217F4AE54();
            sub_217EB58D4(v2, v9, v3);
            *(v25 + 56) = MEMORY[0x277D837D0];
            *(v25 + 64) = sub_217E86438();
            *(v25 + 32) = 0;
            *(v25 + 40) = 0xE000000000000000;
            sub_217F4AA44();
          }

LABEL_43:
          swift_once();
          goto LABEL_31;
        }

        if (v3 != 2 || v9 | v2)
        {
          sub_217EB9F48(v2, v9, v3);
          if (qword_280C28808 == -1)
          {
            goto LABEL_31;
          }

          goto LABEL_43;
        }

        type metadata accessor for ClusteringJournal.Result();
        v17 = swift_allocObject();
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        *(v17 + 32) = 2;
        *(v17 + 40) = v52;
        *(v17 + 48) = v53;
        *(v17 + 56) = v54;
        *(v17 + 64) = v7;
        *(v17 + 72) = v8;
        *(v17 + 80) = v13;
        v18 = v70;
        *(v17 + 128) = v69;
        *(v17 + 144) = v18;
        v19 = v71;
        v20 = v68;
        *(v17 + 96) = v67;
        *(v17 + 112) = v20;
        *(v17 + 160) = v19;
        *(v17 + 168) = 0;
        swift_beginAccess();
        sub_217EB9F48(0, 0, 2u);
        sub_217EB9F48(0, 0, 2u);
        sub_217EB9F5C(v62, &v55);
        v21 = sub_217EB3F08(v52, v53, v54, v7, v8);
        MEMORY[0x21CEAEB90](v21);
        if (*((*(v1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v51 = *((*(v1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_217F4AC34();
        }

        sub_217F4AC64();
        return swift_endAccess();
      }

      else
      {
        if (qword_280C28808 != -1)
        {
          swift_once();
        }

        sub_217F4AD34();
        return sub_217F4AA44();
      }
    }
  }

  return result;
}

Swift::Void __swiftcall ClusteringJournal.failedClustering(availableHeadlineCount:requiredHeadlineCount:)(Swift::Int availableHeadlineCount, Swift::Int requiredHeadlineCount)
{
  if (*(v2 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode) != 2)
  {
    swift_beginAccess();
    v5 = *(v2 + 48);
    if (v5)
    {
      v6 = requiredHeadlineCount;
      v7 = availableHeadlineCount;
      v8 = v5;
      v9 = 0;
      v10 = 1;

      sub_217EB06FC(&v6);
      sub_217EB3F48(v6, v7, v8, v9, v10);
    }

    else
    {
      if (qword_280C28808 != -1)
      {
        swift_once();
      }

      sub_217F4AD34();
      sub_217F4AA44();
    }
  }
}

Swift::Void __swiftcall ClusteringJournal.failedClustering(availableHeadlineCount:rejectedHeadlineCount:requiredHeadlineCount:)(Swift::Int availableHeadlineCount, Swift::Int rejectedHeadlineCount, Swift::Int requiredHeadlineCount)
{
  if (*(v3 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode) != 2)
  {
    swift_beginAccess();
    v7 = *(v3 + 48);
    if (v7)
    {
      v8 = requiredHeadlineCount;
      v9 = availableHeadlineCount;
      v10 = rejectedHeadlineCount;
      v11 = v7;
      v12 = 2;

      sub_217EB06FC(&v8);
      sub_217EB3F48(v8, v9, v10, v11, v12);
    }

    else
    {
      if (qword_280C28808 != -1)
      {
        swift_once();
      }

      sub_217F4AD34();
      sub_217F4AA44();
    }
  }
}

Swift::Void __swiftcall ClusteringJournal.finishedClustering()()
{
  if (*(v0 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode) != 2)
  {
    swift_beginAccess();
    if (*(v0 + 48))
    {
      v1 = *(v0 + 48);
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;

      sub_217EB06FC(&v1);
      sub_217EB3F48(v1, v2, v3, v4, v5);
    }

    else
    {
      if (qword_280C28808 != -1)
      {
        swift_once();
      }

      sub_217F4AD34();
      sub_217F4AA44();
    }
  }
}

uint64_t sub_217EB13E0()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217EB1428()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217EB146C()
{
  v1 = *v0;
  v2 = 0x73746C75736572;
  v3 = 0x726F746E65766E69;
  v4 = 1701080941;
  if (v1 != 3)
  {
    v4 = 0x72756769666E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1702125924;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217EB1508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217EB9D14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EB1548(uint64_t a1)
{
  v2 = sub_217EB5988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EB1584(uint64_t a1)
{
  v2 = sub_217EB5988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClusteringJournal.__allocating_init(headlines:tags:mode:configuration:)(uint64_t a1, uint64_t a2, _BYTE *a3, const void *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  LOBYTE(a3) = *a3;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = 0;
  *(v11 + 40) = -1;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  *(v11 + 152) = MEMORY[0x277D84F90];
  sub_217F4A9E4();
  sub_217EA4F00(a1, a2, &v13);
  *(v11 + 144) = v13;
  *(v11 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode) = a3;
  memcpy((v11 + 160), a4, 0x780uLL);
  return v11;
}

uint64_t ClusteringJournal.init(headlines:tags:mode:configuration:)(uint64_t a1, uint64_t a2, _BYTE *a3, const void *a4)
{
  v9 = sub_217F4A9F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a3) = *a3;
  memcpy(v18, a4, sizeof(v18));
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  *(v4 + 40) = -1;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 152) = MEMORY[0x277D84F90];
  sub_217F4A9E4();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_date, v14, v9);
  sub_217EA4F00(a1, a2, &v17);
  *(v4 + 144) = v17;
  *(v4 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode) = a3;
  memcpy((v4 + 160), v18, 0x780uLL);
  return v4;
}

uint64_t ClusteringJournal.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ClusteringJournal.init(from:)(a1);
  return v5;
}

uint64_t *ClusteringJournal.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v40 = *v3;
  v41 = v2;
  v5 = sub_217F4A9F4();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5AC8, &qword_217F4E518);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v36 - v14;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = 0;
  *(v3 + 40) = -1;
  v3[19] = MEMORY[0x277D84F90];
  v42 = v3 + 19;
  v43 = a1;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EB5988();
  v17 = v41;
  sub_217F4B274();
  if (v17)
  {
    v18 = v42;
    v27 = v3[2];

    sub_217EB58D4(v3[3], v3[4], *(v3 + 40));
    v28 = v3[6];

    v29 = *(v3 + 13);
    v44[2] = *(v3 + 11);
    v44[3] = v29;
    v44[4] = *(v3 + 15);
    *&v44[5] = v3[17];
    v30 = *(v3 + 9);
    v44[0] = *(v3 + 7);
    v44[1] = v30;
    sub_217EB58E8(v44);
    v31 = *v18;

    v32 = *(*v3 + 48);
    v33 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5AD0, &qword_217F4E520);
    v46 = 0;
    sub_217EB59DC(&qword_27CBF5AD8, &qword_27CBF5AB8);
    sub_217F4AFC4();
    v19 = *&v44[0];
    v41 = v15;
    v20 = v10;
    v21 = v42;
    swift_beginAccess();
    v22 = *v21;
    *v21 = v19;

    LOBYTE(v44[0]) = 1;
    sub_217EB5B74(&qword_27CBF5220, 255, MEMORY[0x277CC9578]);
    v23 = v39;
    v37 = v20;
    sub_217F4AFC4();
    (*(v38 + 32))(v3 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_date, v9, v23);
    v45 = 2;
    sub_217EB5A78();
    v24 = v37;
    sub_217F4AF54();
    v25 = v47;
    if (!v47)
    {
      sub_217EA4F00(MEMORY[0x277D84F90], MEMORY[0x277D84F90], v44);
      v25 = *&v44[0];
    }

    v26 = v41;
    v3[18] = v25;
    LOBYTE(v47) = 3;
    sub_217EB5ACC();
    sub_217F4AF54();
    v35 = v44[0];
    if (LOBYTE(v44[0]) == 3)
    {
      v35 = 2;
    }

    *(v3 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode) = v35;
    LOBYTE(v47) = 4;
    sub_217EB5B20();
    sub_217F4AFC4();
    (*(v11 + 8))(v26, v24);
    memcpy(v3 + 20, v44, 0x780uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v43);
  return v3;
}

uint64_t ClusteringJournal.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = MEMORY[0x28223BE20](a1, a2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5AF8, &qword_217F4E528);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v15[-v10 - 8];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_217EB5988();
  sub_217F4B294();
  swift_beginAccess();
  v17[0] = v4[19];
  v16[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5AD0, &qword_217F4E520);
  sub_217EB59DC(&qword_280C276B8, &qword_280C28AE0);
  sub_217F4B0C4();
  if (!v3)
  {
    LOBYTE(v17[0]) = 1;
    sub_217F4A9F4();
    sub_217EB5B74(qword_280C28FC8, 255, MEMORY[0x277CC9578]);
    sub_217F4B0C4();
    swift_beginAccess();
    v17[0] = v4[18];
    v16[0] = 2;
    sub_217EB5BBC();

    sub_217F4B0C4();

    v19 = *(v4 + OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode);
    v18 = 3;
    sub_217EB5C10();
    sub_217F4B0C4();
    memcpy(v17, v4 + 20, sizeof(v17));
    memcpy(v16, v4 + 20, sizeof(v16));
    v15[1927] = 4;
    sub_217EB4358(v17, v15);
    sub_217EB5C64();
    sub_217F4B0C4();
    memcpy(v15, v16, 0x780uLL);
    sub_217EB5CB8(v15);
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t ClusteringJournal.deinit()
{
  v1 = *(v0 + 16);

  sub_217EB58D4(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 48);

  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v15 = *(v0 + 136);
  v14 = *(v0 + 120);
  sub_217EB5D0C(*(v0 + 56), *(v0 + 64));
  v9 = *(v0 + 144);

  v10 = *(v0 + 152);

  memcpy(__dst, (v0 + 160), 0x780uLL);
  sub_217EB5CB8(__dst);
  v11 = OBJC_IVAR____TtC10XavierNews17ClusteringJournal_date;
  v12 = sub_217F4A9F4();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  return v0;
}

uint64_t ClusteringJournal.__deallocating_deinit()
{
  ClusteringJournal.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t *sub_217EB2328@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = ClusteringJournal.init(from:)(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_217EB23A4(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_217E8E88C(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_217E91414(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_217E8E88C(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_217F4B1C4();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_217E8F000();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    MEMORY[0x21CEAF520](v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5268, &unk_217F4BF20);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x21CEAF510](v19);
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v6;
  v23[1] = v5;
  v24 = (v22[7] + 16 * v10);
  *v24 = v7;
  v24[1] = v8;
  v25 = v22[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_217F4ADD4();
    MEMORY[0x21CEAEAC0](0xD00000000000001BLL, 0x8000000217F5D3B0);
    sub_217F4AE54();
    MEMORY[0x21CEAEAC0](39, 0xE100000000000000);
    result = sub_217F4AE94();
    __break(1u);
    return result;
  }

  v22[2] = v26;
  if (v41 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v8 = *(v4 - 1);
      v27 = *v4;
      v28 = *a3;

      v29 = sub_217E8E88C(v6, v5);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v30;
      if (v28[3] < v33)
      {
        sub_217E91414(v33, 1);
        v34 = *a3;
        v29 = sub_217E8E88C(v6, v5);
        if ((v16 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v6;
      v37[1] = v5;
      v38 = (v36[7] + 16 * v29);
      *v38 = v8;
      v38[1] = v27;
      v39 = v36[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v36[2] = v40;
      v4 += 4;
      if (v41 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

unint64_t sub_217EB273C()
{
  result = qword_280C28A18[0];
  if (!qword_280C28A18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C28A18);
  }

  return result;
}

unint64_t sub_217EB2790()
{
  result = qword_280C276B0;
  if (!qword_280C276B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF57B8, &qword_217F4E2B8);
    sub_217EB2814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C276B0);
  }

  return result;
}

unint64_t sub_217EB2814()
{
  result = qword_280C289E8;
  if (!qword_280C289E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C289E8);
  }

  return result;
}

unint64_t sub_217EB2868()
{
  result = qword_27CBF57C8;
  if (!qword_27CBF57C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF57B8, &qword_217F4E2B8);
    sub_217EB28EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF57C8);
  }

  return result;
}

unint64_t sub_217EB28EC()
{
  result = qword_27CBF57D0;
  if (!qword_27CBF57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF57D0);
  }

  return result;
}

unint64_t sub_217EB2940()
{
  result = qword_280C28B60;
  if (!qword_280C28B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B60);
  }

  return result;
}

unint64_t sub_217EB29F0()
{
  result = qword_280C28BE8;
  if (!qword_280C28BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28BE8);
  }

  return result;
}

unint64_t sub_217EB2A98()
{
  result = qword_280C276A0;
  if (!qword_280C276A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF57F0, &qword_217F4E2E0);
    sub_217EB2B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C276A0);
  }

  return result;
}

unint64_t sub_217EB2B1C()
{
  result = qword_280C277A0;
  if (!qword_280C277A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277A0);
  }

  return result;
}

unint64_t sub_217EB2B70()
{
  result = qword_27CBF5800;
  if (!qword_27CBF5800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF57F0, &qword_217F4E2E0);
    sub_217EB2BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5800);
  }

  return result;
}

unint64_t sub_217EB2BF4()
{
  result = qword_27CBF5808;
  if (!qword_27CBF5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5808);
  }

  return result;
}

void *sub_217EB2CB0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_217EB55BC(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t _s10XavierNews17ClusteringJournalC6ResultC5GroupO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_217F4B144();
        sub_217EB3EF0(v6, v5, 0);
        sub_217EB3EF0(v3, v2, 0);
        sub_217EB3F30(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_15;
      }

      sub_217EB3EF0(v14, v2, 0);
      sub_217EB3EF0(v3, v2, 0);
      sub_217EB3F30(v3, v2, 0);
      v18 = v3;
      v19 = v2;
      v20 = 0;
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_217F4B144();
        sub_217EB3EF0(v6, v5, 1u);
        sub_217EB3EF0(v3, v2, 1u);
        sub_217EB3F30(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
LABEL_15:
        sub_217EB3F30(v11, v12, v13);
        return v10 & 1;
      }

      sub_217EB3EF0(v8, v2, 1u);
      sub_217EB3EF0(v3, v2, 1u);
      sub_217EB3F30(v3, v2, 1u);
      v18 = v3;
      v19 = v2;
      v20 = 1;
      goto LABEL_24;
    }

LABEL_20:
    sub_217EB3EF0(*a2, *(a2 + 8), v7);
    sub_217EB3EF0(v3, v2, v4);
    sub_217EB3F30(v3, v2, v4);
    sub_217EB3F30(v6, v5, v7);
    return 0;
  }

  if (v7 != 2 || (v5 | v6) != 0)
  {
    goto LABEL_20;
  }

  sub_217EB3F30(*a1, v2, 2u);
  v18 = 0;
  v19 = 0;
  v20 = 2;
LABEL_24:
  sub_217EB3F30(v18, v19, v20);
  return 1;
}

unint64_t sub_217EB2F6C()
{
  result = qword_280C28BC8;
  if (!qword_280C28BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28BC8);
  }

  return result;
}

unint64_t sub_217EB2FC0()
{
  result = qword_280C28B98;
  if (!qword_280C28B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B98);
  }

  return result;
}

unint64_t sub_217EB3014()
{
  result = qword_280C28BB0;
  if (!qword_280C28BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28BB0);
  }

  return result;
}

unint64_t sub_217EB3068()
{
  result = qword_280C28B80;
  if (!qword_280C28B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B80);
  }

  return result;
}

unint64_t sub_217EB30BC()
{
  result = qword_280C28D00;
  if (!qword_280C28D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D00);
  }

  return result;
}

unint64_t sub_217EB3110()
{
  result = qword_280C28CA8;
  if (!qword_280C28CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28CA8);
  }

  return result;
}

unint64_t sub_217EB3164()
{
  result = qword_280C28CC0;
  if (!qword_280C28CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28CC0);
  }

  return result;
}

unint64_t sub_217EB31B8()
{
  result = qword_27CBF5878;
  if (!qword_27CBF5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5878);
  }

  return result;
}

unint64_t sub_217EB320C()
{
  result = qword_280C28CE8;
  if (!qword_280C28CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28CE8);
  }

  return result;
}

unint64_t sub_217EB3260()
{
  result = qword_280C28DD8;
  if (!qword_280C28DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28DD8);
  }

  return result;
}

unint64_t sub_217EB32B4()
{
  result = qword_27CBF5900;
  if (!qword_27CBF5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5900);
  }

  return result;
}

unint64_t sub_217EB3308()
{
  result = qword_280C28B48;
  if (!qword_280C28B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B48);
  }

  return result;
}

unint64_t sub_217EB335C()
{
  result = qword_280C28D38;
  if (!qword_280C28D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D38);
  }

  return result;
}

unint64_t sub_217EB33B0()
{
  result = qword_27CBF5908;
  if (!qword_27CBF5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5908);
  }

  return result;
}

unint64_t sub_217EB3404()
{
  result = qword_27CBF5910;
  if (!qword_27CBF5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5910);
  }

  return result;
}

unint64_t sub_217EB3458()
{
  result = qword_27CBF5918;
  if (!qword_27CBF5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5918);
  }

  return result;
}

unint64_t sub_217EB34AC()
{
  result = qword_27CBF5920;
  if (!qword_27CBF5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5920);
  }

  return result;
}

unint64_t sub_217EB3500()
{
  result = qword_280C28D20;
  if (!qword_280C28D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D20);
  }

  return result;
}

unint64_t sub_217EB3554()
{
  result = qword_280C28D98;
  if (!qword_280C28D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D98);
  }

  return result;
}

unint64_t sub_217EB35A8()
{
  result = qword_280C28D50;
  if (!qword_280C28D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D50);
  }

  return result;
}

unint64_t sub_217EB35FC()
{
  result = qword_280C276C0;
  if (!qword_280C276C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5928, &qword_217F4E3D8);
    sub_217EB3308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C276C0);
  }

  return result;
}

unint64_t sub_217EB3680()
{
  result = qword_280C28DB0;
  if (!qword_280C28DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28DB0);
  }

  return result;
}

unint64_t sub_217EB36D4()
{
  result = qword_27CBF5988;
  if (!qword_27CBF5988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5988);
  }

  return result;
}

unint64_t sub_217EB3728()
{
  result = qword_27CBF5990;
  if (!qword_27CBF5990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5928, &qword_217F4E3D8);
    sub_217EB36D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5990);
  }

  return result;
}

unint64_t sub_217EB37AC()
{
  result = qword_280C28E00;
  if (!qword_280C28E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E00);
  }

  return result;
}

unint64_t sub_217EB3800()
{
  result = qword_280C28C70;
  if (!qword_280C28C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C70);
  }

  return result;
}

unint64_t sub_217EB3854()
{
  result = qword_280C28D08;
  if (!qword_280C28D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D08);
  }

  return result;
}

unint64_t sub_217EB38A8()
{
  result = qword_280C28C88;
  if (!qword_280C28C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C88);
  }

  return result;
}

unint64_t sub_217EB38FC()
{
  result = qword_280C28C90;
  if (!qword_280C28C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C90);
  }

  return result;
}

unint64_t sub_217EB3950()
{
  result = qword_27CBF59C8;
  if (!qword_27CBF59C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF59C8);
  }

  return result;
}

unint64_t sub_217EB39A4()
{
  result = qword_27CBF59D0;
  if (!qword_27CBF59D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF59D0);
  }

  return result;
}

unint64_t sub_217EB39F8()
{
  result = qword_280C28E18;
  if (!qword_280C28E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E18);
  }

  return result;
}

unint64_t sub_217EB3A4C()
{
  result = qword_280C28C20;
  if (!qword_280C28C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C20);
  }

  return result;
}

unint64_t sub_217EB3AA0()
{
  result = qword_280C28C38;
  if (!qword_280C28C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C38);
  }

  return result;
}

unint64_t sub_217EB3AF4()
{
  result = qword_280C28C50;
  if (!qword_280C28C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C50);
  }

  return result;
}

unint64_t sub_217EB3B48()
{
  result = qword_280C28C58;
  if (!qword_280C28C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C58);
  }

  return result;
}

unint64_t sub_217EB3B9C()
{
  result = qword_27CBF5A18;
  if (!qword_27CBF5A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5A18);
  }

  return result;
}

unint64_t sub_217EB3BF0()
{
  result = qword_280C28B40;
  if (!qword_280C28B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B40);
  }

  return result;
}

unint64_t sub_217EB3C44()
{
  result = qword_280C28B00;
  if (!qword_280C28B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B00);
  }

  return result;
}

unint64_t sub_217EB3C98()
{
  result = qword_280C276C8;
  if (!qword_280C276C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5A40, &qword_217F4E4C8);
    sub_217EB3D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C276C8);
  }

  return result;
}

unint64_t sub_217EB3D1C()
{
  result = qword_280C28C08;
  if (!qword_280C28C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C08);
  }

  return result;
}

unint64_t sub_217EB3D70()
{
  result = qword_27CBF5A48;
  if (!qword_27CBF5A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5A48);
  }

  return result;
}

unint64_t sub_217EB3DC4()
{
  result = qword_280C28B28;
  if (!qword_280C28B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B28);
  }

  return result;
}

unint64_t sub_217EB3E18()
{
  result = qword_27CBF5A70;
  if (!qword_27CBF5A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5A40, &qword_217F4E4C8);
    sub_217EB3E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5A70);
  }

  return result;
}

unint64_t sub_217EB3E9C()
{
  result = qword_27CBF5A78;
  if (!qword_27CBF5A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5A78);
  }

  return result;
}

uint64_t sub_217EB3EF0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_217EB3F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5)
  {
  }

  if (a5 == 2)
  {
  }

  result = a3;
  if (a5 == 1)
  {
  }

  return result;
}

uint64_t sub_217EB3F30(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_217EB3F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5)
  {
  }

  if (a5 == 2)
  {
  }

  result = a3;
  if (a5 == 1)
  {
  }

  return result;
}

unint64_t sub_217EB3F70()
{
  result = qword_280C28C00;
  if (!qword_280C28C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C00);
  }

  return result;
}

unint64_t sub_217EB3FC4()
{
  result = qword_280C28B68;
  if (!qword_280C28B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B68);
  }

  return result;
}

unint64_t sub_217EB4018()
{
  result = qword_280C28AE8;
  if (!qword_280C28AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28AE8);
  }

  return result;
}

unint64_t sub_217EB406C()
{
  result = qword_280C28BD0;
  if (!qword_280C28BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28BD0);
  }

  return result;
}

unint64_t sub_217EB40C0()
{
  result = qword_280C276E8;
  if (!qword_280C276E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5A88, &qword_217F4E4F8);
    sub_217EB5B74(&qword_280C28AE0, v1, type metadata accessor for ClusteringJournal.Result);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C276E8);
  }

  return result;
}

unint64_t sub_217EB41A0()
{
  result = qword_27CBF5A98;
  if (!qword_27CBF5A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5A98);
  }

  return result;
}

unint64_t sub_217EB41F4()
{
  result = qword_27CBF5AA0;
  if (!qword_27CBF5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5AA0);
  }

  return result;
}

unint64_t sub_217EB4248()
{
  result = qword_27CBF5AA8;
  if (!qword_27CBF5AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5AA8);
  }

  return result;
}

unint64_t sub_217EB429C()
{
  result = qword_27CBF5AB0;
  if (!qword_27CBF5AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5A88, &qword_217F4E4F8);
    sub_217EB5B74(&qword_27CBF5AB8, v1, type metadata accessor for ClusteringJournal.Result);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5AB0);
  }

  return result;
}

uint64_t sub_217EB43B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449676174 && a2 == 0xE500000000000000;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C64616568 && a2 == 0xE900000000000073 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F5D000 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_217EB44D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000217F5D020 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473756C436E696DLL && a2 == 0xEE00657A69537265 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7473756C4378616DLL && a2 == 0xEE00657A69537265 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_217F4B144();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_217EB4654(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x59726F4665726F6DLL && a2 == 0xEA0000000000756FLL;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6369706F74 && a2 == 0xE500000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_217EB4770(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63696E6167726FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465746F6D6F7270 && a2 == 0xE800000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F5D040 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F5D060 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_217EB48E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6565726772657665 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217F5D080 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373656363616E69 && a2 == 0xEC000000656C6269 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F5D0A0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4578614D63676961 && a2 == 0xEF64656465656378 || (sub_217F4B144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7669446369706F74 && a2 == 0xEE00797469737265 || (sub_217F4B144() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746174696C617571 && a2 == 0xEE00676154657669 || (sub_217F4B144() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000217F5D0C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F5D0E0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_217EB4C38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C6369747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54646574696D696CLL && a2 == 0xEC00000044496761 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_217EB4D50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C6369747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6953776F646E6977 && a2 == 0xEA0000000000657ALL || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369706F546C6C61 && a2 == 0xEE00746E756F4373 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F5D100 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D69536369706F74 && a2 == 0xEF79746972616C69 || (sub_217F4B144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    return 5;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_217EB4F74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E696C64616568 && a2 == 0xE800000000000000;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217F5D140 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217F5D160 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_217EB5098(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F5D180 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217F5D1A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_217EB51BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x536D756D696E696DLL && a2 == 0xEB00000000657A69;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217F5D1C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_217EB52DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x536D756D696E696DLL && a2 == 0xEB00000000657A69;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217F5D1C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F5D1E0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_217EB5450(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D65726975716572 && a2 == 0xEC00000073746E65 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365)
  {

    return 3;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_217EB55BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = (*(a3 + 48) + 16 * v18);
    result = *v19;
    if (*v19 != a4 || v19[1] != a5)
    {
      result = sub_217F4B144();
      if ((result & 1) == 0)
      {
        *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
          return sub_217F36358(v23, a2, v8, a3);
        }
      }
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return sub_217F36358(v23, a2, v8, a3);
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217EB5708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v13 = sub_217EB2CB0(v16, v9, a1, a2, a3);
      MEMORY[0x21CEAF6B0](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v11, v12);
  bzero(v17 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v13 = sub_217EB55BC(v17 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_217EB58D4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_217EB3F30(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_217EB58E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5AC0, &qword_217F4E510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217EB5988()
{
  result = qword_280C28E78;
  if (!qword_280C28E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E78);
  }

  return result;
}

uint64_t sub_217EB59DC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5AD0, &qword_217F4E520);
    sub_217EB5B74(a2, v5, type metadata accessor for ClusteringJournal.Result);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217EB5A78()
{
  result = qword_27CBF5AE0;
  if (!qword_27CBF5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5AE0);
  }

  return result;
}

unint64_t sub_217EB5ACC()
{
  result = qword_27CBF5AE8;
  if (!qword_27CBF5AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5AE8);
  }

  return result;
}

unint64_t sub_217EB5B20()
{
  result = qword_27CBF5AF0;
  if (!qword_27CBF5AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5AF0);
  }

  return result;
}

uint64_t sub_217EB5B74(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217EB5BBC()
{
  result = qword_280C289E0;
  if (!qword_280C289E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C289E0);
  }

  return result;
}

unint64_t sub_217EB5C10()
{
  result = qword_280C28E20;
  if (!qword_280C28E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E20);
  }

  return result;
}

unint64_t sub_217EB5C64()
{
  result = qword_280C27A30;
  if (!qword_280C27A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27A30);
  }

  return result;
}

uint64_t sub_217EB5D0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_217EB5D60()
{
  result = qword_27CBF5B00;
  if (!qword_27CBF5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B00);
  }

  return result;
}

uint64_t type metadata accessor for ClusteringJournal()
{
  result = qword_280C289D0;
  if (!qword_280C289D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217EB5E08()
{
  result = sub_217F4A9F4();
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

uint64_t getEnumTagSinglePayload for ClusteringJournal.Mode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
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
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClusteringJournal.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
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

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_217EB6094(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_217EB60B4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_217EB60E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_217EB6130(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_217EB6188(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_217EB61D0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_217EB6260(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_217EB62A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_217EB631C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_217EB6364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10XavierNews17ClusteringJournalC6ResultC5GroupO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_217EB63F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_217EB6440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_217EB6488(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10XavierNews17ClusteringJournalC6ResultC0C5EventO(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (((v1 >> 3) & 0xE) != 0)
  {
    return 16 - ((v1 >> 3) & 0xE | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_217EB6510(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 65))
  {
    return (*a1 + 13);
  }

  v3 = *(a1 + 64);
  if (((v3 >> 3) & 0xE) != 0)
  {
    v4 = 16 - ((v3 >> 3) & 0xE | (v3 >> 7));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217EB6568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = (8 * (14 - a2)) & 0x70 | ((14 - a2) << 7);
    }
  }

  return result;
}

double sub_217EB65D8(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xE)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 - 15;
  }

  else if (a2)
  {
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 16 * (((-a2 >> 1) & 7) - 8 * a2);
  }

  return result;
}

uint64_t sub_217EB663C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 65))
  {
    return (*a1 + 15);
  }

  v3 = ((*(a1 + 64) >> 3) & 0xE | (*(a1 + 64) >> 7)) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_217EB6690(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = 16 * (((-a2 >> 1) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.AcceptanceReason(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.AcceptanceReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_217EB67E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 65))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 64);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_217EB682C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_217EB68C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_217EB6908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClusteringJournal.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClusteringJournal.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.RejectionReason.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.RejectionReason.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.RejectionReason.TopicDiversityCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClusteringJournal.Result.ClusteringEvent.HeadlineOutcome.RejectionReason.TopicDiversityCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217EB7008(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_217EB7098(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217EB7190(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_217EB7220(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217EB72E4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_217EB7374(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217EB7448(unsigned int *a1, int a2)
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

_WORD *sub_217EB7498(_WORD *result, int a2, int a3)
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

unint64_t sub_217EB7538()
{
  result = qword_27CBF5B08;
  if (!qword_27CBF5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B08);
  }

  return result;
}

unint64_t sub_217EB7590()
{
  result = qword_27CBF5B10;
  if (!qword_27CBF5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B10);
  }

  return result;
}

unint64_t sub_217EB75E8()
{
  result = qword_27CBF5B18;
  if (!qword_27CBF5B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B18);
  }

  return result;
}

unint64_t sub_217EB7640()
{
  result = qword_27CBF5B20;
  if (!qword_27CBF5B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B20);
  }

  return result;
}

unint64_t sub_217EB7698()
{
  result = qword_27CBF5B28;
  if (!qword_27CBF5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B28);
  }

  return result;
}

unint64_t sub_217EB76F0()
{
  result = qword_27CBF5B30;
  if (!qword_27CBF5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B30);
  }

  return result;
}

unint64_t sub_217EB7748()
{
  result = qword_27CBF5B38;
  if (!qword_27CBF5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B38);
  }

  return result;
}

unint64_t sub_217EB77A0()
{
  result = qword_27CBF5B40;
  if (!qword_27CBF5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B40);
  }

  return result;
}

unint64_t sub_217EB77F8()
{
  result = qword_27CBF5B48;
  if (!qword_27CBF5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B48);
  }

  return result;
}

unint64_t sub_217EB7850()
{
  result = qword_27CBF5B50;
  if (!qword_27CBF5B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B50);
  }

  return result;
}

unint64_t sub_217EB78A8()
{
  result = qword_27CBF5B58;
  if (!qword_27CBF5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B58);
  }

  return result;
}

unint64_t sub_217EB7900()
{
  result = qword_27CBF5B60;
  if (!qword_27CBF5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B60);
  }

  return result;
}

unint64_t sub_217EB7958()
{
  result = qword_27CBF5B68;
  if (!qword_27CBF5B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B68);
  }

  return result;
}

unint64_t sub_217EB79B0()
{
  result = qword_27CBF5B70;
  if (!qword_27CBF5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B70);
  }

  return result;
}

unint64_t sub_217EB7A08()
{
  result = qword_27CBF5B78;
  if (!qword_27CBF5B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B78);
  }

  return result;
}

unint64_t sub_217EB7A60()
{
  result = qword_27CBF5B80;
  if (!qword_27CBF5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B80);
  }

  return result;
}

unint64_t sub_217EB7AB8()
{
  result = qword_27CBF5B88;
  if (!qword_27CBF5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B88);
  }

  return result;
}

unint64_t sub_217EB7B10()
{
  result = qword_27CBF5B90;
  if (!qword_27CBF5B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B90);
  }

  return result;
}

unint64_t sub_217EB7B68()
{
  result = qword_27CBF5B98;
  if (!qword_27CBF5B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5B98);
  }

  return result;
}

unint64_t sub_217EB7BC0()
{
  result = qword_27CBF5BA0;
  if (!qword_27CBF5BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5BA0);
  }

  return result;
}

unint64_t sub_217EB7C18()
{
  result = qword_27CBF5BA8;
  if (!qword_27CBF5BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5BA8);
  }

  return result;
}

unint64_t sub_217EB7C70()
{
  result = qword_27CBF5BB0;
  if (!qword_27CBF5BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5BB0);
  }

  return result;
}

unint64_t sub_217EB7CC8()
{
  result = qword_27CBF5BB8;
  if (!qword_27CBF5BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5BB8);
  }

  return result;
}

unint64_t sub_217EB7D20()
{
  result = qword_27CBF5BC0;
  if (!qword_27CBF5BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5BC0);
  }

  return result;
}

unint64_t sub_217EB7D78()
{
  result = qword_27CBF5BC8;
  if (!qword_27CBF5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5BC8);
  }

  return result;
}

unint64_t sub_217EB7DD0()
{
  result = qword_27CBF5BD0;
  if (!qword_27CBF5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5BD0);
  }

  return result;
}

unint64_t sub_217EB7E28()
{
  result = qword_27CBF5BD8;
  if (!qword_27CBF5BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5BD8);
  }

  return result;
}

unint64_t sub_217EB7E80()
{
  result = qword_27CBF5BE0;
  if (!qword_27CBF5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5BE0);
  }

  return result;
}

unint64_t sub_217EB7ED8()
{
  result = qword_27CBF5BE8;
  if (!qword_27CBF5BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5BE8);
  }

  return result;
}

unint64_t sub_217EB7F30()
{
  result = qword_27CBF5BF0;
  if (!qword_27CBF5BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5BF0);
  }

  return result;
}

unint64_t sub_217EB7F88()
{
  result = qword_27CBF5BF8;
  if (!qword_27CBF5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5BF8);
  }

  return result;
}

unint64_t sub_217EB7FE0()
{
  result = qword_27CBF5C00;
  if (!qword_27CBF5C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5C00);
  }

  return result;
}

unint64_t sub_217EB8038()
{
  result = qword_27CBF5C08;
  if (!qword_27CBF5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5C08);
  }

  return result;
}

unint64_t sub_217EB8090()
{
  result = qword_27CBF5C10;
  if (!qword_27CBF5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5C10);
  }

  return result;
}

unint64_t sub_217EB80E8()
{
  result = qword_27CBF5C18;
  if (!qword_27CBF5C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5C18);
  }

  return result;
}

unint64_t sub_217EB8140()
{
  result = qword_27CBF5C20;
  if (!qword_27CBF5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5C20);
  }

  return result;
}

unint64_t sub_217EB8198()
{
  result = qword_280C28E68;
  if (!qword_280C28E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E68);
  }

  return result;
}

unint64_t sub_217EB81F0()
{
  result = qword_280C28E70;
  if (!qword_280C28E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E70);
  }

  return result;
}

unint64_t sub_217EB8248()
{
  result = qword_280C28BF0;
  if (!qword_280C28BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28BF0);
  }

  return result;
}

unint64_t sub_217EB82A0()
{
  result = qword_280C28BF8;
  if (!qword_280C28BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28BF8);
  }

  return result;
}

unint64_t sub_217EB82F8()
{
  result = qword_280C28B18;
  if (!qword_280C28B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B18);
  }

  return result;
}

unint64_t sub_217EB8350()
{
  result = qword_280C28B20;
  if (!qword_280C28B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B20);
  }

  return result;
}

unint64_t sub_217EB83A8()
{
  result = qword_280C28B08;
  if (!qword_280C28B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B08);
  }

  return result;
}

unint64_t sub_217EB8400()
{
  result = qword_280C28B10;
  if (!qword_280C28B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B10);
  }

  return result;
}

unint64_t sub_217EB8458()
{
  result = qword_280C28AF0;
  if (!qword_280C28AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28AF0);
  }

  return result;
}

unint64_t sub_217EB84B0()
{
  result = qword_280C28AF8;
  if (!qword_280C28AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28AF8);
  }

  return result;
}

unint64_t sub_217EB8508()
{
  result = qword_280C28B30;
  if (!qword_280C28B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B30);
  }

  return result;
}

unint64_t sub_217EB8560()
{
  result = qword_280C28B38;
  if (!qword_280C28B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B38);
  }

  return result;
}

unint64_t sub_217EB85B8()
{
  result = qword_280C28C40;
  if (!qword_280C28C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C40);
  }

  return result;
}

unint64_t sub_217EB8610()
{
  result = qword_280C28C48;
  if (!qword_280C28C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C48);
  }

  return result;
}

unint64_t sub_217EB8668()
{
  result = qword_280C28C28;
  if (!qword_280C28C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C28);
  }

  return result;
}

unint64_t sub_217EB86C0()
{
  result = qword_280C28C30;
  if (!qword_280C28C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C30);
  }

  return result;
}

unint64_t sub_217EB8718()
{
  result = qword_280C28C10;
  if (!qword_280C28C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C10);
  }

  return result;
}

unint64_t sub_217EB8770()
{
  result = qword_280C28C18;
  if (!qword_280C28C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C18);
  }

  return result;
}

unint64_t sub_217EB87C8()
{
  result = qword_280C28E08;
  if (!qword_280C28E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E08);
  }

  return result;
}

unint64_t sub_217EB8820()
{
  result = qword_280C28E10;
  if (!qword_280C28E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E10);
  }

  return result;
}

unint64_t sub_217EB8878()
{
  result = qword_280C28C78;
  if (!qword_280C28C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C78);
  }

  return result;
}

unint64_t sub_217EB88D0()
{
  result = qword_280C28C80;
  if (!qword_280C28C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C80);
  }

  return result;
}

unint64_t sub_217EB8928()
{
  result = qword_280C28C60;
  if (!qword_280C28C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C60);
  }

  return result;
}

unint64_t sub_217EB8980()
{
  result = qword_280C28C68;
  if (!qword_280C28C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C68);
  }

  return result;
}

unint64_t sub_217EB89D8()
{
  result = qword_280C28DF0;
  if (!qword_280C28DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28DF0);
  }

  return result;
}

unint64_t sub_217EB8A30()
{
  result = qword_280C28DF8;
  if (!qword_280C28DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28DF8);
  }

  return result;
}

unint64_t sub_217EB8A88()
{
  result = qword_280C28DA0;
  if (!qword_280C28DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28DA0);
  }

  return result;
}

unint64_t sub_217EB8AE0()
{
  result = qword_280C28DA8;
  if (!qword_280C28DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28DA8);
  }

  return result;
}

unint64_t sub_217EB8B38()
{
  result = qword_280C28D40;
  if (!qword_280C28D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D40);
  }

  return result;
}

unint64_t sub_217EB8B90()
{
  result = qword_280C28D48;
  if (!qword_280C28D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D48);
  }

  return result;
}

unint64_t sub_217EB8BE8()
{
  result = qword_280C28D88;
  if (!qword_280C28D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D88);
  }

  return result;
}

unint64_t sub_217EB8C40()
{
  result = qword_280C28D90;
  if (!qword_280C28D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D90);
  }

  return result;
}

unint64_t sub_217EB8C98()
{
  result = qword_280C28D10;
  if (!qword_280C28D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D10);
  }

  return result;
}

unint64_t sub_217EB8CF0()
{
  result = qword_280C28D18;
  if (!qword_280C28D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D18);
  }

  return result;
}

unint64_t sub_217EB8D48()
{
  result = qword_280C28D58;
  if (!qword_280C28D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D58);
  }

  return result;
}

unint64_t sub_217EB8DA0()
{
  result = qword_280C28D60;
  if (!qword_280C28D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D60);
  }

  return result;
}

unint64_t sub_217EB8DF8()
{
  result = qword_280C28D68;
  if (!qword_280C28D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D68);
  }

  return result;
}

unint64_t sub_217EB8E50()
{
  result = qword_280C28D70;
  if (!qword_280C28D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D70);
  }

  return result;
}

unint64_t sub_217EB8EA8()
{
  result = qword_280C28D78;
  if (!qword_280C28D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D78);
  }

  return result;
}

unint64_t sub_217EB8F00()
{
  result = qword_280C28D80;
  if (!qword_280C28D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D80);
  }

  return result;
}

unint64_t sub_217EB8F58()
{
  result = qword_280C28DE0;
  if (!qword_280C28DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28DE0);
  }

  return result;
}

unint64_t sub_217EB8FB0()
{
  result = qword_280C28DE8;
  if (!qword_280C28DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28DE8);
  }

  return result;
}

unint64_t sub_217EB9008()
{
  result = qword_280C28D28;
  if (!qword_280C28D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D28);
  }

  return result;
}

unint64_t sub_217EB9060()
{
  result = qword_280C28D30;
  if (!qword_280C28D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28D30);
  }

  return result;
}

unint64_t sub_217EB90B8()
{
  result = qword_280C28DB8;
  if (!qword_280C28DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28DB8);
  }

  return result;
}

unint64_t sub_217EB9110()
{
  result = qword_280C28DC0;
  if (!qword_280C28DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28DC0);
  }

  return result;
}

unint64_t sub_217EB9168()
{
  result = qword_280C28DC8;
  if (!qword_280C28DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28DC8);
  }

  return result;
}

unint64_t sub_217EB91C0()
{
  result = qword_280C28DD0;
  if (!qword_280C28DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28DD0);
  }

  return result;
}

unint64_t sub_217EB9218()
{
  result = qword_280C28CD8;
  if (!qword_280C28CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28CD8);
  }

  return result;
}

unint64_t sub_217EB9270()
{
  result = qword_280C28CE0;
  if (!qword_280C28CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28CE0);
  }

  return result;
}

unint64_t sub_217EB92C8()
{
  result = qword_280C28CC8;
  if (!qword_280C28CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28CC8);
  }

  return result;
}

unint64_t sub_217EB9320()
{
  result = qword_280C28CD0;
  if (!qword_280C28CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28CD0);
  }

  return result;
}

unint64_t sub_217EB9378()
{
  result = qword_280C28CB0;
  if (!qword_280C28CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28CB0);
  }

  return result;
}

unint64_t sub_217EB93D0()
{
  result = qword_280C28CB8;
  if (!qword_280C28CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28CB8);
  }

  return result;
}

unint64_t sub_217EB9428()
{
  result = qword_280C28C98;
  if (!qword_280C28C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28C98);
  }

  return result;
}

unint64_t sub_217EB9480()
{
  result = qword_280C28CA0;
  if (!qword_280C28CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28CA0);
  }

  return result;
}

unint64_t sub_217EB94D8()
{
  result = qword_280C28CF0;
  if (!qword_280C28CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28CF0);
  }

  return result;
}

unint64_t sub_217EB9530()
{
  result = qword_280C28CF8;
  if (!qword_280C28CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28CF8);
  }

  return result;
}

unint64_t sub_217EB9588()
{
  result = qword_280C28B70;
  if (!qword_280C28B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B70);
  }

  return result;
}

unint64_t sub_217EB95E0()
{
  result = qword_280C28B78;
  if (!qword_280C28B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B78);
  }

  return result;
}

unint64_t sub_217EB9638()
{
  result = qword_280C28BA0;
  if (!qword_280C28BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28BA0);
  }

  return result;
}

unint64_t sub_217EB9690()
{
  result = qword_280C28BA8;
  if (!qword_280C28BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28BA8);
  }

  return result;
}

unint64_t sub_217EB96E8()
{
  result = qword_280C28B88;
  if (!qword_280C28B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B88);
  }

  return result;
}

unint64_t sub_217EB9740()
{
  result = qword_280C28B90;
  if (!qword_280C28B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B90);
  }

  return result;
}

unint64_t sub_217EB9798()
{
  result = qword_280C28BB8;
  if (!qword_280C28BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28BB8);
  }

  return result;
}

unint64_t sub_217EB97F0()
{
  result = qword_280C28BC0;
  if (!qword_280C28BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28BC0);
  }

  return result;
}

unint64_t sub_217EB9848()
{
  result = qword_280C28BD8;
  if (!qword_280C28BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28BD8);
  }

  return result;
}

unint64_t sub_217EB98A0()
{
  result = qword_280C28BE0;
  if (!qword_280C28BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28BE0);
  }

  return result;
}

unint64_t sub_217EB98F8()
{
  result = qword_280C28B50;
  if (!qword_280C28B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B50);
  }

  return result;
}

unint64_t sub_217EB9950()
{
  result = qword_280C28B58;
  if (!qword_280C28B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28B58);
  }

  return result;
}

unint64_t sub_217EB99A8()
{
  result = qword_280C28A08;
  if (!qword_280C28A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28A08);
  }

  return result;
}

unint64_t sub_217EB9A00()
{
  result = qword_280C28A10;
  if (!qword_280C28A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28A10);
  }

  return result;
}

unint64_t sub_217EB9A58()
{
  result = qword_280C289F0;
  if (!qword_280C289F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C289F0);
  }

  return result;
}

unint64_t sub_217EB9AB0()
{
  result = qword_280C289F8;
  if (!qword_280C289F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C289F8);
  }

  return result;
}

unint64_t sub_217EB9B08()
{
  result = qword_280C28E40;
  if (!qword_280C28E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E40);
  }

  return result;
}

unint64_t sub_217EB9B60()
{
  result = qword_280C28E48;
  if (!qword_280C28E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E48);
  }

  return result;
}

unint64_t sub_217EB9BB8()
{
  result = qword_280C28E28;
  if (!qword_280C28E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E28);
  }

  return result;
}

unint64_t sub_217EB9C10()
{
  result = qword_280C28E30;
  if (!qword_280C28E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E30);
  }

  return result;
}

unint64_t sub_217EB9C68()
{
  result = qword_280C28E50;
  if (!qword_280C28E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E50);
  }

  return result;
}

unint64_t sub_217EB9CC0()
{
  result = qword_280C28E58;
  if (!qword_280C28E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28E58);
  }

  return result;
}

uint64_t sub_217EB9D14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F746E65766E69 && a2 == 0xE900000000000079 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    return 4;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_217EB9ED4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_217EB9EE8(a1, a2);
  }

  return a1;
}

uint64_t sub_217EB9EE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_217EB9F3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_217EB9F48(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_217EB3EF0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_217EB9F5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5AC0, &qword_217F4E510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for Classic(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Classic(_WORD *result, int a2, int a3)
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

void sub_217EBA594(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    strcpy((v4 + 112), "DefaultAlpha");
    *(v4 + 125) = 0;
    *(v4 + 126) = -5120;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EBA76C(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000020;
    *(v3 + 120) = 0x8000000217F5EBA0;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 10.0;
  }

  *v1 = v2;
}

void sub_217EBA934(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000022;
    *(v3 + 120) = 0x8000000217F5EB70;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 10.0;
  }

  *v1 = v2;
}

uint64_t sub_217EBAAFC(uint64_t result)
{
  v2 = result;
  if (result < 0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001CLL;
    *(v3 + 80) = 0x8000000217F5D450;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000022;
    *(v3 + 120) = 0x8000000217F5EB40;
    v2 = 30;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();
  }

  *v1 = v2;
  return result;
}

uint64_t sub_217EBACB4(uint64_t result)
{
  v2 = result;
  if (result < 0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001CLL;
    *(v3 + 80) = 0x8000000217F5D450;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000021;
    *(v3 + 120) = 0x8000000217F5EB10;
    v2 = 10;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();
  }

  *v1 = v2;
  return result;
}

void sub_217EBAE6C(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000019;
    *(v4 + 120) = 0x8000000217F5E810;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 0.5;
  }

  *v1 = v2;
}

uint64_t sub_217EBB03C(uint64_t result)
{
  v2 = result;
  if (result < 0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001CLL;
    *(v3 + 80) = 0x8000000217F5D450;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000024;
    *(v3 + 120) = 0x8000000217F5E7E0;
    v2 = 10;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();
  }

  *v1 = v2;
  return result;
}

void sub_217EBB1F4(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000001DLL;
    *(v3 + 120) = 0x8000000217F5E7C0;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EBB3BC(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000023;
    *(v3 + 120) = 0x8000000217F5E790;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.0;
  }

  *v1 = v2;
}

uint64_t sub_217EBB584(uint64_t result)
{
  v2 = result;
  if (result < 0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001CLL;
    *(v3 + 80) = 0x8000000217F5D450;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000002CLL;
    *(v3 + 120) = 0x8000000217F5E760;
    v2 = 1000;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();
  }

  *v1 = v2;
  return result;
}

void sub_217EBB73C(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000001BLL;
    *(v3 + 120) = 0x8000000217F5E740;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 0.0;
  }

  *v1 = v2;
}

void sub_217EBB900(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000019;
    *(v3 + 120) = 0x8000000217F5E720;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 0.0;
  }

  *v1 = v2;
}

void sub_217EBBAC4(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000001DLL;
    *(v3 + 120) = 0x8000000217F5E700;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 0.9;
  }

  *v1 = v2;
}

void sub_217EBBC98(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD00000000000001ELL;
    *(v4 + 120) = 0x8000000217F5E6E0;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 0.3;
  }

  *v1 = v2;
}

uint64_t sub_217EBBE6C(uint64_t result)
{
  v2 = result;
  if (result < 0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001CLL;
    *(v3 + 80) = 0x8000000217F5D450;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000022;
    *(v3 + 120) = 0x8000000217F5E6B0;
    v2 = 37;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();
  }

  *v1 = v2;
  return result;
}

void sub_217EBC024(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000023;
    *(v3 + 120) = 0x8000000217F5E680;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.2;
  }

  *v1 = v2;
}

void sub_217EBC1F0(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000001FLL;
    *(v3 + 120) = 0x8000000217F5E660;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.5;
  }

  *v1 = v2;
}

void sub_217EBC3B4(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000001FLL;
    *(v3 + 120) = 0x8000000217F5E640;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EBC578(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000001FLL;
    *(v3 + 120) = 0x8000000217F5E620;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EBC73C(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000017;
    *(v4 + 120) = 0x8000000217F5E600;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 0.5;
  }

  *v1 = v2;
}

void sub_217EBC90C(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000021;
    *(v3 + 120) = 0x8000000217F5E5D0;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.0;
  }

  *v1 = v2;
}

uint64_t sub_217EBCAD4(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(v3 + 2);

  v9 = a3 < 0.0 || a3 > 1.0;
  if (v9 || a1 < 0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_217F4BF10;
    v16 = a3;
    v17 = a1;
    v18 = a2;
    sub_217F4AE54();

    v11 = MEMORY[0x277D837D0];
    *(v10 + 56) = MEMORY[0x277D837D0];
    v12 = sub_217E86438();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 64) = v12;
    *(v10 + 72) = 0xD00000000000001FLL;
    *(v10 + 80) = 0x8000000217F5E830;
    *(v10 + 136) = v11;
    *(v10 + 144) = v12;
    *(v10 + 112) = 0xD000000000000029;
    *(v10 + 120) = 0x8000000217F5E850;
    v13 = MEMORY[0x277D84FA0];
    sub_217ED62DC(0x3FF0000000000000, 0, 1, 0, MEMORY[0x277D84FA0], &v16);
    sub_217F4AE54();

    *(v10 + 176) = v11;
    *(v10 + 184) = v12;
    *(v10 + 152) = 0;
    *(v10 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    result = sub_217ED62DC(0x3FF0000000000000, 0, 1, 0, v13, &v16);
    v14 = v17;
    v15 = v18;
    *v3 = v16;
    *(v3 + 1) = v14;
    *(v3 + 2) = v15;
  }

  else
  {
    *v3 = a3;
    *(v3 + 1) = a1;
    *(v3 + 2) = a2;
  }

  return result;
}

double sub_217EBCD28(uint64_t a1)
{
  v3 = *(a1 + 16);
  v30 = *a1;
  v31 = v3;
  v4 = *(a1 + 48);
  v32 = *(a1 + 32);
  v33 = v4;
  v5 = v1[1];
  v34[0] = *v1;
  v34[1] = v5;
  v6 = v1[3];
  v34[2] = v1[2];
  v34[3] = v6;
  sub_217ECC78C(v34, &qword_27CBF5C58, &unk_217F5A040);
  if (fabs(*a1) > 1.0)
  {
LABEL_5:
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_217F4BF10;
    v24 = 0;
    v25 = 0xE000000000000000;
    v12 = *(a1 + 16);
    v26 = *a1;
    v27 = v12;
    v13 = *(a1 + 48);
    v28 = *(a1 + 32);
    v29 = v13;
    sub_217F4AE54();
    sub_217EB2A44(a1);
    v14 = MEMORY[0x277D837D0];
    *(v11 + 56) = MEMORY[0x277D837D0];
    v15 = sub_217E86438();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    *(v11 + 96) = v14;
    *(v11 + 104) = v15;
    *(v11 + 64) = v15;
    *(v11 + 72) = 0xD000000000000016;
    *(v11 + 80) = 0x8000000217F5E880;
    *(v11 + 136) = v14;
    *(v11 + 144) = v15;
    *(v11 + 112) = 0xD000000000000032;
    *(v11 + 120) = 0x8000000217F5E8A0;
    v24 = 0;
    v25 = 0xE000000000000000;
    if (qword_280C27A40 != -1)
    {
      swift_once();
    }

    sub_217F4AE54();
    v16 = v24;
    v17 = v25;
    *(v11 + 176) = v14;
    *(v11 + 184) = v15;
    *(v11 + 152) = v16;
    *(v11 + 160) = v17;
    sub_217F4AD54();
    sub_217F4AA44();

    v19 = xmmword_280C27A58;
    v26 = xmmword_280C27A48;
    v18 = xmmword_280C27A48;
    v27 = xmmword_280C27A58;
    v20 = *&qword_280C27A78;
    v28 = xmmword_280C27A68;
    v29 = *&qword_280C27A78;
    v1[2] = xmmword_280C27A68;
    v1[3] = v20;
    *v1 = v18;
    v1[1] = v19;
    sub_217EB2994(&v26, &v24);
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 16);
    v9 = (v7 + 32);
    while (v8)
    {
      v10 = *v9++;
      --v8;
      if (fabs(v10) > 1.0)
      {
        goto LABEL_5;
      }
    }

    v22 = v31;
    *v1 = v30;
    v1[1] = v22;
    result = *&v32;
    v23 = v33;
    v1[2] = v32;
    v1[3] = v23;
  }

  return result;
}

uint64_t sub_217EBCFC8(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(v3 + 2);

  v9 = a3 < 0.0 || a3 > 1.0;
  if (v9 || a1 < 0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_217F4BF10;
    v16 = a3;
    v17 = a1;
    v18 = a2;
    sub_217F4AE54();

    v11 = MEMORY[0x277D837D0];
    *(v10 + 56) = MEMORY[0x277D837D0];
    v12 = sub_217E86438();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 64) = v12;
    *(v10 + 72) = 0xD00000000000001FLL;
    *(v10 + 80) = 0x8000000217F5E830;
    *(v10 + 136) = v11;
    *(v10 + 144) = v12;
    *(v10 + 112) = 0xD00000000000002ELL;
    *(v10 + 120) = 0x8000000217F5E8E0;
    v13 = MEMORY[0x277D84FA0];
    sub_217ED62DC(0x3FF0000000000000, 0, 1, 0, MEMORY[0x277D84FA0], &v16);
    sub_217F4AE54();

    *(v10 + 176) = v11;
    *(v10 + 184) = v12;
    *(v10 + 152) = 0;
    *(v10 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    result = sub_217ED62DC(0x3FF0000000000000, 0, 1, 0, v13, &v16);
    v14 = v17;
    v15 = v18;
    *v3 = v16;
    *(v3 + 1) = v14;
    *(v3 + 2) = v15;
  }

  else
  {
    *v3 = a3;
    *(v3 + 1) = a1;
    *(v3 + 2) = a2;
  }

  return result;
}

double sub_217EBD21C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v30 = *a1;
  v31 = v3;
  v4 = *(a1 + 48);
  v32 = *(a1 + 32);
  v33 = v4;
  v5 = v1[1];
  v34[0] = *v1;
  v34[1] = v5;
  v6 = v1[3];
  v34[2] = v1[2];
  v34[3] = v6;
  sub_217ECC78C(v34, &qword_27CBF5C60, &qword_217F52080);
  if (fabs(*a1) > 1.0)
  {
LABEL_5:
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_217F4BF10;
    v24 = 0;
    v25 = 0xE000000000000000;
    v12 = *(a1 + 16);
    v26 = *a1;
    v27 = v12;
    v13 = *(a1 + 48);
    v28 = *(a1 + 32);
    v29 = v13;
    sub_217F4AE54();
    sub_217EB2A44(a1);
    v14 = MEMORY[0x277D837D0];
    *(v11 + 56) = MEMORY[0x277D837D0];
    v15 = sub_217E86438();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    *(v11 + 96) = v14;
    *(v11 + 104) = v15;
    *(v11 + 64) = v15;
    *(v11 + 72) = 0xD000000000000016;
    *(v11 + 80) = 0x8000000217F5E880;
    *(v11 + 136) = v14;
    *(v11 + 144) = v15;
    *(v11 + 112) = 0xD000000000000037;
    *(v11 + 120) = 0x8000000217F5E910;
    v24 = 0;
    v25 = 0xE000000000000000;
    if (qword_280C27A40 != -1)
    {
      swift_once();
    }

    sub_217F4AE54();
    v16 = v24;
    v17 = v25;
    *(v11 + 176) = v14;
    *(v11 + 184) = v15;
    *(v11 + 152) = v16;
    *(v11 + 160) = v17;
    sub_217F4AD54();
    sub_217F4AA44();

    v19 = xmmword_280C27A58;
    v26 = xmmword_280C27A48;
    v18 = xmmword_280C27A48;
    v27 = xmmword_280C27A58;
    v20 = *&qword_280C27A78;
    v28 = xmmword_280C27A68;
    v29 = *&qword_280C27A78;
    v1[2] = xmmword_280C27A68;
    v1[3] = v20;
    *v1 = v18;
    v1[1] = v19;
    sub_217EB2994(&v26, &v24);
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 16);
    v9 = (v7 + 32);
    while (v8)
    {
      v10 = *v9++;
      --v8;
      if (fabs(v10) > 1.0)
      {
        goto LABEL_5;
      }
    }

    v22 = v31;
    *v1 = v30;
    v1[1] = v22;
    result = *&v32;
    v23 = v33;
    v1[2] = v32;
    v1[3] = v23;
  }

  return result;
}

uint64_t sub_217EBD4C0(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(v3 + 2);

  v9 = a3 < 0.0 || a3 > 1.0;
  if (v9 || a1 < 0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_217F4BF10;
    v16 = a3;
    v17 = a1;
    v18 = a2;
    sub_217F4AE54();

    v11 = MEMORY[0x277D837D0];
    *(v10 + 56) = MEMORY[0x277D837D0];
    v12 = sub_217E86438();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 64) = v12;
    *(v10 + 72) = 0xD00000000000001FLL;
    *(v10 + 80) = 0x8000000217F5E830;
    *(v10 + 136) = v11;
    *(v10 + 144) = v12;
    *(v10 + 112) = 0xD00000000000002BLL;
    *(v10 + 120) = 0x8000000217F5E950;
    v13 = MEMORY[0x277D84FA0];
    sub_217ED62DC(0x3FF0000000000000, 0, 1, 0, MEMORY[0x277D84FA0], &v16);
    sub_217F4AE54();

    *(v10 + 176) = v11;
    *(v10 + 184) = v12;
    *(v10 + 152) = 0;
    *(v10 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    result = sub_217ED62DC(0x3FF0000000000000, 0, 1, 0, v13, &v16);
    v14 = v17;
    v15 = v18;
    *v3 = v16;
    *(v3 + 1) = v14;
    *(v3 + 2) = v15;
  }

  else
  {
    *v3 = a3;
    *(v3 + 1) = a1;
    *(v3 + 2) = a2;
  }

  return result;
}

double sub_217EBD714(uint64_t a1)
{
  v3 = *(a1 + 16);
  v30 = *a1;
  v31 = v3;
  v4 = *(a1 + 48);
  v32 = *(a1 + 32);
  v33 = v4;
  v5 = v1[1];
  v34[0] = *v1;
  v34[1] = v5;
  v6 = v1[3];
  v34[2] = v1[2];
  v34[3] = v6;
  sub_217ECC78C(v34, &qword_27CBF5C78, &qword_217F52098);
  if (fabs(*a1) > 1.0)
  {
LABEL_5:
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_217F4BF10;
    v24 = 0;
    v25 = 0xE000000000000000;
    v12 = *(a1 + 16);
    v26 = *a1;
    v27 = v12;
    v13 = *(a1 + 48);
    v28 = *(a1 + 32);
    v29 = v13;
    sub_217F4AE54();
    sub_217EB2A44(a1);
    v14 = MEMORY[0x277D837D0];
    *(v11 + 56) = MEMORY[0x277D837D0];
    v15 = sub_217E86438();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    *(v11 + 96) = v14;
    *(v11 + 104) = v15;
    *(v11 + 64) = v15;
    *(v11 + 72) = 0xD000000000000016;
    *(v11 + 80) = 0x8000000217F5E880;
    *(v11 + 136) = v14;
    *(v11 + 144) = v15;
    *(v11 + 112) = 0xD000000000000034;
    *(v11 + 120) = 0x8000000217F5E980;
    v24 = 0;
    v25 = 0xE000000000000000;
    if (qword_280C27A40 != -1)
    {
      swift_once();
    }

    sub_217F4AE54();
    v16 = v24;
    v17 = v25;
    *(v11 + 176) = v14;
    *(v11 + 184) = v15;
    *(v11 + 152) = v16;
    *(v11 + 160) = v17;
    sub_217F4AD54();
    sub_217F4AA44();

    v19 = xmmword_280C27A58;
    v26 = xmmword_280C27A48;
    v18 = xmmword_280C27A48;
    v27 = xmmword_280C27A58;
    v20 = *&qword_280C27A78;
    v28 = xmmword_280C27A68;
    v29 = *&qword_280C27A78;
    v1[2] = xmmword_280C27A68;
    v1[3] = v20;
    *v1 = v18;
    v1[1] = v19;
    sub_217EB2994(&v26, &v24);
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 16);
    v9 = (v7 + 32);
    while (v8)
    {
      v10 = *v9++;
      --v8;
      if (fabs(v10) > 1.0)
      {
        goto LABEL_5;
      }
    }

    v22 = v31;
    *v1 = v30;
    v1[1] = v22;
    result = *&v32;
    v23 = v33;
    v1[2] = v32;
    v1[3] = v23;
  }

  return result;
}

uint64_t sub_217EBD9B4(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(v3 + 2);

  v9 = a3 < 0.0 || a3 > 1.0;
  if (v9 || a1 < 0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_217F4BF10;
    v16 = a3;
    v17 = a1;
    v18 = a2;
    sub_217F4AE54();

    v11 = MEMORY[0x277D837D0];
    *(v10 + 56) = MEMORY[0x277D837D0];
    v12 = sub_217E86438();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 64) = v12;
    *(v10 + 72) = 0xD00000000000001FLL;
    *(v10 + 80) = 0x8000000217F5E830;
    *(v10 + 136) = v11;
    *(v10 + 144) = v12;
    *(v10 + 112) = 0xD000000000000030;
    *(v10 + 120) = 0x8000000217F5E9C0;
    v13 = MEMORY[0x277D84FA0];
    sub_217ED62DC(0x3FF0000000000000, 0, 1, 0, MEMORY[0x277D84FA0], &v16);
    sub_217F4AE54();

    *(v10 + 176) = v11;
    *(v10 + 184) = v12;
    *(v10 + 152) = 0;
    *(v10 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    result = sub_217ED62DC(0x3FF0000000000000, 0, 1, 0, v13, &v16);
    v14 = v17;
    v15 = v18;
    *v3 = v16;
    *(v3 + 1) = v14;
    *(v3 + 2) = v15;
  }

  else
  {
    *v3 = a3;
    *(v3 + 1) = a1;
    *(v3 + 2) = a2;
  }

  return result;
}

double sub_217EBDC08(uint64_t a1)
{
  v3 = *(a1 + 16);
  v30 = *a1;
  v31 = v3;
  v4 = *(a1 + 48);
  v32 = *(a1 + 32);
  v33 = v4;
  v5 = v1[1];
  v34[0] = *v1;
  v34[1] = v5;
  v6 = v1[3];
  v34[2] = v1[2];
  v34[3] = v6;
  sub_217ECC78C(v34, &qword_27CBF5C80, &unk_217F5A020);
  if (fabs(*a1) > 1.0)
  {
LABEL_5:
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_217F4BF10;
    v24 = 0;
    v25 = 0xE000000000000000;
    v12 = *(a1 + 16);
    v26 = *a1;
    v27 = v12;
    v13 = *(a1 + 48);
    v28 = *(a1 + 32);
    v29 = v13;
    sub_217F4AE54();
    sub_217EB2A44(a1);
    v14 = MEMORY[0x277D837D0];
    *(v11 + 56) = MEMORY[0x277D837D0];
    v15 = sub_217E86438();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    *(v11 + 96) = v14;
    *(v11 + 104) = v15;
    *(v11 + 64) = v15;
    *(v11 + 72) = 0xD000000000000016;
    *(v11 + 80) = 0x8000000217F5E880;
    *(v11 + 136) = v14;
    *(v11 + 144) = v15;
    *(v11 + 112) = 0xD000000000000039;
    *(v11 + 120) = 0x8000000217F5EA00;
    v24 = 0;
    v25 = 0xE000000000000000;
    if (qword_280C27A40 != -1)
    {
      swift_once();
    }

    sub_217F4AE54();
    v16 = v24;
    v17 = v25;
    *(v11 + 176) = v14;
    *(v11 + 184) = v15;
    *(v11 + 152) = v16;
    *(v11 + 160) = v17;
    sub_217F4AD54();
    sub_217F4AA44();

    v19 = xmmword_280C27A58;
    v26 = xmmword_280C27A48;
    v18 = xmmword_280C27A48;
    v27 = xmmword_280C27A58;
    v20 = *&qword_280C27A78;
    v28 = xmmword_280C27A68;
    v29 = *&qword_280C27A78;
    v1[2] = xmmword_280C27A68;
    v1[3] = v20;
    *v1 = v18;
    v1[1] = v19;
    sub_217EB2994(&v26, &v24);
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 16);
    v9 = (v7 + 32);
    while (v8)
    {
      v10 = *v9++;
      --v8;
      if (fabs(v10) > 1.0)
      {
        goto LABEL_5;
      }
    }

    v22 = v31;
    *v1 = v30;
    v1[1] = v22;
    result = *&v32;
    v23 = v33;
    v1[2] = v32;
    v1[3] = v23;
  }

  return result;
}

void sub_217EBDEA8(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000001ALL;
    *(v3 + 120) = 0x8000000217F5E5B0;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 0.0;
  }

  *v1 = v2;
}

void sub_217EBE070(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000012;
    *(v4 + 120) = 0x8000000217F5E590;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.0;
  }

  *v1 = v2;
}

uint64_t sub_217EBE240(uint64_t result)
{
  v2 = result;
  if (result < 0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001CLL;
    *(v3 + 80) = 0x8000000217F5D450;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000014;
    *(v3 + 120) = 0x8000000217F5E570;
    v2 = 50;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();
  }

  *v1 = v2;
  return result;
}

void sub_217EBE3F8(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000015;
    *(v3 + 120) = 0x8000000217F5E550;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EBE5C4(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000014;
    *(v3 + 120) = 0x8000000217F5E530;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EBE790(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000018;
    *(v3 + 120) = 0x8000000217F5E510;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 0.0;
  }

  *v1 = v2;
}

void sub_217EBE954(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000019;
    *(v4 + 120) = 0x8000000217F5D810;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 0.05;
  }

  *v1 = v2;
}

void sub_217EBEB30(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000015;
    *(v4 + 120) = 0x8000000217F5D7F0;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EBED00(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000021;
    *(v3 + 120) = 0x8000000217F5D7C0;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EBEEC8(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000013;
    *(v4 + 120) = 0x8000000217F5D7A0;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 0.2;
  }

  *v1 = v2;
}

void sub_217EBF0A4(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000001BLL;
    *(v3 + 120) = 0x8000000217F5D780;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 5.0;
  }

  *v1 = v2;
}

void sub_217EBF26C(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000024;
    *(v3 + 120) = 0x8000000217F5D750;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 0.0;
  }

  *v1 = v2;
}

void sub_217EBF430(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000014;
    *(v3 + 120) = 0x8000000217F5D730;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 0.0;
  }

  *v1 = v2;
}

void sub_217EBF5F8(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000016;
    *(v4 + 120) = 0x8000000217F5D6D0;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 0.3;
  }

  *v1 = v2;
}

void sub_217EBF7CC(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000016;
    *(v3 + 120) = 0x8000000217F5E4F0;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.1;
  }

  *v1 = v2;
}

void sub_217EBF9A4(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000001BLL;
    *(v3 + 120) = 0x8000000217F5E4D0;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.1;
  }

  *v1 = v2;
}

void sub_217EBFB78(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000001BLL;
    *(v3 + 120) = 0x8000000217F5E4B0;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.1;
  }

  *v1 = v2;
}

void sub_217EBFD4C(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000001CLL;
    *(v3 + 120) = 0x8000000217F5E490;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 0.0;
  }

  *v1 = v2;
}

void sub_217EBFF10(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000001ALL;
    *(v3 + 120) = 0x8000000217F5E470;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC00DC(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000019;
    *(v3 + 120) = 0x8000000217F5E450;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    sub_217F4AD54();
    sub_217F4AA44();

    v2 = 1.1;
  }

  *v1 = v2;
}