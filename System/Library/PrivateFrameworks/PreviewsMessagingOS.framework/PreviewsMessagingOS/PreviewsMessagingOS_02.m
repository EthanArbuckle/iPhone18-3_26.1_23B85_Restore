uint64_t sub_25F404060()
{
  result = type metadata accessor for PlistValueBox(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_25F404230()
{
  result = sub_25F4A25E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CanvasControlDescription.ControlType.Discriminant(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CanvasControlDescription.ControlType.Discriminant(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25F4044A8()
{
  result = qword_27FD6DB90;
  if (!qword_27FD6DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DB90);
  }

  return result;
}

unint64_t sub_25F404500()
{
  result = qword_27FD6DB98;
  if (!qword_27FD6DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DB98);
  }

  return result;
}

unint64_t sub_25F404558()
{
  result = qword_27FD6DBA0;
  if (!qword_27FD6DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DBA0);
  }

  return result;
}

unint64_t sub_25F4045B0()
{
  result = qword_27FD6DBA8;
  if (!qword_27FD6DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DBA8);
  }

  return result;
}

unint64_t sub_25F404608()
{
  result = qword_27FD6DBB0;
  if (!qword_27FD6DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DBB0);
  }

  return result;
}

unint64_t sub_25F404660()
{
  result = qword_27FD6DBB8;
  if (!qword_27FD6DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DBB8);
  }

  return result;
}

unint64_t sub_25F4046B8()
{
  result = qword_27FD6DBC0;
  if (!qword_27FD6DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DBC0);
  }

  return result;
}

unint64_t sub_25F404710()
{
  result = qword_27FD6DBC8;
  if (!qword_27FD6DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DBC8);
  }

  return result;
}

unint64_t sub_25F404768()
{
  result = qword_27FD6DBD0;
  if (!qword_27FD6DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DBD0);
  }

  return result;
}

unint64_t sub_25F4047C0()
{
  result = qword_27FD6DBD8;
  if (!qword_27FD6DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DBD8);
  }

  return result;
}

unint64_t sub_25F404818()
{
  result = qword_27FD6DBE0;
  if (!qword_27FD6DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DBE0);
  }

  return result;
}

unint64_t sub_25F404870()
{
  result = qword_27FD6DBE8;
  if (!qword_27FD6DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DBE8);
  }

  return result;
}

unint64_t sub_25F4048C4()
{
  result = qword_27FD6DBF0;
  if (!qword_27FD6DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DBF0);
  }

  return result;
}

uint64_t sub_25F404918()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F404964()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F4049B0()
{
  v0 = sub_25F4A3170();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F4049FC()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F404A48()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F404A94()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F404AE0(uint64_t a1, void *a2)
{
  v3 = *(v2 + 24);
  *a2 = *(v2 + 16);
  a2[1] = v3;
}

unint64_t sub_25F404AEC()
{
  result = qword_27FD6DBF8;
  if (!qword_27FD6DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DBF8);
  }

  return result;
}

uint64_t sub_25F404B78(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_25F404B8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void ShellUpdatePayload.hostUpdateSeed.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

void ShellUpdatePayload.hostUpdateGroupSeed.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t ShellUpdatePayload.previewType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return sub_25F404C5C(v2, v3);
}

uint64_t sub_25F404C5C(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_25F404C6C(a1, a2);
  }

  return a1;
}

uint64_t sub_25F404C6C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t ShellUpdatePayload.contentIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

uint64_t ShellUpdatePayload.contentCategory.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  a1[1] = v2;
}

uint64_t ShellUpdatePayload.contentOverride.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 88);
  a1[1] = v2;
}

uint64_t ShellUpdatePayload.contentPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShellUpdatePayload() + 44);
  v4 = sub_25F4A25E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ShellUpdatePayload()
{
  result = qword_27FD6DD18;
  if (!qword_27FD6DD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShellUpdatePayload.staticProducts.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShellUpdatePayload() + 48));
}

uint64_t ShellUpdatePayload.setupPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShellUpdatePayload() + 52);
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
}

uint64_t ShellUpdatePayload.controlStates.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShellUpdatePayload() + 56));
}

__n128 ShellUpdatePayload.init(pid:hostUpdateSeed:hostUpdateGroupSeed:previewType:contentIdentifier:contentCategory:contentOverride:contentPayload:staticProducts:setupPayload:controlStates:)@<Q0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __n128 *a11, uint64_t a12)
{
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *a3;
  v17 = *(a3 + 8);
  v18 = *a5;
  v19 = a5[1];
  v20 = *a6;
  v21 = a6[1];
  v22 = a11->n128_u64[0];
  v23 = a11->n128_u8[8];
  v31 = a11[1];
  v24 = a11[2].n128_u64[0];
  v25 = a11[2].n128_u64[1];
  *a9 = a1;
  *(a9 + 8) = v14;
  *(a9 + 16) = v15;
  *(a9 + 24) = v16;
  *(a9 + 32) = v17;
  *(a9 + 40) = *a4;
  *(a9 + 56) = v18;
  *(a9 + 64) = v19;
  *(a9 + 72) = v20;
  *(a9 + 80) = v21;
  *(a9 + 88) = *a7;
  updated = type metadata accessor for ShellUpdatePayload();
  v27 = updated[11];
  v28 = sub_25F4A25E0();
  (*(*(v28 - 8) + 32))(a9 + v27, a8, v28);
  *(a9 + updated[12]) = a10;
  v29 = (a9 + updated[13]);
  v29->n128_u64[0] = v22;
  v29->n128_u8[8] = v23;
  result = v31;
  v29[1] = v31;
  v29[2].n128_u64[0] = v24;
  v29[2].n128_u64[1] = v25;
  *(a9 + updated[14]) = a12;
  return result;
}

unint64_t sub_25F404F78(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 6580592;
    v7 = 0xD000000000000013;
    v8 = 0x5477656976657270;
    if (a1 != 3)
    {
      v8 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6164705574736F68;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7250636974617473;
    v2 = 0x7961507075746573;
    if (a1 != 9)
    {
      v2 = 0x536C6F72746E6F63;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x43746E65746E6F63;
    v4 = 0x4F746E65746E6F63;
    if (a1 != 6)
    {
      v4 = 0x50746E65746E6F63;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25F405130(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_25F404F78(*a1);
  v5 = v4;
  if (v3 == sub_25F404F78(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F4051B8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F404F78(v1);
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F40521C()
{
  sub_25F404F78(*v0);
  sub_25F4A2C60();
}

uint64_t sub_25F405270()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F404F78(v1);
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4052D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F40A564();
  *a2 = result;
  return result;
}

unint64_t sub_25F405300@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F404F78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F405370(int *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DD98, &qword_25F4A7138);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v34 = *a1;
  v35 = *(a1 + 1);
  v87 = *(a1 + 16);
  v36 = *(a1 + 3);
  v86 = *(a1 + 32);
  v13 = *(a1 + 6);
  v37 = *(a1 + 5);
  v33 = v13;
  v14 = *(a1 + 8);
  v38 = *(a1 + 7);
  v15 = *(a1 + 10);
  v45 = *(a1 + 9);
  v42 = v15;
  v16 = *(a1 + 12);
  v47 = *(a1 + 11);
  v46 = v16;
  v17 = *(v6 + 56);
  *(&v32 - v11) = 7;
  updated = type metadata accessor for ShellUpdatePayload();
  v19 = updated[11];
  v49 = sub_25F4A25E0();
  v20 = *(v49 - 8);
  v21 = *(v20 + 16);
  v48 = v12;
  v21(&v12[v17], a1 + v19, v49);
  v22 = updated[13];
  v51 = *(a1 + updated[12]);
  v23 = (a1 + v22);
  v40 = *(a1 + v22);
  LOBYTE(v22) = *(a1 + v22 + 8);
  v41 = v23[2];
  v24 = v23[4];
  v44 = v23[3];
  v39 = v23[5];
  v43 = *(a1 + updated[14]);
  v85 = v22;
  v84 = 0;
  v82 = v34;
  v83 = 0;
  v81 = 1;
  v79 = v35;
  v80 = v87;
  v78 = 2;
  v76 = v36;
  v77 = v86;
  v75 = 3;
  v25 = v37;
  v73 = v37;
  v74 = v13;
  v72 = 4;
  v70 = v38;
  v71 = v14;
  v69 = 5;
  v67 = v45;
  v68 = v42;
  v66 = 6;
  v64 = v47;
  v65 = v46;
  sub_25F40A694(v12, v10);
  LOBYTE(v13) = *v10;
  v26 = &v10[*(v6 + 56)];
  v27 = v50;
  v28 = v49;
  (*(v20 + 32))(v50, v26, v49);
  (*(v20 + 56))(v27, 0, 1, v28);
  v63 = v13;
  v62 = 8;
  v61 = v51;
  v60 = 9;
  v54 = v40;
  v55 = v85;
  v56 = v41;
  v57 = v44;
  v58 = v24;
  v59 = v39;
  v53 = 10;
  v52 = v43;
  sub_25F404C5C(v25, v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC68, &unk_25F4A6620);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC80, &unk_25F4AFB40);
  sub_25F406474();
  sub_25F40651C();
  sub_25F406570();
  sub_25F4065C4();
  sub_25F406618();
  sub_25F406680();
  sub_25F4066D4();
  sub_25F407950(&qword_27FD6DC70, &qword_27FD6DC68, &unk_25F4A6620, sub_25F406728);
  sub_25F4064C8();
  sub_25F407950(&qword_27FD6DC88, &qword_27FD6DC80, &unk_25F4AFB40, sub_25F40677C);
  v29 = v50;
  v30 = sub_25F4A2840();
  sub_25F40A704(v54);

  sub_25F3F21F4(v29, &qword_27FD6DAA0, &qword_25F4A5550);

  sub_25F40A764(v73, v74);
  sub_25F3F21F4(v48, &qword_27FD6DD98, &qword_25F4A7138);
  return v30;
}

uint64_t ShellUpdatePayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71[3] = &type metadata for ShellUpdatePayload.Key;
  v10 = sub_25F406474();
  v71[4] = v10;
  LOBYTE(v71[0]) = 9;
  sub_25F4064C8();
  sub_25F4A2530();
  if (v2)
  {
    (*(v6 + 8))(a1, v5);
    return __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    v58 = v6;
    v59 = v5;
    v56 = a2;
    v57 = v9;
    __swift_destroy_boxed_opaque_existential_1(v71);
    v11 = v72;
    v12 = v73;
    v14 = v74;
    v13 = v75;
    v15 = v76;
    v16 = v77;
    v75 = &type metadata for ShellUpdatePayload.Key;
    v76 = v10;
    LOBYTE(v72) = 0;
    sub_25F4A2530();
    v51 = v13;
    v78 = v12;
    v53 = v16;
    v55 = v14;
    v54 = v11;
    v52 = v15;
    __swift_destroy_boxed_opaque_existential_1(&v72);
    LODWORD(v16) = v79;
    v75 = &type metadata for ShellUpdatePayload.Key;
    v76 = v10;
    LOBYTE(v72) = 1;
    sub_25F40651C();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(&v72);
    v17 = v69;
    LODWORD(v13) = v70;
    v75 = &type metadata for ShellUpdatePayload.Key;
    v76 = v10;
    LOBYTE(v72) = 2;
    sub_25F406570();
    sub_25F4A2580();
    v49 = v13;
    v50 = v17;
    __swift_destroy_boxed_opaque_existential_1(&v72);
    v18 = v67;
    LODWORD(v14) = v68;
    v75 = &type metadata for ShellUpdatePayload.Key;
    v76 = v10;
    LOBYTE(v72) = 3;
    sub_25F4065C4();
    sub_25F4A2530();
    v47 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v72);
    v19 = v71[1];
    v48 = v71[0];
    v75 = &type metadata for ShellUpdatePayload.Key;
    v76 = v10;
    LOBYTE(v72) = 4;
    sub_25F406618();
    sub_25F4A2530();
    v46 = v19;
    __swift_destroy_boxed_opaque_existential_1(&v72);
    v22 = v65;
    v21 = v66;
    v75 = &type metadata for ShellUpdatePayload.Key;
    v76 = v10;
    LOBYTE(v72) = 5;
    sub_25F406680();
    sub_25F4A2530();
    v45 = v21;
    v44 = v22;
    __swift_destroy_boxed_opaque_existential_1(&v72);
    v23 = v63;
    v24 = v64;
    v75 = &type metadata for ShellUpdatePayload.Key;
    v76 = v10;
    LOBYTE(v72) = 6;
    sub_25F4066D4();
    sub_25F4A2580();
    v43 = v24;
    v41 = v18;
    v42 = v16;
    __swift_destroy_boxed_opaque_existential_1(&v72);
    v25 = v62;
    v40 = v61;
    v75 = &type metadata for ShellUpdatePayload.Key;
    v76 = v10;
    LOBYTE(v72) = 7;
    sub_25F4A2530();
    v39 = v25;
    __swift_destroy_boxed_opaque_existential_1(&v72);
    v75 = &type metadata for ShellUpdatePayload.Key;
    v76 = v10;
    LOBYTE(v72) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC68, &unk_25F4A6620);
    sub_25F407950(&qword_27FD6DC70, &qword_27FD6DC68, &unk_25F4A6620, sub_25F406728);
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(&v72);
    if (v60)
    {
      v26 = v60;
    }

    else
    {
      v26 = v53;
    }

    v75 = &type metadata for ShellUpdatePayload.Key;
    v76 = v10;
    LOBYTE(v72) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC80, &unk_25F4AFB40);
    sub_25F407950(&qword_27FD6DC88, &qword_27FD6DC80, &unk_25F4AFB40, sub_25F40677C);
    sub_25F4A2580();
    v27 = v58;
    v28 = v59;
    (*(v58 + 8))(a1, v59);
    __swift_destroy_boxed_opaque_existential_1(&v72);
    v29 = v60;
    v30 = v56;
    *v56 = v42;
    *(v30 + 1) = v50;
    *(v30 + 16) = v49;
    *(v30 + 3) = v41;
    *(v30 + 32) = v47;
    v31 = v46;
    *(v30 + 5) = v48;
    *(v30 + 6) = v31;
    v32 = v45;
    *(v30 + 7) = v44;
    *(v30 + 8) = v32;
    v33 = v43;
    *(v30 + 9) = v23;
    *(v30 + 10) = v33;
    v34 = v39;
    *(v30 + 11) = v40;
    *(v30 + 12) = v34;
    updated = type metadata accessor for ShellUpdatePayload();
    result = (*(v27 + 32))(v30 + updated[11], v57, v28);
    *(v30 + updated[12]) = v26;
    v36 = v30 + updated[13];
    *v36 = v54;
    v36[8] = v78;
    v37 = v51;
    *(v36 + 2) = v55;
    *(v36 + 3) = v37;
    v38 = v53;
    *(v36 + 4) = v52;
    *(v36 + 5) = v38;
    *(v30 + updated[14]) = v29;
  }

  return result;
}

