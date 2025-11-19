void sub_22746B06C()
{
  if (!qword_27D7BDE10)
  {
    sub_226F4895C();
    v0 = sub_22766C730();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7BDE10);
    }
  }
}

void sub_22746B0C8()
{
  if (!qword_27D7BDE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8560, &unk_227671560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B96F0, qword_227674920);
    sub_22704B2CC();
    v0 = sub_22766BEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7BDE20);
    }
  }
}

void sub_22746B15C()
{
  if (!qword_27D7BDE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BAFD0, &unk_227679A90);
    v0 = sub_22766C3D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7BDE28);
    }
  }
}

void sub_22746B1C0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = sub_22766BEF0();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22746B238(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22766CD20();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22766CD20();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2273CCBB4(&qword_27D7BDE48, &qword_27D7BDE40, &unk_227686420);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDE40, &unk_227686420);
            v9 = sub_2275F0174(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22746B3D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22766CD20();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22766CD20();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2273CCBB4(&qword_27D7BDE38, &qword_27D7BE650, &unk_227686410);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE650, &unk_227686410);
            v9 = sub_2275F0174(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_226E99364(0, &qword_27D7BE5D0, 0x277CE6508);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22746B598(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227666900();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22746B5E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_22766B0A0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v39 - v11;
  v13 = sub_2276694E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  sub_22766B1B0();
  sub_2276694B0();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22706CF74(v12);
    sub_226F1893C();
    swift_allocError();
    *v21 = 9;
    swift_willThrow();
    v22 = sub_22766B1D0();
    return (*(*(v22 - 8) + 8))(a1, v22);
  }

  else
  {
    v41 = a2;
    v40 = *(v14 + 32);
    v40(v20, v12, v13);
    (*(v14 + 16))(v17, v20, v13);
    v24 = sub_22766B190();
    v42 = v25;
    sub_22766B170();
    v28 = sub_2275D68D0(v8);
    if (v2)
    {
      sub_226EDC420(v24, v42);
      v29 = sub_22766B1D0();
      (*(*(v29 - 8) + 8))(a1, v29);
      v30 = *(v14 + 8);
      v30(v17, v13);
      return (v30)(v20, v13);
    }

    else
    {
      v31 = v26;
      v32 = v28;
      v39 = v27;
      v33 = sub_22766B1D0();
      (*(*(v33 - 8) + 8))(a1, v33);
      (*(v14 + 8))(v20, v13);
      v34 = v41;
      v40(v41, v17, v13);
      result = type metadata accessor for SyncZoneChangeset();
      v35 = &v34[*(result + 20)];
      v36 = v42;
      *v35 = v24;
      v35[1] = v36;
      v37 = &v34[*(result + 24)];
      v38 = v39;
      *v37 = v31;
      *(v37 + 1) = v38;
      v37[2] = v32;
    }
  }

  return result;
}

uint64_t sub_22746B994(uint64_t a1, uint64_t a2)
{
  v4 = sub_22766B0A0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  sub_2276694C0();
  sub_22766B120();
  v6 = type metadata accessor for SyncZoneChangeset();
  sub_226F5E0B4(*(a2 + *(v6 + 20)), *(a2 + *(v6 + 20) + 8));
  sub_22766B110();
  v7 = (a2 + *(v6 + 24));
  v9 = *v7;
  v10 = *(v7 + 2);
  sub_22746BE0C(&qword_281399220, MEMORY[0x277D54530]);
  result = sub_22766AD80();
  if (!v2)
  {
    return sub_22766B180();
  }

  return result;
}

uint64_t sub_22746BB18()
{
  sub_22766B1D0();
  sub_22746BE0C(&qword_27D7BDE58, MEMORY[0x277D54570]);
  return sub_22766AD80();
}

uint64_t sub_22746BC20()
{
  sub_22766CE20();

  v1 = sub_227669490();
  MEMORY[0x22AA98450](v1);

  MEMORY[0x22AA98450](0x65676E616863202CLL, 0xED0000203A746573);
  v2 = (v0 + *(type metadata accessor for SyncZoneChangeset() + 24));
  v3 = v2[2];
  v4 = sub_2275D66A0(*v2, v2[1]);
  MEMORY[0x22AA98450](v4);

  MEMORY[0x22AA98450](41, 0xE100000000000000);
  return 0x656E6F7A28435A53;
}

uint64_t type metadata accessor for SyncZoneChangeset()
{
  result = qword_28139A9A0;
  if (!qword_28139A9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22746BE0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22746BE7C()
{
  result = sub_2276694E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_22746BF08(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  sub_22746C2F4();
  v5 = sub_22766C2B0();

  v6 = *((v4 & v3) + 0x50);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CompoundPredicate();
  v7 = objc_msgSendSuper2(&v9, sel_initWithType_subpredicates_, a1, v5);

  return v7;
}

id sub_22746BFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22746C2F4();
  sub_22766C2C0();
  return sub_22746BF08(a3);
}

id sub_22746C0B8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7 = a3;
  v8 = a4;
  v9 = sub_22746C270(v7, v8, a5);

  return v9;
}

id sub_22746C124(void *a1, uint64_t (*a2)(void, void))
{
  v4 = a2(0, *((*MEMORY[0x277D85000] & *v2) + 0x50));
  v7.receiver = v2;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_22746C20C(uint64_t (*a1)(void, void))
{
  v2 = a1(0, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_22746C270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  v9.receiver = v3;
  v9.super_class = type metadata accessor for ComparisonPredicate();
  return objc_msgSendSuper2(&v9, sel_initWithLeftExpression_rightExpression_customSelector_, a1, a2, a3);
}

unint64_t sub_22746C2F4()
{
  result = qword_281398B58;
  if (!qword_281398B58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398B58);
  }

  return result;
}

uint64_t sub_22746C348()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_22746E72C(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_22746C3BC()
{
  v1 = sub_22766BB50();
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v1);
  v40 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227662750();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDE68, qword_2276866E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = sub_22766B800();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22766BCB0();
  v17 = *(v39 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  v23 = *(v0 + 40);
  v43 = v0;
  v24 = *__swift_project_boxed_opaque_existential_0((v0 + 16), v23);
  sub_226E9EF44();
  sub_22766BC70();
  v25 = sub_22766BFD0();
  (*(v13 + 104))(v16, *MEMORY[0x277D21C40], v12);
  sub_22766BC60();

  (*(v13 + 8))(v16, v12);
  sub_22766BC80();
  (*(v8 + 8))(v11, v7);
  if ((BYTE8(v47) & 1) == 0)
  {
    v26 = v35;
    sub_227662740();
    sub_2276625D0();
    (*(v36 + 8))(v26, v37);
  }

  v27 = v39;
  (*(v17 + 16))(v38, v22, v39);
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v28 = [objc_opt_self() ams_sharedAccountStore];
  v45 = sub_22746ECA8();
  v46 = MEMORY[0x277D225B8];
  v44 = v28;
  v29 = [objc_opt_self() currentProcess];
  v30 = v40;
  sub_22766BB40();
  v31 = v42;
  *(&v48 + 1) = v42;
  v49 = MEMORY[0x277D22240];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v47);
  (*(v41 + 32))(boxed_opaque_existential_0, v30, v31);
  (*(v17 + 8))(v22, v27);
  v33 = v43;
  swift_beginAccess();
  sub_22746ECF4(&v47, v33 + 56);
  return swift_endAccess();
}

uint64_t sub_22746C8C4()
{
  swift_beginAccess();
  sub_226EDDC10(v0 + 56, &v7);
  if (v8)
  {
    sub_226E92AB8(&v7, v9);
    sub_226E91B50(v9, &v7);
    v1 = swift_allocObject();
    sub_226E92AB8(&v7, v1 + 16);
    v2 = swift_allocObject();
    *(v2 + 16) = "SeymourServices/JetIdentifierStore.swift";
    *(v2 + 24) = 40;
    *(v2 + 32) = 2;
    *(v2 + 40) = 54;
    *(v2 + 48) = &unk_227686698;
    *(v2 + 56) = v1;
    sub_227669270();
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    sub_22746E72C(&v7);
    v4 = sub_2276636A0();
    sub_226F09790();
    v5 = swift_allocError();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D50080], v4);
    *(swift_allocObject() + 16) = v5;
    return sub_227669280();
  }
}

uint64_t sub_22746CAA8()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = *(MEMORY[0x277D21EB8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_226F10788;

  return MEMORY[0x28217F5A8](v2, v3);
}

uint64_t sub_22746CB5C(uint64_t a1)
{
  swift_beginAccess();
  sub_226EDDC10(v1 + 56, &v9);
  if (v10)
  {
    sub_226E92AB8(&v9, v11);
    sub_226E91B50(v11, &v9);
    v3 = swift_allocObject();
    sub_226E92AB8(&v9, v3 + 16);
    *(v3 + 56) = a1;
    v4 = swift_allocObject();
    *(v4 + 16) = "SeymourServices/JetIdentifierStore.swift";
    *(v4 + 24) = 40;
    *(v4 + 32) = 2;
    *(v4 + 40) = 64;
    *(v4 + 48) = &unk_227686688;
    *(v4 + 56) = v3;

    sub_227669270();
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    sub_22746E72C(&v9);
    v6 = sub_2276636A0();
    sub_226F09790();
    v7 = swift_allocError();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D50080], v6);
    *(swift_allocObject() + 16) = v7;
    return sub_227669280();
  }
}

uint64_t sub_22746CD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_22746CD5C, 0, 0);
}

uint64_t sub_22746CD5C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  v5 = sub_227090024(v2);
  v6 = sub_226F3E6A8(v5);
  v0[4] = v6;

  v7 = *(MEMORY[0x277D21EC8] + 4);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_22746CE44;

  return MEMORY[0x28217F5B8](v6, v3, v4);
}

uint64_t sub_22746CE44()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22746CF80, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22746CF80()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_22746CFE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 104) = a3;
  *(v4 + 16) = a1;
  v5 = sub_22766BAA0();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22746D0AC, 0, 0);
}

uint64_t sub_22746D0AC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = v4[3];
  v6 = v4[4];
  v7 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_0(v4, v5);
  v8 = sub_2276637A0();
  v10 = v9;
  *(v0 + 64) = v9;
  (*(v2 + 104))(v1, *MEMORY[0x277D22130], v3);
  v11 = *(MEMORY[0x277D21EC0] + 4);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_22746D1C8;
  v13 = *(v0 + 56);
  v14 = *(v0 + 32);

  return MEMORY[0x28217F5B0](v8, v10, v13, v14, v5, v6);
}

uint64_t sub_22746D1C8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  v6[10] = v2;

  v9 = v6[8];
  v10 = v6[7];
  v11 = v6[6];
  v12 = v6[5];
  if (v2)
  {
    (*(v11 + 8))(v10, v12);

    v13 = sub_22746D3F0;
  }

  else
  {
    v6[11] = a2;
    v6[12] = a1;
    (*(v11 + 8))(v10, v12);

    v13 = sub_22746D380;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_22746D380()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[2];
  *v3 = v0[12];
  v3[1] = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_22746D3F0()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_22746D454(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 104) = a3;
  *(v4 + 16) = a1;
  v5 = sub_22766BAA0();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22746D51C, 0, 0);
}

uint64_t sub_22746D51C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = v4[3];
  v6 = v4[4];
  v7 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_0(v4, v5);
  v8 = sub_2276637A0();
  v10 = v9;
  *(v0 + 64) = v9;
  (*(v2 + 104))(v1, *MEMORY[0x277D22128], v3);
  v11 = *(MEMORY[0x277D21EC0] + 4);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_22746D638;
  v13 = *(v0 + 56);
  v14 = *(v0 + 32);

  return MEMORY[0x28217F5B0](v8, v10, v13, v14, v5, v6);
}

uint64_t sub_22746D638(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  v6[10] = v2;

  v9 = v6[8];
  v10 = v6[7];
  v11 = v6[6];
  v12 = v6[5];
  if (v2)
  {
    (*(v11 + 8))(v10, v12);

    v13 = sub_22746ED48;
  }

  else
  {
    v6[11] = a2;
    v6[12] = a1;
    (*(v11 + 8))(v10, v12);

    v13 = sub_22746ED44;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_22746D7F0(char a1, uint64_t a2)
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
    *(v12 + 40) = 94;
    *(v12 + 48) = &unk_2276866D0;
    *(v12 + 56) = v11;
    sub_227665E60();
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
    sub_227665E60();
    return sub_227669280();
  }
}

uint64_t sub_22746DA78(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 160) = a2;
  *(v4 + 168) = a4;
  *(v4 + 208) = a3;
  *(v4 + 152) = a1;
  return MEMORY[0x2822009F8](sub_22746DAA0, 0, 0);
}

uint64_t sub_22746DAA0()
{
  v1 = *(v0 + 160);
  v2 = v1[3];
  v3 = v1[4];
  v4 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v5 = sub_2276637A0();
  v7 = v6;
  *(v0 + 176) = v6;
  v8 = *(MEMORY[0x277D21ED0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  *v9 = v0;
  v9[1] = sub_22746DB84;
  v10 = *(v0 + 168);

  return MEMORY[0x28217F5C0](v5, v7, v10, v2, v3);
}

uint64_t sub_22746DB84(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v8 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
    v5 = sub_22746DF58;
  }

  else
  {
    v6 = v3[22];

    v5 = sub_22746DCA0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22746DCA0()
{
  v1 = v0[24];
  v2 = sub_227664820();
  if (!*(v1 + 16))
  {

LABEL_12:
    v27 = v0[24];
LABEL_13:

    v28 = sub_2276636A0();
    sub_226F09790();
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D50078], v28);
    swift_willThrow();
    v30 = v0[1];
    goto LABEL_14;
  }

  v4 = v0[24];
  v5 = sub_226E92000(v2, v3);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = v0[24];
  sub_226E97CC0(*(v8 + 56) + 32 * v5, (v0 + 2));
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = v0[14];
  v9 = v0[15];
  v11 = sub_227664800();
  if (!*(v1 + 16))
  {

    goto LABEL_18;
  }

  v13 = v0[24];
  v14 = sub_226E92000(v11, v12);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_18:
    v32 = v0[24];

    goto LABEL_13;
  }

  sub_226E97CC0(*(v8 + 56) + 32 * v14, (v0 + 6));
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = v0[24];

    goto LABEL_13;
  }

  v17 = v0[16];
  v18 = v0[17];
  v19 = sub_227664810();
  v21 = v0[24];
  if (*(v1 + 16))
  {
    v22 = sub_226E92000(v19, v20);
    v24 = v23;

    v25 = v0[24];
    if (v24)
    {
      sub_226E97CC0(*(v8 + 56) + 32 * v22, (v0 + 10));

      if (swift_dynamicCast())
      {
        v26 = v0[18];
      }
    }

    else
    {
      v34 = v0[24];
    }
  }

  else
  {
  }

  v35 = v0[19];
  sub_227665E40();
  v30 = v0[1];
LABEL_14:

  return v30();
}

uint64_t sub_22746DF58()
{
  v1 = v0[22];

  v2 = v0[25];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22746DFBC(char a1)
{
  swift_beginAccess();
  sub_226EDDC10(v1 + 56, &v9);
  if (v10)
  {
    sub_226E92AB8(&v9, v11);
    sub_226E91B50(v11, &v9);
    v3 = swift_allocObject();
    sub_226E92AB8(&v9, v3 + 16);
    *(v3 + 56) = a1;
    v4 = swift_allocObject();
    *(v4 + 16) = "SeymourServices/JetIdentifierStore.swift";
    *(v4 + 24) = 40;
    *(v4 + 32) = 2;
    *(v4 + 40) = 118;
    *(v4 + 48) = &unk_2276866A8;
    *(v4 + 56) = v3;
    sub_227669270();
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    sub_22746E72C(&v9);
    v6 = sub_2276636A0();
    sub_226F09790();
    v7 = swift_allocError();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D50080], v6);
    *(swift_allocObject() + 16) = v7;
    return sub_227669280();
  }
}

uint64_t sub_22746E180(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *MEMORY[0x277D85DE8];
  *(v3 + 72) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22746E214, 0, 0);
}

uint64_t sub_22746E214()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  v2 = v1[3];
  v3 = v1[4];
  v4 = *(v0 + 72);
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v5 = sub_2276637A0();
  v7 = v6;
  *(v0 + 40) = v6;
  v8 = *(MEMORY[0x277D21ED8] + 4);
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_22746E31C;
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x28217F5C8](v5, v7, v2, v3);
}

uint64_t sub_22746E31C(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 48);
  v11 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v6 = sub_22746E5E8;
  }

  else
  {
    v7 = *(v4 + 40);

    *(v4 + 64) = a1;
    v6 = sub_22746E474;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22746E474()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = objc_opt_self();
  v3 = sub_22766BE90();

  *(v0 + 16) = 0;
  v4 = [v2 dataWithJSONObject:v3 options:2 error:v0 + 16];

  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = *(v0 + 24);
    v7 = sub_227662590();
    v9 = v8;

    *v6 = v7;
    v6[1] = v9;
  }

  else
  {
    v12 = v5;
    sub_2276622C0();

    swift_willThrow();
  }

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_22746E5E8()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_22746E75C(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_22746CD3C(a1, v1 + 16, v4);
}

uint64_t sub_22746E820(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22746CA88(a1, v1 + 16);
}

uint64_t sub_22746E8BC(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_22746E180(a1, v1 + 16, v4);
}

uint64_t sub_22746E980(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v1 + 56);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_22746CFE4(a1, v1 + 16, v6, v1 + v5);
}

uint64_t sub_22746EA8C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v1 + 56);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22746DA78(a1, v1 + 16, v6, v1 + v5);
}

uint64_t sub_22746EB98(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v1 + 56);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22746D454(a1, v1 + 16, v6, v1 + v5);
}

unint64_t sub_22746ECA8()
{
  result = qword_28139D2A8;
  if (!qword_28139D2A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28139D2A8);
  }

  return result;
}

id sub_22746EDB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceSubscriptionDialogObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22746EE18(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22766B3B0();
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22766B3F0();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v21);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226EA1CF4();
  v15 = sub_22766C950();
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = sub_22746FC24;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_18;
  v17 = _Block_copy(aBlock);
  v18 = v3;
  v19 = a1;

  sub_22766B3D0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_226E9ED60(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v14, v10, v17);
  _Block_release(v17);

  (*(v22 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v21);
}

void sub_22746F0EC(uint64_t a1, void *a2, uint64_t (*a3)(void *a1), uint64_t a4)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = off_283AB6788;
    type metadata accessor for ServiceSubscriptionProvider();
    v8 = v7();
    swift_unknownObjectRelease();
    v9 = ~v8 & 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [a2 options];
  if (!v10)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CEE3D8]) init];
  }

  v11 = v10;
  [v10 setAuthenticationType_];
  [a2 setOptions_];
  v12 = [objc_allocWithZone(MEMORY[0x277CEE3E8]) initWithRequest_];
  v13 = [v12 performAuthentication];
  v20 = sub_22746F32C;
  v21 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_22746F338;
  v19 = &block_descriptor_21;
  v14 = _Block_copy(&v16);
  [v13 addErrorBlock_];
  _Block_release(v14);
  v20 = a3;
  v21 = a4;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_226E9F1D0;
  v19 = &block_descriptor_24;
  v15 = _Block_copy(&v16);

  [v13 addFinishBlock_];
  _Block_release(v15);
}

void sub_22746F338(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_22746F3D4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22766B3B0();
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22766B3F0();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v21);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226EA1CF4();
  v15 = sub_22766C950();
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a1;
  aBlock[4] = sub_22746FC18;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_33;
  v17 = _Block_copy(aBlock);
  v18 = v3;

  v19 = a1;

  sub_22766B3D0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_226E9ED60(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v14, v10, v17);
  _Block_release(v17);

  (*(v22 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v21);
}

