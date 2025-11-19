uint64_t sub_227516600(uint64_t a1, uint64_t a2)
{

  v3 = sub_2275156A8(a2);
  v4 = sub_227516204(v3, sub_226F05F3C, &selRef_orPredicateWithSubpredicates_, sub_22751680C);

  v6 = sub_2275156A8(v5);
  v7 = sub_227516204(v6, sub_226F05F44, &selRef_andPredicateWithSubpredicates_, sub_22751680C);

  v8 = *(v4 + 16);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = sub_226ECC830(*(v4 + 16), 0);
  v10 = sub_2274CF834(&v16, v9 + 32, v8, v4);
  result = sub_226EBB21C();
  if (v10 == v8)
  {
    v12 = *(v7 + 16);
    if (v12)
    {
      while (1)
      {
        v13 = sub_226ECC830(v12, 0);
        v7 = sub_2274CF834(&v16, v13 + 32, v12, v7);
        sub_226EBB21C();
        if (v7 == v12)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v9 = MEMORY[0x277D84F90];
        v12 = *(v7 + 16);
        if (!v12)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v13 = MEMORY[0x277D84F90];
    }

    v16 = v9;
    sub_22745F2F8(v13);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v14 = sub_22766C2B0();

    v15 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_22751680C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void), SEL *a3)
{
  v4 = 0;
  v5 = *(a1 + 16);
  v20 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v6 = a1 + 48;
  v19 = a1 + 48;
LABEL_2:
  v7 = (v6 + 24 * v4);
  while (v5 != v4)
  {
    if (v4 >= v5)
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      if (!sub_22766CD20())
      {
        goto LABEL_16;
      }

LABEL_12:
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v15 = sub_22766C2B0();

      v16 = [objc_opt_self() *a3];

      return v16;
    }

    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_14;
    }

    v10 = *(v7 - 2);
    v9 = *(v7 - 1);
    v11 = *v7;
    v7 += 24;
    sub_226F04958(v10, v9, v11);
    v12 = a2(v10, v9, v11);
    v13 = sub_226F491F8(v10, v9, v11);
    ++v4;
    if (v12)
    {
      MEMORY[0x22AA985C0](v13);
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v20 = v21;
      v4 = v8;
      v6 = v19;
      goto LABEL_2;
    }
  }

  if (v20 >> 62)
  {
    goto LABEL_15;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_16:

  return 0;
}

uint64_t sub_227516A1C()
{
  v0 = sub_2276641A0();
  v1 = sub_227515968(v0);
  v2 = sub_227516204(v1, 4, &selRef_orPredicateWithSubpredicates_, sub_227517888);

  v3 = sub_227664190();
  v4 = sub_227515968(v3);
  v5 = sub_227516204(v4, 5, &selRef_andPredicateWithSubpredicates_, sub_227517888);

  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = sub_226ECC830(*(v2 + 16), 0);
  v8 = sub_2274CF834(&v14, v7 + 32, v6, v2);
  result = sub_226EBB21C();
  if (v8 == v6)
  {
    v10 = *(v5 + 16);
    if (v10)
    {
      while (1)
      {
        v11 = sub_226ECC830(v10, 0);
        v5 = sub_2274CF834(&v14, v11 + 32, v10, v5);
        sub_226EBB21C();
        if (v5 == v10)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v7 = MEMORY[0x277D84F90];
        v10 = *(v5 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v11 = MEMORY[0x277D84F90];
    }

    v14 = v7;
    sub_22745F2F8(v11);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v12 = sub_22766C2B0();

    v13 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227516BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B99E8, &qword_227674E10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = &v58 - v11;
  v12 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  v16 = v12[3];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB48, &qword_2276802E0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = v13;
  v22 = v14;

  sub_22766A070();
  *(v20 + 16) = v21;
  *(v20 + 24) = v22;
  *(v20 + 32) = v15;
  *(v20 + 40) = v16;
  swift_getKeyPath();
  v64[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v64[0] = a1;
  v64[1] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v23 = sub_22766C820();
  sub_226E93170(v64, v62, &unk_27D7BC990, &qword_227670A30);
  v24 = v63;
  if (v63)
  {
    v25 = __swift_project_boxed_opaque_existential_0(v62, v63);
    v26 = *(v24 - 8);
    v27 = *(v26 + 64);
    v28 = MEMORY[0x28223BE20](v25);
    v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v30, v28);
    v31 = sub_22766D170();
    (*(v26 + 8))(v30, v24);
    __swift_destroy_boxed_opaque_existential_0(v62);
  }

  else
  {
    v31 = 0;
  }

  v32 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v33 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFD0 qword_2276831F0))];

  sub_226E97D1C(v64, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v34 = v33;
  v35 = sub_22766A080();
  v37 = v36;
  MEMORY[0x22AA985C0]();
  v38 = v65;
  if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v57 = *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v35(v64, 0);
  swift_endAccess();

  v39 = MEMORY[0x22AA99A00]();
  v40 = v61;
  sub_227544E3C(v20, v38);
  if (v40)
  {
    objc_autoreleasePoolPop(v39);
    swift_setDeallocating();

    v41 = *(v20 + 40);

    v42 = qword_2813B2078;
    v43 = sub_22766A100();
    (*(*(v43 - 8) + 8))(v20 + v42, v43);
    v44 = *(*v20 + 48);
    v45 = *(*v20 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    objc_autoreleasePoolPop(v39);
    swift_setDeallocating();

    v47 = *(v20 + 40);

    v48 = qword_2813B2078;
    v49 = sub_22766A100();
    (*(*(v49 - 8) + 8))(v20 + v48, v49);
    v50 = *(*v20 + 48);
    v51 = *(*v20 + 52);
    swift_deallocClassInstance();
    v52 = v60;
    sub_226E93170(v38, v60, &qword_27D7B99E8, &qword_227674E10);
    v53 = sub_227669480();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v52, 1, v53) == 1)
    {
      sub_226E97D1C(v52, &qword_27D7B99E8, &qword_227674E10);
      v55 = sub_227663D00();
      sub_22751A63C();
      swift_allocError();
      (*(*(v55 - 8) + 104))(v56, *MEMORY[0x277D50468], v55);
      swift_willThrow();
      return sub_226E97D1C(v38, &qword_27D7B99E8, &qword_227674E10);
    }

    else
    {
      sub_226E97D1C(v38, &qword_27D7B99E8, &qword_227674E10);
      return (*(v54 + 32))(v59, v52, v53);
    }
  }
}

uint64_t sub_227517298@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v56 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v55[0] = v55 - v8;
  v62 = sub_227664390();
  v60 = *(v62 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[1] = a1;
  v12 = sub_227669460();
  v13 = sub_227515168(v12, MEMORY[0x277D502D0], MEMORY[0x277D502C0]);

  v14 = sub_226F3E6A8(v13);

  v15 = sub_227515478(v14);
  v58 = v3;

  sub_226F47F48(v15);

  sub_227664360();
  v59 = v11;
  v16 = sub_226F51D00();
  v18 = v17;
  v19 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v20 = *v19;
  v21 = v19[1];
  v57 = *(v19 + 16);
  v22 = v19[3];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = v20;
  v28 = v21;

  sub_22766A070();
  *(v26 + 16) = v27;
  *(v26 + 24) = v28;
  *(v26 + 32) = v57;
  *(v26 + 40) = v22;
  v29 = sub_227516600(v16, v18);

  swift_beginAccess();
  v30 = sub_22766A080();
  v32 = v31;
  v33 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v61, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v35 = v58;
  v36 = sub_2273FC91C(KeyPath);
  if (v35)
  {

    swift_setDeallocating();

    v37 = *(v26 + 40);

    v38 = qword_2813B2078;
    v39 = sub_22766A100();
    (*(*(v39 - 8) + 8))(v26 + v38, v39);
    v40 = *(*v26 + 48);
    v41 = *(*v26 + 52);
    swift_deallocClassInstance();
    return (*(v60 + 8))(v59, v62);
  }

  else
  {
    v43 = sub_226F3E6A8(v36);

    swift_setDeallocating();

    v44 = *(v26 + 40);

    v45 = qword_2813B2078;
    v46 = sub_22766A100();
    (*(*(v46 - 8) + 8))(v26 + v45, v46);
    v47 = *(*v26 + 48);
    v48 = *(*v26 + 52);
    swift_deallocClassInstance();
    if (*(v43 + 16))
    {
      v49 = sub_227669460();
      sub_22751A9D4(v49, v43);

      v50 = sub_227662750();
      v51 = v55[0];
      (*(*(v50 - 8) + 56))(v55[0], 1, 1, v50);
      v52 = v56;
      sub_227669470();

      sub_226E97D1C(v51, &qword_27D7B9690, qword_227670B50);
      (*(v60 + 8))(v59, v62);
      v53 = 0;
    }

    else
    {
      (*(v60 + 8))(v59, v62);

      v53 = 1;
      v52 = v56;
    }

    v54 = sub_227669480();
    return (*(*(v54 - 8) + 56))(v52, v53, 1, v54);
  }
}

id sub_227517888(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = v3;
  v6 = MEMORY[0x277D84F90];
  v60 = MEMORY[0x277D84F90];
  v7 = *(a1 + 16);
  if (v7)
  {
    v9 = 0;
    v10 = a1 + 32;
    do
    {
      v11 = (v10 + 24 * v9);
      v12 = v9;
      while (1)
      {
        if (v12 >= v7)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v9 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_26;
        }

        v13 = v11[16];
        if (v13 >= 2)
        {
          break;
        }

        ++v12;
        v11 += 24;
        if (v9 == v7)
        {
          goto LABEL_22;
        }
      }

      v53 = v10;
      v54 = a2;
      if (v13 == 2)
      {
        v14 = *v11;
        swift_getKeyPath();
        v15 = sub_227665D00();
        v17 = v16;
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
        v57 = v15;
        v58 = v17;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

        v18 = sub_22766C820();
        sub_226E93170(&v57, v55, &unk_27D7BC990, &qword_227670A30);
        v19 = v56;
        if (v56)
        {
          v20 = __swift_project_boxed_opaque_existential_0(v55, v56);
          v51 = v50;
          v52 = v5;
          v21 = a3;
          v22 = *(v19 - 8);
          v23 = *(v22 + 64);
          v24 = MEMORY[0x28223BE20](v20);
          v26 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v22 + 16))(v26, v24);
          v27 = sub_22766D170();
          (*(v22 + 8))(v26, v19);
          a3 = v21;
          v5 = v52;
          __swift_destroy_boxed_opaque_existential_0(v55);
        }

        else
        {
          v27 = 0;
        }

        v41 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();
        v42 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB50, &qword_2276834E0));
        a2 = v54;
        [v42 initWithLeftExpression:v18 rightExpression:v41 modifier:0 type:v54 options:0];

        v43 = sub_226E97D1C(&v57, &unk_27D7BC990, &qword_227670A30);
      }

      else
      {
        v51 = a3;
        v52 = v5;
        v28 = *v11;
        v29 = *(v11 + 1);
        KeyPath = swift_getKeyPath();
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
        v57 = v28;
        v58 = v29;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
        sub_226F48C1C(v28, v29, 3);
        sub_226F48C1C(v28, v29, 3);

        v31 = sub_22766C820();
        sub_226E93170(&v57, v55, &unk_27D7BC990, &qword_227670A30);
        v32 = v56;
        if (v56)
        {
          v33 = __swift_project_boxed_opaque_existential_0(v55, v56);
          v50[0] = v50;
          v50[1] = KeyPath;
          v34 = v31;
          v35 = *(v32 - 8);
          v36 = *(v35 + 64);
          v37 = MEMORY[0x28223BE20](v33);
          v39 = v50 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v35 + 16))(v39, v37);
          v40 = sub_22766D170();
          (*(v35 + 8))(v39, v32);
          v31 = v34;
          __swift_destroy_boxed_opaque_existential_0(v55);
        }

        else
        {
          v40 = 0;
        }

        v44 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();
        v45 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB50, &qword_2276834E0));
        a2 = v54;
        [v45 initWithLeftExpression:v31 rightExpression:v44 modifier:0 type:v54 options:0];
        sub_226F48C34(v28, v29, 3);

        v43 = sub_226E97D1C(&v57, &unk_27D7BC990, &qword_227670A30);
        a3 = v51;
        v5 = v52;
      }

      MEMORY[0x22AA985C0](v43);
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v46 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v6 = v60;
      v10 = v53;
    }

    while (v9 != v7);
  }

LABEL_22:
  if (v6 >> 62)
  {
LABEL_27:
    if (sub_22766CD20())
    {
      goto LABEL_24;
    }

LABEL_28:

    return 0;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

LABEL_24:
  sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
  v47 = sub_22766C2B0();

  v48 = [objc_opt_self() *a3];

  return v48;
}

void *sub_227517E94(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22751A6B0(v13, a2, a3, a4, a5, a6, a7);
    v15 = v14;
    swift_bridgeObjectRelease_n();

    return v15;
  }

  return result;
}

