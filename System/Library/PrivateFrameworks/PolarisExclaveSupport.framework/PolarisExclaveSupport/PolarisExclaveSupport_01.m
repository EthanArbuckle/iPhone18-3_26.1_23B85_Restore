uint64_t sub_25EC5852C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25EC79C04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25EC58558(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getObjectType();
  return sub_25EC798E4();
}

void *GraphDeploymentEK.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t GraphDeploymentEK.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_25EC58690@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = _s21PolarisExclaveSupport17GraphDeploymentEKC11fetchGraphsAA012ExSerializedD9DataArrayVyAA6ResultOYKF(&v7, a1);
  if (v2)
  {
    v5 = v7;
    sub_25EC5B6D8();
    result = swift_allocError();
    *v6 = v5;
  }

  return result;
}

uint64_t sub_25EC586F4@<X0>(void *a1@<X8>)
{
  if (*(v1 + 16))
  {

    _s21PolarisExclaveSupport17GraphDeploymentEKC11fetchGraphsAA012ExSerializedD9DataArrayVyAA6ResultOYKF(&v9, a1);
    if (v2)
    {
      v4 = v9;
      sub_25EC5B6D8();
      swift_allocError();
      *v5 = v4;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_25EC7A890;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 32) = 0xD000000000000038;
    *(v6 + 40) = 0x800000025EC80CE0;
    sub_25EC7A2B4();

    sub_25EC5B6D8();
    swift_allocError();
    *v7 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_25EC58874(uint64_t a1, uint64_t a2, void (*a3)(void *, void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v32 - v14);
  v16 = *(v3 + 16);
  if (v16)
  {
    v33 = a2;
    v35 = v4;
    v36 = a3;
    v17 = *(a1 + 16);
    v34 = v16;
    if (v17)
    {
      v18 = (a1 + 32);
      v40 = *MEMORY[0x277D3E7A8];
      v38 = *(v9 + 104);
      v39 = v9 + 104;
      v37 = v9 + 32;

      v19 = MEMORY[0x277D84F90];
      do
      {
        v20 = *v18++;
        *v15 = v20;
        v38(v15, v40, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_25EC511F8(0, v19[2] + 1, 1, v19);
        }

        v22 = v19[2];
        v21 = v19[3];
        if (v22 >= v21 >> 1)
        {
          v19 = sub_25EC511F8(v21 > 1, v22 + 1, 1, v19);
        }

        v19[2] = v22 + 1;
        (*(v9 + 32))(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, v15, v8);
        --v17;
      }

      while (v17);
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
    }

    v26 = *(v33 + 16);
    if (v26)
    {
      v27 = (v33 + 32);
      v40 = *MEMORY[0x277D3E7A8];
      v38 = *(v9 + 104);
      v39 = v9 + 104;
      v37 = v9 + 32;
      v28 = MEMORY[0x277D84F90];
      do
      {
        v29 = *v27++;
        *v13 = v29;
        v38(v13, v40, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_25EC511F8(0, v28[2] + 1, 1, v28);
        }

        v31 = v28[2];
        v30 = v28[3];
        if (v31 >= v30 >> 1)
        {
          v28 = sub_25EC511F8(v30 > 1, v31 + 1, 1, v28);
        }

        v28[2] = v31 + 1;
        (*(v9 + 32))(v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v31, v13, v8);
        --v26;
      }

      while (v26);
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    v36(v19, v28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_25EC7A890;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 32) = 0xD000000000000038;
    *(v23 + 40) = 0x800000025EC80CE0;
    sub_25EC7A2B4();

    sub_25EC5B6D8();
    swift_allocError();
    *v24 = 0;
    return swift_willThrow();
  }
}

uint64_t PolarisExclaveEndpoint.__allocating_init(taskRegistry:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PolarisExclaveEndpoint.init(taskRegistry:)(a1, a2);
  return v4;
}

void *PolarisExclaveEndpoint.init(taskRegistry:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v2[5] = 0;
  v2[2] = 0;
  v2[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25EC7A890;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0xD000000000000022;
  *(v3 + 40) = 0x800000025EC80D20;
  sub_25EC7A2B4();

  return v2;
}

void *PolarisExclaveEndpoint.__allocating_init(session:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_25EC604B4(a1);

  return v2;
}

void *PolarisExclaveEndpoint.init(session:)(uint64_t a1)
{
  v1 = sub_25EC604B4(a1);

  return v1;
}

void *PolarisExclaveEndpoint.__allocating_init(clientId:graphs:writers:gstService:pbsService:writersInfo:readersInfo:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[5] = 0;
  type metadata accessor for SessionManager();
  v8 = swift_allocObject();
  v9 = sub_25EC79DE4();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v12 = sub_25EC79DB4();
  if (v4)
  {

    swift_deallocPartialClassInstance();
    v13 = v7[5];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v12;
    *(v8 + 16) = a1;
    type metadata accessor for Executor();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D84F90];
    *(v15 + 16) = MEMORY[0x277D84F90];
    *(v8 + 24) = v15;
    *(v8 + 40) = a4;
    v17 = sub_25EC79A54();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();

    *(v8 + 48) = sub_25EC79A44();
    v20 = *(v17 + 48);
    v21 = *(v17 + 52);
    swift_allocObject();
    *(v8 + 56) = sub_25EC79A44();
    *(v8 + 32) = v14;
    v22 = sub_25EC4E3E8(v16);

    *(v8 + 64) = v22;
    type metadata accessor for GraphDeploymentEK();
    swift_allocObject();
    v24 = sub_25EC6036C(a2, a3, v8);

    v7[3] = 0;
    v7[4] = 0;
    v7[2] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_25EC7A890;
    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 32) = 0xD000000000000022;
    *(v25 + 40) = 0x800000025EC80D20;
    sub_25EC7A2B4();
  }

  return v7;
}

void *PolarisExclaveEndpoint.init(clientId:graphs:writers:gstService:pbsService:writersInfo:readersInfo:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v4[5] = 0;
  type metadata accessor for SessionManager();
  v9 = swift_allocObject();
  v10 = sub_25EC79DE4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v13 = sub_25EC79DB4();
  if (v5)
  {

    swift_deallocPartialClassInstance();
    v23 = v4[5];

    type metadata accessor for PolarisExclaveEndpoint();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v13;
    *(v9 + 16) = a1;
    type metadata accessor for Executor();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D84F90];
    *(v15 + 16) = MEMORY[0x277D84F90];
    *(v9 + 24) = v15;
    *(v9 + 40) = a4;
    v17 = sub_25EC79A54();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();

    *(v9 + 48) = sub_25EC79A44();
    v20 = *(v17 + 48);
    v21 = *(v17 + 52);
    swift_allocObject();
    *(v9 + 56) = sub_25EC79A44();
    *(v9 + 32) = v14;
    v22 = sub_25EC4E3E8(v16);

    *(v9 + 64) = v22;
    type metadata accessor for GraphDeploymentEK();
    swift_allocObject();
    v25 = sub_25EC6036C(a2, a3, v9);

    v6[3] = 0;
    v6[4] = 0;
    v6[2] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_25EC7A890;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 32) = 0xD000000000000022;
    *(v26 + 40) = 0x800000025EC80D20;
    sub_25EC7A2B4();
  }

  return v6;
}

uint64_t sub_25EC59340(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25EC7A890;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = 0xD00000000000002ALL;
  *(v2 + 40) = 0x800000025EC80D50;
  sub_25EC7A2B4();

  return a1;
}

uint64_t sub_25EC593E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = sub_25EC79874();
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_25EC798D4();
  v7 = *(v55 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v55);
  v54 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  v44 = sub_25EC79CC4();
  v13 = *(v44 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v44);
  v43 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  v19 = *a1;
  v20 = *(v19 + 16);
  v45 = a2;
  sub_25EC797B4();
  v59 = 0;
  v60 = 0;
  v58 = v19;

  sub_25EC6F430(&v56);
  v21 = v57;
  if (!v57)
  {
  }

  v22 = v56;
  v50 = (v4 + 104);
  v23 = (v7 + 8);
  v49 = *MEMORY[0x277D3E780];
  v47 = (v7 + 32);
  v48 = (v7 + 16);
  v41 = (v13 + 8);
  v42 = (v13 + 16);
  while (1)
  {
    v46 = v22;
    v25 = *(v21 + 16);
    result = sub_25EC79C84();
    v53 = *(v21 + 16);
    if (v53)
    {
      break;
    }

LABEL_3:

    v24 = v44;
    (*v42)(v43, v18, v44);
    sub_25EC79804();
    (*v41)(v18, v24);
    sub_25EC6F430(&v56);
    v22 = v56;
    v21 = v57;
    if (!v57)
    {
    }
  }

  v27 = 0;
  v28 = (v21 + 40);
  while (v27 < *(v21 + 16))
  {
    v30 = v21;
    v31 = *(v28 - 1);
    v32 = *v28;
    v33 = *(v31 + 16);

    v34 = swift_slowAlloc();
    memmove(v34, (v31 + 32), *(v31 + 16));
    v35 = &v34[v33];
    v36 = v50;
    v37 = v51;
    *v51 = v34;
    v37[1] = v35;
    (*v36)(v37, v49, v52);
    sub_25EC79894();

    if ((v32 & 1) == 0)
    {
      v38 = v54;
      sub_25EC798C4();
      v39 = v55;
      (*v23)(v12, v55);
      (*v47)(v12, v38, v39);
    }

    v29 = v55;
    (*v48)(v54, v12, v55);
    sub_25EC79CD4();
    result = (*v23)(v12, v29);
    v28 += 16;
    ++v27;
    v21 = v30;
    if (v53 == v27)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EC5982C@<X0>(char **a1@<X8>)
{
  v51 = a1;
  v1 = sub_25EC79874();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_25EC798D4();
  v6 = *(v70 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v70);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_25EC79CC4();
  v10 = *(v59 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25EC797E4();
  v53 = *(result + 16);
  if (v53)
  {
    v14 = 0;
    v57 = result + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v55 = v10 + 8;
    v56 = v10 + 16;
    v65 = (v2 + 88);
    v66 = v6 + 16;
    v64 = *MEMORY[0x277D3E780];
    v62 = (v2 + 96);
    v15 = MEMORY[0x277D84F90];
    v63 = (v6 + 8);
    v67 = v6;
    v68 = v1;
    v50 = v2;
    v54 = result;
    v52 = v10;
    while (v14 < *(result + 16))
    {
      v60 = v14;
      v61 = v15;
      v16 = v58;
      v17 = v59;
      (*(v10 + 16))(v58, v57 + *(v10 + 72) * v14, v59);
      v18 = sub_25EC797E4();
      result = (*(v10 + 8))(v16, v17);
      v69 = *(v18 + 16);
      if (v69)
      {
        v19 = 0;
        v20 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v19 >= *(v18 + 16))
          {
            __break(1u);
            goto LABEL_39;
          }

          (*(v6 + 16))(v9, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v70);
          sub_25EC798A4();
          v21 = (*v65)(v5, v1);
          if (v21 != v64)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
            v44 = swift_allocObject();
            *(v44 + 16) = xmmword_25EC7A890;
            *(v44 + 56) = MEMORY[0x277D837D0];
            *(v44 + 32) = 0xD000000000000033;
            *(v44 + 40) = 0x800000025EC80FD0;
            sub_25EC7A2B4();

            sub_25EC5B6D8();
            swift_allocError();
            *v45 = 0;
            swift_willThrow();
            (*v63)(v9, v70);
            return (*(v50 + 8))(v5, v1);
          }

          result = (*v62)(v5, v1);
          v22 = *v5;
          if (*v5)
          {
            v23 = *(v5 + 1);
            v24 = v23 - v22;
            if (v23 != v22)
            {
              break;
            }
          }

          v25 = MEMORY[0x277D84F90];
          v26 = *(MEMORY[0x277D84F90] + 16);
          if (v26)
          {
            goto LABEL_11;
          }

LABEL_14:

          v29 = sub_25EC79884();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_25EC514F4(0, *(v20 + 2) + 1, 1, v20);
          }

          v31 = *(v20 + 2);
          v30 = *(v20 + 3);
          if (v31 >= v30 >> 1)
          {
            v20 = sub_25EC514F4((v30 > 1), v31 + 1, 1, v20);
          }

          ++v19;
          (*v63)(v9, v70);
          *(v20 + 2) = v31 + 1;
          v32 = &v20[16 * v31];
          *(v32 + 4) = v25;
          v32[40] = v29 & 1;

          v1 = v68;
          v6 = v67;
          if (v69 == v19)
          {
            goto LABEL_21;
          }
        }

        if (v24 <= 0)
        {
          goto LABEL_40;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362D8, &qword_25EC7B3E0);
        v25 = swift_allocObject();
        v28 = _swift_stdlib_malloc_size(v25);
        v25[2] = v24;
        v25[3] = 2 * v28 - 64;
        memmove(v25 + 4, v22, v24);
        v26 = v25[2];
        if (!v26)
        {
          goto LABEL_14;
        }

LABEL_11:
        v27 = sub_25EC7A0B4();
        *(v27 + 16) = v26;
        bzero((v27 + 32), v26);
        goto LABEL_14;
      }

      v20 = MEMORY[0x277D84F90];
LABEL_21:

      v33 = *(v20 + 2);
      if (v33)
      {
        rawValue = MEMORY[0x277D84F90];

        sub_25EC5B8A4(0, v33, 0);
        v34._rawValue = rawValue;
        v35 = rawValue[2];
        v36 = 32;
        do
        {
          v37 = *(*&v20[v36] + 16);
          rawValue = v34._rawValue;
          v38 = *(v34._rawValue + 3);
          if (v35 >= v38 >> 1)
          {
            sub_25EC5B8A4((v38 > 1), v35 + 1, 1);
            v34._rawValue = rawValue;
          }

          *(v34._rawValue + 2) = v35 + 1;
          *(v34._rawValue + v35 + 4) = v37;
          v36 += 16;
          ++v35;
          --v33;
        }

        while (v33);

        v6 = v67;
        v1 = v68;
      }

      else
      {
        v34._rawValue = MEMORY[0x277D84F90];
      }

      ExResource.init(sampleSizes:)(v34);

      rawValue = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v52;
      if (isUniquelyReferenced_nonNull_native)
      {
        v15 = v61;
      }

      else
      {
        v15 = sub_25EC513E8(0, *(v61 + 2) + 1, 1, v61);
      }

      v41 = *(v15 + 2);
      v40 = *(v15 + 3);
      v42 = v60;
      if (v41 >= v40 >> 1)
      {
        v43 = sub_25EC513E8((v40 > 1), v41 + 1, 1, v15);
        v42 = v60;
        v15 = v43;
      }

      v14 = v42 + 1;
      *(v15 + 2) = v41 + 1;
      *&v15[8 * v41 + 32] = v20;
      result = v54;
      if (v14 == v53)
      {
        v48 = v15;

        goto LABEL_37;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {

    v48 = MEMORY[0x277D84F90];
LABEL_37:
    v46 = v51;
    ExResourceArray.init(resourceConfigs:)(MEMORY[0x277D84F90]);
    v47 = *v46;

    *v46 = v48;
  }

  return result;
}

uint64_t sub_25EC59F84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25EC79CC4();
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_25EC79874();
  v8 = *(v50 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v50);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_25EC798D4();
  v12 = *(v49 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v49);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a1;
  v16 = *(v42 + 16);
  v46 = a2;
  result = sub_25EC797B4();
  v39 = v16;
  if (v16)
  {
    v18 = 0;
    v38 = v42 + 32;
    v48 = *MEMORY[0x277D3E780];
    v19 = (v8 + 104);
    v37 = v41 + 40;
    while (v18 < *(v42 + 16))
    {
      v47 = v18;
      v20 = (v38 + 8 * v18);
      v21 = *v20;
      if (*v20)
      {
        v22 = MEMORY[0x277D84F90];
        do
        {
          v23 = v20[1];
          v24 = swift_slowAlloc();
          *v11 = v24;
          v11[1] = v24 + v23;
          (*v19)(v11, v48, v50);
          sub_25EC79894();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_25EC509FC(0, v22[2] + 1, 1, v22);
          }

          v26 = v22[2];
          v25 = v22[3];
          if (v26 >= v25 >> 1)
          {
            v22 = sub_25EC509FC(v25 > 1, v26 + 1, 1, v22);
          }

          v22[2] = v26 + 1;
          (*(v12 + 32))(v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v26, v15, v49);
          --v21;
        }

        while (v21);
        v27 = *v20;
      }

      sub_25EC79C84();
      v28 = sub_25EC797D4();
      v30 = v29;
      v31 = *v29;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v30 = v31;
      if ((result & 1) == 0)
      {
        result = sub_25EC6D9B8(v31);
        v31 = result;
        *v30 = result;
      }

      if (v47 >= *(v31 + 2))
      {
        goto LABEL_21;
      }

      v32 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v33 = *(v41 + 40);
      v44 = *(v41 + 72) * v47;
      v33(&v31[v32 + v44], v45, v40);
      v28(v51, 0);
      v43 = sub_25EC797D4();
      v35 = v34;
      v36 = *v34;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v35 = v36;
      if ((result & 1) == 0)
      {
        result = sub_25EC6D9B8(v36);
        v36 = result;
        *v35 = result;
      }

      if (v47 >= v36[2])
      {
        goto LABEL_22;
      }

      v18 = v47 + 1;
      sub_25EC79CB4();
      result = v43(v51, 0);
      if (v18 == v39)
      {
        return result;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_25EC5A3F4@<X0>(char **a1@<X1>, char **a2@<X2>, void *a3@<X8>)
{
  v79 = a3;
  v6 = sub_25EC79704();
  v89 = *(v6 - 8);
  v90 = v6;
  v7 = *(v89 + 64);
  MEMORY[0x28223BE20](v6);
  v87 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25EC797F4();
  v91 = *(v9 - 8);
  v92 = v9;
  v10 = *(v91 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v88 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v101 = v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361D8, &qword_25EC7AD68);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v77 - v16;
  v83 = sub_25EC79774();
  v82 = *(v83 - 8);
  v18 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v84 = v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_25EC79794();
  v85 = *(v86 - 8);
  v20 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v98 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25EC79734();
  v99 = *(v22 - 8);
  v100 = v22;
  v23 = *(v99 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v95 = v77 - v27;
  v28 = sub_25EC796F4();
  v96 = *(v28 - 8);
  v97 = v28;
  v29 = *(v96 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v94 = v77 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362A8, &qword_25EC7B290);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = v77 - v36;
  v104 = sub_25EC79D34();
  v102 = *(v104 - 8);
  v38 = *(v102 + 64);
  MEMORY[0x28223BE20](v104);
  v40 = v77 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *a1;
  v81 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v41 = swift_allocObject();
  v103 = xmmword_25EC7A890;
  *(v41 + 16) = xmmword_25EC7A890;
  *(v41 + 56) = MEMORY[0x277D837D0];
  *(v41 + 32) = 0xD00000000000002ELL;
  *(v41 + 40) = 0x800000025EC80D80;
  sub_25EC7A2B4();

  sub_25EC79D14();
  if (!*(v3 + 24))
  {
    goto LABEL_4;
  }

  v42 = *(v3 + 32);
  v43 = *(v3 + 24);
  v44 = sub_25EC797A4();
  MEMORY[0x28223BE20](v44);
  v77[-2] = v40;
  v45 = v93;
  sub_25EC533EC(sub_25EC605B0, &v77[-4], v44, v37);

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362B0, &qword_25EC7B298);
  if ((*(*(v46 - 8) + 48))(v37, 1, v46) == 1)
  {
    sub_25EC60CB8(v37, &qword_27FD362A8, &qword_25EC7B290);
LABEL_4:
    v47 = swift_allocObject();
    *(v47 + 16) = v103;
    v105 = 0;
    v106 = 0xE000000000000000;
    sub_25EC7A144();

    v105 = 0xD000000000000023;
    v106 = 0x800000025EC80DB0;
    v107 = sub_25EC79D24();
    v48 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v48);

    MEMORY[0x25F8CB870](0xD000000000000016, 0x800000025EC80DE0);
    v49 = v105;
    v50 = v106;
    *(v47 + 56) = MEMORY[0x277D837D0];
    *(v47 + 32) = v49;
    *(v47 + 40) = v50;
    sub_25EC7A2B4();

    sub_25EC5B6D8();
    swift_allocError();
    *v51 = 2;
    swift_willThrow();
    return (*(v102 + 8))(v40, v104);
  }

  v52 = &v37[*(v46 + 48)];
  v93 = v45;
  v53 = *(v52 + 1);
  v77[2] = *v52;
  v54 = *(v102 + 8);
  v77[1] = v102 + 8;
  v77[0] = v54;
  v54(v37, v104);
  v55 = swift_allocObject();
  *(v55 + 16) = v103;
  v105 = 0;
  v106 = 0xE000000000000000;
  sub_25EC7A144();

  v78 = " not found in registry";
  v105 = 0xD000000000000023;
  v106 = 0x800000025EC80DB0;
  v107 = sub_25EC79D24();
  v56 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v56);

  MEMORY[0x25F8CB870](0xD00000000000001BLL, 0x800000025EC80E20);
  v57 = v105;
  v58 = v106;
  *(v55 + 56) = MEMORY[0x277D837D0];
  *(v55 + 32) = v57;
  *(v55 + 40) = v58;
  sub_25EC7A2B4();

  v59 = v94;
  sub_25EC796E4();
  v60 = v95;
  sub_25EC796E4();
  (*(v96 + 16))(v32, v59, v97);
  (*(v99 + 16))(v26, v60, v100);
  v61 = *(v53 + 8);
  v62 = sub_25EC79CE4();
  (*(v82 + 104))(v84, *MEMORY[0x277D3E770], v83);
  sub_25EC79D44();
  v63 = sub_25EC79D54();
  (*(*(v63 - 8) + 56))(v17, 0, 1, v63);
  sub_25EC79784();
  v105 = v80;
  sub_25EC593E8(&v105, v101);
  v105 = v81;
  v64 = v88;
  sub_25EC59F84(&v105, v88);
  v65 = v87;
  v84 = v62;
  sub_25EC79714();
  v66 = swift_allocObject();
  *(v66 + 16) = v103;
  v105 = 0;
  v106 = 0xE000000000000000;
  sub_25EC7A144();
  MEMORY[0x25F8CB870](0xD000000000000018, v78 | 0x8000000000000000);
  MEMORY[0x25F8CB870](0x646E496B73615420, 0xEC000000203A7865);
  v107 = sub_25EC79D24();
  v67 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v67);

  MEMORY[0x25F8CB870](0xD00000000000001BLL, 0x800000025EC80E40);
  v68 = v90;
  sub_25EC7A164();
  v69 = v105;
  v70 = v106;
  *(v66 + 56) = MEMORY[0x277D837D0];
  *(v66 + 32) = v69;
  *(v66 + 40) = v70;
  sub_25EC7A2B4();

  v71 = v93;
  sub_25EC5982C(&v105);
  if (!v71)
  {
    (*(v89 + 8))(v65, v68);
    *v79 = v105;
    sub_25EC605E0();
    swift_unknownObjectRelease();
    v75 = v92;
    v76 = *(v91 + 8);
    v76(v64, v92);
    v76(v101, v75);
    (*(v85 + 8))(v98, v86);
    (*(v99 + 8))(v95, v100);
    (*(v96 + 8))(v94, v97);
    return (v77[0])(v40, v104);
  }

  (*(v89 + 8))(v65, v68);
  sub_25EC605E0();
  swift_unknownObjectRelease();
  v72 = v92;
  v73 = *(v91 + 8);
  v73(v64, v92);
  v73(v101, v72);
  (*(v85 + 8))(v98, v86);
  (*(v99 + 8))(v95, v100);
  (*(v96 + 8))(v94, v97);
  return (*(v102 + 8))(v40, v104);
}

