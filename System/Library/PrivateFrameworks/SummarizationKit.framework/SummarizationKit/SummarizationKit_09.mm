uint64_t sub_22809E054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF8, &qword_22813E298);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v13 - v10;
  sub_22809F044(a1, &v13 - v10, &qword_27D81ECF8, &qword_22813E298);
  return a5(v11);
}

uint64_t Summary.merge(_:)(uint64_t a1)
{
  v67 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v66 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v64 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v65 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF8, &qword_22813E298);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v62 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v63 = &v60 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v60 = &v60 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v61 = &v60 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v60 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v60 - v32;
  v35 = MEMORY[0x28223BE20](v31, v34);
  v37 = &v60 - v36;
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v60 - v39;
  sub_228138F2C();
  v41 = sub_228136DBC();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  if (v43(v37, 1, v41) == 1)
  {
    sub_228138F2C();
    if (v43(v37, 1, v41) != 1)
    {
      sub_22809EFE4(v37, &qword_27D81ECF8, &qword_22813E298);
    }
  }

  else
  {
    (*(v42 + 32))(v40, v37, v41);
    (*(v42 + 56))(v40, 0, 1, v41);
  }

  sub_228138F3C();
  sub_228138F5C();
  if (v43(v29, 1, v41) == 1)
  {
    sub_228138F5C();
    v44 = v43(v29, 1, v41);
    v45 = v65;
    if (v44 != 1)
    {
      sub_22809EFE4(v29, &qword_27D81ECF8, &qword_22813E298);
    }
  }

  else
  {
    (*(v42 + 32))(v33, v29, v41);
    (*(v42 + 56))(v33, 0, 1, v41);
    v45 = v65;
  }

  sub_228138F6C();
  v46 = v60;
  sub_228138F7C();
  if (v43(v46, 1, v41) == 1)
  {
    sub_228138F7C();
    v47 = v43(v46, 1, v41) == 1;
    v48 = v46;
    v50 = v62;
    v49 = v63;
    if (!v47)
    {
      sub_22809EFE4(v48, &qword_27D81ECF8, &qword_22813E298);
    }
  }

  else
  {
    v51 = v61;
    (*(v42 + 32))(v61, v46, v41);
    (*(v42 + 56))(v51, 0, 1, v41);
    v50 = v62;
    v49 = v63;
  }

  sub_228138F8C();
  if (!sub_228138E9C())
  {
    sub_228138E9C();
  }

  sub_228138EAC();
  sub_228138E7C();
  if (v43(v50, 1, v41) == 1)
  {
    sub_228138E7C();
    if (v43(v50, 1, v41) != 1)
    {
      sub_22809EFE4(v50, &qword_27D81ECF8, &qword_22813E298);
    }
  }

  else
  {
    (*(v42 + 32))(v49, v50, v41);
    (*(v42 + 56))(v49, 0, 1, v41);
  }

  sub_228138E8C();
  v52 = sub_228138ECC();
  v53 = sub_228138EBC();
  sub_227FED640(v52);
  v53(v68, 0);
  v54 = v64;
  sub_228138F0C();
  v55 = sub_228138DDC();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  if (v57(v54, 1, v55) == 1)
  {
    sub_228138F0C();
    if (v57(v54, 1, v55) != 1)
    {
      sub_22809EFE4(v54, &qword_27D81ECF0, &qword_22813E230);
    }
  }

  else
  {
    (*(v56 + 32))(v45, v54, v55);
    (*(v56 + 56))(v45, 0, 1, v55);
  }

  sub_228138F1C();
  v58 = v66;
  sub_228138EEC();
  Summary.merge(safetyClassification:)(v58);
  return sub_22809EFE4(v58, &qword_27D81EC98, &qword_22813E0D0);
}

uint64_t Summary.merge(safetyClassification:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v29[-v10];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v29[-v13];
  v15 = sub_228138E0C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v29[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22809F044(a1, v14, &qword_27D81EC98, &qword_22813E0D0);
  v21 = *(v16 + 48);
  if (v21(v14, 1, v15) == 1)
  {
    return sub_22809EFE4(v14, &qword_27D81EC98, &qword_22813E0D0);
  }

  (*(v16 + 32))(v20, v14, v15);
  sub_228138EEC();
  v23 = v21(v11, 1, v15);
  sub_22809EFE4(v11, &qword_27D81EC98, &qword_22813E0D0);
  if (v23 == 1)
  {
    (*(v16 + 16))(v7, v20, v15);
    (*(v16 + 56))(v7, 0, 1, v15);
    sub_228138EFC();
    return (*(v16 + 8))(v20, v15);
  }

  v24 = sub_228138EDC();
  v26 = v25;
  if (v21(v25, 1, v15))
  {
    v24(v29, 0);
    return (*(v16 + 8))(v20, v15);
  }

  v27 = sub_228138DFC();
  v28 = *(v16 + 8);
  v28(v26, v15);
  if (v27)
  {
    sub_228138DFC();
  }

  sub_228138DEC();
  v24(v29, 0);
  return (v28)(v20, v15);
}

uint64_t sub_22809EBA8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_228138F9C();
  (*(*(v7 - 8) + 16))(a3, v3, v7);
  return a2(a1);
}

unint64_t sub_22809EC24@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22813948C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_2281342E4(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_2281342E4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_22813945C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_22813937C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_22813937C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_22813948C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_2281342E4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22813948C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_2281342E4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_2281342E4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22813937C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22809EFE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22809F044(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_22809F0C8()
{
  result = qword_27D81EF08;
  if (!qword_27D81EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81EF08);
  }

  return result;
}

uint64_t sub_22809F11C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2281399BC() & 1;
  }
}

uint64_t sub_22809F174(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = sub_22813936C();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_22813939C();

  return sub_22813948C();
}

uint64_t SKUserNotification.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_228138B8C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SKUserNotification.preprocess(sharedSessionData:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_228138AEC();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22809F394, 0, 0);
}

uint64_t sub_22809F394()
{
  v54 = v0;
  v1 = v0[19];
  v2 = sub_228138B6C();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0xE000000000000000;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = sub_228138B7C();
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = sub_228138B5C();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v5 = v12;
  }

  v14 = sub_2280A8A4C(v13, v5);
  if (v14)
  {

    v19 = swift_allocObject();
    *(v19 + 16) = 6;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v20 = sub_227FF96D4(0, 0xD000000000000084, 0x8000000228147820, 20, sub_2280A0390);
    sub_227FDB3CC();
    swift_allocError();
    *v21 = 6;
    *(v21 + 8) = v20;
    swift_willThrow();
    v16 = v0[22];
    v15 = v0[23];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v22 = sub_2280A8CC8(v13, v5);
    v51 = v9;
    v23 = v0[18];
    v24 = *(v23 + 208);
    v48 = sub_2280A7954(v22, v25, v23 + 160, v24);
    v50 = v26;
    v43 = v24;
    v47 = v23;
    v28 = v0[22];
    v27 = v0[23];
    v44 = v0[20];
    v45 = v0[19];
    v46 = v0[21];

    sub_228138B2C();
    sub_228138ADC();
    sub_2280A00CC();
    LOBYTE(v45) = sub_2281397EC();
    v29 = *(v46 + 8);
    v29(v28, v44);
    v29(v27, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    inited = swift_initStackObject();
    if (v45)
    {
      *(inited + 16) = xmmword_22813A4B0;
      *(inited + 32) = v48;
      *(inited + 40) = v50;

      sub_2280A8554(inited, (v47 + 160));
      swift_setDeallocating();
      sub_227FE5D7C(inited + 32);
      v31 = v47;
    }

    else
    {
      *(inited + 32) = v4;
      *(inited + 16) = xmmword_22813B480;
      *(inited + 40) = v6;
      *(inited + 48) = v51;
      *(inited + 56) = v10;
      *(inited + 64) = v48;
      *(inited + 72) = v50;

      sub_2280A8554(inited, (v47 + 160));
      v31 = v47;
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    v49 = sub_2280A0124(v4, v6, v51, v10, v48, v50);
    v33 = v32;

    v0[24] = v33;
    if (v43)
    {
      v34 = sub_22813936C();

      KeyPath = swift_getKeyPath();
      os_unfair_lock_lock((v43 + 16));
      v36 = MEMORY[0x277D84A28];
      v53 = MEMORY[0x277D84A28];
      v52[0] = v34;

      sub_2280449E4(v52, KeyPath, (v43 + 24));
      os_unfair_lock_unlock((v43 + 16));

      v37 = sub_22813936C();

      v38 = swift_getKeyPath();
      os_unfair_lock_lock((v43 + 16));
      v53 = v36;
      v52[0] = v37;
      v31 = v47;

      sub_2280449E4(v52, v38, (v43 + 24));
      os_unfair_lock_unlock((v43 + 16));

      v39 = sub_22813936C();

      v40 = swift_getKeyPath();
      os_unfair_lock_lock((v43 + 16));
      v53 = v36;
      v52[0] = v39;

      sub_2280449E4(v52, v40, (v43 + 24));
      os_unfair_lock_unlock((v43 + 16));
    }

    else
    {
    }

    v41 = swift_task_alloc();
    v0[25] = v41;
    *v41 = v0;
    v41[1] = sub_22809F99C;
    v42 = v0[18];

    return sub_2280D89D0(v49, v33, v31 + 160, 0);
  }
}

uint64_t sub_22809F99C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 200);
  v8 = *v3;
  *(*v3 + 208) = v2;

  if (v2)
  {
    v9 = sub_22809FB4C;
  }

  else
  {
    *(v6 + 216) = a2;
    *(v6 + 224) = a1;
    v9 = sub_22809FAD0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22809FAD0()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];

  v4 = v0[1];
  v6 = v0[27];
  v5 = v0[28];

  return v4(v5, v6);
}

uint64_t sub_22809FB4C()
{
  v1 = v0[24];

  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];

  v5 = v0[1];

  return v5();
}

Swift::String __swiftcall SKUserNotification.preprocessForLanguageCheck()()
{
  v0 = sub_228138AEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v32 - v8;
  v34 = sub_228138B6C();
  v11 = v10;
  v12 = 0xE000000000000000;
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v37 = v13;
  v33 = sub_228138B7C();
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v36 = v16;
  v17 = sub_228138B5C();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v35 = v19;
  if (v18)
  {
    v12 = v18;
  }

  sub_228138B2C();
  sub_228138ADC();
  sub_2280A00CC();
  v20 = sub_2281397EC();
  v21 = *(v1 + 8);
  v21(v6, v0);
  v21(v9, v0);
  if (v20)
  {

    v22 = v35;
  }

  else
  {
    if (v15)
    {
      v23 = v33;
    }

    else
    {
      v23 = 0;
    }

    if (v11)
    {
      v24 = v34;
    }

    else
    {
      v24 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    inited = swift_initStackObject();
    *(inited + 32) = v24;
    *(inited + 16) = xmmword_22813B480;
    v26 = v36;
    *(inited + 40) = v37;
    *(inited + 48) = v23;
    v27 = v35;
    *(inited + 56) = v26;
    *(inited + 64) = v27;
    *(inited + 72) = v12;
    v28 = sub_228045C34();
    v12 = v29;
    swift_setDeallocating();
    swift_arrayDestroy();
    v22 = v28;
  }

  v30 = v12;
  result._object = v30;
  result._countAndFlagsBits = v22;
  return result;
}

uint64_t sub_22809FDEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22809FE80;

  return SKUserNotification.preprocess(sharedSessionData:)(a1);
}

uint64_t sub_22809FE80(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_2280A0004@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2D08((v3 + 24), KeyPath);
  v7 = v6;
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  return result;
}

unint64_t sub_2280A00CC()
{
  result = qword_2813C4748;
  if (!qword_2813C4748)
  {
    sub_228138AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4748);
  }

  return result;
}

uint64_t sub_2280A0124(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v32 = 0x203A656C746954;
    v33 = 0xE700000000000000;
    result = MEMORY[0x22AAB1970]();
    v11 = 0x203A656C746954;
    v12 = 0xE700000000000000;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v13 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v32 = 0x656C746974627553;
    v33 = 0xEA0000000000203ALL;
    result = MEMORY[0x22AAB1970](a3, a4);
    v14 = 0x656C746974627553;
    v15 = 0xEA0000000000203ALL;
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v16 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v32 = 0x203A79646F42;
    v33 = 0xE600000000000000;
    result = MEMORY[0x22AAB1970](a5, a6);
    v16 = 0x203A79646F42;
    v17 = 0xE600000000000000;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v18 = 0;
  v30 = v11;
  v31[0] = v12;
  v31[1] = v14;
  v31[2] = v15;
  v31[3] = v16;
  v31[4] = v17;
  v19 = MEMORY[0x277D84F90];
LABEL_17:
  if (v18 <= 3)
  {
    v20 = 3;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20 + 1;
  v22 = &v31[2 * v18];
  while (1)
  {
    if (v18 == 3)
    {
      swift_arrayDestroy();
      v32 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
      sub_228059C14();
      v29 = sub_22813925C();

      return v29;
    }

    if (v21 == ++v18)
    {
      break;
    }

    v24 = *(v22 - 1);
    v23 = *v22;
    v22 += 2;
    v25 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v25 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v32 = v19;
      if ((result & 1) == 0)
      {
        result = sub_228043AD4(0, *(v19 + 16) + 1, 1);
        v19 = v32;
      }

      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_228043AD4((v26 > 1), v27 + 1, 1);
        v19 = v32;
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v23;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SKUserNotification()
{
  result = qword_2813C72F0;
  if (!qword_2813C72F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280A0410()
{
  result = sub_228138B8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SKNoteMessage()
{
  result = qword_2813C7A10;
  if (!qword_2813C7A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280A04F0()
{
  result = sub_2281389DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2280A055C(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_2280A057C, 0, 0);
}

uint64_t sub_2280A057C()
{
  v25 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = sub_2281389CC();
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = sub_2281389AC();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = *(v2 + 208);
  v11 = sub_2280A7954(v7, v9, v2 + 160, v10);
  v13 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = v11;
  *(inited + 56) = v13;

  sub_2280A8554(inited, (v2 + 160));
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_22813988C();

  v23[0] = 0x203A656C746954;
  v23[1] = 0xE700000000000000;
  MEMORY[0x22AAB1970](v5, v6);
  MEMORY[0x22AAB1970](0x747865746E6F430ALL, 0xEA0000000000203ALL);
  MEMORY[0x22AAB1970](v11, v13);
  v0[12] = 0xE700000000000000;
  if (v10)
  {
    v15 = sub_22813936C();

    KeyPath = swift_getKeyPath();
    os_unfair_lock_lock((v10 + 16));
    v17 = MEMORY[0x277D84A28];
    v24 = MEMORY[0x277D84A28];
    v23[0] = v15;

    sub_2280449E4(v23, KeyPath, (v10 + 24));
    os_unfair_lock_unlock((v10 + 16));

    v18 = sub_22813936C();

    v19 = swift_getKeyPath();
    os_unfair_lock_lock((v10 + 16));
    v24 = v17;
    v23[0] = v18;

    sub_2280449E4(v23, v19, (v10 + 24));
    os_unfair_lock_unlock((v10 + 16));
  }

  else
  {
  }

  v20 = swift_task_alloc();
  v0[13] = v20;
  *v20 = v0;
  v20[1] = sub_2280A08E8;
  v21 = v0[10];

  return sub_2280D89D0(0x203A656C746954, 0xE700000000000000, v2 + 160, 0);
}

uint64_t sub_2280A08E8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v9 = sub_2280A0A84;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v9 = sub_2280A0A1C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2280A0A1C()
{
  v1 = v0[12];

  v2 = v0[1];
  v4 = v0[15];
  v3 = v0[16];

  return v2(v3, v4);
}

uint64_t sub_2280A0A84()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2280A0AE8()
{
  v0 = sub_2281389CC();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4 = sub_2281389AC();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v9 = sub_228045C38();
  swift_setDeallocating();
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_2280A0BB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280A0C48;

  return sub_2280A055C(a1);
}

uint64_t sub_2280A0C48(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_2280A0D80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2D08((v3 + 24), KeyPath);
  v7 = v6;
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  return result;
}

double RequestInfo.sessionInfo.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1);
  sub_2280A138C(v9, a1, a2, v14);
  a3[3] = &type metadata for AnySessionInfo;
  a3[4] = &off_283B5E2B0;
  v11 = swift_allocObject();
  *a3 = v11;
  v12 = v14[1];
  v11[1] = v14[0];
  v11[2] = v12;
  v11[3] = v15[0];
  result = *(v15 + 12);
  *(v11 + 60) = *(v15 + 12);
  return result;
}

uint64_t sub_2280A0F84(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 8))();
  v2 = sub_22813941C();

  return v2 & 1;
}

uint64_t sub_2280A1008(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1, a2);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2280A0F84(v9, v12))
  {
    return 0;
  }

  if ((sub_2280A0F84(a1, a2) & 1) == 0)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v16 = sub_22813882C();
    __swift_project_value_buffer(v16, qword_2813C89F0);
    (*(v7 + 16))(v11, v3, a1);
    v17 = sub_22813880C();
    v18 = sub_2281396DC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      v21 = (*(*(a2 + 8) + 8))(a1);
      v23 = v22;
      (*(v7 + 8))(v11, a1);
      v24 = sub_227FCC340(v21, v23, &v26);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_227FC3000, v17, v18, "Use case identifier %s has an unrecognized prefix", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AAB28A0](v20, -1, -1);
      MEMORY[0x22AAB28A0](v19, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, a1);
    }

    return 0;
  }

  v14 = (*(*(a2 + 8) + 8))(a1);
  v15 = a3(v14);

  return v15 & 1;
}

uint64_t sub_2280A12EC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2280A131C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2280A1354()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_2280A138C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 32))(v10);
  v11 = *(a3 + 8);
  v12 = v11[1](a2, v11);
  v23 = v13;
  v24 = v12;
  v14 = v11[2](a2, v11);
  v16 = v15;
  v17 = v11[3](a2, v11);
  v18 = v11[4](a2, v11);
  v20 = v19;
  LODWORD(v11) = v11[5](a2, v11);
  result = (*(v7 + 8))(v10, a2);
  v22 = v23;
  *a4 = v24;
  *(a4 + 8) = v22;
  *(a4 + 16) = v14;
  *(a4 + 24) = v16;
  *(a4 + 32) = v17;
  *(a4 + 40) = v18;
  *(a4 + 48) = v20;
  *(a4 + 56) = v11;
  return result;
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2280A1588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 60))
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

uint64_t sub_2280A15D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 60) = 1;
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

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL SKText.isEligibleForSummarization.getter()
{
  v1 = *v0;
  v2 = v0[1];

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v3 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v3 = &qword_2813C76F8;
  }

  v4 = *v3;

  v5 = sub_22808E410(0xD00000000000001BLL, 0x8000000228143340);

  return sub_2280AA14C(0, 0, v5, v1, v2) >= v5;
}

uint64_t SKText.preprocess(sharedSessionData:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v2[29] = a1;
  v2[30] = v3;
  v2[31] = v4;
  return MEMORY[0x2822009F8](sub_2280A17B4, 0, 0);
}

uint64_t sub_2280A17B4()
{
  v23 = *(v0 + 240);
  v24 = *(v0 + 248);
  if (SKText.isEligibleForSummarization.getter())
  {
    v1 = *(v0 + 232);
    v2 = sub_2280A7954(*(v0 + 240), *(v0 + 248), v1 + 160, *(v1 + 208));
    *(v0 + 256) = v3;
    v4 = v2;
    v5 = v3;
    v6 = swift_task_alloc();
    *(v0 + 264) = v6;
    *v6 = v0;
    v6[1] = sub_2280A19F8;
    v7 = *(v0 + 232);

    return sub_2280D89D0(v4, v5, v1 + 160, 0);
  }

  else
  {
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);
    sub_228045B14(*(v0 + 232), v0 + 16);
    v11 = swift_allocObject();
    v12 = *(v0 + 192);
    *(v11 + 176) = *(v0 + 176);
    *(v11 + 192) = v12;
    *(v11 + 208) = *(v0 + 208);
    v13 = *(v0 + 224);
    v14 = *(v0 + 128);
    *(v11 + 112) = *(v0 + 112);
    *(v11 + 128) = v14;
    v15 = *(v0 + 160);
    *(v11 + 144) = *(v0 + 144);
    *(v11 + 160) = v15;
    v16 = *(v0 + 64);
    *(v11 + 48) = *(v0 + 48);
    *(v11 + 64) = v16;
    v17 = *(v0 + 96);
    *(v11 + 80) = *(v0 + 80);
    *(v11 + 96) = v17;
    v18 = *(v0 + 32);
    *(v11 + 16) = *(v0 + 16);
    *(v11 + 32) = v18;
    *(v11 + 224) = v13;
    *(v11 + 232) = v10;
    *(v11 + 240) = v9;
    v19 = swift_allocObject();
    *(v19 + 16) = 3;
    *(v19 + 24) = sub_2280A237C;
    *(v19 + 32) = v11;

    v20 = sub_227FF96D4(0, 0xD000000000000078, 0x80000002281478B0, 25, sub_2280A2388);
    sub_227FDB3CC();
    swift_allocError();
    *v21 = 3;
    *(v21 + 8) = v20;
    swift_willThrow();
    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_2280A19F8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 264);
  v8 = *v3;
  *(*v3 + 272) = v2;

  if (v2)
  {
    v9 = sub_2280A1B94;
  }

  else
  {
    *(v6 + 280) = a2;
    *(v6 + 288) = a1;
    v9 = sub_2280A1B2C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2280A1B2C()
{
  v1 = v0[32];

  v2 = v0[1];
  v4 = v0[35];
  v3 = v0[36];

  return v2(v3, v4);
}

uint64_t sub_2280A1B94()
{
  v1 = v0[32];

  v2 = v0[34];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2280A1BF8(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v7 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v7 = &qword_2813C76F8;
  }

  v8 = *v7;
  v9 = a2[23];
  v10 = a2[24];
  __swift_project_boxed_opaque_existential_1(a2 + 20, v9);
  v11 = *(v10 + 8);
  v12 = *(v11 + 8);

  v13 = v12(v9, v11);
  v15 = sub_22808E410(v13, v14);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E870, &qword_22813C008);
  v26 = v16;
  v17 = sub_2280A2428();
  v27 = v17;
  v23 = 0xD00000000000001ELL;
  v24 = 0x8000000228146530;
  v25 = 3;
  sub_227FE77E0(&v23, v28);
  __swift_project_boxed_opaque_existential_1(&v23, v26);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(&v23);
  v29 = DynamicType;
  v19 = MEMORY[0x277D83B88];
  v26 = MEMORY[0x277D83B88];
  v23 = v15;
  sub_228024ABC(&v23, v28);
  v20 = sub_2280AA14C(0, 0, 0x7FFFFFFFFFFFFFFFLL, a3, a4);
  v26 = v16;
  v27 = v17;
  v23 = 0xD00000000000001CLL;
  v24 = 0x8000000228146550;
  v25 = 3;
  sub_227FE77E0(&v23, v28);
  __swift_project_boxed_opaque_existential_1(&v23, v26);
  v21 = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(&v23);
  v29 = v21;
  v26 = v19;
  v23 = v20;
  return sub_228024ABC(&v23, v28);
}

Swift::String __swiftcall SKText.preprocessForLanguageCheck()()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2280A1EE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280A2524;

  return SKText.preprocess(sharedSessionData:)(a1);
}

uint64_t sub_2280A1F78()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2280A1FA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2280A1FD0, 0, 0);
}

uint64_t sub_2280A1FD0()
{
  v17 = v0;
  if (*(v0 + 40))
  {
    v1 = *(*(v0 + 16) + 208);
    if (v1)
    {
      v2 = *(v0 + 24);
      v3 = *(v0 + 32);
      v4 = sub_22813936C();
      KeyPath = swift_getKeyPath();
      os_unfair_lock_lock((v1 + 16));
      v16 = MEMORY[0x277D84A28];
      v15[0] = v4;

      sub_2280449E4(v15, KeyPath, (v1 + 24));
      os_unfair_lock_unlock((v1 + 16));
    }

    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
  }

  else
  {
    v10 = *(v0 + 16);
    v11 = *(v10 + 208);
    v6 = sub_2280A7954(*(v0 + 24), *(v0 + 32), v10 + 160, v11);
    v7 = v12;
    if (v11)
    {
      v13 = sub_22813936C();
      v14 = swift_getKeyPath();
      os_unfair_lock_lock((v11 + 16));
      v16 = MEMORY[0x277D84A28];
      v15[0] = v13;

      sub_2280449E4(v15, v14, (v11 + 24));
      os_unfair_lock_unlock((v11 + 16));
    }
  }

  v8 = *(v0 + 8);

  return v8(v6, v7);
}

uint64_t sub_2280A218C(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2280A223C;

  return sub_2280A1FA8(a1, v4, v5, v6);
}

uint64_t sub_2280A223C(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_2280A234C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2280A2394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2280A23DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2280A2428()
{
  result = qword_27D81E878;
  if (!qword_27D81E878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81E870, &qword_22813C008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E878);
  }

  return result;
}