uint64_t sub_227517F50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = *MEMORY[0x277D85DE8];
  v6 = sub_227669360();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;

  v55 = a2;
  if (v10 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v44 = v11;
    v45 = v3;
    v43 = &v43;
    MEMORY[0x28223BE20](v13);
    v46 = &v43 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v46, v12);
    v11 = 0;
    v14 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = v15 < 64 ? ~(-1 << v15) : -1;
    v17 = v16 & *(a1 + 56);
    v12 = (v15 + 63) >> 6;
    v18 = v7 + 16;
    v19 = v7;
    v7 = a2 + 56;
    v51 = v18;
    v52 = v19;
    v47 = 0;
    v48 = (v19 + 8);
    v49 = v6;
    v50 = a1;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v23 = v20 | (v11 << 6);
      v24 = *(a1 + 48);
      v25 = *(v52 + 72);
      v53 = v23;
      (*(v52 + 16))(v54, v24 + v25 * v23, v6);
      v26 = sub_227669350();
      v28 = v27;
      if (!*(v55 + 16))
      {
        goto LABEL_6;
      }

      v29 = v26;
      v30 = *(v55 + 40);
      sub_22766D370();
      sub_22766C100();
      v31 = sub_22766D3F0();
      v32 = v55;
      v33 = -1 << *(v55 + 32);
      v34 = v31 & ~v33;
      if ((*(v7 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v3 = ~v33;
        while (1)
        {
          v35 = (*(v32 + 48) + 16 * v34);
          v36 = *v35 == v29 && v35[1] == v28;
          if (v36 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v34 = (v34 + 1) & v3;
          v32 = v55;
          if (((*(v7 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v49;
        (*v48)(v54, v49);
        *&v46[(v53 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v53;
        v37 = __OFADD__(v47++, 1);
        a1 = v50;
        if (v37)
        {
          __break(1u);
LABEL_27:
          v38 = sub_22726BD18(v46, v44, v47, a1);

          goto LABEL_28;
        }
      }

      else
      {
LABEL_6:

        v6 = v49;
        (*v48)(v54, v49);
        a1 = v50;
      }
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v11 >= v12)
      {
        goto LABEL_27;
      }

      v22 = *(v14 + 8 * v11);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v55;
  }

  v41 = swift_slowAlloc();
  v42 = v55;

  v38 = sub_227517E94(v41, v11, a1, v42, MEMORY[0x277D53BA0], sub_22726BD18, MEMORY[0x277D53B80]);

  MEMORY[0x22AA9A450](v41, -1, -1);

LABEL_28:
  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t *sub_2275183DC(uint64_t a1, void *a2)
{
  v3 = sub_2276641B0();
  v75 = *(v3 - 8);
  v76 = v3;
  v4 = *(v75 + 64);
  MEMORY[0x28223BE20](v3);
  v77 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a2[3];
  v74 = a2;
  v7 = __swift_project_boxed_opaque_existential_0(a2, v6);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB40, &qword_2276802B0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = &qword_2813B2078;
  v17 = v8;
  v18 = v9;

  sub_22766A070();
  *(v15 + 16) = v17;
  *(v15 + 24) = v18;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  v19 = sub_227516A1C();
  swift_beginAccess();
  v20 = sub_22766A080();
  v22 = v21;
  v23 = v19;
  MEMORY[0x22AA985C0]();
  if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v20(v78, 0);
  swift_endAccess();

  v24 = v79;
  v25 = sub_2272391B8(0x64);
  if (v24)
  {
    swift_setDeallocating();

    v26 = *(v15 + 40);

    v27 = qword_2813B2078;
    v28 = sub_22766A100();
    (*(*(v28 - 8) + 8))(v15 + v27, v28);
    v29 = *(*v15 + 48);
    v30 = *(*v15 + 52);
    swift_deallocClassInstance();
  }

  else
  {
    v31 = v25;
    swift_setDeallocating();

    v32 = *(v15 + 40);

    v33 = qword_2813B2078;
    v34 = sub_22766A100();
    v35 = *(v34 - 8);
    v72 = *(v35 + 8);
    v73 = v34;
    v71 = v35 + 8;
    v72(v15 + v33);
    v36 = *(*v15 + 48);
    v37 = *(*v15 + 52);
    swift_deallocClassInstance();
    v79 = v31;
    v38 = sub_227515168(v31, MEMORY[0x277D53BA0], MEMORY[0x277D53B80]);
    v39 = sub_226F3E6A8(v38);

    v40 = sub_227514F34(v39);
    v70 = 0;

    sub_226F46AE4(v40);

    sub_227664180();
    v41 = sub_2275D8060();
    v16 = sub_227516600(v41, v42);

    v43 = __swift_project_boxed_opaque_existential_0(v74, v74[3]);
    v44 = *v43;
    v45 = v43[1];
    v46 = *(v43 + 16);
    v47 = v43[3];
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    v51 = swift_allocObject();
    v52 = v44;
    v53 = v45;

    sub_22766A070();
    *(v51 + 16) = v52;
    *(v51 + 24) = v53;
    *(v51 + 32) = v46;
    *(v51 + 40) = v47;
    swift_beginAccess();
    v54 = sub_22766A080();
    v56 = v55;
    v57 = v16;
    MEMORY[0x22AA985C0]();
    if (*((*v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v54(v78, 0);
    swift_endAccess();
    KeyPath = swift_getKeyPath();
    v59 = v70;
    v60 = sub_2273FC91C(KeyPath);
    if (v59)
    {

      swift_setDeallocating();

      v61 = *(v51 + 40);

      (v72)(v51 + qword_2813B2078, v73);
      v62 = *(*v51 + 48);
      v63 = *(*v51 + 52);
      swift_deallocClassInstance();
    }

    else
    {
      v64 = sub_226F3E6A8(v60);

      swift_setDeallocating();

      v65 = *(v51 + 40);

      (v72)(v51 + qword_2813B2078, v73);
      v66 = *(*v51 + 48);
      v67 = *(*v51 + 52);
      swift_deallocClassInstance();
      v16 = sub_227517F50(v79, v64);
    }

    (*(v75 + 8))(v77, v76);
  }

  return v16;
}

char *sub_227518A98(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB40, &qword_2276802B0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  swift_getKeyPath();
  v14 = sub_227230638(a1);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v61[0] = v14;
  v15 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v58 = v15;
  v16 = sub_22766C820();
  sub_226E93170(v61, v59, &unk_27D7BC990, &qword_227670A30);
  v17 = v60;
  if (v60)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v59, v60);
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    v21 = MEMORY[0x28223BE20](v18);
    v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v23, v21);
    v24 = sub_22766D170();
    (*(v19 + 8))(v23, v17);
    __swift_destroy_boxed_opaque_existential_0(v59);
  }

  else
  {
    v24 = 0;
  }

  v57 = objc_opt_self();
  v25 = [v57 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB50, &qword_2276834E0);
  [objc_allocWithZone(v56) initWithLeftExpression:v16 rightExpression:v25 modifier:0 type:10 options:0];

  sub_226E97D1C(v61, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v26 = sub_22766A080();
  v28 = v27;
  MEMORY[0x22AA985C0]();
  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v26(v61, 0);
  swift_endAccess();

  swift_getKeyPath();
  v29 = sub_227665D00();
  v31 = v30;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v61[0] = v29;
  v61[1] = v31;

  v32 = sub_22766C820();
  sub_226E93170(v61, v59, &unk_27D7BC990, &qword_227670A30);
  v33 = v60;
  if (v60)
  {
    v34 = __swift_project_boxed_opaque_existential_0(v59, v60);
    v35 = *(v33 - 8);
    v36 = *(v35 + 64);
    v37 = MEMORY[0x28223BE20](v34);
    v39 = &v55 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v39, v37);
    v40 = sub_22766D170();
    (*(v35 + 8))(v39, v33);
    __swift_destroy_boxed_opaque_existential_0(v59);
  }

  else
  {
    v40 = 0;
  }

  v41 = [v57 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v42 = [objc_allocWithZone(v56) initWithLeftExpression:v32 rightExpression:v41 modifier:0 type:4 options:0];

  sub_226E97D1C(v61, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v43 = v42;
  v44 = sub_22766A080();
  v46 = v45;
  MEMORY[0x22AA985C0]();
  if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v54 = *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v44(v61, 0);
  swift_endAccess();

  v47 = sub_2272391B8(0x64);
  swift_setDeallocating();

  v48 = *(v11 + 40);

  v49 = qword_2813B2078;
  v50 = sub_22766A100();
  (*(*(v50 - 8) + 8))(v11 + v49, v50);
  v51 = *(*v11 + 48);
  v52 = *(*v11 + 52);
  swift_deallocClassInstance();
  return v47;
}

void sub_227519118(uint64_t *a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB40, &qword_2276802B0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  v65 = v13;
  v66 = v12;
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  v71 = v6;
  *(v11 + 32) = v6;
  v70 = v7;
  *(v11 + 40) = v7;
  swift_getKeyPath();
  v69 = a1;
  v14 = sub_227669350();
  v16 = v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v81 = v68;
  v79 = v14;
  v80 = v16;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v17 = sub_22766C820();
  sub_226E93170(&v79, v77, &unk_27D7BC990, &qword_227670A30);
  v18 = v78;
  if (v78)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v77, v78);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64);
    v22 = MEMORY[0x28223BE20](v19);
    v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v24, v22);
    v25 = sub_22766D170();
    (*(v20 + 8))(v24, v18);
    __swift_destroy_boxed_opaque_existential_0(v77);
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_opt_self();
  v27 = [v26 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB50, &qword_2276834E0);
  v28 = [objc_allocWithZone(v67) initWithLeftExpression:v17 rightExpression:v27 modifier:0 type:4 options:0];

  sub_226E97D1C(&v79, &unk_27D7BC990, &qword_227670A30);
  v29 = qword_2813B2078;
  swift_beginAccess();
  v30 = v28;
  v31 = sub_22766A080();
  v33 = v32;
  MEMORY[0x22AA985C0]();
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v31(&v79, 0);
  swift_endAccess();

  swift_getKeyPath();
  v34 = sub_227669320();
  v36 = v35;
  v74 = v34;
  v75 = v35;
  v38 = v37 & 1;
  v76 = v37 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBE0, &unk_22768AE50);
  sub_227663AD0();
  sub_226EB2DFC(v34, v36, v38);
  v81 = v68;
  v79 = v72;
  v80 = v73;

  v39 = sub_22766C820();
  sub_226E93170(&v79, v77, &unk_27D7BC990, &qword_227670A30);
  v40 = v78;
  if (v78)
  {
    v41 = __swift_project_boxed_opaque_existential_0(v77, v78);
    v69 = &v64;
    v42 = v11;
    v43 = v29;
    v44 = v26;
    v45 = *(v40 - 8);
    v46 = *(v45 + 64);
    v47 = MEMORY[0x28223BE20](v41);
    v49 = &v64 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v45 + 16))(v49, v47);
    v50 = sub_22766D170();
    (*(v45 + 8))(v49, v40);
    v26 = v44;
    v29 = v43;
    v11 = v42;
    __swift_destroy_boxed_opaque_existential_0(v77);
  }

  else
  {
    v50 = 0;
  }

  v51 = [v26 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v52 = [objc_allocWithZone(v67) initWithLeftExpression:v39 rightExpression:v51 modifier:0 type:4 options:0];

  sub_226E97D1C(&v79, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v53 = v52;
  v54 = sub_22766A080();
  v56 = v55;
  MEMORY[0x22AA985C0]();
  if (*((*v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v63 = *((*v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v54(&v79, 0);
  swift_endAccess();

  v57 = sub_227543290(v11 + v29, v71, v70);
  if (v57)
  {
    if (v57 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_15;
  }

  v58 = v82;
  v59 = sub_22728494C(0);
  if (v58)
  {
LABEL_15:

    return;
  }

  v60 = v59;
  [v59 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v61 = sub_22766C9E0();
  v62 = sub_226EDAB24(v61);

  sub_226EDAB78(v62, v65);
}

uint64_t sub_22751983C(uint64_t a1, void *a2)
{
  v4 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB48, &qword_2276802E0);
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
  v37 = a1;
  v15 = sub_227516448();
  swift_beginAccess();
  v16 = sub_22766A080();
  v18 = v17;
  v19 = v15;
  MEMORY[0x22AA985C0]();
  if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v36[5] = *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v16(v38, 0);
  swift_endAccess();

  v20 = v39;
  v21 = sub_226EA2CA4(0x64);
  if (v20)
  {
    swift_setDeallocating();

    v22 = *(v12 + 40);

    v23 = qword_2813B2078;
    v24 = sub_22766A100();
    (*(*(v24 - 8) + 8))(v12 + v23, v24);
    v25 = *(*v12 + 48);
    v26 = *(*v12 + 52);
    swift_deallocClassInstance();
  }

  else
  {
    v27 = v21;
    swift_setDeallocating();

    v28 = *(v12 + 40);

    v29 = qword_2813B2078;
    v30 = sub_22766A100();
    (*(*(v30 - 8) + 8))(v12 + v29, v30);
    v31 = *(*v12 + 48);
    v32 = *(*v12 + 52);
    v33 = swift_deallocClassInstance();
    MEMORY[0x28223BE20](v33);
    v36[2] = v37;
    v36[3] = a2;
    v34 = sub_226FDFAE0(sub_22751A694, v36, v27);

    v23 = sub_226F46B8C(v34);
  }

  return v23;
}

uint64_t sub_227519B90(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB48, &qword_2276802E0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  v13 = v10;
  v14 = sub_227284964(0);
  if (v1)
  {
  }

  else
  {
    v15 = v14;
    [v14 setResultType_];
    [v15 setFetchLimit_];
    [v15 setFetchOffset_];
    [v15 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v13 = sub_22766C9D0();

    swift_setDeallocating();
    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v10 + v17, v18);
    v19 = *(*v10 + 48);
    v20 = *(*v10 + 52);
    swift_deallocClassInstance();
  }

  return v13;
}

char *sub_227519DAC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB48, &qword_2276802E0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  swift_getKeyPath();
  v14 = sub_227230638(a1);
  v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v38[0] = v14;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226E93170(v38, v36, &unk_27D7BC990, &qword_227670A30);
  v16 = v37;
  if (v37)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v36, v37);
    v18 = *(v16 - 8);
    v19 = *(v18 + 64);
    v20 = MEMORY[0x28223BE20](v17);
    v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v22, v20);
    v23 = sub_22766D170();
    (*(v18 + 8))(v22, v16);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFD0 qword_2276831F0))];

  sub_226E97D1C(v38, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v25 = sub_22766A080();
  v27 = v26;
  MEMORY[0x22AA985C0]();
  if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v35 = *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v25(v38, 0);
  swift_endAccess();

  v28 = sub_226EA2CA4(0x64);
  swift_setDeallocating();

  v29 = *(v11 + 40);

  v30 = qword_2813B2078;
  v31 = sub_22766A100();
  (*(*(v31 - 8) + 8))(v11 + v30, v31);
  v32 = *(*v11 + 48);
  v33 = *(*v11 + 52);
  swift_deallocClassInstance();
  return v28;
}

void sub_22751A1C8(uint64_t a1, void *a2)
{
  v2 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB48, &qword_2276802E0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  v41 = v12;
  v42 = v11;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  swift_getKeyPath();
  v13 = sub_227669430();
  v15 = v14;
  v46[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v46[0] = v13;
  v46[1] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226E93170(v46, v44, &unk_27D7BC990, &qword_227670A30);
  v17 = v45;
  if (v45)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v44, v45);
    v43 = &v40;
    v19 = v6;
    v20 = v5;
    v21 = *(v17 - 8);
    v22 = *(v21 + 64);
    v23 = MEMORY[0x28223BE20](v18);
    v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v25, v23);
    v26 = sub_22766D170();
    (*(v21 + 8))(v25, v17);
    v5 = v20;
    v6 = v19;
    __swift_destroy_boxed_opaque_existential_0(v44);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFD0 qword_2276831F0))];

  sub_226E97D1C(v46, &unk_27D7BC990, &qword_227670A30);
  v29 = qword_2813B2078;
  swift_beginAccess();
  v30 = v28;
  v31 = sub_22766A080();
  v33 = v32;
  MEMORY[0x22AA985C0]();
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v43 = *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v31(v46, 0);
  swift_endAccess();

  v34 = sub_2275432D8(v10 + v29, v5, v6);
  v35 = v46[5];
  if (v34)
  {
    if (v34 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v36 = sub_227284964(0);
  if (v35)
  {
LABEL_10:

    return;
  }

  v37 = v36;
  [v36 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v38 = sub_22766C9E0();
  v39 = sub_226EDAB24(v38);

  sub_226EDAB78(v39, v41);
}

unint64_t sub_22751A63C()
{
  result = qword_27D7BE468;
  if (!qword_27D7BE468)
  {
    sub_227663D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE468);
  }

  return result;
}

void sub_22751A6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(uint64_t))
{
  v51 = a7;
  v46 = a6;
  v45 = a2;
  v47 = a1;
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 64);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v9);
  v15 = &v44 - v14;
  v16 = 0;
  v56 = a3;
  v19 = *(a3 + 56);
  v18 = a3 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v48 = 0;
  v49 = v12 + 16;
  v57 = a4 + 56;
  v50 = v12;
  v52 = (v12 + 8);
  v53 = v15;
  v54 = v11;
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
LABEL_13:
    v27 = v24 | (v16 << 6);
    v28 = *(v56 + 48);
    v29 = *(v50 + 72);
    v55 = v27;
    v30 = (*(v50 + 16))(v15, v28 + v29 * v27, v9, v13);
    v31 = v51(v30);
    v33 = v32;
    if (*(a4 + 16) && (v34 = v31, v35 = *(a4 + 40), sub_22766D370(), sub_22766C100(), v36 = sub_22766D3F0(), v37 = -1 << *(a4 + 32), v38 = v36 & ~v37, ((*(v57 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
    {
      v39 = ~v37;
      while (1)
      {
        v40 = (*(a4 + 48) + 16 * v38);
        v41 = *v40 == v34 && v40[1] == v33;
        if (v41 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v38 = (v38 + 1) & v39;
        if (((*(v57 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v15 = v53;
      v9 = v54;
      (*v52)(v53, v54);
      *(v47 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      if (__OFADD__(v48++, 1))
      {
        __break(1u);
LABEL_26:
        v43 = v56;

        v46(v47, v45, v48, v43);
        return;
      }
    }

    else
    {
LABEL_5:

      v15 = v53;
      v9 = v54;
      (*v52)(v53, v54);
    }
  }

  v25 = v16;
  while (1)
  {
    v16 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v16 >= v23)
    {
      goto LABEL_26;
    }

    v26 = *(v18 + 8 * v16);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v22 = (v26 - 1) & v26;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_22751A9D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = *MEMORY[0x277D85DE8];
  v6 = sub_227663AB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;

  v55 = a2;
  if (v10 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v44 = v11;
    v45 = v3;
    v43 = &v43;
    MEMORY[0x28223BE20](v13);
    v46 = &v43 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v46, v12);
    v11 = 0;
    v14 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = v15 < 64 ? ~(-1 << v15) : -1;
    v17 = v16 & *(a1 + 56);
    v12 = (v15 + 63) >> 6;
    v18 = v7 + 16;
    v19 = v7;
    v7 = a2 + 56;
    v51 = v18;
    v52 = v19;
    v47 = 0;
    v48 = (v19 + 8);
    v49 = v6;
    v50 = a1;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v23 = v20 | (v11 << 6);
      v24 = *(a1 + 48);
      v25 = *(v52 + 72);
      v53 = v23;
      (*(v52 + 16))(v54, v24 + v25 * v23, v6);
      v26 = sub_227663A60();
      v28 = v27;
      if (!*(v55 + 16))
      {
        goto LABEL_6;
      }

      v29 = v26;
      v30 = *(v55 + 40);
      sub_22766D370();
      sub_22766C100();
      v31 = sub_22766D3F0();
      v32 = v55;
      v33 = -1 << *(v55 + 32);
      v34 = v31 & ~v33;
      if ((*(v7 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v3 = ~v33;
        while (1)
        {
          v35 = (*(v32 + 48) + 16 * v34);
          v36 = *v35 == v29 && v35[1] == v28;
          if (v36 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v34 = (v34 + 1) & v3;
          v32 = v55;
          if (((*(v7 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v49;
        (*v48)(v54, v49);
        *&v46[(v53 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v53;
        v37 = __OFADD__(v47++, 1);
        a1 = v50;
        if (v37)
        {
          __break(1u);
LABEL_27:
          v38 = sub_22726C5F4(v46, v44, v47, a1);

          goto LABEL_28;
        }
      }

      else
      {
LABEL_6:

        v6 = v49;
        (*v48)(v54, v49);
        a1 = v50;
      }
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v11 >= v12)
      {
        goto LABEL_27;
      }

      v22 = *(v14 + 8 * v11);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v55;
  }

  v41 = swift_slowAlloc();
  v42 = v55;

  v38 = sub_227517E94(v41, v11, a1, v42, MEMORY[0x277D502D0], sub_22726C5F4, MEMORY[0x277D502C0]);

  MEMORY[0x22AA9A450](v41, -1, -1);

LABEL_28:
  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t sub_22751AE60(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 32);
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_9:
    sub_22706F95C();
    swift_allocError();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = 0;
    swift_willThrow();

    return v3;
  }

  v3 = 0;
  v8 = (v6 + 40);
  while (1)
  {
    result = *(v8 - 1);
    if (result == a1 && *v8 == a2)
    {
      break;
    }

    result = sub_22766D190();
    if (result)
    {
      break;
    }

    ++v3;
    v8 += 2;
    if (v7 == v3)
    {
      goto LABEL_9;
    }
  }

  if (!(v3 >> 31))
  {
    return v3;
  }

  __break(1u);
  return result;
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDatabaseRow.decode(forKey:)(Swift::String forKey)
{
  v3 = *v1;
  result = sub_22751AE60(forKey._countAndFlagsBits, forKey._object);
  if (!v2)
  {
    return sqlite3_column_int(*(v3 + 24), result);
  }

  return result;
}

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDatabaseRow.decode(forKey:)(Swift::String forKey)
{
  v3 = *v1;
  result = sub_22751AE60(forKey._countAndFlagsBits, forKey._object);
  if (!v2)
  {
    return sqlite3_column_int64(*(v3 + 24), result);
  }

  return result;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDatabaseRow.decode(forKey:)(Swift::String forKey)
{
  v3 = *v1;
  v4 = sub_22751AE60(forKey._countAndFlagsBits, forKey._object);
  if (!v2)
  {
    return sqlite3_column_double(*(v3 + 24), v4);
  }

  return result;
}

uint64_t SQLiteDatabaseRow.decode(forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  result = sub_22751AE60(a1, a2);
  if (!v3)
  {
    v6 = result;
    v7 = sqlite3_column_bytes(*(v4 + 24), result);
    v8 = sqlite3_column_blob(*(v4 + 24), v6);
    if (v8)
    {
      return sub_22751B268(v8, v7);
    }

    else
    {
      sub_22706F95C();
      swift_allocError();
      *v9 = xmmword_22767ACC0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDatabaseRow.decode(forKey:)(Swift::String forKey)
{
  v3 = *v1;
  v4 = sub_22751AE60(forKey._countAndFlagsBits, forKey._object);
  if (!v2)
  {
    if (sqlite3_column_text(*(v3 + 24), v4))
    {
      v4 = sub_22766C150();
    }

    else
    {
      sub_22706F95C();
      swift_allocError();
      *v6 = xmmword_22767ACC0;
      *(v6 + 16) = 2;
      v4 = swift_willThrow();
    }
  }

  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t SQLiteDatabaseRow.hashValue.getter()
{
  v1 = *v0;
  sub_22766D370();
  sub_2274AFAB8();
  return sub_22766D3F0();
}

BOOL _s15SeymourServices17SQLiteDatabaseRowV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  v5 = *(*a2 + 16);
  result = 0;
  if (*(v4 + 16) == *(v5 + 16))
  {
    v6 = *(v4 + 24);
    v7 = *(v5 + 24);
    v8 = sub_227669C30();
    if (v8 == sub_227669C30() && *(v2 + 24) == *(v3 + 24) && (sub_2273371D4(*(v2 + 32), *(v3 + 32)) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_22751B268(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_2274F1248(a1, &a1[a2]);
  }

  v3 = sub_2276620A0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_227662050();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_227662520();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_22751B31C()
{
  result = qword_27D7BE470;
  if (!qword_27D7BE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE470);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_22751B450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v87 = *(v89 - 8);
  v4 = *(v87 + 64);
  v5 = MEMORY[0x28223BE20](v89);
  v81 = v6;
  v82 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v84 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA00, &qword_227684F28);
  v92 = *(v8 - 8);
  v93 = v8;
  v9 = *(v92 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v85 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v11;
  MEMORY[0x28223BE20](v10);
  v88 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD980, qword_22768B020);
  v95 = *(v13 - 8);
  v96 = v13;
  v14 = *(v95 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v90 = v16;
  v91 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v73 - v17;
  v18 = sub_227662750();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v78 = v22;
  v79 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v73 - v23;
  v25 = sub_22766B390();
  v77 = *(v25 - 8);
  v26 = *(v77 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v29 = *(v19 + 16);
  v80 = a1;
  v76 = v29;
  v29(v24, a1, v18);
  v30 = sub_22766B380();
  v31 = sub_22766C8B0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v74 = v25;
    v33 = v32;
    v73 = swift_slowAlloc();
    v97 = v73;
    *v33 = 141558274;
    *(v33 + 4) = 1752392040;
    *(v33 + 12) = 2080;
    sub_227520BCC(&qword_28139BDB0, MEMORY[0x277CC9578]);
    v34 = sub_22766D140();
    v75 = a2;
    v36 = v35;
    (*(v19 + 8))(v24, v18);
    v37 = sub_226E97AE8(v34, v36, &v97);

    *(v33 + 14) = v37;
    _os_log_impl(&dword_226E8E000, v30, v31, "Renewing persistable keys with renew time preceding date: %{mask.hash}s", v33, 0x16u);
    v38 = v73;
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x22AA9A450](v38, -1, -1);
    MEMORY[0x22AA9A450](v33, -1, -1);

    (*(v77 + 8))(v28, v74);
  }

  else
  {

    (*(v19 + 8))(v24, v18);
    (*(v77 + 8))(v28, v25);
  }

  v39 = v86;
  v40 = v86[75];
  v41 = v86[76];
  __swift_project_boxed_opaque_existential_0(v86 + 72, v40);
  v42 = v79;
  v76(v79, v80, v18);
  v43 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v39;
  (*(v19 + 32))(v44 + v43, v42, v18);

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  v46 = v84;
  sub_226ECF5D8(sub_2275206EC, v44, v40, v45, v41, v84);

  v47 = swift_allocObject();
  *(v47 + 16) = sub_22752076C;
  *(v47 + 24) = v39;
  v48 = v87;
  v49 = v82;
  v50 = v89;
  (*(v87 + 16))(v82, v46, v89);
  v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v52 = (v81 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v48 + 32))(v53 + v51, v49, v50);
  v54 = (v53 + v52);
  *v54 = sub_227520788;
  v54[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE478, qword_22768AF58);
  v55 = v88;
  sub_227669270();
  (*(v48 + 8))(v46, v50);
  v57 = v92;
  v56 = v93;
  v58 = v85;
  (*(v92 + 16))(v85, v55, v93);
  v59 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v60 = (v83 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v57 + 32))(v61 + v59, v58, v56);
  v62 = (v61 + v60);
  *v62 = sub_22751DA44;
  v62[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9378, &qword_22768AF50);
  v63 = v94;
  sub_227669270();
  (*(v57 + 8))(v55, v56);
  v64 = swift_allocObject();
  *(v64 + 16) = nullsub_1;
  *(v64 + 24) = 0;
  v66 = v95;
  v65 = v96;
  v67 = v91;
  (*(v95 + 16))(v91, v63, v96);
  v68 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v69 = (v90 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  (*(v66 + 32))(v70 + v68, v67, v65);
  v71 = (v70 + v69);
  *v71 = sub_2275207E0;
  v71[1] = v64;
  sub_227669270();
  return (*(v66 + 8))(v63, v65);
}

uint64_t sub_22751BD88@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v67) = a3;
  v73 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v68 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v74 = &v62 - v12;
  MEMORY[0x28223BE20](v11);
  v70 = &v62 - v13;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();

  v19 = sub_22766B380();
  v20 = sub_22766C8B0();

  v21 = os_log_type_enabled(v19, v20);
  v66 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v65 = v14;
    v23 = v22;
    v64 = swift_slowAlloc();
    v76[0] = v64;
    *v23 = 141558786;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_226E97AE8(a1, a2, v76);
    LODWORD(v63) = a4;
    *(v23 + 22) = 2082;
    LODWORD(v67) = v67 & 1;
    LOBYTE(v75[0]) = v67;
    v24 = sub_227520698();
    v25 = MEMORY[0x22AA958B0](MEMORY[0x277D4DF78], v24);
    v27 = a2;
    v28 = sub_226E97AE8(v25, v26, v76);

    *(v23 + 24) = v28;
    *(v23 + 32) = 2082;
    v29 = v63 & 1;
    LOBYTE(v75[0]) = v63 & 1;
    v30 = sub_22766C060();
    v32 = sub_226E97AE8(v30, v31, v76);

    *(v23 + 34) = v32;
    a2 = v27;
    _os_log_impl(&dword_226E8E000, v19, v20, "Requesting bundle for workout:%{mask.hash}s, device:%{public}s, reason:%{public}s", v23, 0x2Au);
    v33 = v64;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v33, -1, -1);
    MEMORY[0x22AA9A450](v23, -1, -1);

    v34 = v18;
    v35 = v67;
    (*(v15 + 8))(v34, v65);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
    v35 = v67 & 1;
    v29 = a4 & 1;
  }

  v36 = sub_227664550();
  v37 = sub_226F4347C(v36);

  v38 = sub_227007CDC(&unk_283A92468, v37);
  v39 = v69;
  v40 = v69[75];
  v41 = v69[76];
  __swift_project_boxed_opaque_existential_0(v69 + 72, v40);
  v42 = swift_allocObject();
  *(v42 + 16) = v39;
  *(v42 + 24) = v35;
  *(v42 + 32) = v66;
  *(v42 + 40) = a2;
  *(v42 + 48) = v29;
  *(v42 + 49) = 0;
  *(v42 + 56) = v38;
  v43 = sub_227663480();
  v67 = v43;

  v44 = v74;
  sub_226ECF5D8(sub_227520C14, v42, v40, v43, v41, v74);

  v45 = *__swift_project_boxed_opaque_existential_0(v39 + 7, v39[10]);
  v66 = type metadata accessor for AssetBundleHandler();
  v77 = v66;
  v78 = &off_283AC3B48;
  v76[0] = v45;
  sub_226E91B50(v76, v75);
  v46 = swift_allocObject();
  sub_226F19770(v75, v46 + 16);

  __swift_destroy_boxed_opaque_existential_0(v76);
  v47 = v71;
  v48 = v72;
  v49 = *(v71 + 16);
  v64 = v71 + 16;
  v65 = v49;
  v50 = v68;
  v49(v68, v44, v72);
  v51 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v63 = v51;
  v52 = (v9 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v62 = *(v47 + 32);
  v62(v53 + v51, v50, v48);
  v54 = (v53 + v52);
  *v54 = sub_227520888;
  v54[1] = v46;
  v55 = v70;
  sub_227669270();
  v71 = *(v47 + 8);
  v56 = v74;
  (v71)(v74, v48);
  v57 = *__swift_project_boxed_opaque_existential_0(v39 + 7, v39[10]);
  v77 = v66;
  v78 = &off_283AC3B48;
  v76[0] = v57;
  sub_226E91B50(v76, v75);
  v58 = swift_allocObject();
  sub_226F19770(v75, v58 + 16);

  __swift_destroy_boxed_opaque_existential_0(v76);
  v65(v56, v55, v48);
  v59 = swift_allocObject();
  v62(v59 + v63, v56, v48);
  v60 = (v59 + v52);
  *v60 = sub_227520890;
  v60[1] = v58;
  sub_227669270();
  return (v71)(v55, v48);
}

uint64_t sub_22751C460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v58 = v8;
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v48 - v9;
  v10 = sub_227666500();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v55 = v14;
  v56 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  v54 = sub_22766B390();
  v52 = *(v54 - 8);
  v17 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v20 = *(v11 + 16);
  v57 = a1;
  v53 = v20;
  v20(v16, a1, v10);
  v21 = sub_22766B380();
  v22 = sub_22766C8B0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v50 = v2;
    v24 = v23;
    v49 = swift_slowAlloc();
    v63 = v49;
    *v24 = 141558274;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2080;
    sub_227520BCC(&qword_27D7BE488, MEMORY[0x277D52328]);
    v25 = sub_22766D140();
    v51 = v5;
    v27 = v26;
    (*(v11 + 8))(v16, v10);
    v28 = sub_226E97AE8(v25, v27, &v63);
    v5 = v51;

    *(v24 + 14) = v28;
    _os_log_impl(&dword_226E8E000, v21, v22, "Demo Bundle - %{mask.hash}s", v24, 0x16u);
    v29 = v49;
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x22AA9A450](v29, -1, -1);
    v30 = v24;
    v3 = v50;
    MEMORY[0x22AA9A450](v30, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v16, v10);
  }

  (*(v52 + 8))(v19, v54);
  v31 = __swift_project_boxed_opaque_existential_0((v3 + 56), *(v3 + 80));
  v32 = *v31;
  v33 = *(*v31 + 336);
  v34 = *(*v31 + 344);
  __swift_project_boxed_opaque_existential_0((*v31 + 312), v33);
  v35 = v56;
  v53(v56, v57, v10);
  v36 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  (*(v11 + 32))(v37 + v36, v35, v10);
  v38 = sub_227663480();

  v39 = v60;
  sub_226ECF5D8(sub_227520A68, v37, v33, v38, v34, v60);

  v40 = swift_allocObject();
  *(v40 + 16) = sub_227520AE8;
  *(v40 + 24) = v32;
  v41 = v61;
  v42 = v59;
  (*(v61 + 16))(v59, v39, v5);
  v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v44 = (v58 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v41 + 32))(v45 + v43, v42, v5);
  v46 = (v45 + v44);
  *v46 = sub_2274A5884;
  v46[1] = v40;

  sub_227669270();
  return (*(v41 + 8))(v39, v5);
}

uint64_t sub_22751CA18@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v76 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v77 = v66 - v14;
  v70 = v15;
  MEMORY[0x28223BE20](v13);
  v73 = v66 - v16;
  v17 = sub_22766B390();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();

  v22 = sub_22766B380();
  v23 = sub_22766C8B0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v69 = v17;
    v25 = v24;
    v26 = a3;
    v27 = a4;
    v28 = swift_slowAlloc();
    v79[0] = v28;
    *v25 = 136446722;
    *(v25 + 4) = sub_226E97AE8(a1, a2, v79);
    *(v25 + 12) = 2082;
    LODWORD(v68) = v26 & 1;
    LOBYTE(v78[0]) = v26 & 1;
    v29 = sub_227520698();
    v30 = MEMORY[0x22AA958B0](MEMORY[0x277D4DF78], v29);
    v32 = sub_226E97AE8(v30, v31, v79);
    v67 = a1;
    v33 = a2;
    v34 = v32;

    *(v25 + 14) = v34;
    *(v25 + 22) = 2082;
    v35 = v27 & 1;
    LOBYTE(v78[0]) = v35;
    v36 = sub_22766C060();
    v38 = sub_226E97AE8(v36, v37, v79);

    *(v25 + 24) = v38;
    _os_log_impl(&dword_226E8E000, v22, v23, "Requesting pause bundle for workout:%{public}s, device:%{public}s, reason:%{public}s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v25, -1, -1);

    v39 = v68;
    v40 = v21;
    v41 = v67;
    (*(v18 + 8))(v40, v69);
  }

  else
  {

    (*(v18 + 8))(v21, v17);
    v39 = a3 & 1;
    v35 = a4 & 1;
    v41 = a1;
    v33 = a2;
  }

  v42 = sub_226F4A7A8(&unk_283A92490);
  v43 = v72;
  v44 = v72[75];
  v45 = v72[76];
  __swift_project_boxed_opaque_existential_0(v72 + 72, v44);
  v46 = swift_allocObject();
  *(v46 + 16) = v43;
  *(v46 + 24) = v39;
  *(v46 + 32) = v41;
  *(v46 + 40) = v33;
  *(v46 + 48) = v35;
  *(v46 + 49) = 2;
  *(v46 + 56) = v42;
  v47 = sub_227663480();
  v69 = v47;

  v48 = v77;
  sub_226ECF5D8(sub_227520610, v46, v44, v47, v45, v77);

  v49 = *__swift_project_boxed_opaque_existential_0(v43 + 7, v43[10]);
  v68 = type metadata accessor for AssetBundleHandler();
  v80 = v68;
  v81 = &off_283AC3B48;
  v79[0] = v49;
  sub_226E91B50(v79, v78);
  v50 = swift_allocObject();
  sub_226F19770(v78, v50 + 16);

  __swift_destroy_boxed_opaque_existential_0(v79);
  v51 = v74;
  v52 = *(v74 + 16);
  v66[1] = v74 + 16;
  v67 = v52;
  v53 = v71;
  v54 = v75;
  v52(v71, v48, v75);
  v55 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v66[0] = v55;
  v56 = (v70 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v70 = *(v51 + 32);
  v70(v57 + v55, v53, v54);
  v58 = (v57 + v56);
  *v58 = sub_227520628;
  v58[1] = v50;
  v59 = v73;
  sub_227669270();
  v74 = *(v51 + 8);
  v60 = v77;
  (v74)(v77, v54);
  v61 = *__swift_project_boxed_opaque_existential_0(v43 + 7, v43[10]);
  v80 = v68;
  v81 = &off_283AC3B48;
  v79[0] = v61;
  sub_226E91B50(v79, v78);
  v62 = swift_allocObject();
  sub_226F19770(v78, v62 + 16);

  __swift_destroy_boxed_opaque_existential_0(v79);
  v67(v60, v59, v54);
  v63 = swift_allocObject();
  v70(v63 + v66[0], v60, v54);
  v64 = (v63 + v56);
  *v64 = sub_227520658;
  v64[1] = v62;
  sub_227669270();
  return (v74)(v59, v54);
}

uint64_t sub_22751D0C4@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v47 = *(v49 - 8);
  v46 = *(v47 + 64);
  v1 = MEMORY[0x28223BE20](v49);
  v44 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v42 = &v38 - v3;
  v38 = sub_2276624A0();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_227664AE0();
  v7 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2276639B0();
  v45 = *(v48 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v38 - v14;
  v16 = sub_2276687D0();
  v41 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276625E0();
  sub_227666810();
  (*(v4 + 56))(v15, 1, 1, v38);
  sub_227668790();
  sub_227666810();
  (*(v17 + 16))(v9, v20, v16);
  swift_storeEnumTagMultiPayload();
  sub_227666820();
  sub_227663950();
  v21 = v51;
  sub_227663900();
  v22 = v43;
  v23 = __swift_project_boxed_opaque_existential_0((v43 + 56), *(v43 + 80));
  v24 = sub_227666860();
  v26 = v25;
  v27 = *__swift_project_boxed_opaque_existential_0((*v23 + 176), *(*v23 + 200));
  v28 = v42;
  sub_2275F3434(v21, v24, v26, v42);

  v29 = v47;
  v30 = v44;
  v31 = v28;
  v32 = v49;
  (*(v47 + 16))(v44, v28, v49);
  v33 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v34 = (v46 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v29 + 32))(v35 + v33, v30, v32);
  v36 = (v35 + v34);
  *v36 = sub_22751F830;
  v36[1] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9378, &qword_22768AF50);
  sub_227669270();
  (*(v29 + 8))(v31, v32);
  (*(v45 + 8))(v51, v48);
  return (*(v17 + 8))(v20, v41);
}

uint64_t sub_22751D638@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *__swift_project_boxed_opaque_existential_0((a2 + 176), *(a2 + 200));
  result = sub_2270769D4(a1, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_22751D6A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;

  v6 = sub_22751F9B4(v5, a2);

  *a3 = v6;
  return result;
}

uint64_t sub_22751D6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_2276639B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  (*(v6 + 16))(v9, a1, v5);
  v14 = sub_22766B380();
  v15 = sub_22766C8B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = v2;
    v19 = v18;
    v33 = v18;
    *v17 = 141558274;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2080;
    sub_227520BCC(&qword_28139BCA0, MEMORY[0x277D501C8]);
    v20 = sub_22766D140();
    v28 = v10;
    v22 = v21;
    (*(v6 + 8))(v9, v5);
    v23 = sub_226E97AE8(v20, v22, &v33);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_226E8E000, v14, v15, "Reload - request %{mask.hash}s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v24 = v19;
    v3 = v29;
    MEMORY[0x22AA9A450](v24, -1, -1);
    v25 = v17;
    a1 = v30;
    MEMORY[0x22AA9A450](v25, -1, -1);

    (*(v31 + 8))(v13, v28);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
    (*(v31 + 8))(v13, v10);
  }

  __swift_project_boxed_opaque_existential_0((v3 + 336), *(v3 + 360));
  v26 = off_283AAEA58;
  type metadata accessor for AssetRequestHandler();
  return v26(a1);
}

void sub_22751DA44(uint64_t *a1)
{
  v5 = *a1;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v1 = sub_22766C950();
  v2 = sub_227663CF0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE478, qword_22768AF58);
  v4 = sub_2273CCBB4(&qword_281398FC8, &qword_27D7BE478, qword_22768AF58);
  MEMORY[0x22AA95520](v1, &v5, v2, v3, v4);
}

uint64_t sub_22751DB08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30 = &v28 - v12;
  v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v14 = *v13;
  v15 = *(*v13 + 336);
  v29 = *(*v13 + 344);
  v28 = __swift_project_boxed_opaque_existential_0((v14 + 312), v15);
  v16 = a1;
  v17 = v5;
  (*(v6 + 16))(v8, v16, v5);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v6 + 32))(v20 + v18, v8, v17);
  *(v20 + v19) = v14;

  v21 = v30;
  sub_226ECF5D8(sub_2273206B4, v20, v15, v17, v29, v30);

  v23 = v31;
  v22 = v32;
  (*(v9 + 16))(v31, v21, v32);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_2273206EC;
  v26[1] = v14;

  sub_227669270();
  return (*(v9 + 8))(v21, v22);
}

uint64_t sub_22751DE30@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30 = &v28 - v12;
  v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v14 = *v13;
  v15 = *(*v13 + 336);
  v29 = *(*v13 + 344);
  v28 = __swift_project_boxed_opaque_existential_0((v14 + 312), v15);
  v16 = a1;
  v17 = v5;
  (*(v6 + 16))(v8, v16, v5);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v6 + 32))(v20 + v18, v8, v17);
  *(v20 + v19) = v14;

  v21 = v30;
  sub_226ECF5D8(sub_227320178, v20, v15, v17, v29, v30);

  v23 = v31;
  v22 = v32;
  (*(v9 + 16))(v31, v21, v32);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_227320190;
  v26[1] = v14;

  sub_227669270();
  return (*(v9 + 8))(v21, v22);
}

uint64_t sub_22751E158@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v162 = a8;
  v163 = a9;
  v160 = a7;
  v166 = a6;
  v167 = a4;
  v168 = a5;
  LODWORD(v169) = a3;
  v165 = a1;
  v10 = sub_227662750();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v159 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v147 - v15;
  v17 = sub_227663480();
  v161 = *(v17 - 8);
  v18 = *(v161 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v147 - v22;
  v24 = sub_22766B390();
  v164 = *(v24 - 8);
  v25 = *(v164 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v147 - v29;
  v31 = *__swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520));
  v32 = v175;
  result = sub_227393794(v169 & 1);
  if (!v32)
  {
    v153 = v30;
    v158 = result;
    v175 = v34;
    v154 = a2;
    v155 = v16;
    v148 = v21;
    v149 = v28;
    v156 = v24;
    v150 = v23;
    v152 = v17;
    v157 = 0;
    v35 = __swift_project_boxed_opaque_existential_0(v165, v165[3]);
    v36 = *v35;
    v37 = v35[1];
    v38 = *(v35 + 16);
    v39 = v35[3];
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    v43 = swift_allocObject();
    v44 = v36;
    v45 = v37;

    sub_22766A070();
    *(v43 + 16) = v44;
    *(v43 + 24) = v45;
    *(v43 + 32) = v38;
    *(v43 + 40) = v39;
    swift_getKeyPath();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v174 = v46;
    v172 = v167;
    v173 = v168;
    v47 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v169 = v47;
    v48 = sub_22766C820();
    sub_226ED25F8(&v172, v170);
    v49 = v171;
    if (v171)
    {
      v50 = __swift_project_boxed_opaque_existential_0(v170, v171);
      v51 = *(v49 - 8);
      v52 = *(v51 + 64);
      MEMORY[0x28223BE20](v50);
      v54 = &v147 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v51 + 16))(v54);
      v55 = sub_22766D170();
      (*(v51 + 8))(v54, v49);
      __swift_destroy_boxed_opaque_existential_0(v170);
    }

    else
    {
      v55 = 0;
    }

    v165 = objc_opt_self();
    v56 = [v165 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
    v58 = [objc_allocWithZone(v57) initWithLeftExpression:v48 rightExpression:v56 modifier:0 type:4 options:0];

    sub_226E97D1C(&v172, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v59 = v58;
    v60 = sub_22766A080();
    v62 = v61;
    MEMORY[0x22AA985C0]();
    if (*((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v60(&v172, 0);
    swift_endAccess();

    swift_getKeyPath();
    v174 = v46;
    v172 = v158;
    v173 = v175;

    v63 = sub_22766C820();
    sub_226ED25F8(&v172, v170);
    v64 = v171;
    if (v171)
    {
      v65 = __swift_project_boxed_opaque_existential_0(v170, v171);
      v151 = &v147;
      v66 = v57;
      v67 = *(v64 - 8);
      v68 = *(v67 + 64);
      MEMORY[0x28223BE20](v65);
      v70 = &v147 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v67 + 16))(v70);
      v71 = sub_22766D170();
      (*(v67 + 8))(v70, v64);
      v57 = v66;
      __swift_destroy_boxed_opaque_existential_0(v170);
    }

    else
    {
      v71 = 0;
    }

    v72 = [v165 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v73 = [objc_allocWithZone(v57) initWithLeftExpression:v63 rightExpression:v72 modifier:0 type:4 options:0];

    sub_226E97D1C(&v172, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v74 = v73;
    v75 = sub_22766A080();
    v77 = v76;
    MEMORY[0x22AA985C0]();
    if (*((*v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v145 = *((*v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v75(&v172, 0);
    swift_endAccess();

    swift_getKeyPath();
    v78 = sub_227663450();
    v174 = MEMORY[0x277D83B88];
    v172 = v78;

    v79 = sub_22766C820();
    sub_226ED25F8(&v172, v170);
    v80 = v171;
    if (v171)
    {
      v81 = __swift_project_boxed_opaque_existential_0(v170, v171);
      v169 = &v147;
      v82 = v57;
      v83 = *(v80 - 8);
      v84 = *(v83 + 64);
      MEMORY[0x28223BE20](v81);
      v86 = &v147 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v83 + 16))(v86);
      v87 = sub_22766D170();
      (*(v83 + 8))(v86, v80);
      v57 = v82;
      __swift_destroy_boxed_opaque_existential_0(v170);
    }

    else
    {
      v87 = 0;
    }

    v88 = [v165 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v89 = [objc_allocWithZone(v57) initWithLeftExpression:v79 rightExpression:v88 modifier:0 type:4 options:0];

    sub_226E97D1C(&v172, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v90 = v89;
    v91 = sub_22766A080();
    v93 = v92;
    MEMORY[0x22AA985C0]();
    if (*((*v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v146 = *((*v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v91(&v172, 0);
    swift_endAccess();

    v94 = v157;
    v95 = sub_2272328B8(100);
    if (v94)
    {

      swift_setDeallocating();

      v96 = *(v43 + 40);

      v97 = qword_2813B2078;
      v98 = sub_22766A100();
      (*(*(v98 - 8) + 8))(v43 + v97, v98);
      v99 = *(*v43 + 48);
      v100 = *(*v43 + 52);
      return swift_deallocClassInstance();
    }

    else
    {
      v101 = v95;
      swift_setDeallocating();

      v102 = *(v43 + 40);

      v103 = qword_2813B2078;
      v104 = sub_22766A100();
      (*(*(v104 - 8) + 8))(v43 + v103, v104);
      v105 = *(*v43 + 48);
      v106 = *(*v43 + 52);
      swift_deallocClassInstance();
      v107 = v153;
      sub_22766A6C0();

      v108 = sub_22766B380();
      v109 = sub_22766C8B0();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v172 = v111;
        *v110 = 141558274;
        *(v110 + 4) = 1752392040;
        *(v110 + 12) = 2080;
        sub_227520BCC(&unk_2813A5800, MEMORY[0x277D4FF88]);
        v112 = sub_22766C610();
        v114 = sub_226E97AE8(v112, v113, &v172);

        *(v110 + 14) = v114;
        _os_log_impl(&dword_226E8E000, v108, v109, "Found bundles: %{mask.hash}s", v110, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v111);
        MEMORY[0x22AA9A450](v111, -1, -1);
        MEMORY[0x22AA9A450](v110, -1, -1);
      }

      v115 = *(v164 + 8);
      v115(v107, v156);
      v116 = v162;
      v117 = v155;
      v118 = *(*__swift_project_boxed_opaque_existential_0((v154 + 496), *(v154 + 520)) + 32);
      sub_2276696A0();
      v169 = v172;
      sub_22722AF88(v101, v117);

      v119 = v161;
      v120 = v152;
      if ((*(v161 + 48))(v117, 1, v152) == 1)
      {
        sub_226E97D1C(v117, &unk_27D7BD3F0, &unk_2276823F0);
        sub_22766C0A0();

        sub_227662740();
        return sub_2276633D0();
      }

      else
      {

        v121 = v150;
        (*(v119 + 32))(v150, v117, v120);
        v122 = sub_2276633F0();
        if ((v123 & 1) != 0 && sub_22718CBA4(v122, v116))
        {
          sub_227663470();

          return (*(v161 + 8))(v121, v120);
        }

        else
        {

          v124 = v149;
          sub_22766A6C0();
          v125 = v161;
          v126 = v148;
          (*(v161 + 16))(v148, v121, v120);
          v127 = sub_22766B380();
          v128 = sub_22766C890();
          if (os_log_type_enabled(v127, v128))
          {
            v129 = v126;
            v130 = swift_slowAlloc();
            v175 = swift_slowAlloc();
            v172 = v175;
            *v130 = 141558530;
            *(v130 + 4) = 1752392040;
            *(v130 + 12) = 2080;
            sub_227520BCC(&qword_27D7B85C0, MEMORY[0x277D4FF88]);
            v131 = sub_22766D140();
            v133 = v132;
            LODWORD(v169) = v128;
            v134 = v120;
            v135 = v129;
            v136 = *(v125 + 8);
            v136(v135, v120);
            v137 = sub_226E97AE8(v131, v133, &v172);

            *(v130 + 14) = v137;
            *(v130 + 22) = 2082;
            LOBYTE(v170[0]) = v160;
            v138 = sub_22766C060();
            v140 = sub_226E97AE8(v138, v139, &v172);

            *(v130 + 24) = v140;
            v121 = v150;
            _os_log_impl(&dword_226E8E000, v127, v169, "Found bundle has disallowed status: %{mask.hash}s for requested status: %{public}s", v130, 0x20u);
            v141 = v175;
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v141, -1, -1);
            MEMORY[0x22AA9A450](v130, -1, -1);

            v142 = v149;
          }

          else
          {

            v134 = v120;
            v136 = *(v125 + 8);
            v136(v126, v120);
            v142 = v124;
          }

          v115(v142, v156);
          v143 = sub_227663190();
          sub_227520BCC(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
          swift_allocError();
          (*(*(v143 - 8) + 104))(v144, *MEMORY[0x277D4FD20], v143);
          swift_willThrow();
          return (v136)(v121, v134);
        }
      }
    }
  }

  return result;
}

uint64_t sub_22751F380@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*__swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520)) + 32);
  result = sub_2276696A0();
  if (!v3)
  {
    v14 = sub_22707E0E4(v25[0], v25[1], a1);

    v25[3] = 0;
    sub_22766A6C0();

    v15 = sub_22766B380();
    v16 = sub_22766C8B0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v24 = a3;
      v18 = v17;
      v23 = swift_slowAlloc();
      v25[0] = v23;
      *v18 = 141558274;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2080;
      sub_227663480();
      sub_227520BCC(&unk_2813A5800, MEMORY[0x277D4FF88]);
      v19 = sub_22766C610();
      v21 = sub_226E97AE8(v19, v20, v25);

      *(v18 + 14) = v21;
      _os_log_impl(&dword_226E8E000, v15, v16, "Loading incomplete bundles %{mask.hash}s", v18, 0x16u);
      v22 = v23;
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AA9A450](v22, -1, -1);
      MEMORY[0x22AA9A450](v18, -1, -1);

      result = (*(v8 + 8))(v11, v7);
      *v24 = v14;
    }

    else
    {

      result = (*(v8 + 8))(v11, v7);
      *a3 = v14;
    }
  }

  return result;
}

void sub_22751F644(uint64_t a1, uint64_t a2)
{

  sub_2273CB458(a1, a2);

  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v4 = sub_22766C950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_2273CCBB4(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60);
  sub_227669240();
}

void sub_22751F728(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  sub_22751FD8C(v3, a2);

  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v4 = sub_22766C950();
  sub_227669A50();
  sub_227663CF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE478, qword_22768AF58);
  sub_2273CCBB4(&qword_281398FC8, &qword_27D7BE478, qword_22768AF58);
  sub_227669210();
}

uint64_t sub_22751F860(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

uint64_t sub_22751F904(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE478, qword_22768AF58);

  return sub_227669270();
}

uint64_t sub_22751F9B4(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v50 = sub_2276639B0();
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD990, &qword_227679D00);
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v48);
  v10 = v38 - v9;
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v46 = v10;
    v38[1] = v2;
    v55 = MEMORY[0x277D84F90];
    sub_226F207E8(0, v11, 0);
    v54 = v55;
    v13 = a1 + 56;
    v14 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v15 = v7;
    v16 = result;
    v17 = 0;
    v44 = v4 + 8;
    v45 = v4 + 16;
    v47 = v15;
    v42 = a1 + 56;
    v43 = v15 + 32;
    v39 = a1 + 64;
    v40 = v11;
    v41 = v4;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
    {
      v20 = v16 >> 6;
      if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_22;
      }

      v21 = *(a1 + 36);
      v52 = v17;
      v53 = v21;
      v22 = *(a1 + 48) + *(v4 + 72) * v16;
      v23 = a1;
      v25 = v49;
      v24 = v50;
      (*(v4 + 16))(v49, v22, v50);
      v26 = v46;
      sub_22751D6FC(v25, v46);
      (*(v4 + 8))(v25, v24);
      v27 = v54;
      v55 = v54;
      v29 = *(v54 + 16);
      v28 = *(v54 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_226F207E8(v28 > 1, v29 + 1, 1);
        v27 = v55;
      }

      *(v27 + 16) = v29 + 1;
      v30 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v54 = v27;
      result = (*(v47 + 32))(v27 + v30 + *(v47 + 72) * v29, v26, v48);
      v18 = 1 << *(v23 + 32);
      if (v16 >= v18)
      {
        goto LABEL_23;
      }

      a1 = v23;
      v13 = v42;
      v31 = *(v42 + 8 * v20);
      if ((v31 & (1 << v16)) == 0)
      {
        goto LABEL_24;
      }

      if (v53 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v32 = v31 & (-2 << (v16 & 0x3F));
      if (v32)
      {
        v18 = __clz(__rbit64(v32)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v19 = v40;
      }

      else
      {
        v33 = v20 << 6;
        v34 = v20 + 1;
        v19 = v40;
        v35 = (v39 + 8 * v20);
        while (v34 < (v18 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_226EB526C(v16, v53, 0);
            v18 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v16, v53, 0);
      }

LABEL_4:
      v17 = v52 + 1;
      v16 = v18;
      v4 = v41;
      if (v52 + 1 == v19)
      {
        return v54;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_22751FD8C(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v76 = *(v74 - 8);
  v4 = *(v76 + 64);
  v5 = MEMORY[0x28223BE20](v74);
  v73 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v91 = &v57 - v6;
  v90 = sub_2276639B0();
  v7 = *(v90 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v90);
  v72 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = &v57 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD990, &qword_227679D00);
  v11 = *(v71 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v71);
  v14 = &v57 - v13;
  v15 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v57 = v2;
    v94 = MEMORY[0x277D84F90];
    sub_226F207E8(0, v15, 0);
    v92 = v94;
    v17 = -1 << *(a1 + 32);
    v89 = a1 + 56;
    result = sub_22766CC90();
    v18 = 0;
    v87 = v7 + 16;
    v68 = v8 + 7;
    v67 = v7 + 32;
    v66 = v76 + 16;
    v65 = v4 + 7;
    v64 = v76 + 32;
    v63 = v76 + 8;
    v62 = v7 + 8;
    v61 = v11 + 32;
    v58 = a1 + 64;
    v88 = v7;
    v70 = v11;
    v69 = v14;
    v59 = v15;
    v60 = a1;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      if ((*(v89 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_22;
      }

      v79 = 1 << result;
      v80 = result >> 6;
      v20 = *(a1 + 36);
      v77 = v18;
      v78 = v20;
      v21 = *(a1 + 48) + *(v7 + 72) * result;
      v22 = *(v7 + 16);
      v23 = v93;
      v86 = result;
      v24 = v90;
      v22(v93, v21, v90);
      v85 = v22;
      v25 = __swift_project_boxed_opaque_existential_0((v75 + 336), *(v75 + 360));
      v26 = *v25;
      v27 = *(*v25 + 184);
      v83 = *(*v25 + 176);
      v84 = v27;
      v82 = __swift_project_boxed_opaque_existential_0((v26 + 152), v83);
      v28 = v72;
      v22(v72, v23, v24);
      v29 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v30 = (v68 + v29) & 0xFFFFFFFFFFFFFFF8;
      v31 = swift_allocObject();
      v81 = *(v88 + 32);
      v81(v31 + v29, v28, v24);
      *(v31 + v30) = v26;

      sub_226ECF5D8(sub_227520540, v31, v83, MEMORY[0x277D84F78] + 8, v84, v91);

      v85(v28, v93, v24);
      v32 = swift_allocObject();
      v33 = v32 + v29;
      v34 = v76;
      v81(v33, v28, v24);
      *(v32 + v30) = v26;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_2273079F4;
      *(v35 + 24) = v32;
      v37 = v73;
      v36 = v74;
      v38 = v91;
      (*(v34 + 16))(v73, v91, v74);
      v39 = (*(v34 + 80) + 16) & ~*(v34 + 80);
      v40 = (v65 + v39) & 0xFFFFFFFFFFFFFFF8;
      v41 = swift_allocObject();
      v42 = v37;
      v43 = v69;
      (*(v34 + 32))(v41 + v39, v42, v36);
      v44 = (v41 + v40);
      *v44 = sub_226F09740;
      v44[1] = v35;
      sub_227663CF0();

      sub_227669270();
      v45 = v36;
      v7 = v88;
      (*(v34 + 8))(v38, v45);
      (*(v7 + 8))(v93, v90);
      v46 = v92;
      v94 = v92;
      v48 = *(v92 + 16);
      v47 = *(v92 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_226F207E8(v47 > 1, v48 + 1, 1);
        v46 = v94;
      }

      *(v46 + 16) = v48 + 1;
      v49 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v92 = v46;
      (*(v70 + 32))(v46 + v49 + *(v70 + 72) * v48, v43, v71);
      a1 = v60;
      v19 = 1 << *(v60 + 32);
      result = v86;
      if (v86 >= v19)
      {
        goto LABEL_23;
      }

      v50 = *(v89 + 8 * v80);
      if ((v50 & v79) == 0)
      {
        goto LABEL_24;
      }

      if (v78 != *(v60 + 36))
      {
        goto LABEL_25;
      }

      v51 = v50 & (-2 << (v86 & 0x3F));
      if (v51)
      {
        v19 = __clz(__rbit64(v51)) | v86 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v52 = v80 << 6;
        v53 = v80 + 1;
        v54 = (v58 + 8 * v80);
        while (v53 < (v19 + 63) >> 6)
        {
          v56 = *v54++;
          v55 = v56;
          v52 += 64;
          ++v53;
          if (v56)
          {
            sub_226EB526C(v86, v78, 0);
            v19 = __clz(__rbit64(v55)) + v52;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v86, v78, 0);
      }

LABEL_4:
      v18 = v77 + 1;
      result = v19;
      if (v77 + 1 == v59)
      {
        return v92;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_227520540(char *a1)
{
  v3 = *(sub_2276639B0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_22730573C(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_227520698()
{
  result = qword_27D7BE480;
  if (!qword_27D7BE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE480);
  }

  return result;
}

uint64_t objectdestroy_14Tm_0()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_2Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);
  v7 = *(v1 + v6);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t objectdestroy_45Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_227520B04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_227520BCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227520C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277D53D78];
  v5 = sub_2276694E0();
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a2 + *(a1 + 20);
  return sub_227662640();
}

uint64_t sub_227520CB4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D58];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_227520D34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227668350();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227520D5C(uint64_t a1)
{
  *(a1 + 24) = sub_227520DC4(&qword_2813A5580);
  result = sub_227520DC4(&unk_2813A5570);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227520DC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227668390();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227520E14(uint64_t a1)
{
  result = sub_227520F04(&qword_27D7BE490);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227520E58(uint64_t a1)
{
  result = sub_227520F04(&qword_27D7BE498);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227520E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_227520F04(&unk_27D7BE7E0);

  return MEMORY[0x2821B22E0](a1, a2, v4);
}

uint64_t sub_227520F04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227666520();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227520F54()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22766D370();
  sub_22766C100();
  sub_22739284C(v6, v4);
  sub_227392BA8(v6, v3);
  return sub_22766D3F0();
}

uint64_t sub_227520FC4(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_22766C100();
  sub_22739284C(a1, v6);

  return sub_227392BA8(a1, v5);
}

uint64_t sub_22752101C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22766D370();
  sub_22766C100();
  sub_22739284C(v6, v4);
  sub_227392BA8(v6, v3);
  return sub_22766D3F0();
}

uint64_t sub_227521088(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_22766D190() & 1) == 0 || (sub_227034B5C(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_227035EAC(v3, v4);
}

unint64_t sub_227521120()
{
  result = qword_27D7BE4A0;
  if (!qword_27D7BE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE4A0);
  }

  return result;
}

uint64_t sub_227521184()
{
  sub_227662B80();
  sub_227662BC0();
  v0 = sub_227662BB0();
  v1 = *(v0 + 16);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    v2 = v0;
    sub_226F1FB48(0, v1, 0);
    v3 = v2;
    v4 = *(v9 + 16);
    v5 = 32;
    do
    {
      v6 = *(v3 + v5);
      v7 = *(v9 + 24);
      if (v4 >= v7 >> 1)
      {
        sub_226F1FB48((v7 > 1), v4 + 1, 1);
        v3 = v2;
      }

      *(v9 + 16) = v4 + 1;
      *(v9 + v4 + 32) = v6;
      ++v5;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return sub_227668210();
}

uint64_t sub_2275212BC()
{
  v0 = sub_227669A90();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  __swift_allocate_value_buffer(v5, qword_27D7BE4A8);
  __swift_project_value_buffer(v5, qword_27D7BE4A8);
  (*(v1 + 104))(v4, *MEMORY[0x277D4EE48], v0);
  v7[15] = 1;
  return sub_227669760();
}

uint64_t sub_2275213F4()
{
  v0 = sub_227669910();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 464);
    v7 = *(result + 472);
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v1 + 104))(v4, *MEMORY[0x277D4E1D0], v0);
    sub_227669660();
    swift_unknownObjectRelease();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_227521540()
{
  v1 = v0;
  v2 = sub_227665350();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276652E0();
  sub_227533558(&qword_27D7BE4C0, MEMORY[0x277D515D0]);
  v7 = sub_22766BFB0();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v8 = sub_227665A60();
    sub_227533558(&qword_27D7BD250, MEMORY[0x277D51BF0]);
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D51B88], v8);
    *(swift_allocObject() + 16) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB390, &unk_22767A8A0);
    return sub_227669280();
  }

  else
  {
    v12 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
    sub_22766AD70();
    __swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766AD30();
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }
}

uint64_t *sub_2275217BC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  v2 = v0[19];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0(v0 + 48);
  __swift_destroy_boxed_opaque_existential_0(v0 + 53);
  v3 = v0[58];
  swift_unknownObjectRelease();
  v4 = v0[61];

  return v0;
}

uint64_t sub_227521844()
{
  sub_2275217BC();

  return swift_deallocClassInstance();
}

void sub_22752189C(void *a1, uint64_t a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = *(v3 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE4D8, &qword_22768B350);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v7;
  *(v11 + 40) = v6;
  v14 = qword_2813B2078;
  swift_beginAccess();
  v15 = sub_227543940(v11 + v14, v7, v6);
  if (v15)
  {
    if (v15 == 1)
    {

LABEL_4:
      v16 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF80, &qword_227679A30);
      v17 = sub_227668700();
      v18 = *(v17 - 8);
      v19 = *(v18 + 72);
      v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_227670CD0;
      (*(v18 + 16))(v21 + v20, a2, v17);
      sub_227568A58(v21, v16[1], *(v16 + 16), v16[3]);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v22 = sub_227284A6C(0);
    if (!v27)
    {
      v23 = v22;
      [v22 setResultType_];
      sub_226ED9864();
      v24 = sub_22766C9E0();
      v25 = sub_226EDAB24(v24);

      sub_226EDAB78(v25, v13);

      goto LABEL_4;
    }
  }
}

uint64_t sub_227521B48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD708, &unk_227684D70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v10 + 8))(v13, v9);
  v14 = v1[26];
  v15 = v1[27];
  __swift_project_boxed_opaque_existential_0(v1 + 23, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD720, &qword_227684D88);
  sub_226ECF5D8(sub_227521E54, 0, v14, v16, v15, v8);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_227532264;
  *(v17 + 24) = 0;
  (*(v3 + 16))(v6, v8, v2);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = (v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v18, v6, v2);
  v21 = (v20 + v19);
  *v21 = sub_2275333F0;
  v21[1] = v17;
  sub_227668700();
  sub_227669270();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_227521E54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE4D8, &qword_22768B350);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  v14 = sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  v15 = MEMORY[0x22AA99A00](v14);
  sub_227545070(v11, a2);
  objc_autoreleasePoolPop(v15);
  swift_setDeallocating();

  v16 = *(v11 + 40);

  v17 = qword_2813B2078;
  v18 = sub_22766A100();
  (*(*(v18 - 8) + 8))(v11 + v17, v18);
  v19 = *(*v11 + 48);
  v20 = *(*v11 + 52);
  return swift_deallocClassInstance();
}

void sub_227521FDC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v55 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE4D0, &unk_22768B340);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v51 - v9;
  v62 = sub_227667670();
  v60 = *(v62 - 8);
  v11 = *(v60 + 64);
  v12 = MEMORY[0x28223BE20](v62);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = &v51 - v13;
  v14 = sub_227665350();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22766B390();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v53 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v51 - v24;
  sub_22766A670();
  sub_22766B370();
  v52 = *(v20 + 8);
  v52(v25, v19);
  sub_2276652E0();
  LOBYTE(v25) = MEMORY[0x22AA91650](a1, v18);
  (*(v15 + 8))(v18, v14);
  if (v25)
  {
    v26 = v61;
    sub_227667640();
    v27 = v60;
    v28 = v62;
    if ((*(v60 + 48))(v10, 1, v62) == 1)
    {
      sub_226E97D1C(v10, &qword_27D7BE4D0, &unk_22768B340);
      v29 = __swift_project_boxed_opaque_existential_0((v26 + 344), *(v26 + 368));
      v30 = *(*v29 + 1000);
      MEMORY[0x28223BE20](v29);
      *(&v51 - 2) = v31;
      *(&v51 - 8) = 0;
      os_unfair_lock_lock((v30 + 20));
      sub_2275335D0((v30 + 16), v63);
      os_unfair_lock_unlock((v30 + 20));
    }

    else
    {
      v39 = *(v27 + 32);
      v39(v59, v10, v28);
      v40 = v53;
      sub_22766A670();
      v41 = sub_22766B380();
      v42 = sub_22766C8B0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = v28;
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_226E8E000, v41, v42, "Using fake remote browsing environment!", v44, 2u);
        v45 = v44;
        v28 = v43;
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      v52(v40, v19);
      v47 = v59;
      v46 = v60;
      v48 = v54;
      (*(v60 + 16))(v54, v59, v28);
      v49 = (*(v46 + 80) + 16) & ~*(v46 + 80);
      v50 = swift_allocObject();
      v39((v50 + v49), v48, v28);
      sub_227669280();
      (*(v46 + 8))(v47, v28);
    }
  }

  else
  {
    v32 = v56;
    sub_227521540();
    v34 = v57;
    v33 = v58;
    v35 = v55;
    (*(v57 + 16))(v55, v32, v58);
    v36 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v37 = swift_allocObject();
    (*(v34 + 32))(v37 + v36, v35, v33);
    v38 = (v37 + ((v4 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v38 = sub_227522658;
    v38[1] = 0;
    sub_227669270();
    (*(v34 + 8))(v32, v33);
  }
}

uint64_t sub_227522688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v76 = a1;
  v92 = a2;
  v94 = sub_227665350();
  v5 = *(v94 - 8);
  v78 = *(v5 + 64);
  MEMORY[0x28223BE20](v94);
  v93 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB3C0, &unk_22767A8E0);
  v81 = *(v7 - 8);
  v82 = v7;
  v79 = *(v81 + 64);
  v8 = MEMORY[0x28223BE20](v7);
  v77 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v68 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6F8, &qword_227684D60);
  v86 = *(v12 - 8);
  v87 = v12;
  v84 = *(v86 + 64);
  v13 = MEMORY[0x28223BE20](v12);
  v83 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v90 = *(v16 - 8);
  v91 = v16;
  v89 = *(v90 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v88 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v85 = &v68 - v19;
  v20 = sub_22766B390();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v21 + 8))(v24, v20);
  v25 = *(v3 + 176);
  v70 = sub_2276693A0();
  v69 = v26;
  v27 = *(v3 + 136);
  v28 = *(v3 + 144);
  v29 = v3;
  v71 = v3;
  __swift_project_boxed_opaque_existential_0((v3 + 112), v27);
  v30 = v11;
  v72 = v11;
  sub_22766ABB0();
  v75 = *(v5 + 16);
  v31 = v93;
  v32 = a1;
  v33 = v94;
  v75(v93, v32, v94);
  v34 = *(v5 + 80);
  v78 += (v34 + 24) & ~v34;
  v74 = (v34 + 24) & ~v34;
  v35 = (v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v29;
  v73 = *(v5 + 32);
  v73(v36 + ((v34 + 24) & ~v34), v31, v33);
  v37 = (v36 + v35);
  v38 = v69;
  *v37 = v70;
  v37[1] = v38;
  v40 = v81;
  v39 = v82;
  v41 = v77;
  (*(v81 + 16))(v77, v30, v82);
  v42 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v43 = (v79 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (*(v40 + 32))(v44 + v42, v41, v39);
  v45 = (v44 + v43);
  *v45 = sub_227532E74;
  v45[1] = v36;
  sub_227668BB0();
  v46 = v71;

  v47 = v80;
  sub_227669270();
  (*(v40 + 8))(v72, v39);
  v49 = v93;
  v48 = v94;
  v75(v93, v76, v94);
  v50 = swift_allocObject();
  *(v50 + 16) = v46;
  v73(v50 + v74, v49, v48);
  v52 = v86;
  v51 = v87;
  v53 = v83;
  (*(v86 + 16))(v83, v47, v87);
  v54 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v55 = (v84 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  (*(v52 + 32))(v56 + v54, v53, v51);
  v57 = (v56 + v55);
  *v57 = sub_22753301C;
  v57[1] = v50;
  sub_227667670();

  v58 = v85;
  sub_227669270();
  (*(v52 + 8))(v47, v51);
  v59 = v90;
  v60 = v91;
  v61 = v88;
  (*(v90 + 16))(v88, v58, v91);
  v62 = v59;
  v63 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v64 = (v89 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v61, v60);
  v66 = (v65 + v64);
  *v66 = sub_227523588;
  v66[1] = 0;
  sub_227669270();
  return (*(v62 + 8))(v58, v60);
}

uint64_t sub_227522E40@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3D0, &unk_22767A8F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v22 - v4;
  v6 = sub_227668BB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v26 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v27 = v22 - v10;
  sub_2276693D0();
  v30 = sub_227667BB0();
  sub_227140894();
  sub_227663B80();
  v25 = v31;
  v23 = v32;
  v22[1] = sub_22766AAD0();
  v24 = v11;
  if (sub_2276652F0() == 4 || (v12 = sub_227667BC0(), v12 != sub_227667BC0()))
  {
    v22[0] = sub_22766ACC0();
  }

  else
  {
    v13 = sub_22766ACD0();
    v14 = sub_22766ACC0();
    if (v14 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    v22[0] = v15;
  }

  sub_22766ACE0();

  sub_2276639C0();
  v16 = sub_2276639D0();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  sub_227665310();
  sub_22766C0A0();
  sub_22766C500();
  v17 = v27;
  sub_227668B80();
  v18 = v26;
  (*(v7 + 16))(v26, v17, v6);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  (*(v7 + 32))(v20 + v19, v18, v6);
  sub_227669280();
  return (*(v7 + 8))(v17, v6);
}

uint64_t sub_227523174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a3;
  v4 = sub_227668BB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v22);
  v10 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  sub_227521540();
  (*(v5 + 16))(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v15 = v22;
  (*(v7 + 16))(v10, v12, v22);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v16, v10, v15);
  v19 = (v18 + v17);
  *v19 = sub_2275330F0;
  v19[1] = v14;
  sub_227667670();
  sub_227669270();
  return (*(v7 + 8))(v12, v15);
}

uint64_t sub_22752341C(uint64_t *a1)
{
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  swift_getObjectType();
  (*(v3 + 104))(v6, *MEMORY[0x277D4EDE0], v2);
  sub_227668BB0();
  sub_227667670();
  sub_227669610();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_227523588@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  if (MEMORY[0x22AA953D0](a1) == 4)
  {
    *(swift_allocObject() + 16) = a1;
    v10 = a1;
    sub_227667670();

    return sub_227669280();
  }

  else
  {
    sub_22766A670();
    v12 = sub_22766B380();
    v13 = sub_22766C890();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v21 = a2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446210;
      v17 = sub_2276690C0();
      v19 = sub_226E97AE8(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_226E8E000, v12, v13, "requestEnvironmentWithConfirmation was rejected: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA9A450](v16, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    sub_227666740();
    sub_227533558(&qword_28139B638, MEMORY[0x277D52688]);
    v20 = swift_allocError();
    sub_227666730();
    *(swift_allocObject() + 16) = v20;
    sub_227667670();
    return sub_227669280();
  }
}

uint64_t sub_227523880(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v36 = a1;
  v35 = sub_227665350();
  v2 = *(v35 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v37);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v33 = &v32 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v14 + 8))(v17, v13);
  v18 = v34;
  sub_227521540();
  v19 = v35;
  (*(v2 + 16))(&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v35);
  v20 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v21 = swift_allocObject();
  (*(v2 + 32))(v21 + v20, &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v22 = v32;
  v23 = v37;
  (*(v4 + 16))(v32, v8, v37);
  v24 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v25 = swift_allocObject();
  (*(v4 + 32))(v25 + v24, v22, v23);
  v26 = (v25 + ((v5 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_2275324EC;
  v26[1] = v21;
  v27 = v33;
  sub_227669270();
  (*(v4 + 8))(v8, v23);
  v28 = v38;
  v29 = sub_227669290();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  v29(sub_226E9F7B0, v30);

  return (*(v39 + 8))(v27, v28);
}

uint64_t sub_227523D14(uint64_t *a1)
{
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  swift_getObjectType();
  (*(v3 + 104))(v6, *MEMORY[0x277D4E340], v2);
  sub_227665350();
  sub_227669620();
  return (*(v3 + 8))(v6, v2);
}

void sub_227523E88(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22766A670();
  sub_22766B370();
  (*(v5 + 8))(v8, v4);
  v9 = __swift_project_boxed_opaque_existential_0((v2 + 344), *(v2 + 368));
  v10 = *(*v9 + 1000);
  v12 = *v9;
  v13 = 0;
  os_unfair_lock_lock((v10 + 20));
  sub_2275335D0((v10 + 16), a1);
  os_unfair_lock_unlock((v10 + 20));
}

uint64_t sub_227523FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6C8, &unk_227684D40);
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v32);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v30 = &v30 - v8;
  v9 = sub_227669910();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v3[58];
  v20 = v3[59];
  swift_getObjectType();
  (*(v10 + 104))(v13, *MEMORY[0x277D4E1D8], v9);
  sub_227668BB0();
  sub_227669650();
  (*(v10 + 8))(v13, v9);
  __swift_project_boxed_opaque_existential_0(v3 + 38, v3[41]);
  v21 = off_283ACA1E0[0];
  type metadata accessor for RemoteBrowsingGuestPairingVerifier();
  v22 = v30;
  v21(a1);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_227532750;
  *(v23 + 24) = v3;
  v25 = v31;
  v24 = v32;
  (*(v5 + 16))(v31, v22, v32);
  v26 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v27 = swift_allocObject();
  (*(v5 + 32))(v27 + v26, v25, v24);
  v28 = (v27 + ((v6 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_22753276C;
  v28[1] = v23;

  sub_227669270();
  return (*(v5 + 8))(v22, v24);
}

uint64_t sub_2275243E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_227669910();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 464);
  v9 = *(a2 + 472);
  swift_getObjectType();
  (*(v4 + 104))(v7, *MEMORY[0x277D4E1B8], v3);
  sub_227668720();
  sub_227669650();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_227524530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v36 = a1;
  v37 = a2;
  v41 = a3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v40);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v35 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v39);
  v12 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = sub_22766B390();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v16 + 8))(v19, v15);
  v20 = *__swift_project_boxed_opaque_existential_0(v4 + 33, v4[36]);
  sub_22713E2E0(v36, v37);
  v21 = __swift_project_boxed_opaque_existential_0(v4 + 43, v4[46]);
  v22 = *(*v21 + 1000);
  v43 = *v21;
  v44 = 0;
  os_unfair_lock_lock((v22 + 20));
  v23 = v42;
  sub_2273B8DFC((v22 + 16), v42);
  os_unfair_lock_unlock((v22 + 20));
  v24 = v38;
  v25 = v23;
  v26 = v40;
  (*(v5 + 16))(v38, v25, v40);
  v27 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v28 = swift_allocObject();
  (*(v5 + 32))(v28 + v27, v24, v26);
  v29 = v39;
  (*(v9 + 16))(v12, v14, v39);
  v30 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v31 = (v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v9 + 32))(v32 + v30, v12, v29);
  v33 = (v32 + v31);
  *v33 = sub_22753269C;
  v33[1] = v28;
  sub_227667670();
  sub_227669270();
  (*(v5 + 8))(v42, v26);
  return (*(v9 + 8))(v14, v29);
}

uint64_t sub_227524954@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = *v1;
  v24 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  sub_226E91B50((v2 + 7), v25);
  sub_2276693D0();
  sub_227668B60();
  sub_226E97D1C(v25, &qword_27D7BE4C8, &unk_22768C450);
  v15 = swift_allocObject();
  v16 = v23;
  *(v15 + 16) = v2;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22753279C;
  *(v17 + 24) = v15;
  (*(v4 + 16))(v7, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v7, v3);
  v20 = (v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_226F09740;
  v20[1] = v17;
  sub_227667670();

  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_227524C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227667670();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21[-v14];
  if (qword_27D7B7F38 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_27D7BE4A8);
  (*(v12 + 16))(v15, v16, v11);
  sub_227669730();
  (*(v12 + 8))(v15, v11);
  if (v21[15] == 1)
  {
    v17 = *__swift_project_boxed_opaque_existential_0((a1 + 224), *(a1 + 248));
    return sub_2273B68D8(a2);
  }

  else
  {
    sub_227667660();
    (*(v5 + 16))(v8, v10, v4);
    v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v20 = swift_allocObject();
    (*(v5 + 32))(v20 + v19, v8, v4);
    sub_227669280();
    return (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_227524F54()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v10 + 8))(v13, v9);
  v14 = *__swift_project_boxed_opaque_existential_0((v1 + 384), *(v1 + 408));
  v15 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v14 + v15, &v25);
  if (v26)
  {
    sub_226E92AB8(&v25, v24);
    sub_226E91B50(v24, v23);
    v16 = swift_allocObject();
    sub_226E92AB8(v23, v16 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    sub_226F099DC();
    v17 = swift_allocError();
    *v18 = 0;
    *(swift_allocObject() + 16) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  (*(v3 + 16))(v6, v8, v2);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  (*(v3 + 32))(v20 + v19, v6, v2);
  v21 = (v20 + ((v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_22752531C;
  v21[1] = 0;
  sub_227665AD0();
  sub_227669270();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_22752531C(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  (*(v8 + 8))(v6, v7, v8);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_227525438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAC0, &qword_22767BB58);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532DA8;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_227525874(uint64_t *a1)
{
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v7 = a1[1];
  swift_getObjectType();
  (*(v3 + 104))(v6, *MEMORY[0x277D4ECC8], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAC0, &qword_22767BB58);
  sub_227668A40();
  v10[14] = v10[15];
  sub_227669620();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2275259DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_227669040();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4EDE8], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAC8, &qword_22767BB60);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_227525BD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_2276668F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4E9B8], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAD0, &qword_22767BB68);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_227525DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAE8, &qword_22767BB80);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532D30;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_227526200@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_227666F20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4EA00], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAE8, &qword_22767BB80);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2275263F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAF0, &qword_22767BB88);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532D08;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_227526830@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_227667170();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4EA08], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAF0, &qword_22767BB88);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_227526A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAD8, &qword_22767BB70);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532D80;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_227526E60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_227666C80();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4E9C0], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAD8, &qword_22767BB70);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_227527054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAE0, &qword_22767BB78);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532D58;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_227527494@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_2276666A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4E938], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAE0, &qword_22767BB78);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_227527688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAF8, &unk_22767BB90);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532CE0;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_227527AC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_2276675F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4EA50], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAF8, &unk_22767BB90);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_227527CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAA0, &qword_22767BB38);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227533330;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_2275280F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_227666710();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4E8E0], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAA0, &qword_22767BB38);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2275282EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB00, &unk_22768B330);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532C4C;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_227528728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB00, &unk_22768B330);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532B08;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_227528B64(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_227669A70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  swift_getObjectType();
  (*(v6 + 104))(v9, *a3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB00, &unk_22768B330);
  sub_227668A40();
  v13[0] = v13[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB38, &qword_22768C990);
  sub_227532B14();
  sub_227532B98();
  sub_227669620();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_227528CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB08, &unk_22767BBA0);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532AE0;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_227529130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_227669480();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4E3E8], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB08, &unk_22767BBA0);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_227529324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB08, &unk_22767BBA0);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532AB8;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_227529760@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_227669480();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4E3D0], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB08, &unk_22767BBA0);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_227529954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB10, &unk_22768B320);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532A90;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_227529D90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_227664E20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4E668], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB10, &unk_22768B320);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_227529F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB18, &qword_22767BBB0);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532A68;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_22752A3C0(uint64_t *a1)
{
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  swift_getObjectType();
  (*(v3 + 104))(v6, *MEMORY[0x277D4E6C8], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB18, &qword_22767BBB0);
  sub_227668A40();
  v10[0] = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8568, &unk_227685490);
  sub_227453808();
  sub_22745388C();
  sub_227669620();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22752A550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB20, &qword_22767BBB8);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532A40;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_22752A98C(uint64_t *a1)
{
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  swift_getObjectType();
  (*(v3 + 104))(v6, *MEMORY[0x277D4E948], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB20, &qword_22767BBB8);
  sub_227668A40();
  v10[0] = v10[2];
  v10[1] = v10[3];
  sub_227669620();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22752AB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB28, &qword_22767BBC0);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532A18;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_22752AF40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_227664530();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4E5F0], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB28, &qword_22767BBC0);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22752B134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB30, &qword_22767BBC8);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_2275329F0;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_22752B570@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_2276650A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4E6D8], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB30, &qword_22767BBC8);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22752B764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB38, &unk_22767BBD0);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_22753294C;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_22752BBA0(uint64_t *a1)
{
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  swift_getObjectType();
  (*(v3 + 104))(v6, *MEMORY[0x277D4E7B0], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB38, &unk_22767BBD0);
  sub_227668A40();
  v10[0] = v10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE88, &qword_227681D50);
  sub_227532974();
  sub_2273601B4();
  sub_227669620();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22752BD30(uint64_t *a1)
{
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  swift_getObjectType();
  (*(v3 + 104))(v6, *MEMORY[0x277D4E9B0], v2);
  sub_227669640();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22752BE50@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_227669A70();
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = *(v49 + 64);
  MEMORY[0x28223BE20](v1);
  v48 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v52);
  v7 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v47 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  sub_22766A670();
  sub_22766B370();
  v21 = v20;
  v22 = v53;
  v51 = *(v11 + 8);
  v51(v21, v10);
  v23 = *(v22 + 176);
  if (v23 >= 2)
  {
    if (v23 == 2)
    {
      v31 = v22;
      sub_22766A670();
      v32 = sub_22766B380();
      v33 = sub_22766C8B0();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_226E8E000, v32, v33, "Forwarding plan creation prompt to paired phone", v34, 2u);
        MEMORY[0x22AA9A450](v34, -1, -1);
      }

      v51(v18, v10);
      v36 = *(v31 + 152);
      v35 = *(v31 + 160);
      swift_getObjectType();
      v38 = v48;
      v37 = v49;
      v39 = v50;
      (*(v49 + 104))(v48, *MEMORY[0x277D4E9B0], v50);
      sub_227669640();
      return (*(v37 + 8))(v38, v39);
    }

    else
    {
      sub_22766A670();
      v40 = sub_22766B380();
      v41 = sub_22766C890();
      if (os_log_type_enabled(v40, v41))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_226E8E000, v40, v41, "Platform TV does not support plan creation prompt", v43, 2u);
        MEMORY[0x22AA9A450](v43, -1, -1);
      }

      v51(v15, v10);
      v44 = sub_227665A60();
      sub_227533558(&qword_27D7BD250, MEMORY[0x277D51BF0]);
      v45 = swift_allocError();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D51B98], v44);
      *(swift_allocObject() + 16) = v45;
      return sub_227669280();
    }
  }

  else
  {
    v24 = swift_allocObject();
    *(v24 + 16) = "SeymourServices/RemoteBrowsingSystem.swift";
    *(v24 + 24) = 42;
    *(v24 + 32) = 2;
    *(v24 + 40) = 409;
    *(v24 + 48) = &unk_22768B2D0;
    *(v24 + 56) = v22;

    sub_227669270();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_22752C748;
    *(v25 + 24) = 0;
    v26 = v52;
    (*(v4 + 16))(v7, v9, v52);
    v27 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v28 = swift_allocObject();
    (*(v4 + 32))(v28 + v27, v7, v26);
    v29 = (v28 + ((v5 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v29 = sub_226F5B0C0;
    v29[1] = v25;
    sub_227669270();
    return (*(v4 + 8))(v9, v26);
  }
}

uint64_t sub_22752C4DC()
{
  v1 = v0[2];
  v3 = v1[56];
  v2 = v1[57];
  __swift_project_boxed_opaque_existential_0(v1 + 53, v3);
  v4 = sub_22701AA24();
  v0[3] = v4;
  v5 = *(MEMORY[0x277D4F718] + 4);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_22752C5A8;

  return MEMORY[0x2821AF658](v4, v3, v2);
}

uint64_t sub_22752C5A8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22752C6E4, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22752C6E4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1();
}

uint64_t sub_22752C768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v36 = a2;
  v35 = sub_2276690F0();
  v2 = *(v35 - 8);
  v34 = *(v2 + 64);
  MEMORY[0x28223BE20](v35);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_227665350();
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v30);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v31);
  v11 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v33;
  sub_2276690E0();
  sub_227521540();
  (*(v4 + 8))(v7, v30);
  v20 = v32;
  v21 = v35;
  (*(v2 + 16))(v32, v19, v35);
  v22 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v23 = swift_allocObject();
  (*(v2 + 32))(v23 + v22, v20, v21);
  v24 = v31;
  (*(v8 + 16))(v11, v13, v31);
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = (v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v8 + 32))(v27 + v25, v11, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532E20;
  v28[1] = v23;
  sub_227669270();
  return (*(v8 + 8))(v13, v24);
}

