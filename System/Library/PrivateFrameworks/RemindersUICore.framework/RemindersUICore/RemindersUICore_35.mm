void sub_21D40CA9C(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D0);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C3D0);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE5C3D0);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE5C3D0);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE5C3D0);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D43DBCC;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_1539;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE5C3D0);
}

void sub_21D40D170(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a3;
  v51 = a4;
  v5 = v4;
  v7 = *v4;
  v48 = a2;
  v49 = v7;
  v53 = sub_21DBF9D2C();
  v8 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF9D5C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF9D8C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v5[2];
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14, v16);
  v20 = v19;
  LOBYTE(v19) = sub_21DBF9DAC();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v44 = v12;
  v45 = v10;
  v46 = v11;
  v47 = v8;
  swift_beginAccess();
  v21 = v5[17];
  v22 = *(v5 + 144);
  swift_beginAccess();
  v23 = v5[5];
  v24 = 3;
  if (a1)
  {
    v24 = 4;
  }

  v25 = v5[v24];
  v26 = swift_allocObject();
  *(v26 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v28 = v5[19];
    sub_21D43DE58(v21, v22);

    v29 = v25;
    os_unfair_lock_lock(v28);
    v30 = v5[20];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (!v31)
    {
      *(v26 + 16) = v32;
      v5[20] = v32;
      os_unfair_lock_unlock(v28);
      if (*(v26 + 16) > 1)
      {

        sub_21D43DEB8(v21, v22);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  sub_21D43DE58(v21, v22);

  v27 = v25;
LABEL_9:
  v43 = v25;
  v33 = v5[9];
  if (v33)
  {

    v33(v34);
    sub_21D0D0E88(v33);
  }

  v56 = v22;
  v35 = swift_allocObject();
  *(v35 + 16) = v26;
  *(v35 + 24) = a1 & 1;
  *(v35 + 32) = v23;
  *(v35 + 40) = v21;
  *(v35 + 48) = v56;
  v37 = v49;
  v36 = v50;
  *(v35 + 56) = v5;
  *(v35 + 64) = v37;
  aBlock[4] = v36;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = v51;
  v38 = _Block_copy(aBlock);
  sub_21D43DE58(v21, v22);

  v51 = v21;
  v39 = v52;
  sub_21DBF9D4C();
  v54 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v40 = v45;
  v41 = v53;
  sub_21DBFBCBC();
  v42 = v43;
  MEMORY[0x223D438F0](0, v39, v40, v38);

  _Block_release(v38);
  sub_21D43DEB8(v51, v22);

  (*(v47 + 8))(v40, v41);
  (*(v44 + 8))(v39, v46);
}

void sub_21D40D6EC(int a1)
{
  v2 = v1;
  v47 = *v1;
  v52 = sub_21DBF9D2C();
  v4 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_21DBF9D5C();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DE0);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v41[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = v2[2];
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v18 = v17;
  LOBYTE(v17) = sub_21DBF9DAC();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v45 = v4;
  v19 = *(*v2 + 208);
  swift_beginAccess();
  v53 = v12;
  sub_21D0D3954(v2 + v19, v12, &qword_27CE60DE0);
  swift_beginAccess();
  v20 = v2[5];
  v21 = 3;
  if (a1)
  {
    v21 = 4;
  }

  v22 = v2[v21];
  v23 = swift_allocObject();
  *(v23 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v25 = *(v2 + *(*v2 + 216));

    v26 = v22;
    os_unfair_lock_lock(v25);
    v27 = *(*v2 + 224);
    v28 = *(v2 + v27);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      *(v23 + 16) = v30;
      *(v2 + v27) = v30;
      os_unfair_lock_unlock(v25);
      if (*(v23 + 16) > 1)
      {
        sub_21D0CF7E0(v53, &qword_27CE60DE0);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v24 = v22;
LABEL_9:
  v43 = v20;
  v42 = a1;
  v44 = v22;
  v31 = v2[9];
  if (v31)
  {

    v31(v32);
    sub_21D0D0E88(v31);
  }

  sub_21D0D3954(v53, v10, &qword_27CE60DE0);
  v33 = (*(v46 + 80) + 40) & ~*(v46 + 80);
  v34 = (v8 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v23;
  *(v35 + 24) = v42 & 1;
  *(v35 + 32) = v43;
  sub_21D0D523C(v10, v35 + v33, &qword_27CE60DE0);
  *(v35 + v34) = v2;
  *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v47;
  aBlock[4] = sub_21D0D7DC8;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_1041;
  v36 = _Block_copy(aBlock);

  v37 = v48;
  sub_21DBF9D4C();
  v54 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v38 = v50;
  v39 = v52;
  sub_21DBFBCBC();
  v40 = v44;
  MEMORY[0x223D438F0](0, v37, v38, v36);

  _Block_release(v36);

  (*(v45 + 8))(v38, v39);
  (*(v49 + 8))(v37, v51);
  sub_21D0CF7E0(v53, &qword_27CE60DE0);
}

void sub_21D40DDC0(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F0);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C2F0);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE5C2F0);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE5C2F0);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE5C2F0);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D43CFD8;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_869;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE5C2F0);
}