void sub_22746F6A8(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4)
{
  if (swift_unknownObjectWeakLoadStrong() && (v6 = off_283AB6788, type metadata accessor for ServiceSubscriptionProvider(), v7 = v6(), swift_unknownObjectRelease(), (v7 & 1) != 0))
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CEE6B0]) initWithRequest_];
    v9 = [v8 present];
    v14[4] = sub_22746F8D8;
    v14[5] = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_22746F338;
    v14[3] = &block_descriptor_9;
    v10 = _Block_copy(v14);
    [v9 addErrorBlock_];
    _Block_release(v10);
  }

  else
  {
    v11 = sub_227668FA0();
    sub_226E9ED60(&unk_27D7BDEE0, MEMORY[0x277D53960]);
    v12 = swift_allocError();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D53958], v11);
    a2(0, v12);
  }
}

uint64_t sub_22746F8E4(void *a1, const char *a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A640();
  v9 = a1;
  v10 = sub_22766B380();
  v11 = sub_22766C890();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = MEMORY[0x22AA995D0](v18[2], v18[3]);
    v16 = sub_226E97AE8(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v10, v11, a2, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22746FAE4(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_22746FB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2276622B0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_22746FC54()
{
  v1 = v0;
  v2 = sub_227669A70();
  v32 = v2;
  v35 = *(v2 - 8);
  v3 = v35;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A740();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 16);
  v29 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v36 = v12;
  v13 = *(v3 + 104);
  v13(v6, *MEMORY[0x277D4E6F8], v2);
  v14 = v13;
  swift_allocObject();
  v31 = v1;
  swift_weakInit();
  sub_2276651A0();
  swift_unknownObjectRetain_n();
  sub_227669EA0();

  v15 = v35 + 8;
  v33 = *(v35 + 8);
  v16 = v32;
  v33(v6, v32);
  v35 = v15;
  swift_unknownObjectRelease();
  v36 = v12;
  v14(v6, *MEMORY[0x277D4E998], v16);
  v28 = v14;
  swift_allocObject();
  swift_weakInit();
  sub_227666C40();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v17 = v32;
  v33(v6, v32);
  swift_unknownObjectRelease();
  v36 = v12;
  v14(v6, *MEMORY[0x277D4E6B0], v17);
  swift_allocObject();
  swift_weakInit();
  sub_227664DB0();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v18 = v33;
  v33(v6, v17);
  swift_unknownObjectRelease();
  v36 = v12;
  v19 = v28;
  v28(v6, *MEMORY[0x277D4E490], v17);
  v30 = v3 + 104;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v20 = v32;
  v18(v6, v32);

  swift_unknownObjectRelease();
  v36 = v12;
  v19(v6, *MEMORY[0x277D4E7E0], v20);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v18(v6, v20);
  swift_unknownObjectRelease();
  v36 = v12;
  v19(v6, *MEMORY[0x277D4E318], v20);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v21 = v32;
  v18(v6, v32);
  swift_unknownObjectRelease();
  v36 = v12;
  v19(v6, *MEMORY[0x277D4E708], v21);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v33(v6, v21);

  swift_unknownObjectRelease();
  v36 = v12;
  v19(v6, *MEMORY[0x277D4E6B8], v21);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v22 = v33;
  v33(v6, v21);

  swift_unknownObjectRelease();
  v36 = v12;
  v23 = v28;
  v28(v6, *MEMORY[0x277D4EA40], v21);
  swift_allocObject();
  swift_weakInit();
  sub_227667DA0();
  swift_unknownObjectRetain();
  sub_227669E90();

  v24 = v32;
  v22(v6, v32);
  swift_unknownObjectRelease();
  v36 = v12;
  v23(v6, *MEMORY[0x277D4E918], v24);
  swift_allocObject();
  swift_weakInit();

  sub_227669EB0();

  v25 = v33;
  v33(v6, v24);

  swift_unknownObjectRelease();
  v36 = v12;
  v23(v6, *MEMORY[0x277D4E8B0], v24);
  swift_allocObject();
  swift_weakInit();

  sub_227669EB0();

  v25(v6, v24);

  return swift_unknownObjectRelease();
}

uint64_t sub_2274706E8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 40);

    a2(a1);

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v9 - 8) + 56))(a3, v8, 1, v9);
}

uint64_t sub_2274707D8@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 40);

    sub_226F9ADF4();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v5 - 8) + 56))(a1, v4, 1, v5);
}

uint64_t sub_2274708AC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 40);

    v11 = v10[22];
    v12 = v10[23];
    __swift_project_boxed_opaque_existential_0(v10 + 19, v11);
    v13 = sub_227662750();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    (*(v12 + 16))(v8, v7, v11, v12);

    sub_226EDDD40(v7);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  return (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

uint64_t sub_227470A64@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 40);

    v11 = v10[22];
    v12 = v10[23];
    __swift_project_boxed_opaque_existential_0(v10 + 19, v11);
    v13 = sub_227662750();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    (*(v12 + 32))(v8, v7, v11, v12);

    sub_226EDDD40(v7);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  return (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

uint64_t sub_227470C1C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 40);

    v11 = v10[22];
    v12 = v10[23];
    __swift_project_boxed_opaque_existential_0(v10 + 19, v11);
    (*(v12 + 56))(v11, v12);
    (*(v3 + 16))(v6, v8, v2);
    v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v14 = swift_allocObject();
    (*(v3 + 32))(v14 + v13, v6, v2);
    v15 = (v14 + ((v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v15 = sub_226F99470;
    v15[1] = 0;
    sub_227669270();

    (*(v3 + 8))(v8, v2);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v3 + 56))(a1, v16, 1, v2);
}

uint64_t sub_227470E78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 40);

    sub_22766A740();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = v8[22];
    v10 = v8[23];
    __swift_project_boxed_opaque_existential_0(v8 + 19, v9);
    v11 = MEMORY[0x22AA8FAB0]();
    v12 = sub_226F42F44(v11);

    (*(v10 + 64))(v12, v9, v10);

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v14 - 8) + 56))(a1, v13, 1, v14);
}

uint64_t sub_22747107C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 40);

    sub_227667DA0();
    sub_227669280();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDEF0, qword_227686780);
  return (*(*(v5 - 8) + 56))(a1, v4, 1, v5);
}

uint64_t sub_22747116C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 40);

    v4 = swift_allocObject();
    *(v4 + 16) = "SeymourServices/MetricSystem.swift";
    *(v4 + 24) = 34;
    *(v4 + 32) = 2;
    *(v4 + 40) = 113;
    *(v4 + 48) = &unk_227686778;
    *(v4 + 56) = v3;
    sub_227669270();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

uint64_t sub_2274712A4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v2 = [objc_opt_self() standardUserDefaults];
    sub_227664860();
    v3 = sub_22766BFD0();

    [v2 removeObjectForKey_];

    sub_2276692A0();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v5 - 8) + 56))(a1, v4, 1, v5);
}

uint64_t sub_2274714A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_226F9972C(a1, v1);
}

uint64_t sub_227471560@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D38];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2274715E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_227668D10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276675C0();
  v7 = sub_227668D00();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v9;
  return result;
}

uint64_t sub_2274716C0(uint64_t a1)
{
  *(a1 + 24) = sub_227471728(&qword_2813A5600);
  result = sub_227471728(&unk_2813A55F0);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227471728(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2276675F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227471780()
{
  result = qword_27D7BDEF8;
  if (!qword_27D7BDEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDEF8);
  }

  return result;
}

uint64_t sub_2274717D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227663480();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v53 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  v15 = sub_22766B390();
  v59 = *(v15 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();

  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  v21 = os_log_type_enabled(v19, v20);
  v55 = a3;
  v58 = a2;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v54 = v15;
    v23 = v22;
    *v22 = 134349568;
    *(v22 + 4) = *(a1 + 16);
    *(v22 + 12) = 2050;
    *(v22 + 14) = *(a2 + 16);
    *(v22 + 22) = 2050;
    *(v22 + 24) = *(a3 + 16);

    _os_log_impl(&dword_226E8E000, v19, v20, "Handling AssetBundle sync event with %{public}ld inserted, %{public}ld updated, %{public}ld deleted", v23, 0x20u);
    v24 = v23;
    v15 = v54;
    MEMORY[0x22AA9A450](v24, -1, -1);
  }

  else
  {
  }

  v25 = a1;
  (*(v59 + 8))(v18, v15);
  v26 = a1 + 56;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a1 + 56);
  v30 = (v27 + 63) >> 6;
  v59 = v7 + 16;

  v32 = 0;
  if (v29)
  {
    while (1)
    {
      v33 = v32;
LABEL_12:
      v34 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      (*(v7 + 16))(v14, *(v25 + 48) + *(v7 + 72) * (v34 | (v33 << 6)), v6);
      sub_227471D38(0, v14);
      result = (*(v7 + 8))(v14, v6);
      if (!v29)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v33 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v33);
    ++v32;
    if (v29)
    {
      v32 = v33;
      goto LABEL_12;
    }
  }

  v35 = v58 + 56;
  v36 = 1 << *(v58 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v58 + 56);
  v39 = (v36 + 63) >> 6;

  v40 = 0;
  for (i = v55; v38; result = (*(v7 + 8))(v44, v6))
  {
    v42 = v40;
LABEL_22:
    v43 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v44 = v57;
    (*(v7 + 16))(v57, *(v58 + 48) + *(v7 + 72) * (v43 | (v42 << 6)), v6);
    sub_227471D38(0, v44);
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v42 >= v39)
    {

      v45 = 1 << *(i + 32);
      v46 = -1;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      v47 = v46 & *(i + 56);
      v48 = (v45 + 63) >> 6;

      for (j = 0; v47; result = (*(v7 + 8))(v52, v6))
      {
        v50 = j;
LABEL_32:
        v51 = __clz(__rbit64(v47));
        v47 &= v47 - 1;
        v52 = v56;
        (*(v7 + 16))(v56, *(i + 48) + *(v7 + 72) * (v51 | (v50 << 6)), v6);
        sub_227471D38(1, v52);
      }

      while (1)
      {
        v50 = j + 1;
        if (__OFADD__(j, 1))
        {
          goto LABEL_37;
        }

        if (v50 >= v48)
        {
        }

        v47 = *(i + 56 + 8 * v50);
        ++j;
        if (v47)
        {
          j = v50;
          goto LABEL_32;
        }
      }
    }

    v38 = *(v35 + 8 * v42);
    ++v40;
    if (v38)
    {
      v40 = v42;
      goto LABEL_22;
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_227471D38(int a1, _BYTE *a2)
{
  LODWORD(v196) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v187 = *(v4 - 8);
  v188 = v4;
  v5 = *(v187 + 64);
  MEMORY[0x28223BE20](v4);
  v186 = &v176[-v6];
  v199 = sub_22766B390();
  v7 = *(v199 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v199);
  v11 = &v176[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v198 = &v176[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v194 = &v176[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v190 = &v176[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v185 = &v176[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v184 = &v176[-v21];
  MEMORY[0x28223BE20](v20);
  v183 = &v176[-v22];
  v23 = sub_227663480();
  v24 = *(v23 - 8);
  v200 = v23;
  v201 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v176[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v176[-v30];
  v32 = MEMORY[0x28223BE20](v29);
  v193 = &v176[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v189 = &v176[-v35];
  v36 = MEMORY[0x28223BE20](v34);
  v191 = &v176[-v37];
  v38 = MEMORY[0x28223BE20](v36);
  v182 = &v176[-v39];
  v40 = MEMORY[0x28223BE20](v38);
  v181 = &v176[-v41];
  MEMORY[0x28223BE20](v40);
  v43 = &v176[-v42];
  v195 = sub_227669B90();
  v44 = *(v195 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v195);
  v47 = &v176[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = v2[65];
  v197 = v2;
  v49 = *(*__swift_project_boxed_opaque_existential_0(v2 + 62, v48) + 32);
  sub_2276696A0();
  v179 = v44;
  v70 = v7;
  v178 = v11;
  v72 = v203;
  v71 = v204;
  v73 = a2;
  v74 = sub_227663420();
  if (!v71)
  {
    v180 = v72;
    v95 = v70;
    v96 = v179;

    sub_227663430();

    v50 = sub_2276633F0();
    if (v51)
    {
      v192 = v95;
      v71 = 0;
      v52 = 0;
      v53 = v50;
      goto LABEL_4;
    }

    v58 = v95;
    goto LABEL_8;
  }

  if (v72 == v74 && v71 == v75)
  {
    v76 = 1;
  }

  else
  {
    v76 = sub_22766D190();
  }

  v192 = v70;

  if (v72 == sub_227663430() && v71 == v97)
  {

    v96 = v179;
    if ((v76 & 1) == 0)
    {
      v98 = sub_2276633F0();
      if (v99)
      {
        v53 = v98;
        goto LABEL_41;
      }

LABEL_45:
      v58 = v192;
LABEL_8:

      v59 = v198;
      sub_22766A6C0();
      v60 = v200;
      v61 = v201;
      (*(v201 + 16))(v31, v73, v200);
      v62 = sub_22766B380();
      v63 = sub_22766C8B0();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v203 = v65;
        *v64 = 141558274;
        *(v64 + 4) = 1752392040;
        *(v64 + 12) = 2080;
        sub_227473130();
        v66 = sub_22766D140();
        v68 = v67;
        (*(v61 + 8))(v31, v60);
        v69 = sub_226E97AE8(v66, v68, &v203);

        *(v64 + 14) = v69;
        _os_log_impl(&dword_226E8E000, v62, v63, "Sync - Ignoring sync event with unknown load status: %{mask.hash}s", v64, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x22AA9A450](v65, -1, -1);
        MEMORY[0x22AA9A450](v64, -1, -1);

        return (*(v58 + 8))(v198, v199);
      }

      else
      {

        (*(v61 + 8))(v31, v60);
        return (*(v58 + 8))(v59, v199);
      }
    }
  }

  else
  {
    v100 = v76;
    v101 = sub_22766D190();

    v177 = v100;
    v102 = v100 & v101;
    v96 = v179;
    if ((v102 & 1) == 0)
    {
      v129 = sub_2276633F0();
      if (v130)
      {
        v53 = v129;
        if (((v177 ^ 1) & v101 & 1) == 0)
        {
          v180 = v72;
          v52 = 0;
          goto LABEL_4;
        }

LABEL_41:
        v80 = v192;
        v131 = sub_227131384(v53, &unk_283A94328);
        v180 = v72;
        if (!v131)
        {
LABEL_32:
          v82 = v200;
          v81 = v201;
LABEL_34:
          v83 = v194;
          sub_22766A6C0();
          v84 = v193;
          (*(v81 + 16))(v193, v73, v82);

          v85 = sub_22766B380();
          v118 = sub_22766C8B0();

          if (os_log_type_enabled(v85, v118))
          {
            v119 = swift_slowAlloc();
            v201 = swift_slowAlloc();
            v202[0] = v201;
            *v119 = 136446722;
            v203 = v180;
            v204 = v71;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
            v120 = sub_22766CB80();
            v122 = v121;

            v123 = sub_226E97AE8(v120, v122, v202);

            *(v119 + 4) = v123;
            *(v119 + 12) = 2160;
            *(v119 + 14) = 1752392040;
            *(v119 + 22) = 2080;
            sub_227473130();
            v124 = sub_22766D140();
            v126 = v125;
            (*(v81 + 8))(v84, v82);
            v127 = sub_226E97AE8(v124, v126, v202);

            *(v119 + 24) = v127;
            _os_log_impl(&dword_226E8E000, v85, v118, "Sync - Ingoring event. Device %{public}s isn't downloading device or state is not actionable for bundle %{mask.hash}s", v119, 0x20u);
            v128 = v201;
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v128, -1, -1);
            MEMORY[0x22AA9A450](v119, -1, -1);

            return (*(v80 + 8))(v194, v199);
          }

          goto LABEL_37;
        }

        v52 = 1;
LABEL_4:
        v54 = v197[67];
        v55 = v197[68];
        swift_getObjectType();
        if (v196)
        {
          sub_227663470();
          sub_227669B80();
          v56 = v195;
          sub_2276699D0();
          v96[1](v47, v56);
          if (v52)
          {
          }

          v80 = v192;
          goto LABEL_32;
        }

        v196 = v53;
        v77 = *(v201 + 16);
        v198 = v73;
        v179 = v77;
        v77(v43);
        sub_227669B80();
        v78 = v195;
        sub_2276699D0();
        v96[1](v47, v78);
        if ((v52 & 1) == 0)
        {
          v80 = v192;
          v82 = v200;
          v81 = v201;
          v73 = v198;
          goto LABEL_34;
        }

        v79 = v191;
        v80 = v192;
        v82 = v200;
        v81 = v201;
        if (v196 <= 8u)
        {
          if (((1 << v196) & 0x17A) != 0)
          {
            v83 = v190;
            sub_22766A6C0();
            v84 = v189;
            (v179)(v189, v198, v82);
            v85 = sub_22766B380();
            v86 = sub_22766C8B0();
            if (os_log_type_enabled(v85, v86))
            {
              v87 = v83;
              v88 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              v203 = v89;
              *v88 = 141558274;
              *(v88 + 4) = 1752392040;
              *(v88 + 12) = 2080;
              sub_227473130();
              v90 = sub_22766D140();
              v91 = v84;
              v93 = v92;
              (*(v81 + 8))(v91, v82);
              v94 = sub_226E97AE8(v90, v93, &v203);

              *(v88 + 14) = v94;
              _os_log_impl(&dword_226E8E000, v85, v86, "Sync - Ignoring sync event because remote action is not actionable: %{mask.hash}s", v88, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v89);
              MEMORY[0x22AA9A450](v89, -1, -1);
              MEMORY[0x22AA9A450](v88, -1, -1);

              return (*(v80 + 8))(v87, v199);
            }

LABEL_37:

            (*(v81 + 8))(v84, v82);
            return (*(v80 + 8))(v83, v199);
          }

          if (v196 == 2)
          {
            v132 = v184;
            sub_22766A6C0();
            v133 = v182;
            (v179)(v182, v198, v82);
            v134 = sub_22766B380();
            v135 = sub_22766C8B0();
            if (os_log_type_enabled(v134, v135))
            {
              v136 = v132;
              v137 = swift_slowAlloc();
              v138 = swift_slowAlloc();
              v203 = v138;
              *v137 = 141558274;
              *(v137 + 4) = 1752392040;
              *(v137 + 12) = 2080;
              sub_227473130();
              v139 = sub_22766D140();
              v140 = v133;
              v142 = v141;
              (*(v81 + 8))(v140, v82);
              v143 = sub_226E97AE8(v139, v142, &v203);

              *(v137 + 14) = v143;
              _os_log_impl(&dword_226E8E000, v134, v135, "Sync - Remote device attempting to cancel synced bundle: %{mask.hash}s", v137, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v138);
              MEMORY[0x22AA9A450](v138, -1, -1);
              MEMORY[0x22AA9A450](v137, -1, -1);

              (*(v80 + 8))(v136, v199);
            }

            else
            {

              (*(v81 + 8))(v133, v82);
              (*(v80 + 8))(v132, v199);
            }

            v168 = v187;
            v167 = v188;
            v169 = v186;
            v170 = *__swift_project_boxed_opaque_existential_0(v197 + 7, v197[10]);
            sub_227497B7C(v198, v169);
            v171 = sub_227669290();
            v172 = swift_allocObject();
            *(v172 + 16) = 0;
            *(v172 + 24) = 0;
            v173 = sub_226EB4544;
LABEL_61:
            v171(v173, v172);

            return (*(v168 + 8))(v169, v167);
          }

          if (v196 == 7)
          {
            v144 = v185;
            sub_22766A6C0();
            (v179)(v79, v198, v82);
            v145 = v144;
            v146 = sub_22766B380();
            v147 = sub_22766C8B0();
            if (os_log_type_enabled(v146, v147))
            {
              v148 = swift_slowAlloc();
              v149 = swift_slowAlloc();
              v203 = v149;
              *v148 = 141558274;
              *(v148 + 4) = 1752392040;
              *(v148 + 12) = 2080;
              sub_227473130();
              v150 = sub_22766D140();
              v151 = v79;
              v153 = v152;
              (*(v81 + 8))(v151, v82);
              v154 = sub_226E97AE8(v150, v153, &v203);

              *(v148 + 14) = v154;
              _os_log_impl(&dword_226E8E000, v146, v147, "Sync - Remote device attempting to cancel synced bundle: %{mask.hash}s", v148, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v149);
              MEMORY[0x22AA9A450](v149, -1, -1);
              MEMORY[0x22AA9A450](v148, -1, -1);
            }

            else
            {

              (*(v81 + 8))(v79, v82);
            }

            (*(v80 + 8))(v145, v199);
            v168 = v187;
            v167 = v188;
            v169 = v186;
            v174 = *__swift_project_boxed_opaque_existential_0(v197 + 12, v197[15]);
            sub_226F25E48(v198, v169);
            v171 = sub_227669290();
            v172 = swift_allocObject();
            *(v172 + 16) = 0;
            *(v172 + 24) = 0;
            v173 = sub_226E9F7B0;
            goto LABEL_61;
          }
        }

        v155 = v183;
        sub_22766A6C0();
        v156 = v181;
        (v179)(v181, v198, v82);
        v157 = v155;
        v158 = sub_22766B380();
        v159 = sub_22766C8B0();
        if (os_log_type_enabled(v158, v159))
        {
          v160 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v203 = v161;
          *v160 = 141558274;
          *(v160 + 4) = 1752392040;
          *(v160 + 12) = 2080;
          sub_227473130();
          v162 = sub_22766D140();
          v163 = v156;
          v165 = v164;
          (*(v81 + 8))(v163, v82);
          v166 = sub_226E97AE8(v162, v165, &v203);

          *(v160 + 14) = v166;
          _os_log_impl(&dword_226E8E000, v158, v159, "Sync - Remote device reqesting load with synced bundle: %{mask.hash}s", v160, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v161);
          MEMORY[0x22AA9A450](v161, -1, -1);
          MEMORY[0x22AA9A450](v160, -1, -1);
        }

        else
        {

          (*(v81 + 8))(v156, v82);
        }

        (*(v80 + 8))(v157, v199);
        v168 = v187;
        v167 = v188;
        v169 = v186;
        v175 = *__swift_project_boxed_opaque_existential_0(v197 + 7, v197[10]);
        sub_227496AB8(v198, v169);
        v171 = sub_227669290();
        v172 = swift_allocObject();
        *(v172 + 16) = 0;
        *(v172 + 24) = 0;
        v173 = sub_226EB4544;
        goto LABEL_61;
      }

      goto LABEL_45;
    }
  }

  v103 = v178;
  sub_22766A6C0();
  v104 = v201;
  v105 = v28;
  v106 = v28;
  v107 = v73;
  v108 = v103;
  v109 = v200;
  (*(v201 + 16))(v106, v107, v200);
  v110 = sub_22766B380();
  v111 = sub_22766C8B0();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v203 = v113;
    *v112 = 141558274;
    *(v112 + 4) = 1752392040;
    *(v112 + 12) = 2080;
    sub_227473130();
    v114 = sub_22766D140();
    v116 = v115;
    (*(v104 + 8))(v105, v109);
    v117 = sub_226E97AE8(v114, v116, &v203);

    *(v112 + 14) = v117;
    _os_log_impl(&dword_226E8E000, v110, v111, "Sync - Ignoring sync event because action is local for bundle: %{mask.hash}s", v112, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v113);
    MEMORY[0x22AA9A450](v113, -1, -1);
    MEMORY[0x22AA9A450](v112, -1, -1);
  }

  else
  {

    (*(v104 + 8))(v105, v109);
  }

  return (*(v192 + 8))(v108, v199);
}

unint64_t sub_227473130()
{
  result = qword_27D7B85C0;
  if (!qword_27D7B85C0)
  {
    sub_227663480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B85C0);
  }

  return result;
}

uint64_t sub_227473188(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227473254, 0, 0);
}

uint64_t sub_227473254()
{
  v1 = v0[3];
  v2 = *(sub_2276654D0() + 16);

  if (v2)
  {
    v3 = v0[7];
    v4 = v0[3];
    v5 = __swift_project_boxed_opaque_existential_0((v0[4] + 176), *(v0[4] + 200));
    v6 = *__swift_project_boxed_opaque_existential_0((*v5 + 16), *(*v5 + 40));
    sub_2273229A4(13, v4, v3);
    v7 = swift_task_alloc();
    v0[8] = v7;
    *(v7 + 16) = "SeymourServices/CatalogLockupBuilder.swift";
    *(v7 + 24) = 42;
    *(v7 + 32) = 2;
    *(v7 + 40) = 55;
    *(v7 + 48) = v3;
    v8 = *(MEMORY[0x277D85A40] + 4);
    v9 = swift_task_alloc();
    v0[9] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
    *v9 = v0;
    v9[1] = sub_227473404;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22747EB2C, v7, v10);
  }

  else
  {
    v11 = v0[7];

    v12 = v0[1];
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_227473404()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[8];
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2274736F8, 0, 0);
  }

  else
  {
    v7 = v2[6];
    v6 = v2[7];
    v8 = v2[5];
    v9 = v2[2];
    v2[11] = v9;

    (*(v7 + 8))(v6, v8);
    v10 = swift_task_alloc();
    v2[12] = v10;
    *v10 = v4;
    v10[1] = sub_2274735D0;
    v11 = v2[4];

    return sub_227473854(v9);
  }
}

uint64_t sub_2274735D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_2274737E8;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_227473774;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2274736F8()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_227473774()
{
  v1 = v0[11];

  v2 = v0[14];
  v3 = v0[7];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_2274737E8()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_227473854(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227473914, 0, 0);
}

uint64_t sub_227473914()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  sub_22766A730();
  sub_22766B370();
  (*(v2 + 8))(v1, v4);
  v6 = v3[46];
  __swift_project_boxed_opaque_existential_0(v3 + 42, v3[45]);
  *(v0 + 104) = 14;
  *(v0 + 64) = sub_226F19410();
  *(v0 + 72) = sub_226F19464();
  sub_22766A130();
  v7 = v3[40];
  v8 = v3[41];
  __swift_project_boxed_opaque_existential_0(v3 + 37, v7);
  v9 = swift_allocObject();
  *(v0 + 80) = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v3;
  v10 = *(v8 + 24);

  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  *v12 = v0;
  v12[1] = sub_227473B94;

  return (v15)(v0 + 16, sub_22747B6EC, v9, v13, v7, v8);
}

uint64_t sub_227473B94()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_227473DBC;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_227473CB0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227473CB0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = v4[46];
  __swift_project_boxed_opaque_existential_0(v4 + 42, v4[45]);
  *(v0 + 106) = 14;
  sub_22766A120();

  v7 = *(v0 + 8);

  return v7(v5);
}