unint64_t sub_25F406474()
{
  result = qword_27FD6DC28;
  if (!qword_27FD6DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC28);
  }

  return result;
}

unint64_t sub_25F4064C8()
{
  result = qword_27FD6DC30;
  if (!qword_27FD6DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC30);
  }

  return result;
}

unint64_t sub_25F40651C()
{
  result = qword_27FD6DC38;
  if (!qword_27FD6DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC38);
  }

  return result;
}

unint64_t sub_25F406570()
{
  result = qword_27FD6DC40;
  if (!qword_27FD6DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC40);
  }

  return result;
}

unint64_t sub_25F4065C4()
{
  result = qword_27FD6DC48;
  if (!qword_27FD6DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC48);
  }

  return result;
}

unint64_t sub_25F406618()
{
  result = qword_27FD6DC50;
  if (!qword_27FD6DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC50);
  }

  return result;
}

uint64_t sub_25F40666C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

unint64_t sub_25F406680()
{
  result = qword_27FD6DC58;
  if (!qword_27FD6DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC58);
  }

  return result;
}

unint64_t sub_25F4066D4()
{
  result = qword_27FD6DC60;
  if (!qword_27FD6DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC60);
  }

  return result;
}

unint64_t sub_25F406728()
{
  result = qword_27FD6DC78;
  if (!qword_27FD6DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC78);
  }

  return result;
}

unint64_t sub_25F40677C()
{
  result = qword_27FD6DA68;
  if (!qword_27FD6DA68)
  {
    type metadata accessor for PlistValueBox(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA68);
  }

  return result;
}

uint64_t CancelUpdatePayload.contentIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t CancelUpdatePayload.init(pid:contentIdentifier:updateSeed:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  *(a4 + 24) = v6;
  return result;
}

uint64_t UpdateSetupPayload.loggingOutputPath.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void __swiftcall UpdateSetupPayload.init(dynamicProducts:staticProducts:shellDidLoadStaticProducts:updates:loggingOutputPath:)(PreviewsMessagingOS::UpdateSetupPayload *__return_ptr retstr, Swift::OpaquePointer dynamicProducts, Swift::OpaquePointer staticProducts, Swift::Bool shellDidLoadStaticProducts, Swift::OpaquePointer updates, Swift::String_optional loggingOutputPath)
{
  retstr->dynamicProducts = dynamicProducts;
  retstr->shellDidLoadStaticProducts = shellDidLoadStaticProducts;
  retstr->updates = updates;
  retstr->loggingOutputPath = loggingOutputPath;
  retstr->staticProducts = staticProducts;
}

uint64_t static HostUpdateSeed.next.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_25F4A2A70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD6D370 != -1)
  {
    swift_once();
  }

  v8[2] = qword_27FD6DC20;

  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC90, &unk_25F4A6630);
  sub_25F406B28();
  sub_25F4A29B0();
  (*(v3 + 8))(v6, v2);

  *a1 = v8[3];
  return result;
}

uint64_t *sub_25F406A98@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result + 1;
  *result = v2;
  *a2 = v2;
  return result;
}

uint64_t sub_25F406AF0()
{
  result = sub_25F4A2A90();
  qword_27FD6DC20 = result;
  return result;
}

unint64_t sub_25F406B28()
{
  result = qword_27FD6DC98;
  if (!qword_27FD6DC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6DC90, &unk_25F4A6630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC98);
  }

  return result;
}

uint64_t HostUpdateSeed.hashValue.getter()
{
  v1 = *v0;
  sub_25F4A3300();
  MEMORY[0x25F8DDB50](v1);
  return sub_25F4A3350();
}

uint64_t sub_25F406C14()
{
  v1 = *v0;
  sub_25F4A3300();
  MEMORY[0x25F8DDB50](v1);
  return sub_25F4A3350();
}

uint64_t sub_25F406C88()
{
  v1 = *v0;
  sub_25F4A3300();
  MEMORY[0x25F8DDB50](v1);
  return sub_25F4A3350();
}

uint64_t sub_25F406D9C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F406E98()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F406F80()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F407078@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F40A5B0();
  *a2 = result;
  return result;
}

void sub_25F4070A8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x73746375646F7270;
  v5 = 0x800000025F4B5E20;
  v6 = 0xD00000000000001ALL;
  v7 = 0xE700000000000000;
  v8 = 0x73657461647075;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000025F4B5E50;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7250636974617473;
    v3 = 0xEE0073746375646FLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_25F407160()
{
  v1 = *v0;
  v2 = 0x73746375646F7270;
  v3 = 0xD00000000000001ALL;
  v4 = 0x73657461647075;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7250636974617473;
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

uint64_t UpdateSetupPayload.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_25F4A25A0();
}

uint64_t sub_25F407264(uint64_t *a1)
{
  v2 = *(a1 + 3);
  v6 = *a1;
  v5 = a1[5];
  v4 = *(a1 + 8);
  v3 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DCA8, &unk_25F4AFB20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC68, &unk_25F4A6620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DCC0, &qword_25F4A6640);
  sub_25F4078A8();
  sub_25F407950(&qword_27FD6DCB0, &qword_27FD6DCA8, &unk_25F4AFB20, sub_25F4078FC);
  sub_25F407950(&qword_27FD6DC70, &qword_27FD6DC68, &unk_25F4A6620, sub_25F406728);
  sub_25F407950(&qword_27FD6DCC8, &qword_27FD6DCC0, &qword_25F4A6640, sub_25F4079CC);
  return sub_25F4A28A0();
}

uint64_t UpdateSetupPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = &type metadata for UpdateSetupPayload.Key;
  v5 = sub_25F4078A8();
  v17 = v5;
  LOBYTE(v15[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC68, &unk_25F4A6620);
  sub_25F407950(&qword_27FD6DC70, &qword_27FD6DC68, &unk_25F4A6620, sub_25F406728);
  sub_25F4A2580();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v13)
    {
      v7 = v13;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16 = &type metadata for UpdateSetupPayload.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DCA8, &unk_25F4AFB20);
    sub_25F407950(&qword_27FD6DCB0, &qword_27FD6DCA8, &unk_25F4AFB20, sub_25F4078FC);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v8 = v18;
    v16 = &type metadata for UpdateSetupPayload.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 2;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v9 = v13;
    if (v13 == 2)
    {
      v9 = *(v7 + 16) != 0;
    }

    v12 = v9;
    v16 = &type metadata for UpdateSetupPayload.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DCC0, &qword_25F4A6640);
    sub_25F407950(&qword_27FD6DCC8, &qword_27FD6DCC0, &qword_25F4A6640, sub_25F4079CC);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for UpdateSetupPayload.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 4;
    sub_25F4A2580();
    v11 = sub_25F4A25E0();
    (*(*(v11 - 8) + 8))(a1, v11);
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    *a2 = v8;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
    *(a2 + 24) = v13;
    *(a2 + 40) = v7;
  }

  return result;
}

unint64_t sub_25F4078A8()
{
  result = qword_27FD6DCA0;
  if (!qword_27FD6DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DCA0);
  }

  return result;
}

unint64_t sub_25F4078FC()
{
  result = qword_27FD6DCB8;
  if (!qword_27FD6DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DCB8);
  }

  return result;
}

uint64_t sub_25F407950(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_25F4079CC()
{
  result = qword_27FD6DCD0;
  if (!qword_27FD6DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DCD0);
  }

  return result;
}

uint64_t sub_25F407A20()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_25F4A25A0();
}

uint64_t sub_25F407A88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x800000025F4B5DA0;
  if (v2 == 1)
  {
    v5 = 0x800000025F4B5DA0;
  }

  else
  {
    v3 = 0x6553657461647075;
    v5 = 0xEA00000000006465;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 6580592;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x6553657461647075;
    v4 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6580592;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F407B84()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F407C28()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F407CB8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F407D58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F40A5FC();
  *a2 = result;
  return result;
}

void sub_25F407D88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x800000025F4B5DA0;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x6553657461647075;
    v4 = 0xEA00000000006465;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6580592;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F407DE8()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x6553657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6580592;
  }
}

uint64_t CancelUpdatePayload.propertyListValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  return sub_25F4A25A0();
}

uint64_t sub_25F407E94()
{
  sub_25F408168();
  sub_25F406618();
  sub_25F40651C();

  v0 = sub_25F4A28C0();

  return v0;
}

uint64_t sub_25F407F74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_25F407E94();
}

uint64_t CancelUpdatePayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = &type metadata for CancelUpdatePayload.Key;
  v5 = sub_25F408168();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v6 = v16;
    v14 = &type metadata for CancelUpdatePayload.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    sub_25F406618();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v14 = &type metadata for CancelUpdatePayload.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 2;
    sub_25F40651C();
    sub_25F4A2530();
    v8 = sub_25F4A25E0();
    (*(*(v8 - 8) + 8))(a1, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    *a2 = v6;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v10;
  }

  return result;
}

unint64_t sub_25F408168()
{
  result = qword_27FD6DCD8;
  if (!qword_27FD6DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DCD8);
  }

  return result;
}

uint64_t sub_25F4081BC()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  return sub_25F4A25A0();
}

uint64_t sub_25F408230()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F408330()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F40841C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F408518@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F40A648();
  *a2 = result;
  return result;
}

void sub_25F408548(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6E6563536E69616DLL;
  v4 = 0xED0000656E656353;
  v5 = 0x64657463656A6E69;
  v6 = 0xE800000000000000;
  v7 = 0x6C616E7265747865;
  if (v2 != 3)
  {
    v7 = 0x656976657250736ELL;
    v6 = 0xE900000000000077;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEF656E6563537961;
  if (*v1)
  {
    v3 = 0x6C707369446D6973;
  }

  else
  {
    v8 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}

uint64_t sub_25F408604(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F40A4BC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4086C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656449656E656373;
  }

  else
  {
    v4 = 0x696D697263736964;
  }

  if (v3)
  {
    v5 = 0xEC000000746E616ELL;
  }

  else
  {
    v5 = 0xEF7265696669746ELL;
  }

  if (*a2)
  {
    v6 = 0x656449656E656373;
  }

  else
  {
    v6 = 0x696D697263736964;
  }

  if (*a2)
  {
    v7 = 0xEF7265696669746ELL;
  }

  else
  {
    v7 = 0xEC000000746E616ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F408784()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F40881C()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4088A0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F408940(uint64_t *a1@<X8>)
{
  v2 = 0x696D697263736964;
  if (*v1)
  {
    v2 = 0x656449656E656373;
  }

  v3 = 0xEC000000746E616ELL;
  if (*v1)
  {
    v3 = 0xEF7265696669746ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F408994()
{
  if (*v0)
  {
    result = 0x656449656E656373;
  }

  else
  {
    result = 0x696D697263736964;
  }

  *v0;
  return result;
}

uint64_t PreviewType.HostLocation.propertyListValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = sub_25F408AD8();
  sub_25F408B2C();
  result = sub_25F4A25C0();
  if (v1 >= 4)
  {
    v5[5] = v2;
    v5[6] = v1;
    v5[3] = &type metadata for PreviewType.HostLocation.Key;
    v5[4] = v3;
    LOBYTE(v5[0]) = 1;
    sub_25F4A2520();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

_BYTE *sub_25F408AAC(_BYTE *result, char *a2)
{
  v3 = *(v2 + 24);
  *result = 0;
  if (v3 >= 4)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0x4030100u >> (8 * v3);
  }

  *a2 = v4;
  return result;
}

unint64_t sub_25F408AD8()
{
  result = qword_27FD6DCE0;
  if (!qword_27FD6DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DCE0);
  }

  return result;
}

unint64_t sub_25F408B2C()
{
  result = qword_27FD6DCE8;
  if (!qword_27FD6DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DCE8);
  }

  return result;
}

uint64_t PreviewType.HostLocation.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v16 = &type metadata for PreviewType.HostLocation.Key;
  v5 = sub_25F408AD8();
  v17 = v5;
  LOBYTE(v15[0]) = 0;
  sub_25F408B2C();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v13 <= 1u)
    {
      v11 = sub_25F4A25E0();
      result = (*(*(v11 - 8) + 8))(a1, v11);
      v9 = 0;
      v10 = v13 != 0;
    }

    else if (v13 == 2)
    {
      v16 = &type metadata for PreviewType.HostLocation.Key;
      v17 = v5;
      LOBYTE(v15[0]) = 1;
      sub_25F4A2530();
      v12 = sub_25F4A25E0();
      (*(*(v12 - 8) + 8))(a1, v12);
      result = __swift_destroy_boxed_opaque_existential_1(v15);
      v9 = v13;
      v10 = v14;
    }

    else
    {
      v8 = sub_25F4A25E0();
      result = (*(*(v8 - 8) + 8))(a1, v8);
      v9 = 0;
      if (v13 == 3)
      {
        v10 = 2;
      }

      else
      {
        v10 = 3;
      }
    }

    *a2 = v9;
    a2[1] = v10;
  }

  return result;
}

uint64_t sub_25F408DFC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = sub_25F408AD8();
  sub_25F408B2C();
  result = sub_25F4A25C0();
  if (v1 >= 4)
  {
    v5[5] = v2;
    v5[6] = v1;
    v5[3] = &type metadata for PreviewType.HostLocation.Key;
    v5[4] = v3;
    LOBYTE(v5[0]) = 1;
    sub_25F4A2520();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_25F408EDC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x646574736F68;
  }

  else
  {
    v2 = 0x636974617473;
  }

  if (*a2)
  {
    v3 = 0x646574736F68;
  }

  else
  {
    v3 = 0x636974617473;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F4A3270();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F408F5C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F408FCC()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F409020()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F409098(uint64_t *a1@<X8>)
{
  v2 = 0x636974617473;
  if (*v1)
  {
    v2 = 0x646574736F68;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_25F4090C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F40A510();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F40918C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x61636F4C74736F68;
  }

  else
  {
    v4 = 0x696D697263736964;
  }

  if (v3)
  {
    v5 = 0xEC000000746E616ELL;
  }

  else
  {
    v5 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v6 = 0x61636F4C74736F68;
  }

  else
  {
    v6 = 0x696D697263736964;
  }

  if (*a2)
  {
    v7 = 0xEC0000006E6F6974;
  }

  else
  {
    v7 = 0xEC000000746E616ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F409244()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4092D8()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F409358()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F4093F4(uint64_t *a1@<X8>)
{
  v2 = 0x696D697263736964;
  if (*v1)
  {
    v2 = 0x61636F4C74736F68;
  }

  v3 = 0xEC000000746E616ELL;
  if (*v1)
  {
    v3 = 0xEC0000006E6F6974;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F409444()
{
  if (*v0)
  {
    result = 0x61636F4C74736F68;
  }

  else
  {
    result = 0x696D697263736964;
  }

  *v0;
  return result;
}

uint64_t PreviewType.propertyListValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_25F409584();
  sub_25F4095D8();
  result = sub_25F4A25C0();
  if (v2 != 4)
  {
    v5[5] = v1;
    v5[6] = v2;
    v5[3] = &type metadata for PreviewType.Key;
    v5[4] = v3;
    LOBYTE(v5[0]) = 1;
    sub_25F404C6C(v1, v2);
    sub_25F40962C();
    sub_25F4A2520();
    sub_25F409680(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

_BYTE *sub_25F40956C(_BYTE *result, BOOL *a2)
{
  v3 = *(v2 + 24);
  *result = 0;
  *a2 = v3 != 4;
  return result;
}

unint64_t sub_25F409584()
{
  result = qword_27FD6DCF0;
  if (!qword_27FD6DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DCF0);
  }

  return result;
}

unint64_t sub_25F4095D8()
{
  result = qword_27FD6DCF8;
  if (!qword_27FD6DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DCF8);
  }

  return result;
}

unint64_t sub_25F40962C()
{
  result = qword_27FD6DD00;
  if (!qword_27FD6DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD00);
  }

  return result;
}

uint64_t sub_25F409680(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_25F40666C(a1, a2);
  }

  return a1;
}

uint64_t PreviewType.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v13 = &type metadata for PreviewType.Key;
  v5 = sub_25F409584();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  sub_25F4095D8();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v11)
    {
      v13 = &type metadata for PreviewType.Key;
      v14 = v5;
      LOBYTE(v12[0]) = 1;
      sub_25F40962C();
      sub_25F4A2530();
      v8 = sub_25F4A25E0();
      (*(*(v8 - 8) + 8))(a1, v8);
      result = __swift_destroy_boxed_opaque_existential_1(v12);
      v9 = v11;
    }

    else
    {
      v10 = sub_25F4A25E0();
      result = (*(*(v10 - 8) + 8))(a1, v10);
      v9 = xmmword_25F4A6610;
    }

    *a2 = v9;
  }

  return result;
}