uint64_t sub_2280A248C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2280A24D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2280A2528(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  v3 = sub_2281377CC();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_22813905C();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v9 = *(*(sub_2281373DC() - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v10 = sub_2281377FC();
  v2[15] = v10;
  v11 = *(v10 - 8);
  v2[16] = v11;
  v12 = *(v11 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v13 = type metadata accessor for ModelBundleIdentifier();
  v2[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v15 = *(*(sub_22813759C() - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v16 = sub_22813791C();
  v2[25] = v16;
  v17 = *(v16 - 8);
  v2[26] = v17;
  v18 = *(v17 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280A27F4, 0, 0);
}

uint64_t sub_2280A27F4()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[5];
  sub_22813758C();
  sub_2281378CC();
  v6 = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_generativeModelSessionConfiguration;
  v0[29] = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_generativeModelSessionConfiguration;
  (*(v3 + 32))(v5 + v6, v1, v2);
  if (qword_2813C7030 != -1)
  {
    swift_once();
  }

  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
  v11 = v0[22];
  v10 = v0[23];
  v59 = v0[21];
  v12 = v0[4];
  v13 = __swift_project_value_buffer(v0[19], qword_2813C8AF0);
  sub_227FC8614(v13, v10);
  v61 = sub_22813755C();
  v0[30] = v61;
  sub_227FC8614(v10, v11);
  v63 = v5;
  v62 = v6;
  v58 = *(v8 + 16);
  v58(v7, v5 + v6, v9);
  v14 = v12[3];
  v15 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v14);
  v16 = (*(v15 + 8))(v14, v15);
  v18 = v17;
  v19 = v12[3];
  v20 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v19);
  (*(v20 + 24))(v19, v20);
  sub_227FC8614(v11, v59);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = v0[26];
  v22 = v0[27];
  if (EnumCaseMultiPayload >= 2)
  {
    v28 = v0[24];
    v30 = v0[17];
    v29 = v0[18];
    v31 = v0[16];
    v60 = v0[15];
    sub_2281378EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E338, &qword_22813F770);
    v32 = *(sub_2281375BC() - 8);
    v33 = *(v32 + 72);
    v57 = v23;
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    *(swift_allocObject() + 16) = xmmword_22813A4B0;
    sub_2281380CC();
    sub_2281380BC();
    sub_22813809C();

    sub_22813758C();
    sub_2281377EC();
    (*(v31 + 16))(v30, v29, v60);
    v24 = v61;
    v36 = sub_22813752C();
    (*(v31 + 8))(v29, v60);
    v27 = (v57 + 8);
  }

  else
  {
    v24 = v61;
    v25 = v0[22];
    v26 = v0[14];
    sub_227FC8720(v0[21]);
    sub_2280F94B0(v16, v18, v26);
    v27 = (v23 + 8);
    v35 = v0[14];
    v58(v0[28], v0[27], v0[25]);
    v36 = sub_22813753C();
  }

  v0[31] = v36;
  v37 = v0[27];
  v38 = v0[25];
  v40 = v0[22];
  v39 = v0[23];
  v41 = v0[13];
  v42 = v0[4];
  v43 = v0[5];
  v44 = *v27;
  v0[32] = *v27;
  v44(v37, v38);
  sub_227FC8720(v40);
  v45 = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_modelBundleIdentifier;
  v0[33] = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_modelBundleIdentifier;
  sub_227FC8614(v39, v43 + v45);
  v46 = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_sessionInfo;
  v0[34] = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_sessionInfo;
  sub_2280A62DC(v42, v43 + v46);
  v47 = (v43 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_promptRunner);
  v48 = type metadata accessor for PromptManager();
  v47[3] = v48;
  v47[4] = &off_2818510E0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  sub_227FC8614(v39, boxed_opaque_existential_1 + *(v48 + 20));
  v58(boxed_opaque_existential_1 + *(v48 + 24), v63 + v62, v38);
  *boxed_opaque_existential_1 = v36;
  v50 = (v43 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model);
  v50[3] = v24;
  v50[4] = &off_283B5EC90;
  *v50 = v36;
  swift_retain_n();
  v51 = swift_task_alloc();
  *(v51 + 16) = 0x746E65677255;
  *(v51 + 24) = 0xE600000000000000;
  sub_22813906C();

  v0[2] = v36;
  v52 = *(MEMORY[0x277D0D920] + 4);
  v53 = swift_task_alloc();
  v0[35] = v53;
  v54 = sub_2280A635C();
  v0[36] = v54;
  *v53 = v0;
  v53[1] = sub_2280A2F14;
  v55 = v0[13];

  return MEMORY[0x282165AB8](v0 + 2, v24, v54);
}

uint64_t sub_2280A2F14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v7 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v5 = sub_2280A3278;
  }

  else
  {
    v5 = sub_2280A3028;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280A3028()
{
  v1 = v0[38];
  v2 = v0[31];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = *(v6 + 8);
  v0[39] = v7;
  v0[40] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);
  v8 = swift_task_alloc();
  *(v8 + 16) = 7630670;
  *(v8 + 24) = 0xE300000000000000;
  sub_22813906C();

  v0[3] = v2;
  v9 = *(MEMORY[0x277D0D920] + 4);
  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_2280A3150;
  v11 = v0[36];
  v12 = v0[30];
  v13 = v0[12];

  return MEMORY[0x282165AB8](v0 + 3, v12, v11);
}

uint64_t sub_2280A3150(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v7 = sub_2280A37D0;
  }

  else
  {
    *(v4 + 344) = a1;
    v7 = sub_2280A3454;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2280A3278()
{
  (*(v0[11] + 8))(v0[13], v0[10]);
  v29 = v0[38];
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[23];
  v9 = v0[5];

  sub_227FC8720(v8);
  sub_227FC8720(v9 + v2);
  __swift_destroy_boxed_opaque_existential_1Tm_8((v9 + v1));
  v4(v9 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm_8((v9 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model));
  __swift_destroy_boxed_opaque_existential_1Tm_8((v9 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_promptRunner));
  v11 = v0[27];
  v10 = v0[28];
  v13 = v0[23];
  v12 = v0[24];
  v15 = v0[21];
  v14 = v0[22];
  v16 = v0[20];
  v17 = v0[17];
  v25 = v0[14];
  v26 = v0[13];
  v27 = v0[12];
  v28 = v0[9];
  v18 = v0[6];
  v19 = v0[4];
  v20 = *v0[5];
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_1Tm_8(v19);

  v23 = v0[1];

  return v23();
}

uint64_t sub_2280A3454()
{
  v38 = v1;
  v2 = *(v1 + 344);
  v3 = *(v1 + 320);
  v4 = *(v1 + 296);
  (*(v1 + 312))(*(v1 + 96), *(v1 + 80));
  if (v2 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v1 + 184);
    v8 = *(v1 + 160);
    *(*(v1 + 40) + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_maximumOutputTokens) = v6;
    sub_227FC8614(v7, v8);
    v2 = objc_opt_self();
    v0 = off_2785F1000;

    if (qword_2813C4620 == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  v36 = v6;
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v9 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v9 = &qword_2813C76F8;
  }

  v10 = *(*v9 + 1344);
  v11 = *(*v9 + 1352);
  v12 = *(*v9 + 1360);
  v13 = *(*v9 + 1368);
  v14 = *(*v9 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v12(&v37, v14);

    v15 = v37;
  }

  else
  {

    v15 = v11;
  }

  v16 = *(v1 + 248);
  v17 = *(v1 + 224);
  v18 = *(v1 + 184);
  v27 = *(v1 + 216);
  v28 = *(v1 + 192);
  v29 = *(v1 + 176);
  v30 = *(v1 + 168);
  v31 = *(v1 + 144);
  v32 = *(v1 + 136);
  v33 = *(v1 + 112);
  v34 = *(v1 + 104);
  v35 = *(v1 + 96);
  v20 = *(v1 + 64);
  v19 = *(v1 + 72);
  v21 = *(v1 + 56);
  v22 = *(v1 + 32);
  v23 = *(v1 + 40);
  sub_2280F8BF4(*(v1 + 160), v36, 0, v15, 0, v19);

  sub_227FC8720(v18);
  (*(v20 + 32))(v23 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_samplingParameters, v19, v21);
  __swift_destroy_boxed_opaque_existential_1Tm_8(v22);

  v24 = *(v1 + 8);
  v25 = *(v1 + 40);

  return v24(v25);
}

uint64_t sub_2280A37D0()
{
  v1 = *(v0 + 320);
  (*(v0 + 312))(*(v0 + 96), *(v0 + 80));
  v30 = *(v0 + 336);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 232);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  v9 = *(v0 + 184);
  v10 = *(v0 + 40);

  sub_227FC8720(v9);
  sub_227FC8720(v10 + v3);
  __swift_destroy_boxed_opaque_existential_1Tm_8((v10 + v2));
  v5(v10 + v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm_8((v10 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model));
  __swift_destroy_boxed_opaque_existential_1Tm_8((v10 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_promptRunner));
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v14 = *(v0 + 184);
  v13 = *(v0 + 192);
  v16 = *(v0 + 168);
  v15 = *(v0 + 176);
  v17 = *(v0 + 160);
  v18 = *(v0 + 136);
  v26 = *(v0 + 112);
  v27 = *(v0 + 104);
  v28 = *(v0 + 96);
  v29 = *(v0 + 72);
  v19 = *(v0 + 48);
  v20 = *(v0 + 32);
  v21 = **(v0 + 40);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_1Tm_8(v20);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_2280A39A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[45] = a8;
  v9[46] = v8;
  v9[43] = a6;
  v9[44] = a7;
  v9[41] = a4;
  v9[42] = a5;
  v9[39] = a2;
  v9[40] = a3;
  v9[38] = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0) - 8) + 64) + 15;
  v9[47] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E308, &unk_22813F910) - 8) + 64) + 15;
  v9[48] = swift_task_alloc();
  v12 = sub_2281378AC();
  v9[49] = v12;
  v13 = *(v12 - 8);
  v9[50] = v13;
  v14 = *(v13 + 64) + 15;
  v9[51] = swift_task_alloc();
  v9[52] = swift_task_alloc();
  v9[53] = swift_task_alloc();
  v15 = sub_22813771C();
  v9[54] = v15;
  v16 = *(v15 - 8);
  v9[55] = v16;
  v17 = *(v16 + 64) + 15;
  v9[56] = swift_task_alloc();
  v9[57] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E310, &qword_22813A7C0) - 8) + 64) + 15;
  v9[58] = swift_task_alloc();
  v9[59] = swift_task_alloc();
  v19 = sub_22813882C();
  v9[60] = v19;
  v20 = *(v19 - 8);
  v9[61] = v20;
  v21 = *(v20 + 64) + 15;
  v9[62] = swift_task_alloc();
  v9[63] = swift_task_alloc();
  v9[64] = swift_task_alloc();
  v22 = sub_2281377CC();
  v9[65] = v22;
  v23 = *(v22 - 8);
  v9[66] = v23;
  v24 = *(v23 + 64) + 15;
  v9[67] = swift_task_alloc();
  v9[68] = swift_task_alloc();
  v9[69] = swift_task_alloc();
  v9[70] = swift_task_alloc();
  v9[71] = swift_task_alloc();
  v9[72] = swift_task_alloc();
  v9[73] = swift_task_alloc();
  v25 = sub_22813783C();
  v9[74] = v25;
  v26 = *(v25 - 8);
  v9[75] = v26;
  v27 = *(v26 + 64) + 15;
  v9[76] = swift_task_alloc();
  v9[77] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280A3D28, 0, 0);
}

uint64_t sub_2280A3D28()
{
  v1 = v0[46];
  if (sub_228060458(v0[43]))
  {
    v2 = v0[46];
    v3 = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_modelBundleIdentifier;
    v0[78] = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_modelBundleIdentifier;
    v4 = v2 + v3;
    if (qword_2813C73E8 != -1)
    {
      swift_once();
    }

    v5 = v0[43];
    v6 = off_2813C73F0;
    v0[79] = off_2813C73F0;
    v7 = v6[2];
    v8 = swift_task_alloc();
    v8[2] = v4;
    v8[3] = v5;
    v8[4] = v6;
    os_unfair_lock_lock((v7 + 24));
    sub_2280A61AC((v7 + 16));
    os_unfair_lock_unlock((v7 + 24));
    v24 = v0[73];
    v25 = v0[66];
    v26 = v0[65];
    v27 = v0[46];

    sub_2280A62DC(v27 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_promptRunner, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v28 = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_samplingParameters;
    v0[80] = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_samplingParameters;
    v29 = *(v25 + 16);
    v0[81] = v29;
    v0[82] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v24, v27 + v28, v26);
    v30 = sub_2280A5B84();
    v0[83] = v30;
    v31 = v30;
    v32 = swift_task_alloc();
    v0[84] = v32;
    *v32 = v0;
    v32[1] = sub_2280A4138;
    v33 = v0[77];
    v34 = v0[73];
    v35 = v0[44];
    v36 = v0[45];
    v37 = v0[43];
    v38 = v0[39];
    v39 = v0[40];

    return sub_228006258(v33, v38, v39, v34, v37, v35, v36, v31);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = 5;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    v10 = sub_227FF9AA4(0, 0xD000000000000096, 0x80000002281479B0, 62, sub_2280A61A0);
    sub_227FE7384();
    swift_allocError();
    *v11 = 5;
    *(v11 + 8) = v10;
    swift_willThrow();
    v12 = v0[77];
    v13 = v0[76];
    v14 = v0[73];
    v15 = v0[72];
    v16 = v0[71];
    v17 = v0[70];
    v18 = v0[69];
    v19 = v0[68];
    v20 = v0[67];
    v21 = v0[64];
    v40 = v0[63];
    v41 = v0[62];
    v42 = v0[59];
    v43 = v0[58];
    v44 = v0[57];
    v45 = v0[56];
    v46 = v0[53];
    v47 = v0[52];
    v48 = v0[51];
    v49 = v0[48];
    v50 = v0[47];

    v22 = v0[1];

    return v22(0);
  }
}

uint64_t sub_2280A4138()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v4 = *v1;
  v2[85] = v0;

  v5 = v2[83];
  v6 = v2[73];
  v7 = v2[66];
  v8 = v2[65];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v6, v8);

    v12 = sub_2280A559C;
  }

  else
  {
    v2[86] = v10;
    v2[87] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);

    v12 = sub_2280A42E8;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2280A42E8()
{
  v239 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 16));
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *v2;
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 32);
  v7 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  v8 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v9 = byte_2813C4638;
  if (byte_2813C4638 == 1)
  {
    v7(&v238, v8);

    if ((v238 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (!v5)
    {
LABEL_18:

      goto LABEL_19;
    }
  }

  v10 = *(v3 + 64);
  v11 = *(v3 + 72);
  v13 = *(v3 + 80);
  v12 = *(v3 + 88);
  v14 = *(v3 + 2208);

  if (v9)
  {
    v13(&v238, v14);

    if ((v238 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if ((v11 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(*(v0 + 480), qword_2813C8A08);
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 480), qword_2813C4990);
  }

  v236 = v30;
  v31 = *(v0 + 656);
  v32 = *(v0 + 648);
  v33 = *(v0 + 640);
  v229 = *(v0 + 608);
  logb = *(v0 + 616);
  v34 = *(v0 + 600);
  v35 = *(v0 + 576);
  v36 = *(v0 + 568);
  v214 = *(v0 + 560);
  v215 = *(v0 + 552);
  v37 = *(v0 + 544);
  v217 = v37;
  v220 = *(v0 + 536);
  v38 = *(v0 + 520);
  v39 = *(v0 + 512);
  v225 = *(v0 + 592);
  v40 = *(v0 + 480);
  v41 = *(v0 + 368);
  v42 = *(v0 + 344);
  v213 = *(*(v0 + 488) + 16);
  v213();
  sub_2280A62DC(v42, v0 + 56);
  v32(v35, v41 + v33, v38);
  v32(v36, v41 + v33, v38);
  v32(v214, v41 + v33, v38);
  v32(v215, v41 + v33, v38);
  v32(v217, v41 + v33, v38);
  v32(v220, v41 + v33, v38);
  (*(v34 + 16))(v229, logb, v225);
  v43 = sub_22813880C();
  v44 = sub_2281396BC();
  if (os_log_type_enabled(v43, v44))
  {
    v230 = v44;
    v45 = *(v0 + 576);
    v46 = swift_slowAlloc();
    v226 = swift_slowAlloc();
    v238 = v226;
    *v46 = 136448002;
    v47 = *(v0 + 80);
    v48 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v47);
    v49 = (*(v48 + 16))(v47, v48);
    v51 = v50;
    __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 56));
    v52 = sub_227FCC340(v49, v51, &v238);

    *(v46 + 4) = v52;
    *(v46 + 12) = 2082;
    v53 = sub_22813776C();
    v54 = *(v0 + 696);
    v55 = *(v0 + 688);
    v56 = *(v0 + 576);
    v57 = *(v0 + 520);
    if (v58)
    {
      v55(*(v0 + 576), *(v0 + 520));
      v59 = 0xE300000000000000;
      v60 = 7104878;
    }

    else
    {
      *(v0 + 296) = v53;
      v72 = sub_2281392EC();
      v59 = v73;
      v55(v56, v57);
      v60 = v72;
    }

    v74 = *(v0 + 568);
    v76 = *(v0 + 464);
    v75 = *(v0 + 472);
    v78 = *(v0 + 432);
    v77 = *(v0 + 440);
    v79 = sub_227FCC340(v60, v59, &v238);

    *(v46 + 14) = v79;
    *(v46 + 22) = 2082;
    sub_2281377BC();
    sub_2280A61CC(v75, v76);
    v80 = (*(v77 + 48))(v76, 1, v78);
    v81 = *(v0 + 464);
    log = v43;
    if (v80 == 1)
    {
      sub_2280A623C(v81, &qword_27D81E310, &qword_22813A7C0);
      v82 = 0xE300000000000000;
      v83 = 7104878;
    }

    else
    {
      v84 = *(v0 + 448);
      v85 = *(v0 + 456);
      v87 = *(v0 + 432);
      v86 = *(v0 + 440);
      (*(v86 + 32))(v85, v81, v87);
      (*(v86 + 16))(v84, v85, v87);
      v83 = sub_2281392EC();
      v82 = v88;
      (*(v86 + 8))(v85, v87);
    }

    v89 = *(v0 + 696);
    v90 = *(v0 + 688);
    v91 = *(v0 + 568);
    v92 = *(v0 + 560);
    v93 = *(v0 + 520);
    sub_2280A623C(*(v0 + 472), &qword_27D81E310, &qword_22813A7C0);
    v90(v91, v93);
    v94 = sub_227FCC340(v83, v82, &v238);

    *(v46 + 24) = v94;
    *(v46 + 32) = 2082;
    v95 = sub_22813774C();
    v96 = *(v0 + 696);
    v97 = *(v0 + 688);
    v98 = *(v0 + 560);
    v99 = *(v0 + 520);
    if (v100)
    {
      v97(*(v0 + 560), *(v0 + 520));
      v101 = 0xE300000000000000;
      v102 = 7104878;
    }

    else
    {
      *(v0 + 288) = v95;
      v103 = sub_2281392EC();
      v101 = v104;
      v97(v98, v99);
      v102 = v103;
    }

    v105 = 7104878;
    v106 = *(v0 + 552);
    v107 = sub_227FCC340(v102, v101, &v238);

    *(v46 + 34) = v107;
    *(v46 + 42) = 2082;
    v108 = sub_22813773C();
    v109 = *(v0 + 696);
    v110 = *(v0 + 688);
    v111 = *(v0 + 552);
    v112 = *(v0 + 520);
    if (v113)
    {
      v110(*(v0 + 552), *(v0 + 520));
      v114 = 0xE300000000000000;
      v115 = 7104878;
    }

    else
    {
      *(v0 + 280) = v108;
      v116 = sub_2281392EC();
      v114 = v117;
      v110(v111, v112);
      v115 = v116;
    }

    v118 = *(v0 + 544);
    v119 = sub_227FCC340(v115, v114, &v238);

    *(v46 + 44) = v119;
    *(v46 + 52) = 2082;
    v120 = sub_22813779C();
    v121 = *(v0 + 696);
    v122 = *(v0 + 688);
    v123 = *(v0 + 544);
    v124 = *(v0 + 520);
    if (v125)
    {
      v122(*(v0 + 544), *(v0 + 520));
      v126 = 0xE300000000000000;
      v127 = 7104878;
    }

    else
    {
      *(v0 + 272) = v120;
      v128 = sub_2281392EC();
      v126 = v129;
      v122(v123, v124);
      v127 = v128;
    }

    v130 = *(v0 + 536);
    v131 = sub_227FCC340(v127, v126, &v238);

    *(v46 + 54) = v131;
    *(v46 + 62) = 2082;
    v132 = sub_22813777C();
    v133 = *(v0 + 696);
    v134 = *(v0 + 688);
    v135 = *(v0 + 536);
    v136 = *(v0 + 520);
    if (v137)
    {
      v134(*(v0 + 536), *(v0 + 520));
      v138 = 0xE300000000000000;
    }

    else
    {
      *(v0 + 264) = v132;
      v105 = sub_2281392EC();
      v138 = v139;
      v134(v135, v136);
    }

    v140 = *(v0 + 608);
    v141 = *(v0 + 600);
    v142 = *(v0 + 592);
    v143 = *(v0 + 512);
    v145 = *(v0 + 480);
    v144 = *(v0 + 488);
    v146 = sub_227FCC340(v105, v138, &v238);

    *(v46 + 64) = v146;
    *(v46 + 72) = 2080;
    *(v0 + 712) = sub_22813781C() & 1;
    v147 = sub_2281392EC();
    v149 = v148;
    (*(v141 + 8))(v140, v142);
    v150 = sub_227FCC340(v147, v149, &v238);

    *(v46 + 74) = v150;
    _os_log_impl(&dword_227FC3000, log, v230, "\n--------------------------------------------------------------------------------\n# Inference details for request %{public}s\n--------------------------------------------------------------------------------\n# Decoding Parameters\n--------------------------------------------------------------------------------\nmaximumTokens: %{public}s\nstrategy: %{public}s\ntemperature: %{public}s\nrandomSeed: %{public}s\ntimeout: %{public}s\npromptLookupDraftSteps: %{public}s\ndidFallbackToDefaultThresholds: %s\n--------------------------------------------------------------------------------", v46, 0x52u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v226, -1, -1);
    MEMORY[0x22AAB28A0](v46, -1, -1);

    v71 = *(v144 + 8);
    v71(v143, v145);
  }

  else
  {
    v61 = *(v0 + 696);
    v62 = v43;
    v63 = *(v0 + 688);
    v64 = *(v0 + 608);
    v65 = *(v0 + 600);
    v66 = *(v0 + 592);
    v218 = *(v0 + 560);
    v221 = *(v0 + 568);
    v216 = *(v0 + 552);
    v67 = *(v0 + 544);
    v68 = *(v0 + 536);
    v69 = *(v0 + 520);
    v227 = *(v0 + 576);
    v231 = *(v0 + 512);
    v70 = *(v0 + 488);
    v223 = *(v0 + 480);

    (*(v65 + 8))(v64, v66);
    v63(v68, v69);
    v63(v67, v69);
    v63(v216, v69);
    v63(v218, v69);
    v63(v221, v69);
    v63(v227, v69);
    v71 = *(v70 + 8);
    v71(v231, v223);
    __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 56));
  }

  v151 = *(v0 + 616);
  v153 = *(v0 + 392);
  v152 = *(v0 + 400);
  v154 = *(v0 + 384);
  sub_22813780C();
  if ((*(v152 + 48))(v154, 1, v153) == 1)
  {
    v155 = *(v0 + 344);
    sub_2280A623C(*(v0 + 384), &qword_27D81E308, &unk_22813F910);
    sub_2280A62DC(v155, v0 + 96);
    v156 = sub_22813880C();
    v157 = sub_2281396DC();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v238 = v159;
      *v158 = 136315138;
      v160 = *(v0 + 120);
      v161 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v160);
      v162 = (*(v161 + 16))(v160, v161);
      v164 = v163;
      __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 96));
      v165 = sub_227FCC340(v162, v164, &v238);

      *(v158 + 4) = v165;
      _os_log_impl(&dword_227FC3000, v156, v157, "Rendered prompt after prompt completion is nil for request %s.", v158, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_8(v159);
      MEMORY[0x22AAB28A0](v159, -1, -1);
      MEMORY[0x22AAB28A0](v158, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 96));
    }
  }

  else
  {
    (*(*(v0 + 400) + 32))(*(v0 + 424), *(v0 + 384), *(v0 + 392));
    if (qword_2813C49B8 != -1)
    {
      swift_once();
    }

    v166 = v236;
    if ((byte_2813C49C1 & 1) == 0)
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v166 = __swift_project_value_buffer(*(v0 + 480), qword_2813C4990);
    }

    v167 = *(v0 + 488) + 16;
    (v213)(*(v0 + 504), v166, *(v0 + 480));
    if (qword_2813C49B0 != -1)
    {
      swift_once();
    }

    v232 = v71;
    if (byte_27D81EEF2 == 1)
    {
      (*(*(v0 + 488) + 32))(*(v0 + 496), *(v0 + 504), *(v0 + 480));
    }

    else
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v169 = *(v0 + 496);
      v168 = *(v0 + 504);
      v170 = *(v0 + 480);
      v171 = __swift_project_value_buffer(v170, qword_2813C4990);
      (v213)(v169, v171, v170);
      v71(v168, v170);
    }

    v172 = *(v0 + 496);
    v174 = *(v0 + 416);
    v173 = *(v0 + 424);
    v175 = *(v0 + 400);
    v176 = *(v0 + 408);
    v177 = *(v0 + 392);
    v178 = *(v0 + 344);
    sub_2280A62DC(v178, v0 + 136);
    v179 = *(v175 + 16);
    v179(v174, v173, v177);
    sub_2280A62DC(v178, v0 + 176);
    v179(v176, v173, v177);
    v180 = sub_22813880C();
    v181 = sub_2281396CC();
    v182 = os_log_type_enabled(v180, v181);
    v183 = *(v0 + 496);
    v237 = *(v0 + 488);
    v184 = *(v0 + 480);
    v186 = *(v0 + 416);
    v185 = *(v0 + 424);
    v187 = *(v0 + 400);
    loga = *(v0 + 408);
    v188 = *(v0 + 392);
    if (v182)
    {
      v189 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      v238 = v222;
      *v189 = 136446979;
      v224 = v184;
      v228 = v183;
      v190 = *(v0 + 160);
      v191 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v190);
      v219 = v181;
      v192 = (*(v191 + 16))(v190, v191);
      v194 = v193;
      __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 136));
      v195 = sub_227FCC340(v192, v194, &v238);

      *(v189 + 4) = v195;
      *(v189 + 12) = 2081;
      sub_22813789C();
      v196 = MEMORY[0x22AAB1AD0]();
      v198 = v197;

      v199 = *(v187 + 8);
      v199(v186, v188);
      v200 = sub_227FCC340(v196, v198, &v238);

      *(v189 + 14) = v200;
      *(v189 + 22) = 2082;
      v201 = *(v0 + 200);
      v202 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v201);
      v203 = (*(v202 + 16))(v201, v202);
      v205 = v204;
      __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 176));
      v206 = sub_227FCC340(v203, v205, &v238);

      *(v189 + 24) = v206;
      *(v189 + 32) = 2081;
      *(v0 + 216) = sub_22813788C();
      *(v0 + 224) = v207;
      *(v0 + 232) = 10;
      *(v0 + 240) = 0xE100000000000000;
      *(v0 + 248) = 4091452;
      *(v0 + 256) = 0xE300000000000000;
      sub_227FDB420();
      v208 = sub_2281397BC();
      v210 = v209;

      v199(loga, v188);
      v211 = sub_227FCC340(v208, v210, &v238);

      *(v189 + 34) = v211;
      _os_log_impl(&dword_227FC3000, v180, v219, "\n--------------------------------------------------------------------------------\n# Rendered Prompt Token IDs for request %{public}s\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------\n# Approximate Rendered Prompt for request %{public}s\n# Note: Please reconstruct prompt from Token IDs above if you need the exact prompt\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------", v189, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v222, -1, -1);
      MEMORY[0x22AAB28A0](v189, -1, -1);

      (*(v237 + 8))(v228, v224);
      v199(v185, v188);
    }

    else
    {

      v212 = *(v187 + 8);
      v212(loga, v188);
      v212(v186, v188);
      v232(v183, v184);
      v212(v185, v188);
      __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 176));
      __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + 136));
    }
  }