uint64_t sub_227473DBC()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 32);

  v6 = v5[46];
  __swift_project_boxed_opaque_existential_0(v5 + 42, v5[45]);
  *(v0 + 105) = 14;
  sub_22766A120();

  v7 = *(v0 + 8);
  v8 = *(v0 + 96);

  return v7();
}

uint64_t sub_227473EC4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA488, &unk_227678CE0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_227663590();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v8 = sub_227663DD0();
  v2[13] = v8;
  v9 = *(v8 - 8);
  v2[14] = v9;
  v10 = *(v9 + 64) + 15;
  v2[15] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v2[16] = v11;
  v12 = *(v11 - 8);
  v2[17] = v12;
  v13 = *(v12 + 64) + 15;
  v2[18] = swift_task_alloc();
  v14 = sub_227665A40();
  v2[19] = v14;
  v15 = *(v14 - 8);
  v2[20] = v15;
  v16 = *(v15 + 64) + 15;
  v2[21] = swift_task_alloc();
  v17 = sub_227663AB0();
  v2[22] = v17;
  v18 = *(v17 - 8);
  v2[23] = v18;
  v19 = *(v18 + 64) + 15;
  v2[24] = swift_task_alloc();
  v20 = sub_2276675A0();
  v2[25] = v20;
  v21 = *(v20 - 8);
  v2[26] = v21;
  v22 = *(v21 + 64) + 15;
  v2[27] = swift_task_alloc();
  v23 = sub_227669480();
  v2[28] = v23;
  v24 = *(v23 - 8);
  v2[29] = v24;
  v25 = *(v24 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v26 = sub_2276654E0();
  v2[32] = v26;
  v27 = *(v26 - 8);
  v2[33] = v27;
  v2[34] = *(v27 + 64);
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274742B0, 0, 0);
}

uint64_t sub_2274742B0()
{
  v1 = v0[4];
  v2 = *(sub_2276654D0() + 16);

  if (v2)
  {
    v4 = v0[34];
    v3 = v0[35];
    v5 = v0[32];
    v6 = v0[33];
    v7 = v0[4];
    v8 = v0[5];
    v9 = v8[40];
    v10 = v8[41];
    __swift_project_boxed_opaque_existential_0(v8 + 37, v9);
    (*(v6 + 16))(v3, v7, v5);
    v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v12 = swift_allocObject();
    v0[36] = v12;
    (*(v6 + 32))(v12 + v11, v3, v5);
    *(v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
    v13 = *(v10 + 24);

    v30 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[37] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB30, &unk_227686AE0);
    *v15 = v0;
    v15[1] = sub_2274745A8;

    return (v30)(v0 + 2, sub_22747EA54, v12, v16, v9, v10);
  }

  else
  {
    v18 = v0[35];
    v19 = v0[30];
    v20 = v0[31];
    v21 = v0[27];
    v22 = v0[24];
    v23 = v0[21];
    v24 = v0[18];
    v25 = v0[15];
    v27 = v0[11];
    v26 = v0[12];
    v31 = v0[8];
    v32 = v0[7];
    v33 = v0[6];

    v28 = v0[1];
    v29 = MEMORY[0x277D84F90];

    return v28(v29);
  }
}