unint64_t sub_25F40985C()
{
  result = qword_27FD6DD08;
  if (!qword_27FD6DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD08);
  }

  return result;
}

unint64_t sub_25F4098B4()
{
  result = qword_27FD6DD10;
  if (!qword_27FD6DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD10);
  }

  return result;
}

uint64_t sub_25F409928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25F4A25E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F4099E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = sub_25F4A25E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25F409A8C()
{
  sub_25F409C34(319, &qword_27FD6DD28, &type metadata for HostUpdateSeed, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_25F409C34(319, &qword_27FD6DD30, &type metadata for HostUpdateGroupSeed, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_25F409C34(319, &qword_27FD6DD38, &type metadata for ContentOverride, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_25F4A25E0();
        if (v3 <= 0x3F)
        {
          sub_25F409C34(319, &qword_27FD6DD40, &type metadata for StaticLinkablePreviewProduct, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_25F409C84();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_25F409C34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25F409C84()
{
  if (!qword_27FD6DD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6DC80, &unk_25F4AFB40);
    v0 = sub_25F4A3060();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD6DD48);
    }
  }
}

uint64_t sub_25F409CE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F409D30(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_25F409D80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25F409DC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS11PreviewTypeO12HostLocationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS11PreviewTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 4;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F409E60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 4;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F409EC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_25F409F10(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = a2 - 2147483644;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2 + 3;
  }

  return result;
}

uint64_t sub_25F409F54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F409FA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_25F40A004(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BinaryType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BinaryType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ShellUpdatePayload.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShellUpdatePayload.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F40A258()
{
  result = qword_27FD6DD50;
  if (!qword_27FD6DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD50);
  }

  return result;
}

unint64_t sub_25F40A2B0()
{
  result = qword_27FD6DD58;
  if (!qword_27FD6DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD58);
  }

  return result;
}

unint64_t sub_25F40A308()
{
  result = qword_27FD6DD60;
  if (!qword_27FD6DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD60);
  }

  return result;
}

unint64_t sub_25F40A360()
{
  result = qword_27FD6DD68;
  if (!qword_27FD6DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD68);
  }

  return result;
}

unint64_t sub_25F40A3B8()
{
  result = qword_27FD6DD70;
  if (!qword_27FD6DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD70);
  }

  return result;
}

unint64_t sub_25F40A410()
{
  result = qword_27FD6DD78;
  if (!qword_27FD6DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD78);
  }

  return result;
}

unint64_t sub_25F40A468()
{
  result = qword_27FD6DD80;
  if (!qword_27FD6DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD80);
  }

  return result;
}

unint64_t sub_25F40A4BC()
{
  result = qword_27FD6DD88;
  if (!qword_27FD6DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD88);
  }

  return result;
}

unint64_t sub_25F40A510()
{
  result = qword_27FD6DD90;
  if (!qword_27FD6DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DD90);
  }

  return result;
}

uint64_t sub_25F40A564()
{
  v0 = sub_25F4A3170();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F40A5B0()
{
  v0 = sub_25F4A3170();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F40A5FC()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F40A648()
{
  v0 = sub_25F4A3170();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F40A694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DD98, &qword_25F4A7138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F40A704(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F40A764(uint64_t a1, unint64_t a2)
{
  if (a2 != 5)
  {
    return sub_25F409680(a1, a2);
  }

  return a1;
}

uint64_t sub_25F40A7E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for PipeEvent.Content();
  if (v4 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F40A890(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150) - 8);
  v12 = *(v11 + 80);
  v13 = (v9 + v10 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v13 + v14;
  v16 = ((*(*(sub_25F4A25E0() - 8) + 64) + v12) & ~v12) + v14;
  if (!*(v11 + 84))
  {
    ++v16;
  }

  if (v16 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= 3)
  {
    v18 = 253 - (2u >> (8 * v17));
  }

  else
  {
    v18 = 253;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 84);
  if (v21 <= v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = *(v20 + 84);
  }

  v23 = *(v20 + 80);
  if (!a2)
  {
    return 0;
  }

  v24 = v17 + v23 + 1;
  if (a2 <= v22)
  {
    goto LABEL_36;
  }

  v25 = (v24 & ~v23) + *(*(AssociatedTypeWitness - 8) + 64);
  v26 = 8 * v25;
  if (v25 <= 3)
  {
    v29 = ((a2 - v22 + ~(-1 << v26)) >> v26) + 1;
    if (HIWORD(v29))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v29 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v29 < 2)
    {
LABEL_36:
      if (v18 >= v21)
      {
        v34 = *(a1 + v17);
        if (v18 <= (v34 ^ 0xFFu))
        {
          return 0;
        }

        else
        {
          return (256 - v34);
        }
      }

      else
      {
        v33 = *(v20 + 48);

        return v33((a1 + v24) & ~v23);
      }
    }
  }

  v27 = *(a1 + v25);
  if (!*(a1 + v25))
  {
    goto LABEL_36;
  }

LABEL_23:
  v30 = (v27 - 1) << v26;
  if (v25 > 3)
  {
    v30 = 0;
  }

  if (v25)
  {
    if (v25 <= 3)
    {
      v31 = v25;
    }

    else
    {
      v31 = 4;
    }

    if (v31 > 2)
    {
      if (v31 == 3)
      {
        v32 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v32 = *a1;
      }
    }

    else if (v31 == 1)
    {
      v32 = *a1;
    }

    else
    {
      v32 = *a1;
    }
  }

  else
  {
    v32 = 0;
  }

  return v22 + (v32 | v30) + 1;
}

void sub_25F40AC40(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150) - 8);
  v13 = *(v12 + 80);
  v14 = (v10 + v11 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v14 + v15;
  v17 = ((*(*(sub_25F4A25E0() - 8) + 64) + v13) & ~v13) + v15;
  if (!*(v12 + 84))
  {
    ++v17;
  }

  if (v17 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  if (v18 <= 3)
  {
    v19 = 253 - (2u >> (8 * v18));
  }

  else
  {
    v19 = 253;
  }

  v20 = *(swift_getAssociatedTypeWitness() - 8);
  v21 = *(v20 + 84);
  v22 = *(v20 + 80);
  if (v21 <= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = *(v20 + 84);
  }

  v24 = v18 + 1;
  v25 = v18 + 1 + v22;
  v26 = (v25 & ~v22) + *(v20 + 64);
  v27 = a3 - v23;
  if (a3 <= v23)
  {
    v28 = 0;
  }

  else
  {
    v28 = 1;
    if (v26 <= 3)
    {
      v29 = ((v27 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
      v30 = HIWORD(v29);
      if (v29 < 0x100)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if (v29 >= 2)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      if (v30)
      {
        v28 = 4;
      }

      else
      {
        v28 = v32;
      }
    }
  }

  if (v23 < a2)
  {
    v33 = ~v23 + a2;
    if (v26 < 4)
    {
      v34 = (v33 >> (8 * v26)) + 1;
      if (v26)
      {
        v35 = v33 & ~(-1 << (8 * v26));
        bzero(a1, v26);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v35;
            if (v28 > 1)
            {
LABEL_55:
              if (v28 == 2)
              {
                *&a1[v26] = v34;
              }

              else
              {
                *&a1[v26] = v34;
              }

              return;
            }
          }

          else
          {
            *a1 = v33;
            if (v28 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v35;
        a1[2] = BYTE2(v35);
      }

      if (v28 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v26);
      *a1 = v33;
      v34 = 1;
      if (v28 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v28)
    {
      a1[v26] = v34;
    }

    return;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v26] = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v28)
  {
    goto LABEL_39;
  }

  a1[v26] = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v19 >= v21)
  {
    if (v19 >= a2)
    {
      a1[v18] = -a2;
    }

    else
    {
      v37 = ~v19 + a2;
      if (v24 < 4)
      {
        if (v18 != -1)
        {
          v38 = v37 & ~(-1 << (8 * v24));
          bzero(a1, v18 + 1);
          if (v18 == 2)
          {
            *a1 = v38;
            a1[2] = BYTE2(v38);
          }

          else if (v18 == 1)
          {
            *a1 = v38;
          }

          else
          {
            *a1 = v37;
          }
        }
      }

      else
      {
        bzero(a1, v18 + 1);
        *a1 = v37;
      }
    }
  }

  else
  {
    v36 = *(v20 + 56);

    v36(&a1[v25] & ~v22, a2);
  }
}

void sub_25F40B118(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for TransportReply();
  swift_getTupleTypeMetadata3();
  if (v3 <= 0x3F)
  {
    sub_25F40B858();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_25F40B244(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150) - 8);
  v12 = *(v11 + 80);
  v13 = (v9 + v10 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v13 + v14;
  v16 = ((*(*(sub_25F4A25E0() - 8) + 64) + v12) & ~v12) + v14;
  if (!*(v11 + 84))
  {
    ++v16;
  }

  if (v16 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = 253 - (2u >> (8 * v17));
  if (v17 > 3)
  {
    v18 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v18 >= a2)
  {
    goto LABEL_30;
  }

  v19 = v17 + 1;
  v20 = 8 * (v17 + 1);
  if ((v17 + 1) <= 3)
  {
    v23 = ((~(-1 << v20) + a2 - v18) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v23 < 2)
    {
LABEL_30:
      v25 = *(a1 + v17);
      if (v18 <= (v25 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v25);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_30;
  }

LABEL_19:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 > 3)
    {
      LODWORD(v19) = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        LODWORD(v19) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v19) = *a1;
      }
    }

    else if (v19 == 1)
    {
      LODWORD(v19) = *a1;
    }

    else
    {
      LODWORD(v19) = *a1;
    }
  }

  return v18 + (v19 | v24) + 1;
}

void sub_25F40B514(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150) - 8);
  v14 = *(v13 + 80);
  v15 = (v11 + v12 + v14) & ~v14;
  v16 = *(v13 + 64);
  v17 = v15 + v16;
  v18 = ((*(*(sub_25F4A25E0() - 8) + 64) + v14) & ~v14) + v16;
  if (!*(v13 + 84))
  {
    ++v18;
  }

  if (v18 <= v17)
  {
    v18 = v17;
  }

  v19 = 253 - (2u >> (8 * v18));
  if (v18 > 3)
  {
    v19 = 253;
  }

  v20 = v18 + 1;
  if (v19 >= a3)
  {
    v21 = 0;
    if (v19 < a2)
    {
      goto LABEL_19;
    }

LABEL_23:
    if (v21 > 1)
    {
      if (v21 != 2)
      {
        *&a1[v20] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        a1[v18] = -a2;
        return;
      }

      *&a1[v20] = 0;
    }

    else if (v21)
    {
      a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  v21 = 1;
  if (v20 <= 3)
  {
    v22 = ((~(-1 << (8 * v20)) + a3 - v19) >> (8 * v20)) + 1;
    v23 = HIWORD(v22);
    if (v22 < 0x100)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    if (v22 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v23)
    {
      v21 = 4;
    }

    else
    {
      v21 = v25;
    }
  }

  if (v19 >= a2)
  {
    goto LABEL_23;
  }

LABEL_19:
  v26 = ~v19 + a2;
  if (v20 >= 4)
  {
    bzero(a1, v20);
    *a1 = v26;
    v27 = 1;
    if (v21 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v27 = (v26 >> (8 * v20)) + 1;
  if (v18 == -1)
  {
LABEL_39:
    if (v21 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v28 = v26 & ~(-1 << (8 * v20));
  bzero(a1, v20);
  if (v20 == 3)
  {
    *a1 = v28;
    a1[2] = BYTE2(v28);
    goto LABEL_39;
  }

  if (v20 == 2)
  {
    *a1 = v28;
    if (v21 > 1)
    {
LABEL_43:
      if (v21 == 2)
      {
        *&a1[v20] = v27;
      }

      else
      {
        *&a1[v20] = v27;
      }

      return;
    }
  }

  else
  {
    *a1 = v26;
    if (v21 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v21)
  {
    a1[v20] = v27;
  }
}

void sub_25F40B858()
{
  if (!qword_27FD6DEA8)
  {
    sub_25F4A25E0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6DEB0, &qword_25F4AB200);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FD6DEA8);
    }
  }
}

uint64_t sub_25F40B8D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F4A25E0();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v29 - v14;
  v16 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v2, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v22 = v30;
    if (EnumCaseMultiPayload)
    {
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC0, qword_25F4A71E0) + 48);
      (*(v22 + 32))(v7, v18, v4);
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_25F4A30F0();

      v31 = 0xD000000000000010;
      v32 = 0x800000025F4B72D0;
      sub_25F40CA7C();
      v27 = sub_25F4A3210();
      MEMORY[0x25F8DD480](v27);

      v21 = v31;
      (*(v22 + 8))(v7, v4);
      sub_25F3F21F4(&v18[v26], &qword_27FD6DEB0, &qword_25F4AB200);
    }

    else
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v23 = swift_getAssociatedTypeWitness();
      type metadata accessor for TransportReply();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v25 = *(TupleTypeMetadata3 + 64);
      (*(v11 + 32))(v15, &v18[*(TupleTypeMetadata3 + 48)], AssociatedTypeWitness);
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_25F4A30F0();
      MEMORY[0x25F8DD480](0xD000000000000019, 0x800000025F4B72F0);
      sub_25F4A3240();
      MEMORY[0x25F8DD480](41, 0xE100000000000000);
      v21 = v31;
      (*(v11 + 8))(v15, AssociatedTypeWitness);
      sub_25F40C9BC(&v18[v25]);
      (*(*(v23 - 8) + 8))(v18, v23);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    return 0x6F206D6165727473;
  }

  else
  {
    return 0xD000000000000012;
  }

  return v21;
}

uint64_t sub_25F40BD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PipeEvent.Content();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for PipeEvent() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 32);

  return v9(a3 + v7, a2, AssociatedTypeWitness);
}

uint64_t sub_25F40BE64(void *a1, uint64_t a2)
{
  v3 = v2;
  v98 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v84 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = &v75 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v10 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v87 = (&v75 - v11);
  v12 = sub_25F4A2A70();
  v88 = *(v12 - 8);
  v89 = v12;
  v13 = *(v88 + 64);
  MEMORY[0x28223BE20](v12);
  v86 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for TransportReply();
  v81 = *(v90 - 8);
  v15 = *(v81 + 64);
  v16 = MEMORY[0x28223BE20](v90);
  v82 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a2;
  v18 = *(a2 - 8);
  a2 -= 8;
  v95 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25F4A2AE0();
  v93 = *(v22 - 8);
  v94 = v22;
  v23 = *(v93 + 64);
  MEMORY[0x28223BE20](v22);
  v96 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a2 + 24);
  v79 = *(a2 + 32);
  v80 = v25;
  v26 = type metadata accessor for PipeEvent.Content();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v75 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v75 - v35;
  v37 = v3;
  v92 = v27[2];
  v92(&v75 - v35, v3, v26);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  v38 = v27[1];
  result = v38(v36, v26);
  if (v3 != 4)
  {
    v91 = v31;
    _s19PreviewsMessagingOS14TransportReplyV13loggingResult6logger5level3forAC2os6LoggerV_So0K11_log_type_taSStFfA__0();
    v40 = v37;
    (*(v95 + 16))(v21, v37, v97);
    v41 = v98;
    v42 = v98;
    v43 = sub_25F4A2AD0();
    v44 = sub_25F4A3010();

    v45 = v40;
    if (os_log_type_enabled(v43, v44))
    {
      v46 = swift_slowAlloc();
      v78 = v40;
      v47 = v46;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v99 = v77;
      *v47 = 136446466;
      v48 = v92;
      v92(v34, v21, v26);
      (*(v95 + 8))(v21, v97);
      LODWORD(v97) = v44;
      v49 = sub_25F40B8D8(v26);
      v51 = v50;
      v38(v34, v26);
      v52 = sub_25F41272C(v49, v51, &v99);

      *(v47 + 4) = v52;
      *(v47 + 12) = 2114;
      v53 = v98;
      v54 = v98;
      v55 = v53;
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 14) = v56;
      v57 = v76;
      *v76 = v56;
      _os_log_impl(&dword_25F3DE000, v43, v97, "Failed to deliver pipe event: %{public}s\nError: %{public}@", v47, 0x16u);
      sub_25F3F21F4(v57, &qword_27FD6DEC8, &qword_25F4AB2B0);
      MEMORY[0x25F8DE250](v57, -1, -1);
      v58 = v77;
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x25F8DE250](v58, -1, -1);
      v59 = v47;
      v45 = v78;
      MEMORY[0x25F8DE250](v59, -1, -1);

      (*(v93 + 8))(v96, v94);
    }

    else
    {
      v55 = v98;
      (*(v95 + 8))(v21, v97);

      (*(v93 + 8))(v96, v94);
      v48 = v92;
    }

    v48(v91, v45, v26);
    result = swift_getEnumCaseMultiPayload();
    if ((result - 2) >= 3)
    {
      if (result)
      {
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEC0, qword_25F4A71E0);
        v64 = v91;
        v70 = v83;
        sub_25F40C8DC(&v91[*(v69 + 48)], v83);
        v71 = v84;
        sub_25F40C94C(v70, v84);
        if ((*(v81 + 48))(v71, 1, v90) == 1)
        {
          sub_25F3F21F4(v70, &qword_27FD6DEB0, &qword_25F4AB200);
          sub_25F3F21F4(v71, &qword_27FD6DEB0, &qword_25F4AB200);
        }

        else
        {
          v72 = v86;
          sub_25F4A2A80();
          v73 = v87;
          *v87 = v55;
          swift_storeEnumTagMultiPayload();
          v74 = v55;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
          sub_25F4A2410();
          sub_25F3F21F4(v73, &qword_27FD6DEB8, &unk_25F4A8D20);
          (*(v88 + 8))(v72, v89);
          sub_25F3F21F4(v70, &qword_27FD6DEB0, &qword_25F4AB200);
          sub_25F40C9BC(v71);
        }

        AssociatedTypeWitness = sub_25F4A25E0();
      }

      else
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v61 = swift_getAssociatedTypeWitness();
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v63 = *(TupleTypeMetadata3 + 48);
        v64 = v91;
        v65 = v82;
        sub_25F40CA18(&v91[*(TupleTypeMetadata3 + 64)], v82);
        v66 = v86;
        sub_25F4A2A80();
        v67 = v87;
        *v87 = v55;
        swift_storeEnumTagMultiPayload();
        v68 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
        sub_25F4A2410();
        sub_25F3F21F4(v67, &qword_27FD6DEB8, &unk_25F4A8D20);
        (*(v88 + 8))(v66, v89);
        sub_25F40C9BC(v65);
        (*(*(v61 - 8) + 8))(&v64[v63], v61);
      }

      return (*(*(AssociatedTypeWitness - 8) + 8))(v64, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t sub_25F40C8DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F40C94C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F40C9BC(uint64_t a1)
{
  v2 = type metadata accessor for TransportReply();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F40CA18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransportReply();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F40CA7C()
{
  result = qword_27FD6DED0;
  if (!qword_27FD6DED0)
  {
    sub_25F4A25E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DED0);
  }

  return result;
}

uint64_t static EndpointProtocol<>.decode(context:)(uint64_t a1)
{
  v2 = sub_25F4A25E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  (*(v3 + 16))(v6, a1, v2);
  return sub_25F4A2950();
}

uint64_t static EndpointProtocol<>.decode(context:)(uint64_t a1, uint64_t a2)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  *&v5 = a2;
  sub_25F40CCD4();
  swift_allocError();
  sub_25F4031EC(&v5, v3);
  return swift_willThrow();
}

