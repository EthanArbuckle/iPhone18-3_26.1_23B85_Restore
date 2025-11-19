uint64_t sub_222C3808C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for RuleResult();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[4];
  sub_222B42A48(v11);
  if (v13)
  {
    type metadata accessor for CommonFeature.IntentHandlingStatus(0);
    *a2 = sub_222C93ECC();
    a2[1] = v14;
    a2[2] = v9;
    a2[3] = v8;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_222B41F28(v11);
    if ((v16 & 1) == 0 && (v10 != 0xD000000000000013 || 0x8000000222CA87A0 != v12))
    {
      sub_222C951FC();
    }

    swift_storeEnumTagMultiPayload();
    return sub_222B99D5C(v7, a2);
  }
}

uint64_t sub_222C3825C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FeaturisedTurn(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v10 = sub_222C9431C();
  __swift_project_value_buffer(v10, qword_280FE2340);

  v11 = sub_222C942FC();
  v12 = sub_222C94A3C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136315394;
    if (qword_280FDD9D8 != -1)
    {
      swift_once();
    }

    *(v13 + 4) = sub_222B437C0(qword_280FDD9E0, unk_280FDD9E8, v22);
    *(v13 + 12) = 2048;
    *(v13 + 14) = *(a1 + 16);

    _os_log_impl(&dword_222B39000, v11, v12, "%s Identifying successful sent messages in %ld turn(s)", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x223DCA8C0](v14, -1, -1);
    MEMORY[0x223DCA8C0](v13, -1, -1);

    v15 = *(a1 + 16);
    if (v15)
    {
      goto LABEL_7;
    }

    return MEMORY[0x277D84F90];
  }

  v15 = *(a1 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_7:
  v16 = sub_222B78534(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * (v15 - 1), v9);
  v17 = *&v9[*(v5 + 28)];
  MEMORY[0x28223BE20](v16);
  v22[-4] = v2;
  v22[-3] = v9;
  v22[-2] = v4;
  v19 = sub_222BDBD24(sub_222C385CC, &v22[-6], v18);
  v20 = sub_222C66F20(v19);

  sub_222B73DD0(v9);
  return v20;
}

double sub_222C385CC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_222C37B34(a1, v2[3], a2);
}

uint64_t sub_222C385EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222C38668(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_222C38848(v5, v7) & 1;
}

void *sub_222C386C4()
{
  sub_222C0A220(v0, &v11);
  v1 = v12;
  if (v12 == 1)
  {
    v2 = MEMORY[0x277D84F90];

    return sub_222B63C18(v2);
  }

  else
  {
    v4 = v11;
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v20 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027040, &unk_222CA34E0);
    inited = swift_initStackObject();
    v6 = inited;
    *(inited + 16) = xmmword_222C9CD00;
    *(inited + 32) = 0;
    v21 = v17;
    if (*(&v17 + 1))
    {
      *(inited + 40) = v17;
    }

    else
    {
      *&v22 = v4;
      *(&v22 + 1) = v1;
      *(inited + 40) = v22;
      sub_222C38950(&v22, &v24);
    }

    *(v6 + 56) = 1;
    v8 = v18;
    v7 = v19;
    *(v6 + 64) = v19;
    *(v6 + 80) = 2;
    v23 = v7;
    v24 = v8;
    *(v6 + 88) = v8;
    sub_222C38950(&v21, v10);
    sub_222C38950(&v23, v10);
    sub_222C38950(&v24, v10);
    sub_222C389C0(&v11);
    v9 = sub_222B63C18(v6);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027048, &unk_222CA1E10);
    swift_arrayDestroy();
    return v9;
  }
}

uint64_t sub_222C38848(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + 1) != *(a2 + 1) || v2 != v3)
    {
      v5 = a1;
      v6 = *(a1 + 1);
      v7 = a2;
      v8 = sub_222C951FC();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = *(a1 + 4);
  v11 = *(a2 + 4);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (*(a1 + 3) != *(a2 + 3) || v10 != v11)
    {
      v12 = a1;
      v13 = *(a1 + 3);
      v14 = a2;
      v15 = sub_222C951FC();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a2[48];
  if (a1[48])
  {
    if (a2[48])
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 5) != *(a2 + 5))
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_222C38950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D58, &qword_222C96B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C389C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256C8, &unk_222C98AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_222C38A44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_222C38AA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_222C38B28()
{
  result = qword_27D027410;
  if (!qword_27D027410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027410);
  }

  return result;
}

uint64_t sub_222C38B94(uint64_t a1)
{
  sub_222B43E3C(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

BOOL static DomainSuggestionSignal.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a4;
  v43 = a5;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_222C94B5C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v39 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v24 = v39 - v23;
  v25 = *a1;
  v26 = *a2;
  if (v25 > 5)
  {
    switch(v25)
    {
      case 6u:
        if (v26 != 6)
        {
          return 0;
        }

        goto LABEL_22;
      case 7u:
        if (v26 != 7)
        {
          return 0;
        }

        goto LABEL_22;
      case 8u:
        if (v26 != 8)
        {
          return 0;
        }

        goto LABEL_22;
    }
  }

  else
  {
    switch(v25)
    {
      case 3u:
        if (v26 != 3)
        {
          return 0;
        }

        goto LABEL_22;
      case 4u:
        if (v26 != 4)
        {
          return 0;
        }

        goto LABEL_22;
      case 5u:
        if (v26 != 5)
        {
          return 0;
        }

        goto LABEL_22;
    }
  }

  result = 0;
  if (v25 == v26 && (v26 - 9) <= 0xFFFFFFF9)
  {
LABEL_22:
    v40 = v22;
    v41 = v18;
    v39[0] = v13;
    v39[1] = a6;
    v44 = a3;
    v45 = v42;
    v46 = v43;
    v47 = a6;
    v28 = v21;
    v29 = *(type metadata accessor for DomainSuggestionSignal() + 52);
    v42 = v28;
    v43 = v15;
    v30 = *(v28 + 48);
    v31 = *(v15 + 16);
    v31(v24, &a1[v29], v14);
    v32 = &a2[v29];
    v33 = v10;
    v31(&v24[v30], v32, v14);
    v34 = *(v10 + 48);
    if (v34(v24, 1, a3) == 1)
    {
      if (v34(&v24[v30], 1, a3) == 1)
      {
        (*(v43 + 8))(v24, v14);
        return 1;
      }

      goto LABEL_27;
    }

    v35 = v41;
    v31(v41, v24, v14);
    if (v34(&v24[v30], 1, a3) == 1)
    {
      (*(v33 + 8))(v35, a3);
LABEL_27:
      (*(v40 + 8))(v24, v42);
      return 0;
    }

    v36 = v39[0];
    (*(v33 + 32))(v39[0], &v24[v30], a3);
    v37 = sub_222C9447C();
    v38 = *(v33 + 8);
    v38(v36, a3);
    v38(v35, a3);
    (*(v43 + 8))(v24, v14);
    return (v37 & 1) != 0;
  }

  return result;
}

uint64_t sub_222C390AC@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for DomainSuggestionSignal() + 52);
  v6 = sub_222C94B5C();
  return (*(*(v6 - 8) + 32))(&a3[v5], a2, v6);
}

uint64_t sub_222C39140(void *a1, int a2)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0274A8, &qword_222CA3918);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v56 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0274B0, &qword_222CA3920);
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v53 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0274B8, &qword_222CA3928);
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0274C0, &qword_222CA3930);
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v12);
  v47 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0274C8, &qword_222CA3938);
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0274D0, &qword_222CA3940);
  v44 = *(v19 - 8);
  v20 = *(v44 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0274D8, &qword_222CA3948);
  v43 = *(v23 - 8);
  v24 = *(v43 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v42 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0274E0, &qword_222CA3950);
  v60 = *(v27 - 8);
  v61 = v27;
  v28 = *(v60 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v42 - v29;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C3C860();
  v32 = v59;
  sub_222C9536C();
  if (v32 > 5u)
  {
    switch(v32)
    {
      case 6u:
        v65 = 3;
        sub_222C3CA04();
        v35 = v47;
        v36 = v61;
        sub_222C950BC();
        v38 = v48;
        v37 = v49;
        break;
      case 7u:
        v66 = 4;
        sub_222C3C9B0();
        v35 = v50;
        v36 = v61;
        sub_222C950BC();
        v38 = v51;
        v37 = v52;
        break;
      case 8u:
        v67 = 5;
        sub_222C3C95C();
        v35 = v53;
        v36 = v61;
        sub_222C950BC();
        v38 = v54;
        v37 = v55;
        break;
      default:
LABEL_12:
        v69 = 6;
        sub_222C3C8B4();
        v39 = v56;
        v40 = v61;
        sub_222C950BC();
        v68 = v32;
        sub_222C3C908();
        v41 = v58;
        sub_222C9512C();
        (*(v57 + 8))(v39, v41);
        return (*(v60 + 8))(v30, v40);
    }

    (*(v38 + 8))(v35, v37);
  }

  else
  {
    switch(v32)
    {
      case 3u:
        v62 = 0;
        sub_222C3CB00();
        v36 = v61;
        sub_222C950BC();
        (*(v43 + 8))(v26, v23);
        break;
      case 4u:
        v63 = 1;
        sub_222C3CAAC();
        v36 = v61;
        sub_222C950BC();
        (*(v44 + 8))(v22, v19);
        break;
      case 5u:
        v64 = 2;
        sub_222C3CA58();
        v33 = v61;
        sub_222C950BC();
        (*(v45 + 8))(v18, v46);
        return (*(v60 + 8))(v30, v33);
      default:
        goto LABEL_12;
    }
  }

  return (*(v60 + 8))(v30, v36);
}

uint64_t sub_222C39884(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027610, &qword_222CA4120);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027618, &qword_222CA4128);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027620, &qword_222CA4130);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027628, &qword_222CA4138);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C3D2C0();
  sub_222C9536C();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_222C3D368();
      sub_222C950BC();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_222C3D314();
      v21 = v27;
      sub_222C950BC();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_222C3D3BC();
    sub_222C950BC();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