uint64_t sub_22752CB94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_227666D60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4ED28], v8);
  sub_2276690D0();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22752CD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v66 = a2;
  v2 = sub_227669A70();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227666D60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v61 = &v55 - v11;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v55 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v55 - v21;
  sub_22766A670();
  sub_22766B370();
  v23 = v22;
  v24 = v64;
  v59 = *(v13 + 8);
  v59(v23, v12);
  v25 = *(v24 + 176);
  if (v25 >= 2)
  {
    if (v25 == 2)
    {
      v39 = v24;
      sub_22766A670();
      v40 = sub_22766B380();
      v41 = sub_22766C8B0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_226E8E000, v40, v41, "Forwarding personalized plan creation prompt to paired phone", v42, 2u);
        MEMORY[0x22AA9A450](v42, -1, -1);
      }

      v59(v20, v12);
      v44 = *(v39 + 152);
      v43 = *(v39 + 160);
      swift_getObjectType();
      v46 = v56;
      v45 = v57;
      v47 = v58;
      (*(v57 + 104))(v56, *MEMORY[0x277D4ED28], v58);
      sub_227669620();
      return (*(v45 + 8))(v46, v47);
    }

    else
    {
      sub_22766A670();
      v48 = sub_22766B380();
      v49 = sub_22766C890();
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_226E8E000, v48, v49, "Platform TV does not support personalized plan creation prompt", v51, 2u);
        MEMORY[0x22AA9A450](v51, -1, -1);
      }

      v59(v17, v12);
      v52 = sub_227665A60();
      sub_227533558(&qword_27D7BD250, MEMORY[0x277D51BF0]);
      v53 = swift_allocError();
      (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D51B98], v52);
      *(swift_allocObject() + 16) = v53;
      return sub_227669280();
    }
  }

  else
  {
    (*(v6 + 16))(&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v65, v5);
    v26 = v24;
    v27 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    (*(v6 + 32))(v28 + v27, &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v29 = swift_allocObject();
    *(v29 + 16) = "SeymourServices/RemoteBrowsingSystem.swift";
    *(v29 + 24) = 42;
    *(v29 + 32) = 2;
    *(v29 + 40) = 435;
    *(v29 + 48) = &unk_22768B2B8;
    *(v29 + 56) = v28;

    v30 = v61;
    sub_227669270();
    v31 = swift_allocObject();
    *(v31 + 16) = sub_22752D784;
    *(v31 + 24) = 0;
    v33 = v62;
    v32 = v63;
    v34 = v60;
    (*(v62 + 16))(v60, v30, v63);
    v35 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v36 = swift_allocObject();
    (*(v33 + 32))(v36 + v35, v34, v32);
    v37 = (v36 + ((v9 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v37 = sub_226F5AAF8;
    v37[1] = v31;
    sub_227669270();
    return (*(v33 + 8))(v30, v32);
  }
}

uint64_t sub_22752D4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_22752D514, 0, 0);
}

uint64_t sub_22752D514()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[56];
  v4 = v1[57];
  __swift_project_boxed_opaque_existential_0(v1 + 53, v3);
  v5 = sub_22701ACB8();
  v0[4] = v5;
  v6 = *(MEMORY[0x277D4F718] + 4);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_22752D5E4;

  return MEMORY[0x2821AF658](v5, v3, v4);
}