unint64_t sub_25F40CCD4()
{
  result = qword_27FD6DED8;
  if (!qword_27FD6DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DED8);
  }

  return result;
}

uint64_t sub_25F40CD94()
{
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0x746E696F70646E45, 0xE900000000000020);
  sub_25F4A3140();
  MEMORY[0x25F8DD480](0xD000000000000016, 0x800000025F4B7310);
  return 0;
}

uint64_t sub_25F40CE68(uint64_t a1)
{
  v2 = sub_25F40CFD8();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F40CEB0(uint64_t a1)
{
  v2 = sub_25F40CFD8();

  return MEMORY[0x2821A07F0](a1, v2);
}

unint64_t sub_25F40CEF4()
{
  result = qword_27FD6DEE0;
  if (!qword_27FD6DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DEE0);
  }

  return result;
}

unint64_t sub_25F40CF4C()
{
  result = qword_27FD6DEE8;
  if (!qword_27FD6DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DEE8);
  }

  return result;
}

unint64_t sub_25F40CFD8()
{
  result = qword_27FD6DEF0;
  if (!qword_27FD6DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DEF0);
  }

  return result;
}

uint64_t sub_25F40D02C(uint64_t a1)
{
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0xD000000000000016, 0x800000025F4B7350);
  v2 = *(a1 + 16);
  sub_25F4A3240();
  MEMORY[0x25F8DD480](0xD000000000000010, 0x800000025F4B7370);
  return 0;
}

uint64_t sub_25F40D0DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F40D130(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

uint64_t sub_25F40D1B0()
{
  type metadata accessor for HostAgentSystem.AgentEndpoint.StreamContext(0);
  sub_25F40D52C();
  return sub_25F4A2940();
}

uint64_t sub_25F40D1FC(uint64_t a1)
{
  v2 = sub_25F4A25E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HostAgentSystem.AgentEndpoint.StreamContext(0);
  (*(v3 + 16))(v6, a1, v2);
  sub_25F40D52C();
  return sub_25F4A2950();
}

uint64_t sub_25F40D328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  *&v8 = v5;
  sub_25F40CCD4();
  swift_allocError();
  sub_25F4031EC(&v8, v6);
  return swift_willThrow();
}

uint64_t sub_25F40D394(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = a1[4];
  sub_25F40D4D8();
  return sub_25F4A2940();
}

uint64_t sub_25F40D3F0(uint64_t a1)
{
  v2 = sub_25F4A25E0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_25F40D4D8();
  return sub_25F4A2950();
}

unint64_t sub_25F40D4D8()
{
  result = qword_27FD6DEF8;
  if (!qword_27FD6DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DEF8);
  }

  return result;
}

unint64_t sub_25F40D52C()
{
  result = qword_27FD6DF08;
  if (!qword_27FD6DF08)
  {
    type metadata accessor for HostAgentSystem.AgentEndpoint.StreamContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DF08);
  }

  return result;
}

uint64_t sub_25F40D58C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F40D5FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_25F40D73C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t Transport.activate<A>(forReceivingMessages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TransportEvent();
  v9 = sub_25F4A2F50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17 - v13;
  Transport.activate<A>(forReceivingEvents:)(v12, a2, a3, a4, a5);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  type metadata accessor for TransportMessage();
  sub_25F4A2F20();

  return (*(v10 + 8))(v14, v9);
}

uint64_t Transport.transportSender<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a5;
  v6[5] = v5;
  v6[2] = a1;
  v6[3] = a3;
  return MEMORY[0x2822009F8](sub_25F40DB5C, 0, 0);
}

uint64_t sub_25F40DB5C()
{
  v1 = v0[5];
  v12 = v0[4];
  v2 = v0[3];
  v3 = *(v12 + 16);
  sub_25F4A3250();
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v4 = *(v12 + 32);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_25F40DC90;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return v11(v9, v7);
}

uint64_t sub_25F40DC90(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v9 = sub_25F40DE6C;
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v9 = sub_25F40DDC4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25F40DDC4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v9 = *(v0 + 80);
  v5 = (*(*(v0 + 32) + 40))(*(v0 + 24));
  v4->i64[0] = v2;
  v4->i64[1] = v1;
  v4[1] = vextq_s8(v9, v9, 8uLL);
  v4[2].i64[0] = v5;
  v4[2].i64[1] = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25F40DE6C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t TransportSenderProtocol<>.send(oneWay:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v69 = a1;
  v70 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v61[-v10];
  v11 = type metadata accessor for LazyPropertyList();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v76 = &v61[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v67 = &v61[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v61[-v20];
  v22 = *(a2 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v61[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_25F4A2AE0();
  v72 = *(v26 - 8);
  v27 = *(v72 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v61[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F4A2AC0();
  v30 = *(v22 + 16);
  v74 = v5;
  v77 = a2;
  v30(v25, v5, a2);
  v31 = *(v15 + 16);
  v68 = v21;
  v32 = v21;
  v33 = v69;
  v66 = v31;
  v31(v32);
  v71 = v29;
  v34 = sub_25F4A2AD0();
  v35 = sub_25F4A3000();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v75 = a3;
    v37 = v36;
    v64 = swift_slowAlloc();
    v78 = v64;
    *v37 = 136446466;
    v38 = *(v75 + 24);
    v63 = v34;
    v65 = v26;
    v39 = AssociatedTypeWitness;
    v40 = v33;
    v41 = v77;
    v42 = v38(v77, v75);
    v62 = v35;
    v44 = v43;
    v45 = v41;
    v33 = v40;
    AssociatedTypeWitness = v39;
    (*(v22 + 8))(v25, v45);
    v46 = sub_25F41272C(v42, v44, &v78);

    *(v37 + 4) = v46;
    *(v37 + 12) = 2082;
    v47 = v68;
    v66(v67, v68, AssociatedTypeWitness);
    v48 = sub_25F4A2C30();
    v50 = v49;
    (*(v15 + 8))(v47, AssociatedTypeWitness);
    v51 = sub_25F41272C(v48, v50, &v78);

    *(v37 + 14) = v51;
    v52 = v63;
    _os_log_impl(&dword_25F3DE000, v63, v62, "%{public}s sending one-way message: %{public}s", v37, 0x16u);
    v53 = v64;
    swift_arrayDestroy();
    MEMORY[0x25F8DE250](v53, -1, -1);
    v54 = v37;
    a3 = v75;
    MEMORY[0x25F8DE250](v54, -1, -1);

    (*(v72 + 8))(v71, v65);
  }

  else
  {

    (*(v15 + 8))(v68, AssociatedTypeWitness);
    (*(v22 + 8))(v25, v77);
    (*(v72 + 8))(v71, v26);
  }

  v55 = v77;
  v56 = (*(a3 + 32))(v77, a3);
  v57 = v76;
  (*(a3 + 40))(v33, AssociatedTypeWitness, v70, v55, a3);
  v58 = type metadata accessor for TransportReply();
  v59 = v73;
  (*(*(v58 - 8) + 56))(v73, 1, 1, v58);
  v56(v57, v59);

  sub_25F3F21F4(v59, &qword_27FD6DEB0, &qword_25F4AB200);
  return sub_25F412CE4(v57, type metadata accessor for LazyPropertyList);
}

uint64_t TransportSenderProtocol<>.send(message:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v4 = type metadata accessor for TransportReply();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F4A2A70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DF98, &unk_25F4A7580);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v28 - v19);
  v21 = *(v14 + 56);
  sub_25F4A2A80();
  v22 = sub_25F4A2F70();
  (*(v9 + 8))(v12, v8);
  *v20 = v22;
  sub_25F4A2A80();
  sub_25F404B8C(v20, v18, &qword_27FD6DF98, &unk_25F4A7580);
  v23 = *v18;

  TransportReply.init(callsite:fulfilling:)(v12, &v18[*(v14 + 56)], v7);
  TransportSenderProtocol<>.send(message:reply:)(v29, v7, v30, v31, v32);
  sub_25F412CE4(v7, type metadata accessor for TransportReply);
  sub_25F412D44(v20, v18);
  v24 = *v18;
  v25 = *(v14 + 56);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DFA0, &qword_25F4A8D30);
  (*(*(v26 - 8) + 8))(&v18[v25], v26);
  return v24;
}

uint64_t TransportSenderProtocol<>.send<A>(message:expecting:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a7;
  v33 = a6;
  v34 = a1;
  v35 = a3;
  v36 = a5;
  v8 = type metadata accessor for TransportReply();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_25F4A2A70();
  v12 = *(v32 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v32);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2FB0();
  v16 = sub_25F4A2F80();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v31 - v24);
  v26 = *(v23 + 48);
  sub_25F4A2A80();
  v27 = sub_25F4A2F70();
  (*(v12 + 8))(v15, v32);
  *v25 = v27;
  sub_25F4A2A80();
  (*(v18 + 16))(v22, v25, TupleTypeMetadata2);
  v28 = *v22;

  TransportReply.init<A>(callsite:fulfilling:)(v15, &v22[*(TupleTypeMetadata2 + 48)], a4, v33, v11);
  TransportSenderProtocol<>.send(message:reply:)(v34, v11, v35, v36, v37);
  sub_25F412CE4(v11, type metadata accessor for TransportReply);
  (*(v18 + 32))(v22, v25, TupleTypeMetadata2);
  v29 = *v22;
  (*(*(v16 - 8) + 8))(&v22[*(TupleTypeMetadata2 + 48)], v16);
  return v29;
}

uint64_t TransportMessage<>.reply.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for TransportReply();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_25F40CA18(&v6[*(TupleTypeMetadata2 + 48)], a2);
    return (*(*(AssociatedTypeWitness - 8) + 8))(v6, AssociatedTypeWitness);
  }

  else
  {
    result = sub_25F4A3260();
    __break(1u);
  }

  return result;
}

