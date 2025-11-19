uint64_t sub_226EC5128()
{
  v6 = (v0[10] + *v0[10]);
  v1 = *(v0[10] + 4);
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_226EC6E14;
  v3 = v0[11];
  v4 = v0[7];

  return v6(v0 + 5, v4);
}

uint64_t sub_226EC5220(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226EC52CC(a1, a2, v2);
}

uint64_t sub_226EC52CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = sub_227666ED0();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v3[16] = *(v5 + 64);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EC5398, 0, 0);
}

uint64_t sub_226EC5398()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[16];
    v3 = v0[17];
    v5 = v0[14];
    v6 = v0[15];
    v7 = v0[12];
    sub_226E91B50(Strong + 80, (v0 + 2));

    v8 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v9 = *v8;
    v10 = *(*v8 + 40);
    v11 = *(*v8 + 48);
    __swift_project_boxed_opaque_existential_0((*v8 + 16), v10);
    (*(v6 + 16))(v3, v7, v5);
    v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v13 = swift_allocObject();
    v0[18] = v13;
    *(v13 + 16) = v9;
    (*(v6 + 32))(v13 + v12, v3, v5);
    v14 = *(v11 + 24);

    v22 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[19] = v16;
    *v16 = v0;
    v16[1] = sub_226EC6850;
    v17 = MEMORY[0x277D83B88];

    return (v22)(v0 + 10, sub_226EC56EC, v13, v17, v10, v11);
  }

  else
  {
    v19 = v0[11];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v0[17];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_226EC5628()
{
  v1 = sub_227666ED0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EC57B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_227666EC0();
  v6 = v5;
  v7 = sub_227666EA0();
  result = sub_226EC5818(v7, a1, v6);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_226EC5818(uint64_t a1, void *a2, double a3)
{
  v88 = a1;
  v5 = sub_227662930();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662750();
  v83 = *(v10 - 8);
  v11 = v83;
  v12 = *(v83 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v81 - v20;
  sub_227662740();
  (*(v6 + 104))(v9, *MEMORY[0x277CC9968], v5);
  sub_227662610();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  v22 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v23 = *v22;
  v24 = v22[1];
  LOBYTE(v5) = *(v22 + 16);
  v25 = v22[3];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  v30 = v23;
  v31 = v24;

  sub_22766A070();
  v85 = v25;
  v86 = v30;
  *(v29 + 16) = v30;
  *(v29 + 24) = v31;
  v84 = v31;
  *(v29 + 32) = v5;
  *(v29 + 40) = v25;
  swift_getKeyPath();
  v88 = v21;
  v32 = v21;
  v33 = v83;
  sub_226E93170(v32, v19, &qword_27D7B9690, qword_227670B50);
  if ((*(v33 + 48))(v19, 1, v10) == 1)
  {
    sub_226E97D1C(v19, &qword_27D7B9690, qword_227670B50);
    v91 = 0u;
    v92 = 0u;
  }

  else
  {
    *(&v92 + 1) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v91);
    (*(v33 + 32))(boxed_opaque_existential_0, v19, v10);
  }

  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v35 = sub_22766C820();
  sub_226E93170(&v91, v89, &unk_27D7BC990, &qword_227670A30);
  v36 = v90;
  v37 = v29;
  if (v90)
  {
    v38 = __swift_project_boxed_opaque_existential_0(v89, v90);
    v39 = *(v36 - 8);
    v40 = *(v39 + 64);
    MEMORY[0x28223BE20](v38);
    v42 = &v81 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v42);
    v43 = sub_22766D170();
    (*(v39 + 8))(v42, v36);
    __swift_destroy_boxed_opaque_existential_0(v89);
  }

  else
  {
    v43 = 0;
  }

  v44 = objc_opt_self();
  v45 = [v44 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  v47 = [objc_allocWithZone(v46) initWithLeftExpression:v35 rightExpression:v45 modifier:0 type:3 options:0];

  sub_226E97D1C(&v91, &unk_27D7BC990, &qword_227670A30);
  v48 = qword_2813B2078;
  swift_beginAccess();
  v49 = v47;
  v50 = sub_22766A080();
  v52 = v51;
  MEMORY[0x22AA985C0]();
  if (*((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v83 = *((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v50(&v91, 0);
  swift_endAccess();

  swift_getKeyPath();
  *(&v92 + 1) = MEMORY[0x277D839F8];
  *&v91 = a3;

  v53 = sub_22766C820();
  sub_226E93170(&v91, v89, &unk_27D7BC990, &qword_227670A30);
  v54 = v90;
  if (v90)
  {
    v55 = __swift_project_boxed_opaque_existential_0(v89, v90);
    v82 = v37;
    v83 = v48;
    v56 = v46;
    v57 = *(v54 - 8);
    v58 = *(v57 + 64);
    MEMORY[0x28223BE20](v55);
    v60 = &v81 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v57 + 16))(v60);
    v61 = sub_22766D170();
    (*(v57 + 8))(v60, v54);
    v46 = v56;
    v37 = v82;
    v48 = v83;
    __swift_destroy_boxed_opaque_existential_0(v89);
  }

  else
  {
    v61 = 0;
  }

  v62 = [v44 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v63 = [objc_allocWithZone(v46) initWithLeftExpression:v53 rightExpression:v62 modifier:0 type:3 options:0];

  sub_226E97D1C(&v91, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v64 = v63;
  v65 = sub_22766A080();
  v67 = v66;
  MEMORY[0x22AA985C0]();
  if (*((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v48 = *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v65(&v91, 0);
  swift_endAccess();

  v68 = v87;
  v69 = sub_226EC6320(0);
  if (v68)
  {

    swift_setDeallocating();
    v70 = qword_2813B2078;
    v71 = sub_22766A100();
    (*(*(v71 - 8) + 8))(v37 + v70, v71);
    v72 = *(*v37 + 48);
    v73 = *(*v37 + 52);
    swift_deallocClassInstance();
    sub_226E97D1C(v88, &qword_27D7B9690, qword_227670B50);
  }

  else
  {
    v74 = v69;
    [v69 setResultType_];
    [v74 setFetchLimit_];
    [v74 setFetchOffset_];
    [v74 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v75 = v86;
    v48 = sub_22766C9D0();

    sub_226E97D1C(v88, &qword_27D7B9690, qword_227670B50);

    swift_setDeallocating();
    v77 = qword_2813B2078;
    v78 = sub_22766A100();
    (*(*(v78 - 8) + 8))(v37 + v77, v78);
    v79 = *(*v37 + 48);
    v80 = *(*v37 + 52);
    swift_deallocClassInstance();
  }

  return v48;
}

id sub_226EC6350(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = *(v1 + 32);
  if (sub_227669C10())
  {
    v19 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
    swift_willThrow();
  }

  else
  {
    v50 = v13;
    v51 = v10;
    v52 = v2;
    v21 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v22 = sub_22766BFD0();
    v23 = [v21 initWithEntityName_];
    v48 = v23;

    [v23 setFetchBatchSize_];
    v24 = v1;
    v25 = qword_2813B2078;
    swift_beginAccess();
    v26 = v17;
    v27 = v6[2];
    v27(v26, v24 + v25, v5);
    sub_22766A090();
    v47 = v6[1];
    v49 = v26;
    v47(v26, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    v30 = v53;
    v3 = v48;
    [v48 setPredicate_];

    v55 = v25;
    v31 = v24 + v25;
    v32 = v24;
    v54 = v27;
    v27(v30, v31, v5);
    v33 = v47;
    v34 = sub_22766A0C0();
    LOBYTE(v29) = v35;
    v33(v30, v5);
    if ((v29 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v36 = v50;
    v54(v50, v32 + v55, v5);
    v37 = sub_22766A0E0();
    v39 = v38;
    v33(v36, v5);
    if ((v39 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v40 = v51;
    v54(v51, v32 + v55, v5);
    v41 = sub_22766A0B0();
    v42 = v33;
    v33(v40, v5);
    v43 = v49;
    if (v41 >> 62)
    {
      v44 = sub_22766CD20();
    }

    else
    {
      v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
      v54(v43, v32 + v55, v5);
      sub_22766A0B0();
      v42(v43, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v44 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

uint64_t sub_226EC6850()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_226FABDEC;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_226EC6D0C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

unint64_t sub_226EC696C(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = sub_227666FF0();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v33 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v33;
  v42 = a2;

  if (v9 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v39 = v8;
    v40 = v4;
    v35 = &v33;
    MEMORY[0x28223BE20](v11);
    v34 = &v33 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v10);
    v10 = 0;
    v41 = a1;
    v13 = *(a1 + 56);
    a1 += 56;
    v12 = v13;
    v14 = 1 << *(a1 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v4 = v15 & v12;
    v16 = (v14 + 63) >> 6;
    v36 = 0;
    v37 = v5 + 2;
    v38 = (v5 + 1);
    while (v4)
    {
      v17 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_12:
      v20 = v17 | (v10 << 6);
      v21 = *(v41 + 48) + v5[9] * v20;
      v22 = v5;
      v23 = v5[2];
      v8 = v39;
      v24 = v40;
      v23(v39, v21, v40);
      v25 = v43;
      v26 = sub_226EC6D84(v8, v42);
      v43 = v25;
      if (v25)
      {
        (*v38)(v8, v24);

        swift_willThrow();

        goto LABEL_18;
      }

      v27 = v26;
      (*v38)(v8, v24);
      v5 = v22;
      if (v27)
      {
        *&v34[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_17:
          v4 = sub_226EBAEF0(v34, v33, v36, v41);

          goto LABEL_18;
        }
      }
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {
        goto LABEL_17;
      }

      v19 = *(a1 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v4 = (v19 - 1) & v19;
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

  v31 = swift_slowAlloc();
  v32 = v42;

  v4 = sub_2272C5CA8(v31, v33, a1, v32);

  MEMORY[0x22AA9A450](v31, -1, -1);

LABEL_18:
  v29 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_226EC6D0C()
{
  v1 = v0[11];
  *v1 = v0[10];
  *(v1 + 8) = 0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226EC6D84(uint64_t a1, uint64_t a2)
{
  v3 = sub_227666F90();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    while (2)
    {
      v6 = *(v3 + 32 + 8 * v5++);
      v7 = *(a2 + 16);
      v8 = (a2 + 32);
      do
      {
        if (!v7)
        {
          v10 = 0;
          goto LABEL_9;
        }

        v9 = *v8++;
        --v7;
      }

      while (v9 != v6);
      if (v5 != v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_9:

  return v10;
}

uint64_t sub_226EC6E14()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_22748624C;
  }

  else
  {
    v3 = sub_226EC7028;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226EC6F28(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_226EC70D4, 0, 0);
}

uint64_t sub_226EC7028()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_226EC70B4(*(v0 + 64));

  v5 = *(v0 + 8);

  return v5(v3, v4);
}

void sub_226EC70D4()
{
  v1 = v0[9];
  v2 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_38;
  }

  v4 = 0;
  v5 = v0[12];
  v46 = v1 + 32;
  v44 = *(v1 + 16);
  v45 = v5 & 0xC000000000000001;
  if (v5 < 0)
  {
    v6 = v0[12];
  }

  v42 = v0[12];
  v41 = v5 + 56;
  while (2)
  {
    v43 = v2;
LABEL_6:
    if (v4 >= v3)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
LABEL_43:
      __break(1u);
      return;
    }

    v8 = (v46 + 16 * v4);
    v49 = *v8;
    v9 = v0[12];
    v50 = v8[1];
    if (v45)
    {

      sub_22766CCE0();
      sub_226E99364(0, &qword_281398B88, 0x277CE8D50);
      sub_226ECCEB4(&qword_281398B80, &qword_281398B88, 0x277CE8D50);
      sub_22766C700();
      v11 = v0[2];
      v10 = v0[3];
      v12 = v0[4];
      v13 = v0[5];
      v14 = v0[6];
    }

    else
    {
      v11 = v42;
      v15 = -1 << *(v42 + 32);
      v12 = ~v15;
      v16 = -v15;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v14 = v17 & *(v42 + 56);

      v13 = 0;
      v10 = v41;
    }

    v47 = v7;
    v48 = v7;
    v18 = (v12 + 64) >> 6;
    while (1)
    {
      if (v11 < 0)
      {
        v24 = sub_22766CD50();
        if (!v24)
        {
          goto LABEL_32;
        }

        v0[8] = v24;
        sub_226E99364(0, &qword_281398B88, 0x277CE8D50);
        swift_dynamicCast();
        v23 = v0[7];
        v21 = v13;
        v22 = v14;
        if (!v23)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v19 = v13;
        v20 = v14;
        v21 = v13;
        if (!v14)
        {
          while (1)
          {
            v21 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v21 >= v18)
            {
              goto LABEL_32;
            }

            v20 = *(v10 + 8 * v21);
            ++v19;
            if (v20)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
          goto LABEL_42;
        }

LABEL_21:
        v22 = (v20 - 1) & v20;
        v23 = *(*(v11 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
        if (!v23)
        {
LABEL_32:

          sub_226EBB21C();
          v2 = v43;
          v3 = v44;
          v4 = v47;
          if (v48 != v44)
          {
            goto LABEL_6;
          }

          goto LABEL_38;
        }
      }

      v25 = [v23 uniqueName];
      if (v25)
      {
        break;
      }

LABEL_15:

      v13 = v21;
      v14 = v22;
    }

    v26 = v25;
    v27 = v11;
    v28 = sub_22766C000();
    v30 = v29;

    if (v28 != v49 || v30 != v50)
    {
      v32 = sub_22766D190();

      v11 = v27;
      if (v32)
      {
        goto LABEL_35;
      }

      goto LABEL_15;
    }

LABEL_35:
    sub_226EBB21C();

    MEMORY[0x22AA985C0](v33);
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v34 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v2 = v51;
    v3 = v44;
    v4 = v47;
    if (v48 != v44)
    {
      continue;
    }

    break;
  }

LABEL_38:
  v35 = v0[12];
  v36 = v0[10];

  v37 = __swift_project_boxed_opaque_existential_0((v36 + 168), *(v36 + 192));
  v38 = sub_226EC2980(v2);
  v0[13] = v38;

  v39 = *v37;
  v40 = swift_task_alloc();
  v0[14] = v40;
  *v40 = v0;
  v40[1] = sub_226ECCF44;

  sub_226EC9C54(v38);
}

uint64_t sub_226EC7504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v3 = sub_22766B3B0();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B3F0();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B410();
  v24 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  sub_226EA1CF4();
  v19 = sub_22766C950();
  sub_22766B400();
  sub_22766C550();
  sub_22766B430();
  v23 = *(v12 + 8);
  v23(v16, v11);
  v20 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = v25;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = v26;
  v21 = _Block_copy(aBlock);

  sub_22766B3D0();
  v30 = MEMORY[0x277D84F90];
  sub_226E9D3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C50](v18, v10, v6, v21);
  _Block_release(v21);

  (*(v29 + 8))(v6, v3);
  (*(v27 + 8))(v10, v28);
  v23(v18, v24);
}

uint64_t sub_226EC78B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_226EC78E8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_226EC7A48();
  *a1 = result;
  return result;
}

uint64_t sub_226EC7924(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    *(v9 + 8) = a2 & 1;
  }

  v10 = *(v8 + 8);

  return v10();
}

id sub_226EC7A48()
{
  v1 = sub_227666FB0();
  v3 = v2;
  v5 = v4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_227663B00();
  sub_226EB2DFC(v1, v3, v5);
  if (v19 == 14)
  {
    return 0;
  }

  result = MEMORY[0x22AA91B00]();
  v9 = v0[7];
  v10 = *v0 + v9;
  if (__OFADD__(*v0, v9))
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v8;
    v6 = [objc_allocWithZone(MEMORY[0x277CE8D50]) init];
    sub_22766CE20();

    MEMORY[0x22AA98450](v11, v12);

    v13 = sub_22766BFD0();

    [v6 setUniqueName_];

    [v6 setVersion_];
    [v6 setMinimumEngineVersion_];
    sub_22766CE20();
    MEMORY[0x22AA98450](0xD000000000000017, 0x800000022769CB10);
    v14 = sub_227666F70();
    MEMORY[0x22AA98450](v14);

    MEMORY[0x22AA98450](0xD0000000000000B3, 0x800000022769CC20);
    v15 = sub_227666F70();
    MEMORY[0x22AA98450](v15);

    MEMORY[0x22AA98450](0x35203D3E202927, 0xE700000000000000);
    v16 = sub_22766BFD0();

    [v6 setPredicate_];

    [v6 setEarnLimit_];
    v17 = sub_22766BFD0();
    [v6 setValueExpression_];

    v18 = [objc_opt_self() kilocalorieUnit];
    [v6 setCanonicalUnit_];

    [v6 setVisibilityPredicate_];
    [v6 setDuplicateRemovalStrategy_];
    [v6 setDuplicateRemovalCalendarUnit_];
    result = [v6 setEarnDateStrategy_];
    if ((v10 & 0x8000000000000000) == 0)
    {
      [v6 setDisplayOrder_];
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226EC7DAC(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_226EC7FC0, 0, 0);
}

uint64_t sub_226EC7EAC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_22748C368;
  }

  else
  {
    v3 = sub_226EC8060;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226EC7FC0()
{
  *(v0[17] + 64) = v0[24];
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_226EB8590;
  v2 = v0[16];

  return sub_226EBD8B4(0);
}

uint64_t sub_226EC8060()
{
  if (*(v0 + 24))
  {
    v2 = *(v0 + 80);
    v1 = *(v0 + 88);
    v3 = *(v0 + 72);
    sub_226F6649C();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
    (*(v2 + 8))(v1, v3);
LABEL_5:
    v10 = *(v0 + 88);

    v11 = *(v0 + 8);

    return v11();
  }

  v5 = *(v0 + 104);
  *(v0 + 32) = *(v0 + 16);
  v7 = sub_227667710();
  v8 = *(v0 + 80);
  v9 = *(v0 + 72);
  if (v5)
  {
    (*(v8 + 8))(*(v0 + 88), *(v0 + 72), v7);
    goto LABEL_5;
  }

  v13 = v7;
  v14 = *(v0 + 88);
  v15 = v6;
  v16 = *(v0 + 72);
  (*(v8 + 8))();

  v17 = *(v0 + 8);

  return v17(v13, v15);
}

uint64_t sub_226EC81E4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 32);
  v8 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v9 = sub_2274E97E4;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v9 = sub_226EC8318;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_226EC8318()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 56), *(v0 + 48), 0);

  v2 = *(v0 + 8);

  return v2();
}

void sub_226EC8394()
{
  v1 = *(sub_22766B780() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + v4);

  sub_226EC343C(v5, v6, v7, v0 + v3, v8, v0 + ((v2 + v4 + 8) & ~v2));
}

uint64_t sub_226EC8438(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_226ECC838;

  return v7(v3 + 33);
}

uint64_t sub_226EC8528(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = v1[3];
  v7 = *(v1 + 4);
  v6 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E93028;

  return sub_226EC870C(a1, v4, v7, v6, v5);
}

uint64_t sub_226EC85F8()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_226FB6668;
  }

  else
  {
    v3 = sub_226EC8898;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226EC870C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_226ECC65C;

  return sub_226EC87C4(a2, a3, a4, a5);
}

uint64_t sub_226EC87C4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a4;
  *(v4 + 40) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v4 + 72) = v5;
  v6 = *(v5 - 8);
  *(v4 + 80) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EC8BD0, 0, 0);
}

uint64_t sub_226EC8898()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  sub_226E93170(v0[32], v1, &qword_27D7B9330, &qword_227673B00);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[35];
    sub_226E97D1C(v0[31], &qword_27D7B9330, &qword_227673B00);
    sub_22766A610();
    v5 = sub_22766B380();
    v6 = sub_22766C8B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226E8E000, v5, v6, "No achievement environment cache in the database, building a new one", v7, 2u);
      MEMORY[0x22AA9A450](v7, -1, -1);
    }

    v9 = v0[37];
    v8 = v0[38];
    v10 = v0[35];
    v11 = v0[33];
    v12 = v0[26];

    v9(v10, v11);
    sub_226E91B50(v12 + 56, (v0 + 10));
    sub_226E91B50(v12 + 16, (v0 + 15));
    sub_226E91B50(v12 + 176, (v0 + 20));
    sub_226FB68A4(v12 + 112, (v0 + 2));
    v13 = v0[13];
    v14 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 10), v13);
    v15 = *(v13 - 8);
    v16 = *(v15 + 64) + 15;
    v17 = swift_task_alloc();
    (*(v15 + 16))(v17, v14, v13);
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 15), v0[18]);
    v0[41] = sub_226FB6958(*v17, (v0 + 20), (v0 + 2));
    __swift_destroy_boxed_opaque_existential_0(v0 + 15);
    __swift_destroy_boxed_opaque_existential_0(v0 + 10);

    v18 = swift_task_alloc();
    v0[42] = v18;
    *v18 = v0;
    v18[1] = sub_226FB62F8;
    v19 = v0[29];

    return sub_227002FA4(v19, 0, 0xE000000000000000, 0, 0xE000000000000000);
  }

  else
  {
    v21 = v0[31];
    v22 = v0[27];
    v23 = v0[28];
    v24 = v0[25];
    sub_226E97D1C(v0[32], &qword_27D7B9330, &qword_227673B00);
    (*(v23 + 32))(v24, v21, v22);
    v26 = v0[35];
    v25 = v0[36];
    v28 = v0[31];
    v27 = v0[32];
    v29 = v0[29];

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_226EC8BD0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[11];
    v4 = v0[9];
    v5 = *(Strong + 112);
    sub_2276696A0();

    v6 = swift_task_alloc();
    v0[12] = v6;
    *(v6 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v6 + 24) = 38;
    *(v6 + 32) = 2;
    *(v6 + 40) = 194;
    *(v6 + 48) = v3;
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_226EC9234;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226EC4D54, v6, v9);
  }

  else
  {
    v14 = (v0[7] + *v0[7]);
    v10 = *(v0[7] + 4);
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_226ECB3C0;
    v12 = v0[8];

    return v14(v0 + 17);
  }
}

uint64_t sub_226EC8E18()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_226F52D8C;
  }

  else
  {
    v3 = sub_226EC8F2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226EC8F2C()
{
  v1 = v0[12];
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_0(v1 + 7, v2);
  v4 = *(v3 + 24);

  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_226EC9E50;
  v7 = v0[18];
  v8 = v0[16];
  v9 = v0[12];

  return (v11)(v7, sub_226EC938C, v9, v8, v2, v3);
}

uint64_t sub_226EC9090@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22766B7A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB18, &qword_2276801E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  sub_22766B7B0();
  sub_22766B810();
  (*(v8 + 8))(v11, v7);
  v12 = sub_22766B790();
  v14 = v13;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v12;
  a1[1] = v14;
  return result;
}

uint64_t sub_226EC9234()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  v2[14] = v0;

  v5 = v2[12];
  if (v0)
  {

    v6 = sub_227480A2C;
  }

  else
  {
    v8 = v2[10];
    v7 = v2[11];
    v9 = v2[9];

    (*(v8 + 8))(v7, v9);
    v6 = sub_226EC9414;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

char *sub_226EC938C(void *a1)
{
  __swift_project_boxed_opaque_existential_0((v1 + 96), *(v1 + 120));
  v3 = off_283AA53C0;
  type metadata accessor for WorkoutPlanDataStore();
  return (v3)(a1);
}

uint64_t sub_226EC9414()
{
  v5 = (v0[7] + *v0[7]);
  v1 = *(v0[7] + 4);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_226ECB3C0;
  v3 = v0[8];

  return v5(v0 + 17);
}

uint64_t sub_226EC9508(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226EC95A4(a1, v1);
}

uint64_t sub_226EC95A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_226EC95C4, 0, 0);
}

uint64_t sub_226EC95C4()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 56, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_226ECA990;

    return sub_226EC96DC();
  }

  else
  {
    **(v0 + 80) = 3;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_226EC96DC()
{
  v1[4] = v0;
  v2 = sub_22766A8A0();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94D8, &qword_2276743E0);
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EC9804, 0, 0);
}

id sub_226EC9804()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v2 + 16))(v1, v0[4] + OBJC_IVAR____TtC15SeymourServices25ContentAvailabilitySystem__fakeFitnessModeString, v3);
  sub_227669730();
  (*(v2 + 8))(v1, v3);
  if (v0[3])
  {
    v4 = MEMORY[0x22AA95A00](v0[2]);
    if (v4 != 3)
    {
LABEL_6:
      v14 = v0[10];
      v15 = v0[7];

      v16 = v0[1];

      return v16(v4);
    }
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = *(v0[4] + 304);
  v9 = sub_2276693C0();
  (*(v6 + 104))(v5, *MEMORY[0x277D4F900], v7);
  v10 = sub_226EC9A38(v5, v9);

  (*(v6 + 8))(v5, v7);
  if (v10)
  {
    result = [objc_opt_self() sharedBehavior];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v12 = result;
    v13 = [result fitnessMode];

    v4 = MEMORY[0x22AA959F0](v13);
    goto LABEL_6;
  }

  v17 = *__swift_project_boxed_opaque_existential_0((v0[4] + 240), *(v0[4] + 264));
  v18 = swift_task_alloc();
  v0[11] = v18;
  *v18 = v0;
  v18[1] = sub_226FCBA24;

  return sub_227036F64();
}