uint64_t sub_22752D5E4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22752D720, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22752D720()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1();
}

id sub_22752D7A4(void *a1, const char *a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  v9 = a1;
  v10 = sub_22766B380();
  v11 = sub_22766C8B0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_226E8E000, v10, v11, a2, v12, 0xCu);
    sub_226E97D1C(v13, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  swift_willThrow();
  return a1;
}

uint64_t sub_22752D968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAA8, &qword_22767BB40);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532E4C;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_22752DDA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_227666650();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4E930], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAA8, &qword_22767BB40);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22752DFCC(uint64_t *a1, unsigned int *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v16[1] = a5;
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *a2, v8);
  a3(0);
  sub_227669630();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22752E118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAB0, &qword_22767BB48);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532DF8;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_22752E554@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_227668A70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4E808], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAB0, &qword_22767BB48);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22752E748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAB8, &qword_22767BB50);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532DD0;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_22752EB84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_2276627D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4E3D8], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBAB8, &qword_22767BB50);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22752ED78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB40, &unk_22768B310);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532924;
  v28[1] = v22;
  sub_2276638D0();
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_22752F1B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_227663090();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4E4D0], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB40, &unk_22768B310);
  sub_227668A40();
  sub_2276638D0();
  sub_227669610();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22752F3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a1;
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB48, &unk_22767BBE0);
  v36 = *(v4 - 8);
  v43 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v36 - v5;
  v6 = sub_227665350();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v40);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = sub_22766B390();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v16 + 8))(v19, v15);
  v20 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v3[5]);
  sub_22766AD70();
  __swift_project_boxed_opaque_existential_0(v45, v45[3]);
  v21 = v42;
  sub_227668A30();
  sub_22766AD30();
  (*(v38 + 8))(v9, v39);
  v22 = v36;
  v23 = v41;
  v24 = v21;
  v25 = v4;
  (*(v36 + 16))(v41, v24, v4);
  v26 = v22;
  v27 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v28 = swift_allocObject();
  (*(v26 + 32))(v28 + v27, v23, v25);
  v29 = v37;
  v30 = v14;
  v31 = v40;
  (*(v10 + 16))(v37, v14, v40);
  v32 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v33 = swift_allocObject();
  (*(v10 + 32))(v33 + v32, v29, v31);
  v34 = (v33 + ((v11 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v34 = sub_2275328D4;
  v34[1] = v28;
  sub_2276638D0();
  sub_227669270();
  (*(v10 + 8))(v30, v31);
  return __swift_destroy_boxed_opaque_existential_0(v45);
}

uint64_t sub_22752F860@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_2276638D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4E4D8], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB48, &unk_22767BBE0);
  sub_227668A40();
  sub_227669610();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22752FA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB50, &unk_22768B300);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_2275328AC;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_22752FE9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_227667440();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4EB18], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB50, &unk_22768B300);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_227530090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB58, &unk_22767BBF0);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532884;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_2275304CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_227667780();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4EA90], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB58, &unk_22767BBF0);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2275306C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB60, &unk_22768B2F0);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_22753285C;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_227530AFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_2276682A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4EBA0], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB60, &unk_22768B2F0);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_227530CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB68, &qword_22767BC00);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_227532834;
  v28[1] = v22;
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_227531128@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = sub_227668A00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  (*(v9 + 104))(v12, *MEMORY[0x277D4EC88], v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB68, &qword_22767BC00);
  sub_227668A40();
  sub_227669620();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22753131C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB70, &qword_22767BC08);
  v3 = *(v2 - 8);
  v35 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v4;
  v31 = sub_227665350();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v34;
  sub_227668A30();
  sub_227521540();
  (*(v5 + 8))(v8, v31);
  v20 = v33;
  (*(v3 + 16))(v33, v19, v2);
  v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v22 = swift_allocObject();
  (*(v3 + 32))(v22 + v21, v20, v2);
  v23 = v30;
  v24 = v32;
  (*(v9 + 16))(v30, v13, v32);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_2275327E4;
  v28[1] = v22;
  sub_227664460();
  sub_227669270();
  return (*(v9 + 8))(v13, v24);
}