uint64_t sub_25EC5B0E4()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    v2 = *(v0 + 16);
    if (v2)
    {
      v1 = *(v2 + 32);
      v3 = *(v0 + 40);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

unint64_t sub_25EC5B138(unsigned int a1, int a2)
{
  v6 = 0xD000000000000018;
  if (*(v2 + 40))
  {
    v7 = *(v2 + 40);
  }

  else
  {
    v8 = *(v2 + 16);
    if (!v8)
    {
      goto LABEL_9;
    }

    v7 = *(v8 + 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25EC7A890;

  sub_25EC7A144();
  MEMORY[0x25F8CB870](0xD000000000000018, 0x800000025EC80E00);
  MEMORY[0x25F8CB870](0xD00000000000002BLL, 0x800000025EC80E60);
  v10 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v10);

  MEMORY[0x25F8CB870](0x7265646E6573202CLL, 0xEB00000000206449);
  v11 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v11);

  MEMORY[0x25F8CB870](0x49656D617266202CLL, 0xEA00000000002064);
  v12 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v12);

  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 32) = 0;
  *(v9 + 40) = 0xE000000000000000;
  sub_25EC7A2B4();

  v13 = v7;
  sub_25EC4C34C(a1, a2);
  if (!v3)
  {
    v6 = *(v7 + 24);

    swift_beginAccess();
    v13 = *(*(v6 + 16) + 16);

    if (!HIDWORD(v13))
    {
      return v13;
    }

    __break(1u);
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25EC7A890;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 32) = v6 + 32;
    *(v14 + 40) = 0x800000025EC80CE0;
    sub_25EC7A2B4();

    return 0;
  }

  return v13;
}