LABEL_19:
  v15 = *(v0 + 616);
  v16 = sub_22813782C();
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = sub_22808C964(7562585, 0xE300000000000000);
    if (v19)
    {
      LOBYTE(v17) = *(*(v16 + 56) + v18);
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  *(v0 + 713) = v17;
  v20 = *(v0 + 624);
  v22 = *(v0 + 368);
  v21 = *(v0 + 376);

  v23 = sub_2281376EC();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = swift_task_alloc();
  *(v0 + 704) = v24;
  *v24 = v0;
  v24[1] = sub_2280A5728;
  v25 = *(v0 + 632);
  v26 = *(v0 + 376);
  v27 = *(v0 + 344);
  v28 = *(v0 + 304);

  return sub_228011668(v28, v22 + v20, v27, v26);
}

uint64_t sub_2280A559C()
{
  __swift_destroy_boxed_opaque_existential_1Tm_8(v0 + 2);
  v24 = v0[85];
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[68];
  v9 = v0[67];
  v10 = v0[64];
  v13 = v0[63];
  v14 = v0[62];
  v15 = v0[59];
  v16 = v0[58];
  v17 = v0[57];
  v18 = v0[56];
  v19 = v0[53];
  v20 = v0[52];
  v21 = v0[51];
  v22 = v0[48];
  v23 = v0[47];

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_2280A5728()
{
  v1 = *(*v0 + 704);
  v2 = *(*v0 + 376);
  v4 = *v0;

  sub_2280A623C(v2, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_2280A5850, 0, 0);
}

uint64_t sub_2280A5850()
{
  v43 = v0;
  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 336);
  __swift_project_value_buffer(*(v0 + 480), qword_2813C8A08);

  v2 = sub_22813880C();
  v3 = sub_2281396BC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 713);
    v5 = *(v0 + 600);
    v38 = *(v0 + 592);
    v40 = *(v0 + 616);
    v7 = *(v0 + 328);
    v6 = *(v0 + 336);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
    *v8 = 136446466;
    if (v4)
    {
      v10 = 7562585;
    }

    else
    {
      v10 = 28494;
    }

    if (v4)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = 0xE200000000000000;
    }

    v12 = sub_227FCC340(v10, v11, &v42);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_227FCC340(v7, v6, &v42);
    _os_log_impl(&dword_227FC3000, v2, v3, "Inference model output: %{public}s for ID: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v9, -1, -1);
    MEMORY[0x22AAB28A0](v8, -1, -1);

    (*(v5 + 8))(v40, v38);
  }

  else
  {
    v13 = *(v0 + 616);
    v14 = *(v0 + 600);
    v15 = *(v0 + 592);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 616);
  v17 = *(v0 + 608);
  v18 = *(v0 + 584);
  v19 = *(v0 + 576);
  v20 = *(v0 + 568);
  v21 = *(v0 + 560);
  v22 = *(v0 + 552);
  v23 = *(v0 + 544);
  v24 = *(v0 + 536);
  v25 = *(v0 + 512);
  v29 = *(v0 + 504);
  v30 = *(v0 + 496);
  v31 = *(v0 + 472);
  v32 = *(v0 + 464);
  v33 = *(v0 + 456);
  v34 = *(v0 + 448);
  v35 = *(v0 + 424);
  v36 = *(v0 + 416);
  v37 = *(v0 + 408);
  v39 = *(v0 + 384);
  v41 = *(v0 + 376);

  v26 = *(v0 + 8);
  v27 = *(v0 + 713);

  return v26(v27);
}

unint64_t sub_2280A5B84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E318, &qword_22813A7C8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v41 = &v40 - v4;
  v5 = sub_2281375BC();
  v6 = *(v5 - 8);
  v42 = v5;
  v43 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2281373DC();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v40 - v18;
  v20 = *(v0 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_sessionInfo + 24);
  v21 = *(v0 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_sessionInfo + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_sessionInfo), v20);
  v22 = (*(v21 + 8))(v20, v21);
  v24 = v23;
  v25 = v44;
  sub_2280F94B0(v22, v23, v19);
  if (v25)
  {
  }

  else
  {

    v26 = v40;
    (*(v40 + 16))(v16, v19, v11);
    v27 = v41;
    sub_2281375AC();
    v28 = v42;
    if ((*(v43 + 48))(v27, 1, v42) == 1)
    {
      sub_2280A623C(v27, &qword_27D81E318, &qword_22813A7C8);
      if (qword_2813C49D8 != -1)
      {
        swift_once();
      }

      v29 = sub_22813882C();
      __swift_project_value_buffer(v29, qword_2813C8A08);
      v30 = sub_22813880C();
      v31 = sub_2281396DC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_227FC3000, v30, v31, "Urgency classifier model bundle not found", v32, 2u);
        MEMORY[0x22AAB28A0](v32, -1, -1);
      }

      v33 = swift_allocObject();
      *(v33 + 16) = 8;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0;
      v24 = sub_227FF9AA4(0, 0xD000000000000096, 0x80000002281479B0, 101, sub_2280A63CC);
      sub_227FE7384();
      swift_allocError();
      *v34 = 8;
      *(v34 + 8) = v24;
      swift_willThrow();
      (*(v26 + 8))(v19, v11);
    }

    else
    {
      v44 = v11;
      v36 = v43 + 32;
      v35 = *(v43 + 32);
      v35(v10, v27, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E338, &qword_22813F770);
      v37 = *(v36 + 40);
      v38 = (*(v36 + 48) + 32) & ~*(v36 + 48);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_22813A4B0;
      v35((v24 + v38), v10, v28);
      (*(v26 + 8))(v19, v44);
    }
  }

  return v24;
}

uint64_t type metadata accessor for GMSClassificationModelEngine()
{
  result = qword_2813C6460;
  if (!qword_2813C6460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280A6068()
{
  result = type metadata accessor for ModelBundleIdentifier();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_22813791C();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_2281377CC();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_2280A61CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E310, &qword_22813A7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2280A623C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm_8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280A62DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2280A635C()
{
  result = qword_2813C8710;
  if (!qword_2813C8710)
  {
    sub_22813755C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8710);
  }

  return result;
}

uint64_t sub_2280A63D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E870, &qword_22813C008);
  v15 = v5;
  v6 = sub_2280A2428();
  v16 = v6;
  v12 = 0xD00000000000001ELL;
  v13 = 0x8000000228146530;
  v14 = 3;
  sub_2280A9560(&v12, v17);
  __swift_project_boxed_opaque_existential_1(&v12, v15);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm_9(&v12);
  v18 = DynamicType;
  v8 = MEMORY[0x277D83B88];
  v15 = MEMORY[0x277D83B88];
  v12 = a2;
  sub_228024ABC(&v12, v17);
  v9 = sub_2280AB23C(a3, 0, 0x7FFFFFFFFFFFFFFFLL);
  v15 = v5;
  v16 = v6;
  v12 = 0xD00000000000001CLL;
  v13 = 0x8000000228146550;
  v14 = 3;
  sub_2280A9560(&v12, v17);
  __swift_project_boxed_opaque_existential_1(&v12, v15);
  v10 = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm_9(&v12);
  v18 = v10;
  v15 = v8;
  v12 = v9;
  return sub_228024ABC(&v12, v17);
}

unint64_t sub_2280A6538(void *a1)
{
  sub_22813988C();

  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  MEMORY[0x22AAB1970](v4);

  MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228146590);
  return 0xD000000000000014;
}

void sub_2280A660C(unsigned __int8 a1, uint64_t a2)
{
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v4 = sub_22813882C();
  __swift_project_value_buffer(v4, qword_2813C8A20);
  v5 = sub_22813880C();
  v6 = sub_2281396BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    v9 = 0xEC00000064656361;
    v10 = 0x6C706572204C5255;
    *v7 = 136446210;
    if (a1 != 3)
    {
      v10 = 0xD00000000000001ELL;
      v9 = 0x8000000228147B00;
    }

    if (a1 == 2)
    {
      v10 = 0xD00000000000001ALL;
      v9 = 0x8000000228147B20;
    }

    v11 = 0x8000000228147B60;
    v12 = 0xD000000000000019;
    if (a1)
    {
      v12 = 0xD000000000000015;
      v11 = 0x8000000228147B40;
    }

    if (a1 <= 1u)
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    if (a1 <= 1u)
    {
      v14 = v11;
    }

    else
    {
      v14 = v9;
    }

    v15 = sub_227FCC340(v13, v14, v17);

    *(v7 + 4) = v15;
    _os_log_impl(&dword_227FC3000, v5, v6, "Original input was modified during sanitization: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_9(v8);
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v7, -1, -1);
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      return;
    }
  }

  else if (a1 != 2)
  {
    if (a1 != 3 || !a2)
    {
      return;
    }

    goto LABEL_24;
  }

  if (!a2)
  {
    return;
  }

LABEL_24:
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((a2 + 16));
  v17[3] = MEMORY[0x277D839B0];
  LOBYTE(v17[0]) = 1;

  sub_2280449FC(v17, KeyPath, (a2 + 24));
  os_unfair_lock_unlock((a2 + 16));
}

uint64_t sub_2280A68B4(char *a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v81 = a3;
  v92 = a1;
  v93 = a2;
  v97[3] = *MEMORY[0x277D85DE8];
  v5 = sub_22813882C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v91 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v80 - v12;
  v14 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8, v17);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C8178 != -1)
  {
LABEL_37:
    swift_once();
  }

  sub_228139B6C();
  v20 = *(v97[0] + 2);

  if (v20)
  {
    v84 = v13;
    v21 = qword_2813C8078;
    swift_beginAccess();
    v22 = *(v20 + v21);
    v23 = *(v22 + 16);
    v82 = v20;
    if (v23 && (v24 = sub_22808CF24(0, 1), (v25 & 1) != 0))
    {
      v26 = *(*(v22 + 56) + 8 * v24);
      swift_endAccess();
      v27 = *(v26 + 16);
      if (v27)
      {
        v90 = v5;
        v5 = v26 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v88 = (v6 + 16);
        v80 = (v6 + 8);
        v13 = v93;

        v6 = 0;
        v96 = v92;
        v89 = v26;
        v86 = v27;
        v87 = v15;
        v85 = v5;
        while (1)
        {
          if (v6 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_37;
          }

          sub_227FFE9B0(v5 + *(v15 + 72) * v6, v19);
          v28 = *(v19 + 4);
          if (v19[48] > 1u)
          {
            if (v19[48] != 2)
            {
              goto LABEL_8;
            }

            v83 = *(v19 + 5);
            v94 = v4;
            v95 = v13;
            v50 = *(v19 + 2);
            v49 = *(v19 + 3);
            v51 = qword_2813C49A8;

            if (v51 != -1)
            {
              swift_once();
            }

            v52 = v90;
            v53 = __swift_project_value_buffer(v90, qword_2813C89F0);
            v54 = v84;
            (*v88)(v84, v53, v52);
            v55 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v56 = sub_22813927C();

            v97[0] = 0;
            v44 = [v55 initWithPattern:v56 options:0 error:v97];

            if (!v44)
            {
              v71 = v97[0];
              v72 = sub_228136E2C();

              swift_willThrow();
              v73 = v72;
              v74 = sub_22813880C();
              v75 = sub_2281396EC();

              if (os_log_type_enabled(v74, v75))
              {
                v76 = swift_slowAlloc();
                v77 = swift_slowAlloc();
                *v76 = 138412290;
                v78 = v72;
                v79 = _swift_stdlib_bridgeErrorToNSError();
                *(v76 + 4) = v79;
                *v77 = v79;
                _os_log_impl(&dword_227FC3000, v74, v75, "Error compiling regular expression: %@", v76, 0xCu);
                sub_227FE60F8(v77);
                MEMORY[0x22AAB28A0](v77, -1, -1);
                MEMORY[0x22AAB28A0](v76, -1, -1);
              }

              swift_willThrow();
              (*v80)(v84, v90);
              goto LABEL_35;
            }

            v57 = *v80;
            v58 = v97[0];
            v59 = (v57)(v54, v52);
            MEMORY[0x28223BE20](v59, v60);
            v62 = v95;
            v61 = v96;
            *(&v80 - 6) = v44;
            *(&v80 - 5) = v61;
            *(&v80 - 4) = v62;
            *(&v80 - 3) = v28;
            *(&v80 - 2) = v83;
            v96 = sub_2280E5DB8(v44, 0, sub_2280A972C, (&v80 - 8), v61, v62);
            v13 = v63;
            v4 = v94;
          }

          else
          {
            if (!v19[48])
            {
              goto LABEL_8;
            }

            v94 = v4;
            v95 = v13;
            v29 = *(v19 + 2);
            v30 = *(v19 + 3);
            v31 = objc_opt_self();
            v32 = sub_22813927C();
            v33 = [v31 escapedTemplateForString_];

            v34 = sub_2281392AC();
            v36 = v35;

            sub_2280A8C78();
            v37 = qword_2813C49A8;

            if (v37 != -1)
            {
              swift_once();
            }

            v38 = v90;
            v39 = __swift_project_value_buffer(v90, qword_2813C89F0);
            v40 = v91;
            (*v88)(v91, v39, v38);
            v41 = v94;
            v42 = sub_227FE5EB0(v29, v30, 0, v40);
            v4 = v41;
            if (v41)
            {

LABEL_35:
              v65 = v89;

              sub_2280A95C4(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);

              goto LABEL_28;
            }

            v44 = v42;
            v45 = MEMORY[0x28223BE20](v42, v43);
            v47 = v95;
            v46 = v96;
            *(&v80 - 6) = v45;
            *(&v80 - 5) = v46;
            *(&v80 - 4) = v47;
            *(&v80 - 3) = v34;
            *(&v80 - 2) = v36;
            v96 = sub_2280E5DB8(v45, 0, sub_2280A9728, (&v80 - 8), v46, v47);
            v13 = v48;
          }

          v26 = v89;

          v27 = v86;
          v15 = v87;
          v5 = v85;
LABEL_8:
          ++v6;
          sub_2280A95C4(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
          if (v27 == v6)
          {

            v64 = v93;
            v65 = v96;
            if (v96 == v92)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }
        }
      }
    }

    else
    {
      swift_endAccess();
    }

    v64 = v93;

    v65 = v92;
    v13 = v64;
LABEL_23:
    if (v13 != v64)
    {
LABEL_24:
      if ((sub_2281399BC() & 1) == 0)
      {
        sub_2280A660C(1u, v81);
      }
    }
  }

  else
  {
    v66 = swift_allocObject();
    v65 = 20;
    *(v66 + 16) = 20;
    *(v66 + 24) = 0;
    *(v66 + 32) = 0;
    v67 = sub_227FF96D4(0, 0xD000000000000077, 0x8000000228147A80, 138, sub_2280A9710);
    sub_227FDB3CC();
    swift_allocError();
    *v68 = 20;
    *(v68 + 8) = v67;
    swift_willThrow();
  }

LABEL_28:
  v69 = *MEMORY[0x277D85DE8];
  return v65;
}

uint64_t sub_2280A7104(char *a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v81 = a3;
  v92 = a1;
  v93 = a2;
  v97[3] = *MEMORY[0x277D85DE8];
  v5 = sub_22813882C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v91 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v80 - v12;
  v14 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8, v17);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C8178 != -1)
  {
LABEL_37:
    swift_once();
  }

  sub_228139B6C();
  v20 = *(v97[0] + 2);

  if (v20)
  {
    v84 = v13;
    v21 = qword_2813C8078;
    swift_beginAccess();
    v22 = *(v20 + v21);
    v23 = *(v22 + 16);
    v82 = v20;
    if (v23 && (v24 = sub_22808CF24(1, 1), (v25 & 1) != 0))
    {
      v26 = *(*(v22 + 56) + 8 * v24);
      swift_endAccess();
      v27 = *(v26 + 16);
      if (v27)
      {
        v90 = v5;
        v5 = v26 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v88 = (v6 + 16);
        v80 = (v6 + 8);
        v13 = v93;

        v6 = 0;
        v96 = v92;
        v89 = v26;
        v86 = v27;
        v87 = v15;
        v85 = v5;
        while (1)
        {
          if (v6 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_37;
          }

          sub_227FFE9B0(v5 + *(v15 + 72) * v6, v19);
          v28 = *(v19 + 4);
          if (v19[48] > 1u)
          {
            if (v19[48] != 2)
            {
              goto LABEL_8;
            }

            v83 = *(v19 + 5);
            v94 = v4;
            v95 = v13;
            v50 = *(v19 + 2);
            v49 = *(v19 + 3);
            v51 = qword_2813C49A8;

            if (v51 != -1)
            {
              swift_once();
            }

            v52 = v90;
            v53 = __swift_project_value_buffer(v90, qword_2813C89F0);
            v54 = v84;
            (*v88)(v84, v53, v52);
            v55 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v56 = sub_22813927C();

            v97[0] = 0;
            v44 = [v55 initWithPattern:v56 options:0 error:v97];

            if (!v44)
            {
              v71 = v97[0];
              v72 = sub_228136E2C();

              swift_willThrow();
              v73 = v72;
              v74 = sub_22813880C();
              v75 = sub_2281396EC();

              if (os_log_type_enabled(v74, v75))
              {
                v76 = swift_slowAlloc();
                v77 = swift_slowAlloc();
                *v76 = 138412290;
                v78 = v72;
                v79 = _swift_stdlib_bridgeErrorToNSError();
                *(v76 + 4) = v79;
                *v77 = v79;
                _os_log_impl(&dword_227FC3000, v74, v75, "Error compiling regular expression: %@", v76, 0xCu);
                sub_227FE60F8(v77);
                MEMORY[0x22AAB28A0](v77, -1, -1);
                MEMORY[0x22AAB28A0](v76, -1, -1);
              }

              swift_willThrow();
              (*v80)(v84, v90);
              goto LABEL_35;
            }

            v57 = *v80;
            v58 = v97[0];
            v59 = (v57)(v54, v52);
            MEMORY[0x28223BE20](v59, v60);
            v62 = v95;
            v61 = v96;
            *(&v80 - 6) = v44;
            *(&v80 - 5) = v61;
            *(&v80 - 4) = v62;
            *(&v80 - 3) = v28;
            *(&v80 - 2) = v83;
            v96 = sub_2280E5DB8(v44, 0, sub_2280A9724, (&v80 - 8), v61, v62);
            v13 = v63;
            v4 = v94;
          }

          else
          {
            if (!v19[48])
            {
              goto LABEL_8;
            }

            v94 = v4;
            v95 = v13;
            v29 = *(v19 + 2);
            v30 = *(v19 + 3);
            v31 = objc_opt_self();
            v32 = sub_22813927C();
            v33 = [v31 escapedTemplateForString_];

            v34 = sub_2281392AC();
            v36 = v35;

            sub_2280A8C78();
            v37 = qword_2813C49A8;

            if (v37 != -1)
            {
              swift_once();
            }

            v38 = v90;
            v39 = __swift_project_value_buffer(v90, qword_2813C89F0);
            v40 = v91;
            (*v88)(v91, v39, v38);
            v41 = v94;
            v42 = sub_227FE5EB0(v29, v30, 0, v40);
            v4 = v41;
            if (v41)
            {

LABEL_35:
              v65 = v89;

              sub_2280A95C4(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);

              goto LABEL_28;
            }

            v44 = v42;
            v45 = MEMORY[0x28223BE20](v42, v43);
            v47 = v95;
            v46 = v96;
            *(&v80 - 6) = v45;
            *(&v80 - 5) = v46;
            *(&v80 - 4) = v47;
            *(&v80 - 3) = v34;
            *(&v80 - 2) = v36;
            v96 = sub_2280E5DB8(v45, 0, sub_2280A9720, (&v80 - 8), v46, v47);
            v13 = v48;
          }

          v26 = v89;

          v27 = v86;
          v15 = v87;
          v5 = v85;
LABEL_8:
          ++v6;
          sub_2280A95C4(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
          if (v27 == v6)
          {

            v64 = v93;
            v65 = v96;
            if (v96 == v92)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }
        }
      }
    }

    else
    {
      swift_endAccess();
    }

    v64 = v93;

    v65 = v92;
    v13 = v64;
LABEL_23:
    if (v13 != v64)
    {
LABEL_24:
      if ((sub_2281399BC() & 1) == 0)
      {
        sub_2280A660C(3u, v81);
      }
    }
  }

  else
  {
    v66 = swift_allocObject();
    v65 = 20;
    *(v66 + 16) = 20;
    *(v66 + 24) = 0;
    *(v66 + 32) = 0;
    v67 = sub_227FF96D4(0, 0xD000000000000077, 0x8000000228147A80, 122, sub_2280A970C);
    sub_227FDB3CC();
    swift_allocError();
    *v68 = 20;
    *(v68 + 8) = v67;
    swift_willThrow();
  }

LABEL_28:
  v69 = *MEMORY[0x277D85DE8];
  return v65;
}

uint64_t sub_2280A7954(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v94 = a4;
  v99 = a1;
  v6 = type metadata accessor for SignpostToken(0);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v87 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v88 = &v85 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v85 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v85 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v85 - v23;
  if (qword_2813C4908 != -1)
  {
    swift_once();
  }

  v91 = v17;
  v25 = type metadata accessor for Signpost(0);
  v26 = __swift_project_value_buffer(v25, qword_2813C8870);
  sub_2280A9560(a3, v98);
  v27 = swift_allocObject();
  sub_227FFA05C(v98, v27 + 16);
  v92 = v26;
  v93 = v24;
  sub_22812F68C(sub_2280A96DC, v24);

  if (qword_2813C48D8 != -1)
  {
    swift_once();
  }

  v95 = v25;
  v28 = __swift_project_value_buffer(v25, qword_2813C87E0);
  sub_2280A9560(a3, v98);
  v29 = swift_allocObject();
  sub_227FFA05C(v98, v29 + 16);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2280A96E4;
  *(v30 + 24) = v29;

  sub_2281324C8(v28, v30);
  v31 = v99;
  v32 = a2;
  v34 = sub_2280A99A8(v99, a2);
  v35 = v33;
  if ((v34 != v31 || v33 != v32) && (sub_2281399BC() & 1) == 0)
  {
    sub_2280A660C(0, v94);
  }

  v86 = v32;
  sub_2281324D8(v21, v28, v30);

  sub_2280A95C4(v21, type metadata accessor for SignpostToken);

  v96 = v34;
  v97 = v35;
  v36 = v91;
  if (qword_2813C48E0 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v95, qword_2813C87F8);
  sub_2280A9560(a3, v98);
  v38 = swift_allocObject();
  sub_227FFA05C(v98, v38 + 16);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_2280A96E0;
  *(v39 + 24) = v38;
  v40 = v94;

  v89 = v37;
  sub_2281324C8(v37, v39);

  v41 = v90;
  v42 = sub_2280A68B4(v34, v35, v40);
  v44 = a3;
  if (v41)
  {
    v45 = a3;

    v46 = swift_allocObject();
    v46[2] = v41;
    v46[3] = sub_2280A96E0;
    v46[4] = v38;
    swift_beginAccess();
    v47 = *(v39 + 24);
    *(v39 + 16) = sub_2280A9624;
    *(v39 + 24) = v46;

    v48 = v41;

    swift_willThrow();
    sub_2281324D8(v36, v89, v39);
    sub_2280A95C4(v36, type metadata accessor for SignpostToken);

    sub_2280A9560(v45, v98);
    v49 = swift_allocObject();
    sub_227FFA05C(v98, v49 + 16);
    v50 = v93;
    sub_2281317B8(v93, sub_2280A9630);

    v51 = v50;
LABEL_23:
    sub_2280A95C4(v51, type metadata accessor for SignpostToken);
    return v49;
  }

  v52 = v42;
  v53 = v43;
  v85 = 0;
  v90 = v44;

  sub_2281324D8(v36, v89, v39);
  sub_2280A95C4(v36, type metadata accessor for SignpostToken);

  v96 = v52;
  v97 = v53;
  v54 = v53;
  if (qword_2813C48E8 != -1)
  {
    swift_once();
  }

  v55 = __swift_project_value_buffer(v95, qword_2813C8810);
  sub_2280A9560(v90, v98);
  v56 = swift_allocObject();
  sub_227FFA05C(v98, v56 + 16);
  v57 = swift_allocObject();
  *(v57 + 16) = sub_2280A96E8;
  *(v57 + 24) = v56;

  v58 = v86;

  sub_2281324C8(v55, v57);

  sub_2280A9C80(v52, v54);
  v60 = v59;
  v62 = v61;

  if ((v60 != v99 || v62 != v58) && (sub_2281399BC() & 1) == 0)
  {
    sub_2280A660C(2u, v40);
  }

  v63 = v88;
  sub_2281324D8(v88, v55, v57);
  sub_2280A95C4(v63, type metadata accessor for SignpostToken);

  v96 = v60;
  v97 = v62;
  v64 = v40;
  if (qword_2813C48F0 != -1)
  {
    swift_once();
  }

  v65 = __swift_project_value_buffer(v95, qword_2813C8828);
  sub_2280A9560(v90, v98);
  v66 = swift_allocObject();
  sub_227FFA05C(v98, v66 + 16);
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2280A96EC;
  *(v67 + 24) = v66;

  v68 = v87;
  sub_2281324C8(v65, v67);

  v69 = v85;
  v70 = sub_2280A7104(v60, v62, v64);
  if (v69)
  {

    v72 = swift_allocObject();
    v72[2] = v69;
    v72[3] = sub_2280A96EC;
    v72[4] = v66;
    swift_beginAccess();
    v73 = *(v67 + 24);
    *(v67 + 16) = sub_2280A9730;
    *(v67 + 24) = v72;

    v74 = v69;

    swift_willThrow();
    sub_2281324D8(v68, v65, v67);
    sub_2280A95C4(v68, type metadata accessor for SignpostToken);

    sub_2280A9560(v90, v98);
    v49 = swift_allocObject();
    sub_227FFA05C(v98, v49 + 16);
    v75 = v93;
    sub_2281317B8(v93, sub_2280A96F0);

    v51 = v75;
    goto LABEL_23;
  }

  v77 = v70;
  v78 = v71;

  sub_2281324D8(v68, v65, v67);
  sub_2280A95C4(v68, type metadata accessor for SignpostToken);

  v79 = v94;

  v96 = v77;
  v97 = v78;
  if (qword_2813C48D0 != -1)
  {
    swift_once();
  }

  v80 = __swift_project_value_buffer(v95, qword_2813C87C8);
  v81 = v90;
  sub_2280A9560(v90, v98);
  v82 = swift_allocObject();
  sub_227FFA05C(v98, v82 + 16);

  v49 = sub_22813228C(v80, sub_2280A96F4, v82, &v96, v79);

  sub_2280A9560(v81, v98);
  v83 = swift_allocObject();
  sub_227FFA05C(v98, v83 + 16);
  v84 = v93;
  sub_2281317B8(v93, sub_2280A96FC);

  sub_2280A95C4(v84, type metadata accessor for SignpostToken);
  return v49;
}