uint64_t TransportMessage<>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for TransportReply();
    v11 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(AssociatedTypeWitness - 8) + 32))(a2, v6, AssociatedTypeWitness);
    return sub_25F412CE4(&v6[v11], type metadata accessor for TransportReply);
  }

  else
  {
    result = sub_25F4A3260();
    __break(1u);
  }

  return result;
}

{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_25F4A3260();
    __break(1u);
  }

  else
  {
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 32))(a2, v6, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_25F40EF30@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t TransportSender.transportDescription.getter()
{
  v0 = sub_25F412E28();

  return v0;
}

uint64_t TransportSender.messageRelay.getter()
{
  v0 = sub_25F412E30();

  return v0;
}

uint64_t TransportSender.legacyMessageKey.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TransportSender.encode<A>(message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_25F4A25E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + 40))
  {
    v17 = *(v5 + 32);
    MEMORY[0x28223BE20](v14);
    v18 = *(a2 + 24);
    *(&v22 - 8) = *(a2 + 16);
    *(&v22 - 7) = a3;
    *(&v22 - 6) = v18;
    *(&v22 - 5) = a4;
    *(&v22 - 4) = v20;
    *(&v22 - 3) = v19;
    *(&v22 - 2) = a1;
    sub_25F4A25C0();
  }

  else
  {
    sub_25F4A2940();
  }

  (*(v12 + 32))(a5, v16, v11);
  type metadata accessor for LazyPropertyList();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F40F174()
{
  v0 = sub_25F412E28();

  return v0;
}

uint64_t sub_25F40F1AC()
{
  v0 = sub_25F412E30();

  return v0;
}

uint64_t TransportSenderProtocol.encode<A>(message:)()
{
  sub_25F4A2940();
  type metadata accessor for LazyPropertyList();

  return swift_storeEnumTagMultiPayload();
}

uint64_t TransportSenderProtocol<>.send(message:reply:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v69 = a5;
  v72 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v59[-v12];
  v14 = type metadata accessor for LazyPropertyList();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v73 = &v59[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getAssociatedTypeWitness();
  v74 = a4;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v65 = &v59[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v59[-v23];
  v25 = *(a3 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  v28 = &v59[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_25F4A2AE0();
  v67 = *(v29 - 8);
  v68 = v29;
  v30 = *(v67 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v59[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F4A2AC0();
  v33 = *(v25 + 16);
  v71 = v6;
  v75 = a3;
  v34 = a3;
  v35 = AssociatedTypeWitness;
  v33(v28, v6, v34);
  v36 = *(v18 + 16);
  v70 = a1;
  v64 = v36;
  v36(v24, a1, AssociatedTypeWitness);
  v66 = v32;
  v37 = sub_25F4A2AD0();
  v38 = sub_25F4A3000();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v61 = v37;
    v40 = v39;
    v62 = swift_slowAlloc();
    v76 = v62;
    *v40 = 136446466;
    v41 = v75;
    v42 = *(v74 + 24);
    v60 = v38;
    v43 = v42(v75);
    v63 = v13;
    v45 = v44;
    (*(v25 + 8))(v28, v41);
    v46 = sub_25F41272C(v43, v45, &v76);
    v13 = v63;

    *(v40 + 4) = v46;
    *(v40 + 12) = 2082;
    v64(v65, v24, v35);
    v47 = sub_25F4A2C30();
    v49 = v48;
    (*(v18 + 8))(v24, v35);
    v50 = sub_25F41272C(v47, v49, &v76);

    *(v40 + 14) = v50;
    v51 = v61;
    _os_log_impl(&dword_25F3DE000, v61, v60, "%{public}s sending two-way message: %{public}s", v40, 0x16u);
    v52 = v62;
    swift_arrayDestroy();
    MEMORY[0x25F8DE250](v52, -1, -1);
    MEMORY[0x25F8DE250](v40, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v24, v35);
    (*(v25 + 8))(v28, v75);
  }

  (*(v67 + 8))(v66, v68);
  v53 = v74;
  v54 = v75;
  v55 = (*(v74 + 32))(v75, v74);
  v56 = v73;
  (*(v53 + 40))(v70, v35, v69, v54, v53);
  sub_25F412F00(v72, v13);
  v57 = type metadata accessor for TransportReply();
  (*(*(v57 - 8) + 56))(v13, 0, 1, v57);
  v55(v56, v13);

  sub_25F3F21F4(v13, &qword_27FD6DEB0, &qword_25F4AB200);
  return sub_25F412CE4(v56, type metadata accessor for LazyPropertyList);
}

uint64_t Transport.activate<A>(forReceivingEvents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TransportEvent();
  v10 = sub_25F4A2ED0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17[-v12];
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = v5;
  swift_checkMetadataState();
  v14 = *MEMORY[0x277D85778];
  v15 = sub_25F4A2ED0();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_25F4A2F60();
}

uint64_t sub_25F40F9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TransportEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  (*(v8 + 16))(&v13 - v6, a1);
  v9 = type metadata accessor for TransportMessage();
  v10 = *(v9 - 8);
  v11 = 1;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    (*(v10 + 32))(a2, v7, v9);
    v11 = 0;
  }

  return (*(v10 + 56))(a2, v11, 1, v9);
}

uint64_t sub_25F40FB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_25F40F9A8(a1, a2);
}

uint64_t sub_25F40FB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v78 = a4;
  v79 = a6;
  v68 = a1;
  type metadata accessor for TransportEvent();
  v10 = sub_25F4A2F00();
  v11 = *(v10 - 8);
  v77 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - v12;
  v80 = 0;
  v81 = 0xE000000000000000;
  v14 = *(a5 + 16);
  v72 = a2;
  sub_25F4A3250();
  v64 = v80;
  v73 = v81;
  v82 = a3;
  v83 = a5;
  v15 = __swift_allocate_boxed_opaque_existential_1(&v80);
  v16 = *(a3 - 8);
  v61 = *(v16 + 16);
  v62 = (v16 + 16);
  v61(v15, a2, a3);
  v17 = *(v11 + 16);
  v69 = v11 + 16;
  v76 = v17;
  v17(v13, a1, v10);
  v67 = *(v11 + 80);
  v18 = (v67 + 48) & ~v67;
  v19 = swift_allocObject();
  v20 = v78;
  v21 = v79;
  *(v19 + 2) = a3;
  *(v19 + 3) = v20;
  *(v19 + 4) = a5;
  *(v19 + 5) = v21;
  v74 = *(v11 + 32);
  v75 = v11 + 32;
  v74(&v19[v18], v13, v10);
  v70 = static TransportInterface.makeOneWayMessageRelay(for:using:)(&v80, sub_25F414894, v19, v20, v21);
  v63 = v22;

  __swift_destroy_boxed_opaque_existential_1(&v80);
  v82 = a3;
  v83 = a5;
  v23 = a5;
  v60 = a5;
  v24 = __swift_allocate_boxed_opaque_existential_1(&v80);
  v25 = a3;
  v71 = a3;
  v61(v24, v72, a3);
  v26 = v13;
  v65 = v13;
  v66 = v10;
  v27 = v13;
  v28 = v68;
  v76(v27, v68, v10);
  v29 = swift_allocObject();
  *(v29 + 2) = v25;
  v31 = v78;
  v30 = v79;
  *(v29 + 3) = v78;
  *(v29 + 4) = v23;
  *(v29 + 5) = v30;
  v74(&v29[v18], v26, v10);
  v32 = static TransportInterface.makeTwoWayMessageRelay(for:using:)(&v80, sub_25F414030, v29, v31, v30);
  v62 = v32;
  v34 = v33;

  __swift_destroy_boxed_opaque_existential_1(&v80);
  v35 = swift_allocObject();
  v36 = v73;
  v35[2] = v64;
  v35[3] = v36;
  v37 = v70;
  v38 = v63;
  v35[4] = v70;
  v35[5] = v38;
  v35[6] = v32;
  v35[7] = v34;
  v39 = v65;
  v40 = v28;
  v41 = v66;
  v76(v65, v40, v66);
  v59 = v18;
  v42 = swift_allocObject();
  v43 = v78;
  *(v42 + 2) = v71;
  *(v42 + 3) = v43;
  v44 = v60;
  v45 = v79;
  *(v42 + 4) = v60;
  *(v42 + 5) = v45;
  v74(&v42[v18], v39, v41);
  v46 = v44;
  v47 = *(v44 + 24);

  sub_25F41401C(v37);
  v48 = v62;
  sub_25F41401C(v62);
  v49 = v71;
  v47(sub_25F414148, v35, sub_25F41416C, v42, v71, v46);

  v51 = v65;
  v50 = v66;
  v76(v65, v68, v66);
  v52 = v59;
  v53 = swift_allocObject();
  v55 = v78;
  v54 = v79;
  *(v53 + 2) = v49;
  *(v53 + 3) = v55;
  *(v53 + 4) = v46;
  *(v53 + 5) = v54;
  v74(&v53[v52], v51, v50);
  v56 = *(v46 + 8);
  sub_25F4A2930();

  sub_25F41305C(v70);
  sub_25F41305C(v48);
}

uint64_t (*static TransportInterface.makeOneWayMessageRelay(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (swift_getAssociatedTypeWitness() == MEMORY[0x277D84A98])
  {
    return 0;
  }

  sub_25F412F74(a1, v13);
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = v5;
  sub_25F412FDC(v13, (v11 + 7));

  return sub_25F412FF4;
}

uint64_t sub_25F410168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a2;
  v9 = type metadata accessor for TransportMessage();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v31 = a4;
  v32 = &v29 - v12;
  v33 = a6;
  v13 = type metadata accessor for TransportEvent();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v17 = sub_25F4A2EC0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v29 - v20;
  v22 = *(v10 + 16);
  v30 = a1;
  v23 = a1;
  v24 = v22;
  v22(v16, v23, v9);
  (*(v10 + 56))(v16, 0, 1, v9);
  sub_25F4A2F00();
  sub_25F4A2EE0();
  LODWORD(v16) = (*(v18 + 88))(v21, v17);
  v25 = *MEMORY[0x277D85748];
  result = (*(v18 + 8))(v21, v17);
  if (v16 == v25)
  {
    v27 = v32;
    v24(v32, v30, v9);
    type metadata accessor for TransportInvalidated();
    swift_getWitnessTable();
    swift_allocError();
    (*(v10 + 32))(v28, v27, v9);
    return swift_willThrow();
  }

  return result;
}

uint64_t (*static TransportInterface.makeTwoWayMessageRelay(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, uint64_t a2)
{
  if (swift_getAssociatedTypeWitness() == MEMORY[0x277D84A98])
  {
    return 0;
  }

  sub_25F412F74(a1, v13);
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = v5;
  sub_25F412FDC(v13, (v11 + 7));

  return sub_25F413048;
}

uint64_t sub_25F410554(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for TransportReply();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F404B8C(a2, v11, &qword_27FD6DEB0, &qword_25F4AB200);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25F3F21F4(v11, &qword_27FD6DEB0, &qword_25F4AB200);
    v17 = v2[2];
    if (v17)
    {
      v18 = v2[3];

      v17(a1);
      return sub_25F41305C(v17);
    }

    else
    {
      (*(v13 + 56))(v9, 1, 1, v12);
      sub_25F4139AC(0xD000000000000010, 0x800000025F4B7450, v9, *v2, v2[1]);
      return sub_25F3F21F4(v9, &qword_27FD6DEB0, &qword_25F4AB200);
    }
  }

  else
  {
    sub_25F40CA18(v11, v16);
    v20 = v2[4];
    if (v20)
    {
      v21 = v2[5];

      v20(a1, v16);
      sub_25F41305C(v20);
    }

    else
    {
      sub_25F412F00(v16, v9);
      (*(v13 + 56))(v9, 0, 1, v12);
      sub_25F4139AC(0xD000000000000010, 0x800000025F4B7470, v9, *v2, v2[1]);
      sub_25F3F21F4(v9, &qword_27FD6DEB0, &qword_25F4AB200);
    }

    return sub_25F412CE4(v16, type metadata accessor for TransportReply);
  }
}

uint64_t TransportReceiverProtocol.handleMessage@Sendable (_:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for TransportReply();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F404B8C(a2, v12, &qword_27FD6DEB0, &qword_25F4AB200);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_25F3F21F4(v12, &qword_27FD6DEB0, &qword_25F4AB200);
    v18 = v26;
    v19 = (*(a4 + 16))(v26, a4);
    if (v19)
    {
      v20 = v19;
      v19(v25);
      return sub_25F41305C(v20);
    }

    else
    {
      (*(v14 + 56))(v10, 1, 1, v13);
      TransportReceiverProtocol.informNotHandled(_:reply:)(0xD000000000000010, 0x800000025F4B7450, v10, v18, a4);
      return sub_25F3F21F4(v10, &qword_27FD6DEB0, &qword_25F4AB200);
    }
  }

  else
  {
    sub_25F40CA18(v12, v17);
    v22 = v26;
    v23 = (*(a4 + 24))(v26, a4);
    if (v23)
    {
      v24 = v23;
      v23(v25, v17);
      sub_25F41305C(v24);
    }

    else
    {
      sub_25F412F00(v17, v10);
      (*(v14 + 56))(v10, 0, 1, v13);
      TransportReceiverProtocol.informNotHandled(_:reply:)(0xD000000000000010, 0x800000025F4B7470, v10, v22, a4);
      sub_25F3F21F4(v10, &qword_27FD6DEB0, &qword_25F4AB200);
    }

    return sub_25F412CE4(v17, type metadata accessor for TransportReply);
  }
}