void sub_21D40E494(int a1)
{
  v2 = v1;
  v48 = *v1;
  v53 = sub_21DBF9D2C();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = sub_21DBF9D5C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v42[-v11];
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v2[2];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v46 = v4;
  v20 = *(*v2 + 208);
  swift_beginAccess();
  v54 = v12;
  sub_21D0D3954(v2 + v20, v12, &qword_27CE5C298);
  swift_beginAccess();
  v21 = v2[5];
  v22 = 3;
  if (a1)
  {
    v22 = 4;
  }

  v23 = v2[v22];
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  if ((a1 & 1) == 0)
  {
    v26 = *(v2 + *(*v2 + 216));

    v27 = v23;
    os_unfair_lock_lock(v26);
    v28 = *(*v2 + 224);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v24 + 16) = v31;
      *(v2 + v28) = v31;
      os_unfair_lock_unlock(v26);
      if (*(v24 + 16) > 1)
      {
        sub_21D0CF7E0(v54, &qword_27CE5C298);

        return;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = v23;
LABEL_9:
  v44 = v21;
  v43 = a1;
  v45 = v23;
  v32 = v2[9];
  if (v32)
  {

    v32(v33);
    sub_21D0D0E88(v32);
  }

  sub_21D0D3954(v54, v9, &qword_27CE5C298);
  v34 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v36 + 24) = v43 & 1;
  *(v36 + 32) = v44;
  sub_21D0D523C(v9, v36 + v34, &qword_27CE5C298);
  *(v36 + v35) = v2;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  aBlock[4] = sub_21D43A648;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_709;
  v37 = _Block_copy(aBlock);

  v38 = v49;
  sub_21DBF9D4C();
  v55 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v39 = v51;
  v40 = v53;
  sub_21DBFBCBC();
  v41 = v45;
  MEMORY[0x223D438F0](0, v38, v39, v37);

  _Block_release(v37);

  (*(v46 + 8))(v39, v40);
  (*(v50 + 8))(v38, v52);
  sub_21D0CF7E0(v54, &qword_27CE5C298);
}

void sub_21D40EB68()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43E13C;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1730;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43E188;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1736;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D40EE74()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D439C70;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_227;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D439CBC;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_233;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D40F180()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D439FB0;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_393;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D439FFC;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_399;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D40F48C()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43A358;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_559;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43A3A4;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_565;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D40F798()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43D408;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1140;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43D454;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1146;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D40FAA4()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D439E10;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_310;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D439E5C;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_316;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D40FDB0()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43CEA0;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_808;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43CEEC;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_814;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D4100BC()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43D1E0;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_974;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43D22C;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_980;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D4103C8()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43D5A8;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1223;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43D5F4;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1229;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D4106D4()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43A4F8;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_642;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43A544;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_648;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D4109E0()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43DA7C;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1472;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43DAC8;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1478;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D410CEC()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D436D18;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_57_0;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D436D64;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_63_1;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D410FF8()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43D748;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1306;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43D794;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1312;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D411304()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43DF68;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1647;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43DFB4;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1653;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D411610()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43A1DC;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_476;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43A228;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_482;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D41191C()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D439A40;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_139;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D439A8C;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_145;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D411C28()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43DC84;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1555;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43DCD0;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1561;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D411F34()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43D8F0;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1389;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43D93C;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_1395;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D412240()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43D040;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_891;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43D08C;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_897;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