uint64_t sub_2274745A8()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v7 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_227475394;
  }

  else
  {
    v5 = *(v2 + 288);

    v4 = sub_2274746C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2274746C4()
{
  v73 = v0;
  v1 = v0[2];
  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;
  v69 = v0[29];
  v62 = v0[23];
  v64 = (v69 + 8);
  v56 = v0[26];
  v7 = v0[38];

  v16 = 0;
  v57 = MEMORY[0x277D84F90];
  v58 = v6;
  v60 = v1;
  v61 = v0;
  v59 = v1 + 56;
  while (1)
  {
    v17 = v16;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v63 = *(v69 + 16);
    v63(v0[31], *(v1 + 48) + *(v69 + 72) * (__clz(__rbit64(v5)) | (v16 << 6)), v0[28]);
    v18 = sub_227669460();
    v19 = *(v18 + 16);
    if (v19)
    {
      v66 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0E0, &qword_227677F08);
      v20 = *(v62 + 72);
      v21 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v22 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v22);
      if (!v20)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return MEMORY[0x2822008A0](v8, v9, v10, v11, v12, v13, v14, v15);
      }

      if (v8 - v21 == 0x8000000000000000 && v20 == -1)
      {
        goto LABEL_38;
      }

      v22[2] = v19;
      v22[3] = 2 * ((v8 - v21) / v20);
      v65 = sub_2274CE0FC(v72, v22 + v21, v19, v18);

      v8 = sub_226EBB21C();
      if (v65 != v19)
      {
        goto LABEL_37;
      }

      v1 = v60;
      v0 = v61;
      v6 = v58;
      v2 = v59;
      v7 = v66;
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    v72[0] = v22;
    sub_22747C470(v72);
    if (v7)
    {
    }

    v5 &= v5 - 1;

    if (v72[0][2])
    {
      v24 = v0[30];
      v25 = v0[28];
      v67 = v0[27];
      v26 = v0[24];
      v27 = v0[22];
      v28 = v0[31];
      (*(v62 + 16))(v26, v72[0] + ((*(v62 + 80) + 32) & ~*(v62 + 80)), v27);

      sub_227663A60();
      (*(v62 + 8))(v26, v27);
      v63(v24, v28, v25);
      sub_227667590();
      (*v64)(v28, v25);
      v29 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_2273A6C74(0, v57[2] + 1, 1, v57);
      }

      v31 = v29[2];
      v30 = v29[3];
      v57 = v29;
      v1 = v60;
      v0 = v61;
      v6 = v58;
      v2 = v59;
      if (v31 >= v30 >> 1)
      {
        v57 = sub_2273A6C74(v30 > 1, v31 + 1, 1, v29);
      }

      v32 = v61[27];
      v33 = v61[25];
      v57[2] = v31 + 1;
      v8 = (*(v56 + 32))(v57 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v31, v32, v33);
      v7 = 0;
    }

    else
    {
      (*v64)(v0[31], v0[28]);

      v7 = 0;
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v16 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v16);
    ++v17;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v57[2])
  {
    v34 = v0[21];
    v35 = v0[18];
    v36 = v0[4];
    v37 = v0[5];
    sub_2276654C0();
    sub_227665A30();
    v38 = __swift_project_boxed_opaque_existential_0((v37 + 176), *(v37 + 200));
    v39 = *__swift_project_boxed_opaque_existential_0((*v38 + 16), *(*v38 + 40));
    sub_227322D5C(3, v34, v35);
    v40 = swift_task_alloc();
    v0[39] = v40;
    *(v40 + 16) = "SeymourServices/CatalogLockupBuilder.swift";
    *(v40 + 24) = 42;
    *(v40 + 32) = 2;
    *(v40 + 40) = 81;
    *(v40 + 48) = v35;
    v41 = *(MEMORY[0x277D85A40] + 4);
    v42 = swift_task_alloc();
    v0[40] = v42;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
    *v42 = v0;
    v42[1] = sub_227474D48;
    v13 = sub_22747EAFC;
    v8 = (v0 + 3);
    v12 = 0x8000000227693B00;
    v9 = 0;
    v10 = 0;
    v11 = 0xD000000000000013;
    v14 = v40;

    return MEMORY[0x2822008A0](v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v43 = v0[35];
  v44 = v0[30];
  v45 = v0[31];
  v46 = v0[27];
  v47 = v0[24];
  v48 = v0[21];
  v49 = v0[18];
  v50 = v0[15];
  v52 = v0[11];
  v51 = v0[12];
  v68 = v0[8];
  v70 = v0[7];
  v71 = v0[6];

  v53 = v0[1];
  v54 = MEMORY[0x277D84F90];

  return v53(v54);
}

uint64_t sub_227474D48()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  v2[41] = v0;

  v5 = v2[39];
  if (v0)
  {

    v6 = sub_22747524C;
  }

  else
  {
    v8 = v2[17];
    v7 = v2[18];
    v9 = v2[16];
    v2[42] = v2[3];

    (*(v8 + 8))(v7, v9);
    v6 = sub_227474EA8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227474EA8()
{
  v1 = v0[42];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v4 = v0[10];
    v48 = MEMORY[0x277D84F90];
    sub_226F20528(0, v2, 0);
    v47 = v48;
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v39 = *(v4 + 56);
    v40 = v5;
    v41 = v3;
    v38 = (v4 - 8);
    do
    {
      v43 = v0[15];
      v45 = v2;
      v8 = v0[11];
      v7 = v0[12];
      v10 = v0[8];
      v9 = v0[9];
      v12 = v0[6];
      v11 = v0[7];
      v40(v7, v6, v9);
      v40(v8, v7, v9);
      v13 = sub_227662750();
      v14 = *(*(v13 - 8) + 56);
      v14(v10, 1, 1, v13);
      v15 = sub_227665780();
      (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
      v14(v11, 1, 1, v13);
      sub_227663D70();
      (*v38)(v7, v9);
      v17 = *(v47 + 16);
      v16 = *(v47 + 24);
      v18 = v47;
      if (v17 >= v16 >> 1)
      {
        sub_226F20528(v16 > 1, v17 + 1, 1);
        v18 = v47;
      }

      v47 = v18;
      v19 = v0[15];
      v20 = v0[13];
      *(v18 + 16) = v17 + 1;
      (*(v41 + 32))(v18 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v17, v19, v20);
      v6 += v39;
      v2 = v45 - 1;
    }

    while (v45 != 1);
    v21 = v0[42];
    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  else
  {
    v23 = v0[20];
    v22 = v0[21];
    v24 = v0[19];
    v25 = v0[42];

    (*(v23 + 8))(v22, v24);
    v47 = MEMORY[0x277D84F90];
  }

  v26 = v0[35];
  v27 = v0[30];
  v28 = v0[31];
  v29 = v0[27];
  v30 = v0[24];
  v31 = v0[21];
  v32 = v0[18];
  v33 = v0[15];
  v35 = v0[11];
  v34 = v0[12];
  v42 = v0[8];
  v44 = v0[7];
  v46 = v0[6];

  v36 = v0[1];

  return v36(v47);
}

uint64_t sub_22747524C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[35];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[11];
  v13 = v0[12];
  v16 = v0[8];
  v17 = v0[7];
  v18 = v0[6];
  v19 = v0[41];

  v14 = v0[1];

  return v14();
}

uint64_t sub_227475394()
{
  v1 = v0[36];

  v2 = v0[35];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[21];
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[11];
  v11 = v0[12];
  v14 = v0[8];
  v15 = v0[7];
  v16 = v0[6];
  v17 = v0[38];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2274754B0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v3 = v2;
  v36 = sub_227666F60();
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276654D0();
  v10 = *(v9 + 16);
  if (v10)
  {
    v29 = a1;
    v30 = v2;
    v31 = a2;
    v37 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v10, 0);
    v11 = v37;
    v13 = *(v6 + 16);
    v12 = v6 + 16;
    v14 = *(v12 + 64);
    v28[1] = v9;
    v15 = v9 + ((v14 + 32) & ~v14);
    v33 = *(v12 + 56);
    v34 = v13;
    v32 = (v12 - 8);
    do
    {
      v16 = v35;
      v17 = v36;
      v34(v35, v15, v36);
      v18 = sub_227666F40();
      v20 = v19;
      (*v32)(v16, v17);
      v37 = v11;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1EF90(v21 > 1, v22 + 1, 1);
        v11 = v37;
      }

      *(v11 + 16) = v22 + 1;
      v23 = v11 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v15 += v33;
      --v10;
    }

    while (v10);

    v3 = v30;
    a2 = v31;
    a1 = v29;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v24 = sub_226F3E6A8(v11);

  v25 = v3;
  v26 = sub_227519DAC(v24, a1);

  if (!v25)
  {
    *a2 = v26;
  }

  return result;
}

char *sub_2274756EC(uint64_t a1, void *a2)
{
  v6 = *(*__swift_project_boxed_opaque_existential_0((v2 + 256), *(v2 + 280)) + 32);
  sub_2276696A0();
  if (v3)
  {

    v7 = 0;
    v8 = 0;
    v100 = 0;
  }

  else
  {
    v100 = 0;
    v7 = v106[0];
    v8 = v106[1];
  }

  v99 = v7;
  v9 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = v10;
  v19 = v11;

  sub_22766A070();
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = v12;
  *(v17 + 40) = v13;
  swift_getKeyPath();
  v20 = sub_227230638(a1);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v106[0] = v20;
  v21 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v108 = v21;
  v22 = sub_22766C820();
  sub_226E93170(v106, v104, &unk_27D7BC990, &qword_227670A30);
  v23 = v105;
  if (v105)
  {
    v24 = __swift_project_boxed_opaque_existential_0(v104, v105);
    v25 = *(v23 - 8);
    v26 = *(v25 + 64);
    v27 = MEMORY[0x28223BE20](v24);
    v29 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v29, v27);
    v30 = sub_22766D170();
    (*(v25 + 8))(v29, v23);
    __swift_destroy_boxed_opaque_existential_0(v104);
  }

  else
  {
    v30 = 0;
  }

  v102 = objc_opt_self();
  v31 = [v102 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  [objc_allocWithZone(v101) initWithLeftExpression:v22 rightExpression:v31 modifier:0 type:10 options:0];

  sub_226E97D1C(v106, &unk_27D7BC990, &qword_227670A30);
  v32 = qword_2813B2078;
  swift_beginAccess();
  v33 = sub_22766A080();
  v35 = v34;
  MEMORY[0x22AA985C0]();
  if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v33(v106, 0);
  swift_endAccess();

  swift_getKeyPath();
  v36 = v99;
  v103[0] = v99;
  v103[1] = v8;
  if (v8)
  {

    v37 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_226EB3F78(0, *(v37 + 2) + 1, 1, v37);
    }

    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_226EB3F78((v38 > 1), v39 + 1, 1, v37);
    }

    *(v37 + 2) = v39 + 1;
    v40 = &v37[16 * v39];
    *(v40 + 4) = v36;
    *(v40 + 5) = v8;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  sub_226E97D1C(v103, &qword_27D7BBC30, &unk_2276720D0);
  v41 = sub_227073F2C(v37);

  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v106[0] = v41;

  v42 = sub_22766C820();
  sub_226E93170(v106, v104, &unk_27D7BC990, &qword_227670A30);
  v43 = v105;
  if (v105)
  {
    v44 = __swift_project_boxed_opaque_existential_0(v104, v105);
    v45 = *(v43 - 8);
    v46 = *(v45 + 64);
    v47 = MEMORY[0x28223BE20](v44);
    v49 = &v99 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v45 + 16))(v49, v47);
    v50 = sub_22766D170();
    (*(v45 + 8))(v49, v43);
    __swift_destroy_boxed_opaque_existential_0(v104);
  }

  else
  {
    v50 = 0;
  }

  v51 = [v102 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v101) initWithLeftExpression:v42 rightExpression:v51 modifier:0 type:10 options:0];

  sub_226E97D1C(v106, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v52 = sub_22766A080();
  v54 = v53;
  MEMORY[0x22AA985C0]();
  if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v97 = *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  v99 = v32;
  sub_22766C3A0();
  v52(v106, 0);
  swift_endAccess();

  swift_getKeyPath();
  v55 = sub_227663450();
  v56 = MEMORY[0x277D83B88];
  v107 = MEMORY[0x277D83B88];
  v106[0] = v55;

  v57 = sub_22766C820();
  sub_226E93170(v106, v104, &unk_27D7BC990, &qword_227670A30);
  v58 = v105;
  if (v105)
  {
    v59 = __swift_project_boxed_opaque_existential_0(v104, v105);
    v60 = *(v58 - 8);
    v61 = *(v60 + 64);
    v62 = MEMORY[0x28223BE20](v59);
    v64 = &v99 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v60 + 16))(v64, v62);
    v65 = sub_22766D170();
    (*(v60 + 8))(v64, v58);
    __swift_destroy_boxed_opaque_existential_0(v104);
  }

  else
  {
    v65 = 0;
  }

  v66 = [v102 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v67 = [objc_allocWithZone(v101) initWithLeftExpression:v57 rightExpression:v66 modifier:0 type:4 options:0];

  sub_226E97D1C(v106, &unk_27D7BC990, &qword_227670A30);
  swift_getKeyPath();
  v68 = sub_227663450();
  v107 = v56;
  v106[0] = v68;

  v69 = sub_22766C820();
  sub_226E93170(v106, v104, &unk_27D7BC990, &qword_227670A30);
  v70 = v105;
  if (v105)
  {
    v71 = __swift_project_boxed_opaque_existential_0(v104, v105);
    v72 = *(v70 - 8);
    v73 = *(v72 + 64);
    v74 = MEMORY[0x28223BE20](v71);
    v76 = &v99 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v72 + 16))(v76, v74);
    v77 = sub_22766D170();
    (*(v72 + 8))(v76, v70);
    __swift_destroy_boxed_opaque_existential_0(v104);
  }

  else
  {
    v77 = 0;
  }

  v78 = [v102 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v79 = [objc_allocWithZone(v101) initWithLeftExpression:v69 rightExpression:v78 modifier:0 type:4 options:0];

  sub_226E97D1C(v106, &unk_27D7BC990, &qword_227670A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_2276756A0;
  *(v80 + 32) = v67;
  *(v80 + 40) = v79;
  v81 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF20, &qword_2276869F0));
  sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
  v82 = v67;
  v83 = v79;
  v84 = sub_22766C2B0();

  v85 = [v81 initWithType:2 subpredicates:v84];

  swift_beginAccess();
  v86 = v85;
  v87 = sub_22766A080();
  v89 = v88;
  MEMORY[0x22AA985C0]();
  if (*((*v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v98 = *((*v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v87(v106, 0);
  swift_endAccess();

  v90 = sub_2272328B8(100);
  swift_setDeallocating();

  v91 = *(v17 + 40);

  v92 = qword_2813B2078;
  v93 = sub_22766A100();
  (*(*(v93 - 8) + 8))(v17 + v92, v93);
  v94 = *(*v17 + 48);
  v95 = *(*v17 + 52);
  swift_deallocClassInstance();
  return v90;
}

uint64_t sub_227476338(uint64_t *a1, char *a2)
{
  v77 = a2;
  v68 = sub_2276638D0();
  v71 = *(v68 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v67 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v66 - v9;
  v10 = sub_227663FA0();
  v72 = *(v10 - 8);
  v73 = v10;
  v11 = *(v72 + 64);
  MEMORY[0x28223BE20](v10);
  v78 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227663DD0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1;
  v19 = *a1;
  v20 = *(*a1 + 16);
  v74 = *a1;
  if (v20)
  {
    v22 = *(v14 + 16);
    v21 = v14 + 16;
    v23 = v19 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v81 = *(v21 + 56);
    v82 = v22;
    v80 = (v21 - 8);
    v83 = MEMORY[0x277D84F90];
    v79 = v13;
    do
    {
      v24 = v21;
      (v82)(v18, v23, v13, v16);
      v25 = sub_227663D90();
      v27 = v26;
      v84 = v25;
      v85 = v26;
      v29 = v28 & 1;
      v86 = v28 & 1;
      v87 = 8;
      sub_22747C41C();
      v30 = v13;
      sub_227125DE8();
      v31 = sub_227663B30();
      sub_226EB2DFC(v25, v27, v29);
      if (v31)
      {
        v32 = sub_227663D80();
        v34 = v33;
        (*v80)(v18, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_226EB3F78(0, *(v83 + 2) + 1, 1, v83);
        }

        v21 = v24;
        v36 = *(v83 + 2);
        v35 = *(v83 + 3);
        if (v36 >= v35 >> 1)
        {
          v83 = sub_226EB3F78((v35 > 1), v36 + 1, 1, v83);
        }

        v37 = v83;
        *(v83 + 2) = v36 + 1;
        v38 = &v37[16 * v36];
        *(v38 + 4) = v32;
        *(v38 + 5) = v34;
        v13 = v79;
      }

      else
      {
        (*v80)(v18, v30);
        v13 = v30;
        v21 = v24;
      }

      v23 += v81;
      --v20;
    }

    while (v20);
  }

  else
  {
    v83 = MEMORY[0x277D84F90];
  }

  v39 = sub_226F3E6A8(v83);

  v40 = v76;
  v41 = *__swift_project_boxed_opaque_existential_0((v76 + 216), *(v76 + 240));
  v43 = v77;
  v42 = v78;
  v44 = v75;
  sub_226EAF48C(v77, v78);
  if (v44)
  {
  }

  sub_227663F60();
  v47 = sub_22747D8C8(v74, v43, v46);
  v83 = sub_227518A98(v39, v43);
  v82 = sub_2274756EC(v39, v43);

  __swift_project_boxed_opaque_existential_0((v40 + 376), *(v40 + 400));
  v48 = off_283AA53C0;
  type metadata accessor for WorkoutPlanDataStore();
  v49 = v67;
  (v48)(v43);
  v50 = v71;
  v51 = v68;
  if ((*(v71 + 48))(v49, 1, v68) == 1)
  {
    sub_226E97D1C(v49, &unk_27D7BB920, &unk_227672480);
    v52 = sub_227664EC0();
    sub_226EAC0FC(&qword_28139B898, MEMORY[0x277D51210]);
    v53 = swift_allocError();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D511A8], v52);
    swift_willThrow();

    v55 = 1;
    v56 = v69;
  }

  else
  {
    v57 = v49;
    v58 = *(v50 + 32);
    v59 = v66;
    v58(v66, v57, v51);
    v60 = v58;
    v56 = v69;
    v60(v69, v59, v51);
    v50 = v71;
    v55 = 0;
  }

  v61 = (*(v50 + 56))(v56, v55, 1, v51);
  MEMORY[0x28223BE20](v61);
  *(&v66 - 8) = v56;
  *(&v66 - 7) = v40;
  *(&v66 - 6) = v42;
  *(&v66 - 5) = v43;
  v63 = v82;
  v62 = v83;
  *(&v66 - 4) = v47;
  *(&v66 - 3) = v62;
  *(&v66 - 2) = v63;
  v64 = v56;
  v65 = sub_2275F2BDC(sub_22747E154, (&v66 - 10), v74);

  *v70 = v65;
  sub_226E97D1C(v64, &unk_27D7BB920, &unk_227672480);
  return (*(v72 + 8))(v42, v73);
}

uint64_t sub_227476A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v151 = a8;
  v150 = a7;
  v148 = a6;
  v146 = a5;
  v145 = a4;
  v141 = a3;
  v159 = a2;
  v166 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF00, &qword_227686908);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v158 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v157 = &v141 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v156 = &v141 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF48, &unk_227682548);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v155 = &v141 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF08, &qword_227686910);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v165 = &v141 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v164 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v163 = &v141 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF10, &qword_227686918);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v162 = &v141 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA488, &unk_227678CE0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v161 = &v141 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v153 = &v141 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v152 = &v141 - v39;
  MEMORY[0x28223BE20](v40);
  v149 = &v141 - v41;
  MEMORY[0x28223BE20](v42);
  v147 = &v141 - v43;
  MEMORY[0x28223BE20](v44);
  v169 = &v141 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF18, qword_227686920);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v154 = &v141 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v167 = &v141 - v50;
  v144 = sub_2276627D0();
  v143 = *(v144 - 8);
  v51 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v142 = &v141 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v56 = &v141 - v55;
  v57 = sub_2276638D0();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  v61 = &v141 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v63 = sub_227663D90();
  v65 = v64;
  v170[0] = v63;
  v170[1] = v64;
  v67 = v66 & 1;
  LOBYTE(v171) = v66 & 1;
  v172 = 8;
  sub_22747C41C();
  sub_227125DE8();
  v68 = sub_227663B30();
  sub_226EB2DFC(v63, v65, v67);
  if ((v68 & 1) == 0)
  {
    v71 = sub_227663DD0();
    return (*(*(v71 - 8) + 16))(v166, v62, v71);
  }

  v160 = v62;
  sub_226E93170(v159, v56, &unk_27D7BB920, &unk_227672480);
  if ((*(v58 + 48))(v56, 1, v57) == 1)
  {
    sub_226E97D1C(v56, &unk_27D7BB920, &unk_227672480);
    v69 = MEMORY[0x277D84F90];
    v70 = v168;
LABEL_7:
    v82 = v160;
    v83 = v148;
    goto LABEL_8;
  }

  v73 = v61;
  (*(v58 + 32))(v61, v56, v57);
  v74 = sub_2276637D0();
  MEMORY[0x28223BE20](v74);
  v139 = v160;
  v75 = v168;
  v76 = sub_227469E40(sub_22747E1AC, v138, v74);

  v77 = v142;
  sub_2276637C0();
  sub_227663F70();
  v79 = v78;
  v80 = sub_226F491E8(v76);
  v81 = sub_22727FE50(v77, v80, v146, v79);
  if (v75)
  {

    (*(v143 + 8))(v77, v144);
    (*(v58 + 8))(v61, v57);

    v70 = 0;
    v69 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v132 = v81;
  (*(v143 + 8))(v77, v144);

  v133 = sub_2276637D0();

  v134 = sub_22747E674(v133, v132);
  v70 = 0;

  swift_bridgeObjectRelease_n();
  v135 = v134[2];
  if (!v135)
  {
    goto LABEL_34;
  }

  v69 = sub_2274CDB7C(v134[2], 0);
  v136 = *(sub_227665F20() - 8);
  v137 = sub_2274CF034(v170, &v69[(*(v136 + 80) + 32) & ~*(v136 + 80)], v135, v134);
  sub_226EBB21C();
  if (v137 != v135)
  {
    __break(1u);
LABEL_34:

    v69 = MEMORY[0x277D84F90];
  }

  v82 = v160;
  v83 = v148;
  (*(v58 + 8))(v73, v57);
LABEL_8:
  v84 = sub_227663DB0();
  v146 = v69;
  if (v85)
  {
    if (*(v83 + 16))
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_14;
  }

  v84 = sub_227663D80();
  if (!*(v83 + 16))
  {
    goto LABEL_13;
  }

LABEL_10:
  v86 = sub_226E92000(v84, v85);
  v88 = v87;

  if ((v88 & 1) == 0)
  {
LABEL_14:
    v148 = 0;
    goto LABEL_15;
  }

  v148 = *(*(v83 + 56) + 8 * v86);
LABEL_15:
  MEMORY[0x28223BE20](v89);
  v139 = v82;
  sub_227543C38(sub_22747E18C, v150, v167);
  sub_227663D80();
  v90 = v169;
  sub_22766C580();

  v91 = v90;
  v92 = v147;
  sub_226E93170(v91, v147, &unk_27D7BD3F0, &unk_2276823F0);
  v93 = sub_227663480();
  v94 = *(v93 - 8);
  v95 = *(v94 + 48);
  v96 = v95(v92, 1, v93);
  v168 = v70;
  v159 = v94;
  if (v96 == 1)
  {
    sub_226E97D1C(v92, &unk_27D7BD3F0, &unk_2276823F0);
    v97 = sub_227665780();
    (*(*(v97 - 8) + 56))(v161, 1, 1, v97);
  }

  else
  {
    sub_2276633E0();
    (*(v94 + 8))(v92, v93);
    __swift_project_boxed_opaque_existential_0((v141 + 56), *(v141 + 80));
    v98 = off_283AA0128[0];
    type metadata accessor for AssetBundleProgressPublisher();
    v98();
  }

  v99 = v163;
  v100 = v149;
  v101 = sub_227664EF0();
  (*(*(v101 - 8) + 56))(v162, 1, 1, v101);
  sub_226E93170(v169, v100, &unk_27D7BD3F0, &unk_2276823F0);
  if (v95(v100, 1, v93) == 1)
  {
    sub_226E97D1C(v100, &unk_27D7BD3F0, &unk_2276823F0);
    v102 = 1;
  }

  else
  {
    sub_227663400();
    (*(v159 + 8))(v100, v93);
    v102 = 0;
  }

  v103 = sub_227662750();
  v104 = *(*(v103 - 8) + 56);
  v104(v99, v102, 1, v103);
  v105 = v152;
  sub_226E93170(v169, v152, &unk_27D7BD3F0, &unk_2276823F0);
  if (v95(v105, 1, v93) == 1)
  {
    sub_226E97D1C(v105, &unk_27D7BD3F0, &unk_2276823F0);
    v151 = 0;
    v106 = 255;
  }

  else
  {
    v151 = sub_2276633F0();
    v108 = v107;
    (*(v159 + 8))(v105, v93);
    v106 = v108 & 1;
  }

  LODWORD(v152) = v106;
  v109 = v164;
  v110 = v153;
  sub_226E93170(v169, v153, &unk_27D7BD3F0, &unk_2276823F0);
  if (v95(v110, 1, v93) == 1)
  {
    sub_226E97D1C(v110, &unk_27D7BD3F0, &unk_2276823F0);
    v153 = 0;
    v111 = 255;
  }

  else
  {
    v153 = sub_227663460();
    v113 = v112;
    (*(v159 + 8))(v110, v93);
    v111 = v113 & 1;
  }

  LODWORD(v159) = v111;
  v114 = v154;
  v115 = v146;
  sub_226E93170(v167, v154, &qword_27D7BDF18, qword_227686920);
  v116 = sub_227669360();
  v117 = *(v116 - 8);
  if ((*(v117 + 48))(v114, 1, v116) == 1)
  {
    sub_226E97D1C(v114, &qword_27D7BDF18, qword_227686920);
    v118 = 1;
  }

  else
  {
    sub_227669330();
    (*(v117 + 8))(v114, v116);
    v118 = 0;
  }

  v104(v109, v118, 1, v103);
  v119 = *(v115 + 2);

  LODWORD(v154) = v119 != 0;
  v120 = sub_227663550();
  (*(*(v120 - 8) + 56))(v165, 1, 1, v120);
  v121 = sub_227669180();
  v122 = v155;
  (*(*(v121 - 8) + 56))(v155, 1, 1, v121);
  v123 = sub_2276624A0();
  v124 = v156;
  (*(*(v123 - 8) + 56))(v156, 1, 1, v123);
  v125 = sub_227664150();
  v126 = *(*(v125 - 8) + 56);
  v127 = v157;
  v126(v157, 1, 1, v125);
  v128 = v158;
  v126(v158, 1, 1, v125);
  v139 = 0;
  v140 = v128;
  v138[0] = 0;
  v138[1] = v127;
  v129 = v161;
  v131 = v162;
  v130 = v163;
  sub_227663DC0();
  sub_226E97D1C(v128, &qword_27D7BDF00, &qword_227686908);
  sub_226E97D1C(v127, &qword_27D7BDF00, &qword_227686908);
  sub_226E97D1C(v124, &unk_27D7BB570, &unk_227670FC0);
  sub_226E97D1C(v122, &qword_27D7BCF48, &unk_227682548);
  sub_226E97D1C(v165, &qword_27D7BDF08, &qword_227686910);
  sub_226E97D1C(v164, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(v130, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(v131, &qword_27D7BDF10, &qword_227686918);
  sub_226E97D1C(v129, &qword_27D7BA488, &unk_227678CE0);
  sub_226E97D1C(v169, &unk_27D7BD3F0, &unk_2276823F0);
  return sub_226E97D1C(v167, &qword_27D7BDF18, qword_227686920);
}

uint64_t sub_227477CE0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v28[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC168, &qword_22767CCF8);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - v11;
  v14 = *a2;
  v13 = a2[1];
  v15 = sub_227665F20();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12, a1, v15);
  v17 = &v12[*(v6 + 56)];
  *v17 = v14;
  *(v17 + 1) = v13;
  sub_226E93170(v12, v9, &qword_27D7BC168, &qword_22767CCF8);
  v18 = &v9[*(v6 + 56)];
  v19 = *v18;
  v20 = *(v18 + 1);

  v21 = sub_227667380();
  v23 = v22;

  if (v21 == sub_227663D80() && v23 == v24)
  {
    v26 = 1;
  }

  else
  {
    v26 = sub_22766D190();
  }

  sub_226E97D1C(v12, &qword_27D7BC168, &qword_22767CCF8);
  (*(v16 + 8))(v9, v15);
  return v26 & 1;
}

uint64_t sub_227477EDC()
{
  v0 = sub_227669350();
  v2 = v1;
  if (v0 == sub_227663D80() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_22766D190();
  }

  return v4 & 1;
}

