uint64_t sub_22CEFBCA4()
{
  v1 = v0;
  v2 = sub_22D0164CC();
  v98 = *(v2 - 8);
  v99 = v2;
  v3 = *(v98 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v96 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_22D01653C();
  v95 = *(v97 - 8);
  v6 = *(v95 + 64);
  MEMORY[0x28223BE20](v97, v7);
  v94 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D0164BC();
  v91 = *(v9 - 8);
  v10 = *(v91 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = sub_22D01656C();
  v93 = *(v100 - 8);
  v14 = *(v93 + 64);
  v16 = MEMORY[0x28223BE20](v100, v15);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v92 = &v81 - v20;
  v21 = sub_22D01430C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = &v81 - v30;
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v81 - v33;
  result = sub_22D014CFC();
  if ((result & 1) == 0)
  {
    result = sub_22D014D1C();
    if ((result & 1) == 0)
    {
      v90 = v21;
      v36 = &v0[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_backoffBudget];
      swift_beginAccess();
      sub_22D0004CC();
      if ((sub_22D000294() & 1) == 0)
      {
        v37 = *(type metadata accessor for DefaultInputBackoffBudget() + 20);
        v38 = *(v36 + v37);
        v39 = __OFSUB__(v38, 1);
        v40 = v38 - 1;
        if (v39)
        {
          __break(1u);
          goto LABEL_18;
        }

        *(v36 + v37) = v40;
      }

      v89 = v18;
      v87 = v9;
      swift_endAccess();
      __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_backoffPolicy], *&v1[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_backoffPolicy + 24]);
      v103 = type metadata accessor for DefaultInputBackoffBudget();
      v104 = &off_28402E6D8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
      sub_22CEFE9C8(v36, boxed_opaque_existential_1, type metadata accessor for DefaultInputBackoffBudget);
      sub_22CFFFFF4(aBlock, v34);
      __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
      sub_22D0142DC();
      v42 = sub_22D01427C();
      v43 = *(v22 + 8);
      v44 = v90;
      v43(v31, v90);
      if ((v42 & 1) == 0)
      {
        return (v43)(v34, v44);
      }

      v86 = v43;
      v88 = v22 + 8;
      if (qword_28143FB60 == -1)
      {
LABEL_8:
        v45 = sub_22D01637C();
        __swift_project_value_buffer(v45, qword_2814444B0);
        v46 = v90;
        (*(v22 + 16))(v27, v34, v90);
        v47 = v1;
        v48 = sub_22D01636C();
        v49 = sub_22D0168EC();

        v50 = os_log_type_enabled(v48, v49);
        v51 = v89;
        v85 = v47;
        if (v50)
        {
          v52 = swift_slowAlloc();
          v83 = v49;
          v53 = v52;
          v84 = swift_slowAlloc();
          aBlock[0] = v84;
          *v53 = 136446466;
          v82 = v48;
          sub_22D01502C();
          sub_22CEE83DC(&qword_281443988, MEMORY[0x277CB9810]);
          v54 = sub_22D016DEC();
          v56 = sub_22CEEE31C(v54, v55, aBlock);

          *(v53 + 4) = v56;
          *(v53 + 12) = 2082;
          sub_22CEE83DC(&unk_281443A20, MEMORY[0x277CC9578]);
          v57 = sub_22D016DEC();
          v59 = v58;
          v60 = v86;
          v86(v27, v46);
          v61 = sub_22CEEE31C(v57, v59, aBlock);

          v62 = v53;
          *(v53 + 14) = v61;
          v63 = v82;
          _os_log_impl(&dword_22CEE1000, v82, v83, "Client %{public}s has exceeded request budget; timeout until %{public}s", v53, 0x16u);
          v64 = v46;
          v65 = v51;
          v66 = v84;
          swift_arrayDestroy();
          v67 = v66;
          v51 = v65;
          v46 = v64;
          MEMORY[0x2318C6860](v67, -1, -1);
          MEMORY[0x2318C6860](v62, -1, -1);
        }

        else
        {

          v60 = v86;
          v86(v27, v46);
        }

        sub_22D0142DC();
        sub_22D01424C();
        v69 = v68;
        result = v60(v31, v46);
        v70 = v69 * 1000.0;
        if (COERCE__INT64(fabs(v69 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else
        {
          v71 = v85;
          if (v70 > -9.22337204e18)
          {
            if (v70 < 9.22337204e18)
            {
              v72 = v70;
              sub_22D01654C();
              *v13 = v72;
              v73 = v91;
              v74 = v87;
              (*(v91 + 104))(v13, *MEMORY[0x277D85178], v87);
              v75 = v92;
              sub_22D01655C();
              (*(v73 + 8))(v13, v74);
              v93 = *(v93 + 8);
              (v93)(v51, v100);
              v91 = *&v71[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_targetQueue];
              v76 = swift_allocObject();
              *(v76 + 16) = v71;
              v104 = sub_22CF46060;
              v105 = v76;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_22CEF8B58;
              v103 = &block_descriptor;
              v77 = _Block_copy(aBlock);
              v89 = v71;
              v78 = v94;
              sub_22D0164EC();
              v101 = MEMORY[0x277D84F90];
              sub_22CEE83DC(&qword_28143FA60, MEMORY[0x277D85198]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
              sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
              v79 = v96;
              v80 = v99;
              sub_22D016ADC();
              MEMORY[0x2318C5A90](v75, v78, v79, v77);
              _Block_release(v77);
              (*(v98 + 8))(v79, v80);
              (*(v95 + 8))(v78, v97);

              dispatch_suspend(*&v89[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_queue]);
              (v93)(v75, v100);
              v43 = v86;
              v44 = v90;
              return (v43)(v34, v44);
            }

LABEL_21:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_21;
      }

LABEL_18:
      swift_once();
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22CEFC690()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CEFC6C8()
{
  sub_22D016C6C();
  MEMORY[0x2318C5860](0xD000000000000021, 0x800000022D0231A0);
  sub_22D01502C();
  sub_22CEFF268(&qword_281443988, MEMORY[0x277CB9810]);
  v1 = sub_22D016DEC();
  MEMORY[0x2318C5860](v1);

  MEMORY[0x2318C5860](0x73696D726570202CLL, 0xEF203A736E6F6973);
  v2 = v0 + *(type metadata accessor for ContentSourceResolver() + 20);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 17);
  v7 = *(v2 + 18);
  if (v6)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_22CEFD4D8(v3, v4, v8 | v5);
  MEMORY[0x2318C5860](v9);

  MEMORY[0x2318C5860](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_22CEFC820(void *a1)
{
  v2 = sub_22D01666C();
  v3 = [a1 valueForEntitlement_];

  if (v3)
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = v8;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_22CEEC3D8(v11, &qword_27D9F2B10, &unk_22D01B930);
    v4 = 0;
  }

  v5 = sub_22D01666C();
  [a1 hasEntitlement_];

  v6 = sub_22D01666C();
  [a1 hasEntitlement_];

  return v4;
}

uint64_t sub_22CEFC9D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_22CEFCA38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_22D01483C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v33 = &v27 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v31 = &v27 - v15;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = *(sub_22D01481C() - 8);
  v34 = (v6 + 32);
  v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v28 = *(v17 + 72);
  v19 = MEMORY[0x277D84F90];
  v29 = v6;
  v30 = v5;
  while (1)
  {
    v20 = v33;
    sub_22D000878(v18, v33);
    if (v3)
    {
      break;
    }

    v21 = *v34;
    v22 = v31;
    (*v34)(v31, v20, v5);
    v21(v35, v22, v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_22CEFCE2C(0, v19[2] + 1, 1, v19);
    }

    v24 = v19[2];
    v23 = v19[3];
    v3 = 0;
    if (v24 >= v23 >> 1)
    {
      v19 = sub_22CEFCE2C(v23 > 1, v24 + 1, 1, v19);
    }

    v19[2] = v24 + 1;
    v25 = v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24;
    v5 = v30;
    v21(v25, v35, v30);
    v18 += v28;
    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t sub_22CEFCCE8(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

size_t sub_22CEFCE54(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_22CEFD030(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v51 = sub_22D01502C();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v51, v5);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v49 = &v43 - v9;
  v10 = sub_22D01483C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v61 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v63 = &v43 - v21;
  v22 = *(a1 + 16);
  if (v22)
  {
    v24 = *(v11 + 16);
    v23 = v11 + 16;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v58 = *(v23 + 56);
    v59 = v24;
    v54 = v25;
    v26 = (a1 + v25);
    v57 = (v23 + 72);
    v56 = *MEMORY[0x277CB9348];
    v53 = (v23 - 8);
    v46 = (v3 + 32);
    v47 = (v23 + 80);
    v44 = (v3 + 8);
    v45 = (v3 + 16);
    v27 = (v23 + 16);
    v28 = MEMORY[0x277D84F90];
    v60 = v19;
    v48 = v23;
    while (1)
    {
      v62 = v28;
      v30 = v63;
      v31 = v59;
      v59(v63, v26, v10);
      v31(v19, v30, v10);
      v32 = (*v57)(v19, v10);
      if (v32 != v56)
      {
        break;
      }

      (*v47)(v19, v10);
      v33 = v49;
      v34 = v51;
      (*v46)(v49, v19, v51);
      v35 = v50;
      (*v45)(v50, v52, v34);
      sub_22CEFF268(&qword_281443990, MEMORY[0x277CB9810]);
      v55 = sub_22D01665C();
      v36 = *v44;
      (*v44)(v35, v34);
      v36(v33, v34);
      if ((v55 & 1) == 0)
      {
        goto LABEL_9;
      }

      (*v53)(v63, v10);
      v29 = v58;
      v28 = v62;
LABEL_4:
      v26 += v29;
      --v22;
      v19 = v60;
      if (!v22)
      {
        return v28;
      }
    }

    (*v53)(v19, v10);
LABEL_9:
    v37 = *v27;
    (*v27)(v61, v63, v10);
    v28 = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22CF440E8(0, *(v28 + 16) + 1, 1);
      v28 = v64;
    }

    v40 = *(v28 + 16);
    v39 = *(v28 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_22CF440E8(v39 > 1, v40 + 1, 1);
      v28 = v64;
    }

    *(v28 + 16) = v40 + 1;
    v41 = v28 + v54 + v40 * v58;
    v29 = v58;
    v37(v41, v61, v10);
    goto LABEL_4;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22CEFD4D8(uint64_t a1, uint64_t a2, __int16 a3)
{
  sub_22D016C6C();
  MEMORY[0x2318C5860](0xD000000000000020, 0x800000022D0231D0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3CB0, &qword_22D01CA08);
  v4 = sub_22D01669C();
  MEMORY[0x2318C5860](v4);

  MEMORY[0x2318C5860](0xD000000000000021, 0x800000022D023200);
  if (a3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (a3)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2318C5860](v5, v6);

  MEMORY[0x2318C5860](0xD00000000000001FLL, 0x800000022D023230);
  if ((a3 & 0x100) != 0)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if ((a3 & 0x100) != 0)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x2318C5860](v7, v8);

  MEMORY[0x2318C5860](0xD000000000000013, 0x800000022D023250);
  v9 = sub_22D01669C();
  MEMORY[0x2318C5860](v9);

  MEMORY[0x2318C5860](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_22CEFD694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CEFD6F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CEFD754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CEFD7B4(uint64_t a1)
{
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2348, &qword_22D018970);
  v3 = *(*(v23[0] - 8) + 64);
  MEMORY[0x28223BE20](v23[0], v4);
  v6 = v23 - v5;
  v24 = MEMORY[0x277D84F98];
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(a1 + 48);
    v17 = sub_22D0149AC();
    (*(*(v17 - 8) + 16))(v6, v16 + *(*(v17 - 8) + 72) * v15, v17);
    v18 = *(a1 + 56) + 24 * v15;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = &v6[*(v23[0] + 48)];
    *v22 = v19;
    *(v22 + 1) = v20;
    v22[16] = v21;
    sub_22CEFE0EC();
    sub_22CEFD9AC(&v24, v6, v23[1]);
    result = sub_22CEEC3D8(v6, &qword_27D9F2348, &qword_22D018970);
    if (v1)
    {
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v24;
    }

    v9 = *(a1 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_22CEFD9AC(uint64_t a1, uint64_t a2, char *a3)
{
  v96 = a2;
  v95 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2350, &qword_22D018978);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v94 = &v82 - v7;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2348, &qword_22D018970);
  v8 = *(*(v93 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v93, v9);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v92 = &v82 - v14;
  v15 = sub_22D01502C();
  v87 = *(v15 - 8);
  v88 = v15;
  v16 = *(v87 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for PlatterTargetResolver();
  v20 = *(*(v89 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v89, v21);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v82 - v26;
  v28 = sub_22D014EFC();
  v90 = *(v28 - 8);
  v91 = v28;
  v29 = *(v90 + 64);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v82 - v35;
  v37 = a3;
  v38 = *&a3[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection];
  v39 = [v38 remoteProcess];
  v40 = v97;
  sub_22CEE84BC(v39);
  v97 = v40;
  if (v40)
  {
  }

  else
  {
    v84 = v37;
    v85 = v33;
    v83 = v38;
    v86 = v12;
    (*(v87 + 32))(v24, v19, v88);
    v41 = sub_22D01666C();
    v42 = [v39 hasEntitlement_];

    v43 = v89;
    v24[*(v89 + 20)] = v42;
    sub_22CEFC9D0(v24, v27, type metadata accessor for PlatterTargetResolver);
    v44 = v93;
    v45 = v96;
    v46 = v96 + *(v93 + 48);
    v47 = *v46;
    sub_22CEFE150(v27, v27[*(v43 + 20)], *(v46 + 8), *(v46 + 16), v36);
    sub_22CEFD694(v27, type metadata accessor for PlatterTargetResolver);
    v48 = v92;
    sub_22CEFE940(v45, v92);
    sub_22CEFE9B0(*(v48 + *(v44 + 48)), *(v48 + *(v44 + 48) + 8), *(v48 + *(v44 + 48) + 16));
    v49 = v94;
    sub_22CEFE9C8(v36, v94, MEMORY[0x277CB9790]);
    (*(v90 + 56))(v49, 0, 1, v91);
    sub_22CEFF2F8(v49, v48);
    v50 = v36;
    v51 = v44;
    v52 = v48;
    if (qword_28143FB48 != -1)
    {
      swift_once();
    }

    v53 = sub_22D01637C();
    __swift_project_value_buffer(v53, qword_281444480);
    v54 = v86;
    sub_22CEFE940(v45, v86);
    v55 = v85;
    sub_22CEFE9C8(v50, v85, MEMORY[0x277CB9790]);
    v56 = v84;
    v57 = sub_22D01636C();
    v58 = sub_22D01690C();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v98 = v96;
      *v59 = 136446723;
      sub_22CEFE940(v54, v52);
      v60 = v52 + *(v51 + 48);
      LODWORD(v94) = v58;
      v61 = *v60;
      v62 = *(v60 + 8);
      v63 = *(v60 + 16);
      v64 = sub_22D0149AC();
      (*(*(v64 - 8) + 8))(v52, v64);
      v65 = sub_22D014EEC();
      v95 = v50;
      v66 = v55;
      v68 = v67;
      sub_22CEFE9B0(v61, v62, v63);
      sub_22CEEC3D8(v54, &qword_27D9F2348, &qword_22D018970);
      v69 = sub_22CEEE31C(v65, v68, &v98);

      *(v59 + 4) = v69;
      *(v59 + 12) = 2081;
      v70 = sub_22D014ECC();
      v72 = v71;
      v73 = MEMORY[0x277CB9790];
      sub_22CEFD694(v66, MEMORY[0x277CB9790]);
      v74 = sub_22CEEE31C(v70, v72, &v98);

      *(v59 + 14) = v74;
      *(v59 + 22) = 2082;
      v75 = [v83 remoteProcess];
      v76 = sub_22CEFF100();
      v78 = v77;

      v79 = sub_22CEEE31C(v76, v78, &v98);

      *(v59 + 24) = v79;
      _os_log_impl(&dword_22CEE1000, v57, v94, "Scene target resolution: %{public}s -> %{private}s (requester: %{public}s)", v59, 0x20u);
      v80 = v96;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v80, -1, -1);
      MEMORY[0x2318C6860](v59, -1, -1);

      v81 = v95;
    }

    else
    {

      v73 = MEMORY[0x277CB9790];
      sub_22CEFD694(v55, MEMORY[0x277CB9790]);
      sub_22CEEC3D8(v54, &qword_27D9F2348, &qword_22D018970);
      v81 = v50;
    }

    sub_22CEFD694(v81, v73);
  }
}

uint64_t sub_22CEFE0F0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t type metadata accessor for PlatterTargetResolver()
{
  result = qword_281440B80;
  if (!qword_281440B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CEFE150@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v10 = sub_22D01502C();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v40 - v18;
  if (a4)
  {
    if (a2)
    {
      sub_22CEFE530(a1, 1, a3, a5);
      sub_22D014EFC();
LABEL_11:

      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v20 = sub_22D014FBC();
    if (a2 & 1) != 0 || (v20)
    {
      sub_22CEFE530(a1, a2 & 1, a3, a5);
      sub_22D014EFC();
      goto LABEL_11;
    }
  }

  if (qword_28143FB48 != -1)
  {
    swift_once();
  }

  v21 = sub_22D01637C();
  __swift_project_value_buffer(v21, qword_281444480);
  v22 = v11[2];
  v22(v19, a1, v10);
  v22(v16, a1, v10);
  v23 = sub_22D01636C();
  v24 = sub_22D0168EC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v41 = v24;
    v26 = v25;
    v42 = swift_slowAlloc();
    v45 = v42;
    *v26 = 136380931;
    v40 = v23;
    v27 = sub_22D014F9C();
    v43 = v22;
    v44 = a5;
    v29 = v28;
    v30 = v11[1];
    v30(v19, v10);
    v31 = sub_22CEEE31C(v27, v29, &v45);
    a5 = v44;

    *(v26 + 4) = v31;
    *(v26 + 12) = 2081;
    v32 = sub_22D014F9C();
    v34 = v33;
    v30(v16, v10);
    v22 = v43;
    v35 = sub_22CEEE31C(v32, v34, &v45);

    *(v26 + 14) = v35;
    v36 = v40;
    _os_log_impl(&dword_22CEE1000, v40, v41, "%{private}s is not entitled to specify a scene target. Defaulting containingProcess target to %{private}s", v26, 0x16u);
    v37 = v42;
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v37, -1, -1);
    MEMORY[0x2318C6860](v26, -1, -1);
  }

  else
  {

    v39 = v11[1];
    v39(v16, v10);
    v39(v19, v10);
  }

  v22(a5, a1, v10);
  sub_22D014EFC();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22CEFE530@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_22D01502C();
  v43 = *(v8 - 8);
  v9 = v43[8];
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v38[-v15];
  if (sub_22D014FBC())
  {
    v17 = sub_22D01501C();
    if ((a2 & 1) == 0 && (v17 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((a2 & 1) == 0)
  {
LABEL_4:
    if (qword_28143FB48 != -1)
    {
      swift_once();
    }

    v42 = a4;
    v18 = sub_22D01637C();
    __swift_project_value_buffer(v18, qword_281444480);
    v19 = v43[2];
    v19(v16, a1, v8);
    v19(v13, a1, v8);
    v20 = sub_22D01636C();
    v21 = sub_22D0168EC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v41 = v19;
      v23 = v22;
      v40 = swift_slowAlloc();
      v44 = v40;
      *v23 = 136380931;
      v24 = sub_22D014F9C();
      v39 = v21;
      v26 = v25;
      v27 = v43[1];
      ++v43;
      v27(v16, v8);
      v28 = sub_22CEEE31C(v24, v26, &v44);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2081;
      v29 = sub_22D014F9C();
      v31 = v30;
      v27(v13, v8);
      v32 = sub_22CEEE31C(v29, v31, &v44);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_22CEE1000, v20, v39, "%{private}s is not entitled to specify a process record. Defaulting process record to %{private}s", v23, 0x16u);
      v33 = v40;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v33, -1, -1);
      v34 = v23;
      v19 = v41;
      MEMORY[0x2318C6860](v34, -1, -1);
    }

    else
    {

      v35 = v43[1];
      ++v43;
      v35(v13, v8);
      v35(v16, v8);
    }

    return (v19)(v42, a1, v8);
  }

  if (a3)
  {
    if (a3 == 1)
    {
      sub_22D00072C();
    }

    else
    {
    }

    return sub_22D014F8C();
  }

  else
  {
    v37 = v43[2];

    return v37(a4, a1, v8);
  }
}

uint64_t sub_22CEFE940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2348, &qword_22D018970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CEFE9B4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_22CEFE9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CEFEA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CEFEA98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CEFEB00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CEFEB68(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22D014EFC();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D0149AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v53 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3258, &unk_22D01B1F0);
  v50 = a2;
  result = sub_22D016D2C();
  v18 = result;
  if (*(v15 + 16))
  {
    v45 = v3;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v46 = (v11 + 16);
    v47 = v11;
    v51 = (v11 + 32);
    v25 = result + 64;
    v48 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v52 = *(v11 + 72);
      v32 = v31 + v52 * v30;
      if (v50)
      {
        (*v51)(v53, v32, v10);
        v33 = *(v15 + 56);
        v34 = *(v49 + 72);
        sub_22CEF0B08(v33 + v34 * v30, v54, MEMORY[0x277CB9790]);
      }

      else
      {
        (*v46)(v53, v32, v10);
        v35 = *(v15 + 56);
        v34 = *(v49 + 72);
        sub_22CF28C98(v35 + v34 * v30, v54, MEMORY[0x277CB9790]);
      }

      v36 = *(v18 + 40);
      sub_22CEF57B4(&qword_28143F6B0, MEMORY[0x277CB9500]);
      result = sub_22D01661C();
      v37 = -1 << *(v18 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v25 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v51)((*(v18 + 48) + v52 * v26), v53, v10);
      result = sub_22CEF0B08(v54, *(v18 + 56) + v34 * v26, MEMORY[0x277CB9790]);
      ++*(v18 + 16);
      v11 = v47;
      v15 = v48;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v44 = 1 << *(v15 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v20, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v3 = v18;
  return result;
}

uint64_t sub_22CEFF008(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v13 = a4[6];
  v14 = a5(0);
  (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a2, v14);
  v15 = a4[7];
  v16 = a6(0);
  result = sub_22CEF0B08(a3, v15 + *(*(v16 - 8) + 72) * a1, a7);
  v18 = a4[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v20;
  }

  return result;
}

uint64_t sub_22CEFF100()
{
  sub_22D016C6C();

  strcpy(v1, "ProcessHandle(");
  sub_22CEE4E5C();
  MEMORY[0x2318C5860]();

  MEMORY[0x2318C5860](41, 0xE100000000000000);
  return v1[0];
}

uint64_t sub_22CEFF220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CEFF268(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CEFF2B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CEFF2F8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2350, &qword_22D018978);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v21 - v8;
  v10 = sub_22D014EFC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_22CEEC3D8(a1, &qword_27D9F2350, &qword_22D018978);
    sub_22CFBC82C(a2, v9);
    v16 = sub_22D0149AC();
    (*(*(v16 - 8) + 8))(a2, v16);
    return sub_22CEEC3D8(v9, &qword_27D9F2350, &qword_22D018978);
  }

  else
  {
    sub_22CEF0B08(a1, v14, MEMORY[0x277CB9790]);
    v18 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    sub_22CEFF518(v14, a2, isUniquelyReferenced_nonNull_native);
    v20 = sub_22D0149AC();
    result = (*(*(v20 - 8) + 8))(a2, v20);
    *v2 = v22;
  }

  return result;
}

uint64_t sub_22CEFF518(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22D0149AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_22CEFF728(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *v4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7];
      v24 = sub_22D014EFC();
      return sub_22CF2D7F0(a1, v23 + *(*(v24 - 8) + 72) * v16, MEMORY[0x277CB9790]);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_22CFB6960();
    goto LABEL_7;
  }

  sub_22CEFEB68(v19, a3 & 1);
  v26 = *v4;
  v27 = sub_22CEFF728(a2);
  if ((v20 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_22D016E1C();
    __break(1u);
    return result;
  }

  v16 = v27;
  v22 = *v4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v13, a2, v8);
  return sub_22CEFF008(v16, v13, a1, v22, MEMORY[0x277CB9500], MEMORY[0x277CB9790], MEMORY[0x277CB9790]);
}

unint64_t sub_22CEFF728(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22D0149AC();
  v5 = MEMORY[0x277CB9500];
  sub_22CEF57B4(&qword_28143F6B0, MEMORY[0x277CB9500]);
  v6 = sub_22D01661C();
  return sub_22CEF5DAC(a1, v6, MEMORY[0x277CB9500], &qword_28143F6A8, v5, MEMORY[0x277CB9518]);
}

uint64_t sub_22CEFF7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for TaskScheduler.Task();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *v4;
  v15 = *(*(v14 + 16) + 16);

  os_unfair_lock_lock(v15);
  sub_22CFB4DC8(v14, a1, a2, a3, v13);
  os_unfair_lock_unlock(v15);

  sub_22CEF0D1C();
  a4[3] = v9;
  a4[4] = sub_22CEF57B4(qword_28143F5F8, type metadata accessor for TaskScheduler.Task);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  return sub_22CEF0B08(v13, boxed_opaque_existential_1, type metadata accessor for TaskScheduler.Task);
}

uint64_t sub_22CEFF988(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v449 = a5;
  v448 = a4;
  v476 = a3;
  v450 = *v5;
  v8 = sub_22D014E2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = (&v433 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v15);
  v17 = (&v433 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2350, &qword_22D018978);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8, v20);
  v454 = &v433 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v458 = &v433 - v24;
  v459 = sub_22D014EFC();
  v473 = *(v459 - 8);
  v25 = *(v473 + 64);
  v27 = MEMORY[0x28223BE20](v459, v26);
  v446 = &v433 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v456 = &v433 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v451 = &v433 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v460 = &v433 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v452 = &v433 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v453 = &v433 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v465 = &v433 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v474 = (&v433 - v49);
  MEMORY[0x28223BE20](v48, v50);
  v472 = &v433 - v51;
  v478 = sub_22D0149AC();
  v475 = *(v478 - 8);
  v52 = *(v475 + 64);
  MEMORY[0x28223BE20](v478, v53);
  v471 = &v433 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3828, &qword_22D01BD10);
  v56 = *(*(v55 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v55 - 8, v57);
  v455 = &v433 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v58, v60);
  v457 = &v433 - v62;
  v64 = MEMORY[0x28223BE20](v61, v63);
  v462 = &v433 - v65;
  v67 = MEMORY[0x28223BE20](v64, v66);
  v461 = &v433 - v68;
  v70 = MEMORY[0x28223BE20](v67, v69);
  v463 = (&v433 - v71);
  v73 = MEMORY[0x28223BE20](v70, v72);
  v464 = &v433 - v74;
  v76 = MEMORY[0x28223BE20](v73, v75);
  v78 = &v433 - v77;
  MEMORY[0x28223BE20](v76, v79);
  v470 = (&v433 - v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2340, &qword_22D01D0A0);
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81 - 8, v83);
  v85 = &v433 - v84;
  v86 = sub_22D01502C();
  v87 = *(v86 - 8);
  v468 = v86;
  v469 = v87;
  v88 = *(v87 + 64);
  v90 = MEMORY[0x28223BE20](v86, v89);
  v445 = &v433 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x28223BE20](v90, v92);
  v444 = &v433 - v94;
  v96 = MEMORY[0x28223BE20](v93, v95);
  v443 = &v433 - v97;
  v99 = MEMORY[0x28223BE20](v96, v98);
  v442 = (&v433 - v100);
  v102 = MEMORY[0x28223BE20](v99, v101);
  v447 = &v433 - v103;
  MEMORY[0x28223BE20](v102, v104);
  v466 = &v433 - v105;
  v106 = sub_22D01666C();
  v107 = [a2 hasEntitlement_];

  if (sub_22CF032C0(a1, v107))
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v108 = sub_22D01637C();
    __swift_project_value_buffer(v108, qword_281444420);
    v109 = v8;
    (*(v9 + 16))(v14, a1, v8);
    v17 = v477;

    v110 = sub_22D01636C();
    v111 = sub_22D0168EC();
    if (!os_log_type_enabled(v110, v111))
    {
      (*(v9 + 8))(v14, v109);

LABEL_50:
      v130 = sub_22D01496C();
      sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
      v131 = swift_allocError();
      v133 = v166;
      v134 = MEMORY[0x277CB9490];
      goto LABEL_51;
    }

    v112 = swift_slowAlloc();
    *v112 = 134349312;
    v113 = sub_22D014D4C();
    v115 = v114 >> 62;
    if ((v114 >> 62) <= 1)
    {
      if (!v115)
      {
        v116 = BYTE6(v114);
        sub_22CEE7524(v113, v114);
        v117 = v116;
LABEL_49:
        (*(v9 + 8))(v14, v109);
        *(v112 + 4) = v117;
        *(v112 + 12) = 2050;
        *(v112 + 14) = 4096;

        _os_log_impl(&dword_22CEE1000, v110, v111, "Request attribute size %{public}ld exceeds maximum size of %{public}ld", v112, 0x16u);
        MEMORY[0x2318C6860](v112, -1, -1);

        goto LABEL_50;
      }

      v164 = HIDWORD(v113);
      v165 = v113;
      sub_22CEE7524(v113, v114);
      if (!__OFSUB__(v164, v165))
      {
        v117 = v164 - v165;
        goto LABEL_49;
      }

      __break(1u);
LABEL_207:

      (v475)(v444, v468);
LABEL_208:
      v429 = v466;
      (*(v9 + 16))(v448, v449, v466, v478, v9);
      sub_22CEEC3D8(v458, &qword_27D9F2350, &qword_22D018978);
      (v475)(v429, v468);
      return 0;
    }

    if (v115 != 2)
    {
      sub_22CEE7524(v113, v114);
      v117 = 0;
      goto LABEL_49;
    }

    v128 = *(v113 + 16);
    v127 = *(v113 + 24);
    sub_22CEE7524(v113, v114);
    v129 = __OFSUB__(v127, v128);
    v117 = v127 - v128;
    if (!v129)
    {
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_20;
  }

  v118 = sub_22D014DAC();
  sub_22D014C7C();
  if (v118)
  {
    if ((MEMORY[0x2318C3DC0]() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((MEMORY[0x2318C3DD0]() & 1) == 0)
  {
LABEL_10:
    if (qword_28143FB28 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_192;
  }

  v467 = a2;
  sub_22CEE84BC(v467);
  v9 = v468;
  v135 = v469;
  (*(v469 + 56))(v85, 0, 1, v468);
  (*(v135 + 32))(v466, v85, v9);
  v136 = sub_22D014CFC();
  if (v136)
  {
    v9 = sub_22D01666C();
    v137 = [v467 hasEntitlement_];

    if (!v137)
    {
      if (qword_28143FB28 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_212;
    }
  }

  if (sub_22D014D2C())
  {
    v9 = sub_22D01666C();
    v138 = [v467 hasEntitlement_];

    if (!v138)
    {
      if (qword_28143FB28 != -1)
      {
        swift_once();
      }

      v181 = sub_22D01637C();
      __swift_project_value_buffer(v181, qword_281444420);
      v169 = v467;
      v170 = sub_22D01636C();
      v171 = sub_22D0168EC();
      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        *v172 = 67240192;
        *(v172 + 4) = [v169 pid];

        v173 = "Requester is not entitled to request unbounded activities: %{public}d";
        goto LABEL_64;
      }

LABEL_105:

      v170 = v169;
      goto LABEL_106;
    }
  }

  if ((*(v477 + *(*v477 + 128)) & 1) == 0 && (sub_22D014CFC() & 1) == 0 && (sub_22D014D1C() & 1) == 0)
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v203 = sub_22D01637C();
    __swift_project_value_buffer(v203, qword_281444420);
    v204 = v467;
    v205 = sub_22D01636C();
    v206 = sub_22D0168EC();
    if (os_log_type_enabled(v205, v206))
    {
      v207 = swift_slowAlloc();
      *v207 = 67240192;
      *(v207 + 4) = [v204 pid];

      _os_log_impl(&dword_22CEE1000, v205, v206, "Persistence is not functional and activity is not ephemeral: %{public}d", v207, 8u);
      MEMORY[0x2318C6860](v207, -1, -1);
    }

    else
    {

      v205 = v204;
    }

    v208 = v468;
    v209 = v466;

    v210 = sub_22D01496C();
    sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
    v131 = swift_allocError();
    v212 = v211;
    v213 = MEMORY[0x277CB9498];
    goto LABEL_107;
  }

  v435 = 0;
  v139 = *(v476 + 64);
  v437 = v476 + 64;
  v140 = 1 << *(v476 + 32);
  v141 = -1;
  if (v140 < 64)
  {
    v141 = ~(-1 << v140);
  }

  v142 = v141 & v139;
  v143 = (v140 + 63) >> 6;
  v440 = v475 + 16;
  v439 = v475 + 32;
  v441 = (v475 + 8);

  v144 = 0;
  v436 = a1;
  v145 = v470;
  v438 = v78;
  if (v142)
  {
    while (1)
    {
      v146 = v144;
LABEL_40:
      v149 = __clz(__rbit64(v142));
      v142 &= v142 - 1;
      v150 = v149 | (v146 << 6);
      v152 = v475;
      v151 = v476;
      v153 = v471;
      v154 = v478;
      (*(v475 + 16))(v471, *(v476 + 48) + *(v475 + 72) * v150, v478);
      v155 = v472;
      sub_22CEFEB00(*(v151 + 56) + *(v473 + 72) * v150, v472, MEMORY[0x277CB9790]);
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      v157 = *(v156 + 48);
      v158 = *(v152 + 32);
      v159 = v438;
      v158(v438, v153, v154);
      sub_22CF033C4(v155, &v159[v157]);
      (*(*(v156 - 8) + 56))(v159, 0, 1, v156);
      v148 = v146;
      v78 = v159;
      v145 = v470;
LABEL_41:
      sub_22CF03428(v78, v145);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      v160 = *(v9 - 8);
      a1 = *(v160 + 48);
      if ((a1)(v145, 1, v9) == 1)
      {
        break;
      }

      v161 = v145 + *(v9 + 48);
      v17 = v145;
      v162 = v474;
      sub_22CF033C4(v161, v474);
      if (sub_22CF03498(v162, v467))
      {
        v179 = sub_22D01496C();
        sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
        v131 = swift_allocError();
        (*(*(v179 - 8) + 104))(v180, *MEMORY[0x277CB94B0], v179);

        sub_22CEFD754(v162, MEMORY[0x277CB9790]);
        (*(v469 + 8))(v466, v468);
        (*v441)(v17, v478);
        return v131;
      }

      sub_22CEFD754(v162, MEMORY[0x277CB9790]);
      (*v441)(v17, v478);
      v144 = v148;
      v145 = v17;
      if (!v142)
      {
        goto LABEL_33;
      }
    }

    v174 = v476;

    if (sub_22CF04384(v467))
    {
      v175 = sub_22D01496C();
      sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
      v131 = swift_allocError();
      v177 = v176;
      v178 = MEMORY[0x277CB94A0];
LABEL_58:
      (*(*(v175 - 8) + 104))(v177, *v178, v175);
      (*(v469 + 8))(v466, v468);
      return v131;
    }

    if (sub_22D014D0C())
    {
      v182 = sub_22D01666C();
      v183 = [v467 hasEntitlement_];

      if ((v183 & 1) == 0)
      {
        if (qword_28143FB28 != -1)
        {
          swift_once();
        }

        v238 = sub_22D01637C();
        __swift_project_value_buffer(v238, qword_281444420);
        v169 = v467;
        v170 = sub_22D01636C();
        v171 = sub_22D0168EC();
        if (os_log_type_enabled(v170, v171))
        {
          v172 = swift_slowAlloc();
          *v172 = 67240192;
          *(v172 + 4) = [v169 pid];

          v173 = "Requester is not entitled to request important activities: %{public}d";
          goto LABEL_64;
        }

        goto LABEL_105;
      }
    }

    v184 = sub_22D014CEC();
    v438 = a1;
    if (v185)
    {
      v186 = v184;
      v187 = v185;
      v188 = sub_22D01666C();
      v189 = [v467 hasEntitlement_];

      v192 = v435;
      v193 = v459;
      if (!v189)
      {

        if (qword_28143FB28 != -1)
        {
          swift_once();
        }

        v239 = sub_22D01637C();
        __swift_project_value_buffer(v239, qword_281444420);
        v169 = v467;
        v170 = sub_22D01636C();
        v171 = sub_22D0168EC();
        if (os_log_type_enabled(v170, v171))
        {
          v172 = swift_slowAlloc();
          *v172 = 67240192;
          *(v172 + 4) = [v169 pid];

          v173 = "Requester is not entitled to reconnect ephemeral activities: %{public}d";
          goto LABEL_64;
        }

        goto LABEL_105;
      }

      v479[0] = 46;
      v479[1] = 0xE100000000000000;
      MEMORY[0x28223BE20](v190, v191);
      *(&v433 - 2) = v479;

      v195 = sub_22D0046B0(0x7FFFFFFFFFFFFFFFLL, 1, sub_22CF4D2CC, (&v433 - 4), v186, v187, v194);
      if (v195[2] != 2)
      {

        if (qword_28143FB28 != -1)
        {
          swift_once();
        }

        v270 = sub_22D01637C();
        __swift_project_value_buffer(v270, qword_281444420);
        v271 = v467;

        v272 = sub_22D01636C();
        v273 = sub_22D0168EC();

        if (os_log_type_enabled(v272, v273))
        {
          v274 = v186;
          v275 = swift_slowAlloc();
          v276 = swift_slowAlloc();
          v479[0] = v276;
          *v275 = 136446466;
          v277 = v274;
LABEL_154:
          v330 = sub_22CEEE31C(v277, v187, v479);

          *(v275 + 4) = v330;
          *(v275 + 12) = 1026;
          *(v275 + 14) = [v271 pid];

          _os_log_impl(&dword_22CEE1000, v272, v273, "Requester provided malformed activity identifier %{public}s: %{public}d", v275, 0x12u);
          __swift_destroy_boxed_opaque_existential_1Tm(v276);
          MEMORY[0x2318C6860](v276, -1, -1);
          MEMORY[0x2318C6860](v275, -1, -1);

LABEL_156:
          v175 = sub_22D01496C();
          sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
          v131 = swift_allocError();
          v177 = v331;
          v178 = MEMORY[0x277CB9468];
          goto LABEL_58;
        }

LABEL_155:

        goto LABEL_156;
      }

      v470 = v186;
      v196 = v195[8];
      v197 = v195[9];
      v198 = v195[11];
      v474 = v195[10];

      if (!((v197 ^ v196) >> 14))
      {

        goto LABEL_150;
      }

      v199 = sub_22D0054F4(v196, v197, v474, v198, 10);
      if ((v200 & 0x100) != 0)
      {
        v202 = sub_22D004AE8(v196, v197, v474, v198, 10);
        v201 = v328;
      }

      else
      {
        v201 = v200;
        v202 = v199;
      }

      if (v201)
      {
LABEL_150:
        if (qword_28143FB28 != -1)
        {
          swift_once();
        }

        v329 = sub_22D01637C();
        __swift_project_value_buffer(v329, qword_281444420);
        v271 = v467;

        v272 = sub_22D01636C();
        v273 = sub_22D0168EC();

        if (os_log_type_enabled(v272, v273))
        {
          v275 = swift_slowAlloc();
          v276 = swift_slowAlloc();
          v479[0] = v276;
          *v275 = 136446466;
          v277 = v470;
          goto LABEL_154;
        }

        goto LABEL_155;
      }

      v174 = v476;
      if (v202 != [v467 pid])
      {
        if (qword_28143FB28 != -1)
        {
          swift_once();
        }

        v358 = sub_22D01637C();
        __swift_project_value_buffer(v358, qword_281444420);
        v359 = v467;

        v360 = sub_22D01636C();
        v361 = sub_22D0168EC();

        if (os_log_type_enabled(v360, v361))
        {
          v362 = swift_slowAlloc();
          v363 = swift_slowAlloc();
          v479[0] = v363;
          *v362 = 136446466;
          v364 = sub_22CEEE31C(v470, v187, v479);

          *(v362 + 4) = v364;
          *(v362 + 12) = 1026;
          *(v362 + 14) = [v359 pid];

          _os_log_impl(&dword_22CEE1000, v360, v361, "Requester is not permitted to reconnect activity %{public}s: %{public}d", v362, 0x12u);
          __swift_destroy_boxed_opaque_existential_1Tm(v363);
          MEMORY[0x2318C6860](v363, -1, -1);
          MEMORY[0x2318C6860](v362, -1, -1);
        }

        else
        {
        }

        v175 = sub_22D01496C();
        sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
        v131 = swift_allocError();
        v177 = v393;
        v178 = MEMORY[0x277CB94A8];
        goto LABEL_58;
      }

      v435 = v192;
      v332 = v458;

      v214 = v332;
      a1 = v438;
    }

    else
    {
      v214 = v458;
      v193 = v459;
    }

    v215 = *(v473 + 56);
    v436 = (v473 + 56);
    v434 = v215;
    v215(v214, 1, 1, v193);
    v216 = 1 << *(v174 + 32);
    v217 = -1;
    if (v216 < 64)
    {
      v217 = ~(-1 << v216);
    }

    v218 = v217 & *(v174 + 64);
    v219 = (v216 + 63) >> 6;
    v474 = (v160 + 56);

    v220 = 0;
    v8 = v464;
    v221 = v465;
    v17 = v463;
    if (!v218)
    {
LABEL_84:
      if (v219 <= v220 + 1)
      {
        v223 = v220 + 1;
      }

      else
      {
        v223 = v219;
      }

      v224 = v223 - 1;
      while (1)
      {
        v222 = v220 + 1;
        if (__OFADD__(v220, 1))
        {
          break;
        }

        if (v222 >= v219)
        {
          v218 = 0;
          v237 = 1;
          goto LABEL_92;
        }

        v218 = *(v437 + 8 * v222);
        ++v220;
        if (v218)
        {
          goto LABEL_91;
        }
      }

      __break(1u);
LABEL_192:
      swift_once();
LABEL_11:
      v119 = sub_22D01637C();
      __swift_project_value_buffer(v119, qword_281444420);
      v109 = v8;
      (*(v9 + 16))(v17, a1, v8);
      v14 = sub_22D01636C();
      v120 = sub_22D0168EC();
      if (os_log_type_enabled(v14, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v479[0] = v122;
        *v121 = 136380675;
        sub_22CEFF2B0(&qword_27D9F34A0, MEMORY[0x277CB9678]);
        v123 = sub_22D016DEC();
        v125 = v124;
        (*(v9 + 8))(v17, v109);
        v126 = sub_22CEEE31C(v123, v125, v479);

        *(v121 + 4) = v126;
        _os_log_impl(&dword_22CEE1000, v14, v120, "Live Activities are not supported for this type of request: %{private}s", v121, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v122);
        MEMORY[0x2318C6860](v122, -1, -1);
        MEMORY[0x2318C6860](v121, -1, -1);

LABEL_21:
        v130 = sub_22D01496C();
        sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
        v131 = swift_allocError();
        v133 = v132;
        v134 = MEMORY[0x277CB9480];
LABEL_51:
        (*(*(v130 - 8) + 104))(v133, *v134, v130);
        return v131;
      }

LABEL_20:

      (*(v9 + 8))(v17, v109);
      goto LABEL_21;
    }

    while (1)
    {
      v222 = v220;
LABEL_91:
      v225 = __clz(__rbit64(v218));
      v218 &= v218 - 1;
      v226 = v225 | (v222 << 6);
      v227 = v475;
      v228 = v476;
      v229 = v471;
      v230 = v478;
      (*(v475 + 16))(v471, *(v476 + 48) + *(v475 + 72) * v226, v478);
      v231 = *(v228 + 56);
      v232 = v472;
      sub_22CEFEB00(v231 + *(v473 + 72) * v226, v472, MEMORY[0x277CB9790]);
      v233 = *(v9 + 48);
      v234 = *(v227 + 32);
      v235 = v463;
      v234(v463, v229, v230);
      v236 = v232;
      v17 = v235;
      sub_22CF033C4(v236, v235 + v233);
      v237 = 0;
      v224 = v222;
      v8 = v464;
      v221 = v465;
      a1 = v438;
LABEL_92:
      v470 = *v474;
      (v470)(v17, v237, 1, v9);
      sub_22CF03428(v17, v8);
      if ((a1)(v8, 1, v9) == 1)
      {
        break;
      }

      sub_22CF033C4(v8 + *(v9 + 48), v221);
      if (sub_22CF04684(v221))
      {
        v241 = v458;
        sub_22CEEC3D8(v458, &qword_27D9F2350, &qword_22D018978);

        sub_22CF033C4(v221, v241);
        v243 = v459;
        v434(v241, 0, 1, v459);
        (*v441)(v8, v478);
        v242 = v454;
        goto LABEL_111;
      }

      sub_22CEFD754(v221, MEMORY[0x277CB9790]);
      (*v441)(v8, v478);
      v220 = v224;
      if (!v218)
      {
        goto LABEL_84;
      }
    }
  }

  else
  {
LABEL_33:
    if (v143 <= v144 + 1)
    {
      v147 = v144 + 1;
    }

    else
    {
      v147 = v143;
    }

    v148 = v147 - 1;
    while (1)
    {
      v146 = v144 + 1;
      if (__OFADD__(v144, 1))
      {
        break;
      }

      if (v146 >= v143)
      {
        v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
        (*(*(v163 - 8) + 56))(v78, 1, 1, v163);
        v142 = 0;
        goto LABEL_41;
      }

      v142 = *(v437 + 8 * v146);
      ++v144;
      if (v142)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
  }

  v241 = v458;
  v242 = v454;
  v243 = v459;
LABEL_111:
  sub_22CEEB6DC(v241, v242, &qword_27D9F2350, &qword_22D018978);
  v244 = (*(v473 + 48))(v242, 1, v243);
  v246 = v468;
  v245 = v469;
  v247 = v461;
  if (v244 == 1)
  {
    sub_22CEEC3D8(v242, &qword_27D9F2350, &qword_22D018978);
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v248 = sub_22D01637C();
    __swift_project_value_buffer(v248, qword_281444420);
    v249 = sub_22D01636C();
    v250 = sub_22D0168EC();
    if (os_log_type_enabled(v249, v250))
    {
      v251 = swift_slowAlloc();
      *v251 = 0;
      _os_log_impl(&dword_22CEE1000, v249, v250, "No scene target has user consent to request activities", v251, 2u);
      v252 = v251;
      v245 = v469;
      MEMORY[0x2318C6860](v252, -1, -1);
    }

    v253 = sub_22D01496C();
    sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
    v131 = swift_allocError();
    (*(*(v253 - 8) + 104))(v254, *MEMORY[0x277CB94C0], v253);
    sub_22CEEC3D8(v241, &qword_27D9F2350, &qword_22D018978);
    (*(v245 + 8))(v466, v246);
    return v131;
  }

  v255 = v453;
  sub_22CF033C4(v242, v453);
  if (qword_28143FB28 != -1)
  {
    swift_once();
  }

  v256 = sub_22D01637C();
  v257 = __swift_project_value_buffer(v256, qword_281444420);
  v258 = v452;
  sub_22CEFEB00(v255, v452, MEMORY[0x277CB9790]);
  v465 = v257;
  v259 = sub_22D01636C();
  v260 = sub_22D01690C();
  if (os_log_type_enabled(v259, v260))
  {
    v261 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v479[0] = v17;
    *v261 = 136446210;
    v262 = sub_22D014ECC();
    v264 = v263;
    v265 = v258;
    v266 = MEMORY[0x277CB9790];
    sub_22CEFD754(v265, MEMORY[0x277CB9790]);
    v267 = sub_22CEEE31C(v262, v264, v479);

    *(v261 + 4) = v267;
    _os_log_impl(&dword_22CEE1000, v259, v260, "User consent granted by scene target %{public}s", v261, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x2318C6860](v17, -1, -1);
    MEMORY[0x2318C6860](v261, -1, -1);

    v268 = v453;
    v269 = v266;
  }

  else
  {

    v278 = MEMORY[0x277CB9790];
    sub_22CEFD754(v258, MEMORY[0x277CB9790]);
    v268 = v255;
    v269 = v278;
  }

  sub_22CEFD754(v268, v269);
  v279 = v460;
  v280 = 1 << *(v476 + 32);
  v281 = -1;
  if (v280 < 64)
  {
    v281 = ~(-1 << v280);
  }

  v282 = v281 & *(v476 + 64);
  v283 = (v280 + 63) >> 6;

  v284 = 0;
  if (!v282)
  {
LABEL_130:
    if (v283 <= v284 + 1)
    {
      v286 = v284 + 1;
    }

    else
    {
      v286 = v283;
    }

    v287 = v286 - 1;
    while (1)
    {
      v285 = v284 + 1;
      if (__OFADD__(v284, 1))
      {
        break;
      }

      if (v285 >= v283)
      {
        v282 = 0;
        v299 = 1;
        v298 = v462;
        goto LABEL_138;
      }

      v282 = *(v437 + 8 * v285);
      ++v284;
      if (v282)
      {
        goto LABEL_137;
      }
    }

    __break(1u);
LABEL_198:

    v381 = *(v469 + 8);
    v381(v17, v283);
LABEL_199:
    v409 = v466;
    (*(v9 + 16))(v448, v449, v466, v478, v9);
    sub_22CEEC3D8(v458, &qword_27D9F2350, &qword_22D018978);
    v381(v409, v283);
    return 0;
  }

  while (1)
  {
    v285 = v284;
LABEL_137:
    v288 = __clz(__rbit64(v282));
    v282 &= v282 - 1;
    v289 = v288 | (v285 << 6);
    v291 = v475;
    v290 = v476;
    v292 = v471;
    v293 = v478;
    (*(v475 + 16))(v471, *(v476 + 48) + *(v475 + 72) * v289, v478);
    v294 = *(v290 + 56);
    v295 = v472;
    sub_22CEFEB00(v294 + *(v473 + 72) * v289, v472, MEMORY[0x277CB9790]);
    v296 = *(v9 + 48);
    v297 = *(v291 + 32);
    v298 = v462;
    v297(v462, v292, v293);
    sub_22CF033C4(v295, v298 + v296);
    v299 = 0;
    v287 = v285;
    v279 = v460;
    v247 = v461;
LABEL_138:
    (v470)(v298, v299, 1, v9);
    sub_22CF03428(v298, v247);
    v17 = v438;
    if ((v438)(v247, 1, v9) == 1)
    {
      break;
    }

    sub_22CF033C4(v247 + *(v9 + 48), v279);
    if (sub_22CF048A8(v279))
    {
      v317 = v451;
      sub_22CEFEB00(v279, v451, MEMORY[0x277CB9790]);
      v318 = sub_22D01636C();
      v319 = sub_22D0168EC();
      if (os_log_type_enabled(v318, v319))
      {
        v320 = swift_slowAlloc();
        v321 = swift_slowAlloc();
        v479[0] = v321;
        *v320 = 136380675;
        v322 = sub_22D014ECC();
        v324 = v323;
        sub_22CEFD754(v317, MEMORY[0x277CB9790]);
        v325 = sub_22CEEE31C(v322, v324, v479);
        v279 = v460;

        *(v320 + 4) = v325;
        _os_log_impl(&dword_22CEE1000, v318, v319, "Scene target is restricted: %{private}s", v320, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v321);
        MEMORY[0x2318C6860](v321, -1, -1);
        MEMORY[0x2318C6860](v320, -1, -1);
      }

      else
      {

        sub_22CEFD754(v317, MEMORY[0x277CB9790]);
      }

      v326 = v469;
      v327 = v458;
      v356 = sub_22D01496C();
      sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
      v131 = swift_allocError();
      (*(*(v356 - 8) + 104))(v357, *MEMORY[0x277CB94C0], v356);

      sub_22CEFD754(v279, MEMORY[0x277CB9790]);
      sub_22CEEC3D8(v327, &qword_27D9F2350, &qword_22D018978);
      (*(v326 + 8))(v466, v468);
      (*v441)(v247, v478);
      return v131;
    }

    sub_22CEFD754(v279, MEMORY[0x277CB9790]);
    (*v441)(v247, v478);
    v284 = v287;
    if (!v282)
    {
      goto LABEL_130;
    }
  }

  v300 = v476;

  v301 = sub_22D01666C();
  v302 = [v467 hasEntitlement_];

  if (v302)
  {
    v304 = v468;
    v303 = v469;
    v305 = v447;
    (*(v469 + 16))(v447, v466, v468);
    v306 = sub_22D01636C();
    v307 = sub_22D01690C();
    if (os_log_type_enabled(v306, v307))
    {
      v308 = v303;
      v309 = swift_slowAlloc();
      v310 = swift_slowAlloc();
      v479[0] = v310;
      *v309 = 136380675;
      sub_22CEFF2B0(&qword_281443988, MEMORY[0x277CB9810]);
      v311 = sub_22D016DEC();
      v312 = v305;
      v314 = v313;
      v315 = *(v308 + 8);
      v315(v312, v304);
      v316 = sub_22CEEE31C(v311, v314, v479);

      *(v309 + 4) = v316;
      _os_log_impl(&dword_22CEE1000, v306, v307, "Requester is entitled to create activities: %{private}s", v309, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v310);
      MEMORY[0x2318C6860](v310, -1, -1);
      MEMORY[0x2318C6860](v309, -1, -1);
    }

    else
    {

      v315 = *(v303 + 8);
      v315(v305, v304);
    }

    v365 = v458;
    v366 = *(*v477 + 104);
    v367 = v466;
    (*(*(v450 + 88) + 16))(v448, v449, v466, *(v450 + 80));
    sub_22CEEC3D8(v365, &qword_27D9F2350, &qword_22D018978);
    v315(v367, v304);
    return 0;
  }

  v333 = 1 << *(v300 + 32);
  v334 = -1;
  if (v333 < 64)
  {
    v334 = ~(-1 << v333);
  }

  v335 = v334 & *(v300 + 64);
  v336 = (v333 + 63) >> 6;

  v337 = 0;
  v338 = v455;
  if (!v335)
  {
LABEL_163:
    if (v336 <= v337 + 1)
    {
      v340 = v337 + 1;
    }

    else
    {
      v340 = v336;
    }

    v341 = v340 - 1;
    while (1)
    {
      v339 = v337 + 1;
      if (__OFADD__(v337, 1))
      {
        break;
      }

      if (v339 >= v336)
      {
        v335 = 0;
        v352 = 1;
        goto LABEL_171;
      }

      v335 = *(v437 + 8 * v339);
      ++v337;
      if (v335)
      {
        goto LABEL_170;
      }
    }

    __break(1u);
LABEL_212:
    swift_once();
LABEL_54:
    v168 = sub_22D01637C();
    __swift_project_value_buffer(v168, qword_281444420);
    v169 = v467;
    v170 = sub_22D01636C();
    v171 = sub_22D0168EC();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      *v172 = 67240192;
      *(v172 + 4) = [v169 pid];

      v173 = "Requester is not entitled to request ephemeral activities: %{public}d";
LABEL_64:
      _os_log_impl(&dword_22CEE1000, v170, v171, v173, v172, 8u);
      MEMORY[0x2318C6860](v172, -1, -1);
LABEL_106:
      v208 = v468;
      v209 = v466;

      v210 = sub_22D01496C();
      sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
      v131 = swift_allocError();
      v212 = v240;
      v213 = MEMORY[0x277CB9470];
LABEL_107:
      (*(*(v210 - 8) + 104))(v212, *v213, v210);
      (*(v469 + 8))(v209, v208);
      return v131;
    }

    goto LABEL_105;
  }

  while (1)
  {
    v339 = v337;
LABEL_170:
    v342 = __clz(__rbit64(v335));
    v335 &= v335 - 1;
    v343 = v342 | (v339 << 6);
    v345 = v475;
    v344 = v476;
    v346 = v471;
    v347 = v478;
    (*(v475 + 16))(v471, *(v476 + 48) + *(v475 + 72) * v343, v478);
    v348 = *(v344 + 56);
    v349 = v472;
    sub_22CEFEB00(v348 + *(v473 + 72) * v343, v472, MEMORY[0x277CB9790]);
    v350 = *(v9 + 48);
    v351 = *(v345 + 32);
    v338 = v455;
    v351(v455, v346, v347);
    sub_22CF033C4(v349, v338 + v350);
    v352 = 0;
    v341 = v339;
    v17 = v438;
LABEL_171:
    (v470)(v338, v352, 1, v9);
    v353 = v457;
    sub_22CF03428(v338, v457);
    v354 = (v17)(v353, 1, v9);
    v355 = v456;
    if (v354 == 1)
    {
      break;
    }

    sub_22CF033C4(v353 + *(v9 + 48), v456);
    if ((sub_22D005A2C(v355) & 1) == 0)
    {
      v383 = v446;
      sub_22CEFEB00(v355, v446, MEMORY[0x277CB9790]);
      v384 = sub_22D01636C();
      v385 = sub_22D0168EC();
      if (os_log_type_enabled(v384, v385))
      {
        v386 = swift_slowAlloc();
        v387 = swift_slowAlloc();
        v479[0] = v387;
        *v386 = 136446210;
        v388 = sub_22D014ECC();
        v390 = v389;
        sub_22CEFD754(v383, MEMORY[0x277CB9790]);
        v391 = sub_22CEEE31C(v388, v390, v479);

        *(v386 + 4) = v391;
        _os_log_impl(&dword_22CEE1000, v384, v385, "Target does not include NSSupportsLiveActivities key in its Info.plist %{public}s", v386, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v387);
        v392 = v387;
        v355 = v456;
        MEMORY[0x2318C6860](v392, -1, -1);
        MEMORY[0x2318C6860](v386, -1, -1);
      }

      else
      {

        sub_22CEFD754(v383, MEMORY[0x277CB9790]);
      }

      v406 = v457;
      v407 = sub_22D01496C();
      sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
      v131 = swift_allocError();
      (*(*(v407 - 8) + 104))(v408, *MEMORY[0x277CB9488], v407);

      sub_22CEFD754(v355, MEMORY[0x277CB9790]);
      sub_22CEEC3D8(v458, &qword_27D9F2350, &qword_22D018978);
      (*(v469 + 8))(v466, v468);
      (*v441)(v406, v478);
      return v131;
    }

    sub_22CEFD754(v355, MEMORY[0x277CB9790]);
    (*v441)(v353, v478);
    v337 = v341;
    if (!v335)
    {
      goto LABEL_163;
    }
  }

  v368 = *(v450 + 80);
  v9 = *(v450 + 88);
  v369 = *(v9 + 8);
  v476 = *(*v477 + 104);
  v370 = v466;
  v478 = v368;
  v371 = v369(v466);
  v372 = *(v469 + 16);
  if (v371)
  {
    v17 = v442;
    v373 = v370;
    v283 = v468;
    v372(v442, v373, v468);
    v282 = sub_22D01636C();
    v374 = sub_22D01690C();
    if (!os_log_type_enabled(v282, v374))
    {
      goto LABEL_198;
    }

    v375 = swift_slowAlloc();
    v376 = swift_slowAlloc();
    v479[0] = v376;
    *v375 = 136380675;
    sub_22CEFF2B0(&qword_281443988, MEMORY[0x277CB9810]);
    v377 = sub_22D016DEC();
    v378 = v17;
    v380 = v379;
    v381 = *(v469 + 8);
    v381(v378, v283);
    v382 = sub_22CEEE31C(v377, v380, v479);

    *(v375 + 4) = v382;
    _os_log_impl(&dword_22CEE1000, v282, v374, "Requester is targeted by an activity request assertion: %{private}s", v375, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v376);
    MEMORY[0x2318C6860](v376, -1, -1);
    MEMORY[0x2318C6860](v375, -1, -1);

    goto LABEL_199;
  }

  v394 = v443;
  v395 = v370;
  v396 = v468;
  v372(v443, v395, v468);
  v397 = sub_22D01636C();
  v398 = sub_22D01690C();
  if (os_log_type_enabled(v397, v398))
  {
    v399 = swift_slowAlloc();
    v400 = swift_slowAlloc();
    v479[0] = v400;
    *v399 = 136380675;
    sub_22CEFF2B0(&qword_281443988, MEMORY[0x277CB9810]);
    v401 = sub_22D016DEC();
    v402 = v394;
    v404 = v403;
    v475 = *(v469 + 8);
    (v475)(v402, v396);
    v405 = sub_22CEEE31C(v401, v404, v479);

    *(v399 + 4) = v405;
    _os_log_impl(&dword_22CEE1000, v397, v398, "Requester is not targeted by an activity request assertion: %{private}s", v399, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v400);
    MEMORY[0x2318C6860](v400, -1, -1);
    MEMORY[0x2318C6860](v399, -1, -1);
  }

  else
  {

    v475 = *(v469 + 8);
    (v475)(v394, v396);
  }

  if (sub_22D005EE4(v467))
  {
    v372(v444, v466, v468);
    v110 = sub_22D01636C();
    v410 = sub_22D01690C();
    if (!os_log_type_enabled(v110, v410))
    {
      goto LABEL_207;
    }

    v411 = swift_slowAlloc();
    v412 = swift_slowAlloc();
    v479[0] = v412;
    *v411 = 136380675;
    sub_22CEFF2B0(&qword_281443988, MEMORY[0x277CB9810]);
    v413 = v444;
    v414 = v468;
    v415 = sub_22D016DEC();
    v417 = v416;
    (v475)(v413, v414);
    v418 = sub_22CEEE31C(v415, v417, v479);

    *(v411 + 4) = v418;
    _os_log_impl(&dword_22CEE1000, v110, v410, "Requester is foreground: %{private}s", v411, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v412);
    MEMORY[0x2318C6860](v412, -1, -1);
    MEMORY[0x2318C6860](v411, -1, -1);

    goto LABEL_208;
  }

  v372(v445, v466, v468);
  v419 = sub_22D01636C();
  v420 = sub_22D01690C();
  if (os_log_type_enabled(v419, v420))
  {
    v421 = swift_slowAlloc();
    v422 = swift_slowAlloc();
    v479[0] = v422;
    *v421 = 136380675;
    sub_22CEFF2B0(&qword_281443988, MEMORY[0x277CB9810]);
    v423 = v445;
    v424 = v468;
    v425 = sub_22D016DEC();
    v427 = v426;
    (v475)(v423, v424);
    v428 = sub_22CEEE31C(v425, v427, v479);

    *(v421 + 4) = v428;
    _os_log_impl(&dword_22CEE1000, v419, v420, "Requester is not foreground: %{private}s", v421, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v422);
    MEMORY[0x2318C6860](v422, -1, -1);
    MEMORY[0x2318C6860](v421, -1, -1);
  }

  else
  {

    (v475)(v445, v468);
  }

  v430 = v466;
  (*(v9 + 24))(v466, v478, v9);
  v431 = sub_22D01496C();
  sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
  v131 = swift_allocError();
  (*(*(v431 - 8) + 104))(v432, *MEMORY[0x277CB9478], v431);
  sub_22CEEC3D8(v458, &qword_27D9F2350, &qword_22D018978);
  (v475)(v430, v468);
  return v131;
}

uint64_t sub_22CF032B0(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    return sub_22CEFF988(a1, a2, a3, a4, a5);
  }

  else
  {
    return sub_22D0027F0(a1, a3);
  }
}

uint64_t sub_22CF032C0(uint64_t a1, char a2)
{
  v3 = sub_22D014D4C();
  v5 = v4 >> 62;
  if (a2)
  {
    if ((v4 >> 62) <= 1)
    {
      if (!v5)
      {
LABEL_4:
        sub_22CEE7524(v3, v4);
        v6 = 1;
        return !v6;
      }

      goto LABEL_16;
    }

    if (v5 != 2)
    {
      goto LABEL_4;
    }

    v10 = *(v3 + 16);
    v9 = *(v3 + 24);
    v3 = sub_22CEE7524(v3, v4);
    v5 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  else if ((v4 >> 62) <= 1)
  {
    if (v5)
    {
      v16 = HIDWORD(v3);
      v17 = v3;
      result = sub_22CEE7524(v3, v4);
      LODWORD(v8) = v16 - v17;
      if (__OFSUB__(v16, v17))
      {
        goto LABEL_28;
      }

      v8 = v8;
    }

    else
    {
      v7 = BYTE6(v4);
      sub_22CEE7524(v3, v4);
      v8 = v7;
    }

    goto LABEL_23;
  }

  if (v5 == 2)
  {
    v12 = *(v3 + 16);
    v11 = *(v3 + 24);
    v3 = sub_22CEE7524(v3, v4);
    v8 = v11 - v12;
    if (__OFSUB__(v11, v12))
    {
      __break(1u);
LABEL_16:
      v13 = HIDWORD(v3);
      v14 = v3;
      result = sub_22CEE7524(v3, v4);
      LODWORD(v5) = v13 - v14;
      if (!__OFSUB__(v13, v14))
      {
        v5 = v5;
LABEL_18:
        v6 = v5 <= 81920;
        return !v6;
      }

      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }
  }

  else
  {
    sub_22CEE7524(v3, v4);
    v8 = 0;
  }

LABEL_23:
  v6 = v8 <= 4096;
  return !v6;
}

uint64_t sub_22CF033C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D014EFC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF03428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3828, &qword_22D01BD10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF03498(uint64_t a1, void *a2)
{
  v5 = sub_22D014EFC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = (v2 + *(*v2 + 112));
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v13 = (*(v12 + 8))(v11, v12);
  v14 = sub_22CF03A84(v13);

  v45 = a1;
  v15 = sub_22CEE9F88(sub_22D00643C, v44, v14);

  v16 = *(v15 + 16);

  if (!a2)
  {
    if (v16 >= 5)
    {
      goto LABEL_25;
    }

    return 0;
  }

  v17 = a2;
  v18 = sub_22D01666C();
  v19 = [v17 valueForEntitlement_];

  if (v19)
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49[0] = v47;
  v49[1] = v48;
  if (*(&v48 + 1))
  {
    if (swift_dynamicCast())
    {
      v20 = v46;
      if (qword_28143FB28 != -1)
      {
        swift_once();
      }

      v21 = sub_22D01637C();
      __swift_project_value_buffer(v21, qword_281444420);
      v22 = v17;
      v23 = sub_22D01636C();
      v24 = sub_22D01690C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 67240448;
        *(v25 + 4) = [v22 pid];

        *(v25 + 8) = 2048;
        *(v25 + 10) = v20;
        _os_log_impl(&dword_22CEE1000, v23, v24, "Client (pid: %{public}d) has their own activity limit %ld", v25, 0x12u);
        MEMORY[0x2318C6860](v25, -1, -1);
      }

      else
      {
      }

      if (v16 < v20)
      {
        return 0;
      }

      goto LABEL_19;
    }

    if (v16 < 5)
    {
      return 0;
    }
  }

  else
  {

    sub_22CEEC3D8(v49, &qword_27D9F2B10, &unk_22D01B930);
    if (v16 < 5)
    {
      return 0;
    }
  }

LABEL_19:
  v26 = v17;
  v27 = sub_22D01666C();
  v28 = [v26 hasEntitlement_];

  if (v28)
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v29 = sub_22D01637C();
    __swift_project_value_buffer(v29, qword_281444420);
    v30 = v26;
    v31 = sub_22D01636C();
    v32 = sub_22D0168EC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 67240448;
      *(v33 + 4) = [v30 pid];

      *(v33 + 8) = 2048;
      *(v33 + 10) = v16;
      _os_log_impl(&dword_22CEE1000, v31, v32, "Bypassing activity count limit for %{public}d due to entitlement (current=%ld).", v33, 0x12u);
      MEMORY[0x2318C6860](v33, -1, -1);
    }

    else
    {
    }

    return 0;
  }

LABEL_25:
  if (qword_28143FB28 != -1)
  {
    swift_once();
  }

  v34 = sub_22D01637C();
  __swift_project_value_buffer(v34, qword_281444420);
  sub_22CEFEB00(a1, v9, MEMORY[0x277CB9790]);
  v35 = sub_22D01636C();
  v36 = sub_22D0168EC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v49[0] = v38;
    *v37 = 136446210;
    v39 = sub_22D014ECC();
    v41 = v40;
    sub_22CEFD754(v9, MEMORY[0x277CB9790]);
    v42 = sub_22CEEE31C(v39, v41, v49);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_22CEE1000, v35, v36, "Cannot create new activity as maximum count for target has been reached: %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x2318C6860](v38, -1, -1);
    MEMORY[0x2318C6860](v37, -1, -1);
  }

  else
  {

    sub_22CEFD754(v9, MEMORY[0x277CB9790]);
  }

  return 1;
}

uint64_t sub_22CF03A84(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1, v8);
    v10 = v17 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_22CF03BE4(v10, v7, v3);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  v13 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v13;
    goto LABEL_2;
  }

  v14 = swift_slowAlloc();
  v15 = v2;
  v16 = sub_22D004A70(v14, v7, v3);
  result = MEMORY[0x2318C6860](v14, -1, -1);
  if (!v15)
  {
    result = v16;
  }

LABEL_4:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22CF03BE4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v79 = a2;
  v80 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v78 = &v71 - v7;
  v77 = sub_22D01461C();
  v8 = *(v77 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v77, v10);
  v76 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v85 = &v71 - v15;
  v16 = sub_22D01430C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v73 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v92 = &v71 - v23;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v24 = *(*(v88 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v88, v25);
  v87 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v97 = (&v71 - v29);
  v94 = type metadata accessor for Activity();
  v86 = *(v94 - 8);
  v30 = *(v86 + 64);
  result = MEMORY[0x28223BE20](v94, v31);
  v34 = &v71 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0;
  v93 = a3;
  v36 = *(a3 + 64);
  v81 = 0;
  v82 = a3 + 64;
  v37 = 1 << *(a3 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v36;
  v40 = (v37 + 63) >> 6;
  v91 = (v17 + 8);
  v75 = (v8 + 8);
  v74 = (v17 + 48);
  v72 = (v17 + 32);
  v89 = v40;
  v90 = v34;
  while (1)
  {
    v41 = v94;
    if (!v39)
    {
      break;
    }

    v42 = __clz(__rbit64(v39));
    v96 = (v39 - 1) & v39;
LABEL_11:
    v45 = v42 | (v35 << 6);
    v46 = v93[7];
    v47 = (v93[6] + 16 * v45);
    v48 = *v47;
    v49 = v47[1];
    v50 = *(v86 + 72);
    v84 = v45;
    sub_22CEFEB00(v46 + v50 * v45, v34, type metadata accessor for Activity);
    v51 = v97;
    *v97 = v48;
    v51[1] = v49;
    v52 = v88;
    sub_22CEFEB00(v34, v51 + *(v88 + 48), type metadata accessor for Activity);
    v53 = v51;
    v54 = v87;
    sub_22CEEB6DC(v53, v87, &unk_27D9F3840, &unk_22D01A2B0);
    v55 = *(v54 + 8);
    v95 = v49;
    swift_bridgeObjectRetain_n();

    v56 = v54 + *(v52 + 48);
    v57 = *(v41 + 40);
    v58 = v92;
    sub_22D0142DC();
    sub_22CEFF2B0(&qword_281443A30, MEMORY[0x277CC9578]);
    LOBYTE(v57) = sub_22D01663C();
    v59 = *v91;
    (*v91)(v58, v16);
    if ((v57 & 1) == 0)
    {
      goto LABEL_17;
    }

    v83 = v59;
    v60 = v16;
    v61 = v85;
    sub_22CEEB6DC(v56 + *(v41 + 60), v85, &qword_27D9F26E0, &unk_22D018F80);
    v62 = sub_22D01486C();
    v63 = (*(*(v62 - 8) + 48))(v61, 1, v62);
    sub_22CEEC3D8(v61, &qword_27D9F26E0, &unk_22D018F80);
    if (v63 == 1)
    {
      v64 = v56 + *(v94 + 56);
      v65 = v76;
      sub_22D01467C();
      v66 = v78;
      sub_22D01460C();
      (*v75)(v65, v77);
      v16 = v60;
      if ((*v74)(v66, 1, v60) == 1)
      {
        sub_22CEEC3D8(v66, &qword_27D9F2648, &unk_22D018BC0);
      }

      else
      {
        v67 = v73;
        (*v72)(v73, v66, v16);
        v68 = v92;
        sub_22D0142DC();
        sub_22D01428C();
        v69 = v83;
        v83(v68, v16);
        v69(v67, v16);
      }

LABEL_17:
      sub_22CEEC3D8(v97, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CEFD754(v56, type metadata accessor for Activity);
      v34 = v90;
      sub_22CEFD754(v90, type metadata accessor for Activity);

      *(v80 + ((v84 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v84;
      v70 = __OFADD__(v81++, 1);
      v40 = v89;
      v39 = v96;
      if (v70)
      {
        __break(1u);
        return sub_22CEE4A40(v80, v79, v81, v93);
      }
    }

    else
    {
      sub_22CEEC3D8(v97, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CEFD754(v56, type metadata accessor for Activity);
      v34 = v90;
      sub_22CEFD754(v90, type metadata accessor for Activity);

      v40 = v89;
      v39 = v96;
    }
  }

  v43 = v35;
  while (1)
  {
    v35 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v35 >= v40)
    {
      return sub_22CEE4A40(v80, v79, v81, v93);
    }

    v44 = *(v82 + 8 * v35);
    ++v43;
    if (v44)
    {
      v42 = __clz(__rbit64(v44));
      v96 = (v44 - 1) & v44;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF04384(void *a1)
{
  v3 = (v1 + *(*v1 + 112));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = sub_22CF03A84(v6);

  if (a1)
  {
    v8 = a1;
    v9 = sub_22D01666C();
    v10 = [v8 valueForEntitlement_];

    if (v10)
    {

      sub_22D016ACC();
      swift_unknownObjectRelease();
      sub_22CEEC3D8(v22, &qword_27D9F2B10, &unk_22D01B930);
      if (qword_28143FB28 != -1)
      {
        swift_once();
      }

      v11 = sub_22D01637C();
      __swift_project_value_buffer(v11, qword_281444420);
      v12 = v8;
      v13 = sub_22D01636C();
      v14 = sub_22D01690C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67240192;
        *(v15 + 4) = [v12 pid];

        _os_log_impl(&dword_22CEE1000, v13, v14, "Bypassing global maximum activity count check because requester has its own activity count limit %{public}d", v15, 8u);
        MEMORY[0x2318C6860](v15, -1, -1);
      }

      else
      {
      }

      v17 = 0;
LABEL_17:

      return v17;
    }

    memset(v22, 0, 32);
    sub_22CEEC3D8(v22, &qword_27D9F2B10, &unk_22D01B930);
  }

  v16 = *(v7 + 16);

  if (v16 >= 0x19)
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v18 = sub_22D01637C();
    __swift_project_value_buffer(v18, qword_281444420);
    v12 = sub_22D01636C();
    v19 = sub_22D0168EC();
    if (os_log_type_enabled(v12, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22CEE1000, v12, v19, "Cannot create new activity as maximum count has been reached", v20, 2u);
      MEMORY[0x2318C6860](v20, -1, -1);
    }

    v17 = 1;
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_22CF04684(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D01502C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22D014EFC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22CEFEB00(a1, v14, MEMORY[0x277CB9790]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22CEFD754(v14, MEMORY[0x277CB9790]);
    return 1;
  }

  else
  {
    (*(v5 + 32))(v9, v14, v4);
    v16 = sub_22D014F9C();
    v18 = v17;
    v19 = *(*(v2 + *(*v2 + 136)) + 72);
    v20 = MEMORY[0x28223BE20](v16, v17);
    *&v22[-32] = v21;
    *&v22[-24] = v20;
    *&v22[-16] = v18;
    sub_22D01699C();

    (*(v5 + 8))(v9, v4);
    return v22[15];
  }
}

uint64_t sub_22CF048A8(uint64_t a1)
{
  v3 = sub_22D01502C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D014EFC();
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v47 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v41 - v19;
  v21 = __swift_project_boxed_opaque_existential_1((v1 + *(*v1 + 152)), *(v1 + *(*v1 + 152) + 24));
  sub_22CEFEB00(a1, v20, MEMORY[0x277CB9790]);
  v46 = v4[4];
  v46(v8, v20, v3);
  v22 = sub_22D014F9C();
  v24 = v23;
  v45 = v4[1];
  v45(v8, v3);
  v25 = *v21;
  v26 = sub_22CF04C80(v22, v24);

  if (v26)
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v27 = sub_22D01637C();
    __swift_project_value_buffer(v27, qword_281444420);
    sub_22CEFEB00(a1, v17, MEMORY[0x277CB9790]);
    v28 = sub_22D01636C();
    v29 = sub_22D0168EC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v42 = v30;
      v44 = swift_slowAlloc();
      v48 = v44;
      *v30 = 136446210;
      v31 = MEMORY[0x277CB9790];
      v43 = v29;
      v32 = v47;
      sub_22CEFEB00(v17, v47, MEMORY[0x277CB9790]);
      v46(v8, v32, v3);
      v33 = sub_22D014F9C();
      v35 = v34;
      v45(v8, v3);
      sub_22CEFD754(v17, v31);
      v36 = sub_22CEEE31C(v33, v35, &v48);

      v37 = v42;
      *(v42 + 1) = v36;
      v38 = v37;
      _os_log_impl(&dword_22CEE1000, v28, v43, "App is restricted: %{public}s", v37, 0xCu);
      v39 = v44;
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x2318C6860](v39, -1, -1);
      MEMORY[0x2318C6860](v38, -1, -1);
    }

    else
    {

      sub_22CEFD754(v17, MEMORY[0x277CB9790]);
    }
  }

  return v26 & 1;
}

uint64_t sub_22CF04C80(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC11SessionCore16AppEventObserver_lock);

  os_unfair_lock_lock(v5 + 4);
  v6 = 0;
  sub_22CF05288(&v40);
  os_unfair_lock_unlock(v5 + 4);
  v7 = v40;

  if (!*(v7 + 16))
  {

    return 0;
  }

  v8 = 0;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 56);
  do
  {
    if (!v11)
    {
      while (1)
      {
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v12 >= ((v9 + 63) >> 6))
        {
          v14 = 0;
          goto LABEL_14;
        }

        v11 = *(v7 + 56 + 8 * v12);
        ++v8;
        if (v11)
        {
          v8 = v12;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    v12 = v8;
LABEL_11:
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
  }

  while ((*(*(v7 + 48) + 40 * (v13 | (v12 << 6)) + 32) & 1) != 0);
  v14 = 1;
LABEL_14:

  v15 = sub_22CFC8050(v7, a1, a2);

  v16 = sub_22CFC8478(v7, a1, a2);

  if (!v14)
  {
    if (!*(v16 + 16))
    {

LABEL_30:

      return 0;
    }

    goto LABEL_21;
  }

  if (!*(v15 + 16))
  {

    v27 = sub_22CFC4330(v15);

    if (qword_28143DAA0 != -1)
    {
      swift_once();
    }

    v28 = sub_22D01637C();
    __swift_project_value_buffer(v28, qword_281444308);

    v18 = sub_22D01636C();
    v19 = sub_22D01690C();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_36;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v40 = v21;
    *v20 = 136380931;
    *(v20 + 4) = sub_22CEEE31C(a1, a2, &v40);
    *(v20 + 12) = 2082;
    v29 = MEMORY[0x2318C5950](v27, MEMORY[0x277D837D0]);
    v31 = v30;

    v32 = sub_22CEEE31C(v29, v31, &v40);

    *(v20 + 14) = v32;
    v26 = "Bundle ID %{private}s is restricted because it is not part of the allow-list set by sources: %{public}s";
    goto LABEL_28;
  }

  if (*(v16 + 16))
  {
LABEL_21:

    v6 = sub_22CFC4330(v16);

    if (qword_28143DAA0 == -1)
    {
LABEL_22:
      v17 = sub_22D01637C();
      __swift_project_value_buffer(v17, qword_281444308);

      v18 = sub_22D01636C();
      v19 = sub_22D01690C();

      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_36;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40 = v21;
      *v20 = 136380931;
      *(v20 + 4) = sub_22CEEE31C(a1, a2, &v40);
      *(v20 + 12) = 2082;
      v22 = MEMORY[0x2318C5950](v6, MEMORY[0x277D837D0]);
      v24 = v23;

      v25 = sub_22CEEE31C(v22, v24, &v40);

      *(v20 + 14) = v25;
      v26 = "Bundle ID %{private}s is restricted because it is is denied by sources: %{public}s";
LABEL_28:
      _os_log_impl(&dword_22CEE1000, v18, v19, v26, v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v21, -1, -1);
      MEMORY[0x2318C6860](v20, -1, -1);
      goto LABEL_37;
    }

LABEL_39:
    swift_once();
    goto LABEL_22;
  }

  if (*(v15 + 16))
  {
    goto LABEL_30;
  }

  v34 = sub_22CFC4330(v15);

  if (qword_28143DAA0 != -1)
  {
    swift_once();
  }

  v35 = sub_22D01637C();
  __swift_project_value_buffer(v35, qword_281444308);

  v18 = sub_22D01636C();
  v19 = sub_22D01690C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v40 = v21;
    *v20 = 136380931;
    *(v20 + 4) = sub_22CEEE31C(a1, a2, &v40);
    *(v20 + 12) = 2082;
    v36 = MEMORY[0x2318C5950](v34, MEMORY[0x277D837D0]);
    v38 = v37;

    v39 = sub_22CEEE31C(v36, v38, &v40);

    *(v20 + 14) = v39;
    v26 = "Bundle ID %{private}s is unrestricted because it is part of the allow-list set by sources: %{public}s";
    goto LABEL_28;
  }

LABEL_36:

LABEL_37:

  return 1;
}

void *sub_22CF052A0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_22CF0534C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v232 = a2;
  v227 = a1;
  v243 = sub_22D0154AC();
  v233 = *(v243 - 8);
  v5 = *(v233 + 64);
  MEMORY[0x28223BE20](v243, v6);
  v242 = &v220 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_22D01553C();
  v8 = *(v236 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v236, v10);
  v229 = &v220 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v228 = &v220 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v241 = &v220 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v231 = &v220 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v220 - v24;
  v254 = sub_22D0154EC();
  v271 = *(v254 - 8);
  v26 = *(v271 + 64);
  MEMORY[0x28223BE20](v254, v27);
  v258 = (&v220 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for Assertion();
  v263 = *(v29 - 8);
  v30 = *(v263 + 64);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v259 = &v220 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v224 = &v220 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v230 = &v220 - v39;
  v41 = MEMORY[0x28223BE20](v38, v40);
  v234 = &v220 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v255 = &v220 - v45;
  MEMORY[0x28223BE20](v44, v46);
  v269 = &v220 - v47;
  v48 = sub_22D01534C();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  v52 = MEMORY[0x28223BE20](v48, v51);
  v235 = &v220 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v52, v54);
  v57 = &v220 - v56;
  MEMORY[0x28223BE20](v55, v58);
  v266 = &v220 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29F0, &unk_22D019678);
  v61 = *(*(v60 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v60 - 8, v62);
  v245 = &v220 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v63, v65);
  v264 = &v220 - v67;
  v69 = MEMORY[0x28223BE20](v66, v68);
  v257 = &v220 - v70;
  MEMORY[0x28223BE20](v69, v71);
  v256 = &v220 - v72;
  v73 = v3[19];
  v74 = v3[20];
  v260 = v3;
  __swift_project_boxed_opaque_existential_1(v3 + 16, v73);
  v75 = (*(v74 + 8))(v73, v74);
  v273 = a3;
  v76 = sub_22CEE9DF8(sub_22CF7C520, v272, v75, sub_22CF06DB0, sub_22CF06DB0);

  v77 = 0;
  v78 = *(v76 + 64);
  v244 = v76 + 64;
  v248 = v76;
  v79 = 1 << *(v76 + 32);
  v80 = -1;
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  v81 = v80 & v78;
  v82 = (v79 + 63) >> 6;
  v267 = (v49 + 16);
  v270 = v49 + 32;
  v253 = (v271 + 16);
  v252 = (v271 + 88);
  v251 = *MEMORY[0x277D4D498];
  v261 = v49;
  v265 = (v49 + 8);
  v250 = (v271 + 8);
  v238 = (v271 + 96);
  v237 = *MEMORY[0x277D4D470];
  v226 = (v8 + 32);
  v225 = (v8 + 16);
  v223 = (v8 + 8);
  v239 = MEMORY[0x277D84F90];
  v247 = MEMORY[0x277D84F98];
  v262 = v29;
  v271 = v48;
  v240 = v25;
  v249 = v57;
  v246 = v82;
LABEL_4:
  v83 = v77;
  if (v81)
  {
    while (1)
    {
      v84 = v83;
LABEL_12:
      v86 = __clz(__rbit64(v81));
      v81 &= v81 - 1;
      v87 = v86 | (v84 << 6);
      v88 = v248;
      v89 = v261;
      v90 = v266;
      (*(v261 + 16))(v266, *(v248 + 48) + *(v261 + 72) * v87, v48);
      v91 = v269;
      sub_22CF07D60(*(v88 + 56) + *(v263 + 72) * v87, v269, type metadata accessor for Assertion);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
      v93 = v48;
      v94 = *(v92 + 48);
      v95 = *(v89 + 32);
      v96 = v257;
      v95(v257, v90, v93);
      v97 = &v96[v94];
      v98 = v96;
      sub_22CF7BE5C(v91, v97, type metadata accessor for Assertion);
      (*(*(v92 - 8) + 56))(v96, 0, 1, v92);
      v268 = v84;
      v57 = v249;
      v82 = v246;
LABEL_13:
      v99 = v98;
      v100 = v256;
      sub_22CEF0368(v99, v256, &qword_27D9F29F0, &unk_22D019678);
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
      v102 = *(v101 - 8);
      v103 = *(v102 + 48);
      v104 = v103(v100, 1, v101);
      v105 = v258;
      if (v104 == 1)
      {
        break;
      }

      v106 = *(v101 + 48);
      v107 = v100;
      v108 = v100;
      v48 = v271;
      (*v270)(v57, v107, v271);
      v109 = v255;
      sub_22CF7BE5C(v108 + v106, v255, type metadata accessor for Assertion);
      v110 = v262[5];
      v111 = *v253;
      v112 = v254;
      (*v253)(v105, v109 + v110, v254);
      v113 = (*v252)(v105, v112);
      if (v113 == v251)
      {
        (*v238)(v105, v112);
        LODWORD(v222) = *v105;
        v115 = v240;
        sub_22CEEB6DC(v109 + v262[6], v240, &qword_27D9F2680, &qword_22D019670);
        v116 = sub_22D01539C();
        v117 = *(v116 - 8);
        if ((*(v117 + 48))(v115, 1, v116) == 1)
        {
          sub_22CF1CB18(v109, type metadata accessor for Assertion);
          v57 = v249;
          (*v265)(v249, v48);
          goto LABEL_30;
        }

        v118 = v231;
        sub_22CEEB6DC(v240, v231, &qword_27D9F2680, &qword_22D019670);
        v119 = (*(v117 + 88))(v118, v116);
        v120 = v116;
        v121 = v117;
        if (v119 != v237)
        {
          sub_22CF1CB18(v255, type metadata accessor for Assertion);
          v57 = v249;
          (*v265)(v249, v48);
          (*(v117 + 8))(v118, v120);
LABEL_30:
          v159 = v240;
LABEL_45:
          sub_22CEEC3D8(v159, &qword_27D9F2680, &qword_22D019670);
          v77 = v268;
          goto LABEL_4;
        }

        (*(v117 + 96))(v118, v120);
        (*v226)(v228, v118, v236);
        v122 = sub_22D01552C();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_22CFCE000(0, *(v122 + 16) + 1, 1, v122);
        }

        v124 = *(v122 + 16);
        v123 = *(v122 + 24);
        v221 = v120;
        if (v124 >= v123 >> 1)
        {
          v122 = sub_22CFCE000((v123 > 1), v124 + 1, 1, v122);
        }

        *(v122 + 16) = v124 + 1;
        v125 = v122 + 16 * v124;
        v126 = v232;
        *(v125 + 32) = v227;
        *(v125 + 40) = v126;
        v127 = v229;
        sub_22D01551C();
        v128 = v262;
        v129 = v262[6];
        v130 = v234;
        (*v225)(v234 + v129, v127, v236);
        v131 = v221;
        (*(v121 + 104))(v130 + v129, v237, v221);
        (*(v121 + 56))(v130 + v129, 0, 1, v131);
        v221 = *v267;
        v132 = v255;
        v221(v130, v255, v271);
        v133 = v128[10];
        v134 = sub_22D01555C();
        (*(*(v134 - 8) + 16))(v130 + v133, v132 + v133, v134);
        v111((v130 + v128[5]), v132 + v110, v254);
        v135 = v128[8];
        v136 = (v132 + v128[7]);
        v138 = *v136;
        v137 = v136[1];
        v139 = sub_22D01430C();
        (*(*(v139 - 8) + 16))(v130 + v135, v132 + v135, v139);
        v140 = v132 + v128[9];
        v141 = *v140;
        LOBYTE(v140) = *(v140 + 8);
        v142 = v130;
        v143 = (v130 + v128[7]);
        *v143 = v138;
        v143[1] = v137;
        v144 = v271;
        v145 = v128[9];
        v146 = v221;
        v147 = v142 + v145;
        *v147 = v141;
        *(v147 + 8) = v140;
        v148 = v235;
        v146(v235, v249, v144);
        sub_22CF07D60(v142, v230, type metadata accessor for Assertion);

        v149 = v247;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v277[0] = v149;
        v151 = sub_22CFB606C(v148);
        v153 = *(v149 + 16);
        v154 = (v152 & 1) == 0;
        v155 = __OFADD__(v153, v154);
        v156 = v153 + v154;
        if (!v155)
        {
          v157 = v152;
          if (*(v149 + 24) >= v156)
          {
            v57 = v249;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v178 = v151;
              sub_22CFB635C();
              v151 = v178;
            }
          }

          else
          {
            sub_22CFB8B04(v156, isUniquelyReferenced_nonNull_native);
            v151 = sub_22CFB606C(v235);
            v57 = v249;
            if ((v157 & 1) != (v158 & 1))
            {
              goto LABEL_77;
            }
          }

          v160 = *&v277[0];
          v247 = *&v277[0];
          if (v157)
          {
            v161 = v144;
            v162 = *(v263 + 72);
            sub_22CF7B5B4(v230, *(*&v277[0] + 56) + v162 * v151);
            v163 = *v265;
            (*v265)(v235, v161);
          }

          else
          {
            *(*&v277[0] + 8 * (v151 >> 6) + 64) |= 1 << v151;
            v164 = v261;
            v165 = v151;
            v166 = v235;
            v146((v160[6] + *(v261 + 72) * v151), v235, v144);
            v167 = v144;
            v162 = *(v263 + 72);
            sub_22CF7BE5C(v230, v160[7] + v162 * v165, type metadata accessor for Assertion);
            v163 = *(v164 + 8);
            v163(v166, v167);
            v168 = v160[2];
            v155 = __OFADD__(v168, 1);
            v169 = v168 + 1;
            if (v155)
            {
              goto LABEL_76;
            }

            v160[2] = v169;
            v57 = v249;
          }

          if (v222)
          {
            sub_22CF07D60(v234, v224, type metadata accessor for Assertion);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v239 = sub_22CFCDFD8(0, v239[2] + 1, 1, v239);
            }

            v171 = v239[2];
            v170 = v239[3];
            v222 = v162;
            if (v171 >= v170 >> 1)
            {
              v239 = sub_22CFCDFD8(v170 > 1, v171 + 1, 1, v239);
            }

            sub_22CF1CB18(v234, type metadata accessor for Assertion);
            v172 = *v223;
            v173 = v236;
            (*v223)(v229, v236);
            v172(v228, v173);
            sub_22CF1CB18(v255, type metadata accessor for Assertion);
            v57 = v249;
            v174 = v271;
            v163(v249, v271);
            v175 = v239;
            v239[2] = v171 + 1;
            v48 = v174;
            sub_22CF7BE5C(v224, v175 + ((*(v263 + 80) + 32) & ~*(v263 + 80)) + v222 * v171, type metadata accessor for Assertion);
          }

          else
          {
            sub_22CF1CB18(v234, type metadata accessor for Assertion);
            v176 = *v223;
            v177 = v236;
            (*v223)(v229, v236);
            v176(v228, v177);
            sub_22CF1CB18(v255, type metadata accessor for Assertion);
            v48 = v271;
            v163(v57, v271);
          }

          v159 = v240;
          goto LABEL_45;
        }

        goto LABEL_75;
      }

      sub_22CF1CB18(v109, type metadata accessor for Assertion);
      (*v265)(v57, v48);
      (*v250)(v105, v112);
      v83 = v268;
      if (!v81)
      {
        goto LABEL_6;
      }
    }

    v268 = v103;

    v179 = *(v247 + 64);
    v257 = (v247 + 64);
    v180 = 1 << *(v247 + 32);
    v181 = -1;
    if (v180 < 64)
    {
      v181 = ~(-1 << v180);
    }

    v182 = v181 & v179;
    v256 = (v180 + 63) >> 6;
    v258 = (v102 + 56);

    v183 = 0;
    v184 = v245;
    v185 = v264;
    if (!v182)
    {
LABEL_50:
      if (v256 <= v183 + 1)
      {
        v187 = v183 + 1;
      }

      else
      {
        v187 = v256;
      }

      v188 = v187 - 1;
      while (1)
      {
        v186 = v183 + 1;
        if (__OFADD__(v183, 1))
        {
          goto LABEL_74;
        }

        if (v186 >= v256)
        {
          v182 = 0;
          v198 = 1;
          goto LABEL_58;
        }

        v182 = *&v257[8 * v186];
        ++v183;
        if (v182)
        {
          goto LABEL_57;
        }
      }
    }

    while (1)
    {
      v186 = v183;
LABEL_57:
      v189 = __clz(__rbit64(v182));
      v182 &= v182 - 1;
      v190 = v189 | (v186 << 6);
      v191 = v247;
      v192 = v261;
      v193 = v266;
      v194 = v271;
      (*(v261 + 16))(v266, *(v247 + 48) + *(v261 + 72) * v190, v271);
      v195 = v269;
      sub_22CF07D60(*(v191 + 56) + *(v263 + 72) * v190, v269, type metadata accessor for Assertion);
      v196 = *(v101 + 48);
      v197 = *(v192 + 32);
      v184 = v245;
      v197(v245, v193, v194);
      sub_22CF7BE5C(v195, v184 + v196, type metadata accessor for Assertion);
      v198 = 0;
      v188 = v186;
      v185 = v264;
LABEL_58:
      (*v258)(v184, v198, 1, v101);
      sub_22CEF0368(v184, v185, &qword_27D9F29F0, &unk_22D019678);
      if ((v268)(v185, 1, v101) == 1)
      {
        break;
      }

      v199 = v269;
      sub_22CF7BE5C(v185 + *(v101 + 48), v269, type metadata accessor for Assertion);
      v201 = v260[19];
      v200 = v260[20];
      __swift_project_boxed_opaque_existential_1(v260 + 16, v201);
      (*(v200 + 24))(v199, v201, v200);
      v185 = v264;
      sub_22CF1CB18(v199, type metadata accessor for Assertion);
      (*v265)(v185, v271);
      v183 = v188;
      if (!v182)
      {
        goto LABEL_50;
      }
    }

    v202 = v239[2];
    if (v202)
    {
      v270 = v260[6];
      v203 = v263;
      v204 = v239 + ((*(v263 + 80) + 32) & ~*(v263 + 80));
      swift_beginAccess();
      v205 = (v233 + 8);
      v269 = *(v203 + 72);
      do
      {
        v206 = v259;
        sub_22CF07D60(v204, v259, type metadata accessor for Assertion);
        v207 = v260;
        v208 = v260[19];
        v209 = v260[20];
        __swift_project_boxed_opaque_existential_1(v260 + 16, v208);
        (*(v209 + 32))(v206, v208, v209);
        sub_22CF6BE6C(v206);
        v210 = *(v270 + 16);
        os_unfair_lock_lock(v210);
        v211 = sub_22D01531C();
        v212 = v207[7];
        if (*(v212 + 16) && (v213 = sub_22CEE637C(v211), (v214 & 1) != 0))
        {
          sub_22CEE3A84(*(v212 + 56) + 40 * v213, v277);
        }

        else
        {
          v278 = 0;
          memset(v277, 0, sizeof(v277));
        }

        v215 = v262;
        os_unfair_lock_unlock(v210);
        sub_22CEEB6DC(v277, &v274, &qword_27D9F29F8, &qword_22D019688);
        if (v275)
        {
          sub_22CEF44D4(&v274, v276);
          v216 = v259;
          (*v267)(v266, v259, v271);
          sub_22CEEB6DC(v216 + v215[6], v241, &qword_27D9F2680, &qword_22D019670);
          v217 = v242;
          sub_22D01547C();
          v218 = *__swift_project_boxed_opaque_existential_1(v276, v276[3]);
          sub_22D006D8C(v217);
          (*v205)(v217, v243);
          sub_22CEEC3D8(v277, &qword_27D9F29F8, &qword_22D019688);
          sub_22CF1CB18(v216, type metadata accessor for Assertion);
          __swift_destroy_boxed_opaque_existential_1Tm(v276);
        }

        else
        {
          sub_22CEEC3D8(v277, &qword_27D9F29F8, &qword_22D019688);
          sub_22CF1CB18(v259, type metadata accessor for Assertion);
          sub_22CEEC3D8(&v274, &qword_27D9F29F8, &qword_22D019688);
        }

        v204 += v269;
        --v202;
      }

      while (v202);
    }
  }

  else
  {
LABEL_6:
    if (v82 <= (v83 + 1))
    {
      v85 = (v83 + 1);
    }

    else
    {
      v85 = v82;
    }

    while (1)
    {
      v84 = (v83 + 1);
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if (v84 >= v82)
      {
        v268 = (v85 - 1);
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
        v98 = v257;
        (*(*(v114 - 8) + 56))(v257, 1, 1, v114);
        v81 = 0;
        goto LABEL_13;
      }

      v81 = *(v244 + 8 * v84);
      ++v83;
      if (v81)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    result = sub_22D016E1C();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for Assertion()
{
  result = qword_28143FCB0;
  if (!qword_28143FCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CF06DB0(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t))
{
  v44 = a4;
  v36 = a2;
  v37 = a1;
  v5 = type metadata accessor for Assertion();
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01534C();
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20](v9, v11);
  v45 = a3;
  v46 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v40 = v13 + 16;
  v41 = v13;
  v38 = 0;
  v39 = (v13 + 8);
  while (v21)
  {
    v47 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v15 << 6);
    v24 = v46;
LABEL_11:
    v27 = v45;
    (*(v41 + 16))(v24, v45[6] + *(v41 + 72) * v23, v9);
    v28 = v23;
    v29 = v27[7] + *(v43 + 72) * v23;
    v30 = v9;
    v31 = v42;
    sub_22CF07D60(v29, v42, type metadata accessor for Assertion);
    v32 = v48;
    v33 = v44(v24, v31);
    v48 = v32;
    if (v32)
    {
      sub_22CF1CB18(v31, type metadata accessor for Assertion);
      return (*v39)(v24, v30);
    }

    v34 = v33;
    sub_22CF1CB18(v31, type metadata accessor for Assertion);
    result = (*v39)(v24, v30);
    v9 = v30;
    v21 = v47;
    if (v34)
    {
      *(v37 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
        return sub_22CF070F0(v37, v36, v38, v45);
      }
    }
  }

  v25 = v15;
  v24 = v46;
  while (1)
  {
    v15 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_22CF070F0(v37, v36, v38, v45);
    }

    v26 = v17[v15];
    ++v25;
    if (v26)
    {
      v47 = (v26 - 1) & v26;
      v23 = __clz(__rbit64(v26)) | (v15 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF070F0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Assertion();
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v61 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v53 = &v48 - v14;
  v15 = sub_22D01534C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v60 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v52 = &v48 - v22;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A08, &unk_22D0196A0);
  result = sub_22D016D3C();
  v24 = result;
  if (a2 < 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = *a1;
  }

  v26 = 0;
  v50 = v16 + 16;
  v51 = a1;
  v59 = v16 + 32;
  v27 = result + 64;
  v48 = v16;
  v49 = a4;
  while (v25)
  {
    v28 = __clz(__rbit64(v25));
    v55 = (v25 - 1) & v25;
LABEL_16:
    v31 = v28 | (v26 << 6);
    v32 = a4[6];
    v58 = *(v16 + 72);
    v33 = v52;
    (*(v16 + 16))(v52, v32 + v58 * v31, v15);
    v34 = a4[7];
    v57 = *(v54 + 72);
    v35 = v15;
    v36 = v53;
    sub_22CF07D60(v34 + v57 * v31, v53, type metadata accessor for Assertion);
    v56 = *(v16 + 32);
    v56(v60, v33, v35);
    v37 = v36;
    v15 = v35;
    sub_22CF7BE5C(v37, v61, type metadata accessor for Assertion);
    v38 = *(v24 + 40);
    sub_22CF7C4D4(qword_28143FBB0, MEMORY[0x277D4D450]);
    result = sub_22D01661C();
    v39 = -1 << *(v24 + 32);
    v40 = result & ~v39;
    v41 = v40 >> 6;
    if (((-1 << v40) & ~*(v27 + 8 * (v40 >> 6))) == 0)
    {
      v43 = 0;
      v44 = (63 - v39) >> 6;
      a1 = v51;
      while (++v41 != v44 || (v43 & 1) == 0)
      {
        v45 = v41 == v44;
        if (v41 == v44)
        {
          v41 = 0;
        }

        v43 |= v45;
        v46 = *(v27 + 8 * v41);
        if (v46 != -1)
        {
          v42 = __clz(__rbit64(~v46)) + (v41 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v42 = __clz(__rbit64((-1 << v40) & ~*(v27 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
    a1 = v51;
LABEL_26:
    *(v27 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v56((*(v24 + 48) + v42 * v58), v60, v35);
    result = sub_22CF7BE5C(v61, *(v24 + 56) + v42 * v57, type metadata accessor for Assertion);
    ++*(v24 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v16 = v48;
    a4 = v49;
    v25 = v55;
    if (!a3)
    {
      return v24;
    }
  }

  v29 = v26;
  while (1)
  {
    v26 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v26 >= a2)
    {
      return v24;
    }

    v30 = a1[v26];
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v55 = (v30 - 1) & v30;
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

uint64_t sub_22CF07580(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22D01534C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_22D0154EC();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
    return result;
  }

  v17 = sub_22D01430C();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_7;
  }

  v18 = sub_22D01555C();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[10];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_22CF077A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22D01534C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_22D0154EC();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[7] + 8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_22D01430C();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[8];
      goto LABEL_7;
    }

    v18 = sub_22D01555C();
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[10];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_22CF079BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v37 = a3;
  v4 = sub_22D01502C();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D014EFC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D014AFC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22D0149CC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  sub_22D014DBC();
  sub_22CF07CF8(v36, v13, MEMORY[0x277CB9790]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v15 + 104))(v19, *MEMORY[0x277CB9578], v14);
    sub_22CF07DC8(v13);
  }

  else
  {
    v26 = v34;
    v27 = v35;
    v28 = (*(v34 + 32))(v8, v13, v35);
    v36 = v33;
    v29 = *(v33[1] + 72);
    MEMORY[0x28223BE20](v28, v30);
    v33[-2] = v31;
    v33[-1] = v8;
    sub_22D01699C();
    (*(v26 + 8))(v8, v27);
  }

  sub_22D01498C();
  sub_22D014E0C();
  return (*(v21 + 8))(v25, v20);
}

uint64_t sub_22CF07CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF07D60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF07DC8(uint64_t a1)
{
  v2 = sub_22D014EFC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CF07E58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(a1 + 216);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_22CF07E9C()
{
  v1 = *(v0 + 40);
  type metadata accessor for ActivityState(0);
  return sub_22D01699C();
}

uint64_t sub_22CF07F44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22D01430C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22CF08030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  v266 = a8;
  v242 = a7;
  v255 = a6;
  v254 = a5;
  v263 = a4;
  v302 = a3;
  v272 = a2;
  v244 = a9;
  v248 = sub_22D0149AC();
  v259 = *(v248 - 8);
  v14 = v259[8];
  v16 = MEMORY[0x28223BE20](v248, v15);
  v237 = &v233 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v243 = &v233 - v19;
  v20 = sub_22D014EFC();
  v238 = *(v20 - 8);
  v21 = *(v238 + 64);
  v23 = MEMORY[0x28223BE20](v20 - 8, v22);
  v233 = &v233 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v235 = &v233 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v258 = &v233 - v30;
  v271 = sub_22D01502C();
  v252 = *(v271 - 8);
  v31 = *(v252 + 64);
  MEMORY[0x28223BE20](v271, v32);
  v34 = &v233 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Activity();
  v36 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v35, v37);
  v40 = (&v233 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v38, v41);
  v253 = &v233 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8, v45);
  v262 = &v233 - v46;
  v47 = sub_22D01461C();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8, v49);
  v261 = &v233 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22D0146BC();
  v276 = *(v51 - 8);
  v52 = v276[8];
  v54 = MEMORY[0x28223BE20](v51, v53);
  v270 = &v233 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v56);
  v273 = &v233 - v57;
  v278 = sub_22D014E2C();
  v267 = *(v278 - 8);
  v58 = *(v267 + 64);
  v60 = MEMORY[0x28223BE20](v278, v59);
  v269 = &v233 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v60, v62);
  v236 = &v233 - v64;
  MEMORY[0x28223BE20](v63, v65);
  v234 = &v233 - v66;
  v284 = sub_22D0161DC();
  v67 = *(v284 - 1);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v284, v69);
  v283 = (&v233 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v297 = sub_22D01459C();
  v71 = *(v297 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v297, v73);
  v287 = &v233 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2358, &unk_22D018980);
  v76 = *(*(v75 - 8) + 64);
  v78 = MEMORY[0x28223BE20](v75 - 8, v77);
  v299 = (&v233 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v78, v80);
  v265 = &v233 - v81;
  v296 = sub_22D0145EC();
  v82 = *(v296 - 8);
  v83 = *(v82 + 64);
  v85 = MEMORY[0x28223BE20](v296, v84);
  v300 = (&v233 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v85, v87);
  v251 = &v233 - v88;
  v285 = sub_22D01430C();
  v286 = *(v285 - 8);
  isa = v286[8].isa;
  v91 = MEMORY[0x28223BE20](v285, v90);
  v246 = &v233 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = MEMORY[0x28223BE20](v91, v93);
  v268 = &v233 - v95;
  v97 = MEMORY[0x28223BE20](v94, v96);
  v260 = &v233 - v98;
  v100 = MEMORY[0x28223BE20](v97, v99);
  v239 = &v233 - v101;
  v103 = MEMORY[0x28223BE20](v100, v102);
  v240 = &v233 - v104;
  v106 = MEMORY[0x28223BE20](v103, v105);
  v257 = &v233 - v107;
  MEMORY[0x28223BE20](v106, v108);
  v274 = (&v233 - v109);
  swift_beginAccess();
  v245 = a1;
  v110 = a1[2];
  v111 = *(v110 + 16);
  v275 = v51;
  v298 = v111;
  v249 = v35;
  v247 = v40;
  v277 = v34;
  if (!v111)
  {
LABEL_19:
    v127 = v265;
    sub_22CF09E84(v302, v265);
    v128 = v296;
    if ((*(v82 + 48))(v127, 1, v296) == 1)
    {
      v129 = v34;
      sub_22CEEC3D8(v127, &unk_27D9F2358, &unk_22D018980);
LABEL_31:
      v161 = v273;
      v162 = v274;
      v134 = v272;
      sub_22D014E1C();
      goto LABEL_32;
    }

    v130 = v251;
    (*(v82 + 32))(v251, v127, v128);
    v131 = sub_22D01458C();
    v132 = v285;
    if ((v131 & 1) == 0)
    {
      v129 = v34;
      (*(v82 + 8))(v130, v128);
      goto LABEL_31;
    }

    v133 = v257;
    v134 = v272;
    sub_22D014E1C();
    v135 = v240;
    sub_22D0142DC();
    v136 = sub_22D01427C();
    v137 = v286[1].isa;
    v137(v135, v132);
    v137(v133, v132);
    if ((v136 & 1) == 0)
    {
      v162 = v274;
      sub_22D014E1C();
      (*(v82 + 8))(v251, v296);
      v161 = v273;
      v129 = v277;
      goto LABEL_32;
    }

    v138 = v267;
    if (qword_28143EEA0 != -1)
    {
      swift_once();
    }

    v139 = off_28143EEA8;
    v140 = *(*(off_28143EEA8 + 4) + 16);
    os_unfair_lock_lock(v140);
    v141 = v139[3];
    os_unfair_lock_unlock(v140);
    if (v141 < 0.0)
    {
      __break(1u);
    }

    else if ((*&v141 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      sub_22CFCE638(0x20000000000001uLL);
      v142 = v257;
      v134 = v272;
      sub_22D014E1C();
      v140 = v274;
      sub_22D01425C();
      v137(v142, v132);
      if (qword_28143FB58 == -1)
      {
LABEL_28:
        v143 = sub_22D01637C();
        __swift_project_value_buffer(v143, qword_281444498);
        v144 = v236;
        (*(v138 + 16))(v236, v134, v278);
        v145 = v239;
        (v286[2].isa)(v239, v140, v132);
        v146 = sub_22D01636C();
        v147 = sub_22D01690C();
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          v301 = swift_slowAlloc();
          v303 = v301;
          *v148 = 136446722;
          v300 = v146;
          v149 = v257;
          LODWORD(v299) = v147;
          sub_22D014E1C();
          sub_22CEF88D4(&unk_281443A20, MEMORY[0x277CC9578]);
          v150 = sub_22D016DEC();
          v241 = v82;
          v152 = v151;
          v137(v149, v132);
          (*(v267 + 8))(v144, v278);
          v153 = sub_22CEEE31C(v150, v152, &v303);

          *(v148 + 4) = v153;
          *(v148 + 12) = 2082;
          v154 = v239;
          v155 = sub_22D016DEC();
          v157 = v156;
          v137(v154, v132);
          v158 = sub_22CEEE31C(v155, v157, &v303);

          *(v148 + 14) = v158;
          *(v148 + 22) = 2050;
          *(v148 + 24) = v141;
          v159 = v300;
          _os_log_impl(&dword_22CEE1000, v300, v299, "Adjusted start date from %{public}s to %{public}s with max jitter %{public}f", v148, 0x20u);
          v160 = v301;
          swift_arrayDestroy();
          MEMORY[0x2318C6860](v160, -1, -1);
          MEMORY[0x2318C6860](v148, -1, -1);

          (*(v241 + 8))(v251, v296);
        }

        else
        {

          v137(v145, v132);
          (*(v267 + 8))(v144, v278);
          (*(v82 + 8))(v251, v296);
        }

        v161 = v273;
        v129 = v277;
        v162 = v274;
        v134 = v272;
LABEL_32:
        sub_22D0142FC();
        sub_22D014DCC();
        sub_22CEEB6DC(v263, v262, &qword_27D9F2308, &unk_22D018950);
        v163 = v264;
        sub_22D0146AC();
        if (v163)
        {
          return (v286[1].isa)(v162, v285);
        }

        LODWORD(v296) = a11;
        v297 = 0;
        v298 = a10;
        v293 = *(v267 + 16);
        (v293)(v269, v134, v278);
        v291 = *(v252 + 16);
        v291(v129, v242, v271);
        v165 = v276[2];
        v294 = (v276 + 2);
        v292 = v165;
        v165(v270, v161, v275);
        v299 = v286[2].isa;
        v300 = v286 + 2;
        v299(v268, v162, v285);
        v166 = sub_22D01486C();
        v167 = *(*(v166 - 8) + 56);
        v167(v258, 1, 1, v166);
        v168 = v259[13];
        v169 = v243;
        LODWORD(v287) = *MEMORY[0x277CB94E0];
        v170 = v248;
        v288 = v259 + 13;
        v284 = v168;
        v168(v243);
        if (*(v266 + 16) && (v171 = sub_22CEFF728(v169), (v172 & 1) != 0))
        {
          v173 = v235;
          sub_22CEFEA98(*(v266 + 56) + *(v238 + 72) * v171, v235, MEMORY[0x277CB9790]);
          v289 = v259[1];
          v289(v169, v170);
          v295 = sub_22CF0A190();
          v301 = v174;
          sub_22CF0A5FC(v173, MEMORY[0x277CB9790]);
        }

        else
        {
          v289 = v259[1];
          v289(v169, v170);
          v295 = 0;
          v301 = 0;
        }

        v175 = v246;
        sub_22D0142DC();
        v176 = v249;
        v290 = v249[15];
        v177 = v247;
        v167(v247 + v290, 1, 1, v166);
        v178 = v255;
        *v177 = v254;
        v177[1] = v178;
        v179 = (v177 + v176[13]);
        *v179 = 0;
        v179[1] = 0;
        (v293)(v177 + v176[5], v269, v278);
        v291(v177 + v176[6], v277, v271);
        *(v177 + v176[9]) = v302;
        v180 = v266;
        *(v177 + v176[7]) = v266;
        *(v177 + v176[8]) = v298;
        v292(v177 + v176[14], v270, v275);
        v181 = v285;
        v182 = v299;
        v299(v177 + v176[10], v268, v285);
        v182(v177 + v176[11], v175, v181);
        v183 = v180;
        v184 = v278;
        *(v177 + v176[12]) = v296 & 1;

        v185 = v258;
        sub_22CF0A6BC(v258, v177 + v290);
        v186 = v175;
        v187 = v295;
        if (!v301)
        {
          v188 = v237;
          v189 = v248;
          (v284)(v237, v287, v248);
          if (*(v183 + 16) && (v190 = sub_22CEFF728(v188), (v191 & 1) != 0))
          {
            v192 = v233;
            sub_22CEFEA98(*(v266 + 56) + *(v238 + 72) * v190, v233, MEMORY[0x277CB9790]);
            v289(v188, v189);
            v187 = sub_22CF0A190();
            v301 = v193;
            sub_22CF0A5FC(v192, MEMORY[0x277CB9790]);
          }

          else
          {
            v289(v188, v189);
            v187 = 0;
            v301 = 0;
          }

          v176 = v249;
          v184 = v278;
          v181 = v285;
          v185 = v258;
          v177 = v247;
          v186 = v246;
        }

        v298 = a13;
        v302 = a12;
        v194 = v286 + 1;
        v113 = v286[1].isa;
        (v113)(v186, v181);
        sub_22CEEC3D8(v185, &qword_27D9F26E0, &unk_22D018F80);
        (v113)(v268, v181);
        v71 = v276[1];
        ++v276;
        (v71)(v270, v275);
        (*(v252 + 8))(v277, v271);
        (*(v267 + 8))(v269, v184);
        v195 = (v177 + v176[16]);
        v196 = v301;
        *v195 = v187;
        v195[1] = v196;
        v197 = v253;
        sub_22CF0A72C(v177, v253, type metadata accessor for Activity);
        v198 = v176[10];
        v199 = v257;
        sub_22D0142DC();
        sub_22CEF88D4(&qword_281443A30, MEMORY[0x277CC9578]);
        LOBYTE(v198) = sub_22D01663C();
        v286 = v194;
        (v113)(v199, v181);
        v200 = v176[11];
        v201 = type metadata accessor for ActivityState(0);
        v202 = v244;
        v299((v244 + *(v201 + 28)), (v197 + v200), v181);
        v114 = v254;
        v40 = v255;
        *v202 = v254;
        *(v202 + 8) = v40;
        *(v202 + 16) = v198 & 1;
        *(v202 + 24) = xmmword_22D01AFB0;
        v203 = qword_28143FB58;

        if (v203 != -1)
        {
LABEL_60:
          swift_once();
        }

        v204 = sub_22D01637C();
        __swift_project_value_buffer(v204, qword_281444498);

        v205 = sub_22D01636C();
        v206 = sub_22D01690C();

        if (os_log_type_enabled(v205, v206))
        {
          v207 = swift_slowAlloc();
          v208 = swift_slowAlloc();
          v209 = v114;
          v210 = v71;
          v211 = v208;
          v303 = v208;
          *v207 = 136446210;
          *(v207 + 4) = sub_22CEEE31C(v209, v40, &v303);
          _os_log_impl(&dword_22CEE1000, v205, v206, "Created activity: %{public}s", v207, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v211);
          v212 = v211;
          v71 = v210;
          MEMORY[0x2318C6860](v212, -1, -1);
          MEMORY[0x2318C6860](v207, -1, -1);
        }

        v213 = v275;
        v214 = v302;
        ObjectType = swift_getObjectType();
        v216 = v253;
        sub_22CF0A7FC(v253, v214, 0, 0, 0, v245, ObjectType, *(v298 + 8));
        sub_22CF0A5FC(v216, type metadata accessor for Activity);
        (v71)(v273, v213);
        return (v113)(v274, v285);
      }

LABEL_63:
      swift_once();
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_63;
  }

  v301 = (v82 + 48);
  v295 = (v82 + 32);
  v293 = (v71 + 88);
  LODWORD(v292) = *MEMORY[0x277CB9218];
  v282 = *MEMORY[0x277CB9210];
  v250 = *MEMORY[0x277CB9220];
  v241 = v82;
  v294 = (v82 + 8);
  v256 = (v71 + 8);
  v281 = (v71 + 96);
  v280 = (v67 + 8);

  v112 = 0;
  v113 = 32;
  v114 = v296;
  v115 = v287;
  v117 = v298;
  v116 = v299;
  v279 = v110;
  while (1)
  {
    if (v112 >= *(v110 + 16))
    {
      __break(1u);
      goto LABEL_60;
    }

    v71 = *(v110 + v113);
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v118 = v71 == 0;
    }

    else
    {
      v118 = 1;
    }

    if (v118)
    {
      goto LABEL_4;
    }

    swift_unknownObjectRetain_n();
    sub_22CF09E84(v302, v116);
    v40 = v114;
    if ((*v301)(v116, 1, v114) == 1)
    {
      swift_unknownObjectRelease_n();
      sub_22CEEC3D8(v116, &unk_27D9F2358, &unk_22D018980);
      goto LABEL_4;
    }

    v119 = v300;
    (*v295)(v300, v116, v114);
    sub_22D0145DC();
    v120 = v297;
    v121 = (*v293)(v115, v297);
    if (v121 != v292)
    {
      break;
    }

    (*v281)(v115, v120);
    v122 = *v115;
    v123 = v115[1];
    v124 = v115[2];
    v125 = v115[3];
    v289 = *(v71 + 72);
    v290 = v122;
    v291 = *(v71 + 80);
    v288 = __swift_project_boxed_opaque_existential_1((v71 + 48), v289);
    sub_22D0145BC();
    v40 = v283;
    sub_22D0161EC();
    v126 = v296;
    LOBYTE(v125) = sub_22D015F4C();

    (*v280)(v40, v284);
    (*v294)(v119, v126);
    if (v125)
    {

      goto LABEL_53;
    }

    v114 = v126;
    swift_unknownObjectRelease_n();
    v115 = v287;
    v117 = v298;
    v116 = v299;
    v110 = v279;
LABEL_4:
    ++v112;
    v113 += 16;
    if (v117 == v112)
    {

      v34 = v277;
      v82 = v241;
      goto LABEL_19;
    }
  }

  v117 = v298;
  if (v121 == v282)
  {
    swift_unknownObjectRelease_n();
    (*v294)(v300, v114);
    (*v256)(v115, v120);
    v116 = v299;
    goto LABEL_4;
  }

  v116 = v299;
  if (v121 == v250)
  {
    swift_unknownObjectRelease_n();
    (*v294)(v300, v114);
    goto LABEL_4;
  }

  (*v294)(v300, v114);
  (*v256)(v115, v297);
LABEL_53:
  v217 = v278;
  v218 = v267;
  v219 = v272;
  v220 = v234;
  if (qword_28143FB58 != -1)
  {
    swift_once();
  }

  v221 = sub_22D01637C();
  __swift_project_value_buffer(v221, qword_281444498);
  (*(v218 + 16))(v220, v219, v217);
  v222 = sub_22D01636C();
  v223 = sub_22D0168EC();
  if (os_log_type_enabled(v222, v223))
  {
    v224 = swift_slowAlloc();
    v225 = v218;
    v226 = swift_slowAlloc();
    v303 = v226;
    *v224 = 136380675;
    sub_22CEF88D4(&qword_27D9F34A0, MEMORY[0x277CB9678]);
    v227 = sub_22D016DEC();
    v228 = v217;
    v230 = v229;
    (*(v225 + 8))(v220, v228);
    v231 = sub_22CEEE31C(v227, v230, &v303);

    *(v224 + 4) = v231;
    _os_log_impl(&dword_22CEE1000, v222, v223, "Activity request is invalid: %{private}s", v224, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v226);
    MEMORY[0x2318C6860](v226, -1, -1);
    MEMORY[0x2318C6860](v224, -1, -1);
  }

  else
  {

    (*(v218 + 8))(v220, v217);
  }

  sub_22CF3D1BC();
  swift_allocError();
  *v232 = 1;
  swift_willThrow();
  return swift_unknownObjectRelease_n();
}

uint64_t sub_22CF09E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_22D01483C();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v32 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v32 - v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = *(v34 + 16);
    v21 = (v34 + 8);
    v22 = a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v23 = *(v34 + 72);
    while (1)
    {
      v20(v11, v22, v3);
      if (sub_22D0147BC())
      {
        break;
      }

      (*v21)(v11, v3);
      v22 += v23;
      if (!--v19)
      {
        goto LABEL_9;
      }
    }

    v24 = v34;
    v25 = *(v34 + 32);
    v25(v15, v11, v3);
    v25(v18, v15, v3);
    v26 = v33;
    v25(v33, v18, v3);
    if ((*(v24 + 88))(v26, v3) == *MEMORY[0x277CB9320])
    {
      (*(v24 + 96))(v26, v3);
      v27 = sub_22D0145EC();
      v28 = *(v27 - 8);
      v29 = v35;
      (*(v28 + 32))(v35, v26, v27);
      return (*(v28 + 56))(v29, 0, 1, v27);
    }

    (*v21)(v26, v3);
  }

LABEL_9:
  v31 = sub_22D0145EC();
  return (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
}

uint64_t sub_22CF0A190()
{
  v1 = v0;
  v2 = sub_22D01502C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22D014EFC();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = MEMORY[0x28223BE20](v11, v12);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v25[-v15];
  sub_22CF0A598(v1, &v25[-v15]);
  (*(v3 + 32))(v7, v16, v2);
  v17 = sub_22D014F9C();
  v19 = v18;
  v26 = *(v3 + 8);
  v26(v7, v2);
  v20 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v21 = sub_22CEE8CD0(v17, v19, 1);
  v22 = [v21 localizedName];

  v23 = sub_22D01667C();
  return v23;
}

uint64_t sub_22CF0A598(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D014EFC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF0A5FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CF0A65C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CF0A6BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF0A72C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF0A794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF0A7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v93 = a3;
  v94 = a8;
  v95 = a5;
  v96 = a4;
  v97 = a2;
  v92 = type metadata accessor for ActivityManagerEvent(0);
  v10 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92, v11);
  v91 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v99 = (&v89 - v16);
  v17 = type metadata accessor for Activity();
  v98 = *(v17 - 8);
  v18 = *(v98 + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v90 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v89 - v23;
  v25 = sub_22D01430C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22D01659C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = (&v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = a6;
  v37 = a6[5];
  *v36 = v37;
  (*(v32 + 104))(v36, *MEMORY[0x277D85200], v31);
  v38 = v37;
  LOBYTE(v37) = sub_22D0165BC();
  v40 = *(v32 + 8);
  v39 = v32 + 8;
  v40(v36, v31);
  if ((v37 & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_4;
  }

  v41 = *(v17 + 40);
  sub_22D0142DC();
  sub_22CEF88D4(&qword_281443A30, MEMORY[0x277CC9578]);
  v42 = sub_22D01663C();
  (*(v26 + 8))(v30, v25);
  v39 = a1;
  v36 = v17;
  if ((v42 & 1) == 0)
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v53 = sub_22D01637C();
    __swift_project_value_buffer(v53, qword_281444498);
    v54 = v90;
    sub_22CEFEA98(a1, v90, type metadata accessor for Activity);
    v55 = sub_22D01636C();
    v56 = sub_22D01690C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v101[0] = v58;
      *v57 = 136446210;
      v59 = sub_22CF0B174();
      v60 = v36;
      v62 = v61;
      sub_22CF0A5FC(v54, type metadata accessor for Activity);
      v63 = sub_22CEEE31C(v59, v62, v101);
      v36 = v60;

      *(v57 + 4) = v63;
      _os_log_impl(&dword_22CEE1000, v55, v56, "Pending activity: %{public}s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x2318C6860](v58, -1, -1);
      MEMORY[0x2318C6860](v57, -1, -1);
    }

    else
    {

      sub_22CF0A5FC(v54, type metadata accessor for Activity);
    }

    v64 = 0;
    goto LABEL_14;
  }

  if (qword_28143FB58 != -1)
  {
    goto LABEL_28;
  }

LABEL_4:
  v43 = sub_22D01637C();
  __swift_project_value_buffer(v43, qword_281444498);
  sub_22CEFEA98(v39, v24, type metadata accessor for Activity);
  v44 = sub_22D01636C();
  v45 = sub_22D01690C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v101[0] = v47;
    *v46 = 136446210;
    v48 = sub_22CF0B174();
    v49 = v36;
    v51 = v50;
    sub_22CF0A5FC(v24, type metadata accessor for Activity);
    v52 = sub_22CEEE31C(v48, v51, v101);
    v36 = v49;

    *(v46 + 4) = v52;
    _os_log_impl(&dword_22CEE1000, v44, v45, "Starting activity: %{public}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x2318C6860](v47, -1, -1);
    MEMORY[0x2318C6860](v46, -1, -1);
  }

  else
  {

    sub_22CF0A5FC(v24, type metadata accessor for Activity);
  }

  v64 = 1;
LABEL_14:
  v66 = v98;
  v65 = v99;
  v67 = *v39;
  v68 = *(v39 + 8);
  v99 = v39;
  sub_22CEFEA98(v39, v65, type metadata accessor for Activity);
  (*(v66 + 56))(v65, 0, 1, v36);
  v39 = v100;
  swift_beginAccess();

  sub_22CF0BC5C(v65, v67, v68);
  swift_endAccess();
  swift_beginAccess();
  v69 = *(v39 + 16);
  v36 = *(v69 + 16);

  v70 = 0;
  v24 = 0;
  v71 = MEMORY[0x277D84F90];
LABEL_15:
  v72 = 16 * v70 + 32;
  while (v36 != v70)
  {
    if (v70 >= *(v69 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    ++v70;
    v39 = v72 + 16;
    v73 = *(v69 + v72);
    swift_getObjectType();
    v74 = swift_conformsToProtocol2();
    v72 = v39;
    if (v74)
    {
      v72 = v39;
      if (v73)
      {
        v75 = v74;
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_22CF1B8BC(0, v71[2] + 1, 1, v71, &qword_27D9F34A8, &qword_22D01B8E0, &qword_27D9F34B0, &unk_22D01B8E8);
        }

        v39 = v71[2];
        v76 = v71[3];
        if (v39 >= v76 >> 1)
        {
          v71 = sub_22CF1B8BC((v76 > 1), v39 + 1, 1, v71, &qword_27D9F34A8, &qword_22D01B8E0, &qword_27D9F34B0, &unk_22D01B8E8);
        }

        v71[2] = v39 + 1;
        v77 = &v71[2 * v39];
        v77[4] = v73;
        v77[5] = v75;
        goto LABEL_15;
      }
    }
  }

  v78 = v91;
  sub_22CEFEA98(v99, v91, type metadata accessor for Activity);
  v79 = v92;
  *(v78 + *(v92 + 20)) = v64;
  v80 = (v78 + v79[6]);
  v81 = v96;
  v82 = v93;
  v83 = v94;
  *v80 = v97;
  v80[1] = v83;
  v84 = (v78 + v79[7]);
  *v84 = v82;
  v84[1] = v81;
  *(v78 + v79[8]) = v95 & 1;
  type metadata accessor for ActivityManager.QueueActivityManager();
  v85 = swift_allocObject();
  *(v85 + 16) = v100;
  v87 = MEMORY[0x28223BE20](v85, v86);
  *(&v89 - 2) = v78;
  *(&v89 - 1) = v87;

  swift_unknownObjectRetain();
  sub_22CF1BA14(sub_22CF1A060, (&v89 - 4), v71);

  return sub_22CF0A5FC(v78, type metadata accessor for ActivityManagerEvent);
}

uint64_t sub_22CF0B174()
{
  v1 = v0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v2 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33, v3);
  v5 = &v32 - v4;
  v6 = sub_22D01430C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_22D016C6C();
  MEMORY[0x2318C5860](540697705, 0xE400000000000000);
  MEMORY[0x2318C5860](*v1, v1[1]);
  MEMORY[0x2318C5860](0x657461657263203BLL, 0xEB00000000203A64);
  v12 = type metadata accessor for Activity();
  v13 = v12[11];
  sub_22CF0B598(&unk_281443A20, MEMORY[0x277CC9578]);
  v14 = sub_22D016DEC();
  MEMORY[0x2318C5860](v14);

  MEMORY[0x2318C5860](0x657472617473203BLL, 0xEB00000000203A64);
  v15 = v1 + v12[10];
  v16 = sub_22D016DEC();
  MEMORY[0x2318C5860](v16);

  MEMORY[0x2318C5860](0x3A6574617473203BLL, 0xE900000000000020);
  v17 = sub_22CF0B5E0();
  v18 = 0xE700000000000000;
  v19 = 0x676E69646E6570;
  if (v17 == 2)
  {
    v19 = 0x656C617473;
    v18 = 0xE500000000000000;
  }

  v20 = 0x657669746361;
  if (v17)
  {
    v20 = 0x6569626D6F7ALL;
  }

  if (v17 <= 1)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  if (v17 <= 1)
  {
    v22 = 0xE600000000000000;
  }

  else
  {
    v22 = v18;
  }

  MEMORY[0x2318C5860](v21, v22);

  MEMORY[0x2318C5860](0x656369766564203BLL, 0xEC000000203A4449);
  v34 = *(v1 + v12[13]);
  sub_22D016CEC();
  MEMORY[0x2318C5860](0xD000000000000012, 0x800000022D022EF0);
  v23 = *(v1 + v12[9]);
  v24 = sub_22D01483C();
  v25 = MEMORY[0x2318C5950](v23, v24);
  MEMORY[0x2318C5860](v25);

  MEMORY[0x2318C5860](0x70557473616C203BLL, 0xEF203A6465746164);
  v26 = v1 + v12[14];
  sub_22D01469C();
  v27 = sub_22D016DEC();
  v29 = v28;
  (*(v7 + 8))(v11, v6);
  MEMORY[0x2318C5860](v27, v29);

  MEMORY[0x2318C5860](0xD000000000000011, 0x800000022D022F10);
  sub_22CF0B9D0(v1 + v12[15], v5);
  v30 = sub_22D01669C();
  MEMORY[0x2318C5860](v30);

  return v35;
}

uint64_t sub_22CF0B598(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CF0B5E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v39 - v4;
  v6 = sub_22D01461C();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v39 - v14;
  v16 = sub_22D01430C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v41 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v39 - v23;
  v25 = type metadata accessor for Activity();
  v26 = v25[10];
  sub_22D0142DC();
  sub_22CF0B598(&qword_281443A30, MEMORY[0x277CC9578]);
  v27 = v0;
  v28 = sub_22D01663C();
  v42 = v17;
  v29 = *(v17 + 8);
  v29(v24, v16);
  if ((v28 & 1) == 0)
  {
    return 3;
  }

  v40 = v5;
  sub_22CF0B9D0(v27 + v25[15], v15);
  v30 = sub_22D01486C();
  v31 = 1;
  v32 = (*(*(v30 - 8) + 48))(v15, 1, v30);
  sub_22CEEC3D8(v15, &qword_27D9F26E0, &unk_22D018F80);
  if (v32 == 1)
  {
    v33 = v27 + v25[14];
    sub_22D01467C();
    v34 = v40;
    sub_22D01460C();
    (*(v43 + 8))(v10, v44);
    v35 = v42;
    if ((*(v42 + 48))(v34, 1, v16) == 1)
    {
      sub_22CEEC3D8(v34, &qword_27D9F2648, &unk_22D018BC0);
      return 0;
    }

    v36 = v41;
    (*(v35 + 32))(v41, v34, v16);
    sub_22D0142DC();
    v37 = sub_22D01428C();
    v29(v24, v16);
    v29(v36, v16);
    if ((v37 & 1) == 0)
    {
      return 0;
    }

    return 2;
  }

  return v31;
}

uint64_t sub_22CF0B9D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF0BA54(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_22D014E2C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_22D01502C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = sub_22D01430C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v14 = sub_22D0146BC();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[14];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[15];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_22CF0BC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for Activity();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v17 + 48))(a1, 1) == 1)
  {
    sub_22CEEC3D8(a1, &qword_27D9F3810, &unk_22D018FA0);
    sub_22CF1E6E8(a2, a3, v11);

    return sub_22CEEC3D8(v11, &qword_27D9F3810, &unk_22D018FA0);
  }

  else
  {
    sub_22CEF0B08(a1, v16, type metadata accessor for Activity);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_22CFBE338(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

uint64_t sub_22CF0BE44(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_22D014E2C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_22D01502C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_13;
  }

  v13 = sub_22D01430C();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v14 = sub_22D0146BC();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[14];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[15];

  return v17(v18, a2, v16);
}

uint64_t sub_22CF0C04C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_22CEF0B08(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

void sub_22CF0C0F8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Activity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v9 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v34 - v16;
  v34 = a1;
  v18 = *(a1 + 16);
  v20 = *a2;
  v19 = a2[1];
  sub_22CF0F9C8(a2, &v34 - v16);
  (*(v5 + 56))(v17, 0, 1, v4);
  swift_beginAccess();

  sub_22CF0BC5C(v17, v20, v19);
  swift_endAccess();
  v21 = *(v4 + 20);
  if (sub_22D014CFC() & 1) != 0 || (sub_22D014D1C())
  {
    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814443C0);
    sub_22CF0F9C8(a2, v9);
    v23 = sub_22D01636C();
    v24 = sub_22D01690C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 136446210;
      v27 = *v9;
      v28 = v9[1];

      sub_22CF0C71C(v9);
      v29 = sub_22CEEE31C(v27, v28, &v35);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_22CEE1000, v23, v24, "Not persisting ephemeral activity %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    else
    {

      sub_22CF0C71C(v9);
    }
  }

  else
  {
    sub_22D01566C();
    v30 = v34;
    v31 = *(v34 + 24);
    sub_22CF0F9C8(a2, v12);
    v32 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v30;
    sub_22CFA8FC0(v12, v33 + v32);

    sub_22D01565C();
    sub_22D01564C();
  }
}

uint64_t sub_22CF0C490()
{
  v1 = type metadata accessor for Activity();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = v1[5];
  v9 = sub_22D014E2C();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[6];
  v11 = sub_22D01502C();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = *(v0 + v3 + v1[7]);

  v13 = *(v0 + v3 + v1[8]);

  v14 = *(v0 + v3 + v1[9]);

  v15 = v1[10];
  v16 = sub_22D01430C();
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v3 + v15, v16);
  v17(v0 + v3 + v1[11], v16);
  v18 = *(v0 + v3 + v1[13] + 8);

  v19 = v1[14];
  v20 = sub_22D0146BC();
  (*(*(v20 - 8) + 8))(v0 + v3 + v19, v20);
  v21 = v1[15];
  v22 = sub_22D01486C();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v0 + v3 + v21, 1, v22))
  {
    (*(v23 + 8))(v6 + v21, v22);
  }

  v24 = *(v6 + v1[16] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF0C71C(uint64_t a1)
{
  v2 = type metadata accessor for Activity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CF0C778(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityManagerEvent(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for Activity();
  if (!*(a1 + *(result + 52) + 8))
  {
    v12 = *(a1 + *(v6 + 20));
    if (v12 < 2)
    {
      ObjectType = swift_getObjectType();
      v14 = isEscapingClosureAtFileLocation;
      (*(a3 + 32))(isEscapingClosureAtFileLocation, &off_28402A280, *a1, a1[1], ObjectType, a3);
      v15 = *(isEscapingClosureAtFileLocation + 16);
      sub_22CF0CB84(a1, &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityManagerEvent);
      v16 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v14;
      sub_22CF0FF70(&aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ActivityManagerEvent);
      v10 = swift_allocObject();
      *(v10 + 2) = sub_22CF1B428;
      *(v10 + 3) = v17;
      v29 = sub_22CEF4034;
      v30 = v10;
      aBlock = MEMORY[0x277D85DD0];
      v26 = 1107296256;
      v27 = sub_22CEF3C20;
      v28 = &block_descriptor_56_0;
      v18 = _Block_copy(&aBlock);
      a1 = v30;

      dispatch_sync(v15, v18);
      _Block_release(v18);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    if (v12 == 4)
    {
      v19 = *(isEscapingClosureAtFileLocation + 16);
      sub_22CF0CB84(a1, v10, type metadata accessor for ActivityManagerEvent);
      v20 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = isEscapingClosureAtFileLocation;
      sub_22CF0FF70(v10, v21 + v20, type metadata accessor for ActivityManagerEvent);
      v22 = swift_allocObject();
      *(v22 + 16) = sub_22CF7FA78;
      *(v22 + 24) = v21;
      v29 = sub_22CEF4034;
      v30 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v26 = 1107296256;
      v27 = sub_22CEF3C20;
      v28 = &block_descriptor_46;
      v23 = _Block_copy(&aBlock);

      dispatch_sync(v19, v23);
      _Block_release(v23);
      v24 = swift_isEscapingClosureAtFileLocation();

      if (v24)
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_22CF0CB84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF0CBEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF0CC54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF0CCBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF0CD24(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ActivityManagerEvent(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_22CF0CD9C(uint64_t *a1)
{
  v2 = type metadata accessor for Assertion();
  v3 = *(*(v2 - 1) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v63 = &v58 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v58 - v11;
  v13 = sub_22D01534C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D0154EC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1 + *(type metadata accessor for Activity() + 20);
  result = sub_22D014D1C();
  if (result)
  {
    getpid();
    (*(v20 + 104))(v24, *MEMORY[0x277D4D4A8], v19);
    sub_22D01532C();
    sub_22D01533C();
    v60 = v14;
    v61 = v13;
    v27 = *(v14 + 16);
    v58 = v18;
    v27(v12, v18, v13);
    v28 = &v12[v2[10]];
    v29 = *a1;
    v30 = a1[1];
    *v28 = v29;
    *(v28 + 1) = v30;
    v31 = *MEMORY[0x277D4D4D8];
    v32 = sub_22D01555C();
    (*(*(v32 - 8) + 104))(v28, v31, v32);
    v33 = *(v20 + 16);
    v34 = &v12[v2[5]];
    v59 = v19;
    v33(v34, v24, v19);
    v35 = v2[6];
    v36 = sub_22D01539C();
    (*(*(v36 - 8) + 56))(&v12[v35], 1, 1, v36);
    v37 = v2[8];

    sub_22D0142DC();
    v38 = &v12[v2[7]];
    *v38 = 0xD00000000000001DLL;
    *(v38 + 1) = 0x800000022D01F720;
    v39 = &v12[v2[9]];
    *v39 = 0;
    v39[8] = 1;
    v40 = v64[19];
    v41 = v64[20];
    __swift_project_boxed_opaque_existential_1(v64 + 16, v40);
    (*(v41 + 24))(v12, v40, v41);
    v42 = v24;
    if (qword_28143FAF0 != -1)
    {
      swift_once();
    }

    v43 = sub_22D01637C();
    __swift_project_value_buffer(v43, qword_2814443A8);
    v44 = v63;
    sub_22CF07D60(v12, v63, type metadata accessor for Assertion);
    v45 = sub_22D01636C();
    v46 = sub_22D01690C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v65 = v48;
      *v47 = 136380675;
      sub_22CF07D60(v44, v62, type metadata accessor for Assertion);
      v49 = sub_22D01669C();
      v51 = v50;
      sub_22CF1CB18(v44, type metadata accessor for Assertion);
      v52 = v42;
      v53 = sub_22CEEE31C(v49, v51, &v65);

      *(v47 + 4) = v53;
      v42 = v52;
      _os_log_impl(&dword_22CEE1000, v45, v46, "Acquired momentary activity prominence assertion: %{private}s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x2318C6860](v48, -1, -1);
      MEMORY[0x2318C6860](v47, -1, -1);
    }

    else
    {

      sub_22CF1CB18(v44, type metadata accessor for Assertion);
    }

    v55 = v60;
    v54 = v61;
    v57 = v58;
    v56 = v59;
    sub_22CF6BE6C(v12);
    sub_22CF1CB18(v12, type metadata accessor for Assertion);
    (*(v55 + 8))(v57, v54);
    return (*(v20 + 8))(v42, v56);
  }

  return result;
}

uint64_t sub_22CF0D34C(uint64_t a1)
{
  v2 = type metadata accessor for ActivityManagerEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CF0D3A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v48 = sub_22D01430C();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v48, v5);
  v49 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D0149CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v39 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D01502C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v16;
  v17 = sub_22D01488C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  v23 = *(v1 + 1);
  v47 = v22;
  v45 = v21;
  v46 = v23;
  v24 = type metadata accessor for Activity();
  v25 = v24[5];

  sub_22D014D7C();
  v26 = sub_22D014D4C();
  v43 = v27;
  v44 = v26;
  v28 = v24[6];
  v29 = *&v2[v24[7]];
  v40 = *&v2[v24[8]];
  v41 = v29;
  (*(v12 + 16))(v16, &v2[v28], v11);

  sub_22D014DBC();
  v30 = *&v2[v24[9]];

  v38[3] = sub_22D014CFC();
  sub_22D014D1C();
  sub_22D014D0C();
  (*(v3 + 16))(v49, &v2[v24[11]], v48);
  v31 = &v2[v24[13]];
  v33 = *v31;
  v32 = v31[1];

  sub_22D014D8C();
  v34 = &v2[v24[16]];
  v35 = v34[1];
  v37 = *v34;

  return sub_22D0146FC();
}

uint64_t sub_22CF0D704(uint64_t a1)
{
  v2 = sub_22D014C4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D014C8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 16);
  if (!v31)
  {
    return 0;
  }

  v42 = v7;
  v44 = v2;
  v14 = 0;
  v15 = *(sub_22D014CBC() - 8);
  v33 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v16 = v9 + 16;
  v17 = v9 + 88;
  v18 = *MEMORY[0x277CB9630];
  v41 = *MEMORY[0x277CB9628];
  v43 = (v9 + 8);
  v39 = (v3 + 32);
  v40 = (v9 + 96);
  v38 = (v3 + 88);
  v37 = *MEMORY[0x277CB9610];
  v36 = (v3 + 8);
  v32 = *(v15 + 72);
  v35 = v9;
  while (1)
  {
    v34 = v14;
    result = sub_22D014CAC();
    v20 = result;
    v21 = *(result + 16);
    if (v21)
    {
      break;
    }

LABEL_3:
    v14 = v34 + 1;

    if (v14 == v31)
    {
      return 0;
    }
  }

  v22 = 0;
  v45 = result;
  while (v22 < *(v20 + 16))
  {
    (*(v9 + 16))(v13, v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, v8);
    v23 = (*(v9 + 88))(v13, v8);
    if (v23 == v18)
    {
      v24 = v21;
      v25 = v17;
      v26 = v16;
      (*v40)(v13, v8);
      v27 = v42;
      v28 = v44;
      (*v39)(v42, v13, v44);
      v29 = (*v38)(v27, v28);
      if (v29 == v37)
      {

        return 1;
      }

      result = (*v36)(v27, v28);
      v16 = v26;
      v17 = v25;
      v21 = v24;
      v9 = v35;
      v20 = v45;
    }

    else
    {
      if (v23 == v41)
      {

        (*v43)(v13, v8);
        return 1;
      }

      result = (*v43)(v13, v8);
    }

    if (v21 == ++v22)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void sub_22CF0DADC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(a1 + 40);
  if (*(v7 + 16))
  {
    v8 = sub_22CEE637C(a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      *a3 = v10;
      v11 = v10;
      return;
    }
  }

  v12 = [objc_opt_self() identifierWithPid_];
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  sub_22CEE82F8(0, &qword_28143D928, 0x277D46F48);
  v14 = v13;
  v15 = sub_22CF17328(v14, &selRef_handleForIdentifier_error_);
  if (!v3)
  {
    v17 = v15;

    if (v17)
    {
      v16 = [v17 currentState];

      goto LABEL_11;
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  v16 = 0;
LABEL_11:
  *a3 = v16;
}

void sub_22CF0DC2C(void *a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, void *a6, uint64_t a7, void *a8, double a9, uint64_t a10)
{
  v157 = a6;
  v142 = a5;
  v156 = a2;
  v165 = *MEMORY[0x277D85DE8];
  v16 = sub_22D0164CC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v147 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22D01653C();
  v146 = *(v21 - 8);
  v22 = *(v146 + 64);
  MEMORY[0x28223BE20](v21, v23);
  v145 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_22D0164BC();
  v140 = *(v141 - 8);
  v25 = *(v140 + 64);
  MEMORY[0x28223BE20](v141, v26);
  v139 = (&v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v155 = sub_22D01656C();
  v144 = *(v155 - 8);
  v28 = *(v144 + 64);
  v30 = MEMORY[0x28223BE20](v155, v29);
  v148 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v143 = &v130 - v33;
  v34 = sub_22D01457C();
  v153 = *(v34 - 8);
  v154 = v34;
  v35 = *(v153 + 64);
  MEMORY[0x28223BE20](v34, v36);
  v152 = &v130 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = [a1 process];
  if (v38)
  {
    v39 = v38;
    v135 = v17;
    v136 = v16;
    v149 = a7;
    v150 = a10;
    v151 = a8;
    if (qword_28143FB08 != -1)
    {
      swift_once();
    }

    v137 = sub_22D01637C();
    __swift_project_value_buffer(v137, qword_2814443D8);
    v40 = v39;

    v41 = sub_22D01636C();
    v42 = sub_22D01690C();

    v43 = os_log_type_enabled(v41, v42);
    v134 = v21;
    v138 = a3;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock = v45;
      *v44 = 67240450;
      *(v44 + 4) = [v40 pid];

      *(v44 + 8) = 2082;
      *(v44 + 10) = sub_22CEEE31C(v156, a3, &aBlock);
      _os_log_impl(&dword_22CEE1000, v41, v42, "Executing task for %{public}d with explanation %{public}s", v44, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x2318C6860](v45, -1, -1);
      MEMORY[0x2318C6860](v44, -1, -1);
    }

    else
    {
    }

    v54 = v40;
    if (a4)
    {
      v55 = sub_22D01666C();
      v56 = sub_22D01666C();
      v57 = [objc_opt_self() attributeWithDomain:v55 name:v56];

      v58 = [objc_opt_self() targetWithPid_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2730, &unk_22D0196E0);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_22D018FE0;
      *(v59 + 32) = v57;
      v60 = objc_allocWithZone(MEMORY[0x277D46DB8]);
      v61 = v58;
      v62 = v57;
      v63 = sub_22D01666C();
      sub_22CEEE550();
      v64 = sub_22D0167CC();

      v65 = [v60 initWithExplanation:v63 target:v61 attributes:v64];

      aBlock = 0;
      if (([v65 acquireWithError_] & 1) == 0)
      {
        v114 = aBlock;
        v115 = sub_22D01416C();

        swift_willThrow();
        sub_22CEEEBB4();
        v116 = swift_allocError();
        *v117 = 0;
        sub_22CF2F0BC(v116, v157, v149, v151, v150);

        goto LABEL_28;
      }

      v130 = v65;
      v66 = qword_28143FB60;
      v67 = aBlock;
      if (v66 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v137, qword_2814444B0);
      v68 = v157;
      v69 = sub_22D01636C();
      v70 = sub_22D01690C();

      v71 = os_log_type_enabled(v69, v70);
      v133 = v40;
      v132 = v61;
      v131 = v62;
      if (v71)
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        aBlock = v73;
        *v72 = 136446210;
        *(v72 + 4) = sub_22CEEE31C(*&v68[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier], *&v68[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier + 8], &aBlock);
        _os_log_impl(&dword_22CEE1000, v69, v70, "Delivering activity changes for %{public}s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v73);
        MEMORY[0x2318C6860](v73, -1, -1);
        MEMORY[0x2318C6860](v72, -1, -1);
      }

      v74 = v152;
      sub_22D01456C();
      sub_22CF1A0D4(&unk_281443A00, MEMORY[0x277CB9208]);
      v75 = v154;
      v76 = sub_22D01517C();
      v77 = sub_22D0141EC();
      v54 = v78;

      v79 = sub_22D0141DC();
      v80 = swift_allocObject();
      v81 = v150;
      *(v80 + 16) = v68;
      *(v80 + 24) = v81;
      v163 = sub_22CF2184C;
      v164 = v80;
      aBlock = MEMORY[0x277D85DD0];
      v160 = 1107296256;
      v161 = sub_22CF217E0;
      v162 = &block_descriptor_19;
      v82 = _Block_copy(&aBlock);
      v83 = v68;

      [v151 activitiesChanged:v79 completion:v82];
      sub_22CEE7524(v77, v54);
      _Block_release(v82);

      (*(v153 + 8))(v74, v75);
      sub_22D01566C();

      v84 = sub_22D01563C();
      v85 = v148;
      sub_22D01654C();
      v86 = a9 * 1000.0;
      if (COERCE__INT64(fabs(a9 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v86 > -9.22337204e18)
      {
        if (v86 < 9.22337204e18)
        {
          v87 = v139;
          *v139 = v86;
          v88 = v140;
          v89 = v141;
          (*(v140 + 104))(v87, *MEMORY[0x277D85178], v141);
          v90 = v143;
          sub_22D01655C();
          (*(v88 + 8))(v87, v89);
          v157 = *(v144 + 8);
          (v157)(v85, v155);
          v156 = *(v142 + 104);
          v91 = swift_allocObject();
          v92 = v130;
          *(v91 + 16) = v130;
          *(v91 + 24) = v84;
          v163 = sub_22CF7F1DC;
          v164 = v91;
          aBlock = MEMORY[0x277D85DD0];
          v160 = 1107296256;
          v161 = sub_22CEF8B58;
          v162 = &block_descriptor_26_0;
          v93 = _Block_copy(&aBlock);
          v94 = v92;

          v95 = v145;
          sub_22D0164EC();
          v158 = MEMORY[0x277D84F90];
          sub_22CF1A0D4(&qword_28143FA60, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
          sub_22CF0EDA8();
          v96 = v147;
          v97 = v136;
          sub_22D016ADC();
          MEMORY[0x2318C5A90](v90, v95, v96, v93);
          _Block_release(v93);

          (*(v135 + 8))(v96, v97);
          (*(v146 + 8))(v95, v134);
          (v157)(v90, v155);

LABEL_28:
          v118 = *MEMORY[0x277D85DE8];
          return;
        }

        goto LABEL_38;
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if ([a1 taskState] == 4)
    {
      if (qword_28143FB60 == -1)
      {
LABEL_24:
        __swift_project_value_buffer(v137, qword_2814444B0);
        v98 = v157;
        v99 = sub_22D01636C();
        v100 = sub_22D01690C();

        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          aBlock = v102;
          *v101 = 136446210;
          *(v101 + 4) = sub_22CEEE31C(*&v98[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier], *&v98[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier + 8], &aBlock);
          _os_log_impl(&dword_22CEE1000, v99, v100, "Delivering activity changes for %{public}s", v101, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v102);
          MEMORY[0x2318C6860](v102, -1, -1);
          MEMORY[0x2318C6860](v101, -1, -1);
        }

        v103 = v150;

        v104 = v152;
        sub_22D01456C();
        sub_22CF1A0D4(&unk_281443A00, MEMORY[0x277CB9208]);
        v105 = v154;
        v106 = sub_22D01517C();
        v107 = sub_22D0141EC();
        v109 = v108;

        v110 = sub_22D0141DC();
        v111 = swift_allocObject();
        *(v111 + 16) = v98;
        *(v111 + 24) = v103;
        v163 = sub_22CF303DC;
        v164 = v111;
        aBlock = MEMORY[0x277D85DD0];
        v160 = 1107296256;
        v161 = sub_22CF217E0;
        v162 = &block_descriptor_33;
        v112 = _Block_copy(&aBlock);
        v113 = v98;

        [v151 activitiesChanged:v110 completion:v112];
        sub_22CEE7524(v107, v109);
        _Block_release(v112);

        (*(v153 + 8))(v104, v105);
        goto LABEL_28;
      }

LABEL_39:
      swift_once();
      goto LABEL_24;
    }

    v119 = v40;
    v120 = sub_22D01636C();
    v121 = sub_22D0168EC();
    v122 = os_log_type_enabled(v120, v121);
    v123 = v151;
    if (v122)
    {
      v124 = swift_slowAlloc();
      *v124 = 67240192;
      *(v124 + 4) = [v119 pid];

      _os_log_impl(&dword_22CEE1000, v120, v121, "Rejecting low-priority task for %{public}d because process is unavailable", v124, 8u);
      MEMORY[0x2318C6860](v124, -1, -1);
    }

    else
    {

      v120 = v119;
    }

    v126 = v149;
    v125 = v150;

    sub_22CEEEBB4();
    v127 = swift_allocError();
    *v128 = 2;
    sub_22CF2F0BC(v127, v157, v126, v123, v125);

    v129 = *MEMORY[0x277D85DE8];
    v53 = v127;
  }

  else
  {
    if (qword_28143FB08 != -1)
    {
      swift_once();
    }

    v46 = sub_22D01637C();
    __swift_project_value_buffer(v46, qword_2814443D8);
    v47 = sub_22D01636C();
    v48 = sub_22D01690C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_22CEE1000, v47, v48, "Cannot execute task; process does not exist", v49, 2u);
      MEMORY[0x2318C6860](v49, -1, -1);
    }

    sub_22CEEEBB4();
    v50 = swift_allocError();
    *v51 = 2;
    sub_22CF2F0BC(v50, v157, a7, a8, a10);
    v52 = *MEMORY[0x277D85DE8];
    v53 = v50;
  }
}

unint64_t sub_22CF0EDA8()
{
  result = qword_28143FA50;
  if (!qword_28143FA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D9F2FE0, &qword_22D018B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143FA50);
  }

  return result;
}

uint64_t sub_22CF0EE0C(uint64_t a1, int a2, double a3)
{
  LODWORD(v53) = a2;
  v5 = type metadata accessor for Activity();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01471C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22CF0D3A8(v15);
  v16 = sub_22D0146CC();
  v17 = *(v11 + 8);
  result = v17(v15, v10);
  if ((v16 & 1) == 0)
  {
    sub_22CF0D3A8(v15);
    v19 = sub_22D0146DC();
    result = v17(v15, v10);
    if ((v19 & 1) == 0)
    {
      v20 = v54;
      v51 = *(*(v54 + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
      os_unfair_lock_lock(v51);
      v21 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_clients;
      swift_beginAccess();
      v22 = *(v20 + v21);
      v23 = *(v22 + 16);
      if (v23)
      {
        v48 = v6;
        v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
        v52 = sub_22CF1C2FC(v23, 0);
        v50 = sub_22CF102C0(&v55, v52 + 4, v23, v22);

        result = sub_22CEE57FC();
        if (v50 != v23)
        {
          __break(1u);
          return result;
        }

        v24 = v52;
        v6 = v48;
        v9 = v49;
      }

      else
      {
        v24 = MEMORY[0x277D84F90];
      }

      os_unfair_lock_unlock(v51);
      MEMORY[0x28223BE20](v25, v26);
      v47 = a1;
      if ((sub_22CF4CA70(sub_22CFD91AC, (&v48 - 4), v24) & 1) == 0)
      {
        v52 = v24;
        v27 = v53 & 1;
        if (v53)
        {
          v28 = 0x7974697669746341;
        }

        else
        {
          v28 = 0xD000000000000010;
        }

        if (v53)
        {
          v29 = 0xEE006465646E6520;
        }

        else
        {
          v29 = 0x800000022D021B30;
        }

        sub_22D01566C();
        v53 = v28;
        v51 = v29;
        v30 = v6;
        v31 = sub_22D01563C();
        v32 = __swift_project_boxed_opaque_existential_1((v54 + OBJC_IVAR____TtC11SessionCore12OutputServer_processManager), *(v54 + OBJC_IVAR____TtC11SessionCore12OutputServer_processManager + 24));
        v33 = a1 + *(v5 + 24);
        v34 = sub_22D014F9C();
        v35 = v9;
        v37 = v36;
        sub_22CF1C294(a1, v35, type metadata accessor for Activity);
        v38 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v39 = swift_allocObject();
        *(v39 + 16) = v27;
        *(v39 + 24) = a3;
        sub_22CF0A794(v35, v39 + v38, type metadata accessor for Activity);
        *(v39 + ((v7 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
        v40 = *v32;
        v41 = *(*v32 + 40);
        v42 = v40[6];
        __swift_project_boxed_opaque_existential_1(v40 + 2, v41);
        v43 = *(v42 + 32);
        v54 = v31;

        v44 = v43(v34, v37, v41, v42);
        if (!v44)
        {

          v46 = v51;

          sub_22CF7D8CC(v34, v37, v40, v40, v53, v46, 2, sub_22CFD91CC, a3, v39);

          return swift_bridgeObjectRelease_n();
        }

        v45 = v44;

        sub_22CF7C6AC(v45, v53, v51, 2, sub_22CFD91CC, v39, a3);
      }
    }
  }

  return result;
}

uint64_t sub_22CF0F348()
{
  v1 = type metadata accessor for Activity();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[5];
  v8 = sub_22D014E2C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[6];
  v10 = sub_22D01502C();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = *(v0 + v3 + v1[7]);

  v12 = *(v0 + v3 + v1[8]);

  v13 = *(v0 + v3 + v1[9]);

  v14 = v1[10];
  v15 = sub_22D01430C();
  v16 = *(*(v15 - 8) + 8);
  v16(v0 + v3 + v14, v15);
  v16(v0 + v3 + v1[11], v15);
  v17 = *(v0 + v3 + v1[13] + 8);

  v18 = v1[14];
  v19 = sub_22D0146BC();
  (*(*(v19 - 8) + 8))(v0 + v3 + v18, v19);
  v20 = v1[15];
  v21 = sub_22D01486C();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v0 + v3 + v20, 1, v21))
  {
    (*(v22 + 8))(v5 + v20, v21);
  }

  v23 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v5 + v1[16] + 8);

  v25 = *(v0 + v23);

  return MEMORY[0x2821FE8E8](v0, v23 + 8, v2 | 7);
}

uint64_t sub_22CF0F5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CF0F640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22CF0F6C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v23 - v9;
  v11 = *(a1 + *(type metadata accessor for ActivityManagerEvent(0) + 20));
  if (v11 == 4)
  {
    v15 = *(*(v3 + 16) + 16);
    os_unfair_lock_lock(v15);
    v21 = *a1;
    v20 = a1[1];
    v22 = type metadata accessor for Activity();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
    swift_beginAccess();

    v17 = v10;
    v18 = v21;
    v19 = v20;
  }

  else
  {
    if (v11 != 1)
    {
      return;
    }

    ObjectType = swift_getObjectType();
    v13 = *a1;
    v14 = a1[1];
    (*(a3 + 32))(v3, &off_28402AB28, *a1, v14, ObjectType, a3);
    v15 = *(*(v3 + 16) + 16);
    os_unfair_lock_lock(v15);
    sub_22CF1C22C(a1, v10, type metadata accessor for Activity);
    v16 = type metadata accessor for Activity();
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
    swift_beginAccess();

    v17 = v10;
    v18 = v13;
    v19 = v14;
  }

  sub_22CF0BC5C(v17, v18, v19);
  swift_endAccess();
  os_unfair_lock_unlock(v15);
}

uint64_t sub_22CF0F8F0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

void sub_22CF0F96C(uint64_t *a1)
{
  v3 = *v1;
  v4 = *(*(v3 + 32) + 16);
  os_unfair_lock_lock(v4);
  sub_22CF0C0F8(v3, a1);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_22CF0F9C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF0FA2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_22D01659C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v5 + 40);
  *v15 = v16;
  (*(v11 + 104))(v15, *MEMORY[0x277D85200], v10);
  v17 = v16;
  LOBYTE(v16) = sub_22D0165BC();
  (*(v11 + 8))(v15, v10);
  if (v16)
  {
    if (qword_28143FB58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v18 = sub_22D01637C();
  __swift_project_value_buffer(v18, qword_281444498);
  swift_unknownObjectRetain();

  v19 = sub_22D01636C();
  v20 = sub_22D01690C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38[0] = v37;
    *v21 = 136446466;
    v38[3] = a1;
    v38[4] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F34B0, &unk_22D01B8E8);
    v22 = sub_22D01669C();
    v24 = sub_22CEEE31C(v22, v23, v38);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_22CEEE31C(a3, a4, v38);
    _os_log_impl(&dword_22CEE1000, v19, v20, "Subscribing participant %{public}s to activity: %{public}s", v21, 0x16u);
    v25 = v37;
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v25, -1, -1);
    MEMORY[0x2318C6860](v21, -1, -1);
  }

  swift_beginAccess();
  v26 = *(v5 + 24);
  if (*(v26 + 16))
  {
    v27 = *(v5 + 24);

    v28 = sub_22CEEC698(a3, a4);
    if (v29)
    {
      v30 = *(*(v26 + 56) + 8 * v28);
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_22CF1B8BC(0, v30[2] + 1, 1, v30, &qword_27D9F34A8, &qword_22D01B8E0, &qword_27D9F34B0, &unk_22D01B8E8);
  }

  v32 = v30[2];
  v31 = v30[3];
  if (v32 >= v31 >> 1)
  {
    v30 = sub_22CF1B8BC((v31 > 1), v32 + 1, 1, v30, &qword_27D9F34A8, &qword_22D01B8E0, &qword_27D9F34B0, &unk_22D01B8E8);
  }

  v30[2] = v32 + 1;
  v33 = &v30[2 * v32];
  v33[4] = a1;
  v33[5] = a2;
  swift_beginAccess();
  swift_unknownObjectRetain();

  sub_22CF0FE54(v34, a3, a4);
  swift_endAccess();
}

uint64_t sub_22CF0FE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_22CF1BF00(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27D9F31B8, &qword_22D01B150);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_22CEEC698(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_22CFB856C(&qword_27D9F31B8, &qword_22D01B150);
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_22CF37F44(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_22CF0FF70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF0FFD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF10058(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v20 - v6;
  v8 = *(*(v1 + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
  os_unfair_lock_lock(v8);
  v9 = *a1;
  v10 = a1[1];
  sub_22CF1C294(a1, v7, type metadata accessor for Activity);
  v11 = type metadata accessor for Activity();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  swift_beginAccess();

  sub_22CF0BC5C(v7, v9, v10);
  swift_endAccess();
  v12 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_clients;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = *(v13 + 16);
  if (!v14)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v21 = v8;
  v22 = a1;
  v15 = sub_22CF1C2FC(v14, 0);
  v16 = sub_22CF102C0(&v23, v15 + 4, v14, v13);

  result = sub_22CEE57FC();
  if (v16 == v14)
  {
    v8 = v21;
    a1 = v22;
LABEL_5:
    os_unfair_lock_unlock(v8);
    MEMORY[0x28223BE20](v18, v19);
    *(&v20 - 2) = a1;
    sub_22CF1685C(sub_22CF1695C, (&v20 - 4), v15);
    sub_22CF0EE0C(a1, byte_27D9F36E0, *&qword_27D9F36E8);
  }

  __break(1u);
  return result;
}

void *sub_22CF102C0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22CF10414(uint64_t a1)
{
  v3 = sub_22D014C4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22CF16990(a1);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F20F0, &qword_22D018918);
    v10 = sub_22D014C8C();
    v11 = *(v10 - 8);
    v12 = v11;
    v25 = v1;
    v13 = a1;
    v14 = *(v11 + 72);
    v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_22D0189F0;
    v17 = v16 + v15;
    v24 = v13;
    sub_22CF0D3A8(v17);
    v18 = *(v12 + 104);
    v18(v17, *MEMORY[0x277CB9628], v10);
    v19 = sub_22CF0B5E0();
    (*(v4 + 104))(v8, **(&unk_2787486F8 + v19), v3);
    (*(v4 + 32))(v17 + v14, v8, v3);
    v20 = v17 + v14;
    v21 = v25;
    v18(v20, *MEMORY[0x277CB9630], v10);
    v27 = v16;
    v22 = *(*(v21 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_lock) + 16);
    os_unfair_lock_lock(v22);
    sub_22CFD7634(v21, &v27, v24, &v26);
    os_unfair_lock_unlock(v22);
    sub_22CF1C384(v26);
  }

  return result;
}

uint64_t sub_22CF10698(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*(v3 + 48) + 16);
  os_unfair_lock_lock(v4);
  sub_22CF0DADC(v3, a1, &v6);
  os_unfair_lock_unlock(v4);
  return v6;
}

void sub_22CF10718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v100[1] = a2;
  v101 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v103 = v100 - v7;
  v8 = type metadata accessor for ActivityManagerEvent(0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = (v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = (v100 - v16);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v102 = (v100 - v20);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = (v100 - v23);
  MEMORY[0x28223BE20](v22, v25);
  v27 = (v100 - v26);
  v28 = sub_22D01430C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  v33 = v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Activity();
  v34 = a1 + *(v105 + 20);
  if (sub_22D014D2C() & 1) != 0 || (sub_22CF37A40())
  {
    if (qword_28143FB30 != -1)
    {
      swift_once();
    }

    v35 = sub_22D01637C();
    __swift_project_value_buffer(v35, qword_281444438);
    sub_22CF0CCBC(a1, v13, type metadata accessor for ActivityManagerEvent);
    v36 = sub_22D01636C();
    v37 = sub_22D01690C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v106[0] = v39;
      *v38 = 136446210;
      v40 = *v13;
      v41 = v13[1];

      sub_22CF0F640(v13, type metadata accessor for ActivityManagerEvent);
      v42 = sub_22CEEE31C(v40, v41, v106);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_22CEE1000, v36, v37, "Duration limit is not enforced for unbounded or interactive activity %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x2318C6860](v39, -1, -1);
      MEMORY[0x2318C6860](v38, -1, -1);

      return;
    }

    v43 = v13;
LABEL_8:
    sub_22CF0F640(v43, type metadata accessor for ActivityManagerEvent);
    return;
  }

  v44 = v105;
  v45 = *(v105 + 40);
  sub_22D0142DC();
  sub_22CEF888C(&qword_281443A30, MEMORY[0x277CC9578]);
  LOBYTE(v45) = sub_22D01663C();
  (*(v29 + 8))(v33, v28);
  if ((v45 & 1) == 0)
  {
    if (qword_28143FB30 != -1)
    {
      swift_once();
    }

    v56 = sub_22D01637C();
    __swift_project_value_buffer(v56, qword_281444438);
    sub_22CF0CCBC(a1, v17, type metadata accessor for ActivityManagerEvent);
    v57 = sub_22D01636C();
    v58 = sub_22D01690C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v106[0] = v60;
      *v59 = 136446210;
      v61 = *v17;
      v62 = v17[1];

      sub_22CF0F640(v17, type metadata accessor for ActivityManagerEvent);
      v63 = sub_22CEEE31C(v61, v62, v106);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_22CEE1000, v57, v58, "Duration limit is not enforced for pending activity %{public}s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x2318C6860](v60, -1, -1);
      MEMORY[0x2318C6860](v59, -1, -1);

      return;
    }

    v43 = v17;
    goto LABEL_8;
  }

  if (*(a1 + *(v8 + 20)) > 1u)
  {
    if (*(a1 + *(v8 + 20)) == 3)
    {
      if (qword_28143FB30 != -1)
      {
        swift_once();
      }

      v46 = sub_22D01637C();
      __swift_project_value_buffer(v46, qword_281444438);
      v47 = a1;
      v48 = v102;
      sub_22CF0CCBC(a1, v102, type metadata accessor for ActivityManagerEvent);
      v49 = sub_22D01636C();
      v50 = sub_22D01690C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v106[0] = v52;
        *v51 = 136446210;
        v53 = *v48;
        v54 = v48[1];

        sub_22CF0F640(v48, type metadata accessor for ActivityManagerEvent);
        v55 = sub_22CEEE31C(v53, v54, v106);

        *(v51 + 4) = v55;
        _os_log_impl(&dword_22CEE1000, v49, v50, "Updating buffered activity copy %{public}s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        MEMORY[0x2318C6860](v52, -1, -1);
        MEMORY[0x2318C6860](v51, -1, -1);
      }

      else
      {

        sub_22CF0F640(v48, type metadata accessor for ActivityManagerEvent);
      }

      v89 = v103;
      v88 = *(v104[2] + 16);
      os_unfair_lock_lock(v88);
      v90 = *v47;
      v91 = v47[1];
      sub_22CF0CCBC(v47, v89, type metadata accessor for Activity);
      (*(*(v105 - 8) + 56))(v89, 0, 1);
      swift_beginAccess();

      sub_22CF0BC5C(v89, v90, v91);
      swift_endAccess();
      goto LABEL_37;
    }

    if (qword_28143FB30 != -1)
    {
      swift_once();
    }

    v64 = sub_22D01637C();
    __swift_project_value_buffer(v64, qword_281444438);
    v65 = a1;
    sub_22CF0CCBC(a1, v24, type metadata accessor for ActivityManagerEvent);
    v66 = sub_22D01636C();
    v67 = sub_22D01690C();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v106[0] = v69;
      *v68 = 136446210;
      v70 = *v24;
      v71 = v24[1];

      sub_22CF0F640(v24, type metadata accessor for ActivityManagerEvent);
      v72 = sub_22CEEE31C(v70, v71, v106);

      *(v68 + 4) = v72;
      _os_log_impl(&dword_22CEE1000, v66, v67, "Activity is no longer relevant %{public}s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x2318C6860](v69, -1, -1);
      MEMORY[0x2318C6860](v68, -1, -1);
    }

    else
    {

      sub_22CF0F640(v24, type metadata accessor for ActivityManagerEvent);
    }

    v82 = v104;
    v83 = v104[2];
    v84 = *(v83 + 16);
    os_unfair_lock_lock(v84);
    v85 = *v65;
    v86 = v65[1];
    v87 = v103;
    (*(*(v44 - 8) + 56))(v103, 1, 1, v44);
    swift_beginAccess();

    sub_22CF0BC5C(v87, v85, v86);
    swift_endAccess();
    os_unfair_lock_unlock(v84);
    v88 = *(v83 + 16);
LABEL_34:
    os_unfair_lock_lock(v88);
    sub_22CFCEFBC(v82);
LABEL_37:
    os_unfair_lock_unlock(v88);
    return;
  }

  if (*(a1 + *(v8 + 20)) && sub_22CF0B5E0() != 1)
  {
    if (qword_28143FB30 != -1)
    {
      swift_once();
    }

    v73 = sub_22D01637C();
    __swift_project_value_buffer(v73, qword_281444438);
    v74 = a1;
    sub_22CF0CCBC(a1, v27, type metadata accessor for ActivityManagerEvent);
    v75 = sub_22D01636C();
    v76 = sub_22D01690C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v106[0] = v78;
      *v77 = 136446210;
      v79 = *v27;
      v80 = v27[1];

      sub_22CF0F640(v27, type metadata accessor for ActivityManagerEvent);
      v81 = sub_22CEEE31C(v79, v80, v106);

      *(v77 + 4) = v81;
      _os_log_impl(&dword_22CEE1000, v75, v76, "Tracking activity %{public}s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x2318C6860](v78, -1, -1);
      MEMORY[0x2318C6860](v77, -1, -1);
    }

    else
    {

      sub_22CF0F640(v27, type metadata accessor for ActivityManagerEvent);
    }

    v82 = v104;
    ObjectType = swift_getObjectType();
    v93 = v74;
    v94 = *v74;
    v95 = v74[1];
    (*(v101 + 32))(v82, &off_28402C548, *v74, v95, ObjectType);
    v96 = v82[2];
    v97 = *(v96 + 16);
    os_unfair_lock_lock(v97);
    v98 = v93;
    v99 = v103;
    sub_22CF0CCBC(v98, v103, type metadata accessor for Activity);
    (*(*(v44 - 8) + 56))(v99, 0, 1, v44);
    swift_beginAccess();

    sub_22CF0BC5C(v99, v94, v95);
    swift_endAccess();
    os_unfair_lock_unlock(v97);
    v88 = *(v96 + 16);
    goto LABEL_34;
  }
}

uint64_t sub_22CF11390(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  if (!*(*(a1 + 24) + 16))
  {
    sub_22D01566C();
    v4 = sub_22D01563C();
    v5 = *(a1 + 32);
    *(a1 + 32) = v4;
  }

  v7 = *a2;
  v6 = a2[1];
  swift_beginAccess();

  sub_22CEE54CC(&v9, v7, v6);
  swift_endAccess();
}

uint64_t sub_22CF11460(uint64_t *a1)
{
  result = type metadata accessor for ActivityManagerEvent(0);
  if (*(a1 + *(result + 20)) == 4)
  {
    v4 = *__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    return sub_22CF6CFA0(*a1, a1[1], 2);
  }

  return result;
}

uint64_t sub_22CF114B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v28[1] = a3;
  v5 = sub_22D01502C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = (v28 - v19);
  v21 = *a1;
  v22 = a1[1];
  *v20 = v21;
  v20[1] = v22;
  sub_22CF0CC54(a2, v28 + *(v12 + 56) - v19, type metadata accessor for Activity);
  sub_22CEEB6DC(v20, v17, &unk_27D9F3840, &unk_22D01A2B0);
  v23 = *(v17 + 1);

  v24 = &v17[*(v12 + 56)];
  v25 = type metadata accessor for Activity();
  (*(v6 + 16))(v10, v24 + *(v25 + 24), v5);
  sub_22CF0F640(v24, type metadata accessor for Activity);
  v26 = *(v25 + 24);
  LOBYTE(v24) = sub_22D014FEC();
  (*(v6 + 8))(v10, v5);
  sub_22CEEC3D8(v20, &unk_27D9F3840, &unk_22D01A2B0);
  return v24 & 1;
}

uint64_t sub_22CF1173C(uint64_t a1)
{
  v46 = a1;
  v2 = sub_22D0162BC();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26F8, qword_22D01D230);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v42 = &v40 - v12;
  v13 = sub_22D015C8C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v47 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &qword_27D9F2700;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v40 - v26;
  v28 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v29 = sub_22D015F2C();
  v48 = v46;
  sub_22CF11BC8(sub_22CF11BF4, v29, v27);

  sub_22CEEB6DC(v27, v24, &qword_27D9F2700, &unk_22D01AEA0);
  if ((*(v14 + 48))(v24, 1, v13) == 1)
  {
    v30 = &unk_22D01AEA0;
    sub_22CEEC3D8(v27, &qword_27D9F2700, &unk_22D01AEA0);
    v31 = v24;
LABEL_5:
    sub_22CEEC3D8(v31, v18, v30);
    return 0;
  }

  (*(v14 + 32))(v47, v24, v13);
  v32 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  sub_22D015C3C();
  v33 = v42;
  sub_22D01600C();

  v34 = v43;
  sub_22CEEB6DC(v33, v43, &qword_27D9F26F8, qword_22D01D230);
  v36 = v44;
  v35 = v45;
  if ((*(v44 + 48))(v34, 1, v45) == 1)
  {
    v18 = &qword_27D9F26F8;
    v30 = qword_22D01D230;
    sub_22CEEC3D8(v33, &qword_27D9F26F8, qword_22D01D230);
    (*(v14 + 8))(v47, v13);
    sub_22CEEC3D8(v27, &qword_27D9F2700, &unk_22D01AEA0);
    v31 = v34;
    goto LABEL_5;
  }

  v38 = v41;
  (*(v36 + 32))(v41, v34, v35);
  v39 = sub_22D0161FC();
  (*(v36 + 8))(v38, v35);
  sub_22CEEC3D8(v33, &qword_27D9F26F8, qword_22D01D230);
  (*(v14 + 8))(v47, v13);
  sub_22CEEC3D8(v27, &qword_27D9F2700, &unk_22D01AEA0);
  return v39;
}

unint64_t sub_22CF11C44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
    v3 = sub_22D016D3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22CEEB6DC(v4, &v13, &qword_27D9F3460, &unk_22D0188B0);
      v5 = v13;
      v6 = v14;
      result = sub_22CEEC698(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22CF1D288(&v15, (v3[7] + 32 * result));
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

uint64_t sub_22CF11D74(void *a1)
{
  v2 = sub_22D01559C();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D0155CC();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D01430C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v33 - v20;
  swift_beginAccess();
  sub_22CEEB6DC((a1 + 10), &v39, &qword_27D9F3278, &unk_22D01B2C0);
  if (*(&v40 + 1))
  {
    sub_22CEE3A84(&v39, v38);
    sub_22CEEC3D8(&v39, &qword_27D9F3278, &unk_22D01B2C0);
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_22D0163DC();
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }

  else
  {
    sub_22CEEC3D8(&v39, &qword_27D9F3278, &unk_22D01B2C0);
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  swift_beginAccess();
  sub_22CF1B3B4(&v39, (a1 + 10));
  swift_endAccess();
  sub_22CF122C0(v21);
  sub_22D01423C();
  v22 = sub_22D01428C();
  v23 = *(v13 + 8);
  v23(v18, v12);
  if (v22)
  {
    (*(v13 + 16))(v18, v21, v12);
    (*(v34 + 104))(v6, *MEMORY[0x277D4D518], v35);
    sub_22D01558C();
    v24 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, a1[6]);
    swift_allocObject();
    swift_weakInit();

    sub_22D0155DC();

    (*(v36 + 8))(v11, v37);
    v23(v21, v12);

    sub_22CEF44D4(&v39, v38);
    swift_beginAccess();
    sub_22CF1B3B4(v38, (a1 + 10));
    return swift_endAccess();
  }

  else
  {
    if (qword_28143DAB0 != -1)
    {
      swift_once();
    }

    v26 = sub_22D01637C();
    __swift_project_value_buffer(v26, qword_281444320);
    v27 = sub_22D01636C();
    v28 = sub_22D01690C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v12;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22CEE1000, v27, v28, "No more activities with stale dates", v30, 2u);
      MEMORY[0x2318C6860](v30, -1, -1);

      v31 = v21;
      v32 = v29;
    }

    else
    {

      v31 = v21;
      v32 = v12;
    }

    return (v23)(v31, v32);
  }
}

uint64_t sub_22CF12288()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CF122C0@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v119 = &v98 - v5;
  v118 = sub_22D01461C();
  v131 = *(v118 - 8);
  v6 = *(v131 + 64);
  MEMORY[0x28223BE20](v118, v7);
  v117 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_22D0146BC();
  v130 = *(v126 - 8);
  v9 = *(v130 + 64);
  v11 = MEMORY[0x28223BE20](v126, v10);
  v106 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v116 = &v98 - v14;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v15 = *(*(v129 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v129 - 8, v16);
  v105 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v115 = &v98 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v24 = (&v98 - v23);
  v25 = sub_22D01430C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v102 = &v98 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v101 = &v98 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v128 = &v98 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v44 = &v98 - v43;
  v46 = MEMORY[0x28223BE20](v42, v45);
  v48 = &v98 - v47;
  MEMORY[0x28223BE20](v46, v49);
  v51 = &v98 - v50;
  os_unfair_lock_assert_owner(*(*(v1 + 16) + 16));
  swift_beginAccess();
  v107 = v1;
  v52 = *(v1 + 120);
  v53 = v48;

  sub_22D01423C();
  v55 = *(v26 + 16);
  v54 = v26 + 16;
  v98 = v51;
  v100 = v55;
  v55(v48, v51, v25);
  v56 = v52 + 64;
  v57 = 1 << *(v52 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v52 + 64);
  v123 = (v57 + 63) >> 6;
  v113 = (v130 + 16);
  v112 = (v130 + 8);
  v111 = (v131 + 8);
  v110 = (v54 + 32);
  v131 = v54 + 16;
  v104 = v54;
  v130 = v54 - 8;
  v122 = v52;

  v61 = 0;
  v114 = v25;
  v127 = v53;
  v120 = v56;
  v103 = v31;
  v121 = v44;
  while (v59)
  {
LABEL_12:
    v66 = __clz(__rbit64(v59)) | (v61 << 6);
    v67 = *(v122 + 56);
    v68 = (*(v122 + 48) + 16 * v66);
    v70 = *v68;
    v69 = v68[1];
    v71 = type metadata accessor for Activity();
    v72 = v129;
    sub_22CF0CCBC(v67 + *(*(v71 - 8) + 72) * v66, v24 + *(v129 + 48), type metadata accessor for Activity);
    *v24 = v70;
    v24[1] = v69;
    v73 = v115;
    sub_22CEEB6DC(v24, v115, &unk_27D9F3840, &unk_22D01A2B0);
    v74 = *(v73 + 8);

    v75 = v73 + *(v72 + 48);
    v125 = v71;
    v76 = *v113;
    v77 = v75 + *(v71 + 56);
    v78 = v116;
    v79 = v126;
    (*v113)(v116, v77, v126);
    sub_22CF0F640(v75, type metadata accessor for Activity);
    v80 = v117;
    sub_22D01467C();
    v124 = *v112;
    v124(v78, v79);
    v81 = v119;
    sub_22D01460C();
    (*v111)(v80, v118);
    v25 = v114;
    if ((*v110)(v81, 1, v114) == 1)
    {
      sub_22CEEC3D8(v24, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CEEC3D8(v81, &qword_27D9F2648, &unk_22D018BC0);
      v62 = *v131;
      v63 = v121;
      v53 = v127;
      (*v131)(v121, v127, v25);
      v56 = v120;
    }

    else
    {
      v82 = *v131;
      v108 = v131 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v109 = v82;
      v82(v128, v81, v25);
      v83 = v105;
      sub_22CEEB6DC(v24, v105, &unk_27D9F3840, &unk_22D01A2B0);
      v84 = *(v83 + 8);

      v85 = v83 + *(v129 + 48);
      v86 = v126;
      v87 = v106;
      v76(v106, v85 + *(v125 + 56), v126);
      sub_22CF0F640(v85, type metadata accessor for Activity);
      v88 = v102;
      sub_22D01469C();
      v124(v87, v86);
      v89 = *(v107 + 64);
      v90 = v101;
      sub_22D01425C();
      v91 = *v130;
      (*v130)(v88, v25);
      sub_22CF1A1AC(&qword_281443A30, MEMORY[0x277CC9578]);
      v92 = v128;
      if (sub_22D01664C())
      {
        v93 = v92;
      }

      else
      {
        v93 = v90;
      }

      v94 = v103;
      v100(v103, v93, v25);
      v95 = sub_22D01663C();
      v91(v90, v25);
      v91(v128, v25);
      sub_22CEEC3D8(v24, &unk_27D9F3840, &unk_22D01A2B0);
      if (v95)
      {
        v91(v94, v25);
        v63 = v121;
        v96 = v121;
        v53 = v127;
        v97 = v127;
      }

      else
      {
        v53 = v127;
        v91(v127, v25);
        v63 = v121;
        v96 = v121;
        v97 = v94;
      }

      v62 = v109;
      v109(v96, v97, v25);
      v56 = v120;
    }

    v59 &= v59 - 1;
    result = (v62)(v53, v63, v25);
  }

  v64 = v131;
  while (1)
  {
    v65 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v65 >= v123)
    {
      (*v130)(v98, v25);

      (*v64)(v99, v53, v25);
    }

    v59 = *(v56 + 8 * v65);
    ++v61;
    if (v59)
    {
      v61 = v65;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_22CF12C90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v23 - v9;
  v11 = *(a1 + *(type metadata accessor for ActivityManagerEvent(0) + 20));
  if (v11 == 4)
  {
    v15 = *(*(v3 + 16) + 16);
    os_unfair_lock_lock(v15);
    v21 = *a1;
    v20 = a1[1];
    v22 = type metadata accessor for Activity();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
    swift_beginAccess();

    v17 = v10;
    v18 = v21;
    v19 = v20;
  }

  else
  {
    if (v11 != 1)
    {
      return;
    }

    ObjectType = swift_getObjectType();
    v13 = *a1;
    v14 = a1[1];
    (*(a3 + 32))(v3, &off_28402A640, *a1, v14, ObjectType, a3);
    v15 = *(*(v3 + 16) + 16);
    os_unfair_lock_lock(v15);
    sub_22CF1C22C(a1, v10, type metadata accessor for Activity);
    v16 = type metadata accessor for Activity();
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
    swift_beginAccess();

    v17 = v10;
    v18 = v13;
    v19 = v14;
  }

  sub_22CF0BC5C(v17, v18, v19);
  swift_endAccess();
  os_unfair_lock_unlock(v15);
}

uint64_t sub_22CF12EBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v6 = type metadata accessor for ActivityManagerEvent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_22D01637C();
  v11 = *(v35 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v35, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D01430C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(type metadata accessor for Activity() + 40);
  sub_22D0142DC();
  sub_22CEF87B4(&qword_281443A30, MEMORY[0x277CC9578]);
  LOBYTE(v22) = sub_22D01663C();
  (*(v17 + 8))(v21, v16);
  if (v22)
  {
    v23 = *(a1 + *(v6 + 20));
    if (v23 == 3)
    {
      sub_22CF30760(a1);
      return sub_22CF13264(a1);
    }

    else if (v23 == 1)
    {
      ObjectType = swift_getObjectType();
      (*(v34 + 32))(v4, &off_284029DC8, *a1, a1[1], ObjectType);
      return sub_22CF13264(a1);
    }

    else
    {
      return sub_22CF30760(a1);
    }
  }

  else
  {
    sub_22D01635C();
    sub_22CF1C1C8(a1, v10);
    v26 = sub_22D01636C();
    v27 = sub_22D01690C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136446210;
      v30 = *v10;
      v31 = v10[1];

      sub_22CF0D34C(v10);
      v32 = sub_22CEEE31C(v30, v31, &v36);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_22CEE1000, v26, v27, "AlertPresenter is ignoring pending activity: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x2318C6860](v29, -1, -1);
      MEMORY[0x2318C6860](v28, -1, -1);
    }

    else
    {

      sub_22CF0D34C(v10);
    }

    return (*(v11 + 8))(v15, v35);
  }
}

uint64_t sub_22CF13264(void *a1)
{
  v2 = sub_22D01504C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v248 = &v226 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_22D014F2C();
  v242 = *(v244 - 8);
  v6 = *(v242 + 64);
  MEMORY[0x28223BE20](v244, v7);
  v241 = &v226 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_22D0152EC();
  v253 = *(v243 - 8);
  v9 = *(v253 + 64);
  v11 = MEMORY[0x28223BE20](v243, v10);
  v230 = &v226 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v250 = &v226 - v14;
  v15 = sub_22D01506C();
  v251 = *(v15 - 8);
  v252 = v15;
  v16 = *(v251 + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v240 = &v226 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v249 = &v226 - v21;
  v22 = sub_22D01417C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v239 = &v226 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22D01436C();
  v259 = *(v26 - 8);
  v260 = v26;
  v27 = *(v259 + 64);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v247 = &v226 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v258 = &v226 - v32;
  v33 = type metadata accessor for ActivityManagerEvent(0);
  v34 = *(*(v33 - 1) + 64);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v235 = &v226 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v234 = &v226 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v44 = &v226 - v43;
  v46 = MEMORY[0x28223BE20](v42, v45);
  v48 = (&v226 - v47);
  v50 = MEMORY[0x28223BE20](v46, v49);
  v257 = (&v226 - v51);
  v53 = MEMORY[0x28223BE20](v50, v52);
  v256 = (&v226 - v54);
  v56 = MEMORY[0x28223BE20](v53, v55);
  v255 = &v226 - v57;
  v59 = MEMORY[0x28223BE20](v56, v58);
  v254 = &v226 - v60;
  v62 = MEMORY[0x28223BE20](v59, v61);
  v232 = &v226 - v63;
  v65 = MEMORY[0x28223BE20](v62, v64);
  v231 = (&v226 - v66);
  v68 = MEMORY[0x28223BE20](v65, v67);
  v245 = (&v226 - v69);
  MEMORY[0x28223BE20](v68, v70);
  v237 = (&v226 - v71);
  v72 = sub_22D01637C();
  v262 = *(v72 - 8);
  v263 = v72;
  v73 = *(v262 + 64);
  v75 = MEMORY[0x28223BE20](v72, v74);
  v236 = &v226 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x28223BE20](v75, v77);
  v80 = &v226 - v79;
  MEMORY[0x28223BE20](v78, v81);
  v246 = &v226 - v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  v84 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83 - 8, v85);
  v87 = &v226 - v86;
  v88 = sub_22D0150CC();
  v89 = *(v88 - 8);
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v88, v91);
  v93 = &v226 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = type metadata accessor for Activity();
  v238 = *(v261 + 56);
  sub_22D01462C();
  if ((*(v89 + 48))(v87, 1, v88) == 1)
  {
    sub_22CEEC3D8(v87, &qword_27D9F2308, &unk_22D018950);
    sub_22D01635C();
    sub_22CF1C1C8(a1, v48);
    sub_22CF1C1C8(a1, v44);
    v94 = sub_22D01636C();
    v95 = sub_22D01690C();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v264 = v97;
      *v96 = 136446466;
      v98 = *v48;
      v99 = v48[1];

      sub_22CF0D34C(v48);
      v100 = sub_22CEEE31C(v98, v99, &v264);

      *(v96 + 4) = v100;
      *(v96 + 12) = 2082;
      v101 = &v44[*(v261 + 56)];
      v102 = v258;
      sub_22D01466C();
      sub_22CEF87B4(&qword_28143F708, MEMORY[0x277CC95F0]);
      v103 = v260;
      v104 = sub_22D016DEC();
      v106 = v105;
      (*(v259 + 8))(v102, v103);
      sub_22CF0D34C(v44);
      v107 = sub_22CEEE31C(v104, v106, &v264);

      *(v96 + 14) = v107;
      _os_log_impl(&dword_22CEE1000, v94, v95, "AlertPresenter is ignoring non-alerting update: %{public}s.%{public}s", v96, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v97, -1, -1);
      MEMORY[0x2318C6860](v96, -1, -1);
    }

    else
    {

      sub_22CF0D34C(v44);
      sub_22CF0D34C(v48);
    }

    return (*(v262 + 8))(v80, v263);
  }

  (*(v89 + 32))(v93, v87, v88);
  v108 = *(a1 + v33[6]);
  swift_getObjectType();
  v109 = v89;
  if (swift_conformsToProtocol2() && v108)
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v263, qword_281444498);
    v110 = v256;
    sub_22CF1C1C8(a1, v256);
    v111 = a1;
    v112 = v257;
    sub_22CF1C1C8(v111, v257);
    v113 = sub_22D01636C();
    v114 = sub_22D01690C();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v228 = v88;
      v229 = v93;
      v117 = v116;
      v264 = v116;
      *v115 = 136446466;
      v118 = *v110;
      v119 = v110[1];

      sub_22CF0D34C(v110);
      v120 = sub_22CEEE31C(v118, v119, &v264);

      *(v115 + 4) = v120;
      *(v115 + 12) = 2082;
      v121 = v112 + *(v261 + 56);
      v122 = v258;
      sub_22D01466C();
      sub_22CEF87B4(&qword_28143F708, MEMORY[0x277CC95F0]);
      v123 = v112;
      v124 = v260;
      v125 = sub_22D016DEC();
      v127 = v126;
      (*(v259 + 8))(v122, v124);
      sub_22CF0D34C(v123);
      v128 = sub_22CEEE31C(v125, v127, &v264);

      *(v115 + 14) = v128;
      _os_log_impl(&dword_22CEE1000, v113, v114, "Alert coordinator is not interested in event from persistent input: %{public}s.%{public}s", v115, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v117, -1, -1);
      MEMORY[0x2318C6860](v115, -1, -1);

      return (*(v89 + 8))(v229, v228);
    }

    sub_22CF0D34C(v112);
    v152 = v110;
    goto LABEL_26;
  }

  v130 = (a1 + v33[7]);
  if (v130[1])
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v263, qword_281444498);
    v131 = v254;
    sub_22CF1C1C8(a1, v254);
    v132 = v255;
    sub_22CF1C1C8(a1, v255);
    v133 = sub_22D01636C();
    v134 = sub_22D01690C();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = v131;
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v264 = v137;
      *v136 = 136446466;
      v228 = v88;
      v229 = v93;
      v138 = *v135;
      v139 = v135[1];

      sub_22CF0D34C(v135);
      v140 = sub_22CEEE31C(v138, v139, &v264);

      *(v136 + 4) = v140;
      *(v136 + 12) = 2082;
      v141 = &v132[*(v261 + 56)];
      v142 = v132;
      v143 = v258;
      sub_22D01466C();
      sub_22CEF87B4(&qword_28143F708, MEMORY[0x277CC95F0]);
      v144 = v260;
      v145 = sub_22D016DEC();
      v147 = v146;
      (*(v259 + 8))(v143, v144);
      sub_22CF0D34C(v142);
      v148 = sub_22CEEE31C(v145, v147, &v264);

      *(v136 + 14) = v148;
      _os_log_impl(&dword_22CEE1000, v133, v134, "Alert coordinator is not interested in remote event: %{public}s.%{public}s", v136, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v137, -1, -1);
      MEMORY[0x2318C6860](v136, -1, -1);

      v149 = *(v109 + 8);
      v150 = v229;
LABEL_15:
      v151 = v228;
      return v149(v150, v151);
    }

    sub_22CF0D34C(v132);
    v152 = v131;
    goto LABEL_26;
  }

  v153 = *v130;
  if (*(a1 + v33[5]) == 3 && sub_22CF0B5E0() == 2)
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v263, qword_281444498);
    v154 = v231;
    sub_22CF1C1C8(a1, v231);
    v155 = v232;
    sub_22CF1C1C8(a1, v232);
    v156 = sub_22D01636C();
    v157 = sub_22D01690C();
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      v263 = swift_slowAlloc();
      v264 = v263;
      *v158 = 136446466;
      v159 = *v154;
      v160 = v154[1];

      sub_22CF0D34C(v154);
      v161 = sub_22CEEE31C(v159, v160, &v264);

      *(v158 + 4) = v161;
      *(v158 + 12) = 2082;
      v162 = v155 + *(v261 + 56);
      v228 = v88;
      v163 = v258;
      sub_22D01466C();
      sub_22CEF87B4(&qword_28143F708, MEMORY[0x277CC95F0]);
      v164 = v155;
      v165 = v260;
      v166 = sub_22D016DEC();
      v168 = v167;
      (*(v259 + 8))(v163, v165);
      sub_22CF0D34C(v164);
      v169 = sub_22CEEE31C(v166, v168, &v264);

      *(v158 + 14) = v169;
      _os_log_impl(&dword_22CEE1000, v156, v157, "Alert coordinator is not interested in stale updates: %{public}s.%{public}s", v158, 0x16u);
      v170 = v263;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v170, -1, -1);
      MEMORY[0x2318C6860](v158, -1, -1);

      v149 = *(v109 + 8);
      v150 = v93;
      goto LABEL_15;
    }

    sub_22CF0D34C(v155);
    v152 = v154;
LABEL_26:
    sub_22CF0D34C(v152);
    v149 = *(v109 + 8);
    v150 = v93;
    v151 = v88;
    return v149(v150, v151);
  }

  v256 = v153;
  v171 = v246;
  sub_22D01635C();
  v172 = v237;
  sub_22CF1C1C8(a1, v237);
  v257 = a1;
  v173 = v245;
  sub_22CF1C1C8(a1, v245);
  v174 = sub_22D01636C();
  v175 = sub_22D01690C();
  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    v255 = swift_slowAlloc();
    v264 = v255;
    *v176 = 136446466;
    v177 = *v172;
    v178 = v172[1];

    sub_22CF0D34C(v172);
    v179 = sub_22CEEE31C(v177, v178, &v264);

    *(v176 + 4) = v179;
    *(v176 + 12) = 2082;
    v180 = v173 + *(v261 + 56);
    v181 = v88;
    v182 = v258;
    sub_22D01466C();
    sub_22CEF87B4(&qword_28143F708, MEMORY[0x277CC95F0]);
    v183 = v260;
    v184 = sub_22D016DEC();
    v186 = v185;
    v187 = v182;
    v88 = v181;
    (*(v259 + 8))(v187, v183);
    sub_22CF0D34C(v245);
    v188 = sub_22CEEE31C(v184, v186, &v264);

    *(v176 + 14) = v188;
    _os_log_impl(&dword_22CEE1000, v174, v175, "AlertPresenter is presenting alert: %{public}s.%{public}s", v176, 0x16u);
    v189 = v255;
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v189, -1, -1);
    MEMORY[0x2318C6860](v176, -1, -1);

    v190 = *(v262 + 8);
    v191 = v246;
  }

  else
  {

    sub_22CF0D34C(v173);
    sub_22CF0D34C(v172);
    v190 = *(v262 + 8);
    v191 = v171;
  }

  v245 = v190;
  (v190)(v191, v263);
  v192 = v251;
  v193 = v240;
  sub_22D0150BC();
  v254 = sub_22D01668C();
  v246 = v194;
  sub_22D01508C();
  sub_22D01668C();
  v195 = v249;
  sub_22D01507C();
  LODWORD(v240) = sub_22D01505C();
  v196 = v250;
  sub_22D0152CC();
  v197 = v252;
  (*(v192 + 16))(v193, v195, v252);
  v198 = (*(v192 + 88))(v193, v197);
  v199 = v198 == *MEMORY[0x277CB9840];
  v227 = v109;
  v228 = v88;
  v229 = v93;
  if (v199)
  {
    v200 = v253;
    v201 = v243;
    v255 = *(v253 + 8);
    (v255)(v196, v243);
    (*(v192 + 96))(v193, v197);
    *v196 = *v193;
    v202 = MEMORY[0x277D4D438];
  }

  else if (v198 == *MEMORY[0x277CB9848])
  {
    v200 = v253;
    v201 = v243;
    v255 = *(v253 + 8);
    (v255)(v196, v243);
    v202 = MEMORY[0x277D4D440];
  }

  else
  {
    if (v198 != *MEMORY[0x277CB9838])
    {
      v223 = v230;
      sub_22D0152CC();
      v224 = v253;
      v225 = v243;
      v255 = *(v253 + 8);
      (v255)(v196, v243);
      (*(v224 + 32))(v196, v223, v225);
      (*(v192 + 8))(v193, v197);
      goto LABEL_39;
    }

    v200 = v253;
    v201 = v243;
    v255 = *(v253 + 8);
    (v255)(v196, v243);
    v202 = MEMORY[0x277D4D430];
  }

  (*(v200 + 104))(v196, *v202, v201);