uint64_t sub_25F410B5C()
{
  v0 = type metadata accessor for TransportEvent();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  v4 = sub_25F4A2EC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = type metadata accessor for TransportMessage();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  sub_25F4A2F00();
  sub_25F4A2EE0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t Transport.activate(interruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  sub_25F4A3250();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0xE000000000000000;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  v10 = *(a4 + 24);

  v10(sub_25F414890, v9, a1, a2, a3, a4);
}

uint64_t TransportReceiverProtocol.informNotHandled(_:reply:)(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a3;
  v54 = a1;
  v55 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v52 = (&v48 - v8);
  v53 = sub_25F4A2A70();
  v51 = *(v53 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v48 - v13;
  v14 = sub_25F4A2AE0();
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25F4A2610();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v48 - v24;
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_25F4A30F0();
  v26 = (*(a5 + 8))(a4, a5);
  v28 = v27;

  v60 = v26;
  v61 = v28;
  MEMORY[0x25F8DD480](0xD000000000000011, 0x800000025F4B7490);
  MEMORY[0x25F8DD480](v54, v55);
  sub_25F4A2620();
  _s19PreviewsMessagingOS14TransportReplyV13loggingResult6logger5level3forAC2os6LoggerV_So0K11_log_type_taSStFfA__0();
  v29 = v19[2];
  v55 = v25;
  v29(v23, v25, v18);
  v30 = sub_25F4A2AD0();
  v31 = sub_25F4A3010();
  v32 = os_log_type_enabled(v30, v31);
  v48 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v54 = v19;
    v34 = v33;
    v35 = swift_slowAlloc();
    *v34 = 138543362;
    sub_25F4131BC(&qword_27FD6DFA8);
    swift_allocError();
    v29(v36, v23, v18);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    v38 = v54[1];
    v38(v23, v18);
    *(v34 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_25F3DE000, v30, v31, "%{public}@", v34, 0xCu);
    sub_25F3F21F4(v35, &qword_27FD6DEC8, &qword_25F4AB2B0);
    MEMORY[0x25F8DE250](v35, -1, -1);
    MEMORY[0x25F8DE250](v34, -1, -1);
  }

  else
  {

    v38 = v19[1];
    v38(v23, v18);
  }

  (*(v56 + 8))(v17, v57);
  v39 = v59;
  sub_25F404B8C(v58, v59, &qword_27FD6DEB0, &qword_25F4AB200);
  v40 = type metadata accessor for TransportReply();
  if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
  {
    v38(v55, v18);
    return sub_25F3F21F4(v39, &qword_27FD6DEB0, &qword_25F4AB200);
  }

  else
  {
    sub_25F4131BC(&qword_27FD6DFA8);
    v42 = swift_allocError();
    v43 = v55;
    v48(v44, v55, v18);
    v45 = v49;
    sub_25F4A2A80();
    v46 = v52;
    *v52 = v42;
    swift_storeEnumTagMultiPayload();
    v47 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
    sub_25F4A2410();
    sub_25F3F21F4(v46, &qword_27FD6DEB8, &unk_25F4A8D20);
    (*(v51 + 8))(v45, v53);
    v38(v43, v18);

    return sub_25F412CE4(v39, type metadata accessor for TransportReply);
  }
}

uint64_t sub_25F411484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = MEMORY[0x277D837D0];
  v6[4] = MEMORY[0x277D405A0];
  v6[0] = a1;
  v6[1] = a2;
  sub_25F4A2530();
  v4 = sub_25F4A25E0();
  (*(*(v4 - 8) + 8))(a3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t static TransportInterface.unarchive<A>(_:for:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v32[1] = a5;
  v37 = sub_25F4A25E0();
  v33 = *(v37 - 8);
  v10 = *(v33 + 64);
  v11 = MEMORY[0x28223BE20](v37);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v32 - v17;
  v19 = swift_conformsToProtocol2();
  if (v19 && a3)
  {
    v32[0] = v19;
    result = LazyPropertyList.propertyList.getter(v18);
    if (!v5)
    {
      v21 = a1[3];
      v22 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v21);
      v23 = (*(v22 + 40))(v21, v22);
      if (v24)
      {
        v25 = v23;
        v26 = v24;
        v27 = v33;
        v28 = v37;
        (*(v33 + 16))(v16, v18, v37);
        MetatypeMetadata = a3;
        v36 = v32[0];
        __swift_allocate_boxed_opaque_existential_1(v34);
        sub_25F411484(v25, v26, v16);
        (*(v27 + 8))(v18, v28);
      }

      else
      {
        v30 = v33;
        v31 = v37;
        (*(v33 + 16))(v13, v18, v37);
        MetatypeMetadata = a3;
        v36 = v32[0];
        __swift_allocate_boxed_opaque_existential_1(v34);
        sub_25F4A2950();
        (*(v30 + 8))(v18, v31);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DFB8, &qword_25F4A75A0);
      return swift_dynamicCast();
    }
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    v34[0] = a3;
    sub_25F413070();
    swift_allocError();
    *v29 = a2;
    *(v29 + 8) = a4;
    sub_25F4031EC(v34, (v29 + 16));
    return swift_willThrow();
  }

  return result;
}

uint64_t static TransportInterface.invalidatedError.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_25F4A2610();
  a1[4] = sub_25F4131BC(qword_27FD6DFC0);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_25F4A2620();
}

uint64_t sub_25F4118D4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v19 = a2;
  v20 = sub_25F4A2AE0();
  v10 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v11 = type metadata accessor for TransportMessage();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  static TransportInterface.unarchive<A>(_:for:)(a5, a6, AssociatedTypeWitness, a7, v15);
  swift_storeEnumTagMultiPayload();
  v19(v15);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_25F411BD0(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v25 = a4;
  v26 = a3;
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v11 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v12 = sub_25F4A2A70();
  v31 = *(v12 - 8);
  v32 = v12;
  v13 = *(v31 + 64);
  MEMORY[0x28223BE20](v12);
  v29 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25F4A2AE0();
  v27 = *(v15 - 8);
  v28 = v15;
  v16 = *(v27 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = type metadata accessor for TransportMessage();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v25 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  static TransportInterface.unarchive<A>(_:for:)(a6, a7, AssociatedTypeWitness, a8, v21);
  type metadata accessor for TransportReply();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_25F412F00(v33, &v21[*(TupleTypeMetadata2 + 48)]);
  swift_storeEnumTagMultiPayload();
  v26(v21);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_25F412060()
{
  sub_25F4A30F0();
  sub_25F4A3140();
  MEMORY[0x25F8DD480](0xD00000000000007DLL, 0x800000025F4B7520);
  return 0;
}

uint64_t sub_25F4120F0()
{
  strcpy(v4, "Interface = ");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  v1 = *v0;
  v2 = sub_25F4A33B0();
  MEMORY[0x25F8DD480](v2);

  return v4[0];
}

uint64_t sub_25F412158(uint64_t a1)
{
  v2 = sub_25F413958();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F412194(uint64_t a1)
{
  v2 = sub_25F413958();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F4121D0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v23 - v7;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = type metadata accessor for TransportMessage();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  (*(v18 + 16))(&v23 - v16, v1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for TransportReply();
    v19 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v5 + 32))(v8, v17, AssociatedTypeWitness);
    v23 = 0;
    v24 = 0xE000000000000000;
    MEMORY[0x25F8DD480](0x7961772D6F777428, 0xEA00000000002029);
    sub_25F4A3240();
    v21 = v23;
    v20 = v24;
    (*(v5 + 8))(v8, AssociatedTypeWitness);
    sub_25F412CE4(&v17[v19], type metadata accessor for TransportReply);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    v23 = 0;
    v24 = 0xE000000000000000;
    MEMORY[0x25F8DD480](0x7961772D656E6F28, 0xEA00000000002029);
    sub_25F4A3240();
    v21 = v23;
    v20 = v24;
    (*(v10 + 8))(v13, v9);
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0xD000000000000050, 0x800000025F4B75D0);
  MEMORY[0x25F8DD480](v21, v20);

  return v23;
}

uint64_t sub_25F412554(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F4125A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

uint64_t sub_25F4125FC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_25F412648(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_25F4126D0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_25F41272C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_25F41272C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25F4127F8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25F4031FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25F4127F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25F412904(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25F4A3130();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25F412904(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F412950(a1, a2);
  sub_25F412A80(&unk_2871749F0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25F412950(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25F412B6C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25F4A3130();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25F4A2C80();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25F412B6C(v10, 0);
        result = sub_25F4A30E0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25F412A80(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25F412BE0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25F412B6C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6E160, &qword_25F4A78E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25F412BE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6E160, &qword_25F4A78E8);
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

_BYTE **sub_25F412CD4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_25F412CE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F412D44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DF98, &unk_25F4A7580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25F412DB4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_25F412E28()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_25F412E30()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_25F412E38(void *a1, uint64_t a2)
{
  v4 = v2[3];
  v5 = v2[7];
  v6 = v2[8];
  *a1 = v2[6];
  a1[1] = v5;
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, v6, v4);
  (*(v7 + 56))(a2, 0, 1, v4);
}

uint64_t sub_25F412F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransportReply();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F412F74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25F412FDC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_25F41305C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25F413070()
{
  result = qword_27FD6DFB0;
  if (!qword_27FD6DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DFB0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x25F8DE250);
  }

  return result;
}

uint64_t sub_25F4131BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25F4A2610();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F413208(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = type metadata accessor for TransportMessage();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t sub_25F413264(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150) - 8);
  v10 = ((v8 + *(v9 + 80)) & ~*(v9 + 80)) + *(v9 + 64);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_26;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if ((v11 + 1) > 3)
  {
    goto LABEL_7;
  }

  v16 = ((a2 + ~(-1 << v13) - 253) >> v13) + 1;
  if (HIWORD(v16))
  {
    v14 = *(a1 + v12);
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_26:
    v18 = *(a1 + v11);
    if (v18 >= 2)
    {
      v19 = (v18 ^ 0xFF) + 1;
    }

    else
    {
      v19 = 0;
    }

    if (v19 >= 2)
    {
      return v19 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v16 > 0xFF)
  {
    v14 = *(a1 + v12);
    if (*(a1 + v12))
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  if (v16 < 2)
  {
    goto LABEL_26;
  }

LABEL_7:
  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_26;
  }

LABEL_15:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return (v12 | v17) + 254;
}

void sub_25F41346C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150) - 8);
  v12 = ((v10 + *(v11 + 80)) & ~*(v11 + 80)) + *(v11 + 64);
  if (v12 <= v9)
  {
    v12 = v9;
  }

  v13 = v12 + 1;
  if (a3 < 0xFE)
  {
    v14 = 0;
  }

  else if (v13 <= 3)
  {
    v17 = ((a3 + ~(-1 << (8 * v13)) - 253) >> (8 * v13)) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (a2 > 0xFD)
  {
    v15 = a2 - 254;
    if (v13 >= 4)
    {
      bzero(a1, v12 + 1);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v16 = (v15 >> (8 * v13)) + 1;
    if (v12 != -1)
    {
      v19 = v15 & ~(-1 << (8 * v13));
      bzero(a1, v13);
      if (v13 != 3)
      {
        if (v13 == 2)
        {
          *a1 = v19;
          if (v14 > 1)
          {
LABEL_39:
            if (v14 == 2)
            {
              *&a1[v13] = v16;
            }

            else
            {
              *&a1[v13] = v16;
            }

            return;
          }
        }

        else
        {
          *a1 = v15;
          if (v14 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v14)
        {
          a1[v13] = v16;
        }

        return;
      }

      *a1 = v19;
      a1[2] = BYTE2(v19);
    }

    if (v14 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v14 <= 1)
  {
    if (v14)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v12] = ~a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v14 == 2)
  {
    *&a1[v13] = 0;
    goto LABEL_24;
  }

  *&a1[v13] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_25F4136E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for TransportReply();
    result = swift_getTupleTypeMetadata2();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F4137C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_25F4138AC()
{
  result = qword_27FD6E148;
  if (!qword_27FD6E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E148);
  }

  return result;
}

unint64_t sub_25F413904()
{
  result = qword_27FD6E150;
  if (!qword_27FD6E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E150);
  }

  return result;
}

unint64_t sub_25F413958()
{
  result = qword_27FD6E158;
  if (!qword_27FD6E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E158);
  }

  return result;
}

uint64_t sub_25F4139AC(char *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v58 = a3;
  v59 = a2;
  v55 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v7 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v9 = (&v48 - v8);
  v52 = sub_25F4A2A70();
  v50 = *(v52 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v48 - v14;
  v16 = sub_25F4A2AE0();
  v56 = *(v16 - 8);
  v57 = v16;
  v17 = *(v56 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25F4A2610();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v48 - v26;
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_25F4A30F0();

  v60 = a4;
  v61 = a5;

  MEMORY[0x25F8DD480](0xD000000000000011, 0x800000025F4B7490);
  v28 = v19;
  MEMORY[0x25F8DD480](v55, v59);
  sub_25F4A2620();
  _s19PreviewsMessagingOS14TransportReplyV13loggingResult6logger5level3forAC2os6LoggerV_So0K11_log_type_taSStFfA__0();
  v29 = v21[2];
  v59 = v27;
  v29(v25, v27, v20);
  v55 = v28;
  v30 = sub_25F4A2AD0();
  v31 = sub_25F4A3010();
  v32 = os_log_type_enabled(v30, v31);
  v49 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v51 = v21;
    v34 = v33;
    v35 = swift_slowAlloc();
    *v34 = 138543362;
    sub_25F4131BC(&qword_27FD6DFA8);
    swift_allocError();
    v48 = v15;
    v29(v36, v25, v20);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    v38 = v51[1];
    v38(v25, v20);
    *(v34 + 4) = v37;
    *v35 = v37;
    v15 = v48;
    _os_log_impl(&dword_25F3DE000, v30, v31, "%{public}@", v34, 0xCu);
    sub_25F3F21F4(v35, &qword_27FD6DEC8, &qword_25F4AB2B0);
    MEMORY[0x25F8DE250](v35, -1, -1);
    MEMORY[0x25F8DE250](v34, -1, -1);
  }

  else
  {

    v38 = v21[1];
    v38(v25, v20);
  }

  v39 = v20;
  (*(v56 + 8))(v55, v57);
  sub_25F404B8C(v58, v15, &qword_27FD6DEB0, &qword_25F4AB200);
  v40 = type metadata accessor for TransportReply();
  if ((*(*(v40 - 8) + 48))(v15, 1, v40) == 1)
  {
    v38(v59, v20);
    return sub_25F3F21F4(v15, &qword_27FD6DEB0, &qword_25F4AB200);
  }

  else
  {
    sub_25F4131BC(&qword_27FD6DFA8);
    v42 = swift_allocError();
    v43 = v59;
    v49(v44, v59, v39);
    v45 = v39;
    v46 = v53;
    sub_25F4A2A80();
    *v9 = v42;
    swift_storeEnumTagMultiPayload();
    v47 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
    sub_25F4A2410();
    sub_25F3F21F4(v9, &qword_27FD6DEB8, &unk_25F4A8D20);
    (*(v50 + 8))(v46, v52);
    v38(v43, v45);

    return sub_25F412CE4(v15, type metadata accessor for TransportReply);
  }
}

uint64_t sub_25F41401C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F414048(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  type metadata accessor for TransportEvent();
  v7 = *(sub_25F4A2F00() - 8);
  return sub_25F410168(a1, v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6);
}

uint64_t objectdestroy_10Tm()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  if (v0[6])
  {
    v3 = v0[7];
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25F41416C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  type metadata accessor for TransportEvent();
  v5 = *(*(sub_25F4A2F00() - 8) + 80);

  return sub_25F410B5C();
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  type metadata accessor for TransportEvent();
  v3 = sub_25F4A2F00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v0 + v6, v3);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_25F4142AC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  type metadata accessor for TransportEvent();
  v3 = *(sub_25F4A2F00() - 8);
  v4 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));
  return sub_25F4A2EF0();
}

uint64_t sub_25F414334(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for TransportMessage();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F4143A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150) - 8);
  v10 = ((v8 + *(v9 + 80)) & ~*(v9 + 80)) + *(v9 + 64);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if ((v11 + 1) <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 254) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v16 < 2)
    {
LABEL_26:
      v18 = *(a1 + v11);
      if (v18 >= 2)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_26;
  }