void sub_21D41254C()
{
  if (!v0[15])
  {
    v1 = v0[6];
    if (v1)
    {
      v2 = v0[7];
      v22 = v2;
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v4 = v0[2];
      v20 = objc_opt_self();
      v5 = v1;
      v21 = v2;
      v6 = [v20 defaultCenter];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      v8[2] = v4;
      v8[3] = v7;
      v8[4] = v3;
      v27 = sub_21D43CD00;
      v28 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_725;
      v9 = _Block_copy(&aBlock);
      v10 = v5;
      v11 = v4;

      v12 = [v6 addObserverForName:v10 object:0 queue:0 usingBlock:v9];
      _Block_release(v9);

      v13 = [v20 defaultCenter];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *(v14 + 24) = v3;
      v27 = sub_21D43CD4C;
      v28 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21D0EE46C;
      v26 = &block_descriptor_731;
      v15 = _Block_copy(&aBlock);
      v16 = v11;

      v17 = v21;

      v18 = [v13 addObserverForName:v17 object:0 queue:0 usingBlock:v15];
      _Block_release(v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC0AA00;
      *(v19 + 32) = v12;
      *(v19 + 40) = v18;
      sub_21D0D9834(v1, v22);
      v0[15] = v19;
    }
  }
}

uint64_t sub_21D412858()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000033, 0x800000021DC5C390, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43E210;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1775;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D412CEC()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5BE90, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D439D44;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_272;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D413180()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BF10, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43A084;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_438;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D413614()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000034, 0x800000021DC5BFB0, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43A42C;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_604;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D413AA8()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000035, 0x800000021DC5C170, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43D4DC;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1185;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D413F3C()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BED0, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D439EE4;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_355;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D4143D0()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C070, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43CF74;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_853;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D414864()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000039, 0x800000021DC5C0F0, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43D2B4;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1019;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D414CF8()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5C1B0, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43D67C;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1268;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D41518C()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BFF0, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43A5CC;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_687;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D415620()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5C280, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43DB50;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1517;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D415AB4()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BD70, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D436DEC;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_101;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D415F48()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C1F0, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43D81C;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1351;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D4163DC()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C350, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43E04C;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1692;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D416870()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000059, 0x800000021DC5BF50, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43A2B0;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_521;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D416D04()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5BE40, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D439B14;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_184;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D417198()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD00000000000003BLL, 0x800000021DC5C2D0, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43DD58;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1600;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D41762C()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000040, 0x800000021DC5C230, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43D9D4;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1434;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D417AC0()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5C130, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43D360;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1102;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D417F54()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD00000000000003CLL, 0x800000021DC5C0B0, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43D114;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_936;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D4183E8()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C030, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeMustRefresh notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43CDD4;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_770;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D41887C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF9D2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DBF9D5C();
  v10 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(a1 + 16);
  aBlock[4] = a2;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = a3;
  v13 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  v17 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v12, v9, v13);
  _Block_release(v13);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v16);
}

