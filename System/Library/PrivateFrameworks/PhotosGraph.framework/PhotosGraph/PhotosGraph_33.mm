void sub_22F36B014(uint64_t a1, void *a2, id a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6, NSObject *a7)
{
  [a3 lock];
  swift_beginAccess();
  if ((*(a4 + 16) & 1) == 0)
  {
    if (a1)
    {
      sub_22F36C390();
      v13 = swift_allocError();
      *v14 = a2;
      *(v14 + 8) = 0;
      *(v14 + 16) = 2;
      v15 = a2;
      a5(v13, 1);
    }

    else
    {
      a5(0, 0);
    }
  }

  swift_beginAccess();
  *(a4 + 16) = 1;
  [a3 unlock];
  dispatch_group_leave(a7);
}

void sub_22F36B130(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_22F36B1A8(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v51 = a2;
  v52 = a3;
  v50 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v43 - v6;
  v53 = sub_22F740BB0();
  v7 = *(v53 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v53);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_22F740C30();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  v19 = swift_allocBox();
  v21 = v20;
  v22 = sub_22F73F470();
  v23 = *(v22 - 8);
  v46 = v21;
  v47 = v23;
  v24 = *(v23 + 56);
  v48 = v22;
  v24(v21, 1, 1);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v44 = (v25 + 16);
  v26 = dispatch_group_create();
  dispatch_group_enter(v26);

  v27 = v26;
  sub_22F36DAEC(v50, v51, v52, v54, v19, v25, v27);
  v54 = v19;

  sub_22F740C10();
  v28 = qos_class_self();
  v29 = 270;
  if (((v28 - 25) & 0xFFFFFFF7) == 0)
  {
    v29 = 5;
  }

  *v10 = v29;
  v30 = v53;
  (*(v7 + 104))(v10, *MEMORY[0x277D85188], v53);
  MEMORY[0x2319007F0](v16, v10);
  (*(v7 + 8))(v10, v30);
  v31 = *(v12 + 8);
  v31(v16, v11);
  v32 = sub_22F741610();
  v31(v18, v11);
  if (v32)
  {
    sub_22F36C390();
    swift_allocError();
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 5;
LABEL_7:
    swift_willThrow();

    return;
  }

  v34 = v46;
  swift_beginAccess();
  v35 = v34;
  v36 = v49;
  sub_22F13BA9C(v35, v49, &qword_27DAB29A0, &unk_22F77BFC0);
  v38 = v47;
  v37 = v48;
  if ((*(v47 + 48))(v36, 1, v48) == 1)
  {
    sub_22F120ADC(v36, &qword_27DAB29A0, &unk_22F77BFC0);
    v39 = v44;
    swift_beginAccess();
    v40 = *v39;
    sub_22F36C390();
    swift_allocError();
    *v41 = v40;
    *(v41 + 8) = 0;
    *(v41 + 16) = 3;
    v42 = v40;
    goto LABEL_7;
  }

  (*(v38 + 32))(v45, v36, v37);
}

void sub_22F36B650(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2EF0, &unk_22F788820);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v20 - v13);
  v15 = swift_projectBox();
  sub_22F13BA9C(a1, v14, &qword_27DAB2EF0, &unk_22F788820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v14;
    sub_22F36C390();
    v17 = swift_allocError();
    *v18 = v16;
    *(v18 + 8) = 0;
    *(v18 + 16) = 3;
    swift_beginAccess();
    v19 = *(a3 + 16);
    *(a3 + 16) = v17;
  }

  else
  {
    sub_22F1207AC(v14, v10, &qword_27DAB29A0, &unk_22F77BFC0);
    swift_beginAccess();
    sub_22F36ECD4(v10, v15);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_22F36B818(void *a1)
{
  v2 = sub_22F741300();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  if (a1)
  {
    v4 = a1;
    if ([v4 totalExpected] >= 1)
    {
      [v4 totalWritten];
      [v4 totalExpected];
    }
  }

  return sub_22F741690();
}

uint64_t sub_22F36BB80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_22F36BBD4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_22F36BC40(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4, void *a5)
{
  v54 = a4;
  v55 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2EF0, &unk_22F788820);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = (&v54 - v23);
  if (a1)
  {
    if (a1 == 48)
    {
      if (qword_2810A9428 != -1)
      {
        swift_once();
      }

      v32 = sub_22F740B90();
      __swift_project_value_buffer(v32, qword_2810B4D18);
      v33 = sub_22F740B70();
      v34 = sub_22F7415E0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_22F0FC000, v33, v34, "[MemoriesMusic] (CuratedSongLibrary) downloadCancelled", v35, 2u);
        MEMORY[0x2319033A0](v35, -1, -1);
      }

      sub_22F36C390();
      v36 = swift_allocError();
      *v37 = a2;
      *(v37 + 8) = 0;
      v38 = 4;
    }

    else
    {
      if (a1 == 10)
      {
        if (qword_2810A9428 != -1)
        {
          swift_once();
        }

        v25 = sub_22F740B90();
        __swift_project_value_buffer(v25, qword_2810B4D18);
        v26 = sub_22F740B70();
        v27 = sub_22F7415D0();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_22F0FC000, v26, v27, "[MemoriesMusic] (CuratedSongLibrary) downloadAssetAlreadyInstalled", v28, 2u);
          MEMORY[0x2319033A0](v28, -1, -1);
        }

        v29 = [a5 getLocalUrl];
        if (v29)
        {
          v30 = v29;
          sub_22F73F430();

          v31 = sub_22F73F470();
          (*(*(v31 - 8) + 56))(v14, 0, 1, v31);
        }

        else
        {
          v52 = sub_22F73F470();
          (*(*(v52 - 8) + 56))(v14, 1, 1, v52);
        }

        sub_22F1207AC(v14, v24, &qword_27DAB29A0, &unk_22F77BFC0);
        swift_storeEnumTagMultiPayload();
        goto LABEL_31;
      }

      if (qword_2810A9428 != -1)
      {
        swift_once();
      }

      v46 = sub_22F740B90();
      __swift_project_value_buffer(v46, qword_2810B4D18);
      v47 = sub_22F740B70();
      v48 = sub_22F7415E0();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134217984;
        *(v49 + 4) = a1;
        _os_log_impl(&dword_22F0FC000, v47, v48, "[MemoriesMusic] (CuratedSongLibrary) unknown downloadResult: %ld", v49, 0xCu);
        MEMORY[0x2319033A0](v49, -1, -1);
      }

      sub_22F36C390();
      v36 = swift_allocError();
      *v37 = a2;
      *(v37 + 8) = 0;
      v38 = 3;
    }

    *(v37 + 16) = v38;
    *v18 = v36;
    swift_storeEnumTagMultiPayload();
    v50 = a2;
    v24 = v18;
    goto LABEL_31;
  }

  if (qword_2810A9428 != -1)
  {
    swift_once();
  }

  v39 = sub_22F740B90();
  __swift_project_value_buffer(v39, qword_2810B4D18);
  v40 = sub_22F740B70();
  v41 = sub_22F7415C0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_22F0FC000, v40, v41, "[MemoriesMusic] (CuratedSongLibrary) downloadSuccessful", v42, 2u);
    MEMORY[0x2319033A0](v42, -1, -1);
  }

  v43 = [a5 getLocalUrl];
  if (v43)
  {
    v44 = v43;
    sub_22F73F430();

    v45 = sub_22F73F470();
    (*(*(v45 - 8) + 56))(v11, 0, 1, v45);
  }

  else
  {
    v51 = sub_22F73F470();
    (*(*(v51 - 8) + 56))(v11, 1, 1, v51);
  }

  sub_22F1207AC(v11, v21, &qword_27DAB29A0, &unk_22F77BFC0);
  swift_storeEnumTagMultiPayload();
  v24 = v21;
LABEL_31:
  v55(v24);
  return sub_22F120ADC(v24, &qword_27DAB2EF0, &unk_22F788820);
}

id CuratedSongLibrary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CuratedSongLibrary.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CuratedSongLibrary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F36C390()
{
  result = qword_2810AB1D0;
  if (!qword_2810AB1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB1D0);
  }

  return result;
}

uint64_t sub_22F36C4EC(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_22F741A00();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22F36C590(void **a1, void **a2, void *a3)
{
  v45 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v44 = v42 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v42 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v42 - v14;
  v16 = *a1;
  v17 = *a2;
  v18 = sub_22F740DF0();
  v19 = [v16 assetProperty_];

  if (v19)
  {
    sub_22F741920();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  if (!*(&v48 + 1))
  {
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  v42[2] = v46;
  v20 = sub_22F740DF0();
  v21 = [v17 assetProperty_];

  if (v21)
  {
    sub_22F741920();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  if (!*(&v48 + 1))
  {

LABEL_14:
    sub_22F120ADC(&v49, &qword_27DAB0C28, &qword_22F778980);
    return 1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return 1;
  }

  v42[1] = v46;
  v22 = sub_22F740DF0();

  v23 = [v45 dateFromString_];

  if (v23)
  {
    sub_22F73F640();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v26 = sub_22F73F690();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v28(v13, v24, 1, v26);
  sub_22F1207AC(v13, v15, &qword_27DAB0920, &qword_22F770B20);
  v29 = *(v27 + 48);
  if (v29(v15, 1, v26) == 1)
  {
    sub_22F120ADC(v15, &qword_27DAB0920, &qword_22F770B20);
    v30 = 1.0;
    goto LABEL_23;
  }

  sub_22F73F620();
  v30 = v31;
  v32 = v31;
  result = (*(v27 + 8))(v15, v26);
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v30 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_23:
  v33 = sub_22F740DF0();

  v34 = [v45 dateFromString_];

  if (v34)
  {
    v35 = v43;
    sub_22F73F640();

    v36 = 0;
  }

  else
  {
    v36 = 1;
    v35 = v43;
  }

  v28(v35, v36, 1, v26);
  v37 = v35;
  v38 = v44;
  sub_22F1207AC(v37, v44, &qword_27DAB0920, &qword_22F770B20);
  if (v29(v38, 1, v26) == 1)
  {
    sub_22F120ADC(v38, &qword_27DAB0920, &qword_22F770B20);
    v39 = 0.0;
    return v39 < v30;
  }

  sub_22F73F620();
  v39 = v40;
  v41 = v40;
  result = (*(v27 + 8))(v38, v26);
  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v39 > -9.22337204e18)
    {
      if (v39 < 9.22337204e18)
      {
        return v39 < v30;
      }

      goto LABEL_35;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_22F36CB10(void **__src, void **a2, void **a3, uint64_t __dst, void *a5)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (__dst != a2 || &a2[v14] <= __dst)
    {
      v28 = __dst;
      memmove(__dst, a2, 8 * v14);
      __dst = v28;
    }

    v52 = __dst;
    v16 = (__dst + 8 * v14);
    if (v12 < 8 || v7 <= v8)
    {
      v15 = __dst;
      goto LABEL_53;
    }

    v29 = -__dst;
    v49 = -__dst;
    v50 = v8;
    while (1)
    {
      v51 = v7;
      v30 = v7 - 1;
      v31 = &v16[v29];
      --v6;
      v32 = v16;
      while (1)
      {
        v33 = *(v32 - 1);
        v32 -= 8;
        v55 = v33;
        v34 = v30;
        v54 = *v30;
        v35 = v54;
        v36 = v33;
        v37 = v35;
        v38 = sub_22F36C590(&v55, &v54, a5);
        if (v5)
        {

          if (v31 >= 0)
          {
            v46 = v31;
          }

          else
          {
            v46 = v31 + 7;
          }

          v44 = v51;
          v45 = v52;
          if (v51 >= v52 && v51 < v52 + (v46 & 0xFFFFFFFFFFFFFFF8) && v51 == v52)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v46 >> 3);
          goto LABEL_59;
        }

        v39 = v38;

        v40 = (v6 + 1);
        if (v39)
        {
          break;
        }

        if (v40 != v16)
        {
          *v6 = *v32;
        }

        v31 -= 8;
        --v6;
        v16 = v32;
        v30 = v34;
        if (v32 <= v52)
        {
          v16 = v32;
          v7 = v51;
          v15 = v52;
LABEL_53:
          v47 = v16 - v15 + 7;
          if (v16 - v15 >= 0)
          {
            v47 = v16 - v15;
          }

          if (v7 >= v15 && v7 < (v15 + (v47 & 0xFFFFFFFFFFFFFFF8)) && v7 == v15)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v47 >> 3);
          v44 = v7;
          v45 = v15;
LABEL_59:
          memmove(v44, v45, v43);
          goto LABEL_60;
        }
      }

      if (v40 != v51)
      {
        *v6 = *v34;
      }

      v15 = v52;
      if (v16 > v52)
      {
        v7 = v34;
        v29 = v49;
        if (v34 > v50)
        {
          continue;
        }
      }

      v7 = v34;
      goto LABEL_53;
    }
  }

  v15 = __dst;
  if (__dst != __src || &__src[v11] <= __dst)
  {
    memmove(__dst, __src, 8 * v11);
  }

  v16 = &v15[v11];
  if (v9 < 8 || v7 >= v6)
  {
    v7 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    v17 = v8;
    v18 = v16;
    v19 = v7;
    v55 = *v7;
    v20 = v15;
    v54 = *v15;
    v21 = v54;
    v22 = v55;
    v23 = v21;
    v24 = sub_22F36C590(&v55, &v54, a5);
    if (v5)
    {
      break;
    }

    v25 = v24;

    if ((v25 & 1) == 0)
    {
      v26 = v20;
      v15 = v20 + 1;
      v27 = v17;
      v7 = v19;
      if (v17 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

    v26 = v19;
    v7 = v19 + 1;
    v27 = v17;
    v15 = v20;
    if (v17 != v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = v27 + 1;
    v16 = v18;
    if (v15 >= v18 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_53;
    }
  }

  v41 = v18 - v20 + 7;
  if (v18 - v20 >= 0)
  {
    v41 = v18 - v20;
  }

  v42 = v41 >> 3;
  if (v8 < v20 || v8 >= (v20 + (v41 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v20, 8 * v42);
  }

  else if (v8 != v20)
  {
    v43 = 8 * v42;
    v44 = v8;
    v45 = v20;
    goto LABEL_59;
  }

LABEL_60:

  return 1;
}

void sub_22F36CED0(void **a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v20 = a4;
  v21 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_13:
    v21 = sub_22F3F5F98(v21);
  }

  v17 = v5;
  *v5 = v21;
  v7 = v21 + 16;
  v8 = *(v21 + 2);
  if (v8 < 2)
  {
LABEL_9:

    *v17 = v21;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v21[16 * v8];
      v11 = *v10;
      v12 = v7;
      v13 = &v7[16 * v8];
      v14 = *(v13 + 1);
      v5 = (v9 + 8 * v14);
      sub_22F36CB10((v9 + 8 * *v10), (v9 + 8 * *v13), v5, a2, v20);
      if (v4)
      {
        goto LABEL_9;
      }

      if (v14 < v11)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v15 = *v12;
      if (v8 - 2 >= *v12)
      {
        goto LABEL_11;
      }

      *v10 = v11;
      *(v10 + 1) = v14;
      v16 = v15 - v8;
      if (v15 < v8)
      {
        goto LABEL_12;
      }

      v7 = v12;
      v8 = v15 - 1;
      memmove(v13, v13 + 16, 16 * v16);
      *v12 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v17 = v21;
    __break(1u);
  }
}

void sub_22F36D04C(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = a3[1];
  v116 = MEMORY[0x277D84F90];
  v113 = a5;
  if (v8 >= 1)
  {
    v9 = 0;
    v111 = MEMORY[0x277D84F90];
    v102 = a4;
    while (1)
    {
      v10 = v9;
      v11 = v9 + 1;
      if (v9 + 1 < v8)
      {
        v12 = *a3;
        v13 = *(*a3 + 8 * v11);
        v114 = *(*a3 + 8 * v9);
        v14 = v114;
        v115 = v13;
        v15 = v13;
        v16 = v14;
        v17 = sub_22F36C590(&v115, &v114, v113);
        if (v6)
        {

          goto LABEL_95;
        }

        v18 = v17;

        v19 = v10;
        v20 = v10 + 2;
        __dst = v19;
        v21 = 8 * v19;
        v22 = (v12 + 8 * v19 + 16);
        while (v8 != v20)
        {
          v23 = *v22;
          v114 = *(v22 - 1);
          v24 = v114;
          v115 = v23;
          v25 = v23;
          v26 = v24;
          v27 = sub_22F36C590(&v115, &v114, v113);

          v28 = v18 ^ v27;
          ++v20;
          ++v22;
          v6 = 0;
          if (v28)
          {
            v8 = (v20 - 1);
            break;
          }
        }

        v10 = __dst;
        if (v18)
        {
          if (v8 < __dst)
          {
            goto LABEL_117;
          }

          if (__dst < v8)
          {
            v29 = 8 * v8 - 8;
            v30 = v8;
            v31 = __dst;
            do
            {
              if (v31 != --v30)
              {
                v32 = *a3;
                if (!*a3)
                {
                  goto LABEL_120;
                }

                v33 = *(v32 + v21);
                *(v32 + v21) = *(v32 + v29);
                *(v32 + v29) = v33;
              }

              ++v31;
              v29 -= 8;
              v21 += 8;
            }

            while (v31 < v30);
          }
        }

        v11 = v8;
        a4 = v102;
      }

      v34 = v111;
      v35 = a3[1];
      if (v11 >= v35)
      {
        goto LABEL_28;
      }

      if (__OFSUB__(v11, v10))
      {
        goto LABEL_114;
      }

      if (v11 - v10 >= a4)
      {
LABEL_28:
        if (v11 < v10)
        {
          goto LABEL_113;
        }

        goto LABEL_29;
      }

      v36 = &v10[a4];
      if (__OFADD__(v10, a4))
      {
        goto LABEL_115;
      }

      if (v36 >= v35)
      {
        v36 = a3[1];
      }

      if (v36 < v10)
      {
        break;
      }

      if (v11 == v36)
      {
        goto LABEL_28;
      }

      v86 = v6;
      v87 = *a3;
      v88 = *a3 + 8 * v11 - 8;
      __dstb = v10;
      v89 = &v10[-v11];
      v101 = v36;
      do
      {
        v90 = *(v87 + 8 * v11);
        v105 = v89;
        v107 = v88;
        while (1)
        {
          v91 = v11;
          v114 = *v88;
          v92 = v114;
          v115 = v90;
          v93 = v90;
          v94 = v92;
          v95 = sub_22F36C590(&v115, &v114, v113);
          if (v86)
          {

            goto LABEL_95;
          }

          v96 = v95;

          if ((v96 & 1) == 0)
          {
            break;
          }

          if (!v87)
          {
            goto LABEL_119;
          }

          v11 = v91;
          v97 = *v88;
          v90 = *(v88 + 8);
          *v88 = v90;
          *(v88 + 8) = v97;
          v88 -= 8;
          if (__CFADD__(v89++, 1))
          {
            goto LABEL_87;
          }
        }

        v11 = v91;
LABEL_87:
        ++v11;
        v88 = v107 + 8;
        v89 = v105 - 1;
      }

      while (v11 != v101);
      v11 = v101;
      v6 = 0;
      v10 = __dstb;
      v34 = v111;
      if (v101 < __dstb)
      {
        goto LABEL_113;
      }

LABEL_29:
      v104 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_22F13D970(0, *(v34 + 2) + 1, 1, v34);
      }

      v38 = *(v34 + 2);
      v37 = *(v34 + 3);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v34 = sub_22F13D970((v37 > 1), v38 + 1, 1, v34);
      }

      *(v34 + 2) = v39;
      v40 = v34 + 32;
      v41 = &v34[16 * v38 + 32];
      *v41 = v10;
      *(v41 + 1) = v11;
      v116 = v34;
      __dsta = *a1;
      if (!*a1)
      {
        goto LABEL_121;
      }

      v111 = v34;
      if (v38)
      {
        v106 = v34 + 32;
        while (1)
        {
          v42 = v39 - 1;
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v43 = *(v34 + 4);
            v44 = *(v34 + 5);
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_49:
            if (v46)
            {
              goto LABEL_104;
            }

            v59 = &v34[16 * v39];
            v61 = *v59;
            v60 = *(v59 + 1);
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_107;
            }

            v65 = &v40[16 * v42];
            v67 = *v65;
            v66 = *(v65 + 1);
            v53 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v53)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v63, v68))
            {
              goto LABEL_111;
            }

            if (v63 + v68 >= v45)
            {
              if (v45 < v68)
              {
                v42 = v39 - 2;
              }

              goto LABEL_70;
            }

            goto LABEL_63;
          }

          v69 = &v34[16 * v39];
          v71 = *v69;
          v70 = *(v69 + 1);
          v53 = __OFSUB__(v70, v71);
          v63 = v70 - v71;
          v64 = v53;
LABEL_63:
          if (v64)
          {
            goto LABEL_106;
          }

          v72 = &v40[16 * v42];
          v74 = *v72;
          v73 = *(v72 + 1);
          v53 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v53)
          {
            goto LABEL_109;
          }

          if (v75 < v63)
          {
            goto LABEL_3;
          }

LABEL_70:
          if (v42 - 1 >= v39)
          {
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v80 = &v40[16 * v42 - 16];
          v81 = *v80;
          v82 = v42;
          v83 = &v40[16 * v42];
          v84 = *(v83 + 1);
          sub_22F36CB10((*a3 + 8 * *v80), (*a3 + 8 * *v83), (*a3 + 8 * v84), __dsta, v113);
          if (v6)
          {
            goto LABEL_95;
          }

          v34 = v111;
          if (v84 < v81)
          {
            goto LABEL_99;
          }

          v85 = *(v111 + 2);
          if (v82 > v85)
          {
            goto LABEL_100;
          }

          *v80 = v81;
          *(v80 + 1) = v84;
          if (v82 >= v85)
          {
            goto LABEL_101;
          }

          v39 = v85 - 1;
          memmove(v83, v83 + 16, 16 * (v85 - 1 - v82));
          *(v111 + 2) = v85 - 1;
          v40 = v106;
          if (v85 <= 2)
          {
LABEL_3:
            v116 = v34;
            goto LABEL_4;
          }
        }

        v47 = &v40[16 * v39];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_102;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_103;
        }

        v54 = &v34[16 * v39];
        v56 = *v54;
        v55 = *(v54 + 1);
        v53 = __OFSUB__(v55, v56);
        v57 = v55 - v56;
        if (v53)
        {
          goto LABEL_105;
        }

        v53 = __OFADD__(v45, v57);
        v58 = v45 + v57;
        if (v53)
        {
          goto LABEL_108;
        }

        if (v58 >= v50)
        {
          v76 = &v40[16 * v42];
          v78 = *v76;
          v77 = *(v76 + 1);
          v53 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v53)
          {
            goto LABEL_112;
          }

          if (v45 < v79)
          {
            v42 = v39 - 2;
          }

          goto LABEL_70;
        }

        goto LABEL_49;
      }

LABEL_4:
      v8 = a3[1];
      v9 = v104;
      a4 = v102;
      if (v104 >= v8)
      {
        goto LABEL_90;
      }
    }

LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:

    __break(1u);
LABEL_119:

    __break(1u);
LABEL_120:

    __break(1u);
LABEL_121:

    __break(1u);
    goto LABEL_122;
  }

LABEL_90:
  v99 = *a1;
  if (!*a1)
  {
LABEL_122:

    __break(1u);
    return;
  }

  v100 = v113;
  sub_22F36CED0(&v116, v99, a3, v100);
  if (v6)
  {

LABEL_95:
  }

  else
  {
  }
}

void sub_22F36D6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v19 = v10;
    v20 = v9;
    while (1)
    {
      v22 = v11;
      v21 = *v9;
      v12 = v21;
      v13 = v11;
      v14 = v12;
      v15 = sub_22F36C590(&v22, &v21, a5);

      if (v5)
      {
        break;
      }

      if (v15)
      {
        if (!v8)
        {
          __break(1u);
          return;
        }

        v16 = *v9;
        v11 = *(v9 + 8);
        *v9 = v11;
        *(v9 + 8) = v16;
        v9 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v20 + 8;
      v10 = v19 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_22F36D7C0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_22F742000();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F120634(0, &qword_2810A8EF0, 0x277D289C0);
        v8 = sub_22F741200();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      v9 = v4;
      sub_22F36D04C(v10, v11, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_22F36D6C8(0, v3, 1, a1, v4);
  }
}

void sub_22F36D914(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_22F3F6724(v4);
    *a1 = v4;
  }

  v7 = *(v4 + 16);
  v9[0] = v4 + 32;
  v9[1] = v7;
  v8 = v5;
  sub_22F36D7C0(v9, v8);

  sub_22F741BB0();
}

uint64_t sub_22F36D9B4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_22F36B818(a1);
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph18CuratedSongLibraryC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_22F36DA50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22F36DA98(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22F36DAEC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v59 = a3;
  v60 = a4;
  v65 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2EF0, &unk_22F788820);
  v11 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v13 = (&v59 - v12);
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v15 = qword_2810A9428;
  v62 = a5;

  v63 = a7;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_22F740B90();
  __swift_project_value_buffer(v16, qword_2810B4D18);

  v17 = sub_22F740B70();
  v18 = sub_22F7415C0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_22F145F20(v65, a2, &aBlock);
    _os_log_impl(&dword_22F0FC000, v17, v18, "[MemoriesMusic] (CuratedSongLibrary) Starting downloadLocalizedAsset for storefrontIdentifierKey: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x2319033A0](v20, -1, -1);
    MEMORY[0x2319033A0](v19, -1, -1);
  }

  v21 = objc_allocWithZone(MEMORY[0x277D289D8]);
  v22 = sub_22F740DF0();
  v23 = [v21 initWithType_];

  if (!v23)
  {
    sub_22F36C390();
    v52 = swift_allocError();
    *v53 = 0xD000000000000034;
    *(v53 + 8) = 0x800000022F79C340;
    *(v53 + 16) = 0;
    *v13 = v52;
    swift_storeEnumTagMultiPayload();
    sub_22F36B650(v13, v62, a6, v63);
    sub_22F120ADC(v13, &qword_27DAB2EF0, &unk_22F788820);
LABEL_22:

    return;
  }

  v61 = v14;
  [v23 setDoNotBlockBeforeFirstUnlock_];
  v24 = sub_22F740DF0();
  v25 = sub_22F740DF0();
  [v23 addKeyValuePair:v24 with:v25];

  v26 = sub_22F740DF0();
  v27 = sub_22F740DF0();
  [v23 addKeyValuePair:v26 with:v27];

  [v23 returnTypes_];
  [v23 queryMetaDataSync];
  v28 = [v23 results];
  if (!v28)
  {
    sub_22F36C390();
    v54 = swift_allocError();
    *v55 = 0xD000000000000034;
    *(v55 + 8) = 0x800000022F79C340;
    *(v55 + 16) = 1;
    *v13 = v54;
    swift_storeEnumTagMultiPayload();
    sub_22F36B650(v13, v62, a6, v63);

    sub_22F120ADC(v13, &qword_27DAB2EF0, &unk_22F788820);
    goto LABEL_22;
  }

  v29 = v28;
  sub_22F120634(0, &qword_2810A8EF0, 0x277D289C0);
  sub_22F741180();

  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v30 = qword_2810A9170;

  aBlock = sub_22F36C4EC(v31, sub_22F120B48, sub_22F3CD0A8);
  sub_22F36D914(&aBlock, v60, v30);

  v32 = aBlock;
  if (aBlock < 0 || (aBlock & 0x4000000000000000) != 0)
  {
    v58 = aBlock;
    v33 = sub_22F741A00();
    v32 = v58;
  }

  else
  {
    v33 = *(aBlock + 16);
  }

  v34 = v61;
  if (!v33)
  {

    sub_22F36C390();
    v56 = swift_allocError();
    *v57 = 0xD000000000000034;
    *(v57 + 8) = 0x800000022F79C340;
    *(v57 + 16) = 1;
    *v13 = v56;
    swift_storeEnumTagMultiPayload();
    sub_22F36B650(v13, v62, a6, v63);

    sub_22F120ADC(v13, &qword_27DAB2EF0, &unk_22F788820);
    goto LABEL_22;
  }

  if ((v32 & 0xC000000000000001) != 0)
  {
    v35 = MEMORY[0x2319016F0](0, v32);
  }

  else
  {
    if (!*(v32 + 16))
    {
      __break(1u);

      __break(1u);
      return;
    }

    v35 = *(v32 + 32);
  }

  v36 = v35;

  v37 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v37 setAllowsCellularAccess_];
  [v37 setRequiresPowerPluggedIn_];
  [v37 setAllowsExpensiveAccess_];
  [v37 setDiscretionary_];
  v38 = swift_allocObject();
  v39 = v59;
  *(v38 + 16) = v59;
  *(v38 + 24) = v36;
  v70 = sub_22F36ED88;
  v71 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v67 = 1107296256;
  v68 = sub_22F36BBD4;
  v69 = &block_descriptor_56_0;
  v40 = _Block_copy(&aBlock);
  v41 = v39;
  v42 = v36;

  [v42 attachProgressCallBack_];
  _Block_release(v40);

  v43 = sub_22F740B70();
  v44 = sub_22F7415C0();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_22F145F20(v65, a2, &aBlock);
    _os_log_impl(&dword_22F0FC000, v43, v44, "[MemoriesMusic] (CuratedSongLibrary) Starting MobileAsset download of storefrontIdentifierKey: %s ", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x2319033A0](v46, -1, -1);
    MEMORY[0x2319033A0](v45, -1, -1);
  }

  v47 = swift_allocObject();
  v48 = v61;
  v47[2] = sub_22F36EC88;
  v47[3] = v48;
  v47[4] = v42;
  v70 = sub_22F36ED64;
  v71 = v47;
  aBlock = MEMORY[0x277D85DD0];
  v67 = 1107296256;
  v68 = sub_22F36B130;
  v69 = &block_descriptor_63_0;
  v49 = _Block_copy(&aBlock);
  v50 = v42;
  v51 = v37;

  [v50 startDownload:v51 completionWithError:v49];

  _Block_release(v49);
}