uint64_t sub_2280A8554(uint64_t a1, void *a2)
{
  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v4 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v4 = &qword_2813C76F8;
  }

  v5 = *v4;
  v7 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v8 = *(v6 + 8);
  v9 = *(v8 + 8);

  v10 = v9(v7, v8);
  v12 = sub_22808E410(v10, v11);

  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v31 = MEMORY[0x277D84F90];
    sub_228043AD4(0, v13, 0);
    v15 = 0;
    v14 = v31;
    do
    {
      v16 = (a1 + 32 + 16 * v15);
      v17 = *v16;
      v16[1];
      swift_bridgeObjectRetain_n();
      v18 = sub_2281393DC();
      v20 = v19;
      if (v19)
      {
        v21 = v18;
        do
        {
          if ((sub_2281036C8(v21, v20) & 1) == 0)
          {
            MEMORY[0x22AAB1960](v21, v20);
          }

          v21 = sub_2281393DC();
          v20 = v22;
        }

        while (v22);
        v20 = 0;
      }

      v24 = *(v31 + 16);
      v23 = *(v31 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_228043AD4((v23 > 1), v24 + 1, 1);
      }

      ++v15;
      *(v31 + 16) = v24 + 1;
      v25 = v31 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = 0xE000000000000000;
    }

    while (v15 != v13);
  }

  if (sub_2280AB048(v12, v14, 0))
  {
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v12;
  *(v27 + 24) = v14;
  v28 = swift_allocObject();
  *(v28 + 16) = 3;
  *(v28 + 24) = sub_2280A9558;
  *(v28 + 32) = v27;
  v29 = sub_227FF96D4(0, 0xD000000000000077, 0x8000000228147A80, 101, sub_2280A9708);
  sub_227FDB3CC();
  swift_allocError();
  *v30 = 3;
  *(v30 + 8) = v29;
  return swift_willThrow();
}

uint64_t sub_2280A88EC(uint64_t a1)
{
  v2 = sub_228136CDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  v15[0] = sub_2280A9EA0(32, 0xE100000000000000);
  v15[1] = v9;
  sub_228136C8C();
  sub_227FDB420();
  v10 = sub_2281397AC();
  v12 = v11;
  (*(v3 + 8))(v7, v2);

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    return v10;
  }

  return v8;
}

unint64_t sub_2280A8A4C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    if (qword_2813C8178 != -1)
    {
      swift_once();
    }

    sub_228139B6C();
    v5 = *(v10 + 16);

    if (v5)
    {
      v10 = 3;
      v11 = 1;
      LOBYTE(v6) = sub_227FFE22C(a1, a2, &v10);
    }

    else
    {
      v7 = swift_allocObject();
      *(v7 + 16) = 20;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      v6 = sub_227FF96D4(0, 0xD000000000000077, 0x8000000228147A80, 78, sub_2280A9704);
      sub_227FDB3CC();
      swift_allocError();
      *v8 = 20;
      *(v8 + 8) = v6;
      swift_willThrow();
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

uint64_t sub_2280A8BD4(char *a1, unint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_2280A8D60(a1, a2, 4, sub_2280A9714, sub_2280A8CC4, &unk_283B5E508, 86, sub_2280A8C6C);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2280A8C78()
{
  result = qword_2813C4600;
  if (!qword_2813C4600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813C4600);
  }

  return result;
}

uint64_t sub_2280A8CC8(char *a1, unint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_2280A8D60(a1, a2, 2, sub_2280A971C, sub_2280A9718, &unk_283B5E530, 61, sub_2280A9700);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2280A8D60(char *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(unint64_t *))
{
  v91 = a4;
  v92 = a5;
  v12 = v8;
  v99 = a1;
  v100[3] = *MEMORY[0x277D85DE8];
  v96 = sub_22813882C();
  v98 = *(v96 - 1);
  v14 = *(v98 + 64);
  v16 = MEMORY[0x28223BE20](v96, v15);
  v93 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v94 = &v84 - v19;
  v20 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
  v95 = *(v20 - 8);
  v21 = *(v95 + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C8178 != -1)
  {
LABEL_32:
    swift_once();
  }

  sub_228139B6C();
  v25 = *(v100[0] + 2);

  if (v25)
  {
    v26 = qword_2813C8078;
    swift_beginAccess();
    v27 = *(v25 + v26);
    v28 = v25;
    if (*(v27 + 16) && (v29 = sub_22808CF24(a3, 1), (v30 & 1) != 0))
    {
      v31 = *(*(v27 + 56) + 8 * v29);
      swift_endAccess();
      v32 = *(v31 + 16);
      if (v32)
      {
        v84 = v28;
        v90 = v12;
        v33 = v95;
        a3 = v31 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
        v88 = (v98 + 16);
        v85 = (v98 + 8);

        v12 = 0;
        a8 = v96;
        v89 = v31;
        v86 = a3;
        v87 = v32;
        while (1)
        {
          if (v12 >= *(v31 + 16))
          {
            __break(1u);
            goto LABEL_32;
          }

          sub_227FFE9B0(a3 + *(v33 + 72) * v12, v24);
          a7 = *(v24 + 4);
          v98 = *(v24 + 5);
          if (v24[48] > 1u)
          {
            if (v24[48] != 2)
            {
              goto LABEL_8;
            }

            v97 = a2;
            v55 = *(v24 + 2);
            v54 = *(v24 + 3);
            v56 = qword_2813C49A8;

            if (v56 != -1)
            {
              swift_once();
            }

            v57 = __swift_project_value_buffer(a8, qword_2813C89F0);
            v58 = v94;
            (*v88)(v94, v57, a8);
            v59 = objc_allocWithZone(MEMORY[0x277CCAC68]);
            v60 = a8;
            v61 = sub_22813927C();

            v100[0] = 0;
            v48 = [v59 initWithPattern:v61 options:0 error:v100];

            if (!v48)
            {
              v75 = v100[0];
              v76 = sub_228136E2C();

              swift_willThrow();
              v77 = v76;
              v78 = sub_22813880C();
              v79 = sub_2281396EC();

              if (os_log_type_enabled(v78, v79))
              {
                v80 = swift_slowAlloc();
                v81 = swift_slowAlloc();
                *v80 = 138412290;
                v82 = v76;
                v83 = _swift_stdlib_bridgeErrorToNSError();
                *(v80 + 4) = v83;
                *v81 = v83;
                _os_log_impl(&dword_227FC3000, v78, v79, "Error compiling regular expression: %@", v80, 0xCu);
                sub_227FE60F8(v81);
                MEMORY[0x22AAB28A0](v81, -1, -1);
                MEMORY[0x22AAB28A0](v80, -1, -1);
              }

              swift_willThrow();
              (*v85)(v58, v96);
              goto LABEL_30;
            }

            v62 = *v85;
            v63 = v100[0];
            v64 = (v62)(v58, v60);
            MEMORY[0x28223BE20](v64, v65);
            v67 = v98;
            v66 = v99;
            *(&v84 - 6) = v48;
            *(&v84 - 5) = v66;
            v68 = v97;
            *(&v84 - 4) = v97;
            *(&v84 - 3) = a7;
            *(&v84 - 2) = v67;
            v99 = sub_2280E5DB8(v48, 0, v91, (&v84 - 8), v66, v68);
            v53 = v69;
            a8 = v60;
          }

          else
          {
            if (!v24[48])
            {
              goto LABEL_8;
            }

            v97 = a2;
            v34 = *(v24 + 2);
            v35 = *(v24 + 3);
            v36 = objc_opt_self();
            v37 = sub_22813927C();
            v38 = [v36 escapedTemplateForString_];

            a7 = sub_2281392AC();
            v40 = v39;

            sub_2280A8C78();
            v41 = qword_2813C49A8;

            if (v41 != -1)
            {
              swift_once();
            }

            v42 = v96;
            v43 = __swift_project_value_buffer(v96, qword_2813C89F0);
            v44 = v93;
            (*v88)(v93, v43, v42);
            v45 = v90;
            v46 = sub_227FE5EB0(v34, v35, 0, v44);
            v90 = v45;
            if (v45)
            {

LABEL_30:

              sub_2280A95C4(v24, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);

              goto LABEL_24;
            }

            v48 = v46;
            v49 = MEMORY[0x28223BE20](v46, v47);
            v50 = v99;
            *(&v84 - 6) = v49;
            *(&v84 - 5) = v50;
            v51 = v97;
            *(&v84 - 4) = v97;
            *(&v84 - 3) = a7;
            *(&v84 - 2) = v40;
            v99 = sub_2280E5DB8(v49, 0, v92, (&v84 - 8), v50, v51);
            v53 = v52;

            a8 = v96;
          }

          a2 = v53;
          v31 = v89;
          v33 = v95;
          a3 = v86;
          v32 = v87;
LABEL_8:
          ++v12;
          sub_2280A95C4(v24, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
          if (v32 == v12)
          {

            result = v99;
            goto LABEL_24;
          }
        }
      }
    }

    else
    {
      swift_endAccess();
    }

    result = v99;
  }

  else
  {
    v71 = swift_allocObject();
    *(v71 + 16) = 20;
    *(v71 + 24) = 0;
    *(v71 + 32) = 0;
    v72 = sub_227FF96D4(0, 0xD000000000000077, 0x8000000228147A80, a7, a8);
    sub_227FDB3CC();
    swift_allocError();
    *v73 = 20;
    *(v73 + 8) = v72;
    result = swift_willThrow();
  }

LABEL_24:
  v74 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2280A9560(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2280A95C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_33Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_9()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_2280A96CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  return sub_2280E60EC(a1, *(v2 + 16), a2);
}

char *sub_2280A9734(char a1, char *a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF10, &qword_22813F800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813F7F0;
  v8 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v9 = sub_2280E9BE4(0xD000000000000019, 0x8000000228147B80, 0);
  if (v3)
  {
    *(inited + 16) = 0;
  }

  else
  {
    *(inited + 32) = v9;
    v10 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    *(inited + 40) = sub_2280E9BE4(0xD000000000000015, 0x8000000228147BA0, 0);
    v11 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    *(inited + 48) = sub_2280E9BE4(0xD000000000000015, 0x8000000228147BC0, 0);
    v28 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      v26 = inited & 0xC000000000000001;
      v25 = a1 & 1;

      v13 = 0;
      v27 = a2;
      v14 = a2;
      v15 = a3;
      do
      {
        if (v26)
        {
          v16 = MEMORY[0x22AAB1E40](v13, inited);
        }

        else
        {
          v16 = *(inited + 8 * v13 + 32);
        }

        v18 = v16;
        ++v13;
        v19 = MEMORY[0x28223BE20](v16, v17);
        v22[16] = v25;
        v23 = v27;
        v24 = a3;
        v14 = sub_2280E5DB8(v19, 0, sub_2280AAC40, v22, v14, v15);
        v21 = v20;

        v15 = v21;
      }

      while (v28 != v13);

      return v14;
    }

    else
    {
    }
  }

  return a2;
}

uint64_t sub_2280A99A8(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
LABEL_21:

    return v2;
  }

  if (qword_2813C4700 != -1)
  {
    swift_once();
  }

  v4 = qword_2813C46F0;
  if (byte_2813C46F8)
  {
    v5 = qword_2813C46F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    swift_willThrowTypedImpl();
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v6 = sub_22813882C();
    __swift_project_value_buffer(v6, qword_2813C8A20);
    v7 = v4;
    v8 = sub_22813880C();
    v9 = sub_2281396EC();
    sub_2280AB410(v4, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      v12 = v4;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_227FC3000, v8, v9, "Failed to load supported emoji: %{public}@", v10, 0xCu);
      sub_2280AB428(v11, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v11, -1, -1);
      MEMORY[0x22AAB28A0](v10, -1, -1);
      sub_2280AB410(v4, 1);
    }

    else
    {

      sub_2280AB410(v4, 1);
    }

    goto LABEL_21;
  }

  sub_2280AB41C(qword_2813C46F0, 0);

  v14 = sub_2281393DC();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    do
    {
      if (sub_2281036C8(v16, v17) & 1) == 0 || (sub_2280EAFD8(v16, v17, v4))
      {
        MEMORY[0x22AAB1960](v16, v17);
      }

      v16 = sub_2281393DC();
      v17 = v18;
    }

    while (v18);
    v2 = 0;
  }

  else
  {
    v2 = 0;
  }

  sub_2280AB410(v4, 0);

  return v2;
}

void sub_2280A9C80(uint64_t a1, unint64_t a2)
{

  sub_22813944C();
  v4 = HIBYTE(a2) & 0xF;
  v27 = a1;
  v28 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v29 = 0;
  v30 = v4;

  v5 = sub_2281393DC();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = 0;
    v10 = 0x277D07000uLL;
    v11 = off_2785F1000;
    while (1)
    {
      while ((sub_2281036C8(v7, v8) & 1) == 0)
      {
        MEMORY[0x22AAB1960](v7, v8);

        v7 = sub_2281393DC();
        v8 = v12;
        if (!v12)
        {
          v26 = v9;
          goto LABEL_16;
        }
      }

      if (!v9)
      {
        v9 = [objc_allocWithZone(MEMORY[0x277D072F8]) init];
      }

      v26 = v9;

      v13 = sub_22813927C();

      v14 = *(v10 + 792);
      v15 = [objc_opt_self() emojiTokenWithString:v13 localeData:v26];

      if (!v15)
      {
        break;
      }

      v16 = v11;
      v17 = [v15 v11[454]];
      if (!v17)
      {
        goto LABEL_18;
      }

      v18 = v17;
      v19 = v10;
      v20 = [v17 string];
      if (!v20)
      {
        goto LABEL_19;
      }

      v21 = v20;

      v22 = sub_2281392AC();
      v24 = v23;

      MEMORY[0x22AAB1970](v22, v24);

      v7 = sub_2281393DC();
      v8 = v25;
      v10 = v19;
      v11 = v16;
      if (!v25)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    v26 = 0;
LABEL_16:
  }
}

char *sub_2280A9EA0(uint64_t a1, unint64_t a2)
{
  v3 = sub_22813936C();
  if (!v3)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF18, &qword_228141340);
    sub_2280AB1D8();
    return sub_22813946C();
  }

  v4 = v3;
  v13 = MEMORY[0x277D84F90];
  result = sub_228043D00(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    do
    {
      v6 = sub_22813945C();
      v8 = v7;
      if (sub_2281036C8(v6, v7))
      {

        v6 = a1;
        v8 = a2;
      }

      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_228043D00((v9 > 1), v10 + 1, 1);
      }

      *(v13 + 16) = v10 + 1;
      v11 = v13 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      sub_22813937C();
      --v4;
    }

    while (v4);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_2280AA000@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    sub_228045C90(0, v8);
    v3 = v8[4];
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v4 = *(*(*(v3 + 8) + 8) + 8);
    v5 = sub_2281394AC();
    __swift_destroy_boxed_opaque_existential_1(v8);
    a2[3] = MEMORY[0x277D837D0];
    result = sub_227FDB420();
    a2[4] = result;
    v7 = 32;
    if (v5)
    {
      v7 = 10;
    }
  }

  else
  {
    a2[3] = MEMORY[0x277D837D0];
    result = sub_227FDB420();
    a2[4] = result;
    v7 = 32;
  }

  *a2 = v7;
  a2[1] = 0xE100000000000000;
  return result;
}

unint64_t sub_2280AA0E8(unint64_t *a1)
{
  result = sub_2280AAC4C(*a1, a1[1]);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = (result - 8232) < 2 || result == 133;
    return (result - 14) > 0xFFFFFFFB || v2;
  }

  return result;
}

uint64_t sub_2280AA14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  v9 = sub_22813927C();
  [v8 setString_];

  if (a2)
  {
    v10 = [v8 setLanguage_];
  }

  v11 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v11 = a4;
  }

  v12 = 7;
  if (((a5 >> 60) & ((a4 & 0x800000000000000) == 0)) != 0)
  {
    v12 = 11;
  }

  MEMORY[0x28223BE20](v10, v12 | (v11 << 16));
  sub_22813969C();

  return 0;
}

void sub_2280AA278(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v10 = a4;
  v11 = HIBYTE(a4) & 1;
  v12 = objc_allocWithZone(MEMORY[0x277CD89E0]);

  v13 = [v12 initWithUnit_];
  v14 = sub_22813927C();
  [v13 setString_];

  if ((a4 & 0x100) != 0)
  {
    v16 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v16 = a1;
    }

    v17 = v16 << 16;
    if ((a2 & 0x1000000000000000) == 0 || (a1 & 0x800000000000000) != 0)
    {
      v15 = v17 | 7;
    }

    else
    {
      v15 = v17 | 0xB;
    }
  }

  else
  {
    v15 = 15;
  }

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v10 & 1;
  *(a5 + 25) = v11;
  *(a5 + 32) = v13;
  *(a5 + 40) = v15;
}

uint64_t sub_2280AA384()
{
  v1 = v0;
  v27 = sub_228136CDC();
  v2 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27, v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[1];
  v8 = *(v0 + 25);
  v9 = HIBYTE(v7) & 0xF;
  v29 = *v0;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v29 & 0xFFFFFFFFFFFFLL;
  }

  v28 = 4 * v9;
  v10 = (v4 + 8);
  v11 = v0[5];
  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  if (v11 >= 0x4000)
  {
    do
    {
      v12 = v1[4];
      v13 = sub_22813968C();
      v15 = v14;
      v16 = sub_22813948C();
      v17 = MEMORY[0x22AAB18D0](v16);
      v19 = v18;

      v30 = v17;
      v31 = v19;
      sub_228136C8C();
      sub_227FDB420();
      v20 = sub_2281397AC();
      v22 = v21;
      (*v10)(v6, v27);

      if (v8)
      {
        if (v13 >= 0x4000)
        {
          v23 = sub_22813938C();
          goto LABEL_13;
        }

        v15 = v13;
      }

      else if (v28 > v15 >> 14)
      {
        v23 = sub_22813937C();
LABEL_13:
        v15 = v23;
      }

      v1[5] = v15;
      if ((v1[3] & 1) == 0)
      {
        return v20;
      }

      v24 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v24 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        return v20;
      }

      v11 = v1[5];
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_6:
      ;
    }

    while (v28 > v11 >> 14);
  }

  return 0;
}

uint64_t sub_2280AA59C()
{
  result = sub_2280AA5F8(&v1, &v2);
  qword_2813C46F0 = v2;
  byte_2813C46F8 = 0;
  return result;
}

uint64_t sub_2280AA5F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v3 = sub_228136C0C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_228136C1C();
  v58 = *(v8 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2281392DC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v57 = sub_228136EAC();
  v59 = *(v57 - 8);
  v16 = *(v59 + 64);
  v18 = MEMORY[0x28223BE20](v57, v17);
  v20 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v53 - v22;
  v24 = sub_22813927C();
  v25 = [objc_opt_self() bundleWithIdentifier_];

  if (!v25)
  {
    goto LABEL_6;
  }

  v53[1] = v7;
  v54 = v8;
  v26 = a1;
  v27 = sub_22813927C();
  v28 = sub_22813927C();
  v29 = [v25 URLForResource:v27 withExtension:v28];

  if (!v29)
  {

    a1 = v26;
    v8 = v54;
LABEL_6:
    sub_228136BDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E738, &unk_22813BB20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22813A4B0;
    v36 = *MEMORY[0x277CCA068];
    *(inited + 32) = sub_2281392AC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v37;
    *(inited + 48) = 0xD000000000000039;
    *(inited + 56) = 0x8000000228147BE0;
    sub_227FE4858(inited);
    swift_setDeallocating();
    sub_2280AB428(inited + 32, &qword_27D81E380, &unk_228142F80);
    sub_2280AB488();
    sub_228136E0C();
    v34 = sub_228136BCC();
    (*(v58 + 8))(v12, v8);
    result = swift_willThrow();
    goto LABEL_8;
  }

  sub_228136E5C();

  v30 = v57;
  (*(v59 + 32))(v23, v20, v57);
  v31 = v56;
  v32 = sub_228136EBC();
  v34 = v31;
  if (v31)
  {
    a1 = v26;

    result = (*(v59 + 8))(v23, v30);
  }

  else
  {
    v38 = v32;
    v56 = v33;
    a1 = v26;
    v40 = sub_227FC87CC(v32, v33);
    v41 = v38;
    v43 = v42;
    sub_227FC9210(v41, v56);
    sub_2281392CC();
    v53[0] = v40;
    v56 = v43;
    v44 = sub_2281392BC();
    if (v45)
    {
      v46 = sub_227FEC74C(v44, v45);

      sub_227FC9210(v53[0], v56);
      result = (*(v59 + 8))(v23, v30);
      *v55 = v46;
      return result;
    }

    sub_228136BFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E738, &unk_22813BB20);
    v47 = swift_initStackObject();
    *(v47 + 16) = xmmword_22813A4B0;
    v48 = *MEMORY[0x277CCA170];
    *(v47 + 32) = sub_2281392AC();
    *(v47 + 40) = v49;
    v50 = sub_228136E7C();
    *(v47 + 72) = MEMORY[0x277D837D0];
    *(v47 + 48) = v50;
    *(v47 + 56) = v51;
    sub_227FE4858(v47);
    swift_setDeallocating();
    sub_2280AB428(v47 + 32, &qword_27D81E380, &unk_228142F80);
    sub_2280AB488();
    v52 = v54;
    sub_228136E0C();
    v34 = sub_228136BCC();
    (*(v58 + 8))(v12, v52);
    swift_willThrow();

    sub_227FC9210(v53[0], v56);
    result = (*(v59 + 8))(v23, v30);
  }

LABEL_8:
  *a1 = v34;
  return result;
}

unint64_t sub_2280AAC40@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_2280AA000(*(v1 + 16), a1);
}

unint64_t sub_2280AAC4C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_2280AAD9C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_22813987C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_2281398AC() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_2280AAD9C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_2280AAE34(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2280AAEA8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_2280AAE34(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_2280AAFCC(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2280AAEA8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_2281398AC();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_2280AAFCC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22813940C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AAB19A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_2280AB048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = v3 - 1;
  v7 = (a2 + 40);
  do
  {
    v8 = v6;
    v10 = *(v7 - 1);
    v9 = *v7;
    v11 = objc_allocWithZone(MEMORY[0x277CD89E0]);

    v12 = [v11 initWithUnit_];
    v13 = sub_22813927C();
    [v12 setString_];

    if (a3)
    {
      v14 = [v12 setLanguage_];
    }

    v15 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v15 = v10;
    }

    v16 = 7;
    if (((v9 >> 60) & ((v10 & 0x800000000000000) == 0)) != 0)
    {
      v16 = 11;
    }

    MEMORY[0x28223BE20](v14, v16 | (v15 << 16));
    sub_22813969C();

    result = a1 < 1;
    if (a1 < 1)
    {
      break;
    }

    v6 = v8 - 1;
    v7 += 2;
  }

  while (v8);
  return result;
}

unint64_t sub_2280AB1D8()
{
  result = qword_2813C4688;
  if (!qword_2813C4688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81EF18, &qword_228141340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4688);
  }

  return result;
}

uint64_t sub_2280AB23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = (a1 + 40);
  v8 = a3;
  do
  {
    v10 = *(v7 - 1);
    v9 = *v7;
    v11 = objc_allocWithZone(MEMORY[0x277CD89E0]);

    v12 = [v11 initWithUnit_];
    v13 = sub_22813927C();
    [v12 setString_];

    if (a2)
    {
      v14 = [v12 setLanguage_];
    }

    v15 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v15 = v10;
    }

    v16 = 7;
    if (((v9 >> 60) & ((v10 & 0x800000000000000) == 0)) != 0)
    {
      v16 = 11;
    }

    MEMORY[0x28223BE20](v14, v16 | (v15 << 16));
    sub_22813969C();

    v17 = v6;
    if (v6 >= a3)
    {
      v6 = a3;
    }

    if (!--v3)
    {
      break;
    }

    v8 &= ~(v8 >> 63);
    v7 += 2;
  }

  while (v17 < a3);
  return v6;
}

BOOL sub_2280AB3E8()
{
  v1 = *(v0 + 16);
  v2 = *v1 + 1;
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 24);
    *v1 = v2;
    return v2 < v3;
  }

  return result;
}