uint64_t sub_227531758@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v11[1] = a2;
  v3 = sub_227669A70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  swift_getObjectType();
  (*(v4 + 104))(v7, *MEMORY[0x277D4E790], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB70, &qword_22767BC08);
  sub_227668A40();
  v11[2] = v11[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2D0, &unk_22768B2E0);
  sub_227664460();
  sub_227128FA8();
  sub_22712902C();
  sub_227669610();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_227531908(uint64_t a1)
{
  v3 = sub_227665350();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  return sub_227669280();
}

uint64_t sub_227531A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[0] = a1;
  v20[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  sub_22766A670();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  sub_227521540();
  (*(v4 + 16))(v7, v9, v3);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v16, v7, v3);
  v18 = (v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_227523E58;
  v18[1] = 0;
  sub_227665AD0();
  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_227531CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[0] = a1;
  v20[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  sub_22766A670();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  sub_227521540();
  (*(v4 + 16))(v7, v9, v3);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v16, v7, v3);
  v18 = (v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_22752BD30;
  v18[1] = 0;
  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_227531F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[0] = a1;
  v20[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  sub_22766A670();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  sub_227521540();
  (*(v4 + 16))(v7, v9, v3);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v16, v7, v3);
  v18 = (v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_22752DF9C;
  v18[1] = 0;
  sub_227666E80();
  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_227532264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD720, &qword_227684D88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  sub_2275334E8(a1, v13 - v6);
  v8 = sub_227668700();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  sub_226E97D1C(v7, &qword_27D7BD720, &qword_227684D88);
  v10 = sub_227663B90();
  sub_227533558(&qword_28139BC48, MEMORY[0x277D50320]);
  swift_allocError();
  (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D50318], v10);
  return swift_willThrow();
}

uint64_t sub_227532518(uint64_t a1)
{
  v4 = *(sub_227666D60() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22752D4F4(a1, v6, v1 + v5);
}

uint64_t sub_227532600(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_22752C4BC(a1, v1);
}

uint64_t sub_22753269C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_22742DF78(v4, a1);
}

unint64_t sub_227532974()
{
  result = qword_2813990A8;
  if (!qword_2813990A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCE88, &qword_227681D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813990A8);
  }

  return result;
}