uint64_t sub_226EC9A38(uint64_t a1, uint64_t a2)
{
  v3 = sub_22766A8A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_2271BFC90(&unk_2813A5880, MEMORY[0x277D4F998]), v9 = sub_22766BF50(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_2271BFC90(&qword_2813A5878, MEMORY[0x277D4F998]);
      v17 = sub_22766BFB0();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_226EC9C54(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_22766AEC0();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v2[16] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v8 = sub_227667A70();
  v2[19] = v8;
  v9 = *(v8 - 8);
  v2[20] = v9;
  v10 = *(v9 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v11 = sub_22766B390();
  v2[25] = v11;
  v12 = *(v11 - 8);
  v2[26] = v12;
  v13 = *(v12 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EC9FF8, 0, 0);
}

uint64_t sub_226EC9E50()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 272);
  v5 = *v1;

  v6 = v2[12];
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F53004, 0, 0);
  }

  else
  {

    v7 = swift_task_alloc();
    v3[35] = v7;
    *v7 = v5;
    v7[1] = sub_226ECB2C0;
    v8 = v3[12];
    v9 = v3[18];

    return sub_226ECA1B4(v9);
  }
}

uint64_t sub_226EC9FF8()
{
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[12];
  sub_22766A610();
  sub_22766B370();
  v5 = *(v3 + 8);
  v0[30] = v5;
  v0[31] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = *__swift_project_boxed_opaque_existential_0((v4 + 16), *(v4 + 40));
  v7 = swift_task_alloc();
  v0[32] = v7;
  *v7 = v0;
  v7[1] = sub_226EC8E18;
  v8 = v0[24];

  return sub_226ECA330(v8);
}

void sub_226ECA114(uint64_t *a1)
{
  v3 = *(sub_22766BE40() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_226ECA4A0(a1, v1 + v4, v6, v7);
}

uint64_t sub_226ECA1B4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = sub_2276638D0();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v2[9] = *(v5 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226ECAA90, 0, 0);
}

uint64_t sub_226ECA2C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226ECA330(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = sub_227667A70();
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v5 = *(v4 + 64) + 15;
  v2[29] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9330, &qword_227673B00);
  v2[30] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v8 = sub_22766B390();
  v2[33] = v8;
  v9 = *(v8 - 8);
  v2[34] = v9;
  v10 = *(v9 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226ECAE04, 0, 0);
}

void sub_226ECA4A0(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *, uint64_t), uint64_t a4)
{
  v54 = a4;
  v55 = a3;
  v6 = sub_22766BE40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v51 = &v47 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  v16 = sub_22766B390();
  v52 = *(v16 - 8);
  v53 = v16;
  v17 = *(v52 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v47 - v21;
  v23 = (v7 + 16);
  if (a1[1])
  {
    v50 = a1[1];
    v24 = *a1;
    sub_22766A730();
    v25 = *v23;
    (*v23)(v15, a2, v6);
    v26 = sub_22766B380();
    v27 = sub_22766C8B0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v49 = v24;
      v29 = v28;
      v48 = swift_slowAlloc();
      v56 = v48;
      *v29 = 136315138;
      v25(v51, v15, v6);
      v30 = sub_22766C060();
      v32 = v31;
      (*(v7 + 8))(v15, v6);
      v33 = sub_226E97AE8(v30, v32, &v56);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_226E8E000, v26, v27, "ScriptConnection received successful response for %s", v29, 0xCu);
      v34 = v48;
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AA9A450](v34, -1, -1);
      v35 = v29;
      v24 = v49;
      MEMORY[0x22AA9A450](v35, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v15, v6);
    }

    (*(v52 + 8))(v22, v53);
    v55(v24, v50, 0);
  }

  else
  {
    sub_22766A730();
    v36 = *v23;
    (*v23)(v11, a2, v6);
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v56 = v50;
      *v39 = 136315138;
      v36(v51, v11, v6);
      v40 = sub_22766C060();
      v42 = v41;
      (*(v7 + 8))(v11, v6);
      v43 = sub_226E97AE8(v40, v42, &v56);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_226E8E000, v37, v38, "ScriptConnection received invalid response for %s", v39, 0xCu);
      v44 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AA9A450](v44, -1, -1);
      MEMORY[0x22AA9A450](v39, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    (*(v52 + 8))(v20, v53);
    sub_226F6649C();
    v45 = swift_allocError();
    *v46 = 3;
    v55(v45, 0, 1);
  }
}

uint64_t sub_226ECA990(char a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_226ECB250, 0, 0);
}

uint64_t sub_226ECAA90()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_226ECA2C0(v0[4], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226ECAFC4(v0[6]);
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[6];

    v7 = v0[1];

    return v7(0);
  }

  else
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v12 = v0[7];
    v13 = v0[5];
    v14 = *(v11 + 32);
    v14(v9, v0[6], v12);
    v15 = v13[11];
    v23 = v13[10];
    __swift_project_boxed_opaque_existential_0(v13 + 7, v23);
    (*(v11 + 16))(v10, v9, v12);
    v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v17 = swift_allocObject();
    v0[12] = v17;
    *(v17 + 16) = v13;
    v14(v17 + v16, v10, v12);
    v18 = *(v15 + 24);

    v22 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    v0[13] = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C38, &unk_227682250);
    *v20 = v0;
    v20[1] = sub_226F52994;

    return (v22)(v0 + 2, sub_226F530E0, v17, v21, v23, v15);
  }
}