void sub_2280AB410(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_2280AB41C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_2280AB428(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2280AB488()
{
  result = qword_2813C87A0;
  if (!qword_2813C87A0)
  {
    sub_228136C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C87A0);
  }

  return result;
}

void sub_2280AB4E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)())
{
  v5 = v4;
  v131 = a2;
  v132 = a4;
  v115 = *v4;
  v9 = sub_2281373DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v116 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2281377FC();
  v119 = *(v13 - 8);
  v120 = v13;
  v14 = *(v119 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v117 = v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v118 = v107 - v19;
  v123 = type metadata accessor for ModelBundleIdentifier();
  v20 = *(*(v123 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v123, v21);
  v124 = v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = v107 - v25;
  v27 = sub_22813759C();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v31 = v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8, v34);
  v36 = v107 - v35;
  v130 = sub_22813791C();
  v128 = *(v130 - 8);
  v37 = v128[8];
  v39 = MEMORY[0x28223BE20](v130, v38);
  v112 = v107 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v127 = v107 - v43;
  MEMORY[0x28223BE20](v42, v44);
  v169 = v107 - v45;
  v113 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_configuration;
  sub_2280B7EF0(a1, v5 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_configuration, type metadata accessor for SummarizationSession.Configuration);
  v114 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sessionInfo;
  sub_2280B8494(a2, v5 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sessionInfo);
  v125 = a3;
  sub_2280B842C(a3, &v141, &qword_27D81EF38, &qword_22813F938);
  v122 = v26;
  if (v141)
  {
    v165 = v151;
    v166 = v152;
    v167 = v153;
    v168 = v154;
    v161 = v147;
    v162 = v148;
    v163 = v149;
    v164 = v150;
    v157 = v143;
    v158 = v144;
    v159 = v145;
    v160 = v146;
    v155 = v141;
    v156 = v142;
  }

  else
  {
    v46 = *(a1 + *(type metadata accessor for SummarizationSession.Configuration() + 32));
    v140 = 0;
    memset(v139, 0, sizeof(v139));
    v138 = 0;
    memset(v137, 0, sizeof(v137));
    v136 = 0;
    memset(v135, 0, sizeof(v135));
    v134 = 0;
    memset(v133, 0, sizeof(v133));
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    *&v155 = v46;
    BYTE8(v155) = 0;

    sub_2280B83BC(v137, &v161);
    sub_2280B83BC(v135, &v163 + 8);
    sub_2280B83BC(v133, &v166);
    sub_2280B83BC(v139, &v158 + 8);
    sub_227FCB7B8(v133, &qword_27D81E8E0, &unk_22813C4F0);
    sub_227FCB7B8(v135, &qword_27D81E8E0, &unk_22813C4F0);
    sub_227FCB7B8(v137, &qword_27D81E8E0, &unk_22813C4F0);
    sub_227FCB7B8(v139, &qword_27D81E8E0, &unk_22813C4F0);
    if (v141)
    {
      sub_227FCB7B8(&v141, &qword_27D81EF38, &qword_22813F938);
    }
  }

  v47 = v5 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sanitizerFactory;
  v48 = v166;
  *(v47 + 160) = v165;
  *(v47 + 176) = v48;
  *(v47 + 192) = v167;
  *(v47 + 208) = v168;
  v49 = v162;
  *(v47 + 96) = v161;
  *(v47 + 112) = v49;
  v50 = v164;
  *(v47 + 128) = v163;
  *(v47 + 144) = v50;
  v51 = v158;
  *(v47 + 32) = v157;
  *(v47 + 48) = v51;
  v52 = v160;
  *(v47 + 64) = v159;
  *(v47 + 80) = v52;
  v53 = v156;
  *v47 = v155;
  *(v47 + 16) = v53;
  v54 = type metadata accessor for SummarizationSession.Configuration();
  sub_2280B842C(a1 + *(v54 + 20), v36, &qword_27D81E6A8, &qword_22813F930);
  v55 = *(a1 + *(v54 + 28));
  sub_22813758C();
  sub_2281378DC();
  v56 = v5;
  v57 = v131;
  v129 = a1;
  v58 = v131[3];
  v59 = v131[4];
  __swift_project_boxed_opaque_existential_1(v131, v58);
  v121 = (*(v59 + 24))(v58, v59);
  v60 = v57[3];
  v61 = v57[4];
  __swift_project_boxed_opaque_existential_1(v57, v60);
  v62 = v61;
  v63 = v129;
  v64 = sub_22800CC40(v60, v62);
  v65 = v64 & 0x100000000;
  if ((v64 & 0x100000000) != 0)
  {
    v66 = 0;
  }

  else
  {
    v66 = v64;
  }

  v67 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_modelBundleIdentifier;
  sub_2280B7EF0(v63, v56 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_modelBundleIdentifier, type metadata accessor for ModelBundleIdentifier);
  sub_2280B842C(v132, &v141, &qword_27D81E348, &qword_22813A7F0);
  if (!*(&v142 + 1))
  {
    v107[1] = v65;
    v107[2] = v66;
    v107[0] = v31;
    v71 = v121;
    sub_227FCB7B8(&v141, &qword_27D81E348, &qword_22813A7F0);
    v121 = sub_22813755C();
    v110 = v67;
    v111 = v56;
    v72 = v122;
    sub_2280B7EF0(v56 + v67, v122, type metadata accessor for ModelBundleIdentifier);
    v108 = v128[2];
    v109 = v128 + 2;
    v108(v127, v169, v130);
    v73 = v57[3];
    v74 = v57[4];
    __swift_project_boxed_opaque_existential_1(v57, v73);
    v75 = *(v74 + 8);
    v76 = v74;
    v77 = v72;
    v78 = v75(v73, v76);
    v80 = v79;
    v81 = v124;
    sub_2280B7EF0(v72, v124, type metadata accessor for ModelBundleIdentifier);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      v90 = sub_2281378EC();
      v123 = v91;
      v124 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E338, &qword_22813F770);
      v92 = *(sub_2281375BC() - 8);
      v93 = *(v92 + 72);
      v94 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      *(swift_allocObject() + 16) = xmmword_22813A4B0;
      sub_2281380CC();
      sub_2281380BC();
      sub_22813809C();

      sub_22813758C();
      v95 = v118;
      v77 = v72;
      sub_2281377EC();
      v97 = v119;
      v96 = v120;
      (*(v119 + 16))(v117, v95, v120);
      v98 = sub_22813752C();
      (*(v97 + 8))(v95, v96);
    }

    else
    {
      v123 = v71;
      sub_2280B760C(v81, type metadata accessor for ModelBundleIdentifier);
      v82 = v126;
      v83 = v127;
      sub_2280F94B0(v78, v80, v116);
      if (v82)
      {

        sub_227FCB7B8(v132, &qword_27D81E348, &qword_22813A7F0);
        sub_227FCB7B8(v125, &qword_27D81EF38, &qword_22813F938);
        v132 = type metadata accessor for SummarizationSession.Configuration;
        sub_2280B760C(v129, type metadata accessor for SummarizationSession.Configuration);
        v84 = v128[1];
        v85 = v83;
        v86 = v130;
        v84(v85, v130);
        sub_2280B760C(v72, type metadata accessor for ModelBundleIdentifier);
        v84(v169, v86);
        v87 = v111;
        sub_2280B760C(v111 + v113, v132);
        sub_2280B760C(v87 + v110, type metadata accessor for ModelBundleIdentifier);
        sub_228084D78(v47);
        __swift_destroy_boxed_opaque_existential_1Tm_10((v87 + v114));
        v88 = *(*v87 + 48);
        v89 = *(*v87 + 52);
        swift_deallocPartialClassInstance();
        goto LABEL_19;
      }

      v108(v112, v83, v130);
      v98 = sub_22813753C();
    }

    v99 = v111;
    v100 = v128[1];
    v101 = v130;
    v100(v127, v130);
    sub_2280B760C(v77, type metadata accessor for ModelBundleIdentifier);
    v102 = &v99[OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner];
    v103 = type metadata accessor for PromptManager();
    v102[3] = v103;
    v102[4] = &off_2818510E0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v102);
    sub_2280B7EF0(&v99[v110], boxed_opaque_existential_1 + *(v103 + 20), type metadata accessor for ModelBundleIdentifier);
    v105 = boxed_opaque_existential_1 + *(v103 + 24);
    v106 = v169;
    v108(v105, v169, v101);
    *boxed_opaque_existential_1 = v98;
    *&v157 = &off_283B5EC90;
    *(&v156 + 1) = v121;
    *&v155 = v98;

    sub_227FCB7B8(v132, &qword_27D81E348, &qword_22813A7F0);
    sub_227FCB7B8(v125, &qword_27D81EF38, &qword_22813F938);
    sub_2280B760C(v129, type metadata accessor for SummarizationSession.Configuration);
    v100(v106, v101);
    sub_227FD20C0(&v155, &v99[OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model]);
    goto LABEL_19;
  }

  v68 = v169;
  sub_227FD20C0(&v141, &v155);

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    v69 = v56;
    sub_2280B8494(&v155, v56 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner);
    v70 = __swift_project_boxed_opaque_existential_1(&v155, *(&v156 + 1));
    *(&v142 + 1) = swift_getAssociatedTypeWitness();
    *&v143 = swift_getAssociatedConformanceWitness();
    *__swift_allocate_boxed_opaque_existential_1(&v141) = *v70;

    sub_227FCB7B8(v132, &qword_27D81E348, &qword_22813A7F0);
    sub_227FCB7B8(v125, &qword_27D81EF38, &qword_22813F938);
    sub_2280B760C(v63, type metadata accessor for SummarizationSession.Configuration);
    (v128[1])(v68, v130);
    sub_227FD20C0(&v141, v69 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model);
    __swift_destroy_boxed_opaque_existential_1Tm_10(&v155);
LABEL_19:
    __swift_destroy_boxed_opaque_existential_1Tm_10(v131);
    return;
  }

  __break(1u);
}

uint64_t sub_2280AC248()
{
  v1[8] = v0;
  v2 = type metadata accessor for ModelBundleIdentifier();
  v1[9] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280AC2DC, 0, 0);
}

uint64_t sub_2280AC2DC()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_configuration;
  v0[11] = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_configuration;
  v5 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model;
  sub_2280B7EF0(v3 + v4, v2, type metadata accessor for ModelBundleIdentifier);
  if (swift_getEnumCaseMultiPayload() > 1)
  {

    v10 = v0[1];

    return v10(0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v6 = (v0[8] + v5);
    sub_2280B760C(v0[10], type metadata accessor for ModelBundleIdentifier);
    v7 = *__swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v8 = *(MEMORY[0x277D71A10] + 4);
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_2280AC43C;

    return MEMORY[0x2821D9808]();
  }
}

uint64_t sub_2280AC43C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {
    v6 = *(v3 + 80);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2280AC58C, 0, 0);
  }
}

uint64_t sub_2280AC58C()
{
  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    v1 = qword_27D81E2A0;
    v2 = &off_27D81EDB0;
  }

  else
  {
    v1 = qword_2813C76F0;
    v2 = &qword_2813C76F8;
  }

  if (v1 != -1)
  {
    swift_once();
  }

  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[8];
  v6 = *v2;

  v7 = sub_22808EED0(v5 + v4);
  LOBYTE(v5) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF30, &unk_2281426D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  *(inited + 32) = v7;
  *(inited + 40) = v5 & 1;
  v10 = sub_2280FAC9C(v3, inited);
  swift_setDeallocating();
  v11 = v0[10];

  v12 = v0[1];

  return v12(v10);
}

uint64_t sub_2280AC738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[261] = v3;
  v4[255] = a3;
  v4[249] = a2;
  v4[243] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C0, &unk_22813C3A0) - 8) + 64) + 15;
  v4[267] = swift_task_alloc();
  v6 = type metadata accessor for ModelBundleIdentifier();
  v4[268] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[269] = swift_task_alloc();
  v8 = type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult(0);
  v4[270] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[271] = swift_task_alloc();
  v4[272] = swift_task_alloc();
  v4[273] = swift_task_alloc();
  v4[274] = swift_task_alloc();
  v10 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v4[275] = swift_task_alloc();
  v4[276] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF20, &unk_22813F8A0);
  v4[277] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[278] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v4[279] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v4[280] = swift_task_alloc();
  v4[281] = swift_task_alloc();
  v4[282] = swift_task_alloc();
  v4[283] = swift_task_alloc();
  v4[284] = swift_task_alloc();
  v4[285] = swift_task_alloc();
  v4[286] = swift_task_alloc();
  v15 = *(type metadata accessor for SummarizationParameters() - 8);
  v4[287] = v15;
  v4[288] = *(v15 + 64);
  v4[289] = swift_task_alloc();
  v4[290] = swift_task_alloc();
  v4[291] = swift_task_alloc();
  v4[292] = swift_task_alloc();
  v4[293] = swift_task_alloc();
  v4[294] = swift_task_alloc();
  v4[295] = swift_task_alloc();
  v4[296] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280ACA10, 0, 0);
}

uint64_t sub_2280ACA10()
{
  v1 = *(v0 + 2088);
  sub_2280B8494(*(v0 + 1992) + 40, v0 + 1336);
  if (sub_22806044C((v0 + 1336)))
  {
    if (qword_2813C4948 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 2360);
    v3 = *(v0 + 2304);
    v4 = *(v0 + 2296);
    v5 = *(v0 + 2208);
    v6 = *(v0 + 1992);
    v7 = type metadata accessor for Signpost(0);
    *(v0 + 2376) = v7;
    v8 = __swift_project_value_buffer(v7, qword_2813C8930);
    *(v0 + 2384) = v8;
    sub_2280B8494(v0 + 1336, v0 + 1416);
    sub_2280B7EF0(v6, v2, type metadata accessor for SummarizationParameters);
    v9 = *(v4 + 80);
    *(v0 + 2536) = v9;
    v10 = (v9 + 56) & ~v9;
    v11 = swift_allocObject();
    *(v0 + 2392) = v11;
    sub_227FD20C0((v0 + 1416), v11 + 16);
    sub_2280B7E88(v2, v11 + v10, type metadata accessor for SummarizationParameters);
    v12 = swift_allocObject();
    *(v0 + 2400) = v12;
    *(v12 + 16) = sub_2280B8640;
    *(v12 + 24) = v11;

    sub_2281324C4(v8, v12);
    v13 = swift_task_alloc();
    *(v0 + 2408) = v13;
    *v13 = v0;
    v13[1] = sub_2280ACE40;
    v14 = *(v0 + 2224);
    v15 = *(v0 + 2088);
    v16 = *(v0 + 2040);
    v17 = *(v0 + 1992);

    return sub_2280AFD94(v14, v15, v17);
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = 16;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v20 = sub_227FF96D4(0, 0xD000000000000080, 0x8000000228147C70, 98, sub_2280B76C4);
    sub_227FDB3CC();
    swift_allocError();
    *v21 = 16;
    *(v21 + 8) = v20;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 1336));
    v22 = *(v0 + 2368);
    v23 = *(v0 + 2360);
    v24 = *(v0 + 2352);
    v25 = *(v0 + 2344);
    v26 = *(v0 + 2336);
    v27 = *(v0 + 2328);
    v28 = *(v0 + 2320);
    v29 = *(v0 + 2312);
    v30 = *(v0 + 2288);
    v31 = *(v0 + 2280);
    v33 = *(v0 + 2272);
    v34 = *(v0 + 2264);
    v35 = *(v0 + 2256);
    v36 = *(v0 + 2248);
    v37 = *(v0 + 2240);
    v38 = *(v0 + 2224);
    v39 = *(v0 + 2208);
    v40 = *(v0 + 2200);
    v41 = *(v0 + 2192);
    v42 = *(v0 + 2184);
    v43 = *(v0 + 2176);
    v44 = *(v0 + 2168);
    v45 = *(v0 + 2152);
    v46 = *(v0 + 2136);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_2280ACE40()
{
  v2 = *(*v1 + 2408);
  v5 = *v1;
  *(*v1 + 2416) = v0;

  if (v0)
  {
    v3 = sub_2280AD73C;
  }

  else
  {
    v3 = sub_2280ACF54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2280ACF54()
{
  v1 = *(v0 + 2416);
  v2 = *(v0 + 2392);
  v3 = *(v0 + 2368);
  v4 = *(v0 + 2288);
  v5 = *(v0 + 2224);
  v6 = *(v0 + 2216);
  v7 = *(v0 + 2208);
  sub_2281324D4(v7, *(v0 + 2384), *(v0 + 2400));
  sub_2280B760C(v7, type metadata accessor for SignpostToken);

  v8 = *(v6 + 48);
  sub_2280B7E88(v5, v3, type metadata accessor for SummarizationParameters);
  sub_2280B76DC(v5 + v8, v4);
  sub_2281395DC();
  if (v1)
  {
    v9 = *(v0 + 2368);
    sub_227FCB7B8(*(v0 + 2288), &qword_27D81E598, &qword_22813B300);
    sub_2280B760C(v9, type metadata accessor for SummarizationParameters);
    __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 1336));
    v10 = *(v0 + 2368);
    v11 = *(v0 + 2360);
    v12 = *(v0 + 2352);
    v13 = *(v0 + 2344);
    v14 = *(v0 + 2336);
    v15 = *(v0 + 2328);
    v16 = *(v0 + 2320);
    v17 = *(v0 + 2312);
    v18 = *(v0 + 2288);
    v19 = *(v0 + 2280);
    v62 = *(v0 + 2272);
    v63 = *(v0 + 2264);
    v64 = *(v0 + 2256);
    v66 = *(v0 + 2248);
    v68 = *(v0 + 2240);
    v70 = *(v0 + 2224);
    v71 = *(v0 + 2208);
    v72 = *(v0 + 2200);
    v74 = *(v0 + 2192);
    v75 = *(v0 + 2184);
    v77 = *(v0 + 2176);
    v79 = *(v0 + 2168);
    v81 = *(v0 + 2152);
    v83 = *(v0 + 2136);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 2264);
    v23 = *(v0 + 2088);
    v24 = *(v0 + 1360);
    v25 = *(v0 + 1368);
    __swift_project_boxed_opaque_existential_1((v0 + 1336), v24);
    v26 = (*(*(v25 + 8) + 16))(v24);
    v28 = v27;
    v29 = *(v0 + 1360);
    v30 = *(v0 + 1368);
    __swift_project_boxed_opaque_existential_1((v0 + 1336), v29);
    v31 = (*(*(v30 + 8) + 8))(v29);
    v33 = v32;
    v34 = sub_2281386FC();
    (*(*(v34 - 8) + 56))(v22, 1, 1, v34);
    LOBYTE(v30) = sub_228021CA0(v26, v28, v31, v33);

    sub_227FCB7B8(v22, &qword_27D81E598, &qword_22813B300);
    if (v30)
    {
      v35 = *(v0 + 2536);
      v36 = *(v0 + 2368);
      v69 = v36;
      v37 = *(v0 + 2352);
      v38 = *(v0 + 2344);
      v65 = v38;
      v78 = *(v0 + 2336);
      v80 = *(v0 + 2328);
      v39 = *(v0 + 2304);
      v76 = *(v0 + 2256);
      v73 = *(v0 + 2232);
      v84 = *(v0 + 2176);
      v82 = *(v0 + 2160);
      v85 = *(v0 + 2088);
      v67 = *(v0 + 2040);
      v40 = (v35 + 56) & ~v35;
      v41 = *(v0 + 1992);
      sub_2280B8494(v0 + 1336, v0 + 1656);
      sub_2280B7EF0(v41, v37, type metadata accessor for SummarizationParameters);
      sub_2280B7EF0(v36, v38, type metadata accessor for SummarizationParameters);
      v42 = (v39 + 7 + v40) & 0xFFFFFFFFFFFFFFF8;
      v43 = (v35 + v42 + 8) & ~v35;
      v44 = swift_allocObject();
      *(v0 + 2424) = v44;
      sub_227FD20C0((v0 + 1656), v44 + 16);
      sub_2280B7E88(v37, v44 + v40, type metadata accessor for SummarizationParameters);
      *(v44 + v42) = v85;
      sub_2280B7E88(v65, v44 + v43, type metadata accessor for SummarizationParameters);
      *(v44 + ((v43 + v39 + 7) & 0xFFFFFFFFFFFFFFF8)) = v67;

      swift_asyncLet_begin();
      sub_2280B7EF0(v69, v78, type metadata accessor for SummarizationParameters);
      sub_2280B8494(v0 + 1336, v0 + 1736);
      sub_2280B7EF0(v41, v80, type metadata accessor for SummarizationParameters);
      v45 = (v35 + 24) & ~v35;
      v46 = (v39 + 7 + v45) & 0xFFFFFFFFFFFFFFF8;
      v47 = swift_allocObject();
      *(v0 + 2432) = v47;
      *(v47 + 16) = v85;
      sub_2280B7E88(v78, v47 + v45, type metadata accessor for SummarizationParameters);
      sub_227FD20C0((v0 + 1736), v47 + v46);
      sub_2280B7E88(v80, v47 + ((v35 + v46 + 40) & ~v35), type metadata accessor for SummarizationParameters);

      swift_asyncLet_begin();
      v48 = *(v0 + 2256);

      return MEMORY[0x282200930](v0 + 16, v48, sub_2280AD9CC, v0 + 1296);
    }

    else
    {
      if (qword_2813C4940 != -1)
      {
        swift_once();
      }

      v49 = *(v0 + 2320);
      v50 = *(v0 + 2304);
      v51 = *(v0 + 2200);
      v52 = *(v0 + 1992);
      v53 = (*(v0 + 2536) + 56) & ~*(v0 + 2536);
      v54 = __swift_project_value_buffer(*(v0 + 2376), qword_2813C8918);
      *(v0 + 2448) = v54;
      sub_2280B8494(v0 + 1336, v0 + 1496);
      sub_2280B7EF0(v52, v49, type metadata accessor for SummarizationParameters);
      v55 = swift_allocObject();
      *(v0 + 2456) = v55;
      sub_227FD20C0((v0 + 1496), v55 + 16);
      sub_2280B7E88(v49, v55 + v53, type metadata accessor for SummarizationParameters);
      v56 = swift_allocObject();
      *(v0 + 2464) = v56;
      *(v56 + 16) = sub_2280B8648;
      *(v56 + 24) = v55;

      sub_2281324C4(v54, v56);
      v57 = swift_task_alloc();
      *(v0 + 2472) = v57;
      *v57 = v0;
      v57[1] = sub_2280ADA10;
      v58 = *(v0 + 2368);
      v59 = *(v0 + 2248);
      v60 = *(v0 + 2088);
      v61 = *(v0 + 2040);

      return sub_2280B09B8(v59, v58);
    }
  }
}

uint64_t sub_2280AD73C()
{
  v1 = v0[302];
  v2 = v0[300];
  v3 = v0[299];
  v4 = v0[298];
  v5 = v0[276];
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = sub_2280B8640;
  v6[4] = v3;
  swift_beginAccess();
  v7 = *(v2 + 24);
  *(v2 + 16) = sub_2280B76D0;
  *(v2 + 24) = v6;

  v8 = v1;

  swift_willThrow();
  sub_2281324D4(v5, v4, v2);
  sub_2280B760C(v5, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);
  v35 = v0[302];
  v9 = v0[296];
  v10 = v0[295];
  v11 = v0[294];
  v12 = v0[293];
  v13 = v0[292];
  v14 = v0[291];
  v15 = v0[290];
  v16 = v0[289];
  v17 = v0[286];
  v18 = v0[285];
  v21 = v0[284];
  v22 = v0[283];
  v23 = v0[282];
  v24 = v0[281];
  v25 = v0[280];
  v26 = v0[278];
  v27 = v0[276];
  v28 = v0[275];
  v29 = v0[274];
  v30 = v0[273];
  v31 = v0[272];
  v32 = v0[271];
  v33 = v0[269];
  v34 = v0[267];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2280AD9CC()
{
  *(v1 + 2440) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656, *(v1 + 2176), sub_2280AE5E4, v1 + 1376);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_2280AE194, 0, 0);
  }
}

uint64_t sub_2280ADA10()
{
  v2 = *(*v1 + 2472);
  v5 = *v1;
  *(*v1 + 2480) = v0;

  if (v0)
  {
    v3 = sub_2280ADECC;
  }

  else
  {
    v3 = sub_2280ADB24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2280ADB24()
{
  v1 = *(v0 + 2480);
  v2 = *(v0 + 2456);
  v3 = *(v0 + 2288);
  v4 = *(v0 + 2248);
  v5 = *(v0 + 2200);
  v6 = *(v0 + 2088);
  sub_2281324D4(v5, *(v0 + 2448), *(v0 + 2464));
  sub_2280B760C(v5, type metadata accessor for SignpostToken);

  sub_2280B7844(v3, v4, (v0 + 1336));
  if (v1)
  {
    sub_227FCB7B8(*(v0 + 2248), &qword_27D81E598, &qword_22813B300);
    v7 = *(v0 + 2368);
    sub_227FCB7B8(*(v0 + 2288), &qword_27D81E598, &qword_22813B300);
    sub_2280B760C(v7, type metadata accessor for SummarizationParameters);
    __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 1336));
    v8 = *(v0 + 2368);
    v9 = *(v0 + 2360);
    v10 = *(v0 + 2352);
    v11 = *(v0 + 2344);
    v12 = *(v0 + 2336);
    v13 = *(v0 + 2328);
    v14 = *(v0 + 2320);
    v15 = *(v0 + 2312);
    v16 = *(v0 + 2288);
    v17 = *(v0 + 2280);
    v29 = *(v0 + 2272);
    v30 = *(v0 + 2264);
    v31 = *(v0 + 2256);
    v32 = *(v0 + 2248);
    v33 = *(v0 + 2240);
    v34 = *(v0 + 2224);
    v35 = *(v0 + 2208);
    v36 = *(v0 + 2200);
    v37 = *(v0 + 2192);
    v38 = *(v0 + 2184);
    v39 = *(v0 + 2176);
    v40 = *(v0 + 2168);
    v41 = *(v0 + 2152);
    v42 = *(v0 + 2136);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 2312);
    v21 = *(v0 + 2304);
    v22 = *(v0 + 1992);
    v23 = (*(v0 + 2536) + 56) & ~*(v0 + 2536);
    sub_2280B8494(v0 + 1336, v0 + 1576);
    sub_2280B7EF0(v22, v20, type metadata accessor for SummarizationParameters);
    v24 = swift_allocObject();
    *(v0 + 2512) = v24;
    sub_227FD20C0((v0 + 1576), v24 + 16);
    sub_2280B7E88(v20, v24 + v23, type metadata accessor for SummarizationParameters);
    v25 = swift_task_alloc();
    *(v0 + 2520) = v25;
    *v25 = v0;
    v25[1] = sub_2280AF388;
    v26 = *(v0 + 2368);
    v27 = *(v0 + 2168);
    v28 = *(v0 + 2088);

    return sub_2280B1E28(v27, v26, sub_2280B8644, v24);
  }
}