void sub_22F36E3E4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(uint64_t, void *), uint64_t a7, void *a8)
{
  v59 = a3;
  v60 = a4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2EF0, &unk_22F788820);
  v14 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v16 = (&v58 - v15);
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a6;
  v64 = a6;
  v17[4] = a7;
  v17[5] = a8;
  v18 = qword_2810A9428;
  v62 = a5;

  v61 = a8;
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_22F740B90();
  __swift_project_value_buffer(v19, qword_2810B4D18);

  v20 = sub_22F740B70();
  v21 = sub_22F7415C0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_22F145F20(a1, a2, &aBlock);
    _os_log_impl(&dword_22F0FC000, v20, v21, "[MemoriesMusic] (CuratedSongLibrary) Starting downloadLocalizedAsset for storefrontIdentifierKey: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x2319033A0](v23, -1, -1);
    MEMORY[0x2319033A0](v22, -1, -1);
  }

  v24 = objc_allocWithZone(MEMORY[0x277D289D8]);
  v25 = sub_22F740DF0();
  v26 = [v24 initWithType_];

  if (!v26)
  {
    sub_22F36C390();
    v53 = swift_allocError();
    *v54 = 0xD000000000000034;
    *(v54 + 8) = 0x800000022F79C340;
    *(v54 + 16) = 0;
    *v16 = v53;
    swift_storeEnumTagMultiPayload();
    sub_22F28A8D8(v16, v62, v64, a7, v61);
LABEL_23:
    sub_22F120ADC(v16, &qword_27DAB2EF0, &unk_22F788820);

    return;
  }

  [v26 setDoNotBlockBeforeFirstUnlock_];
  v27 = sub_22F740DF0();
  v58 = a1;
  v28 = sub_22F740DF0();
  [v26 addKeyValuePair:v27 with:v28];

  v29 = sub_22F740DF0();
  v30 = sub_22F740DF0();
  [v26 addKeyValuePair:v29 with:v30];

  [v26 returnTypes_];
  [v26 queryMetaDataSync];
  v31 = [v26 results];
  if (!v31)
  {
    sub_22F36C390();
    v55 = swift_allocError();
    *v56 = 0xD000000000000034;
LABEL_22:
    *(v56 + 8) = 0x800000022F79C340;
    *(v56 + 16) = 1;
    *v16 = v55;
    swift_storeEnumTagMultiPayload();
    sub_22F28A8D8(v16, v62, v64, a7, v61);

    goto LABEL_23;
  }

  v32 = v31;
  sub_22F120634(0, &qword_2810A8EF0, 0x277D289C0);
  sub_22F741180();

  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v33 = qword_2810A9170;

  aBlock = sub_22F36C4EC(v34, sub_22F120B48, sub_22F3CD0A8);
  sub_22F36D914(&aBlock, v60, v33);

  v35 = aBlock;
  if (aBlock < 0 || (aBlock & 0x4000000000000000) != 0)
  {
    v57 = aBlock;
    v36 = sub_22F741A00();
    v35 = v57;
  }

  else
  {
    v36 = *(aBlock + 16);
  }

  if (!v36)
  {

    sub_22F36C390();
    v55 = swift_allocError();
    *v56 = 0xD000000000000034;
    goto LABEL_22;
  }

  if ((v35 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x2319016F0](0, v35);
  }

  else
  {
    if (!*(v35 + 16))
    {
      __break(1u);

      __break(1u);
      return;
    }

    v37 = *(v35 + 32);
  }

  v38 = v37;

  v39 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v39 setAllowsCellularAccess_];
  [v39 setRequiresPowerPluggedIn_];
  [v39 setAllowsExpensiveAccess_];
  [v39 setDiscretionary_];
  v40 = swift_allocObject();
  v41 = v59;
  *(v40 + 16) = v59;
  *(v40 + 24) = v38;
  v69 = sub_22F36ED88;
  v70 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v67 = sub_22F36BBD4;
  v68 = &block_descriptor_36_0;
  v42 = _Block_copy(&aBlock);
  v43 = v41;
  v44 = v38;

  [v44 attachProgressCallBack_];
  _Block_release(v42);

  v45 = sub_22F740B70();
  v46 = sub_22F7415C0();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_22F145F20(v58, a2, &aBlock);
    _os_log_impl(&dword_22F0FC000, v45, v46, "[MemoriesMusic] (CuratedSongLibrary) Starting MobileAsset download of storefrontIdentifierKey: %s ", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x2319033A0](v48, -1, -1);
    MEMORY[0x2319033A0](v47, -1, -1);
  }

  v49 = swift_allocObject();
  v49[2] = sub_22F36EC7C;
  v49[3] = v17;
  v49[4] = v44;
  v69 = sub_22F36ED64;
  v70 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v67 = sub_22F36B130;
  v68 = &block_descriptor_43;
  v50 = _Block_copy(&aBlock);
  v51 = v44;
  v52 = v39;

  [v51 startDownload:v52 completionWithError:v50];

  _Block_release(v50);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F36ECD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22F36EFC8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, id, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, Class *a8, Class *a9)
{
  v14 = objc_allocWithZone(*a8);
  v15 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v16 = [v14 initWithGraph:a7 elementIdentifiers:v15];

  v17 = [objc_allocWithZone(*a9) initWithGraph:a7 elementIdentifiers:a2];
  a4(v16, v17, a3);
}

uint64_t sub_22F36F0BC(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F3F660C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_22F371954(v5);
  *a1 = v2;
  return result;
}

PhotosGraph::PeopleIndex::CreationOptions __swiftcall PeopleIndex.CreationOptions.init(personUUIDs:featureVectorLength:positivesOversamplingFactor:negativesOversamplingFactor:)(Swift::OpaquePointer personUUIDs, Swift::Int featureVectorLength, Swift::Int positivesOversamplingFactor, Swift::Int negativesOversamplingFactor)
{
  v4->_rawValue = personUUIDs._rawValue;
  v4[1]._rawValue = featureVectorLength;
  v4[2]._rawValue = positivesOversamplingFactor;
  v4[3]._rawValue = negativesOversamplingFactor;
  result.negativesOversamplingFactor = negativesOversamplingFactor;
  result.positivesOversamplingFactor = positivesOversamplingFactor;
  result.featureVectorLength = featureVectorLength;
  result.personUUIDs = personUUIDs;
  return result;
}

uint64_t static PeopleIndex.create(using:with:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v90 = a1;
  v5 = sub_22F73FE50();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v79 - v11;
  v14 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v91 = a2[3];
  v16 = *(v14 + 16);
  if (!v16)
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EE0, &unk_22F7889B0);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    v38 = swift_allocObject();
    sub_22F740830();
    v39 = v91;
    if (v15 >= 1 && v91 >= 1)
    {
      v40 = MEMORY[0x277D84F90];
      *(v38 + 16) = MEMORY[0x277D84F90];
      *(v38 + 24) = 1;
      *(v38 + 32) = v15;
      *(v38 + 40) = v39;
      v41 = type metadata accessor for PeopleIndex();
      v42 = *(v41 + 48);
      v43 = *(v41 + 52);
      v21 = swift_allocObject();
      v21[2] = v13;
      v21[3] = v40;
      v21[4] = MEMORY[0x277D84F98];
      v21[5] = v38;
      sub_22F73FE00();
      (*(v6 + 32))(v21 + OBJC_IVAR____TtC11PhotosGraph11PeopleIndex_featureVectorZerosPadding, v12, v5);
      return v21;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v88 = v15;
  if (qword_27DAAFDA8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v17 = qword_27DAD0E90;
  *&v18 = CACurrentMediaTime();
  sub_22F1B560C("CreatePeopleIndex", 17, 2u, v18, 0, v17, v101);
  v87 = v6;
  v86 = v9;
  if (v13 >= v16)
  {
    goto LABEL_8;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  v19 = *(v14 + 16);
  if (v19 < v13)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v19 != v13)
  {
    sub_22F10AB90(v14, v14 + 32, 0, (2 * v13) | 1);
    v14 = v20;
    goto LABEL_9;
  }

LABEL_8:

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2718, &unk_22F7889A0);
  v21 = swift_allocObject();
  v6 = *(v14 + 16);

  v16 = sub_22F1515F8(v22);

  v23 = v16[2];

  v85 = v6;
  if (v6 != v23)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2720, &qword_22F77AA20);
    sub_22F372478();
    swift_allocError();
    swift_willThrow();
    swift_deallocPartialClassInstance();
    sub_22F1B2BBC(1);

    return v21;
  }

  v83 = v13;
  v81 = v5;
  v82 = v3;
  v21[2] = v14;
  v9 = *(v14 + 16);

  v84 = v21;
  if (v9)
  {
    v24 = 0;
    v25 = v14 + 40;
    v79 = v9 - 1;
    v89 = MEMORY[0x277D84F90];
    v80 = v14 + 40;
    do
    {
      v5 = (v25 + 16 * v24);
      v13 = v24;
      while (1)
      {
        if (v13 >= *(v14 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v6 = v14;
        v24 = v13 + 1;
        v26 = *(v5 - 1);
        v3 = *v5;
        sub_22F191888();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

        v16 = sub_22F740DF0();
        v28 = [ObjCClassFromMetadata localIdentifierWithUUID_];

        if (v28)
        {
          break;
        }

        v5 += 2;
        ++v13;
        v14 = v6;
        if (v9 == v24)
        {
          goto LABEL_28;
        }
      }

      v16 = sub_22F740E20();
      v30 = v29;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_22F13E1A8(0, *(v89 + 2) + 1, 1, v89);
      }

      v14 = v6;
      v32 = *(v89 + 2);
      v31 = *(v89 + 3);
      v3 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v89 = sub_22F13E1A8((v31 > 1), v32 + 1, 1, v89);
      }

      v33 = v89;
      *(v89 + 2) = v3;
      v34 = &v33[16 * v32];
      *(v34 + 4) = v16;
      *(v34 + 5) = v30;
      v25 = v80;
    }

    while (v79 != v13);
  }

  else
  {
    v89 = MEMORY[0x277D84F90];
  }

LABEL_28:
  sub_22F1515F8(v89);

  v44 = objc_opt_self();
  v45 = sub_22F741410();

  v46 = [v44 personNodesForLocalIdentifiers:v45 inGraph:v90];

  v47 = MEMORY[0x277D84F98];
  v100 = MEMORY[0x277D84F98];
  v48 = swift_allocObject();
  *(v48 + 16) = &v100;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_22F3724DC;
  *(v49 + 24) = v48;
  v98 = sub_22F15A678;
  v99 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v95 = 1107296256;
  v96 = sub_22F2136B4;
  v97 = &block_descriptor_42;
  v50 = _Block_copy(&aBlock);

  [v46 enumerateUUIDsUsingBlock_];
  _Block_release(v50);
  LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

  if (v50)
  {
    goto LABEL_39;
  }

  v89 = v48;
  v90 = v14;
  v51 = objc_opt_self();
  v52 = v46;
  v53 = [v51 momentOfPerson];
  v54 = [objc_msgSend(v52 graph)];
  swift_unknownObjectRelease();
  v55 = [v54 concreteGraph];

  if (v55)
  {
    v56 = [v52 elementIdentifiers];
    v57 = [v55 adjacencyWithSources:v56 relation:v53];

    swift_unknownObjectRetain();
    v58 = [v57 transposed];
    swift_unknownObjectRelease();

    v92 = v47;
    v93 = v47;
    v59 = objc_allocWithZone(PGGraphMomentNodeCollection);
    v60 = [v58 sources];
    v61 = [v59 initWithGraph:v55 elementIdentifiers:v60];

    v62 = swift_allocObject();
    v62[2] = v58;
    v62[3] = v55;
    v62[4] = &v100;
    v62[5] = v84;
    v62[6] = &v93;
    v62[7] = &v92;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_22F372510;
    *(v63 + 24) = v62;
    v98 = sub_22F2F45D8;
    v99 = v63;
    aBlock = MEMORY[0x277D85DD0];
    v95 = 1107296256;
    v96 = sub_22F2136B4;
    v97 = &block_descriptor_13_4;
    v64 = _Block_copy(&aBlock);
    v65 = v58;
    swift_unknownObjectRetain();

    [v61 enumerateUUIDsUsingBlock_];

    _Block_release(v64);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {

      v68 = sub_22F214A98(v67);

      v69 = sub_22F215680(v68, 1, v88, v91);
      v70 = v92;
      v71 = type metadata accessor for PeopleIndex();
      v72 = *(v71 + 48);
      v73 = *(v71 + 52);
      v74 = swift_allocObject();
      v75 = v90;
      v76 = v83;
      v74[2] = v83;
      v74[3] = v75;
      v74[4] = v70;
      v74[5] = v69;
      if (!__OFSUB__(v76, v85))
      {
        v21 = v74;

        v77 = v86;
        sub_22F73FE00();

        swift_unknownObjectRelease();

        (*(v87 + 32))(v21 + OBJC_IVAR____TtC11PhotosGraph11PeopleIndex_featureVectorZerosPadding, v77, v81);

        sub_22F1B2BBC(0);

        return v21;
      }

      goto LABEL_41;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  result = sub_22F741D40();
  __break(1u);
  return result;
}

uint64_t sub_22F36FC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, void *a9)
{
  v59 = a8;
  v60 = a7;
  v57 = a2;
  v58 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B20, &unk_22F788B60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v56 = &v54 - v14;
  v15 = sub_22F73FE50();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  v22 = objc_allocWithZone(PGGraphMomentNodeCollection);
  v23 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v24 = [v22 initWithGraph:a6 elementIdentifiers:v23];

  v25 = [v24 elementIdentifiers];
  v26 = [a5 targetsForSources_];

  v27 = [objc_allocWithZone(PGGraphPersonNodeCollection) initWithGraph:a6 elementIdentifiers:v26];
  v62 = MEMORY[0x277D84F90];
  v28 = [v27 elementIdentifiers];
  v29 = swift_allocObject();
  v29[2] = v60;
  v29[3] = &v62;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_22F372944;
  *(v30 + 24) = v29;
  aBlock[4] = sub_22F21F0D4;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F3618B8;
  aBlock[3] = &block_descriptor_60_0;
  v31 = _Block_copy(aBlock);

  [v28 enumerateIdentifiersWithBlock_];

  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
    goto LABEL_15;
  }

  a6 = a9;

  sub_22F26AF34(v32);

  v33 = *a9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = *a9;
  v35 = aBlock[0];
  *a9 = 0x8000000000000000;
  v30 = sub_22F123714(v21);
  v37 = *(v35 + 16);
  v38 = (v36 & 1) == 0;
  v39 = v37 + v38;
  if (__OFADD__(v37, v38))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    v28 = sub_22F13E1A8(0, *(v28 + 2) + 1, 1, v28);
    a6[v30] = v28;
    goto LABEL_11;
  }

  v40 = v36;
  if (*(v35 + 24) >= v39)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22F1389BC();
      v35 = aBlock[0];
    }
  }

  else
  {
    sub_22F12D6DC(v39, isUniquelyReferenced_nonNull_native);
    v35 = aBlock[0];
    v41 = sub_22F123714(v21);
    if ((v40 & 1) != (v42 & 1))
    {
      result = sub_22F7420C0();
      __break(1u);
      return result;
    }

    v30 = v41;
  }

  v43 = *a9;
  *a9 = v35;

  v44 = *a9;
  if ((v40 & 1) == 0)
  {
    v45 = v55;
    (*(v16 + 16))(v55, v21, v15);
    sub_22F14D4F0(v30, v45, MEMORY[0x277D84F90], v44);
  }

  v60 = v29;
  a6 = v44[7];
  v28 = a6[v30];
  v46 = swift_isUniquelyReferenced_nonNull_native();
  a6[v30] = v28;
  v29 = v27;
  if ((v46 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  v48 = *(v28 + 2);
  v47 = *(v28 + 3);
  if (v48 >= v47 >> 1)
  {
    v28 = sub_22F13E1A8((v47 > 1), v48 + 1, 1, v28);
    a6[v30] = v28;
  }

  *(v28 + 2) = v48 + 1;
  v49 = &v28[16 * v48];
  v51 = v57;
  v50 = v58;
  *(v49 + 4) = v57;
  *(v49 + 5) = v50;
  v52 = v56;
  (*(v16 + 16))(v56, v21, v15);
  (*(v16 + 56))(v52, 0, 1, v15);
  swift_bridgeObjectRetain_n();
  sub_22F121B14(v52, v51, v50);

  (*(v16 + 8))(v21, v15);
}

uint64_t sub_22F3701C8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  if (*(*a3 + 16))
  {
    result = sub_22F122B68(result);
    if (v6)
    {
      v7 = (*(v4 + 56) + 16 * result);
      v9 = *v7;
      v8 = v7[1];
      v10 = *a4;

      result = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v10;
      if ((result & 1) == 0)
      {
        result = sub_22F13E1A8(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
        *a4 = result;
      }

      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_22F13E1A8((v11 > 1), v12 + 1, 1, v10);
        v10 = result;
        *a4 = result;
      }

      *(v10 + 16) = v12 + 1;
      v13 = v10 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v8;
    }
  }

  return result;
}

uint64_t sub_22F370328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t, uint64_t))
{
  v9 = v5;
  v11 = *(v5 + 40);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v9;
  swift_retain_n();
  v13 = a5(a1, 0, a4, v12);

  return v13;
}

float sub_22F3703C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22F73FE50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  sub_22F37051C(a1, a2, &v20 - v14);
  sub_22F37051C(a3, a4, v12);
  sub_22F740000();
  v17 = v16;
  v18 = *(v9 + 8);
  v18(v12, v8);
  v18(v15, v8);
  return v17;
}

uint64_t sub_22F37051C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_22F73FE50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 32);
  if (*(v13 + 16) && (v14 = sub_22F1229E8(a1, a2), (v15 & 1) != 0))
  {
    (*(v9 + 16))(v12, *(v13 + 56) + *(v9 + 72) * v14, v8);
    (*(v9 + 32))(a3, v12, v8);
    return sub_22F73FE10();
  }

  else
  {
    v17 = *(v4 + 16);

    return sub_22F73FE00();
  }
}

float sub_22F370684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float (*a5)(char *, char *))
{
  v21 = a5;
  v9 = sub_22F73FE50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_22F37051C(a1, a2, &v20 - v15);
  sub_22F37051C(a3, a4, v13);
  v17 = v21(v16, v13);
  v18 = *(v10 + 8);
  v18(v13, v9);
  v18(v16, v9);
  return v17;
}