uint64_t sub_25EC5B448()
{
  if (*(v0 + 40))
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = *(v0 + 16);
    if (!v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_25EC7A890;
      *(v10 + 56) = MEMORY[0x277D837D0];
      *(v10 + 32) = 0xD000000000000038;
      *(v10 + 40) = 0x800000025EC80CE0;
      sub_25EC7A2B4();

      return 0;
    }

    v2 = *(v3 + 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25EC7A890;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0xD000000000000034;
  *(v4 + 40) = 0x800000025EC80E90;

  sub_25EC7A2B4();

  v5 = *(v2 + 24);

  swift_beginAccess();
  v6 = *(v5 + 16);
  if (!v6[2])
  {
LABEL_9:

LABEL_11:

    return 0;
  }

  while (1)
  {
    result = swift_beginAccess();
    if (!v6[2])
    {
      break;
    }

    v8 = v6[4];
    v9 = v6[5];

    sub_25EC4E8E0(0, 1);
    swift_endAccess();
    sub_25EC48C0C(v9);
    if (v1)
    {

      goto LABEL_11;
    }

    v6 = *(v5 + 16);
    if (!v6[2])
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t PolarisExclaveEndpoint.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t PolarisExclaveEndpoint.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_25EC5B6D8()
{
  result = qword_27FD36290;
  if (!qword_27FD36290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD36290);
  }

  return result;
}

size_t sub_25EC5B72C(size_t a1, int64_t a2, char a3)
{
  result = sub_25EC5BF50(a1, a2, a3, *v3, &qword_27FD36210, &qword_25EC7AD90, MEMORY[0x277D3E800]);
  *v3 = result;
  return result;
}

char *sub_25EC5B770(char *a1, int64_t a2, char a3)
{
  result = sub_25EC5BA24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EC5B790(char *a1, int64_t a2, char a3)
{
  result = sub_25EC5BB28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EC5B7B0(char *a1, int64_t a2, char a3)
{
  result = sub_25EC5BC50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25EC5B7D0(size_t a1, int64_t a2, char a3)
{
  result = sub_25EC5BD60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25EC5B7F0(size_t a1, int64_t a2, char a3)
{
  result = sub_25EC5BF50(a1, a2, a3, *v3, &qword_27FD36310, &unk_25EC7B4C0, MEMORY[0x277D3E7E8]);
  *v3 = result;
  return result;
}

char *sub_25EC5B834(char *a1, int64_t a2, char a3)
{
  result = sub_25EC5C230(a1, a2, a3, *v3, &qword_27FD36208, &qword_25EC7AD88);
  *v3 = result;
  return result;
}

char *sub_25EC5B86C(char *a1, int64_t a2, char a3)
{
  result = sub_25EC5C33C(a1, a2, a3, *v3, &qword_27FD36200, &unk_25EC7B400);
  *v3 = result;
  return result;
}

char *sub_25EC5B8A4(char *a1, int64_t a2, char a3)
{
  result = sub_25EC5C12C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EC5B8C4(char *a1, int64_t a2, char a3)
{
  result = sub_25EC5C230(a1, a2, a3, *v3, &qword_27FD362D0, &qword_25EC7B3D8);
  *v3 = result;
  return result;
}

char *sub_25EC5B8FC(char *a1, int64_t a2, char a3)
{
  result = sub_25EC5C33C(a1, a2, a3, *v3, &qword_27FD362C8, &qword_25EC7B3D0);
  *v3 = result;
  return result;
}

char *sub_25EC5B934(char *a1, int64_t a2, char a3)
{
  result = sub_25EC5C448(a1, a2, a3, *v3, &qword_27FD362E0, &qword_25EC7B3E8);
  *v3 = result;
  return result;
}

char *sub_25EC5B964(char *a1, int64_t a2, char a3)
{
  result = sub_25EC5C448(a1, a2, a3, *v3, &qword_27FD362C0, &qword_25EC7B3C8);
  *v3 = result;
  return result;
}

char *sub_25EC5B994(char *a1, int64_t a2, char a3)
{
  result = sub_25EC5C544(a1, a2, a3, *v3, &qword_27FD36238, &qword_25EC7ADB8);
  *v3 = result;
  return result;
}

char *sub_25EC5B9CC(char *a1, int64_t a2, char a3)
{
  result = sub_25EC5C544(a1, a2, a3, *v3, &qword_27FD362B8, &qword_25EC7B3C0);
  *v3 = result;
  return result;
}

char *sub_25EC5BA04(char *a1, int64_t a2, char a3)
{
  result = sub_25EC5C650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EC5BA24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361F0, &qword_25EC7B5A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_25EC5BB28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36240, &qword_25EC7ADC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25EC5BC50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36248, &unk_25EC7B4D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

size_t sub_25EC5BD60(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36218, &qword_25EC7AD98);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40) - 8);
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

size_t sub_25EC5BF50(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_25EC5C12C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362E8, &qword_25EC7B3F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25EC5C230(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_25EC5C33C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_25EC5C448(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_25EC5C544(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_25EC5C650(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362D8, &qword_25EC7B3E0);
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

uint64_t sub_25EC5C744(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25EC7A104() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x25F8CBAE0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 4 * v3);
          v17 = (v15 + 4 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25EC5C8B8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25EC7A104() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x25F8CBAE0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25EC5CA2C(int64_t a1, uint64_t a2)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - v8;
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_25EC7A104();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_25EC4F4D0(&qword_27FD361A8);
      v26 = sub_25EC7A014();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

void *sub_25EC5CD64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36180, &qword_25EC7AD20);
  v2 = *v0;
  v3 = sub_25EC7A194();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

char *sub_25EC5CEC4()
{
  v1 = v0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36198, &qword_25EC7AD38);
  v4 = *v0;
  v5 = sub_25EC7A194();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_25EC5D174(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25EC7A194();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 4 * v19) = *(*(v4 + 48) + 4 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

    *v3 = v6;
  }

  return result;
}

unint64_t *sub_25EC5D2C0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_25EC5FAFC(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_25EC5D35C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_25EC79BC4();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36318, &qword_25EC7B4F0);
  result = sub_25EC7A134();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_25EC60D20(&qword_27FD36320, MEMORY[0x277D3E7D0]);
    result = sub_25EC7A014();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25EC5D684(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - v10;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36308, &qword_25EC7B830);
  result = sub_25EC7A134();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_25EC4F4D0(&qword_27FD361A8);
    result = sub_25EC7A014();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25EC5D9A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362F8, &qword_25EC7B410);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = v20 - v11;
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_25EC60CB8(v6, &qword_27FD362F8, &qword_25EC7B410))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_25EC5F540(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25EC5DBC4(uint64_t a1, uint64_t a2)
{
  v65[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v59 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v51 - v10;
  MEMORY[0x28223BE20](v9);
  i = v51 - v12;
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_30;
  }

  v65[0] = a1;
  v13 = *(a1 + 16);

  v53 = v13;
  if (!v13)
  {
    goto LABEL_29;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v55 = a1;
  v56 = a1 + ((v17 + 32) & ~v17);
  v62 = *(v15 + 56);
  v63 = v16;
  v60 = (a2 + 56);
  v61 = a2;
  v64 = v15;
  v18 = (v15 - 8);
  v52 = ((v15 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v57 = v14 + 1;
    v63(i, v56 + v62 * v14, v4);
    v19 = *(a2 + 40);
    v54 = sub_25EC4F4D0(&qword_27FD361A8);
    v20 = sub_25EC7A014();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v60[v22 >> 6]) != 0)
    {
      break;
    }

    v27 = *v18;
LABEL_10:
    v27(i, v4);
    v14 = v57;
    if (v57 == v53)
    {
      goto LABEL_29;
    }
  }

  v25 = ~v21;
  while (1)
  {
    v63(v11, *(v61 + 48) + v22 * v62, v4);
    sub_25EC4F4D0(&qword_27FD361B8);
    v26 = sub_25EC7A024();
    v27 = *v18;
    (*v18)(v11, v4);
    if (v26)
    {
      break;
    }

    v22 = (v22 + 1) & v25;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v60[v22 >> 6]) == 0)
    {
      a2 = v61;
      goto LABEL_10;
    }
  }

  v28 = v57;
  v65[1] = v57;
  v29 = (v27)(i, v4);
  v30 = v61;
  v31 = *(v61 + 32);
  v51[0] = ((1 << v31) + 63) >> 6;
  v32 = 8 * v51[0];
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_33;
  }

  while (2)
  {
    v51[1] = v51;
    MEMORY[0x28223BE20](v29);
    v22 = v51 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v22, v60, v33);
    v34 = *(v30 + 16);
    *(v22 + 8 * v23) &= ~v24;
    v52 = v22;
    v53 = (v34 - 1);
    v35 = *(v55 + 16);
    for (i = v35; ; v35 = i)
    {
      if (v28 == v35)
      {
        a2 = sub_25EC5D684(v52, v51[0], v53, v30);
        goto LABEL_29;
      }

      if (v28 >= *(v55 + 16))
      {
        break;
      }

      v57 = v28;
      v63(v59, v56 + v28 * v62, v4);
      v37 = *(v30 + 40);
      v38 = sub_25EC7A014();
      v39 = -1 << *(v30 + 32);
      v22 = v38 & ~v39;
      v24 = v22 >> 6;
      v23 = 1 << v22;
      if (((1 << v22) & v60[v22 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v63(v11, *(v61 + 48) + v22 * v62, v4);
      v40 = sub_25EC7A024();
      v27(v11, v4);
      if ((v40 & 1) == 0)
      {
        v41 = ~v39;
        while (1)
        {
          v22 = (v22 + 1) & v41;
          v24 = v22 >> 6;
          v23 = 1 << v22;
          if (((1 << v22) & v60[v22 >> 6]) == 0)
          {
            break;
          }

          v63(v11, *(v61 + 48) + v22 * v62, v4);
          v42 = sub_25EC7A024();
          v27(v11, v4);
          if (v42)
          {
            goto LABEL_24;
          }
        }

LABEL_15:
        v27(v59, v4);
        v30 = v61;
        v36 = v57;
        goto LABEL_16;
      }

LABEL_24:
      v27(v59, v4);
      v43 = v52[v24];
      v52[v24] = v43 & ~v23;
      v30 = v61;
      v36 = v57;
      if ((v43 & v23) != 0)
      {
        v44 = v53 - 1;
        if (__OFSUB__(v53, 1))
        {
          goto LABEL_32;
        }

        --v53;
        if (!v44)
        {

          a2 = MEMORY[0x277D84FA0];
          goto LABEL_29;
        }
      }

LABEL_16:
      v28 = v36 + 1;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v47 = v32;

    v48 = v47;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v49 = v61;

      v30 = v49;
      v28 = v57;
      continue;
    }

    break;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v60, v48);
  a2 = sub_25EC5ECB0(v50, v51[0], v61, v22, v65);

  MEMORY[0x25F8CBF90](v50, -1, -1);
LABEL_29:

LABEL_30:
  v45 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_25EC5E268(unint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362F8, &qword_25EC7B410);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v72 = (&v70 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v90 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v70 - v16);
  MEMORY[0x28223BE20](v15);
  v85 = (&v70 - v18);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v74 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v71 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v19;
  v77 = (63 - v21) >> 6;
  v91 = v11 + 2;
  v83 = (v11 + 6);
  v84 = (v11 + 7);
  v80 = (v11 + 4);
  v81 = a1;
  v87 = (a2 + 56);
  v93 = (v11 + 1);

  v25 = 0;
  v73 = v11;
  for (i = a1 + 56; ; v20 = i)
  {
    v26 = v23;
    v27 = v25;
    if (v23)
    {
LABEL_14:
      a1 = (v26 - 1) & v26;
      v31 = v81[6] + v11[9] * (__clz(__rbit64(v26)) | (v27 << 6));
      v32 = v11[2];
      v33 = v72;
      v32(v72, v31, v10);
      v34 = 0;
      v29 = v27;
    }

    else
    {
      v28 = v77 <= (v25 + 1) ? v25 + 1 : v77;
      v29 = v28 - 1;
      v30 = v25;
      while (1)
      {
        v27 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_57;
        }

        if (v27 >= v77)
        {
          break;
        }

        v26 = *(v20 + 8 * v27);
        ++v30;
        if (v26)
        {
          goto LABEL_14;
        }
      }

      a1 = 0;
      v34 = 1;
      v33 = v72;
    }

    v79 = *v84;
    v79(v33, v34, 1, v10);
    v78 = *v83;
    if (v78(v33, 1, v10) == 1)
    {
      sub_25EC60CB8(v33, &qword_27FD362F8, &qword_25EC7B410);
      goto LABEL_52;
    }

    v76 = *v80;
    v76(v85, v33, v10);
    v35 = *(a2 + 40);
    v75 = sub_25EC4F4D0(&qword_27FD361A8);
    v36 = sub_25EC7A014();
    v37 = -1 << *(a2 + 32);
    v25 = v36 & ~v37;
    v27 = v25 >> 6;
    v20 = 1 << v25;
    if (((1 << v25) & v87[v25 >> 6]) != 0)
    {
      break;
    }

    v11 = v73;
    (*v93)(v85, v10);
LABEL_22:
    v25 = v29;
    v23 = a1;
  }

  v70 = v93 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v86 = ~v37;
  v38 = v73[9];
  v88 = v73[2];
  v89 = v38;
  while (1)
  {
    v88(v17, *(a2 + 48) + v89 * v25, v10);
    v39 = sub_25EC4F4D0(&qword_27FD361B8);
    v40 = sub_25EC7A024();
    v92 = *v93;
    v92(v17, v10);
    if (v40)
    {
      break;
    }

    v25 = (v25 + 1) & v86;
    v27 = v25 >> 6;
    v20 = 1 << v25;
    if (((1 << v25) & v87[v25 >> 6]) == 0)
    {
      v11 = v73;
      v92(v85, v10);
      goto LABEL_22;
    }
  }

  v86 = v39;
  v95 = v71;
  v96 = v29;
  v97 = a1;
  v11 = v81;
  v94[0] = v81;
  v94[1] = i;
  v41 = (v92)(v85, v10);
  v42 = *(a2 + 32);
  v70 = ((1 << v42) + 63) >> 6;
  v24 = 8 * v70;
  if ((v42 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v72 = &v70;
    MEMORY[0x28223BE20](v41);
    v44 = &v70 - ((v43 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v44, v87, v43);
    v45 = *&v44[8 * v27] & ~v20;
    v46 = *(a2 + 16);
    v85 = v44;
    *&v44[8 * v27] = v45;
    v47 = v46 - 1;
    v27 = i;
    v48 = v74;
    v49 = v77;
LABEL_26:
    v73 = v47;
    while (a1)
    {
      v50 = v29;
LABEL_38:
      v53 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v88(v48, v11[6] + (v53 | (v50 << 6)) * v89, v10);
      v54 = 0;
LABEL_39:
      v79(v48, v54, 1, v10);
      if (v78(v48, 1, v10) == 1)
      {
        sub_25EC60CB8(v48, &qword_27FD362F8, &qword_25EC7B410);
        a2 = sub_25EC5D684(v85, v70, v73, a2);
        goto LABEL_52;
      }

      v76(v90, v48, v10);
      v55 = *(a2 + 40);
      v56 = sub_25EC7A014();
      v57 = a2;
      v58 = -1 << *(a2 + 32);
      v25 = v56 & ~v58;
      v59 = v25 >> 6;
      v20 = 1 << v25;
      if (((1 << v25) & v87[v25 >> 6]) != 0)
      {
        v88(v17, *(v57 + 48) + v25 * v89, v10);
        v60 = sub_25EC7A024();
        v92(v17, v10);
        if ((v60 & 1) == 0)
        {
          v61 = ~v58;
          do
          {
            v25 = (v25 + 1) & v61;
            v59 = v25 >> 6;
            v20 = 1 << v25;
            if (((1 << v25) & v87[v25 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v88(v17, *(v57 + 48) + v25 * v89, v10);
            v62 = sub_25EC7A024();
            v92(v17, v10);
          }

          while ((v62 & 1) == 0);
        }

        v92(v90, v10);
        v63 = v85[v59];
        v85[v59] = v63 & ~v20;
        a2 = v57;
        v11 = v81;
        v27 = i;
        v48 = v74;
        v49 = v77;
        if ((v63 & v20) != 0)
        {
          v47 = v73 - 1;
          if (__OFSUB__(v73, 1))
          {
            __break(1u);
          }

          if (v73 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v92(v90, v10);
        a2 = v57;
        v11 = v81;
        v27 = i;
        v48 = v74;
        v49 = v77;
      }
    }

    if (v49 <= (v29 + 1))
    {
      v51 = v29 + 1;
    }

    else
    {
      v51 = v49;
    }

    v52 = v51 - 1;
    while (1)
    {
      v50 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v50 >= v49)
      {
        a1 = 0;
        v54 = 1;
        v29 = v52;
        goto LABEL_39;
      }

      a1 = *(v27 + 8 * v50);
      ++v29;
      if (a1)
      {
        v29 = v50;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v66 = v24;

    v85 = a2;
    v67 = v66;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v68 = v85;

      a2 = v68;
      continue;
    }

    break;
  }

  v69 = swift_slowAlloc();
  memcpy(v69, v87, v67);
  a2 = sub_25EC5F088(v69, v70, v85, v25, v94);

  MEMORY[0x25F8CBF90](v69, -1, -1);
  v71 = v95;
LABEL_52:
  sub_25EC60D18();
LABEL_54:
  v64 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_25EC5ECB0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v44 = &v37 - v16;
  result = MEMORY[0x28223BE20](v15);
  v50 = &v37 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = a1;
  v39 = v19 - 1;
  v20 = *a5;
  v21 = a5[1];
  v22 = *(*a5 + 16);
  if (v21 == v22)
  {
LABEL_2:

    return sub_25EC5D684(v38, v37, v39, a3);
  }

  v42 = v10 + 32;
  v43 = v10;
  v45 = a3 + 56;
  v40 = a5;
  v48 = v10 + 16;
  v49 = (v10 + 8);
  while (v21 < v22)
  {
    v24 = *(v10 + 80);
    v47 = *(v10 + 72);
    v25 = v44;
    v46 = *(v10 + 16);
    v46(v44, v20 + ((v24 + 32) & ~v24) + v47 * v21, v9);
    a5[1] = v21 + 1;
    (*(v10 + 32))(v50, v25, v9);
    v26 = *(a3 + 40);
    sub_25EC4F4D0(&qword_27FD361A8);
    v27 = sub_25EC7A014();
    v28 = -1 << *(a3 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
    {
      v23 = *v49;
LABEL_6:
      result = (v23)(v50, v9);
      goto LABEL_7;
    }

    v41 = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = a3;
    v33 = ~v28;
    while (1)
    {
      v46(v14, *(v32 + 48) + v29 * v47, v9);
      sub_25EC4F4D0(&qword_27FD361B8);
      v34 = sub_25EC7A024();
      v23 = *v49;
      (*v49)(v14, v9);
      if (v34)
      {
        break;
      }

      v29 = (v29 + 1) & v33;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
      {
        a3 = v32;
        a5 = v40;
        goto LABEL_6;
      }
    }

    result = (v23)(v50, v9);
    v35 = v38[v30];
    v38[v30] = v35 & ~v31;
    if ((v35 & v31) == 0)
    {
      a3 = v32;
      a5 = v40;
LABEL_7:
      v10 = v43;
      goto LABEL_8;
    }

    v36 = v39 - 1;
    v10 = v43;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_21;
    }

    a3 = v32;
    a5 = v40;
    --v39;
    if (!v36)
    {
      return MEMORY[0x277D84FA0];
    }

LABEL_8:
    v20 = *a5;
    v21 = a5[1];
    v22 = *(*a5 + 16);
    if (v21 == v22)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_25EC5F088(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362F8, &qword_25EC7B410);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v26 = *a5;
        v25 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v25 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v26 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v26;
        a5[1] = v25;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_25EC60CB8(v12, &qword_27FD362F8, &qword_25EC7B410);
          v48 = v64;

          return sub_25EC5D684(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_25EC4F4D0(&qword_27FD361A8);
        v38 = sub_25EC7A014();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_25EC4F4D0(&qword_27FD361B8);
        v46 = sub_25EC7A024();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_25EC5F540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25EC4F4D0(&qword_27FD361A8);
  v35 = a1;
  v13 = sub_25EC7A014();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_25EC4F4D0(&qword_27FD361B8);
      v22 = sub_25EC7A024();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25EC69218();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_25EC5F7C8(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_25EC5F7C8(int64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - v7;
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_25EC7A104();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v38 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v18 = v13;
      v19 = *(v16 + 56);
      v39 = v16;
      v36 = (v16 - 8);
      v37 = v17;
      do
      {
        v20 = v10;
        v21 = v19;
        v22 = v19 * v12;
        v37(v8, *(v9 + 48) + v19 * v12, v3);
        v23 = v9;
        v24 = v18;
        v25 = v23;
        v26 = *(v23 + 40);
        sub_25EC4F4D0(&qword_27FD361A8);
        v27 = sub_25EC7A014();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v18 = v24;
        if (a1 >= v38)
        {
          if (v28 >= v38 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v21;
            v32 = v21 * a1;
            if (v21 * a1 < v22 || v31 + v21 * a1 >= (v31 + v22 + v21))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v22)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v38 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v21;
LABEL_5:
        v12 = (v12 + 1) & v18;
        v10 = v20;
      }

      while (((*(v20 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

uint64_t sub_25EC5FAFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v38 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = sub_25EC79BC4();
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 0;
  v47 = a3;
  v17 = 0;
  v18 = *(a3 + 56);
  v37 = a3 + 56;
  v19 = 1 << *(a3 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v44 = v14 + 16;
  v45 = v14;
  v39 = (v14 + 8);
  v40 = (v7 + 8);
  v41 = v22;
  v42 = v16;
  v43 = result;
LABEL_5:
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v49 = (v21 - 1) & v21;
LABEL_12:
    v26 = v23 | (v17 << 6);
    v27 = *(v47 + 48);
    v28 = *(v45 + 72);
    v48 = v26;
    (*(v45 + 16))(v16, v27 + v28 * v26, v11);
    sub_25EC79B74();
    v29 = 0;
    v30 = *(a4 + 16);
    do
    {
      if (v30 == v29)
      {
        (*v40)(v10, v6);
        v16 = v42;
        v11 = v43;
        result = (*v39)(v42, v43);
        v22 = v41;
        v21 = v49;
        goto LABEL_5;
      }

      v31 = v29 + 1;
      v32 = a4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v29;
      sub_25EC4F4D0(&qword_27FD361B8);
      v33 = sub_25EC7A024();
      v29 = v31;
    }

    while ((v33 & 1) == 0);
    (*v40)(v10, v6);
    v16 = v42;
    v11 = v43;
    result = (*v39)(v42, v43);
    *(v38 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    v34 = __OFADD__(v46++, 1);
    v22 = v41;
    v21 = v49;
    if (v34)
    {
      __break(1u);
LABEL_18:
      v35 = v47;

      return sub_25EC5D35C(v38, v36, v46, v35);
    }
  }

  v24 = v17;
  while (1)
  {
    v17 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v17 >= v22)
    {
      goto LABEL_18;
    }

    v25 = *(v37 + 8 * v17);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v49 = (v25 - 1) & v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EC5FE90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v38 - v9;
  v52 = sub_25EC79BC4();
  v11 = *(v52 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v52);
  v51 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v13) = *(a1 + 32);
  v14 = v13 & 0x3F;
  v39 = ((1 << v13) + 63) >> 6;
  v15 = 8 * v39;

  if (v14 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v38[1] = v38;
    v38[2] = v3;
    MEMORY[0x28223BE20](v16);
    v41 = v38 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v41, v15);
    v48 = 0;
    v3 = 0;
    v17 = *(a1 + 56);
    v40 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v42 = v11 + 2;
    v43 = v11;
    v44 = (v11 + 1);
    v45 = (v7 + 8);
    v11 = &qword_27FD361B8;
    v46 = v21;
    v47 = a1;
LABEL_6:
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v50 = (v20 - 1) & v20;
LABEL_13:
      v25 = v22 | (v3 << 6);
      v26 = *(a1 + 48);
      v27 = v43[9];
      v49 = v25;
      v15 = v51;
      (v43[2])(v51, v26 + v27 * v25, v52);
      sub_25EC79B74();
      v28 = 0;
      v29 = *(a2 + 16);
      do
      {
        if (v29 == v28)
        {
          (*v45)(v10, v6);
          (*v44)(v51, v52);
          v21 = v46;
          a1 = v47;
          v20 = v50;
          goto LABEL_6;
        }

        v30 = v28 + 1;
        v31 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v28;
        sub_25EC4F4D0(&qword_27FD361B8);
        v15 = v6;
        v32 = sub_25EC7A024();
        v28 = v30;
      }

      while ((v32 & 1) == 0);
      (*v45)(v10, v6);
      (*v44)(v51, v52);
      *&v41[(v49 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v49;
      a1 = v47;
      v33 = __OFADD__(v48++, 1);
      v21 = v46;
      v20 = v50;
      if (v33)
      {
        __break(1u);
LABEL_19:
        v34 = sub_25EC5D35C(v41, v39, v48, a1);

        goto LABEL_20;
      }
    }

    v23 = v3;
    while (1)
    {
      v3 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v3 >= v21)
      {
        goto LABEL_19;
      }

      v24 = *(v40 + 8 * v3);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v50 = (v24 - 1) & v24;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v37 = swift_slowAlloc();

  v34 = sub_25EC5D2C0(v37, v39, a1, a2);

  MEMORY[0x25F8CBF90](v37, -1, -1);

LABEL_20:
  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t sub_25EC6036C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  *(v3 + 40) = sub_25EC4E3FC(MEMORY[0x277D84F90]);
  type metadata accessor for PolarisMutex();
  v8 = swift_allocObject();
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 16) = 0u;
  v13.__sig = 0;
  *v13.__opaque = 0;
  pthread_mutexattr_init(&v13);
  swift_beginAccess();
  pthread_mutex_init((v8 + 16), &v13);
  swift_endAccess();
  pthread_mutexattr_destroy(&v13);
  *(v3 + 48) = v8;
  *(v3 + 56) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;

  sub_25EC56B04(v14);
  if (v4)
  {
    v9 = v14[0];
    sub_25EC5B6D8();
    swift_allocError();
    *v10 = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

void *sub_25EC604B4(uint64_t a1)
{
  v1[4] = 0;
  v1[5] = a1;
  v1[2] = 0;
  v1[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25EC7A890;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = 0xD000000000000022;
  *(v2 + 40) = 0x800000025EC80D20;

  sub_25EC7A2B4();

  return v1;
}

uint64_t sub_25EC605E0()
{
  v43 = sub_25EC79874();
  v0 = *(v43 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v43);
  v3 = (&v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_25EC798D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_25EC79CC4();
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25EC797E4();
  v34 = *(result + 16);
  if (v34)
  {
    v13 = 0;
    v32 = result + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v30 = v9 + 8;
    v31 = v9 + 16;
    v42 = v5 + 16;
    v14 = (v5 + 8);
    v15 = (v0 + 88);
    v41 = *MEMORY[0x277D3E780];
    v39 = (v0 + 96);
    v40 = (v0 + 8);
    v28 = v9;
    v29 = v5;
    v33 = result;
    while (v13 < *(result + 16))
    {
      v16 = *(v9 + 72);
      v38 = v13;
      v17 = v35;
      v18 = v36;
      (*(v9 + 16))(v35, v32 + v16 * v13, v36);
      v19 = sub_25EC797E4();
      (*(v9 + 8))(v17, v18);
      v20 = v19;
      v21 = *(v19 + 16);
      if (v21)
      {
        v22 = *(v5 + 80);
        v37 = v20;
        v23 = v20 + ((v22 + 32) & ~v22);
        v24 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v8, v23, v4);
        while (1)
        {
          sub_25EC798A4();
          (*v14)(v8, v4);
          v26 = v43;
          v27 = (*v15)(v3, v43);
          if (v27 == v41)
          {
            (*v39)(v3, v26);
            if (*v3)
            {
              MEMORY[0x25F8CBF90](*v3, -1, -1);
            }
          }

          else
          {
            (*v40)(v3, v26);
          }

          v23 += v24;
          if (!--v21)
          {
            break;
          }

          v25(v8, v23, v4);
        }

        v9 = v28;
        v5 = v29;
      }

      else
      {
      }

      v13 = v38 + 1;
      result = v33;
      if (v38 + 1 == v34)
      {
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_25EC60BD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362F0, &qword_25EC7B3F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25EC60C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362B0, &qword_25EC7B298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25EC60CB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25EC60D20(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SessionManager.updateGraphs(added:removed:)(Swift::OpaquePointer added, Swift::OpaquePointer removed)
{
  v3 = v2;
  rawValue = added._rawValue;
  v115 = sub_25EC796F4();
  v103 = *(v115 - 8);
  v5 = *(v103 + 64);
  MEMORY[0x28223BE20](v115);
  v119 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36138, &qword_25EC7A9C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v117 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v97 = &v90 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v102 = &v90 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v90 - v15;
  v17 = sub_25EC79734();
  v104 = *(v17 - 8);
  v18 = *(v104 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v116 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v96 = &v90 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v98 = &v90 - v24;
  MEMORY[0x28223BE20](v23);
  v126 = &v90 - v25;
  v26 = *(removed._rawValue + 2);
  v118 = removed._rawValue + 16;
  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v124 = v2;
    v111 = v16;
    v28 = v17;
    v125 = MEMORY[0x277D84F90];
    sub_25EC5B770(0, v26, 0);
    v27 = v125;
    v29 = (removed._rawValue + 32);
    v30 = *(v125 + 16);
    v31 = v26;
    do
    {
      v33 = *v29;
      v29 += 12;
      v32 = v33;
      v125 = v27;
      v34 = *(v27 + 24);
      if (v30 >= v34 >> 1)
      {
        sub_25EC5B770((v34 > 1), v30 + 1, 1);
        v27 = v125;
      }

      *(v27 + 16) = v30 + 1;
      *(v27 + 4 * v30++ + 32) = v32;
      --v31;
    }

    while (v31);
    v17 = v28;
    v16 = v111;
    v3 = v124;
  }

  v35 = sub_25EC4B938(v27);
  v99 = v3;
  if (v3)
  {
LABEL_31:

    return;
  }

  v36 = v35;

  if (v36 >> 62)
  {
LABEL_27:
    v37 = sub_25EC7A184();
    if (v37)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
LABEL_28:
    v48 = rawValue;
    v53 = v99;
    sub_25EC61DAC(rawValue);
    if (v53)
    {
      v99 = v53;
    }

    else
    {
      sub_25EC62C90(v48);
      sub_25EC63FA0(v48);
      v99 = 0;
      v112 = v17;
      v92 = *(v48 + 16);
      swift_beginAccess();
      v54 = 0;
      v91 = v48 + 32;
      v118 = (v104 + 32);
      v93 = (v104 + 56);
      v109 = (v104 + 48);
      v104 += 8;
      v103 += 8;
      v101 = v36;
      while (v54 != v92)
      {
        v46 = *(v100 + 64);
        if (!*(v46 + 16))
        {
          goto LABEL_53;
        }

        v55 = v91 + 48 * v54;
        v56 = *(v55 + 8);
        v57 = *(v55 + 16);
        v58 = *(v55 + 24);
        v48 = *(v55 + 32);
        v59 = *(v55 + 40);
        v60 = sub_25EC4CDB4(*v55);
        if ((v61 & 1) == 0)
        {
          goto LABEL_54;
        }

        v95 = v54;
        v62 = *(*(v46 + 56) + 8 * v60);

        sub_25EC473B4(v57);
        v94 = v48;
        sub_25EC473B4(v48);
        v63 = v98;
        sub_25EC796E4();
        v64 = v102;
        v65 = v112;
        v114 = *v118;
        v114(v102, v63, v112);
        v126 = *v93;
        (v126)(v64, 0, 1, v65);
        v48 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController__graphConfig;
        swift_beginAccess();
        sub_25EC652F0(v64, &v62[v48]);
        swift_endAccess();
        v113 = v56;
        if (v57)
        {
          v46 = v97;
          sub_25EC65360(&v62[v48], v97);
          if ((*v109)(v46, 1, v65) == 1)
          {
            goto LABEL_59;
          }

          v66 = v96;
          v67 = v65;
          v68 = v114;
          v114(v96, v46, v67);

          v57(v66);
          sub_25EC47404(v57);
          v69 = v102;
          v70 = v66;
          v71 = v112;
          v68(v102, v70, v112);
          (v126)(v69, 0, 1, v71);
          swift_beginAccess();
          sub_25EC652F0(v69, &v62[v48]);
          swift_endAccess();
          v56 = v113;
        }

        v46 = *(v56 + 16);
        v72 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;

        v126 = v62;
        v111 = v72;
        swift_beginAccess();
        v110 = v46;
        if (v46)
        {
          v73 = 0;
          v74 = (v56 + 80);
          v107 = v59;
          v106 = v58;
          rawValue = v57;
          v108 = v48;
          while (v73 < *(v56 + 16))
          {
            v46 = *&v126[v111];
            if (!*(v46 + 16))
            {
              goto LABEL_51;
            }

            v75 = *(v74 - 5);
            v76 = *(v74 - 4);
            v123 = v73;
            v124 = v75;
            v48 = *(v74 - 3);
            v77 = *(v74 - 2);
            v78 = *(v74 - 1);
            v27 = *v74;
            v79 = sub_25EC4CDB4(*(v74 - 12));
            if ((v80 & 1) == 0)
            {
              goto LABEL_52;
            }

            v122 = *(*(v46 + 56) + 8 * v79);

            v81 = v76;

            sub_25EC473B4(v78);
            v46 = v119;
            sub_25EC796E4();
            if (v78)
            {

              v78(v46);
              v46 = v119;
              sub_25EC47404(v78);
            }

            v120 = v78;
            v121 = v27;
            v27 = v117;
            sub_25EC65360(v108 + v126, v117);
            v82 = v112;
            if ((*v109)(v27, 1, v112) == 1)
            {
              goto LABEL_57;
            }

            v83 = v116;
            v114(v116, v27, v82);
            v84 = v46;
            v27 = v46;
            v46 = v81;
            v85 = v124(v84, v83);
            v87 = v86;
            (*v104)(v83, v82);
            v88 = v122;
            if (*(v122 + 32))
            {
              goto LABEL_56;
            }

            v89 = v123 + 1;

            sub_25EC47404(v120);
            (*v103)(v27, v115);
            v48 = *(v88 + 32);
            *(v88 + 32) = v85;
            *(v88 + 40) = v87;
            v73 = v89;

            swift_unknownObjectRelease();
            v74 += 7;
            v57 = rawValue;
            v56 = v113;
            if (v110 == v89)
            {
              goto LABEL_32;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          sub_25EC4E178(v27);
          __break(1u);
          goto LABEL_58;
        }

LABEL_32:
        v54 = v95 + 1;

        v46 = v126;
        v48 = sub_25EC4AC84();

        sub_25EC47404(v57);
        sub_25EC47404(v94);

        if ((v48 & 1) == 0)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_31;
  }

LABEL_10:
  v38 = 0;
  v114 = (v36 & 0xC000000000000001);
  v107 = v36 & 0xFFFFFFFFFFFFFF8;
  v106 = v36 + 32;
  v110 = (v104 + 48);
  v124 = (v104 + 32);
  v108 = (v104 + 56);
  v113 = v26 + 1;
  v101 = v36;
  v111 = v16;
  v109 = v37;
  while (1)
  {
    if (v114)
    {
      v26 = MEMORY[0x25F8CB970](v38, v36);
      v39 = __OFADD__(v38++, 1);
      if (v39)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v38 >= *(v107 + 16))
      {
        goto LABEL_26;
      }

      v26 = *(v106 + 8 * v38);

      v39 = __OFADD__(v38++, 1);
      if (v39)
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v40 = v113;
    v41 = v118;
    do
    {
      if (!--v40)
      {
        __break(1u);
        goto LABEL_25;
      }

      v42 = (v41 + 48);
      v43 = *(v41 + 4);
      v41 += 48;
    }

    while (v43 != *(v26 + 16));
    v27 = *v42;
    if (*v42)
    {
      break;
    }

LABEL_11:

    if (v38 == v37)
    {
      goto LABEL_28;
    }
  }

  v44 = *(v42 - 3);
  v45 = *(v42 - 1);
  v122 = *(v42 - 2);
  v123 = v45;
  v46 = v42[1];
  v47 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController__graphConfig;
  swift_beginAccess();
  v121 = v47;
  sub_25EC65360(v26 + v47, v16);
  v48 = v16;
  if ((*v110)(v16, 1, v17) != 1)
  {
    v120 = *v124;
    v120(v126, v16, v17);

    v49 = v122;
    sub_25EC473B4(v122);
    sub_25EC473B4(v27);
    sub_25EC473B4(v27);
    v50 = v126;
    (v27)(v126);
    sub_25EC47404(v27);

    sub_25EC47404(v49);
    sub_25EC47404(v27);
    v51 = v102;
    v120(v102, v50, v17);
    (*v108)(v51, 0, 1, v17);
    v52 = v121;
    swift_beginAccess();
    sub_25EC652F0(v51, v26 + v52);
    swift_endAccess();
    v36 = v101;
    v16 = v111;
    v37 = v109;
    goto LABEL_11;
  }

LABEL_58:

  sub_25EC473B4(v122);
  sub_25EC473B4(v27);
  sub_25EC473B4(v27);
  sub_25EC4E178(v48);
  __break(1u);
LABEL_59:

  sub_25EC4E178(v46);
  __break(1u);
}

uint64_t sub_25EC61A94(int a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  swift_beginAccess();
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  v7 = a2 + 32;
  v34 = v5;
  v35 = v2;
  v33 = a2 + 32;
  while (1)
  {
    v8 = *(v7 + 4 * v6);
    v9 = *(v3 + 64);
    if (!*(v9 + 16) || (v10 = sub_25EC4CDB4(*(v7 + 4 * v6)), (v11 & 1) == 0))
    {
      sub_25EC4E124();
      swift_allocError();
      *v32 = v8;
      *(v32 + 4) = 3;
      swift_willThrow();
      return v8;
    }

    v36 = v6 + 1;
    v12 = *(*(v9 + 56) + 8 * v10);
    v13 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
    swift_beginAccess();
    v14 = *(v12 + v13);
    v15 = v14 + 64;
    v16 = 1 << *(v14 + 32);
    v17 = v16 < 64 ? ~(-1 << v16) : -1;
    v18 = v17 & *(v14 + 64);
    v19 = (v16 + 63) >> 6;

    v21 = 0;
    v38 = v14 + 64;
    v39 = v14;
    v37 = v19;
LABEL_10:
    if (v18)
    {
      goto LABEL_15;
    }

LABEL_11:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_38;
    }

    if (v22 < v19)
    {
      break;
    }

    v3 = v35;
    ++v6;
    v7 = v33;
    if (v36 == v34)
    {
      return 0;
    }
  }

  v18 = *(v15 + 8 * v22);
  ++v21;
  if (!v18)
  {
    goto LABEL_11;
  }

  v21 = v22;
LABEL_15:
  v23 = *(*(v14 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v18)))));
  swift_beginAccess();
  v24 = *(v23 + 48);
  if (v24 >> 62)
  {
    if (v24 < 0)
    {
      v31 = *(v23 + 48);
    }

    v25 = sub_25EC7A184();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v25)
  {
LABEL_9:
    v18 &= v18 - 1;

    v15 = v38;
    v14 = v39;
    v19 = v37;
    goto LABEL_10;
  }

  v26 = 0;
  while ((v24 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x25F8CB970](v26, v24);
    v27 = result;
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_36;
    }

LABEL_22:
    v29 = v25;
    v30 = *(v27 + 24);
    if (sub_25EC79854() == a1)
    {

      v8 = *(v27 + 24);

      return v8;
    }

    ++v26;
    v25 = v29;
    if (v28 == v29)
    {
      goto LABEL_9;
    }
  }

  if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  v27 = *(v24 + 8 * v26 + 32);

  v28 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
    goto LABEL_22;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_25EC61DAC(uint64_t a1)
{
  v2 = v1;
  v70 = sub_25EC79A64();
  v4 = *(*(v70 - 8) + 64);
  result = MEMORY[0x28223BE20](v70);
  v69 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
    v64 = a1 + 32;
    v68 = *MEMORY[0x277D3E790];
    v67 = (v6 + 104);
    v58 = v8;
    while (1)
    {
      v65 = v9;
      v10 = v64 + 48 * v9;
      v11 = *(v10 + 8);
      v12 = *(v10 + 16);
      v14 = *(v10 + 24);
      v13 = *(v10 + 32);
      v15 = *(v10 + 40);
      v16 = *v10;

      sub_25EC473B4(v12);
      sub_25EC473B4(v13);
      v74 = sub_25EC4B678(v16);
      if (v2)
      {

LABEL_24:
        sub_25EC47404(v12);
        return sub_25EC47404(v13);
      }

      v73 = *(v11 + 16);
      if (v73)
      {
        break;
      }

LABEL_4:
      v9 = v65 + 1;
      sub_25EC47404(v12);
      sub_25EC47404(v13);

      if (v9 == v8)
      {
        return result;
      }
    }

    v59 = 0;
    v60 = v14;
    v61 = v12;
    v62 = v15;
    v63 = v13;
    v17 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
    v72 = *(v66 + 24);

    v18 = v74;
    swift_beginAccess();
    v19 = 0;
    v20 = (v11 + 80);
    v71 = v11;
    while (v19 < *(v11 + 16))
    {
      v23 = *(v20 - 12);
      v25 = *(v20 - 4);
      v24 = *(v20 - 3);
      v26 = *(v20 - 2);
      v27 = *(v20 - 1);
      v77 = v19;
      v78 = v26;
      v28 = *v20;
      v79 = v24;
      v80 = v28;
      if (*(*(v18 + v17) + 16))
      {
        sub_25EC4CDB4(v23);
        if (v29)
        {

          sub_25EC473B4(v27);

          v81 = 0;
          v82 = 0xE000000000000000;
          sub_25EC7A144();

          v81 = 0x656D614E6B736174;
          v82 = 0xE90000000000003DLL;
          LODWORD(v83) = v23;
          v56 = sub_25EC7A224();
          MEMORY[0x25F8CB870](v56);

          MEMORY[0x25F8CB870](0x79646165726C6120, 0xEF73747369786520);
          sub_25EC47BA8(v81, v82, 0xD00000000000001ELL, 0x800000025EC81510, 0xD00000000000002CLL, 0x800000025EC80460, 384);

          sub_25EC4E124();
          swift_allocError();
          *v57 = v23;
          *(v57 + 4) = 0;
          swift_willThrow();

          sub_25EC47404(v27);

          v13 = v63;
          v12 = v61;
          goto LABEL_24;
        }
      }

      type metadata accessor for TaskController();
      v30 = swift_allocObject();
      v76 = v23;
      v31 = v30;
      (*v67)(v69, v68, v70);
      v32 = sub_25EC799B4();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      v75 = v25;

      v35 = v27;
      sub_25EC473B4(v27);
      LOBYTE(v81) = 1;
      v36 = sub_25EC79974();
      v31[4] = 0;
      v31[5] = 0;
      v37 = MEMORY[0x277D84F90];
      v31[6] = MEMORY[0x277D84F90];
      v31[7] = v37;
      v31[8] = v37;
      v38 = v72;
      v31[2] = v36;
      v31[3] = v38;
      swift_unownedRetainStrong();

      swift_unownedRetain();
      swift_unownedRetain();

      *(swift_allocObject() + 16) = v31;
      sub_25EC79994();
      swift_unownedRelease();
      swift_beginAccess();
      v39 = *(v18 + v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = *(v18 + v17);
      v41 = v83;
      v42 = v17;
      *(v18 + v17) = 0x8000000000000000;
      v43 = v76;
      v45 = sub_25EC4CDB4(v76);
      v46 = v41[2];
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_28;
      }

      v49 = v44;
      if (v41[3] >= v48)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25EC5CD3C();
        }
      }

      else
      {
        sub_25EC4D184(v48, isUniquelyReferenced_nonNull_native);
        v50 = sub_25EC4CDB4(v43);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_30;
        }

        v45 = v50;
      }

      v52 = v83;
      if (v49)
      {
        v21 = v83[7];
        v22 = *(v21 + 8 * v45);
        *(v21 + 8 * v45) = v31;
      }

      else
      {
        v83[(v45 >> 6) + 8] |= 1 << v45;
        *(v52[6] + 4 * v45) = v43;
        *(v52[7] + 8 * v45) = v31;
        v53 = v52[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_29;
        }

        v52[2] = v55;
      }

      v19 = v77 + 1;
      v18 = v74;
      v17 = v42;
      *(v74 + v42) = v52;
      swift_endAccess();

      sub_25EC47404(v35);
      v20 += 7;
      v11 = v71;
      if (v73 == v19)
      {

        v13 = v63;
        v12 = v61;
        v2 = v59;
        v8 = v58;
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_25EC7A264();
    __break(1u);
  }

  return result;
}

uint64_t sub_25EC62498(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  sub_25EC79854();
  if ((sub_25EC79A34() & 1) == 0)
  {
    sub_25EC7A144();
    MEMORY[0x25F8CB870](0x207265646E6553, 0xE700000000000000);
    sub_25EC79854();
    v5 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v5);

    MEMORY[0x25F8CB870](0xD00000000000004ELL, 0x800000025EC813F0);
    sub_25EC47BA8(0, 0xE000000000000000, 0xD00000000000002ELL, 0x800000025EC81440, 0xD000000000000036, 0x800000025EC81210, 66);
  }

  v6 = *(a2 + 24);
  type metadata accessor for SessionTriggerChannel();
  *(swift_allocObject() + 16) = v4;
  sub_25EC65894(&qword_27FD36328, type metadata accessor for SessionTriggerChannel);

  LOBYTE(v6) = sub_25EC79A04();

  if (v6)
  {
    sub_25EC7A144();

    sub_25EC79854();
    v7 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v7);

    MEMORY[0x25F8CB870](0x73736553206F7420, 0xEF545347206E6F69);
    sub_25EC47B5C(0xD00000000000001FLL, 0x800000025EC81470, 0xD00000000000002ELL, 0x800000025EC81440, 0xD000000000000036, 0x800000025EC81210, 78);
  }

  else
  {
    v9 = sub_25EC79854();
    sub_25EC4E124();
    swift_allocError();
    *v10 = v9;
    *(v10 + 4) = 7;
    return swift_willThrow();
  }
}

uint64_t sub_25EC62764(uint64_t a1, uint64_t a2)
{
  result = sub_25EC62498(a1, a2);
  if (!v3)
  {
    v6 = *(v2 + 40);
    sub_25EC79854();
    v7 = *(*(v6 + 16) + 16);
    if ((sub_25EC79A34() & 1) == 0)
    {
      sub_25EC7A144();
      MEMORY[0x25F8CB870](0x207265646E6553, 0xE700000000000000);
      sub_25EC79854();
      v8 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v8);

      MEMORY[0x25F8CB870](0xD00000000000004DLL, 0x800000025EC81490);
      sub_25EC47BA8(0, 0xE000000000000000, 0xD00000000000002DLL, 0x800000025EC814E0, 0xD000000000000036, 0x800000025EC81210, 96);
    }

    v9 = *(a2 + 24);
    type metadata accessor for TightbeamTriggerChannel();
    *(swift_allocObject() + 16) = v6;
    sub_25EC65894(&qword_27FD36140, type metadata accessor for TightbeamTriggerChannel);

    LOBYTE(v9) = sub_25EC79A04();

    if (v9)
    {
      sub_25EC7A144();

      sub_25EC79854();
      v10 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v10);

      MEMORY[0x25F8CB870](0x626F6C47206F7420, 0xEE00545347206C61);
      sub_25EC47B5C(0xD00000000000001FLL, 0x800000025EC81470, 0xD00000000000002DLL, 0x800000025EC814E0, 0xD000000000000036, 0x800000025EC81210, 108);
    }

    else
    {
      v11 = sub_25EC79854();
      sub_25EC4E124();
      swift_allocError();
      *v12 = v11;
      *(v12 + 4) = 7;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_25EC62A40(int a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 24);
  if ((sub_25EC79A34() & 1) == 0)
  {
    sub_25EC4E124();
    swift_allocError();
    v15 = 8;
LABEL_8:
    *v14 = a1;
    *(v14 + 4) = v15;
    return swift_willThrow();
  }

  v7 = *(v2 + 40);
  v8 = *(v3 + 16);
  v9 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361F0, &qword_25EC7B5A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25EC7A890;
  *(inited + 32) = a1;
  v11 = *(v7 + 16);
  LOBYTE(v11) = GSTService.registerReceiver(clientId:receiverId:senderIds:)(v8, v9, inited);
  swift_setDeallocating();
  if ((v11 & 1) == 0)
  {
    sub_25EC7A144();
    MEMORY[0x25F8CB870](0xD000000000000030, 0x800000025EC81310);
    v16 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v16);

    MEMORY[0x25F8CB870](0x70617267206E6920, 0xEC0000003D644968);
    v17 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v17);

    sub_25EC47BA8(0, 0xE000000000000000, 0xD000000000000028, 0x800000025EC81350, 0xD000000000000036, 0x800000025EC81210, 130);

    goto LABEL_7;
  }

  v12 = *(a2 + OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_headReceiver);
  result = sub_25EC79A24();
  if ((result & 1) == 0)
  {
LABEL_7:
    sub_25EC4E124();
    swift_allocError();
    v15 = 7;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_25EC62C90(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  result = swift_beginAccess();
  if (!v4)
  {
    return result;
  }

  v6 = 0;
  v7 = a1 + 32;
  v96 = a1 + 32;
  v97 = v4;
  while (1)
  {
    v110 = v2;
    v8 = v6;
    v9 = v7 + 48 * v6;
    v10 = *v9;
    v11 = *(v118 + 64);
    if (!*(v11 + 16) || (v12 = *(v9 + 8), v13 = *(v9 + 16), v15 = *(v9 + 24), v14 = *(v9 + 32), v16 = *(v9 + 40), v17 = sub_25EC4CDB4(*v9), (v18 & 1) == 0))
    {
      sub_25EC4E124();
      swift_allocError();
      *v92 = v10;
      *(v92 + 4) = 3;
      return swift_willThrow();
    }

    v98 = v8;
    v19 = *(*(v11 + 56) + 8 * v17);
    v20 = *(v12 + 16);
    v21 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;

    sub_25EC473B4(v13);
    v22 = v14;
    sub_25EC473B4(v14);

    v112 = v21;
    result = swift_beginAccess();
    v107 = v12;
    v108 = v13;
    v99 = v20;
    if (v20)
    {
      break;
    }

    v2 = v110;
LABEL_33:

    sub_25EC63950();
    v59 = v58;
    v60 = *(v58 + 16);
    v94 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_currentUniqueId;
    v115 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tailReceiver;
    result = swift_beginAccess();
    v95 = v60;
    if (v60)
    {
      v61 = 0;
      v100 = v59;
      v102 = v59 + 32;
      v106 = v22;
      v117 = v19;
      do
      {
        if (v61 >= *(v59 + 16))
        {
          goto LABEL_80;
        }

        v62 = *(v102 + 4 * v61);
        v63 = *(v19 + v112);
        if (!*(v63 + 16) || (v64 = sub_25EC4CDB4(*(v102 + 4 * v61)), (v65 & 1) == 0))
        {

          sub_25EC4E124();
          swift_allocError();
          *v93 = v62;
          *(v93 + 4) = 4;
          swift_willThrow();

          sub_25EC47404(v108);
          v91 = v22;
          return sub_25EC47404(v91);
        }

        v104 = v61;
        v66 = *(*(v63 + 56) + 8 * v64);
        swift_beginAccess();
        v67 = *(v66 + 48);
        if (v67 >> 62)
        {
          if (v67 < 0)
          {
            v68 = *(v66 + 48);
          }

          result = sub_25EC7A184();
          v109 = v66;
          v111 = v2;
          if (result)
          {
LABEL_41:

            goto LABEL_49;
          }
        }

        else
        {
          result = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v109 = v66;
          v111 = v2;
          if (result)
          {
            goto LABEL_41;
          }
        }

        v69 = *(v19 + v94);
        if (v69 >= 0xFFFF0000)
        {
          goto LABEL_81;
        }

        *(v19 + v94) = v69 + 0x10000;
        type metadata accessor for OutputController();
        v70 = swift_allocObject();
        *(v70 + 16) = 0;
        v71 = sub_25EC79864();
        v72 = *(v71 + 48);
        v73 = *(v71 + 52);
        swift_allocObject();

        *(v70 + 24) = sub_25EC79844();
        swift_beginAccess();

        MEMORY[0x25F8CB8A0](v74);
        if (*((*(v66 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v66 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25EC7A0A4();
          v66 = v109;
        }

        sub_25EC7A0C4();
        swift_endAccess();

LABEL_49:
        v75 = *(v66 + 48);
        if (v75 >> 62)
        {
          if (v75 < 0)
          {
            v87 = *(v66 + 48);
          }

          v76 = sub_25EC7A184();
        }

        else
        {
          v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v76)
        {
          v77 = 0;
          while (1)
          {
            if ((v75 & 0xC000000000000001) != 0)
            {
              result = MEMORY[0x25F8CB970](v77, v75);
              v78 = result;
              v79 = v77 + 1;
              if (__OFADD__(v77, 1))
              {
                goto LABEL_77;
              }
            }

            else
            {
              if (v77 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_78;
              }

              v78 = *(v75 + 8 * v77 + 32);

              v79 = v77 + 1;
              if (__OFADD__(v77, 1))
              {
                goto LABEL_77;
              }
            }

            v80 = v76;
            v81 = *(v19 + 24);
            v82 = v19;
            v83 = *(v78 + 24);
            v84 = *(v82 + v115);

            v85 = sub_25EC79A14();

            if ((v85 & 1) == 0)
            {
              break;
            }

            sub_25EC7A144();
            MEMORY[0x25F8CB870](0xD000000000000026, 0x800000025EC81380);
            v86 = sub_25EC7A224();
            MEMORY[0x25F8CB870](v86);

            MEMORY[0x25F8CB870](0xD000000000000016, 0x800000025EC813B0);
            sub_25EC47B5C(0, 0xE000000000000000, 0xD00000000000001DLL, 0x800000025EC813D0, 0xD000000000000036, 0x800000025EC81210, 211);

            ++v77;
            v76 = v80;
            v19 = v117;
            if (v79 == v80)
            {
              goto LABEL_35;
            }
          }

          v88 = *(v78 + 24);
          LODWORD(v88) = sub_25EC79854();
          sub_25EC4E124();
          swift_allocError();
          *v89 = v88;
          *(v89 + 4) = 7;
          swift_willThrow();

          sub_25EC47404(v108);
          sub_25EC47404(v106);
        }

LABEL_35:
        v61 = v104 + 1;

        v22 = v106;
        v59 = v100;
        v2 = v111;
      }

      while (v104 + 1 != v95);
    }

    v6 = v98 + 1;

    sub_25EC47404(v108);
    result = sub_25EC47404(v22);
    v7 = v96;
    if (v98 + 1 == v97)
    {
      return result;
    }
  }

  v23 = 0;
  v101 = v12 + 32;
  v2 = v110;
  v105 = v14;
  v116 = v19;
  while (1)
  {
    if (v23 >= *(v12 + 16))
    {
      goto LABEL_79;
    }

    v103 = v23;
    v24 = v101 + 56 * v23;
    v25 = *v24;
    v26 = *(v24 + 16);
    v27 = *(v24 + 32);
    v113 = *(v24 + 40);
    v28 = *(v19 + v112);
    if (!*(v28 + 16) || (result = sub_25EC4CDB4(v25), (v29 & 1) == 0))
    {

      sub_25EC473B4(v113);

      sub_25EC4E124();
      swift_allocError();
      *v90 = v25;
      *(v90 + 4) = 4;
      swift_willThrow();

      sub_25EC47404(v108);
      sub_25EC47404(v22);

      v91 = v113;
      return sub_25EC47404(v91);
    }

    v114 = *(v27 + 16);
    if (v114)
    {
      break;
    }

LABEL_8:
    v23 = v103 + 1;
    v22 = v105;
    v12 = v107;
    if (v103 + 1 == v99)
    {
      goto LABEL_33;
    }
  }

  v30 = *(*(v28 + 56) + 8 * result);

  sub_25EC473B4(v113);

  v31 = 0;
  v32 = (v27 + 53);
  while (v31 < *(v27 + 16))
  {
    v33 = v27;
    v34 = *(v32 - 21);
    v35 = *v32;
    if (*(v32 - 1))
    {
      type metadata accessor for OutputController();
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      v37 = sub_25EC79864();
      v38 = *(v37 + 48);
      v39 = *(v37 + 52);
      swift_allocObject();
      *(v36 + 24) = sub_25EC79844();
      swift_beginAccess();

      MEMORY[0x25F8CB8A0](v40);
      if (*((*(v30 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v30 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v55 = *((*(v30 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25EC7A0A4();
      }

      sub_25EC7A0C4();
      swift_endAccess();
    }

    else
    {
      v41 = *(v32 - 5);
      v42 = *(v32 - 9);
      v43 = *(v32 - 13);
      v44 = *(v32 - 17);
      v45 = *(v118 + 32);
      v46 = *(v32 - 21);
      v47 = sub_25EC79DD4();
      if (v110)
      {

        sub_25EC47404(v113);

        sub_25EC47404(v108);
        sub_25EC47404(v105);
      }

      v48 = v47;
      type metadata accessor for DataOutputController();
      v36 = swift_allocObject();
      *(v36 + 32) = v48;
      *(v36 + 40) = 0;
      *(v36 + 16) = v35;
      v49 = sub_25EC79864();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      *(v36 + 24) = sub_25EC79844();
      swift_beginAccess();
      v52 = swift_retain_n();
      MEMORY[0x25F8CB8A0](v52);
      if (*((*(v30 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v30 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((*(v30 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25EC7A0A4();
      }

      sub_25EC7A0C4();
      swift_endAccess();
      swift_beginAccess();

      MEMORY[0x25F8CB8A0](v53);
      if (*((*(v30 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v30 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v57 = *((*(v30 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25EC7A0A4();
      }

      sub_25EC7A0C4();
      swift_endAccess();
    }

    v54 = *(v36 + 24);

    if (v35 == 2)
    {
      sub_25EC62764(v54, v116);
      if (v110)
      {
        goto LABEL_69;
      }
    }

    else if (v35 == 1)
    {
      sub_25EC62498(v54, v116);
      v27 = v33;
      if (v110)
      {
LABEL_69:

        sub_25EC47404(v113);

        sub_25EC47404(v108);
        sub_25EC47404(v105);
      }

      goto LABEL_16;
    }

    v27 = v33;
LABEL_16:
    ++v31;

    v32 += 24;
    if (v114 == v31)
    {

      sub_25EC47404(v113);

      v19 = v116;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

void sub_25EC63950()
{
  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];
  v64 = v1;
  v70 = *(v1 + 16);
  if (!v70)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_27:
    v25 = sub_25EC6A4C0(v4);

    v72 = v25;
    if (!v70)
    {
      v60 = MEMORY[0x277D84F90];
LABEL_58:

      v55 = *(v60 + 16);
      if (v55)
      {
        v75 = MEMORY[0x277D84F90];
        sub_25EC5B770(0, v55, 0);
        v56 = *(v75 + 16);
        v57 = 32;
        do
        {
          v58 = *(v60 + v57);
          v59 = *(v75 + 24);
          if (v56 >= v59 >> 1)
          {
            sub_25EC5B770((v59 > 1), v56 + 1, 1);
          }

          *(v75 + 16) = v56 + 1;
          *(v75 + 4 * v56 + 32) = v58;
          v57 += 56;
          ++v56;
          --v55;
        }

        while (v55);
      }

      return;
    }

    v26 = 0;
    v61 = v1 + 32;
    v27 = v25 + 56;
    v60 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v26 >= *(v1 + 16))
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v28 = (v61 + 56 * v26);
      v63 = *v28;
      v62 = *(v28 + 1);
      v29 = *(v28 + 3);
      v30 = *(v28 + 4);
      v32 = *(v28 + 5);
      v31 = *(v28 + 6);
      ++v26;
      v33 = *(v30 + 16);
      v68 = v31;
      v69 = *(v28 + 2);
      if (!v33)
      {
        break;
      }

      v65 = v29;

      v66 = v32;
      sub_25EC473B4(v32);
      v34 = (v30 + 53);
      v35 = MEMORY[0x277D84F90];
      do
      {
        if (!*v34)
        {
          v39 = *(v34 - 21);
          v74 = *(v34 - 17);
          v40 = *(v34 - 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_25EC5B7B0(0, *(v35 + 16) + 1, 1);
          }

          v37 = *(v35 + 16);
          v36 = *(v35 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_25EC5B7B0((v36 > 1), v37 + 1, 1);
          }

          *(v35 + 16) = v37 + 1;
          v38 = v35 + 24 * v37;
          *(v38 + 32) = v39;
          *(v38 + 36) = v74;
          *(v38 + 52) = v40;
          *(v38 + 53) = 0;
        }

        v34 += 24;
        --v33;
      }

      while (v33);
      v41 = *(v35 + 16);
      if (v41)
      {
        v42 = 0;
        v43 = *(v72 + 16);
        while (1)
        {
          if (v43)
          {
            v44 = *(v35 + 32 + 24 * v42);
            v45 = MEMORY[0x25F8CBAE0](*(v72 + 40), v44, 4);
            v46 = -1 << *(v72 + 32);
            v47 = v45 & ~v46;
            if ((*(v27 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
            {
              break;
            }
          }

LABEL_42:
          if (++v42 == v41)
          {
            goto LABEL_49;
          }
        }

        v48 = ~v46;
        while (*(*(v72 + 48) + 4 * v47) != v44)
        {
          v47 = (v47 + 1) & v48;
          if (((*(v27 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        sub_25EC47404(v66);
        v1 = v64;
        if (v26 == v70)
        {
          goto LABEL_58;
        }
      }

      else
      {
LABEL_49:

        v1 = v64;
        v49 = v65;
        v32 = v66;
LABEL_50:
        v50 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25EC5B790(0, *(v60 + 16) + 1, 1);
          v50 = v60;
        }

        v51 = v69;
        v53 = *(v50 + 16);
        v52 = *(v50 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_25EC5B790((v52 > 1), v53 + 1, 1);
          v51 = v69;
          v50 = v60;
        }

        *(v50 + 16) = v53 + 1;
        v60 = v50;
        v54 = v50 + 56 * v53;
        *(v54 + 32) = v63;
        *(v54 + 40) = v62;
        *(v54 + 48) = v51;
        *(v54 + 56) = v49;
        *(v54 + 64) = v30;
        *(v54 + 72) = v32;
        *(v54 + 80) = v68;
        if (v26 == v70)
        {
          goto LABEL_58;
        }
      }
    }

    sub_25EC473B4(v32);
    v49 = v29;
    goto LABEL_50;
  }

  v3 = 0;
  v67 = v1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      goto LABEL_66;
    }

    v5 = (v67 + 56 * v3);
    v6 = v5[3];
    v7 = *(v6 + 16);
    if (v7)
    {
      v9 = v5[4];
      v8 = v5[5];
      v10 = v5[6];
      v73 = v5[2];

      v71 = v8;
      sub_25EC473B4(v8);

      sub_25EC5B770(0, v7, 0);
      v11 = v2;
      v12 = v2[2];
      v13 = 32;
      do
      {
        v14 = *(v6 + v13);
        v15 = v11[3];
        if (v12 >= v15 >> 1)
        {
          sub_25EC5B770((v15 > 1), v12 + 1, 1);
        }

        v11[2] = v12 + 1;
        *(v11 + v12 + 8) = v14;
        v13 += 12;
        ++v12;
        --v7;
      }

      while (v7);

      sub_25EC47404(v71);

      v1 = v64;
      v2 = MEMORY[0x277D84F90];
    }

    else
    {
      v11 = v2;
    }

    v16 = v11[2];
    v17 = *(v4 + 2);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v18 <= *(v4 + 3) >> 1)
    {
      if (!v11[2])
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v20 = v17 + v16;
      }

      else
      {
        v20 = v17;
      }

      v4 = sub_25EC50FAC(isUniquelyReferenced_nonNull_native, v20, 1, v4);
      if (!v11[2])
      {
LABEL_3:

        if (v16)
        {
          goto LABEL_68;
        }

        goto LABEL_4;
      }
    }

    v21 = *(v4 + 2);
    if ((*(v4 + 3) >> 1) - v21 < v16)
    {
      goto LABEL_69;
    }

    memcpy(&v4[4 * v21 + 32], v11 + 4, 4 * v16);

    if (v16)
    {
      v22 = *(v4 + 2);
      v23 = __OFADD__(v22, v16);
      v24 = v22 + v16;
      if (v23)
      {
        goto LABEL_70;
      }

      *(v4 + 2) = v24;
    }

LABEL_4:
    if (++v3 == v70)
    {
      goto LABEL_27;
    }
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t sub_25EC63FA0(uint64_t a1)
{
  v3 = v2;
  v5 = *(a1 + 16);
  result = swift_beginAccess();
  if (!v5)
  {
    return result;
  }

  v7 = 0;
  v8 = a1 + 32;
  v9 = MEMORY[0x277D84FA0];
  v110 = v1;
  v94 = a1 + 32;
  v95 = v5;
LABEL_3:
  v102 = v7;
  v10 = v8 + 48 * v7;
  v11 = *v10;
  v12 = v1[8];
  if (!*(v12 + 16) || (v13 = *(v10 + 8), v14 = *(v10 + 16), v15 = *(v10 + 32), v107 = *(v10 + 24), v16 = *(v10 + 40), v17 = sub_25EC4CDB4(v11), (v18 & 1) == 0))
  {
    sub_25EC4E124();
    swift_allocError();
    *v87 = v11;
    *(v87 + 4) = 3;
    return swift_willThrow();
  }

  v112 = v11;
  v19 = *(*(v12 + 56) + 8 * v17);
  v123 = v9;
  v122 = v9;
  v20 = *(v13 + 16);
  v21 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
  v96 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_headSender;

  sub_25EC473B4(v14);
  sub_25EC473B4(v15);

  v104 = v21;
  result = swift_beginAccess();
  v115 = v19;
  v97 = v20;
  v100 = v15;
  v101 = v14;
  v106 = v13;
  if (!v20)
  {
    v82 = v3;
    v83 = MEMORY[0x277D84FA0];
    goto LABEL_34;
  }

  v22 = v13;
  v23 = 0;
  v98 = v13 + 32;
  v24 = v19;
  do
  {
    if (v23 >= *(v22 + 16))
    {
      goto LABEL_72;
    }

    v99 = v23;
    v25 = v98 + 56 * v23;
    v26 = *v25;
    v114 = *(v25 + 24);
    v27 = *(v25 + 32);
    v28 = *(v25 + 40);
    v108 = *(v25 + 16);
    v29 = *(v25 + 48);
    v30 = *(v24 + v104);
    if (!*(v30 + 16) || (v31 = sub_25EC4CDB4(v26), (v32 & 1) == 0))
    {

      sub_25EC473B4(v28);

      sub_25EC4E124();
      swift_allocError();
      *v86 = v26;
      *(v86 + 4) = 4;
      swift_willThrow();

      sub_25EC47404(v14);
      sub_25EC47404(v100);

      return sub_25EC47404(v28);
    }

    v33 = *(*(v30 + 56) + 8 * v31);
    v34 = v114;
    v35 = *(v114 + 16);

    v105 = v28;
    sub_25EC473B4(v28);
    v113 = v33;

    v111 = v35;
    if (v35)
    {
      v36 = 0;
      v37 = (v114 + 40);
      v109 = 1;
      v38 = v110;
      while (1)
      {
        if (v36 >= *(v34 + 16))
        {
          goto LABEL_71;
        }

        v39 = *(v37 - 2);
        v116 = *(v37 - 1);
        v40 = *v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361F0, &qword_25EC7B5A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_25EC7A890;
        *(inited + 32) = v112;
        v42 = sub_25EC61A94(v39, inited);
        if (v3)
        {

          sub_25EC47404(v105);

          sub_25EC47404(v101);
          sub_25EC47404(v100);

          swift_setDeallocating();
        }

        v43 = v42;
        swift_setDeallocating();
        if (v43)
        {
          break;
        }

        v50 = v38[6];
        if ((sub_25EC799C4() & 1) == 0)
        {
          v51 = *(*(v38[5] + 16) + 16);
          v3 = 0;
          if ((sub_25EC799C4() & 1) == 0)
          {

            v120 = 0;
            v121 = 0xE000000000000000;
            sub_25EC7A144();

            v120 = 0x6E65646E65706544;
            v121 = 0xEB00000000207963;
            v89 = sub_25EC7A224();
            MEMORY[0x25F8CB870](v89);

            MEMORY[0x25F8CB870](0xD00000000000001ALL, 0x800000025EC811D0);
            sub_25EC47BA8(v120, v121, 0xD00000000000001CLL, 0x800000025EC811F0, 0xD000000000000036, 0x800000025EC81210, 290);

            sub_25EC4E124();
            swift_allocError();
            *v90 = v39;
            *(v90 + 4) = 2;
            swift_willThrow();

            sub_25EC47404(v105);

LABEL_66:
            sub_25EC47404(v101);
            return sub_25EC47404(v100);
          }

          result = sub_25EC68894(&v120, v39);
          if (v40)
          {
            goto LABEL_12;
          }

LABEL_24:
          v52 = v38[4];
          v53 = sub_25EC79DC4();
          sub_25EC48B40(v53, 1);

          v120 = 0;
          v121 = 0xE000000000000000;
          sub_25EC7A144();
          MEMORY[0x25F8CB870](0xD000000000000031, 0x800000025EC81250);
          v54 = sub_25EC7A224();
          MEMORY[0x25F8CB870](v54);

          MEMORY[0x25F8CB870](0x73617420726F6620, 0xEC0000003D64496BLL);
          v55 = sub_25EC7A224();
          MEMORY[0x25F8CB870](v55);

          sub_25EC47B5C(v120, v121, 0xD00000000000001CLL, 0x800000025EC811F0, 0xD000000000000036, 0x800000025EC81210, 300);

          goto LABEL_12;
        }

        result = sub_25EC68894(&v120, v39);
        v3 = 0;
        if ((v40 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_12:
        v34 = v114;
        ++v36;
        v37 += 12;
        if (v111 == v36)
        {

          if (v109)
          {
            v117 = 0;
            v14 = v101;
            v22 = v106;
            goto LABEL_26;
          }

          result = sub_25EC47404(v105);
          v14 = v101;
          v22 = v106;
          goto LABEL_28;
        }
      }

      v44 = *(v115 + 24);
      v45 = *(v113 + 16);

      v46 = sub_25EC79A14();

      if ((v46 & 1) == 0)
      {

        v84 = sub_25EC79854();
        sub_25EC4E124();
        swift_allocError();
        *v85 = v84;
        *(v85 + 4) = 7;
        swift_willThrow();

        sub_25EC47404(v105);

        sub_25EC47404(v101);
        sub_25EC47404(v100);
      }

      v120 = 0;
      v121 = 0xE000000000000000;
      sub_25EC7A144();

      v120 = 0xD000000000000013;
      v121 = 0x800000025EC81290;
      v47 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v47);

      MEMORY[0x25F8CB870](0x6B736174206F7420, 0xEB000000003D6449);
      v48 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v48);

      MEMORY[0x25F8CB870](0x70617267206E6920, 0xEC0000003D644968);
      v118 = *(v115 + 16);
      v49 = sub_25EC7A224();
      MEMORY[0x25F8CB870](v49);

      sub_25EC47B5C(v120, v121, 0xD00000000000001CLL, 0x800000025EC811F0, 0xD000000000000036, 0x800000025EC81210, 279);

      v109 = 0;
      v3 = 0;
      v38 = v110;
      if (v40)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    v117 = v3;

LABEL_26:
    v56 = *(v115 + 24);
    v57 = *(v115 + v96);
    v58 = *(v113 + 16);

    v59 = sub_25EC79A14();

    if ((v59 & 1) == 0)
    {

      v91 = *(v115 + v96);
      v92 = sub_25EC79854();
      sub_25EC4E124();
      swift_allocError();
      *v93 = v92;
      *(v93 + 4) = 7;
      swift_willThrow();

      sub_25EC47404(v105);

      sub_25EC47404(v14);
      sub_25EC47404(v100);
    }

    v120 = 0;
    v121 = 0xE000000000000000;
    sub_25EC7A144();
    MEMORY[0x25F8CB870](0xD000000000000031, 0x800000025EC812B0);
    v119 = *(v115 + 16);
    v60 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v60);

    MEMORY[0x25F8CB870](0x6B736174206F7420, 0xEB000000003D6449);
    v61 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v61);

    MEMORY[0x25F8CB870](0xD000000000000012, 0x800000025EC812F0);
    sub_25EC47B5C(v120, v121, 0xD00000000000001CLL, 0x800000025EC811F0, 0xD000000000000036, 0x800000025EC81210, 312);

    sub_25EC47404(v105);

    v3 = v117;
LABEL_28:
    v23 = v99 + 1;
    v24 = v115;
  }

  while (v99 + 1 != v97);
  v82 = v3;
  v83 = v123;
LABEL_34:
  v103 = v102 + 1;

  v62 = 0;
  v63 = 1 << *(v83 + 32);
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  else
  {
    v64 = -1;
  }

  v65 = v64 & *(v83 + 56);
  v66 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_headReceiver;
  v67 = (v63 + 63) >> 6;
  while (v65)
  {
    v68 = v62;
LABEL_44:
    v69 = __clz(__rbit64(v65));
    v65 &= v65 - 1;
    v70 = *(*(v83 + 48) + ((v68 << 8) | (4 * v69)));
    v71 = v110[6];
    v72 = *(v115 + v66);
    result = sub_25EC79A24();
    if ((result & 1) == 0)
    {

      sub_25EC4E124();
      swift_allocError();
      *v88 = v70;
      *(v88 + 4) = 7;
      swift_willThrow();

      goto LABEL_66;
    }
  }

  while (1)
  {
    v68 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      __break(1u);
      goto LABEL_70;
    }

    if (v68 >= v67)
    {
      break;
    }

    v65 = *(v83 + 56 + 8 * v68);
    ++v62;
    if (v65)
    {
      v62 = v68;
      goto LABEL_44;
    }
  }

  v73 = 0;
  v74 = v122;
  v75 = v122 + 56;
  v76 = 1 << *(v122 + 32);
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  else
  {
    v77 = -1;
  }

  v78 = v77 & *(v122 + 56);
  v79 = (v76 + 63) >> 6;
  v1 = v110;
  v7 = v103;
  while (v78)
  {
    v80 = v73;
LABEL_56:
    v81 = __clz(__rbit64(v78));
    v78 &= v78 - 1;
    result = sub_25EC62A40(*(*(v74 + 48) + ((v80 << 8) | (4 * v81))), v115);
    if (v82)
    {

      sub_25EC47404(v101);
      return sub_25EC47404(v100);
    }
  }

  while (1)
  {
    v80 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v80 >= v79)
    {

      sub_25EC47404(v101);
      sub_25EC47404(v100);

      v8 = v94;
      v3 = v82;
      v9 = MEMORY[0x277D84FA0];
      if (v103 != v95)
      {
        goto LABEL_3;
      }

      return result;
    }

    v78 = *(v75 + 8 * v80);
    ++v73;
    if (v78)
    {
      v73 = v80;
      goto LABEL_56;
    }
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SessionManager.buildAllGraphs()()
{
  sub_25EC4E124();
  swift_allocError();
  *v0 = 0;
  *(v0 + 4) = 10;
  swift_willThrow();
}

uint64_t SessionManager.connectIntrospectionChannel(senderId:channel:)(int a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_25EC653D0(a1, a2, v2);
}

BOOL sub_25EC64FC8(Swift::UInt32 a1, Swift::UInt64 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25EC7A890;
  sub_25EC7A144();
  MEMORY[0x25F8CB870](0xD000000000000046, 0x800000025EC81160);
  v6 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v6);

  MEMORY[0x25F8CB870](0x49656D617266202CLL, 0xEB00000000203A64);
  v7 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v7);

  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_25EC7A2B4();

  v8 = *(v2 + 16);
  return PolarisGSTServiceHandle.sendTrigger(senderId:frameId:)(a1, a2);
}

uint64_t sub_25EC65140()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25EC7A890;
  sub_25EC7A144();
  MEMORY[0x25F8CB870](0xD000000000000045, 0x800000025EC81110);
  v2 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v2);

  MEMORY[0x25F8CB870](0x49656D617266202CLL, 0xEB00000000203A64);
  v3 = sub_25EC7A224();
  MEMORY[0x25F8CB870](v3);

  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_25EC7A2B4();

  v4 = *(v0 + 16);
  return sub_25EC799F4();
}

uint64_t sub_25EC652B4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_25EC652F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36138, &qword_25EC7A9C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25EC65360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36138, &qword_25EC7A9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25EC653D0(int a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v38 = a3;
  v4 = *(a3 + 64);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v43 = result;
  v39 = v9;
  v40 = v5;
  if (v8)
  {
LABEL_5:
    v12 = v11;
  }

  else
  {
    do
    {
LABEL_6:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_43;
      }

      if (v12 >= v9)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_25EC7A890;
        sub_25EC7A144();

        v36 = sub_25EC7A224();
        MEMORY[0x25F8CB870](v36);

        MEMORY[0x25F8CB870](0x73736573206E6920, 0xEC000000206E6F69);
        v49 = *(v38 + 16);
        v37 = sub_25EC7A224();
        MEMORY[0x25F8CB870](v37);

        *(v35 + 56) = MEMORY[0x277D837D0];
        *(v35 + 32) = 0xD00000000000001ELL;
        *(v35 + 40) = 0x800000025EC811B0;
        sub_25EC7A2B4();

        v34 = 0;
        return v34 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
    }

    while (!v8);
  }

  v41 = v12;
  v42 = (v8 - 1) & v8;
  v13 = *(*(result + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v8)))));
  v14 = OBJC_IVAR____TtC21PolarisExclaveSupport15GraphController_tasks;
  swift_beginAccess();
  v15 = *(v13 + v14);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v44 = v13;

  v21 = 0;
  v46 = v15 + 64;
  v47 = v15;
  for (i = v20; ; v20 = i)
  {
    if (!v19)
    {
      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_42;
        }

        if (v22 >= v20)
        {
          break;
        }

        v19 = *(v16 + 8 * v22);
        ++v21;
        if (v19)
        {
          v21 = v22;
          goto LABEL_19;
        }
      }

      v11 = v41;
      v8 = v42;
      result = v43;
      v9 = v39;
      v5 = v40;
      if (v42)
      {
        goto LABEL_5;
      }

      goto LABEL_6;
    }

LABEL_19:
    v23 = *(*(v15 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v19)))));
    swift_beginAccess();
    v24 = *(v23 + 48);
    if (v24 >> 62)
    {
      if (v24 < 0)
      {
        v31 = *(v23 + 48);
      }

      v25 = sub_25EC7A184();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25)
    {
      break;
    }

LABEL_13:
    v19 &= v19 - 1;

    v16 = v46;
    v15 = v47;
  }

  v26 = 0;
  while ((v24 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x25F8CB970](v26, v24);
    v27 = result;
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_40;
    }

LABEL_26:
    v29 = *(v27 + 24);

    v30 = sub_25EC79854();

    if (v30 == a1)
    {

      v32 = *(v44 + 24);
      v33 = *(v27 + 24);
      v34 = sub_25EC79A04();

      return v34 & 1;
    }

    ++v26;
    if (v28 == v25)
    {
      goto LABEL_13;
    }
  }

  if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_41;
  }

  v27 = *(v24 + 8 * v26 + 32);

  v28 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
    goto LABEL_26;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_25EC65894(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double defaultBufferConfig.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27FD360E8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = dword_27FD36338;
  result = *&qword_27FD36330;
  *a1 = qword_27FD36330;
  *(a1 + 8) = v1;
  return result;
}

double sub_25EC65960()
{
  *&result = 0x300000001;
  qword_27FD36330 = 0x300000001;
  dword_27FD36338 = 2;
  return result;
}

uint64_t GSTService.__allocating_init()()
{
  v0 = swift_allocObject();
  GSTService.init()();
  return v0;
}

void *GSTService.init()()
{
  v1 = v0;
  v13 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D84F90];
  v0[6] = sub_25EC4E5F0(MEMORY[0x277D84F90]);
  v3 = sub_25EC79A54();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[2] = sub_25EC79A44();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36340, &unk_25EC7B5B0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v0[3] = sub_25EC79944();
  v0[5] = sub_25EC4E604(v2);
  type metadata accessor for PolarisMutex();
  v9 = swift_allocObject();
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 16) = 0u;
  v12.__sig = 0;
  *v12.__opaque = 0;
  pthread_mutexattr_init(&v12);
  swift_beginAccess();
  pthread_mutex_init((v9 + 16), &v12);
  swift_endAccess();
  pthread_mutexattr_destroy(&v12);
  v1[4] = v9;
  v10 = *MEMORY[0x277D85DE8];
  return v1;
}

Swift::Bool __swiftcall GSTService.registerReceiver(clientId:receiverId:senderIds:)(Swift::UInt32 clientId, Swift::UInt32 receiverId, Swift::OpaquePointer senderIds)
{
  v4 = v3;
  v8 = sub_25EC79A64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!GSTService.getReceiver(receiverId:)(receiverId))
  {
    (*(v9 + 104))(v12, *MEMORY[0x277D3E798], v8);
    v13 = sub_25EC799B4();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    LOBYTE(v34) = 0;
    v16 = sub_25EC79974();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = receiverId;
    *(v17 + 32) = v3;

    sub_25EC79994();
    sub_25EC65FA4(receiverId, v16, clientId);
  }

  v18 = GSTService.getReceiver(receiverId:)(receiverId);
  if (v18)
  {
    v19 = *(senderIds._rawValue + 2);
    v20 = (senderIds._rawValue + 32);
    while (1)
    {
      v21 = v19;
      if (!v19)
      {
        break;
      }

      v23 = *v20++;
      v22 = v23;
      v24 = *(v4 + 16);
      v25 = sub_25EC79A24();
      v19 = v21 - 1;
      if ((v25 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_25EC7A890;
        v34 = 0;
        v35 = 0xE000000000000000;
        sub_25EC7A144();

        v34 = 0xD00000000000001CLL;
        v35 = 0x800000025EC81530;
        v33 = receiverId;
        v27 = sub_25EC7A224();
        MEMORY[0x25F8CB870](v27);

        MEMORY[0x25F8CB870](0x6573206874697720, 0xED0000207265646ELL);
        v33 = v22;
        v28 = sub_25EC7A224();
        MEMORY[0x25F8CB870](v28);

        v29 = v34;
        v30 = v35;
        *(v26 + 56) = MEMORY[0x277D837D0];
        *(v26 + 32) = v29;
        *(v26 + 40) = v30;
        sub_25EC7A2B4();

        break;
      }
    }

    LOBYTE(v18) = v21 == 0;
  }

  else
  {
    __break(1u);
  }

  return v18;
}

uint64_t GSTService.getReceiver(receiverId:)(unsigned int a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v4 + 16));
  swift_endAccess();

  swift_beginAccess();
  v5 = *(v2 + 48);
  if (*(v5 + 16) && (v6 = sub_25EC4CDB4(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  v9 = *(v2 + 32);
  swift_beginAccess();

  pthread_mutex_unlock((v9 + 16));
  swift_endAccess();

  return v8;
}

uint64_t sub_25EC65EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25EC799A4();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 32;
    do
    {
      v8 = *(a4 + 24);
      v10 = *(v5 + v7);

      sub_25EC79924();

      v7 += 4;
      --v6;
    }

    while (v6);
  }

  return sub_25EC79984();
}

uint64_t sub_25EC65FA4(unsigned int a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = v3[4];
  swift_beginAccess();

  pthread_mutex_lock((v8 + 16));
  swift_endAccess();

  swift_beginAccess();

  v9 = v4[6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v4[6];
  v4[6] = 0x8000000000000000;
  sub_25EC4DB74(a2, a1, isUniquelyReferenced_nonNull_native);
  v4[6] = v15;
  swift_endAccess();
  swift_beginAccess();
  v11 = v4[5];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = v4[5];
  v4[5] = 0x8000000000000000;
  sub_25EC4DA50(a3, a1, v12);
  v4[5] = v16;
  swift_endAccess();
  v13 = v4[4];
  swift_beginAccess();

  pthread_mutex_unlock((v13 + 16));
  swift_endAccess();
}

Swift::Bool __swiftcall GSTService.deregisterReceiver(receiverId:)(Swift::UInt32 receiverId)
{
  if (GSTService.getReceiver(receiverId:)(receiverId))
  {

    v3 = *(v1 + 16);
    if (sub_25EC799E4())
    {
      sub_25EC662F8(receiverId);
      return 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_25EC7A890;
    sub_25EC7A144();

    v8 = 0xD00000000000001ELL;
    v9 = 0x800000025EC81570;
    v7 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v7);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36100, &qword_25EC7B7A0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_25EC7A890;
    sub_25EC7A144();

    v8 = 0xD000000000000018;
    v9 = 0x800000025EC81550;
    v6 = sub_25EC7A224();
    MEMORY[0x25F8CB870](v6);

    MEMORY[0x25F8CB870](0x65726564206F7420, 0xEE00726574736967);
  }

  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = v8;
  *(v5 + 40) = v9;
  sub_25EC7A2B4();

  return 0;
}

uint64_t sub_25EC662F8(unsigned int a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v4 + 16));
  swift_endAccess();

  swift_beginAccess();
  sub_25EC4D0B8(a1);
  swift_endAccess();

  swift_beginAccess();
  sub_25EC4D01C(a1);
  swift_endAccess();
  v5 = *(v2 + 32);
  swift_beginAccess();

  pthread_mutex_unlock((v5 + 16));
  swift_endAccess();
}

Swift::Bool __swiftcall GSTService.deregisterSender(senderId:)(Swift::UInt32 senderId)
{
  v2 = v1;
  v3 = *(v1 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v3 + 16));
  swift_endAccess();

  v4 = *(v1 + 16);
  LOBYTE(v4) = sub_25EC799D4();
  v5 = *(v2 + 32);
  swift_beginAccess();

  pthread_mutex_unlock((v5 + 16));
  swift_endAccess();

  return v4 & 1;
}

Swift::UInt32_optional __swiftcall GSTService.getClient(receiverId:)(Swift::UInt32 receiverId)
{
  v2 = v1;
  v4 = *(v1 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v4 + 16));
  swift_endAccess();

  swift_beginAccess();
  v5 = *(v2 + 40);
  if (*(v5 + 16) && (v6 = sub_25EC4CDB4(receiverId), (v7 & 1) != 0))
  {
    v8 = 0;
    v9 = *(*(v5 + 56) + 4 * v6);
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

  swift_endAccess();
  v10 = *(v2 + 32);
  swift_beginAccess();

  pthread_mutex_unlock((v10 + 16));
  swift_endAccess();

  return (v9 | (v8 << 32));
}

uint64_t GSTService.consumeRunnableReceivers()()
{
  v1 = v0;
  v5 = MEMORY[0x277D84F90];
  v2 = *(v0 + 24);

  sub_25EC79914();

  v3 = *(v1 + 24);

  sub_25EC79934();

  return v5;
}

__n128 sub_25EC666AC(__n128 a1, uint64_t a2, unint64_t *a3, uint64_t a4, char **a5)
{
  a1.n128_u64[0] = *a3;
  v6 = a3[1];
  v15 = a1;
  *&v7 = GSTService.getClient(receiverId:)(*a3);
  if ((v7 & 0x100000000) == 0)
  {
    v9 = v7;
    v10 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_25EC51804(0, *(v10 + 2) + 1, 1, v10);
      *a5 = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_25EC51804((v12 > 1), v13 + 1, 1, v10);
      *a5 = v10;
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[24 * v13];
    result = v15;
    *(v14 + 4) = v15.n128_u64[0];
    *(v14 + 10) = v9;
    *(v14 + 6) = v6;
  }

  return result;
}

Swift::Bool __swiftcall GSTService.sendTrigger(senderId:frameId:)(Swift::UInt32 senderId, Swift::UInt64 frameId)
{
  v3 = v2;
  v4 = *(v2 + 32);
  swift_beginAccess();

  pthread_mutex_lock((v4 + 16));
  swift_endAccess();

  v5 = *(v2 + 16);
  LOBYTE(v5) = sub_25EC799F4();
  v6 = *(v3 + 32);
  swift_beginAccess();

  pthread_mutex_unlock((v6 + 16));
  swift_endAccess();

  return v5 & 1;
}

void *GSTService.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t GSTService.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GSTService.ReceiverExecutionMetadata(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GSTService.ReceiverExecutionMetadata(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GSTService.RunnableReceiverInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GSTService.RunnableReceiverInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t PolarisExclavesMessageMetadata.init(clientId:graphId:frameId:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t PolarisExclavesMessageMetadata.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);

  *a2 = v4;
  a2[1] = v3;
  return result;
}

void *PolarisExclavesMessageMetadata.toBytes()()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD362D8, &qword_25EC7B3E0);
  v2 = swift_allocObject();
  v3 = _swift_stdlib_malloc_size(v2);
  v2[2] = 16;
  v2[3] = 2 * v3 - 64;
  v2[4] = *v0;
  v2[5] = v1;
  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_25EC66B3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v13 = MEMORY[0x277D84F90];
    sub_25EC5B834(0, v4, 0);
    v5 = v13;
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = *(v13 + 16);
      v10 = *(v13 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_25EC5B834((v10 > 1), v9 + 1, 1);
      }

      *(v13 + 16) = v9 + 1;
      v11 = v13 + 16 * v9;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v6 += 16;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  *a2 = v5;
  return result;
}

uint64_t sub_25EC66C3C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_25EC5B8C4(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_25EC5B8C4((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_25EC66D14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v26 = MEMORY[0x277D84F90];
    sub_25EC5B86C(0, v3, 0);
    result = a1;
    v6 = 0;
    v7 = v26;
    v22 = a1;
    v23 = a1 + 32;
    v21 = v3;
    while (v6 < *(result + 16))
    {
      v8 = *(v23 + 8 * v6);
      v9 = *(v8 + 16);
      if (v9)
      {
        v24 = v7;
        v25 = MEMORY[0x277D84F90];

        sub_25EC5B834(0, v9, 0);
        v10 = v25;
        v11 = (v8 + 40);
        do
        {
          v12 = *(v11 - 1);
          v13 = *v11;
          v14 = *(v25 + 16);
          v15 = *(v25 + 24);

          if (v14 >= v15 >> 1)
          {
            sub_25EC5B834((v15 > 1), v14 + 1, 1);
          }

          *(v25 + 16) = v14 + 1;
          v16 = v25 + 16 * v14;
          *(v16 + 32) = v12;
          *(v16 + 40) = v13;
          v11 += 16;
          --v9;
        }

        while (v9);

        v3 = v21;
        result = v22;
        v7 = v24;
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }

      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v18 >= v17 >> 1)
      {
        v19 = result;
        sub_25EC5B86C((v17 > 1), v18 + 1, 1);
        result = v19;
      }

      ++v6;
      *(v7 + 16) = v18 + 1;
      *(v7 + 8 * v18 + 32) = v10;
      if (v6 == v3)
      {

        v2 = a2;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_16:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_25EC66EEC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v21 = MEMORY[0x277D84F90];
  sub_25EC5B8FC(0, v2, 0);
  v4 = 0;
  result = v21;
  v18 = v1;
  v19 = v1 + 32;
  v17 = v2;
  while (v4 < *(v1 + 16))
  {
    v6 = *(v19 + 8 * v4);
    v7 = *(v6 + 16);
    if (v7)
    {
      v20 = result;

      sub_25EC5B8C4(0, v7, 0);
      v8 = v3;
      v9 = (v6 + 40);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_25EC5B8C4((v12 > 1), v13 + 1, 1);
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        v9 += 16;
        --v7;
      }

      while (v7);

      v3 = MEMORY[0x277D84F90];
      v2 = v17;
      v1 = v18;
      result = v20;
    }

    else
    {
      v8 = v3;
    }

    v22 = result;
    v16 = *(result + 16);
    v15 = *(result + 24);
    if (v16 >= v15 >> 1)
    {
      sub_25EC5B8FC((v15 > 1), v16 + 1, 1);
      result = v22;
    }

    ++v4;
    *(result + 16) = v16 + 1;
    *(result + 8 * v16 + 32) = v8;
    if (v4 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EC67090@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    sub_25EC5B934(0, v3, 0);
    v5 = a1;
    v6 = v12;
    v7 = *(v12 + 16);
    v8 = 32;
    do
    {
      v9 = *(v5 + v8);
      v10 = *(v12 + 24);
      if (v7 >= v10 >> 1)
      {
        sub_25EC5B934((v10 > 1), v7 + 1, 1);
        v5 = a1;
      }

      *(v12 + 16) = v7 + 1;
      *(v12 + 8 * v7 + 32) = v9;
      v8 += 8;
      ++v7;
      --v3;
    }

    while (v3);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *a2 = v6;
  return result;
}

uint64_t sub_25EC67188()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_25EC5B964(0, v2, 0);
    result = v8;
    v4 = (v1 + 32);
    v5 = *(v8 + 16);
    do
    {
      v6 = *v4;
      v9 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        sub_25EC5B964((v7 > 1), v5 + 1, 1);
        result = v9;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5 + 32) = v6;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_25EC67254@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v16 = MEMORY[0x277D84F90];
    sub_25EC5B994(0, v4, 0);
    v5 = v16;
    v6 = (a1 + 56);
    do
    {
      v7 = *(v6 - 6);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = *(v16 + 16);
      v12 = *(v16 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_25EC5B994((v12 > 1), v11 + 1, 1);
      }

      *(v16 + 16) = v11 + 1;
      v13 = v16 + 32 * v11;
      *(v13 + 32) = v7;
      *(v13 + 40) = v8;
      *(v13 + 48) = v9;
      *(v13 + 56) = v10;
      v6 += 4;
      --v4;
    }

    while (v4);

    v3 = a2;
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  *v3 = v5;
  return result;
}

uint64_t sub_25EC67378()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_25EC5B9CC(0, v2, 0);
    v3 = v13;
    v4 = (v1 + 56);
    do
    {
      v5 = *(v4 - 6);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = *(v13 + 16);
      v10 = *(v13 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_25EC5B9CC((v10 > 1), v9 + 1, 1);
      }

      *(v13 + 16) = v9 + 1;
      v11 = v13 + 32 * v9;
      *(v11 + 32) = v5;
      *(v11 + 40) = v6;
      *(v11 + 48) = v7;
      *(v11 + 56) = v8;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_25EC67470@<X0>(_DWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  result = sub_25EC79A94();
  *a1 = v3;
  return result;
}

uint64_t PolarisExclaveSupportServiceHandle.__allocating_init(endpoint:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_25EC67508(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v45);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v40 = *(v3 + 16);
  KeyPath = swift_getKeyPath();
  v12 = *(a1 + 16);
  v44 = KeyPath;

  v38 = v5;
  if (v12)
  {
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v41 = *(v13 + 56);
    v42 = v14;
    v16 = (v13 - 8);
    v17 = MEMORY[0x277D84F90];
    do
    {
      v18 = v45;
      v42(v10, v15, v45);
      swift_getAtKeyPath();
      v19 = v47;
      (*v16)(v10, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_25EC50FAC(0, *(v17 + 2) + 1, 1, v17);
      }

      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      if (v21 >= v20 >> 1)
      {
        v17 = sub_25EC50FAC((v20 > 1), v21 + 1, 1, v17);
      }

      *(v17 + 2) = v21 + 1;
      *&v17[4 * v21 + 32] = v19;
      v15 += v41;
      --v12;
    }

    while (v12);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v22 = swift_getKeyPath();
  v23 = v39;
  v24 = *(v39 + 16);
  v44 = v22;

  if (v24)
  {
    v25 = v38 + 16;
    v26 = *(v38 + 16);
    v27 = v23 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v41 = *(v38 + 72);
    v42 = v26;
    v28 = (v38 + 8);
    v29 = MEMORY[0x277D84F90];
    do
    {
      v30 = v43;
      v31 = v45;
      v32 = v25;
      v42(v43, v27, v45);
      swift_getAtKeyPath();
      v33 = v46;
      (*v28)(v30, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_25EC50FAC(0, *(v29 + 2) + 1, 1, v29);
      }

      v35 = *(v29 + 2);
      v34 = *(v29 + 3);
      if (v35 >= v34 >> 1)
      {
        v29 = sub_25EC50FAC((v34 > 1), v35 + 1, 1, v29);
      }

      *(v29 + 2) = v35 + 1;
      *&v29[4 * v35 + 32] = v33;
      v27 += v41;
      --v24;
      v25 = v32;
    }

    while (v24);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  sub_25EC5881C(v17, v29);
}

uint64_t sub_25EC6788C()
{
  v2 = sub_25EC79754();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = *(v0 + 16);
  result = sub_25EC586F4(&v16);
  if (!v1)
  {
    v19 = MEMORY[0x277D84FA0];
    v12 = *(v16 + 16);
    if (v12)
    {
      v13 = (v3 + 8);
      v14 = (v16 + 56);
      do
      {
        v15 = *v14;
        LODWORD(v16) = *(v14 - 6);
        v17 = *(v14 - 1);
        v18 = v15;
        sub_25EC67A2C(v7);
        sub_25EC68C3C(v9, v7);
        (*v13)(v9, v2);
        v14 += 4;
        --v12;
      }

      while (v12);

      return v19;
    }

    else
    {

      return MEMORY[0x277D84FA0];
    }
  }

  return result;
}

uint64_t sub_25EC67A2C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v42 - v8);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v42 - v11);
  MEMORY[0x28223BE20](v10);
  v14 = *v1;
  v15 = *(v1 + 1);
  v16 = *(v1 + 3);
  v42 = *(v1 + 2);
  v43 = v16;
  *(&v42 - v13) = v14;
  v17 = *MEMORY[0x277D3E7A8];
  v18 = *(v3 + 104);
  v44 = &v42 - v13;
  v49 = v17;
  v47 = v18;
  v48 = v3 + 104;
  v18();
  v19 = *(v15 + 16);
  if (v19)
  {
    v20 = (v15 + 32);
    v21 = MEMORY[0x277D84F90];
    do
    {
      v22 = *v20++;
      *v12 = v22;
      (v47)(v12, v49, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_25EC511F8(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_25EC511F8(v23 > 1, v24 + 1, 1, v21);
      }

      v21[2] = v24 + 1;
      (*(v3 + 32))(v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v24, v12, v2);
      --v19;
    }

    while (v19);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  sub_25EC6A534(v21);

  v25 = *(v42 + 16);
  if (v25)
  {
    v26 = (v42 + 32);
    v27 = MEMORY[0x277D84F90];
    do
    {
      v28 = *v26++;
      *v9 = v28;
      (v47)(v9, v49, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_25EC511F8(0, v27[2] + 1, 1, v27);
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_25EC511F8(v29 > 1, v30 + 1, 1, v27);
      }

      v27[2] = v30 + 1;
      (*(v3 + 32))(v27 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v30, v9, v2);
      --v25;
    }

    while (v25);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  sub_25EC6A534(v27);

  v31 = *(v43 + 16);
  if (v31)
  {
    v32 = (v43 + 32);
    v33 = MEMORY[0x277D84F90];
    v34 = v46;
    do
    {
      v35 = *v32++;
      *v34 = v35;
      (v47)(v34, v49, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_25EC511F8(0, v33[2] + 1, 1, v33);
      }

      v37 = v33[2];
      v36 = v33[3];
      v38 = v46;
      if (v37 >= v36 >> 1)
      {
        v40 = sub_25EC511F8(v36 > 1, v37 + 1, 1, v33);
        v38 = v46;
        v33 = v40;
      }

      v33[2] = v37 + 1;
      v39 = v33 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v37;
      v34 = v38;
      (*(v3 + 32))(v39, v38, v2);
      --v31;
    }

    while (v31);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  sub_25EC6A534(v33);

  return sub_25EC79744();
}

uint64_t sub_25EC67EA8@<X0>(char **a1@<X1>, char **a2@<X2>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = *(v3 + 16);
  v8 = *a1;
  v7 = v4;
  return sub_25EC5A3F4(&v8, &v7, a3);
}

uint64_t PolarisExclaveSupportServiceHandle.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PolarisExclaveSupportServiceHandle.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_25EC67FD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36360, &qword_25EC7B838);
  result = sub_25EC7A124();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      result = MEMORY[0x25F8CBAE0](*(v6 + 40), v18, 4);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25EC681FC(uint64_t a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36308, &qword_25EC7B830);
  result = sub_25EC7A124();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25EC4F4D0(&qword_27FD361A8);
      result = sub_25EC7A014();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_25EC6854C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_25EC79754();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36358, &qword_25EC7B828);
  result = sub_25EC7A124();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25EC69094(&qword_27FD36348);
      result = sub_25EC7A014();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_25EC68894(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x25F8CBAE0](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_25EC69E9C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25EC6897C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25EC4F4D0(&qword_27FD361A8);
  v36 = a2;
  v13 = sub_25EC7A014();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25EC4F4D0(&qword_27FD361B8);
      v23 = sub_25EC7A024();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_25EC69FC0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_25EC68C3C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25EC79754();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25EC69094(&qword_27FD36348);
  v36 = a2;
  v13 = sub_25EC7A014();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25EC69094(&qword_27FD36350);
      v23 = sub_25EC7A024();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_25EC6A244(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_25EC69094(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25EC79754();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_25EC690D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36360, &qword_25EC7B838);
  v2 = *v0;
  v3 = sub_25EC7A114();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_25EC69218()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36308, &qword_25EC7B830);
  v7 = *v0;
  v8 = sub_25EC7A114();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_25EC69458()
{
  v1 = v0;
  v2 = sub_25EC79754();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36358, &qword_25EC7B828);
  v7 = *v0;
  v8 = sub_25EC7A114();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_25EC69690(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36360, &qword_25EC7B838);
  result = sub_25EC7A124();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      result = MEMORY[0x25F8CBAE0](*(v6 + 40), v17, 4);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_25EC69884(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD361A0, &unk_25EC7AD40);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36308, &qword_25EC7B830);
  v10 = sub_25EC7A124();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_25EC4F4D0(&qword_27FD361A8);
      result = sub_25EC7A014();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_25EC69B94(uint64_t a1)
{
  v2 = v1;
  v37 = sub_25EC79754();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD36358, &qword_25EC7B828);
  v10 = sub_25EC7A124();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_25EC69094(&qword_27FD36348);
      result = sub_25EC7A014();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_25EC69E9C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25EC67FD4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25EC690D8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25EC69690(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x25F8CBAE0](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25EC7A254();
  __break(1u);
  return result;
}