uint64_t sub_2280ADECC()
{
  v1 = v0[310];
  v2 = v0[308];
  v3 = v0[307];
  v4 = v0[306];
  v5 = v0[275];
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = sub_2280B8648;
  v6[4] = v3;
  swift_beginAccess();
  v7 = *(v2 + 24);
  *(v2 + 16) = sub_2280B865C;
  *(v2 + 24) = v6;

  v8 = v1;

  swift_willThrow();
  sub_2281324D4(v5, v4, v2);
  sub_2280B760C(v5, type metadata accessor for SignpostToken);

  v36 = v0[310];
  v9 = v0[296];
  sub_227FCB7B8(v0[286], &qword_27D81E598, &qword_22813B300);
  sub_2280B760C(v9, type metadata accessor for SummarizationParameters);
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);
  v10 = v0[296];
  v11 = v0[295];
  v12 = v0[294];
  v13 = v0[293];
  v14 = v0[292];
  v15 = v0[291];
  v16 = v0[290];
  v17 = v0[289];
  v18 = v0[286];
  v19 = v0[285];
  v22 = v0[284];
  v23 = v0[283];
  v24 = v0[282];
  v25 = v0[281];
  v26 = v0[280];
  v27 = v0[278];
  v28 = v0[276];
  v29 = v0[275];
  v30 = v0[274];
  v31 = v0[273];
  v32 = v0[272];
  v33 = v0[271];
  v34 = v0[269];
  v35 = v0[267];

  v20 = v0[1];

  return v20();
}

uint64_t sub_2280AE194()
{
  v1 = v0[305];
  v2 = v0[286];
  v3 = v0[280];
  v4 = v0[261];
  sub_2280B842C(v0[282], v3, &qword_27D81E598, &qword_22813B300);
  sub_2280B7844(v2, v3, v0 + 167);
  v0[311] = v1;
  sub_227FCB7B8(v0[280], &qword_27D81E598, &qword_22813B300);
  if (v1)
  {
    v5 = v0[272];

    return MEMORY[0x282200920](v0 + 82, v5, sub_2280AE378, v0 + 192);
  }

  else
  {
    v6 = v0[282];

    return MEMORY[0x282200930](v0 + 2, v6, sub_2280AE2B4, v0 + 212);
  }
}

uint64_t sub_2280AE2B4()
{
  v1[312] = v0;
  if (v0)
  {
    v2 = v1[272];

    return MEMORY[0x282200920](v1 + 82, v2, sub_2280AE914, v1 + 222);
  }

  else
  {
    sub_2280B842C(v1[282], v1[284], &qword_27D81E598, &qword_22813B300);
    v3 = v1[272];

    return MEMORY[0x282200930](v1 + 82, v3, sub_2280AE850, v1 + 238);
  }
}

uint64_t sub_2280AE3D0()
{
  v1 = v0[304];
  v2 = v0[303];

  v30 = v0[311];
  v3 = v0[296];
  sub_227FCB7B8(v0[286], &qword_27D81E598, &qword_22813B300);
  sub_2280B760C(v3, type metadata accessor for SummarizationParameters);
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);
  v4 = v0[296];
  v5 = v0[295];
  v6 = v0[294];
  v7 = v0[293];
  v8 = v0[292];
  v9 = v0[291];
  v10 = v0[290];
  v11 = v0[289];
  v12 = v0[286];
  v13 = v0[285];
  v16 = v0[284];
  v17 = v0[283];
  v18 = v0[282];
  v19 = v0[281];
  v20 = v0[280];
  v21 = v0[278];
  v22 = v0[276];
  v23 = v0[275];
  v24 = v0[274];
  v25 = v0[273];
  v26 = v0[272];
  v27 = v0[271];
  v28 = v0[269];
  v29 = v0[267];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2280AE63C()
{
  v1 = v0[304];
  v2 = v0[303];

  v30 = v0[305];
  v3 = v0[296];
  sub_227FCB7B8(v0[286], &qword_27D81E598, &qword_22813B300);
  sub_2280B760C(v3, type metadata accessor for SummarizationParameters);
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);
  v4 = v0[296];
  v5 = v0[295];
  v6 = v0[294];
  v7 = v0[293];
  v8 = v0[292];
  v9 = v0[291];
  v10 = v0[290];
  v11 = v0[289];
  v12 = v0[286];
  v13 = v0[285];
  v16 = v0[284];
  v17 = v0[283];
  v18 = v0[282];
  v19 = v0[281];
  v20 = v0[280];
  v21 = v0[278];
  v22 = v0[276];
  v23 = v0[275];
  v24 = v0[274];
  v25 = v0[273];
  v26 = v0[272];
  v27 = v0[271];
  v28 = v0[269];
  v29 = v0[267];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2280AE850()
{
  v1[313] = v0;
  if (v0)
  {
    sub_227FCB7B8(v1[284], &qword_27D81E598, &qword_22813B300);
    v2 = sub_2280AF11C;
    v3 = v1[272];
    v4 = v1 + 82;
    v5 = v1 + 244;
  }

  else
  {
    sub_2280B7EF0(v1[272], v1[273], type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult);
    v2 = sub_2280AEB80;
    v3 = v1[272];
    v4 = v1 + 82;
    v5 = v1 + 256;
  }

  return MEMORY[0x282200920](v4, v3, v2, v5);
}

uint64_t sub_2280AE96C()
{
  v1 = v0[304];
  v2 = v0[303];

  v30 = v0[312];
  v3 = v0[296];
  sub_227FCB7B8(v0[286], &qword_27D81E598, &qword_22813B300);
  sub_2280B760C(v3, type metadata accessor for SummarizationParameters);
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);
  v4 = v0[296];
  v5 = v0[295];
  v6 = v0[294];
  v7 = v0[293];
  v8 = v0[292];
  v9 = v0[291];
  v10 = v0[290];
  v11 = v0[289];
  v12 = v0[286];
  v13 = v0[285];
  v16 = v0[284];
  v17 = v0[283];
  v18 = v0[282];
  v19 = v0[281];
  v20 = v0[280];
  v21 = v0[278];
  v22 = v0[276];
  v23 = v0[275];
  v24 = v0[274];
  v25 = v0[273];
  v26 = v0[272];
  v27 = v0[271];
  v28 = v0[269];
  v29 = v0[267];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2280AEBD8()
{
  v1 = v0[304];
  v2 = v0[303];

  v3 = v0[274];
  v4 = v0[273];
  v5 = v0[261];
  sub_2280B76DC(v0[284], v0[285]);
  sub_2280B7E88(v4, v3, type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult);
  v6 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_modelBundleIdentifier;
  if (qword_2813C7048 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0[268], qword_2813C8B20);
  if (_s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v5 + v6, v7))
  {
    v8 = v0[274];
    v9 = v0[270];
    v10 = v0[267];
    v11 = *v8;
    v12 = v8[1];
    sub_2280B7EF0(v5 + v6, v0[269], type metadata accessor for ModelBundleIdentifier);
    sub_2280B842C(v8 + *(v9 + 20), v10, &qword_27D81E8C0, &unk_22813C3A0);
    v13 = type metadata accessor for GMSModelInfo(0);
    v14 = (*(*(v13 - 8) + 48))(v10, 1, v13);
    v15 = v0[267];
    if (v14 == 1)
    {
      sub_227FCB7B8(v0[267], &qword_27D81E8C0, &unk_22813C3A0);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v18 = v0[267];
      v16 = GMSModelInfo.safetyRejectionPlaceholder.getter();
      v17 = v19;
      sub_2280B760C(v15, type metadata accessor for GMSModelInfo);
    }

    if (_s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v0[269], v7))
    {
      if (v17)
      {
        v20 = v16;
      }

      else
      {
        v20 = 0x656661736E55;
      }

      if (!v17)
      {
        v17 = 0xE600000000000000;
      }

      if (v11 == v20 && v12 == v17)
      {
        v21 = 1;
      }

      else
      {
        v21 = sub_2281399BC();
      }
    }

    else
    {
      v21 = 0;
    }

    v37 = v21;
    v22 = v0[269];

    sub_2280B760C(v22, type metadata accessor for ModelBundleIdentifier);
  }

  else
  {
    v37 = 0;
  }

  v23 = v0[296];
  v38 = v0[295];
  v39 = v0[294];
  v40 = v0[293];
  v41 = v0[292];
  v42 = v0[291];
  v43 = v0[290];
  v24 = v0[286];
  v25 = v0[285];
  v44 = v0[289];
  v45 = v0[284];
  v46 = v0[283];
  v47 = v0[282];
  v48 = v0[281];
  v49 = v0[280];
  v50 = v0[278];
  v51 = v0[276];
  v26 = v0[274];
  v52 = v0[275];
  v53 = v0[273];
  v54 = v0[272];
  v55 = v0[271];
  v27 = v0[270];
  v56 = v0[269];
  v57 = v0[267];
  v28 = v0[243];
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);
  v29 = v26[1];
  v36 = *v26;
  v30 = v27[5];
  v31 = type metadata accessor for SummarizationResult();
  sub_2280B842C(v26 + v30, &v28[v31[5]], &qword_27D81E8C0, &unk_22813C3A0);
  sub_2280B76DC(v24, &v28[v31[6]]);
  sub_2280B76DC(v25, &v28[v31[7]]);
  sub_2280B842C(v26 + v27[6], &v28[v31[8]], &qword_27D81E598, &qword_22813B300);
  sub_2280B842C(v26 + v27[7], &v28[v31[9]], &qword_27D81E598, &qword_22813B300);
  LOBYTE(v30) = *(v23 + 33);

  sub_2280B760C(v23, type metadata accessor for SummarizationParameters);
  v32 = v31[12];
  v33 = sub_2281376EC();
  (*(*(v33 - 8) + 56))(&v28[v32], 1, 1, v33);
  *v28 = v36;
  *(v28 + 1) = v29;
  v28[v31[10]] = v30;
  v28[v31[11]] = v37 & 1;
  sub_2280B760C(v26, type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult);

  v34 = v0[1];

  return v34();
}

uint64_t sub_2280AF174()
{
  v1 = v0[304];
  v2 = v0[303];

  v30 = v0[313];
  v3 = v0[296];
  sub_227FCB7B8(v0[286], &qword_27D81E598, &qword_22813B300);
  sub_2280B760C(v3, type metadata accessor for SummarizationParameters);
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);
  v4 = v0[296];
  v5 = v0[295];
  v6 = v0[294];
  v7 = v0[293];
  v8 = v0[292];
  v9 = v0[291];
  v10 = v0[290];
  v11 = v0[289];
  v12 = v0[286];
  v13 = v0[285];
  v16 = v0[284];
  v17 = v0[283];
  v18 = v0[282];
  v19 = v0[281];
  v20 = v0[280];
  v21 = v0[278];
  v22 = v0[276];
  v23 = v0[275];
  v24 = v0[274];
  v25 = v0[273];
  v26 = v0[272];
  v27 = v0[271];
  v28 = v0[269];
  v29 = v0[267];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2280AF388()
{
  v2 = *v1;
  v3 = *(*v1 + 2520);
  v7 = *v1;
  *(*v1 + 2528) = v0;

  v4 = *(v2 + 2512);

  if (v0)
  {
    v5 = sub_2280AFA04;
  }

  else
  {
    v5 = sub_2280AF4AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280AF4AC()
{
  v1 = v0[273];
  v2 = v0[271];
  sub_2280B76DC(v0[281], v0[284]);
  sub_2280B7E88(v2, v1, type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult);
  v3 = v0[274];
  v4 = v0[273];
  v5 = v0[261];
  sub_2280B76DC(v0[284], v0[285]);
  sub_2280B7E88(v4, v3, type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult);
  v6 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_modelBundleIdentifier;
  if (qword_2813C7048 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0[268], qword_2813C8B20);
  if (_s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v5 + v6, v7))
  {
    v8 = v0[274];
    v9 = v0[270];
    v10 = v0[267];
    v11 = *v8;
    v12 = v8[1];
    sub_2280B7EF0(v5 + v6, v0[269], type metadata accessor for ModelBundleIdentifier);
    sub_2280B842C(v8 + *(v9 + 20), v10, &qword_27D81E8C0, &unk_22813C3A0);
    v13 = type metadata accessor for GMSModelInfo(0);
    v14 = (*(*(v13 - 8) + 48))(v10, 1, v13);
    v15 = v0[267];
    if (v14 == 1)
    {
      sub_227FCB7B8(v0[267], &qword_27D81E8C0, &unk_22813C3A0);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v18 = v0[267];
      v16 = GMSModelInfo.safetyRejectionPlaceholder.getter();
      v17 = v19;
      sub_2280B760C(v15, type metadata accessor for GMSModelInfo);
    }

    if (_s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v0[269], v7))
    {
      if (v17)
      {
        v20 = v16;
      }

      else
      {
        v20 = 0x656661736E55;
      }

      if (!v17)
      {
        v17 = 0xE600000000000000;
      }

      if (v11 == v20 && v12 == v17)
      {
        v21 = 1;
      }

      else
      {
        v21 = sub_2281399BC();
      }
    }

    else
    {
      v21 = 0;
    }

    v37 = v21;
    v22 = v0[269];

    sub_2280B760C(v22, type metadata accessor for ModelBundleIdentifier);
  }

  else
  {
    v37 = 0;
  }

  v23 = v0[296];
  v38 = v0[295];
  v39 = v0[294];
  v40 = v0[293];
  v41 = v0[292];
  v42 = v0[291];
  v43 = v0[290];
  v24 = v0[286];
  v25 = v0[285];
  v44 = v0[289];
  v45 = v0[284];
  v46 = v0[283];
  v47 = v0[282];
  v48 = v0[281];
  v49 = v0[280];
  v50 = v0[278];
  v51 = v0[276];
  v26 = v0[274];
  v52 = v0[275];
  v53 = v0[273];
  v54 = v0[272];
  v55 = v0[271];
  v27 = v0[270];
  v56 = v0[269];
  v57 = v0[267];
  v28 = v0[243];
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);
  v29 = v26[1];
  v36 = *v26;
  v30 = v27[5];
  v31 = type metadata accessor for SummarizationResult();
  sub_2280B842C(v26 + v30, &v28[v31[5]], &qword_27D81E8C0, &unk_22813C3A0);
  sub_2280B76DC(v24, &v28[v31[6]]);
  sub_2280B76DC(v25, &v28[v31[7]]);
  sub_2280B842C(v26 + v27[6], &v28[v31[8]], &qword_27D81E598, &qword_22813B300);
  sub_2280B842C(v26 + v27[7], &v28[v31[9]], &qword_27D81E598, &qword_22813B300);
  LOBYTE(v30) = *(v23 + 33);

  sub_2280B760C(v23, type metadata accessor for SummarizationParameters);
  v32 = v31[12];
  v33 = sub_2281376EC();
  (*(*(v33 - 8) + 56))(&v28[v32], 1, 1, v33);
  *v28 = v36;
  *(v28 + 1) = v29;
  v28[v31[10]] = v30;
  v28[v31[11]] = v37 & 1;
  sub_2280B760C(v26, type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult);

  v34 = v0[1];

  return v34();
}

uint64_t sub_2280AFA04()
{
  sub_227FCB7B8(v0[281], &qword_27D81E598, &qword_22813B300);
  v28 = v0[316];
  v1 = v0[296];
  sub_227FCB7B8(v0[286], &qword_27D81E598, &qword_22813B300);
  sub_2280B760C(v1, type metadata accessor for SummarizationParameters);
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);
  v2 = v0[296];
  v3 = v0[295];
  v4 = v0[294];
  v5 = v0[293];
  v6 = v0[292];
  v7 = v0[291];
  v8 = v0[290];
  v9 = v0[289];
  v10 = v0[286];
  v11 = v0[285];
  v14 = v0[284];
  v15 = v0[283];
  v16 = v0[282];
  v17 = v0[281];
  v18 = v0[280];
  v19 = v0[278];
  v20 = v0[276];
  v21 = v0[275];
  v22 = v0[274];
  v23 = v0[273];
  v24 = v0[272];
  v25 = v0[271];
  v26 = v0[269];
  v27 = v0[267];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2280AFC1C(void *a1, uint64_t a2)
{
  BYTE8(v10) = 0;
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  MEMORY[0x22AAB1970](v6);

  MEMORY[0x22AAB1970](0x6E65746E6F63202CLL, 0xEF203A6570795474);
  v7 = *(a2 + 16);
  v8 = sub_228139B8C();
  MEMORY[0x22AAB1970](v8);

  MEMORY[0x22AAB1970](0x656C797473202C29, 0xEA0000000000203ALL);
  *&v10 = *(a2 + 32);
  sub_2281398EC();
  MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228146590);
  return *(&v10 + 1);
}

uint64_t sub_2280AFD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  *(v3 + 56) = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v5 = *(*(type metadata accessor for SummarizationParameters() - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 128) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF20, &unk_22813F8A0) + 48);

  return MEMORY[0x2822009F8](sub_2280AFE7C, 0, 0);
}

uint64_t sub_2280AFE7C()
{
  v1 = *(v0 + 72);
  if (*(v1 + 33) == 1)
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 56);
    sub_2280B7EF0(v1, v3, type metadata accessor for SummarizationParameters);
    v4 = sub_2281386FC();
    (*(*(v4 - 8) + 56))(v3 + v2, 1, 1, v4);
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v8 = *(v0 + 64) + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sanitizerFactory;
    v9 = (v1 + 40);
    v10 = swift_task_alloc();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    sub_228020974(v9, v8 + 136, sub_2280B83B4, v10, (v0 + 16));
    v12 = *(v0 + 88);
    v13 = *(v0 + 72);

    v14 = *v13;
    v15 = v13[1];
    sub_2280B7EF0(v13, v12, type metadata accessor for SummarizationParameters);
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v16);
    v18 = *(v17 + 32);
    v22 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    *(v0 + 96) = v20;
    *v20 = v0;
    v20[1] = sub_2280B0128;
    v21 = *(v0 + 80);

    return v22(v21, v14, v15, v16, v17);
  }
}

uint64_t sub_2280B0128(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = sub_2280B0338;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v9 = sub_2280B025C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2280B025C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = *(v0 + 56);
  sub_2280B76DC(*(v0 + 80), v4 + *(v0 + 128));
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 16));
  v5 = v3[1];

  *v3 = v1;
  v3[1] = v2;
  sub_2280B7EF0(v3, v4, type metadata accessor for SummarizationParameters);
  sub_2280B760C(v3, type metadata accessor for SummarizationParameters);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2280B0338()
{
  v1 = v0[11];
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 2);
  sub_2280B760C(v1, type metadata accessor for SummarizationParameters);
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2280B03CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v8 = *(type metadata accessor for SummarizationParameters() - 8);
  v6[17] = v8;
  v6[18] = *(v8 + 64);
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280B04C4, 0, 0);
}

uint64_t sub_2280B04C4()
{
  if (qword_2813C4940 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = type metadata accessor for Signpost(0);
  v8 = __swift_project_value_buffer(v7, qword_2813C8918);
  *(v0 + 160) = v8;
  sub_2280B8494(v6, v0 + 16);
  sub_2280B7EF0(v5, v1, type metadata accessor for SummarizationParameters);
  v9 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v0 + 168) = v10;
  sub_227FD20C0((v0 + 16), v10 + 16);
  sub_2280B7E88(v1, v10 + v9, type metadata accessor for SummarizationParameters);
  v11 = swift_allocObject();
  *(v0 + 176) = v11;
  *(v11 + 16) = sub_2280B82B0;
  *(v11 + 24) = v10;

  sub_2281324C4(v8, v11);
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_2280B069C;
  v13 = *(v0 + 112);
  v14 = *(v0 + 120);
  v15 = *(v0 + 104);
  v16 = *(v0 + 80);

  return sub_2280B09B8(v16, v13);
}

uint64_t sub_2280B069C()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_2280B0868;
  }

  else
  {
    v3 = sub_2280B07B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2280B07B0()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[16];
  sub_2281324D4(v3, v0[20], v0[22]);
  sub_2280B760C(v3, type metadata accessor for SignpostToken);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2280B0868()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[16];
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = sub_2280B82B0;
  v7[4] = v2;
  swift_beginAccess();
  v8 = *(v3 + 24);
  *(v3 + 16) = sub_2280B8660;
  *(v3 + 24) = v7;

  v9 = v1;

  swift_willThrow();
  sub_2281324D4(v6, v5, v3);
  sub_2280B760C(v6, type metadata accessor for SignpostToken);

  v10 = v0[1];
  v11 = v0[24];

  return v10();
}

uint64_t sub_2280B09B8(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v3[23] = *v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280B0ABC, 0, 0);
}

uint64_t sub_2280B0ABC()
{
  if (*(*(v0 + 168) + 33))
  {
    v1 = *(v0 + 160);
    v2 = sub_2281386FC();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
    v4 = *(v0 + 224);
    v3 = *(v0 + 232);
    v6 = *(v0 + 208);
    v5 = *(v0 + 216);
    v8 = *(v0 + 192);
    v7 = *(v0 + 200);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {

    if (qword_2813C4620 != -1)
    {
      swift_once();
    }

    if (byte_2813C4629 == 1)
    {
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
      }

      v11 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v11 = &qword_2813C76F8;
    }

    v12 = *v11;
    v13 = qword_2813C7038;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 176);
    v15 = *(v0 + 184);
    v16 = *(v0 + 168);
    v17 = type metadata accessor for ModelBundleIdentifier();
    v18 = __swift_project_value_buffer(v17, qword_2813C8B08);
    v19 = sub_22808EED0(v18);
    v21 = v20;

    if (v21)
    {
      v22 = 2048;
    }

    else
    {
      v22 = v19;
    }

    v23 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_configuration;
    v24 = type metadata accessor for TokenCounter();
    *(v0 + 48) = v24;
    *(v0 + 56) = &off_283B5BC30;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 24));
    sub_2280B7EF0(v14 + v23, boxed_opaque_existential_1, type metadata accessor for SummarizationSession.Configuration);
    v26 = (boxed_opaque_existential_1 + *(v24 + 20));
    v26[3] = v15;
    v26[4] = &off_283B5E840;
    *v26 = v14;
    sub_2280B8494((v16 + 5), v0 + 64);
    *(v0 + 112) = 0;
    *(v0 + 16) = v22;
    v27 = *v16;
    v28 = v16[1];

    v29 = swift_task_alloc();
    *(v0 + 240) = v29;
    *v29 = v0;
    v29[1] = sub_2280B0E0C;

    return sub_2280C1424(v27, v28);
  }
}

uint64_t sub_2280B0E0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v7 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v5 = sub_2280B18F0;
  }

  else
  {
    v5 = sub_2280B0F20;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280B0F20()
{
  v1 = v0[32];
  v2 = (v0[21] + 40);
  v3 = v0[22] + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sanitizerFactory;
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_228020974(v2, v3 + 176, sub_2280B83AC, v4, v0 + 15);
  v5 = v0[31];
  if (v1)
  {
    sub_228085A2C((v0 + 2));

    v7 = v0[28];
    v6 = v0[29];
    v9 = v0[26];
    v8 = v0[27];
    v11 = v0[24];
    v10 = v0[25];

    v12 = v0[1];
LABEL_9:

    return v12();
  }

  v13 = v0[29];

  v14 = sub_2281386FC();
  v0[33] = v14;
  v15 = *(v14 - 8);
  v0[34] = v15;
  v16 = *(v15 + 56);
  v0[35] = v16;
  v0[36] = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  result = v16(v13, 1, 1, v14);
  v18 = *(v5 + 16);
  v0[37] = v18;
  if (!v18)
  {
LABEL_8:
    v29 = v0[31];
    v30 = v0[29];
    v31 = v0[20];

    sub_228085A2C((v0 + 2));
    sub_2280B76DC(v30, v31);
    __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 15);
    v33 = v0[28];
    v32 = v0[29];
    v35 = v0[26];
    v34 = v0[27];
    v37 = v0[24];
    v36 = v0[25];

    v12 = v0[1];
    goto LABEL_9;
  }

  v19 = 0;
  while (1)
  {
    v0[38] = v19;
    v20 = v0[31];
    if (v19 >= *(v20 + 16))
    {
      __break(1u);
      return result;
    }

    v21 = v0[33];
    v22 = v0[34];
    v24 = v0[28];
    v23 = v0[29];
    v25 = v20 + 16 * v19;
    v26 = *(v25 + 32);
    v27 = *(v25 + 40);
    v0[39] = v27;
    sub_2280B842C(v23, v24, &qword_27D81E598, &qword_22813B300);
    v28 = *(v22 + 48);
    v0[40] = v28;
    v0[41] = (v22 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v28(v24, 1, v21) == 1)
    {
      break;
    }

    result = sub_227FCB7B8(v0[28], &qword_27D81E598, &qword_22813B300);
    v19 = v0[38] + 1;
    if (v19 == v0[37])
    {
      goto LABEL_8;
    }
  }

  v38 = v0[28];

  sub_227FCB7B8(v38, &qword_27D81E598, &qword_22813B300);
  sub_2281395DC();
  v39 = v0[18];
  v40 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 15, v39);
  v41 = *(v40 + 32);
  v45 = (v41 + *v41);
  v42 = v41[1];
  v43 = swift_task_alloc();
  v0[42] = v43;
  *v43 = v0;
  v43[1] = sub_2280B1354;
  v44 = v0[26];

  return v45(v44, v26, v27, v39, v40);
}