uint64_t sub_22F3707EC()
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  v1 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v3 = &v24 - v2;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_22F741B00();

  v28 = 0xD000000000000020;
  v29 = 0x800000022F79C450;
  v4 = MEMORY[0x231900D40](*(v0 + 24), MEMORY[0x277D837D0]);
  MEMORY[0x231900B10](v4);

  MEMORY[0x231900B10](2570, 0xE200000000000000);
  v5 = *(v0 + 32);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(v0 + 32) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v25 = *(v0 + 32);

  for (i = 0; v11; result = sub_22F372600(v3))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(v25 + 56);
    v19 = (*(v25 + 48) + 16 * v17);
    v21 = *v19;
    v20 = v19[1];
    v22 = sub_22F73FE50();
    (*(*(v22 - 8) + 16))(&v3[*(v24 + 48)], v18 + *(*(v22 - 8) + 72) * v17, v22);
    *v3 = v21;
    *(v3 + 1) = v20;
    v26 = v21;
    v27 = v20;
    swift_bridgeObjectRetain_n();
    MEMORY[0x231900B10](8250, 0xE200000000000000);
    sub_22F3725A8();
    v23 = sub_22F742010();
    MEMORY[0x231900B10](v23);

    MEMORY[0x231900B10](10, 0xE100000000000000);
    MEMORY[0x231900B10](v26, v27);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return v28;
    }

    v11 = *(v7 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *PeopleIndex.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC11PhotosGraph11PeopleIndex_featureVectorZerosPadding;
  v5 = sub_22F73FE50();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t PeopleIndex.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC11PhotosGraph11PeopleIndex_featureVectorZerosPadding;
  v5 = sub_22F73FE50();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t static PeopleIndexUtilities.sortedPersonUUIDs(in:)(uint64_t a1)
{
  if (qword_27DAAFDA8 != -1)
  {
    swift_once();
  }

  v3 = qword_27DAD0E90;
  *&v4 = CACurrentMediaTime();
  sub_22F1B560C("SortedPeople", 12, 2u, v4, 0, v3, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3478, &unk_22F783BA0);
  v5 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  v6 = MEMORY[0x277D84F98];
  v52 = MEMORY[0x277D84F98];
  v7 = swift_allocObject();
  *(v7 + 16) = &v52;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_22F372970;
  *(v8 + 24) = v7;
  v50 = sub_22F2F45D8;
  v51 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_22F2136B4;
  v49 = &block_descriptor_30_2;
  v9 = _Block_copy(&aBlock);

  [v5 enumerateUUIDsUsingBlock_];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
    goto LABEL_20;
  }

  v41 = v1;
  v10 = objc_opt_self();
  v11 = v5;
  v12 = [v10 momentOfPerson];
  v5 = [objc_msgSend(v11 graph)];
  swift_unknownObjectRelease();
  v13 = [v5 concreteGraph];

  if (!v13)
  {
LABEL_21:
    LODWORD(v39) = 0;
    v38 = 40;
    sub_22F741D40();
    __break(1u);
    goto LABEL_22;
  }

  v14 = [v11 elementIdentifiers];
  v15 = [v13 adjacencyWithSources:v14 relation:v12];

  v44 = v11;
  v45 = v6;
  MEMORY[0x28223BE20](v16);
  v38 = &v52;
  v39 = &v45;
  v17 = swift_allocObject();
  v17[2] = sub_22F372668;
  v17[3] = &v37;
  v17[4] = v15;
  v17[5] = v13;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_22F372670;
  *(v18 + 24) = v17;
  v50 = sub_22F15A3B8;
  v51 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_22F107F34;
  v49 = &block_descriptor_39_1;
  v19 = _Block_copy(&aBlock);
  v5 = v51;
  v20 = v15;
  v43 = v13;
  swift_unknownObjectRetain();

  v42 = v20;
  [v20 enumerateTargetsBySourceWith_];
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v40 = v7;
  v21 = v45;
  v22 = *(v45 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v24 = sub_22F10B5E8(*(v45 + 16), 0);
    v25 = sub_22F11C970(&aBlock, v24 + 4, v22, v21);

    sub_22F1534EC();
    if (v25 == v22)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v24 = v23;
LABEL_10:
  aBlock = v24;
  v26 = v41;
  sub_22F36F0BC(&aBlock);
  v5 = v26;
  if (v26)
  {
LABEL_22:

    __break(1u);
    return result;
  }

  v27 = aBlock;
  v28 = aBlock[2];
  if (v28)
  {
    v41 = 0;
    aBlock = v23;
    sub_22F146454(0, v28, 0);
    v29 = aBlock;
    v30 = v27 + 5;
    do
    {
      v32 = *(v30 - 1);
      v31 = *v30;
      aBlock = v29;
      v34 = v29[2];
      v33 = v29[3];

      if (v34 >= v33 >> 1)
      {
        sub_22F146454((v33 > 1), v34 + 1, 1);
        v29 = aBlock;
      }

      v29[2] = v34 + 1;
      v35 = &v29[2 * v34];
      v35[4] = v32;
      v35[5] = v31;
      v30 += 3;
      --v28;
    }

    while (v28);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();

    v29 = MEMORY[0x277D84F90];
  }

  sub_22F1B2BBC(0);

  return v29;
}

void sub_22F371230(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = [a1 elementIdentifiers];
  v9 = [v8 firstElement];

  v10 = *a4;
  if (*(v10 + 16))
  {
    v11 = sub_22F122B68(v9);
    if (v12)
    {
      v13 = (*(v10 + 56) + 16 * v11);
      v14 = *v13;
      v15 = v13[1];

      v16 = [a2 count];
      v17 = *a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *a5;
      *a5 = 0x8000000000000000;
      sub_22F131078(v16, v14, v15, isUniquelyReferenced_nonNull_native);

      v19 = *a5;
      *a5 = v20;
    }
  }
}

uint64_t sub_22F371324(void *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22F73F470();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 0;
  v8 = [a1 urlForApplicationDataFolderIdentifier:1 error:{v15, v5}];
  v9 = v15[0];
  if (v8)
  {
    v10 = v8;
    sub_22F73F430();
    v11 = v9;

    sub_22F73F410();
    result = (*(v3 + 8))(v7, v2);
  }

  else
  {
    v13 = v15[0];
    sub_22F73F370();

    result = swift_willThrow();
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static PeopleIndexUtilities.persist(personUUIDs:for:)(uint64_t a1, void *a2)
{
  v5 = sub_22F73F470();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22F371324(a2);
  if (!v2)
  {
    v11 = sub_22F73F350();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_22F73F340();
    sub_22F73F320();
    v17[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F1BA494(&qword_2810A92E8);
    v14 = sub_22F73F330();
    v16 = v15;
    sub_22F73F520();
    (*(v6 + 8))(v9, v5);
    sub_22F133BF0(v14, v16);
  }

  return result;
}

uint64_t static PeopleIndexUtilities.loadPersonUUIDs(for:)(void *a1)
{
  v3 = sub_22F73F470();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22F371324(a1);
  if (!v1)
  {
    v9 = [objc_opt_self() defaultManager];
    sub_22F73F450();
    v10 = sub_22F740DF0();

    v11 = [v9 fileExistsAtPath_];

    if (v11)
    {
      v12 = sub_22F73F310();
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      sub_22F73F300();
      v16 = sub_22F73F480();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      sub_22F1BA494(&qword_2810A92D8);
      sub_22F73F2F0();
      (*(v4 + 8))(v7, v3);
      sub_22F133BF0(v16, v18);

      return v19[1];
    }

    else
    {
      sub_22F3726AC();
      swift_allocError();
      *v15 = 1;
      swift_willThrow();
      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t sub_22F371954(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22F742000();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10B8, &qword_22F7714F8);
        v5 = sub_22F741200();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22F371B4C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22F371A5C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22F371A5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v8;
    v14 = v7;
    while (1)
    {
      if (v14[2] >= v12)
      {
        result = *v14;
        v15 = *v14 == v10 && v14[1] == v11;
        if (v15 || (result = sub_22F742040(), (result & 1) == 0))
        {
LABEL_4:
          ++v4;
          v7 += 24;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v6)
      {
        break;
      }

      v11 = v14[4];
      v12 = v14[5];
      v16 = v14[2];
      v10 = v14[3];
      *(v14 + 3) = *v14;
      v14[5] = v16;
      *v14 = v10;
      v14[1] = v11;
      v14[2] = v12;
      v14 -= 3;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F371B4C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v97 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_110:
    v97 = *v97;
    if (!v97)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_112;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      v12 = (*v5 + 24 * v9);
      if (v12[2] >= v11[2])
      {
        result = *v12;
        if (*v12 == *v11 && v12[1] == v11[1])
        {
          v13 = 0;
        }

        else
        {
          result = sub_22F742040();
          v13 = result;
        }
      }

      else
      {
        v13 = 1;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v15 = (v10 + 24 * v9 + 32);
        do
        {
          if (v15[1] < v15[4])
          {
            if ((v13 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            result = *(v15 - 1);
            if (result == v15[2] && *v15 == v15[3])
            {
              if (v13)
              {
                goto LABEL_28;
              }
            }

            else
            {
              result = sub_22F742040();
              if ((v13 ^ result))
              {
                goto LABEL_27;
              }
            }
          }

          ++v7;
          v15 += 3;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_27:
      if (v13)
      {
LABEL_28:
        if (v7 < v9)
        {
          goto LABEL_141;
        }

        if (v9 < v7)
        {
          v17 = 24 * v7 - 8;
          v18 = 24 * v9;
          v19 = v7;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v26 = *v5;
              if (!*v5)
              {
                goto LABEL_145;
              }

              v21 = (v26 + v18);
              v22 = (v26 + v17);
              v23 = *v21;
              v24 = *(v21 + 2);
              v25 = *v22;
              *v21 = *(v22 - 1);
              *(v21 + 2) = v25;
              *(v22 - 1) = v23;
              *v22 = v24;
            }

            ++v20;
            v17 -= 24;
            v18 += 24;
          }

          while (v20 < v19);
        }
      }
    }

LABEL_36:
    v27 = v5[1];
    if (v7 < v27)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_138;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_139;
        }

        if (v9 + a4 >= v27)
        {
          v28 = v5[1];
        }

        else
        {
          v28 = v9 + a4;
        }

        if (v28 < v9)
        {
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          result = sub_22F3F5F98(v8);
          v8 = result;
LABEL_112:
          v88 = v8 + 16;
          v89 = *(v8 + 2);
          if (v89 >= 2)
          {
            while (1)
            {
              v90 = *v5;
              if (!*v5)
              {
                goto LABEL_146;
              }

              v91 = &v8[16 * v89];
              v5 = *v91;
              v92 = &v88[2 * v89];
              v93 = v92[1];
              sub_22F372184((v90 + 24 * *v91), (v90 + 24 * *v92), v90 + 24 * v93, v97);
              if (v4)
              {
              }

              if (v93 < v5)
              {
                goto LABEL_134;
              }

              if (v89 - 2 >= *v88)
              {
                goto LABEL_135;
              }

              *v91 = v5;
              *(v91 + 1) = v93;
              v94 = *v88 - v89;
              if (*v88 < v89)
              {
                goto LABEL_136;
              }

              v89 = *v88 - 1;
              result = memmove(v92, v92 + 2, 16 * v94);
              *v88 = v89;
              v5 = a3;
              if (v89 <= 1)
              {
              }
            }
          }
        }

        if (v7 != v28)
        {
          break;
        }
      }
    }

LABEL_59:
    if (v7 < v9)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13D970(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v42 = *(v8 + 2);
    v41 = *(v8 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_22F13D970((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v43;
    v44 = &v8[16 * v42];
    *(v44 + 4) = v9;
    *(v44 + 5) = v7;
    v45 = *v97;
    if (!*v97)
    {
      goto LABEL_147;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v8 + 4);
          v48 = *(v8 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_79:
          if (v50)
          {
            goto LABEL_125;
          }

          v63 = &v8[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_128;
          }

          v69 = &v8[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_132;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v73 = &v8[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_93:
        if (v68)
        {
          goto LABEL_127;
        }

        v76 = &v8[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_130;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_100:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*v5)
        {
          goto LABEL_144;
        }

        v85 = *&v8[16 * v84 + 32];
        v86 = *&v8[16 * v46 + 40];
        sub_22F372184((*v5 + 24 * v85), (*v5 + 24 * *&v8[16 * v46 + 32]), *v5 + 24 * v86, v45);
        if (v4)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22F3F5F98(v8);
        }

        if (v84 >= *(v8 + 2))
        {
          goto LABEL_122;
        }

        v87 = &v8[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_22F3F5F0C(v46);
        v43 = *(v8 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v8[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_123;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_124;
      }

      v58 = &v8[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_126;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_129;
      }

      if (v62 >= v54)
      {
        v80 = &v8[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_133;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_110;
    }
  }

  v29 = *v5;
  v30 = *v5 + 24 * v7 - 24;
  v95 = v9;
  v31 = v9 - v7;
LABEL_47:
  v32 = (v29 + 24 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v32[2];
  v36 = v31;
  v37 = v30;
  while (1)
  {
    if (v37[2] >= v35)
    {
      result = *v37;
      v38 = *v37 == v33 && v37[1] == v34;
      if (v38 || (result = sub_22F742040(), (result & 1) == 0))
      {
LABEL_46:
        ++v7;
        v30 += 24;
        --v31;
        if (v7 != v28)
        {
          goto LABEL_47;
        }

        v7 = v28;
        v5 = a3;
        v9 = v95;
        goto LABEL_59;
      }
    }

    if (!v29)
    {
      break;
    }

    v34 = v37[4];
    v35 = v37[5];
    v39 = v37[2];
    v33 = v37[3];
    *(v37 + 3) = *v37;
    v37[5] = v39;
    *v37 = v33;
    v37[1] = v34;
    v37[2] = v35;
    v37 -= 3;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_22F372184(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __dst - __src;
  v8 = (__dst - __src) / 24;
  v9 = a3 - __dst;
  v10 = (a3 - __dst) / 24;
  if (v8 >= v10)
  {
    if (a4 != __dst || &__dst[24 * v10] <= a4)
    {
      memmove(a4, __dst, 24 * v10);
      v5 = a3;
    }

    v13 = &v4[24 * v10];
    if (v9 < 24 || v6 <= __src)
    {
      v30 = v6;
    }

    else
    {
LABEL_26:
      v20 = 0;
      v21 = v13;
      v34 = v6 - 24;
      do
      {
        v13 = &v21[v20];
        v22 = (v5 + v20);
        v23 = v5 + v20 - 24;
        if (*(v6 - 1) < *&v21[v20 - 8])
        {
          goto LABEL_36;
        }

        if (*(v6 - 3) != *(v13 - 3) || *(v6 - 2) != *(v13 - 2))
        {
          v25 = v5;
          v26 = v4;
          v27 = v21;
          v28 = sub_22F742040();
          v21 = v27;
          v4 = v26;
          v5 = v25;
          if (v28)
          {
LABEL_36:
            v30 = v6 - 24;
            if (v22 != v6)
            {
              v31 = *v34;
              *(v23 + 16) = *(v6 - 1);
              *v23 = v31;
            }

            if (v13 <= v4 || (v5 = v23, v6 -= 24, v34 <= __src))
            {
              v13 = &v21[v20];
              goto LABEL_44;
            }

            goto LABEL_26;
          }
        }

        if (v22 != v13)
        {
          v29 = *(v13 - 24);
          *(v23 + 16) = *(v13 - 1);
          *v23 = v29;
        }

        v20 -= 24;
        v13 = &v21[v20];
      }

      while (&v21[v20] > v4);
      v30 = v6;
    }
  }

  else
  {
    v11 = __src;
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
      v5 = a3;
    }

    v13 = &v4[24 * v8];
    if (v7 >= 24 && v6 < v5)
    {
      while (*(v4 + 2) >= *(v6 + 2))
      {
        v16 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
        if (!v16)
        {
          v17 = v5;
          v18 = sub_22F742040();
          v5 = v17;
          if (v18)
          {
            break;
          }
        }

        v14 = v4;
        v16 = v11 == v4;
        v4 += 24;
        if (!v16)
        {
          goto LABEL_9;
        }

LABEL_10:
        v11 += 24;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_41;
        }
      }

      v14 = v6;
      v16 = v11 == v6;
      v6 += 24;
      if (v16)
      {
        goto LABEL_10;
      }

LABEL_9:
      v15 = *v14;
      *(v11 + 2) = *(v14 + 2);
      *v11 = v15;
      goto LABEL_10;
    }

LABEL_41:
    v30 = v11;
  }

LABEL_44:
  v32 = (v13 - v4) / 24;
  if (v30 != v4 || v30 >= &v4[24 * v32])
  {
    memmove(v30, v4, 24 * v32);
  }

  return 1;
}

unint64_t sub_22F372478()
{
  result = qword_27DAB2728;
  if (!qword_27DAB2728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB2720, &qword_22F77AA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2728);
  }

  return result;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for PeopleIndex()
{
  result = qword_27DAB3D20;
  if (!qword_27DAB3D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22F3725A8()
{
  result = qword_27DAB3D10;
  if (!qword_27DAB3D10)
  {
    sub_22F73FE50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3D10);
  }

  return result;
}

uint64_t sub_22F372600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F3726AC()
{
  result = qword_27DAB3D18;
  if (!qword_27DAB3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3D18);
  }

  return result;
}

uint64_t sub_22F372708()
{
  result = sub_22F73FE50();
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

unint64_t sub_22F3728F0()
{
  result = qword_27DAB3D30;
  if (!qword_27DAB3D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3D30);
  }

  return result;
}

uint64_t MusicForTimeFrontfillCacher.MusicForTimeError.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t sub_22F372A48()
{
  v0 = sub_22F73F9B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v5, qword_2810AA158);
  v6 = __swift_project_value_buffer(v0, qword_2810AA158);
  v7 = [objc_opt_self() currentCalendar];
  sub_22F73F900();

  return (*(v1 + 32))(v6, v4, v0);
}

uint64_t static MusicForTimeFrontfillCacher.cacheMusic(forMomentsInPhotoLibrary:forceCaching:progressReporter:completionHandler:)(void *a1, int a2, void *a3, NSObject *a4, uint64_t a5)
{
  v201 = a5;
  v202 = a4;
  LODWORD(v199) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v178 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v182 = &v161 - v11;
  v184 = type metadata accessor for CacherStatus(0);
  v183 = *(v184 - 8);
  v12 = *(v183 + 64);
  MEMORY[0x28223BE20](v184);
  v180 = (&v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v189 = &v161 - v15;
  v179 = sub_22F73EEC0();
  v177 = *(v179 - 8);
  v16 = *(v177 + 64);
  MEMORY[0x28223BE20](v179);
  v176 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = v17;
  MEMORY[0x28223BE20](v18);
  v181 = &v161 - v19;
  v188 = sub_22F740AD0();
  v190 = *(v188 - 8);
  v20 = *(v190 + 64);
  MEMORY[0x28223BE20](v188);
  v187 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22F740C00();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v193 = &v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_22F73F690();
  v194 = *(v195 - 8);
  v25 = v194[8];
  MEMORY[0x28223BE20](v195);
  v192 = &v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v191 = &v161 - v27;
  MEMORY[0x28223BE20](v28);
  v197 = &v161 - v29;
  MEMORY[0x28223BE20](v30);
  v198 = &v161 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v185 = *(v32 - 8);
  v33 = *(v185 + 64);
  MEMORY[0x28223BE20](v32 - 8);
  MEMORY[0x28223BE20](v34);
  v36 = &v161 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v161 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v161 - v41;
  MEMORY[0x28223BE20](v43);
  v200 = &v161 - v44;
  v196 = a3;
  v45 = sub_22F7416D0();
  v47 = v46;
  v49 = v48;
  v50 = sub_22F1A26E0(a1);
  v168 = v33;
  v170 = v42;
  v169 = v25;
  v173 = v49;
  v167 = v36;
  v166 = &v161 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = v45;
  v174 = v47;
  v171 = v39;
  v51 = v50;
  objc_allocWithZone(type metadata accessor for MusicBag());
  v52 = v51;
  v53 = sub_22F1ED5B0(v51);

  v54 = v200;
  MusicCache.readCacherStatus(category:)(0xD000000000000015, 0x800000022F78E8A0, v200);
  v55 = v172;
  v56 = sub_22F375984(v54, v53, v172);
  v57 = v173;
  if (((v56 | v199) & 1) == 0)
  {
    sub_22F7416A0();
    (v202)(1, 0);

    v61 = v54;
    return sub_22F120ADC(v61, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  v199 = 0x800000022F78E8A0;
  v58 = v198;
  v59 = v197;
  static MusicForTimeFrontfillCacher.queryDateRange(with:)(v198, v197, v52);
  v60 = v193;
  sub_22F740BD0();
  v165 = sub_22F22FB24(v60, 0);
  v164 = v53;
  static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0xD000000000000015, v199, &v211);
  v62 = v170;
  sub_22F13BA9C(v54, v170, &qword_27DAB1DA0, &unk_22F7771B0);
  v63 = v194;
  v64 = v194 + 2;
  v65 = v194[2];
  v66 = v195;
  v65(v191, v58, v195);
  v163 = v64;
  v162 = v65;
  v65(v192, v59, v66);
  sub_22F13BA9C(v62, v171, &qword_27DAB1DA0, &unk_22F7771B0);
  v67 = (*(v185 + 80) + 24) & ~*(v185 + 80);
  v68 = (v168 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = *(v63 + 80);
  v70 = (v69 + v68 + 8) & ~v69;
  v71 = (v169 + v69 + v70) & ~v69;
  v193 = ((v169 + v71 + 7) & 0xFFFFFFFFFFFFFFF8);
  v169 = (v193 + 15) & 0xFFFFFFFFFFFFFFF8;
  v72 = v196;
  v73 = (v169 + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v186;
  sub_22F1207AC(v170, v74 + v67, &qword_27DAB1DA0, &unk_22F7771B0);
  *(v74 + v68) = v52;
  v75 = v63[4];
  v76 = v74 + v70;
  v77 = v195;
  v75(v76, v191, v195);
  v75(v74 + v71, v192, v77);
  v78 = v173;
  *&v193[v74] = v173;
  *(v74 + v169) = v72;
  v185 = v74;
  v79 = (v74 + v73);
  v80 = v201;
  *v79 = v202;
  v79[1] = v80;
  v81 = v52;
  v82 = v198;
  v193 = v81;
  v83 = v78;

  v84 = v72;
  v85 = v197;
  v196 = v84;
  v86 = sub_22F73F660();
  v192 = v83;
  if (v86 != -1)
  {
    type metadata accessor for MusicKitClientError();
    sub_22F3797F8(&qword_27DAB2948, type metadata accessor for MusicKitClientError);
    v191 = swift_allocError();
    v88 = v87;
    v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2950, &unk_22F781A20) + 48);
    v90 = v162;
    v162(v88, v82, v77);
    v90(v88 + v89, v85, v77);
    swift_storeEnumTagMultiPayload();
    v91 = v167;
    sub_22F13BA9C(v171, v167, &qword_27DAB1DA0, &unk_22F7771B0);
    v92 = v184;
    v93 = v77;
    if ((*(v183 + 48))(v91, 1, v184) == 1)
    {
      sub_22F120ADC(v91, &qword_27DAB1DA0, &unk_22F7771B0);
      v94 = v182;
      (v63[7])(v182, 1, 1, v93);
    }

    else
    {
      v94 = v182;
      sub_22F13BA9C(v91 + *(v92 + 20), v182, &qword_27DAB0920, &qword_22F770B20);
      sub_22F379840(v91, type metadata accessor for CacherStatus);
    }

    v107 = v93;
    v108 = v189;
    v109 = *(v92 + 24);
    sub_22F73F680();
    (v63[7])(&v108[v109], 0, 1, v107);
    *v108 = 0xD000000000000015;
    v110 = v199;
    *(v108 + 1) = v199;
    sub_22F1207AC(v94, &v108[*(v92 + 20)], &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    v111 = v187;
    sub_22F740AC0();
    sub_22F740A90();
    v112 = *(v190 + 8);
    v113 = v188;
    v114 = v112(v111, v188);
    v115 = *&v193[OBJC_IVAR___PGMusicCache_managedObjectContext];
    MEMORY[0x28223BE20](v114);
    *(&v161 - 4) = 0xD000000000000015;
    *(&v161 - 3) = v110;
    *(&v161 - 2) = v116;
    *(&v161 - 1) = v108;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v112(v111, v113);
    sub_22F7416A0();
    v153 = v191;
    (v202)(0, v191);

    sub_22F1D210C(&v211);

    sub_22F379840(v189, type metadata accessor for CacherStatus);
    v154 = v200;
    v155 = v194;
    v157 = v197;
LABEL_20:
    sub_22F120ADC(v171, &qword_27DAB1DA0, &unk_22F7771B0);
    v158 = v155[1];
    v159 = v157;
    v160 = v195;
    v158(v159, v195);
    v158(v198, v160);
    v61 = v154;
    return sub_22F120ADC(v61, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  sub_22F741740();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  v95 = qword_2810A8E38;
  v96 = v187;
  sub_22F740AC0();
  v191 = v95;
  sub_22F740A90();
  v97 = *(v190 + 8);
  v98 = v188;
  v97(v96, v188);
  v99 = v165;
  v101 = *(v165 + 3);
  v100 = *(v165 + 4);
  v203[0] = v211;
  v102 = *(v165 + 5);
  v103 = *(v165 + 6);
  v104 = *(v165 + 7);
  v105 = *(v165 + 8);
  aBlock = v101;
  v206 = v100;
  v207 = v102;
  v208 = v103;
  v209 = v104;
  v210 = v105;
  v203[1] = v212;
  v203[2] = v213;
  v204 = v214;

  v106 = v181;
  sub_22F3E29C0(v85, v203, v181);
  v117 = v106;

  v118 = swift_allocObject();
  v201 = v118;
  *(v118 + 16) = "MusicKitClient Fetch Tesseract Songs";
  *(v118 + 24) = 36;
  *(v118 + 32) = 2;
  *(v118 + 40) = sub_22F375E7C;
  *(v118 + 48) = v185;

  sub_22F741740();
  sub_22F740AC0();
  sub_22F740A90();
  v97(v96, v98);
  v202 = *(v99 + 9);
  v119 = v177;
  v120 = v176;
  v121 = v179;
  (*(v177 + 16))(v176, v117, v179);
  v122 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v123 = (v175 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
  v124 = (v123 + 63) & 0xFFFFFFFFFFFFFFF8;
  v199 = (v124 + 15) & 0xFFFFFFFFFFFFFFF8;
  v125 = (v124 + 39) & 0xFFFFFFFFFFFFFFF8;
  v126 = swift_allocObject();
  (*(v119 + 32))(v126 + v122, v120, v121);
  v127 = v126 + v123;
  v128 = v212;
  v129 = v213;
  *v127 = v211;
  *(v127 + 16) = v128;
  *(v127 + 32) = v129;
  *(v127 + 48) = v214;
  *(v126 + v124) = v99;
  v130 = v126 + v199;
  *v130 = "MusicKitClient HTTP Request";
  *(v130 + 8) = 27;
  *(v130 + 16) = 2;
  v131 = v174;
  *(v126 + v125) = v174;
  v132 = (v126 + ((v125 + 15) & 0xFFFFFFFFFFFFFFF8));
  v133 = v201;
  *v132 = sub_22F2915B8;
  v132[1] = v133;
  v134 = swift_allocObject();
  v134[2] = sub_22F233FAC;
  v134[3] = v126;
  v209 = sub_22F2915BC;
  v210 = v134;
  aBlock = MEMORY[0x277D85DD0];
  v206 = 1107296256;
  v207 = sub_22F2280B0;
  v208 = &block_descriptor_43;
  v135 = _Block_copy(&aBlock);
  sub_22F1D20B0(&v211, v203);

  v136 = v131;

  dispatch_sync(v202, v135);

  _Block_release(v135);

  sub_22F1D210C(&v211);

  (*(v119 + 8))(v181, v179);
  sub_22F120ADC(v171, &qword_27DAB1DA0, &unk_22F7771B0);
  v137 = v194[1];
  v138 = v195;
  v137(v197, v195);
  v137(v198, v138);
  sub_22F120ADC(v200, &qword_27DAB1DA0, &unk_22F7771B0);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    v141 = v178;
    sub_22F13BA9C(isEscapingClosureAtFileLocation + 14, v178, &qword_27DAB0920, &qword_22F770B20);
    v142 = v134;
    sub_22F379840(isEscapingClosureAtFileLocation, type metadata accessor for CacherStatus);
    v143 = v195;
    v144 = v194;
    v154 = v200;
    v145 = v180;
    sub_22F73F680();
    (v144[7])(v145, 0, 1, v143);
    *v145 = 0xD000000000000015;
    v146 = v199;
    v145[1] = v199;
    sub_22F1207AC(v141, v145 + 14, &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v147 = v138;
    v148 = v138;
    v149 = v191;
    v150 = (v191)(v124, v147);
    v151 = *&v193[OBJC_IVAR___PGMusicCache_managedObjectContext];
    MEMORY[0x28223BE20](v150);
    *(&v161 - 4) = 0xD000000000000015;
    *(&v161 - 3) = v146;
    *(&v161 - 2) = v152;
    *(&v161 - 1) = v145;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v149(v124, v148);
    sub_22F7416A0();
    v156 = v189;
    (v202)(0, v189);

    sub_22F1D210C(&v211);

    sub_22F379840(v180, type metadata accessor for CacherStatus);
    v157 = v197;
    v155 = v194;
    goto LABEL_20;
  }

  return result;
}

uint64_t static MusicForTimeFrontfillCacher.queryDateRange(with:)(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t, char *, uint64_t))
{
  v42 = a3;
  v37 = a2;
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = &v36 - v7;
  v8 = sub_22F73F690();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  if (qword_2810AA150 != -1)
  {
    swift_once();
  }

  v22 = sub_22F73F9B0();
  __swift_project_value_buffer(v22, qword_2810AA158);
  sub_22F73F680();
  sub_22F73F5A0();
  v41 = v9;
  v23 = *(v9 + 8);
  v23(v15, v8);
  sub_22F73F800();
  v23(v18, v8);
  sub_22F73F680();
  sub_22F73F5A0();
  v23(v15, v8);
  sub_22F73F800();
  v23(v18, v8);
  v43 = 0;
  v44 = 0;
  v45 = 1;
  v24 = v46;
  v25 = sub_22F3762E8(v42, v21, v12);
  if (v24)
  {

    v26 = v12;
LABEL_10:
    v23(v26, v8);
    return (v23)(v21, v8);
  }

  v27 = v25;

  v46 = v12;
  started = _s11PhotosGraph27MusicForTimeFrontfillCacherC5dates12forStartDate03endK0Say10Foundation0K0VGAI_AItFZ_0(v21, v12);
  v29 = sub_22F152CE4(started);

  v30 = sub_22F1EB59C(v27, v29);

  v31 = v40;
  sub_22F17368C(v30, v40);
  v32 = *(v41 + 48);
  if (v32(v31, 1, v8) == 1)
  {

LABEL_9:
    sub_22F120ADC(v31, &qword_27DAB0920, &qword_22F770B20);
    sub_22F3768BC();
    swift_allocError();
    *v34 = 4;
    swift_willThrow();
    v26 = v46;
    goto LABEL_10;
  }

  v33 = *(v41 + 32);
  v41 += 32;
  v42 = v33;
  v33(v39, v31, v8);
  v31 = v38;
  sub_22F172438(v30, v38);

  if (v32(v31, 1, v8) == 1)
  {
    v23(v39, v8);
    goto LABEL_9;
  }

  v23(v46, v8);
  v23(v21, v8);
  return v42(v37, v31, v8);
}

uint64_t sub_22F374BB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, uint64_t), uint64_t a11)
{
  v80 = a7;
  v81 = a8;
  v79 = a6;
  v92 = a5;
  v86 = a4;
  v85 = a2;
  v82 = a1;
  v89 = a11;
  v90 = a10;
  v83 = a9;
  v11 = type metadata accessor for Song();
  v78 = *(v11 - 8);
  v12 = *(v78 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_22F740AD0();
  v88 = *(v91 - 8);
  v15 = *(v88 + 64);
  MEMORY[0x28223BE20](v91);
  v87 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v77 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v77 - v32;
  v34 = type metadata accessor for CacherStatus(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v77 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v84 = (&v77 - v40);
  if (v85)
  {
    sub_22F13BA9C(v86, v20, &qword_27DAB1DA0, &unk_22F7771B0);
    if ((*(v35 + 48))(v20, 1, v34) == 1)
    {
      sub_22F120ADC(v20, &qword_27DAB1DA0, &unk_22F7771B0);
      v41 = sub_22F73F690();
      (*(*(v41 - 8) + 56))(v27, 1, 1, v41);
    }

    else
    {
      sub_22F13BA9C(&v20[*(v34 + 20)], v27, &qword_27DAB0920, &qword_22F770B20);
      sub_22F379840(v20, type metadata accessor for CacherStatus);
    }

    v46 = v92;
    v47 = v87;
    v48 = *(v34 + 24);
    sub_22F73F680();
    v49 = sub_22F73F690();
    (*(*(v49 - 8) + 56))(&v38[v48], 0, 1, v49);
    *v38 = 0xD000000000000015;
    *(v38 + 1) = 0x800000022F78E8A0;
    sub_22F1207AC(v27, &v38[*(v34 + 20)], &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    v50 = v91;
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v51 = *(v88 + 8);
    v52 = v51(v47, v50);
    v53 = *(v46 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v52);
    *(&v77 - 4) = 0xD000000000000015;
    *(&v77 - 3) = 0x800000022F78E8A0;
    *(&v77 - 2) = v46;
    *(&v77 - 1) = v38;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v51(v47, v91);
    sub_22F7416A0();
    v90(0, v82);
    return sub_22F379840(v38, type metadata accessor for CacherStatus);
  }

  else
  {
    sub_22F73F680();
    v42 = sub_22F73F690();
    v43 = *(*(v42 - 8) + 56);
    v43(v33, 0, 1, v42);
    sub_22F13BA9C(v86, v23, &qword_27DAB1DA0, &unk_22F7771B0);
    if ((*(v35 + 48))(v23, 1, v34) == 1)
    {
      sub_22F120ADC(v23, &qword_27DAB1DA0, &unk_22F7771B0);
      v44 = v43;
      v45 = v30;
      v44(v30, 1, 1, v42);
    }

    else
    {
      v45 = v30;
      sub_22F13BA9C(&v23[*(v34 + 24)], v30, &qword_27DAB0920, &qword_22F770B20);
      sub_22F379840(v23, type metadata accessor for CacherStatus);
    }

    v55 = v87;
    v54 = v88;
    v56 = v84;
    *v84 = 0xD000000000000015;
    *(v56 + 8) = 0x800000022F78E8A0;
    v88 = 0x800000022F78E8A0;
    sub_22F1207AC(v33, v56 + *(v34 + 20), &qword_27DAB0920, &qword_22F770B20);
    sub_22F1207AC(v45, v56 + *(v34 + 24), &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v57 = *(v54 + 8);
    v58 = v91;
    v87 = v57;
    v59 = (v57)(v55, v91);
    v60 = *(v92 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v59);
    *(&v77 - 4) = 0xD000000000000015;
    *(&v77 - 3) = v88;
    *(&v77 - 2) = v61;
    *(&v77 - 1) = v56;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    (v87)(v55, v58);
    v62 = v82;
    v63 = *(v82 + 16);
    v64 = MEMORY[0x277D84F90];
    if (v63)
    {
      v96 = MEMORY[0x277D84F90];
      sub_22F146514(0, v63, 0);
      v64 = v96;
      v65 = (v62 + 32);
      v66 = v78;
      do
      {
        memcpy(v95, v65, sizeof(v95));
        memcpy(v94, v65, sizeof(v94));
        sub_22F18C4EC(v95, &v93);
        Song.init(_:)(v94);
        v96 = v64;
        v68 = *(v64 + 16);
        v67 = *(v64 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_22F146514(v67 > 1, v68 + 1, 1);
          v64 = v96;
        }

        *(v64 + 16) = v68 + 1;
        sub_22F294B10(v14, v64 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v68, type metadata accessor for Song);
        v65 += 296;
        --v63;
      }

      while (v63);
      v56 = v84;
    }

    v69 = _s11PhotosGraph27MusicForTimeFrontfillCacherC6filterySayAA4SongVGAGFZ_0(v64);
    sub_22F3789F4(v69, v79, v80, v92, v81);

    if (qword_2810A9478 != -1)
    {
      swift_once();
    }

    v71 = sub_22F740B90();
    __swift_project_value_buffer(v71, qword_2810B4DC0);

    v72 = sub_22F740B70();
    v73 = sub_22F7415C0();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v95[0] = v75;
      *v74 = 134218242;
      v76 = *(v64 + 16);

      *(v74 + 4) = v76;

      *(v74 + 12) = 2080;
      *(v74 + 14) = sub_22F145F20(0x726F46636973754DLL, 0xEC000000656D6954, v95);
      _os_log_impl(&dword_22F0FC000, v72, v73, "Saving %ld of type %s", v74, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x2319033A0](v75, -1, -1);
      MEMORY[0x2319033A0](v74, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22F7416A0();
    sub_22F379840(v56, type metadata accessor for CacherStatus);
    return (v90)(1, 0);
  }
}

id MusicForTimeFrontfillCacher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicForTimeFrontfillCacher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicForTimeFrontfillCacher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F375984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - v6;
  v8 = sub_22F73F690();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v40 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v43 = &v40 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v40 - v15;
  v17 = type metadata accessor for CacherStatus(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F13BA9C(a1, v16, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v22 = &qword_27DAB1DA0;
    v23 = &unk_22F7771B0;
    v24 = v16;
LABEL_5:
    sub_22F120ADC(v24, v22, v23);
    LOBYTE(v27) = 1;
    return v27 & 1;
  }

  sub_22F294B10(v16, v21, type metadata accessor for CacherStatus);
  sub_22F13BA9C(&v21[*(v17 + 20)], v7, &qword_27DAB0920, &qword_22F770B20);
  v26 = v44;
  v25 = v45;
  if ((*(v44 + 48))(v7, 1, v45) == 1)
  {
    sub_22F379840(v21, type metadata accessor for CacherStatus);
    v22 = &qword_27DAB0920;
    v23 = &qword_22F770B20;
    v24 = v7;
    goto LABEL_5;
  }

  v29 = v43;
  (*(v26 + 32))(v43, v7, v25);
  sub_22F1E3F74(v49);
  memcpy(v50, v49, 0x121uLL);
  if (sub_22F1EDAB8(v50) == 1)
  {
    GEOLocationCoordinate2DMake(v50);
    memcpy(v47, v49, 0x121uLL);
    v27 = *GEOLocationCoordinate2DMake(v47);
    v48 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    (*(v26 + 8))(v29, v25);
    sub_22F379840(v21, type metadata accessor for CacherStatus);
  }

  else
  {
    GEOLocationCoordinate2DMake(v50);
    sub_22F120ADC(v49, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v47, v49, 0x121uLL);
    v30 = GEOLocationCoordinate2DMake(v47);
    v31 = *(v30 + 144);
    v32 = *(v30 + 216);
    v33 = *(v30 + 248);
    v27 = v40;
    sub_22F73F680();
    sub_22F73F590();
    v35 = v34;
    v36 = v29;
    v37 = *(v26 + 8);
    v37(v27, v25);
    LOBYTE(v27) = v41;
    v38 = v46;
    sub_22F7416A0();
    if (v38)
    {
      v37(v36, v25);
      sub_22F379840(v21, type metadata accessor for CacherStatus);
    }

    else
    {
      if (v33)
      {
        v39 = v31;
      }

      else
      {
        v39 = v32;
      }

      LOBYTE(v27) = v39 < v35;
      v37(v36, v25);
      sub_22F379840(v21, type metadata accessor for CacherStatus);
    }
  }

  return v27 & 1;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s11PhotosGraph27MusicForTimeFrontfillCacherC5dates12forStartDate03endK0Say10Foundation0K0VGAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v38 = sub_22F73F990();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_22F73F690();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v40 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  v36 = *(v13 + 16);
  v37 = v13 + 16;
  v36(&v29 - v18, a1, v12, v17);
  v34 = sub_22F3797F8(&qword_2810AC708, MEMORY[0x277CC9578]);
  v35 = a2;
  if (sub_22F740DB0())
  {
    v20 = MEMORY[0x277D84F90];
    (*(v13 + 8))(v19, v12);
    return v20;
  }

  else
  {
    v39 = v13 + 32;
    v33 = *MEMORY[0x277CC9968];
    v31 = (v4 + 8);
    v32 = (v4 + 104);
    v30 = (v13 + 48);
    v20 = MEMORY[0x277D84F90];
    v21 = (v13 + 8);
    while (1)
    {
      (v36)(v40, v19, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_22F13E15C(0, *(v20 + 2) + 1, 1, v20);
      }

      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      if (v23 >= v22 >> 1)
      {
        v20 = sub_22F13E15C(v22 > 1, v23 + 1, 1, v20);
      }

      *(v20 + 2) = v23 + 1;
      v24 = *(v13 + 32);
      v24(&v20[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23], v40, v12);
      if (qword_2810AA150 != -1)
      {
        swift_once();
      }

      v25 = sub_22F73F9B0();
      __swift_project_value_buffer(v25, qword_2810AA158);
      v26 = v38;
      (*v32)(v7, v33, v38);
      sub_22F73F940();
      (*v31)(v7, v26);
      result = (*v30)(v11, 1, v12);
      if (result == 1)
      {
        break;
      }

      v28 = *v21;
      (*v21)(v19, v12);
      v24(v19, v11, v12);
      if (sub_22F740DB0())
      {
        v28(v19, v12);
        return v20;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_22F3762E8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v47 - v10;
  v59 = sub_22F73F690();
  v11 = *(v59 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SongSource();
  v15 = *(v14 - 8);
  v48 = v14;
  v49 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v55 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DC0, &qword_22F7711C0);
  v18 = *(v58 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v58);
  v21 = &v47 - v20;
  started = _s11PhotosGraph27MusicForTimeFrontfillCacherC5dates12forStartDate03endK0Say10Foundation0K0VGAI_AItFZ_0(a2, a3);
  v23 = *(started + 16);
  v52 = v11;
  if (v23)
  {
    v53 = a1;
    v54 = v3;
    v57 = *(v11 + 16);
    v24 = *(v11 + 80);
    v50 = started;
    v25 = started + ((v24 + 32) & ~v24);
    v26 = *(v11 + 72);
    v27 = MEMORY[0x277D84F90];
    do
    {
      v28 = *(v58 + 48);
      strcpy(v21, "MusicForTime");
      v21[13] = 0;
      *(v21 + 7) = -5120;
      v57(&v21[v28], v25, v59);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_22F13F8D8(0, v27[2] + 1, 1, v27);
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_22F13F8D8(v29 > 1, v30 + 1, 1, v27);
      }

      v27[2] = v30 + 1;
      sub_22F1207AC(v21, v27 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v30, &qword_27DAB1DC0, &qword_22F7711C0);
      v25 += v26;
      --v23;
    }

    while (v23);

    v11 = v52;
    a1 = v53;
    v4 = v54;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v31 = objc_opt_self();

  v32 = [v31 ignoreProgress];
  v33 = MusicCache.readSongSources(identifiersAndDates:progressReporter:)(v27, v32);
  if (v4)
  {

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v34 = v33;

    v35 = *(v34 + 16);
    if (v35)
    {
      v50 = 0;
      v36 = *(v48 + 28);
      v37 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v48 = v34;
      v38 = v34 + v37;
      v57 = *(v49 + 72);
      v58 = v36;
      v53 = (v11 + 48);
      v54 = (v11 + 32);
      a1 = MEMORY[0x277D84F90];
      v39 = v51;
      v40 = v59;
      do
      {
        v41 = v55;
        sub_22F1A39E0(v38, v55, type metadata accessor for SongSource);
        sub_22F13BA9C(v41 + v58, v39, &qword_27DAB0920, &qword_22F770B20);
        sub_22F379840(v41, type metadata accessor for SongSource);
        if ((*v53)(v39, 1, v40) == 1)
        {
          sub_22F120ADC(v39, &qword_27DAB0920, &qword_22F770B20);
        }

        else
        {
          v42 = *v54;
          (*v54)(v56, v39, v40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_22F13E15C(0, a1[2] + 1, 1, a1);
          }

          v44 = a1[2];
          v43 = a1[3];
          if (v44 >= v43 >> 1)
          {
            a1 = sub_22F13E15C(v43 > 1, v44 + 1, 1, a1);
          }

          a1[2] = v44 + 1;
          v45 = a1 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v44;
          v40 = v59;
          v42(v45, v56, v59);
          v39 = v51;
        }

        v38 += v57;
        --v35;
      }

      while (v35);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return a1;
}

unint64_t sub_22F3768BC()
{
  result = qword_27DAB3D38;
  if (!qword_27DAB3D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3D38);
  }

  return result;
}

uint64_t sub_22F376910(void *a1, int a2, void *a3, uint64_t a4, NSObject *a5)
{
  v183 = a4;
  LODWORD(v194) = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v173 = v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v178 = v157 - v12;
  v181 = type metadata accessor for CacherStatus(0);
  v180 = *(v181 - 8);
  v13 = *(v180 + 64);
  MEMORY[0x28223BE20](v181);
  v176 = v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v185 = v157 - v16;
  v175 = sub_22F73EEC0();
  v174 = *(v175 - 8);
  v17 = *(v174 + 64);
  MEMORY[0x28223BE20](v175);
  v171 = v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = v18;
  MEMORY[0x28223BE20](v19);
  v179 = v157 - v20;
  v187 = sub_22F740AD0();
  v186 = *(v187 - 8);
  v21 = *(v186 + 64);
  MEMORY[0x28223BE20](v187);
  v184 = v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22F740C00();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v190 = v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_22F73F690();
  v191 = *(v196 - 8);
  v26 = *(v191 + 64);
  MEMORY[0x28223BE20](v196);
  v189 = v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v188 = v157 - v28;
  MEMORY[0x28223BE20](v29);
  v193 = v157 - v30;
  MEMORY[0x28223BE20](v31);
  v192 = v157 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v182 = *(v33 - 8);
  v34 = *(v182 + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v172 = v157 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v177 = v157 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = v157 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = v157 - v41;
  MEMORY[0x28223BE20](v43);
  v195 = v157 - v44;
  v45 = swift_allocObject();
  *(v45 + 16) = a5;
  v197 = a5;
  _Block_copy(a5);
  v46 = a3;
  v47 = sub_22F7416D0();
  v49 = v48;
  v51 = v50;
  v52 = sub_22F1A26E0(a1);
  v162 = v42;
  v163 = v26;
  v166 = v51;
  v165 = v46;
  v168 = v47;
  v169 = v49;
  v164 = v39;
  v53 = v196;
  v167 = v45;
  v54 = v52;
  objc_allocWithZone(type metadata accessor for MusicBag());
  v55 = v54;
  v56 = sub_22F1ED5B0(v54);

  v57 = v195;
  MusicCache.readCacherStatus(category:)(0xD000000000000015, 0x800000022F78E8A0, v195);
  v58 = v168;
  v59 = sub_22F375984(v57, v56, v168);
  v161 = v55;
  if (((v59 | v194) & 1) == 0)
  {
    sub_22F7416A0();
    v62 = v166;
    (v197[2].isa)(v197, 1, 0);

    v64 = v57;
LABEL_20:
    sub_22F120ADC(v64, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  v60 = v192;
  v61 = v193;
  static MusicForTimeFrontfillCacher.queryDateRange(with:)(v192, v193, v161);
  v63 = v190;
  sub_22F740BD0();
  v190 = sub_22F22FB24(v63, 0);
  v160 = v56;
  v158 = 0x800000022F78E8A0;
  static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0xD000000000000015, 0x800000022F78E8A0, &v206);
  v65 = v162;
  sub_22F13BA9C(v57, v162, &qword_27DAB1DA0, &unk_22F7771B0);
  v66 = v191;
  v67 = v191 + 16;
  v68 = *(v191 + 16);
  v68(v188, v60, v53);
  v157[1] = v67;
  v157[0] = v68;
  v68(v189, v61, v53);
  sub_22F13BA9C(v65, v164, &qword_27DAB1DA0, &unk_22F7771B0);
  v69 = (*(v182 + 80) + 24) & ~*(v182 + 80);
  v70 = (v34 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = *(v66 + 80);
  v72 = (v71 + v70 + 8) & ~v71;
  v73 = (v163 + v71 + v72) & ~v71;
  v194 = ((v163 + v73 + 7) & 0xFFFFFFFFFFFFFFF8);
  v163 = (v194 + 15) & 0xFFFFFFFFFFFFFFF8;
  v159 = (v163 + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v183;
  sub_22F1207AC(v65, v74 + v69, &qword_27DAB1DA0, &unk_22F7771B0);
  v75 = v161;
  *(v74 + v70) = v161;
  v76 = v165;
  v77 = *(v66 + 32);
  v78 = v60;
  v79 = v196;
  v77(v74 + v72, v188, v196);
  v80 = v167;
  v77(v74 + v73, v189, v79);
  v81 = v166;
  *(v194 + v74) = v166;
  *(v74 + v163) = v76;
  v182 = v74;
  v82 = (v74 + v159);
  *v82 = sub_22F1E088C;
  v82[1] = v80;
  v194 = v75;
  v189 = v81;

  v83 = v76;
  v84 = v193;
  v188 = v83;
  if (sub_22F73F660() != -1)
  {
    type metadata accessor for MusicKitClientError();
    sub_22F3797F8(&qword_27DAB2948, type metadata accessor for MusicKitClientError);
    v183 = swift_allocError();
    v86 = v85;
    v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2950, &unk_22F781A20) + 48);
    v88 = v78;
    v89 = v157[0];
    (v157[0])(v86, v88, v79);
    v89(v86 + v87, v84, v79);
    swift_storeEnumTagMultiPayload();
    v90 = v177;
    sub_22F13BA9C(v164, v177, &qword_27DAB1DA0, &unk_22F7771B0);
    v91 = v181;
    if ((*(v180 + 48))(v90, 1, v181) == 1)
    {
      sub_22F120ADC(v90, &qword_27DAB1DA0, &unk_22F7771B0);
      v92 = v191;
      v93 = v178;
      (*(v191 + 56))(v178, 1, 1, v79);
      v94 = v79;
      v95 = v185;
      v96 = v158;
    }

    else
    {
      v93 = v178;
      sub_22F13BA9C(v90 + *(v91 + 20), v178, &qword_27DAB0920, &qword_22F770B20);
      sub_22F379840(v90, type metadata accessor for CacherStatus);
      v94 = v79;
      v95 = v185;
      v96 = v158;
      v92 = v191;
    }

    v107 = *(v91 + 24);
    sub_22F73F680();
    (*(v92 + 56))(&v95[v107], 0, 1, v94);
    *v95 = 0xD000000000000015;
    *(v95 + 1) = v96;
    sub_22F1207AC(v93, &v95[*(v91 + 20)], &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    v108 = v96;
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    v109 = v184;
    sub_22F740AC0();
    sub_22F740A90();
    v110 = *(v186 + 8);
    v111 = v187;
    v112 = v110(v109, v187);
    v113 = *(v194 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v112);
    v157[-4] = 0xD000000000000015;
    v157[-3] = v108;
    v157[-2] = v114;
    v157[-1] = v95;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v110(v109, v111);
    sub_22F7416A0();
    v122 = v196;
    v115 = v191;
    v151 = v183;
    v152 = sub_22F73F360();
    (v197[2].isa)(v197, 0, v152);

    sub_22F1D210C(&v206);

    v153 = &v208;
LABEL_21:
    sub_22F379840(*(v153 - 32), type metadata accessor for CacherStatus);
    sub_22F120ADC(v164, &qword_27DAB1DA0, &unk_22F7771B0);
    v154 = *(v115 + 8);
    v154(v193, v122);
    v154(v192, v122);
    v64 = v195;
    goto LABEL_20;
  }

  sub_22F741740();
  v97 = v187;
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  v98 = v184;
  sub_22F740AC0();
  sub_22F740A90();
  v99 = *(v186 + 8);
  v99(v98, v97);
  v100 = v190;
  v102 = *(v190 + 3);
  v101 = *(v190 + 4);
  v198[0] = v206;
  v103 = *(v190 + 5);
  v104 = *(v190 + 6);
  v105 = *(v190 + 7);
  v106 = *(v190 + 8);
  aBlock = v102;
  v201 = v101;
  v202 = v103;
  v203 = v104;
  v204 = v105;
  v205 = v106;
  v198[1] = v207;
  v198[2] = v208;
  v199 = v209;

  sub_22F3E29C0(v193, v198, v179);

  v116 = swift_allocObject();
  v188 = v116;
  *(v116 + 16) = "MusicKitClient Fetch Tesseract Songs";
  *(v116 + 24) = 36;
  *(v116 + 32) = 2;
  *(v116 + 40) = sub_22F3798A8;
  *(v116 + 48) = v182;

  sub_22F741740();
  sub_22F740AC0();
  sub_22F740A90();
  v99(v98, v187);
  v197 = *(v100 + 9);
  v117 = v174;
  v118 = v171;
  v119 = v175;
  (*(v174 + 16))(v171, v179, v175);
  v120 = (*(v117 + 80) + 16) & ~*(v117 + 80);
  v121 = (v170 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
  v122 = (v121 + 63) & 0xFFFFFFFFFFFFFFF8;
  v187 = (v122 + 15) & 0xFFFFFFFFFFFFFFF8;
  v123 = (v122 + 39) & 0xFFFFFFFFFFFFFFF8;
  v124 = swift_allocObject();
  (*(v117 + 32))(v124 + v120, v118, v119);
  v125 = v124 + v121;
  v126 = v207;
  v127 = v208;
  *v125 = v206;
  *(v125 + 16) = v126;
  *(v125 + 32) = v127;
  *(v125 + 48) = v209;
  *(v124 + v122) = v100;
  v128 = v124 + v187;
  *v128 = "MusicKitClient HTTP Request";
  *(v128 + 8) = 27;
  *(v128 + 16) = 2;
  v129 = v169;
  *(v124 + v123) = v169;
  v130 = (v124 + ((v123 + 15) & 0xFFFFFFFFFFFFFFF8));
  v131 = v124;
  v132 = v188;
  *v130 = sub_22F294B7C;
  v130[1] = v132;
  v133 = swift_allocObject();
  v133[2] = sub_22F294B80;
  v133[3] = v131;
  v204 = sub_22F294B84;
  v205 = v133;
  aBlock = MEMORY[0x277D85DD0];
  v201 = 1107296256;
  v202 = sub_22F2280B0;
  v203 = &block_descriptor_39_2;
  v134 = _Block_copy(&aBlock);
  sub_22F1D20B0(&v206, v198);

  v135 = v129;

  dispatch_sync(v197, v134);

  _Block_release(v134);

  sub_22F1D210C(&v206);

  (*(v174 + 8))(v179, v175);
  sub_22F120ADC(v164, &qword_27DAB1DA0, &unk_22F7771B0);
  v136 = *(v191 + 8);
  v137 = v196;
  v136(v193, v196);
  v136(v192, v137);
  sub_22F120ADC(v195, &qword_27DAB1DA0, &unk_22F7771B0);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    v140 = v173;
    sub_22F13BA9C(v131 + 14, v173, &qword_27DAB0920, &qword_22F770B20);
    v141 = v133;
    sub_22F379840(v131, type metadata accessor for CacherStatus);
    v142 = v191;
    v143 = v176;
    v183 = v133;
    sub_22F73F680();
    (*(v142 + 56))(v143, 0, 1, v122);
    *v143 = 0xD000000000000015;
    v144 = v158;
    v143[1] = v158;
    sub_22F1207AC(v140, v143 + 14, &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    v145 = v184;
    sub_22F740AC0();
    sub_22F740A90();
    v146 = v187;
    v147 = v185;
    v148 = (v185)(v145, v187);
    v149 = *(v194 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v148);
    v157[-4] = 0xD000000000000015;
    v157[-3] = v144;
    v157[-2] = v150;
    v157[-1] = v143;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v147(v145, v146);
    sub_22F7416A0();
    v115 = v191;
    v155 = v183;
    v156 = sub_22F73F360();
    (v197[2].isa)(v197, 0, v156);

    sub_22F1D210C(&v206);

    v153 = &v202;
    goto LABEL_21;
  }

  return result;
}

uint64_t _s11PhotosGraph27MusicForTimeFrontfillCacherC6filterySayAA4SongVGAGFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for Song();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v42 = *(a1 + 16);
  if (!v42)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = 0;
  v36 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v41 = a1 + v36;
  v11 = *(v7 + 72);
  v12 = MEMORY[0x277D84F90];
  v35 = v2;
  v34 = v5;
  v37 = v11;
  v38 = &v34 - v8;
  do
  {
    result = sub_22F1A39E0(v41 + v11 * v10, v9, type metadata accessor for Song);
    v14 = *&v9[*(v2 + 68)];
    if (v14)
    {
      v43 = v12;
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = 0;
        v17 = v14 + 32;
        v18 = v15 - 1;
        v19 = MEMORY[0x277D84F90];
        do
        {
          v20 = (v17 + 80 * v16);
          v21 = v16;
          while (1)
          {
            if (v21 >= *(v14 + 16))
            {
              __break(1u);
              return result;
            }

            v22 = v20[1];
            v23 = v20[2];
            v24 = v20[3];
            *&v48[9] = *(v20 + 57);
            v25 = *v20;
            v47 = v23;
            *v48 = v24;
            v45 = v25;
            v46 = v22;
            v16 = v21 + 1;
            if ((v48[24] & 1) == 0)
            {
              break;
            }

            v20 += 5;
            ++v21;
            if (v15 == v16)
            {
              goto LABEL_20;
            }
          }

          v39 = v18;
          v40 = v17;
          sub_22F13A7E4(&v45, v44);
          result = swift_isUniquelyReferenced_nonNull_native();
          v49 = v19;
          if ((result & 1) == 0)
          {
            result = sub_22F146494(0, *(v19 + 16) + 1, 1);
            v11 = v37;
            v19 = v49;
          }

          v18 = v39;
          v27 = *(v19 + 16);
          v26 = *(v19 + 24);
          v17 = v40;
          if (v27 >= v26 >> 1)
          {
            result = sub_22F146494((v26 > 1), v27 + 1, 1);
            v18 = v39;
            v17 = v40;
            v11 = v37;
            v19 = v49;
          }

          *(v19 + 16) = v27 + 1;
          v28 = (v19 + 80 * v27);
          v28[2] = v45;
          v29 = v46;
          v30 = v47;
          v31 = *v48;
          *(v28 + 89) = *&v48[9];
          v28[4] = v30;
          v28[5] = v31;
          v28[3] = v29;
          v2 = v35;
          v5 = v34;
        }

        while (v18 != v21);
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
      }

LABEL_20:
      if (*(v19 + 16))
      {
        v9 = v38;
        sub_22F2907FC(v19, v5);

        v12 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_22F13E558(0, v12[2] + 1, 1, v12);
        }

        v33 = v12[2];
        v32 = v12[3];
        if (v33 >= v32 >> 1)
        {
          v12 = sub_22F13E558(v32 > 1, v33 + 1, 1, v12);
        }

        sub_22F379840(v9, type metadata accessor for Song);
        v12[2] = v33 + 1;
        v11 = v37;
        sub_22F294B10(v5, v12 + v36 + v33 * v37, type metadata accessor for Song);
      }

      else
      {
        v9 = v38;
        sub_22F379840(v38, type metadata accessor for Song);

        v12 = v43;
      }
    }

    else
    {
      sub_22F379840(v9, type metadata accessor for Song);
    }

    ++v10;
  }

  while (v10 != v42);
  return v12;
}

uint64_t sub_22F3789F4(uint64_t a1, void *a2, uint64_t started, uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v89 = a4;
  v103 = a1;
  v94 = sub_22F740AD0();
  v97 = *(v94 - 8);
  v7 = *(v97 + 64);
  MEMORY[0x28223BE20](v94);
  v93 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Song();
  v101 = *(v9 - 8);
  v10 = *(v101 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v86 - v14;
  MEMORY[0x28223BE20](v16);
  v115 = &v86 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = (&v86 - v19);
  v21 = sub_22F73F690();
  v106 = *(v21 - 8);
  v22 = *(v106 + 64);
  MEMORY[0x28223BE20](v21);
  v107 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v114 = &v86 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v86 - v27;
  MEMORY[0x28223BE20](v29);
  v118 = &v86 - v30;
  if (qword_2810A9168 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v116 = qword_2810A9170;
    started = _s11PhotosGraph27MusicForTimeFrontfillCacherC5dates12forStartDate03endK0Say10Foundation0K0VGAI_AItFZ_0(a2, started);
    v31 = sub_22F14FAE0(MEMORY[0x277D84F90]);
    v95 = *(started + 16);
    if (!v95)
    {
      break;
    }

    v32 = 0;
    v109 = *(v103 + 16);
    v33 = started + ((*(v106 + 80) + 32) & ~*(v106 + 80));
    v105 = v106 + 16;
    v113 = (v106 + 32);
    v117 = (v106 + 8);
    a2 = MEMORY[0x277D84F90];
    v104 = v9;
    v87 = v12;
    v86 = v15;
    v111 = v20;
    v98 = started;
    v88 = v33;
    while (1)
    {
      if (v32 >= *(started + 16))
      {
        goto LABEL_45;
      }

      v102 = v31;
      v34 = *(v106 + 72);
      v96 = v32;
      v90 = v34;
      v99 = *(v106 + 16);
      v99(v118, v33 + v34 * v32, v21);
      if (v109)
      {
        break;
      }

LABEL_23:
      v99(v107, v118, v21);
      v43 = a2[2];
      v44 = sub_22F3797F8(&qword_2810A99B0, type metadata accessor for Song);
      v119 = MEMORY[0x231901000](v43, v9, v44);
      v45 = a2[2];
      if (v45)
      {
        v46 = a2 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
        v47 = *(v101 + 72);
        v31 = v87;
        v15 = v86;
        do
        {
          sub_22F1A39E0(v46, v31, type metadata accessor for Song);
          sub_22F10C40C(v15, v31);
          sub_22F379840(v15, type metadata accessor for Song);
          v46 += v47;
          --v45;
        }

        while (v45);

        v20 = v111;
      }

      else
      {
      }

      v48 = v102;
      v49 = v119;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = v48;
      v51 = sub_22F1230FC(v107);
      v53 = *(v48 + 16);
      v54 = (v52 & 1) == 0;
      v55 = __OFADD__(v53, v54);
      v56 = v53 + v54;
      if (v55)
      {
        __break(1u);
        goto LABEL_48;
      }

      v57 = v52;
      if (*(v48 + 24) < v56)
      {
        sub_22F129770(v56, isUniquelyReferenced_nonNull_native);
        v51 = sub_22F1230FC(v107);
        if ((v57 & 1) != (v58 & 1))
        {
          goto LABEL_50;
        }

LABEL_33:
        v31 = v119;
        if (v57)
        {
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_33;
      }

      v61 = v51;
      sub_22F13685C();
      v51 = v61;
      v31 = v119;
      if (v57)
      {
LABEL_34:
        v59 = v31[7];
        v60 = *(v59 + 8 * v51);
        *(v59 + 8 * v51) = v49;

        goto LABEL_38;
      }

LABEL_36:
      v31[(v51 >> 6) + 8] |= 1 << v51;
      v62 = v51;
      v99((v31[6] + v51 * v90), v107, v21);
      *(v31[7] + 8 * v62) = v49;
      v63 = v31[2];
      v55 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v55)
      {
        __break(1u);
LABEL_50:
        result = sub_22F7420C0();
        __break(1u);
        return result;
      }

      v31[2] = v64;
LABEL_38:
      v9 = v104;
      started = v98;
      v15 = v96 + 1;
      v12 = *v117;
      (*v117)(v107, v21);
      v12(v118, v21);
      v32 = v15;
      v33 = v88;
      a2 = MEMORY[0x277D84F90];
      if (v15 == v95)
      {
        goto LABEL_39;
      }
    }

    v12 = 0;
    v110 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v15 = (v103 + v110);
    v112 = *(v101 + 72);
    v100 = (v103 + v110);
    while (1)
    {
      sub_22F1A39E0(&v15[v112 * v12], v20, type metadata accessor for Song);
      started = *(v20 + *(v9 + 68));
      if (!started)
      {
        sub_22F379840(v20, type metadata accessor for Song);
        goto LABEL_8;
      }

      v108 = v12;
      v15 = *(started + 16);

      if (v15)
      {
        break;
      }

LABEL_7:
      v20 = v111;
      sub_22F379840(v111, type metadata accessor for Song);

      v9 = v104;
      v12 = v108;
      v15 = v100;
LABEL_8:
      v12 = (v12 + 1);
      if (v12 == v109)
      {
        goto LABEL_23;
      }
    }

    v9 = 0;
    v20 = (started + 40);
    while (v9 < *(started + 16))
    {
      v31 = v21;
      v36 = *(v20 - 1);
      v35 = *v20;

      v37 = sub_22F740DF0();

      v12 = [v116 dateFromString_];

      if (!v12)
      {

        sub_22F3768BC();
        swift_allocError();
        *v70 = 2;
        swift_willThrow();
        sub_22F379840(v111, type metadata accessor for Song);
        return (*v117)(v118, v31);
      }

      v38 = v114;
      sub_22F73F640();

      v39 = v38;
      v21 = v31;
      (*v113)(v28, v39, v31);
      if (sub_22F73F630())
      {
        sub_22F1A39E0(v111, v115, type metadata accessor for Song);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_22F13E558(0, a2[2] + 1, 1, a2);
        }

        v41 = a2[2];
        v40 = a2[3];
        v12 = (v41 + 1);
        if (v41 >= v40 >> 1)
        {
          a2 = sub_22F13E558(v40 > 1, v41 + 1, 1, a2);
        }

        (*v117)(v28, v31);
        a2[2] = v12;
        v42 = a2 + v110 + v41 * v112;
        v21 = v31;
        sub_22F294B10(v115, v42, type metadata accessor for Song);
      }

      else
      {
        (*v117)(v28, v31);
      }

      ++v9;
      v20 += 10;
      if (v15 == v9)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

LABEL_39:

  sub_22F741740();
  v15 = v94;
  v49 = v97;
  v20 = v93;
  if (qword_2810A8E80 != -1)
  {
LABEL_48:
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v67 = *(v49 + 8);
  v65 = v49 + 8;
  v66 = v67;
  v67(v20, v15);
  v68 = v91;
  sub_22F741690();
  if (v68)
  {
  }

  v97 = v65;
  v71 = sub_22F7416E0();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v118 = &v86;
  v78 = *(v89 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  MEMORY[0x28223BE20](v71);
  *(&v86 - 14) = v31;
  strcpy(&v86 - 104, "MusicForTime");
  *(&v86 - 91) = 0;
  *(&v86 - 45) = -5120;
  *(&v86 - 11) = v79;
  *(&v86 - 10) = 0;
  *(&v86 - 9) = 0;
  *(&v86 - 8) = 0xD000000000000015;
  *(&v86 - 7) = 0x800000022F78E8A0;
  v81 = v80;
  *(&v86 - 6) = v80;
  *(&v86 - 10) = 16843008;
  *(&v86 - 4) = v73;
  *(&v86 - 3) = v82;
  *(&v86 - 2) = v83;
  sub_22F7417A0();

  sub_22F741730();
  v84 = v81;
  v85 = v93;
  sub_22F740AC0();
  sub_22F740A90();

  return v66(v85, v94);
}

unint64_t sub_22F379610()
{
  result = qword_27DAB3D40;
  if (!qword_27DAB3D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3D40);
  }

  return result;
}

uint64_t sub_22F379698(uint64_t a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_22F73F690() - 8);
  v9 = *(v8 + 80);
  v10 = (v7 + v9 + 8) & ~v9;
  v11 = *(v8 + 64);
  v12 = (v11 + v9 + v10) & ~v9;
  v13 = (v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_22F374BB0(a1, a2 & 1, *(v2 + 16), v2 + v6, *(v2 + v7), (v2 + v10), v2 + v12, *(v2 + v13), *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_22F3797F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22F379840(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F3798AC(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_22F0FF590();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_22F37994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22F20B494(a3, v27 - v11);
  v13 = sub_22F741320();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22F120ADC(v12, &qword_27DAB07C0, &qword_22F77A4F0);
  }

  else
  {
    sub_22F741310();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22F7412D0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22F740EC0() + 32;
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

      sub_22F120ADC(a3, &qword_27DAB07C0, &qword_22F77A4F0);

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

  sub_22F120ADC(a3, &qword_27DAB07C0, &qword_22F77A4F0);
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

uint64_t GraphFullRebuilder.__allocating_init(with:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t GraphFullRebuilder.rebuildGraph()()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_22F379D28;

  return GraphFullRebuilder.photoStreamTokenData()();
}

uint64_t sub_22F379D28(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 32);
  v5 = *v3;
  v5[5] = a1;
  v5[6] = a2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22F379E5C, 0, 0);
  }
}

uint64_t sub_22F379E5C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v2 + 16);
  v0[7] = v3;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  return MEMORY[0x2822009F8](sub_22F379EE0, v3, 0);
}

uint64_t sub_22F379EE0()
{
  v1 = v0[8];
  v2 = *(v0[7] + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = sub_22F380904;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D22B38] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_22F379FD4;
  v6 = MEMORY[0x277D839B0];

  return MEMORY[0x282181588](v0 + 14, &unk_22F788CA8, v3, v6);
}

uint64_t sub_22F379FD4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_22F37A1E8;
  }

  else
  {
    v7 = *(v2 + 64);
    v6 = *(v2 + 72);

    *(v2 + 113) = *(v2 + 112);

    v5 = sub_22F37A108;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22F37A108()
{
  if (*(v0 + 113) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_22F37A2BC;
    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    v4 = *(v0 + 16);

    return GraphFullRebuilder.savePhotoKitStreamToken(with:)(v3, v2);
  }

  else
  {
    sub_22F1746FC(*(v0 + 40), *(v0 + 48));
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_22F37A1E8()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_22F37A258, 0, 0);
}

uint64_t sub_22F37A258()
{
  v1 = v0[11];
  sub_22F1746FC(v0[5], v0[6]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22F37A2BC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_22F37A434;
  }

  else
  {
    v3 = sub_22F37A3D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22F37A3D0()
{
  sub_22F1746FC(v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22F37A434()
{
  v1 = v0[13];
  sub_22F1746FC(v0[5], v0[6]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22F37A4C4()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22F37A4E8, v1, 0);
}

uint64_t sub_22F37A4E8()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager);
  v2 = *(MEMORY[0x277D22B38] + 4);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_22F37A5AC;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282181588](v3, &unk_22F7821C8, 0, v4);
}

uint64_t sub_22F37A5AC()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_22F37A6C0;
  }

  else
  {
    v3 = sub_22F20A4A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22F37A6F8()
{
  v1 = *(*(*(v0 + 32) + 16) + 112);
  v2 = [v1 currentToken];
  if (v2)
  {
    v3 = v2;
    v4 = sub_22F73F350();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_22F73F340();
    *(v0 + 16) = v3;
    *(v0 + 24) = 0;
    sub_22F288AD0();
    v7 = sub_22F73F330();
    v9 = v8;

    v10 = v7;
    v11 = v9;
  }

  else
  {

    v10 = 0;
    v11 = 0xF000000000000000;
  }

  v12 = *(v0 + 8);

  return v12(v10, v11);
}

uint64_t sub_22F37A858@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v669 = a1;
  v664 = a3;
  v638 = a4;
  v694 = *MEMORY[0x277D85DE8];
  v5 = sub_22F73F6D0();
  v640 = *(v5 - 8);
  v641 = v5;
  v6 = *(v640 + 64);
  MEMORY[0x28223BE20](v5);
  v639 = &v620 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F740AD0();
  v9 = *(v8 - 8);
  v655 = v8;
  v656 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v620 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F73F7D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v620 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22F73F9B0();
  v654 = *(v18 - 8);
  v19 = *(v654 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v620 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &selRef_floatVector;
  v671 = [objc_allocWithZone(MEMORY[0x277D22BB8]) init];
  (*(v14 + 104))(v17, *MEMORY[0x277CC9830], v13);
  v667 = v21;
  sub_22F73F7E0();
  (*(v14 + 8))(v17, v13);
  v666 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v644 = sub_22F120634(0, &qword_2810A8D00, 0x277D86200);
  v23 = sub_22F741850();
  v657 = v12;
  sub_22F740AA0();
  v646 = *(a2 + 16);
  v24 = v646[14];
  v25 = [v24 librarySpecificFetchOptions];
  v647 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22F7707D0;
  v27 = *MEMORY[0x277CD9A78];
  *(v26 + 32) = sub_22F740E20();
  *(v26 + 40) = v28;
  v29 = *MEMORY[0x277CD9B08];
  *(v26 + 48) = sub_22F740E20();
  *(v26 + 56) = v30;
  v31 = *MEMORY[0x277CD9AF8];
  *(v26 + 64) = sub_22F740E20();
  *(v26 + 72) = v32;
  v33 = sub_22F741160();

  [v25 setFetchPropertySets_];

  [v25 setIncludeHiddenAssets_];
  [v25 setIncludeTrashedAssets_];
  v648 = objc_opt_self();
  v659 = v25;
  v34 = [v648 fetchAssetsWithOptions_];
  v35 = [objc_allocWithZone(MEMORY[0x277D3C790]) initWithPhotoLibrary_];
  v36 = MEMORY[0x277D84F98];
  v687 = MEMORY[0x277D84F98];
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  v665 = (v37 + 16);
  v658 = v37;
  *(v37 + 24) = v36;
  v673 = v34;
  v38 = [v34 count];
  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_232;
  }

  v652 = v35;
  v653 = v23;
  v650 = v24;
  v651 = v18;
  v39 = MEMORY[0x277D84F98];
  if (v38)
  {
    v40 = 0;
    *&v672 = v38;
    do
    {
      v43 = [v673 objectAtIndexedSubscript_];
      v44 = [v43 localIdentifier];
      v45 = sub_22F740E20();
      v18 = v46;

      v47 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v39;
      v50 = sub_22F1229E8(v45, v18);
      v51 = v39;
      v52 = *(v39 + 2);
      v53 = (v49 & 1) == 0;
      v54 = v52 + v53;
      if (__OFADD__(v52, v53))
      {
        __break(1u);
LABEL_152:

LABEL_105:
        (*(v656 + 8))(v657, v655);
        goto LABEL_106;
      }

      v55 = v49;
      if (*(v51 + 3) >= v54)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v49)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_22F138C74();
          if (v55)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_22F12DACC(v54, isUniquelyReferenced_nonNull_native);
        v56 = sub_22F1229E8(v45, v18);
        if ((v55 & 1) != (v57 & 1))
        {
          goto LABEL_321;
        }

        v50 = v56;
        if (v55)
        {
LABEL_4:

          v39 = aBlock;
          v41 = *(aBlock + 56);
          v42 = *(v41 + 8 * v50);
          *(v41 + 8 * v50) = v47;

          goto LABEL_5;
        }
      }

      v39 = aBlock;
      *(aBlock + 8 * (v50 >> 6) + 64) |= 1 << v50;
      v58 = (*(v39 + 6) + 16 * v50);
      *v58 = v45;
      v58[1] = v18;
      *(*(v39 + 7) + 8 * v50) = v47;

      v60 = *(v39 + 2);
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        __break(1u);
        goto LABEL_190;
      }

      *(v39 + 2) = v62;
LABEL_5:
      ++v40;
      v687 = v39;
    }

    while (v672 != v40);
  }

  swift_bridgeObjectRetain_n();
  v63 = sub_22F3798AC(v39, sub_22F10B348, sub_22F120B3C);
  v686 = MEMORY[0x277D84FA0];
  [v659 copy];
  sub_22F741920();
  swift_unknownObjectRelease();
  sub_22F120634(0, &unk_27DAB3D60, 0x277CD9880);
  v64 = MEMORY[0x277D84F70];
  v65 = swift_dynamicCast();
  v668 = v39;
  v649 = v63;
  if (v65)
  {
    v66 = v685;
    v67 = swift_allocObject();
    v672 = xmmword_22F771340;
    *(v67 + 16) = xmmword_22F771340;
    v68 = *MEMORY[0x277CD9AA8];
    *(v67 + 32) = sub_22F740E20();
    *(v67 + 40) = v69;
    v70 = sub_22F741160();

    [v66 setFetchPropertySets_];

    v71 = [v646[14] librarySpecificFetchOptions];
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v72 = swift_allocObject();
    *(v72 + 16) = v672;
    v73 = MEMORY[0x277D84CB8];
    *(v72 + 56) = MEMORY[0x277D84C58];
    *(v72 + 64) = v73;
    *(v72 + 32) = 3;
    v74 = sub_22F741560();
    [v71 setPredicate_];

    sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_22F161EB4(v63);
    v76 = sub_22F741160();

    v77 = [ObjCClassFromMetadata fetchMomentsForAssetsWithLocalIdentifiers:v76 options:v71];

    if (v77)
    {
      v78 = [v648 fetchAssetsInAssetCollections:v77 options:v66];
      if (v78)
      {
        v79 = v78;
        *&v672 = v71;
        v80 = [v78 count];
        if ((v80 & 0x8000000000000000) != 0)
        {
          goto LABEL_264;
        }

        v81 = v80;
        if (v80)
        {
          v662 = v77;
          v663 = v66;
          v82 = 0;
          do
          {
            v83 = v82 + 1;
            v84 = [v79 objectAtIndexedSubscript_];
            v85 = [v84 localIdentifier];
            v86 = sub_22F740E20();
            v64 = v87;

            sub_22F10BBDC(&aBlock, v86, v64);

            v82 = v83;
          }

          while (v81 != v83);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }

    v39 = v668;
  }

  v88 = 0;
  v685 = MEMORY[0x277D84F98];
  v684 = 0;
  v12 = v39 + 64;
  v89 = 1 << v39[32];
  v90 = -1;
  if (v89 < 64)
  {
    v90 = ~(-1 << v89);
  }

  v91 = v90 & *(v39 + 8);
  v92 = (v89 + 63) >> 6;
  if (v91)
  {
    while (1)
    {
      v18 = v88;
LABEL_37:
      v93 = __clz(__rbit64(v91)) | (v18 << 6);
      v94 = *(v668 + 6) + 16 * v93;
      v95 = *v94;
      v64 = *(v94 + 8);
      v96 = *(*(v668 + 7) + 8 * v93);

      v97 = v96;
      v98 = objc_autoreleasePoolPush();
      v99 = v670;
      sub_22F380920(v95, v64, v97, v665, v671, v667, v666, &v686, &v685, &v684, v669, v673, v664, &aBlock);
      v670 = v99;
      if (v99)
      {

        objc_autoreleasePoolPop(v98);

        (*(v656 + 8))(v657, v655);
        (*(v654 + 8))(v667, v651);

        goto LABEL_107;
      }

      v91 &= v91 - 1;

      objc_autoreleasePoolPop(v98);

      v88 = v18;
      if (!v91)
      {
        goto LABEL_34;
      }
    }
  }

  while (1)
  {
LABEL_34:
    v18 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      __break(1u);
      goto LABEL_150;
    }

    if (v18 >= v92)
    {
      break;
    }

    v91 = *&v12[8 * v18];
    ++v88;
    if (v91)
    {
      goto LABEL_37;
    }
  }

  aBlock = 0;
  v100 = v669;
  v18 = v671;
  if (([v669 performChangesAndWait:v671 error:&aBlock]& 1) == 0)
  {
    v112 = aBlock;

    sub_22F73F370();

    swift_willThrow();
    v113 = v650;
    goto LABEL_102;
  }

  v101 = aBlock;
  v102 = sub_22F7415F0();
  v103 = v100;
  v104 = sub_22F741840();
  v105 = os_log_type_enabled(v104, v102);
  v636 = v103;
  if (v105)
  {
    v106 = swift_slowAlloc();
    *v106 = 134218240;
    v107 = [objc_opt_self() any];
    v108 = [v103 nodeIdentifiersMatchingFilter:v107];

    v109 = [v108 count];
    *(v106 + 4) = v109;

    *(v106 + 12) = 2048;
    v110 = [objc_opt_self() any];
    v12 = [v103 edgeIdentifiersMatchingFilter:v110];

    v111 = [v12 count];
    *(v106 + 14) = v111;

    _os_log_impl(&dword_22F0FC000, v104, v102, "Ingested all assets, graph has %ld nodes and %ld edges", v106, 0x16u);
    MEMORY[0x2319033A0](v106, -1, -1);
  }

  else
  {

    v104 = v103;
  }

  v71 = v670;

  v114 = objc_allocWithZone(MEMORY[0x277D3AC30]);
  v692 = sub_22F384664;
  v693 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v689 = 1107296256;
  v690 = sub_22F386B70;
  v691 = &block_descriptor_44;
  v115 = _Block_copy(&aBlock);
  v116 = [v114 initWithDistanceBlock_];
  _Block_release(v115);

  v635 = v116;
  if (!v116)
  {
LABEL_98:
    aBlock = 0;
    v177 = v636;
    if ([v636 performChangesAndWait:v18 error:&aBlock])
    {
      v670 = v71;
      v178 = aBlock;
      v179 = sub_22F7415F0();
      v180 = v177;
      v181 = sub_22F741840();
      v182 = os_log_type_enabled(v181, v179);
      p_isa = &v180->isa;
      if (v182)
      {
        v183 = swift_slowAlloc();
        *v183 = 134218240;
        v184 = [objc_opt_self() any];
        v185 = [v180 nodeIdentifiersMatchingFilter:v184];

        v71 = &selRef_assetIsSafeForWidgetDisplay_;
        v186 = [v185 count];

        *(v183 + 4) = v186;
        *(v183 + 12) = 2048;
        v187 = [objc_opt_self() any];
        v188 = [v180 edgeIdentifiersMatchingFilter:v187];

        v189 = [v188 count];
        *(v183 + 14) = v189;

        _os_log_impl(&dword_22F0FC000, v181, v179, "Clustered, graph has %ld nodes and %ld edges", v183, 0x16u);
        MEMORY[0x2319033A0](v183, -1, -1);
      }

      else
      {

        v181 = v180;
        v71 = &selRef_assetIsSafeForWidgetDisplay_;
      }

      v195 = v646;
      v64 = [v646[14] librarySpecificFetchOptions];
      v196 = [v195[14] librarySpecificFetchOptions];
      v197 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
      v628 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
      v198 = swift_allocObject();
      v634 = xmmword_22F771340;
      *(v198 + 16) = xmmword_22F771340;
      *(v198 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      *(v198 + 64) = sub_22F25F050();
      *(v198 + 32) = v649;
      v629 = v197;
      v199 = sub_22F741560();
      v649 = v196;
      [v196 setPredicate_];

      v77 = objc_opt_self();
      v200 = v64;
      v630 = v77;
      v632 = v200;
      v12 = [v77 fetchAssetCollectionsWithType:1 subtype:2 options:?];
      v201 = [v12 count];
      if ((v201 & 0x8000000000000000) != 0)
      {
        goto LABEL_266;
      }

      v202 = v201;
      v642 = v12;
      if (v201)
      {
        v64 = 0;
        v636 = "_TtC11PhotosGraph12GraphBuilder";
        v637 = v201;
        v203 = &selRef_setUseIconicScore_;
        do
        {
          v204 = [v12 objectAtIndexedSubscript_];
          v205 = [v204 v203[484]];
          if (!v205)
          {
            sub_22F740E20();
            v205 = sub_22F740DF0();
            v202 = v637;
          }

          v206 = *(v658 + 16);
          v207 = *(v658 + 24);

          v660 = objc_autoreleasePoolPush();
          v208 = [v648 fetchAssetsInAssetCollection:v204 options:v649];
          if ([v208 count]< 1)
          {

            v12 = v642;
            v18 = v671;
          }

          else
          {
            v645 = v207;
            v669 = v208;
            v662 = v206;
            v643 = v64;
            v71 = v670;
            v209 = [v204 localIdentifier];
            if (!v209)
            {
              sub_22F740E20();
              v209 = sub_22F740DF0();
            }

            sub_22F740E20();
            v210 = MEMORY[0x277D84F98];
            v211 = swift_isUniquelyReferenced_nonNull_native();
            v683 = v210;
            sub_22F386DBC(v209, 0xD000000000000010, v636 | 0x8000000000000000, v211, &v683);
            aBlock = v683;
            sub_22F121CEC(v205, 1701667182, 0xE400000000000000);
            v212 = sub_22F2B5478(&unk_2843DE308);
            if (v71)
            {
              v237 = v671;

              v235 = v632;

              v236 = v656;
              v238 = v642;
              goto LABEL_135;
            }

            [v671 insertNode_];
            v77 = v669;
            v213 = [v669 count];
            v64 = v643;
            v214 = v662;
            if ((v213 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_264:
              __break(1u);
LABEL_265:
              __break(1u);
LABEL_266:
              __break(1u);
LABEL_267:

              v77 = v64;
              goto LABEL_268;
            }

            v215 = v213;
            v670 = 0;
            if (v213)
            {
              v661 = v212;
              i = v204;
              v216 = 0;
              v217 = v77;
              v663 = v215;
              do
              {
                *&v672 = [v217 objectAtIndexedSubscript_];
                v222 = [v672 localIdentifier];
                v223 = sub_22F740E20();
                v225 = v224;

                v226 = sub_22F1530EC();
                aBlock = MEMORY[0x231901000](1, &type metadata for Node.Label, v226);
                sub_22F10DF08(&v683, byte_2843DE350);
                v227 = sub_22F2D67A0(aBlock, v223, v225, v214);

                if (v227)
                {
                  v228 = v661;
                  v229 = v227;
                  v230 = sub_22F1515F8(&unk_2843DE358);
                  sub_22F1DF3B0(&unk_2843DE378);
                  v231 = objc_opt_self();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                  v232 = sub_22F740C80();
                  v233 = [v231 kgPropertiesWithMAProperties_];

                  if (!v233)
                  {

                    v235 = v632;

                    sub_22F2B5954();
                    swift_allocError();
                    swift_willThrow();

                    v236 = v656;
                    v237 = v671;
                    v238 = v642;
                    v204 = i;
LABEL_135:
                    objc_autoreleasePoolPop(v660);

                    goto LABEL_136;
                  }

                  sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                  v218 = sub_22F740CA0();

                  v219 = type metadata accessor for Edge();
                  v220 = objc_allocWithZone(v219);
                  *&v220[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                  *&v220[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v230;
                  *&v220[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v218;
                  *&v220[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v229;
                  *&v220[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v228;
                  v675.receiver = v220;
                  v675.super_class = v219;
                  v221 = [&v675 init];
                  [v671 insertEdge_];

                  v214 = v662;
                }

                ++v216;

                v217 = v669;
              }

              while (v663 != v216);
              v234 = v669;

              v18 = v671;
              v12 = v642;
              v64 = v643;
              v204 = i;
            }

            else
            {

              v18 = v671;
              v12 = v642;
            }

            v202 = v637;
            v203 = &selRef_setUseIconicScore_;
          }

          ++v64;
          objc_autoreleasePoolPop(v660);
        }

        while (v64 != v202);
      }

      aBlock = 0;
      v239 = p_isa;
      v240 = [p_isa performChangesAndWait:v18 error:&aBlock];
      v241 = aBlock;
      if ((v240 & 1) == 0)
      {
LABEL_160:
        v279 = v241;
        v280 = v632;

        sub_22F73F370();
        swift_willThrow();

        goto LABEL_161;
      }

      v242 = aBlock;
      v243 = sub_22F7415F0();
      v64 = v239;
      v244 = sub_22F741840();
      if (os_log_type_enabled(v244, v243))
      {
        v245 = swift_slowAlloc();
        *v245 = 134218240;
        v246 = [objc_opt_self() any];
        v247 = [v64 nodeIdentifiersMatchingFilter_];
        LODWORD(v672) = v243;
        v248 = v247;

        v249 = [v248 count];
        *(v245 + 4) = v249;

        *(v245 + 12) = 2048;
        v250 = objc_opt_self();
        v18 = v671;
        v251 = [v250 any];
        v252 = [v64 edgeIdentifiersMatchingFilter_];

        v253 = [v252 count];
        *(v245 + 14) = v253;
        v12 = v642;

        _os_log_impl(&dword_22F0FC000, v244, v672, "Regularly albumed, graph has %ld nodes and %ld edges", v245, 0x16u);
        MEMORY[0x2319033A0](v245, -1, -1);
      }

      else
      {

        v244 = v64;
      }

      v254 = [v630 fetchAssetCollectionsWithType:2 subtype:203 options:v632];
      v255 = [v254 firstObject];

      if (v255)
      {
        v660 = v64;
        v256 = *(v658 + 16);
        v257 = *(v658 + 24);

        v258 = objc_autoreleasePoolPush();
        v259 = [v648 fetchAssetsInAssetCollection:v255 options:v649];
        v260 = [v259 count];
        v45 = v670;
        if (v260 < 1)
        {
        }

        else
        {
          v645 = v257;
          v669 = v259;
          *&v672 = v256;
          v637 = v258;
          v643 = v255;
          v261 = [v255 localIdentifier];
          if (!v261)
          {
            sub_22F740E20();
            v261 = sub_22F740DF0();
          }

          sub_22F740E20();
          v683 = MEMORY[0x277D84F98];
          sub_22F121CEC(v261, 0xD000000000000010, 0x800000022F792110);
          aBlock = v683;
          v262 = sub_22F740DF0();
          sub_22F121CEC(v262, 1701667182, 0xE400000000000000);
          v263 = v670;
          v59 = sub_22F2B5478(&unk_2843DE388);
          v45 = v263;
          if (v263)
          {

            v264 = v632;

            v236 = v656;
LABEL_148:
            v265 = v642;
            objc_autoreleasePoolPop(v637);

            goto LABEL_185;
          }

LABEL_190:
          v332 = v59;
          [v18 insertNode_];
          v333 = v669;
          v334 = [v669 count];
          v12 = v642;
          if ((v334 & 0x8000000000000000) != 0)
          {
            goto LABEL_294;
          }

          v335 = v334;
          if (v334)
          {
            v661 = v332;
            v670 = v45;
            v336 = 0;
            v165 = v333;
            v662 = v335;
            while (1)
            {
              v341 = [v165 objectAtIndexedSubscript_];
              v342 = [v341 localIdentifier];
              v343 = sub_22F740E20();
              v345 = v344;

              v346 = sub_22F1530EC();
              aBlock = MEMORY[0x231901000](1, &type metadata for Node.Label, v346);
              sub_22F10DF08(&v683, byte_2843DE3D0);
              v347 = sub_22F2D67A0(aBlock, v343, v345, v672);

              if (v347)
              {
                v663 = v341;
                v348 = v661;
                v349 = v347;
                v350 = sub_22F1515F8(&unk_2843DE3D8);
                sub_22F1DF3B0(&unk_2843DE3F8);
                v351 = objc_opt_self();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                v352 = sub_22F740C80();
                v353 = [v351 kgPropertiesWithMAProperties_];

                if (!v353)
                {

                  v354 = v632;

                  sub_22F2B5954();
                  swift_allocError();
                  swift_willThrow();

                  v264 = v354;
                  v236 = v656;
                  v18 = v671;
                  goto LABEL_148;
                }

                sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                v337 = sub_22F740CA0();

                v338 = type metadata accessor for Edge();
                v339 = objc_allocWithZone(v338);
                *&v339[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                *&v339[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v350;
                *&v339[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v337;
                *&v339[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v349;
                *&v339[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v348;
                v676.receiver = v339;
                v676.super_class = v338;
                v340 = [&v676 init];
                v18 = v671;
                [v671 insertEdge_];

                v341 = v663;
              }

              ++v336;

              v165 = v669;
              if (v662 == v336)
              {
                goto LABEL_202;
              }
            }
          }

          v255 = v643;
          v258 = v637;
        }

        v64 = v660;
        goto LABEL_156;
      }

LABEL_150:
      v45 = v670;
      goto LABEL_157;
    }

    v190 = aBlock;

    sub_22F73F370();

    swift_willThrow();
    v113 = v635;
LABEL_102:

LABEL_103:
LABEL_104:

    goto LABEL_105;
  }

  [v116 setMaximumDistance:150.0];
  [v116 setMinimumNumberOfObjects:1];
  v117 = v116;

  sub_22F3798AC(v118, sub_22F120B48, sub_22F11CBCC);
  v643 = sub_22F120634(0, &qword_27DAB0960, 0x277CE41F8);
  v119 = sub_22F741160();

  v120 = [v117 performWithDataset:v119 progressBlock:0];
  v627 = v117;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3D70, &qword_22F779C98);
  v121 = sub_22F741180();

  if (v121 >> 62)
  {
    goto LABEL_260;
  }

  v122 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v122)
  {
LABEL_97:

    goto LABEL_98;
  }

LABEL_48:
  v123 = 0;
  v630 = "_TtC11PhotosGraph12GraphBuilder";
  v124 = v121 & 0xC000000000000001;
  v622 = (v121 + 32);
  v623 = v121 & 0xFFFFFFFFFFFFFF8;
  v632 = v121;
  v624 = (v121 & 0xC000000000000001);
  v625 = v122;
  while (1)
  {
    if (v124)
    {
      v125 = v123;
      v126 = MEMORY[0x2319016F0](v123, v121);
    }

    else
    {
      if (v123 >= *(v623 + 16))
      {
        __break(1u);
        goto LABEL_278;
      }

      v125 = v123;
      v126 = *&v622[8 * v123];
    }

    v645 = v126;
    v61 = __OFADD__(v125, 1);
    v120 = v125 + 1;
    if (v61)
    {
      __break(1u);
LABEL_260:
      v122 = sub_22F741A00();
      if (!v122)
      {
        goto LABEL_97;
      }

      goto LABEL_48;
    }

    v626 = v120;
    v127 = [v645 objects];
    v77 = sub_22F741180();

    if (v77 >> 62)
    {
      v64 = sub_22F741A00();
      v670 = v71;
      if (!v64)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v64 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v670 = v71;
      if (!v64)
      {
        goto LABEL_63;
      }
    }

    if (v64 < 1)
    {
      goto LABEL_265;
    }

    v128 = 0;
    v12 = (v77 & 0xC000000000000001);
    v129 = 0.0;
    v130 = 0.0;
    do
    {
      if (v12)
      {
        v131 = MEMORY[0x2319016F0](v128, v77);
      }

      else
      {
        v131 = *(v77 + 8 * v128 + 32);
      }

      v132 = v131;
      ++v128;
      [(objc_class *)v131 coordinate];
      v130 = v130 + v133;
      [(objc_class *)v132 coordinate];
      v135 = v134;

      v129 = v129 + v135;
    }

    while (v64 != v128);
LABEL_63:

    v136 = [v645 objects];
    v137 = sub_22F741180();

    if (v137 >> 62)
    {
      sub_22F741A00();
    }

    else
    {
      v138 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v139 = [v645 objects];
    v140 = sub_22F741180();

    if (v140 >> 62)
    {
      sub_22F741A00();
    }

    else
    {
      v141 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v142 = sub_22F741360();
    aBlock = 40;
    v689 = 0xE100000000000000;
    MEMORY[0x231900B10](v142);

    MEMORY[0x231900B10](44, 0xE100000000000000);

    v143 = aBlock;
    v144 = v689;
    v145 = sub_22F741360();
    v147 = v146;
    aBlock = v143;
    v689 = v144;

    MEMORY[0x231900B10](v145, v147);

    MEMORY[0x231900B10](41, 0xE100000000000000);

    v148 = sub_22F740DF0();
    v149 = MEMORY[0x277D84F98];
    v150 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v149;
    sub_22F386DBC(v148, 0xD000000000000010, v630 | 0x8000000000000000, v150, &aBlock);
    v151 = v670;
    v152 = sub_22F2B5478(&unk_2843DE2B0);
    v71 = v151;
    if (v151)
    {
      goto LABEL_152;
    }

    v663 = v152;
    [v18 insertNode_];
    v153 = [v645 objects];
    v154 = sub_22F741180();

    if (!(v154 >> 62))
    {
      v120 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v120)
      {
        break;
      }

      goto LABEL_96;
    }

    v120 = sub_22F741A00();
    if (v120)
    {
      break;
    }

LABEL_96:

    v123 = v626;
    v124 = v624;
    if (v626 == v625)
    {
      goto LABEL_97;
    }
  }

  v642 = 0;
  v155 = v154 & 0xC000000000000001;
  i = (v154 + 32);
  *&v634 = v154 & 0xFFFFFFFFFFFFFF8;
  v670 = 0;
  p_isa = v154;
  v628 = (v154 & 0xC000000000000001);
  v629 = v120;
  while (1)
  {
    if (v155)
    {
      v156 = v642;
      v157 = MEMORY[0x2319016F0](v642, v154);
    }

    else
    {
      v156 = v642;
      if (v642 >= *(v634 + 16))
      {
        goto LABEL_257;
      }

      v157 = i[v642];
    }

    v158 = v157;
    v61 = __OFADD__(v156, 1);
    v159 = (v156 + 1);
    if (v61)
    {
      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:
      v404 = v655;
      v403 = v656;
      v405 = v642;
      v407 = p_isa;
      v406 = v632;
      v401 = v645;
      v402 = v662;
LABEL_225:

      objc_autoreleasePoolPop(v660);
      (*(v403 + 8))(v657, v404);
      (*(v654 + 8))(v667, v651);

      goto LABEL_108;
    }

    v160 = v685;
    if (!*(v685 + 2) || (v161 = sub_22F12385C(v157), (v162 & 1) == 0))
    {

      sub_22F38A91C();
      swift_allocError();
      swift_willThrow();

      v113 = v645;
      goto LABEL_102;
    }

    v642 = v159;
    v163 = *(*(v160 + 7) + 8 * v161);
    v637 = v158;
    v164 = v163 >> 62 ? sub_22F741A00() : *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = MEMORY[0x277D837E0];

    if (v164)
    {
      break;
    }

LABEL_71:

    v120 = v629;
    v71 = v670;
    v154 = p_isa;
    v121 = v632;
    v155 = v628;
    if (v642 == v629)
    {
      goto LABEL_96;
    }
  }

  v166 = 0;
  v661 = (v163 & 0xFFFFFFFFFFFFFF8);
  v662 = (v163 & 0xC000000000000001);
  v660 = v163;
  while (v662)
  {
    v165 = MEMORY[0x2319016F0](v166, v163);
    v18 = MEMORY[0x277D837D0];
    v167 = v166 + 1;
    if (__OFADD__(v166, 1))
    {
      goto LABEL_200;
    }

LABEL_85:
    *&v672 = v165;
    v669 = v663;
    v168 = sub_22F1515F8(&unk_2843DE2D8);
    sub_22F1DF3B0(&unk_2843DE2F8);
    v169 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
    v170 = sub_22F740C80();
    v171 = [v169 kgPropertiesWithMAProperties_];

    if (!v171)
    {

      sub_22F2B5954();
      swift_allocError();
      swift_willThrow();

      v193 = v672;
      v194 = v669;

      goto LABEL_104;
    }

    sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
    v172 = sub_22F740CA0();

    v173 = type metadata accessor for Edge();
    v174 = objc_allocWithZone(v173);
    *&v174[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
    *&v174[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v168;
    *&v174[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v172;
    v175 = v672;
    *&v174[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v672;
    *&v174[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v669;
    v674.receiver = v174;
    v674.super_class = v173;
    v176 = [&v674 init];
    v18 = v671;
    [v671 insertEdge_];

    ++v166;
    v163 = v660;
    if (v167 == v164)
    {
      goto LABEL_71;
    }
  }

  v18 = MEMORY[0x277D837D0];
  if (v166 >= v661[2].isa)
  {
    goto LABEL_201;
  }

  v165 = *(v163 + 8 * v166 + 32);
  v167 = v166 + 1;
  if (!__OFADD__(v166, 1))
  {
    goto LABEL_85;
  }

LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  v357 = v165;

  v45 = v670;
  v12 = v642;
  v255 = v643;
  v64 = v660;
  v258 = v637;
LABEL_156:
  objc_autoreleasePoolPop(v258);

LABEL_157:
  aBlock = 0;
  v266 = [v64 performChangesAndWait:v18 error:&aBlock];
  v241 = aBlock;
  if (!v266)
  {
    goto LABEL_160;
  }

  v670 = v45;
  v267 = aBlock;
  v268 = sub_22F7415F0();
  v269 = v64;
  v270 = sub_22F741840();
  v271 = os_log_type_enabled(v270, v268);
  v626 = v269;
  if (v271)
  {
    v272 = swift_slowAlloc();
    *v272 = 134218240;
    v273 = [objc_opt_self() any];
    v274 = [v269 nodeIdentifiersMatchingFilter:v273];

    v71 = &selRef_assetIsSafeForWidgetDisplay_;
    v275 = [v274 count];

    *(v272 + 4) = v275;
    *(v272 + 12) = 2048;
    v276 = [objc_opt_self() any];
    v277 = [v269 edgeIdentifiersMatchingFilter:v276];

    v278 = [v277 count];
    v12 = v642;
    *(v272 + 14) = v278;

    _os_log_impl(&dword_22F0FC000, v270, v268, "Favoritedly albumed, graph has %ld nodes and %ld edges", v272, 0x16u);
    MEMORY[0x2319033A0](v272, -1, -1);
  }

  else
  {

    v270 = v269;
    v71 = &selRef_assetIsSafeForWidgetDisplay_;
  }

  v282 = 1000000304;

  v283 = v632;
  [v632 setIncludeDuplicatesAlbums:1];
  v284 = [v630 fetchAssetCollectionsWithType:1 subtype:1000000601 options:v283];

  v285 = [v284 count];
  if ((v285 & 0x8000000000000000) != 0)
  {
    goto LABEL_287;
  }

  v71 = v670;
  if (!v285)
  {
LABEL_186:

    aBlock = 0;
    v318 = v626;
    if ([v626 performChangesAndWait:v18 error:&aBlock])
    {
      v670 = v71;
      v319 = aBlock;
      v320 = sub_22F7415F0();
      v321 = v318;
      v322 = sub_22F741840();
      v323 = os_log_type_enabled(v322, v320);
      v627 = v321;
      if (v323)
      {
        v324 = swift_slowAlloc();
        LODWORD(v672) = v320;
        v325 = v324;
        *v324 = 134218240;
        v326 = [objc_opt_self() any];
        v327 = [v321 nodeIdentifiersMatchingFilter:v326];

        v328 = [v327 count];
        *(v325 + 1) = v328;

        *(v325 + 6) = 2048;
        v329 = [objc_opt_self() any];
        v330 = [v321 edgeIdentifiersMatchingFilter:v329];

        v331 = [v330 count];
        v12 = v642;
        *(v325 + 14) = v331;

        _os_log_impl(&dword_22F0FC000, v322, v672, "Fully albumed, graph has %ld nodes and %ld edges", v325, 0x16u);
        MEMORY[0x2319033A0](v325, -1, -1);
      }

      else
      {

        v322 = v321;
      }

      v358 = [v646[14] librarySpecificFetchOptions];
      v359 = swift_allocObject();
      *(v359 + 16) = xmmword_22F770DF0;
      v360 = MEMORY[0x277D84C58];
      v361 = MEMORY[0x277D84CB8];
      *(v359 + 56) = MEMORY[0x277D84C58];
      *(v359 + 64) = v361;
      *(v359 + 32) = 1;
      *(v359 + 96) = v360;
      *(v359 + 104) = v361;
      *(v359 + 72) = 2;
      v362 = sub_22F741560();
      [v358 setPredicate_];

      p_isa = v358;
      v363 = [v630 fetchAssetCollectionsWithType:6 subtype:1000000304 options:v358];
      v364 = [v363 count];
      if ((v364 & 0x8000000000000000) != 0)
      {
        goto LABEL_295;
      }

      if (v364)
      {
        v365 = 0;
        v636 = "_TtC11PhotosGraph12GraphBuilder";
        v637 = v364;
        v366 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
        i = v363;
        do
        {
          v368 = objc_autoreleasePoolPush();
          v369 = [v363 objectAtIndexedSubscript_];
          v370 = v363;
          v371 = v366;
          v372 = [v648 v366[291]];
          if ([v372 count]< 1)
          {

            v366 = v371;
            v363 = v370;
            v367 = v637;
          }

          else
          {
            v662 = v372;
            objc_opt_self();
            v373 = swift_dynamicCastObjCClass();
            v660 = v368;
            v643 = v365;
            if (v373)
            {
              [v373 type];
            }

            v645 = v369;
            v374 = [v369 localIdentifier];
            if (!v374)
            {
              sub_22F740E20();
              v374 = sub_22F740DF0();
            }

            sub_22F740E20();
            v683 = MEMORY[0x277D84F98];
            sub_22F121CEC(v374, 0xD000000000000010, v636 | 0x8000000000000000);
            aBlock = v683;
            v375 = sub_22F740DF0();

            sub_22F121CEC(v375, 1701869940, 0xE400000000000000);
            v376 = v670;
            v377 = sub_22F2B5478(&unk_2843DE458);
            v670 = v376;
            if (v376)
            {
              goto LABEL_258;
            }

            v661 = v377;
            [v18 insertNode_];
            v378 = v662;
            v379 = [v662 count];
            if ((v379 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_294:
              __break(1u);
LABEL_295:
              __break(1u);
            }

            if (v379)
            {
              v380 = 0;
              v663 = v379;
              do
              {
                v381 = [v378 objectAtIndexedSubscript:v380];
                v382 = *(v658 + 16);
                v383 = *(v658 + 24);

                *&v672 = v381;
                v384 = [v381 localIdentifier];
                v385 = sub_22F740E20();
                v387 = v386;

                v388 = sub_22F1530EC();
                v683 = MEMORY[0x231901000](1, &type metadata for Node.Label, v388);
                sub_22F10DF08(&v682, byte_2843DE4A0);
                v389 = sub_22F2D67A0(v683, v385, v387, v382);

                if (v389)
                {
                  v390 = swift_allocObject();
                  *(v390 + 16) = v634;
                  *(v390 + 32) = sub_22F2897A0(1);
                  *(v390 + 40) = v391;
                  v669 = v661;
                  v392 = v389;
                  v393 = sub_22F1515F8(v390);
                  swift_setDeallocating();
                  sub_22F1DF3B0(v390 + 32);
                  swift_deallocClassInstance();
                  v394 = objc_opt_self();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                  v395 = sub_22F740C80();
                  v396 = [v394 kgPropertiesWithMAProperties_];

                  if (!v396)
                  {

                    sub_22F2B5954();
                    v670 = swift_allocError();
                    swift_willThrow();

                    v401 = v669;
                    v402 = v669;
                    v404 = v655;
                    v403 = v656;
                    v18 = v671;
                    v405 = v642;
                    v407 = p_isa;
                    v406 = v632;
                    goto LABEL_225;
                  }

                  sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                  v397 = sub_22F740CA0();

                  v398 = type metadata accessor for Edge();
                  v399 = objc_allocWithZone(v398);
                  *&v399[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                  *&v399[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v393;
                  *&v399[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v397;
                  *&v399[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v392;
                  *&v399[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v669;
                  v678.receiver = v399;
                  v678.super_class = v398;
                  v400 = [&v678 init];
                  [v671 insertEdge_];

                  v378 = v662;
                }

                ++v380;
              }

              while (v663 != v380);
            }

            v18 = v671;
            v12 = v642;
            v365 = v643;
            v363 = i;
            v367 = v637;
            v368 = v660;
            v366 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
          }

          v365 = (v365 + 1);
          objc_autoreleasePoolPop(v368);
        }

        while (v365 != v367);
      }

      aBlock = 0;
      v408 = v627;
      if ([v627 performChangesAndWait:v18 error:&aBlock])
      {
        v409 = aBlock;
        v410 = sub_22F7415F0();
        v22 = v408;
        v36 = sub_22F741840();
        v411 = os_log_type_enabled(v36, v410);
        v629 = v22;
        if (v411)
        {
          v412 = swift_slowAlloc();
          *v412 = 134218240;
          v413 = [objc_opt_self() any];
          v414 = [v22 nodeIdentifiersMatchingFilter_];

          v415 = [v414 count];
          *(v412 + 4) = v415;

          *(v412 + 12) = 2048;
          v416 = [objc_opt_self() any];
          v417 = [v22 edgeIdentifiersMatchingFilter_];

          v418 = [v417 count];
          v12 = v642;
          *(v412 + 14) = v418;

          _os_log_impl(&dword_22F0FC000, v36, v410, "Tripped, graph has %ld nodes and %ld edges", v412, 0x16u);
          MEMORY[0x2319033A0](v412, -1, -1);
LABEL_233:

          v420 = [v646[14] librarySpecificFetchOptions];
          v421 = swift_allocObject();
          *(v421 + 16) = v634;
          v628 = *MEMORY[0x277CD9C58];
          *(v421 + 32) = sub_22F740E20();
          *(v421 + 40) = v422;
          v423 = sub_22F741160();

          [v420 setFetchPropertySets_];

          [v420 setPersonContext_];
          v424 = objc_opt_self();
          v630 = v420;
          v637 = [v424 fetchPersonsWithOptions:v420];
          v425 = [v637 count];
          if ((v425 & 0x8000000000000000) != 0)
          {
            goto LABEL_306;
          }

          v426 = v425;
          v71 = v670;
          v627 = v424;
          if (v425)
          {
            v427 = 0;
            v636 = "_TtC11PhotosGraph12GraphBuilder";
            i = v425;
            while (1)
            {
              v645 = objc_autoreleasePoolPush();
              v660 = v427;
              v429 = [v637 objectAtIndexedSubscript_];
              v430 = [v429 localIdentifier];
              if (!v430)
              {
                sub_22F740E20();
                v430 = sub_22F740DF0();
              }

              sub_22F740E20();
              v432 = v431;
              v683 = MEMORY[0x277D84F98];
              sub_22F121CEC(v430, 0xD000000000000010, v636 | 0x8000000000000000);
              aBlock = v683;
              v433 = [v429 name];
              if (v433)
              {
                *&v672 = v432;
                v434 = v71;
                v435 = v426;
                v436 = v429;
                v437 = v433;
                sub_22F740E20();

                v429 = v436;
                v426 = v435;
                v71 = v434;
              }

              v438 = sub_22F740DF0();

              sub_22F121CEC(v438, 1701667182, 0xE400000000000000);
              v439 = sub_22F2B5478(&unk_2843DE4A8);
              if (v71)
              {
                break;
              }

              v428 = v439;
              [v18 insertNode_];
              v643 = &v429->isa;
              v440 = [v648 fetchAssetsForPerson:v429 options:v659];
              v12 = v642;
              v424 = v660;
              if (v440)
              {
                v662 = v428;
                v670 = 0;
                v441 = v440;
                v442 = [v440 count];
                if ((v442 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_306:
                  __break(1u);
LABEL_307:

                  v424 = v660;
                  goto LABEL_308;
                }

                if (v442)
                {
                  v443 = 0;
                  v661 = v441;
                  v663 = v442;
                  do
                  {
                    v444 = [v441 objectAtIndexedSubscript:v443];
                    v445 = *(v658 + 16);
                    v446 = *(v658 + 24);

                    *&v672 = v444;
                    v447 = [v444 localIdentifier];
                    v448 = sub_22F740E20();
                    v450 = v449;

                    v451 = sub_22F1530EC();
                    v683 = MEMORY[0x231901000](1, &type metadata for Node.Label, v451);
                    sub_22F10DF08(&v682, byte_2843DE4F0);
                    v452 = sub_22F2D67A0(v683, v448, v450, v445);

                    if (v452)
                    {
                      inited = swift_initStackObject();
                      *(inited + 16) = v634;
                      *(inited + 32) = sub_22F2897A0(5);
                      *(inited + 40) = v454;
                      v669 = v662;
                      v455 = v452;
                      v456 = sub_22F1515F8(inited);
                      swift_setDeallocating();
                      sub_22F1DF3B0(inited + 32);
                      v457 = objc_opt_self();
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                      v458 = sub_22F740C80();
                      v459 = [v457 kgPropertiesWithMAProperties_];

                      if (!v459)
                      {

                        sub_22F2B5954();
                        swift_allocError();
                        swift_willThrow();

                        v429 = v669;
                        goto LABEL_255;
                      }

                      sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                      v460 = sub_22F740CA0();

                      v461 = type metadata accessor for Edge();
                      v462 = objc_allocWithZone(v461);
                      *&v462[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                      *&v462[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v456;
                      *&v462[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v460;
                      *&v462[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v455;
                      *&v462[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v669;
                      v679.receiver = v462;
                      v679.super_class = v461;
                      v463 = [&v679 init];
                      [v671 insertEdge_];

                      v441 = v661;
                    }

                    ++v443;
                  }

                  while (v663 != v443);
                }

                v428 = v441;
                v71 = v670;
                v18 = v671;
                v12 = v642;
                v426 = i;
                v424 = v660;
              }

              v427 = (&v424->isa + 1);

              objc_autoreleasePoolPop(v645);
              if (v427 == v426)
              {
                goto LABEL_251;
              }
            }

LABEL_255:

            objc_autoreleasePoolPop(v645);
            (*(v656 + 8))(v657, v655);
            (*(v654 + 8))(v667, v651);

            goto LABEL_109;
          }

LABEL_251:
          aBlock = 0;
          v464 = v629;
          if ([v629 performChangesAndWait:v18 error:&aBlock])
          {
            v465 = aBlock;
            v466 = sub_22F7415F0();
            v64 = v464;
            v77 = sub_22F741840();
            if (!os_log_type_enabled(v77, v466))
            {
              goto LABEL_267;
            }

            v467 = swift_slowAlloc();
            *v467 = 134218240;
            v468 = [objc_opt_self() any];
            v469 = [v64 nodeIdentifiersMatchingFilter_];

            v470 = [v469 count];
            *(v467 + 4) = v470;

            *(v467 + 12) = 2048;
            v471 = [objc_opt_self() any];
            v472 = [v64 edgeIdentifiersMatchingFilter_];

            v473 = [v472 count];
            *(v467 + 14) = v473;

            _os_log_impl(&dword_22F0FC000, v77, v466, "Personed, graph has %ld nodes and %ld edges", v467, 0x16u);
            MEMORY[0x2319033A0](v467, -1, -1);
LABEL_268:

            v18 = [v646[14] librarySpecificFetchOptions];
            v475 = swift_allocObject();
            *(v475 + 16) = v634;
            *(v475 + 32) = sub_22F740E20();
            *(v475 + 40) = v476;
            v477 = sub_22F741160();

            [v18 setFetchPropertySets_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
            v478 = swift_allocObject();
            v672 = xmmword_22F771350;
            *(v478 + 16) = xmmword_22F771350;
            *(v478 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
            *(v478 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
            v479 = sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
            v480 = sub_22F741160();

            [v18 setIncludedDetectionTypes_];

            [v18 setIncludeTorsoOnlyPerson_];
            v40 = swift_initStackObject();
            *(v40 + 16) = v672;
            *(v40 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            *(v40 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            sub_22F152E80(v40);
            swift_setDeallocating();
            v481 = *(v40 + 16);
            swift_arrayDestroy();
            v482 = sub_22F11FA28(&qword_2810A8EC8, &qword_2810A8ED0, 0x277CCABB0);
            *&v672 = v479;
            v669 = v482;
            v483 = sub_22F741410();

            [v18 setVerifiedPersonTypes_];

            v121 = [v627 fetchPersonsWithOptions_];
            v484 = [v121 count];
            v12 = v671;
            if ((v484 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_321:
              sub_22F7420C0();
              __break(1u);
LABEL_322:
              __break(1u);
LABEL_323:
              __break(1u);
              goto LABEL_324;
            }

            v485 = v484;
            if (v484)
            {
              v486 = 0;
              while (1)
              {
                v487 = objc_autoreleasePoolPush();
                sub_22F384748(v121, v486, v12, v659, v665, &aBlock);
                if (v71)
                {
                  break;
                }

                v71 = 0;
                ++v486;
                objc_autoreleasePoolPop(v487);
                if (v485 == v486)
                {
                  goto LABEL_273;
                }
              }

              objc_autoreleasePoolPop(v487);
              goto LABEL_280;
            }

LABEL_273:
            aBlock = 0;
            v488 = [v64 performChangesAndWait:v12 error:&aBlock];
            v120 = aBlock;
            if (v488)
            {
              v661 = v121;
              v662 = v18;
              v489 = aBlock;
              v490 = sub_22F7415F0();
              v491 = v64;
              v492 = sub_22F741840();
              if (os_log_type_enabled(v492, v490))
              {
                v493 = swift_slowAlloc();
                *v493 = 134218240;
                v494 = [objc_opt_self() any];
                v495 = [v491 nodeIdentifiersMatchingFilter:v494];

                v496 = [v495 count];
                *(v493 + 4) = v496;

                *(v493 + 12) = 2048;
                v497 = [objc_opt_self() any];
                v498 = [v491 edgeIdentifiersMatchingFilter:v497];

                v499 = [v498 count];
                *(v493 + 14) = v499;

                _os_log_impl(&dword_22F0FC000, v492, v490, "Pet, graph has %ld nodes and %ld edges", v493, 0x16u);
                MEMORY[0x2319033A0](v493, -1, -1);
              }

              else
              {

                v492 = v491;
              }

              v663 = v686;
              sub_22F387298(v673, v686, v665, v671);
              if (!v71)
              {
                aBlock = 0;
                v501 = [v491 performChangesAndWait:v671 error:&aBlock];
                v502 = aBlock;
                if (v501)
                {
                  v503 = aBlock;
                  v504 = sub_22F7415F0();
                  v282 = v491;
                  v283 = sub_22F741840();
                  if (!os_log_type_enabled(v283, v504))
                  {
                    goto LABEL_288;
                  }

                  v505 = swift_slowAlloc();
                  *v505 = 134218240;
                  v506 = [objc_opt_self() any];
                  v507 = [v282 nodeIdentifiersMatchingFilter_];

                  v508 = [v507 count];
                  *(v505 + 4) = v508;

                  *(v505 + 12) = 2048;
                  v509 = [objc_opt_self() any];
                  v510 = [v282 edgeIdentifiersMatchingFilter_];

                  v511 = [v510 count];
                  *(v505 + 14) = v511;

                  _os_log_impl(&dword_22F0FC000, v283, v504, "Businessed, graph has %ld nodes and %ld edges", v505, 0x16u);
                  MEMORY[0x2319033A0](v505, -1, -1);
LABEL_289:

                  sub_22F741740();
                  sub_22F740A90();
                  sub_22F387298(v673, v663, v665, v671);
                  if (v71)
                  {
                    goto LABEL_301;
                  }

                  aBlock = 0;
                  v512 = [v282 performChangesAndWait:v671 error:&aBlock];
                  v502 = aBlock;
                  if (v512)
                  {
                    v513 = aBlock;
                    v514 = sub_22F7415F0();
                    v515 = v282;
                    v516 = sub_22F741840();
                    if (os_log_type_enabled(v516, v514))
                    {
                      v517 = swift_slowAlloc();
                      *v517 = 134218240;
                      v518 = [objc_opt_self() any];
                      v519 = [v515 nodeIdentifiersMatchingFilter:v518];

                      v520 = [v519 count];
                      *(v517 + 4) = v520;

                      *(v517 + 12) = 2048;
                      v521 = [objc_opt_self() any];
                      v522 = [v515 edgeIdentifiersMatchingFilter:v521];

                      v523 = [v522 count];
                      *(v517 + 14) = v523;

                      _os_log_impl(&dword_22F0FC000, v516, v514, "Businessed, graph has %ld nodes and %ld edges", v517, 0x16u);
                      MEMORY[0x2319033A0](v517, -1, -1);
                    }

                    else
                    {

                      v516 = v515;
                    }

                    sub_22F741730();
                    sub_22F740A90();
                    sub_22F741740();
                    sub_22F740A90();

                    v525 = sub_22F3798AC(v524, sub_22F120B48, sub_22F120B44);
                    sub_22F388F80(v525, v665, v671);
                    v670 = 0;

                    aBlock = 0;
                    v526 = [v515 performChangesAndWait:v671 error:&aBlock];
                    v502 = aBlock;
                    if (v526)
                    {
                      v527 = aBlock;
                      v528 = sub_22F7415F0();
                      v660 = v515;
                      v424 = sub_22F741840();
                      if (!os_log_type_enabled(v424, v528))
                      {
                        goto LABEL_307;
                      }

                      v529 = swift_slowAlloc();
                      *v529 = 134218240;
                      v530 = [objc_opt_self() any];
                      v531 = v660;
                      v532 = [v660 nodeIdentifiersMatchingFilter_];

                      v533 = [v532 count];
                      *(v529 + 4) = v533;

                      *(v529 + 12) = 2048;
                      v534 = [objc_opt_self() any];
                      v535 = [v531 edgeIdentifiersMatchingFilter_];

                      v536 = [v535 count];
                      *(v529 + 14) = v536;

                      _os_log_impl(&dword_22F0FC000, v424, v528, "PublicEvented, graph has %ld nodes and %ld edges", v529, 0x16u);
                      MEMORY[0x2319033A0](v529, -1, -1);
LABEL_308:

                      sub_22F741730();
                      sub_22F740A90();

                      sub_22F3798AC(v540, sub_22F120B48, sub_22F120B44);
                      sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
                      v541 = sub_22F741160();

                      v542 = sub_22F396504(&unk_2843DE4F8);
                      [v648 prefetchOnAssets:v541 options:v542 curationContext:v652];

                      v636 = [objc_allocWithZone(MEMORY[0x277D3C7B8]) initForSceneNetOnly_];
                      v543 = [v636 rootNode];
                      v544 = [v543 name];

                      v646 = sub_22F740E20();
                      v648 = v545;

                      v683 = 0;
                      v546 = *(v658 + 16);
                      v547 = *(v658 + 24);

                      v548 = sub_22F15280C(&unk_2843DE528);
                      v40 = sub_22F2D657C(v548, v546);

                      if (!(v40 >> 62))
                      {
                        v549 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        if (v549)
                        {
                          goto LABEL_310;
                        }

LABEL_325:

                        aBlock = 0;
                        if ([v660 performChangesAndWait:v671 error:&aBlock])
                        {
                          v556 = aBlock;
                          v557 = sub_22F7415F0();
                          v621 = v660;
                          v558 = sub_22F741840();
                          if (os_log_type_enabled(v558, v557))
                          {
                            v559 = swift_slowAlloc();
                            *v559 = 134218240;
                            v560 = [objc_opt_self() any];
                            v561 = v621;
                            v562 = [v621 nodeIdentifiersMatchingFilter:v560];

                            v563 = [v562 count];
                            *(v559 + 4) = v563;

                            *(v559 + 12) = 2048;
                            v564 = [objc_opt_self() any];
                            v565 = [v561 edgeIdentifiersMatchingFilter:v564];

                            v566 = [v565 count];
                            *(v559 + 14) = v566;

                            _os_log_impl(&dword_22F0FC000, v558, v557, "Scened, graph has %ld nodes and %ld edges", v559, 0x16u);
                            MEMORY[0x2319033A0](v559, -1, -1);
                          }

                          else
                          {

                            v558 = v621;
                          }

                          v624 = [objc_allocWithZone(MEMORY[0x277D3B4C0]) init];
                          swift_beginAccess();
                          v569 = *(v658 + 16);
                          v570 = *(v658 + 24);

                          v571 = sub_22F15280C(&unk_2843DE550);
                          v572 = sub_22F2D657C(v571, v569);

                          v625 = v572;
                          if (v572 >> 62)
                          {
                            goto LABEL_370;
                          }

                          for (i = *((v625 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
                          {
                            v648 = 0;
                            v629 = (v625 & 0xC000000000000001);
                            v622 = (v625 + 32);
                            v623 = v625 & 0xFFFFFFFFFFFFFF8;
                            while (1)
                            {
                              if (v629)
                              {
                                v573 = MEMORY[0x2319016F0](v648, v625);
                              }

                              else
                              {
                                if (v648 >= *(v623 + 16))
                                {
                                  goto LABEL_369;
                                }

                                v573 = *&v622[8 * v648];
                              }

                              v644 = v573;
                              v61 = __OFADD__(v648++, 1);
                              if (v61)
                              {
                                goto LABEL_368;
                              }

                              sub_22F2B4BB8();
                              if (sub_22F740F10() == 6)
                              {
                                break;
                              }

LABEL_334:

                              if (v648 == i)
                              {
                                goto LABEL_371;
                              }
                            }

                            v574 = sub_22F740DF0();

                            v575 = [v624 scenesByScoreForPOIHash_];

                            if (!v575)
                            {
                              goto LABEL_334;
                            }

                            v576 = sub_22F740CA0();

                            v660 = v576;
                            if ((v576 & 0xC000000000000001) != 0)
                            {
                              v577 = sub_22F741CA0();
                              v578 = 0;
                              v626 = 0;
                              v646 = 0;
                              v660 = v577 | 0x8000000000000000;
                            }

                            else
                            {
                              v579 = -1 << *(v660 + 32);
                              v578 = (v660 + 64);
                              v580 = *(v660 + 64);
                              v626 = ~v579;
                              v581 = -v579;
                              if (v581 < 64)
                              {
                                v582 = ~(-1 << v581);
                              }

                              else
                              {
                                v582 = -1;
                              }

                              v646 = (v582 & v580);
                            }

                            v645 = 0;
                            v583 = (v626 + 64) >> 6;
                            while (1)
                            {
                              if ((v660 & 0x8000000000000000) != 0)
                              {
                                v589 = sub_22F741D10();
                                if (!v589)
                                {
                                  goto LABEL_365;
                                }

                                v591 = v590;
                                v680 = v589;
                                swift_dynamicCast();
                                v665 = v682;
                                v680 = v591;
                                swift_dynamicCast();
                                v664 = v682;
                                v584 = v645;
                                v643 = v646;
                                goto LABEL_359;
                              }

                              v584 = v645;
                              v585 = v645;
                              v586 = v646;
                              if (!v646)
                              {
                                break;
                              }

LABEL_356:
                              v643 = ((v586 - 1) & v586);
                              v587 = (v584 << 9) | (8 * __clz(__rbit64(v586)));
                              v588 = *(*(v660 + 56) + v587);
                              v665 = *(*(v660 + 48) + v587);
                              v664 = v588;
LABEL_359:
                              if (!v665)
                              {
LABEL_365:
                                sub_22F0FF590();
                                goto LABEL_334;
                              }

                              [v664 doubleValue];
                              if (v592 < 0.5)
                              {
                                goto LABEL_349;
                              }

                              v593 = *(v658 + 16);
                              v594 = *(v658 + 24);

                              v595 = [v665 stringValue];
                              v596 = sub_22F740E20();
                              v598 = v597;

                              v599 = sub_22F1530EC();
                              v682 = MEMORY[0x231901000](1, &type metadata for Node.Label, v599);
                              sub_22F10DF08(&v680, byte_2843DE598);
                              v600 = sub_22F2D67A0(v682, v596, v598, v593);

                              if (v600)
                              {
                                v682 = MEMORY[0x277D84F98];
                                [v664 doubleValue];
                                v601 = sub_22F741350();
                                sub_22F121CEC(v601, 0x65726F6373, 0xE500000000000000);
                                v602 = swift_initStackObject();
                                *(v602 + 16) = v634;
                                *(v602 + 32) = sub_22F2897A0(17);
                                *(v602 + 40) = v603;
                                v627 = v644;
                                v628 = v600;
                                v604 = sub_22F1515F8(v602);
                                swift_setDeallocating();
                                sub_22F1DF3B0(v602 + 32);
                                v605 = objc_opt_self();
                                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                                v606 = sub_22F740C80();

                                v607 = [v605 kgPropertiesWithMAProperties_];

                                if (!v607)
                                {

                                  sub_22F2B5954();
                                  swift_allocError();
                                  swift_willThrow();

                                  sub_22F0FF590();
                                  v613 = v627;

                                  v614 = v628;
                                  v539 = v664;
                                  goto LABEL_304;
                                }

                                sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                                v608 = sub_22F740CA0();

                                v609 = type metadata accessor for Edge();
                                v610 = objc_allocWithZone(v609);
                                *&v610[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                                *&v610[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v604;
                                *&v610[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v608;
                                v611 = v628;
                                *&v610[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v627;
                                *&v610[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v611;
                                v681.receiver = v610;
                                v681.super_class = v609;
                                v612 = [&v681 init];
                                [v671 insertEdge_];
                              }

                              else
                              {
LABEL_349:
                              }

                              v645 = v584;
                              v646 = v643;
                            }

                            while (1)
                            {
                              v584 = &v585->isa + 1;
                              if (__OFADD__(v585, 1))
                              {
                                break;
                              }

                              if (v584 >= v583)
                              {
                                v646 = 0;
                                goto LABEL_365;
                              }

                              v586 = *&v578[8 * v584];
                              v585 = (v585 + 1);
                              if (v586)
                              {
                                goto LABEL_356;
                              }
                            }

                            __break(1u);
LABEL_368:
                            __break(1u);
LABEL_369:
                            __break(1u);
LABEL_370:
                            ;
                          }

LABEL_371:

                          v615 = v621;
                          v616 = [v621 graphIdentifier];
                          v617 = v639;
                          sub_22F73F6B0();

                          (*(v640 + 8))(v617, v641);
                          v682 = 0;
                          if (([v615 performChangesAndWait:v671 error:&v682]& 1) != 0)
                          {
                            v618 = v682;

                            (*(v656 + 8))(v657, v655);
                            (*(v654 + 8))(v667, v651);
                            *v638 = 1;

                            goto LABEL_108;
                          }

                          v619 = v682;
                          sub_22F73F370();

                          swift_willThrow();
                          v568 = v624;
                        }

                        else
                        {
                          v567 = aBlock;
                          sub_22F73F370();

                          swift_willThrow();
                          v568 = v649;
                        }

                        v538 = v636;
LABEL_302:

LABEL_303:
                        v539 = v652;
LABEL_304:

                        (*(v656 + 8))(v657, v655);
                        (*(v654 + 8))(v667, v651);

                        goto LABEL_108;
                      }

LABEL_324:
                      v549 = sub_22F741A00();
                      if (v549)
                      {
LABEL_310:
                        v550 = 0;
                        while (1)
                        {
                          if ((v40 & 0xC000000000000001) != 0)
                          {
                            v551 = MEMORY[0x2319016F0](v550, v40);
                          }

                          else
                          {
                            if (v550 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
                            {
                              goto LABEL_322;
                            }

                            v551 = *(v40 + 8 * v550 + 32);
                          }

                          v552 = v551;
                          v553 = v550 + 1;
                          if (__OFADD__(v550, 1))
                          {
                            goto LABEL_323;
                          }

                          v554 = objc_autoreleasePoolPush();
                          v555 = v670;
                          sub_22F384C8C(v552, &v687, v671, v636, v658, v646, v648, &v683, v660, v673, v664, &aBlock);
                          v670 = v555;
                          if (v555)
                          {
                            break;
                          }

                          objc_autoreleasePoolPop(v554);

                          ++v550;
                          if (v553 == v549)
                          {
                            goto LABEL_325;
                          }
                        }

                        objc_autoreleasePoolPop(v554);

                        goto LABEL_303;
                      }

                      goto LABEL_325;
                    }
                  }
                }

                v537 = v502;
                sub_22F73F370();

                swift_willThrow();
              }

LABEL_301:

              v538 = v649;
              goto LABEL_302;
            }

LABEL_278:
            v500 = v120;
            sub_22F73F370();

            swift_willThrow();
LABEL_280:

            goto LABEL_104;
          }

          v474 = aBlock;
          sub_22F73F370();

          swift_willThrow();
          v281 = v637;
          goto LABEL_162;
        }

LABEL_232:

        v36 = v22;
        goto LABEL_233;
      }

      v419 = aBlock;
      sub_22F73F370();

      swift_willThrow();
      v356 = p_isa;
    }

    else
    {
      v355 = aBlock;
      sub_22F73F370();

      swift_willThrow();
      v356 = v632;
    }

LABEL_161:
    v281 = v649;
LABEL_162:

    goto LABEL_103;
  }

  v286 = 0;
  v627 = "_TtC11PhotosGraph12GraphBuilder";
  v287 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
  v637 = v284;
  p_isa = v285;
  while (1)
  {
    v288 = [v284 objectAtIndexedSubscript_];
    v290 = *(v658 + 16);
    v289 = *(v658 + 24);

    v645 = objc_autoreleasePoolPush();
    v291 = [v648 v287[291]];
    if ([v291 count]>= 1)
    {
      break;
    }

    v284 = v637;
LABEL_168:
    v287 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
    v286 = (v286 + 1);
    objc_autoreleasePoolPop(v645);

    if (v286 == p_isa)
    {
      goto LABEL_186;
    }
  }

  v643 = v289;
  v661 = v290;
  v662 = v291;
  i = v286;
  v636 = v288;
  v292 = [v288 localIdentifier];
  if (!v292)
  {
    sub_22F740E20();
    v292 = sub_22F740DF0();
  }

  sub_22F740E20();
  v683 = MEMORY[0x277D84F98];
  sub_22F121CEC(v292, 0xD000000000000010, v627 | 0x8000000000000000);
  aBlock = v683;
  v293 = sub_22F740DF0();
  sub_22F121CEC(v293, 1701667182, 0xE400000000000000);
  v294 = sub_22F2B5478(&unk_2843DE408);
  v283 = v643;
  v284 = v637;
  if (!v71)
  {
    v282 = v294;
    [v18 insertNode_];
    v295 = v662;
    v296 = [v662 count];
    if ((v296 & 0x8000000000000000) == 0)
    {
      if (v296)
      {
        v660 = v282;
        v670 = 0;
        v297 = 0;
        v298 = v661;
        v663 = v296;
        do
        {
          v303 = [v295 objectAtIndexedSubscript:v297];
          v304 = [v303 localIdentifier];
          v305 = sub_22F740E20();
          v307 = v306;

          v308 = sub_22F1530EC();
          aBlock = MEMORY[0x231901000](1, &type metadata for Node.Label, v308);
          sub_22F10DF08(&v683, byte_2843DE450);
          v309 = sub_22F2D67A0(aBlock, v305, v307, v298);

          if (v309)
          {
            *&v672 = v303;
            v310 = swift_allocObject();
            *(v310 + 16) = v634;
            *(v310 + 32) = sub_22F2897A0(10);
            *(v310 + 40) = v311;
            v669 = v660;
            v312 = v309;
            v313 = sub_22F1515F8(v310);
            swift_setDeallocating();
            sub_22F1DF3B0(v310 + 32);
            swift_deallocClassInstance();
            v314 = objc_opt_self();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
            v315 = sub_22F740C80();
            v316 = [v314 kgPropertiesWithMAProperties_];

            if (!v316)
            {

              sub_22F2B5954();
              swift_allocError();
              swift_willThrow();

              v317 = v669;
              v236 = v656;
              v18 = v671;
              v12 = v642;
              v284 = v637;
              goto LABEL_184;
            }

            sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
            v299 = sub_22F740CA0();

            v300 = type metadata accessor for Edge();
            v301 = objc_allocWithZone(v300);
            *&v301[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
            *&v301[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v313;
            *&v301[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v299;
            *&v301[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v312;
            *&v301[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v669;
            v677.receiver = v301;
            v677.super_class = v300;
            v302 = [&v677 init];
            [v671 insertEdge_];

            v298 = v661;
            v295 = v662;
            v303 = v672;
          }

          ++v297;
        }

        while (v663 != v297);

        v71 = v670;
        v18 = v671;
        v12 = v642;
        v284 = v637;
      }

      else
      {
      }

      v288 = v636;
      v286 = i;
      goto LABEL_168;
    }

    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:

    v283 = v282;
    goto LABEL_289;
  }

  v236 = v656;
LABEL_184:
  objc_autoreleasePoolPop(v645);

LABEL_185:
LABEL_136:

  (*(v236 + 8))(v657, v655);
LABEL_106:
  (*(v654 + 8))(v667, v651);

LABEL_107:

LABEL_108:

LABEL_109:
  v192 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22F380920(char *a1, char *a2, void *a3, uint64_t *a4, void *a5, char *a6, char *a7, uint64_t *a8, void *a9, uint64_t *a10, id a11, void *a12, uint64_t a13, uint64_t *a14)
{
  v15 = v14;
  v520 = a8;
  v521 = a6;
  v518 = a7;
  v524 = a4;
  v525 = a5;
  v545 = *MEMORY[0x277D85DE8];
  v19 = sub_22F73F270();
  v20 = *(v19 - 8);
  v515 = v19;
  v516 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v517 = &v494 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22F73F690();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v522 = &v494 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v523 = &v494 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v494 - v30;
  v526 = a1;
  v527 = a2;
  v32 = sub_22F740DF0();
  v33 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v543 = v33;
  v519 = "_TtC11PhotosGraph12GraphBuilder";
  sub_22F386DBC(v32, 0xD000000000000010, 0x800000022F792110, isUniquelyReferenced_nonNull_native, &v543);
  v35 = v543;
  v36 = [a3 creationDate];
  if (v36)
  {
    v37 = v36;
    sub_22F73F640();

    sub_22F73F620();
    v38 = sub_22F741350();
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v543 = v35;
    sub_22F386DBC(v38, 0x6E6F697461657263, 0xEC00000065746144, v39, &v543);
    v35 = v543;
    v40 = v24;
    (*(v24 + 8))(v31, v23);
  }

  else
  {
    v40 = v24;
  }

  v41 = [a3 location];
  if (v41)
  {
    v42 = v41;
    [v41 coordinate];

    v43 = [a3 location];
    if (v43)
    {
      v44 = v43;
      [v43 coordinate];

      v45 = sub_22F741350();
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v543 = v35;
      sub_22F386DBC(v45, 0x656475746974616CLL, 0xE800000000000000, v46, &v543);
      v47 = v543;
      v48 = sub_22F741350();
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v543 = v47;
      sub_22F386DBC(v48, 0x64757469676E6F6CLL, 0xE900000000000065, v49, &v543);
      v35 = v543;
    }
  }

  [a3 curationScore];
  v50 = sub_22F741350();
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v543 = v35;
  sub_22F386DBC(v50, 0x6E6F697461727563, 0xED000065726F6353, v51, &v543);
  v52 = v543;

  v53 = sub_22F2B5478(&unk_2843DD6E0);
  if (v14)
  {
    goto LABEL_8;
  }

  v56 = a3;
  v57 = v53;
  v58 = v524;
  sub_22F2D601C(v53);
  [v525 insertNode_];
  v514 = v56;
  v59 = [v56 localCreationDate];
  v513 = v57;
  if (!v59)
  {
    goto LABEL_16;
  }

  v510 = v23;
  v511 = v52;
  v512 = 0;
  v60 = v59;
  sub_22F73F640();

  sub_22F73F800();
  sub_22F73F620();
  v61 = sub_22F741360();
  v63 = v62;
  v64 = *v58;
  v65 = v58[1];

  v66 = sub_22F15280C(&unk_2843DD708);
  v67 = sub_22F2D67A0(v66, v61, v63, v64);

  if (!v67)
  {
    v96 = sub_22F740DF0();
    v97 = MEMORY[0x277D84F98];
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v543 = v97;
    sub_22F386DBC(v96, 0xD000000000000010, v519 | 0x8000000000000000, v98, &v543);
    v99 = v543;
    v100 = sub_22F73F5B0();
    v101 = [v518 stringFromDate_];

    if (!v101)
    {
      sub_22F740E20();
      v101 = sub_22F740DF0();
    }

    v102 = swift_isUniquelyReferenced_nonNull_native();
    v543 = v99;
    sub_22F386DBC(v101, 1701667182, 0xE400000000000000, v102, &v543);
    v103 = v512;
    v104 = sub_22F2B5478(&unk_2843DD730);
    v15 = v103;
    if (v103)
    {

LABEL_27:
      v105 = *(v40 + 1);
      v106 = v522;
LABEL_28:
      v107 = v510;
      v105(v106, v510);
      v105(v523, v107);
LABEL_8:

      goto LABEL_9;
    }

    v518 = v40;
    v512 = 0;
    v179 = v104;
    sub_22F2D601C(v104);
    v509 = v179;
    [v525 insertNode_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
    v180 = sub_22F73F990();
    v181 = *(v180 - 8);
    v182 = *(v181 + 72);
    v183 = (*(v181 + 80) + 32) & ~*(v181 + 80);
    v184 = swift_allocObject();
    *(v184 + 16) = xmmword_22F770DE0;
    v185 = *(v181 + 104);
    v185(v184 + v183, *MEMORY[0x277CC9968], v180);
    v185(v184 + v183 + v182, *MEMORY[0x277CC99B8], v180);
    v185(v184 + v183 + 2 * v182, *MEMORY[0x277CC9998], v180);
    v185(v184 + v183 + 3 * v182, *MEMORY[0x277CC99B0], v180);
    v185(v184 + v183 + 4 * v182, *MEMORY[0x277CC9988], v180);
    sub_22F151AEC(v184);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v95 = v517;
    sub_22F73F860();

    v186 = sub_22F73F1C0();
    if (v187 & 1) != 0 || (v188 = v186, v189 = sub_22F73F1F0(), (v190))
    {
      v67 = v509;
      v191 = v509;
      v15 = v512;
      v68 = v513;
      v40 = v518;
      goto LABEL_62;
    }

    v507 = v189;
    v543 = v188;
    v208 = sub_22F742010();
    v210 = v209;
    v211 = *v524;
    v212 = sub_22F15280C(&unk_2843DD758);
    v213 = sub_22F2D67A0(v212, v208, v210, v211);

    v15 = v512;
    v40 = v518;
    if (v213)
    {
    }

    else
    {
      v349 = sub_22F740DF0();
      v350 = MEMORY[0x277D84F98];
      v351 = swift_isUniquelyReferenced_nonNull_native();
      v543 = v350;
      sub_22F386DBC(v349, 0xD000000000000010, v519 | 0x8000000000000000, v351, &v543);
      v352 = sub_22F2B5478(&unk_2843DD780);
      if (v15)
      {

        v353 = v509;
        (*(v516 + 8))(v95, v515);
        goto LABEL_27;
      }

      v213 = v352;
      [v525 insertNode_];
      sub_22F2D601C(v213);
    }

    v214 = v509;
    v215 = v213;
    v216 = sub_22F1515F8(&unk_2843DD7A8);
    sub_22F1DF3B0(&unk_2843DD7C8);
    v217 = objc_opt_self();
    v508 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
    v218 = sub_22F740C80();
    v521 = v217;
    v219 = [v217 kgPropertiesWithMAProperties_];

    if (!v219)
    {

      sub_22F2B5954();
      v15 = swift_allocError();
      swift_willThrow();

      (*(v516 + 8))(v95, v515);
      goto LABEL_30;
    }

    v512 = v15;
    v502 = sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
    v220 = sub_22F740CA0();

    v221 = type metadata accessor for Edge();
    v222 = objc_allocWithZone(v221);
    *&v222[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
    *&v222[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v216;
    *&v222[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v220;
    *&v222[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v214;
    v505 = v215;
    *&v222[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v215;
    v532.receiver = v222;
    v532.super_class = v221;
    v503 = v221;
    v504 = objc_msgSendSuper2(&v532, sel_init);
    [v525 insertEdge_];
    v223 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v224 = sub_22F740DF0();
    [v223 setDateFormat_];

    v225 = sub_22F73F5B0();
    v506 = v223;
    v226 = [v223 stringFromDate_];

    v227 = v226;
    if (!v226)
    {
      sub_22F740E20();
      v227 = sub_22F740DF0();
    }

    v228 = sub_22F740E20();
    v230 = v229;
    v231 = *v524;
    v232 = sub_22F15280C(&unk_2843DD7D8);
    v233 = sub_22F2D67A0(v232, v228, v230, v231);

    if (v233)
    {

      v15 = v512;
      v234 = v518;
    }

    else
    {
      v414 = MEMORY[0x277D84F98];
      v415 = swift_isUniquelyReferenced_nonNull_native();
      v543 = v414;
      sub_22F386DBC(v227, 0xD000000000000010, v519 | 0x8000000000000000, v415, &v543);
      v416 = v512;
      v417 = sub_22F2B5478(&unk_2843DD800);
      v15 = v416;
      v234 = v518;
      v418 = v522;
      if (v416)
      {

        goto LABEL_160;
      }

      v233 = v417;
      [v525 insertNode_];
      sub_22F2D601C(v233);
    }

    v235 = v523;
    v236 = v214;
    v237 = v233;
    v238 = sub_22F1515F8(&unk_2843DD828);
    sub_22F1DF3B0(&unk_2843DD848);
    v239 = sub_22F740C80();
    v240 = [v521 kgPropertiesWithMAProperties_];

    if (!v240)
    {

      sub_22F2B5954();
      v15 = swift_allocError();
      swift_willThrow();

      goto LABEL_170;
    }

    v512 = v15;
    v241 = sub_22F740CA0();

    v242 = v503;
    v243 = objc_allocWithZone(v503);
    *&v243[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
    *&v243[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v238;
    *&v243[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v241;
    v498 = v236;
    *&v243[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v236;
    *&v243[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v237;
    v531.receiver = v243;
    v531.super_class = v242;
    v499 = objc_msgSendSuper2(&v531, sel_init);
    [v525 insertEdge_];
    v244 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v245 = sub_22F740DF0();
    [v244 setDateFormat_];

    v246 = sub_22F73F5B0();
    v501 = v244;
    v247 = [v244 stringFromDate_];

    v248 = v247;
    if (!v247)
    {
      sub_22F740E20();
      v248 = sub_22F740DF0();
    }

    v500 = v237;
    v249 = sub_22F740E20();
    v251 = v250;
    v252 = *v524;
    v253 = sub_22F15280C(&unk_2843DD858);
    v254 = sub_22F2D67A0(v253, v249, v251, v252);

    if (v254)
    {

      v15 = v512;
      v234 = v518;
LABEL_91:
      v235 = v523;
      v236 = v498;
      v255 = v254;
      v256 = sub_22F1515F8(&unk_2843DD8A8);
      sub_22F1DF3B0(&unk_2843DD8C8);
      v257 = sub_22F740C80();
      v258 = [v521 kgPropertiesWithMAProperties_];

      if (v258)
      {
        v512 = v15;
        v259 = sub_22F740CA0();

        v260 = v503;
        v261 = objc_allocWithZone(v503);
        *&v261[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
        *&v261[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v256;
        *&v261[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v259;
        v495 = v236;
        *&v261[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v236;
        *&v261[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v255;
        v530.receiver = v261;
        v530.super_class = v260;
        v496 = objc_msgSendSuper2(&v530, sel_init);
        [v525 insertEdge_];
        v262 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v263 = sub_22F740DF0();
        [v262 setDateFormat_];

        v264 = sub_22F73F5B0();
        v497 = v262;
        v265 = [v262 stringFromDate_];

        v266 = v265;
        if (!v265)
        {
          sub_22F740E20();
          v266 = sub_22F740DF0();
        }

        v498 = v255;
        v267 = sub_22F740E20();
        v269 = v268;
        v270 = *v524;
        v271 = sub_22F15280C(&unk_2843DD8D8);
        v272 = sub_22F2D67A0(v271, v267, v269, v270);

        if (v272)
        {

          v15 = v512;
          v40 = v518;
        }

        else
        {
          v483 = MEMORY[0x277D84F98];
          v484 = swift_isUniquelyReferenced_nonNull_native();
          v543 = v483;
          sub_22F386DBC(v266, 0xD000000000000010, v519 | 0x8000000000000000, v484, &v543);
          v485 = v512;
          v486 = sub_22F2B5478(&unk_2843DD900);
          v15 = v485;
          v40 = v518;
          if (v485)
          {

            v487 = v495;
            (*(v516 + 8))(v517, v515);
            goto LABEL_27;
          }

          v272 = v486;
          [v525 insertNode_];
          sub_22F2D601C(v272);
        }

        v273 = v523;
        v52 = v495;
        v57 = v272;
        v274 = sub_22F1515F8(&unk_2843DD928);
        sub_22F1DF3B0(&unk_2843DD948);
        v275 = sub_22F740C80();
        v276 = [v521 kgPropertiesWithMAProperties_];

        if (!v276)
        {

          sub_22F2B5954();
          v15 = swift_allocError();
          swift_willThrow();

          (*(v516 + 8))(v517, v515);
          v108 = *(v40 + 1);
          v109 = v510;
          v108(v522, v510);
          v110 = v273;
          goto LABEL_31;
        }

        v512 = v15;
        v277 = sub_22F740CA0();

        v278 = v503;
        v279 = objc_allocWithZone(v503);
        *&v279[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
        *&v279[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v274;
        *&v279[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v277;
        *&v279[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v52;
        *&v279[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v57;
        v529.receiver = v279;
        v529.super_class = v278;
        v163 = objc_msgSendSuper2(&v529, sel_init);
        [v525 insertEdge_];
        v543 = v507;
        v280 = sub_22F742010();
        v282 = v281;
        v283 = *v524;
        v284 = sub_22F15280C(&unk_2843DD958);
        v285 = sub_22F2D67A0(v284, v280, v282, v283);

        if (v285)
        {
          v495 = v163;
          v507 = v57;

          v95 = v517;
          goto LABEL_99;
        }

        v488 = sub_22F740DF0();
        v489 = MEMORY[0x277D84F98];
        v490 = swift_isUniquelyReferenced_nonNull_native();
        v543 = v489;
        sub_22F386DBC(v488, 0xD000000000000010, v519 | 0x8000000000000000, v490, &v543);
        v491 = v512;
        v164 = sub_22F2B5478(&unk_2843DD980);
        v512 = v491;
        v95 = v517;
        if (!v491)
        {
          goto LABEL_181;
        }

        (*(v516 + 8))(v95, v515);
        v492 = *(v518 + 1);
        v493 = v510;
        v492(v522, v510);
        v492(v523, v493);

        v15 = v512;
LABEL_9:
        *a14 = v15;
        goto LABEL_10;
      }

      sub_22F2B5954();
      v15 = swift_allocError();
      swift_willThrow();

LABEL_170:
      (*(v516 + 8))(v517, v515);
      v481 = *(v234 + 1);
      v482 = v510;
      v481(v522, v510);
      result = (v481)(v235, v482);
      goto LABEL_9;
    }

    v463 = MEMORY[0x277D84F98];
    v464 = swift_isUniquelyReferenced_nonNull_native();
    v543 = v463;
    sub_22F386DBC(v248, 0xD000000000000010, v519 | 0x8000000000000000, v464, &v543);
    v465 = v512;
    v466 = sub_22F2B5478(&unk_2843DD880);
    v15 = v465;
    v234 = v518;
    v418 = v522;
    if (!v465)
    {
      v254 = v466;
      [v525 insertNode_];
      sub_22F2D601C(v254);
      goto LABEL_91;
    }

    v467 = v498;
LABEL_160:
    (*(v516 + 8))(v517, v515);
    v105 = *(v234 + 1);
    v106 = v418;
    goto LABEL_28;
  }

  v15 = v512;
  v68 = v513;
  while (1)
  {
    v69 = v67;
    v70 = v68;
    v71 = sub_22F1515F8(&unk_2843DD9D8);
    sub_22F1DF3B0(&unk_2843DD9F8);
    v72 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
    v73 = sub_22F740C80();
    v74 = [v72 kgPropertiesWithMAProperties_];

    if (!v74)
    {

      sub_22F2B5954();
      v15 = swift_allocError();
      swift_willThrow();

LABEL_30:
      v108 = *(v40 + 1);
      v109 = v510;
      v108(v522, v510);
      v110 = v523;
      goto LABEL_31;
    }

    sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
    v75 = sub_22F740CA0();

    v76 = type metadata accessor for Edge();
    v77 = objc_allocWithZone(v76);
    *&v77[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
    *&v77[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v71;
    *&v77[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v75;
    *&v77[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v70;
    *&v77[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v69;
    v533.receiver = v77;
    v533.super_class = v76;
    v78 = objc_msgSendSuper2(&v533, sel_init);
    [v525 insertEdge_];

    v79 = *(v40 + 1);
    v80 = v510;
    v79(v522, v510);
    v79(v523, v80);
    v57 = v513;
    v52 = v511;
LABEL_16:
    v81 = *v520;

    v82 = sub_22F15E910(v526, v527, v81);

    if ((v82 & 1) == 0 || (v83 = [v514 location]) == 0)
    {
      v95 = 0;
      goto LABEL_38;
    }

    v84 = v83;
    v511 = v52;
    v85 = *a9;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v543 = *a9;
    v86 = v543;
    *a9 = 0x8000000000000000;
    v88 = sub_22F12385C(v84);
    v89 = v86[2];
    v90 = (v87 & 1) == 0;
    v91 = v89 + v90;
    if (__OFADD__(v89, v90))
    {
      __break(1u);
    }

    else
    {
      v92 = v87;
      if (v86[3] >= v91)
      {
        if ((v57 & 1) == 0)
        {
          sub_22F138DE4();
          v86 = v543;
        }
      }

      else
      {
        sub_22F12DD7C(v91, v57);
        v86 = v543;
        v93 = sub_22F12385C(v84);
        if ((v92 & 1) != (v94 & 1))
        {
          goto LABEL_186;
        }

        v88 = v93;
      }

      v57 = v513;
      v111 = *a9;
      *a9 = v86;

      v112 = *a9;
      if ((v92 & 1) == 0)
      {
        sub_22F1534C8(v88, v84, MEMORY[0x277D84F90], *a9);
        v113 = v84;
      }

      v114 = (v112[7] + 8 * v88);
      v115 = v57;
      MEMORY[0x231900D00]();
      if (*((*v114 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_37;
      }
    }

    sub_22F7411C0();
LABEL_37:
    sub_22F741220();

    v95 = sub_22F384654;
    v52 = v511;
LABEL_38:
    v116 = [v514 photosOneUpProperties];
    if (!v116)
    {
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      sub_22F120634(0, &qword_27DAB0960, 0x277CE41F8);
      result = sub_22F7420C0();
      __break(1u);
      return result;
    }

    v117 = v116;
    v118 = [v116 reverseLocationDataIsValid];

    if (!v118)
    {

      goto LABEL_52;
    }

    v119 = [v514 photosOneUpProperties];
    if (!v119)
    {
      goto LABEL_185;
    }

    v120 = v119;

    v121 = [v120 reverseLocationData];

    if (v121)
    {
      v122 = sub_22F73F510();
      v52 = v123;

      sub_22F15C3C4(v122, v52);
      v124 = sub_22F73F4F0();
      sub_22F133BF0(v122, v52);
      v125 = [objc_opt_self() infoFromPlistData_];

      if (!v125)
      {
        sub_22F133BF0(v122, v52);
        goto LABEL_52;
      }

      v523 = v122;
      v126 = [v125 postalAddress];
      if (v126)
      {
        v127 = v126;
        v521 = v52;
        v128 = [v126 city];
        sub_22F740E20();

        v129 = sub_22F740F10();

        if (v129 <= 0)
        {
          v526 = 0;
          v57 = v513;
          goto LABEL_70;
        }

        v512 = v15;
        v130 = [v127 state];
        sub_22F740E20();

        v131 = sub_22F740F10();

        if (v131 < 1 || (v132 = [v127 country], sub_22F740E20(), v132, v133 = sub_22F740F10(), , v133 < 1))
        {
          v526 = 0;
          v15 = v512;
          v57 = v513;
          goto LABEL_70;
        }

        v520 = v125;
        v522 = v95;
        v134 = [v127 city];
        v135 = sub_22F740E20();
        v137 = v136;

        v543 = v135;
        v544 = v137;

        MEMORY[0x231900B10](124, 0xE100000000000000);

        v139 = v543;
        v138 = v544;
        v140 = [v127 state];
        v141 = sub_22F740E20();
        v143 = v142;

        v543 = v139;
        v544 = v138;

        MEMORY[0x231900B10](v141, v143);

        MEMORY[0x231900B10](124, 0xE100000000000000);

        v145 = v543;
        v144 = v544;
        v146 = [v127 country];
        v147 = sub_22F740E20();
        v149 = v148;

        v543 = v145;
        v544 = v144;

        MEMORY[0x231900B10](v147, v149);

        v151 = v543;
        v150 = v544;
        v152 = [v127 city];
        sub_22F740E20();

        v153 = *v524;
        v154 = sub_22F15280C(&unk_2843DDA08);
        v155 = sub_22F2D67A0(v154, v151, v150, v153);

        if (v155)
        {
        }

        else
        {
          v354 = sub_22F740DF0();
          v355 = MEMORY[0x277D84F98];
          v356 = swift_isUniquelyReferenced_nonNull_native();
          v543 = v355;
          sub_22F386DBC(v354, 0xD000000000000010, v519 | 0x8000000000000000, v356, &v543);
          v357 = v543;
          v358 = sub_22F740DF0();
          v359 = swift_isUniquelyReferenced_nonNull_native();
          v543 = v357;
          sub_22F386DBC(v358, 1701667182, 0xE400000000000000, v359, &v543);
          v360 = v512;
          v361 = sub_22F2B5478(&unk_2843DDA30);
          v512 = v360;
          if (v360)
          {
            sub_22F133BF0(v523, v521);

LABEL_121:
            result = sub_22F107E14(v522);
            v15 = v512;
            goto LABEL_9;
          }

          v155 = v361;
          [v525 insertNode_];
          sub_22F2D601C(v155);
        }

        v156 = v513;
        v157 = v522;
        v158 = v524[1];
        v159 = v155;
        v160 = sub_22F152840(&unk_2843DDA58);
        v527 = v159;
        v161 = sub_22F2D6994(v160, v156, v159, v158);

        if (v161)
        {
          v526 = v155;
          goto LABEL_125;
        }

        v362 = sub_22F1515F8(&unk_2843DDA80);
        sub_22F1DF3B0(&unk_2843DDAA0);
        v363 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
        v364 = sub_22F740C80();
        v365 = [v363 kgPropertiesWithMAProperties_];

        if (v365)
        {
          v526 = v155;
          sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
          v366 = sub_22F740CA0();

          v367 = type metadata accessor for Edge();
          v368 = objc_allocWithZone(v367);
          *&v368[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
          *&v368[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v362;
          *&v368[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v366;
          *&v368[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v156;
          v369 = v527;
          *&v368[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v527;
          v538.receiver = v368;
          v538.super_class = v367;
          v370 = v156;
          v371 = v369;
          v161 = objc_msgSendSuper2(&v538, sel_init);
          sub_22F2D6290(v161);
          [v525 insertEdge_];
LABEL_125:

          v372 = [v127 state];
          v373 = sub_22F740E20();
          v375 = v374;

          v543 = v373;
          v544 = v375;

          MEMORY[0x231900B10](124, 0xE100000000000000);

          v377 = v543;
          v376 = v544;
          v378 = [v127 country];
          v379 = sub_22F740E20();
          v381 = v380;

          v543 = v377;
          v544 = v376;

          MEMORY[0x231900B10](v379, v381);

          v383 = v543;
          v382 = v544;
          v384 = [v127 state];
          sub_22F740E20();

          v385 = *v524;
          v386 = sub_22F15280C(&unk_2843DDAB0);
          v387 = sub_22F2D67A0(v386, v383, v382, v385);

          if (v387)
          {
            v388 = v387;

            v15 = v512;
            goto LABEL_127;
          }

          v405 = sub_22F740DF0();
          v406 = MEMORY[0x277D84F98];
          v407 = swift_isUniquelyReferenced_nonNull_native();
          v543 = v406;
          sub_22F386DBC(v405, 0xD000000000000010, v519 | 0x8000000000000000, v407, &v543);
          v408 = v543;
          v409 = sub_22F740DF0();
          v410 = swift_isUniquelyReferenced_nonNull_native();
          v543 = v408;
          sub_22F386DBC(v409, 1701667182, 0xE400000000000000, v410, &v543);
          v411 = v512;
          v412 = sub_22F2B5478(&unk_2843DDAD8);
          v15 = v411;
          if (v411)
          {
            sub_22F133BF0(v523, v521);

            v413 = v527;
LABEL_168:

            v203 = v522;
            goto LABEL_75;
          }

          v388 = v412;
          [v525 insertNode_];
          sub_22F2D601C(v388);

LABEL_127:
          v389 = v513;
          v157 = v522;
          v390 = v524[1];
          v391 = sub_22F152840(&unk_2843DDB00);
          v392 = sub_22F2D6994(v391, v389, v388, v390);

          if (!v392)
          {
            v393 = sub_22F1515F8(&unk_2843DDB28);
            sub_22F1DF3B0(&unk_2843DDB48);
            v394 = objc_opt_self();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
            v395 = sub_22F740C80();
            v396 = [v394 kgPropertiesWithMAProperties_];

            if (!v396)
            {
              goto LABEL_154;
            }

            sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
            v397 = sub_22F740CA0();

            v398 = type metadata accessor for Edge();
            v399 = objc_allocWithZone(v398);
            *&v399[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
            *&v399[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v393;
            *&v399[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v397;
            *&v399[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v389;
            *&v399[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v388;
            v537.receiver = v399;
            v537.super_class = v398;
            v400 = v389;
            v401 = v388;
            v392 = objc_msgSendSuper2(&v537, sel_init);
            sub_22F2D6290(v392);
            [v525 insertEdge_];
          }

          v402 = v524[1];
          v403 = sub_22F152840(&unk_2843DDB58);
          v404 = sub_22F2D6994(v403, v527, v388, v402);

          if (v404)
          {
            v512 = v15;
            goto LABEL_140;
          }

          v420 = sub_22F1515F8(&unk_2843DDB80);
          sub_22F1DF3B0(&unk_2843DDBA0);
          v421 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
          v422 = sub_22F740C80();
          v423 = [v421 kgPropertiesWithMAProperties_];

          if (v423)
          {
            v512 = v15;
            sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
            v424 = sub_22F740CA0();

            v425 = type metadata accessor for Edge();
            v426 = objc_allocWithZone(v425);
            *&v426[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
            *&v426[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v420;
            *&v426[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v424;
            v427 = v527;
            *&v426[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v527;
            *&v426[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v388;
            v536.receiver = v426;
            v536.super_class = v425;
            v428 = v427;
            v429 = v388;
            v404 = objc_msgSendSuper2(&v536, sel_init);
            sub_22F2D6290(v404);
            [v525 insertEdge_];
LABEL_140:
            v518 = v388;

            v430 = [v127 country];
            if (!v430)
            {
              sub_22F740E20();
              v430 = sub_22F740DF0();
            }

            v431 = sub_22F740E20();
            v433 = v432;
            v434 = [v127 country];
            sub_22F740E20();

            v435 = *v524;
            v436 = sub_22F15280C(&unk_2843DDBB0);
            v437 = sub_22F2D67A0(v436, v431, v433, v435);

            if (v437)
            {

              v15 = v512;
              goto LABEL_144;
            }

            v454 = MEMORY[0x277D84F98];
            v455 = swift_isUniquelyReferenced_nonNull_native();
            v543 = v454;
            sub_22F386DBC(v430, 0xD000000000000010, v519 | 0x8000000000000000, v455, &v543);
            v456 = v543;
            v457 = sub_22F740DF0();
            v458 = swift_isUniquelyReferenced_nonNull_native();
            v543 = v456;
            sub_22F386DBC(v457, 1701667182, 0xE400000000000000, v458, &v543);
            v459 = v512;
            v460 = sub_22F2B5478(&unk_2843DDBD8);
            v15 = v459;
            if (v459)
            {
              sub_22F133BF0(v523, v521);

              v461 = v527;
LABEL_167:

              goto LABEL_168;
            }

            v437 = v460;
            [v525 insertNode_];
            sub_22F2D601C(v437);

LABEL_144:
            v57 = v513;
            v125 = v520;
            v438 = v524[1];
            v439 = sub_22F152840(&unk_2843DDC00);
            v440 = sub_22F2D6994(v439, v57, v437, v438);

            if (!v440)
            {
              v441 = sub_22F1515F8(&unk_2843DDC28);
              sub_22F1DF3B0(&unk_2843DDC48);
              v442 = objc_opt_self();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
              v443 = sub_22F740C80();
              v444 = [v442 kgPropertiesWithMAProperties_];

              if (!v444)
              {
                goto LABEL_166;
              }

              sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
              v445 = sub_22F740CA0();

              v446 = type metadata accessor for Edge();
              v447 = objc_allocWithZone(v446);
              *&v447[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
              *&v447[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v441;
              *&v447[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v445;
              *&v447[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v57;
              *&v447[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v437;
              v535.receiver = v447;
              v535.super_class = v446;
              v448 = v57;
              v449 = v437;
              v440 = objc_msgSendSuper2(&v535, sel_init);
              sub_22F2D6290(v440);
              [v525 insertEdge_];
            }

            v450 = v524[1];
            v451 = sub_22F152840(&unk_2843DDC58);
            v452 = v518;
            v453 = sub_22F2D6994(v451, v518, v437, v450);

            if (v453)
            {

              v127 = v453;
            }

            else
            {
              v468 = sub_22F1515F8(&unk_2843DDC80);
              sub_22F1DF3B0(&unk_2843DDCA0);
              v469 = objc_opt_self();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
              v470 = sub_22F740C80();
              v471 = [v469 kgPropertiesWithMAProperties_];

              if (!v471)
              {
LABEL_166:

                sub_22F2B5954();
                v15 = swift_allocError();
                swift_willThrow();

                v461 = v527;
                sub_22F133BF0(v523, v521);

                goto LABEL_167;
              }

              sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
              v472 = sub_22F740CA0();

              v473 = type metadata accessor for Edge();
              v474 = objc_allocWithZone(v473);
              *&v474[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
              *&v474[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v468;
              *&v474[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v472;
              v475 = v518;
              *&v474[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v518;
              *&v474[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v437;
              v534.receiver = v474;
              v534.super_class = v473;
              v476 = v475;
              v477 = v437;
              v478 = objc_msgSendSuper2(&v534, sel_init);
              sub_22F2D6290(v478);
              v479 = v478;
              v125 = v520;
              v480 = v479;
              [v525 insertEdge_];
            }

            v95 = v522;
LABEL_70:

            v52 = v521;
LABEL_71:
            v192 = objc_opt_self();
            v193 = v514;
            [v514 locationCoordinate];
            v195 = v194;
            [v193 locationCoordinate];
            v196 = [v192 poiGeoHashWithGeoHashSize:6 latitude:v195 longitude:?];
            if (v196)
            {
              v520 = v125;
              v197 = v196;
              v198 = sub_22F740E20();
              v200 = v199;

              v201 = v524;
              v202 = sub_22F386FB4(v198, v200, v524, v525);
              if (v15)
              {

                sub_22F133BF0(v523, v52);

                goto LABEL_74;
              }

              v204 = v202;
              v527 = v198;
              v205 = v201[1];
              v206 = sub_22F152840(&unk_2843DDCB0);
              v207 = sub_22F2D6994(v206, v57, v204, v205);

              v522 = v95;
              if (v207)
              {
              }

              else
              {
                v295 = sub_22F1515F8(&unk_2843DDCD8);
                sub_22F1DF3B0(&unk_2843DDCF8);
                v296 = objc_opt_self();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                v297 = sub_22F740C80();
                v298 = [v296 kgPropertiesWithMAProperties_];

                if (!v298)
                {

                  sub_22F2B5954();
                  v15 = swift_allocError();
                  swift_willThrow();

                  sub_22F133BF0(v523, v52);
                  goto LABEL_74;
                }

                sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                v299 = sub_22F740CA0();

                v300 = type metadata accessor for Edge();
                v301 = objc_allocWithZone(v300);
                *&v301[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                *&v301[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v295;
                *&v301[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v299;
                v302 = v513;
                *&v301[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v513;
                *&v301[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v204;
                v541.receiver = v301;
                v541.super_class = v300;
                v303 = v302;
                v304 = v204;
                v305 = objc_msgSendSuper2(&v541, sel_init);
                sub_22F2D6290(v305);
                [v525 insertEdge_];
              }

              if (!v526)
              {
LABEL_108:
                v521 = v52;
                v512 = 0;
                v319 = v204;
                v320 = 5;
                v518 = v319;
                v519 = v200;
                while (1)
                {

                  v321 = sub_22F398F90(v320);
                  v323 = v322;
                  v325 = v324;
                  v327 = v326;

                  v328 = MEMORY[0x231900A80](v321, v323, v325, v327);
                  v330 = v329;

                  v331 = v524;
                  v332 = v512;
                  v333 = sub_22F386FB4(v328, v330, v524, v525);
                  v512 = v332;
                  if (v332)
                  {

                    sub_22F133BF0(v523, v521);

                    goto LABEL_121;
                  }

                  v334 = v333;

                  v335 = v331[1];
                  v336 = sub_22F153098();
                  v543 = MEMORY[0x231901000](1, &type metadata for Edge.Label, v336);
                  sub_22F10E5F4(v542, byte_2843DDD80);
                  v337 = sub_22F2D6994(v543, v319, v334, v335);

                  if (v337)
                  {

                    if (v320 < 3)
                    {
                      goto LABEL_115;
                    }
                  }

                  else
                  {
                    v338 = sub_22F1515F8(&unk_2843DDD88);
                    sub_22F1DF3B0(&unk_2843DDDA8);
                    v339 = objc_opt_self();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                    v52 = MEMORY[0x277D837E0];
                    v340 = sub_22F740C80();
                    v341 = [v339 kgPropertiesWithMAProperties_];

                    if (!v341)
                    {

                      sub_22F2B5954();
                      v419 = swift_allocError();
                      swift_willThrow();

                      v15 = v419;
                      sub_22F133BF0(v523, v521);

                      v203 = v522;
                      goto LABEL_75;
                    }

                    sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                    v342 = sub_22F740CA0();

                    v343 = type metadata accessor for Edge();
                    v344 = objc_allocWithZone(v343);
                    *&v344[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                    *&v344[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v338;
                    *&v344[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v342;
                    *&v344[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v319;
                    *&v344[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v334;
                    v540.receiver = v344;
                    v540.super_class = v343;
                    v345 = v319;
                    v346 = v334;
                    v347 = objc_msgSendSuper2(&v540, sel_init);
                    sub_22F2D6290(v347);
                    v348 = v347;
                    [v525 insertEdge_];

                    if (v320 <= 2)
                    {
LABEL_115:

                      sub_22F133BF0(v523, v521);

                      v57 = v513;
                      v162 = v525;
                      v95 = v522;
                      goto LABEL_53;
                    }
                  }

                  --v320;
                  v319 = v334;
                }
              }

              v306 = v524[1];
              v307 = v526;
              v308 = sub_22F152840(&unk_2843DDD08);
              v309 = sub_22F2D6994(v308, v204, v307, v306);

              if (v309)
              {
LABEL_107:

                goto LABEL_108;
              }

              v310 = sub_22F1515F8(&unk_2843DDD30);
              sub_22F1DF3B0(&unk_2843DDD50);
              v311 = objc_opt_self();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
              v312 = sub_22F740C80();
              v313 = [v311 kgPropertiesWithMAProperties_];

              if (v313)
              {
                sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                v314 = sub_22F740CA0();

                v315 = type metadata accessor for Edge();
                v316 = objc_allocWithZone(v315);
                *&v316[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                *&v316[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v310;
                *&v316[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v314;
                *&v316[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v204;
                *&v316[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v307;
                v539.receiver = v316;
                v539.super_class = v315;
                v309 = v307;
                v317 = v204;
                v318 = objc_msgSendSuper2(&v539, sel_init);
                sub_22F2D6290(v318);
                v307 = v318;
                [v525 insertEdge_];

                goto LABEL_107;
              }

              sub_22F2B5954();
              v15 = swift_allocError();
              swift_willThrow();

              sub_22F133BF0(v523, v52);
              v203 = v522;
LABEL_75:
              result = sub_22F107E14(v203);
              goto LABEL_9;
            }

            sub_22F133BF0(v523, v52);
            goto LABEL_52;
          }

LABEL_154:

          sub_22F2B5954();
          v15 = swift_allocError();
          swift_willThrow();

          v462 = v527;
          sub_22F133BF0(v523, v521);
        }

        else
        {

          sub_22F2B5954();
          v15 = swift_allocError();
          swift_willThrow();

          v462 = v527;
          sub_22F133BF0(v523, v521);
        }

        v203 = v157;
        goto LABEL_75;
      }

      v526 = 0;
      goto LABEL_71;
    }

LABEL_52:
    v162 = v525;
LABEL_53:
    v163 = a10;
    v164 = swift_beginAccess();
    v165 = *a10 + 1;
    if (!__OFADD__(*a10, 1))
    {
      break;
    }

    __break(1u);
LABEL_181:
    v285 = v164;
    v495 = v163;
    v507 = v57;
    [v525 insertNode_];
    sub_22F2D601C(v285);
LABEL_99:
    v286 = v285;
    v287 = sub_22F1515F8(&unk_2843DD9A8);
    sub_22F1DF3B0(&unk_2843DD9C8);
    v288 = sub_22F740C80();
    v289 = [v521 kgPropertiesWithMAProperties_];

    v40 = v518;
    v290 = v523;
    if (!v289)
    {

      sub_22F2B5954();
      v15 = swift_allocError();
      swift_willThrow();

      (*(v516 + 8))(v95, v515);
      v108 = *(v40 + 1);
      v109 = v510;
      v108(v522, v510);
      v110 = v290;
LABEL_31:
      result = (v108)(v110, v109);
      goto LABEL_9;
    }

    v291 = sub_22F740CA0();

    v292 = v503;
    v293 = objc_allocWithZone(v503);
    *&v293[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
    *&v293[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v287;
    *&v293[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v291;
    *&v293[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v52;
    *&v293[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v286;
    v528.receiver = v293;
    v528.super_class = v292;
    v294 = objc_msgSendSuper2(&v528, sel_init);
    [v525 insertEdge_];

    v15 = v512;
    v68 = v513;
    v67 = v509;
    v191 = v506;
LABEL_62:

    (*(v516 + 8))(v95, v515);
  }

  *a10 = v165;
  if (__ROR8__(0x8F5C28F5C28F5C29 * v165 + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL)
  {
    goto LABEL_66;
  }

  v542[0] = 0;
  if (![a11 performChangesAndWait:v162 error:v542])
  {
    v178 = v542[0];
    v15 = sub_22F73F370();

    swift_willThrow();
LABEL_74:
    v203 = v95;
    goto LABEL_75;
  }

  v166 = v542[0];
  v167 = sub_22F7415F0();
  sub_22F120634(0, &qword_2810A8D00, 0x277D86200);
  v168 = a11;
  v169 = a12;
  v170 = sub_22F741840();
  if (os_log_type_enabled(v170, v167))
  {
    v171 = swift_slowAlloc();
    *v171 = 134218752;
    swift_beginAccess();
    *(v171 + 4) = *a10;
    v522 = v95;
    *(v171 + 12) = 2048;
    *(v171 + 14) = [v169 count];

    *(v171 + 22) = 2048;
    v172 = [objc_opt_self() any];
    v173 = [v168 nodeIdentifiersMatchingFilter:v172];

    v174 = [v173 count];
    *(v171 + 24) = v174;

    *(v171 + 32) = 2048;
    v95 = v522;
    v175 = [objc_opt_self() any];
    v176 = [v168 edgeIdentifiersMatchingFilter:v175];

    v177 = [v176 count];
    *(v171 + 34) = v177;

    _os_log_impl(&dword_22F0FC000, v170, v167, "Ingested %ld assets out of %ld, graph has %ld nodes and %ld edges", v171, 0x2Au);
    MEMORY[0x2319033A0](v171, -1, -1);
    v57 = v513;
  }

  else
  {

    v170 = v168;
    v57 = v168;
  }

LABEL_66:
  result = sub_22F107E14(v95);
LABEL_10:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}