unint64_t sub_222C39C04()
{
  v1 = *v0;
  v2 = 0x6F50676E6F727473;
  v3 = 0x6572656665526F6ELL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000018;
  }

  v4 = 0x657669746167656ELL;
  if (v1 != 3)
  {
    v4 = 0x654E676E6F727473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6576697469736F70;
  if (v1 != 1)
  {
    v5 = 0x6C61727475656ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_222C39CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222C3B548(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222C39D20(uint64_t a1)
{
  v2 = sub_222C3C860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C39D5C(uint64_t a1)
{
  v2 = sub_222C3C860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C39D98(uint64_t a1)
{
  v2 = sub_222C3CA04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C39DD4(uint64_t a1)
{
  v2 = sub_222C3CA04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C39E10(uint64_t a1)
{
  v2 = sub_222C3CA58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C39E4C(uint64_t a1)
{
  v2 = sub_222C3CA58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C39E88(uint64_t a1)
{
  v2 = sub_222C3C95C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C39EC4(uint64_t a1)
{
  v2 = sub_222C3C95C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C39F00(uint64_t a1)
{
  v2 = sub_222C3C8B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C39F3C(uint64_t a1)
{
  v2 = sub_222C3C8B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C39F78(uint64_t a1)
{
  v2 = sub_222C3CAAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C39FB4(uint64_t a1)
{
  v2 = sub_222C3CAAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C39FF0(uint64_t a1)
{
  v2 = sub_222C3C9B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C3A02C(uint64_t a1)
{
  v2 = sub_222C3C9B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3A068(uint64_t a1)
{
  v2 = sub_222C3CB00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C3A0A4(uint64_t a1)
{
  v2 = sub_222C3CB00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3A0EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222C3B7B0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_222C3A134()
{
  v1 = 0x6C61727475656ELL;
  if (*v0 != 1)
  {
    v1 = 0x657669746167656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576697469736F70;
  }
}

uint64_t sub_222C3A190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222C3C1D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222C3A1B8(uint64_t a1)
{
  v2 = sub_222C3D2C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C3A1F4(uint64_t a1)
{
  v2 = sub_222C3D2C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3A230(uint64_t a1)
{
  v2 = sub_222C3D314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C3A26C(uint64_t a1)
{
  v2 = sub_222C3D314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3A2A8(uint64_t a1)
{
  v2 = sub_222C3D368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C3A2E4(uint64_t a1)
{
  v2 = sub_222C3D368();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3A320(uint64_t a1)
{
  v2 = sub_222C3D3BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C3A35C(uint64_t a1)
{
  v2 = sub_222C3D3BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C3A398@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222C3C2F0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t DomainSuggestionSignal.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_222C94B5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_222C94D1C();
  MEMORY[0x223DC9330](0x53206C616E676953, 0xEF203A656372756FLL);
  (*(v5 + 16))(v8, &v1[*(a1 + 52)], v4);
  v9 = sub_222C944EC();
  MEMORY[0x223DC9330](v9);

  MEMORY[0x223DC9330](0x6C616E676953202CLL, 0xEA0000000000203ALL);
  v11[15] = *v1;
  sub_222C94ECC();
  return v12;
}

uint64_t sub_222C3A55C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E676973 && a2 == 0xE600000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F536C616E676973 && a2 == 0xEC00000065637275)
  {

    return 1;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_222C3A628(char a1)
{
  if (a1)
  {
    return 0x6F536C616E676973;
  }

  else
  {
    return 0x6C616E676973;
  }
}

uint64_t sub_222C3A664(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_222C3A628(*v1);
}

uint64_t sub_222C3A678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_222C3A55C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_222C3A6AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_222C3A700(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t DomainSuggestionSignal.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v15[0] = *(a2 + 32);
  v15[1] = v4;
  v18 = v4;
  v19 = v15[0];
  type metadata accessor for DomainSuggestionSignal.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_222C9513C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v16;
  sub_222C9536C();
  LOBYTE(v18) = *v11;
  v20 = 0;
  sub_222C3A930();
  v12 = v17;
  sub_222C9512C();
  if (!v12)
  {
    v13 = *(a2 + 52);
    LOBYTE(v18) = 1;
    sub_222C950DC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_222C3A930()
{
  result = qword_27D027418;
  if (!qword_27D027418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027418);
  }

  return result;
}

uint64_t DomainSuggestionSignal.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a6;
  v11 = sub_222C94B5C();
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v11);
  v34 = &v28 - v13;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v43 = a5;
  type metadata accessor for DomainSuggestionSignal.CodingKeys();
  swift_getWitnessTable();
  v38 = sub_222C9509C();
  v33 = *(v38 - 8);
  v14 = *(v33 + 64);
  MEMORY[0x28223BE20](v38);
  v16 = &v28 - v15;
  v35 = a2;
  v40 = a2;
  v41 = a3;
  v37 = a3;
  v42 = a4;
  v43 = a5;
  v17 = type metadata accessor for DomainSuggestionSignal();
  v29 = *(v17 - 8);
  v18 = *(v29 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v28 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v36 = v16;
  v22 = v39;
  sub_222C9535C();
  if (!v22)
  {
    v23 = v34;
    v39 = v17;
    v24 = v33;
    v44 = 0;
    sub_222C3ACD8();
    v25 = v36;
    sub_222C9507C();
    *v20 = v40;
    LOBYTE(v40) = 1;
    sub_222C9502C();
    (*(v24 + 8))(v25, v38);
    v27 = v39;
    (*(v30 + 32))(&v20[*(v39 + 52)], v23, v31);
    (*(v29 + 32))(v32, v20, v27);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_222C3ACD8()
{
  result = qword_27D027420[0];
  if (!qword_27D027420[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D027420);
  }

  return result;
}

uint64_t sub_222C3AD7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_222C94B5C();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222C3ADFC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xF7)
  {
    v7 = 247;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 1) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *&a1[v11];
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *&a1[v11];
      if (!*&a1[v11])
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if (v6 > 0xF7)
      {
        v19 = (*(v4 + 48))(&a1[v8 + 1] & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (v17 >= 3)
        {
          v18 = v17 - 2;
        }

        else
        {
          v18 = 0;
        }

        if (v18 >= 7)
        {
          return v18 - 6;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = a1[v11];
  if (!a1[v11])
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_222C3AFC0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xF7)
  {
    v10 = 247;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 1) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 > 0xF7)
  {
    v21 = (&a1[v11 + 1] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = &a1[v11 + 1] & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    *a1 = a2 + 8;
  }
}

uint64_t getEnumTagSinglePayload for SuggestionSignal(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SuggestionSignal(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
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

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_222C3B400(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_222C3B414(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

BOOL sub_222C3B488(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 5u)
  {
    switch(a1)
    {
      case 3u:
        return a2 == 3;
      case 4u:
        return a2 == 4;
      case 5u:
        return a2 == 5;
    }

LABEL_16:
    if (a2 - 3 >= 6)
    {
      return a1 == a2;
    }

    return 0;
  }

  if (a1 == 6)
  {
    return a2 == 6;
  }

  if (a1 != 7)
  {
    if (a1 == 8)
    {
      return a2 == 8;
    }

    goto LABEL_16;
  }

  return a2 == 7;
}

uint64_t sub_222C3B548(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F50676E6F727473 && a2 == 0xEE00657669746973 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576697469736F70 && a2 == 0xE800000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61727475656ELL && a2 == 0xE700000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657669746167656ELL && a2 == 0xE800000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654E676E6F727473 && a2 == 0xEE00657669746167 || (sub_222C951FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6572656665526F6ELL && a2 == 0xEB0000000065636ELL || (sub_222C951FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000222CACD90 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_222C951FC();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_222C3B7B0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027530, &qword_222CA3958);
  v3 = *(v2 - 8);
  v62 = v2;
  v63 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v66 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027538, &qword_222CA3960);
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v6);
  v68 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027540, &qword_222CA3968);
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v9);
  v64 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027548, &qword_222CA3970);
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12);
  v67 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027550, &qword_222CA3978);
  v54 = *(v15 - 8);
  v55 = v15;
  v16 = *(v54 + 64);
  MEMORY[0x28223BE20](v15);
  v65 = &v50 - v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027558, &qword_222CA3980);
  v52 = *(v53 - 8);
  v18 = *(v52 + 64);
  MEMORY[0x28223BE20](v53);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027560, &qword_222CA3988);
  v51 = *(v21 - 8);
  v22 = *(v51 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v50 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027568, &unk_222CA3990);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v50 - v28;
  v30 = a1[3];
  v31 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_222C3C860();
  v32 = v70;
  sub_222C9535C();
  if (!v32)
  {
    v33 = v24;
    v50 = v21;
    v34 = v20;
    v36 = v67;
    v35 = v68;
    v70 = v26;
    v37 = sub_222C9508C();
    v38 = (2 * *(v37 + 16)) | 1;
    v71 = v37;
    v72 = v37 + 32;
    v73 = 0;
    v74 = v38;
    v39 = sub_222B572D4();
    if (v39 == 7 || v73 != v74 >> 1)
    {
      v26 = sub_222C94DBC();
      swift_allocError();
      v42 = v41;
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00) + 48);
      *v42 = &type metadata for SuggestionSignal;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v26 - 8) + 104))(v42, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v70 + 8))(v29, v25);
      swift_unknownObjectRelease();
    }

    else if (v39 <= 2u)
    {
      if (v39)
      {
        if (v39 == 1)
        {
          v75 = 1;
          sub_222C3CAAC();
          sub_222C94FFC();
          (*(v52 + 8))(v34, v53);
          (*(v70 + 8))(v29, v25);
          swift_unknownObjectRelease();
          v26 = 4;
        }

        else
        {
          v75 = 2;
          sub_222C3CA58();
          v46 = v65;
          sub_222C94FFC();
          (*(v54 + 8))(v46, v55);
          (*(v70 + 8))(v29, v25);
          swift_unknownObjectRelease();
          v26 = 5;
        }
      }

      else
      {
        v75 = 0;
        sub_222C3CB00();
        sub_222C94FFC();
        (*(v51 + 8))(v33, v50);
        (*(v70 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v26 = 3;
      }
    }

    else if (v39 > 4u)
    {
      v45 = v70;
      if (v39 == 5)
      {
        v75 = 5;
        sub_222C3C95C();
        sub_222C94FFC();
        (*(v60 + 8))(v35, v61);
        (*(v45 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v26 = 8;
      }

      else
      {
        v75 = 6;
        sub_222C3C8B4();
        v48 = v66;
        sub_222C94FFC();
        sub_222C3CB54();
        v49 = v62;
        sub_222C9507C();
        (*(v63 + 8))(v48, v49);
        (*(v45 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v26 = v75;
      }
    }

    else
    {
      v40 = v70;
      if (v39 == 3)
      {
        v75 = 3;
        sub_222C3CA04();
        sub_222C94FFC();
        (*(v56 + 8))(v36, v57);
        (*(v40 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v26 = 6;
      }

      else
      {
        v75 = 4;
        sub_222C3C9B0();
        v47 = v64;
        sub_222C94FFC();
        (*(v58 + 8))(v47, v59);
        (*(v40 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v26 = 7;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v69);
  return v26;
}

uint64_t sub_222C3C1D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697469736F70 && a2 == 0xE800000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61727475656ELL && a2 == 0xE700000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657669746167656ELL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222C3C2F0(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027650, &qword_222CA4140);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027658, &qword_222CA4148);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027660, &qword_222CA4150);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027668, &qword_222CA4158);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_222C3D2C0();
  v18 = v39;
  sub_222C9535C();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_222C9508C();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_222B572CC();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_222C3D368();
          sub_222C94FFC();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0Tm(v40);
          return v12;
        }

        v45 = 2;
        sub_222C3D314();
        v29 = v15;
        sub_222C94FFC();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_222C3D3BC();
        v29 = v15;
        sub_222C94FFC();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_222C94DBC();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00) + 48);
    *v27 = &type metadata for SignalSentiment;
    sub_222C9500C();
    sub_222C94DAC();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  return v12;
}

unint64_t sub_222C3C860()
{
  result = qword_27D0274E8;
  if (!qword_27D0274E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0274E8);
  }

  return result;
}

unint64_t sub_222C3C8B4()
{
  result = qword_27D0274F0;
  if (!qword_27D0274F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0274F0);
  }

  return result;
}

unint64_t sub_222C3C908()
{
  result = qword_27D0274F8;
  if (!qword_27D0274F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0274F8);
  }

  return result;
}

unint64_t sub_222C3C95C()
{
  result = qword_27D027500;
  if (!qword_27D027500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027500);
  }

  return result;
}

unint64_t sub_222C3C9B0()
{
  result = qword_27D027508;
  if (!qword_27D027508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027508);
  }

  return result;
}

unint64_t sub_222C3CA04()
{
  result = qword_27D027510;
  if (!qword_27D027510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027510);
  }

  return result;
}

unint64_t sub_222C3CA58()
{
  result = qword_27D027518;
  if (!qword_27D027518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027518);
  }

  return result;
}

unint64_t sub_222C3CAAC()
{
  result = qword_27D027520;
  if (!qword_27D027520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027520);
  }

  return result;
}

unint64_t sub_222C3CB00()
{
  result = qword_27D027528;
  if (!qword_27D027528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027528);
  }

  return result;
}

unint64_t sub_222C3CB54()
{
  result = qword_27D027570;
  if (!qword_27D027570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027570);
  }

  return result;
}

unint64_t sub_222C3CC3C()
{
  result = qword_27D027578;
  if (!qword_27D027578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027578);
  }

  return result;
}

unint64_t sub_222C3CC94()
{
  result = qword_27D027580;
  if (!qword_27D027580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027580);
  }

  return result;
}

unint64_t sub_222C3CCEC()
{
  result = qword_27D027588;
  if (!qword_27D027588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027588);
  }

  return result;
}

unint64_t sub_222C3CD44()
{
  result = qword_27D027590;
  if (!qword_27D027590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027590);
  }

  return result;
}

unint64_t sub_222C3CD9C()
{
  result = qword_27D027598;
  if (!qword_27D027598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027598);
  }

  return result;
}

unint64_t sub_222C3CDF4()
{
  result = qword_27D0275A0;
  if (!qword_27D0275A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0275A0);
  }

  return result;
}

unint64_t sub_222C3CE4C()
{
  result = qword_27D0275A8;
  if (!qword_27D0275A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0275A8);
  }

  return result;
}

unint64_t sub_222C3CEA4()
{
  result = qword_27D0275B0;
  if (!qword_27D0275B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0275B0);
  }

  return result;
}

unint64_t sub_222C3CEFC()
{
  result = qword_27D0275B8;
  if (!qword_27D0275B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0275B8);
  }

  return result;
}

unint64_t sub_222C3CF54()
{
  result = qword_27D0275C0;
  if (!qword_27D0275C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0275C0);
  }

  return result;
}

unint64_t sub_222C3CFAC()
{
  result = qword_27D0275C8;
  if (!qword_27D0275C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0275C8);
  }

  return result;
}

unint64_t sub_222C3D004()
{
  result = qword_27D0275D0;
  if (!qword_27D0275D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0275D0);
  }

  return result;
}

unint64_t sub_222C3D05C()
{
  result = qword_27D0275D8;
  if (!qword_27D0275D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0275D8);
  }

  return result;
}

unint64_t sub_222C3D0B4()
{
  result = qword_27D0275E0;
  if (!qword_27D0275E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0275E0);
  }

  return result;
}

unint64_t sub_222C3D10C()
{
  result = qword_27D0275E8;
  if (!qword_27D0275E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0275E8);
  }

  return result;
}

unint64_t sub_222C3D164()
{
  result = qword_27D0275F0;
  if (!qword_27D0275F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0275F0);
  }

  return result;
}

unint64_t sub_222C3D1BC()
{
  result = qword_27D0275F8;
  if (!qword_27D0275F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0275F8);
  }

  return result;
}

unint64_t sub_222C3D214()
{
  result = qword_27D027600;
  if (!qword_27D027600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027600);
  }

  return result;
}

unint64_t sub_222C3D26C()
{
  result = qword_27D027608;
  if (!qword_27D027608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027608);
  }

  return result;
}

unint64_t sub_222C3D2C0()
{
  result = qword_27D027630;
  if (!qword_27D027630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027630);
  }

  return result;
}

unint64_t sub_222C3D314()
{
  result = qword_27D027638;
  if (!qword_27D027638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027638);
  }

  return result;
}

unint64_t sub_222C3D368()
{
  result = qword_27D027640;
  if (!qword_27D027640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027640);
  }

  return result;
}

unint64_t sub_222C3D3BC()
{
  result = qword_27D027648;
  if (!qword_27D027648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027648);
  }

  return result;
}

unint64_t sub_222C3D454()
{
  result = qword_27D027670;
  if (!qword_27D027670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027670);
  }

  return result;
}

unint64_t sub_222C3D4AC()
{
  result = qword_27D027678;
  if (!qword_27D027678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027678);
  }

  return result;
}

unint64_t sub_222C3D504()
{
  result = qword_27D027680;
  if (!qword_27D027680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027680);
  }

  return result;
}

unint64_t sub_222C3D55C()
{
  result = qword_27D027688;
  if (!qword_27D027688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027688);
  }

  return result;
}

unint64_t sub_222C3D5B4()
{
  result = qword_27D027690;
  if (!qword_27D027690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027690);
  }

  return result;
}

unint64_t sub_222C3D60C()
{
  result = qword_27D027698;
  if (!qword_27D027698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027698);
  }

  return result;
}

unint64_t sub_222C3D664()
{
  result = qword_27D0276A0;
  if (!qword_27D0276A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0276A0);
  }

  return result;
}

unint64_t sub_222C3D6BC()
{
  result = qword_27D0276A8;
  if (!qword_27D0276A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0276A8);
  }

  return result;
}

unint64_t sub_222C3D714()
{
  result = qword_27D0276B0;
  if (!qword_27D0276B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0276B0);
  }

  return result;
}

uint64_t sub_222C3D768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_222C3D7B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222C3D810@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v26 = type metadata accessor for RuleResult();
  v3 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for FeaturisedTurn(0);
  v6 = *(result + 28);
  v25 = a1;
  v7 = *(a1 + v6);
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_13:

    return swift_storeEnumTagMultiPayload();
  }

  v9 = 0;
  v10 = (v7 + 64);
  while (1)
  {
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
      return result;
    }

    v11 = *(v10 - 3);
    v12 = *(v10 - 2);
    v14 = *(v10 - 1);
    v13 = *v10;

    v15 = sub_222B41F28(v12);
    if (v16)
    {
      goto LABEL_4;
    }

    if (v14 != 0xD000000000000013 || 0x8000000222CA87A0 != v13)
    {
      break;
    }

    if (v15 == 1)
    {
      goto LABEL_11;
    }

LABEL_4:
    ++v9;

    v10 += 5;
    if (v8 == v9)
    {
      goto LABEL_13;
    }
  }

  v17 = v15;
  if ((sub_222C951FC() & 1) == 0 || v17 != 1)
  {
    goto LABEL_4;
  }

LABEL_11:

  v19 = sub_222B41CFC(v18);

  swift_bridgeObjectRelease_n();

  if (v19 == 2)
  {
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F90, &qword_222CA17C0) + 48);
    v21 = v27;
    *v27 = 0xD00000000000001CLL;
    *(v21 + 1) = 0x8000000222CACDB0;
    v22 = sub_222C9367C();
    (*(*(v22 - 8) + 16))(&v21[v20], v25, v22);
    goto LABEL_13;
  }

  v23 = v24;
  swift_storeEnumTagMultiPayload();
  return sub_222B99D5C(v23, v27);
}

uint64_t sub_222C3DAC4(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = v1[2];
  v4 = v1[3];
  if (*v1 != *a1 || v1[1] != a1[1])
  {
    v7 = sub_222C951FC();
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_15:
    if (!v2)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (v7)
    {
      return 3;
    }

    return 2;
  }

  v7 = 1;
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (!v2)
  {
    goto LABEL_16;
  }

  if (v5 == v3 && v4 == v2)
  {
LABEL_18:
    if (v7)
    {
      return 5;
    }

    return 4;
  }

  v9 = sub_222C951FC();
  if (v7)
  {
    if (v9)
    {
      return 5;
    }

    return 3;
  }

  if (v9)
  {
    return 4;
  }

  return 2;
}

uint64_t sub_222C3E4E4(uint64_t a1, void *a2, uint64_t a3)
{
  result = type metadata accessor for FeaturisedTurn(0);
  v5 = *(a3 + *(result + 28));
  v6 = *(v5 + 16);
  if (!v6)
  {
    v9 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_20;
    }

LABEL_26:

    *(a1 + 32) = 0;
    v31 = 0uLL;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    goto LABEL_32;
  }

  v7 = 0;
  v8 = v5 + 64;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v36 = v9;
    v10 = (v8 + 40 * v7);
    v11 = v7;
    while (1)
    {
      if (v11 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v13 = *(v10 - 4);
      v12 = *(v10 - 3);
      v14 = *(v10 - 2);
      v15 = *(v10 - 1);
      v16 = *v10;

      v17 = sub_222B41F28(v14);
      if (v18)
      {
        goto LABEL_5;
      }

      if (v15 != 0xD000000000000011 || 0x8000000222CA8780 != v16)
      {
        break;
      }

      if (v17 == 1)
      {
        goto LABEL_12;
      }

LABEL_5:
      ++v11;

      v10 += 5;
      if (v6 == v11)
      {
        v9 = v36;
        goto LABEL_19;
      }
    }

    v19 = v17;
    if ((sub_222C951FC() & 1) == 0 || v19 != 1)
    {
      goto LABEL_5;
    }

LABEL_12:
    v9 = v36;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_222B4C374(0, v36[2] + 1, 1);
      v9 = v36;
    }

    v21 = v9[2];
    v20 = v9[3];
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      result = sub_222B4C374((v20 > 1), v21 + 1, 1);
      v22 = v21 + 1;
      v9 = v36;
    }

    v7 = v11 + 1;
    v9[2] = v22;
    v23 = &v9[5 * v21];
    v23[4] = v13;
    v23[5] = v12;
    v23[6] = v14;
    v23[7] = v15;
    v23[8] = v16;
    v8 = v5 + 64;
  }

  while (v6 - 1 != v11);
LABEL_19:
  if (!v9[2])
  {
    goto LABEL_26;
  }