unint64_t sub_227532B14()
{
  result = qword_281398C40;
  if (!qword_281398C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCB38, &qword_22768C990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C40);
  }

  return result;
}

unint64_t sub_227532B98()
{
  result = qword_281398C38;
  if (!qword_281398C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCB38, &qword_22768C990);
    sub_227533558(&qword_28139B288, MEMORY[0x277D53BA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C38);
  }

  return result;
}

uint64_t sub_227532E74@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227665350() - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 24) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_227522E40(v6, a1);
}

uint64_t objectdestroy_61Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_22753301C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227665350() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_227523174(a1, v7, a2);
}

uint64_t sub_22753311C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t objectdestroy_64Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_227533358(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_227533420(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2275334E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD720, &qword_227684D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227533558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227533748(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v13 = MEMORY[0x277D84F90];
    a2(0, v3, 0);
    v4 = v13;
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v13 + 16);
      v8 = *(v13 + 24);

      if (v9 >= v8 >> 1)
      {
        a2(v8 > 1, v9 + 1, 1);
      }

      *(v13 + 16) = v9 + 1;
      v10 = v13 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_227533858(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = objc_opt_self();

      v8 = sub_22766BFD0();
      v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

      type metadata accessor for ManagedCatalogTipCategoryIdentifier();
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = sub_22766BFD0();
      [v11 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v21;
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v18 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51000], v18);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073BEC(v2);

    v14 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v15 = sub_22766C2B0();

    v16 = [v14 initWithArray_];

    return v16;
  }
}