uint64_t sub_227477F78(uint64_t *a1, void *a2)
{
  v46 = a2;
  v3 = sub_227663FA0();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227663DD0();
  v7 = *(*(v6 - 8) + 64);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(*a1 + 16);
  v40 = *a1;
  v41 = a1;
  if (v13)
  {
    v15 = *(v8 + 16);
    v14 = v8 + 16;
    v16 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v50 = *(v14 + 56);
    v51 = v15;
    v49 = (v14 - 8);
    v17 = MEMORY[0x277D84F90];
    v48 = v6;
    v52 = v14;
    v15(v11, v16, v6, v9);
    while (1)
    {
      v19 = sub_227663D90();
      v21 = v20;
      v53 = v19;
      v54 = v20;
      v23 = v22 & 1;
      v55 = v22 & 1;
      v56 = 6;
      sub_22747C41C();
      sub_227125DE8();
      v24 = sub_227663B30();
      sub_226EB2DFC(v19, v21, v23);
      if (v24)
      {
        v25 = sub_227663D80();
        v27 = v26;
        (*v49)(v11, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_226EB3F78(0, *(v17 + 2) + 1, 1, v17);
        }

        v29 = *(v17 + 2);
        v28 = *(v17 + 3);
        if (v29 >= v28 >> 1)
        {
          v17 = sub_226EB3F78((v28 > 1), v29 + 1, 1, v17);
        }

        *(v17 + 2) = v29 + 1;
        v30 = &v17[16 * v29];
        *(v30 + 4) = v25;
        *(v30 + 5) = v27;
        v6 = v48;
      }

      else
      {
        (*v49)(v11, v6);
      }

      v16 += v50;
      if (!--v13)
      {
        break;
      }

      v51(v11, v16, v6, v18);
    }
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v31 = sub_226F3E6A8(v17);

  v32 = *__swift_project_boxed_opaque_existential_0((v44 + 216), *(v44 + 240));
  v33 = v46;
  v34 = v47;
  v35 = v45;
  sub_226EAF48C(v46, v47);
  if (v35)
  {
  }

  v37 = sub_226F7EB64(v31, v33);

  MEMORY[0x28223BE20](v38);
  *(&v40 - 2) = v37;
  *(&v40 - 1) = v34;
  v39 = sub_2275F2BDC(sub_22747D888, (&v40 - 4), v40);

  *v41 = v39;
  return (*(v42 + 8))(v34, v43);
}

uint64_t sub_227478358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a4;
  v70 = a3;
  v71 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF00, &qword_227686908);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v73 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF48, &unk_227682548);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v72 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF08, &qword_227686910);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v77 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA488, &unk_227678CE0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v76 = &v65 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v65 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF10, &qword_227686918);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v65 - v31;
  v33 = sub_227663D90();
  v35 = v34;
  v80 = v33;
  v81 = v34;
  v37 = v36 & 1;
  v82 = v36 & 1;
  v83 = 6;
  sub_22747C41C();
  sub_227125DE8();
  v38 = sub_227663B30();
  v39 = sub_226EB2DFC(v33, v35, v37);
  if (v38)
  {
    MEMORY[0x28223BE20](v39);
    v67 = a1;
    v40 = v71;
    v63 = a1;
    v64 = v70;

    v41 = v79;
    v42 = sub_22735ABE4(sub_22747D8A8, v62, v40);
    v79 = v41;
    v43 = sub_227664EF0();
    v44 = *(*(v43 - 8) + 56);
    v69 = v32;
    v44(v32, 1, 1, v43);
    v45 = sub_227662750();
    v46 = *(*(v45 - 8) + 56);
    v68 = v28;
    v46(v28, 1, 1, v45);
    v47 = sub_227665780();
    (*(*(v47 - 8) + 56))(v76, 1, 1, v47);
    v71 = *(v42 + 16);

    v66 = v25;
    v46(v25, 1, 1, v45);
    v48 = sub_227663550();
    (*(*(v48 - 8) + 56))(v77, 1, 1, v48);
    v49 = sub_227669180();
    v50 = v72;
    (*(*(v49 - 8) + 56))(v72, 1, 1, v49);
    v51 = sub_2276624A0();
    v52 = v73;
    (*(*(v51 - 8) + 56))(v73, 1, 1, v51);
    v53 = sub_227664150();
    v54 = *(*(v53 - 8) + 56);
    v55 = v74;
    v54(v74, 1, 1, v53);
    v56 = v75;
    v54(v75, 1, 1, v53);
    v63 = 0;
    v64 = v56;
    v62[0] = 0;
    v62[1] = v55;
    v57 = v76;
    v59 = v68;
    v58 = v69;
    sub_227663DC0();
    sub_226E97D1C(v56, &qword_27D7BDF00, &qword_227686908);
    sub_226E97D1C(v55, &qword_27D7BDF00, &qword_227686908);
    sub_226E97D1C(v52, &unk_27D7BB570, &unk_227670FC0);
    sub_226E97D1C(v50, &qword_27D7BCF48, &unk_227682548);
    sub_226E97D1C(v77, &qword_27D7BDF08, &qword_227686910);
    sub_226E97D1C(v66, &qword_27D7B9690, qword_227670B50);
    sub_226E97D1C(v57, &qword_27D7BA488, &unk_227678CE0);
    sub_226E97D1C(v59, &qword_27D7B9690, qword_227670B50);
    return sub_226E97D1C(v58, &qword_27D7BDF10, &qword_227686918);
  }

  else
  {
    v61 = sub_227663DD0();
    return (*(*(v61 - 8) + 16))(v78, a1, v61);
  }
}

BOOL sub_227478B1C()
{
  v0 = sub_227665050();
  v2 = v1;
  if (v0 == sub_227663D80() && v2 == v3)
  {
  }

  else
  {
    v4 = sub_22766D190();

    result = 0;
    if ((v4 & 1) == 0)
    {
      return result;
    }
  }

  sub_227665090();
  v6 = 0.0;
  if (v7 > 0.0)
  {
    sub_227665040();
    v9 = v8;
    sub_227665090();
    v6 = v9 / v10;
  }

  sub_227663F00();
  return v11 <= v6;
}

uint64_t sub_227478C18()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);

  return swift_deallocClassInstance();
}

uint64_t sub_227478CBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 276) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3D0, &unk_22767E500);
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v9 = sub_2276685B0();
  *(v5 + 72) = v9;
  v10 = *(v9 - 8);
  *(v5 + 80) = v10;
  *(v5 + 88) = *(v10 + 64);
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  v11 = sub_2276642E0();
  *(v5 + 112) = v11;
  v12 = *(v11 - 8);
  *(v5 + 120) = v12;
  *(v5 + 128) = *(v12 + 64);
  *(v5 + 136) = swift_task_alloc();
  v13 = sub_227668E80();
  *(v5 + 144) = v13;
  v14 = *(v13 - 8);
  *(v5 + 152) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227478EC0, 0, 0);
}

uint64_t sub_227478EC0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v23 = *(v0 + 276);
  v7 = *(v0 + 24);
  v8 = v6[41];
  v22 = v6[40];
  __swift_project_boxed_opaque_existential_0(v6 + 37, v22);
  v9 = *(v4 + 16);
  *(v0 + 168) = v9;
  *(v0 + 176) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v7, v3);
  v10 = *(v4 + 80);
  *(v0 + 272) = v10;
  v11 = (v10 + 24) & ~v10;
  v12 = swift_allocObject();
  *(v0 + 184) = v12;
  *(v12 + 16) = v6;
  v13 = *(v4 + 32);
  *(v0 + 192) = v13;
  *(v0 + 200) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v12 + v11, v2, v3);
  v14 = v12 + ((v1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v14 = v5;
  *(v14 + 8) = v23 & 1;
  v15 = *(v8 + 24);

  v21 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 208) = v17;
  *v17 = v0;
  v17[1] = sub_2274790F0;
  v18 = *(v0 + 160);
  v19 = *(v0 + 144);

  return (v21)(v18, sub_22747E834, v12, v19, v22, v8);
}

uint64_t sub_2274790F0()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_2274799F0;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_22747920C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22747920C()
{
  v1 = v0[20];
  v2 = v0[8];
  v3 = __swift_project_boxed_opaque_existential_0((v0[5] + 176), *(v0[5] + 200));
  v4 = *__swift_project_boxed_opaque_existential_0((*v3 + 16), *(*v3 + 40));
  sub_2272B1194(3, v1, v2);
  v5 = swift_task_alloc();
  v0[28] = v5;
  *(v5 + 16) = "SeymourServices/CatalogLockupBuilder.swift";
  *(v5 + 24) = 42;
  *(v5 + 32) = 2;
  *(v5 + 40) = 298;
  *(v5 + 48) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[29] = v7;
  *v7 = v0;
  v7[1] = sub_227479354;
  v8 = v0[13];
  v9 = v0[9];

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22747E8E8, v5, v9);
}

uint64_t sub_227479354()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v5 = sub_22747983C;
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);
    v5 = sub_2274794A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2274794A4()
{
  v28 = *(v0 + 200);
  v25 = *(v0 + 192);
  v20 = *(v0 + 168);
  v21 = *(v0 + 176);
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v22 = *(v0 + 104);
  v23 = v1;
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = (*(v0 + 272) + 24) & ~*(v0 + 272);
  v19 = v8 + *(v0 + 128);
  v27 = v6[40];
  v24 = v6[41];
  __swift_project_boxed_opaque_existential_0(v6 + 37, v27);
  v9 = v1;
  v10 = v2;
  v20(v9, v7, v2);
  (*(v4 + 16))(v3, v22, v5);
  v11 = (v19 + *(v4 + 80)) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v0 + 248) = v12;
  *(v12 + 16) = v6;
  v25(v12 + v8, v23, v10);
  (*(v4 + 32))(v12 + v11, v3, v5);
  v13 = *(v24 + 24);

  v26 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 256) = v15;
  v16 = sub_227665D90();
  *v15 = v0;
  v15[1] = sub_22747970C;
  v17 = *(v0 + 16);

  return (v26)(v17, sub_22747E900, v12, v16, v27, v24);
}

uint64_t sub_22747970C()
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 248);
  v6 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_227479A98;
  }

  else
  {
    v4 = sub_227479914;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22747983C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[30];
  v5 = v0[20];
  v6 = v0[17];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_227479914()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[12];
  v6 = v0[8];
  (*(v0[10] + 8))(v0[13], v0[9]);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2274799F0()
{
  v1 = v0[23];

  v2 = v0[27];
  v3 = v0[20];
  v4 = v0[17];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_227479A98()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v0[10] + 8))(v0[13], v0[9]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[33];
  v5 = v0[20];
  v6 = v0[17];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_227479B70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v42 = a5;
  v40 = a4;
  v41 = a3;
  v39 = a6;
  v9 = sub_2276642E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227663FA0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *__swift_project_boxed_opaque_existential_0((a2 + 216), *(a2 + 240));
  result = sub_226EAF48C(a1, v18);
  if (!v6)
  {
    v33 = a1;
    v34 = v10;
    v36 = v15;
    v37 = v14;
    v35 = v9;
    v21 = v41;
    v38 = 0;
    if (v42)
    {
      sub_227663F70();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_227670CD0;
      *(inited + 32) = sub_227664230();
      *(inited + 40) = v25;
      v26 = sub_226F4BE8C(inited);
      swift_setDeallocating();
      sub_226FA6DA4(inited + 32);
      v27 = v38;
      v28 = sub_22701D97C(v26, v33, v23);
      v38 = v27;
      if (v27)
      {
        (*(v36 + 8))(v18, v37);
      }

      v31 = v28;

      v32 = *(v31 + 2);

      v30 = v36;
      v29 = v37;
    }

    else
    {
      v30 = v36;
      v29 = v37;
    }

    (*(v34 + 16))(v13, v21, v35);
    sub_227668E70();
    return (*(v30 + 8))(v18, v29);
  }

  return result;
}

uint64_t sub_227479E1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v166 = a4;
  v172 = a2;
  v171 = a1;
  v160 = a5;
  v159 = sub_2276642E0();
  v158 = *(v159 - 8);
  v6 = *(v158 + 64);
  MEMORY[0x28223BE20](v159);
  v157 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669180();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v156 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_227663FA0();
  v153 = *(v154 - 8);
  v11 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v161 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8EF8, &qword_227672908);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v165 = &v146 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v155 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v163 = &v146 - v20;
  MEMORY[0x28223BE20](v21);
  v167 = &v146 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA488, &unk_227678CE0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v162 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v169 = &v146 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v146 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v146 - v36;
  MEMORY[0x28223BE20](v38);
  v168 = (&v146 - v39);
  MEMORY[0x28223BE20](v40);
  v42 = (&v146 - v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  v164 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;
  v170 = a3;
  *(inited + 32) = sub_227664230();
  *(inited + 40) = v45;
  v46 = sub_226F4BE8C(inited);
  swift_setDeallocating();
  v47 = v171;
  sub_226FA6DA4(inited + 32);
  v48 = v173;
  sub_2274756EC(v46, v47);
  v173 = v48;
  if (v48)
  {
  }

  v152 = v43;
  v146 = v37;
  v149 = v34;
  v150 = v31;

  sub_227664230();
  sub_22766C580();

  v50 = v168;
  sub_226E93170(v42, v168, &unk_27D7BD3F0, &unk_2276823F0);
  v51 = sub_227663480();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  v148 = v52 + 48;
  v54 = v53(v50, 1, v51);
  v147 = v53;
  if (v54 == 1)
  {
    sub_226E97D1C(v50, &unk_27D7BD3F0, &unk_2276823F0);
    v55 = sub_227665780();
    (*(*(v55 - 8) + 56))(v169, 1, 1, v55);
  }

  else
  {
    sub_2276633E0();
    (*(v52 + 8))(v50, v51);
    __swift_project_boxed_opaque_existential_0((v172 + 56), *(v172 + 80));
    v56 = off_283AA0128[0];
    type metadata accessor for AssetBundleProgressPublisher();
    v56();
  }

  v151 = v52;
  v57 = __swift_project_boxed_opaque_existential_0(v171, v171[3]);
  v58 = *v57;
  v59 = v57[1];
  v60 = *(v57 + 16);
  v61 = v57[3];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB40, &qword_2276802B0);
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  v65 = swift_allocObject();
  v66 = v58;
  v67 = v59;

  sub_22766A070();
  *(v65 + 16) = v66;
  *(v65 + 24) = v67;
  *(v65 + 32) = v60;
  *(v65 + 40) = v61;
  swift_getKeyPath();
  v68 = sub_227664230();
  v70 = v69;
  v176[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v176[0] = v68;
  v176[1] = v70;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v71 = sub_22766C820();
  sub_226E93170(v176, &v174, &unk_27D7BC990, &qword_227670A30);
  v72 = v175;
  if (v175)
  {
    v73 = __swift_project_boxed_opaque_existential_0(&v174, v175);
    v168 = &v146;
    v74 = v42;
    v75 = *(v72 - 8);
    v76 = *(v75 + 64);
    v77 = MEMORY[0x28223BE20](v73);
    v79 = &v146 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v75 + 16))(v79, v77);
    v80 = sub_22766D170();
    (*(v75 + 8))(v79, v72);
    v42 = v74;
    __swift_destroy_boxed_opaque_existential_0(&v174);
  }

  else
  {
    v80 = 0;
  }

  v81 = v172;
  v172 = v51;
  v82 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v83 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB50 &qword_2276834E0))];

  sub_226E97D1C(v176, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v84 = v83;
  v85 = sub_22766A080();
  v87 = v86;
  MEMORY[0x22AA985C0]();
  if (*((*v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v168 = *((*v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v85(v176, 0);
  swift_endAccess();

  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  KeyPath = swift_getKeyPath();
  v89 = v173;
  v90 = sub_2273FCAC0(KeyPath);
  v173 = v89;
  if (!v89)
  {
    v168 = v42;
    v97 = sub_226F4374C(v90);

    swift_setDeallocating();

    v98 = *(v65 + 40);

    v99 = qword_2813B2078;
    v100 = sub_22766A100();
    (*(*(v100 - 8) + 8))(v65 + v99, v100);
    v101 = *(*v65 + 48);
    v102 = *(*v65 + 52);
    swift_deallocClassInstance();
    v103 = v167;
    sub_22722AF5C(v97, v167);

    v104 = v165;
    sub_227664290();
    v105 = sub_227665DB0();
    v106 = *(v105 - 8);
    if ((*(v106 + 48))(v104, 1, v105) == 1)
    {
      sub_226E97D1C(v104, &qword_27D7B8EF8, &qword_227672908);
      v107 = *__swift_project_boxed_opaque_existential_0((v81 + 216), *(v81 + 240));
      v108 = v161;
      v109 = v171;
      v110 = v173;
      sub_226EAF48C(v171, v161);
      v173 = v110;
      if (v110)
      {
        goto LABEL_18;
      }

      sub_227663F60();
      v112 = v111;
      (*(v153 + 8))(v108, v154);
      v113 = swift_initStackObject();
      *(v113 + 16) = v164;
      *(v113 + 32) = sub_227664230();
      *(v113 + 40) = v114;
      v115 = sub_226F4BE8C(v113);
      swift_setDeallocating();
      sub_226FA6DA4(v113 + 32);
      v116 = v173;
      v117 = sub_22701D97C(v115, v109, v112);
      v118 = v116;
    }

    else
    {
      v119 = sub_227665DA0();
      v121 = v120;
      (*(v106 + 8))(v104, v105);
      v122 = swift_initStackObject();
      *(v122 + 16) = v164;
      *(v122 + 32) = v119;
      v123 = v122 + 32;
      *(v122 + 40) = v121;
      v124 = sub_226F4BE8C(v122);
      swift_setDeallocating();
      sub_226FA6DA4(v123);
      v125 = v173;
      v117 = sub_22701DFE8(v124, v171);
      v118 = v125;
    }

    v173 = v118;
    if (!v118)
    {
      v127 = v168;
      v171 = *(v117 + 2);

      v166 = sub_227668540();
      v165 = sub_227668570();
      *&v164 = sub_227668550();
      v161 = sub_227668580();
      v128 = v146;
      sub_226E93170(v127, v146, &unk_27D7BD3F0, &unk_2276823F0);
      v129 = v172;
      v130 = v147;
      v131 = v147(v128, 1, v172);
      v132 = v163;
      if (v131 == 1)
      {
        sub_226E97D1C(v128, &unk_27D7BD3F0, &unk_2276823F0);
        v133 = 1;
      }

      else
      {
        sub_227663400();
        (*(v151 + 8))(v128, v129);
        v133 = 0;
      }

      v134 = sub_227662750();
      (*(*(v134 - 8) + 56))(v132, v133, 1, v134);
      v135 = v149;
      sub_226E93170(v127, v149, &unk_27D7BD3F0, &unk_2276823F0);
      if (v130(v135, 1, v129) == 1)
      {
        sub_226E97D1C(v135, &unk_27D7BD3F0, &unk_2276823F0);
        v154 = 0;
        v136 = 255;
      }

      else
      {
        v154 = sub_2276633F0();
        v138 = v137;
        (*(v151 + 8))(v135, v129);
        v136 = v138 & 1;
      }

      LODWORD(v153) = v136;
      v139 = v155;
      sub_226E93170(v169, v162, &qword_27D7BA488, &unk_227678CE0);
      v140 = v127;
      v141 = v150;
      sub_226E93170(v140, v150, &unk_27D7BD3F0, &unk_2276823F0);
      if (v130(v141, 1, v129) == 1)
      {
        sub_226E97D1C(v141, &unk_27D7BD3F0, &unk_2276823F0);
        v155 = 0;
        v142 = 255;
      }

      else
      {
        v155 = sub_227663460();
        v144 = v143;
        (*(v151 + 8))(v141, v129);
        v142 = v144 & 1;
      }

      LODWORD(v172) = v142;
      v156 = sub_227668590();
      v152 = v145;
      sub_226E93170(v103, v139, &qword_27D7B9690, qword_227670B50);
      v151 = sub_227668530();
      sub_2276684E0();
      sub_227668520();
      sub_2276684F0();
      sub_227668560();
      sub_227668510();
      sub_227668500();
      sub_2276685A0();
      (*(v158 + 16))(v157, v170, v159);
      sub_227665D80();
      v126 = v167;
      goto LABEL_29;
    }

LABEL_18:
    v126 = v103;
LABEL_29:
    sub_226E97D1C(v126, &qword_27D7B9690, qword_227670B50);
    sub_226E97D1C(v169, &qword_27D7BA488, &unk_227678CE0);
    v96 = v168;
    return sub_226E97D1C(v96, &unk_27D7BD3F0, &unk_2276823F0);
  }

  swift_setDeallocating();

  v91 = *(v65 + 40);

  v92 = qword_2813B2078;
  v93 = sub_22766A100();
  (*(*(v93 - 8) + 8))(v65 + v92, v93);
  v94 = *(*v65 + 48);
  v95 = *(*v65 + 52);
  swift_deallocClassInstance();
  sub_226E97D1C(v169, &qword_27D7BA488, &unk_227678CE0);
  v96 = v42;
  return sub_226E97D1C(v96, &unk_27D7BD3F0, &unk_2276823F0);
}

uint64_t sub_22747B0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v49 = a4;
  v9 = sub_22766B390();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v9);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA488, &unk_227678CE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v67 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v66 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v65 = &v48 - v19;
  v64 = sub_227663590();
  v20 = *(v64 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v64);
  v71 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v63 = &v48 - v24;
  v62 = sub_227663DD0();
  v25 = *(v62 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v62);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a2 + 16);
  v30 = MEMORY[0x277D84F90];
  if (v29)
  {
    v50 = v4;
    v51 = a1;
    v52 = a3;
    v72 = MEMORY[0x277D84F90];
    sub_226F20528(0, v29, 0);
    v30 = v72;
    v32 = *(v20 + 16);
    v31 = v20 + 16;
    v33 = (a2 + ((*(v31 + 64) + 32) & ~*(v31 + 64)));
    v58 = *(v31 + 56);
    v59 = v32;
    v56 = v25 + 32;
    v57 = (v31 - 8);
    v60 = v25;
    v61 = v31;
    do
    {
      v69 = v30;
      v70 = v29;
      v35 = v63;
      v34 = v64;
      v68 = v33;
      v36 = v59;
      v59(v63, v33, v64);
      v36(v71, v35, v34);
      v37 = sub_227662750();
      v38 = *(*(v37 - 8) + 56);
      v38(v65, 1, 1, v37);
      v39 = sub_227665780();
      (*(*(v39 - 8) + 56))(v67, 1, 1, v39);
      v38(v66, 1, 1, v37);
      sub_227663D70();
      v40 = v34;
      v30 = v69;
      (*v57)(v35, v40);
      v72 = v30;
      v42 = *(v30 + 16);
      v41 = *(v30 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_226F20528(v41 > 1, v42 + 1, 1);
        v30 = v72;
      }

      *(v30 + 16) = v42 + 1;
      (*(v60 + 32))(v30 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v42, v28, v62);
      v33 = &v68[v58];
      v29 = v70 - 1;
    }

    while (v70 != 1);
    a1 = v51;
    v5 = v50;
  }

  v73 = v30;
  sub_227476338(&v73, a1);
  if (v5)
  {
  }

  v43 = __swift_project_boxed_opaque_existential_0(a1, *(a1 + 24));
  v44 = *v43;
  v45 = v43[1];
  v46 = v53;
  sub_22766A730();
  sub_22766B370();
  (*(v54 + 8))(v46, v55);
  [v44 reset];
  [v45 reset];
  result = sub_227477F78(&v73, a1);
  *v49 = v73;
  return result;
}

uint64_t sub_22747B708(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_227663DD0();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_2276654E0();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v9 = sub_227666F60();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22747B8A4, 0, 0);
}

uint64_t sub_22747B8A4()
{
  v1 = *(v0 + 32);
  v2 = *(sub_2276654D0() + 16);

  if (v2)
  {
    v3 = *(v0 + 32);
    v4 = sub_2276654D0();
    v45 = MEMORY[0x277D84FA0];
    v46 = MEMORY[0x277D84FA0];
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v0 + 112);
      v8 = *(v6 + 16);
      v6 += 16;
      v7 = v8;
      v41 = (*(v6 + 64) + 32) & ~*(v6 + 64);
      v9 = v4 + v41;
      v10 = *(v6 + 56);
      v11 = (v6 - 8);
      v42 = v8;
      v40 = v10;
      v8(*(v0 + 136), v4 + v41, *(v0 + 104));
      while (1)
      {
        v13 = sub_227666F50();
        v15 = *(v0 + 136);
        if (v16)
        {
          v17 = *(v0 + 104);
          v43 = *(v0 + 128);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB068, &unk_227686AD0);
          v18 = swift_allocObject();
          v7(v18 + v41, v15, v17);
          v7(v43, v18 + v41, v17);
          swift_setDeallocating();
          v19 = *v11;
          (*v11)(v18 + v41, v17);
          swift_deallocClassInstance();
          v20 = *(v0 + 136);
          v21 = *(v0 + 120);
          v22 = *(v0 + 104);
          sub_2270B7BC0(v21, *(v0 + 128));
          v19(v21, v22);
          v19(v20, v22);
          v7 = v42;
          v10 = v40;
        }

        else
        {
          v12 = *(v0 + 104);
          sub_226EB2DFC(v13, v14, 0);
          (*v11)(v15, v12);
        }

        v9 += v10;
        if (!--v5)
        {
          break;
        }

        v7(*(v0 + 136), v9, *(v0 + 104));
      }

      v24 = v45;
      v23 = v46;
    }

    else
    {

      v23 = MEMORY[0x277D84FA0];
      v24 = MEMORY[0x277D84FA0];
    }

    v35 = *(v0 + 96);
    v44 = *(v0 + 88);
    v36 = *(v0 + 32);
    sub_2276654C0();
    *(v0 + 16) = v24;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF28, &qword_227686AB8);
    sub_22747E9F0();
    sub_22766C220();

    sub_2276654B0();
    sub_2276654C0();
    *(v0 + 24) = v23;
    swift_getKeyPath();
    sub_22766C220();

    sub_2276654B0();
    v37 = swift_task_alloc();
    *(v0 + 144) = v37;
    *v37 = v0;
    v37[1] = sub_22747BD38;
    v38 = *(v0 + 96);
    v39 = *(v0 + 40);

    return sub_227473188(v38);
  }

  else
  {
    v25 = sub_2276639E0();
    sub_226EAC0FC(&qword_27D7BCBF8, MEMORY[0x277D50230]);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D50210], v25);
    swift_willThrow();
    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v29 = *(v0 + 120);
    v31 = *(v0 + 88);
    v30 = *(v0 + 96);
    v32 = *(v0 + 64);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_22747BD38(uint64_t a1)
{
  v3 = *(*v2 + 144);
  v4 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22747C1D0, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[21] = v5;
    *v5 = v4;
    v5[1] = sub_22747BEAC;
    v6 = v4[5];
    v7 = v4[11];

    return sub_227473EC4(v7);
  }
}