LABEL_39:
  v203 = v257;
  sub_22D01466C();
  v204 = v261;
  v205 = *(v261 + 24);
  sub_22D014F9C();
  sub_22D01509C();
  v206 = *(v203 + *(v204 + 28));
  v207 = *(v204 + 20);

  sub_22D014DDC();
  if (!v208)
  {
    sub_22D014F9C();
  }

  v209 = v241;
  sub_22D014F1C();
  v210 = sub_22D0140BC();
  v211 = *(v210 + 48);
  v212 = *(v210 + 52);
  swift_allocObject();
  sub_22D0140AC();
  sub_22CEF87B4(&qword_28143F648, MEMORY[0x277CB97B0]);
  v213 = sub_22D01409C();
  v215 = *(v233 + 16);
  v214 = *(v233 + 24);
  v216 = v213;
  v218 = v217;
  swift_getObjectType();
  v219 = v209;
  v220 = *v257;
  v221 = v257[1];
  sub_22CF37A40();
  v222 = v250;
  sub_22D0152AC();
  sub_22CEE7524(v216, v218);

  (*(v242 + 8))(v219, v244);
  (v255)(v222, v243);
  (*(v251 + 8))(v249, v252);
  return (*(v227 + 8))(v229, v228);
}

void sub_22CF14C8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v52 - v10;
  v12 = type metadata accessor for ActivityManagerEvent(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = (&v52 - v20);
  v22 = *(a1 + *(v19 + 28));
  if (v22 == 4)
  {
    if (qword_28143FB38 != -1)
    {
      swift_once();
    }

    v37 = sub_22D01637C();
    __swift_project_value_buffer(v37, qword_281444450);
    sub_22CF0CC54(a1, v17, type metadata accessor for ActivityManagerEvent);
    v38 = sub_22D01636C();
    v39 = sub_22D01690C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v55[0] = v41;
      *v40 = 136446210;
      v42 = *v17;
      v43 = v17[1];

      sub_22CF0F640(v17, type metadata accessor for ActivityManagerEvent);
      v44 = sub_22CEEE31C(v42, v43, v55);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_22CEE1000, v38, v39, "Momentary activity ended %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x2318C6860](v41, -1, -1);
      MEMORY[0x2318C6860](v40, -1, -1);
    }

    else
    {

      sub_22CF0F640(v17, type metadata accessor for ActivityManagerEvent);
    }

    v45 = *(*(v4 + 16) + 16);
    os_unfair_lock_lock(v45);
    v47 = *a1;
    v46 = a1[1];
    v48 = type metadata accessor for Activity();
    (*(*(v48 - 8) + 56))(v11, 1, 1, v48);
    swift_beginAccess();

    v49 = v11;
    v50 = v47;
    v51 = v46;
    goto LABEL_16;
  }

  if (v22 == 1)
  {
    ObjectType = swift_getObjectType();
    v24 = *a1;
    v25 = a1[1];
    (*(a3 + 32))(v3, &off_28402C630, *a1, v25, ObjectType, a3);
    v26 = type metadata accessor for Activity();
    v27 = a1 + *(v26 + 20);
    if (sub_22D014D1C())
    {
      if (qword_28143FB38 != -1)
      {
        swift_once();
      }

      v28 = sub_22D01637C();
      __swift_project_value_buffer(v28, qword_281444450);
      sub_22CF0CC54(a1, v21, type metadata accessor for ActivityManagerEvent);
      v29 = sub_22D01636C();
      v30 = sub_22D01690C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v54 = v24;
        v55[0] = v32;
        v33 = v32;
        *v31 = 136446210;
        v52 = *v21;
        v53 = v25;
        v34 = v21[1];

        sub_22CF0F640(v21, type metadata accessor for ActivityManagerEvent);
        v35 = sub_22CEEE31C(v52, v34, v55);
        v25 = v53;

        *(v31 + 4) = v35;
        _os_log_impl(&dword_22CEE1000, v29, v30, "Tracking momentary activity %{public}s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        v36 = v33;
        v24 = v54;
        MEMORY[0x2318C6860](v36, -1, -1);
        MEMORY[0x2318C6860](v31, -1, -1);
      }

      else
      {

        sub_22CF0F640(v21, type metadata accessor for ActivityManagerEvent);
      }

      v45 = *(*(v4 + 16) + 16);
      os_unfair_lock_lock(v45);
      sub_22CF0CC54(a1, v11, type metadata accessor for Activity);
      (*(*(v26 - 8) + 56))(v11, 0, 1, v26);
      swift_beginAccess();

      v49 = v11;
      v50 = v24;
      v51 = v25;
LABEL_16:
      sub_22CF0BC5C(v49, v50, v51);
      swift_endAccess();
      os_unfair_lock_unlock(v45);
    }
  }
}