uint64_t sub_227533AEC(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = objc_opt_self();

      v8 = sub_22766BFD0();
      v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

      type metadata accessor for ManagedContributorIdentifier();
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = sub_22766BFD0();
      [v11 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v21;
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v18 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51000], v18);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073CAC(v2);

    v14 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v15 = sub_22766C2B0();

    v16 = [v14 initWithArray_];

    return v16;
  }
}

uint64_t sub_227533D80(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = objc_opt_self();

      v8 = sub_22766BFD0();
      v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

      type metadata accessor for ManagedEquipmentIdentifier();
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = sub_22766BFD0();
      [v11 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v21;
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v18 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51000], v18);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073C94(v2);

    v14 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v15 = sub_22766C2B0();

    v16 = [v14 initWithArray_];

    return v16;
  }
}

uint64_t sub_227534014(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = objc_opt_self();

      v8 = sub_22766BFD0();
      v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

      type metadata accessor for ManagedModalityIdentifier();
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = sub_22766BFD0();
      [v11 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v21;
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v18 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51000], v18);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073C7C(v2);

    v14 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v15 = sub_22766C2B0();

    v16 = [v14 initWithArray_];

    return v16;
  }
}

uint64_t sub_2275342A8(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = objc_opt_self();

      v8 = sub_22766BFD0();
      v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

      type metadata accessor for ManagedMusicGenreIdentifier();
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = sub_22766BFD0();
      [v11 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v21;
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v18 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51000], v18);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073C64(v2);

    v14 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v15 = sub_22766C2B0();

    v16 = [v14 initWithArray_];

    return v16;
  }
}

uint64_t sub_22753453C(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = objc_opt_self();

      v8 = sub_22766BFD0();
      v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

      type metadata accessor for ManagedThemeIdentifier();
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = sub_22766BFD0();
      [v11 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v21;
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v18 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51000], v18);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073C4C(v2);

    v14 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v15 = sub_22766C2B0();

    v16 = [v14 initWithArray_];

    return v16;
  }
}

uint64_t sub_2275347D0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = objc_opt_self();

      v8 = sub_22766BFD0();
      v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

      type metadata accessor for ManagedTrainerIdentifier();
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = sub_22766BFD0();
      [v11 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v21;
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v18 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51000], v18);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073C34(v2);

    v14 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v15 = sub_22766C2B0();

    v16 = [v14 initWithArray_];

    return v16;
  }
}

uint64_t sub_227534A64(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = objc_opt_self();

      v8 = sub_22766BFD0();
      v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

      type metadata accessor for ManagedWorkoutIdentifier();
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = sub_22766BFD0();
      [v11 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v21;
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v18 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51000], v18);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073C1C(v2);

    v14 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v15 = sub_22766C2B0();

    v16 = [v14 initWithArray_];

    return v16;
  }
}

uint64_t sub_227534CF8(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = objc_opt_self();

      v8 = sub_22766BFD0();
      v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

      type metadata accessor for ManagedBodyFocusIdentifier();
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = sub_22766BFD0();
      [v11 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v21;
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v18 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51000], v18);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073CDC(v2);

    v14 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v15 = sub_22766C2B0();

    v16 = [v14 initWithArray_];

    return v16;
  }
}

uint64_t sub_227534F8C(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = objc_opt_self();

      v8 = sub_22766BFD0();
      v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

      type metadata accessor for ManagedSkillLevelIdentifier();
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = sub_22766BFD0();
      [v11 setIdentifier_];

      MEMORY[0x22AA985C0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v21;
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v18 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51000], v18);
    swift_willThrow();
  }

  else
  {
LABEL_7:
    sub_227073CC4(v2);

    v14 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v15 = sub_22766C2B0();

    v16 = [v14 initWithArray_];

    return v16;
  }
}

uint64_t sub_227535220(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      v7 = objc_opt_self();
      v8 = sub_22766BFD0();
      v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:a1];

      type metadata accessor for ManagedHealthKitActivityType();
      v10 = swift_dynamicCastClass();
      if (!v10)
      {
        break;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v5;
      }

      MEMORY[0x22AA985C0]([v10 setValue_]);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v2 = v20;
      if (!--v3)
      {
        goto LABEL_10;
      }
    }

    v17 = sub_227664DD0();
    sub_2275361A4(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51000], v17);
    swift_willThrow();
  }

  else
  {
LABEL_10:
    sub_227073CF4(v2);

    v13 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v14 = sub_22766C2B0();

    v15 = [v13 initWithArray_];

    return v15;
  }
}