uint64_t sub_22747BEAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v7 = *(v4 + 152);

    v8 = sub_22747C2A8;
  }

  else
  {
    *(v4 + 184) = a1;
    v8 = sub_22747BFDC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22747BFDC()
{
  v23 = v0[19];
  sub_2274616B0(v0[23]);
  v1 = *(v23 + 16);
  if (v1)
  {
    v2 = v0[7];
    v3 = sub_2273A6C9C(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = *(v2 + 16);
    v4 = v2 + 16;
    v21 = v5;
    v6 = (*(v4 + 64) + 32) & ~*(v4 + 64);
    v7 = v23 + v6;
    v8 = *(v4 + 56);
    do
    {
      v21(v0[8], v7, v0[6]);
      v10 = *(v3 + 2);
      v9 = *(v3 + 3);
      if (v10 >= v9 >> 1)
      {
        v3 = sub_2273A6C9C(v9 > 1, v10 + 1, 1, v3);
      }

      v11 = v0[8];
      v12 = v0[6];
      *(v3 + 2) = v10 + 1;
      (*(v4 + 16))(&v3[v6 + v10 * v8], v11, v12);
      v7 += v8;
      --v1;
    }

    while (v1);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[15];
  v16 = v0[12];
  v17 = v0[9];
  v22 = v0[8];
  v18 = *(v0[10] + 8);
  v18(v0[11], v17);
  v18(v16, v17);

  v19 = v0[1];

  return v19(v3);
}

uint64_t sub_22747C1D0()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = *(v0[10] + 8);
  v3(v0[11], v2);
  v3(v1, v2);
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22747C2A8()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = *(v0[10] + 8);
  v3(v0[11], v2);
  v3(v1, v2);
  v4 = v0[22];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

unint64_t *sub_22747C380(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_22747E1CC(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

unint64_t sub_22747C41C()
{
  result = qword_28139B738;
  if (!qword_28139B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B738);
  }

  return result;
}

void sub_22747C470(void **a1)
{
  v2 = *(sub_227663AB0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22711772C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22747C518(v5);
  *a1 = v3;
}

void sub_22747C518(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22766D130();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227663AB0();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227663AB0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22747C8EC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22747C644(0, v2, 1, a1);
  }
}

void sub_22747C644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_227663AB0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v34 - v12;
  v15.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v48 = &v34 - v16;
  v36 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v19 = *(v14 + 16);
    v18 = v14 + 16;
    v20 = *(v18 + 56);
    v45 = (v18 - 8);
    v46 = v19;
    v47 = v18;
    v42 = (v18 + 16);
    v43 = v17;
    v21 = (v17 + v20 * (a3 - 1));
    v41 = -v20;
    v22 = a1 - a3;
    v35 = v20;
    v23 = v17 + v20 * a3;
LABEL_5:
    v39 = v21;
    v40 = a3;
    v37 = v23;
    v38 = v22;
    v50 = v22;
    v24 = v21;
    while (1)
    {
      v25 = v48;
      v26 = v46;
      (v46)(v48, v23, v8, v15);
      v27 = v49;
      v26(v49, v24, v8);
      v28 = sub_227663A80();
      v29 = sub_227663A80();
      v30 = *v45;
      (*v45)(v27, v8);
      v30(v25, v8);
      if (v28 >= v29)
      {
LABEL_4:
        a3 = v40 + 1;
        v21 = &v39[v35];
        v22 = v38 - 1;
        v23 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v23, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v24, v32, v8);
      v24 += v41;
      v23 += v41;
      if (__CFADD__(v50++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22747C8EC(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v119 = a1;
  v9 = sub_227663AB0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v123 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v133 = &v116 - v13;
  MEMORY[0x28223BE20](v14);
  v139 = &v116 - v15;
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v138 = &v116 - v19;
  v20 = a3[1];
  v128 = v17;
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v119;
    if (!*v119)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v128;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v22 = sub_2271171D0(v22);
    }

    v141 = v22;
    v112 = *(v22 + 2);
    if (v112 >= 2)
    {
      while (*a3)
      {
        v113 = *&v22[16 * v112];
        v114 = *&v22[16 * v112 + 24];
        sub_22747D2D0(*a3 + *(v9 + 72) * v113, *a3 + *(v9 + 72) * *&v22[16 * v112 + 16], *a3 + *(v9 + 72) * v114, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v114 < v113)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2271171D0(v22);
        }

        if (v112 - 2 >= *(v22 + 2))
        {
          goto LABEL_120;
        }

        v115 = &v22[16 * v112];
        *v115 = v113;
        *(v115 + 1) = v114;
        v141 = v22;
        sub_227117144(v112 - 1);
        v22 = v141;
        v112 = *(v141 + 2);
        if (v112 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v117 = a4;
  v21 = 0;
  v136 = (v17 + 8);
  v137 = v17 + 16;
  v135 = (v17 + 32);
  v22 = MEMORY[0x277D84F90];
  v121 = a3;
  v140 = v9;
  while (1)
  {
    v129 = v22;
    if (v21 + 1 >= v20)
    {
      v34 = v21 + 1;
    }

    else
    {
      v130 = v20;
      v118 = v6;
      v23 = *a3;
      v120 = v21;
      v24 = v128[9];
      v5 = &v23[v24 * (v21 + 1)];
      v25 = v23;
      v134 = v23;
      v26 = v9;
      v27 = v128[2];
      v28 = v138;
      v27(v138, v5, v26, v18);
      v29 = &v25[v24 * v21];
      v30 = v139;
      v126 = v27;
      (v27)(v139, v29, v26);
      v131 = sub_227663A80();
      v127 = sub_227663A80();
      v31 = v128[1];
      v31(v30, v26);
      v125 = v31;
      v31(v28, v26);
      v32 = v120 + 2;
      v132 = v24;
      v33 = &v134[v24 * (v120 + 2)];
      while (1)
      {
        v34 = v130;
        if (v130 == v32)
        {
          break;
        }

        v35 = v126;
        LODWORD(v134) = v131 < v127;
        v36 = v138;
        v37 = v140;
        (v126)(v138, v33, v140);
        v38 = v139;
        v35(v139, v5, v37);
        v39 = sub_227663A80();
        v40 = sub_227663A80();
        v41 = v125;
        (v125)(v38, v37);
        v41(v36, v37);
        v22 = v129;
        ++v32;
        v33 += v132;
        v5 += v132;
        if (((v134 ^ (v39 >= v40)) & 1) == 0)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v6 = v118;
      v21 = v120;
      a3 = v121;
      v9 = v140;
      if (v131 < v127)
      {
        if (v34 < v120)
        {
          goto LABEL_123;
        }

        if (v120 < v34)
        {
          v42 = v132 * (v34 - 1);
          v5 = v34 * v132;
          v130 = v34;
          v43 = v34;
          v44 = v120;
          v45 = v120 * v132;
          do
          {
            if (v44 != --v43)
            {
              v46 = *a3;
              if (!v46)
              {
                goto LABEL_129;
              }

              v47 = *v135;
              (*v135)(v123, &v46[v45], v9);
              if (v45 < v42 || &v46[v45] >= &v46[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v47(&v46[v42], v123, v9);
              a3 = v121;
              v22 = v129;
            }

            ++v44;
            v42 -= v132;
            v5 -= v132;
            v45 += v132;
          }

          while (v44 < v43);
          v6 = v118;
          v21 = v120;
          v34 = v130;
        }
      }
    }

    v48 = a3[1];
    if (v34 < v48)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v117)
      {
        if (__OFADD__(v21, v117))
        {
          goto LABEL_124;
        }

        if (v21 + v117 >= v48)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v21 + v117;
        }

        if (v5 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v5)
        {
          break;
        }
      }
    }

    v5 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_2273A4F9C(0, *(v22 + 2) + 1, 1, v22);
    }

    v50 = *(v22 + 2);
    v49 = *(v22 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      v22 = sub_2273A4F9C((v49 > 1), v50 + 1, 1, v22);
    }

    *(v22 + 2) = v51;
    v52 = &v22[16 * v50];
    *(v52 + 4) = v21;
    *(v52 + 5) = v5;
    v53 = *v119;
    if (!*v119)
    {
      goto LABEL_131;
    }

    v124 = v5;
    if (v50)
    {
      while (1)
      {
        v5 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v54 = *(v22 + 4);
          v55 = *(v22 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_52:
          if (v57)
          {
            goto LABEL_110;
          }

          v70 = &v22[16 * v51];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_113;
          }

          v76 = &v22[16 * v5 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_117;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v5 = v51 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v80 = &v22[16 * v51];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_66:
        if (v75)
        {
          goto LABEL_112;
        }

        v83 = &v22[16 * v5];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_115;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_73:
        v91 = v5 - 1;
        if (v5 - 1 >= v51)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v92 = *&v22[16 * v91 + 32];
        v93 = *&v22[16 * v5 + 40];
        sub_22747D2D0(*a3 + v128[9] * v92, *a3 + v128[9] * *&v22[16 * v5 + 32], *a3 + v128[9] * v93, v53);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v93 < v92)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2271171D0(v22);
        }

        if (v91 >= *(v22 + 2))
        {
          goto LABEL_107;
        }

        v94 = &v22[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        v141 = v22;
        sub_227117144(v5);
        v22 = v141;
        v51 = *(v141 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v22[16 * v51 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_108;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_109;
      }

      v65 = &v22[16 * v51];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_111;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_114;
      }

      if (v69 >= v61)
      {
        v87 = &v22[16 * v5 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_118;
        }

        if (v56 < v90)
        {
          v5 = v51 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v124;
    if (v124 >= v20)
    {
      goto LABEL_94;
    }
  }

  v118 = v6;
  v95 = *a3;
  v96 = v128[9];
  v134 = v128[2];
  v97 = &v95[v96 * (v34 - 1)];
  v131 = -v96;
  v132 = v95;
  v120 = v21;
  v98 = (v21 - v34);
  v122 = v96;
  v99 = &v95[v34 * v96];
  v124 = v5;
LABEL_85:
  v130 = v34;
  v125 = v99;
  v126 = v98;
  v127 = v97;
  v100 = v97;
  while (1)
  {
    v101 = v138;
    v102 = v134;
    (v134)(v138, v99, v9, v18);
    v103 = v139;
    v102(v139, v100, v140);
    v104 = sub_227663A80();
    v105 = sub_227663A80();
    v106 = *v136;
    v107 = v103;
    v9 = v140;
    (*v136)(v107, v140);
    v106(v101, v9);
    if (v104 >= v105)
    {
LABEL_84:
      v34 = v130 + 1;
      v97 = v127 + v122;
      v98 = v126 - 1;
      v5 = v124;
      v99 = &v125[v122];
      if (v130 + 1 != v124)
      {
        goto LABEL_85;
      }

      v6 = v118;
      v21 = v120;
      a3 = v121;
      v22 = v129;
      if (v124 < v120)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    v108 = *v135;
    v109 = v133;
    (*v135)(v133, v99, v9);
    swift_arrayInitWithTakeFrontToBack();
    v108(v100, v109, v9);
    v100 += v131;
    v99 += v131;
    if (__CFADD__(v98++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_22747D2D0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v62 = sub_227663AB0();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v62);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v48 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v65 = a1;
  v64 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v18;
    if (v18 >= 1)
    {
      v33 = -v14;
      v52 = a4;
      v53 = (v8 + 16);
      v51 = (v8 + 8);
      v34 = v32;
      v61 = a1;
      v54 = v33;
      do
      {
        v49 = v32;
        v35 = a2;
        v36 = a2 + v33;
        v37 = a3;
        v55 = v35;
        v56 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v65 = v35;
            v63 = v49;
            goto LABEL_58;
          }

          v38 = v37;
          v50 = v32;
          v60 = v37 + v33;
          v39 = v34 + v33;
          v40 = *v53;
          v41 = v58;
          v42 = v34 + v33;
          v43 = v34;
          v44 = v62;
          (*v53)(v58, v42, v62);
          v45 = v59;
          (v40)(v59, v36, v44);
          v57 = sub_227663A80();
          v46 = sub_227663A80();
          v47 = *v51;
          (*v51)(v45, v44);
          v47(v41, v44);
          if (v57 < v46)
          {
            break;
          }

          v32 = v39;
          v37 = v60;
          if (v38 < v43 || v60 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v56;
            a1 = v61;
          }

          else
          {
            v36 = v56;
            a1 = v61;
            if (v38 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v34 = v39;
          v33 = v54;
          v35 = v55;
          if (v39 <= v52)
          {
            a2 = v55;
            goto LABEL_57;
          }
        }

        v34 = v43;
        if (v38 < v55 || v60 >= v55)
        {
          a3 = v60;
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v61;
          v32 = v50;
          v33 = v54;
        }

        else
        {
          a3 = v60;
          a2 = v56;
          a1 = v61;
          v32 = v50;
          v33 = v54;
          if (v38 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v34 > v52);
    }

LABEL_57:
    v65 = a2;
    v63 = v32;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v17;
    v63 = a4 + v17;
    v60 = a3;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v55 = v14;
      v56 = v8 + 16;
      v53 = (v8 + 8);
      v54 = v20;
      do
      {
        v61 = a1;
        v21 = v58;
        v22 = v62;
        v23 = v54;
        v54(v58, a2, v62);
        v24 = v59;
        v23(v59, a4, v22);
        v25 = a2;
        v26 = sub_227663A80();
        v27 = sub_227663A80();
        v28 = *v53;
        (*v53)(v24, v22);
        v28(v21, v22);
        if (v26 >= v27)
        {
          v29 = v55;
          v31 = a4 + v55;
          v30 = v61;
          if (v61 < a4 || v61 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v25;
          }

          else
          {
            a2 = v25;
            if (v61 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v64 = v31;
          a4 += v29;
        }

        else
        {
          v29 = v55;
          a2 = v25 + v55;
          v30 = v61;
          if (v61 < v25 || v61 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v61 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v30 + v29;
        v65 = a1;
      }

      while (a4 < v57 && a2 < v60);
    }
  }

LABEL_58:
  sub_22711722C(&v65, &v64, &v63);
}

BOOL sub_22747D8A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_227478B1C();
}

uint64_t sub_22747D8C8(uint64_t a1, char *a2, double a3)
{
  v4 = v3;
  v119 = sub_227667E50();
  v116 = *(v119 - 8);
  v8 = *(v116 + 64);
  MEMORY[0x28223BE20](v119);
  v121 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_227664530();
  v117 = *(v120 - 8);
  v10 = v117[8];
  MEMORY[0x28223BE20](v120);
  v118 = (v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_227663DD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v17 = v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D84FA0];
  v123 = MEMORY[0x277D84FA0];
  v124 = MEMORY[0x277D84FA0];
  v19 = *(a1 + 16);
  if (v19)
  {
    v114 = v3;
    v115 = a2;
    v22 = *(v13 + 16);
    v20 = v13 + 16;
    v21 = v22;
    v23 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v24 = *(v20 + 56);
    v22(v17, v23, v12, v15);
    while (1)
    {
      v29 = sub_227663DB0();
      if (v30)
      {
        v25 = v30;
        v26 = v29;
        v27 = v25;
      }

      else
      {
        v31 = sub_227663D80();
        v33 = v32;
        v26 = v31;
        v27 = v33;
      }

      sub_2270AE890(&v122, v26, v27);

      (*(v20 - 8))(v17, v12);
      v23 += v24;
      if (!--v19)
      {
        break;
      }

      v21(v17, v23, v12, v28);
    }

    v18 = v123;
    v4 = v114;
    a2 = v115;
  }

  v34 = sub_22701D97C(v18, a2, a3);
  if (v4)
  {
  }

  v35 = v34;
  v114 = v124;
  v36 = sub_22701DFE8(v124, a2);
  v37 = v118;
  v115 = v36;
  v107[1] = v18;
  v108 = 0;
  v39 = v35 + 56;
  v40 = 1 << v35[32];
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v35 + 7);
  v43 = (v40 + 63) >> 6;
  v112 = (v117 + 1);
  v113 = (v117 + 2);

  v44 = 0;
  v45 = MEMORY[0x277D84F98];
  v109 = v43;
  v110 = v35 + 56;
  v111 = v35;
  while (v42)
  {
    v46 = v44;
LABEL_21:
    (v117[2])(v37, *(v35 + 6) + v117[9] * (__clz(__rbit64(v42)) | (v46 << 6)), v120);
    v47 = sub_2276644F0();
    if (v45[2])
    {
      v49 = sub_226E92000(v47, v48);
      v51 = v50;

      if (v51)
      {
        v52 = *(v45[7] + 8 * v49);
        goto LABEL_26;
      }
    }

    else
    {
    }

    v52 = 0;
LABEL_26:
    v53 = sub_2276644F0();
    v55 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_65;
    }

    v56 = v53;
    v57 = v54;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v45;
    v60 = sub_226E92000(v56, v57);
    v61 = v45;
    v62 = v45[2];
    v63 = (v59 & 1) == 0;
    v64 = v62 + v63;
    if (__OFADD__(v62, v63))
    {
      goto LABEL_66;
    }

    v65 = v59;
    if (v61[3] >= v64)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_226FF016C();
      }
    }

    else
    {
      sub_226FE2228(v64, isUniquelyReferenced_nonNull_native);
      v66 = sub_226E92000(v56, v57);
      if ((v65 & 1) != (v67 & 1))
      {
        goto LABEL_71;
      }

      v60 = v66;
    }

    v42 &= v42 - 1;
    if (v65)
    {

      v45 = v122;
      *(v122[7] + 8 * v60) = v55;
      v37 = v118;
      (*v112)(v118, v120);
    }

    else
    {
      v45 = v122;
      v122[(v60 >> 6) + 8] |= 1 << v60;
      v68 = (v45[6] + 16 * v60);
      *v68 = v56;
      v68[1] = v57;
      *(v45[7] + 8 * v60) = v55;
      v37 = v118;
      (*v112)(v118, v120);
      v69 = v45[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_69;
      }

      v45[2] = v71;
    }

    v44 = v46;
    v39 = v110;
    v35 = v111;
    v43 = v109;
  }

  while (1)
  {
    v46 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    if (v46 >= v43)
    {
      break;
    }

    v42 = *&v39[8 * v46];
    ++v44;
    if (v42)
    {
      goto LABEL_21;
    }
  }

  v72 = v115 + 56;
  v73 = 1 << v115[32];
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & *(v115 + 7);
  v76 = (v73 + 63) >> 6;
  v120 = v116 + 16;
  v118 = (v116 + 8);

  v77 = 0;
  v78 = MEMORY[0x277D84F98];
  v117 = v45;
  v112 = v76;
  v113 = v72;
  while (2)
  {
    if (v75)
    {
      v81 = v77;
LABEL_46:
      (*(v116 + 16))(v121, *(v115 + 6) + *(v116 + 72) * (__clz(__rbit64(v75)) | (v81 << 6)), v119);
      v82 = sub_227667E40();
      if (v78[2])
      {
        v84 = sub_226E92000(v82, v83);
        v86 = v85;

        if (v86)
        {
          v87 = *(v78[7] + 8 * v84);
LABEL_51:
          v88 = sub_227667E40();
          v90 = v87 + 1;
          if (__OFADD__(v87, 1))
          {
            goto LABEL_67;
          }

          v91 = v88;
          v92 = v89;
          v93 = swift_isUniquelyReferenced_nonNull_native();
          v122 = v78;
          v94 = sub_226E92000(v91, v92);
          v96 = v78[2];
          v97 = (v95 & 1) == 0;
          v70 = __OFADD__(v96, v97);
          v98 = v96 + v97;
          if (v70)
          {
            goto LABEL_68;
          }

          v99 = v95;
          if (v78[3] >= v98)
          {
            if ((v93 & 1) == 0)
            {
              v104 = v94;
              sub_226FF016C();
              v94 = v104;
            }
          }

          else
          {
            sub_226FE2228(v98, v93);
            v94 = sub_226E92000(v91, v92);
            if ((v99 & 1) != (v100 & 1))
            {
              goto LABEL_71;
            }
          }

          v45 = v117;
          v75 &= v75 - 1;
          if (v99)
          {
            v79 = v94;

            v80 = v121;
            v78 = v122;
            *(v122[7] + 8 * v79) = v90;
            (*v118)(v80, v119);
          }

          else
          {
            v78 = v122;
            v122[(v94 >> 6) + 8] |= 1 << v94;
            v101 = (v78[6] + 16 * v94);
            *v101 = v91;
            v101[1] = v92;
            *(v78[7] + 8 * v94) = v90;
            (*v118)(v121, v119);
            v102 = v78[2];
            v70 = __OFADD__(v102, 1);
            v103 = v102 + 1;
            if (v70)
            {
              goto LABEL_70;
            }

            v78[2] = v103;
          }

          v77 = v81;
          v76 = v112;
          v72 = v113;
          continue;
        }
      }

      else
      {
      }

      v87 = 0;
      goto LABEL_51;
    }

    break;
  }

  while (1)
  {
    v81 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      break;
    }

    if (v81 >= v76)
    {

      v105 = swift_isUniquelyReferenced_nonNull_native();
      v122 = v45;
      v106 = v108;
      sub_22733198C(v78, sub_227331974, 0, v105, &v122);
      if (v106)
      {
        goto LABEL_72;
      }

      return v122;
    }

    v75 = *&v72[8 * v81];
    ++v77;
    if (v75)
    {
      goto LABEL_46;
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  sub_22766D220();
  __break(1u);
LABEL_72:

  __break(1u);
  return result;
}

void sub_22747E1CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v50 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC168, &qword_22767CCF8);
  v6 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v8 = &v48 - v7;
  v9 = sub_227665F20();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v17 = &v48 - v14;
  v18 = 0;
  v58 = a3;
  v19 = *(a3 + 64);
  v51 = a3 + 64;
  v52 = 0;
  v20 = 1 << *(a3 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v61 = a4 + 56;
  v55 = &v48 - v14;
  v56 = v15;
  v63 = (v15 + 8);
  v64 = v15 + 16;
  v65 = v8;
  v54 = v23;
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v60 = (v22 - 1) & v22;
LABEL_14:
    v27 = v24 | (v18 << 6);
    v28 = v58;
    v29 = v58[6];
    v62 = *(v56 + 72);
    v30 = *(v56 + 16);
    v30(v17, v29 + v62 * v27, v9, v16);
    v31 = v28[7];
    v53 = v27;
    v32 = (v31 + 16 * v27);
    v33 = v17;
    v35 = *v32;
    v34 = v32[1];
    v36 = v65;
    (v30)(v65, v33, v9);
    v37 = (v36 + *(v57 + 48));
    *v37 = v35;
    v37[1] = v34;
    v38 = *(a4 + 16);
    v59 = v34;
    if (!v38)
    {
      swift_bridgeObjectRetain_n();
      goto LABEL_6;
    }

    v39 = *(a4 + 40);
    sub_226EAC0FC(&unk_27D7BBD10, MEMORY[0x277D51FE0]);
    swift_bridgeObjectRetain_n();
    v40 = sub_22766BF50();
    v41 = -1 << *(a4 + 32);
    v42 = v40 & ~v41;
    if ((*(v61 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
    {
      v43 = ~v41;
      while (1)
      {
        v44 = a4;
        (v30)(v12, *(a4 + 48) + v42 * v62, v9);
        sub_226EAC0FC(&qword_27D7B8700, MEMORY[0x277D51FE0]);
        v45 = sub_22766BFB0();
        v46 = *v63;
        (*v63)(v12, v9);
        if (v45)
        {
          break;
        }

        v42 = (v42 + 1) & v43;
        a4 = v44;
        if (((*(v61 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      sub_226E97D1C(v65, &qword_27D7BC168, &qword_22767CCF8);

      v17 = v55;
      v46(v55, v9);
      *(v50 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      v47 = __OFADD__(v52++, 1);
      a4 = v44;
      v23 = v54;
      v22 = v60;
      if (v47)
      {
        __break(1u);
LABEL_23:
        sub_227329A6C(v50, v49, v52, v58);
        return;
      }
    }

    else
    {
LABEL_6:
      sub_226E97D1C(v65, &qword_27D7BC168, &qword_22767CCF8);

      v17 = v55;
      (*v63)(v55, v9);
      v23 = v54;
      v22 = v60;
    }
  }

  v25 = v18;
  while (1)
  {
    v18 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      goto LABEL_23;
    }

    v26 = *(v51 + 8 * v18);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v60 = (v26 - 1) & v26;
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t *sub_22747E674(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = sub_22747C380(v14, v7, a1, a2);
      MEMORY[0x22AA9A450](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_22747E1CC((v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_22747E834@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276642E0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_227479B70(a1, *(v2 + 16), v2 + v6, *v7, *(v7 + 8), a2);
}

uint64_t sub_22747E900@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276642E0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2276685B0() - 8);
  return sub_227479E1C(a1, *(v2 + 16), v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

unint64_t sub_22747E9F0()
{
  result = qword_281398CD8;
  if (!qword_281398CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BDF28, &qword_227686AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398CD8);
  }

  return result;
}

uint64_t sub_22747EA54@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = *(sub_2276654E0() - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_2274754B0(a1, a2);
}

uint64_t sub_22747EB30()
{
  sub_22766C100();
}

uint64_t sub_22747EC44()
{
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

SeymourServices::ServerEnvironment_optional __swiftcall ServerEnvironment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22766D030();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ServerEnvironment.rawValue.getter()
{
  v1 = *v0;
  v2 = 7759204;
  v3 = 1685025392;
  if (v1 != 6)
  {
    v3 = 0x736D7469646F7270;
  }

  if (*v0 <= 5u)
  {
    v3 = 0x6E6F676E6976696CLL;
  }

  v4 = 24945;
  if (v1 != 2)
  {
    v4 = 0x736D74696171;
  }

  if (*v0)
  {
    v2 = 0x736D7469766564;
  }

  if (*v0 > 1u)
  {
    v2 = v4;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_22747EEDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7759204;
  v5 = 0xE400000000000000;
  v6 = 1685025392;
  v7 = 0xE800000000000000;
  if (v2 != 6)
  {
    v6 = 0x736D7469646F7270;
    v5 = 0xE800000000000000;
  }

  if (v2 != 4)
  {
    v7 = 0xEC000000736D7469;
  }

  if (*v1 <= 5u)
  {
    v6 = 0x6E6F676E6976696CLL;
    v5 = v7;
  }

  v8 = 0xE200000000000000;
  v9 = 24945;
  if (v2 != 2)
  {
    v9 = 0x736D74696171;
    v8 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x736D7469766564;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_22747EFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22747F214();
  v11 = MEMORY[0x277D4F9E0];

  return MEMORY[0x2821AEA18](a1, a2, a3, a4, a5, v10, v11);
}

uint64_t sub_22747F044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22747F214();
  v11 = MEMORY[0x277D4F9E0];

  return MEMORY[0x2821AEA20](a1, a2, a3, a4, a5, v10, v11);
}

unint64_t ServerEnvironment.serviceName.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000012;
  if (v1 != 6)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD00000000000001CLL;
  if (v1 == 4)
  {
    v3 = 0xD000000000000017;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000010;
  if (v1 != 2)
  {
    v4 = 0xD000000000000015;
  }

  v5 = 0xD000000000000016;
  if (!*v0)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    result = v5;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

unint64_t sub_22747F1B0()
{
  result = qword_2813A27B0;
  if (!qword_2813A27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A27B0);
  }

  return result;
}

unint64_t sub_22747F214()
{
  result = qword_2813A27A8;
  if (!qword_2813A27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A27A8);
  }

  return result;
}

uint64_t sub_22747F2C0(uint64_t a1, uint64_t (*a2)(BOOL, unint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v28 = MEMORY[0x277D84F90];
  a2(0, v2, 0);
  v3 = v28;
  v5 = a1 + 56;
  v6 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v8 = result;
  v9 = 0;
  v25 = v2;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_21;
    }

    v26 = *(a1 + 36);
    v12 = (*(a1 + 48) + 16 * v8);
    v13 = v12[1];
    v27 = *v12;
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);

    if (v15 >= v14 >> 1)
    {
      result = a2(v14 > 1, v15 + 1, 1);
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = v27;
    *(v16 + 40) = v13;
    v10 = 1 << *(a1 + 32);
    if (v8 >= v10)
    {
      goto LABEL_22;
    }

    v5 = a1 + 56;
    v17 = *(a1 + 56 + 8 * v11);
    if ((v17 & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v8 & 0x3F));
    if (v18)
    {
      v10 = __clz(__rbit64(v18)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v21 = (a1 + 64 + 8 * v11);
      while (v20 < (v10 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_226EB526C(v8, v26, 0);
          v10 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v8, v26, 0);
    }

LABEL_4:
    ++v9;
    v8 = v10;
    if (v9 == v25)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_22747F4F8(void *a1)
{
  v3 = [a1 modalityIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_22766C000();

    sub_2274B47BC([a1 preferredMusicGenres]);
    if (v1)
    {
    }

    else
    {
      sub_2274B47BC([a1 preferredTrainers]);
      sub_227668450();
    }
  }

  else
  {
    v5 = sub_227664DD0();
    sub_22747FB88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D51028], v5);
    swift_willThrow();
  }
}

void sub_22747F688(void *a1, uint64_t a2)
{
  sub_227668460();
  v5 = sub_22766BFD0();

  [a1 setModalityIdentifier_];

  v6 = sub_227668470();
  v7 = sub_22747F2C0(v6, sub_226F1EF10);

  v8 = sub_226F3D9D0(v7);

  v9 = sub_2276496D4(a2, v8);

  if (!v2)
  {
    [a1 setPreferredMusicGenres_];

    v10 = sub_227668440();
    v11 = sub_22747F2C0(v10, sub_226F1EEF0);

    v12 = sub_226F3D954(v11);

    v13 = sub_227649A14(a2, v12);

    [a1 setPreferredTrainers_];
  }
}

size_t static WorkoutPlanModalityPreference.representativeSamples()()
{
  v22 = sub_227668480();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v22);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766C090();
  v5 = sub_22766C590();
  v6 = sub_22766C590();
  v31 = v5;
  v32[0] = v4;
  v32[1] = v32;
  v32[2] = &v31;
  v30 = v6;
  v32[3] = &v30;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC868, &qword_22767F5F0);
  v29 = v28;
  v24 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v25 = sub_226F5BF60(&unk_27D7BC870, &qword_27D7BC868, &qword_22767F5F0);
  v26 = v25;
  v7 = sub_2276638E0();

  v8 = *(v7 + 16);
  if (v8)
  {
    v23 = MEMORY[0x277D84F90];
    result = sub_226F1F1B0(0, v8, 0);
    v10 = 0;
    v11 = v23;
    v20 = v0 + 32;
    v21 = v7;
    v12 = (v7 + 56);
    while (v10 < *(v7 + 16))
    {
      v13 = *(v12 - 3);
      v14 = *(v12 - 2);
      v15 = v3;
      v16 = *(v12 - 1);
      v17 = *v12;

      sub_227668450();
      v23 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_226F1F1B0(v18 > 1, v19 + 1, 1);
        v11 = v23;
      }

      ++v10;
      *(v11 + 16) = v19 + 1;
      result = (*(v0 + 32))(v11 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v19, v15, v22);
      v12 += 4;
      v7 = v21;
      v3 = v15;
      if (v8 == v10)
      {

        return v11;
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

uint64_t sub_22747FB30(uint64_t a1)
{
  result = sub_22747FB88(&qword_27D7B84C0, MEMORY[0x277D534C8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22747FB88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22747FBD0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 56) = a4;
  *(v4 + 48) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22747FCA4, 0, 0);
}

uint64_t sub_22747FCA4()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[12];
    v4 = v0[10];
    v5 = *(Strong + 112);
    sub_2276696A0();

    v6 = swift_task_alloc();
    v0[13] = v6;
    *(v6 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v6 + 24) = 38;
    *(v6 + 32) = 2;
    *(v6 + 40) = 194;
    *(v6 + 48) = v3;
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_22747FEEC;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v6, v9);
  }

  else
  {
    v14 = (v0[8] + *v0[8]);
    v10 = *(v0[8] + 4);
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    v11[1] = sub_2274801B4;
    v12 = v0[9];

    return v14(v0 + 5);
  }
}

uint64_t sub_22747FEEC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  v2[15] = v0;

  v5 = v2[13];
  if (v0)
  {

    v6 = sub_227480138;
  }

  else
  {
    v8 = v2[11];
    v7 = v2[12];
    v9 = v2[10];

    (*(v8 + 8))(v7, v9);
    v6 = sub_227480044;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227480044()
{
  v5 = (v0[8] + *v0[8]);
  v1 = *(v0[8] + 4);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_2274801B4;
  v3 = v0[9];

  return v5(v0 + 5);
}

uint64_t sub_227480138()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2274801B4()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_227480340;
  }

  else
  {
    v3 = sub_2274802C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2274802C8()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[5];
  sub_226ECC52C(v0[6]);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_227480340()
{
  v1 = v0[7];
  sub_226ECC52C(v0[6]);
  v2 = v0[17];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2274803B0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 56) = a4;
  *(v4 + 48) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227480484, 0, 0);
}

uint64_t sub_227480484()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[12];
    v4 = v0[10];
    v5 = *(Strong + 112);
    sub_2276696A0();

    v6 = swift_task_alloc();
    v0[13] = v6;
    *(v6 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v6 + 24) = 38;
    *(v6 + 32) = 2;
    *(v6 + 40) = 194;
    *(v6 + 48) = v3;
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_2274806CC;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v6, v9);
  }

  else
  {
    v14 = (v0[8] + *v0[8]);
    v10 = *(v0[8] + 4);
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    v11[1] = sub_227480918;
    v12 = v0[9];

    return v14(v0 + 5);
  }
}

uint64_t sub_2274806CC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  v2[15] = v0;

  v5 = v2[13];
  if (v0)
  {

    v6 = sub_227485258;
  }

  else
  {
    v8 = v2[11];
    v7 = v2[12];
    v9 = v2[10];

    (*(v8 + 8))(v7, v9);
    v6 = sub_227480824;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227480824()
{
  v5 = (v0[8] + *v0[8]);
  v1 = *(v0[8] + 4);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_227480918;
  v3 = v0[9];

  return v5(v0 + 5);
}

uint64_t sub_227480918()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_22748526C;
  }

  else
  {
    v3 = sub_227485264;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227480A2C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_227480AA8()
{
  v1 = v0[6];
  sub_226ECC52C(v0[5]);
  v2 = v0[16];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_227480B18(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
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

  return MEMORY[0x2822009F8](sub_227480BEC, 0, 0);
}

uint64_t sub_227480BEC()
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
    v8[1] = sub_227480E34;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v6, v9);
  }

  else
  {
    v14 = (v0[7] + *v0[7]);
    v10 = *(v0[7] + 4);
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_227481080;
    v12 = v0[8];

    return v14(v0 + 17);
  }
}

uint64_t sub_227480E34()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  v2[14] = v0;

  v5 = v2[12];
  if (v0)
  {

    v6 = sub_22748525C;
  }

  else
  {
    v8 = v2[10];
    v7 = v2[11];
    v9 = v2[9];

    (*(v8 + 8))(v7, v9);
    v6 = sub_227480F8C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227480F8C()
{
  v5 = (v0[7] + *v0[7]);
  v1 = *(v0[7] + 4);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_227481080;
  v3 = v0[8];

  return v5(v0 + 17);
}

uint64_t sub_227481080()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_227485270;
  }

  else
  {
    v3 = sub_227485268;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227481194(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v5 = a2;
  v27 = a2;
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *(v3 + 16);
  v12 = v7[2];
  v28 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v29 = v12;
  v12(&v27 - v9, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v6);
  sub_227669730();
  v13 = v7[1];
  v13(v10, v6);
  v14 = v32;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v5;
  v16[5] = v31;
  v17 = *__swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_227686DE8;
  *(v18 + 24) = v16;

  LOBYTE(v5) = v30;
  sub_2274E933C(v30, &unk_227686DF8, v18);

  v19 = *(v4 + 24);
  v29(v10, v4 + v28, v6);
  sub_227669730();
  v13(v10, v6);
  v20 = v32;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v23 = v31;
  v22[4] = v27;
  v22[5] = v23;
  v24 = *__swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_227686E00;
  *(v25 + 24) = v22;

  sub_2274E933C(v5, &unk_227686E08, v25);
}

uint64_t sub_2274814CC(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v5 = a2;
  v27 = a2;
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *(v3 + 16);
  v12 = v7[2];
  v28 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v29 = v12;
  v12(&v27 - v9, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v6);
  sub_227669730();
  v13 = v7[1];
  v13(v10, v6);
  v14 = v32;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v5;
  v16[5] = v31;
  v17 = *__swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_227686DB0;
  *(v18 + 24) = v16;

  LOBYTE(v5) = v30;
  sub_2274E933C(v30, &unk_227686DC0, v18);

  v19 = *(v4 + 24);
  v29(v10, v4 + v28, v6);
  sub_227669730();
  v13(v10, v6);
  v20 = v32;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v23 = v31;
  v22[4] = v27;
  v22[5] = v23;
  v24 = *__swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_227686DC8;
  *(v25 + 24) = v22;

  sub_2274E933C(v5, &unk_227686DD0, v25);
}

uint64_t sub_227481804(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v5 = a2;
  v27 = a2;
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *(v3 + 16);
  v12 = v7[2];
  v28 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v29 = v12;
  v12(&v27 - v9, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v6);
  sub_227669730();
  v13 = v7[1];
  v13(v10, v6);
  v14 = v32;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v5;
  v16[5] = v31;
  v17 = *__swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_227686D30;
  *(v18 + 24) = v16;

  LOBYTE(v5) = v30;
  sub_2274E933C(v30, &unk_227686D40, v18);

  v19 = *(v4 + 24);
  v29(v10, v4 + v28, v6);
  sub_227669730();
  v13(v10, v6);
  v20 = v32;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v23 = v31;
  v22[4] = v27;
  v22[5] = v23;
  v24 = *__swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_227686D48;
  *(v25 + 24) = v22;

  sub_2274E933C(v5, &unk_227686D50, v25);
}

uint64_t sub_227481B3C(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v5 = a2;
  v27 = a2;
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *(v3 + 16);
  v12 = v7[2];
  v28 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v29 = v12;
  v12(&v27 - v9, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v6);
  sub_227669730();
  v13 = v7[1];
  v13(v10, v6);
  v14 = v32;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v5;
  v16[5] = v31;
  v17 = *__swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_227686D70;
  *(v18 + 24) = v16;

  LOBYTE(v5) = v30;
  sub_2274E933C(v30, &unk_227686D80, v18);

  v19 = *(v4 + 24);
  v29(v10, v4 + v28, v6);
  sub_227669730();
  v13(v10, v6);
  v20 = v32;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v23 = v31;
  v22[4] = v27;
  v22[5] = v23;
  v24 = *__swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_227686D88;
  *(v25 + 24) = v22;

  sub_2274E933C(v5, &unk_227686D90, v25);
}

uint64_t sub_227481E74()
{
  v1 = v0;
  v2 = sub_227669A70();
  v35 = v2;
  v41 = *(v2 - 8);
  v3 = v41;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 96);
  v37 = *(v1 + 112);
  ObjectType = swift_getObjectType();
  v42 = v12;
  v14 = *MEMORY[0x277D4EA78];
  v15 = *(v3 + 104);
  v39 = v3 + 104;
  v40 = v15;
  v15(v6, v14, v2);
  swift_allocObject();
  v38 = v1;
  swift_weakInit();
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  sub_226FA712C();
  sub_227483990(&qword_281398BC0, &qword_27D7B94F0, &unk_227670BA0, sub_226F62704);
  sub_227669E90();

  v36 = *(v41 + 8);
  v41 += 8;
  v16 = v35;
  v36(v6, v35);
  swift_unknownObjectRelease();
  v42 = v12;
  v40(v6, *MEMORY[0x277D4E848], v16);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94D0, &unk_22767E4E0);
  sub_22748390C();
  sub_227483990(&qword_281398E48, &qword_27D7B94D0, &unk_22767E4E0, sub_226F68F84);
  v34[1] = ObjectType;
  sub_227669E90();

  v17 = v36;
  v36(v6, v16);
  swift_unknownObjectRelease();
  v42 = v12;
  v18 = v40;
  v40(v6, *MEMORY[0x277D4E750], v16);
  swift_allocObject();
  swift_weakInit();
  sub_2276658F0();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v19 = v35;
  v17(v6, v35);
  swift_unknownObjectRelease();
  v42 = v12;
  v18(v6, *MEMORY[0x277D4EB70], v19);
  swift_allocObject();
  v20 = v38;
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v17(v6, v19);
  swift_unknownObjectRelease();
  v42 = v12;
  v21 = v40;
  v40(v6, *MEMORY[0x277D4EBB0], v19);
  swift_allocObject();
  swift_weakInit();
  sub_227669ED0();

  v22 = v36;
  v36(v6, v19);
  swift_unknownObjectRelease();
  v42 = v12;
  v21(v6, *MEMORY[0x277D4E8A8], v19);
  swift_allocObject();
  swift_weakInit();
  sub_227669E90();

  v22(v6, v19);
  swift_unknownObjectRelease();
  v23 = v20;
  v24 = __swift_project_boxed_opaque_existential_0((v20 + 16), *(v20 + 40));
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = *v24;
  sub_226F65E34(36, sub_22748527C, v25);

  v27 = __swift_project_boxed_opaque_existential_0((v23 + 16), *(v23 + 40));
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = *v27;
  sub_227481B3C(25, &unk_227686D08, v28);

  v30 = __swift_project_boxed_opaque_existential_0((v23 + 16), *(v23 + 40));
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = *v30;
  sub_227481804(40, &unk_227686D18, v31);
}

uint64_t sub_227482664@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 56, v7);

    v3 = *__swift_project_boxed_opaque_existential_0(v7, v7[3]);
    sub_226FCAA18(a1);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
    (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_227482784(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_22766B390();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227482844, 0, 0);
}

uint64_t sub_227482844()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[13];
    v3 = v0[14];
    v5 = v0[12];
    sub_226E91B50(Strong + 56, (v0 + 2));

    v6 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    sub_22766A730();
    sub_22766B370();
    (*(v4 + 8))(v3, v5);
    v7 = *__swift_project_boxed_opaque_existential_0((v6 + 56), *(v6 + 80));
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_227482A1C;
    v9 = v0[10];

    return sub_226EA84C8(v9);
  }

  else
  {
    v11 = v0[10];
    v12 = sub_2276658F0();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = v0[14];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_227482A1C()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_227482B18, 0, 0);
}

uint64_t sub_227482B18()
{
  v1 = v0[10];
  v2 = sub_2276658F0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_227482BC8(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_22766B390();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227482C88, 0, 0);
}

uint64_t sub_227482C88()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 96);
    sub_226E91B50(Strong + 56, v0 + 16);

    v6 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_22766A730();
    sub_22766B370();
    (*(v4 + 8))(v3, v5);
    v7 = *__swift_project_boxed_opaque_existential_0((v6 + 240), *(v6 + 264));
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v8[1] = sub_227482E28;

    return sub_227036F64();
  }

  else
  {
    v10 = *(v0 + 112);
    **(v0 + 80) = 2;

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_227482E28(char a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_227482F28, 0, 0);
}

uint64_t sub_227482F28()
{
  v1 = *(v0 + 128);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = *(v0 + 112);
  **(v0 + 80) = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227482FA0(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_22766B390();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227483060, 0, 0);
}

uint64_t sub_227483060()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 96);
    sub_226E91B50(Strong + 56, v0 + 16);

    v6 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_22766A730();
    sub_22766B370();
    (*(v4 + 8))(v3, v5);
    v7 = *__swift_project_boxed_opaque_existential_0((v6 + 240), *(v6 + 264));
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v8[1] = sub_227483200;

    return sub_227037360();
  }

  else
  {
    v10 = *(v0 + 112);
    **(v0 + 80) = 2;

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_227483200(char a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_227485274, 0, 0);
}

uint64_t sub_227483300@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 56, v13);

    v8 = *__swift_project_boxed_opaque_existential_0(v13, v13[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *__swift_project_boxed_opaque_existential_0((v8 + 192), *(v8 + 216));
    sub_226FCFE28();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
    (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_227483510@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 56, v7);

    __swift_project_boxed_opaque_existential_0(v7, v7[3]);
    v3 = off_283A9B338;
    type metadata accessor for ContentAvailabilitySystem();
    v3();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DB0, &qword_227672120);
    (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DB0, &qword_227672120);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_227483664(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_22766B390();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227483724, 0, 0);
}

uint64_t sub_227483724()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 96);
    sub_226E91B50(Strong + 56, v0 + 16);

    v6 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_22766A730();
    sub_22766B370();
    (*(v4 + 8))(v3, v5);
    v7 = *__swift_project_boxed_opaque_existential_0((v6 + 240), *(v6 + 264));
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v8[1] = sub_227483200;

    return sub_227036F64();
  }

  else
  {
    v10 = *(v0 + 112);
    **(v0 + 80) = 2;

    v11 = *(v0 + 8);

    return v11();
  }
}

unint64_t sub_22748390C()
{
  result = qword_281398E50;
  if (!qword_281398E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B94D0, &unk_22767E4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E50);
  }

  return result;
}

uint64_t sub_227483990(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227483A0C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227482784(a1, v1);
}

uint64_t sub_227483AA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227482BC8(a1, v1);
}

uint64_t sub_227483B44(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227482FA0(a1, v1);
}

uint64_t sub_227483BE8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227483664(a1, v1);
}

uint64_t sub_227483C84(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_227483D74;

  return v7(v3 + 16);
}

uint64_t sub_227483D74()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_227484010;
  }

  else
  {
    v3 = sub_227483E88;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227483E88()
{
  if (v0[2])
  {
    v1 = v0[4];
    sub_227666F60();
    v2 = MEMORY[0x277D52AB0];
    sub_227485208(&qword_28139B590, MEMORY[0x277D52AB0]);
    sub_227485208(&qword_28139B5A0, v2);
    v3 = sub_22766C5C0();
    v5 = v4;

    if (!v1)
    {
      v6 = v0[1];

      return v6(v3, v5);
    }
  }

  else
  {
    sub_226F6649C();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_227484028(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_227484118;

  return v7(v3 + 16);
}

uint64_t sub_227484118()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_227485260;
  }

  else
  {
    v3 = sub_22748422C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22748422C()
{
  if (v0[2])
  {
    v1 = v0[4];
    sub_227669360();
    v2 = MEMORY[0x277D53BA0];
    sub_227485208(&qword_28139B288, MEMORY[0x277D53BA0]);
    sub_227485208(&qword_2813A5500, v2);
    v3 = sub_22766C5C0();
    v5 = v4;

    if (!v1)
    {
      v6 = v0[1];

      return v6(v3, v5);
    }
  }

  else
  {
    sub_226F6649C();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2274843CC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2274844BC;

  return v7(v3 + 33);
}

uint64_t sub_2274844BC()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_227485284;
  }

  else
  {
    v3 = sub_2274845D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2274845D0()
{
  v1 = *(v0 + 33);
  if (v1 == 2)
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
  *(v0 + 32) = v1 & 1;
  v4 = sub_227667710();
  if (v3)
  {
    goto LABEL_4;
  }

  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t sub_2274846D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_22748478C;

  return sub_22747FBD0(a2, a3, a4, a5);
}

uint64_t sub_22748478C(uint64_t a1)
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

uint64_t sub_22748489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_227485250;

  return sub_2274803B0(a2, a3, a4, a5);
}

uint64_t sub_227484954(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_227485278;

  return sub_226EC8438(a1, a2, v7);
}

uint64_t sub_227484A04(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = v1[3];
  v7 = *(v1 + 4);
  v6 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E92F34;

  return sub_226EC870C(a1, v4, v7, v6, v5);
}

uint64_t sub_227484AD4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_227484B84;

  return sub_226EC8438(a1, a2, v7);
}

uint64_t sub_227484B84(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_227484C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_227485254;

  return sub_227480B18(a2, a3, a4, a5);
}

uint64_t sub_227484D48(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = v1[3];
  v7 = *(v1 + 4);
  v6 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E93028;

  return sub_227484C90(a1, v4, v7, v6, v5);
}

uint64_t sub_227484E18(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_227485278;

  return sub_2274843CC(a1, a2, v7);
}

uint64_t sub_227484EC8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = v1[3];
  v7 = *(v1 + 4);
  v6 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E93028;

  return sub_22748489C(a1, v4, v7, v6, v5);
}

uint64_t sub_227484F98(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_227485278;

  return sub_227484028(a1, a2, v7);
}

uint64_t sub_227485048(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = v1[3];
  v7 = *(v1 + 4);
  v6 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E93028;

  return sub_2274846D4(a1, v4, v7, v6, v5);
}

uint64_t sub_227485118(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_227485278;

  return sub_227483C84(a1, a2, v7);
}

uint64_t objectdestroy_19Tm_1()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227485208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227485288()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2274852E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 64) = a5;
  *(v5 + 56) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v5 + 88) = v7;
  v8 = *(v7 - 8);
  *(v5 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2274853BC, 0, 0);
}

uint64_t sub_2274853BC()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[13];
    v4 = v0[11];
    v5 = *(Strong + 112);
    sub_2276696A0();

    v6 = swift_task_alloc();
    v0[14] = v6;
    *(v6 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v6 + 24) = 38;
    *(v6 + 32) = 2;
    *(v6 + 40) = 210;
    *(v6 + 48) = v3;
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_227485608;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v6, v9);
  }

  else
  {
    v14 = (v0[9] + *v0[9]);
    v10 = *(v0[9] + 4);
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_2274858D4;
    v12 = v0[10];

    return v14(v0 + 6, v0 + 5);
  }
}