uint64_t sub_226ECAD40()
{
  v1 = sub_2276638D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226ECAE04()
{
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[26];
  sub_22766A610();
  sub_22766B370();
  v5 = *(v3 + 8);
  v0[37] = v5;
  v0[38] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = v4[25];
  v7 = v4[26];
  __swift_project_boxed_opaque_existential_0(v4 + 22, v6);
  v8 = *(v7 + 24);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[39] = v10;
  *v10 = v0;
  v10[1] = sub_226EC85F8;
  v11 = v0[32];
  v12 = v0[30];

  return (v14)(v11, sub_226ECB02C, 0, v12, v6, v7);
}

uint64_t sub_226ECAFC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226ECB02C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9338, &qword_227673B10);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  v15 = sub_226ECB4D4(100);
  if (v2)
  {
    swift_setDeallocating();

    v16 = *(v12 + 40);

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v12 + v17, v18);
    v19 = *(*v12 + 48);
    v20 = *(*v12 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v22 = v15;
    swift_setDeallocating();

    v23 = *(v12 + 40);

    v24 = qword_2813B2078;
    v25 = sub_22766A100();
    (*(*(v25 - 8) + 8))(v12 + v24, v25);
    v26 = *(*v12 + 48);
    v27 = *(*v12 + 52);
    swift_deallocClassInstance();
    sub_226ED7114(v22, a2);
  }
}

uint64_t sub_226ECB250()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  **(v0 + 80) = *(v0 + 104);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226ECB2C0(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_226ECB7D4, 0, 0);
}

uint64_t sub_226ECB3C0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_227480AA8;
  }

  else
  {
    v3 = sub_226ECBC08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

char *sub_226ECB4D4(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC500, &qword_22767DE38);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_226ECBC84(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_226ECC184(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_2272652A8(MEMORY[0x277D84FA0], sub_226ECC94C, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725CE34(v12, MEMORY[0x277D84FA0], sub_226ECC94C, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC500, &qword_22767DE38);
  }

  return v1;
}

uint64_t sub_226ECB7D4()
{
  v69 = v0;
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[19];
  v5 = v0[20];
  sub_22766A610();
  v6 = *(v5 + 16);
  v6(v3, v2, v4);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[30];
  v11 = v0[27];
  v65 = v0[25];
  v12 = v0[23];
  if (v9)
  {
    v59 = v0[31];
    v61 = v0[30];
    v13 = v0[22];
    v58 = v0[27];
    v15 = v0[19];
    v14 = v0[20];
    v63 = v6;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v68 = v17;
    *v16 = 136315138;
    v63(v13, v12, v15);
    v18 = sub_22766C060();
    v57 = v8;
    v20 = v19;
    v67 = *(v14 + 8);
    v67(v12, v15);
    v21 = sub_226E97AE8(v18, v20, &v68);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_226E8E000, v7, v57, "Evaluating for ACHAchievementProgress with environment cache: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9A450](v17, -1, -1);
    v22 = v16;
    v6 = v63;
    MEMORY[0x22AA9A450](v22, -1, -1);

    v61(v58, v65);
  }

  else
  {
    v23 = v0[19];
    v24 = v0[20];

    v67 = *(v24 + 8);
    v67(v12, v23);
    v10(v11, v65);
  }

  v25 = v0[18];
  v26 = v0[17];
  v6(v0[21], v0[24], v0[19]);
  sub_226ECA2C0(v25, v26);
  v27 = sub_2276638D0();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v26, 1, v27);
  v30 = v0[17];
  if (v29 == 1)
  {
    sub_226ECAFC4(v0[17]);
  }

  else
  {
    v31 = sub_2276637D0();
    (*(v28 + 8))(v30, v27);
    v32 = *(v31 + 16);
  }

  v33 = v0[36];
  v34 = v0[21];
  v62 = v0[20];
  v35 = v0[18];
  v64 = v0[19];
  v66 = v0[24];
  v36 = v0[14];
  v37 = v0[15];
  v38 = v0[12];
  v39 = v0[13];
  v40 = v0[11];
  v41 = objc_allocWithZone(sub_22766A3C0());
  v42 = sub_22766A3B0();
  sub_226E91B50(v38 + 136, (v0 + 2));
  v43 = v42;
  sub_22766AEB0();
  sub_226ECC54C(v40);
  v44 = sub_22766AEA0();

  v60 = sub_226ECCE1C(v44);

  (*(v36 + 8))(v37, v39);
  sub_226ECAFC4(v35);
  v67(v66, v64);
  v46 = v0[28];
  v45 = v0[29];
  v47 = v0[27];
  v49 = v0[23];
  v48 = v0[24];
  v51 = v0[21];
  v50 = v0[22];
  v53 = v0[17];
  v52 = v0[18];
  v54 = v0[15];

  v55 = v0[1];

  return v55(v60);
}

uint64_t sub_226ECBC08()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = *(v0 + 136);
  sub_226ECC52C(*(v0 + 40));

  v4 = *(v0 + 8);

  return v4(v3);
}