void sub_227535488(void *a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_227662190();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2276669C0();
  v9 = v8;
  v44 = v7;
  v45 = v8;
  v11 = v10 & 1;
  v46 = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
  sub_227663AD0();
  v12 = sub_22766BFD0();
  v13 = v9;
  v14 = a1;
  sub_226EB2DFC(v7, v13, v11);

  [a1 setContentRating_];

  v15 = sub_227666A30();
  v16 = v47;
  v17 = sub_227533748(v15, sub_226F1EE70);
  if (!v16)
  {
    v18 = v42;
    v19 = v43;
    v20 = sub_227533AEC(v43, v17);

    [v14 setContributorIdentifierss_];

    sub_2276669A0();
    sub_2276620E0();
    (*(v18 + 8))(v6, v3);
    v21 = sub_22766BFD0();

    [v14 setDateReleased_];

    v22 = sub_227666A10();
    v23 = sub_227533748(v22, sub_226F1EE50);
    v24 = sub_227533D80(v19, v23);

    [v14 setEquipmentIdentifierss_];

    sub_227666990();
    v25 = sub_22766BFD0();

    [v14 setIdentifier_];

    v26 = sub_227666A00();
    v27 = sub_227533748(v26, sub_226F1EE30);
    v28 = sub_227534014(v19, v27);

    [v14 setModalityIdentifierss_];

    v29 = sub_227666A20();
    v30 = sub_227533748(v29, sub_226F1EE10);
    v31 = sub_2275342A8(v19, v30);

    [v14 setMusicGenreIdentifierss_];

    v32 = sub_2276669D0();
    v33 = sub_227533748(v32, sub_226F1EDF0);
    v34 = sub_22753453C(v19, v33);

    [v14 setThemeIdentifierss_];

    v35 = sub_2276669E0();
    v36 = sub_227533748(v35, sub_226F1EDD0);
    v37 = sub_2275347D0(v19, v36);

    [v14 setTrainerIdentifierss_];

    v38 = sub_2276669F0();
    v39 = sub_227533748(v38, sub_226F1EDB0);
    v40 = sub_227534A64(v19, v39);

    [v14 setWorkoutIdentifierss_];
  }
}

size_t static CatalogProgramReference.representativeSamples()()
{
  v45 = sub_227662190();
  v53 = *(v45 - 8);
  v0 = *(v53 + 64);
  MEMORY[0x28223BE20](v45);
  v57 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE4E0, &qword_22768B358);
  v2 = *(v44 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = v35 - v4;
  v42 = sub_227666A40();
  v46 = *(v42 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F976F8();
  sub_226ED978C();
  v56 = sub_227663B50();
  v55 = sub_22766C2D0();
  v54 = MEMORY[0x22AA8E410]();
  v7 = sub_22766C2D0();
  v8 = sub_22766C090();
  v9 = sub_22766C2D0();
  v10 = sub_22766C2D0();
  v11 = sub_22766C2D0();
  v12 = sub_22766C2D0();
  v13 = sub_22766C2D0();
  v87 = v55;
  v88[0] = v56;
  v88[1] = v88;
  v88[2] = &v87;
  v85 = v7;
  v86 = v54;
  v88[3] = &v86;
  v88[4] = &v85;
  v83 = v9;
  v84 = v8;
  v88[5] = &v84;
  v88[6] = &v83;
  v81 = v11;
  v82 = v10;
  v88[7] = &v82;
  v88[8] = &v81;
  v79 = v13;
  v80 = v12;
  v88[9] = &v80;
  v88[10] = &v79;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F0, &qword_227672F88);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E30, &unk_227672460);
  v70 = v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FD8, &qword_2276772D8);
  v72 = v14;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v74 = v14;
  v75 = v14;
  v76 = v14;
  v77 = v14;
  v78 = v14;
  v59 = sub_226F5BF60(&qword_27D7B9100, &qword_27D7B90F0, &qword_227672F88);
  v15 = sub_226F5BF60(&qword_27D7B9FE0, &qword_27D7B8E30, &unk_227672460);
  v60 = v15;
  v61 = sub_226F5BF60(&qword_27D7B9FE8, &qword_27D7B9FD8, &qword_2276772D8);
  v62 = v15;
  v63 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v64 = v15;
  v65 = v15;
  v66 = v15;
  v67 = v15;
  v68 = v15;
  v16 = sub_2276638E0();

  v17 = *(v16 + 16);
  if (v17)
  {
    v58 = MEMORY[0x277D84F90];
    result = sub_226F1F948(0, v17, 0);
    v19 = 0;
    v20 = v58;
    v37 = v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v38 = v17;
    v35[1] = v46 + 32;
    v36 = (v53 + 16);
    v39 = v16;
    v40 = v2;
    while (v19 < *(v16 + 16))
    {
      v21 = v43;
      sub_227536074(v37 + *(v2 + 72) * v19, v43);
      v23 = *v21;
      v53 = *(v21 + 8);
      v22 = v53;
      v54 = v23;
      v24 = *(v21 + 16);
      v52 = v24;
      v25 = v44[16];
      v26 = *(v21 + v44[20]);
      v47 = *(v21 + 24);
      v48 = v26;
      v27 = (v21 + v44[24]);
      v55 = *v27;
      v56 = v20;
      v28 = v27[1];
      v49 = *(v21 + v44[28]);
      v50 = *(v21 + v44[32]);
      v51 = v28;
      v29 = *(v21 + v44[36]);
      v30 = *(v21 + v44[40]);
      v31 = *(v21 + v44[44]);
      (*v36)(v57, v21 + v25, v45);
      sub_226EB396C(v23, v22, v24);

      v32 = v41;
      v20 = v56;
      sub_2276669B0();
      sub_2275360E4(v21);
      v58 = v20;
      v34 = *(v20 + 16);
      v33 = *(v20 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_226F1F948(v33 > 1, v34 + 1, 1);
        v20 = v58;
      }

      ++v19;
      *(v20 + 16) = v34 + 1;
      result = (*(v46 + 32))(v20 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v34, v32, v42);
      v16 = v39;
      v2 = v40;
      if (v38 == v19)
      {

        return v20;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_227536074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE4E0, &qword_22768B358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275360E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE4E0, &qword_22768B358);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22753614C(uint64_t a1)
{
  result = sub_2275361A4(&qword_28139B5F0, MEMORY[0x277D52790]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275361A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2275361FC()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_227664860();
  v9 = MEMORY[0x22AA8E810](v6, v7, v8);
  v11 = v10;

  if (v11 >> 60 == 15)
  {
    v12 = sub_2276636A0();
    sub_2275365D4(&qword_28139BCC0, MEMORY[0x277D500E0]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D500D8], v12);
    return swift_willThrow();
  }

  else
  {
    sub_227667DA0();
    sub_226F5E0B4(v9, v11);
    sub_2275365D4(&qword_27D7BE4E8, MEMORY[0x277D53308]);
    sub_2276683D0();
    if (v0)
    {
      sub_22766A740();
      v15 = sub_22766B380();
      v16 = sub_22766C8B0();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_226E8E000, v15, v16, "[MetricBackgroundAccountEventProvider] failed decoding last metric background account event - skipping background account event", v17, 2u);
        MEMORY[0x22AA9A450](v17, -1, -1);
      }

      (*(v2 + 8))(v5, v1);
      swift_willThrow();
    }

    return sub_226FB1424(v9, v11);
  }
}

uint64_t sub_2275364D8()
{
  sub_227667DA0();
  sub_2275365D4(&qword_27D7BE4E8, MEMORY[0x277D53308]);
  result = sub_2276683C0();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    v5 = [objc_opt_self() standardUserDefaults];
    sub_227664860();
    sub_227662500();

    return sub_226EDC420(v3, v4);
  }

  return result;
}

uint64_t sub_2275365D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_227536628(uint64_t a1)
{
  result = sub_227536650();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227536650()
{
  result = qword_27D7BE4F0;
  if (!qword_27D7BE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE4F0);
  }

  return result;
}

unint64_t sub_2275366B0(uint64_t a1)
{
  result = sub_2275366D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2275366D8()
{
  result = qword_27D7BE4F8;
  if (!qword_27D7BE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE4F8);
  }

  return result;
}

uint64_t sub_22753672C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2271E40F0();

  return MEMORY[0x2821B22E0](a1, a2, v4);
}

uint64_t sub_227536778()
{
  v0 = sub_227665E90();
  sub_227215894();
  swift_allocError();
  (*(*(v0 - 8) + 104))(v1, *MEMORY[0x277D51ED0], v0);
  return swift_willThrow();
}

uint64_t sub_227536828()
{
  sub_227664900();

  return sub_227669280();
}

uint64_t sub_227536898(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE710, &qword_22768D920);
    v10 = sub_226E9CFD0(&qword_281399110, &qword_27D7BE710, &qword_22768D920);
    v11 = sub_226EB1040(&qword_28139B9D0, MEMORY[0x277D506C0]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275369D4(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE898, &qword_22768B688);
    v10 = sub_226E9CFD0(&qword_27D7BE8A0, &qword_27D7BE898, &qword_22768B688);
    v11 = sub_226EB1040(&unk_27D7BE700, type metadata accessor for SyncEncryptionKey);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227536B10(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE890, &qword_22768B680);
    v10 = sub_226E9CFD0(&qword_281398FA8, &qword_27D7BE890, &qword_22768B680);
    v11 = sub_226EB1040(&qword_28139B070, type metadata accessor for DirtySyncZone);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227536C4C(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA20, &qword_227685540);
    v10 = sub_226E9CFD0(&qword_27D7BEA28, &qword_27D7BEA20, &qword_227685540);
    v11 = sub_226EB1040(&qword_2813A5790, MEMORY[0x277D50CD0]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227536D88(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE950, &qword_22768B6D0);
    v10 = sub_226E9CFD0(&unk_27D7BE958, &qword_27D7BE950, &qword_22768B6D0);
    v11 = sub_226EB1040(&qword_2813A5760, MEMORY[0x277D51068]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227536EC4(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC90, &qword_2276873F0);
    v10 = sub_226E9CFD0(&unk_27D7BEC98, &qword_27D7BEC90, &qword_2276873F0);
    v11 = sub_226EB1040(&qword_2813A5810, MEMORY[0x277D4FF88]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227537000(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6C0, qword_227670F00);
    v10 = sub_226E9CFD0(&qword_281398EE8, &qword_27D7BE6C0, qword_227670F00);
    v11 = sub_226EB1040(&qword_28139BD60, MEMORY[0x277D4FCA8]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753713C(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BECB8, &unk_22768B8B0);
    v10 = sub_226E9CFD0(&unk_27D7BECC0, &qword_27D7BECB8, &unk_22768B8B0);
    v11 = sub_226EB1040(&qword_28139BD60, MEMORY[0x277D4FCA8]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227537278(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE8E0, &unk_22768B6A0);
    v10 = sub_226E9CFD0(&unk_27D7BE8E8, &qword_27D7BE8E0, &unk_22768B6A0);
    v11 = sub_226EB1040(&qword_28139B978, MEMORY[0x277D50B18]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275373B4(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEAC8, &qword_22768B788);
    v10 = sub_226E9CFD0(&qword_27D7BEAD0, &qword_27D7BEAC8, &qword_22768B788);
    v11 = sub_226EB1040(&qword_2813A5520, MEMORY[0x277D539C0]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275374F0(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEAD8, &unk_22768B790);
    v10 = sub_226E9CFD0(&qword_27D7BEAE0, &qword_27D7BEAD8, &unk_22768B790);
    v11 = sub_226EB1040(&qword_2813A56C8, MEMORY[0x277D520D0]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753762C(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE6F0, &unk_22768B650);
    v10 = sub_226E9CFD0(&qword_2813990F8, &unk_27D7BE6F0, &unk_22768B650);
    v11 = sub_226EB1040(&qword_2813A57B0, MEMORY[0x277D50C20]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227537768(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA48, &unk_22768B750);
    v10 = sub_226E9CFD0(&qword_27D7BEA50, &qword_27D7BEA48, &unk_22768B750);
    v11 = sub_226EB1040(&qword_28139B9F0, MEMORY[0x277D50678]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275378A4(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF10, qword_227682280);
    v10 = sub_226E9CFD0(&qword_27D7BEC70, &qword_27D7BCF10, qword_227682280);
    v11 = sub_226EB1040(&unk_27D7BE758, MEMORY[0x277D522A0]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275379E0(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC28, &qword_22768B880);
    v10 = sub_226E9CFD0(&qword_27D7BEC30, &qword_27D7BEC28, &qword_22768B880);
    v11 = sub_226EB1040(&qword_27D7BEA80, MEMORY[0x277D50C78]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227537B1C(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC38, &qword_22768B888);
    v10 = sub_226E9CFD0(&qword_27D7BEC40, &qword_27D7BEC38, &qword_22768B888);
    v11 = sub_226EB1040(&qword_27D7BEA78, MEMORY[0x277D51130]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227537C58(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC08, &unk_22768B870);
    v10 = sub_226E9CFD0(&unk_27D7BEC10, &qword_27D7BEC08, &unk_22768B870);
    v11 = sub_226EB1040(&qword_27D7BEAA0, MEMORY[0x277D52758]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227537D94(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7E0, &qword_22767EF70);
    v10 = sub_226E9CFD0(&qword_27D7BEC20, &qword_27D7BC7E0, &qword_22767EF70);
    v11 = sub_226EB1040(&qword_28139B588, MEMORY[0x277D52AF8]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227537ED0(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC48, &qword_22768B890);
    v10 = sub_226E9CFD0(&unk_27D7BEC50, &qword_27D7BEC48, &qword_22768B890);
    v11 = sub_226EB1040(&qword_27D7BEA88, MEMORY[0x277D52300]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_22753800C(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E88, &qword_2276767D8);
    v10 = sub_226E9CFD0(&unk_27D7BEC60, &qword_27D7B9E88, &qword_2276767D8);
    v11 = sub_226EB1040(&qword_28139B5E0, MEMORY[0x277D52828]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227538148(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2F0, &qword_22768B810);
    v10 = sub_226E9CFD0(&qword_27D7BEB80, &qword_27D7BC2F0, &qword_22768B810);
    v11 = sub_226EB1040(&qword_27D7BEA78, MEMORY[0x277D51130]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227538284(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC970, qword_227675810);
    v10 = sub_226E9CFD0(&unk_27D7BEBA0, &unk_27D7BC970, qword_227675810);
    v11 = sub_226EB1040(&qword_28139B5E0, MEMORY[0x277D52828]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275383C0(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2C0, &unk_22768B820);
    v10 = sub_226E9CFD0(&qword_281398D00, &qword_27D7BC2C0, &unk_22768B820);
    v11 = sub_226EB1040(&qword_28139B610, MEMORY[0x277D52790]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275384FC(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB88, &qword_22768B818);
    v10 = sub_226E9CFD0(&unk_27D7BEB90, &qword_27D7BEB88, &qword_22768B818);
    v11 = sub_226EB1040(&unk_27D7BEA90, MEMORY[0x277D519E0]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227538638(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBF8, &qword_22768B868);
    v10 = sub_226E9CFD0(&qword_2813990C0, &unk_27D7BEBF8, &qword_22768B868);
    v11 = sub_226EB1040(&qword_28139B888, MEMORY[0x277D512F0]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227538774(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB978, &unk_22767B520);
    v10 = sub_226E9CFD0(&qword_281398CC0, &qword_27D7BB978, &unk_22767B520);
    v11 = sub_226EB1040(&qword_28139B588, MEMORY[0x277D52AF8]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275388B0(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC78, &qword_22768B898);
    v10 = sub_226E9CFD0(&qword_281398C90, &qword_27D7BEC78, &qword_22768B898);
    v11 = sub_226EB1040(&qword_28139B508, MEMORY[0x277D53128]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_2275389EC(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB70, &qword_227682598);
    v10 = sub_226E9CFD0(&qword_27D7BEB78, &qword_27D7BEB70, &qword_227682598);
    v11 = sub_226EB1040(&qword_2813A5740, MEMORY[0x277D51330]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227538B28(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2B8, &qword_22767D530);
    v10 = sub_226E9CFD0(&qword_281398BF0, &qword_27D7BC2B8, &qword_22767D530);
    v11 = sub_226EB1040(&qword_28139B248, MEMORY[0x277D53E10]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227538C64(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2D0, &qword_22767D538);
    v10 = sub_226E9CFD0(&qword_27D7BEC80, &qword_27D7BC2D0, &qword_22767D538);
    v11 = sub_226EB1040(&qword_27D7BE830, MEMORY[0x277D50278]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227538DA0(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2C8, &qword_22768B8A0);
    v10 = sub_226E9CFD0(&qword_281398D50, &qword_27D7BC2C8, &qword_22768B8A0);
    v11 = sub_226EB1040(&qword_28139B710, MEMORY[0x277D51E30]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_227538EDC(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC2D8, &unk_22767E5B0);
    v10 = sub_226E9CFD0(&qword_281398BD0, &qword_27D7BC2D8, &unk_22767E5B0);
    v11 = sub_226EB1040(&qword_28139B218, MEMORY[0x277D53E88]);
    v12 = v8(&v15, a2, v9, v10, v11, v7, v6);
    v3 = v5;
    if (v12)
    {
      return v12;
    }
  }

  return 0;
}