uint64_t sub_227485608()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  v2[16] = v0;

  v5 = v2[14];
  if (v0)
  {

    v6 = sub_227485858;
  }

  else
  {
    v8 = v2[12];
    v7 = v2[13];
    v9 = v2[11];

    (*(v8 + 8))(v7, v9);
    v6 = sub_227485760;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227485760()
{
  v5 = (v0[9] + *v0[9]);
  v1 = *(v0[9] + 4);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_2274858D4;
  v3 = v0[10];

  return v5(v0 + 6, v0 + 5);
}

uint64_t sub_227485858()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2274858D4()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_227485A60;
  }

  else
  {
    v3 = sub_2274859E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2274859E8()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[6];
  sub_226EC70B4(v0[7]);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_227485A60()
{
  v1 = v0[8];
  sub_226EC70B4(v0[7]);
  v2 = v0[18];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_227485AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 64) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v5 + 88) = v6;
  v7 = *(v6 - 8);
  *(v5 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227485BA4, 0, 0);
}

uint64_t sub_227485BA4()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[13];
    v4 = v0[11];
    v5 = *(Strong + 112);
    sub_2276696A0();

    v6 = swift_task_alloc();
    v0[14] = v6;
    *(v6 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v6 + 24) = 38;
    *(v6 + 32) = 2;
    *(v6 + 40) = 210;
    *(v6 + 48) = v3;
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_227485DF0;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v6, v9);
  }

  else
  {
    v15 = (v0[9] + *v0[9]);
    v10 = *(v0[9] + 4);
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_227486040;
    v12 = v0[10];
    v13 = v0[6];

    return v15(v0 + 5, v13);
  }
}