LABEL_15:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return (v12 | v17) + 255;
}

void sub_25F4145A0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150) - 8);
  v12 = ((v10 + *(v11 + 80)) & ~*(v11 + 80)) + *(v11 + 64);
  if (v12 <= v9)
  {
    v12 = v9;
  }

  v13 = v12 + 1;
  if (a3 < 0xFF)
  {
    v14 = 0;
  }

  else if (v13 <= 3)
  {
    v17 = ((a3 + ~(-1 << (8 * v13)) - 254) >> (8 * v13)) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (a2 > 0xFE)
  {
    v15 = a2 - 255;
    if (v13 >= 4)
    {
      bzero(a1, v12 + 1);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v16 = (v15 >> (8 * v13)) + 1;
    if (v12 != -1)
    {
      v19 = v15 & ~(-1 << (8 * v13));
      bzero(a1, v13);
      if (v13 != 3)
      {
        if (v13 == 2)
        {
          *a1 = v19;
          if (v14 > 1)
          {
LABEL_39:
            if (v14 == 2)
            {
              *&a1[v13] = v16;
            }

            else
            {
              *&a1[v13] = v16;
            }

            return;
          }
        }

        else
        {
          *a1 = v15;
          if (v14 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v14)
        {
          a1[v13] = v16;
        }

        return;
      }

      *a1 = v19;
      a1[2] = BYTE2(v19);
    }

    if (v14 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v14 <= 1)
  {
    if (v14)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v12] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v14 == 2)
  {
    *&a1[v13] = 0;
    goto LABEL_24;
  }

  *&a1[v13] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void *sub_25F4148B8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_25F4148C4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_25F4148D4()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25F4A2C60();
}

uint64_t sub_25F4148E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F415184();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t ContentCategory.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25F4149D8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25F414B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F415130();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F414C0C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F414C58()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F414CA0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F4A3270();
  }
}

uint64_t sub_25F414CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4150DC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

unint64_t sub_25F414D98()
{
  result = qword_27FD6E1E8;
  if (!qword_27FD6E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E1E8);
  }

  return result;
}

unint64_t sub_25F414DFC()
{
  result = qword_27FD6E1F0;
  if (!qword_27FD6E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E1F0);
  }

  return result;
}

unint64_t sub_25F414E54()
{
  result = qword_27FD6E1F8;
  if (!qword_27FD6E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E1F8);
  }

  return result;
}

unint64_t sub_25F414EC4()
{
  result = qword_27FD6E200;
  if (!qword_27FD6E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E200);
  }

  return result;
}

unint64_t sub_25F414F1C()
{
  result = qword_27FD6E208;
  if (!qword_27FD6E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E208);
  }

  return result;
}

unint64_t sub_25F414F74()
{
  result = qword_27FD6E210;
  if (!qword_27FD6E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E210);
  }

  return result;
}

unint64_t sub_25F414FCC()
{
  result = qword_27FD6E218;
  if (!qword_27FD6E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E218);
  }

  return result;
}

uint64_t sub_25F415048(uint64_t a1, int a2)
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

uint64_t sub_25F415090(uint64_t result, int a2, int a3)
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

unint64_t sub_25F4150DC()
{
  result = qword_27FD6E220;
  if (!qword_27FD6E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E220);
  }

  return result;
}

unint64_t sub_25F415130()
{
  result = qword_27FD6E228;
  if (!qword_27FD6E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E228);
  }

  return result;
}

unint64_t sub_25F415184()
{
  result = qword_27FD6E230;
  if (!qword_27FD6E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E230);
  }

  return result;
}

uint64_t sub_25F415220(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x736172437478656ELL;
  }

  else
  {
    v4 = 0xD000000000000016;
  }

  if (v3)
  {
    v5 = 0x800000025F4B5EE0;
  }

  else
  {
    v5 = 0xEF74726F70655268;
  }

  if (*a2)
  {
    v6 = 0x736172437478656ELL;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (*a2)
  {
    v7 = 0xEF74726F70655268;
  }

  else
  {
    v7 = 0x800000025F4B5EE0;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F4152D8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F41536C()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4153EC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F415488(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B5EE0;
  v3 = 0xD000000000000016;
  if (*v1)
  {
    v3 = 0x736172437478656ELL;
    v2 = 0xEF74726F70655268;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F4154D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F41B898();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t CrashListenerInterface.TwoWayMessage.propertyListValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_25F4156C4();
  sub_25F415718();
  result = sub_25F4A25C0();
  if (v4 != 0xFF)
  {
    v7[5] = v1;
    v7[6] = v2;
    v7[7] = v4 & 1;
    v7[8] = v3;
    v7[3] = &type metadata for CrashListenerInterface.TwoWayMessage.Key;
    v7[4] = v5;
    LOBYTE(v7[0]) = 1;
    sub_25F41576C(v1, v2, v4 & 1);
    sub_25F41577C();
    sub_25F4A2520();
    sub_25F4157D0(v1, v2, v4 & 1);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

_BYTE *sub_25F4156A8(_BYTE *result, BOOL *a2)
{
  v3 = ~*(v2 + 32);
  *result = 0;
  *a2 = v3 != 0;
  return result;
}

unint64_t sub_25F4156C4()
{
  result = qword_27FD6E238;
  if (!qword_27FD6E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E238);
  }

  return result;
}

unint64_t sub_25F415718()
{
  result = qword_27FD6E240;
  if (!qword_27FD6E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E240);
  }

  return result;
}

uint64_t sub_25F41576C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_25F41577C()
{
  result = qword_27FD6E248;
  if (!qword_27FD6E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E248);
  }

  return result;
}

uint64_t sub_25F4157D0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_25F4157E8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_25F4157E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t CrashListenerInterface.TwoWayMessage.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = &type metadata for CrashListenerInterface.TwoWayMessage.Key;
  v5 = sub_25F4156C4();
  v18 = v5;
  LOBYTE(v16[0]) = 0;
  sub_25F415718();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    if (v13)
    {
      v17 = &type metadata for CrashListenerInterface.TwoWayMessage.Key;
      v18 = v5;
      LOBYTE(v16[0]) = 1;
      sub_25F41577C();
      sub_25F4A2530();
      v8 = sub_25F4A25E0();
      (*(*(v8 - 8) + 8))(a1, v8);
      result = __swift_destroy_boxed_opaque_existential_1(v16);
      v9 = v13;
      v10 = v14;
      v11 = v15;
    }

    else
    {
      v12 = sub_25F4A25E0();
      result = (*(*(v12 - 8) + 8))(a1, v12);
      v11 = 0;
      v9 = 0uLL;
      v10 = 255;
    }

    *a2 = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
  }

  return result;
}

uint64_t NextCrashRequest.process.getter()
{
  v1 = *v0;
  sub_25F41576C(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t NextCrashRequest.init(process:timeout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  *(a4 + 24) = a5;
  return result;
}

uint64_t sub_25F415A24(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x74756F656D6974;
  }

  else
  {
    v2 = 0x737365636F7270;
  }

  if (*a2)
  {
    v3 = 0x74756F656D6974;
  }

  else
  {
    v3 = 0x737365636F7270;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F4A3270();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F415AAC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F415B24()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F415B80()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F415C00(uint64_t *a1@<X8>)
{
  v2 = 0x737365636F7270;
  if (*v1)
  {
    v2 = 0x74756F656D6974;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_25F415C38()
{
  if (*v0)
  {
    return 0x74756F656D6974;
  }

  else
  {
    return 0x737365636F7270;
  }
}

uint64_t NextCrashRequest.propertyListValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 3);
  return sub_25F4A25A0();
}

uint64_t sub_25F415CBC()
{
  sub_25F415F10();
  sub_25F415F64();
  return sub_25F4A28D0();
}

uint64_t NextCrashRequest.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = &type metadata for NextCrashRequest.Key;
  v5 = sub_25F415F10();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F415F64();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v9 = v16;
    v8 = v17;
    v19 = v18;
    v14 = &type metadata for NextCrashRequest.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    sub_25F4A2530();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    v11 = v16;
    v12 = v19;
    *a2 = v9;
    *(a2 + 8) = v8;
    *(a2 + 16) = v12;
    *(a2 + 24) = v11;
  }

  return result;
}

unint64_t sub_25F415F10()
{
  result = qword_27FD6E250;
  if (!qword_27FD6E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E250);
  }

  return result;
}

unint64_t sub_25F415F64()
{
  result = qword_27FD6E258;
  if (!qword_27FD6E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E258);
  }

  return result;
}

uint64_t sub_25F415FB8()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 3);
  return sub_25F4A25A0();
}

uint64_t NextCrashResponse.crashReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F4A23A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NextCrashResponse.init(crashReport:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F4A23A0();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_25F4160F4()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F416170()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F4161C8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F4A3170();

  *a2 = v5 != 0;
  return result;
}

uint64_t NextCrashResponse.propertyListValue.getter()
{
  sub_25F4A23A0();
  sub_25F416314();
  sub_25F41AB00(&qword_27FD6E268, MEMORY[0x277D403F0]);
  return sub_25F4A25C0();
}

unint64_t sub_25F416314()
{
  result = qword_27FD6E260;
  if (!qword_27FD6E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E260);
  }

  return result;
}

uint64_t NextCrashResponse.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F4A23A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[3] = &type metadata for NextCrashResponse.Key;
  v13[4] = sub_25F416314();
  sub_25F41AB00(&qword_27FD6E268, MEMORY[0x277D403F0]);
  sub_25F4A2530();
  v10 = sub_25F4A25E0();
  (*(*(v10 - 8) + 8))(a1, v10);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return (*(v6 + 32))(a2, v9, v5);
}

uint64_t sub_25F416528()
{
  sub_25F4A23A0();
  sub_25F416314();
  sub_25F41AB00(&qword_27FD6E268, MEMORY[0x277D403F0]);
  return sub_25F4A25C0();
}

uint64_t sub_25F4165D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F4A23A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[3] = &type metadata for NextCrashResponse.Key;
  v13[4] = sub_25F416314();
  sub_25F41AB00(&qword_27FD6E268, MEMORY[0x277D403F0]);
  sub_25F4A2530();
  v10 = sub_25F4A25E0();
  (*(*(v10 - 8) + 8))(a1, v10);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return (*(v6 + 32))(a2, v9, v5);
}

uint64_t ProcessIdentifier.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_25F4A30F0();

    strcpy(v7, "process name: ");
    HIBYTE(v7[1]) = -18;
    MEMORY[0x25F8DD480](a1, a2);
  }

  else
  {
    v7[0] = 0x203A646970;
    v7[1] = 0xE500000000000000;
    v5 = sub_25F4A3210();
    MEMORY[0x25F8DD480](v5);
  }

  return v7[0];
}

uint64_t ProcessIdentifier.name.getter(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  return a1;
}

uint64_t static ProcessIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return sub_25F4A3270();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return (a6 & 1) == 0 && a1 == a4;
  }
}

uint64_t ProcessIdentifier.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x25F8DDB20](1);

    return sub_25F4A2C60();
  }

  else
  {
    MEMORY[0x25F8DDB20](0);
    return sub_25F4A3330();
  }
}

uint64_t ProcessIdentifier.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_25F4A3300();
  if (a3)
  {
    MEMORY[0x25F8DDB20](1);
    sub_25F4A2C60();
  }

  else
  {
    MEMORY[0x25F8DDB20](0);
    sub_25F4A3330();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F416A00()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_25F4A3300();
  if (v3)
  {
    MEMORY[0x25F8DDB20](1);
    sub_25F4A2C60();
  }

  else
  {
    MEMORY[0x25F8DDB20](0);
    sub_25F4A3330();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F416A84()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    MEMORY[0x25F8DDB20](1);

    return sub_25F4A2C60();
  }

  else
  {
    MEMORY[0x25F8DDB20](0);
    return sub_25F4A3330();
  }
}