id sub_226ECBC84(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = *(v1 + 32);
  if (sub_227669C10())
  {
    v19 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
    swift_willThrow();
  }

  else
  {
    v50 = v13;
    v51 = v10;
    v52 = v2;
    v21 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v22 = sub_22766BFD0();
    v23 = [v21 initWithEntityName_];
    v48 = v23;

    [v23 setFetchBatchSize_];
    v24 = v1;
    v25 = qword_2813B2078;
    swift_beginAccess();
    v26 = v17;
    v27 = v6[2];
    v27(v26, v24 + v25, v5);
    sub_22766A090();
    v47 = v6[1];
    v49 = v26;
    v47(v26, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    v30 = v53;
    v3 = v48;
    [v48 setPredicate_];

    v55 = v25;
    v31 = v24 + v25;
    v32 = v24;
    v54 = v27;
    v27(v30, v31, v5);
    v33 = v47;
    v34 = sub_22766A0C0();
    LOBYTE(v29) = v35;
    v33(v30, v5);
    if ((v29 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v36 = v50;
    v54(v50, v32 + v55, v5);
    v37 = sub_22766A0E0();
    v39 = v38;
    v33(v36, v5);
    if ((v39 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v40 = v51;
    v54(v51, v32 + v55, v5);
    v41 = sub_22766A0B0();
    v42 = v33;
    v33(v40, v5);
    v43 = v49;
    if (v41 >> 62)
    {
      v44 = sub_22766CD20();
    }

    else
    {
      v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
      v54(v43, v32 + v55, v5);
      sub_22766A0B0();
      v42(v43, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v44 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

uint64_t sub_226ECC184(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
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

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

char *sub_226ECC59C(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_22766CD20();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_226EBB21C();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t sub_226ECC65C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

void *sub_226ECC76C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_226ECC838()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_2274843B4;
  }

  else
  {
    v3 = sub_226ECCA4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_226ECC94C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D530A8], sub_226ECCDEC, sub_226ECDDEC);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226ED62E0(v7);

    sub_226EB707C(v8, MEMORY[0x277D530A8], sub_226ED647C);
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_226ECCA4C()
{
  v1 = *(v0 + 33);
  if (v1 == 3)
  {
    sub_226F6649C();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();
LABEL_4:
    v5 = *(v0 + 8);

    return v5();
  }

  v3 = *(v0 + 24);
  *(v0 + 32) = v1;
  sub_226ECCD98();
  v4 = sub_227667710();
  if (v3)
  {
    goto LABEL_4;
  }

  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t *sub_226ECCB68(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_22766CCE0();
  sub_226E99364(0, a5, a6);
  sub_226ECCEB4(a7, a5, a6);
  result = sub_22766C700();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_22766CD50())
      {
        goto LABEL_30;
      }

      sub_226E99364(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

unint64_t sub_226ECCD98()
{
  result = qword_28139B1E8;
  if (!qword_28139B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B1E8);
  }

  return result;
}

size_t sub_226ECCDEC(size_t a1, int64_t a2, char a3)
{
  result = sub_226ECCE4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226ECCE74(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  return v4(v7);
}

uint64_t sub_226ECCEB4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_226E99364(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226ECCF44(uint64_t a1)
{
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_226ECD0AC(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](sub_226ECD1AC, 0, 0);
}

uint64_t sub_226ECD1AC()
{
  v1 = *(v0[23] + 456);
  sub_226ECD3C0(v0[29]);
  sub_226E99364(0, &qword_281398A50, 0x277CE8CC0);
  v2 = sub_22766C2B0();
  v0[30] = v2;

  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_226ECD694;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0B0, &qword_22767C688);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_226ECD448;
  v0[13] = &block_descriptor_19;
  v0[14] = v3;
  [v1 provideAchievementProgressUpdates:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_226ECD318(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v10[5] = v8;
  a5(0);

  return sub_227669270();
}

uint64_t sub_226ECD448(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_226ECD514(void (*a1)(char *), uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v24[1] = a2;
  v25 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v24 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v24 - v21;
  v26[0] = a5;
  v26[1] = a6;
  a3(v26);
  swift_storeEnumTagMultiPayload();
  sub_226E95D18(v17, v20, a7, a8);
  sub_226E95D18(v20, v22, a7, a8);
  v25(v22);
  return sub_226E97D1C(v22, a7, a8);
}

uint64_t sub_226ECD694()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  if (v3)
  {
    v4 = *(v1 + 232);

    v5 = sub_2271CE9D8;
  }

  else
  {
    v5 = sub_226ECD7AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226ECD7AC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 256);

  sub_22766A610();

  v4 = sub_22766B380();
  v5 = sub_22766C8B0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 232);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    v9 = *(v0 + 232);
    if ((v7 & 0xC000000000000001) != 0)
    {
      if (v9 < 0)
      {
        v10 = *(v0 + 232);
      }

      v11 = sub_22766CD20();
      v12 = *(v0 + 232);
    }

    else
    {
      v11 = *(v9 + 16);
    }

    *(v8 + 4) = v11;

    *(v8 + 12) = 1024;
    *(v8 + 14) = v3;
    _os_log_impl(&dword_226E8E000, v4, v5, "Populating progress for  [%ld] templates to client with result: %{BOOL}d", v8, 0x12u);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  else
  {
    v13 = *(v0 + 232);
    swift_bridgeObjectRelease_n();
  }

  (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
  v15 = *(v0 + 208);
  v14 = *(v0 + 216);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_226ECD968(uint64_t *a1, void (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);

  return sub_227667720();
}

uint64_t sub_226ECDA34@<X0>(void (*a1)(uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D88, &qword_2276720C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  a1(v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8D88, &qword_2276720C8);
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    *(swift_allocObject() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v19 = *(v9 + 32);
    v19(v15, v7, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_226ED4D28;
    *(v20 + 24) = 0;
    (*(v9 + 16))(v12, v15, v8);
    v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25[1] = a2;
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v19((v23 + v21), v12, v8);
    v24 = (v23 + v22);
    *v24 = sub_226ED2C00;
    v24[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_226ECDD74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ECDDAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_226ECDDEC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2276622D0();
  v194 = *(v6 - 8);
  v7 = *(v194 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v193 = v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v173 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v173 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v173 - v21;
  MEMORY[0x28223BE20](v20);
  v192 = v173 - v23;
  v24 = [a1 activePlanFirstCompletedSessionIdentifier];
  if (!v24)
  {
    goto LABEL_15;
  }

  v188 = v19;
  v189 = a2;
  v25 = v24;
  v26 = sub_22766C000();
  v28 = v27;

  v29 = [a1 activePlanMostRecentlyCompletedSessionIdentifier];
  if (!v29)
  {
    goto LABEL_11;
  }

  v180 = v26;
  v30 = v29;
  v179 = sub_22766C000();
  v32 = v31;

  v33 = [a1 currentBestEnergyBurnedPerModality];
  if (!v33)
  {

LABEL_11:

LABEL_15:
    v38 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D51028], v38);
    swift_willThrow();

    return;
  }

  v182 = v33;
  v34 = [a1 numberOfGuidedWorkoutsOver5MinutesPerModality];
  if (!v34)
  {

    v37 = &v203;
LABEL_14:

    goto LABEL_15;
  }

  v176 = v34;
  v35 = [a1 numberOfWorkoutsOver5MinutesPerModality];
  if (!v35)
  {

    v37 = &v201 + 1;
    goto LABEL_14;
  }

  v175 = v35;
  v36 = [a1 currentStreak];
  if (v36)
  {
    sub_2275E3B6C(v36);
    if (v2)
    {

      return;
    }

    v41 = sub_2276667B0();
    (*(*(v41 - 8) + 56))(v22, 0, 1, v41);
    sub_226F9630C(v22, v192);
  }

  else
  {
    v40 = sub_2276667B0();
    (*(*(v40 - 8) + 56))(v192, 1, 1, v40);
  }

  v173[3] = [a1 longestWeeklyStreak];
  v173[2] = [a1 numberOfWorkoutsOver5Minutes];
  sub_22766CA80();
  v190 = sub_226ECF2F4(&qword_28139BDF0, MEMORY[0x277CC9178]);
  sub_22766CBB0();
  v187 = a1;
  v186 = v6;
  v185 = v28;
  v184 = v32;
  v181 = v12;
  v42 = MEMORY[0x277D84F98];
  if (v202)
  {
    v178 = v14;
    while (1)
    {
      sub_226F04970(&v201, &v200);
      sub_226E97CC0(&v200, v199);
      type metadata accessor for ManagedEnergyBurnedRecord();
      if (!swift_dynamicCast())
      {

        (*(v194 + 8))(v14, v6);
        goto LABEL_108;
      }

      v43 = v42;
      v44 = v198;
      v45 = [v198 modalityIdentifier];
      if (!v45)
      {
        break;
      }

      v46 = v45;
      v47 = sub_22766C000();
      a1 = v48;

      [v44 energyBurned];
      v50 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E78, &qword_2276724C0);
      v51 = sub_22766D010();

      v52 = sub_226E92000(v47, a1);
      v6 = v53;

      if (v6)
      {
        goto LABEL_127;
      }

      v191 = v44;
      v54 = v51 + 64;
      *(v51 + 64 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      v55 = (*(v51 + 48) + 16 * v52);
      *v55 = v47;
      v55[1] = a1;
      *(*(v51 + 56) + 8 * v52) = v50;
      v56 = *(v51 + 16);
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_128;
      }

      v195 = v3;
      *(v51 + 16) = v58;
      v42 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v199[0] = v43;
      v60 = -1 << *(v51 + 32);
      if (-v60 < 64)
      {
        v61 = ~(-1 << -v60);
      }

      else
      {
        v61 = -1;
      }

      v62 = v61 & *(v51 + 64);
      v183 = -1 << *(v51 + 32);
      v63 = (63 - v60) >> 6;

      v64 = 0;
      v196 = v51;
      while (v62)
      {
        v197 = isUniquelyReferenced_nonNull_native;
        v65 = v64;
LABEL_38:
        v67 = __clz(__rbit64(v62)) | (v65 << 6);
        v68 = (*(v51 + 48) + 16 * v67);
        v69 = *v68;
        v6 = v68[1];
        v70 = *(*(v51 + 56) + 8 * v67);

        a1 = sub_226E92000(v69, v6);
        v72 = v42[2];
        v73 = (v71 & 1) == 0;
        v74 = v72 + v73;
        if (__OFADD__(v72, v73))
        {
          goto LABEL_122;
        }

        v75 = v71;
        if (v42[3] >= v74)
        {
          if ((v197 & 1) == 0)
          {
            sub_226FF02D4();
          }
        }

        else
        {
          sub_226FE24C8(v74, v197 & 1);
          v76 = sub_226E92000(v69, v6);
          if ((v75 & 1) != (v77 & 1))
          {
            goto LABEL_134;
          }

          a1 = v76;
        }

        v62 &= v62 - 1;
        v42 = v199[0];
        if (v75)
        {

          *(v42[7] + 8 * a1) = v70;
        }

        else
        {
          *(v199[0] + 8 * (a1 >> 6) + 64) |= 1 << a1;
          v78 = (v42[6] + 16 * a1);
          *v78 = v69;
          v78[1] = v6;
          *(v42[7] + 8 * a1) = v70;
          v79 = v42[2];
          v57 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v57)
          {
            goto LABEL_124;
          }

          v42[2] = v80;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v64 = v65;
        v51 = v196;
      }

      v66 = v64;
      while (1)
      {
        v65 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          __break(1u);
          goto LABEL_114;
        }

        if (v65 >= v63)
        {
          break;
        }

        v62 = *(v54 + 8 * v65);
        ++v66;
        if (v62)
        {
          v197 = isUniquelyReferenced_nonNull_native;
          goto LABEL_38;
        }
      }

      sub_226EBB21C();

      __swift_destroy_boxed_opaque_existential_0(&v200);
      v14 = v178;
      v6 = v186;
      sub_22766CBB0();
      a1 = v187;
      v3 = v195;
      v12 = v181;
      if (!v202)
      {
        goto LABEL_47;
      }
    }

    (*(v194 + 8))(v178, v6);
LABEL_108:
    v165 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v165 - 8) + 104))(v166, *MEMORY[0x277D51028], v165);
    swift_willThrow();

    goto LABEL_118;
  }

LABEL_47:
  v173[1] = v42;
  v81 = *(v194 + 8);
  v194 += 8;
  v174 = v81;
  v81(v14, v6);
  sub_22766CA80();
  sub_22766CBB0();
  if (v202)
  {
    v82 = MEMORY[0x277D84F98];
    while (1)
    {
      sub_226F04970(&v201, &v200);
      sub_226E97CC0(&v200, v199);
      type metadata accessor for ManagedGuidedWorkoutCount();
      if (!swift_dynamicCast())
      {

        v174(v12, v6);
        goto LABEL_112;
      }

      v183 = v82;
      v83 = v198;
      v84 = [v198 modalityIdentifier];
      if (!v84)
      {
        break;
      }

      v85 = v84;
      v86 = sub_22766C000();
      v88 = v87;

      v89 = [v83 count];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E70, qword_22768D100);
      v90 = sub_22766D010();

      v91 = sub_226E92000(v86, v88);
      v93 = v92;

      if (v93)
      {
        goto LABEL_130;
      }

      v178 = v83;
      v195 = v3;
      v94 = v90 + 8;
      *(v90 + ((v91 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v91;
      v95 = (v90[6] + 16 * v91);
      *v95 = v86;
      v95[1] = v88;
      *(v90[7] + 8 * v91) = v89;
      v96 = v90[2];
      v57 = __OFADD__(v96, 1);
      v97 = v96 + 1;
      if (v57)
      {
        goto LABEL_131;
      }

      v98 = v90;
      v90[2] = v97;
      v82 = v183;
      v99 = swift_isUniquelyReferenced_nonNull_native();
      v199[0] = v82;
      v100 = -1 << v98[32];
      if (-v100 < 64)
      {
        v101 = ~(-1 << -v100);
      }

      else
      {
        v101 = -1;
      }

      v102 = v101 & *(v98 + 8);
      v177 = -1 << v98[32];
      v103 = (63 - v100) >> 6;

      v104 = 0;
      v191 = v98;
      while (v102)
      {
        v197 = v99;
        v105 = v104;
LABEL_67:
        v107 = __clz(__rbit64(v102)) | (v105 << 6);
        v108 = *(v98 + 7);
        v109 = (*(v98 + 6) + 16 * v107);
        v110 = *v109;
        v111 = v109[1];
        v196 = *(v108 + 8 * v107);

        v113 = sub_226E92000(v110, v111);
        v114 = v82[2];
        v115 = (v112 & 1) == 0;
        v116 = v114 + v115;
        if (__OFADD__(v114, v115))
        {
          goto LABEL_123;
        }

        v117 = v112;
        if (v82[3] >= v116)
        {
          if ((v197 & 1) == 0)
          {
            sub_226FF016C();
          }
        }

        else
        {
          sub_226FE2228(v116, v197 & 1);
          v118 = sub_226E92000(v110, v111);
          if ((v117 & 1) != (v119 & 1))
          {
            goto LABEL_134;
          }

          v113 = v118;
        }

        v102 &= v102 - 1;
        v82 = v199[0];
        if (v117)
        {

          *(v82[7] + 8 * v113) = v196;
        }

        else
        {
          *(v199[0] + 8 * (v113 >> 6) + 64) |= 1 << v113;
          v120 = (v82[6] + 16 * v113);
          *v120 = v110;
          v120[1] = v111;
          *(v82[7] + 8 * v113) = v196;
          v121 = v82[2];
          v57 = __OFADD__(v121, 1);
          v122 = v121 + 1;
          if (v57)
          {
            goto LABEL_126;
          }

          v82[2] = v122;
        }

        v99 = 1;
        v104 = v105;
        v98 = v191;
      }

      v106 = v104;
      while (1)
      {
        v105 = v106 + 1;
        if (__OFADD__(v106, 1))
        {
          __break(1u);
          goto LABEL_121;
        }

        if (v105 >= v103)
        {
          break;
        }

        v102 = v94[v105];
        ++v106;
        if (v102)
        {
          v197 = v99;
          goto LABEL_67;
        }
      }

      sub_226EBB21C();

      __swift_destroy_boxed_opaque_existential_0(&v200);
      v12 = v181;
      v6 = v186;
      sub_22766CBB0();
      a1 = v187;
      v3 = v195;
      if (!v202)
      {
        goto LABEL_77;
      }
    }

    v174(v12, v6);
LABEL_112:
    v169 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v169 - 8) + 104))(v170, *MEMORY[0x277D51028], v169);
    swift_willThrow();

    goto LABEL_117;
  }

  v82 = MEMORY[0x277D84F98];
LABEL_77:
  v183 = v82;
  v174(v12, v6);
  sub_22766CA80();
  sub_22766CBB0();
  if (!v202)
  {
LABEL_109:
    v174(v193, v6);
    v167 = v192;
    sub_226ED5818(v192, v188);
    sub_227667A20();

    v168 = v167;
LABEL_119:
    sub_226ED5C08(v168);
    return;
  }

  v123 = MEMORY[0x277D84F98];
LABEL_80:
  sub_226F04970(&v201, &v200);
  sub_226E97CC0(&v200, v199);
  type metadata accessor for ManagedModalityWorkoutCount();
  if (!swift_dynamicCast())
  {
LABEL_114:
    v174(v193, v6);

LABEL_116:
    v171 = sub_227664DD0();
    sub_226ECF2F4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v171 - 8) + 104))(v172, *MEMORY[0x277D51028], v171);
    swift_willThrow();

LABEL_117:

LABEL_118:

    __swift_destroy_boxed_opaque_existential_0(&v200);
    v168 = v192;
    goto LABEL_119;
  }

  v124 = v123;
  v125 = v198;
  v126 = [v198 modalityIdentifier];
  if (!v126)
  {
    v174(v193, v6);

    goto LABEL_116;
  }

  v127 = v126;
  v128 = sub_22766C000();
  v130 = v129;

  v181 = v125;
  v131 = [v125 count];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E70, qword_22768D100);
  v132 = sub_22766D010();

  v133 = sub_226E92000(v128, v130);
  v135 = v134;

  if ((v135 & 1) == 0)
  {
    v195 = v3;
    v136 = v132 + 64;
    *(v132 + 64 + ((v133 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v133;
    v137 = (*(v132 + 48) + 16 * v133);
    *v137 = v128;
    v137[1] = v130;
    *(*(v132 + 56) + 8 * v133) = v131;
    v138 = *(v132 + 16);
    v57 = __OFADD__(v138, 1);
    v139 = v138 + 1;
    if (v57)
    {
      goto LABEL_133;
    }

    v140 = v132;
    *(v132 + 16) = v139;
    v123 = v124;
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v199[0] = v124;
    v142 = -1 << *(v132 + 32);
    if (-v142 < 64)
    {
      v143 = ~(-1 << -v142);
    }

    else
    {
      v143 = -1;
    }

    v144 = v143 & *(v132 + 64);
    v178 = v142;
    v145 = (63 - v142) >> 6;

    v146 = 0;
    v191 = v140;
    while (v144)
    {
      v197 = v141;
      v147 = v146;
LABEL_97:
      v149 = __clz(__rbit64(v144)) | (v147 << 6);
      v150 = v140[7];
      v151 = (v140[6] + 16 * v149);
      v152 = *v151;
      v153 = v151[1];
      v196 = *(v150 + 8 * v149);

      v155 = sub_226E92000(v152, v153);
      v156 = v123[2];
      v157 = (v154 & 1) == 0;
      v158 = v156 + v157;
      if (__OFADD__(v156, v157))
      {
        goto LABEL_125;
      }

      v159 = v154;
      if (v123[3] >= v158)
      {
        if ((v197 & 1) == 0)
        {
          sub_226FF016C();
        }
      }

      else
      {
        sub_226FE2228(v158, v197 & 1);
        v160 = sub_226E92000(v152, v153);
        if ((v159 & 1) != (v161 & 1))
        {
          goto LABEL_134;
        }

        v155 = v160;
      }

      v144 &= v144 - 1;
      v123 = v199[0];
      if (v159)
      {

        *(v123[7] + 8 * v155) = v196;
      }

      else
      {
        *(v199[0] + 8 * (v155 >> 6) + 64) |= 1 << v155;
        v162 = (v123[6] + 16 * v155);
        *v162 = v152;
        v162[1] = v153;
        *(v123[7] + 8 * v155) = v196;
        v163 = v123[2];
        v57 = __OFADD__(v163, 1);
        v164 = v163 + 1;
        if (v57)
        {
          goto LABEL_129;
        }

        v123[2] = v164;
      }

      v141 = 1;
      v146 = v147;
      v140 = v191;
    }

    v148 = v146;
    while (1)
    {
      v147 = v148 + 1;
      if (__OFADD__(v148, 1))
      {
        break;
      }

      if (v147 >= v145)
      {
        sub_226EBB21C();

        __swift_destroy_boxed_opaque_existential_0(&v200);
        v6 = v186;
        sub_22766CBB0();
        a1 = v187;
        v3 = v195;
        if (!v202)
        {
          goto LABEL_109;
        }

        goto LABEL_80;
      }

      v144 = *(v136 + 8 * v147);
      ++v148;
      if (v144)
      {
        v197 = v141;
        goto LABEL_97;
      }
    }

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
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  sub_22766D220();
  __break(1u);
}

uint64_t sub_226ECF2F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226ECF344@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_226F63124(*(v1 + 16), a1);
}

uint64_t sub_226ECF350@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A660();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = v8[70];
    v10 = v8[71];
    __swift_project_boxed_opaque_existential_0(v8 + 67, v9);

    sub_226ECF5D8(sub_226ED201C, v8, v9, MEMORY[0x277D83B88], v10, a1);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

char *sub_226ECF5A4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_226ECF80C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_226ECF5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[1] = a6;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v6);
  v15 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = a4;
  *(v17 + 4) = a5;
  (*(v12 + 32))(&v17[v15], v14, a3);
  v18 = &v17[v16];
  *v18 = a1;
  *(v18 + 1) = a2;

  return sub_227669220();
}

uint64_t sub_226ECF758()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

char *sub_226ECF80C(uint64_t a1)
{
  v29 = sub_227669890();
  v25 = *(v29 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v28);
  sub_226E9DD3C("CatalogDataStore::queryAllMusicGenres", 37, 2, &dword_226E8E000, 0, v26);
  v6 = __swift_project_boxed_opaque_existential_0(v28, v28[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F88, &qword_227672A08);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  v17 = sub_226ED00DC(100);
  swift_setDeallocating();

  v18 = *(v14 + 40);

  v19 = qword_2813B2078;
  v20 = sub_22766A100();
  (*(*(v20 - 8) + 8))(v14 + v19, v20);
  v21 = *(*v14 + 48);
  v22 = *(*v14 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v26, v27);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v26, v27);
    sub_227669920();
  }

  (*(v25 + 8))(v5, v29);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v17;
}

uint64_t sub_226ECFB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v50, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = v9;
  v50 = (v22 + 16) & ~v22;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_226ED1C60;
  v31[1] = v23;
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v50, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_226ED44E8;
  v41[1] = v34;

  sub_227669270();
  (*(v49 + 8))(v37, v38);
}

char *sub_226ED00DC(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC470, &qword_22767DB08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_226ED04F4(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_226ED09F4(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_2272630A0(MEMORY[0x277D84FA0], sub_22711C97C, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725AB9C(v12, MEMORY[0x277D84FA0], sub_22711C97C, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC470, &qword_22767DB08);
  }

  return v1;
}

uint64_t sub_226ED042C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

id sub_226ED04F4(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = *(v1 + 32);
  if (sub_227669C10())
  {
    v19 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
    swift_willThrow();
  }

  else
  {
    v50 = v13;
    v51 = v10;
    v52 = v2;
    v21 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v22 = sub_22766BFD0();
    v23 = [v21 initWithEntityName_];
    v48 = v23;

    [v23 setFetchBatchSize_];
    v24 = v1;
    v25 = qword_2813B2078;
    swift_beginAccess();
    v26 = v17;
    v27 = v6[2];
    v27(v26, v24 + v25, v5);
    sub_22766A090();
    v47 = v6[1];
    v49 = v26;
    v47(v26, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    v30 = v53;
    v3 = v48;
    [v48 setPredicate_];

    v55 = v25;
    v31 = v24 + v25;
    v32 = v24;
    v54 = v27;
    v27(v30, v31, v5);
    v33 = v47;
    v34 = sub_22766A0C0();
    LOBYTE(v29) = v35;
    v33(v30, v5);
    if ((v29 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v36 = v50;
    v54(v50, v32 + v55, v5);
    v37 = sub_22766A0E0();
    v39 = v38;
    v33(v36, v5);
    if ((v39 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v40 = v51;
    v54(v51, v32 + v55, v5);
    v41 = sub_22766A0B0();
    v42 = v33;
    v33(v40, v5);
    v43 = v49;
    if (v41 >> 62)
    {
      v44 = sub_22766CD20();
    }

    else
    {
      v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
      v54(v43, v32 + v55, v5);
      sub_22766A0B0();
      v42(v43, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v44 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

uint64_t sub_226ED09F4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
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

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

char *sub_226ED0E6C@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_226ED0F04(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_226ED0F04(uint64_t a1)
{
  v29 = sub_227669890();
  v25 = *(v29 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v28);
  sub_226E9DD3C("CatalogDataStore::queryAllSkillLevels", 37, 2, &dword_226E8E000, 0, v26);
  v6 = __swift_project_boxed_opaque_existential_0(v28, v28[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F40, &qword_227672990);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  v17 = sub_226ED13FC(100);
  swift_setDeallocating();

  v18 = *(v14 + 40);

  v19 = qword_2813B2078;
  v20 = sub_22766A100();
  (*(*(v20 - 8) + 8))(v14 + v19, v20);
  v21 = *(*v14 + 48);
  v22 = *(*v14 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v26, v27);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v26, v27);
    sub_227669920();
  }

  (*(v25 + 8))(v5, v29);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v17;
}

void sub_226ED1274(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void **), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v24 - v19;
  if (a2)
  {
    v24 = a1;
    v25 = 1;
    v21 = a1;
    a5(&v24);
    sub_226EB4548(a1, 1);
  }

  else
  {
    a3(v18);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;

    v22(a10, v23);

    (*(v16 + 8))(v20, v15);
  }
}

char *sub_226ED13FC(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC448, &qword_22767DAE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_226ED1760(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_226ED1C74(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_22726456C(MEMORY[0x277D84FA0], sub_226ED2698, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725C0C0(v12, MEMORY[0x277D84FA0], sub_226ED2698, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC448, &qword_22767DAE0);
  }

  return v1;
}

id sub_226ED1760(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = *(v1 + 32);
  if (sub_227669C10())
  {
    v19 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
    swift_willThrow();
  }

  else
  {
    v50 = v13;
    v51 = v10;
    v52 = v2;
    v21 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v22 = sub_22766BFD0();
    v23 = [v21 initWithEntityName_];
    v48 = v23;

    [v23 setFetchBatchSize_];
    v24 = v1;
    v25 = qword_2813B2078;
    swift_beginAccess();
    v26 = v17;
    v27 = v6[2];
    v27(v26, v24 + v25, v5);
    sub_22766A090();
    v47 = v6[1];
    v49 = v26;
    v47(v26, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    v30 = v53;
    v3 = v48;
    [v48 setPredicate_];

    v55 = v25;
    v31 = v24 + v25;
    v32 = v24;
    v54 = v27;
    v27(v30, v31, v5);
    v33 = v47;
    v34 = sub_22766A0C0();
    LOBYTE(v29) = v35;
    v33(v30, v5);
    if ((v29 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v36 = v50;
    v54(v50, v32 + v55, v5);
    v37 = sub_22766A0E0();
    v39 = v38;
    v33(v36, v5);
    if ((v39 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v40 = v51;
    v54(v51, v32 + v55, v5);
    v41 = sub_22766A0B0();
    v42 = v33;
    v33(v40, v5);
    v43 = v49;
    if (v41 >> 62)
    {
      v44 = sub_22766CD20();
    }

    else
    {
      v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
      v54(v43, v32 + v55, v5);
      sub_22766A0B0();
      v42(v43, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v44 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

uint64_t sub_226ED1C74(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
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

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226ED2038@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_226ED2064(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_226ED2064(void *a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v5 + 8))(v8, v4);
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDD8, qword_2276814A0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = v10;
  v19 = v11;

  sub_22766A070();
  v50 = v18;
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  v46[0] = v19;
  v46[1] = v13;
  *(v17 + 32) = v12;
  *(v17 + 40) = v13;
  swift_getKeyPath();
  v20 = sub_227666B80();
  v22 = v21;
  v49[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v49[0] = v20;
  v49[1] = v22;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v23 = sub_22766C820();
  sub_226ED25F8(v49, v47);
  v24 = v48;
  if (v48)
  {
    v25 = __swift_project_boxed_opaque_existential_0(v47, v48);
    v26 = *(v24 - 8);
    v27 = *(v26 + 64);
    MEMORY[0x28223BE20](v25);
    v29 = v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29);
    v30 = sub_22766D170();
    (*(v26 + 8))(v29, v24);
    v2 = v1;
    __swift_destroy_boxed_opaque_existential_0(v47);
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v32 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDE0 qword_2276814E0))];

  sub_226EBC888(v49);
  swift_beginAccess();
  v33 = v32;
  v34 = sub_22766A080();
  v36 = v35;
  MEMORY[0x22AA985C0]();
  if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v45 = *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v34(v49, 0);
  swift_endAccess();

  v37 = sub_226ED2668(0);
  if (v2)
  {
  }

  else
  {
    v38 = v37;
    [v37 setResultType_];
    [v38 setFetchLimit_];
    [v38 setFetchOffset_];
    [v38 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v39 = v50;
    v2 = sub_22766C9D0();

    swift_setDeallocating();
    v41 = qword_2813B2078;
    v42 = sub_22766A100();
    (*(*(v42 - 8) + 8))(v17 + v41, v42);
    v43 = *(*v17 + 48);
    v44 = *(*v17 + 52);
    swift_deallocClassInstance();
  }

  return v2;
}

uint64_t sub_226ED25F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC990, &qword_227670A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_226ED2700(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = *(v1 + 32);
  if (sub_227669C10())
  {
    v19 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
    swift_willThrow();
  }

  else
  {
    v50 = v13;
    v51 = v10;
    v52 = v2;
    v21 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v22 = sub_22766BFD0();
    v23 = [v21 initWithEntityName_];
    v48 = v23;

    [v23 setFetchBatchSize_];
    v24 = v1;
    v25 = qword_2813B2078;
    swift_beginAccess();
    v26 = v17;
    v27 = v6[2];
    v27(v26, v24 + v25, v5);
    sub_22766A090();
    v47 = v6[1];
    v49 = v26;
    v47(v26, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    v30 = v53;
    v3 = v48;
    [v48 setPredicate_];

    v55 = v25;
    v31 = v24 + v25;
    v32 = v24;
    v54 = v27;
    v27(v30, v31, v5);
    v33 = v47;
    v34 = sub_22766A0C0();
    LOBYTE(v29) = v35;
    v33(v30, v5);
    if ((v29 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v36 = v50;
    v54(v50, v32 + v55, v5);
    v37 = sub_22766A0E0();
    v39 = v38;
    v33(v36, v5);
    if ((v39 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v40 = v51;
    v54(v51, v32 + v55, v5);
    v41 = sub_22766A0B0();
    v42 = v33;
    v33(v40, v5);
    v43 = v49;
    if (v41 >> 62)
    {
      v44 = sub_22766CD20();
    }

    else
    {
      v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
      v54(v43, v32 + v55, v5);
      sub_22766A0B0();
      v42(v43, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v44 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

void sub_226ED2C08(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void), void (*a6)(char *, char *))
{
  v12 = MEMORY[0x22AA99A00]();
  v13 = MEMORY[0x22AA99A00]();
  v14 = a3(a2);
  if (v6)
  {
    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v15 = v14;
    objc_autoreleasePoolPop(v13);
    v16 = a4(v15);

    sub_226EB707C(v16, a5, a6);
  }

  objc_autoreleasePoolPop(v12);
}

uint64_t sub_226ED2CD4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);

  return sub_227669270();
}

uint64_t sub_226ED2D7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

size_t sub_226ED2DB4(unint64_t a1)
{
  v2 = v1;
  v29 = sub_2276633A0();
  v31 = *(v29 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v8 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v8;
    }

    v36 = MEMORY[0x277D84F90];
    result = sub_226ED3590(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v10 = 0;
    v30 = a1 & 0xC000000000000001;
    v8 = v36;
    v24 = v2;
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = v31 + 32;
    v27 = i;
    v28 = a1;
    while (!__OFADD__(v10, 1))
    {
      if (v30)
      {
        v11 = MEMORY[0x22AA991A0](v10, a1);
      }

      else
      {
        if (v10 >= *(v25 + 16))
        {
          goto LABEL_23;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 identifier];
      if (!v13)
      {
        goto LABEL_20;
      }

      v14 = v13;
      v35 = v10 + 1;
      sub_22766C000();

      v15 = [v12 name];
      v16 = v12;
      if (!v15)
      {

LABEL_20:
        v22 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51028], v22);
        swift_willThrow();

        return v8;
      }

      v17 = v15;
      v34 = v8;
      sub_22766C000();
      v32 = v18;

      v33 = v16;
      v19 = [v16 kind];
      if (v19)
      {
        v20 = v19;
        sub_22766C000();
      }

      sub_227663360();

      v8 = v34;
      v36 = v34;
      v2 = *(v34 + 16);
      v21 = *(v34 + 24);
      if (v2 >= v21 >> 1)
      {
        sub_226ED3590(v21 > 1, v2 + 1, 1);
        v8 = v36;
      }

      *(v8 + 16) = v2 + 1;
      (*(v31 + 32))(v8 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v2, v6, v29);
      ++v10;
      a1 = v28;
      if (v35 == v27)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_226ED315C@<X0>(uint64_t a1@<X1>, void (*a2)(_BYTE *)@<X2>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D88, &qword_2276720C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - v14;
  if (a1)
  {

    sub_227667720();
    a2(v25);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v19 = *(v10 + 32);
      v19(v15, v8, v9);
      v20 = swift_allocObject();
      *(v20 + 16) = sub_226ED4D28;
      *(v20 + 24) = 0;
      (*(v10 + 16))(v13, v15, v9);
      v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v22 = swift_allocObject();
      v19((v22 + v21), v13, v9);
      v23 = (v22 + ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v23 = sub_226ED2C00;
      v23[1] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      return (*(v10 + 8))(v15, v9);
    }

    sub_226E97D1C(v8, &qword_27D7B8D88, &qword_2276720C8);
  }

  sub_226F6649C();
  v16 = swift_allocError();
  *v17 = 2;
  swift_willThrow();
  *(swift_allocObject() + 16) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_226ED34DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226ED3528()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

size_t sub_226ED3590(size_t a1, int64_t a2, char a3)
{
  result = sub_226ED3568(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226ED35BC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_226ED35D0(*a1, *(v2 + 16), a2);
}

uint64_t sub_226ED35D0@<X0>(char a1@<W0>, void (*a2)(char *)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D88, &qword_2276720C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17[-v13];
  v18 = a1;
  a2(&v18);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7B8D88, &qword_2276720C8);
LABEL_6:
    v15 = 1;
    return (*(v11 + 56))(a3, v15, 1, v10);
  }

  (*(v11 + 32))(v14, v9, v10);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  sub_226ECFB7C(v14, a3);

  (*(v11 + 8))(v14, v10);
  v15 = 0;
  return (*(v11 + 56))(a3, v15, 1, v10);
}

uint64_t objectdestroy_44Tm()
{
  v1 = *(type metadata accessor for MetricServiceSubscriptionState() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = sub_227665AD0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_19Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t objectdestroy_44Tm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 57) & ~v2;
  v4 = *(v1 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_226ED3ACC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v18);

    v11 = *__swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_22766A660();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v12 = v11[70];
    v13 = v11[71];
    __swift_project_boxed_opaque_existential_0(v11 + 67, v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    sub_226ECF5D8(sub_226ED3E84, v14, v12, MEMORY[0x277D83B88], v13, a2);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
    (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

uint64_t sub_226ED3D50()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226ED3D88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_226ED3E50@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_226ED3EA4(a2, a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_226ED3EA4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v6 + 8))(v9, v5);
  v10 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  v14 = v10[3];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDD8, qword_2276814A0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = v11;
  v20 = v12;

  sub_22766A070();
  v51 = v19;
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  v47[0] = v20;
  v47[1] = v14;
  *(v18 + 32) = v13;
  *(v18 + 40) = v14;
  swift_getKeyPath();
  v21 = sub_227666B80();
  v23 = v22;
  v50[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v50[0] = v21;
  v50[1] = v23;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v24 = sub_22766C820();
  sub_226ED25F8(v50, v48);
  v25 = v49;
  if (v49)
  {
    v26 = __swift_project_boxed_opaque_existential_0(v48, v49);
    v27 = *(v25 - 8);
    v28 = *(v27 + 64);
    MEMORY[0x28223BE20](v26);
    v30 = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v30);
    v31 = sub_22766D170();
    (*(v27 + 8))(v30, v25);
    v3 = v2;
    __swift_destroy_boxed_opaque_existential_0(v48);
  }

  else
  {
    v31 = 0;
  }

  v32 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v33 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDE0 qword_2276814E0))];

  sub_226EBC888(v50);
  swift_beginAccess();
  v34 = v33;
  v35 = sub_22766A080();
  v37 = v36;
  MEMORY[0x22AA985C0]();
  if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v46 = *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v35(v50, 0);
  swift_endAccess();

  v38 = sub_226ED2668(0);
  if (v3)
  {
  }

  else
  {
    v39 = v38;
    [v38 setResultType_];
    [v39 setFetchLimit_];
    [v39 setFetchOffset_];
    [v39 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v40 = v51;
    v3 = sub_22766C9D0();

    swift_setDeallocating();
    v42 = qword_2813B2078;
    v43 = sub_22766A100();
    (*(*(v43 - 8) + 8))(v18 + v42, v43);
    v44 = *(*v18 + 48);
    v45 = *(*v18 + 52);
    swift_deallocClassInstance();
  }

  return v3;
}

uint64_t sub_226ED4434(uint64_t a1)
{
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  (*(v1 + 16))();
  return v5(a1);
}

void sub_226ED4548(void *a1)
{
  if (a1)
  {
    v2 = [a1 array];
    v3 = sub_22766C2C0();

    v4 = sub_226ED47E8(v3);

    if (v4)
    {
      v23 = a1;
      v5 = 0;
      v6 = v4 + 40;
      v7 = *(v4 + 16);
      v24 = MEMORY[0x277D84F90];
LABEL_4:
      v8 = (v6 + 16 * v5);
      while (1)
      {
        if (v7 == v5)
        {

          return;
        }

        if (v5 >= *(v4 + 16))
        {
          break;
        }

        ++v5;
        v9 = v8 + 2;
        v11 = *(v8 - 1);
        v10 = *v8;
        ObjectType = swift_getObjectType();
        v13 = *(v10 + 8);
        swift_unknownObjectRetain();
        v14 = v13(ObjectType, v10);
        v16 = v15;
        swift_unknownObjectRelease();
        v8 = v9;
        if (v16)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v17 = v24;
          }

          else
          {
            v17 = sub_226EB3F78(0, *(v24 + 2) + 1, 1, v24);
          }

          v19 = *(v17 + 2);
          v18 = *(v17 + 3);
          if (v19 >= v18 >> 1)
          {
            v17 = sub_226EB3F78((v18 > 1), v19 + 1, 1, v17);
          }

          *(v17 + 2) = v19 + 1;
          v24 = v17;
          v20 = &v17[16 * v19];
          *(v20 + 4) = v14;
          *(v20 + 5) = v16;
          v6 = v4 + 40;
          goto LABEL_4;
        }
      }

      __break(1u);
    }

    else
    {
      v21 = sub_227664DD0();
      sub_2274B4B24(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51028], v21);
      swift_willThrow();
    }
  }

  else
  {
    sub_226F62704();
    sub_22766C300();
  }
}

uint64_t sub_226ED47E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  sub_226ED4BF0(0, v2, 0);
  v3 = v11;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_226E97CC0(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC30, &unk_227679670);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = v9;
      v11 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_226ED4BF0((v6 > 1), v7 + 1, 1);
        v5 = v9;
        v3 = v11;
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + 16 * v7 + 32) = v5;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_226ED4910(void *a1, char a2, void (*a3)(void *), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B8, &unk_227684D20);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20[-1] - v14;
  if (a2)
  {
    v20[0] = a1;
    v20[1] = 0;
    v21 = 1;
    v16 = a1;
    a5(v20);
    sub_226EB4548(a1, 1);
  }

  else
  {
    v20[0] = a1;
    a3(v20);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_2273F86A4, v18);

    (*(v12 + 8))(v15, v11);
  }
}

void *sub_226ED4ABC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC28, &qword_227679668);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC30, &unk_227679670);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_226ED4BF0(void *a1, int64_t a2, char a3)
{
  result = sub_226ED4ABC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226ED4C1C()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22766C000();

  return v3;
}

void sub_226ED4C84(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  a3(v9, &v8);
  v6 = v9[0];
  v7 = v9[1];
  v10 = 0;
  a1(v9);

  sub_226EC33EC(v6, v7, 0);
}

uint64_t sub_226ED4D28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  result = sub_227667710();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_226ED4D78(void *a1)
{
  v3 = sub_227662190();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = [a1 identifier];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  sub_22766C000();

  v7 = [a1 dateReleased];
  if (!v7)
  {
LABEL_11:

LABEL_12:
    v15 = sub_227664DD0();
    sub_2273FA7FC(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51028], v15);
    swift_willThrow();
    goto LABEL_13;
  }

  v8 = v7;
  sub_22766C000();

  v9 = [a1 mediaType];
  if (!v9)
  {
LABEL_10:

    goto LABEL_11;
  }

  v10 = v9;
  sub_22766C000();

  v11 = [a1 modalityIdentifier];
  if (!v11)
  {
LABEL_9:

    goto LABEL_10;
  }

  v12 = v11;
  sub_22766C000();

  v13 = [a1 contentRating];
  if (!v13)
  {

    goto LABEL_9;
  }

  v14 = v13;
  sub_22766C000();

  sub_226ED4548([a1 equipmentIdentifierss]);
  if (v1)
  {

LABEL_13:

    return;
  }

  sub_226ED4548([a1 musicGenreIdentifierss]);
  sub_226ED4548([a1 trainerIdentifierss]);
  sub_226ED4548([a1 contributorIdentifierss]);
  sub_226ED4548([a1 themeIdentifierss]);
  sub_226ED4548([a1 bodyFocusIdentifierss]);
  sub_226ED4548([a1 skillLevelIdentifierss]);
  v17 = [a1 traits];
  if (v17)
  {
    v18 = v17;
    v24 = MEMORY[0x22AA99A00]();
    v21 = sub_226EDE6A4(v18);
    objc_autoreleasePoolPop(v24);
    sub_226EDE22C(v21);

    sub_226ED978C();
    sub_227663AE0();
    sub_227662100();
    [a1 duration];
    [a1 episode];
    sub_226ED56C4();
    sub_227663AE0();
    v22 = [a1 title];
    if (v22)
    {
      v23 = v22;
      sub_22766C000();
    }

    sub_227666AB0();
    goto LABEL_13;
  }

  v19 = sub_227664DD0();
  sub_2273FA7FC(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51028], v19);
  swift_willThrow();
}

unint64_t sub_226ED56C4()
{
  result = qword_28139B908;
  if (!qword_28139B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B908);
  }

  return result;
}

void sub_226ED5718(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226ED5C70(a2, MEMORY[0x277D53E10], sub_226ED62C0, MEMORY[0x277D53DD8]);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226ED71E0(v7);

    sub_226EB707C(v8, MEMORY[0x277D53E10], sub_226ED737C);
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_226ED5818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226ED5888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v4 = sub_22766B3B0();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B3F0();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B410();
  v24 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - v18;
  sub_226EA1CF4();
  v20 = sub_22766C950();
  sub_22766B400();
  sub_22766C550();
  sub_22766B430();
  v21 = *(v13 + 8);
  v21(v17, v12);
  aBlock[4] = v26;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = v27;
  v22 = _Block_copy(aBlock);

  sub_22766B3D0();
  v31 = MEMORY[0x277D84F90];
  sub_226E9ECD0(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C50](v19, v11, v7, v22);
  _Block_release(v22);

  (*(v30 + 8))(v7, v4);
  (*(v28 + 8))(v11, v29);
  v21(v19, v24);
}

uint64_t sub_226ED5C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226ED5C70(unint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v40 = a4;
  v6 = v4;
  v39 = a2(0);
  v42 = *(v39 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  v10 = &v31 - v9;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v12 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v12;
    }

    v43 = MEMORY[0x277D84F90];
    result = (a3)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v32 = a3;
    v33 = v6;
    v6 = 0;
    v41 = a1 & 0xC000000000000001;
    v12 = v43;
    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    v35 = v42 + 32;
    v37 = v10;
    v38 = a1;
    v36 = i;
    while (1)
    {
      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v41)
      {
        v15 = MEMORY[0x22AA991A0](v6, a1);
      }

      else
      {
        if (v6 >= *(v34 + 16))
        {
          goto LABEL_21;
        }

        v15 = *(a1 + 8 * v6 + 32);
      }

      v16 = v15;
      v17 = [v15 identifier];
      if (!v17)
      {
        goto LABEL_18;
      }

      v18 = v17;
      v19 = sub_22766C000();
      v21 = v20;

      v22 = [v16 name];
      if (!v22)
      {

LABEL_18:
        v29 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D51028], v29);
        swift_willThrow();

        return v12;
      }

      v23 = v22;
      v24 = sub_22766C000();
      v26 = v25;

      v27 = v37;
      v40(v19, v21, v24, v26);

      v43 = v12;
      v10 = *(v12 + 16);
      v28 = *(v12 + 24);
      a3 = (v10 + 1);
      if (v10 >= v28 >> 1)
      {
        v32(v28 > 1, v10 + 1, 1);
        v12 = v43;
      }

      *(v12 + 16) = a3;
      (*(v42 + 32))(v12 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v10, v27, v39);
      ++v6;
      a1 = v38;
      if (v14 == v36)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  __break(1u);
  return result;
}

void sub_226ED5FDC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227663FA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD538, &unk_22768B7F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7BD538, &unk_22768B7F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

size_t sub_226ED62C0(size_t a1, int64_t a2, char a3)
{
  result = sub_226ED675C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226ED62E0(uint64_t a1)
{
  v2 = sub_227667A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139B510, MEMORY[0x277D530A8]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_226ED647C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226ED647C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227667A70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_28139B510, MEMORY[0x277D530A8]);
  v36 = a2;
  v13 = sub_22766BF50();
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
      sub_226EB99C8(&qword_27D7BA6A0, MEMORY[0x277D530A8]);
      v23 = sub_22766BFB0();
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
    sub_226ED6790(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_226ED6790(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_227667A70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270CE6A0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D530A8], &qword_27D7BA6A8, &qword_227678ED0);
      goto LABEL_12;
    }

    sub_226ED6AB8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_226EB99C8(&qword_28139B510, MEMORY[0x277D530A8]);
  v15 = sub_22766BF50();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_226EB99C8(&qword_27D7BA6A0, MEMORY[0x277D530A8]);
      v23 = sub_22766BFB0();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_226ED6AB8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_227667A70();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA6A8, &qword_227678ED0);
  v10 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_28139B510, MEMORY[0x277D530A8]);
      result = sub_22766BF50();
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

uint64_t sub_226ED6DD4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = sub_227663FA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v9 + 8))(v12, v8);
  v13 = a2[5];
  v14 = a2[6];
  __swift_project_boxed_opaque_existential_0(a2 + 2, v13);
  (*(v6 + 16))(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v6 + 32))(v16 + v15, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_226ECF5D8(sub_226ED7730, v16, v13, MEMORY[0x277D84F78] + 8, v14, v19);
}

uint64_t sub_226ED702C()
{
  v1 = sub_227663FA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_75Tm()
{
  v1 = sub_22766BE40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_226ED71E0(uint64_t a1)
{
  v2 = sub_227669530();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_28139B238, MEMORY[0x277D53E10]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_226ED737C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226ED737C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227669530();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&unk_28139B238, MEMORY[0x277D53E10]);
  v36 = a2;
  v13 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139B230, MEMORY[0x277D53E10]);
      v23 = sub_22766BFB0();
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
    sub_226ED7A5C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_226ED765C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void, void, uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = -1 << *(a1 + 32);
  v9 = sub_22766CC90();
  v10 = 1;
  if (v9 != 1 << *(a1 + 32))
  {
    a2(v9, *(a1 + 36), 0, a1);
    v10 = 0;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

void sub_226ED77B0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[3];
  v8 = *(v4 + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB428, &qword_22767A998);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v8;
  *(v12 + 40) = v7;
  v15 = qword_2813B2078;
  swift_beginAccess();
  v16 = sub_226ED811C(v12 + v15, v8, v7);
  if (v16)
  {
    if (v16 == 1)
    {

LABEL_4:
      v17 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB218, &qword_227679D88);
      v18 = sub_227663FA0();
      v19 = *(v18 - 8);
      v20 = *(v19 + 72);
      v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_227670CD0;
      (*(v19 + 16))(v22 + v21, a3, v18);
      sub_226EDAE6C(v22, v17[1], *(v17 + 16), v17[3]);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v23 = sub_226EB0E3C(0);
    if (!v28)
    {
      v24 = v23;
      [v23 setResultType_];
      sub_226ED9864();
      v25 = sub_22766C9E0();
      v26 = sub_226EDAB24(v25);

      sub_226EDAB78(v26, v14);

      goto LABEL_4;
    }
  }
}

uint64_t sub_226ED7A5C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_227669530();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_226ED8164(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D53E10], &qword_27D7BA560, &qword_227678E08);
      goto LABEL_12;
    }

    sub_226ED7E00(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_226EB99C8(&unk_28139B238, MEMORY[0x277D53E10]);
  v15 = sub_22766BF50();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_226EB99C8(&qword_28139B230, MEMORY[0x277D53E10]);
      v23 = sub_22766BFB0();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_226ED7D3C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

uint64_t sub_226ED7E00(uint64_t a1)
{
  v2 = v1;
  v37 = sub_227669530();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA560, &qword_227678E08);
  v10 = sub_22766CDC0();
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
      sub_226EB99C8(&unk_28139B238, MEMORY[0x277D53E10]);
      result = sub_22766BF50();
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

uint64_t sub_226ED8164(uint64_t a1)
{
  v2 = v1;
  v41 = sub_227669530();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA560, &qword_227678E08);
  result = sub_22766CDC0();
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
      sub_226EB99C8(&unk_28139B238, MEMORY[0x277D53E10]);
      result = sub_22766BF50();
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

uint64_t sub_226ED84C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v9 = a4(0);
  v10 = (a3 + 32);
  v11 = *(a3 + 16) + 1;
  while (--v11)
  {
    v12 = v10 + 5;
    v14 = v10[3];
    v13 = v10[4];
    __swift_project_boxed_opaque_existential_0(v10, v14);
    v15 = *(v13 + 24);
    v16 = sub_226EB1040(a5, a6);
    v17 = v15(a1, v9, a2, v9, v16, v14, v13);
    v10 = v12;
    if (v17)
    {
      return v17;
    }
  }

  return 0;
}

char *sub_226ED85A4(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC450, &qword_22767DAE8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_2272467A0(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_227275DA8(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227264388(MEMORY[0x277D84FA0], sub_226ED5718, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725BED4(v12, MEMORY[0x277D84FA0], sub_226ED5718, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC450, &qword_22767DAE8);
  }

  return v1;
}

void sub_226ED88C8(void *a1)
{
  v3 = sub_227662190();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = [a1 identifier];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  sub_22766C000();

  v7 = [a1 dateReleased];
  if (!v7)
  {
LABEL_8:

LABEL_9:
    v11 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D51028], v11);
    swift_willThrow();
    goto LABEL_10;
  }

  v8 = v7;
  sub_22766C000();

  v9 = [a1 contentRating];
  if (!v9)
  {

    goto LABEL_8;
  }

  v10 = v9;
  sub_22766C000();

  sub_226ED4548([a1 contributorIdentifierss]);
  if (v1)
  {
  }

  else
  {
    sub_226ED4548([a1 equipmentIdentifierss]);
    sub_226ED4548([a1 musicGenreIdentifierss]);
    sub_226ED4548([a1 modalityIdentifierss]);
    sub_226ED4548([a1 trainerIdentifierss]);
    sub_226ED4548([a1 themeIdentifierss]);
    sub_226ED4548([a1 workoutIdentifierss]);
    sub_226ED978C();
    sub_227663AE0();
    sub_227662100();
    sub_2276669B0();
  }

LABEL_10:
}

uint64_t sub_226ED8E38(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v79) = a3;
  v75 = a2;
  v78 = a1;
  v66 = sub_2276627D0();
  v65 = *(v66 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v63 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276624A0();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  MEMORY[0x28223BE20](v9);
  v67 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227662750();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2276691E0();
  v72 = *(v74 - 8);
  v15 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v77 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22766A100();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  v25 = sub_22766B390();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v58 - v31;
  v33 = *(a5 + 32);
  v76 = a4;
  v71 = a5;
  v33(a4, a5);
  v34 = 0;
  if (sub_227669C10())
  {
    v79 = v30;
    sub_22766A770();
    v59 = *(v18 + 16);
    v59(v24, v78, v17);
    v35 = sub_22766B380();
    v60 = sub_22766C8B0();
    v62 = v35;
    v36 = os_log_type_enabled(v35, v60);
    v73 = v26;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v81[0] = v38;
      *v37 = 136315394;
      v80 = v75;
      swift_getMetatypeMetadata();
      v39 = sub_22766C060();
      v61 = v25;
      v41 = sub_226E97AE8(v39, v40, v81);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v59(v22, v24, v17);
      v42 = sub_22766C060();
      v44 = v43;
      (*(v18 + 8))(v24, v17);
      v45 = v42;
      v25 = v61;
      v46 = sub_226E97AE8(v45, v44, v81);

      *(v37 + 14) = v46;
      v47 = v62;
      _os_log_impl(&dword_226E8E000, v62, v60, "Journaling deletion of %s objects, clauses: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v38, -1, -1);
      MEMORY[0x22AA9A450](v37, -1, -1);

      v48 = v73;
    }

    else
    {

      (*(v18 + 8))(v24, v17);
      v48 = v26;
    }

    (*(v48 + 8))(v32, v25);
    sub_227117ADC(&qword_27D7BAB58, MEMORY[0x277D4F440]);
    v49 = sub_2276683C0();
    v51 = v50;
    v61 = v25;
    (*(v71 + 24))(v81, v76);
    PersistenceEntityName.rawValue.getter();
    sub_227662740();
    sub_226F5E0B4(v49, v51);
    sub_2276691B0();
    sub_227117ADC(&qword_27D7BAB60, MEMORY[0x277D53AB0]);
    v52 = sub_2276683C0();
    v54 = v53;
    v78 = *(v64 + 16);
    v55 = v63;
    sub_2276627C0();
    sub_227662770();
    (*(v65 + 8))(v55, v66);
    v56 = v67;
    sub_227662400();

    sub_2276625B0();
    sub_226EDC420(v52, v54);
    sub_226EDC420(v49, v51);
    (*(v68 + 8))(v56, v69);
    (*(v72 + 8))(v77, v74);
    return 1;
  }

  return v34;
}

unint64_t sub_226ED978C()
{
  result = qword_28139BA10;
  if (!qword_28139BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BA10);
  }

  return result;
}

unint64_t sub_226ED9864()
{
  result = qword_281398AE0;
  if (!qword_281398AE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398AE0);
  }

  return result;
}

uint64_t sub_226ED9908@<X0>(uint64_t a1@<X1>, void (*a2)(char *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v32 = a3;
  v33 = a2;
  v34 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2D8, &qword_22767A270);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = sub_227667900();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = v18;

    sub_227667720();
    v33(v20);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v33 = *(v10 + 32);
      (v33)(v15, v8, v9);
      v25 = swift_allocObject();
      v32 = v25;
      *(v25 + 16) = sub_226EDAAD4;
      *(v25 + 24) = 0;
      (*(v10 + 16))(v13, v15, v9);
      v26 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v27 = swift_allocObject();
      (v33)(v27 + v26, v13, v9);
      v28 = (v27 + ((v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
      v29 = v32;
      *v28 = sub_226EDA930;
      v28[1] = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v10 + 8))(v15, v9);
      return (*(v31 + 8))(v20, v16);
    }

    sub_226E97D1C(v8, &qword_27D7BB2D8, &qword_22767A270);
    sub_226F6649C();
    v21 = swift_allocError();
    *v22 = 2;
    swift_willThrow();
    (*(v31 + 8))(v20, v16);
  }

  else
  {
    sub_226F6649C();
    v21 = swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_226ED9F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_2271299E0(a1, *(v2 + 16), a2);
}

uint64_t sub_226ED9FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v54 = *(v4 - 8);
  v53 = *(v54 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  (*(v15 + 16))(&v43 - v17, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v14);
  sub_227669730();
  (*(v15 + 8))(v18, v14);
  v19 = v57;
  v46 = v3;
  v20 = *(v3 + 112);
  v43 = v8;
  sub_2276696A0();
  v48 = *(v9 + 16);
  v44 = v12;
  v21 = v56;
  v48(v12, v49, v56);
  v22 = *(v9 + 80);
  v45 = ((v22 + 16) & ~v22) + v10;
  v49 = (v22 + 16) & ~v22;
  v50 = v9;
  v23 = swift_allocObject();
  v47 = *(v9 + 32);
  v47(v23 + ((v22 + 16) & ~v22), v12, v21);
  v24 = v54;
  v25 = v51;
  v26 = v4;
  (*(v54 + 16))(v51, v8, v4);
  v27 = v24;
  v28 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v29 = (v53 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v28, v25, v26);
  v31 = (v30 + v29);
  *v31 = sub_226EDA6C4;
  v31[1] = v23;
  sub_227665AD0();
  v32 = v52;
  sub_227669270();
  (*(v27 + 8))(v43, v26);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v19;
  *(v34 + 24) = v33;
  v35 = v44;
  v36 = v32;
  v37 = v32;
  v38 = v56;
  v48(v44, v36, v56);
  v39 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v47(v40 + v49, v35, v38);
  v41 = (v40 + v39);
  *v41 = sub_226EDA784;
  v41[1] = v34;

  sub_227669270();
  (*(v50 + 8))(v37, v38);
}

uint64_t sub_226EDA714@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, a1, v6);
}

uint64_t sub_226EDA7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669270();
}

void sub_226EDAA38(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(v8, a5);
  v6 = v8[0];
  v7 = v8[1];
  v9 = 0;
  a1(v8);

  sub_226EC33EC(v6, v7, 0);
}

uint64_t sub_226EDAAD4@<X0>(uint64_t *a1@<X8>)
{
  sub_227665AD0();
  result = sub_227667710();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

void sub_226EDAB78(uint64_t a1, void *a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22766CCE0();
    sub_226ED9864();
    sub_227125F6C(&qword_281398AD0, sub_226ED9864);
    sub_22766C700();
    v3 = v22;
    v4 = v23;
    v5 = v24;
    v6 = v25;
    v7 = v26;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v19 = v5;
  v11 = (v5 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_18:
      sub_226EBB21C();
      return;
    }

    while (1)
    {
      v18 = [a2 objectWithID_];
      [a2 deleteObject_];

      v6 = v14;
      v7 = v15;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v17 = sub_22766CD50();
      if (v17)
      {
        v20 = v17;
        sub_226ED9864();
        swift_dynamicCast();
        v16 = v21;
        v14 = v6;
        v15 = v7;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_226EDADA0()
{
  sub_226EDADF8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_226EDADF8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = qword_2813B2078;
  v4 = sub_22766A100();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_226EDAE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a5(a1, a2, a3, a4);
  if (v5)
  {
    sub_22766A770();
    v17 = v5;
    v18 = sub_22766B380();
    v19 = sub_22766C8B0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_22766D250();
      v24 = sub_226E97AE8(v22, v23, &v28);
      v27 = v11;
      v25 = v24;

      *(v20 + 4) = v25;
      _os_log_impl(&dword_226E8E000, v18, v19, "ERROR: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AA9A450](v21, -1, -1);
      MEMORY[0x22AA9A450](v20, -1, -1);

      (*(v12 + 8))(v15, v27);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    return swift_willThrow();
  }

  return result;
}

void sub_226EDB0C4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v58 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227663FA0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_226EDB658(a1, a3, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v52 = v11;
    v53 = v16;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v50 = v8;
    v51 = v7;
    v20 = *(a1 + 16);
    if (v20)
    {
      v22 = v13 + 16;
      v21 = *(v13 + 16);
      v56 = "ManagedCompletedMarketingVideo";
      v57 = v21;
      v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v54 = *(v13 + 72);
      v55 = (v13 + 8);
      v24 = v53;
      while (1)
      {
        v25 = v22;
        v57(v24, v23, v12);
        v26 = objc_opt_self();
        v27 = v24;
        v28 = sub_22766BFD0();
        v29 = v58;
        v30 = [v26 insertNewObjectForEntityForName:v28 inManagedObjectContext:v58];

        type metadata accessor for ManagedConfiguration();
        v31 = swift_dynamicCastClass();
        if (!v31)
        {

          v35 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
          v36 = swift_allocError();
          (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51000], v35);
          swift_willThrow();
          v24 = v27;
          goto LABEL_16;
        }

        v32 = v31;
        v33 = sub_226EB1040(&unk_28139BA38, MEMORY[0x277D50560]);
        v34 = v59;
        (*(v33 + 64))(v32, v29, v12, v33);
        v24 = v27;
        v59 = v34;
        if (v34)
        {
          break;
        }

        (*v55)(v27, v12);

        v23 += v54;
        --v20;
        v22 = v25;
        if (!v20)
        {
          goto LABEL_12;
        }
      }

      v36 = v59;
LABEL_16:
      v38 = v52;
      sub_22766A770();
      v39 = v36;
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v51;
      if (v42)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v36;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_226E8E000, v40, v41, "%@", v44, 0xCu);
        sub_226E97D1C(v45, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v45, -1, -1);
        v48 = v44;
        v24 = v53;
        MEMORY[0x22AA9A450](v48, -1, -1);
      }

      (*(v50 + 8))(v38, v43);
      swift_willThrow();
      sub_226EDC474(0);
      (*v55)(v24, v12);
    }

    else
    {
LABEL_12:
      sub_226EDC474(0);
    }
  }
}

uint64_t sub_226EDB658(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15 = a1;
  v3 = (a3 + 32);
  v4 = *(a3 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v7 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v7);
    v8 = *(v6 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB58, &qword_22768B7E8);
    v10 = sub_226E9CFD0(&qword_281399120, &qword_27D7BEB58, &qword_22768B7E8);
    v11 = sub_226EB1040(&unk_28139BA38, MEMORY[0x277D50560]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_226EDB7B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v102 = a1;
  v95 = sub_22766B390();
  v91 = *(v95 - 8);
  v8 = *(v91 + 64);
  v9 = MEMORY[0x28223BE20](v95);
  v77 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v97 = &v77 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v96 = *(AssociatedTypeWitness - 8);
  v13 = *(v96 + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v94 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v84 = &v77 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v92 = &v77 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v103 = &v77 - v21;
  MEMORY[0x28223BE20](v20);
  v87 = &v77 - v22;
  v23 = sub_22766CB90();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v104 = &v77 - v26;
  v27 = *(a3 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = swift_getAssociatedTypeWitness();
  v78 = *(v31 - 8);
  v32 = *(v78 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v77 - v33;
  v35 = *(a5 + 32);
  v83 = a5;
  v81 = a5 + 32;
  v80 = v35;
  v35(AssociatedTypeWitness, a5);
  v82 = a2;
  v36 = 0;
  if (sub_227669C10())
  {
    (*(v27 + 16))(v30, v102, a3);
    sub_22766C230();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v38 = v104;
    v102 = AssociatedConformanceWitness;
    sub_22766CBB0();
    v39 = v96;
    v40 = *(v96 + 48);
    v101 = v96 + 48;
    v100 = v40;
    v41 = v40(v38, 1, AssociatedTypeWitness);
    v43 = v87;
    if (v41 != 1)
    {
      v46 = *(v39 + 32);
      v45 = v39 + 32;
      v98 = v46;
      v99 = (v45 - 16);
      v47 = (v45 - 24);
      v91 += 8;
      *&v42 = 136315650;
      v79 = v42;
      v88 = (v45 - 24);
      v90 = v31;
      v89 = v34;
      v96 = v45;
      v46(v87, v38, AssociatedTypeWitness);
      while (1)
      {
        v49 = *v99;
        (*v99)(v103, v43, AssociatedTypeWitness);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB68, &qword_227679560);
        if (swift_dynamicCast())
        {
          sub_226E92AB8(v106, &v108);
          v50 = v97;
          sub_22766A770();
          v51 = v92;
          v49(v92, v43, AssociatedTypeWitness);
          v52 = sub_22766B380();
          v53 = sub_22766C8B0();
          v54 = os_log_type_enabled(v52, v53);
          v86 = v49;
          if (v54)
          {
            v55 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            *&v106[0] = v85;
            *v55 = v79;
            v49(v84, v51, AssociatedTypeWitness);
            v56 = sub_22766C060();
            v58 = v57;
            v59 = *v47;
            (*v47)(v51, AssociatedTypeWitness);
            v60 = sub_226E97AE8(v56, v58, v106);

            *(v55 + 4) = v60;
            *(v55 + 12) = 2080;
            v105 = v80(AssociatedTypeWitness, v83);
            v61 = sub_2271115CC();
            v62 = MEMORY[0x277D4F1D0];
            v63 = MEMORY[0x22AA958B0](MEMORY[0x277D4F1D0], v61);
            v65 = sub_226E97AE8(v63, v64, v106);

            *(v55 + 14) = v65;
            *(v55 + 22) = 2080;
            v105 = v82;
            v66 = v61;
            v67 = v59;
            v68 = v97;
            v69 = MEMORY[0x22AA958B0](v62, v66);
            v71 = sub_226E97AE8(v69, v70, v106);

            *(v55 + 24) = v71;
            v72 = v95;
            _os_log_impl(&dword_226E8E000, v52, v53, "Journaling %s, as it needs %s and we have %s", v55, 0x20u);
            v73 = v85;
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v73, -1, -1);
            v74 = v55;
            v43 = v87;
            MEMORY[0x22AA9A450](v74, -1, -1);

            (*v91)(v68, v72);
          }

          else
          {

            v67 = *v47;
            (*v47)(v51, AssociatedTypeWitness);
            (*v91)(v50, v95);
          }

          v75 = v109;
          v76 = v110;
          __swift_project_boxed_opaque_existential_0(&v108, v109);
          sub_227111128(*(v93 + 16), v75, v76);
          v47 = v88;
          v67(v43, AssociatedTypeWitness);
          __swift_destroy_boxed_opaque_existential_0(&v108);
          v31 = v90;
          v34 = v89;
        }

        else
        {
          (*v47)(v43, AssociatedTypeWitness);
          v107 = 0;
          memset(v106, 0, sizeof(v106));
          sub_226E97D1C(v106, &qword_27D7BAB70, &qword_227679568);
        }

        v48 = v104;
        sub_22766CBB0();
        if (v100(v48, 1, AssociatedTypeWitness) == 1)
        {
          break;
        }

        v98(v43, v48, AssociatedTypeWitness);
      }
    }

    (*(v78 + 8))(v34, v31);
    return 1;
  }

  return v36;
}

void sub_226EDC364(void *a1)
{
  sub_22714BEB8(&qword_28139BA28, MEMORY[0x277D50560]);
  v3 = sub_2276683C0();
  if (!v1)
  {
    v5 = v3;
    v6 = v4;
    v7 = sub_227662560();
    sub_226EDC420(v5, v6);
    [a1 setData_];
  }
}

uint64_t sub_226EDC420(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_226EDC474(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_226EDC5C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_227663FA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *__swift_project_boxed_opaque_existential_0((a2 + 296), *(a2 + 320));
  result = sub_226EAF48C(a1, v15);
  if (v5)
  {
    return result;
  }

  v98 = a5;
  v99 = a3;
  v100 = a4;
  v101 = v12;
  v102 = v11;
  v107 = 0;
  v18 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v18 + 16);
  v22 = v18[3];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = &qword_2813B2078;
  v28 = v19;
  v29 = v20;

  sub_22766A070();
  *(v26 + 16) = v28;
  *(v26 + 24) = v29;
  *(v26 + 32) = v21;
  *(v26 + 40) = v22;
  swift_getKeyPath();
  v103 = v15;
  sub_227663F60();
  v106[3] = MEMORY[0x277D839F8];
  v106[0] = v30;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v31 = sub_22766C820();
  sub_226E93170(v106, v104, &unk_27D7BC990, &qword_227670A30);
  v32 = v105;
  if (v105)
  {
    v33 = __swift_project_boxed_opaque_existential_0(v104, v105);
    v34 = *(v32 - 8);
    v35 = *(v34 + 64);
    MEMORY[0x28223BE20](v33);
    v37 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v37);
    v38 = sub_22766D170();
    (*(v34 + 8))(v37, v32);
    v27 = &qword_2813B2078;
    __swift_destroy_boxed_opaque_existential_0(v104);
  }

  else
  {
    v38 = 0;
  }

  v39 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v40 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226E97D1C(v106, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v41 = v40;
  v42 = sub_22766A080();
  v44 = v43;
  MEMORY[0x22AA985C0]();
  if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_91;
  }

LABEL_6:
  sub_22766C3A0();
  (v42)(v106, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v46 = v107;
  v47 = sub_2273FC7CC(KeyPath);
  v107 = v46;
  v48 = v103;
  if (!v46)
  {
    v54 = sub_226F3E6A8(v47);

    swift_setDeallocating();

    v55 = *(v26 + 40);

    v56 = *v27;
    v57 = sub_22766A100();
    (*(*(v57 - 8) + 8))(v26 + v56, v57);
    v58 = *(*v26 + 48);
    v59 = *(*v26 + 52);
    swift_deallocClassInstance();
    v60 = 1 << *(v54 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v42 = v61 & *(v54 + 56);
    v26 = (v60 + 63) >> 6;

    v62 = v106 + 1;
    v41 = 0;
    v63 = MEMORY[0x277D84F90];
    while (1)
    {
      while (1)
      {
        do
        {
          if (!v42)
          {
            while (1)
            {
              v64 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
                break;
              }

              if (v64 >= v26)
              {

                sub_226F44E94(v63);

                sub_227668640();
                return (*(v101 + 8))(v48, v102);
              }

              v42 = *(v54 + 56 + 8 * v64);
              ++v41;
              if (v42)
              {
                v41 = v64;
                goto LABEL_16;
              }
            }

            __break(1u);
LABEL_91:
            sub_22766C360();
            goto LABEL_6;
          }

LABEL_16:
          v65 = __clz(__rbit64(v42));
          v42 &= v42 - 1;
          v66 = (*(v54 + 48) + ((v41 << 10) | (16 * v65)));
          v67 = *v66;
          v68 = v66[1];
          v69 = HIBYTE(v68) & 0xF;
          v70 = v67 & 0xFFFFFFFFFFFFLL;
          if ((v68 & 0x2000000000000000) != 0)
          {
            v71 = HIBYTE(v68) & 0xF;
          }

          else
          {
            v71 = v67 & 0xFFFFFFFFFFFFLL;
          }
        }

        while (!v71);
        if ((v68 & 0x1000000000000000) == 0)
        {
          break;
        }

        v97 = v62;

        v27 = sub_2274ADCE8(v67, v68, 10);

        v62 = v97;
        if ((v27 & 0x100000000) == 0)
        {
LABEL_82:
          v97 = v62;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2273A683C(0, *(v63 + 16) + 1, 1, v63);
            v63 = result;
          }

          v91 = v63;
          v92 = *(v63 + 16);
          v93 = v91;
          v94 = *(v91 + 24);
          if (v92 >= v94 >> 1)
          {
            result = sub_2273A683C((v94 > 1), v92 + 1, 1, v93);
            v93 = result;
          }

          *(v93 + 16) = v92 + 1;
          v95 = v93 + 4 * v92;
          v63 = v93;
          *(v95 + 32) = v27;
          v62 = v97;
        }
      }

      if ((v68 & 0x2000000000000000) != 0)
      {
        v106[0] = v67;
        v106[1] = v68 & 0xFFFFFFFFFFFFFFLL;
        if (v67 == 43)
        {
          if (!v69)
          {
            goto LABEL_95;
          }

          if (--v69)
          {
            LODWORD(v27) = 0;
            v82 = v62;
            while (1)
            {
              v83 = *v82 - 48;
              if (v83 > 9)
              {
                break;
              }

              v84 = 10 * v27;
              if ((v84 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              v27 = v84 + v83;
              if (__CFADD__(v84, v83))
              {
                break;
              }

              ++v82;
              if (!--v69)
              {
                goto LABEL_77;
              }
            }
          }
        }

        else if (v67 == 45)
        {
          if (!v69)
          {
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            return result;
          }

          if (--v69)
          {
            LODWORD(v27) = 0;
            v76 = v62;
            while (1)
            {
              v77 = *v76 - 48;
              if (v77 > 9)
              {
                break;
              }

              v78 = 10 * v27;
              if ((v78 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              v27 = v78 - v77;
              if (v78 < v77)
              {
                break;
              }

              ++v76;
              if (!--v69)
              {
                goto LABEL_77;
              }
            }
          }
        }

        else if (v69)
        {
          LODWORD(v27) = 0;
          v87 = v106;
          while (1)
          {
            v88 = *v87 - 48;
            if (v88 > 9)
            {
              break;
            }

            v89 = 10 * v27;
            if ((v89 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            v27 = v89 + v88;
            if (__CFADD__(v89, v88))
            {
              break;
            }

            ++v87;
            if (!--v69)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }

      if ((v67 & 0x1000000000000000) != 0)
      {
        result = (v68 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v90 = v62;
        result = sub_22766CEC0();
        v62 = v90;
      }

      v72 = *result;
      if (v72 == 43)
      {
        if (v70 < 1)
        {
          goto LABEL_93;
        }

        v69 = v70 - 1;
        if (v70 == 1)
        {
          goto LABEL_76;
        }

        v27 = 0;
        if (result)
        {
          v79 = (result + 1);
          while (1)
          {
            v80 = *v79 - 48;
            if (v80 > 9)
            {
              goto LABEL_76;
            }

            v81 = 10 * v27;
            if ((v81 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_76;
            }

            v27 = v81 + v80;
            if (__CFADD__(v81, v80))
            {
              goto LABEL_76;
            }

            ++v79;
            if (!--v69)
            {
              goto LABEL_77;
            }
          }
        }
      }

      else if (v72 == 45)
      {
        if (v70 < 1)
        {
          goto LABEL_94;
        }

        v69 = v70 - 1;
        if (v70 == 1)
        {
          goto LABEL_76;
        }

        v27 = 0;
        if (result)
        {
          v73 = (result + 1);
          while (1)
          {
            v74 = *v73 - 48;
            if (v74 > 9)
            {
              break;
            }

            v75 = 10 * v27;
            if ((v75 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            v27 = v75 - v74;
            if (v75 < v74)
            {
              break;
            }

            ++v73;
            if (!--v69)
            {
              goto LABEL_77;
            }
          }

LABEL_76:
          v27 = 0;
          LOBYTE(v69) = 1;
          goto LABEL_77;
        }
      }

      else
      {
        if (!v70)
        {
          goto LABEL_76;
        }

        v27 = 0;
        if (result)
        {
          do
          {
            v85 = *result - 48;
            if (v85 > 9)
            {
              goto LABEL_76;
            }

            v86 = 10 * v27;
            if ((v86 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_76;
            }

            v27 = v86 + v85;
            if (__CFADD__(v86, v85))
            {
              goto LABEL_76;
            }

            ++result;
          }

          while (--v70);
        }
      }

      LOBYTE(v69) = 0;
LABEL_77:
      LOBYTE(v104[0]) = v69;
      if ((v69 & 1) == 0)
      {
        goto LABEL_82;
      }
    }
  }

  swift_setDeallocating();

  v49 = *(v26 + 40);

  v50 = *v27;
  v51 = sub_22766A100();
  (*(*(v51 - 8) + 8))(v26 + v50, v51);
  v52 = *(*v26 + 48);
  v53 = *(*v26 + 52);
  swift_deallocClassInstance();
  return (*(v101 + 8))(v48, v102);
}

uint64_t sub_226EDCF78()
{
  v0 = sub_227665270();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v46 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  sub_22766A710();
  sub_22766B370();
  v47 = *(v6 + 8);
  v47(v21, v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D515A0], v0);
  if ([objc_opt_self() acknowledgePrivacyOverride] == 2)
  {
    sub_22766A730();
    v22 = sub_22766B380();
    v23 = sub_22766C890();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_226E8E000, v22, v23, "[OptInPrivacy] Privacy acknowledgement disabled via AMSDefaults.acknowledgePrivacyOverride: API will always return optedIn!", v24, 2u);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    v47(v19, v5);
    (*(v1 + 8))(v4, v0);
    return 1;
  }

  v46 = v0;
  v26 = objc_opt_self();
  sub_227665260();
  v27 = sub_22766BFD0();

  v28 = [v26 acknowledgementNeededForPrivacyIdentifier_];

  if (v28)
  {
    sub_22766A730();
    v29 = sub_22766B380();
    v30 = sub_22766C870();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_226E8E000, v29, v30, "[OptInPrivacy] acknowledgementNeeded = 1", v31, 2u);
      MEMORY[0x22AA9A450](v31, -1, -1);
    }

    v47(v16, v5);
    (*(v1 + 8))(v4, v46);
    return 0;
  }

  sub_227665260();
  v32 = sub_22766BFD0();

  v33 = [v26 hasPreviouslyAcknowledgedPrivacyIdentifier_];

  if (!v33)
  {
    sub_22766A730();
    v41 = sub_22766B380();
    v42 = sub_22766C870();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v46;
    if (v43)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_226E8E000, v41, v42, "[OptInPrivacy] User never consented, needs acknowledgement.", v45, 2u);
      MEMORY[0x22AA9A450](v45, -1, -1);
    }

    v47(v10, v5);
    (*(v1 + 8))(v4, v44);
    return 0;
  }

  sub_227665260();
  v34 = sub_22766BFD0();

  v35 = [v26 hasRejectedPrivacyIdentifier_];

  sub_22766A730();
  v36 = sub_22766B380();
  v37 = sub_22766C870();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v46;
  if (v38)
  {
    v40 = swift_slowAlloc();
    *v40 = 67109120;
    *(v40 + 4) = v35 ^ 1;
    _os_log_impl(&dword_226E8E000, v36, v37, "[OptInPrivacy] Opted-In = %{BOOL}d.", v40, 8u);
    MEMORY[0x22AA9A450](v40, -1, -1);
  }

  v47(v13, v5);
  (*(v1 + 8))(v4, v39);
  if (v35)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_226EDD55C@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_2276666A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  v13 = *(v9 + 8);
  v13(v12, v8);
  sub_22766A730();
  sub_22766B370();
  v13(v12, v8);
  sub_226EDCF78();
  sub_227666690();
  sub_227666670();
  (*(v2 + 16))(v5, v7, v1);
  v14 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v15 = swift_allocObject();
  (*(v2 + 32))(v15 + v14, v5, v1);
  sub_227669280();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_226EDD98C(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v17 - v8;
  swift_beginAccess();
  sub_226EDDC10(v2 + 56, &v18);
  if (v19)
  {
    sub_226E92AB8(&v18, v20);
    sub_226E91B50(v20, &v18);
    sub_226EDDC60(a2, v9);
    v10 = (*(v6 + 80) + 57) & ~*(v6 + 80);
    v11 = swift_allocObject();
    sub_226E92AB8(&v18, v11 + 16);
    *(v11 + 56) = a1;
    sub_226EDDCD0(v9, v11 + v10);
    v12 = swift_allocObject();
    *(v12 + 16) = "SeymourServices/JetIdentifierStore.swift";
    *(v12 + 24) = 40;
    *(v12 + 32) = 2;
    *(v12 + 40) = 84;
    *(v12 + 48) = &unk_2276866E0;
    *(v12 + 56) = v11;
    sub_227669270();
    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    sub_22746E72C(&v18);
    v14 = sub_2276636A0();
    sub_226F09790();
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D50080], v14);
    *(swift_allocObject() + 16) = v15;
    return sub_227669280();
  }
}

uint64_t get_enum_tag_for_layout_string_15SeymourServices18JetIdentifierStoreC5StateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226EDDC60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226EDDCD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226EDDD40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226EDDDA8(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v17 - v8;
  swift_beginAccess();
  sub_226EDDC10(v2 + 56, &v18);
  if (v19)
  {
    sub_226E92AB8(&v18, v20);
    sub_226E91B50(v20, &v18);
    sub_226EDDC60(a2, v9);
    v10 = (*(v6 + 80) + 57) & ~*(v6 + 80);
    v11 = swift_allocObject();
    sub_226E92AB8(&v18, v11 + 16);
    *(v11 + 56) = a1;
    sub_226EDDCD0(v9, v11 + v10);
    v12 = swift_allocObject();
    *(v12 + 16) = "SeymourServices/JetIdentifierStore.swift";
    *(v12 + 24) = 40;
    *(v12 + 32) = 2;
    *(v12 + 40) = 74;
    *(v12 + 48) = &unk_2276866C0;
    *(v12 + 56) = v11;
    sub_227669270();
    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    sub_22746E72C(&v18);
    v14 = sub_2276636A0();
    sub_226F09790();
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D50080], v14);
    *(swift_allocObject() + 16) = v15;
    return sub_227669280();
  }
}

uint64_t sub_226EDE020()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EDE058()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226EDE0C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  v9 = *(v5 + 8);
  v9(v8, v4);
  v10 = *__swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
  sub_22766A730();
  sub_22766B370();
  v9(v8, v4);
  return sub_226EDD55C(a1);
}

uint64_t sub_226EDE22C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);
  v4 = sub_226EB6150(&qword_28139BC68, &qword_27D7BEF50, &qword_227671540, sub_226F4364C);
  result = MEMORY[0x22AA98980](v2, v3, v4);
  v12 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v7 = *v6;
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      sub_226EB396C(v9, v8, *v6);
      sub_2270AF954(v10, v9, v8, v7);
      sub_226EB2DFC(v10[0], v10[1], v11);
      v6 += 24;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

void *sub_226EDE33C(void *a1, int64_t a2, char a3)
{
  result = sub_226EDE318(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226EDE35C(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_226EDE45C, 0, 0);
}

uint64_t sub_226EDE45C()
{
  v18 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  sub_226E99364(0, &qword_281398A50, 0x277CE8CC0);
  v4 = sub_22766CA40();

  v0[2] = v4;
  sub_227669DE0();
  sub_227669D90();
  v5 = objc_allocWithZone(MEMORY[0x277CE8CC0]);
  v6 = sub_22766BFD0();

  v7 = [v5 initWithTemplateUniqueName:v6 progressQuantity:0 goalQuantity:0];
  v0[11] = v7;

  sub_226ECCF08(&v17, v7);
  v8 = v3[70];
  v9 = v3[71];
  __swift_project_boxed_opaque_existential_0(v3 + 67, v8);
  v10 = *(v9 + 24);

  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[12] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB978, &unk_22767B520);
  *v12 = v0;
  v12[1] = sub_2271760F4;
  v14 = v0[5];

  return (v16)(v0 + 3, sub_22717AEA4, v14, v13, v8, v9);
}

uint64_t sub_226EDE784(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v43 = a4;
  v7 = sub_22766B390();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766C050();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v40 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227662750();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2276624A0();
  v46 = *(v18 - 8);
  v19 = *(v46 + 64);
  MEMORY[0x28223BE20](v18);
  v47 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v39 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v39 - v25;
  result = type metadata accessor for TransportSerializableJournalRecorder();
  if (*(a1 + *(result + 28)) == 1)
  {
    v28 = result;
    v49 = a2;
    v50 = a3;

    MEMORY[0x22AA98450](95, 0xE100000000000000);
    v29 = *(a1 + *(v28 + 20));
    sub_227662720();
    v30 = sub_2276626A0();
    (*(v14 + 8))(v17, v13);
    v31 = [v29 stringFromDate_];

    v32 = sub_22766C000();
    v34 = v33;

    MEMORY[0x22AA98450](v32, v34);

    sub_227662400();

    sub_227662410();
    v35 = *(v46 + 8);
    v35(v23, v18);
    sub_226FB165C();
    v39[1] = v35;
    sub_226FB1748();
    v36 = v43[5];
    __swift_project_boxed_opaque_existential_0(v43, v43[3]);
    v49 = sub_227667710();
    v50 = v37;
    v38 = v40;
    sub_22766C040();
    sub_226FB2548();
    sub_22766CBF0();
    (*(v41 + 8))(v38, v42);
    v35(v26, v18);
  }

  return result;
}

void sub_226EDEE20(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D52828], sub_226F1F928, sub_226ED4D78);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226EDEFE4(v7);

    sub_226EB707C(v8, MEMORY[0x277D52828], sub_226EDF180);
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t objectdestroy_30Tm()
{
  v1 = sub_227668D10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EDEFE4(uint64_t a1)
{
  v2 = sub_227666B60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139B5D8, MEMORY[0x277D52828]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_226EDF180(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226EDF180(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666B60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&qword_28139B5D8, MEMORY[0x277D52828]);
  v36 = a2;
  v13 = sub_22766BF50();
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
      sub_226EB99C8(&qword_28139B5D0, MEMORY[0x277D52828]);
      v23 = sub_22766BFB0();
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
    sub_226EDF4AC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t type metadata accessor for TransportSerializableJournalRecorder()
{
  result = qword_281399978;
  if (!qword_281399978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226EDF4AC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_227666B60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_226EDFD58(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52828], &qword_27D7BA5D0, &qword_227678E60);
      goto LABEL_12;
    }

    sub_226EDFA20(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_226EB99C8(&qword_28139B5D8, MEMORY[0x277D52828]);
  v15 = sub_22766BF50();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_226EB99C8(&qword_28139B5D0, MEMORY[0x277D52828]);
      v23 = sub_22766BFB0();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

id sub_226EDF774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB20, &unk_2276801F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22[-1] - v6;
  v8 = sub_227669C50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v22[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x22AA991A0](0, a2);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_14;
    }

    v14 = *(a2 + 32);
  }

  v15 = v14;
  sub_22766CAA0();
  v17 = v16;

  if (v17)
  {

    sub_227669C40();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      goto LABEL_9;
    }

    sub_226E97D1C(v7, &qword_27D7BCB20, &unk_2276801F0);
  }

  result = [objc_opt_self() valueWithBool:0 inContext:a1];
  if (result)
  {
    return result;
  }

  __break(1u);
LABEL_9:
  (*(v9 + 32))(v13, v7, v8);
  v22[3] = v8;
  v22[4] = sub_226EE00B4();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  (*(v9 + 16))(boxed_opaque_existential_0, v13, v8);
  v19 = sub_227669600();
  __swift_destroy_boxed_opaque_existential_0(v22);
  result = [objc_opt_self() valueWithBool:v19 & 1 inContext:a1];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v20 = result;
  (*(v9 + 8))(v13, v8);

  return v20;
}

uint64_t sub_226EDFA20(uint64_t a1)
{
  v2 = v1;
  v37 = sub_227666B60();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA5D0, &qword_227678E60);
  v10 = sub_22766CDC0();
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
      sub_226EB99C8(&qword_28139B5D8, MEMORY[0x277D52828]);
      result = sub_22766BF50();
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

uint64_t sub_226EDFD58(uint64_t a1)
{
  v2 = v1;
  v41 = sub_227666B60();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA5D0, &qword_227678E60);
  result = sub_22766CDC0();
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
      sub_226EB99C8(&qword_28139B5D8, MEMORY[0x277D52828]);
      result = sub_22766BF50();
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