uint64_t sub_227485DF0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  v2[16] = v0;

  v5 = v2[14];
  if (v0)
  {

    v6 = sub_227485858;
  }

  else
  {
    v8 = v2[12];
    v7 = v2[13];
    v9 = v2[11];

    (*(v8 + 8))(v7, v9);
    v6 = sub_227485F48;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227485F48()
{
  v6 = (v0[9] + *v0[9]);
  v1 = *(v0[9] + 4);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_227486040;
  v3 = v0[10];
  v4 = v0[6];

  return v6(v0 + 5, v4);
}

uint64_t sub_227486040()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_227485A60;
  }

  else
  {
    v3 = sub_227486154;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227486154()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[5];
  sub_226EC70B4(v0[7]);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2274861D0()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[17];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22748624C()
{
  v1 = v0[9];
  sub_226EC70B4(v0[8]);
  v2 = v0[19];
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2274862BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 64) = a5;
  *(v5 + 56) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v5 + 88) = v7;
  v8 = *(v7 - 8);
  *(v5 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 40) = a1;

  return MEMORY[0x2822009F8](sub_227486398, 0, 0);
}

uint64_t sub_227486398()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[13];
    v4 = v0[11];
    v5 = *(Strong + 112);
    sub_2276696A0();

    v6 = swift_task_alloc();
    v0[14] = v6;
    *(v6 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v6 + 24) = 38;
    *(v6 + 32) = 2;
    *(v6 + 40) = 210;
    *(v6 + 48) = v3;
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_2274865E4;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v6, v9);
  }

  else
  {
    v14 = (v0[9] + *v0[9]);
    v10 = *(v0[9] + 4);
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = sub_227486834;
    v12 = v0[10];

    return v14(v0 + 6, v0 + 5);
  }
}