uint64_t sub_25F416B08()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_25F4A3300();
  if (v3)
  {
    MEMORY[0x25F8DDB20](1);
    sub_25F4A2C60();
  }

  else
  {
    MEMORY[0x25F8DDB20](0);
    sub_25F4A3330();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F416B94(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (a1[2])
  {
    if (a2[2])
    {
      v5 = a1[1];
      if (v3 == v4 && v5 == a2[1])
      {
        return 1;
      }

      else
      {
        return sub_25F4A3270();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return (a2[2] & 1) == 0 && v3 == v4;
  }
}

uint64_t sub_25F416BF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4E737365636F7270;
  }

  else
  {
    v4 = 6580592;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xEB00000000656D61;
  }

  if (*a2)
  {
    v6 = 0x4E737365636F7270;
  }

  else
  {
    v6 = 6580592;
  }

  if (*a2)
  {
    v7 = 0xEB00000000656D61;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F416C9C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F416D20()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F416D90()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F416E1C(uint64_t *a1@<X8>)
{
  v2 = 6580592;
  if (*v1)
  {
    v2 = 0x4E737365636F7270;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000656D61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F416E5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F41B8EC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F416F24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x64616F6C796170;
  }

  else
  {
    v4 = 0x696D697263736964;
  }

  if (v3)
  {
    v5 = 0xEC000000746E616ELL;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x64616F6C796170;
  }

  else
  {
    v6 = 0x696D697263736964;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xEC000000746E616ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F416FD8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F417064()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4170E0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F417174(uint64_t *a1@<X8>)
{
  v2 = 0x696D697263736964;
  if (*v1)
  {
    v2 = 0x64616F6C796170;
  }

  v3 = 0xEC000000746E616ELL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F4171BC()
{
  if (*v0)
  {
    result = 0x64616F6C796170;
  }

  else
  {
    result = 0x696D697263736964;
  }

  *v0;
  return result;
}

uint64_t ProcessIdentifier.init(propertyListValue:)(uint64_t a1)
{
  result = sub_25F41A5A4(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t ProcessIdentifier.propertyListValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_25F41A788();
  sub_25F41A7DC();
  sub_25F4A25C0();
  if (a3)
  {
    v9 = a1;
    v10 = a2;
  }

  else
  {
    LODWORD(v9) = a1;
    BYTE4(v9) = 0;
  }

  v8[3] = &type metadata for ProcessIdentifier.Key;
  v8[4] = v6;
  LOBYTE(v8[0]) = 1;
  sub_25F4A2520();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_25F417320(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x736567616D69;
    v6 = 0x73656D617266;
    if (a1 != 8)
    {
      v6 = 0x50656C6946676F6CLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 6910817;
    if (a1 != 5)
    {
      v7 = 0x74616E696D726574;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x65707954677562;
    v3 = 6580592;
    if (a1 != 3)
    {
      v3 = 1701669236;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25F417448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25F41A5A4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_25F41747C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_25F417320(*a1);
  v5 = v4;
  if (v3 == sub_25F417320(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F417504()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F417320(v1);
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F417568()
{
  sub_25F417320(*v0);
  sub_25F4A2C60();
}

uint64_t sub_25F4175BC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F417320(v1);
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F41761C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F41B940();
  *a2 = result;
  return result;
}

uint64_t sub_25F41764C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25F417320(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CrashReport.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E280, &qword_25F4A7F90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = v33 - v6;
  v7 = sub_25F4A2070();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E288, &qword_25F4A7F98);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v33 - v13;
  v15 = sub_25F4A2220();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = &_s3KeyON_2;
  v20 = sub_25F41A830();
  v48 = v20;
  LOBYTE(v46[0]) = 0;
  sub_25F41AB00(&qword_27FD6E298, MEMORY[0x277D403D8]);
  sub_25F4A2580();
  if (v2)
  {
    v21 = sub_25F4A25E0();
    (*(*(v21 - 8) + 8))(a1, v21);
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    v35 = v7;
    v23 = a1;
    v40 = v19;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v24 = v16;
    v25 = *(v16 + 48);
    v26 = v25(v14, 1, v15);
    v36 = v15;
    if (v26 == 1)
    {
      sub_25F4A2210();
      if (v25(v14, 1, v15) != 1)
      {
        sub_25F3F21F4(v14, &qword_27FD6E288, &qword_25F4A7F98);
      }
    }

    else
    {
      (*(v24 + 32))(v40, v14, v15);
    }

    v47 = &_s3KeyON_2;
    v48 = v20;
    LOBYTE(v46[0]) = 1;
    v27 = v23;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v46);
    v28 = v44;
    v29 = v45;
    v47 = &_s3KeyON_2;
    v48 = v20;
    LOBYTE(v46[0]) = 2;
    sub_25F4A2530();
    v33[5] = v10;
    v33[4] = v28;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v30 = v43;
    v47 = &_s3KeyON_2;
    v48 = v20;
    v34 = v20;
    LOBYTE(v46[0]) = 3;
    sub_25F4A2530();
    v33[3] = v30;
    __swift_destroy_boxed_opaque_existential_1(v46);
    LODWORD(v30) = v50;
    v47 = &_s3KeyON_2;
    v48 = v34;
    LOBYTE(v46[0]) = 4;
    sub_25F4A2530();
    v49 = v30;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v47 = &_s3KeyON_2;
    v48 = v34;
    LOBYTE(v46[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E2A0, &unk_25F4A7FA0);
    sub_25F41A884();
    sub_25F4A2580();
    v33[2] = v29;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v31 = v42;
    v47 = &_s3KeyON_2;
    v48 = v34;
    LOBYTE(v46[0]) = 6;
    sub_25F4A21D0();
    sub_25F41AB00(&qword_27FD6E2B0, MEMORY[0x277D403D0]);
    sub_25F4A2580();
    v33[1] = v31;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v47 = &_s3KeyON_2;
    v48 = v34;
    LOBYTE(v46[0]) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E2B8, &qword_25F4A7FB0);
    sub_25F41A998();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v46);
    v47 = &_s3KeyON_2;
    v48 = v34;
    LOBYTE(v46[0]) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E2D0, &qword_25F4A7FB8);
    sub_25F41AA4C();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v46);
    v33[0] = v41;
    v47 = &_s3KeyON_2;
    v48 = v34;
    LOBYTE(v46[0]) = 9;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_25F4A2240();
    v32 = sub_25F4A25E0();
    return (*(*(v32 - 8) + 8))(v27, v32);
  }
}

uint64_t sub_25F418168()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E378, &qword_25F4A8CC8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v67 = &v55[-v2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E288, &qword_25F4A7F98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v68 = &v55[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E380, &qword_25F4A8CD0);
  v7 = *(v6 - 8);
  v66 = (v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v61 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v55[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E388, &qword_25F4A8CD8);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v60 = &v55[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v19 = &v55[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E390, &unk_25F4A8CE0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v55[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v27 = &v55[-v26];
  v28 = *(v21 + 56);
  v55[-v26] = 0;
  v65 = &v55[-v26];
  sub_25F4A2250();
  v58 = sub_25F4A2280();
  v30 = v29;
  v63 = v29;
  v57 = sub_25F4A2390();
  v32 = v31;
  v62 = v31;
  v56 = sub_25F4A2270();
  v33 = *(v14 + 56);
  *v19 = 4;
  v64 = v19;
  sub_25F4A2290();
  v72 = sub_25F4A2260();
  v34 = *(v66 + 14);
  v73 = v12;
  *v12 = 6;
  sub_25F4A21F0();
  v71 = sub_25F4A2380();
  v70 = sub_25F4A2370();
  v59 = sub_25F4A21E0();
  v69 = v35;
  sub_25F404B8C(v27, v25, &qword_27FD6E390, &unk_25F4A8CE0);
  v36 = *v25;
  v37 = *(v21 + 56);
  v38 = sub_25F4A2220();
  v39 = *(v38 - 8);
  v40 = v68;
  (*(v39 + 32))(v68, &v25[v37], v38);
  (*(v39 + 56))(v40, 0, 1, v38);
  v94 = v36;
  v93 = 1;
  v91 = v58;
  v92 = v30;
  v90 = 2;
  v88 = v57;
  v89 = v32;
  v87 = 3;
  v85 = v56;
  v86 = 0;
  v41 = v60;
  sub_25F404B8C(v19, v60, &qword_27FD6E388, &qword_25F4A8CD8);
  v42 = *v41;
  v43 = *(v14 + 56);
  v44 = sub_25F4A2070();
  v45 = *(v44 - 8);
  v46 = &v41[v43];
  v47 = v67;
  (*(v45 + 32))(v67, v46, v44);
  (*(v45 + 56))(v47, 0, 1, v44);
  v84 = v42;
  v83 = 5;
  v82 = v72;
  v48 = v61;
  sub_25F404B8C(v73, v61, &qword_27FD6E380, &qword_25F4A8CD0);
  v49 = *v48;
  v66 = &v48[*(v66 + 14)];
  v81 = v49;
  v80 = 7;
  v79 = v71;
  v78 = 8;
  v77 = v70;
  v76 = 9;
  v74 = v59;
  v75 = v69;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E2A0, &unk_25F4A7FA0);
  sub_25F4A21D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E2B8, &qword_25F4A7FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E2D0, &qword_25F4A7FB8);
  sub_25F41A830();
  sub_25F41AB00(&qword_27FD6E298, MEMORY[0x277D403D8]);
  sub_25F41A884();
  sub_25F41AB00(&qword_27FD6E2B0, MEMORY[0x277D403D0]);
  sub_25F41A998();
  sub_25F41AA4C();
  v50 = v66;
  v51 = v67;
  v52 = v68;
  v53 = sub_25F4A2850();

  sub_25F3F21F4(v51, &qword_27FD6E378, &qword_25F4A8CC8);

  sub_25F3F21F4(v52, &qword_27FD6E288, &qword_25F4A7F98);
  sub_25F3F21F4(v73, &qword_27FD6E380, &qword_25F4A8CD0);
  sub_25F3F21F4(v64, &qword_27FD6E388, &qword_25F4A8CD8);
  sub_25F3F21F4(v65, &qword_27FD6E390, &unk_25F4A8CE0);
  sub_25F3F21F4(v50, &qword_27FD6E280, &qword_25F4A7F90);
  return v53;
}

uint64_t CrashReport.ID.propertyListValue.getter()
{
  v0 = sub_25F4A20A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2200();
  v5 = sub_25F4A2090();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t CrashReport.ID.init(propertyListValue:)()
{
  v1 = sub_25F4A20A0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  result = sub_25F4A2080();
  if (!v0)
  {
    return sub_25F4A2230();
  }

  return result;
}

uint64_t sub_25F418B44@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25F4A20A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2200();
  v7 = sub_25F4A2090();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v9;
  return result;
}

uint64_t sub_25F418C24(uint64_t *a1)
{
  v3 = sub_25F4A20A0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *a1;
  v6 = a1[1];
  result = sub_25F4A2080();
  if (!v1)
  {
    return sub_25F4A2230();
  }

  return result;
}

uint64_t sub_25F418CD8()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F418DE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F41B98C();
  *a2 = result;
  return result;
}

void sub_25F418E18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007865;
  v4 = 0x646E496567616D69;
  v5 = 0xEE006E6F69746163;
  v6 = 0x6F4C6C6F626D7973;
  v7 = 0x6946656372756F73;
  v8 = 0xEA0000000000656CLL;
  if (v2 != 4)
  {
    v7 = 0x694C656372756F73;
    v8 = 0xEA0000000000656ELL;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xEB00000000746573;
  v10 = 0x66664F6567616D69;
  if (v2 != 1)
  {
    v10 = 0x6C6F626D7973;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_25F418EF0()
{
  v1 = *v0;
  v2 = 0x646E496567616D69;
  v3 = 0x6F4C6C6F626D7973;
  v4 = 0x6946656372756F73;
  if (v1 != 4)
  {
    v4 = 0x694C656372756F73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x66664F6567616D69;
  if (v1 != 1)
  {
    v5 = 0x6C6F626D7973;
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

uint64_t CrashReport.Frame.init(propertyListValue:)(uint64_t a1)
{
  v8 = &_s3KeyON_1;
  v3 = sub_25F41AB50();
  v9 = v3;
  LOBYTE(v7[0]) = 0;
  sub_25F4A2530();
  if (v1)
  {
    v4 = sub_25F4A25E0();
    (*(*(v4 - 8) + 8))(a1, v4);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_1;
    v9 = v3;
    LOBYTE(v7[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_1;
    v9 = v3;
    LOBYTE(v7[0]) = 2;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_1;
    v9 = v3;
    LOBYTE(v7[0]) = 3;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_1;
    v9 = v3;
    LOBYTE(v7[0]) = 4;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_1;
    v9 = v3;
    LOBYTE(v7[0]) = 5;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    sub_25F4A22A0();
    v5 = sub_25F4A25E0();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }
}

uint64_t sub_25F419364()
{
  sub_25F4A22B0();
  sub_25F4A22E0();
  sub_25F4A2300();
  sub_25F4A22F0();
  sub_25F4A22C0();
  sub_25F4A22D0();
  sub_25F41AB50();
  v0 = sub_25F4A2890();

  return v0;
}

uint64_t sub_25F419550()
{
  v1 = *v0;
  sub_25F4A3300();
  v2 = *&aUuid_1[8 * v1];
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4195AC()
{
  v1 = *&aUuid_1[8 * *v0];
  sub_25F4A2C60();
}

uint64_t sub_25F4195EC()
{
  v1 = *v0;
  sub_25F4A3300();
  v2 = *&aUuid_1[8 * v1];
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F419644@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F41B9D8();
  *a2 = result;
  return result;
}

uint64_t CrashReport.Image.init(propertyListValue:)(uint64_t a1)
{
  v8 = &_s3KeyON_0;
  v3 = sub_25F41ABAC();
  v9 = v3;
  LOBYTE(v7[0]) = 0;
  sub_25F4A2530();
  if (v1)
  {
    v4 = sub_25F4A25E0();
    (*(*(v4 - 8) + 8))(a1, v4);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_0;
    v9 = v3;
    LOBYTE(v7[0]) = 1;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_0;
    v9 = v3;
    LOBYTE(v7[0]) = 2;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_0;
    v9 = v3;
    LOBYTE(v7[0]) = 3;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON_0;
    v9 = v3;
    LOBYTE(v7[0]) = 4;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    sub_25F4A2350();
    v6 = sub_25F4A25E0();
    return (*(*(v6 - 8) + 8))(a1, v6);
  }
}

uint64_t sub_25F419A10()
{
  sub_25F4A2360();
  sub_25F4A2310();
  sub_25F4A2320();
  sub_25F4A2340();
  sub_25F4A2330();
  sub_25F41ABAC();
  v0 = sub_25F4A28A0();

  return v0;
}

uint64_t sub_25F419BF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F41BA24();
  *a2 = result;
  return result;
}

void sub_25F419C20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7367616C66;
  v5 = 0xE500000000000000;
  v6 = 0x6469507962;
  if (v2 != 6)
  {
    v6 = 0x736E6F73616572;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE900000000000072;
  v8 = 0x6F74616369646E69;
  if (v2 != 4)
  {
    v8 = 0x636F72507962;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x63617073656D616ELL;
  v10 = 0xE900000000000065;
  if (v2 != 2)
  {
    v9 = 0x736C6961746564;
    v10 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 1701080931;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_25F419D18()
{
  v1 = *v0;
  v2 = 0x7367616C66;
  v3 = 0x6469507962;
  if (v1 != 6)
  {
    v3 = 0x736E6F73616572;
  }

  v4 = 0x6F74616369646E69;
  if (v1 != 4)
  {
    v4 = 0x636F72507962;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x63617073656D616ELL;
  if (v1 != 2)
  {
    v5 = 0x736C6961746564;
  }

  if (*v0)
  {
    v2 = 1701080931;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
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

uint64_t CrashReport.Termination.init(propertyListValue:)(uint64_t a1)
{
  v8 = &_s3KeyON;
  v3 = sub_25F41AC08();
  v9 = v3;
  LOBYTE(v7[0]) = 0;
  sub_25F4A2580();
  if (v1)
  {
    v4 = sub_25F4A25E0();
    (*(*(v4 - 8) + 8))(a1, v4);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON;
    v9 = v3;
    LOBYTE(v7[0]) = 1;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON;
    v9 = v3;
    LOBYTE(v7[0]) = 2;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON;
    v9 = v3;
    LOBYTE(v7[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
    sub_25F41A91C();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON;
    v9 = v3;
    LOBYTE(v7[0]) = 4;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON;
    v9 = v3;
    LOBYTE(v7[0]) = 5;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON;
    v9 = v3;
    LOBYTE(v7[0]) = 6;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v8 = &_s3KeyON;
    v9 = v3;
    LOBYTE(v7[0]) = 7;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v7);
    sub_25F4A2160();
    v5 = sub_25F4A25E0();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }
}