uint64_t sub_2280B1354()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  v2[43] = v0;

  v5 = v2[39];
  if (v0)
  {
    v6 = v2[31];

    v7 = sub_2280B199C;
  }

  else
  {

    v7 = sub_2280B14B0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2280B14B0()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[33];
  v4 = v0[29];
  v5 = v0[24];
  sub_2280B76DC(v0[26], v0[27]);
  sub_2280B76DC(v4, v5);
  if (v2(v5, 1, v3) == 1)
  {
    v7 = v0[40];
    v6 = v0[41];
    v8 = v0[33];
    v9 = v0[24];
    sub_2280B76DC(v0[27], v0[25]);
    if (v7(v9, 1, v8) != 1)
    {
      sub_227FCB7B8(v0[24], &qword_27D81E598, &qword_22813B300);
    }
  }

  else
  {
    v11 = v0[35];
    v10 = v0[36];
    v12 = v0[33];
    v13 = v0[34];
    v15 = v0[24];
    v14 = v0[25];
    sub_227FCB7B8(v0[27], &qword_27D81E598, &qword_22813B300);
    (*(v13 + 32))(v14, v15, v12);
    v11(v14, 0, 1, v12);
  }

  result = sub_2280B76DC(v0[25], v0[29]);
  v17 = v0[38] + 1;
  if (v17 == v0[37])
  {
LABEL_10:
    v28 = v0[31];
    v29 = v0[29];
    v30 = v0[20];

    sub_228085A2C((v0 + 2));
    sub_2280B76DC(v29, v30);
    __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 15);
    v32 = v0[28];
    v31 = v0[29];
    v34 = v0[26];
    v33 = v0[27];
    v36 = v0[24];
    v35 = v0[25];

    v37 = v0[1];
LABEL_11:

    return v37();
  }

  else
  {
    v18 = v0[43];
    while (1)
    {
      v0[38] = v17;
      v19 = v0[31];
      if (v17 >= *(v19 + 16))
      {
        __break(1u);
        return result;
      }

      v20 = v0[33];
      v21 = v0[34];
      v23 = v0[28];
      v22 = v0[29];
      v24 = v19 + 16 * v17;
      v25 = *(v24 + 32);
      v26 = *(v24 + 40);
      v0[39] = v26;
      sub_2280B842C(v22, v23, &qword_27D81E598, &qword_22813B300);
      v27 = *(v21 + 48);
      v0[40] = v27;
      v0[41] = (v21 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v27(v23, 1, v20) == 1)
      {
        break;
      }

      result = sub_227FCB7B8(v0[28], &qword_27D81E598, &qword_22813B300);
      v17 = v0[38] + 1;
      if (v17 == v0[37])
      {
        goto LABEL_10;
      }
    }

    v38 = v0[28];

    sub_227FCB7B8(v38, &qword_27D81E598, &qword_22813B300);
    sub_2281395DC();
    if (v18)
    {
      v39 = v0[31];
      v40 = v0[29];

      sub_227FCB7B8(v40, &qword_27D81E598, &qword_22813B300);
      sub_228085A2C((v0 + 2));
      __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 15);
      v42 = v0[28];
      v41 = v0[29];
      v44 = v0[26];
      v43 = v0[27];
      v46 = v0[24];
      v45 = v0[25];

      v37 = v0[1];
      goto LABEL_11;
    }

    v47 = v0[18];
    v48 = v0[19];
    __swift_project_boxed_opaque_existential_1(v0 + 15, v47);
    v49 = *(v48 + 32);
    v53 = (v49 + *v49);
    v50 = v49[1];
    v51 = swift_task_alloc();
    v0[42] = v51;
    *v51 = v0;
    v51[1] = sub_2280B1354;
    v52 = v0[26];

    return v53(v52, v25, v26, v47, v48);
  }
}

uint64_t sub_2280B18F0()
{
  sub_228085A2C((v0 + 2));
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2280B199C()
{
  sub_227FCB7B8(v0[29], &qword_27D81E598, &qword_22813B300);
  sub_228085A2C((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 15);
  v1 = v0[43];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2280B1A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(type metadata accessor for SummarizationParameters() - 8);
  v5[12] = v6;
  v5[13] = *(v6 + 64);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280B1B34, 0, 0);
}

uint64_t sub_2280B1B34()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  sub_2280B8494(*(v0 + 80), v0 + 16);
  sub_2280B7EF0(v3, v1, type metadata accessor for SummarizationParameters);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 120) = v6;
  sub_227FD20C0((v0 + 16), v6 + 16);
  sub_2280B7E88(v1, v6 + v5, type metadata accessor for SummarizationParameters);
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_2280B1C74;
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 56);

  return sub_2280B1E28(v10, v8, sub_2280B864C, v6);
}

uint64_t sub_2280B1C74()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2280B1DBC, 0, 0);
  }

  else
  {
    v5 = v3[14];
    v4 = v3[15];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2280B1DBC()
{
  v2 = v0[14];
  v1 = v0[15];

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t sub_2280B1E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300) - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v7 = sub_2281386FC();
  v5[33] = v7;
  v8 = *(v7 - 8);
  v5[34] = v8;
  v9 = *(v8 + 64) + 15;
  v5[35] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0) - 8) + 64) + 15;
  v5[36] = swift_task_alloc();
  v11 = type metadata accessor for GMSModelInfo(0);
  v5[37] = v11;
  v12 = *(v11 - 8);
  v5[38] = v12;
  v13 = *(v12 + 64) + 15;
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v14 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF28, &unk_22813F8F0);
  v5[44] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v17 = sub_2281376EC();
  v5[46] = v17;
  v18 = *(v17 - 8);
  v5[47] = v18;
  v19 = *(v18 + 64) + 15;
  v5[48] = swift_task_alloc();
  v20 = sub_228137A9C();
  v5[49] = v20;
  v21 = *(v20 - 8);
  v5[50] = v21;
  v22 = *(v21 + 64) + 15;
  v5[51] = swift_task_alloc();
  v23 = type metadata accessor for SummarizationParameters();
  v5[52] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v5[53] = swift_task_alloc();
  v25 = *(*(sub_228137AEC() - 8) + 64) + 15;
  v5[54] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D8, &unk_22813E420) - 8) + 64) + 15;
  v5[55] = swift_task_alloc();
  v27 = sub_228137A3C();
  v5[56] = v27;
  v28 = *(v27 - 8);
  v5[57] = v28;
  v29 = *(v28 + 64) + 15;
  v5[58] = swift_task_alloc();
  v30 = sub_2281377CC();
  v5[59] = v30;
  v31 = *(v30 - 8);
  v5[60] = v31;
  v32 = *(v31 + 64) + 15;
  v5[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280B224C, 0, 0);
}

uint64_t sub_2280B224C()
{
  v1 = v0[61];
  v2 = v0[31];
  v3 = v0[28];
  sub_2280B8494(v3 + 40, (v0 + 2));
  v4 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_modelBundleIdentifier;
  v0[62] = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_modelBundleIdentifier;
  v5 = v2 + v4;
  sub_228094574(v2 + v4, (v3 + 40), v1);
  if (*(v3 + 33) == 1)
  {
    v6 = v0[57];
    v7 = v0[58];
    v8 = v0[55];
    v9 = v0[56];
    v10 = v0[54];
    v0[15] = v0[49];
    v0[16] = &off_2813C8678;
    __swift_allocate_boxed_opaque_existential_1(v0 + 12);
    v11 = sub_228137A7C();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    (*(v6 + 104))(v7, *MEMORY[0x277D0E578], v9);
    sub_228137AAC();
    sub_228137A0C();
    v12 = sub_228137A1C();
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
    sub_228137A8C();
  }

  else
  {
    v13 = (v3 + 40);
    v14 = v0[31] + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sanitizerFactory;
    sub_228021FA8(v13, (v0 + 12));
  }

  v15 = v0[52];
  v16 = v0[53];
  v18 = v0[50];
  v17 = v0[51];
  v19 = v0[49];
  v20 = v0[28];
  sub_227FD20C0(v0 + 6, (v0 + 7));
  sub_2280B7EF0(v20, v16, type metadata accessor for SummarizationParameters);
  v21 = v0[10];
  v22 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v21);
  (*(v22 + 40))(v21, v22);
  (*(v18 + 40))(v16 + *(v15 + 36), v17, v19);
  sub_2281395DC();
  if (qword_2813C73E8 != -1)
  {
    swift_once();
  }

  v23 = off_2813C73F0;
  v0[63] = off_2813C73F0;
  v24 = v23[2];
  v25 = swift_task_alloc();
  v25[2] = v5;
  v25[3] = v0 + 2;
  v25[4] = v23;
  os_unfair_lock_lock((v24 + 24));
  sub_2280B8318((v24 + 16));
  os_unfair_lock_unlock((v24 + 24));

  if (qword_2813C4980 != -1)
  {
    swift_once();
  }

  v26 = v0[43];
  v28 = v0[29];
  v27 = v0[30];
  v29 = type metadata accessor for Signpost(0);
  v0[64] = v29;
  v30 = __swift_project_value_buffer(v29, qword_2813C89D8);
  v0[65] = v30;
  v31 = swift_allocObject();
  v0[66] = v31;
  *(v31 + 16) = v28;
  *(v31 + 24) = v27;
  v32 = swift_allocObject();
  v0[67] = v32;
  *(v32 + 16) = sub_2280B8650;
  *(v32 + 24) = v31;

  sub_2281324C4(v30, v32);
  v33 = swift_task_alloc();
  v0[68] = v33;
  *v33 = v0;
  v33[1] = sub_2280B27C0;
  v34 = v0[53];
  v35 = v0[45];
  v36 = v0[31];

  return sub_2280B3998(v35, v34, v36);
}

uint64_t sub_2280B27C0()
{
  v2 = *(*v1 + 544);
  v5 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = sub_2280B3040;
  }

  else
  {
    v3 = sub_2280B28D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2280B28D4()
{
  v1 = v0[66];
  v3 = v0[47];
  v2 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v6 = v0[43];
  v7 = v0[44];
  v8 = v0[36];
  v15 = v0[31];
  v16 = v0[62];
  sub_2281324D4(v6, v0[65], v0[67]);
  sub_2280B760C(v6, type metadata accessor for SignpostToken);

  v9 = (v5 + *(v7 + 48));
  v0[70] = *v9;
  v0[71] = v9[1];
  (*(v3 + 32))(v2, v5, v4);
  (*(v3 + 16))(v8, v2, v4);
  (*(v3 + 56))(v8, 0, 1, v4);
  v10 = swift_task_alloc();
  v0[72] = v10;
  *v10 = v0;
  v10[1] = sub_2280B2A74;
  v11 = v0[63];
  v12 = v0[40];
  v13 = v0[36];

  return sub_228011668(v12, v15 + v16, (v0 + 2), v13);
}

uint64_t sub_2280B2A74()
{
  v1 = *(*v0 + 576);
  v2 = *(*v0 + 288);
  v4 = *v0;

  sub_227FCB7B8(v2, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_2280B2B9C, 0, 0);
}

uint64_t sub_2280B2B9C()
{
  if (qword_2813C4978 != -1)
  {
    swift_once();
  }

  v45 = v0[69];
  v48 = v0[71];
  v1 = v0[61];
  v39 = v0[48];
  v42 = v0[70];
  v2 = v0[42];
  v3 = v0[40];
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[29];
  v7 = __swift_project_value_buffer(v0[64], qword_2813C89C0);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2280B8344;
  *(v9 + 24) = v8;

  v51 = v7;
  sub_2281324C8(v7, v9);
  sub_2280B3FF4(v5, v1, v3, (v0 + 2), v39, v42, v48);
  if (v45)
  {
    v10 = swift_allocObject();
    v10[2] = v45;
    v10[3] = sub_2280B8344;
    v10[4] = v8;
    v11 = v0[42];
    swift_beginAccess();
    v12 = *(v9 + 24);
    *(v9 + 16) = sub_2280B8668;
    *(v9 + 24) = v10;

    v13 = v45;

    swift_willThrow();
    sub_2281324D8(v11, v7, v9);
    sub_2280B760C(v11, type metadata accessor for SignpostToken);
  }

  else
  {
    v40 = v0[70];
    v43 = v0[71];
    v15 = v0[47];
    v46 = v0[46];
    v49 = v0[48];
    v16 = v0[42];
    v17 = v0[40];
    v18 = v0[38];
    v37 = v0[37];
    v19 = v0[33];
    v20 = v0[34];
    v21 = v0[27];
    sub_2281324D8(v16, v51, v9);
    sub_2280B760C(v16, type metadata accessor for SignpostToken);

    v22 = type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult(0);
    v23 = v22[5];
    sub_2280B7EF0(v17, &v21[v23], type metadata accessor for GMSModelInfo);
    (*(v18 + 56))(&v21[v23], 0, 1, v37);
    v24 = *(v20 + 56);
    v24(&v21[v22[6]], 1, 1, v19);
    v24(&v21[v22[7]], 1, 1, v19);
    *v21 = v40;
    *(v21 + 1) = v43;
    sub_2280B760C(v17, type metadata accessor for GMSModelInfo);
    (*(v15 + 8))(v49, v46);
    v26 = v0[60];
    v25 = v0[61];
    v28 = v0[58];
    v27 = v0[59];
    v30 = v0[54];
    v29 = v0[55];
    v31 = v0[51];
    v32 = v0[48];
    v34 = v0[45];
    v35 = v0[43];
    v36 = v0[42];
    v38 = v0[41];
    v41 = v0[40];
    v44 = v0[39];
    v47 = v0[36];
    v50 = v0[35];
    v52 = v0[32];
    sub_2280B760C(v0[53], type metadata accessor for SummarizationParameters);
    __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 7);
    (*(v26 + 8))(v25, v27);
    __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 2);

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_2280B3040()
{
  v1 = v0[69];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[47];
  v16 = v0[46];
  v6 = v0[43];
  v7 = v0[36];
  v17 = v0[31];
  v18 = v0[62];
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = sub_2280B8650;
  v8[4] = v3;
  swift_beginAccess();
  v9 = *(v2 + 24);
  *(v2 + 16) = sub_2280B8664;
  *(v2 + 24) = v8;

  v10 = v1;

  swift_willThrow();
  sub_2281324D4(v6, v4, v2);
  sub_2280B760C(v6, type metadata accessor for SignpostToken);

  (*(v5 + 56))(v7, 1, 1, v16);
  v11 = swift_task_alloc();
  v0[73] = v11;
  *v11 = v0;
  v11[1] = sub_2280B3208;
  v12 = v0[63];
  v13 = v0[39];
  v14 = v0[36];

  return sub_228011668(v13, v17 + v18, (v0 + 2), v14);
}

uint64_t sub_2280B3208()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 288);
  v4 = *v0;

  sub_227FCB7B8(v2, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_2280B3330, 0, 0);
}

uint64_t sub_2280B3330()
{
  if (qword_2813C4978 != -1)
  {
    swift_once();
  }

  v1 = v0[61];
  v2 = v0[41];
  v3 = v0[39];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  v7 = __swift_project_value_buffer(v0[64], qword_2813C89C0);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2280B8654;
  *(v9 + 24) = v8;

  sub_2281324C8(v7, v9);
  sub_2280B61A8(v4, v1, v3, (v0 + 2));
  v10 = v0[69];
  v11 = v0[41];
  v12 = v0[33];
  v13 = v0[34];
  v14 = v0[32];
  sub_2281324D8(v11, v7, v9);
  sub_2280B760C(v11, type metadata accessor for SignpostToken);

  v0[26] = v10;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  v19 = v0[32];
  v18 = v0[33];
  if (v16)
  {
    v20 = v0[39];
    v22 = v0[34];
    v21 = v0[35];
    v23 = v0[31];
    v24 = v0[27];
    v17(v0[32], 0, 1, v0[33]);
    (*(v22 + 32))(v21, v19, v18);
    sub_2280B718C(v21, v20, v24);
    v25 = v0[69];
    v39 = v0[39];
    (*(v0[34] + 8))(v0[35], v0[33]);

    sub_2280B760C(v39, type metadata accessor for GMSModelInfo);
    v41 = v0[60];
    v40 = v0[61];
    v43 = v0[58];
    v42 = v0[59];
    v45 = v0[54];
    v44 = v0[55];
    v46 = v0[51];
    v47 = v0[48];
    v49 = v0[45];
    v51 = v0[43];
    v53 = v0[42];
    v55 = v0[41];
    v56 = v0[40];
    v58 = v0[39];
    v60 = v0[36];
    v62 = v0[35];
    v64 = v0[32];
    sub_2280B760C(v0[53], type metadata accessor for SummarizationParameters);
    __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 7);
    (*(v41 + 8))(v40, v42);
  }

  else
  {
    v26 = v0[69];
    v27 = v0[53];
    v28 = v0[39];
    v17(v0[32], 1, 1, v0[33]);
    sub_227FCB7B8(v19, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
    sub_2280B760C(v28, type metadata accessor for GMSModelInfo);
    sub_2280B760C(v27, type metadata accessor for SummarizationParameters);
    __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 7);
    v63 = v0[69];
    v29 = v0[58];
    v30 = v0[54];
    v31 = v0[55];
    v32 = v0[53];
    v33 = v0[51];
    v34 = v0[48];
    v35 = v0[45];
    v36 = v0[43];
    v50 = v0[42];
    v52 = v0[41];
    v54 = v0[40];
    v37 = v0[39];
    v57 = v0[36];
    v59 = v0[35];
    v61 = v0[32];
    (*(v0[60] + 8))(v0[61], v0[59]);
  }

  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 2);

  v48 = v0[1];

  return v48();
}

uint64_t sub_2280B3998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_2281376EC();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = *(*(type metadata accessor for SummarizationParameters() - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v8 = sub_2281377CC();
  v3[15] = v8;
  v9 = *(v8 - 8);
  v3[16] = v9;
  v10 = *(v9 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280B3AF0, 0, 0);
}

uint64_t sub_2280B3AF0()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[8];
  v5 = v0[9];
  sub_2280B7EF0(v4, v2, type metadata accessor for SummarizationParameters);
  v6 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_modelBundleIdentifier;
  sub_2280B8494(v4 + 40, (v0 + 2));
  sub_228094574(v5 + v6, v0 + 2, v1);
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 2);
  sub_2280B760C(v2, type metadata accessor for SummarizationParameters);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner), *(v5 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner + 24));
  sub_2280B7EF0(v4, v3, type metadata accessor for SummarizationParameters);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_2280B3C44;
  v8 = v0[17];
  v9 = v0[12];
  v10 = v0[13];

  return sub_227FFF010(v9, v10, v8);
}