LABEL_20:
  v24 = v9[4];
  v25 = v9[5];
  v27 = v9[6];
  v26 = v9[7];
  v28 = v9[8];
  swift_bridgeObjectRetain_n();

  v29 = sub_222B41CFC(v27);

  if (v29 == 2 || (v29 & 1) == 0)
  {

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a2 = v24;
    a2[1] = v25;
    a2[2] = v27;
    a2[3] = v26;
    a2[4] = v28;
  }

  else
  {
    result = v9;
    v30 = v9[2];
    if (v30 == 1)
    {

      goto LABEL_31;
    }

    if (v30)
    {
      v32 = v9[10];
      v40 = v9[9];
      v33 = v9[11];
      v37 = v9[12];
      v34 = v9[13];

      swift_bridgeObjectRetain_n();

      v35 = sub_222B41CFC(v33);

      if (v35 == 2 || (v35 & 1) != 0)
      {

LABEL_31:
        *a1 = v24;
        *(a1 + 8) = v25;
        *(a1 + 16) = v27;
        *(a1 + 24) = v26;
        *(a1 + 32) = v28;
        v31 = 0uLL;
LABEL_32:
        *a2 = v31;
        *(a2 + 1) = v31;
        a2[4] = 0;
      }

      else
      {
        *a1 = v24;
        *(a1 + 8) = v25;
        *(a1 + 16) = v27;
        *(a1 + 24) = v26;
        *(a1 + 32) = v28;
        *a2 = v40;
        a2[1] = v32;
        a2[2] = v33;
        a2[3] = v37;
        a2[4] = v34;
      }
    }

    else
    {
LABEL_35:
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_222C3E86C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    v4 = *(type metadata accessor for FeaturisedTurn(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

unint64_t sub_222C3E900(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v13 = &v24 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    v17 = 0;
    return v17 & 1;
  }

  v15 = v10;
  v16 = *(v11 + 72);
  sub_222B78534(a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + v16 * (v14 - 1), &v24 - v12);
  if (isSiriPhoneCall(_:)(v13))
  {
    v17 = 1;
LABEL_12:
    sub_222B73DD0(v13);
    return v17 & 1;
  }

  if (v14 == 1)
  {
LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  result = sub_222C3E86C(1uLL, a1);
  v22 = v21 >> 1;
  if (v20 == v21 >> 1)
  {

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (v22 > v20)
  {
    sub_222B78534(v19 + (v22 - 1) * v16, v6);

    swift_unknownObjectRelease();
    sub_222B7E350(v6, v9);
    sub_222B41D48(*&v13[*(v15 + 24)]);
    if (!v23)
    {
      v17 = isSiriPhoneCall(_:)(v9);
      sub_222B73DD0(v9);
      goto LABEL_12;
    }

    sub_222B73DD0(v9);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_222C3EAF4()
{
  v0 = sub_222C9325C();
  __swift_allocate_value_buffer(v0, qword_27D0276B8);
  __swift_project_value_buffer(v0, qword_27D0276B8);
  return sub_222C9324C();
}

uint64_t sub_222C3EB48()
{
  type metadata accessor for AdamIdExtractor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0276F0, &qword_222CA45C8);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D0276D0 = 91;
  *algn_27D0276D8 = 0xE100000000000000;
  return result;
}

id sub_222C3EBD4()
{
  v1 = *(v0 + 16);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = [objc_opt_self() deviceMediaLibrary];
    v3 = *(v0 + 16);
    *(v0 + 16) = v2;
    v4 = v2;
    sub_222C426CC(v3);
  }

  sub_222C426DC(v1);
  return v2;
}

uint64_t sub_222C3EC4C(uint64_t a1, unint64_t a2)
{
  result = sub_222C41734(a1, a2);
  if (!v5)
  {
    return result;
  }

  v6 = sub_222C3EBD4();
  if (!v6)
  {

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v20 = sub_222C9431C();
    __swift_project_value_buffer(v20, qword_280FE2340);
    v7 = sub_222C942FC();
    v21 = sub_222C94A4C();
    if (os_log_type_enabled(v7, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315138;
      if (qword_27D024758 != -1)
      {
        swift_once();
      }

      *(v22 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, &v30);
      _os_log_impl(&dword_222B39000, v7, v21, "%s Failed to init MPMediaLibrary", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x223DCA8C0](v23, -1, -1);
      MEMORY[0x223DCA8C0](v22, -1, -1);
    }

    goto LABEL_29;
  }

  v7 = v6;
  v8 = sub_222C9448C();

  v9 = [v7 entityWithSiriSyncIdentifier:v8];

  if (!v9)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v24 = sub_222C9431C();
    __swift_project_value_buffer(v24, qword_280FE2340);

    v25 = sub_222C942FC();
    v26 = sub_222C94A4C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v27 = 136315394;
      if (qword_27D024758 != -1)
      {
        swift_once();
      }

      *(v27 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, &v30);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_222B437C0(a1, a2, &v30);
      _os_log_impl(&dword_222B39000, v25, v26, "%s lookupMediaItemAdamId: Failed to get mediaEntity by querying with SiriSyncIds: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v28, -1, -1);
      MEMORY[0x223DCA8C0](v27, -1, -1);
    }

LABEL_29:
    return 0;
  }

  v29 = sub_222C421A8();
  v11 = v10;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v12 = sub_222C9431C();
  __swift_project_value_buffer(v12, qword_280FE2340);

  v13 = sub_222C942FC();
  v14 = sub_222C94A3C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315650;
    if (qword_27D024758 != -1)
    {
      swift_once();
    }

    *(v15 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, &v30);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_222B437C0(a1, a2, &v30);
    *(v15 + 22) = 2080;
    if (v11)
    {
      v17 = v29;
    }

    else
    {
      v17 = 7104878;
    }

    if (v11)
    {
      v18 = v11;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_222B437C0(v17, v18, &v30);

    *(v15 + 24) = v19;
    _os_log_impl(&dword_222B39000, v13, v14, "%s lookupMediaItemAdamId: Original SiriSyncId: %s Found AdamId: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v16, -1, -1);
    MEMORY[0x223DCA8C0](v15, -1, -1);

    return v29;
  }

  else
  {

    return v29;
  }
}

BOOL String.isNumber.getter()
{

  do
  {
    sub_222C9459C();
    v1 = v0;
    if (!v0)
    {
      break;
    }

    v2 = sub_222C9442C();
  }

  while ((v2 & 1) != 0);

  return v1 == 0;
}

double sub_222C3F220@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = sub_222C5CDF8();
  v11 = v9;
  if (!v7)
  {
    if (!v9)
    {
      goto LABEL_79;
    }

    v19 = HIBYTE(v9) & 0xF;
    v20 = v8 & 0xFFFFFFFFFFFFLL;
    if (!((v9 & 0x2000000000000000) != 0 ? HIBYTE(v9) & 0xF : v8 & 0xFFFFFFFFFFFFLL))
    {
      goto LABEL_79;
    }

    if ((v9 & 0x1000000000000000) != 0)
    {
      v56 = v8;

      v3 = sub_222C40D34(v56, v11, 10);
      v58 = v57;

      v8 = v56;
      if (v58)
      {
        goto LABEL_79;
      }

      goto LABEL_91;
    }

    if ((v9 & 0x2000000000000000) != 0)
    {
      v81 = v8;
      v82 = v9 & 0xFFFFFFFFFFFFFFLL;
      if (v8 == 43)
      {
        if (v19)
        {
          if (--v19)
          {
            v3 = 0;
            v39 = &v81 + 1;
            while (1)
            {
              v40 = *v39 - 48;
              if (v40 > 9)
              {
                break;
              }

              v41 = 10 * v3;
              if ((v3 * 10) >> 64 != (10 * v3) >> 63)
              {
                break;
              }

              v3 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                break;
              }

              ++v39;
              if (!--v19)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_77;
        }

LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      if (v8 != 45)
      {
        if (v19)
        {
          v3 = 0;
          v44 = &v81;
          while (1)
          {
            v45 = *v44 - 48;
            if (v45 > 9)
            {
              break;
            }

            v46 = 10 * v3;
            if ((v3 * 10) >> 64 != (10 * v3) >> 63)
            {
              break;
            }

            v3 = v46 + v45;
            if (__OFADD__(v46, v45))
            {
              break;
            }

            v44 = (v44 + 1);
            if (!--v19)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }

      if (v19)
      {
        if (--v19)
        {
          v3 = 0;
          v33 = &v81 + 1;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v3;
            if ((v3 * 10) >> 64 != (10 * v3) >> 63)
            {
              break;
            }

            v3 = v35 - v34;
            if (__OFSUB__(v35, v34))
            {
              break;
            }

            ++v33;
            if (!--v19)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }
    }

    else
    {
      if ((v8 & 0x1000000000000000) != 0)
      {
        v22 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v3 = v8;
        v22 = sub_222C94DCC();
        v8 = v3;
      }

      v23 = *v22;
      if (v23 == 43)
      {
        if (v20 >= 1)
        {
          v19 = v20 - 1;
          if (v20 != 1)
          {
            v3 = 0;
            if (v22)
            {
              v36 = v22 + 1;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  goto LABEL_77;
                }

                v38 = 10 * v3;
                if ((v3 * 10) >> 64 != (10 * v3) >> 63)
                {
                  goto LABEL_77;
                }

                v3 = v38 + v37;
                if (__OFADD__(v38, v37))
                {
                  goto LABEL_77;
                }

                ++v36;
                if (!--v19)
                {
                  goto LABEL_78;
                }
              }
            }

            goto LABEL_69;
          }

          goto LABEL_77;
        }

        goto LABEL_122;
      }

      if (v23 != 45)
      {
        if (v20)
        {
          v3 = 0;
          if (v22)
          {
            while (1)
            {
              v42 = *v22 - 48;
              if (v42 > 9)
              {
                goto LABEL_77;
              }

              v43 = 10 * v3;
              if ((v3 * 10) >> 64 != (10 * v3) >> 63)
              {
                goto LABEL_77;
              }

              v3 = v43 + v42;
              if (__OFADD__(v43, v42))
              {
                goto LABEL_77;
              }

              ++v22;
              if (!--v20)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_77:
        v3 = 0;
        LOBYTE(v19) = 1;
LABEL_78:
        LOBYTE(v85) = v19;
        if (v19)
        {
LABEL_79:
          v47 = v8;
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v48 = sub_222C9431C();
          __swift_project_value_buffer(v48, qword_280FE2340);

          v14 = sub_222C942FC();
          v49 = sub_222C94A3C();

          if (!os_log_type_enabled(v14, v49))
          {

            goto LABEL_88;
          }

          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v85 = v51;
          *v50 = 136315394;
          if (qword_27D024758 != -1)
          {
            swift_once();
          }

          *(v50 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, &v85);
          *(v50 + 12) = 2080;
          v81 = v10;
          v82 = 0;
          v83 = v47;
          v84 = v11;
          v52 = sub_222C944EC();
          v54 = sub_222B437C0(v52, v53, &v85);

          *(v50 + 14) = v54;
          _os_log_impl(&dword_222B39000, v14, v49, "%s Missing / invalid persistent store identifier. MPC Components: %s", v50, 0x16u);
          swift_arrayDestroy();
          v55 = v51;
          goto LABEL_85;
        }

LABEL_91:

        v59 = sub_222C3EBD4();
        if (!v59)
        {
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v72 = sub_222C9431C();
          __swift_project_value_buffer(v72, qword_280FE2340);
          v14 = sub_222C942FC();
          v73 = sub_222C94A4C();
          if (!os_log_type_enabled(v14, v73))
          {
            goto LABEL_88;
          }

          v50 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v81 = v74;
          *v50 = 136315138;
          if (qword_27D024758 != -1)
          {
            swift_once();
          }

          *(v50 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, &v81);
          _os_log_impl(&dword_222B39000, v14, v73, "%s Failed to init MPMediaLibrary", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v74);
          v55 = v74;
LABEL_85:
          MEMORY[0x223DCA8C0](v55, -1, -1);
          v18 = v50;
LABEL_86:
          MEMORY[0x223DCA8C0](v18, -1, -1);
LABEL_88:

LABEL_89:
          *(a3 + 48) = 0;
          result = 0.0;
          *(a3 + 16) = 0u;
          *(a3 + 32) = 0u;
          *a3 = 0u;
          return result;
        }

        v10 = v59;
        v60 = [v59 entityWithPersistentID:v3 entityType:0];
        if (v60)
        {
          v61 = v60;
          v62 = sub_222C421A8();
          v64 = v63;
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v65 = sub_222C9431C();
          __swift_project_value_buffer(v65, qword_280FE2340);

          v66 = sub_222C942FC();
          v67 = sub_222C94A3C();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v81 = v80;
            *v68 = 136315650;
            if (qword_27D024758 != -1)
            {
              swift_once();
            }

            *(v68 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, &v81);
            *(v68 + 12) = 2080;
            *(v68 + 14) = sub_222B437C0(a1, a2, &v81);
            *(v68 + 22) = 2080;
            if (v64)
            {
              v69 = v62;
            }

            else
            {
              v69 = 7104878;
            }

            if (v64)
            {
              v70 = v64;
            }

            else
            {
              v70 = 0xE300000000000000;
            }

            v71 = sub_222B437C0(v69, v70, &v81);

            *(v68 + 24) = v71;
            _os_log_impl(&dword_222B39000, v66, v67, "%s lookupMpcIdentifierAdamId: Original mpc-item id: %s Found AdamId: %s", v68, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x223DCA8C0](v80, -1, -1);
            MEMORY[0x223DCA8C0](v68, -1, -1);
          }

          if (!v64)
          {
            goto LABEL_89;
          }

          *a3 = v62;
          *(a3 + 8) = v64;
          result = 0.0;
          *(a3 + 16) = xmmword_222C9A0B0;
          *(a3 + 32) = 0;
          *(a3 + 40) = 0;
          *(a3 + 48) = 258;
          return result;
        }

        if (qword_280FDFE78 == -1)
        {
LABEL_114:
          v75 = sub_222C9431C();
          __swift_project_value_buffer(v75, qword_280FE2340);
          v76 = sub_222C942FC();
          v77 = sub_222C94A4C();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v81 = v79;
            *v78 = 136315394;
            if (qword_27D024758 != -1)
            {
              swift_once();
            }

            *(v78 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, &v81);
            *(v78 + 12) = 2048;
            *(v78 + 14) = v3;
            _os_log_impl(&dword_222B39000, v76, v77, "%s lookupMpcIdentifierAdamId: Failed to get mediaEntity by querying with persistent store id: %lld", v78, 0x16u);
            __swift_destroy_boxed_opaque_existential_0Tm(v79);
            MEMORY[0x223DCA8C0](v79, -1, -1);
            MEMORY[0x223DCA8C0](v78, -1, -1);
          }

          goto LABEL_89;
        }

LABEL_124:
        swift_once();
        goto LABEL_114;
      }

      if (v20 >= 1)
      {
        v19 = v20 - 1;
        if (v20 != 1)
        {
          v3 = 0;
          if (v22)
          {
            v24 = v22 + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                goto LABEL_77;
              }

              v26 = 10 * v3;
              if ((v3 * 10) >> 64 != (10 * v3) >> 63)
              {
                goto LABEL_77;
              }

              v3 = v26 - v25;
              if (__OFSUB__(v26, v25))
              {
                goto LABEL_77;
              }

              ++v24;
              if (!--v19)
              {
                goto LABEL_78;
              }
            }
          }

LABEL_69:
          LOBYTE(v19) = 0;
          goto LABEL_78;
        }

        goto LABEL_77;
      }

      __break(1u);
    }

    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v12 = v7;
  if (v7 == 1)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v13 = sub_222C9431C();
    __swift_project_value_buffer(v13, qword_280FE2340);

    v14 = sub_222C942FC();
    v15 = sub_222C94A3C();

    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_88;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v81 = v17;
    *v16 = 136315394;
    if (qword_27D024758 != -1)
    {
      swift_once();
    }

    *(v16 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, &v81);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_222B437C0(a1, a2, &v81);
    _os_log_impl(&dword_222B39000, v14, v15, "%s Identifier is not song mpc-item: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v17, -1, -1);
    v18 = v16;
    goto LABEL_86;
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v27 = sub_222C9431C();
  __swift_project_value_buffer(v27, qword_280FE2340);

  v28 = sub_222C942FC();
  v29 = sub_222C94A3C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v81 = v31;
    *v30 = 136315394;
    if (qword_27D024758 != -1)
    {
      swift_once();
    }

    *(v30 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, &v81);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_222B437C0(v10, v12, &v81);
    _os_log_impl(&dword_222B39000, v28, v29, "%s Adam Id present in MPC identifier (%s. Using identifier directly.", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v31, -1, -1);
    MEMORY[0x223DCA8C0](v30, -1, -1);
  }

  *a3 = v10;
  *(a3 + 8) = v12;
  result = 0.0;
  *(a3 + 16) = xmmword_222C9A0B0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 2;
  return result;
}

uint64_t sub_222C3FE98(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 120) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0276E0, &unk_222CA5850) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v5 = sub_222C9334C();
  *(v3 + 40) = v5;
  v6 = *(v5 - 8);
  *(v3 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0276E8, &qword_222CA45C0) - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v9 = sub_222C934DC();
  *(v3 + 72) = v9;
  v10 = *(v9 - 8);
  *(v3 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222C40028, 0, 0);
}

uint64_t sub_222C40028()
{
  if ((*(v0 + 120) & 1) == 0)
  {
    goto LABEL_29;
  }

  v1 = [*(v0 + 24) mediaItems];
  if (!v1)
  {
    goto LABEL_29;
  }

  v2 = v1;
  sub_222C40C44();
  v3 = sub_222C9471C();

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_28:

    goto LABEL_29;
  }

  if (!sub_222C94C6C())
  {
    goto LABEL_28;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DC9B30](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x28218A9B8]();
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = [v5 identifier];

  if (!v6)
  {
LABEL_29:
    v27 = *(v0 + 16);
    goto LABEL_30;
  }

  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);
  sub_222C9449C();

  sub_222C934CC();

  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_222B4FCD4(*(v0 + 64), &qword_27D0276E8, &qword_222CA45C0);
    goto LABEL_29;
  }

  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v0 + 32);
  (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
  sub_222C9330C();
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    v13 = *(v0 + 32);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    sub_222B4FCD4(v13, &qword_27D0276E0, &unk_222CA5850);
    goto LABEL_29;
  }

  (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
  v14 = sub_222C9333C();
  if (v15)
  {
    if (v14 == 0x74694B636973756DLL && v15 == 0xE800000000000000)
    {
    }

    else
    {
      v16 = sub_222C951FC();

      if ((v16 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v17 = *(v0 + 56);
    v18 = sub_222C9331C();
    if (v19)
    {
      if (v18 == 1735290739 && v19 == 0xE400000000000000)
      {

        goto LABEL_23;
      }

      v20 = sub_222C951FC();

      if (v20)
      {
LABEL_23:
        v21 = *(MEMORY[0x277D2B468] + 4);
        v22 = swift_task_alloc();
        *(v0 + 96) = v22;
        *v22 = v0;
        v22[1] = sub_222C40428;
        v23 = *(v0 + 24);

        return MEMORY[0x28218A9B8]();
      }
    }
  }

LABEL_26:
  v25 = *(v0 + 80);
  v24 = *(v0 + 88);
  v26 = *(v0 + 72);
  v27 = *(v0 + 16);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  (*(v25 + 8))(v24, v26);
LABEL_30:
  *(v27 + 48) = 0;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *v27 = 0u;
  v28 = *(v0 + 88);
  v29 = *(v0 + 56);
  v30 = *(v0 + 64);
  v31 = *(v0 + 32);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_222C40428(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_222C40704;
  }

  else
  {
    v5 = sub_222C4053C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222C4053C()
{
  v1 = v0[13];
  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
    v4 = v0[13];
    swift_bridgeObjectRetain_n();

    LOBYTE(v4) = String.isNumber.getter();

    if (v4)
    {
      MEMORY[0x223DC9330](v3, v2);

      v3 = 0xD000000000000016;
      v2 = 0x8000000222CACE30;
    }

    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    v8 = v0[2];
    (*(v0[6] + 8))(v0[7], v0[5]);
    (*(v6 + 8))(v5, v7);
    *v8 = v3;
    *(v8 + 8) = v2;
    *(v8 + 16) = xmmword_222C9A0B0;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    *(v8 + 48) = 2;
  }

  else
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
    v15 = v0[2];
    *(v15 + 48) = 0;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *v15 = 0u;
  }

  v16 = v0[11];
  v17 = v0[7];
  v18 = v0[8];
  v19 = v0[4];

  v20 = v0[1];

  return v20();
}

uint64_t sub_222C40704()
{
  v27 = v0;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v1 = sub_222C9431C();
  __swift_project_value_buffer(v1, qword_280FE2340);
  v2 = sub_222C942FC();
  v3 = sub_222C94A4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315138;
    if (qword_27D024758 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 112);
    v7 = *(v0 + 80);
    v24 = *(v0 + 72);
    v25 = *(v0 + 88);
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);
    v10 = *(v0 + 40);
    *(v4 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, &v26);
    _os_log_impl(&dword_222B39000, v2, v3, "%s lookupMusicKitIdentifierAdamId: Could not convert music kit id", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x223DCA8C0](v5, -1, -1);
    MEMORY[0x223DCA8C0](v4, -1, -1);

    (*(v8 + 8))(v9, v10);
    (*(v7 + 8))(v25, v24);
  }

  else
  {
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    v13 = *(v0 + 72);
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = *(v0 + 40);

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v17 = *(v0 + 16);
  *(v17 + 48) = 0;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *v17 = 0u;
  v18 = *(v0 + 88);
  v19 = *(v0 + 56);
  v20 = *(v0 + 64);
  v21 = *(v0 + 32);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_222C40984()
{
  sub_222C426CC(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of AdamIdExtracting.lookupMusicKitIdentifierAdamId(intent:isPrimaryItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_222B503AC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_222C40B94(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_222B503AC;

  return sub_222C3FE98(a1, a2, a3);
}

unint64_t sub_222C40C44()
{
  result = qword_27D025018;
  if (!qword_27D025018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D025018);
  }

  return result;
}

void *sub_222C40C90(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024928, qword_222CA45D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_222C40D04@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unsigned __int8 *sub_222C40D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_222C9461C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_222C412C0();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_222C94DCC();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_222C412C0()
{
  v0 = sub_222C9462C();
  v4 = sub_222C41340(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_222C41340(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_222C9451C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_222C94B7C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_222C40C90(v9, 0);
  v12 = sub_222C41498(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_222C9451C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_222C94DCC();
LABEL_4:

  return sub_222C9451C();
}

unint64_t sub_222C41498(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_222C416B8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_222C945DC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_222C94DCC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_222C416B8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_222C945BC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_222C416B8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_222C945EC();
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
    v5 = MEMORY[0x223DC9370](15, a1 >> 16);
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

uint64_t sub_222C41734(uint64_t a1, unint64_t a2)
{
  v4 = sub_222C944DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0276E8, &qword_222CA45C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v62 - v8;
  v10 = sub_222C934DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222C934CC();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_222B4FCD4(v9, &qword_27D0276E8, &qword_222CA45C0);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v15 = sub_222C9431C();
    __swift_project_value_buffer(v15, qword_280FE2340);

    v16 = sub_222C942FC();
    v17 = sub_222C94A4C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v64[0] = v19;
      *v18 = 136315394;
      if (qword_27D024758 != -1)
      {
        swift_once();
      }

      *(v18 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, v64);
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_222B437C0(a1, a2, v64);
      _os_log_impl(&dword_222B39000, v16, v17, "%s parseSiriSyncUri: uri:%{public}s not parseable as URL", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v19, -1, -1);
      MEMORY[0x223DCA8C0](v18, -1, -1);
    }

    return 0;
  }

  (*(v11 + 32))(v14, v9, v10);
  v64[0] = sub_222C934AC();
  v64[1] = v20;
  if (qword_27D024750 != -1)
  {
    swift_once();
  }

  v21 = sub_222C9325C();
  __swift_project_value_buffer(v21, qword_27D0276B8);
  sub_222B78598();
  v22 = sub_222C94BCC();
  v24 = v23;

  v25 = sub_222C934BC();
  if (!v26)
  {
LABEL_21:

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v33 = sub_222C9431C();
    __swift_project_value_buffer(v33, qword_280FE2340);

    v34 = sub_222C942FC();
    v35 = sub_222C94A4C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v64[0] = v37;
      *v36 = 136315394;
      if (qword_27D024758 != -1)
      {
        swift_once();
      }

      *(v36 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, v64);
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_222B437C0(a1, a2, v64);
      _os_log_impl(&dword_222B39000, v34, v35, "%s parseSiriSyncUri: could not initialize Identifier from uri: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v37, -1, -1);
      MEMORY[0x223DCA8C0](v36, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    return 0;
  }

  v27 = v26;
  v62 = v25;
  v63 = v11;
  v28 = sub_222C9349C();
  if (!v29)
  {
LABEL_20:
    v11 = v63;

    goto LABEL_21;
  }

  v30 = v29;
  v31 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v31 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31 || (v32 = v28, v28 == v22) && v29 == v24 || (sub_222C951FC() & 1) != 0)
  {

    goto LABEL_20;
  }

  if (v62 == 0x6E776F6E6B6E75 && v27 == 0xE700000000000000 || (sub_222C951FC() & 1) != 0)
  {

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v39 = sub_222C9431C();
    __swift_project_value_buffer(v39, qword_280FE2340);

    v40 = sub_222C942FC();
    v41 = sub_222C94A4C();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v63;
    if (v42)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v64[0] = v45;
      *v44 = 136315394;
      if (qword_27D024758 != -1)
      {
        swift_once();
      }

      *(v44 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, v64);
      *(v44 + 12) = 2080;
      v46 = sub_222B437C0(v62, v27, v64);

      *(v44 + 14) = v46;
      _os_log_impl(&dword_222B39000, v40, v41, "%s parseSiriSyncUri: Unknown scheme:%s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v45, -1, -1);
      MEMORY[0x223DCA8C0](v44, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v14, v10);
    return 0;
  }

  if (v32 == 0x636E797369726973 && v30 == 0xE800000000000000)
  {
  }

  else
  {
    v47 = sub_222C951FC();

    if ((v47 & 1) == 0)
    {
      (*(v63 + 8))(v14, v10);

      return 0;
    }
  }

  v48 = sub_222C934EC();
  v50 = v63;
  if (v49 >> 60 == 15 || (v51 = v48, v52 = v49, sub_222C944CC(), v53 = sub_222C944BC(), v55 = v54, sub_222B803AC(v51, v52), !v55))
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v56 = sub_222C9431C();
    __swift_project_value_buffer(v56, qword_280FE2340);

    v57 = sub_222C942FC();
    v58 = sub_222C94A4C();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v64[0] = v60;
      *v59 = 136315394;
      if (qword_27D024758 != -1)
      {
        swift_once();
      }

      *(v59 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, v64);
      *(v59 + 12) = 2080;
      v61 = sub_222B437C0(v22, v24, v64);

      *(v59 + 14) = v61;
      _os_log_impl(&dword_222B39000, v57, v58, "%s parseSiriSyncUri: Could not decode base64 uri component %s", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v60, -1, -1);
      MEMORY[0x223DCA8C0](v59, -1, -1);
    }

    else
    {
    }

    (*(v50 + 8))(v14, v10);
    return 0;
  }

  (*(v50 + 8))(v14, v10);
  return v53;
}

unint64_t sub_222C421A8()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (!v0)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v6 = sub_222C9431C();
      __swift_project_value_buffer(v6, qword_280FE2340);
      v7 = sub_222C942FC();
      v8 = sub_222C94A3C();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_34;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      if (qword_27D024758 != -1)
      {
        swift_once();
      }

      *(v9 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, &v16);
      v11 = "%s getAdamIdForMediaEntity: MPMediaEntity is a playlist. Unsupported by PIMS.";
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v13 = sub_222C9431C();
        __swift_project_value_buffer(v13, qword_280FE2340);
        v7 = sub_222C942FC();
        v8 = sub_222C94A3C();
        if (!os_log_type_enabled(v7, v8))
        {
          goto LABEL_34;
        }

        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v16 = v10;
        *v9 = 136315138;
        if (qword_27D024758 != -1)
        {
          swift_once();
        }

        *(v9 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, &v16);
        v11 = "%s getAdamIdForMediaEntity: MPMediaEntity is a MPMediaItemCollection unsupported by PIMS.";
      }

      else
      {
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v14 = sub_222C9431C();
        __swift_project_value_buffer(v14, qword_280FE2340);
        v7 = sub_222C942FC();
        v8 = sub_222C94A3C();
        if (!os_log_type_enabled(v7, v8))
        {
          goto LABEL_34;
        }

        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v16 = v10;
        *v9 = 136315138;
        if (qword_27D024758 != -1)
        {
          swift_once();
        }

        *(v9 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, &v16);
        v11 = "%s getAdamIdForMediaEntity: MPMediaItem not found for mediaEntity - unknown subtype";
      }
    }

    goto LABEL_33;
  }

  v1 = [v0 playbackStoreID];
  v2 = sub_222C9449C();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);
    v7 = sub_222C942FC();
    v8 = sub_222C94A3C();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_34;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    if (qword_27D024758 != -1)
    {
      swift_once();
    }

    *(v9 + 4) = sub_222B437C0(qword_27D0276D0, *algn_27D0276D8, &v16);
    v11 = "%s getAdamIdForMediaEntity: MPMediaEntity has empty string for adamId. SiriSyncId mapping will not run.";
LABEL_33:
    _os_log_impl(&dword_222B39000, v7, v8, v11, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x223DCA8C0](v10, -1, -1);
    MEMORY[0x223DCA8C0](v9, -1, -1);
LABEL_34:

    return 0;
  }

  if (String.isNumber.getter())
  {
    MEMORY[0x223DC9330](v2, v4);

    return 0xD000000000000016;
  }

  return v2;
}

void sub_222C426CC(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_222C426DC(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t MediaSuggestionTag.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (v1 == 6)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0x7972617262696CLL;
    if (v1 != 4)
    {
      v6 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x754D6E69616D6F64;
    v3 = 0x6574616E696D6F6ELL;
    if (v1 != 2)
    {
      v3 = 0x6974636572726F63;
    }

    if (*v0)
    {
      v2 = 0x656D7269666E6F63;
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
}

SiriPrivateLearningInference::MediaSuggestionTag_optional __swiftcall MediaSuggestionTag.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_222C42888()
{
  result = qword_27D0276F8;
  if (!qword_27D0276F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0276F8);
  }

  return result;
}

void sub_222C42904(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x8000000222CA93E0;
    if (v2 == 6)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v9 = 0xD000000000000012;
    }

    if (v2 != 6)
    {
      v8 = 0x8000000222CA9400;
    }

    v10 = 0xE700000000000000;
    v11 = 0x7972617262696CLL;
    if (v2 != 4)
    {
      v11 = 0xD000000000000011;
      v10 = 0x8000000222CA93C0;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEB00000000636973;
    v4 = 0x754D6E69616D6F64;
    v5 = 0x6574616E696D6F6ELL;
    v6 = 0xE900000000000064;
    if (v2 != 2)
    {
      v5 = 0x6974636572726F63;
      v6 = 0xEA00000000006E6FLL;
    }

    if (*v1)
    {
      v4 = 0x656D7269666E6F63;
      v3 = 0xE900000000000064;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    if (*v1 > 1u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_222C42B00()
{
  result = qword_27D027700;
  if (!qword_27D027700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027700);
  }

  return result;
}

uint64_t sub_222C42B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = sub_222C944DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222C944CC();
  v9 = sub_222C944AC();
  v11 = v10;

  (*(v5 + 8))(v8, v4);
  if (v11 >> 60 != 15)
  {
    v15 = sub_222C9478C();
    *(v15 + 16) = 20;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    v38[0] = v15;
    memset(&c, 0, sizeof(c));
    CC_SHA1_Init(&c);
    v36[0] = sub_222C9365C();
    v36[1] = v16;
    sub_222C42F10(v9, v11, v38, &c, v36, &c);
    v17 = v38[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_222B64B98(v17);
    }

    v18 = *(v17 + 2);
    if (v18 < 7)
    {
      __break(1u);
    }

    else
    {
      v17[38] = v17[38] & 0xF | 0x50;
      if (v18 >= 9)
      {
        v17[40] = v17[40] & 0x3F | 0x80;
        if (v18 != 9)
        {
          if (v18 >= 0xB)
          {
            if (v18 != 11)
            {
              if (v18 >= 0xD)
              {
                if (v18 != 13)
                {
                  if (v18 >= 0xF)
                  {
                    if (v18 != 15)
                    {
                      v19 = v17[32];
                      v20 = v17[33];
                      v21 = v17[34];
                      v22 = v17[35];
                      v23 = v17[36];
                      v24 = v17[37];
                      v25 = v17[39];
                      v34 = *(v17 + 23);
                      v33 = v17[45];
                      v32 = v17[44];
                      v31 = v17[43];
                      v30 = v17[42];
                      v29 = v17[41];
                      sub_222C9364C();
                      sub_222B803AC(v9, v11);
                      v26 = sub_222C9367C();
                      v27 = *(v26 - 8);
                      (*(v27 + 8))(a1, v26);

                      result = (*(v27 + 56))(a2, 0, 1, v26);
                      goto LABEL_15;
                    }

LABEL_24:
                    __break(1u);
                  }

LABEL_23:
                  __break(1u);
                  goto LABEL_24;
                }

LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v12 = sub_222C9367C();
  v13 = *(v12 - 8);
  (*(v13 + 8))(a1, v12);
  result = (*(v13 + 56))(a2, 1, 1, v12);
LABEL_15:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_222C42F10(uint64_t a1, unint64_t a2, uint64_t *a3, CC_SHA1_CTX *a4, const void *a5, uint64_t a6)
{
  v13 = a2;
  data[2] = *MEMORY[0x277D85DE8];
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      memset(data, 0, 14);
      v6 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_51;
      }

      goto LABEL_60;
    }

    v19 = *(a1 + 16);
    v18 = *(a1 + 24);
    v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v8 = sub_222C9335C();
    if (v8)
    {
      v6 = v13 & 0x3FFFFFFFFFFFFFFFLL;
      v20 = sub_222C9337C();
      if (__OFSUB__(v19, v20))
      {
        goto LABEL_74;
      }

      v8 += v19 - v20;
    }

    v21 = __OFSUB__(v18, v19);
    v22 = v18 - v19;
    if (!v21)
    {
      v23 = sub_222C9336C();
      if (v23 >= v22)
      {
        v13 = v22;
      }

      else
      {
        v13 = v23;
      }

      v6 = *a3;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v6;
      if (v24)
      {
        goto LABEL_20;
      }

      goto LABEL_65;
    }

    goto LABEL_62;
  }

  if (v14)
  {
    goto LABEL_31;
  }

  v8 = v7;
  data[0] = a1;
  LOWORD(data[1]) = a2;
  BYTE2(data[1]) = BYTE2(a2);
  BYTE3(data[1]) = BYTE3(a2);
  BYTE4(data[1]) = BYTE4(a2);
  BYTE5(data[1]) = BYTE5(a2);
  v6 = *a3;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if ((v15 & 1) == 0)
  {
    v6 = sub_222B64B98(v6);
    *a3 = v6;
  }

  if (a5)
  {
    v16 = a6 - a5;
  }

  else
  {
    v16 = 0;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  if (HIDWORD(v16))
  {
    while (1)
    {
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_65:
        v6 = sub_222B64B98(v6);
        *a3 = v6;
LABEL_20:
        if (a5)
        {
          v25 = a6 - a5;
        }

        else
        {
          v25 = 0;
        }

        if ((v25 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_67;
        }

        if (HIDWORD(v25))
        {
          goto LABEL_69;
        }

        a1 = CC_SHA1_Update(a4, a5, v25);
        if (v8)
        {
          v26 = v13;
        }

        else
        {
          v26 = 0;
        }

        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }

        if (!HIDWORD(v26))
        {
          goto LABEL_49;
        }

        __break(1u);
LABEL_31:
        v27 = a1;
        v28 = (a1 >> 32) - a1;
        if (a1 >> 32 >= a1)
        {
          v8 = sub_222C9335C();
          if (!v8)
          {
            goto LABEL_35;
          }

          v29 = sub_222C9337C();
          if (__OFSUB__(v27, v29))
          {
            goto LABEL_75;
          }

          v8 += v27 - v29;
LABEL_35:
          v30 = sub_222C9336C();
          if (v30 >= v28)
          {
            v13 = v28;
          }

          else
          {
            v13 = v30;
          }

          v6 = *a3;
          v31 = swift_isUniquelyReferenced_nonNull_native();
          *a3 = v6;
          if (v31)
          {
LABEL_39:
            if (a5)
            {
              v32 = a6 - a5;
            }

            else
            {
              v32 = 0;
            }

            if ((v32 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_69:
              __break(1u);
            }

            else if (!HIDWORD(v32))
            {
              CC_SHA1_Update(a4, a5, v32);
              if (v8)
              {
                v26 = v13;
              }

              else
              {
                v26 = 0;
              }

              if ((v26 & 0x8000000000000000) == 0)
              {
                if (!HIDWORD(v26))
                {
LABEL_49:
                  CC_SHA1_Update(a4, v8, v26);
                  result = CC_SHA1_Final((v6 + 32), a4);
                  *a3 = v6;
                  goto LABEL_57;
                }

LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                __break(1u);
              }

LABEL_72:
              __break(1u);
              goto LABEL_73;
            }

            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

LABEL_67:
          v6 = sub_222B64B98(v6);
          *a3 = v6;
          goto LABEL_39;
        }

LABEL_59:
        __break(1u);
LABEL_60:
        v6 = sub_222B64B98(v6);
        *a3 = v6;
LABEL_51:
        v34 = a5 ? a6 - a5 : 0;
        if ((v34 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (!HIDWORD(v34))
        {
          CC_SHA1_Update(a4, a5, v34);
          CC_SHA1_Update(a4, data, 0);
          result = CC_SHA1_Final((v6 + 32), a4);
          *a3 = v6;
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
    }
  }

  CC_SHA1_Update(a4, a5, v16);
  CC_SHA1_Update(a4, data, BYTE6(v13));
  result = CC_SHA1_Final((v6 + 32), a4);
  *a3 = v6;
LABEL_57:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_222C432CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for RuleResult();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeaturisedTurn(0);
  v9 = sub_222B41F88(*(a1 + *(v8 + 24)));
  if ((v9 & 0x100000000) != 0)
  {
    sub_222C93FCC();
    *a2 = sub_222C93ECC();
    a2[1] = v19;

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v10 = v9;
    sub_222C940EC();
    v11 = sub_222C940DC();
    v12 = *(v11 + 16);
    if (v12)
    {
      v24 = v11;
      v25 = MEMORY[0x277D84F90];
      sub_222B4C51C(0, v12, 0);
      v13 = v24;
      v14 = v25;
      v15 = *(v25 + 16);
      v16 = 32;
      do
      {
        v17 = *(v13 + v16);
        v25 = v14;
        v18 = *(v14 + 24);
        if (v15 >= v18 >> 1)
        {
          sub_222B4C51C((v18 > 1), v15 + 1, 1);
          v13 = v24;
          v14 = v25;
        }

        *(v14 + 16) = v15 + 1;
        *(v14 + 4 * v15 + 32) = v17;
        v16 += 4;
        ++v15;
        --v12;
      }

      while (v12);
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    v21 = *(v14 + 16);
    v22 = 32;
    do
    {
      if (!v21)
      {
        break;
      }

      v23 = *(v14 + v22);
      v22 += 4;
      --v21;
    }

    while (v23 != v10);

    swift_storeEnumTagMultiPayload();
    return sub_222B73D68(v7, a2, type metadata accessor for RuleResult);
  }
}

uint64_t sub_222C434E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v36 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v36 - v15;
  v18 = *(a1 + 16);
  v19 = v18 - 3;
  if (v18 < 3)
  {
    v19 = 0;
  }

  if (v18 == v19)
  {
    v20 = 1;
  }

  else
  {
    v21 = v18 >= v19;
    v22 = v18 - v19;
    if (v22 == 0 || !v21)
    {
      __break(1u);
      return result;
    }

    v38 = v16;
    v39 = v22;
    v23 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v24 = *(v5 + 72);
    sub_222B78534(v23 + v24 * (v18 - 1), &v36 - v15);
    v40 = v4;
    v25 = *&v17[v4[6]];

    if ((sub_222B41F88(v25) & 0x100000000) != 0)
    {

      sub_222B73DD0(v17);
      v20 = 1;
    }

    else
    {
      v37 = a2;
      sub_222B41D48(v25);
      if (v26)
      {
      }

      else if (v39 >= 2)
      {
        a2 = v37;
        while (1)
        {
          sub_222B78534(v23, v9);
          if (sub_222B41B30(*&v9[v40[6]]))
          {
            break;
          }

          sub_222B73DD0(v9);
          v23 += v24;
          if (!--v18)
          {

            goto LABEL_17;
          }
        }

        sub_222B73D68(v9, v12, type metadata accessor for FeaturisedTurn);
        v27 = v38;
        sub_222B73D68(v12, v38, type metadata accessor for FeaturisedTurn);
        v28 = sub_222C9367C();
        (*(*(v28 - 8) + 16))(a2, v27, v28);
        v29 = v40;
        v41 = *(v27 + v40[6]);

        v4 = v29;

        sub_222B49058(v30);
        v31 = v41;
        v32 = v29[7];
        v33 = *&v17[v32];
        v41 = *(v27 + v32);

        sub_222B49224(v34);

        v35 = v41;
        sub_222B81ED0(v27 + v4[5], a2 + v4[5]);
        sub_222B73DD0(v27);
        *(a2 + v4[6]) = v31;
        *(a2 + v4[7]) = v35;
        sub_222B73DD0(v17);
        v20 = 0;
        return (*(v5 + 56))(a2, v20, 1, v4);
      }

      a2 = v37;
LABEL_17:
      sub_222B73D68(v17, a2, type metadata accessor for FeaturisedTurn);
      v20 = 0;
    }

    v4 = v40;
  }

  return (*(v5 + 56))(a2, v20, 1, v4);
}

uint64_t sub_222C43874()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C38, &unk_222C9A650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C97C40;
  v1 = type metadata accessor for SuccessfulMessageClassifier();
  v2 = swift_allocObject();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for SuccessfulMessageClassifier;
  *(v0 + 32) = v2;
  return v0;
}

uint64_t sub_222C438FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v13 = *a4;
  v12 = a4[1];
  v14 = a4[3];
  v20 = a4[2];
  v15 = sub_222C9367C();
  (*(*(v15 - 8) + 16))(a5, a1, v15);
  v16 = type metadata accessor for MessagesGroundTruth();
  *(a5 + v16[5]) = 2;
  *(a5 + v16[6]) = a2;
  v17 = (a5 + v16[7]);
  *v17 = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v18 = (a5 + v16[8]);
  *v18 = v13;
  v18[1] = v12;
  v18[2] = v20;
  v18[3] = v14;
  (*(*(v16 - 1) + 56))(a5, 0, 1, v16);
  sub_222B98D00(v8, v9);
}

uint64_t sub_222C43A64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222B9821C();
  *a1 = result;
  return result;
}

uint64_t sub_222C43A8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v13 = *a4;
  v12 = a4[1];
  v14 = a4[3];
  v20 = a4[2];
  v15 = sub_222C9367C();
  (*(*(v15 - 8) + 16))(a5, a1, v15);
  v16 = type metadata accessor for MessagesGroundTruth();
  *(a5 + v16[5]) = 2;
  *(a5 + v16[6]) = v7;
  v17 = (a5 + v16[7]);
  *v17 = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v18 = (a5 + v16[8]);
  *v18 = v13;
  v18[1] = v12;
  v18[2] = v20;
  v18[3] = v14;
  (*(*(v16 - 1) + 56))(a5, 0, 1, v16);
  sub_222B98D00(v8, v9);
}

unint64_t sub_222C43BE0()
{
  result = qword_280FDF4B8;
  if (!qword_280FDF4B8)
  {
    type metadata accessor for MessagesGroundTruth();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDF4B8);
  }

  return result;
}

uint64_t ContactSuggestionStoreUpdate.init(source:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for ContactSuggestionStoreUpdate() + 20);
  v7 = sub_222C935EC();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t type metadata accessor for ContactSuggestionStoreUpdate()
{
  result = qword_280FDD848;
  if (!qword_280FDD848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactSuggestionStoreUpdate.source.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContactSuggestionStoreUpdate.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContactSuggestionStoreUpdate() + 20);
  v4 = sub_222C935EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlusContactSuggestionStore.readAllNominated()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusContactSuggestion();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  result = (*(a2 + 40))(a1, a2);
  v11 = result;
  v30 = *(result + 16);
  if (v30)
  {
    v12 = 0;
    v29 = MEMORY[0x277D84F90];
    while (v12 < *(v11 + 16))
    {
      v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v33 = *(v31 + 72);
      sub_222BB8CF4(v11 + v34 + v33 * v12, v9);
      v13 = *&v9[*(v32 + 36)];
      if (*(v13 + 16) && (v14 = *(v13 + 40), sub_222C952FC(), sub_222C9452C(), v15 = sub_222C9534C(), v16 = -1 << *(v13 + 32), v17 = v15 & ~v16, ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
      {
        v18 = ~v16;
        while (1)
        {
          v19 = *(*(v13 + 48) + v17);
          if (v19 > 2 && v19 != 4)
          {
            break;
          }

          v20 = sub_222C951FC();

          if (v20)
          {
            goto LABEL_15;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

LABEL_15:
        sub_222BB8DB4(v9, v28);
        v21 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v21;
        v35 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C6E8(0, *(v21 + 16) + 1, 1);
          v23 = v35;
        }

        v24 = v23;
        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_222B4C6E8(v25 > 1, v26 + 1, 1);
          v24 = v35;
        }

        *(v24 + 16) = v26 + 1;
        v29 = v24;
        result = sub_222BB8DB4(v28, v24 + v34 + v26 * v33);
      }

      else
      {
LABEL_3:
        result = sub_222BB8D58(v9);
      }

      if (++v12 == v30)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
LABEL_21:

    return v29;
  }

  return result;
}

char *PartialRepetitionInferenceGroundTruthGenerator.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_222C46A24(a1);
  (*(*(*(v1 + 80) - 8) + 8))(a1);
  return v3;
}

char *PartialRepetitionInferenceGroundTruthGenerator.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_222C467E8(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

void sub_222C44474()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F80, &qword_222CA48B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v38[-1] - v5;
  v7 = type metadata accessor for FeaturisedSession(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v38[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v38[-1] - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v38[-1] - v16;

  FeaturisedSession.init(_:)(v18, v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    sub_222C46B48(v6, v17, type metadata accessor for FeaturisedSession);
    v24 = *(v2 + 80);
    v25 = *(*(v2 + 88) + 176);
    v26 = v1 + *(*v1 + 128);
    v25(v17, v24);
    if (!*(*v15 + 16))
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v32 = sub_222C9431C();
      __swift_project_value_buffer(v32, qword_280FE2340);

      v33 = sub_222C942FC();
      v34 = sub_222C94A3C();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v38[0] = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_222B437C0(v1[2], v1[3], v38);
        _os_log_impl(&dword_222B39000, v33, v34, "%s Skipping session as no turns of interest", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        MEMORY[0x223DCA8C0](v36, -1, -1);
        MEMORY[0x223DCA8C0](v35, -1, -1);
      }

      sub_222C46D78(v17, type metadata accessor for FeaturisedSession);
      v31 = v15;
      goto LABEL_18;
    }

    swift_beginAccess();
    v27 = v1[5];
    v28 = *(v27 + 16);
    if (v28)
    {
      sub_222C46D10(v27 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * (v28 - 1), v12, type metadata accessor for FeaturisedSession);
      v29 = v1[9];
      v30 = v1[10];
      __swift_project_boxed_opaque_existential_1(v1 + 6, v29);
      if (((*(v30 + 8))(v12, v15, v29, v30) & 1) == 0)
      {
        sub_222C450B0();
        sub_222C46D78(v12, type metadata accessor for FeaturisedSession);
        sub_222C44A20(v1, v15);
        sub_222C46D78(v17, type metadata accessor for FeaturisedSession);
        v31 = v15;
        goto LABEL_18;
      }

      sub_222C46D78(v12, type metadata accessor for FeaturisedSession);
    }

    sub_222C44A20(v1, v15);
    sub_222C46D78(v17, type metadata accessor for FeaturisedSession);
    v31 = v15;
LABEL_18:
    sub_222C46D78(v31, type metadata accessor for FeaturisedSession);
    return;
  }

  sub_222B4FCD4(v6, &qword_27D026F80, &qword_222CA48B0);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v19 = sub_222C9431C();
  __swift_project_value_buffer(v19, qword_280FE2340);

  v20 = sub_222C942FC();
  v21 = sub_222C94A4C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_222B437C0(v1[2], v1[3], v38);
    _os_log_impl(&dword_222B39000, v20, v21, "%s Could not create FeaturisedSession", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x223DCA8C0](v23, -1, -1);
    MEMORY[0x223DCA8C0](v22, -1, -1);
  }
}

uint64_t sub_222C44A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturisedSession(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222C46D10(a2, v8, type metadata accessor for FeaturisedSession);
  swift_beginAccess();
  v9 = *(a1 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 40) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_222B4A730(0, v9[2] + 1, 1, v9);
    *(a1 + 40) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_222B4A730(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  sub_222C46B48(v8, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, type metadata accessor for FeaturisedSession);
  *(a1 + 40) = v9;
  return swift_endAccess();
}

uint64_t sub_222C44BAC()
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027708, &qword_222CA48B8);
  v1 = *(*(v59 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v59);
  v58 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v57 = &v47 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v56 = &v47 - v7;
  MEMORY[0x28223BE20](v6);
  v55 = &v47 - v8;
  v9 = type metadata accessor for SessionGroundTruths();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222C450B0();
  swift_beginAccess();
  v13 = *(v0 + 32);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v64 = MEMORY[0x277D84F90];

  sub_222B4CD94(0, v14, 0);
  v15 = v64;
  v16 = v13 + 64;
  v17 = -1 << *(v13 + 32);
  result = sub_222C94C2C();
  v19 = result;
  v20 = 0;
  v21 = *(v13 + 36);
  v47 = v13 + 72;
  v48 = v14;
  v51 = v13;
  v52 = v12;
  v49 = v21;
  v50 = v13 + 64;
  while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v13 + 32))
  {
    if ((*(v16 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
    {
      goto LABEL_23;
    }

    if (v21 != *(v13 + 36))
    {
      goto LABEL_24;
    }

    v61 = 1 << v19;
    v62 = v19 >> 6;
    v60 = v20;
    v23 = *(v13 + 48);
    v24 = sub_222C9367C();
    v25 = *(v24 - 8);
    v63 = v15;
    v26 = v25;
    v27 = v55;
    (*(v25 + 16))(v55, v23 + *(v25 + 72) * v19, v24);
    v28 = *(*(v13 + 56) + 8 * v19);
    v29 = *(v26 + 32);
    v30 = v56;
    v29(v56, v27, v24);
    v31 = v59;
    *(v30 + *(v59 + 48)) = v28;
    v32 = v57;
    sub_222C46A68(v30, v57);
    v33 = *(v32 + *(v31 + 48));

    v34 = v58;
    sub_222C46AD8(v30, v58);
    v35 = *(v31 + 48);
    v36 = v52;
    v37 = *(v34 + v35);
    v29(v52, v32, v24);
    *(v36 + *(v54 + 20)) = v37;
    (*(v26 + 8))(v34, v24);
    v15 = v63;
    v64 = v63;
    v39 = *(v63 + 16);
    v38 = *(v63 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_222B4CD94(v38 > 1, v39 + 1, 1);
      v15 = v64;
    }

    *(v15 + 16) = v39 + 1;
    result = sub_222C46B48(v36, v15 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v39, type metadata accessor for SessionGroundTruths);
    v13 = v51;
    v22 = 1 << *(v51 + 32);
    if (v19 >= v22)
    {
      goto LABEL_25;
    }

    v16 = v50;
    v40 = *(v50 + 8 * v62);
    if ((v40 & v61) == 0)
    {
      goto LABEL_26;
    }

    LODWORD(v21) = v49;
    if (v49 != *(v51 + 36))
    {
      goto LABEL_27;
    }

    v41 = v40 & (-2 << (v19 & 0x3F));
    if (v41)
    {
      v22 = __clz(__rbit64(v41)) | v19 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v42 = v62 << 6;
      v43 = v62 + 1;
      v44 = (v47 + 8 * v62);
      while (v43 < (v22 + 63) >> 6)
      {
        v46 = *v44++;
        v45 = v46;
        v42 += 64;
        ++v43;
        if (v46)
        {
          result = sub_222B7D9C4(v19, v49, 0);
          v22 = __clz(__rbit64(v45)) + v42;
          goto LABEL_4;
        }
      }

      result = sub_222B7D9C4(v19, v49, 0);
    }

LABEL_4:
    v20 = v60 + 1;
    v19 = v22;
    if (v60 + 1 == v48)
    {

      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_222C450B0()
{
  v1 = v0;
  v45 = sub_222C9367C();
  v2 = *(v45 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v45);
  v46 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SessionGroundTruths();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v0 + 40);

  v12 = sub_222C454B0(v11);

  v43 = v12[2];
  v13 = 0;
  if (!v43)
  {
LABEL_15:

    swift_beginAccess();
    v36 = *(v1 + 40);
    *(v1 + 40) = MEMORY[0x277D84F90];

    return sub_222C00924(v13);
  }

  v14 = 0;
  v15 = *(v5 + 20);
  v41 = v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v42 = v15;
  v44 = (v2 + 16);
  v39 = v2;
  v40 = (v2 + 8);
  while (v14 < v12[2])
  {
    v17 = v6;
    sub_222C46D10(&v41[*(v6 + 72) * v14], v9, type metadata accessor for SessionGroundTruths);
    v18 = *v44;
    v19 = v46;
    (*v44)(v46, v9, v45);
    v20 = *&v9[v42];

    sub_222C46D78(v9, type metadata accessor for SessionGroundTruths);
    swift_beginAccess();
    sub_222C00924(v13);
    v21 = *(v1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v1 + 32);
    v23 = v47;
    *(v1 + 32) = 0x8000000000000000;
    v24 = sub_222B8CA54(v19);
    v26 = v23[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_17;
    }

    v30 = v25;
    if (v23[3] < v29)
    {
      sub_222B917F4(v29, isUniquelyReferenced_nonNull_native);
      v23 = v47;
      v24 = sub_222B8CA54(v46);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      *(v1 + 32) = v23;
      if (v30)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v35 = v24;
    sub_222B948F8();
    v24 = v35;
    v23 = v47;
    *(v1 + 32) = v47;
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_11:
    v23[(v24 >> 6) + 8] |= 1 << v24;
    v32 = v24;
    v18(v23[6] + *(v39 + 72) * v24, v46, v45);
    *(v23[7] + 8 * v32) = MEMORY[0x277D84F90];
    v33 = v23[2];
    v28 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v28)
    {
      goto LABEL_18;
    }

    v24 = v32;
    v23[2] = v34;
LABEL_3:
    ++v14;
    v16 = v23[7] + 8 * v24;
    sub_222B49C5C(v20);
    (*v40)(v46, v45);
    swift_endAccess();
    v13 = sub_222BFFFA4;
    v6 = v17;
    if (v43 == v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

void *sub_222C454B0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027710, qword_222CA4990);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v41 - v7;
  v48 = type metadata accessor for SessionGroundTruths();
  v44 = *(v48 - 8);
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v48);
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v43 = &v41 - v13;
  v14 = *(v4 + 80);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v41 - v17;
  v19 = v1[10];
  __swift_project_boxed_opaque_existential_1(v2 + 6, v2[9]);
  v20 = sub_222B63EA0(a1);
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v21 = sub_222C9431C();
    __swift_project_value_buffer(v21, qword_280FE2340);

    v22 = sub_222C942FC();
    v23 = sub_222C94A3C();

    v24 = os_log_type_enabled(v22, v23);
    v45 = a1;
    v46 = v2;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v49 = v15;
      v42 = v4;
      v26 = v25;
      v27 = swift_slowAlloc();
      v50 = v27;
      *v26 = 136315650;
      *(v26 + 4) = sub_222B437C0(v46[2], v46[3], &v50);
      *(v26 + 12) = 2048;
      *(v26 + 14) = *(a1 + 16);
      v15 = v49;

      *(v26 + 22) = 2048;
      *(v26 + 24) = *(v20 + 16);

      _os_log_impl(&dword_222B39000, v22, v23, "%s Grouped %ld sessions into %ld composite sessions based on restatements.", v26, 0x20u);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      v28 = v27;
      v2 = v46;
      MEMORY[0x223DCA8C0](v28, -1, -1);
      v29 = v26;
      v4 = v42;
      MEMORY[0x223DCA8C0](v29, -1, -1);
    }

    else
    {
    }

    v30 = *(*v2 + 128);
    v31 = *(v4 + 88);
    v32 = (*(v31 + 72))(v14, v31);
    v33 = (*(v31 + 64))(v14, v31);
    v51 = v32;
    sub_222B49C38(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C70, &unk_222CA53F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222C97C40;
    sub_222B43E3C(v2 + *(*v2 + 136), inited + 32);
    sub_222B49C38(inited);
    v49 = v51;
    type metadata accessor for PartialRepetitionGroundTruthGenerator();
    (*(v15 + 16))(v18, v2 + v30, v14);
    v35 = PartialRepetitionGroundTruthGenerator.__allocating_init(_:)(v18);
    v15 = *(v20 + 16);
    if (!v15)
    {
      break;
    }

    v18 = 0;
    v14 = 0;
    v4 = v45;
    a1 = v44 + 48;
    v36 = MEMORY[0x277D84F90];
    while (v18 < *(v20 + 16))
    {
      v50 = *(v20 + 8 * v18 + 32);

      sub_222C45B1C(&v50, v2, v49, v4, v20, v35, v8);

      if ((*a1)(v8, 1, v48) == 1)
      {
        sub_222B4FCD4(v8, &qword_27D027710, qword_222CA4990);
      }

      else
      {
        v37 = v43;
        sub_222C46B48(v8, v43, type metadata accessor for SessionGroundTruths);
        sub_222C46B48(v37, v47, type metadata accessor for SessionGroundTruths);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_222B4BAF8(0, v36[2] + 1, 1, v36);
        }

        v39 = v36[2];
        v38 = v36[3];
        if (v39 >= v38 >> 1)
        {
          v36 = sub_222B4BAF8(v38 > 1, v39 + 1, 1, v36);
        }

        v36[2] = v39 + 1;
        sub_222C46B48(v47, v36 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v39, type metadata accessor for SessionGroundTruths);
        v4 = v45;
        v2 = v46;
      }

      if (v15 == ++v18)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  v36 = MEMORY[0x277D84F90];
LABEL_17:

  return v36;
}

uint64_t sub_222C45B1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v105 = a7;
  v96 = a5;
  v97 = a6;
  v99 = *a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026F80, &qword_222CA48B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v91 - v13);
  v15 = type metadata accessor for FeaturisedSession(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v104 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_222C9367C();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v98 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v91 - v24;
  MEMORY[0x28223BE20](v23);
  v28 = *a1;
  v29 = *(v28 + 16);
  if (!v29)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v37 = sub_222C9431C();
    __swift_project_value_buffer(v37, qword_280FE2340);

    v38 = sub_222C942FC();
    v39 = sub_222C94A4C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v107 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_222B437C0(a2[2], a2[3], &v107);
      _os_log_impl(&dword_222B39000, v38, v39, "%s Couldn't find session id for composite conversation. Skipping GT generation.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x223DCA8C0](v41, -1, -1);
      MEMORY[0x223DCA8C0](v40, -1, -1);
    }

    goto LABEL_13;
  }

  v30 = v28 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * (v29 - 1);
  v31 = *(v15 + 20);
  v102 = v27;
  v103 = &v91 - v26;
  v100 = *(v27 + 16);
  v101 = v27 + 16;
  v100();
  v107 = v28;
  CompositeSession.combinedSession.getter(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_222B4FCD4(v14, &qword_27D026F80, &qword_222CA48B0);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v32 = sub_222C9431C();
    __swift_project_value_buffer(v32, qword_280FE2340);

    v33 = sub_222C942FC();
    v34 = sub_222C94A4C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v107 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_222B437C0(a2[2], a2[3], &v107);
      _os_log_impl(&dword_222B39000, v33, v34, "%s Couldn't get combinedSession. Skipping GT generation.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x223DCA8C0](v36, -1, -1);
      MEMORY[0x223DCA8C0](v35, -1, -1);
    }

    (*(v102 + 8))(v103, v19);
LABEL_13:
    v42 = type metadata accessor for SessionGroundTruths();
    return (*(*(v42 - 8) + 56))(v105, 1, 1, v42);
  }

  v44 = v104;
  v45 = sub_222C46B48(v14, v104, type metadata accessor for FeaturisedSession);
  MEMORY[0x28223BE20](v45);
  *(&v91 - 2) = v44;
  v46 = v106;
  v47 = sub_222BA65FC(MEMORY[0x277D84F90], sub_222C46CF4, (&v91 - 4), a3);
  v106 = v46;
  v48 = *(a4 + 16);
  v94 = *(v96 + 16);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v49 = sub_222C9431C();
  v50 = __swift_project_value_buffer(v49, qword_280FE2340);
  (v100)(v25, v103, v19);

  v95 = v50;
  v51 = sub_222C942FC();
  v52 = sub_222C94A3C();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v93 = v48;
    v54 = v53;
    v92 = swift_slowAlloc();
    v107 = v92;
    *v54 = 136315650;
    *(v54 + 4) = sub_222B437C0(a2[2], a2[3], &v107);
    *(v54 + 12) = 2080;
    sub_222B9E5D0();
    v55 = sub_222C9517C();
    v57 = v56;
    v96 = *(v102 + 8);
    (v96)(v25, v19);
    v58 = sub_222B437C0(v55, v57, &v107);

    *(v54 + 14) = v58;
    *(v54 + 22) = 2080;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
    v60 = MEMORY[0x223DC94D0](v47, v59);
    v62 = sub_222B437C0(v60, v61, &v107);

    *(v54 + 24) = v62;
    _os_log_impl(&dword_222B39000, v51, v52, "%s Generated Classifications for composite session %s: %s", v54, 0x20u);
    v63 = v92;
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v63, -1, -1);
    v64 = v54;
    v48 = v93;
    MEMORY[0x223DCA8C0](v64, -1, -1);
  }

  else
  {

    v96 = *(v102 + 8);
    (v96)(v25, v19);
  }

  v65 = sub_222B5EFDC(v104, v47, v48 != v94);

  v66 = v98;
  (v100)(v98, v103, v19);
  swift_bridgeObjectRetain_n();

  v67 = sub_222C942FC();
  v68 = sub_222C94A3C();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v107 = v97;
    *v69 = 136315650;
    *(v69 + 4) = sub_222B437C0(a2[2], a2[3], &v107);
    *(v69 + 12) = 2080;
    sub_222B9E5D0();
    LODWORD(v95) = v68;
    v70 = sub_222C9517C();
    v72 = v71;
    v73 = v96;
    (v96)(v66, v19);
    v74 = sub_222B437C0(v70, v72, &v107);

    *(v69 + 14) = v74;
    *(v69 + 22) = 2080;
    v75 = v99;
    v77 = *(v99 + 80);
    v76 = *(v99 + 88);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v79 = MEMORY[0x223DC94D0](v65, AssociatedTypeWitness);
    v81 = v80;
    swift_bridgeObjectRelease_n();
    v82 = sub_222B437C0(v79, v81, &v107);
    v83 = v73;

    *(v69 + 24) = v82;
    _os_log_impl(&dword_222B39000, v67, v95, "%s Generated Ground Truth for composite session %s: %s", v69, 0x20u);
    v84 = v97;
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v84, -1, -1);
    MEMORY[0x223DCA8C0](v69, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v83 = v96;
    (v96)(v66, v19);
    v75 = v99;
  }

  v85 = v105;
  v86 = v103;
  (v100)(v105, v103, v19);
  v88 = *(v75 + 80);
  v87 = *(v75 + 88);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E28, &unk_222C995F0);
  v89 = sub_222C94EBC();

  v83(v86, v19);
  v90 = type metadata accessor for SessionGroundTruths();
  *(v85 + *(v90 + 20)) = v89;
  (*(*(v90 - 8) + 56))(v85, 0, 1, v90);
  return sub_222C46D78(v104, type metadata accessor for FeaturisedSession);
}

void *sub_222C46614(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = (*(v6 + 8))(a3, *a1, v5, v6);
  return sub_222B490D0(v7);
}

uint64_t *PartialRepetitionInferenceGroundTruthGenerator.deinit()
{
  v1 = *v0;
  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 6);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + *(*v0 + 136)));
  return v0;
}

uint64_t PartialRepetitionInferenceGroundTruthGenerator.__deallocating_deinit()
{
  PartialRepetitionInferenceGroundTruthGenerator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_222C467E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](a1);
  v8 = &v20 - v7;
  v10 = *(v9 + 88);
  type metadata accessor for PartialRepetitionInferenceGroundTruthGenerator();
  *(v2 + 2) = static InferenceLogUtils.loggerTag<A>(_:)();
  *(v2 + 3) = v11;
  v12 = MEMORY[0x277D84F90];
  *(v2 + 4) = sub_222B63654(MEMORY[0x277D84F90]);
  *(v2 + 5) = v12;
  v13 = *(*v2 + 128);
  v14 = v5[2];
  v14(&v2[v13], a1, v4);
  v14(v8, &v2[v13], v4);
  v15 = (*(v10 + 80))(v4, v10);
  v20 = v5[1];
  v20(v8, v4);
  v16 = type metadata accessor for PartialRepetitionClassifier();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = &v2[*(*v2 + 136)];
  v18[3] = v16;
  v18[4] = &protocol witness table for PartialRepetitionClassifier;
  *v18 = v17;
  v14(v8, &v2[v13], v4);
  (*(v10 + 168))(v21, v4, v10);
  v20(v8, v4);
  sub_222B405A0(v21, (v2 + 48));
  return v2;
}

char *sub_222C46A24(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = type metadata accessor for PartialRepetitionInferenceGroundTruthGenerator();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_222C467E8(a1);
}

uint64_t sub_222C46A68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027708, &qword_222CA48B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C46AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027708, &qword_222CA48B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222C46B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C46BB0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_222C46D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222C46D78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222C46DEC(uint64_t a1)
{
  v2 = type metadata accessor for PlusMediaSuggestion();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v5 = MEMORY[0x28223BE20](v4);
  v6 = MEMORY[0x28223BE20](v5);
  v11 = &v38 - v10;
  v44 = *(a1 + 16);
  v40 = a1;
  if (!v44)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_15:
    if (*(v22 + 16))
    {
      return v22;
    }
  }

  v41 = v6;
  v42 = v9;
  v12 = 0;
  v43 = *(v6 + 44);
  v38 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v39 = v8;
  v13 = *(v7 + 72);
  v45 = a1 + v38;
  v46 = v13;
  v47 = 0x8000000222CA9400;
  v48 = 0x8000000222CA93C0;
  while (1)
  {
    sub_222B79B14(v45 + v46 * v12, v11);
    v14 = *&v11[v43];
    if (*(v14 + 16))
    {
      v15 = *(v14 + 40);
      sub_222C952FC();
      sub_222C9452C();
      v16 = sub_222C9534C();
      v17 = -1 << *(v14 + 32);
      v18 = v16 & ~v17;
      if ((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        break;
      }
    }

LABEL_3:
    ++v12;
    sub_222B7D9D0(v11);
    if (v12 == v44)
    {
      v24 = 0;
      v22 = MEMORY[0x277D84F90];
      v25 = v42;
      do
      {
        sub_222B79B14(v45 + v46 * v24, v25);
        v26 = *(v25 + *(v41 + 44));
        if (*(v26 + 16) && (v27 = *(v26 + 40), sub_222C952FC(), sub_222C9452C(), v28 = sub_222C9534C(), v29 = -1 << *(v26 + 32), v30 = v28 & ~v29, ((*(v26 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
        {
          v31 = ~v29;
          while (1)
          {
            v32 = *(*(v26 + 48) + v30);
            if (v32 <= 3 && *(*(v26 + 48) + v30) > 1u && v32 != 3)
            {
              break;
            }

            v33 = sub_222C951FC();

            if (v33)
            {
              goto LABEL_33;
            }

            v30 = (v30 + 1) & v31;
            if (((*(v26 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

LABEL_33:
          v25 = v42;
          v34 = v39;
          sub_222B7D960(v42, v39);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v49 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_222B4C630(0, *(v22 + 16) + 1, 1);
            v22 = v49;
          }

          v37 = *(v22 + 16);
          v36 = *(v22 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_222B4C630(v36 > 1, v37 + 1, 1);
            v22 = v49;
          }

          *(v22 + 16) = v37 + 1;
          sub_222B7D960(v34, v22 + v38 + v37 * v46);
        }

        else
        {
LABEL_21:
          v25 = v42;
          sub_222B7D9D0(v42);
        }

        ++v24;
      }

      while (v24 != v44);
      goto LABEL_15;
    }
  }

  v19 = ~v17;
  while (1)
  {
    v20 = *(*(v14 + 48) + v18);
    if (v20 <= 3)
    {
      *(*(v14 + 48) + v18);
      *(*(v14 + 48) + v18);
      goto LABEL_11;
    }

    if (*(*(v14 + 48) + v18) > 5u && v20 != 7)
    {
      break;
    }

LABEL_11:
    v21 = sub_222C951FC();

    if (v21)
    {
      goto LABEL_19;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

LABEL_19:
  sub_222B7D9D0(v11);
  return MEMORY[0x277D84F90];
}

uint64_t sub_222C473BC()
{
  type metadata accessor for AdaptiveContactSuggestionGenerator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027738, &unk_222CA4A90);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D027718 = 91;
  unk_27D027720 = 0xE100000000000000;
  return result;
}

uint64_t AdaptiveContactSuggestionGenerator.__allocating_init(candidateProvider:domainTags:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AdaptiveContactSuggestionGenerator.init(candidateProvider:domainTags:)(a1, a2);
  return v4;
}

void *AdaptiveContactSuggestionGenerator.init(candidateProvider:domainTags:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SuggestionSignalScorerV1();
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025940, &unk_222CA4A00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_222C9CD00;
  *(v6 + 56) = &type metadata for FixedNegativeSignalScoreModifier;
  *(v6 + 64) = &off_28360D288;
  *(v6 + 32) = 0xBFC999999999999ALL;
  *(v6 + 96) = &type metadata for AlwaysNegativeScoreModifier;
  *(v6 + 104) = &off_28360CCE8;
  *(v6 + 72) = 0xBFB999999999999ALL;
  *(v6 + 136) = &type metadata for ScoreLimitModifier;
  *(v6 + 144) = &off_28360D3A8;
  v7 = swift_allocObject();
  *(v6 + 112) = v7;
  *(v7 + 16) = 0x3FF0000000000000;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0xBFF0000000000000;
  *(v7 + 40) = 0;
  *(v5 + 16) = MEMORY[0x277D84F90];
  *(v5 + 24) = v6;
  type metadata accessor for ContactSuggestionCandidateProcessor();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = a1;
  v2[2] = v8;
  v2[3] = a1;
  v2[4] = a2;

  return v2;
}

uint64_t sub_222C475DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = a1 + 32;
    do
    {
      sub_222B43E3C(v3, v25);
      sub_222B405A0(v25, &v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E28, &unk_222C995F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E20, &unk_222C96BE0);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          sub_222B79B78(&v18, &v21);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_222B4BB20(0, v2[2] + 1, 1, v2);
          }

          v5 = v2[2];
          v4 = v2[3];
          if (v5 >= v4 >> 1)
          {
            v2 = sub_222B4BB20((v4 > 1), v5 + 1, 1, v2);
          }

          v2[2] = v5 + 1;
          sub_222B79B78(&v21, &v2[6 * v5 + 4]);
          goto LABEL_5;
        }
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
      }

      sub_222B4FCD4(&v18, &qword_27D027728, &qword_222CA6160);
LABEL_5:
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  *&v18 = MEMORY[0x277D84F90];
  v6 = v2[2];
  if (v6)
  {
    v7 = (v2 + 4);
    v8 = MEMORY[0x277D84F90];
    do
    {
      sub_222B79B90(v7, &v21);
      v9 = v22;
      v10 = v23;
      v11 = v24;
      v12 = __swift_project_boxed_opaque_existential_1(&v21, v22);
      v13 = sub_222C47870(v12, v9, v10, v11);
      v14 = __swift_destroy_boxed_opaque_existential_0Tm(&v21);
      if (v13)
      {
        MEMORY[0x223DC94A0](v14);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222C9475C();
        }

        sub_222C947AC();
        v8 = v18;
      }

      v7 += 48;
      --v6;
    }

    while (v6);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v16 = sub_222B71D68(v8);

  return v16;
}

uint64_t sub_222C47870(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v8 = sub_222C9367C();
  v70 = *(v8 - 8);
  v9 = *(v70 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 - 1);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v63 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v63 - v21;
  v72 = v4;
  if (sub_222C487B4(a1, v4, a2, a3))
  {
    v67 = a3;
    v64 = v8;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v23 = sub_222C9431C();
    v24 = __swift_project_value_buffer(v23, qword_280FE2340);
    v65 = v13[2];
    v65(v22, a1, a2);
    v66 = v24;
    v25 = sub_222C942FC();
    v26 = sub_222C94A3C();
    v27 = os_log_type_enabled(v25, v26);
    v68 = a1;
    v71 = v13;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v74[0] = v63;
      *v28 = 136315394;
      if (qword_27D024760 != -1)
      {
        swift_once();
      }

      *(v28 + 4) = sub_222B437C0(qword_27D027718, unk_27D027720, v74);
      *(v28 + 12) = 2080;
      (*(v69 + 24))(a2);
      v29 = sub_222C9360C();
      v31 = v30;
      (*(v70 + 8))(v12, v64);
      v70 = v71[1];
      (v70)(v22, a2);
      v32 = sub_222B437C0(v29, v31, v74);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_222B39000, v25, v26, "%s Processing ground truth with id=%s", v28, 0x16u);
      v33 = v63;
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v33, -1, -1);
      MEMORY[0x223DCA8C0](v28, -1, -1);

      a1 = v68;
    }

    else
    {

      v70 = v13[1];
      (v70)(v22, a2);
    }

    v44 = *(v72 + 16);
    v45 = *(v67 + 16);
    v46 = sub_222B9E860(a1, a2, v45);
    v65(v20, a1, a2);
    v47 = sub_222C942FC();
    v48 = sub_222C94A3C();
    if (os_log_type_enabled(v47, v48))
    {
      v69 = v46;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v74[0] = v50;
      *v49 = 136315394;
      if (qword_27D024760 != -1)
      {
        swift_once();
      }

      *(v49 + 4) = sub_222B437C0(qword_27D027718, unk_27D027720, v74);
      *(v49 + 12) = 2080;
      (*(v45 + 32))(v75, a2, v45);
      v51 = UsoEntity_common_Person.convertUSOPersonToString()();

      if (v51.value._object)
      {
        countAndFlagsBits = v51.value._countAndFlagsBits;
      }

      else
      {
        countAndFlagsBits = 0x6E776F6E6B6E553CLL;
      }

      if (v51.value._object)
      {
        object = v51.value._object;
      }

      else
      {
        object = 0xE90000000000003ELL;
      }

      (v70)(v20, a2);
      v54 = sub_222B437C0(countAndFlagsBits, object, v74);

      *(v49 + 14) = v54;
      _os_log_impl(&dword_222B39000, v47, v48, "%s Candidates updated for query: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v50, -1, -1);
      MEMORY[0x223DCA8C0](v49, -1, -1);

      v46 = v69;
    }

    else
    {

      (v70)(v20, a2);
    }

    v56 = v72;
    v57 = sub_222C488FC(v46, sub_222C48D70, v72);

    v58 = *(v56 + 24);
    v59 = *(v45 + 32);
    v59(v75, a2, v45);
    v60 = v75[0];
    swift_beginAccess();

    v61 = *(v58 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = *(v58 + 64);
    *(v58 + 64) = 0x8000000000000000;
    sub_222BAA7DC(v57, v60, isUniquelyReferenced_nonNull_native);

    *(v58 + 64) = v73;
    swift_endAccess();

    v59(v74, a2, v45);
    return v74[0];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v34 = sub_222C9431C();
    __swift_project_value_buffer(v34, qword_280FE2340);
    (v13[2])(v17, a1, a2);
    v35 = sub_222C942FC();
    v36 = sub_222C94A3C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v8;
      v71 = v13;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v74[0] = v39;
      *v38 = 136315394;
      if (qword_27D024760 != -1)
      {
        swift_once();
      }

      *(v38 + 4) = sub_222B437C0(qword_27D027718, unk_27D027720, v74);
      *(v38 + 12) = 2080;
      (*(v69 + 24))(a2);
      v40 = sub_222C9360C();
      v42 = v41;
      (*(v70 + 8))(v12, v37);
      (v71[1])(v17, a2);
      v43 = sub_222B437C0(v40, v42, v74);

      *(v38 + 14) = v43;
      _os_log_impl(&dword_222B39000, v35, v36, "%s Skipping non applicable ground truth with id=%s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v39, -1, -1);
      MEMORY[0x223DCA8C0](v38, -1, -1);
    }

    else
    {

      (v13[1])(v17, a2);
    }

    return 0;
  }
}

uint64_t sub_222C48164@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a3;
  v65 = a4;
  v6 = sub_222C9367C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v61 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = &v59 - v14;
  v15 = type metadata accessor for PlusContactSuggestion();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v19 = a1[1];
  v21 = a1[3];
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v22 = sub_222C9431C();
  __swift_project_value_buffer(v22, qword_280FE2340);
  sub_222BB8CF4(a2, v18);

  v23 = sub_222C942FC();
  v24 = sub_222C94A3C();

  if (os_log_type_enabled(v23, v24))
  {
    v62 = v7;
    v25 = v6;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v70 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_222B437C0(v20, v19, &v70);
    *(v26 + 12) = 2080;
    v28 = *&v18[v15[11]];
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = (v28 + 32 * v29);
      v31 = *v30;
      v32 = *(v30 + 2);
    }

    else
    {
      v32 = 0;
      v31 = 0uLL;
    }

    v67 = v31;
    v68 = v32;
    v69 = v29 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025950, &qword_222C99690);
    v33 = sub_222C944EC();
    v35 = v34;
    sub_222BB8D58(v18);
    v36 = sub_222B437C0(v33, v35, &v70);

    *(v26 + 14) = v36;
    _os_log_impl(&dword_222B39000, v23, v24, "    %s: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v27, -1, -1);
    MEMORY[0x223DCA8C0](v26, -1, -1);

    v6 = v25;
    v7 = v62;
  }

  else
  {

    sub_222BB8D58(v18);
  }

  v37 = *(a2 + v15[9]);
  v38 = sub_222BB2AB8(v37, *(v63 + 32));
  v39 = v66;
  if (v38)
  {
    return sub_222BB8CF4(a2, v65);
  }

  v41 = v64;
  (*(v7 + 56))(v64, 1, 1, v6);

  v63 = sub_222C6E8C0(v42, v37);
  v43 = v61;
  sub_222B5551C(v41, v61);
  v44 = *(v7 + 48);
  if (v44(v43, 1, v6) == 1)
  {
    v62 = v7;
    v45 = *(v7 + 16);
    v45(v39, a2, v6);
    if (v44(v43, 1, v6) != 1)
    {
      sub_222B4FCD4(v43, &unk_27D026290, &qword_222C96B40);
    }

    v46 = v6;
    v7 = v62;
    v47 = v66;
  }

  else
  {
    (*(v7 + 32))(v39, v43, v6);
    v45 = *(v7 + 16);
    v46 = v6;
    v47 = v39;
  }

  v48 = *(a2 + v15[5]);
  v49 = (a2 + v15[6]);
  v51 = *v49;
  v50 = v49[1];
  v52 = *(a2 + v15[7]);
  v53 = *(a2 + v15[8]);
  v54 = *(a2 + v15[10]);
  v55 = *(a2 + v15[11]);
  v56 = v65;
  v60 = v46;
  v45(v65, v47, v46);
  *(v56 + v15[5]) = v48;
  v57 = (v56 + v15[6]);
  *v57 = v51;
  v57[1] = v50;
  v57[2] = 0;
  v57[3] = 0;

  *(v56 + v15[7]) = sub_222C17488(50, v52);
  *(v56 + v15[8]) = v53;
  *(v56 + v15[9]) = v63;
  *(v56 + v15[10]) = v54;
  v58 = sub_222C17748(0x32uLL, v55);
  (*(v7 + 8))(v66, v60);
  result = sub_222B4FCD4(v64, &unk_27D026290, &qword_222C96B40);
  *(v56 + v15[11]) = v58;
  return result;
}

void *AdaptiveContactSuggestionGenerator.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t AdaptiveContactSuggestionGenerator.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

BOOL sub_222C487B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = *(a2 + 32);
  if (*(v11 + 16))
  {
    v12 = (*(*(a4 + 8) + 24))(a3);

    v13 = sub_222B863A4(v12, v11);

    v14 = *(v13 + 16);

    v15 = v14 != 0;
  }

  else
  {
    v15 = 0;
  }

  (*(v7 + 8))(v10, a3);
  return v15;
}

uint64_t sub_222C488FC(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v56 = a2;
  v57 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027730, &qword_222CA4A88);
  v5 = *(*(v55 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v55);
  v54 = (v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v53 = (v46 - v8);
  v9 = type metadata accessor for PlusContactSuggestion();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v14)
  {
    v46[1] = v3;
    v63 = MEMORY[0x277D84F90];
    sub_222B4C6E8(0, v14, 0);
    v62 = v63;
    v16 = a1 + 64;
    v17 = -1 << *(a1 + 32);
    result = sub_222C94C2C();
    v18 = result;
    v19 = 0;
    v20 = *(a1 + 36);
    v47 = a1 + 72;
    v48 = v14;
    v49 = v20;
    v50 = a1 + 64;
    v51 = a1;
    v52 = v10;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
    {
      if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_23;
      }

      if (v20 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v59 = 1 << v18;
      v60 = v18 >> 6;
      v58 = v19;
      v22 = v55;
      v23 = *(v55 + 48);
      v24 = *(a1 + 56);
      v25 = (*(a1 + 48) + 32 * v18);
      v26 = v25[1];
      v27 = v25[2];
      v28 = v25[3];
      v29 = v13;
      v30 = v53;
      *v53 = *v25;
      v30[1] = v26;
      v30[2] = v27;
      v30[3] = v28;
      v61 = *(v10 + 72);
      sub_222BB8CF4(v24 + v61 * v18, v30 + v23);
      v31 = v30[1];
      v32 = v54;
      *v54 = *v30;
      *(v32 + 8) = v31;
      *(v32 + 16) = *(v30 + 1);
      v33 = *(v22 + 48);
      v34 = v30 + v23;
      v13 = v29;
      sub_222BB8DB4(v34, v32 + v33);

      v56(v32, v32 + v33);
      sub_222B4FCD4(v32, &qword_27D027730, &qword_222CA4A88);
      v35 = v62;
      v63 = v62;
      v37 = *(v62 + 16);
      v36 = *(v62 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_222B4C6E8(v36 > 1, v37 + 1, 1);
        v35 = v63;
      }

      *(v35 + 16) = v37 + 1;
      v10 = v52;
      v38 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v62 = v35;
      result = sub_222BB8DB4(v29, v35 + v38 + v37 * v61);
      a1 = v51;
      v21 = 1 << *(v51 + 32);
      if (v18 >= v21)
      {
        goto LABEL_25;
      }

      v16 = v50;
      v39 = *(v50 + 8 * v60);
      if ((v39 & v59) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v20) = v49;
      if (v49 != *(v51 + 36))
      {
        goto LABEL_27;
      }

      v40 = v39 & (-2 << (v18 & 0x3F));
      if (v40)
      {
        v21 = __clz(__rbit64(v40)) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v41 = v60 << 6;
        v42 = v60 + 1;
        v43 = (v47 + 8 * v60);
        while (v42 < (v21 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            result = sub_222B7D9C4(v18, v49, 0);
            v21 = __clz(__rbit64(v44)) + v41;
            goto LABEL_4;
          }
        }

        result = sub_222B7D9C4(v18, v49, 0);
      }

LABEL_4:
      v19 = v58 + 1;
      v18 = v21;
      if (v58 + 1 == v48)
      {
        return v62;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_222C48D8C()
{
  v1 = 0x6F4C776F64616873;
  if (*v0 != 1)
  {
    v1 = 0x64656C62616E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C6261736964;
  }
}

uint64_t sub_222C48DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222C4A178(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222C48E1C(uint64_t a1)
{
  v2 = sub_222C49368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C48E58(uint64_t a1)
{
  v2 = sub_222C49368();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C48E94(uint64_t a1)
{
  v2 = sub_222C49464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C48ED0(uint64_t a1)
{
  v2 = sub_222C49464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C48F0C(uint64_t a1)
{
  v2 = sub_222C493BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C48F48(uint64_t a1)
{
  v2 = sub_222C493BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222C48F84(uint64_t a1)
{
  v2 = sub_222C49410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222C48FC0(uint64_t a1)
{
  v2 = sub_222C49410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaSuggestionManager.EnablementStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027740, &qword_222CA4AA0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027748, &qword_222CA4AA8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027750, &qword_222CA4AB0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027758, &qword_222CA4AB8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222C49368();
  sub_222C9536C();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_222C49410();
      v12 = v26;
      sub_222C950BC();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_222C493BC();
      v12 = v29;
      sub_222C950BC();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_222C49464();
    sub_222C950BC();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_222C49368()
{
  result = qword_27D027760;
  if (!qword_27D027760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027760);
  }

  return result;
}

unint64_t sub_222C493BC()
{
  result = qword_27D027768;
  if (!qword_27D027768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027768);
  }

  return result;
}

unint64_t sub_222C49410()
{
  result = qword_27D027770;
  if (!qword_27D027770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027770);
  }

  return result;
}

unint64_t sub_222C49464()
{
  result = qword_27D027778;
  if (!qword_27D027778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D027778);
  }

  return result;
}

uint64_t MediaSuggestionManager.EnablementStatus.hashValue.getter()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1);
  return sub_222C9534C();
}

uint64_t MediaSuggestionManager.EnablementStatus.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027780, &qword_222CA4AC0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027788, &qword_222CA4AC8);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027790, &qword_222CA4AD0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027798, &unk_222CA4AD8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_222C49368();
  v20 = v43;
  sub_222C9535C();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_222C9508C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_222B572CC();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_222C94DBC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00) + 48);
      *v30 = &type metadata for MediaSuggestionManager.EnablementStatus;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_222C49410();
          sub_222C94FFC();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_222C493BC();
          v33 = v22;
          sub_222C94FFC();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_222C49464();
        sub_222C94FFC();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v44);
}

void *MediaSuggestionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = type metadata accessor for InferenceFeatures.InferenceFeatureManager();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = InferenceFeatures.InferenceFeatureManager.init()();
  v5 = MEMORY[0x277D5FB30];
  v0[5] = v1;
  v0[6] = v5;
  v0[2] = v4;
  return v0;
}

void *MediaSuggestionManager.init()()
{
  v1 = type metadata accessor for InferenceFeatures.InferenceFeatureManager();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = InferenceFeatures.InferenceFeatureManager.init()();
  v5 = MEMORY[0x277D5FB30];
  v0[5] = v1;
  v0[6] = v5;
  v0[2] = v4;
  return v0;
}

uint64_t sub_222C49B94@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  if (qword_280FDFF88 != -1)
  {
    swift_once();
  }

  v5 = qword_280FDFF90;
  v6 = sub_222C93BCC();
  v7 = MEMORY[0x277D5FAF8];
  v14 = v6;
  v15 = MEMORY[0x277D5FAF8];
  v13[0] = v5;

  v8 = sub_222C93E0C();
  result = __swift_destroy_boxed_opaque_existential_0Tm(v13);
  if (v8)
  {
    v10 = 2;
  }

  else
  {
    v11 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    if (qword_280FE0370 != -1)
    {
      swift_once();
    }

    v14 = v6;
    v15 = v7;
    v13[0] = qword_280FE0378;

    v12 = sub_222C93E0C();
    result = __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v10 = v12 & 1;
  }

  *a1 = v10;
  return result;
}

uint64_t MediaSuggestionManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_222C49D48()
{
  result = qword_27D0277A0;
  if (!qword_27D0277A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0277A0);
  }

  return result;
}

unint64_t sub_222C49E64()
{
  result = qword_27D0277A8;
  if (!qword_27D0277A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0277A8);
  }

  return result;
}

unint64_t sub_222C49EBC()
{
  result = qword_27D0277B0;
  if (!qword_27D0277B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0277B0);
  }

  return result;
}

unint64_t sub_222C49F14()
{
  result = qword_27D0277B8;
  if (!qword_27D0277B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0277B8);
  }

  return result;
}

unint64_t sub_222C49F6C()
{
  result = qword_27D0277C0;
  if (!qword_27D0277C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0277C0);
  }

  return result;
}

unint64_t sub_222C49FC4()
{
  result = qword_27D0277C8;
  if (!qword_27D0277C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0277C8);
  }

  return result;
}

unint64_t sub_222C4A01C()
{
  result = qword_27D0277D0;
  if (!qword_27D0277D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0277D0);
  }

  return result;
}

unint64_t sub_222C4A074()
{
  result = qword_27D0277D8;
  if (!qword_27D0277D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0277D8);
  }

  return result;
}

unint64_t sub_222C4A0CC()
{
  result = qword_27D0277E0;
  if (!qword_27D0277E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0277E0);
  }

  return result;
}

unint64_t sub_222C4A124()
{
  result = qword_27D0277E8;
  if (!qword_27D0277E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0277E8);
  }

  return result;
}

uint64_t sub_222C4A178(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C6261736964 && a2 == 0xE800000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4C776F64616873 && a2 == 0xED0000676E696767 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t dispatch thunk of EventStreamDefinition.events(since:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_222B503AC;

  return v13(a1, a2, a3, a4);
}

Swift::Bool __swiftcall ContactPartialRepetititonDefinition.doesSessionHaveOutOfScopeEntityPromptClassification(classifications:)(Swift::OpaquePointer classifications)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for EntityPromptClassification();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v26 = &v26 - v13;
  v14 = *(classifications._rawValue + 2);
  if (v14)
  {
    v15 = classifications._rawValue + 32;
    v16 = MEMORY[0x277D84F90];
    v27 = v11;
    do
    {
      sub_222B43E3C(v15, v29);
      sub_222B405A0(v29, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v17 = swift_dynamicCast();
      (*(v7 + 56))(v5, v17 ^ 1u, 1, v6);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        result = sub_222BC937C(v5);
      }

      else
      {
        sub_222BC93E4(v5, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_222B49F90(0, v16[2] + 1, 1, v16);
        }

        v19 = v16[2];
        v18 = v16[3];
        if (v19 >= v18 >> 1)
        {
          v16 = sub_222B49F90(v18 > 1, v19 + 1, 1, v16);
        }

        v16[2] = v19 + 1;
        v20 = v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19;
        v11 = v27;
        result = sub_222BC93E4(v27, v20);
      }

      v15 += 40;
      --v14;
    }

    while (v14);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v21 = 0;
  v22 = v16[2];
  v23 = v26;
  while (1)
  {
    v24 = v21;
    if (v22 == v21)
    {
      goto LABEL_17;
    }

    if (v21 >= v16[2])
    {
      break;
    }

    sub_222B4528C(v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21++, v23);
    v25 = *(v23 + 48);

    result = sub_222C4A6E8(v23);
    if (v25)
    {

LABEL_17:

      return v22 != v24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222C4A6E8(uint64_t a1)
{
  v2 = type metadata accessor for EntityPromptClassification();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double *sub_222C4A744@<X0>(uint64_t a1@<X0>, double **a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return ContactPartialRepetititonDefinition.getSessionStitcher()(a1, WitnessTable, a2);
}

double *ContactPartialRepetititonDefinition.getSessionStitcher()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double **a3@<X8>)
{
  v5 = *(a2 + 8);
  v6 = (*(v5 + 80))(a1, v5);
  v7 = type metadata accessor for PartialRepetitionClassifier();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = (*(v5 + 88))(a1, v5);
  v10 = type metadata accessor for RestatementSessionStitcher();
  result = swift_allocObject();
  *(result + 6) = v7;
  *(result + 7) = &protocol witness table for PartialRepetitionClassifier;
  *(result + 3) = v8;
  result[2] = v9;
  a3[3] = v10;
  a3[4] = &protocol witness table for RestatementSessionStitcher;
  *a3 = result;
  return result;
}

double *sub_222C4A888@<X0>(uint64_t a1@<X0>, double **a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return ContactPartialRepetititonDefinition.getSessionStitcher()(a1, WitnessTable, a2);
}

uint64_t sub_222C4A900(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_222C9367C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_222B4FCD4(a1, &unk_27D026290, &qword_222C96B40);
    sub_222B5A814(a2, v8);
    (*(v10 + 8))(a2, v9);
    return sub_222B4FCD4(v8, &unk_27D026290, &qword_222C96B40);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_222BAAAD4(v13, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v10 + 8))(a2, v9);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_222C4AAF0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F38, &qword_222C9B788);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_222B4FCD4(a1, &qword_27D025F38, &qword_222C9B788);
    sub_222B5AA44(a2, v8);
    v14 = sub_222C9367C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_222B4FCD4(v8, &qword_27D025F38, &qword_222C9B788);
  }

  else
  {
    sub_222B5B33C(a1, v12);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_222BAAE68(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_222C9367C();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_222C4ACFC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_222B405A0(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_222BAB184(v10, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_222B5B328(a2, a3);
    *v3 = v9;
  }

  else
  {
    sub_222B4FCD4(a1, &qword_27D0277F0, &unk_222CA5070);
    sub_222B5ABCC(a2, a3, v10);
    sub_222B5B328(a2, a3);
    return sub_222B4FCD4(v10, &qword_27D0277F0, &unk_222CA5070);
  }

  return result;
}

uint64_t StreamRegistry.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_222B63D2C(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_222C4AE40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  swift_beginAccess();
  sub_222B95830(v6, v7);
  sub_222C4ACFC(v10, v6, v7);
  return swift_endAccess();
}

double sub_222C4AEF8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (!*(v8 + 16))
  {
    goto LABEL_6;
  }

  v9 = sub_222B8CFCC(v7, v6);
  if ((v10 & 1) == 0)
  {

LABEL_6:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);
    sub_222B95830(v7, v6);
    v13 = sub_222C942FC();
    v14 = sub_222C94A3C();
    sub_222B5B328(v7, v6);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32[0] = v16;
      *v15 = 136315138;
      v33[0] = v7;
      v33[1] = v6;
      sub_222B95830(v7, v6);
      v17 = sub_222C944EC();
      v19 = sub_222B437C0(v17, v18, v32);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_222B39000, v13, v14, "No stream  registered for identifier %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x223DCA8C0](v16, -1, -1);
      MEMORY[0x223DCA8C0](v15, -1, -1);
    }

    goto LABEL_11;
  }

  sub_222B43E3C(*(v8 + 56) + 40 * v9, v33);

  sub_222B43E3C(v33, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026C00, &unk_222CA5010);
  swift_getExtendedExistentialTypeMetadata();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    sub_222B405A0(v31, a3);
    return result;
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v20 = sub_222C9431C();
  __swift_project_value_buffer(v20, qword_280FE2340);
  sub_222B95830(v7, v6);
  v21 = sub_222C942FC();
  v22 = sub_222C94A4C();
  sub_222B5B328(v7, v6);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v31[0] = v24;
    *v23 = 136315394;
    v32[0] = v7;
    v32[1] = v6;
    sub_222B95830(v7, v6);
    v25 = sub_222C944EC();
    v27 = sub_222B437C0(v25, v26, v31);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v32[0] = a2;
    swift_getMetatypeMetadata();
    v28 = sub_222C944EC();
    v30 = sub_222B437C0(v28, v29, v31);

    *(v23 + 14) = v30;
    _os_log_impl(&dword_222B39000, v21, v22, "Attempted to retrieve stream %s with incorrect event type of %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v24, -1, -1);
    MEMORY[0x223DCA8C0](v23, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v33);
LABEL_11:
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t StreamRegistry.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t StreamRegistry.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t QuickHangupClassification.init(siriCallTurn:hangupEvent:usoQuery:endTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, unint64_t a7@<X8>)
{
  v11 = sub_222C9367C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(a7, a1, v11);
  v14 = type metadata accessor for QuickHangupClassification();
  v15 = (a7 + v14[5]);
  *v15 = a2;
  v15[1] = a3;
  v16 = a7 + v14[7];
  *v16 = a5;
  *(v16 + 8) = a6 & 1;
  *(a7 + v14[6]) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v17 = *(v12 + 72);
  v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_222C97C40;
  v13(v19 + v18, a1, v11);
  *(a7 + v14[8]) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_222C97C40;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  v21 = *(v12 + 8);

  result = v21(a1, v11);
  *(a7 + v14[9]) = v20;
  return result;
}

uint64_t type metadata accessor for QuickHangupClassification()
{
  result = qword_280FDE230;
  if (!qword_280FDE230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t QuickHangupClassification.siriCallTurn.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t QuickHangupClassification.hangupEvent.getter()
{
  v1 = (v0 + *(type metadata accessor for QuickHangupClassification() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t QuickHangupClassification.usoQuery.getter()
{
  v1 = *(v0 + *(type metadata accessor for QuickHangupClassification() + 24));
}

uint64_t QuickHangupClassification.endTime.getter()
{
  v1 = (v0 + *(type metadata accessor for QuickHangupClassification() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t QuickHangupClassification.callEventId.getter()
{
  v1 = (v0 + *(type metadata accessor for QuickHangupClassification() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t QuickHangupClassification.referencedTurns.getter()
{
  v1 = *(v0 + *(type metadata accessor for QuickHangupClassification() + 32));
}

uint64_t QuickHangupClassification.referencedEvents.getter()
{
  v1 = *(v0 + *(type metadata accessor for QuickHangupClassification() + 36));
}

uint64_t sub_222C4B7CC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_222C4B7E0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

void sub_222C4B84C()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222C4B9C8(319, &qword_27D0277F8, MEMORY[0x277D5E850], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_222C4BA2C(319, qword_27D027800, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_222C4B9C8(319, &qword_280FDB808, MEMORY[0x277CC95F0], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_222C4BA2C(319, &qword_280FDB798, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_222C4B9C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_222C4BA2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_222C4BAD0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = v4();
  v7 = 56;
  if (v6)
  {
    v7 = 16;
  }

  v8 = 80;
  if (v6)
  {
    v8 = 40;
  }

  v9 = 88;
  if (v6)
  {
    v9 = 48;
  }

  v10 = *(v2 + v8);
  v11 = *(v2 + v9);
  __swift_project_boxed_opaque_existential_1((v2 + v7), v10);
  return (*(v11 + 24))(a1, v10, v11) & 1;
}

uint64_t *sub_222C4BB74()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[13];

  return v0;
}

uint64_t sub_222C4BBA4()
{
  sub_222C4BB74();

  return swift_deallocClassInstance();
}

uint64_t RestatementSessionStitcher.__allocating_init(maximumTimeDeltaBetweenTurns:restatementClassifier:)(uint64_t *a1, double a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = sub_222C4D230(v7, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t sub_222C4BC7C()
{
  type metadata accessor for RestatementSessionStitcher();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D027898, qword_222CA5280);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDDEE0 = 91;
  unk_280FDDEE8 = 0xE100000000000000;
  return result;
}

uint64_t RestatementSessionStitcher.init(maximumTimeDeltaBetweenTurns:restatementClassifier:)(uint64_t *a1, double a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_222C4D1B0(v10, v2, v5, v6, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v12;
}

uint64_t sub_222C4BE04(uint64_t *a1, NSObject *a2)
{
  v93 = a2;
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  v90 = v4;
  v91 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TurnPairRestatementClassification();
  v9 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v85 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for FeaturisedSession(0);
  v11 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027888, &qword_222CA51F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v79 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D027890, &unk_222CA51F8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v92 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v88 = &v79 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v79 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v79 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v79 - v31;
  v87 = a1;
  v33 = v93;
  v93 = v2;
  sub_222C4C8C8(a1, v33, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_222B4FCD4(v17, &qword_27D027888, &qword_222CA51F0);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v34 = sub_222C9431C();
    __swift_project_value_buffer(v34, qword_280FE2340);
    v35 = sub_222C942FC();
    v36 = sub_222C94A3C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v95[0] = v38;
      *v37 = 136315138;
      if (qword_280FDDED8 != -1)
      {
        swift_once();
      }

      *(v37 + 4) = sub_222B437C0(qword_280FDDEE0, unk_280FDDEE8, v95);
      _os_log_impl(&dword_222B39000, v35, v36, "%s No adjacent turns between sessions", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x223DCA8C0](v38, -1, -1);
      MEMORY[0x223DCA8C0](v37, -1, -1);
    }
  }

  else
  {
    v80 = v8;
    sub_222C4D344(v17, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DF0, &qword_222C96BC0);
    v39 = *(type metadata accessor for FeaturisedTurn(0) - 8);
    v89 = v13;
    v40 = *(v39 + 72);
    v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_222C96900;
    sub_222B4FC6C(v32, v30, &qword_27D027890, &unk_222CA51F8);
    v43 = *(v18 + 48);
    sub_222B7E350(v30, v42 + v41);
    v83 = v32;
    sub_222B4FC6C(v32, v27, &qword_27D027890, &unk_222CA51F8);
    v45 = v89;
    v44 = v90;
    sub_222B7E350(&v27[*(v18 + 48)], v42 + v41 + v40);
    sub_222C4D3B4(v27, type metadata accessor for FeaturisedTurn);
    sub_222C4D3B4(&v30[v43], type metadata accessor for FeaturisedTurn);
    v47 = v86;
    v46 = v87;
    v48 = *(v86 + 20);
    v49 = v44;
    v82 = *(v91 + 16);
    v81 = v91 + 16;
    v82(v45 + v48, v87 + v48, v44);
    sub_222B4FC6C(v46 + *(v47 + 24), v45 + *(v47 + 24), &unk_27D026290, &qword_222C96B40);
    *v45 = v42;
    isa = v93[6].isa;
    v51 = v93[7].isa;
    __swift_project_boxed_opaque_existential_1(&v93[3].isa, isa);
    v52 = FeaturisedSessionClassifier.classify(session:)(v45, isa, v51);
    v53 = v30;
    if (*(v52 + 16))
    {
      sub_222B43E3C(v52 + 32, v95);

      sub_222B405A0(v95, v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v54 = v85;
      v55 = swift_dynamicCast();
      v56 = v92;
      v57 = v88;
      if (v55)
      {
        sub_222C4D3B4(v89, type metadata accessor for FeaturisedSession);
        sub_222B4FCD4(v83, &qword_27D027890, &unk_222CA51F8);
        sub_222C4D3B4(v54, type metadata accessor for TurnPairRestatementClassification);
        return 1;
      }

      v59 = v83;
    }

    else
    {

      v59 = v83;
      v56 = v92;
      v57 = v88;
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v60 = sub_222C9431C();
    __swift_project_value_buffer(v60, qword_280FE2340);
    sub_222B4FC6C(v59, v57, &qword_27D027890, &unk_222CA51F8);
    sub_222B4FC6C(v59, v56, &qword_27D027890, &unk_222CA51F8);
    v61 = sub_222C942FC();
    v62 = sub_222C94A3C();
    if (os_log_type_enabled(v61, v62))
    {
      LODWORD(v88) = v62;
      v93 = v61;
      v63 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *&v95[0] = v87;
      *v63 = 136315650;
      if (qword_280FDDED8 != -1)
      {
        swift_once();
      }

      *(v63 + 4) = sub_222B437C0(qword_280FDDEE0, unk_280FDDEE8, v95);
      *(v63 + 12) = 2080;
      sub_222B4FC6C(v57, v53, &qword_27D027890, &unk_222CA51F8);
      v64 = *(v18 + 48);
      v86 = v18;
      v65 = v80;
      v82(v80, v53, v49);
      sub_222C4D3B4(v53, type metadata accessor for FeaturisedTurn);
      sub_222C4D3B4(v53 + v64, type metadata accessor for FeaturisedTurn);
      v85 = sub_222B9E5D0();
      v66 = sub_222C9517C();
      v68 = v67;
      v91 = *(v91 + 8);
      (v91)(v65, v49);
      sub_222B4FCD4(v57, &qword_27D027890, &unk_222CA51F8);
      v69 = sub_222B437C0(v66, v68, v95);

      *(v63 + 14) = v69;
      *(v63 + 22) = 2080;
      v70 = v92;
      sub_222B4FC6C(v92, v53, &qword_27D027890, &unk_222CA51F8);
      v71 = *(v86 + 48);
      v82(v65, v53 + v71, v49);
      sub_222C4D3B4(v53 + v71, type metadata accessor for FeaturisedTurn);
      sub_222C4D3B4(v53, type metadata accessor for FeaturisedTurn);
      v72 = sub_222C9517C();
      v74 = v73;
      (v91)(v65, v49);
      sub_222B4FCD4(v70, &qword_27D027890, &unk_222CA51F8);
      v75 = sub_222B437C0(v72, v74, v95);

      *(v63 + 24) = v75;
      v76 = v93;
      _os_log_impl(&dword_222B39000, v93, v88, "%s No restatement detected between adjacent turns. turnId=%s, nextTurnId=%s", v63, 0x20u);
      v77 = v87;
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v77, -1, -1);
      MEMORY[0x223DCA8C0](v63, -1, -1);

      sub_222C4D3B4(v89, type metadata accessor for FeaturisedSession);
      v78 = v83;
    }

    else
    {

      sub_222B4FCD4(v56, &qword_27D027890, &unk_222CA51F8);
      sub_222B4FCD4(v57, &qword_27D027890, &unk_222CA51F8);
      sub_222C4D3B4(v89, type metadata accessor for FeaturisedSession);
      v78 = v59;
    }

    sub_222B4FCD4(v78, &qword_27D027890, &unk_222CA51F8);
  }

  return 0;
}