void sub_21D418B10(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000033, 0x800000021DC5C390, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40656C(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D418DA4(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5BE90, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D406C40(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D419038(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BF10, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D407314(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D4192CC(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000034, 0x800000021DC5BFB0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D4079E8(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D419560(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000035, 0x800000021DC5C170, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D4080BC(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D4197F4(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BED0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D408790(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D419A88(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C070, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D408E64(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D419D1C(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000039, 0x800000021DC5C0F0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D409538(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D419FB0(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5C1B0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D409C0C(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41A244(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BFF0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40A2E0(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41A4D8(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5C280, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40A9B4(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41A76C(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BD70, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40B088(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41AA00(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C1F0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40B75C(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41AC94(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C350, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40D170(1, &unk_282EBC4C0, sub_21D43DEC4, &block_descriptor_1631);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41AF4C(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000059, 0x800000021DC5BF50, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40BE30(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41B1E0(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5BE40, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40C3C8(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41B474(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD00000000000003BLL, 0x800000021DC5C2D0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40CA9C(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41B708(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000040, 0x800000021DC5C230, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40D170(1, &unk_282EBB890, sub_21D43D8AC, &block_descriptor_1373);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41B9C0(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5C130, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40D6EC(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41BC54(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD00000000000003CLL, 0x800000021DC5C0B0, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40DDC0(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D41BEE8(uint64_t a1)
{
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() currentThread];
  v7 = [v6 qualityOfService];

  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_280D0F298);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAE9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C030, &v16);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_21D0C9000, v9, v10, "%s: Check for updates upon storeMustRefresh {qos: %ld}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  *v5 = v13;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40E494(1);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D41C17C()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000033, 0x800000021DC5C390, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43E1D8;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1764;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D41C610()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5BE90, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D439D0C;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_261;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D41CAA4()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BF10, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43A04C;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_427;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D41CF38()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000034, 0x800000021DC5BFB0, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43A3F4;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_593;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D41D3CC()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000035, 0x800000021DC5C170, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43D4A4;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1174;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D41D860()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BED0, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D439EAC;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_344;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D41DCF4()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C070, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43CF3C;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_842;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D41E188()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000039, 0x800000021DC5C0F0, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43D27C;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1008;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D41E61C()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5C1B0, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43D644;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1257;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D41EAB0()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BFF0, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43A594;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_676;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D41EF44()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5C280, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43DB18;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1506;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D41F3D8()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BD70, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D436DB4;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_90_0;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D41F86C()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C1F0, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43D7E4;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1340;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D41FD00()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C350, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43E004;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1681;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D420194()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000059, 0x800000021DC5BF50, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43A278;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_510;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D420628()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5BE40, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D439ADC;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_173;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D420ABC()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD00000000000003BLL, 0x800000021DC5C2D0, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43DD20;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1589;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D420F50()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD000000000000040, 0x800000021DC5C230, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43D98C;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_1423;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D4213E4()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD00000000000003CLL, 0x800000021DC5C0B0, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43D0DC;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_925;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_21D421878()
{
  v0 = sub_21DBF608C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 16);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_21DBF9DAC();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_280D17EF0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F298);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C030, aBlock);
    _os_log_impl(&dword_21D0C9000, v13, v14, "%s: Received storeDidChange notification", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = sub_21D43CD9C;
  *(v17 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_759;
  v18 = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21DC08D00;

  sub_21DBF607C();
  v20 = v19;
  sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
  sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
  sub_21DBFBCBC();
  sub_21DBF609C();
  _Block_release(v18);

  (*(v1 + 8))(v3, v0);
}

void sub_21D421D0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_21DBF9D8C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_21DBF9DAC();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    *(a1 + 128) = 1;
    if (*(a1 + 104) == 1)
    {
      sub_21D40D170(0, a2, a3, a4);
      *(a1 + 128) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D421E58(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000033, 0x800000021DC5C390, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E730;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1753;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D4223A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5BE90, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E6E8;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_250;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D4228F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BF10, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E6F0;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_416_0;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D422E48(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000034, 0x800000021DC5BFB0, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E6F8;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_582;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D423398(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000035, 0x800000021DC5C170, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E714;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1163;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D4238E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BED0, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E6EC;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_333;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D423E38(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C070, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E704;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_831;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D424388(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000039, 0x800000021DC5C0F0, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E70C;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_997;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D4248D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5C1B0, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E718;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1246;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D424E28(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BFF0, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E6FC;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_665;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D425378(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5C280, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E724;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1495;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D4258C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BD70, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E6E0;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E6070;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_79;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D425E18(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C1F0, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E71C;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1329;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D426368(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C350, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E72C;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1670;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D4268B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000059, 0x800000021DC5BF50, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E6F4;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_499;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D426E08(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5BE40, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E6E4;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_162;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D427358(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003BLL, 0x800000021DC5C2D0, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E728;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1578;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D4278A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD000000000000040, 0x800000021DC5C230, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E720;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_1412;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D427DF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003CLL, 0x800000021DC5C0B0, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E708;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_914;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D428348(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF608C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v34 = v6;
    if (qword_280D17EF0 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F298);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v12;
      v19 = v4;
      v20 = v18;
      aBlock[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C030, aBlock);
      _os_log_impl(&dword_21D0C9000, v14, v15, "%s: Received applicationDidBecomeActive notification", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v21 = v20;
      v4 = v19;
      v12 = v32;
      MEMORY[0x223D46520](v21, -1, -1);
      v22 = v17;
      v3 = v33;
      MEMORY[0x223D46520](v22, -1, -1);
    }

    swift_beginAccess();
    if (*(a2 + 16) == 1)
    {
      v23 = *(v12 + 16);
      *v10 = v23;
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v24 = v23;
      LOBYTE(v23) = sub_21DBF9DAC();
      result = (*(v8 + 8))(v10, v7);
      if ((v23 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_21D43E700;
      *(v25 + 24) = v12;
      aBlock[4] = sub_21D0E622C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0E6204;
      aBlock[3] = &block_descriptor_748;
      v26 = _Block_copy(aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60EC0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;

      sub_21DBF607C();
      v35 = v27;
      sub_21D0D92F8(&unk_280D0C828, MEMORY[0x277D44E00]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60ED0);
      sub_21D0D9418(&unk_280D0C3C0, &unk_27CE60ED0);
      v28 = v34;
      sub_21DBFBCBC();
      sub_21DBF609C();
      _Block_release(v26);

      (*(v4 + 8))(v28, v3);
    }

    else
    {
      v29 = sub_21DBF84AC();
      v30 = sub_21DBFAE9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21D0C9000, v29, v30, "TTRDataViewMonitor: Skip handling of applicationDidBecomeActive notification", v31, 2u);
        MEMORY[0x223D46520](v31, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_21D428898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a2;
  v8 = sub_21DBF9D2C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF9D5C();
  v12 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = a4;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = a5;
  v15 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  v20 = MEMORY[0x277D84F90];
  sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v14, v11, v15);
  _Block_release(v15);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v18);
}

uint64_t sub_21D428B28(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000033, 0x800000021DC5C390, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D428C88(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5BE90, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D428DE8(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BF10, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D428F48(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000034, 0x800000021DC5BFB0, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D4290A8(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000035, 0x800000021DC5C170, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D429208(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BED0, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D429368(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C070, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D4294C8(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000039, 0x800000021DC5C0F0, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D429628(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD00000000000003ALL, 0x800000021DC5C1B0, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D429788(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5BFF0, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D4298E8(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5C280, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D429A48(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5BD70, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D429BA8(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C1F0, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D429D08(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000037, 0x800000021DC5C350, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D429E68(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000059, 0x800000021DC5BF50, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D429FC8(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000044, 0x800000021DC5BE40, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D42A128(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD00000000000003BLL, 0x800000021DC5C2D0, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D42A288(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000040, 0x800000021DC5C230, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D42A3E8(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD000000000000036, 0x800000021DC5C130, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D42A548(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD00000000000003CLL, 0x800000021DC5C0B0, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D42A6A8(uint64_t a1)
{
  if (qword_280D17EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F298);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D0CDFB4(0xD00000000000003DLL, 0x800000021DC5C030, v8);
    _os_log_impl(&dword_21D0C9000, v3, v4, "%s: Received applicationWillResignActive notification", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D42A808(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3F0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE585D0);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE585D0);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE585D0);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE585D0);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C3F0);
    return sub_21D0CF7E0(v12, &qword_27CE585D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42AA14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C218);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C208);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C208);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C208);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C208);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C208);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C218);
    return sub_21D0CF7E0(v12, &qword_27CE5C208);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42AC20(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C260);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C250);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C250);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C250);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C250);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C260);
    return sub_21D0CF7E0(v12, &qword_27CE5C250);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42AE2C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C278);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C268);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C268);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C268);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C268);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C278);
    return sub_21D0CF7E0(v12, &qword_27CE5C268);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42B038(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C368);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C340);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C340);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C340);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C340);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C340);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C368);
    return sub_21D0CF7E0(v12, &qword_27CE5C340);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42B244(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C248);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C220);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C220);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C220);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C220);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C220);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C248);
    return sub_21D0CF7E0(v12, &qword_27CE5C220);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42B450(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2E8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C2C0);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C2C0);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C2C0);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C2C0);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C2E8);
    return sub_21D0CF7E0(v12, &qword_27CE5C2C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42B65C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C320);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C310);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C310);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C310);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C310);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C320);
    return sub_21D0CF7E0(v12, &qword_27CE5C310);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42B868(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C390);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C370);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C370);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C370);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C370);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C370);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C390);
    return sub_21D0CF7E0(v12, &qword_27CE5C370);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42BA74(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C290);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C280);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C280);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C280);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C280);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C290);
    return sub_21D0CF7E0(v12, &qword_27CE5C280);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42BC80(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3C8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C3A0);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C3A0);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C3A0);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C3A0);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C3C8);
    return sub_21D0CF7E0(v12, &qword_27CE5C3A0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42BE8C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C1B8);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C1B8);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C1B8);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C1B8);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C1D0);
    return sub_21D0CF7E0(v12, &qword_27CE5C1B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42C098(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C398);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C298);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C298);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C298);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C298);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C398);
    return sub_21D0CF7E0(v12, &qword_27CE5C298);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21D42C2A4(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  swift_beginAccess();
  v10 = *(a1 + 136);
  v11 = *(a1 + 144);
  v12 = *(a1 + 152);
  *(a1 + 136) = a2;
  *(a1 + 144) = a3;
  v13 = a4 & 1;
  *(a1 + 152) = v13;
  v15[0] = v10;
  v15[1] = v11;
  v16 = v12;
  v17 = a2;
  v18 = a3;
  v19 = v13;
  v20 = a5 & 1;
  v14 = *(a1 + 88);
  if (v14)
  {
    sub_21D43A0E8(a2, a3, v13);
    sub_21D43A0E8(a2, a3, v13);
    sub_21D0D0E78(v14);
    v14(v15);
    sub_21D0D0E88(v14);
    sub_21D43A134(v10, v11, v12);
    sub_21D43A134(a2, a3, v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D42C3A8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C200);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C1D8);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C1D8);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C1D8);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C1D8);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C200);
    return sub_21D0CF7E0(v12, &qword_27CE5C1D8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42C5B4(void *a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3E0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C3D0);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C3D0);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C3D0);
  result = sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C3D0);
  v9[*(v7 + 48)] = a3 & 1;
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C3E0);
    return sub_21D0CF7E0(v12, &qword_27CE5C3D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21D42C7AC(uint64_t a1, void *a2, char a3, char a4, void (*a5)(void (*)(void), uint64_t), void (*a6)(void (*)(void), uint64_t))
{
  swift_beginAccess();
  v12 = *(a1 + 136);
  v13 = *(a1 + 144);
  *(a1 + 136) = a2;
  v14 = a3 & 1;
  *(a1 + 144) = v14;
  v17 = v12;
  v18 = v13;
  v19 = a2;
  v20 = v14;
  v21 = a4 & 1;
  v15 = *(a1 + 88);
  if (v15)
  {
    v16 = *(a1 + 96);
    sub_21D43DE58(a2, v14);
    sub_21D43DE58(a2, v14);
    a5(v15, v16);
    v15(&v17);
    a6(v15, v16);
    sub_21D43DEB8(v12, v13);
    sub_21D43DEB8(a2, v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D42C8B0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C338);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE60DE0);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE60DE0);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE60DE0);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE60DE0);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C330);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C338);
    return sub_21D0CF7E0(v12, &qword_27CE60DE0);
  }

  else
  {
    __break(1u);
  }

  return result;
}