uint64_t sub_22CF15224@<X0>(char *a1@<X8>)
{
  v56 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v2 = *(*(v65 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v65, v3);
  v64 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v63 = &v55 - v7;
  v8 = sub_22D01430C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v61 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v60 = &v55 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v55 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v55 - v22;
  os_unfair_lock_assert_owner(*(*(v1 + 16) + 16));
  swift_beginAccess();
  v24 = *(v1 + 112);

  sub_22D01423C();
  v26 = *(v9 + 16);
  v25 = v9 + 16;
  v69 = v20;
  v70 = v8;
  v55 = v23;
  v59 = v26;
  v26(v20, v23, v8);
  v27 = *(v24 + 64);
  v58 = v24 + 64;
  v28 = 1 << *(v24 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v57 = (v28 + 63) >> 6;
  v62 = v25;
  v66 = (v25 - 8);
  v67 = (v25 + 16);
  v68 = v24;

  v32 = 0;
  for (i = v63; v30; result = (v52)(v48, v53, v47))
  {
    v34 = v32;
LABEL_9:
    v35 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v36 = v35 | (v34 << 6);
    v37 = *(v68 + 56);
    v38 = (*(v68 + 48) + 16 * v36);
    v40 = *v38;
    v39 = v38[1];
    v41 = (type metadata accessor for Activity() - 8);
    v42 = v65;
    sub_22CF0CCBC(v37 + *(*v41 + 72) * v36, i + *(v65 + 48), type metadata accessor for Activity);
    *i = v40;
    i[1] = v39;
    v43 = v64;
    sub_22CEEB6DC(i, v64, &unk_27D9F3840, &unk_22D01A2B0);
    v44 = *(v43 + 8);

    v45 = v43 + *(v42 + 48);
    v46 = v61;
    v47 = v70;
    v59(v61, v45 + v41[12], v70);
    sub_22CF0F640(v45, type metadata accessor for Activity);
    sub_22CF1A1AC(&qword_281443A30, MEMORY[0x277CC9578]);
    v48 = v69;
    v49 = sub_22D01663C();
    sub_22CEEC3D8(i, &unk_27D9F3840, &unk_22D01A2B0);
    if (v49)
    {
      v50 = v48;
    }

    else
    {
      v50 = v46;
    }

    if (v49)
    {
      v51 = v46;
    }

    else
    {
      v51 = v48;
    }

    (*v66)(v50, v47);
    v52 = *v67;
    v53 = v60;
    (*v67)(v60, v51, v47);
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v57)
    {
      v54 = v70;
      (*v66)(v55, v70);

      (*v67)(v56, v69, v54);
    }

    v30 = *(v58 + 8 * v34);
    ++v32;
    if (v30)
    {
      v32 = v34;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_38Tm()
{
  v1 = type metadata accessor for ActivityManagerEvent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v28 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = type metadata accessor for Activity();
  v8 = v7[5];
  v9 = sub_22D014E2C();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v7[6];
  v11 = sub_22D01502C();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = *(v0 + v3 + v7[7]);

  v13 = *(v0 + v3 + v7[8]);

  v14 = *(v0 + v3 + v7[9]);

  v15 = v7[10];
  v16 = sub_22D01430C();
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v3 + v15, v16);
  v17(v0 + v3 + v7[11], v16);
  v18 = *(v0 + v3 + v7[13] + 8);

  v19 = v7[14];
  v20 = sub_22D0146BC();
  (*(*(v20 - 8) + 8))(v0 + v3 + v19, v20);
  v21 = v7[15];
  v22 = sub_22D01486C();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v0 + v3 + v21, 1, v22))
  {
    (*(v23 + 8))(v5 + v21, v22);
  }

  v24 = *(v5 + v7[16] + 8);

  v25 = *(v5 + *(v1 + 24));
  swift_unknownObjectRelease();
  v26 = *(v5 + *(v1 + 28) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v28, v2 | 7);
}

uint64_t sub_22CF15990(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for ActivityManagerEvent(0);
  v10 = *(a1 + *(result + 20));
  if (v10 == 1)
  {
    ObjectType = swift_getObjectType();
    (*(a3 + 32))(v5, a5, *a1, a1[1], ObjectType, a3);

    return sub_22CF0CD9C(a1);
  }

  else if (v10 == 4)
  {
    v11 = *a1;
    v12 = a1[1];

    return sub_22CF38300(v11, v12, 2);
  }

  return result;
}

void sub_22CF15A78(uint64_t *a1, char *a2, uint64_t a3)
{
  v149 = a3;
  v5 = sub_22D01630C();
  v150 = *(v5 - 8);
  v151 = v5;
  v6 = *(v150 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v148 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v146 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v146 - v15;
  v17 = type metadata accessor for ActivityManagerEvent(0);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v22 = (&v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = (&v146 - v27);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = (&v146 - v31);
  v34 = MEMORY[0x28223BE20](v30, v33);
  v36 = MEMORY[0x28223BE20](v34, v35);
  v38 = (&v146 - v37);
  v40 = MEMORY[0x28223BE20](v36, v39);
  v42 = (&v146 - v41);
  v44 = MEMORY[0x28223BE20](v40, v43);
  v48 = (&v146 - v47);
  v49 = *(v44 + 28);
  v152 = a1;
  v50 = *(a1 + v49);
  if (v50 <= 1)
  {
    v146 = v16;
    v147 = v13;
    v148 = a2;
    if (v50)
    {
      v87 = v46;
      v88 = v152;
      if (qword_28143FB40 != -1)
      {
        swift_once();
      }

      v89 = sub_22D01637C();
      __swift_project_value_buffer(v89, qword_281444468);
      sub_22CF1C1C8(v88, v38);
      v90 = sub_22D01636C();
      v91 = sub_22D01690C();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v154 = v93;
        *v92 = 136446210;
        v94 = *v38;
        v95 = v38[1];

        sub_22CF0D34C(v38);
        v96 = sub_22CEEE31C(v94, v95, &v154);

        *(v92 + 4) = v96;
        _os_log_impl(&dword_22CEE1000, v90, v91, "Activity started: %{public}s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v93);
        MEMORY[0x2318C6860](v93, -1, -1);
        MEMORY[0x2318C6860](v92, -1, -1);
      }

      else
      {

        sub_22CF0D34C(v38);
      }

      v128 = v147;
      sub_22D01632C();
      sub_22D0162EC();
      sub_22CF1C1C8(v88, v87);
      v129 = sub_22D01632C();
      v130 = sub_22D016A1C();
      if (sub_22D016A7C())
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v154 = v132;
        *v131 = 136446210;
        v133 = *v87;
        v134 = v87[1];

        sub_22CF0D34C(v87);
        v135 = sub_22CEEE31C(v133, v134, &v154);

        *(v131 + 4) = v135;
        v136 = sub_22D0162FC();
        _os_signpost_emit_with_name_impl(&dword_22CEE1000, v129, v130, v136, "activityStarted", "Activity started: %{public}s", v131, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v132);
        MEMORY[0x2318C6860](v132, -1, -1);
        MEMORY[0x2318C6860](v131, -1, -1);
      }

      else
      {

        sub_22CF0D34C(v87);
      }

      (*(v150 + 8))(v128, v151);
      v142 = v149;
      ObjectType = swift_getObjectType();
      v144 = v153;
      (*(v142 + 32))(v153, &off_28402E610, *v88, v88[1], ObjectType, v142);
      v145 = *(v144 + 16);
      v141 = v88;
    }

    else
    {
      v60 = v152;
      if (qword_28143FB40 != -1)
      {
        swift_once();
      }

      v61 = sub_22D01637C();
      __swift_project_value_buffer(v61, qword_281444468);
      sub_22CF1C1C8(v60, v48);
      v62 = sub_22D01636C();
      v63 = sub_22D01690C();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v154 = v65;
        *v64 = 136446210;
        v66 = *v48;
        v67 = v48[1];

        sub_22CF0D34C(v48);
        v68 = sub_22CEEE31C(v66, v67, &v154);

        *(v64 + 4) = v68;
        _os_log_impl(&dword_22CEE1000, v62, v63, "Activity pended: %{public}s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        MEMORY[0x2318C6860](v65, -1, -1);
        MEMORY[0x2318C6860](v64, -1, -1);
      }

      else
      {

        sub_22CF0D34C(v48);
      }

      sub_22D01632C();
      v119 = v146;
      sub_22D0162EC();
      sub_22CF1C1C8(v60, v42);
      v120 = sub_22D01632C();
      v121 = sub_22D016A1C();
      if (sub_22D016A7C())
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v154 = v123;
        *v122 = 136446210;
        v124 = *v42;
        v125 = v42[1];

        sub_22CF0D34C(v42);
        v126 = sub_22CEEE31C(v124, v125, &v154);

        *(v122 + 4) = v126;
        v127 = sub_22D0162FC();
        _os_signpost_emit_with_name_impl(&dword_22CEE1000, v120, v121, v127, "activityPended", "Activity pended: %{public}s", v122, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v123);
        MEMORY[0x2318C6860](v123, -1, -1);
        MEMORY[0x2318C6860](v122, -1, -1);
      }

      else
      {

        sub_22CF0D34C(v42);
      }

      (*(v150 + 8))(v119, v151);
      v137 = v149;
      v138 = swift_getObjectType();
      v139 = v153;
      (*(v137 + 32))(v153, &off_28402E610, *v60, v60[1], v138, v137);
      v140 = *(v139 + 16);
      v141 = v60;
    }

    sub_22CF10058(v141);
  }

  else
  {
    if (v50 == 2)
    {
      if (qword_28143FB40 != -1)
      {
        swift_once();
      }

      v69 = sub_22D01637C();
      __swift_project_value_buffer(v69, qword_281444468);
      v70 = v152;
      sub_22CF1C1C8(v152, v32);
      v71 = sub_22D01636C();
      v72 = sub_22D01690C();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v154 = v74;
        *v73 = 136446210;
        v75 = *v32;
        v76 = v32[1];

        sub_22CF0D34C(v32);
        v77 = sub_22CEEE31C(v75, v76, &v154);

        *(v73 + 4) = v77;
        _os_log_impl(&dword_22CEE1000, v71, v72, "Activity stopped: %{public}s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        MEMORY[0x2318C6860](v74, -1, -1);
        MEMORY[0x2318C6860](v73, -1, -1);
      }

      else
      {

        sub_22CF0D34C(v32);
      }

      v97 = *(v153 + 16);
      v154 = 0;
      v98 = *(*(v97 + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
      os_unfair_lock_lock(v98);
      sub_22CF2D9F0(v97, v70, &v154);
      os_unfair_lock_unlock(v98);
      v101 = v154;
      if (v154)
      {
        MEMORY[0x28223BE20](v99, v100);
        v102 = &v146 - 4;
        *(&v146 - 2) = v70;
        v103 = sub_22CFFF98C;
LABEL_31:
        sub_22CF1685C(v103, v102, v101);

        return;
      }

      __break(1u);
      goto LABEL_49;
    }

    if (v50 == 3)
    {
      if (qword_28143FB40 != -1)
      {
        swift_once();
      }

      v51 = sub_22D01637C();
      __swift_project_value_buffer(v51, qword_281444468);
      v52 = v152;
      sub_22CF1C1C8(v152, v22);
      v53 = sub_22D01636C();
      v54 = sub_22D01690C();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v154 = v56;
        *v55 = 136446210;
        v57 = *v22;
        v58 = v22[1];

        sub_22CF0D34C(v22);
        v59 = sub_22CEEE31C(v57, v58, &v154);

        *(v55 + 4) = v59;
        _os_log_impl(&dword_22CEE1000, v53, v54, "Activity updated: %{public}s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        MEMORY[0x2318C6860](v56, -1, -1);
        MEMORY[0x2318C6860](v55, -1, -1);
      }

      else
      {

        sub_22CF0D34C(v22);
      }

      v104 = *(v153 + 16);
      v154 = 0;
      v105 = *(*(v104 + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
      os_unfair_lock_lock(v105);
      sub_22CF2D9F0(v104, v52, &v154);
      os_unfair_lock_unlock(v105);
      v101 = v154;
      if (v154)
      {
        MEMORY[0x28223BE20](v106, v107);
        v102 = &v146 - 4;
        *(&v146 - 2) = v52;
        v103 = sub_22CF2E768;
        goto LABEL_31;
      }

LABEL_49:
      __break(1u);
      return;
    }

    v78 = v45;
    if (qword_28143FB40 != -1)
    {
      swift_once();
    }

    v79 = sub_22D01637C();
    __swift_project_value_buffer(v79, qword_281444468);
    sub_22CF1C1C8(v152, v28);
    v80 = sub_22D01636C();
    v81 = sub_22D01690C();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v154 = v83;
      *v82 = 136446210;
      v84 = *v28;
      v85 = v28[1];

      sub_22CF0D34C(v28);
      v86 = sub_22CEEE31C(v84, v85, &v154);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_22CEE1000, v80, v81, "Activity discarded: %{public}s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x2318C6860](v83, -1, -1);
      MEMORY[0x2318C6860](v82, -1, -1);
    }

    else
    {

      sub_22CF0D34C(v28);
    }

    v108 = v148;
    v109 = v152;
    v110 = *(v153 + 16);
    sub_22CF3BF74(v152);
    sub_22D01632C();
    sub_22D0162EC();
    sub_22CF1C1C8(v109, v78);
    v111 = sub_22D01632C();
    v112 = sub_22D016A1C();
    if (sub_22D016A7C())
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v154 = v114;
      *v113 = 136446210;
      v115 = *v78;
      v116 = v78[1];

      sub_22CF0D34C(v78);
      v117 = sub_22CEEE31C(v115, v116, &v154);

      *(v113 + 4) = v117;
      v118 = sub_22D0162FC();
      _os_signpost_emit_with_name_impl(&dword_22CEE1000, v111, v112, v118, "activityDiscarded", "Activity discarded: %{public}s", v113, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v114);
      MEMORY[0x2318C6860](v114, -1, -1);
      MEMORY[0x2318C6860](v113, -1, -1);
    }

    else
    {

      sub_22CF0D34C(v78);
    }

    (*(v150 + 8))(v108, v151);
  }
}