uint64_t sub_2280B3C44()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  sub_2280B760C(*(v2 + 104), type metadata accessor for SummarizationParameters);
  if (v0)
  {
    v5 = sub_2280B3F48;
  }

  else
  {
    v5 = sub_2280B3D8C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280B3D8C()
{
  v1 = v0[19];
  (*(v0[11] + 16))(v0[7], v0[12], v0[10]);
  v2 = sub_227FC54CC();
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  if (v1)
  {
    v7 = *(v0[11] + 8);
    v7(v0[12], v0[10]);
    (*(v5 + 8))(v4, v6);
    v8 = v0[17];
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    v7(v0[7], v0[10]);
  }

  else
  {
    v13 = v2;
    v14 = v3;
    v21 = v0[14];
    v22 = v0[13];
    v15 = v0[11];
    v16 = v0[12];
    v17 = v0[10];
    v18 = v0[7];
    v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF28, &unk_22813F8F0) + 48));
    (*(v15 + 8))(v16, v17);
    (*(v5 + 8))(v4, v6);
    *v19 = v13;
    v19[1] = v14;
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_2280B3F48()
{
  v1 = v0[19];
  v2 = v0[14];
  v4 = v0[12];
  v3 = v0[13];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2280B3FF4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v343 = a7;
  v334 = a6;
  v323 = a5;
  v357 = a4;
  v338 = a2;
  v337 = sub_228136CDC();
  v336 = *(v337 - 8);
  v8 = *(v336 + 64);
  MEMORY[0x28223BE20](v337, v9);
  v335 = &v312 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E308, &unk_22813F910);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v322 = &v312 - v14;
  v325 = sub_2281378AC();
  v327 = *(v325 - 8);
  v15 = *(v327 + 64);
  v17 = MEMORY[0x28223BE20](v325, v16);
  v317 = &v312 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v324 = &v312 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v318 = &v312 - v23;
  v24 = sub_22813771C();
  v332 = *(v24 - 8);
  v25 = *(v332 + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v319 = &v312 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v320 = &v312 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E310, &qword_22813A7C0);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v31 - 8, v33);
  v331 = &v312 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v36);
  v341 = &v312 - v37;
  v330 = sub_22813716C();
  v329 = *(v330 - 8);
  v38 = *(v329 + 64);
  MEMORY[0x28223BE20](v330, v39);
  v328 = &v312 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2281377CC();
  v353 = *(v41 - 8);
  v42 = v353[8];
  v44 = MEMORY[0x28223BE20](v41, v43);
  v347 = &v312 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44, v46);
  v49 = &v312 - v48;
  v51 = MEMORY[0x28223BE20](v47, v50);
  v53 = &v312 - v52;
  v55 = MEMORY[0x28223BE20](v51, v54);
  v354 = &v312 - v56;
  v58 = MEMORY[0x28223BE20](v55, v57);
  v356 = &v312 - v59;
  MEMORY[0x28223BE20](v58, v60);
  v352 = &v312 - v61;
  v339 = type metadata accessor for GMSModelInfo(0);
  v62 = *(*(v339 - 1) + 64);
  v64 = MEMORY[0x28223BE20](v339, v63);
  v351 = &v312 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x28223BE20](v64, v66);
  v350 = &v312 - v68;
  v70 = MEMORY[0x28223BE20](v67, v69);
  v349 = &v312 - v71;
  MEMORY[0x28223BE20](v70, v72);
  v358 = (&v312 - v73);
  v74 = sub_22813882C();
  v75 = *(v74 - 8);
  v76 = *(v75 + 64);
  v78 = MEMORY[0x28223BE20](v74, v77);
  v348 = &v312 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x28223BE20](v78, v80);
  v342 = &v312 - v82;
  v84 = MEMORY[0x28223BE20](v81, v83);
  v326 = &v312 - v85;
  v87 = MEMORY[0x28223BE20](v84, v86);
  v321 = &v312 - v88;
  v90 = MEMORY[0x28223BE20](v87, v89);
  v92 = &v312 - v91;
  if (qword_2813C49E0 != -1)
  {
    v311 = v90;
    swift_once();
    v90 = v311;
  }

  v93 = v90;
  v94 = __swift_project_value_buffer(v90, qword_2813C8A20);
  v346 = v94;
  if (qword_2813C49C8 != -1)
  {
    swift_once();
    v94 = v346;
  }

  v95 = v94;
  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v95 = __swift_project_value_buffer(v93, qword_2813C4990);
  }

  v333 = v24;
  v96 = *(v75 + 16);
  v359 = v93;
  v345 = v75 + 16;
  v344 = v96;
  v96(v92, v95, v93);
  sub_2280B8494(v357, &v369);
  sub_2280B7EF0(a3, v358, type metadata accessor for GMSModelInfo);
  sub_2280B7EF0(a3, v349, type metadata accessor for GMSModelInfo);
  sub_2280B7EF0(a3, v350, type metadata accessor for GMSModelInfo);
  sub_2280B7EF0(a3, v351, type metadata accessor for GMSModelInfo);
  v97 = v353;
  v98 = v353[2];
  v99 = v338;
  v98(v352, v338, v41);
  v98(v356, v99, v41);
  v98(v354, v99, v41);
  v98(v53, v99, v41);
  v98(v49, v99, v41);
  v340 = v53;
  v100 = v49;
  v101 = v92;
  v102 = v347;
  v103 = v99;
  v104 = v75;
  v98(v347, v103, v41);
  v105 = v359;
  v106 = sub_22813880C();
  v107 = sub_2281396BC();
  v108 = os_log_type_enabled(v106, v107);
  v355 = v104;
  if (v108)
  {
    v314 = v107;
    v315 = v106;
    v316 = v41;
    v338 = v101;
    v109 = swift_slowAlloc();
    v313 = swift_slowAlloc();
    v365 = v313;
    *v109 = 136318210;
    v110 = v370;
    v111 = v371;
    __swift_project_boxed_opaque_existential_1(&v369, v370);
    v112 = (*(v111 + 16))(v110, v111);
    v114 = v113;
    __swift_destroy_boxed_opaque_existential_1Tm_10(&v369);
    v115 = sub_227FCC340(v112, v114, &v365);

    *(v109 + 4) = v115;
    *(v109 + 12) = 2082;
    v116 = (v358 + v339[5]);
    v117 = *v116;
    v118 = v116[1];
    v119 = v358 + v339[9];
    v120 = *v119;
    v121 = *(v119 + 1);
    v361 = v117;
    v362 = v118;
    v312 = v100;
    if (v121)
    {
      v367 = 30240;
      v368 = 0xE200000000000000;

      MEMORY[0x22AAB1970](v120, v121);
      MEMORY[0x22AAB1970](v367, v368);

      v117 = v361;
      v118 = v362;
    }

    else
    {
    }

    v123 = v356;
    v124 = v329;
    v125 = v349;
    sub_2280B760C(v358, type metadata accessor for GMSModelInfo);
    v126 = sub_227FCC340(v117, v118, &v365);

    *(v109 + 14) = v126;
    *(v109 + 22) = 2082;
    v127 = v339;
    v128 = sub_2280B7360(*(v125 + v339[6]), *(v125 + v339[6] + 8), *(v125 + v339[10]), *(v125 + v339[10] + 8));
    v130 = v129;
    sub_2280B760C(v125, type metadata accessor for GMSModelInfo);
    v131 = sub_227FCC340(v128, v130, &v365);

    *(v109 + 24) = v131;
    *(v109 + 32) = 2082;
    v132 = v350;
    v133 = sub_2280B7360(*(v350 + v127[7]), *(v350 + v127[7] + 8), *(v350 + v127[11]), *(v350 + v127[11] + 8));
    v135 = v134;
    sub_2280B760C(v132, type metadata accessor for GMSModelInfo);
    v136 = sub_227FCC340(v133, v135, &v365);

    *(v109 + 34) = v136;
    *(v109 + 42) = 2082;
    v137 = v351;
    v138 = sub_2280B7360(*(v351 + v127[8]), *(v351 + v127[8] + 8), *(v351 + v127[12]), *(v351 + v127[12] + 8));
    v140 = v139;
    sub_2280B760C(v137, type metadata accessor for GMSModelInfo);
    v141 = sub_227FCC340(v138, v140, &v365);

    *(v109 + 44) = v141;
    *(v109 + 52) = 2082;
    v142 = v328;
    sub_2281370CC();
    v143 = sub_228136FEC();
    v145 = v144;
    v146 = *(v124 + 8);
    v147 = v330;
    v146(v142, v330);
    v148 = sub_227FCC340(v143, v145, &v365);

    *(v109 + 54) = v148;
    *(v109 + 62) = 2082;
    v149 = v340;
    if (qword_2813C8758 != -1)
    {
      swift_once();
    }

    sub_228139B6C();
    v150 = sub_228136FEC();
    v151 = v142;
    v153 = v152;
    v146(v151, v147);
    v154 = sub_227FCC340(v150, v153, &v365);

    *(v109 + 64) = v154;
    *(v109 + 72) = 2082;
    v155 = v352;
    v156 = sub_22813776C();
    v157 = v316;
    if (v158)
    {
      v159 = v353[1];
      v159(v155, v316);
      v160 = 0xE300000000000000;
      v161 = 7104878;
    }

    else
    {
      v361 = v156;
      v162 = sub_2281392EC();
      v160 = v163;
      v159 = v353[1];
      v159(v155, v157);
      v161 = v162;
    }

    v164 = v333;
    v165 = v312;
    v166 = sub_227FCC340(v161, v160, &v365);

    *(v109 + 74) = v166;
    *(v109 + 82) = 2082;
    v167 = v341;
    sub_2281377BC();
    v168 = v167;
    v169 = v331;
    sub_2280B842C(v168, v331, &qword_27D81E310, &qword_22813A7C0);
    v170 = v332;
    if ((*(v332 + 48))(v169, 1, v164) == 1)
    {
      sub_227FCB7B8(v169, &qword_27D81E310, &qword_22813A7C0);
      v171 = 0xE300000000000000;
      v172 = 7104878;
    }

    else
    {
      v173 = v320;
      (*(v170 + 32))(v320, v169, v164);
      (*(v170 + 16))(v319, v173, v164);
      v172 = sub_2281392EC();
      v174 = v170;
      v171 = v175;
      v176 = v173;
      v123 = v356;
      (*(v174 + 8))(v176, v164);
    }

    sub_227FCB7B8(v341, &qword_27D81E310, &qword_22813A7C0);
    v159(v123, v157);
    v177 = sub_227FCC340(v172, v171, &v365);

    *(v109 + 84) = v177;
    *(v109 + 92) = 2082;
    v178 = v354;
    v179 = sub_22813774C();
    if (v180)
    {
      v159(v178, v157);
      v181 = 0xE300000000000000;
      v182 = 7104878;
    }

    else
    {
      v361 = v179;
      v183 = sub_2281392EC();
      v184 = v178;
      v185 = v183;
      v181 = v186;
      v159(v184, v157);
      v182 = v185;
    }

    v187 = sub_227FCC340(v182, v181, &v365);

    *(v109 + 94) = v187;
    *(v109 + 102) = 2082;
    v188 = sub_22813773C();
    if (v189)
    {
      v159(v149, v157);
      v190 = 0xE300000000000000;
      v191 = 7104878;
    }

    else
    {
      v361 = v188;
      v192 = sub_2281392EC();
      v190 = v193;
      v159(v149, v157);
      v191 = v192;
    }

    v194 = sub_227FCC340(v191, v190, &v365);

    *(v109 + 104) = v194;
    *(v109 + 112) = 2082;
    v195 = sub_22813779C();
    v196 = 7104878;
    if (v197)
    {
      v159(v165, v157);
      v198 = 0xE300000000000000;
      v199 = 7104878;
    }

    else
    {
      v361 = v195;
      v200 = sub_2281392EC();
      v198 = v201;
      v159(v165, v157);
      v199 = v200;
    }

    v202 = sub_227FCC340(v199, v198, &v365);

    *(v109 + 114) = v202;
    *(v109 + 122) = 2082;
    v203 = v347;
    v204 = sub_22813777C();
    if (v205)
    {
      v159(v203, v157);
      v206 = 0xE300000000000000;
    }

    else
    {
      v361 = v204;
      v196 = sub_2281392EC();
      v206 = v207;
      v159(v203, v157);
    }

    v208 = sub_227FCC340(v196, v206, &v365);

    *(v109 + 124) = v208;
    v209 = v315;
    _os_log_impl(&dword_227FC3000, v315, v314, "\n--------------------------------------------------------------------------------\n# Inference details for request %s\n--------------------------------------------------------------------------------\nAdapter: %{public}s\nTokenizer: %{public}s\nBase Model: %{public}s\nDraft Model: %{public}s\nDevice Locale: %{public}s\nInference Locale: %{public}s\n--------------------------------------------------------------------------------\n# Decoding Parameters\n--------------------------------------------------------------------------------\nmaximumTokens: %{public}s\nstrategy: %{public}s\ntemperature: %{public}s\nrandomSeed: %{public}s\ntimeout: %{public}s\npromptLookupDraftSteps: %{public}s\n--------------------------------------------------------------------------------", v109, 0x84u);
    v210 = v313;
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v210, -1, -1);
    MEMORY[0x22AAB28A0](v109, -1, -1);

    v356 = *(v355 + 8);
    (v356)(v338, v359);
  }

  else
  {

    v122 = v97[1];
    v122(v102, v41);
    v122(v100, v41);
    v122(v340, v41);
    v122(v354, v41);
    v122(v356, v41);
    v122(v352, v41);
    v356 = *(v104 + 8);
    (v356)(v101, v105);
    __swift_destroy_boxed_opaque_existential_1Tm_10(&v369);
    sub_2280B760C(v358, type metadata accessor for GMSModelInfo);
    sub_2280B760C(v349, type metadata accessor for GMSModelInfo);
    sub_2280B760C(v350, type metadata accessor for GMSModelInfo);
    sub_2280B760C(v351, type metadata accessor for GMSModelInfo);
  }

  v211 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v212 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v212 = &qword_2813C76F8;
  }

  v213 = *v212;
  v214 = *(*v212 + 24);
  v215 = *(*v212 + 32);
  v217 = *(*v212 + 40);
  v216 = *(*v212 + 48);
  v218 = *(*v212 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v219 = byte_2813C4638;
  if (byte_2813C4638 == 1)
  {
    v217(&v369, v218);

    if ((v369 & 1) == 0)
    {
LABEL_48:

      v220 = v343;
      v221 = v359;
      v222 = v355;
LABEL_49:
      v223 = v348;
      v224 = v357;
      goto LABEL_54;
    }
  }

  else
  {

    if (!v215)
    {
      goto LABEL_48;
    }
  }

  v225 = *(v213 + 64);
  v226 = *(v213 + 72);
  v228 = *(v213 + 80);
  v227 = *(v213 + 88);
  v229 = *(v213 + 2208);

  if (!v219)
  {

    v220 = v343;
    v221 = v359;
    v224 = v357;
    if ((v226 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_71:
    v255 = v322;
    sub_22813763C();
    v256 = v327;
    v257 = v325;
    v258 = (*(v327 + 48))(v255, 1, v325);
    v222 = v355;
    if (v258 == 1)
    {
      sub_227FCB7B8(v255, &qword_27D81E308, &unk_22813F910);
      sub_2280B8494(v224, &v369);
      v259 = sub_22813880C();
      v260 = sub_2281396DC();
      if (os_log_type_enabled(v259, v260))
      {
        v261 = swift_slowAlloc();
        v262 = swift_slowAlloc();
        v361 = v262;
        *v261 = 136315138;
        v263 = v370;
        v264 = v371;
        __swift_project_boxed_opaque_existential_1(&v369, v370);
        v265 = (*(v264 + 16))(v263, v264);
        v267 = v266;
        __swift_destroy_boxed_opaque_existential_1Tm_10(&v369);
        v268 = sub_227FCC340(v265, v267, &v361);

        *(v261 + 4) = v268;
        _os_log_impl(&dword_227FC3000, v259, v260, "Rendered prompt after prompt completion is nil for request %s.", v261, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_10(v262);
        MEMORY[0x22AAB28A0](v262, -1, -1);
        v269 = v261;
        v222 = v355;
        MEMORY[0x22AAB28A0](v269, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm_10(&v369);
      }

      v221 = v359;
    }

    else
    {
      v270 = v255;
      v271 = v318;
      (*(v256 + 32))(v318, v270, v257);
      if (qword_2813C49B8 != -1)
      {
        swift_once();
      }

      v272 = v346;
      v273 = v326;
      if ((byte_2813C49C1 & 1) == 0)
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v272 = __swift_project_value_buffer(v221, qword_2813C4990);
      }

      v344(v321, v272, v221);
      if (qword_2813C49B0 != -1)
      {
        swift_once();
      }

      if (byte_27D81EEF2 == 1)
      {
        (*(v222 + 32))(v273, v321, v221);
      }

      else
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v274 = __swift_project_value_buffer(v221, qword_2813C4990);
        v344(v273, v274, v221);
        (v356)(v321, v221);
      }

      sub_2280B8494(v224, &v369);
      v275 = v224;
      v276 = *(v256 + 16);
      v276(v324, v271, v257);
      sub_2280B8494(v275, &v361);
      v277 = v317;
      v276(v317, v271, v257);
      v278 = sub_22813880C();
      v279 = sub_2281396CC();
      v358 = v278;
      if (os_log_type_enabled(v278, v279))
      {
        v280 = swift_slowAlloc();
        v356 = swift_slowAlloc();
        v372 = v356;
        *v280 = 136446979;
        v281 = v256;
        v282 = v370;
        v283 = v371;
        __swift_project_boxed_opaque_existential_1(&v369, v370);
        v284 = *(v283 + 16);
        LODWORD(v354) = v279;
        v285 = v284(v282, v283);
        v287 = v286;
        __swift_destroy_boxed_opaque_existential_1Tm_10(&v369);
        v288 = sub_227FCC340(v285, v287, &v372);

        *(v280 + 4) = v288;
        *(v280 + 12) = 2081;
        v289 = v324;
        sub_22813789C();
        v290 = MEMORY[0x22AAB1AD0]();
        v292 = v291;

        v293 = *(v281 + 8);
        v293(v289, v257);
        v327 = v281 + 8;
        v294 = sub_227FCC340(v290, v292, &v372);

        *(v280 + 14) = v294;
        *(v280 + 22) = 2082;
        v295 = v363;
        v296 = v364;
        __swift_project_boxed_opaque_existential_1(&v361, v363);
        v297 = (*(v296 + 16))(v295, v296);
        v299 = v298;
        __swift_destroy_boxed_opaque_existential_1Tm_10(&v361);
        v300 = sub_227FCC340(v297, v299, &v372);

        *(v280 + 24) = v300;
        *(v280 + 32) = 2081;
        v367 = sub_22813788C();
        v368 = v301;
        v365 = 10;
        v366 = 0xE100000000000000;
        v360[0] = 4091452;
        v360[1] = 0xE300000000000000;
        sub_227FDB420();
        v302 = sub_2281397BC();
        v304 = v303;
        v305 = v277;
        v306 = v358;
        v293(v305, v257);

        v307 = sub_227FCC340(v302, v304, &v372);

        *(v280 + 34) = v307;
        _os_log_impl(&dword_227FC3000, v306, v354, "\n--------------------------------------------------------------------------------\n# Rendered Prompt Token IDs for request %{public}s\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------\n# Rendered Prompt (informational only) for request %{public}s\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------", v280, 0x2Au);
        v308 = v356;
        swift_arrayDestroy();
        v220 = v343;
        MEMORY[0x22AAB28A0](v308, -1, -1);
        v309 = v280;
        v222 = v355;
        MEMORY[0x22AAB28A0](v309, -1, -1);

        v221 = v359;
        v356 = *(v222 + 8);
        (v356)(v326, v359);
        v293(v318, v257);
      }

      else
      {

        v310 = *(v256 + 8);
        v310(v277, v257);
        v310(v324, v257);
        v221 = v359;
        (v356)(v326, v359);
        v310(v271, v257);
        __swift_destroy_boxed_opaque_existential_1Tm_10(&v361);
        __swift_destroy_boxed_opaque_existential_1Tm_10(&v369);
      }
    }

    goto LABEL_49;
  }

  v228(&v369, v229);

  v220 = v343;
  v221 = v359;
  v224 = v357;
  if (v369)
  {
    goto LABEL_71;
  }

LABEL_53:

  v222 = v355;
  v223 = v348;
LABEL_54:
  v230 = v342;
  v231 = v344;
  v232 = v346;
  if (qword_2813C49B8 != -1)
  {
    swift_once();
    v232 = v346;
  }

  if ((byte_2813C49C1 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v232 = __swift_project_value_buffer(v221, qword_2813C4990);
  }

  v231(v230, v232, v221);
  if (qword_2813C49B0 != -1)
  {
    swift_once();
  }

  if (byte_27D81EEF2 == 1)
  {
    (*(v222 + 32))(v223, v230, v221);
  }

  else
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v233 = __swift_project_value_buffer(v221, qword_2813C4990);
    v231(v223, v233, v221);
    (v356)(v230, v221);
  }

  sub_2280B8494(v224, &v369);

  v234 = sub_22813880C();
  v235 = sub_2281396CC();

  if (os_log_type_enabled(v234, v235))
  {
    v236 = swift_slowAlloc();
    v237 = swift_slowAlloc();
    v360[0] = v237;
    *v236 = 136446723;
    v238 = v370;
    v239 = v371;
    __swift_project_boxed_opaque_existential_1(&v369, v370);
    v240 = (*(v239 + 16))(v238, v239);
    v242 = v241;
    __swift_destroy_boxed_opaque_existential_1Tm_10(&v369);
    v243 = sub_227FCC340(v240, v242, v360);

    *(v236 + 4) = v243;
    *(v236 + 12) = 2080;
    v244 = v334;
    *(v236 + 14) = sub_227FCC340(v334, v220, v360);
    *(v236 + 22) = 2081;
    v361 = v244;
    v362 = v220;
    v367 = 32;
    v368 = 0xE100000000000000;
    v365 = 39371;
    v366 = 0xA200000000000000;
    sub_227FDB420();
    v361 = sub_2281397BC();
    v362 = v245;
    v367 = 4091452;
    v368 = 0xE300000000000000;
    v365 = 171863612;
    v366 = 0xE400000000000000;
    v246 = sub_2281397BC();
    v248 = v247;

    v361 = v246;
    v362 = v248;
    v249 = v335;
    sub_228136C8C();
    v250 = sub_2281397AC();
    v252 = v251;
    (*(v336 + 8))(v249, v337);

    v253 = sub_227FCC340(v250, v252, v360);

    *(v236 + 24) = v253;
    _os_log_impl(&dword_227FC3000, v234, v235, "\n--------------------------------------------------------------------------------\n# Response for request %{public}s\n--------------------------------------------------------------------------------\n%s\n--------------------------------------------------------------------------------\n# Rendered Response\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------", v236, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v237, -1, -1);
    MEMORY[0x22AAB28A0](v236, -1, -1);

    return (*(v355 + 8))(v348, v359);
  }

  else
  {

    (v356)(v223, v221);
    return __swift_destroy_boxed_opaque_existential_1Tm_10(&v369);
  }
}

uint64_t sub_2280B61A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v191 = a4;
  v6 = sub_22813771C();
  v185 = *(v6 - 8);
  v7 = *(v185 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v179 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v180 = &v175 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E310, &qword_22813A7C0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v184 = &v175 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v188 = &v175 - v19;
  v183 = sub_22813716C();
  v182 = *(v183 - 8);
  v20 = *(v182 + 64);
  MEMORY[0x28223BE20](v183, v21);
  v181 = &v175 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2281377CC();
  v199 = *(v23 - 8);
  v24 = v199[8];
  v26 = MEMORY[0x28223BE20](v23, v25);
  v194 = &v175 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v193 = &v175 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = &v175 - v33;
  v36 = MEMORY[0x28223BE20](v32, v35);
  v192 = &v175 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v200 = &v175 - v40;
  MEMORY[0x28223BE20](v39, v41);
  v198 = &v175 - v42;
  v187 = type metadata accessor for GMSModelInfo(0);
  v43 = *(*(v187 - 1) + 64);
  v45 = MEMORY[0x28223BE20](v187, v44);
  v197 = &v175 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v196 = &v175 - v49;
  v51 = MEMORY[0x28223BE20](v48, v50);
  v195 = &v175 - v52;
  MEMORY[0x28223BE20](v51, v53);
  v201 = &v175 - v54;
  v55 = sub_22813882C();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55, v58);
  v60 = &v175 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v61 = __swift_project_value_buffer(v55, qword_2813C8A20);
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v61 = __swift_project_value_buffer(v55, qword_2813C4990);
  }

  v186 = v6;
  (*(v56 + 16))(v60, v61, v55);
  sub_2280B8494(v191, &v206);
  v190 = v56;
  v191 = v55;
  sub_2280B7EF0(a3, v201, type metadata accessor for GMSModelInfo);
  sub_2280B7EF0(a3, v195, type metadata accessor for GMSModelInfo);
  sub_2280B7EF0(a3, v196, type metadata accessor for GMSModelInfo);
  sub_2280B7EF0(a3, v197, type metadata accessor for GMSModelInfo);
  v62 = v199;
  v63 = v199[2];
  v63(v198, a2, v23);
  v63(v200, a2, v23);
  v64 = v192;
  v63(v192, a2, v23);
  v63(v34, a2, v23);
  v189 = v34;
  v65 = v193;
  v63(v193, a2, v23);
  v66 = v194;
  v63(v194, a2, v23);
  v67 = sub_22813880C();
  v68 = sub_2281396BC();
  if (os_log_type_enabled(v67, v68))
  {
    v177 = v68;
    v69 = v60;
    v70 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v209 = v176;
    *v70 = 136318210;
    v71 = v207;
    v72 = v208;
    __swift_project_boxed_opaque_existential_1(&v206, v207);
    v73 = (*(v72 + 16))(v71, v72);
    v75 = v74;
    __swift_destroy_boxed_opaque_existential_1Tm_10(&v206);
    v76 = sub_227FCC340(v73, v75, &v209);

    *(v70 + 4) = v76;
    *(v70 + 12) = 2082;
    v77 = (v201 + v187[5]);
    v79 = *v77;
    v78 = v77[1];
    v80 = (v201 + v187[9]);
    v81 = *v80;
    v82 = v80[1];
    v204 = v79;
    v205 = v78;
    v178 = v67;
    v175 = v69;
    if (v82)
    {
      v202 = 30240;
      v203 = 0xE200000000000000;

      MEMORY[0x22AAB1970](v81, v82);
      MEMORY[0x22AAB1970](v202, v203);

      v79 = v204;
      v78 = v205;
    }

    else
    {
    }

    v85 = v197;
    sub_2280B760C(v201, type metadata accessor for GMSModelInfo);
    v86 = sub_227FCC340(v79, v78, &v209);

    *(v70 + 14) = v86;
    *(v70 + 22) = 2082;
    v87 = v187;
    v88 = v195;
    v89 = sub_2280B7360(*(v195 + v187[6]), *(v195 + v187[6] + 8), *(v195 + v187[10]), *(v195 + v187[10] + 8));
    v91 = v90;
    sub_2280B760C(v88, type metadata accessor for GMSModelInfo);
    v92 = sub_227FCC340(v89, v91, &v209);

    *(v70 + 24) = v92;
    *(v70 + 32) = 2082;
    v93 = v196;
    v94 = sub_2280B7360(*(v196 + v87[7]), *(v196 + v87[7] + 8), *(v196 + v87[11]), *(v196 + v87[11] + 8));
    v96 = v95;
    sub_2280B760C(v93, type metadata accessor for GMSModelInfo);
    v97 = sub_227FCC340(v94, v96, &v209);

    *(v70 + 34) = v97;
    *(v70 + 42) = 2082;
    v98 = sub_2280B7360(*(v85 + v87[8]), *(v85 + v87[8] + 8), *(v85 + v87[12]), *(v85 + v87[12] + 8));
    v100 = v99;
    sub_2280B760C(v85, type metadata accessor for GMSModelInfo);
    v101 = sub_227FCC340(v98, v100, &v209);

    *(v70 + 44) = v101;
    *(v70 + 52) = 2082;
    v102 = v181;
    sub_2281370CC();
    v103 = sub_228136FEC();
    v105 = v104;
    v106 = *(v182 + 8);
    v107 = v183;
    v106(v102, v183);
    v108 = sub_227FCC340(v103, v105, &v209);

    *(v70 + 54) = v108;
    *(v70 + 62) = 2082;
    if (qword_2813C8758 != -1)
    {
      swift_once();
    }

    v109 = 7104878;
    sub_228139B6C();
    v110 = sub_228136FEC();
    v111 = v102;
    v113 = v112;
    v106(v111, v107);
    v114 = sub_227FCC340(v110, v113, &v209);

    *(v70 + 64) = v114;
    *(v70 + 72) = 2082;
    v115 = v198;
    v116 = sub_22813776C();
    v117 = v190;
    if (v118)
    {
      v119 = v199[1];
      v119(v115, v23);
      v120 = 0xE300000000000000;
      v121 = 7104878;
    }

    else
    {
      v204 = v116;
      v122 = sub_2281392EC();
      v120 = v123;
      v119 = v199[1];
      v119(v115, v23);
      v121 = v122;
    }

    v124 = v186;
    v125 = v200;
    v126 = sub_227FCC340(v121, v120, &v209);

    *(v70 + 74) = v126;
    *(v70 + 82) = 2082;
    v127 = v188;
    sub_2281377BC();
    v128 = v127;
    v129 = v184;
    sub_2280B842C(v128, v184, &qword_27D81E310, &qword_22813A7C0);
    v130 = v185;
    if ((*(v185 + 48))(v129, 1, v124) == 1)
    {
      sub_227FCB7B8(v129, &qword_27D81E310, &qword_22813A7C0);
      v131 = 0xE300000000000000;
      v132 = 7104878;
    }

    else
    {
      v133 = v180;
      (*(v130 + 32))(v180, v129, v124);
      (*(v130 + 16))(v179, v133, v124);
      v132 = sub_2281392EC();
      v134 = v130;
      v131 = v135;
      v136 = v133;
      v125 = v200;
      (*(v134 + 8))(v136, v124);
    }

    sub_227FCB7B8(v188, &qword_27D81E310, &qword_22813A7C0);
    v119(v125, v23);
    v137 = sub_227FCC340(v132, v131, &v209);

    *(v70 + 84) = v137;
    *(v70 + 92) = 2082;
    v138 = v192;
    v139 = sub_22813774C();
    if (v140)
    {
      v119(v138, v23);
      v141 = 0xE300000000000000;
      v142 = 7104878;
    }

    else
    {
      v204 = v139;
      v143 = sub_2281392EC();
      v144 = v138;
      v145 = v143;
      v141 = v146;
      v119(v144, v23);
      v142 = v145;
    }

    v147 = sub_227FCC340(v142, v141, &v209);

    *(v70 + 94) = v147;
    *(v70 + 102) = 2082;
    v148 = v189;
    v149 = sub_22813773C();
    if (v150)
    {
      v119(v148, v23);
      v151 = 0xE300000000000000;
      v152 = 7104878;
    }

    else
    {
      v204 = v149;
      v153 = sub_2281392EC();
      v151 = v154;
      v119(v148, v23);
      v152 = v153;
    }

    v155 = sub_227FCC340(v152, v151, &v209);

    *(v70 + 104) = v155;
    *(v70 + 112) = 2082;
    v156 = v193;
    v157 = sub_22813779C();
    if (v158)
    {
      v119(v156, v23);
      v159 = 0xE300000000000000;
      v160 = 7104878;
    }

    else
    {
      v204 = v157;
      v161 = sub_2281392EC();
      v162 = v156;
      v163 = v161;
      v159 = v164;
      v119(v162, v23);
      v160 = v163;
    }

    v165 = sub_227FCC340(v160, v159, &v209);

    *(v70 + 114) = v165;
    *(v70 + 122) = 2082;
    v166 = v194;
    v167 = sub_22813777C();
    if (v168)
    {
      v119(v166, v23);
      v169 = 0xE300000000000000;
    }

    else
    {
      v204 = v167;
      v109 = sub_2281392EC();
      v169 = v170;
      v119(v166, v23);
    }

    v171 = v191;
    v172 = sub_227FCC340(v109, v169, &v209);

    *(v70 + 124) = v172;
    v173 = v178;
    _os_log_impl(&dword_227FC3000, v178, v177, "\n--------------------------------------------------------------------------------\n# Inference details for request %s\n--------------------------------------------------------------------------------\nAdapter: %{public}s\nTokenizer: %{public}s\nBase Model: %{public}s\nDraft Model: %{public}s\nDevice Locale: %{public}s\nInference Locale: %{public}s\n--------------------------------------------------------------------------------\n# Decoding Parameters\n--------------------------------------------------------------------------------\nmaximumTokens: %{public}s\nstrategy: %{public}s\ntemperature: %{public}s\nrandomSeed: %{public}s\ntimeout: %{public}s\npromptLookupDraftSteps: %{public}s\n--------------------------------------------------------------------------------", v70, 0x84u);
    v174 = v176;
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v174, -1, -1);
    MEMORY[0x22AAB28A0](v70, -1, -1);

    return (*(v117 + 8))(v175, v171);
  }

  else
  {

    v83 = v62[1];
    v83(v66, v23);
    v83(v65, v23);
    v83(v189, v23);
    v83(v64, v23);
    v83(v200, v23);
    v83(v198, v23);
    (*(v190 + 8))(v60, v191);
    __swift_destroy_boxed_opaque_existential_1Tm_10(&v206);
    sub_2280B760C(v201, type metadata accessor for GMSModelInfo);
    sub_2280B760C(v195, type metadata accessor for GMSModelInfo);
    sub_2280B760C(v196, type metadata accessor for GMSModelInfo);
    return sub_2280B760C(v197, type metadata accessor for GMSModelInfo);
  }
}