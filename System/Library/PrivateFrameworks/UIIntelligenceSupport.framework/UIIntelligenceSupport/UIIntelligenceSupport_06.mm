uint64_t sub_1BBB0620C(uint64_t a1, char a2, uint64_t *a3, uint64_t a4)
{
  v9 = sub_1BBB83658();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UndeclaredUTType();
  v34 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v27 = a3;
    v28 = a4;
    v29 = v4;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1BBAE4F60(0, v15, 0);
    v18 = *(v10 + 16);
    v17 = v10 + 16;
    v16 = v36;
    v19 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v31 = *(v17 + 56);
    v32 = v18;
    v20 = (v17 + 40);
    v30 = (v17 + 16);
    v33 = v17;
    do
    {
      v21 = v35;
      v32(v35, v19, v9);
      v22 = *v20;
      (*v20)(v14, 1, 1, v9);
      sub_1BBA8BCC4(v14, &qword_1EBC7B858);
      (*v30)(v14, v21, v9);
      v22(v14, 0, 1, v9);
      v36 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1BBAE4F60(v23 > 1, v24 + 1, 1);
        v16 = v36;
      }

      *(v16 + 16) = v24 + 1;
      sub_1BBB07860(v14, v16 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v24, type metadata accessor for UndeclaredUTType);
      v19 += v31;
      --v15;
    }

    while (v15);
    a3 = v27;
  }

  v36 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C210);
  sub_1BBA9729C(&qword_1EBC7C228, &qword_1EBC7ADE8);
  sub_1BBB84288();
}

uint64_t IntelligenceImage.Representation.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C178);
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - v6;
  if (qword_1ED6BDDC8 != -1)
  {
    v33 = v5;
    swift_once();
    v5 = v33;
  }

  v38 = v5;
  v59 = xmmword_1ED6BDDD0;
  v60 = *&qword_1ED6BDDE0;
  v61[0] = xmmword_1ED6BDDF0;
  *(v61 + 9) = *(&xmmword_1ED6BDDF0 + 9);
  if (qword_1ED6BEB10 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED6BEB18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB078C8();
  v39 = v8;

  sub_1BBB84458();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v48 = 0;
    v49 = 0;
    v50 = v59;
    v51 = v60;
    *v52 = v61[0];
    *&v52[9] = *(v61 + 9);
    *v53 = *v58;
    *&v53[3] = *&v58[3];
    v54 = 72;
    v55 = v39;
    v56 = 0x3FE999999999999ALL;
    v57 = 0;
  }

  else
  {
    LOBYTE(v48) = 0;
    v9 = sub_1BBB84138();
    v12 = v10;
    if (v10)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    v46 = 1;
    sub_1BBB07970();
    sub_1BBB84178();
    v14 = v47;
    if (v47[57])
    {
      v14 = &xmmword_1ED6BDDD0;
    }

    v15 = v14[2];
    v44 = v14[1];
    *v45 = v15;
    *&v45[9] = *(v14 + 41);
    v43 = *v14;
    v59 = v43;
    v60 = v44;
    v61[0] = *v45;
    *(v61 + 9) = *&v45[9];
    LOBYTE(v48) = 2;
    v16 = sub_1BBB84168();
    if (v17)
    {
      v18 = 72;
    }

    else
    {
      v18 = v16;
    }

    v19 = sub_1BBA96E40(3, &qword_1EBC7C178);
    if (v19)
    {
      v20 = v19;

      v39 = v20;
    }

    LOBYTE(v48) = 4;
    v21 = v38;
    v22 = COERCE_DOUBLE(sub_1BBB84158());
    if (v23)
    {
      v24 = 0.8;
    }

    else
    {
      v24 = v22;
    }

    LOBYTE(v48) = 5;
    v35 = sub_1BBB84148();
    (*(v37 + 8))(v7, v21);
    v25 = v35 & 1;
    *&v40[0] = v13;
    *(&v40[0] + 1) = v12;
    v26 = v44;
    v40[2] = v44;
    v41[0] = *v45;
    *(v41 + 9) = *&v45[9];
    v27 = v43;
    v40[1] = v43;
    v28 = v13;
    v29 = v39;
    *&v42[0] = v18;
    *(&v42[0] + 1) = v39;
    *&v42[1] = v24;
    BYTE8(v42[1]) = v35 & 1;
    v30 = v36;
    *v36 = v40[0];
    v30[1] = v27;
    *(v30 + 89) = *(v42 + 9);
    v31 = v41[0];
    v32 = v42[0];
    v30[4] = v41[1];
    v30[5] = v32;
    v30[2] = v26;
    v30[3] = v31;
    sub_1BBACB4D0(v40, &v48);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v48 = v28;
    v49 = v12;
    v50 = v43;
    v51 = v44;
    *v52 = *v45;
    *&v52[9] = *&v45[9];
    v54 = v18;
    v55 = v29;
    v56 = *&v24;
    v57 = v25;
  }

  return sub_1BBAC7878(&v48);
}

uint64_t sub_1BBB06AB4()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB06B80()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB06C38()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB06D00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB0838C();
  *a1 = result;
  return result;
}

void sub_1BBB06D30(uint64_t *a1@<X8>)
{
  v2 = 0x6C6578695078616DLL;
  v3 = 0xED00006874646957;
  v4 = 0xD00000000000001ELL;
  v5 = 0x80000001BBB9A7C0;
  if (*v1 != 2)
  {
    v4 = 0xD00000000000001FLL;
    v5 = 0x80000001BBB9A7E0;
  }

  if (*v1)
  {
    v3 = 0xEE00746867696548;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v4;
    v6 = v5;
  }

  *a1 = v2;
  a1[1] = v6;
}

uint64_t sub_1BBB06DB8()
{
  v1 = 0xD00000000000001ELL;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    return 0x6C6578695078616DLL;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1BBB06E3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB0838C();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB06E64(uint64_t a1)
{
  v2 = sub_1BBB079C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB06EA0(uint64_t a1)
{
  v2 = sub_1BBB079C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceImage.Representation.SizeConstraints.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C188);
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - v5;
  v7 = *(v1 + 8);
  v12 = *(v1 + 16);
  v15 = *(v1 + 24);
  v8 = *(v1 + 32);
  v13 = *(v1 + 40);
  v10[0] = *(v1 + 48);
  v10[1] = v8;
  v11 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB079C4();
  sub_1BBB84478();
  if ((v7 & 1) != 0 || (v16 = 0, sub_1BBB84278(), !v2))
  {
    if ((v15 & 1) != 0 || (v17 = 1, sub_1BBB84278(), !v2))
    {
      if ((v13 & 1) != 0 || (v18 = 2, sub_1BBB84278(), !v2))
      {
        if (!v11)
        {
          v19 = 3;
          sub_1BBB84278();
        }
      }
    }
  }

  return (*(v14 + 8))(v6, v4);
}

uint64_t IntelligenceImage.Representation.SizeConstraints.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C198);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB079C4();
  sub_1BBB84458();
  if (!v2)
  {
    v33 = 0;
    v9 = sub_1BBB84168();
    v29 = v10 & 1;
    v32 = 1;
    v11 = sub_1BBB84168();
    v28 = v12 & 1;
    v31 = 2;
    v25 = sub_1BBB84168();
    v27 = v13 & 1;
    v30 = 3;
    v14 = sub_1BBB84168();
    v17 = v16;
    v18 = *(v6 + 8);
    v24 = v14;
    v18(v8, v5);
    v26 = v17 & 1;
    v19 = v29;
    v20 = v28;
    v21 = v27;
    *a2 = v9;
    *(a2 + 8) = v19;
    *(a2 + 16) = v11;
    *(a2 + 24) = v20;
    v22 = v24;
    *(a2 + 32) = v25;
    *(a2 + 40) = v21;
    *(a2 + 48) = v22;
    *(a2 + 56) = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL _s21UIIntelligenceSupport17IntelligenceImageV14RepresentationV15SizeConstraintsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = *(a2 + 8);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 16))
    {
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 32))
    {
      v10 = *(a2 + 40);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if ((v7 & 1) == 0)
  {
    if (v6 == *(a2 + 48))
    {
      v12 = *(a2 + 56);
    }

    else
    {
      v12 = 1;
    }

    return (v12 & 1) == 0;
  }

  return (*(a2 + 56) & 1) != 0;
}

uint64_t _s21UIIntelligenceSupport17IntelligenceImageV14RepresentationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 80);
  v3 = *(a1 + 88);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);
  v7 = *(a2 + 8);
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  v10 = *(a2 + 96);
  v11 = *(a2 + 104);
  if (v2)
  {
    if (v7)
    {
      if (*a1 == *a2 && v2 == v7)
      {
        goto LABEL_6;
      }

      v12 = a1;
      v13 = a2;
      v14 = sub_1BBB842F8();
      a2 = v13;
      v15 = v14;
      a1 = v12;
      if (v15)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_6:
  v16 = *(a1 + 32);
  v23[0] = *(a1 + 16);
  v23[1] = v16;
  v24[0] = *(a1 + 48);
  *(v24 + 9) = *(a1 + 57);
  v17 = *(a2 + 32);
  v21[0] = *(a2 + 16);
  v21[1] = v17;
  v22[0] = *(a2 + 48);
  *(v22 + 9) = *(a2 + 57);
  v18 = _s21UIIntelligenceSupport17IntelligenceImageV14RepresentationV15SizeConstraintsV2eeoiySbAG_AGtFZ_0(v23, v21);
  result = 0;
  if (v18 && v4 == v9)
  {
    v20 = sub_1BBA94D48(v3, v8);
    result = 0;
    if ((v20 & 1) != 0 && v5 == v10)
    {
      return v6 ^ v11 ^ 1u;
    }
  }

  return result;
}

unint64_t sub_1BBB07558()
{
  result = qword_1EBC7BEF0;
  if (!qword_1EBC7BEF0)
  {
    sub_1BBB83498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7BEF0);
  }

  return result;
}

unint64_t sub_1BBB075A4()
{
  result = qword_1EBC7C128;
  if (!qword_1EBC7C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C128);
  }

  return result;
}

unint64_t sub_1BBB075F8()
{
  result = qword_1EBC7C138;
  if (!qword_1EBC7C138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7C130);
    sub_1BBB076B4();
    sub_1BBB07708(&qword_1EBC7C140, type metadata accessor for IntelligenceFile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C138);
  }

  return result;
}

unint64_t sub_1BBB076B4()
{
  result = qword_1EBC7ADD0;
  if (!qword_1EBC7ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ADD0);
  }

  return result;
}

uint64_t sub_1BBB07708(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BBB07750()
{
  result = qword_1EBC7C150;
  if (!qword_1EBC7C150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7C130);
    sub_1BBB0780C();
    sub_1BBB07708(&qword_1EBC7C158, type metadata accessor for IntelligenceFile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C150);
  }

  return result;
}

unint64_t sub_1BBB0780C()
{
  result = qword_1ED6BEB00;
  if (!qword_1ED6BEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BEB00);
  }

  return result;
}

uint64_t sub_1BBB07860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBB078C8()
{
  result = qword_1EBC7C168;
  if (!qword_1EBC7C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C168);
  }

  return result;
}

unint64_t sub_1BBB0791C()
{
  result = qword_1EBC7C170;
  if (!qword_1EBC7C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C170);
  }

  return result;
}

unint64_t sub_1BBB07970()
{
  result = qword_1EBC7C180;
  if (!qword_1EBC7C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C180);
  }

  return result;
}

unint64_t sub_1BBB079C4()
{
  result = qword_1EBC7C190;
  if (!qword_1EBC7C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C190);
  }

  return result;
}

unint64_t sub_1BBB07A1C()
{
  result = qword_1EBC7C1A0;
  if (!qword_1EBC7C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C1A0);
  }

  return result;
}

unint64_t sub_1BBB07A74()
{
  result = qword_1ED6BEE60[0];
  if (!qword_1ED6BEE60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6BEE60);
  }

  return result;
}

unint64_t sub_1BBB07ACC()
{
  result = qword_1EBC7C1A8;
  if (!qword_1EBC7C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C1A8);
  }

  return result;
}

uint64_t sub_1BBB07B68()
{
  result = type metadata accessor for IntelligenceImage.InternalRepresentation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1BBB07C00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BBB07C48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BBB07CB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BBB07CD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

void sub_1BBB07D88()
{
  sub_1BBB07E3C();
  if (v0 <= 0x3F)
  {
    sub_1BBB07FC4(319, &qword_1ED6BDCA0, type metadata accessor for IntelligenceImage, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BBB07E3C()
{
  if (!qword_1ED6BE448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7C1B8);
    v0 = sub_1BBB83E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6BE448);
    }
  }
}

void sub_1BBB07EA0()
{
  sub_1BBB07F44();
  if (v0 <= 0x3F)
  {
    sub_1BBB07FC4(319, &qword_1EBC7C1C0, type metadata accessor for IntelligenceImage.ProviderState, MEMORY[0x1E69E93F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BBB07F44()
{
  if (!qword_1ED6BE488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7C130);
    type metadata accessor for IntelligenceFile.Attributes(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED6BE488);
    }
  }
}

void sub_1BBB07FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BBB0802C()
{
  result = qword_1EBC7C1C8;
  if (!qword_1EBC7C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C1C8);
  }

  return result;
}

unint64_t sub_1BBB08084()
{
  result = qword_1EBC7C1D0;
  if (!qword_1EBC7C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C1D0);
  }

  return result;
}

unint64_t sub_1BBB080DC()
{
  result = qword_1EBC7C1D8;
  if (!qword_1EBC7C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C1D8);
  }

  return result;
}

unint64_t sub_1BBB08134()
{
  result = qword_1EBC7C1E0;
  if (!qword_1EBC7C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C1E0);
  }

  return result;
}

unint64_t sub_1BBB0818C()
{
  result = qword_1EBC7C1E8;
  if (!qword_1EBC7C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C1E8);
  }

  return result;
}

unint64_t sub_1BBB081E4()
{
  result = qword_1EBC7C1F0;
  if (!qword_1EBC7C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C1F0);
  }

  return result;
}

unint64_t sub_1BBB0823C()
{
  result = qword_1EBC7C1F8;
  if (!qword_1EBC7C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C1F8);
  }

  return result;
}

unint64_t sub_1BBB08294()
{
  result = qword_1EBC7C200;
  if (!qword_1EBC7C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C200);
  }

  return result;
}

unint64_t sub_1BBB082EC()
{
  result = qword_1EBC7C208;
  if (!qword_1EBC7C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C208);
  }

  return result;
}

uint64_t sub_1BBB08340()
{
  v0 = sub_1BBB84108();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BBB0838C()
{
  v0 = sub_1BBB84108();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BBB083D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBB08440(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void IntelligenceElement.AsyncContent.contentLoadCompleted(_:)()
{
  v1 = *(v0 + 64);
  os_unfair_lock_lock(v1 + 8);
  sub_1BBB087E4(&v1[4]);
  os_unfair_lock_unlock(v1 + 8);
}

void sub_1BBB085A8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    sub_1BBB84028();

    *&v14 = 0xD00000000000001BLL;
    *(&v14 + 1) = 0x80000001BBB9C080;
    if ((*(a1 + 8) & 0xF000000000000006) == 0xF000000000000006)
    {
      v11 = 0x64656C696166;
    }

    else
    {
      v11 = 0x6574656C706D6F63;
    }

    if ((*(a1 + 8) & 0xF000000000000006) == 0xF000000000000006)
    {
      v12 = 0xE600000000000000;
    }

    else
    {
      v12 = 0xE900000000000064;
    }

    MEMORY[0x1BFB16150](v11, v12);

    sub_1BBB840A8();
    __break(1u);
LABEL_15:
    os_unfair_lock_unlock((v4 + 32));
    __break(1u);
    return;
  }

  *a1 = 1;
  v8 = *(a1 + 8);
  sub_1BBA8BD24(a2);
  v9 = sub_1BBA9CCB4(v8);
  *(a1 + 8) = a2;
  v10 = *(a3 + 32);
  v14 = *(a3 + 16);
  v15 = v10;
  v16 = *(a3 + 48);
  if (qword_1ED6BF1F8 != -1)
  {
    v9 = swift_once();
  }

  v4 = *(off_1ED6BF200 + 2);
  MEMORY[0x1EEE9AC00](v9);
  os_unfair_lock_lock((v4 + 32));
  sub_1BBAB2908((v4 + 16), v13);
  if (v3)
  {
    goto LABEL_15;
  }

  os_unfair_lock_unlock((v4 + 32));
  if (v13[2])
  {
    sub_1BBB333BC(v13);
    swift_unknownObjectRelease();
  }
}

void IntelligenceElement.AsyncContent.contentLoadFailed(_:)()
{
  v1 = *(v0 + 64);
  os_unfair_lock_lock((v1 + 32));
  sub_1BBB08C44((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

void sub_1BBB08854(_BYTE *a1, id a2, uint64_t a3)
{
  v4 = a1;
  if (*a1)
  {
    v23 = 29;
    sub_1BBB84028();

    *&v27[0] = 0xD00000000000001BLL;
    *(&v27[0] + 1) = 0x80000001BBB9C080;
    if ((*(v4 + 1) & 0xF000000000000006) == 0xF000000000000006)
    {
      v24 = 0x64656C696166;
    }

    else
    {
      v24 = 0x6574656C706D6F63;
    }

    if ((*(v4 + 1) & 0xF000000000000006) == 0xF000000000000006)
    {
      v25 = 0xE600000000000000;
    }

    else
    {
      v25 = 0xE900000000000064;
    }

    MEMORY[0x1BFB16150](v24, v25);

    sub_1BBB840A8();
    __break(1u);
LABEL_21:
    os_unfair_lock_unlock((v23 + 32));
    __break(1u);
    return;
  }

  v5 = v3;
  if (a2)
  {
    v8 = a2;
    if (qword_1ED6BDEB8 != -1)
    {
      swift_once();
    }

    v9 = sub_1BBB83758();
    __swift_project_value_buffer(v9, qword_1ED6BDEC0);
    v10 = a2;
    v11 = sub_1BBB83738();
    v12 = sub_1BBB83D48();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v27[0] = v14;
      *v13 = 136446466;
      swift_getErrorValue();
      v15 = sub_1BBB84388();
      v17 = sub_1BBA85E50(v15, v16, v27);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      v26[0] = a2;
      v18 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B9D0);
      v19 = sub_1BBB83A78();
      v21 = sub_1BBA85E50(v19, v20, v27);
      v5 = v3;

      *(v13 + 14) = v21;
      _os_log_impl(&dword_1BBA81000, v11, v12, "Async content load failed with error: %{public}s; underlying error: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB174E0](v14, -1, -1);
      MEMORY[0x1BFB174E0](v13, -1, -1);
    }

    else
    {
    }
  }

  *v4 = 1;
  v22 = *(a3 + 32);
  v27[0] = *(a3 + 16);
  v27[1] = v22;
  v28 = *(a3 + 48);
  if (qword_1ED6BF1F8 != -1)
  {
    a1 = swift_once();
  }

  v23 = *(off_1ED6BF200 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v23 + 32));
  sub_1BBAB28E8((v23 + 16), v26);
  if (v5)
  {
    goto LABEL_21;
  }

  os_unfair_lock_unlock((v23 + 32));
  if (v26[2])
  {
    sub_1BBB333BC(v26);
    swift_unknownObjectRelease();
  }
}

uint64_t IntelligenceElement.AsyncContent.deinit()
{

  sub_1BBA8ABF8(*(v0 + 56));

  return v0;
}

uint64_t IntelligenceElement.AsyncContent.__deallocating_deinit()
{

  sub_1BBA8ABF8(*(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t IntelligenceElement.AsyncContent.description.getter()
{
  sub_1BBB84028();

  MEMORY[0x1BFB16150](*(v0 + 32), *(v0 + 40));
  v1 = MEMORY[0x1BFB16150](0x626C6C6166202C22, 0xED0000203A6B6361);
  v2 = IntelligenceElement.Content.description.getter(v1);
  MEMORY[0x1BFB16150](v2);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return 0x2228636E797341;
}

uint64_t _s21UIIntelligenceSupport19IntelligenceElementV12AsyncContentC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  os_unfair_lock_lock((v4 + 32));
  v5 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 32));
  if (v5 == 1 && (v6 = *(a2 + 64), os_unfair_lock_lock((v6 + 32)), v7 = *(v6 + 16), os_unfair_lock_unlock((v6 + 32)), v7 == 1))
  {
    os_unfair_lock_lock((v4 + 32));
    v8 = *(v4 + 24);
    sub_1BBB0901C(v8);
    os_unfair_lock_unlock((v4 + 32));
    if ((~v8 & 0xF000000000000006) == 0)
    {
      v8 = *(a1 + 56);
      sub_1BBA8BD24(v8);
    }

    v13 = v8;
    os_unfair_lock_lock((v6 + 32));
    v9 = *(v6 + 24);
    sub_1BBB0901C(v9);
    os_unfair_lock_unlock((v6 + 32));
    if ((~v9 & 0xF000000000000006) == 0)
    {
      v9 = *(a2 + 56);
      sub_1BBA8BD24(v9);
    }

    v12 = v9;
    v10 = static IntelligenceElement.Content.== infix(_:_:)(&v13, &v12);
    sub_1BBA8ABF8(v12);
    sub_1BBA8ABF8(v13);
  }

  else
  {
    v10 = a1 == a2;
  }

  return v10 & 1;
}

uint64_t get_enum_tag_for_layout_string_21UIIntelligenceSupport19IntelligenceElementV7ContentOSg(void *a1)
{
  v1 = (((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3) >> 1) & 0xFFFFFFDF | (32 * ((*a1 >> 1) & 1));
  v2 = v1 ^ 0x3C;
  v3 = 64 - v1;
  if (v2 >= 0x2C)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BBB08F78(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1BBB08FCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1BBB0901C(unint64_t result)
{
  if ((~result & 0xF000000000000006) != 0)
  {
    return sub_1BBA8BD24(result);
  }

  return result;
}

uint64_t static IntelligenceFragment.RemoteContext.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15[-v8];
  v10 = *a2;
  v11 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v12 = _s13RemoteContextV7StorageVMa(0);
  sub_1BBB0F3B0(v11 + *(v12 + 20), v9, type metadata accessor for IntelligenceFragment.RemoteID);
  v13 = v10 + *(*v10 + 88);
  swift_beginAccess();
  sub_1BBB0F3B0(v13 + *(v12 + 20), v6, type metadata accessor for IntelligenceFragment.RemoteID);
  LOBYTE(v13) = sub_1BBB834C8();
  sub_1BBACD424(v6);
  sub_1BBACD424(v9);
  return v13 & 1;
}

uint64_t IntelligenceFragment.RemoteContext.remoteID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v4 = _s13RemoteContextV7StorageVMa(0);
  return sub_1BBB0F3B0(v3 + *(v4 + 20), a1, type metadata accessor for IntelligenceFragment.RemoteID);
}

uint64_t UIIntelligenceCollectionRemoteContextWrapper.remoteContext.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21UIIntelligenceSupport44UIIntelligenceCollectionRemoteContextWrapper_remoteContext;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t UIIntelligenceCollectionRemoteContextWrapper.remoteContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC21UIIntelligenceSupport44UIIntelligenceCollectionRemoteContextWrapper_remoteContext;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

id UIIntelligenceCollectionRemoteContextWrapper.__allocating_init(remoteContext:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC21UIIntelligenceSupport44UIIntelligenceCollectionRemoteContextWrapper_remoteContext] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id UIIntelligenceCollectionRemoteContextWrapper.init(remoteContext:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC21UIIntelligenceSupport44UIIntelligenceCollectionRemoteContextWrapper_remoteContext] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall UIIntelligenceCollectionRemoteContextWrapper.encode(with:)(NSCoder with)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  swift_beginAccess();
  v3 = *MEMORY[0x1E696A508];
  sub_1BBB83A18();
  sub_1BBACD318();

  sub_1BBB83D68();

  v4 = [v2 encodedData];
  v5 = sub_1BBB83468();
  v7 = v6;

  v8 = sub_1BBB83458();
  sub_1BBA885E8(v5, v7);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v3];
}

id UIIntelligenceCollectionRemoteContextWrapper.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1BBB09BC4();
  sub_1BBB83A18();
  v5 = sub_1BBB83E68();

  if (!v5)
  {
LABEL_7:

    goto LABEL_8;
  }

  v6 = sub_1BBB83468();
  v8 = v7;

  v9 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_1BBAE58D8(v6, v8);
  v10 = sub_1BBB0F140();
  sub_1BBA885E8(v6, v8);
  if (v10)
  {
    sub_1BBB83A18();
    sub_1BBACD36C();
    sub_1BBB83D88();
    sub_1BBA885E8(v6, v8);

    if (v14)
    {
      *&v2[OBJC_IVAR____TtC21UIIntelligenceSupport44UIIntelligenceCollectionRemoteContextWrapper_remoteContext] = v14;
      v13.receiver = v2;
      v13.super_class = ObjectType;
      v11 = objc_msgSendSuper2(&v13, sel_init);

      return v11;
    }

    goto LABEL_7;
  }

  sub_1BBA885E8(v6, v8);
LABEL_8:
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t UIIntelligenceCollectionRemoteContextWrapper.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  sub_1BBB0F200(a1, v21);
  if (!v22)
  {
    sub_1BBB0F270(v21);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v18 = 0;
    return v18 & 1;
  }

  v10 = v20[7];
  v11 = OBJC_IVAR____TtC21UIIntelligenceSupport44UIIntelligenceCollectionRemoteContextWrapper_remoteContext;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = OBJC_IVAR____TtC21UIIntelligenceSupport44UIIntelligenceCollectionRemoteContextWrapper_remoteContext;
  swift_beginAccess();
  v14 = *&v10[v13];
  v15 = v12 + *(*v12 + 88);
  swift_beginAccess();
  v16 = _s13RemoteContextV7StorageVMa(0);
  sub_1BBB0F3B0(v15 + *(v16 + 20), v9, type metadata accessor for IntelligenceFragment.RemoteID);
  v17 = v14 + *(*v14 + 88);
  swift_beginAccess();
  sub_1BBB0F3B0(v17 + *(v16 + 20), v6, type metadata accessor for IntelligenceFragment.RemoteID);

  v18 = sub_1BBB834C8();
  sub_1BBACD424(v6);
  sub_1BBACD424(v9);

  return v18 & 1;
}

id UIIntelligenceCollectionRemoteContextWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UIIntelligenceCollectionRemoteContextWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IntelligenceFragment.RemoteID.remoteDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20));

  return v1;
}

unint64_t sub_1BBB09BC4()
{
  result = qword_1EBC7AEA0;
  if (!qword_1EBC7AEA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC7AEA0);
  }

  return result;
}

uint64_t IntelligenceFragment.RemoteID.hash(into:)()
{
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1EBC7AE48);

  return sub_1BBB83918();
}

uint64_t IntelligenceFragment.RemoteID.description.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20));
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    sub_1BBB84028();

    sub_1BBB834F8();
    sub_1BBA99E6C(&qword_1ED6BE440);
    v4 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v4);

    MEMORY[0x1BFB16150](2564154, 0xE300000000000000);
    MEMORY[0x1BFB16150](v3, v2);
    v5 = 10535;
    v6 = 0xE200000000000000;
  }

  else
  {
    sub_1BBB834F8();
    sub_1BBA99E6C(&qword_1ED6BE440);
    v7 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v7);

    v5 = 41;
    v6 = 0xE100000000000000;
  }

  MEMORY[0x1BFB16150](v5, v6);
  return 0x444965746F6D6552;
}

uint64_t sub_1BBB09DD0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1BBB09E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1BBB842F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BBB9C190 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBB842F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BBB09EE0(uint64_t a1)
{
  v2 = sub_1BBB0F2D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB09F1C(uint64_t a1)
{
  v2 = sub_1BBB0F2D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceFragment.RemoteID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C238);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB0F2D8();
  sub_1BBB84478();
  v8[15] = 0;
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1ED6BDE18);
  sub_1BBB84288();
  if (!v1)
  {
    type metadata accessor for IntelligenceFragment.RemoteID(0);
    v8[14] = 1;
    sub_1BBB84218();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t IntelligenceFragment.RemoteID.hashValue.getter()
{
  sub_1BBB843D8();
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1EBC7AE48);
  sub_1BBB83918();
  return sub_1BBB84438();
}

uint64_t IntelligenceFragment.RemoteID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC7C240);
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v22 - v5;
  v7 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB0F2D8();
  sub_1BBB84458();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v9;
  v25 = v4;
  v10 = sub_1BBB834F8();
  v24 = &v22;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  sub_1BBA99E6C(&qword_1EBC7B1F8);
  v14 = v27;
  sub_1BBB841B8();
  v22 = v11;
  v15 = *(v11 + 32);
  v16 = v23;
  v15(v23, v13, v10);
  v28 = 1;
  v17 = sub_1BBB84138();
  v19 = v18;
  (*(v25 + 8))(v6, v14);
  v20 = (v16 + *(v7 + 20));
  *v20 = v17;
  v20[1] = v19;
  sub_1BBB0F3B0(v16, v26, type metadata accessor for IntelligenceFragment.RemoteID);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BBACD424(v16);
}

uint64_t sub_1BBB0A4B4()
{
  sub_1BBB843D8();
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1EBC7AE48);
  sub_1BBB83918();
  return sub_1BBB84438();
}

uint64_t sub_1BBB0A51C()
{
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1EBC7AE48);

  return sub_1BBB83918();
}

uint64_t IntelligenceFragment.LocalContext.request.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[7];
  v20 = v1[6];
  v21[0] = v3;
  *(v21 + 15) = *(v1 + 127);
  v4 = v1[1];
  v5 = v1[3];
  v16 = v1[2];
  v6 = v16;
  v17 = v5;
  v7 = v1[3];
  v8 = v1[5];
  v18 = v1[4];
  v9 = v18;
  v19 = v8;
  v10 = v1[1];
  v15[0] = *v1;
  v11 = v15[0];
  v15[1] = v10;
  v12 = v1[7];
  a1[6] = v20;
  a1[7] = v12;
  *(a1 + 127) = *(v1 + 127);
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v2;
  *a1 = v11;
  a1[1] = v4;
  return sub_1BBA94F7C(v15, &v14);
}

__n128 IntelligenceFragment.LocalContext.request.setter(uint64_t a1)
{
  v3 = v1[7];
  v11[6] = v1[6];
  v12[0] = v3;
  *(v12 + 15) = *(v1 + 127);
  v4 = v1[3];
  v11[2] = v1[2];
  v11[3] = v4;
  v5 = v1[5];
  v11[4] = v1[4];
  v11[5] = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  sub_1BBB0F32C(v11);
  v7 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v7;
  *(v1 + 127) = *(a1 + 127);
  v8 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v8;
  v9 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v9;
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t IntelligenceFragment.LocalContext.createRemoteContext()@<X0>(uint64_t *a1@<X8>)
{
  v3 = _s13RemoteContextV7StorageVMa(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1[7];
  v27 = v1[6];
  v28[0] = v7;
  *(v28 + 15) = *(v1 + 127);
  v8 = v1[3];
  v23 = v1[2];
  v24 = v8;
  v9 = v1[5];
  v25 = v1[4];
  v26 = v9;
  v10 = v1[1];
  v21 = *v1;
  v22 = v10;
  v11 = v6 + *(v4 + 28);
  sub_1BBA94F7C(&v21, v20);
  sub_1BBB834E8();
  v12 = &v11[*(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20)];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = v24;
  v6[2] = v23;
  v6[3] = v13;
  *(v6 + 127) = *(v28 + 15);
  v14 = v28[0];
  v6[6] = v27;
  v6[7] = v14;
  v15 = v26;
  v6[4] = v25;
  v6[5] = v15;
  v16 = v22;
  *v6 = v21;
  v6[1] = v16;
  v17 = (v6 + *(v4 + 32));
  *v17 = 0x3FF0000000000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = 0x3FF0000000000000;
  v17[4] = 0;
  v17[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
  v18 = swift_allocObject();
  result = sub_1BBB0F4D4(v6, v18 + *(*v18 + 88), _s13RemoteContextV7StorageVMa);
  *a1 = v18;
  return result;
}

uint64_t IntelligenceFragment.LocalContext.createRemoteContext(description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = _s13RemoteContextV7StorageVMa(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v3[7];
  v31 = v3[6];
  v32[0] = v11;
  *(v32 + 15) = *(v3 + 127);
  v12 = v3[3];
  v27 = v3[2];
  v28 = v12;
  v13 = v3[5];
  v29 = v3[4];
  v30 = v13;
  v14 = v3[1];
  v25 = *v3;
  v26 = v14;
  v15 = v10 + *(v8 + 28);
  sub_1BBA94F7C(&v25, v24);
  sub_1BBB834E8();
  v16 = &v15[*(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20)];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = v28;
  v10[2] = v27;
  v10[3] = v17;
  *(v10 + 127) = *(v32 + 15);
  v18 = v32[0];
  v10[6] = v31;
  v10[7] = v18;
  v19 = v30;
  v10[4] = v29;
  v10[5] = v19;
  v20 = v26;
  *v10 = v25;
  v10[1] = v20;
  v21 = (v10 + *(v8 + 32));
  *v21 = 0x3FF0000000000000;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = 0x3FF0000000000000;
  v21[4] = 0;
  v21[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
  v22 = swift_allocObject();
  sub_1BBB0F4D4(v10, v22 + *(*v22 + 88), _s13RemoteContextV7StorageVMa);
  *a3 = v22;
}

uint64_t IntelligenceFragment.LocalContext.createRemoteContext(boundingBoxTransform:)@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = _s13RemoteContextV7StorageVMa(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2[7];
  v30 = v2[6];
  v31[0] = v9;
  *(v31 + 15) = *(v2 + 127);
  v10 = v2[3];
  v26 = v2[2];
  v27 = v10;
  v11 = v2[5];
  v28 = v2[4];
  v29 = v11;
  v12 = v2[1];
  v24 = *v2;
  v25 = v12;
  v13 = v8 + *(v6 + 28);
  sub_1BBA94F7C(&v24, v23);
  sub_1BBB834E8();
  v14 = &v13[*(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20)];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = v27;
  v8[2] = v26;
  v8[3] = v15;
  *(v8 + 127) = *(v31 + 15);
  v16 = v31[0];
  v8[6] = v30;
  v8[7] = v16;
  v17 = v29;
  v8[4] = v28;
  v8[5] = v17;
  v18 = v25;
  *v8 = v24;
  v8[1] = v18;
  v19 = (v8 + *(v6 + 32));
  v20 = a1[2];
  v19[1] = a1[1];
  v19[2] = v20;
  *v19 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
  v21 = swift_allocObject();
  result = sub_1BBB0F4D4(v8, v21 + *(*v21 + 88), _s13RemoteContextV7StorageVMa);
  *a2 = v21;
  return result;
}

uint64_t IntelligenceFragment.LocalContext.createRemoteContext(boundingBoxTransform:description:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = _s13RemoteContextV7StorageVMa(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v4[7];
  v34 = v4[6];
  v35[0] = v13;
  *(v35 + 15) = *(v4 + 127);
  v14 = v4[3];
  v30 = v4[2];
  v31 = v14;
  v15 = v4[5];
  v32 = v4[4];
  v33 = v15;
  v16 = v4[1];
  v28 = *v4;
  v29 = v16;
  v17 = v12 + *(v10 + 28);
  sub_1BBA94F7C(&v28, v27);
  sub_1BBB834E8();
  v18 = &v17[*(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20)];
  *v18 = a2;
  *(v18 + 1) = a3;
  v19 = v31;
  v12[2] = v30;
  v12[3] = v19;
  *(v12 + 127) = *(v35 + 15);
  v20 = v35[0];
  v12[6] = v34;
  v12[7] = v20;
  v21 = v33;
  v12[4] = v32;
  v12[5] = v21;
  v22 = v29;
  *v12 = v28;
  v12[1] = v22;
  v23 = (v12 + *(v10 + 32));
  v24 = a1[2];
  v23[1] = a1[1];
  v23[2] = v24;
  *v23 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
  v25 = swift_allocObject();
  sub_1BBB0F4D4(v12, v25 + *(*v25 + 88), _s13RemoteContextV7StorageVMa);
  *a4 = v25;
}

uint64_t static IntelligenceFragment.LocalContext.== infix(_:_:)(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v3 = a1[7];
  v41 = a1[6];
  v42[0] = v3;
  *(v42 + 15) = *(a1 + 127);
  v4 = a1[1];
  v5 = a1[3];
  v37 = a1[2];
  v38 = v5;
  v6 = a1[3];
  v7 = a1[5];
  v39 = a1[4];
  v40 = v7;
  v8 = a1[1];
  v36[0] = *a1;
  v36[1] = v8;
  v9 = a2[5];
  v10 = a2[7];
  v48 = a2[6];
  v49[0] = v10;
  *(v49 + 15) = *(a2 + 127);
  v11 = a2[1];
  v12 = a2[3];
  v44 = a2[2];
  v45 = v12;
  v13 = a2[3];
  v14 = a2[5];
  v46 = a2[4];
  v47 = v14;
  v15 = a2[1];
  v43[0] = *a2;
  v43[1] = v15;
  v16 = a1[7];
  v34 = v41;
  v35[0] = v16;
  *(v35 + 15) = *(a1 + 127);
  v30 = v37;
  v31 = v6;
  v32 = v39;
  v33 = v2;
  v28 = v36[0];
  v29 = v4;
  v17 = a2[7];
  v26 = v48;
  v27[0] = v17;
  *(v27 + 15) = *(a2 + 127);
  v22 = v44;
  v23 = v13;
  v24 = v46;
  v25 = v9;
  v20 = v43[0];
  v21 = v11;
  sub_1BBA94F7C(v36, v52);
  sub_1BBA94F7C(v43, v52);
  v18 = _s21UIIntelligenceSupport29IntelligenceCollectionRequestV2eeoiySbAC_ACtFZ_0(&v28, &v20);
  v50[6] = v26;
  v51[0] = v27[0];
  *(v51 + 15) = *(v27 + 15);
  v50[2] = v22;
  v50[3] = v23;
  v50[4] = v24;
  v50[5] = v25;
  v50[0] = v20;
  v50[1] = v21;
  sub_1BBA96D48(v50);
  v52[6] = v34;
  v53[0] = v35[0];
  *(v53 + 15) = *(v35 + 15);
  v52[2] = v30;
  v52[3] = v31;
  v52[4] = v32;
  v52[5] = v33;
  v52[0] = v28;
  v52[1] = v29;
  sub_1BBA96D48(v52);
  return v18 & 1;
}

uint64_t sub_1BBB0AE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBB842F8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBB0AF1C(uint64_t a1)
{
  v2 = sub_1BBB0F35C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB0AF58(uint64_t a1)
{
  v2 = sub_1BBB0F35C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceFragment.LocalContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C258);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[7];
  v28 = v1[6];
  v29[0] = v7;
  *(v29 + 15) = *(v1 + 127);
  v8 = v1[3];
  v24 = v1[2];
  v25 = v8;
  v9 = v1[5];
  v26 = v1[4];
  v27 = v9;
  v10 = v1[1];
  v22 = *v1;
  v23 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA94F7C(&v22, &v14);
  sub_1BBB0F35C();
  sub_1BBB84478();
  v20 = v28;
  v21[0] = v29[0];
  *(v21 + 15) = *(v29 + 15);
  v16 = v24;
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v14 = v22;
  v15 = v23;
  sub_1BBA93954();
  sub_1BBB84288();
  v12[6] = v20;
  v13[0] = v21[0];
  *(v13 + 15) = *(v21 + 15);
  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v12[5] = v19;
  v12[0] = v14;
  v12[1] = v15;
  sub_1BBA96D48(v12);
  return (*(v4 + 8))(v6, v3);
}

uint64_t IntelligenceFragment.LocalContext.hashValue.getter()
{
  sub_1BBB843D8();
  IntelligenceCollectionRequest.hash(into:)(v1);
  return sub_1BBB84438();
}

uint64_t IntelligenceFragment.LocalContext.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC7C270);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB0F35C();
  sub_1BBB84458();
  if (!v2)
  {
    sub_1BBA92DFC();
    sub_1BBB841B8();
    (*(v6 + 8))(v8, v5);
    v9 = v15[0];
    a2[6] = v14[6];
    a2[7] = v9;
    *(a2 + 127) = *(v15 + 15);
    v10 = v14[3];
    a2[2] = v14[2];
    a2[3] = v10;
    v11 = v14[5];
    a2[4] = v14[4];
    a2[5] = v11;
    v12 = v14[1];
    *a2 = v14[0];
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBB0B3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = _s13RemoteContextV7StorageVMa(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v3[7];
  v31 = v3[6];
  v32[0] = v11;
  *(v32 + 15) = *(v3 + 127);
  v12 = v3[3];
  v27 = v3[2];
  v28 = v12;
  v13 = v3[5];
  v29 = v3[4];
  v30 = v13;
  v14 = v3[1];
  v25 = *v3;
  v26 = v14;
  v15 = v10 + *(v8 + 28);
  sub_1BBA94F7C(&v25, v24);
  sub_1BBB834E8();
  v16 = &v15[*(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20)];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = v28;
  v10[2] = v27;
  v10[3] = v17;
  *(v10 + 127) = *(v32 + 15);
  v18 = v32[0];
  v10[6] = v31;
  v10[7] = v18;
  v19 = v30;
  v10[4] = v29;
  v10[5] = v19;
  v20 = v26;
  *v10 = v25;
  v10[1] = v20;
  v21 = (v10 + *(v8 + 32));
  *v21 = 0x3FF0000000000000;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = 0x3FF0000000000000;
  v21[4] = 0;
  v21[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
  v22 = swift_allocObject();
  sub_1BBB0F4D4(v10, v22 + *(*v22 + 88), _s13RemoteContextV7StorageVMa);
  *a3 = v22;
}

uint64_t sub_1BBB0B568@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = _s13RemoteContextV7StorageVMa(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v4[7];
  v34 = v4[6];
  v35[0] = v13;
  *(v35 + 15) = *(v4 + 127);
  v14 = v4[3];
  v30 = v4[2];
  v31 = v14;
  v15 = v4[5];
  v32 = v4[4];
  v33 = v15;
  v16 = v4[1];
  v28 = *v4;
  v29 = v16;
  v17 = v12 + *(v10 + 28);
  sub_1BBA94F7C(&v28, v27);
  sub_1BBB834E8();
  v18 = &v17[*(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20)];
  *v18 = a2;
  *(v18 + 1) = a3;
  v19 = v31;
  v12[2] = v30;
  v12[3] = v19;
  *(v12 + 127) = *(v35 + 15);
  v20 = v35[0];
  v12[6] = v34;
  v12[7] = v20;
  v21 = v33;
  v12[4] = v32;
  v12[5] = v21;
  v22 = v29;
  *v12 = v28;
  v12[1] = v22;
  v23 = (v12 + *(v10 + 32));
  v24 = a1[2];
  v23[1] = a1[1];
  v23[2] = v24;
  *v23 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
  v25 = swift_allocObject();
  sub_1BBB0F4D4(v12, v25 + *(*v25 + 88), _s13RemoteContextV7StorageVMa);
  *a4 = v25;
}

uint64_t sub_1BBB0B708@<X0>(uint64_t *a1@<X8>)
{
  v3 = _s13RemoteContextV7StorageVMa(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1[7];
  v27 = v1[6];
  v28[0] = v7;
  *(v28 + 15) = *(v1 + 127);
  v8 = v1[3];
  v23 = v1[2];
  v24 = v8;
  v9 = v1[5];
  v25 = v1[4];
  v26 = v9;
  v10 = v1[1];
  v21 = *v1;
  v22 = v10;
  v11 = v6 + *(v4 + 28);
  sub_1BBA94F7C(&v21, v20);
  sub_1BBB834E8();
  v12 = &v11[*(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20)];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = v24;
  v6[2] = v23;
  v6[3] = v13;
  *(v6 + 127) = *(v28 + 15);
  v14 = v28[0];
  v6[6] = v27;
  v6[7] = v14;
  v15 = v26;
  v6[4] = v25;
  v6[5] = v15;
  v16 = v22;
  *v6 = v21;
  v6[1] = v16;
  v17 = (v6 + *(v4 + 32));
  *v17 = 0x3FF0000000000000;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = 0x3FF0000000000000;
  v17[4] = 0;
  v17[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
  v18 = swift_allocObject();
  result = sub_1BBB0F4D4(v6, v18 + *(*v18 + 88), _s13RemoteContextV7StorageVMa);
  *a1 = v18;
  return result;
}

uint64_t sub_1BBB0B88C@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = _s13RemoteContextV7StorageVMa(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v2[7];
  v30 = v2[6];
  v31[0] = v9;
  *(v31 + 15) = *(v2 + 127);
  v10 = v2[3];
  v26 = v2[2];
  v27 = v10;
  v11 = v2[5];
  v28 = v2[4];
  v29 = v11;
  v12 = v2[1];
  v24 = *v2;
  v25 = v12;
  v13 = v8 + *(v6 + 28);
  sub_1BBA94F7C(&v24, v23);
  sub_1BBB834E8();
  v14 = &v13[*(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20)];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = v27;
  v8[2] = v26;
  v8[3] = v15;
  *(v8 + 127) = *(v31 + 15);
  v16 = v31[0];
  v8[6] = v30;
  v8[7] = v16;
  v17 = v29;
  v8[4] = v28;
  v8[5] = v17;
  v18 = v25;
  *v8 = v24;
  v8[1] = v18;
  v19 = (v8 + *(v6 + 32));
  v20 = a1[2];
  v19[1] = a1[1];
  v19[2] = v20;
  *v19 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
  v21 = swift_allocObject();
  result = sub_1BBB0F4D4(v8, v21 + *(*v21 + 88), _s13RemoteContextV7StorageVMa);
  *a2 = v21;
  return result;
}

uint64_t sub_1BBB0BA14()
{
  sub_1BBB843D8();
  IntelligenceCollectionRequest.hash(into:)(v1);
  return sub_1BBB84438();
}

uint64_t sub_1BBB0BAD4()
{
  sub_1BBB843D8();
  IntelligenceCollectionRequest.hash(into:)(v1);
  return sub_1BBB84438();
}

uint64_t sub_1BBB0BB6C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v3 = a1[7];
  v41 = a1[6];
  v42[0] = v3;
  *(v42 + 15) = *(a1 + 127);
  v4 = a1[1];
  v5 = a1[3];
  v37 = a1[2];
  v38 = v5;
  v6 = a1[3];
  v7 = a1[5];
  v39 = a1[4];
  v40 = v7;
  v8 = a1[1];
  v36[0] = *a1;
  v36[1] = v8;
  v9 = a2[5];
  v10 = a2[7];
  v48 = a2[6];
  v49[0] = v10;
  *(v49 + 15) = *(a2 + 127);
  v11 = a2[1];
  v12 = a2[3];
  v44 = a2[2];
  v45 = v12;
  v13 = a2[3];
  v14 = a2[5];
  v46 = a2[4];
  v47 = v14;
  v15 = a2[1];
  v43[0] = *a2;
  v43[1] = v15;
  v16 = a1[7];
  v34 = v41;
  v35[0] = v16;
  *(v35 + 15) = *(a1 + 127);
  v30 = v37;
  v31 = v6;
  v32 = v39;
  v33 = v2;
  v28 = v36[0];
  v29 = v4;
  v17 = a2[7];
  v26 = v48;
  v27[0] = v17;
  *(v27 + 15) = *(a2 + 127);
  v22 = v44;
  v23 = v13;
  v24 = v46;
  v25 = v9;
  v20 = v43[0];
  v21 = v11;
  sub_1BBA94F7C(v36, v52);
  sub_1BBA94F7C(v43, v52);
  v18 = _s21UIIntelligenceSupport29IntelligenceCollectionRequestV2eeoiySbAC_ACtFZ_0(&v28, &v20);
  v50[6] = v26;
  v51[0] = v27[0];
  *(v51 + 15) = *(v27 + 15);
  v50[2] = v22;
  v50[3] = v23;
  v50[4] = v24;
  v50[5] = v25;
  v50[0] = v20;
  v50[1] = v21;
  sub_1BBA96D48(v50);
  v52[6] = v34;
  v53[0] = v35[0];
  *(v53 + 15) = *(v35 + 15);
  v52[2] = v30;
  v52[3] = v31;
  v52[4] = v32;
  v52[5] = v33;
  v52[0] = v28;
  v52[1] = v29;
  sub_1BBA96D48(v52);
  return v18 & 1;
}

uint64_t IntelligenceFragment.RemoteContext.request.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (*v1 + *(**v1 + 88));
  swift_beginAccess();
  v16[0] = *v3;
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v16[3] = v3[3];
  v16[4] = v6;
  v16[1] = v4;
  v16[2] = v5;
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  *(v17 + 15) = *(v3 + 127);
  v16[6] = v8;
  v17[0] = v9;
  v16[5] = v7;
  v10 = v3[7];
  a1[6] = v3[6];
  a1[7] = v10;
  *(a1 + 127) = *(v3 + 127);
  v11 = v3[3];
  a1[2] = v3[2];
  a1[3] = v11;
  v12 = v3[5];
  a1[4] = v3[4];
  a1[5] = v12;
  v13 = v3[1];
  *a1 = *v3;
  a1[1] = v13;
  return sub_1BBA94F7C(v16, v15);
}

uint64_t sub_1BBB0BDA4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (*a1 + *(**a1 + 88));
  swift_beginAccess();
  v16[0] = *v3;
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v16[3] = v3[3];
  v16[4] = v6;
  v16[1] = v4;
  v16[2] = v5;
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  *(v17 + 15) = *(v3 + 127);
  v16[6] = v8;
  v17[0] = v9;
  v16[5] = v7;
  v10 = v3[7];
  a2[6] = v3[6];
  a2[7] = v10;
  *(a2 + 127) = *(v3 + 127);
  v11 = v3[3];
  a2[2] = v3[2];
  a2[3] = v11;
  v12 = v3[5];
  a2[4] = v3[4];
  a2[5] = v12;
  v13 = v3[1];
  *a2 = *v3;
  a2[1] = v13;
  return sub_1BBA94F7C(v16, v15);
}

uint64_t IntelligenceFragment.RemoteContext.request.setter(_OWORD *a1)
{
  v3 = _s13RemoteContextV7StorageVMa(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v1;
  v7 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBB0F3B0(v6 + v7, v5, _s13RemoteContextV7StorageVMa);
  v8 = v5[7];
  v21[6] = v5[6];
  v22[0] = v8;
  *(v22 + 15) = *(v5 + 127);
  v9 = v5[3];
  v21[2] = v5[2];
  v21[3] = v9;
  v10 = v5[5];
  v21[4] = v5[4];
  v21[5] = v10;
  v11 = v5[1];
  v21[0] = *v5;
  v21[1] = v11;
  sub_1BBA96D48(v21);
  v12 = a1[7];
  v5[6] = a1[6];
  v5[7] = v12;
  *(v5 + 127) = *(a1 + 127);
  v13 = a1[3];
  v5[2] = a1[2];
  v5[3] = v13;
  v14 = a1[5];
  v5[4] = a1[4];
  v5[5] = v14;
  v15 = a1[1];
  *v5 = *a1;
  v5[1] = v15;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v16 = *v1;
    v17 = *(*v16 + 88);
    swift_beginAccess();
    sub_1BBB0F418(v5, v16 + v17, _s13RemoteContextV7StorageVMa);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
    v19 = swift_allocObject();
    sub_1BBB0F4D4(v5, v19 + *(*v19 + 88), _s13RemoteContextV7StorageVMa);

    *v1 = v19;
  }

  return result;
}

void (*IntelligenceFragment.RemoteContext.request.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x4F0uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 1224) = v1;
  v6 = *(*(_s13RemoteContextV7StorageVMa(0) - 8) + 64);
  if (v3)
  {
    *(v5 + 1232) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 1232) = malloc(v6);
    v7 = malloc(v6);
  }

  *(v5 + 1240) = v7;
  v8 = *v1;
  *(v5 + 1248) = *v1;
  v9 = *(*v8 + 88);
  *(v5 + 1256) = v9;
  v10 = (v8 + v9);
  swift_beginAccess();
  *v5 = *v10;
  v11 = v10[1];
  v12 = v10[2];
  v13 = v10[4];
  *(v5 + 48) = v10[3];
  *(v5 + 64) = v13;
  *(v5 + 16) = v11;
  *(v5 + 32) = v12;
  v14 = v10[5];
  v15 = v10[6];
  v16 = v10[7];
  *(v5 + 127) = *(v10 + 127);
  *(v5 + 96) = v15;
  *(v5 + 112) = v16;
  *(v5 + 80) = v14;
  memmove((v5 + 144), v10, 0x8FuLL);
  sub_1BBA94F7C(v5, v5 + 288);
  return sub_1BBB0C1A4;
}

void sub_1BBB0C1A4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 144);
  if (a2)
  {
    v4 = *(v2 + 1256);
    v5 = *(v2 + 1248);
    v6 = *(v2 + 1232);
    v7 = *(*a1 + 256);
    *(v2 + 672) = *(*a1 + 240);
    *(v2 + 688) = v7;
    *(v2 + 703) = *(v3 + 127);
    v8 = v3[3];
    *(v2 + 608) = v3[2];
    *(v2 + 624) = v8;
    v9 = v3[5];
    *(v2 + 640) = v3[4];
    *(v2 + 656) = v9;
    v10 = v3[1];
    *(v2 + 576) = *v3;
    *(v2 + 592) = v10;
    sub_1BBB0F3B0(v5 + v4, v6, _s13RemoteContextV7StorageVMa);
    *(v2 + 432) = *v6;
    v11 = v6[4];
    v13 = v6[1];
    v12 = v6[2];
    *(v2 + 480) = v6[3];
    *(v2 + 496) = v11;
    *(v2 + 448) = v13;
    *(v2 + 464) = v12;
    v15 = v6[6];
    v14 = v6[7];
    v16 = v6[5];
    *(v2 + 559) = *(v6 + 127);
    *(v2 + 528) = v15;
    *(v2 + 544) = v14;
    *(v2 + 512) = v16;
    sub_1BBA94F7C(v2 + 576, v2 + 720);
    sub_1BBA96D48(v2 + 432);
    *v6 = *(v2 + 576);
    v17 = *(v2 + 640);
    v19 = *(v2 + 592);
    v18 = *(v2 + 608);
    v6[3] = *(v2 + 624);
    v6[4] = v17;
    v6[1] = v19;
    v6[2] = v18;
    v21 = *(v2 + 672);
    v20 = *(v2 + 688);
    v22 = *(v2 + 656);
    *(v6 + 127) = *(v2 + 703);
    v6[6] = v21;
    v6[7] = v20;
    v6[5] = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v2 + 1232);
    v25 = *(v2 + 1224);
    if (isUniquelyReferenced_nonNull_native)
    {
      v26 = *v25;
      v27 = *(**v25 + 88);
      swift_beginAccess();
      sub_1BBB0F418(v24, v26 + v27, _s13RemoteContextV7StorageVMa);
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
      v40 = swift_allocObject();
      sub_1BBB0F4D4(v24, v40 + *(*v40 + 88), _s13RemoteContextV7StorageVMa);

      *v25 = v40;
    }

    v41 = *(v2 + 1240);
    v42 = *(v2 + 1232);
    v43 = v3[7];
    *(v2 + 960) = v3[6];
    *(v2 + 976) = v43;
    *(v2 + 991) = *(v3 + 127);
    v44 = v3[3];
    *(v2 + 896) = v3[2];
    *(v2 + 912) = v44;
    v45 = v3[5];
    *(v2 + 928) = v3[4];
    *(v2 + 944) = v45;
    v46 = v3[1];
    *(v2 + 864) = *v3;
    *(v2 + 880) = v46;
    sub_1BBA96D48(v2 + 864);
    v47 = v41;
  }

  else
  {
    v28 = *(v2 + 1240);
    v55 = *(*a1 + 240);
    *v56 = *(*a1 + 256);
    *&v56[15] = *(*a1 + 271);
    v51 = *(*a1 + 176);
    v52 = *(*a1 + 192);
    v53 = *(*a1 + 208);
    v54 = *(*a1 + 224);
    v49 = *v3;
    v50 = *(*a1 + 160);
    sub_1BBB0F3B0(*(v2 + 1248) + *(v2 + 1256), v28, _s13RemoteContextV7StorageVMa);
    *(v2 + 1008) = *v28;
    v29 = v28[4];
    v31 = v28[1];
    v30 = v28[2];
    *(v2 + 1056) = v28[3];
    *(v2 + 1072) = v29;
    *(v2 + 1024) = v31;
    *(v2 + 1040) = v30;
    v33 = v28[6];
    v32 = v28[7];
    v34 = v28[5];
    *(v2 + 1135) = *(v28 + 127);
    *(v2 + 1104) = v33;
    *(v2 + 1120) = v32;
    *(v2 + 1088) = v34;
    sub_1BBA96D48(v2 + 1008);
    v28[6] = v55;
    v28[7] = *v56;
    *(v28 + 127) = *&v56[15];
    v28[2] = v51;
    v28[3] = v52;
    v28[4] = v53;
    v28[5] = v54;
    *v28 = v49;
    v28[1] = v50;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v2 + 1240);
    v37 = *(v2 + 1224);
    if (v35)
    {
      v38 = *v37;
      v39 = *(**v37 + 88);
      swift_beginAccess();
      sub_1BBB0F418(v36, v38 + v39, _s13RemoteContextV7StorageVMa);
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
      v48 = swift_allocObject();
      sub_1BBB0F4D4(v36, v48 + *(*v48 + 88), _s13RemoteContextV7StorageVMa);

      *v37 = v48;
    }

    v47 = *(v2 + 1240);
    v42 = *(v2 + 1232);
  }

  free(v47);
  free(v42);

  free(v2);
}

__n128 IntelligenceFragment.RemoteContext.boundingBoxTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v4 = v3 + *(_s13RemoteContextV7StorageVMa(0) + 24);
  v5 = *(v4 + 16);
  *a1 = *v4;
  *(a1 + 16) = v5;
  result = *(v4 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 sub_1BBB0C600@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = v3 + *(_s13RemoteContextV7StorageVMa(0) + 24);
  v5 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v5;
  result = *(v4 + 32);
  *(a2 + 32) = result;
  return result;
}

uint64_t IntelligenceFragment.RemoteContext.boundingBoxTransform.setter(_OWORD *a1)
{
  v3 = _s13RemoteContextV7StorageVMa(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  v8 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBB0F3B0(v7 + v8, v6, _s13RemoteContextV7StorageVMa);
  v9 = &v6[*(v4 + 32)];
  v10 = a1[1];
  *v9 = *a1;
  v9[1] = v10;
  v9[2] = a1[2];
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v11 = *v1;
    v12 = *(*v11 + 88);
    swift_beginAccess();
    sub_1BBB0F418(v6, v11 + v12, _s13RemoteContextV7StorageVMa);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
    v14 = swift_allocObject();
    sub_1BBB0F4D4(v6, v14 + *(*v14 + 88), _s13RemoteContextV7StorageVMa);

    *v1 = v14;
  }

  return result;
}

void (*IntelligenceFragment.RemoteContext.boundingBoxTransform.modify(uint64_t *a1))(_OWORD **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = v1;
  v5 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v6 = (v5 + *(_s13RemoteContextV7StorageVMa(0) + 24));
  v7 = v6[1];
  v8 = v6[2];
  v4[6] = *v6;
  v4[7] = v7;
  v4[8] = v8;
  return sub_1BBB0C8E4;
}

void sub_1BBB0C8E4(_OWORD **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1 + 3;
  }

  v4 = v2[7];
  *v3 = v2[6];
  v3[1] = v4;
  v3[2] = v2[8];
  IntelligenceFragment.RemoteContext.boundingBoxTransform.setter(v3);

  free(v2);
}

uint64_t sub_1BBB0C93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = _s13RemoteContextV7StorageVMa(0);
  return sub_1BBB0F3B0(v3 + *(v4 + 20), a2, type metadata accessor for IntelligenceFragment.RemoteID);
}

uint64_t sub_1BBB0C9C0(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB0F3B0(a1, v4, type metadata accessor for IntelligenceFragment.RemoteID);
  return IntelligenceFragment.RemoteContext.remoteID.setter(v4);
}

uint64_t IntelligenceFragment.RemoteContext.remoteID.setter(uint64_t a1)
{
  v3 = _s13RemoteContextV7StorageVMa(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  v8 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBB0F3B0(v7 + v8, v6, _s13RemoteContextV7StorageVMa);
  sub_1BBB0F418(a1, &v6[*(v4 + 28)], type metadata accessor for IntelligenceFragment.RemoteID);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v9 = *v1;
    v10 = *(*v9 + 88);
    swift_beginAccess();
    sub_1BBB0F418(v6, v9 + v10, _s13RemoteContextV7StorageVMa);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
    v12 = swift_allocObject();
    sub_1BBB0F4D4(v6, v12 + *(*v12 + 88), _s13RemoteContextV7StorageVMa);

    *v1 = v12;
  }

  return result;
}

void (*IntelligenceFragment.RemoteContext.remoteID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for IntelligenceFragment.RemoteID(0) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v10 = _s13RemoteContextV7StorageVMa(0);
  sub_1BBB0F3B0(v9 + *(v10 + 20), v8, type metadata accessor for IntelligenceFragment.RemoteID);
  return sub_1BBB0CD40;
}

void sub_1BBB0CD40(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1BBB0F3B0(*(*a1 + 40), v3, type metadata accessor for IntelligenceFragment.RemoteID);
    IntelligenceFragment.RemoteContext.remoteID.setter(v3);
    sub_1BBACD424(v4);
  }

  else
  {
    IntelligenceFragment.RemoteContext.remoteID.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t IntelligenceFragment.RemoteContext.createRemoteContext()@<X0>(uint64_t *a1@<X8>)
{
  v3 = _s13RemoteContextV7StorageVMa(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*v1 + *(**v1 + 88));
  swift_beginAccess();
  v8 = v7[1];
  v9 = v7[2];
  v10 = v7[4];
  v28 = v7[3];
  v29 = v10;
  v26 = v8;
  v27 = v9;
  v11 = v7[5];
  v12 = v7[6];
  v13 = v7[7];
  *(v32 + 15) = *(v7 + 127);
  v31 = v12;
  v32[0] = v13;
  v30 = v11;
  v25 = *v7;
  v14 = v6 + *(v4 + 28);
  sub_1BBA94F7C(&v25, &v24);
  sub_1BBB834E8();
  v15 = &v14[*(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20)];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = v28;
  v6[2] = v27;
  v6[3] = v16;
  *(v6 + 127) = *(v32 + 15);
  v17 = v32[0];
  v6[6] = v31;
  v6[7] = v17;
  v18 = v30;
  v6[4] = v29;
  v6[5] = v18;
  v19 = v26;
  *v6 = v25;
  v6[1] = v19;
  v20 = (v6 + *(v4 + 32));
  *v20 = 0x3FF0000000000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = 0x3FF0000000000000;
  v20[4] = 0;
  v20[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
  v21 = swift_allocObject();
  result = sub_1BBB0F4D4(v6, v21 + *(*v21 + 88), _s13RemoteContextV7StorageVMa);
  *a1 = v21;
  return result;
}

uint64_t IntelligenceFragment.RemoteContext.createRemoteContext(description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = _s13RemoteContextV7StorageVMa(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*v3 + *(**v3 + 88));
  swift_beginAccess();
  v12 = v11[1];
  v13 = v11[2];
  v14 = v11[4];
  v32 = v11[3];
  v33 = v14;
  v30 = v12;
  v31 = v13;
  v15 = v11[5];
  v16 = v11[6];
  v17 = v11[7];
  *(v36 + 15) = *(v11 + 127);
  v35 = v16;
  v36[0] = v17;
  v34 = v15;
  v29 = *v11;
  v18 = v10 + *(v8 + 28);
  sub_1BBA94F7C(&v29, &v28);
  sub_1BBB834E8();
  v19 = &v18[*(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20)];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = v32;
  v10[2] = v31;
  v10[3] = v20;
  *(v10 + 127) = *(v36 + 15);
  v21 = v36[0];
  v10[6] = v35;
  v10[7] = v21;
  v22 = v34;
  v10[4] = v33;
  v10[5] = v22;
  v23 = v30;
  *v10 = v29;
  v10[1] = v23;
  v24 = (v10 + *(v8 + 32));
  *v24 = 0x3FF0000000000000;
  v24[1] = 0;
  v24[2] = 0;
  v24[3] = 0x3FF0000000000000;
  v24[4] = 0;
  v24[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
  v25 = swift_allocObject();
  sub_1BBB0F4D4(v10, v25 + *(*v25 + 88), _s13RemoteContextV7StorageVMa);
  *a3 = v25;
}

uint64_t IntelligenceFragment.RemoteContext.createRemoteContext(boundingBoxTransform:)@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = _s13RemoteContextV7StorageVMa(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*v2 + *(**v2 + 88));
  swift_beginAccess();
  v10 = v9[1];
  v11 = v9[2];
  v12 = v9[4];
  v31 = v9[3];
  v32 = v12;
  v29 = v10;
  v30 = v11;
  v13 = v9[5];
  v14 = v9[6];
  v15 = v9[7];
  *(v35 + 15) = *(v9 + 127);
  v34 = v14;
  v35[0] = v15;
  v33 = v13;
  v28 = *v9;
  v16 = v8 + *(v6 + 28);
  sub_1BBA94F7C(&v28, &v27);
  sub_1BBB834E8();
  v17 = &v16[*(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20)];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = v31;
  v8[2] = v30;
  v8[3] = v18;
  *(v8 + 127) = *(v35 + 15);
  v19 = v35[0];
  v8[6] = v34;
  v8[7] = v19;
  v20 = v33;
  v8[4] = v32;
  v8[5] = v20;
  v21 = v29;
  *v8 = v28;
  v8[1] = v21;
  v22 = (v8 + *(v6 + 32));
  v23 = a1[2];
  v22[1] = a1[1];
  v22[2] = v23;
  *v22 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
  v24 = swift_allocObject();
  result = sub_1BBB0F4D4(v8, v24 + *(*v24 + 88), _s13RemoteContextV7StorageVMa);
  *a2 = v24;
  return result;
}

uint64_t IntelligenceFragment.RemoteContext.createRemoteContext(boundingBoxTransform:description:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = _s13RemoteContextV7StorageVMa(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*v4 + *(**v4 + 88));
  swift_beginAccess();
  v14 = v13[1];
  v15 = v13[2];
  v16 = v13[4];
  v35 = v13[3];
  v36 = v16;
  v33 = v14;
  v34 = v15;
  v17 = v13[5];
  v18 = v13[6];
  v19 = v13[7];
  *(v39 + 15) = *(v13 + 127);
  v38 = v18;
  v39[0] = v19;
  v37 = v17;
  v32 = *v13;
  v20 = v12 + *(v10 + 28);
  sub_1BBA94F7C(&v32, &v31);
  sub_1BBB834E8();
  v21 = &v20[*(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20)];
  *v21 = a2;
  *(v21 + 1) = a3;
  v22 = v35;
  v12[2] = v34;
  v12[3] = v22;
  *(v12 + 127) = *(v39 + 15);
  v23 = v39[0];
  v12[6] = v38;
  v12[7] = v23;
  v24 = v37;
  v12[4] = v36;
  v12[5] = v24;
  v25 = v33;
  *v12 = v32;
  v12[1] = v25;
  v26 = (v12 + *(v10 + 32));
  v27 = a1[2];
  v26[1] = a1[1];
  v26[2] = v27;
  *v26 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
  v28 = swift_allocObject();
  sub_1BBB0F4D4(v12, v28 + *(*v28 + 88), _s13RemoteContextV7StorageVMa);
  *a4 = v28;
}

uint64_t IntelligenceFragment.RemoteContext.hash(into:)()
{
  v1 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  v5 = _s13RemoteContextV7StorageVMa(0);
  sub_1BBB0F3B0(v4 + *(v5 + 20), v3, type metadata accessor for IntelligenceFragment.RemoteID);
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1EBC7AE48);
  sub_1BBB83918();
  return sub_1BBACD424(v3);
}

uint64_t IntelligenceFragment.RemoteContext.hashValue.getter()
{
  v1 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *v0;
  sub_1BBB843D8();
  v5 = v4 + *(*v4 + 88);
  swift_beginAccess();
  v6 = _s13RemoteContextV7StorageVMa(0);
  sub_1BBB0F3B0(v5 + *(v6 + 20), v3, type metadata accessor for IntelligenceFragment.RemoteID);
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1EBC7AE48);
  sub_1BBB83918();
  sub_1BBACD424(v3);
  return sub_1BBB84438();
}

uint64_t sub_1BBB0D724@<X0>(_OWORD *a1@<X8>)
{
  v3 = (*v1 + *(**v1 + 88));
  swift_beginAccess();
  v16[0] = *v3;
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v16[3] = v3[3];
  v16[4] = v6;
  v16[1] = v4;
  v16[2] = v5;
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  *(v17 + 15) = *(v3 + 127);
  v16[6] = v8;
  v17[0] = v9;
  v16[5] = v7;
  v10 = v3[7];
  a1[6] = v3[6];
  a1[7] = v10;
  *(a1 + 127) = *(v3 + 127);
  v11 = v3[3];
  a1[2] = v3[2];
  a1[3] = v11;
  v12 = v3[5];
  a1[4] = v3[4];
  a1[5] = v12;
  v13 = v3[1];
  *a1 = *v3;
  a1[1] = v13;
  return sub_1BBA94F7C(v16, v15);
}

uint64_t sub_1BBB0D7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = _s13RemoteContextV7StorageVMa(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*v3 + *(**v3 + 88));
  swift_beginAccess();
  v12 = v11[1];
  v13 = v11[2];
  v14 = v11[4];
  v32 = v11[3];
  v33 = v14;
  v30 = v12;
  v31 = v13;
  v15 = v11[5];
  v16 = v11[6];
  v17 = v11[7];
  *(v36 + 15) = *(v11 + 127);
  v35 = v16;
  v36[0] = v17;
  v34 = v15;
  v29 = *v11;
  v18 = v10 + *(v8 + 28);
  sub_1BBA94F7C(&v29, &v28);
  sub_1BBB834E8();
  v19 = &v18[*(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20)];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = v32;
  v10[2] = v31;
  v10[3] = v20;
  *(v10 + 127) = *(v36 + 15);
  v21 = v36[0];
  v10[6] = v35;
  v10[7] = v21;
  v22 = v34;
  v10[4] = v33;
  v10[5] = v22;
  v23 = v30;
  *v10 = v29;
  v10[1] = v23;
  v24 = (v10 + *(v8 + 32));
  *v24 = 0x3FF0000000000000;
  v24[1] = 0;
  v24[2] = 0;
  v24[3] = 0x3FF0000000000000;
  v24[4] = 0;
  v24[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
  v25 = swift_allocObject();
  sub_1BBB0F4D4(v10, v25 + *(*v25 + 88), _s13RemoteContextV7StorageVMa);
  *a3 = v25;
}

uint64_t sub_1BBB0D9C0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = _s13RemoteContextV7StorageVMa(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*v4 + *(**v4 + 88));
  swift_beginAccess();
  v14 = v13[1];
  v15 = v13[2];
  v16 = v13[4];
  v35 = v13[3];
  v36 = v16;
  v33 = v14;
  v34 = v15;
  v17 = v13[5];
  v18 = v13[6];
  v19 = v13[7];
  *(v39 + 15) = *(v13 + 127);
  v38 = v18;
  v39[0] = v19;
  v37 = v17;
  v32 = *v13;
  v20 = v12 + *(v10 + 28);
  sub_1BBA94F7C(&v32, &v31);
  sub_1BBB834E8();
  v21 = &v20[*(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20)];
  *v21 = a2;
  *(v21 + 1) = a3;
  v22 = v35;
  v12[2] = v34;
  v12[3] = v22;
  *(v12 + 127) = *(v39 + 15);
  v23 = v39[0];
  v12[6] = v38;
  v12[7] = v23;
  v24 = v37;
  v12[4] = v36;
  v12[5] = v24;
  v25 = v33;
  *v12 = v32;
  v12[1] = v25;
  v26 = (v12 + *(v10 + 32));
  v27 = a1[2];
  v26[1] = a1[1];
  v26[2] = v27;
  *v26 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
  v28 = swift_allocObject();
  sub_1BBB0F4D4(v12, v28 + *(*v28 + 88), _s13RemoteContextV7StorageVMa);
  *a4 = v28;
}

uint64_t sub_1BBB0DB98@<X0>(uint64_t *a1@<X8>)
{
  v3 = _s13RemoteContextV7StorageVMa(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*v1 + *(**v1 + 88));
  swift_beginAccess();
  v8 = v7[1];
  v9 = v7[2];
  v10 = v7[4];
  v28 = v7[3];
  v29 = v10;
  v26 = v8;
  v27 = v9;
  v11 = v7[5];
  v12 = v7[6];
  v13 = v7[7];
  *(v32 + 15) = *(v7 + 127);
  v31 = v12;
  v32[0] = v13;
  v30 = v11;
  v25 = *v7;
  v14 = v6 + *(v4 + 28);
  sub_1BBA94F7C(&v25, &v24);
  sub_1BBB834E8();
  v15 = &v14[*(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20)];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = v28;
  v6[2] = v27;
  v6[3] = v16;
  *(v6 + 127) = *(v32 + 15);
  v17 = v32[0];
  v6[6] = v31;
  v6[7] = v17;
  v18 = v30;
  v6[4] = v29;
  v6[5] = v18;
  v19 = v26;
  *v6 = v25;
  v6[1] = v19;
  v20 = (v6 + *(v4 + 32));
  *v20 = 0x3FF0000000000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = 0x3FF0000000000000;
  v20[4] = 0;
  v20[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
  v21 = swift_allocObject();
  result = sub_1BBB0F4D4(v6, v21 + *(*v21 + 88), _s13RemoteContextV7StorageVMa);
  *a1 = v21;
  return result;
}

uint64_t sub_1BBB0DD54@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = _s13RemoteContextV7StorageVMa(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*v2 + *(**v2 + 88));
  swift_beginAccess();
  v10 = v9[1];
  v11 = v9[2];
  v12 = v9[4];
  v31 = v9[3];
  v32 = v12;
  v29 = v10;
  v30 = v11;
  v13 = v9[5];
  v14 = v9[6];
  v15 = v9[7];
  *(v35 + 15) = *(v9 + 127);
  v34 = v14;
  v35[0] = v15;
  v33 = v13;
  v28 = *v9;
  v16 = v8 + *(v6 + 28);
  sub_1BBA94F7C(&v28, &v27);
  sub_1BBB834E8();
  v17 = &v16[*(type metadata accessor for IntelligenceFragment.RemoteID(0) + 20)];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = v31;
  v8[2] = v30;
  v8[3] = v18;
  *(v8 + 127) = *(v35 + 15);
  v19 = v35[0];
  v8[6] = v34;
  v8[7] = v19;
  v20 = v33;
  v8[4] = v32;
  v8[5] = v20;
  v21 = v29;
  *v8 = v28;
  v8[1] = v21;
  v22 = (v8 + *(v6 + 32));
  v23 = a1[2];
  v22[1] = a1[1];
  v22[2] = v23;
  *v22 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
  v24 = swift_allocObject();
  result = sub_1BBB0F4D4(v8, v24 + *(*v24 + 88), _s13RemoteContextV7StorageVMa);
  *a2 = v24;
  return result;
}

uint64_t sub_1BBB0DF14()
{
  v1 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *v0;
  sub_1BBB843D8();
  v5 = v4 + *(*v4 + 88);
  swift_beginAccess();
  v6 = _s13RemoteContextV7StorageVMa(0);
  sub_1BBB0F3B0(v5 + *(v6 + 20), v3, type metadata accessor for IntelligenceFragment.RemoteID);
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1EBC7AE48);
  sub_1BBB83918();
  sub_1BBACD424(v3);
  return sub_1BBB84438();
}

uint64_t sub_1BBB0E030()
{
  v1 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  v5 = _s13RemoteContextV7StorageVMa(0);
  sub_1BBB0F3B0(v4 + *(v5 + 20), v3, type metadata accessor for IntelligenceFragment.RemoteID);
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1EBC7AE48);
  sub_1BBB83918();
  return sub_1BBACD424(v3);
}

uint64_t sub_1BBB0E13C()
{
  v1 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *v0;
  sub_1BBB843D8();
  v5 = v4 + *(*v4 + 88);
  swift_beginAccess();
  v6 = _s13RemoteContextV7StorageVMa(0);
  sub_1BBB0F3B0(v5 + *(v6 + 20), v3, type metadata accessor for IntelligenceFragment.RemoteID);
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1EBC7AE48);
  sub_1BBB83918();
  sub_1BBACD424(v3);
  return sub_1BBB84438();
}

uint64_t sub_1BBB0E25C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15[-v8];
  v10 = *a2;
  v11 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v12 = _s13RemoteContextV7StorageVMa(0);
  sub_1BBB0F3B0(v11 + *(v12 + 20), v9, type metadata accessor for IntelligenceFragment.RemoteID);
  v13 = v10 + *(*v10 + 88);
  swift_beginAccess();
  sub_1BBB0F3B0(v13 + *(v12 + 20), v6, type metadata accessor for IntelligenceFragment.RemoteID);
  LOBYTE(v13) = sub_1BBB834C8();
  sub_1BBACD424(v6);
  sub_1BBACD424(v9);
  return v13 & 1;
}

uint64_t sub_1BBB0E3C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x444965746F6D6572;
  v5 = 0x80000001BBB9A820;
  if (v2 != 1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001BBB9A820;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x74736575716572;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x444965746F6D6572;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74736575716572;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BBB842F8();
  }

  return v11 & 1;
}

uint64_t sub_1BBB0E4C4()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB0E56C()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB0E600()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB0E6A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB0FC24();
  *a1 = result;
  return result;
}

void sub_1BBB0E6D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x444965746F6D6572;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
    v4 = 0x80000001BBB9A820;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74736575716572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BBB0E738()
{
  v1 = 0x444965746F6D6572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_1BBB0E798@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB0FC24();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB0E7C0(uint64_t a1)
{
  v2 = sub_1BBB0F480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB0E7FC(uint64_t a1)
{
  v2 = sub_1BBB0F480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceFragment.RemoteContext.encode(to:)(void *a1)
{
  v27 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C280);
  v64 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB0F480();
  sub_1BBB84478();
  v8 = (v7 + *(*v7 + 88));
  v9 = v4;
  swift_beginAccess();
  v56 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[4];
  v59 = v8[3];
  v60 = v12;
  v57 = v10;
  v58 = v11;
  v13 = v8[5];
  v14 = v8[6];
  v15 = v8[7];
  *(v63 + 15) = *(v8 + 127);
  v62 = v14;
  v63[0] = v15;
  v61 = v13;
  v47 = v13;
  v48 = v14;
  v49[0] = v15;
  *(v49 + 15) = *(v63 + 15);
  v44 = v58;
  v45 = v59;
  v46 = v12;
  v42 = v56;
  v43 = v57;
  v41 = 0;
  sub_1BBA94F7C(&v56, &v33);
  sub_1BBA93954();
  v16 = v28;
  sub_1BBB84288();
  if (v16)
  {
    v38 = v47;
    v39 = v48;
    *v40 = v49[0];
    *&v40[15] = *(v49 + 15);
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v33 = v42;
    v34 = v43;
    sub_1BBA96D48(&v33);
    return (*(v64 + 8))(v6, v4);
  }

  else
  {
    v18 = v64;
    v38 = v47;
    v39 = v48;
    *v40 = v49[0];
    *&v40[15] = *(v49 + 15);
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v33 = v42;
    v34 = v43;
    sub_1BBA96D48(&v33);
    v19 = _s13RemoteContextV7StorageVMa(0);
    v20 = v26;
    sub_1BBB0F3B0(v8 + *(v19 + 20), v26, type metadata accessor for IntelligenceFragment.RemoteID);
    LOBYTE(v30) = 1;
    sub_1BBAA4E94(&unk_1ED6BE000, type metadata accessor for IntelligenceFragment.RemoteID);
    sub_1BBB84288();
    sub_1BBACD424(v20);
    v21 = (v8 + *(v19 + 24));
    v22 = v21[1];
    v49[4] = *v21;
    v49[5] = v22;
    v49[6] = v21[2];
    v50 = 0x3FF0000000000000;
    v51 = 0;
    v52 = 0;
    v53 = 0x3FF0000000000000;
    v54 = 0;
    v55 = 0;
    if ((sub_1BBB83D78() & 1) == 0)
    {
      v23 = (v8 + *(v19 + 24));
      v24 = v23[1];
      v25 = v23[2];
      v30 = *v23;
      v31 = v24;
      v32 = v25;
      v29 = 2;
      type metadata accessor for CGAffineTransform(0);
      sub_1BBAA4E94(&qword_1EBC7C288, type metadata accessor for CGAffineTransform);
      sub_1BBB84288();
    }

    return (*(v18 + 8))(v6, v9);
  }
}

uint64_t IntelligenceFragment.RemoteContext.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v3 = _s13RemoteContextV7StorageVMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC7C290);
  v34 = *(v9 - 8);
  v35.i64[0] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1BBB0F480();
  v36.i64[0] = v11;
  v13 = v37;
  sub_1BBB84458();
  if (!v13)
  {
    v14 = v34;
    v15 = v8;
    v32 = v3;
    v37 = v5;
    v52 = 0;
    sub_1BBA92DFC();
    v16 = v35.i64[0];
    sub_1BBB841B8();
    v49 = v58;
    v50 = v59;
    *v51 = v60[0];
    *&v51[15] = *(v60 + 15);
    v46 = v55;
    v47 = v56;
    v48 = v57;
    v44 = v53;
    v45 = v54;
    v39.i8[0] = 1;
    sub_1BBAA4E94(&qword_1EBC7B068, type metadata accessor for IntelligenceFragment.RemoteID);
    sub_1BBB841B8();
    type metadata accessor for CGAffineTransform(0);
    v38 = 2;
    sub_1BBAA4E94(&qword_1EBC7B060, type metadata accessor for CGAffineTransform);
    sub_1BBB84178();
    (*(v14 + 8))(v36.i64[0], v16);
    if (v43)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v41;
    }

    if (v43)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v42;
    }

    if (v43)
    {
      v20 = -1;
    }

    else
    {
      v20 = 0;
    }

    v21 = vdupq_n_s64(v20);
    v36 = vbslq_s8(v21, xmmword_1BBB8B2D0, v39);
    v35 = vbslq_s8(v21, xmmword_1BBB8B2E0, v40);
    v22 = v32;
    v23 = v37;
    sub_1BBB0F4D4(v15, v37 + *(v32 + 20), type metadata accessor for IntelligenceFragment.RemoteID);
    v24 = v49;
    v25 = *v51;
    v23[6] = v50;
    v23[7] = v25;
    *(v23 + 127) = *&v51[15];
    v26 = v47;
    v23[2] = v46;
    v23[3] = v26;
    v23[4] = v48;
    v23[5] = v24;
    v27 = v45;
    *v23 = v44;
    v23[1] = v27;
    v28 = (v23 + *(v22 + 24));
    v29 = v35;
    *v28 = v36;
    v28[1] = v29;
    *v28[2].i64 = v18;
    *&v28[2].i64[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C250);
    v30 = swift_allocObject();
    sub_1BBB0F4D4(v23, v30 + *(*v30 + 88), _s13RemoteContextV7StorageVMa);
    *v33 = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

id sub_1BBB0F140()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1BBB83458();
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1BBB83268();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1BBB0F200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBB0F270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BBB0F2D8()
{
  result = qword_1ED6BE020;
  if (!qword_1ED6BE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE020);
  }

  return result;
}

unint64_t sub_1BBB0F35C()
{
  result = qword_1EBC7C260;
  if (!qword_1EBC7C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C260);
  }

  return result;
}

uint64_t sub_1BBB0F3B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBB0F418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBB0F480()
{
  result = qword_1ED6BE0E8;
  if (!qword_1ED6BE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE0E8);
  }

  return result;
}

uint64_t sub_1BBB0F4D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBB0F588()
{
  result = qword_1EBC7C2A0;
  if (!qword_1EBC7C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C2A0);
  }

  return result;
}

unint64_t sub_1BBB0F5E0()
{
  result = qword_1EBC7C2A8;
  if (!qword_1EBC7C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C2A8);
  }

  return result;
}

uint64_t dispatch thunk of IntelligenceCollectionContext.createRemoteContext(boundingBoxTransform:description:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 24);
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v8[2] = a1[2];
  return v5(v8);
}

uint64_t dispatch thunk of IntelligenceCollectionContext.createRemoteContext(boundingBoxTransform:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = a1[2];
  return v3(v6);
}

void sub_1BBB0F748()
{
  sub_1BBB834F8();
  if (v0 <= 0x3F)
  {
    sub_1BBAC2838();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy143_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 127) = *(a2 + 127);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

void sub_1BBB0F878()
{
  type metadata accessor for IntelligenceFragment.RemoteID(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGAffineTransform(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BBB0F910()
{
  result = qword_1EBC7C318;
  if (!qword_1EBC7C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C318);
  }

  return result;
}

unint64_t sub_1BBB0F968()
{
  result = qword_1EBC7C320;
  if (!qword_1EBC7C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C320);
  }

  return result;
}

unint64_t sub_1BBB0F9C0()
{
  result = qword_1EBC7C328;
  if (!qword_1EBC7C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C328);
  }

  return result;
}

unint64_t sub_1BBB0FA18()
{
  result = qword_1ED6BE0D0;
  if (!qword_1ED6BE0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE0D0);
  }

  return result;
}

unint64_t sub_1BBB0FA70()
{
  result = qword_1ED6BE0D8;
  if (!qword_1ED6BE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE0D8);
  }

  return result;
}

unint64_t sub_1BBB0FAC8()
{
  result = qword_1EBC7C330;
  if (!qword_1EBC7C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C330);
  }

  return result;
}

unint64_t sub_1BBB0FB20()
{
  result = qword_1EBC7C338;
  if (!qword_1EBC7C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C338);
  }

  return result;
}

unint64_t sub_1BBB0FB78()
{
  result = qword_1ED6BE010;
  if (!qword_1ED6BE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE010);
  }

  return result;
}

unint64_t sub_1BBB0FBD0()
{
  result = qword_1ED6BE018;
  if (!qword_1ED6BE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE018);
  }

  return result;
}

uint64_t sub_1BBB0FC24()
{
  v0 = sub_1BBB84108();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void static RequestID.generate()(uint32_t *a1@<X8>)
{
  if (qword_1EBC7AC48 != -1)
  {
    swift_once();
  }

  v2 = off_1EBC7AC50;
  os_unfair_lock_lock(off_1EBC7AC50 + 6);
  os_unfair_lock_opaque = v2[5]._os_unfair_lock_opaque;
  v4 = __CFADD__(os_unfair_lock_opaque, 1);
  v5 = os_unfair_lock_opaque + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v2[5]._os_unfair_lock_opaque = v5;
    *a1 = v2[4]._os_unfair_lock_opaque;
    a1[1] = v5;

    os_unfair_lock_unlock(v2 + 6);
  }
}

uint64_t sub_1BBB0FD58()
{
  result = getpid();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C3B8);
    result = swift_allocObject();
    *(result + 20) = 0;
    *(result + 24) = 0;
    *(result + 16) = v1;
    off_1EBC7AC50 = result;
  }

  return result;
}

uint64_t RequestID.hashValue.getter()
{
  v3 = v0;
  v2 = *v0;
  v1 = v3[1];
  sub_1BBB843D8();
  MEMORY[0x1BFB16A80](v1 | (v2 << 32));
  return sub_1BBB84438();
}

uint64_t sub_1BBB0FDFC()
{
  v3 = v0;
  v2 = *v0;
  v1 = v3[1];
  sub_1BBB843D8();
  MEMORY[0x1BFB16A80](v1 | (v2 << 32));
  return sub_1BBB84438();
}

uint64_t RequestID.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB84468();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1BBB84338();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t RequestID.init(_:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    goto LABEL_65;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = sub_1BBB10330(result, a2, 10);
    v25 = v24;

    if (v25)
    {
      goto LABEL_65;
    }

    goto LABEL_68;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1BBB84088();
      v5 = v26;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          v8 = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v8, 0xAuLL))
              {
                goto LABEL_63;
              }

              v11 = __CFADD__(10 * v8, v15);
              v8 = 10 * v8 + v15;
              if (v11)
              {
                goto LABEL_63;
              }

              ++v14;
              if (!--v5)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_63;
      }

      goto LABEL_73;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v18 = *result - 48;
            if (v18 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v8, 0xAuLL))
            {
              goto LABEL_63;
            }

            v11 = __CFADD__(10 * v8, v18);
            v8 = 10 * v8 + v18;
            if (v11)
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_63:
      v8 = 0;
      LOBYTE(v5) = 1;
LABEL_64:
      v28 = v5;
      v21 = v5;

      if (v21)
      {
LABEL_65:
        v22 = 0;
        v23 = 1;
LABEL_69:
        *a3 = v22;
        *(a3 + 8) = v23;
        return result;
      }

LABEL_68:
      v23 = 0;
      v22 = __ROR8__(v8, 32);
      goto LABEL_69;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        v8 = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v8, 0xAuLL))
            {
              goto LABEL_63;
            }

            v11 = 10 * v8 >= v10;
            v8 = 10 * v8 - v10;
            if (!v11)
            {
              goto LABEL_63;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_62:
        LOBYTE(v5) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v19 = v27;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          if (!is_mul_ok(v8, 0xAuLL))
          {
            break;
          }

          v11 = __CFADD__(10 * v8, v20);
          v8 = 10 * v8 + v20;
          if (v11)
          {
            break;
          }

          ++v19;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_63;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        v8 = 0;
        v12 = v27 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          if (!is_mul_ok(v8, 0xAuLL))
          {
            break;
          }

          v11 = 10 * v8 >= v13;
          v8 = 10 * v8 - v13;
          if (!v11)
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_72;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      v8 = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        if (!is_mul_ok(v8, 0xAuLL))
        {
          break;
        }

        v11 = __CFADD__(10 * v8, v17);
        v8 = 10 * v8 + v17;
        if (v11)
        {
          break;
        }

        ++v16;
        if (!--v5)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_74:
  __break(1u);
  return result;
}

void *sub_1BBB102BC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C3B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1BBB10330(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1BBB83B78();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1BBB10F44();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      result = sub_1BBB84088();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unint64_t sub_1BBB108B4()
{
  result = qword_1EBC7C3A0;
  if (!qword_1EBC7C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C3A0);
  }

  return result;
}

unint64_t sub_1BBB1090C()
{
  result = qword_1ED6BE4C8;
  if (!qword_1ED6BE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE4C8);
  }

  return result;
}

unint64_t sub_1BBB10964()
{
  result = qword_1EBC7C3A8;
  if (!qword_1EBC7C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C3A8);
  }

  return result;
}

unsigned __int8 *sub_1BBB109B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1BBB83B78();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1BBB10F44();
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
      result = sub_1BBB84088();
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

uint64_t sub_1BBB10F44()
{
  v0 = sub_1BBB83B88();
  v4 = sub_1BBB10FC4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1BBB10FC4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1BBB83EA8();
    if (!v9 || (v10 = v9, v11 = sub_1BBB102BC(v9, 0), v12 = sub_1BBB1111C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1BBB83AB8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1BBB83AB8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1BBB84088();
LABEL_4:

  return sub_1BBB83AB8();
}

unint64_t sub_1BBB1111C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1BBB1133C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1BBB83B38();
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
          result = sub_1BBB84088();
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

    result = sub_1BBB1133C(v12, a6, a7);
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

    result = sub_1BBB83B18();
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

uint64_t sub_1BBB1133C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1BBB83B48();
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
    v5 = MEMORY[0x1BFB16180](15, a1 >> 16);
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

uint64_t sub_1BBB113DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBB124D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBB11404(uint64_t a1)
{
  v2 = sub_1BBB119C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB11440(uint64_t a1)
{
  v2 = sub_1BBB119C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB1147C(uint64_t a1)
{
  v2 = sub_1BBB11A6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB114B8(uint64_t a1)
{
  v2 = sub_1BBB11A6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB114F4(uint64_t a1)
{
  v2 = sub_1BBB11AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB11530(uint64_t a1)
{
  v2 = sub_1BBB11AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB1156C(uint64_t a1)
{
  v2 = sub_1BBB11A18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB115A8(uint64_t a1)
{
  v2 = sub_1BBB11A18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.ControlEnablement.hashValue.getter()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84438();
}

uint64_t IntelligenceElement.ControlEnablement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C3C0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C3C8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C3D0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C3D8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB119C4();
  sub_1BBB84478();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1BBB11A6C();
      v9 = v21;
      sub_1BBB84208();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1BBB11A18();
      v9 = v24;
      sub_1BBB84208();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1BBB11AC0();
    sub_1BBB84208();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1BBB119C4()
{
  result = qword_1EBC7AFA8;
  if (!qword_1EBC7AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AFA8);
  }

  return result;
}

unint64_t sub_1BBB11A18()
{
  result = qword_1EBC7C3E0;
  if (!qword_1EBC7C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C3E0);
  }

  return result;
}

unint64_t sub_1BBB11A6C()
{
  result = qword_1EBC7C3E8;
  if (!qword_1EBC7C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C3E8);
  }

  return result;
}

unint64_t sub_1BBB11AC0()
{
  result = qword_1EBC7AF90;
  if (!qword_1EBC7AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF90);
  }

  return result;
}

uint64_t IntelligenceElement.ControlEnablement.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C3F0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C3F8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C400);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C408);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BBB119C4();
  v15 = v36;
  sub_1BBB84458();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1BBB841F8();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1BBA854A8();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1BBB84058();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
      *v24 = &type metadata for IntelligenceElement.ControlEnablement;
      sub_1BBB84128();
      sub_1BBB84048();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1BBB11A6C();
          sub_1BBB84118();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1BBB11A18();
          v26 = v17;
          sub_1BBB84118();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1BBB11AC0();
        sub_1BBB84118();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t IntelligenceElement.ControlEnablement.description.getter()
{
  v1 = 0x64656C6261736964;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

unint64_t sub_1BBB12114()
{
  result = qword_1EBC7C410;
  if (!qword_1EBC7C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C410);
  }

  return result;
}

unint64_t sub_1BBB121BC()
{
  result = qword_1EBC7C418;
  if (!qword_1EBC7C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C418);
  }

  return result;
}

unint64_t sub_1BBB12214()
{
  result = qword_1EBC7AF80;
  if (!qword_1EBC7AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF80);
  }

  return result;
}

unint64_t sub_1BBB1226C()
{
  result = qword_1EBC7AF88;
  if (!qword_1EBC7AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF88);
  }

  return result;
}

unint64_t sub_1BBB122C4()
{
  result = qword_1EBC7AF60;
  if (!qword_1EBC7AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF60);
  }

  return result;
}

unint64_t sub_1BBB1231C()
{
  result = qword_1EBC7AF68;
  if (!qword_1EBC7AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF68);
  }

  return result;
}

unint64_t sub_1BBB12374()
{
  result = qword_1EBC7AF70;
  if (!qword_1EBC7AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF70);
  }

  return result;
}

unint64_t sub_1BBB123CC()
{
  result = qword_1EBC7AF78;
  if (!qword_1EBC7AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF78);
  }

  return result;
}

unint64_t sub_1BBB12424()
{
  result = qword_1EBC7AF98;
  if (!qword_1EBC7AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF98);
  }

  return result;
}

unint64_t sub_1BBB1247C()
{
  result = qword_1EBC7AFA0;
  if (!qword_1EBC7AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AFA0);
  }

  return result;
}

uint64_t sub_1BBB124D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xE800000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBB842F8();

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

uint64_t sub_1BBB125EC()
{
  if (sub_1BBB83538() < 1)
  {
    return 0x297974706D6528;
  }

  swift_getKeyPath();
  sub_1BBB83548();
  sub_1BBB1284C();
  v0 = sub_1BBB83CD8();
  if (!v0)
  {

    v2 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v11[0] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
    sub_1BBA86BA4();
    v10 = sub_1BBB83938();

    return v10;
  }

  v1 = v0;
  v12 = MEMORY[0x1E69E7CC0];
  sub_1BBAE4F00(0, v0 & ~(v0 >> 63), 0);
  v2 = v12;
  result = sub_1BBB83CC8();
  if ((v1 & 0x8000000000000000) == 0)
  {
    do
    {
      v4 = sub_1BBB83D18();
      v4(v11, 0);
      swift_getAtKeyPath();
      v6 = v11[0];
      v5 = v11[1];
      v12 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1BBAE4F00((v7 > 1), v8 + 1, 1);
        v2 = v12;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      sub_1BBB83D08();
      --v1;
    }

    while (v1);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BBB127F8()
{
  result = qword_1EBC7C420;
  if (!qword_1EBC7C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C420);
  }

  return result;
}

unint64_t sub_1BBB1284C()
{
  result = qword_1EBC7C428;
  if (!qword_1EBC7C428)
  {
    sub_1BBB83548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C428);
  }

  return result;
}

__n128 IntelligenceProcessInfo.auditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 IntelligenceProcessInfo.auditToken.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

uint64_t IntelligenceProcessInfo.bundleIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t IntelligenceProcessInfo.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t IntelligenceProcessInfo.isSystemApp.getter()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return 0;
  }

  if (*(v0 + 48) == 0xD000000000000015 && v1 == 0x80000001BBB9C1B0)
  {
    return 1;
  }

  else
  {
    return sub_1BBB842F8();
  }
}

uint64_t IntelligenceProcessInfo.isSiri.getter()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 48);
  if (v2 == 0x6C7070612E6D6F63 && v1 == 0xEE00697269732E65)
  {
    return 1;
  }

  v4 = sub_1BBB842F8();
  v5 = v1 == 0xEE00697269532E65 && v2 == 0x6C7070612E6D6F63;
  result = 1;
  if (!v5 && (v4 & 1) == 0)
  {

    return sub_1BBB842F8();
  }

  return result;
}

uint64_t IntelligenceProcessInfo.isSpotlight.getter()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return 0;
  }

  if (*(v0 + 48) == 0xD000000000000013 && v1 == 0x80000001BBB9C1D0)
  {
    return 1;
  }

  else
  {
    return sub_1BBB842F8();
  }
}

__n128 IntelligenceProcessInfo.init(auditToken:pid:pidversion:bundleIdentifier:)@<Q0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = *a1;
  v7 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v7;
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 36) = a2;
  *(a6 + 40) = a3;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  return result;
}

uint64_t IntelligenceProcessInfo.hashValue.getter()
{
  sub_1BBB843D8();
  sub_1BBB84418();
  sub_1BBB84418();
  return sub_1BBB84438();
}

uint64_t sub_1BBB12BEC()
{
  sub_1BBB843D8();
  sub_1BBB84418();
  sub_1BBB84418();
  return sub_1BBB84438();
}

uint64_t sub_1BBB12C48()
{
  sub_1BBB843D8();
  sub_1BBB84418();
  sub_1BBB84418();
  return sub_1BBB84438();
}

uint64_t sub_1BBB12CC4()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB12D88()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB12E38()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB12EF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB1379C();
  *a1 = result;
  return result;
}

void sub_1BBB12F28(unint64_t *a1@<X8>)
{
  v2 = 0x6B6F547469647561;
  v3 = 0xEA00000000006E6FLL;
  v4 = 0x6973726576646970;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001BBB9A850;
  }

  v5 = 0xE300000000000000;
  if (*v1)
  {
    v2 = 6580592;
  }

  else
  {
    v5 = 0xEA00000000006E65;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

unint64_t sub_1BBB12FA8()
{
  v1 = 0x6B6F547469647561;
  v2 = 0x6973726576646970;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 6580592;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BBB13024@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB1379C();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB1304C(uint64_t a1)
{
  v2 = sub_1BBB132E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB13088(uint64_t a1)
{
  v2 = sub_1BBB132E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceProcessInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C430);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - v6;
  v8 = v1[1];
  v16 = *v1;
  v17 = v8;
  v9 = v1[2].u8[0];
  LODWORD(v6) = v1[2].i32[2];
  v21 = v1[2].i32[1];
  v15 = v6;
  v10 = v1[3].i64[0];
  v14[1] = v1[3].i64[1];
  v14[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB132E8();
  sub_1BBB84478();
  if (v9)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  v12 = vdupq_n_s64(v11);
  v19 = vbicq_s8(v17, v12);
  v18 = vbicq_s8(v16, v12);
  v20 = v9;
  v22 = 0;
  sub_1BBAFBEF4();
  sub_1BBB84238();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v18.i8[0] = 1;
  sub_1BBB84298();
  v18.i8[0] = 2;
  sub_1BBB84298();
  v18.i8[0] = 3;
  sub_1BBB84218();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1BBB132E8()
{
  result = qword_1EBC7C438;
  if (!qword_1EBC7C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C438);
  }

  return result;
}

uint64_t IntelligenceProcessInfo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C440);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB132E8();
  sub_1BBB84458();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v28[0]) = 0;
  sub_1BBAFBDA4();
  sub_1BBB84178();
  if (v34)
  {
    v9 = 0;
    v10 = 0;
    v27 = 0uLL;
  }

  else
  {
    v27 = v33;
    v9 = v31;
    v10 = v32;
  }

  v39 = v34;
  LOBYTE(v31) = 1;
  v26 = sub_1BBB841C8();
  LOBYTE(v31) = 2;
  v25 = sub_1BBB841C8();
  v40 = 3;
  v11 = sub_1BBB84138();
  v12 = v8;
  v14 = v13;
  (*(v6 + 8))(v12, v5);
  v23 = v9;
  v24 = v10;
  *&v28[0] = v9;
  *(&v28[0] + 1) = v10;
  v15 = v27;
  v28[1] = v27;
  v22 = v39;
  LOBYTE(v29) = v39;
  v17 = v25;
  v16 = v26;
  *(&v29 + 4) = __PAIR64__(v25, v26);
  *&v30 = v11;
  *(&v30 + 1) = v14;
  v18 = v27;
  *a2 = v28[0];
  a2[1] = v18;
  v19 = v30;
  a2[2] = v29;
  a2[3] = v19;
  sub_1BBACBF34(v28, &v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31 = v23;
  v32 = v24;
  v33 = v15;
  v34 = v22;
  v35 = v16;
  v36 = v17;
  v37 = v11;
  v38 = v14;
  return sub_1BBACC138(&v31);
}

unint64_t sub_1BBB13620()
{
  result = qword_1EBC7AC70;
  if (!qword_1EBC7AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AC70);
  }

  return result;
}

unint64_t sub_1BBB13698()
{
  result = qword_1EBC7C448;
  if (!qword_1EBC7C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C448);
  }

  return result;
}

unint64_t sub_1BBB136F0()
{
  result = qword_1EBC7C450;
  if (!qword_1EBC7C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C450);
  }

  return result;
}

unint64_t sub_1BBB13748()
{
  result = qword_1EBC7C458;
  if (!qword_1EBC7C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C458);
  }

  return result;
}

uint64_t sub_1BBB1379C()
{
  v0 = sub_1BBB84108();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t intelligencePrecondition(_:_:file:line:)(uint64_t (*a1)(void), uint64_t a2, void (*a3)(void))
{
  result = a1();
  if ((result & 1) == 0)
  {
    a3();
    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

void intelligencePreconditionFailure(_:file:line:)(void (*a1)(void))
{
  a1();
  sub_1BBB840A8();
  __break(1u);
}

void IntelligenceFragmentCollector.collect(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1BBB13AF4(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1BBB139AC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + *(type metadata accessor for IntelligenceFragmentCollector.State() + 20)))
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  else
  {
    v4 = *(type metadata accessor for IntelligenceFragment() + 32);
    v5 = *(a1 + v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1BBA9C784(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1BBA9C784((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[64 * v7];
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    *(v8 + 73) = *(a2 + 41);
    *(v8 + 3) = v10;
    *(v8 + 4) = v11;
    *(v8 + 2) = v9;
    *(a1 + v4) = v5;
    return sub_1BBA9B788(a2, v13);
  }

  return result;
}

Swift::Void __swiftcall IntelligenceFragmentCollector.collect(_:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + 16);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1BBB13BA8(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));
}

Swift::Void __swiftcall IntelligenceFragmentCollector.collect(_:bundleID:)(Swift::OpaquePointer _, Swift::String bundleID)
{
  v3 = *(v2 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1BBB13D18(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_1BBB13C60(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for IntelligenceFragmentCollector.State() + 20)))
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  else
  {
    type metadata accessor for IntelligenceFragment();

    return sub_1BBAE242C(v1);
  }

  return result;
}

__n128 IntelligenceFragmentCollector.boundingBoxTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = v3 + *(type metadata accessor for IntelligenceFragment() + 28) + v4;
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  v10 = *(v6 + 16);
  v11 = *v6;
  os_unfair_lock_unlock((v3 + v5));
  result = v11;
  *a1 = v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return result;
}

__n128 sub_1BBB13DF4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = v3 + *(type metadata accessor for IntelligenceFragment() + 28) + v4;
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  v10 = *(v6 + 16);
  v11 = *v6;
  os_unfair_lock_unlock((v3 + v5));
  result = v11;
  *a2 = v11;
  *(a2 + 16) = v10;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

void sub_1BBB13EB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*a2 + 16);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  v8 = v5 + *(type metadata accessor for IntelligenceFragment() + 28) + v6;
  v9 = *(a1 + 16);
  *v8 = *a1;
  *(v8 + 16) = v9;
  *(v8 + 32) = v3;
  *(v8 + 40) = v4;

  os_unfair_lock_unlock((v5 + v7));
}

void IntelligenceFragmentCollector.boundingBoxTransform.setter(_OWORD *a1)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = (v3 + *(type metadata accessor for IntelligenceFragment() + 28) + v4);
  v7 = a1[1];
  *v6 = *a1;
  v6[1] = v7;
  v6[2] = a1[2];

  os_unfair_lock_unlock((v3 + v5));
}

void (*IntelligenceFragmentCollector.boundingBoxTransform.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 16);
  *(v3 + 48) = v5;
  v6 = *v5;
  v7 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  *(v3 + 56) = v7;
  v8 = *(v6 + 48);
  *(v3 + 64) = v8;
  v9 = (v8 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v9));
  v10 = *(type metadata accessor for IntelligenceFragment() + 28);
  *(v4 + 68) = v10;
  v11 = v5 + v10 + v7;
  v12 = *(v11 + 4);
  v13 = *(v11 + 5);
  v15 = *(v11 + 1);
  v16 = *v11;
  os_unfair_lock_unlock((v5 + v9));
  *v4 = v16;
  *(v4 + 16) = v15;
  *(v4 + 32) = v12;
  *(v4 + 40) = v13;
  return sub_1BBB14138;
}

void sub_1BBB14138(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 6);
  v3 = v2 + *(*a1 + 7) + *(*a1 + 17);
  v4 = (*(*a1 + 16) + 3) & 0x1FFFFFFFCLL;
  v5 = *(*a1 + 4);
  v6 = *(*a1 + 5);
  v7 = (*a1)[1];
  v8 = **a1;
  os_unfair_lock_lock((v2 + v4));
  *v3 = v8;
  *(v3 + 16) = v7;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  os_unfair_lock_unlock((v2 + v4));

  free(v1);
}

void IntelligenceFragmentCollector.collectedFragment.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1BBB15CEC(v3 + v4, a1, type metadata accessor for IntelligenceFragment);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t IntelligenceFragmentCollector.__allocating_init(request:)(_OWORD *a1)
{
  v2 = swift_allocObject();
  IntelligenceFragmentCollector.init(request:)(a1);
  return v2;
}

uint64_t IntelligenceFragmentCollector.__allocating_init(remoteContext:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  IntelligenceFragmentCollector.init(remoteContext:)(a1);
  return v2;
}

uint64_t IntelligenceFragmentCollector.init(remoteContext:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IntelligenceFragmentCollector.State();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  *v7 = 0;
  v7[8] = 1;
  v9 = type metadata accessor for IntelligenceFragment();
  v10 = v9[5];
  v11 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  (*(*(v11 - 8) + 56))(&v7[v10], 1, 1, v11);
  v12 = &v7[v9[6]];
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *v12 = 0u;
  *(v12 + 6) = 0;
  *(v12 + 7) = 1;
  v13 = &v7[v9[7]];
  *v13 = 0x3FF0000000000000;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = 0x3FF0000000000000;
  v13[4] = 0;
  v13[5] = 0;
  v14 = MEMORY[0x1E69E7CC0];
  *&v7[v9[8]] = MEMORY[0x1E69E7CC0];
  *&v7[v9[9]] = v14;
  v7[*(v5 + 28)] = 0;
  v15 = &v7[*(v5 + 32)];
  *v15 = 0;
  v15[8] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C460);
  v16 = swift_allocObject();
  v17 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;
  *(v16 + v17) = 0;
  v18 = *(*v16 + *MEMORY[0x1E69E6B68] + 16);
  sub_1BBA981DC(v7, v16 + v18);
  *(v2 + 16) = v16;
  *&v27[0] = v8;
  sub_1BBA974E4(v27);
  v19 = v27[4];
  *(v2 + 104) = v27[5];
  v20 = v28[0];
  *(v2 + 120) = v27[6];
  *(v2 + 136) = v20;
  *(v2 + 151) = *(v28 + 15);
  v21 = v27[0];
  *(v2 + 40) = v27[1];
  v22 = v27[3];
  *(v2 + 56) = v27[2];
  *(v2 + 72) = v22;
  *(v2 + 88) = v19;
  *(v2 + 24) = v21;
  v25 = v8;
  v26 = v2;

  os_unfair_lock_lock((v16 + v17));
  sub_1BBB15440(v16 + v18);
  os_unfair_lock_unlock((v16 + v17));

  return v2;
}

uint64_t sub_1BBB145B4(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + *(*a2 + 88));
  swift_beginAccess();
  *a1 = *v3;
  *(a1 + 8) = 0;
  v4 = type metadata accessor for IntelligenceFragment();
  v5 = *(v4 + 20);
  sub_1BBA8BCC4(a1 + v5, &qword_1EBC7C478);
  v6 = _s13RemoteContextV7StorageVMa(0);
  sub_1BBB15CEC(v3 + *(v6 + 20), a1 + v5, type metadata accessor for IntelligenceFragment.RemoteID);
  v7 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  (*(*(v7 - 8) + 56))(a1 + v5, 0, 1, v7);
  v8 = (v3 + *(v6 + 24));
  v9 = (a1 + *(v4 + 28));
  v10 = v8[1];
  v11 = v8[2];
  *v9 = *v8;
  v9[1] = v10;
  v9[2] = v11;
  v12 = mach_continuous_time();
  result = type metadata accessor for IntelligenceFragmentCollector.State();
  v14 = a1 + *(result + 24);
  *v14 = v12;
  *(v14 + 8) = 0;
  return result;
}

void IntelligenceFragmentCollector.processInfo.getter(__int128 *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = (v3 + *(type metadata accessor for IntelligenceFragment() + 24) + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  v13[2] = v6[2];
  v13[3] = v9;
  v13[0] = v7;
  v13[1] = v8;
  v10 = v6[1];
  *a1 = *v6;
  a1[1] = v10;
  v11 = v6[3];
  a1[2] = v6[2];
  a1[3] = v11;
  sub_1BBB1545C(v13, &v12);
  os_unfair_lock_unlock((v3 + v5));
}

double sub_1BBB147CC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = (v3 + *(type metadata accessor for IntelligenceFragment() + 24) + v4);
  v7 = v6[3];
  v8 = *v6;
  v9 = v6[1];
  v16 = v6[2];
  v17 = v7;
  v14 = v8;
  v15 = v9;
  sub_1BBB1545C(&v14, &v13);
  os_unfair_lock_unlock((v3 + v5));
  v10 = v15;
  *a2 = v14;
  a2[1] = v10;
  result = *&v16;
  v12 = v17;
  a2[2] = v16;
  a2[3] = v12;
  return result;
}

void sub_1BBB14898(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1BBB162B0(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));
}

uint64_t IntelligenceFragmentCollector.processInfo.setter(_OWORD *a1)
{
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v3 = a1[3];
  v8[2] = a1[2];
  v8[3] = v3;
  v4 = *(v1 + 16);
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_1BBB154CC(v4 + v5);
  os_unfair_lock_unlock((v4 + v6));
  return sub_1BBA8BCC4(v8, &qword_1EBC7BBE0);
}

__n128 sub_1BBB14A0C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for IntelligenceFragment() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v14 = v3[7];
  sub_1BBB1545C(a2, v15);
  sub_1BBB1629C(v4, v5, v6, v7, v8, v9, v10, v14);
  v11 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 1) = v11;
  result = *(a2 + 32);
  v13 = *(a2 + 48);
  *(v3 + 2) = result;
  *(v3 + 3) = v13;
  return result;
}

void (*IntelligenceFragmentCollector.processInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x158uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 16);
  *(v3 + 320) = v5;
  v6 = *v5;
  v7 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  *(v3 + 328) = v7;
  v8 = *(v6 + 48);
  *(v3 + 336) = v8;
  v9 = (v8 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v9));
  v10 = (v5 + *(type metadata accessor for IntelligenceFragment() + 24) + v7);
  v12 = v10[2];
  v11 = v10[3];
  v13 = v10[1];
  *v4 = *v10;
  v4[1] = v13;
  v4[2] = v12;
  v4[3] = v11;
  v14 = *v10;
  v15 = v10[1];
  v16 = v10[3];
  v4[14] = v10[2];
  v4[15] = v16;
  v4[12] = v14;
  v4[13] = v15;
  sub_1BBB1545C(v4, (v4 + 16));
  os_unfair_lock_unlock((v5 + v9));
  return sub_1BBB14BDC;
}

void sub_1BBB14BDC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 320);
  v3 = *(*a1 + 328);
  v5 = (*(*a1 + 336) + 3) & 0x1FFFFFFFCLL;
  v6 = *(*a1 + 208);
  if (a2)
  {
    *(v2 + 64) = *(v2 + 192);
    *(v2 + 80) = v6;
    v7 = *(v2 + 240);
    *(v2 + 96) = *(v2 + 224);
    *(v2 + 112) = v7;
    MEMORY[0x1EEE9AC00](a1);
    sub_1BBB1545C(v2 + 64, v2 + 256);
    os_unfair_lock_lock((v4 + v5));
    sub_1BBB162B0(v4 + v3);
    os_unfair_lock_unlock((*(v2 + 320) + ((*(v2 + 336) + 3) & 0x1FFFFFFFCLL)));
    sub_1BBA8BCC4(v2 + 64, &qword_1EBC7BBE0);
    v8 = *(v2 + 208);
    *(v2 + 256) = *(v2 + 192);
    *(v2 + 272) = v8;
    v9 = *(v2 + 240);
    *(v2 + 288) = *(v2 + 224);
    *(v2 + 304) = v9;
    v10 = v2 + 256;
  }

  else
  {
    *(v2 + 128) = *(v2 + 192);
    *(v2 + 144) = v6;
    v11 = *(v2 + 240);
    *(v2 + 160) = *(v2 + 224);
    *(v2 + 176) = v11;
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock((v4 + v5));
    sub_1BBB162B0(v4 + v3);
    os_unfair_lock_unlock((v4 + v5));
    v10 = v2 + 128;
  }

  sub_1BBA8BCC4(v10, &qword_1EBC7BBE0);
  free(v2);
}

Swift::Void __swiftcall IntelligenceFragmentCollector.markFinished()()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1BBB154E8(v1 + v2);

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1BBB14E04(uint64_t a1)
{
  result = type metadata accessor for IntelligenceFragmentCollector.State();
  v3 = *(result + 20);
  if (*(a1 + v3))
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  else
  {
    *(a1 + v3) = 1;
    v4 = a1 + *(result + 24);
    if ((*(v4 + 8) & 1) == 0)
    {
      result = sub_1BBB14EC8(*v4);
      *v4 = 0;
      *(v4 + 8) = 1;
    }
  }

  return result;
}

uint64_t sub_1BBB14EC8(uint64_t a1)
{
  v3 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BBB836A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  v13 = *(v1 + 104);
  v14 = *(v1 + 136);
  v59 = *(v1 + 120);
  v60[0] = v14;
  *(v60 + 15) = *(v1 + 151);
  v15 = *(v1 + 40);
  v16 = *(v1 + 72);
  v55 = *(v1 + 56);
  v56 = v16;
  v57 = *(v1 + 88);
  v58 = v13;
  v53 = *(v1 + 24);
  v54 = v15;
  v17 = *(v1 + 104);
  v18 = *(v1 + 136);
  v61[6] = *(v1 + 120);
  v62[0] = v18;
  *(v62 + 15) = *(v1 + 151);
  v19 = *(v1 + 40);
  v20 = *(v1 + 72);
  v61[2] = *(v1 + 56);
  v61[3] = v20;
  v61[4] = *(v1 + 88);
  v61[5] = v17;
  v61[0] = *(v1 + 24);
  v61[1] = v19;
  if (sub_1BBA87258(v61) == 1)
  {
    v47 = a1;
    v21 = *sub_1BBA87034(v61);
    v49[2] = v55;
    v49[3] = v56;
    v49[0] = v53;
    v49[1] = v54;
    *(v50 + 15) = *(v60 + 15);
    v49[6] = v59;
    v50[0] = v60[0];
    v49[4] = v57;
    v49[5] = v58;
    sub_1BBA87034(v49);
    v22 = qword_1ED6BDEE8;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1BBB836E8();
    __swift_project_value_buffer(v23, qword_1ED6BDEF0);
    sub_1BBB836D8();

    sub_1BBB83678();
    sub_1BBAB3C08();
    sub_1BBAB3B98();
    sub_1BBAB3C5C(v24);
    v51[6] = v59;
    v52[0] = v60[0];
    *(v52 + 15) = *(v60 + 15);
    v51[2] = v55;
    v51[3] = v56;
    v51[4] = v57;
    v51[5] = v58;
    v51[0] = v53;
    v51[1] = v54;
    sub_1BBA87034(v51);

    v25 = sub_1BBB836D8();
    v26 = sub_1BBB83E48();
    sub_1BBAA3F38(&v53);
    if (sub_1BBB83E88())
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v46 = v6;
      v29 = v28;
      v48 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v47;
      *(v27 + 12) = 2082;
      v30 = v21 + *(*v21 + 88);
      swift_beginAccess();
      v31 = _s13RemoteContextV7StorageVMa(0);
      sub_1BBB15CEC(v30 + *(v31 + 20), v5, type metadata accessor for IntelligenceFragment.RemoteID);
      v32 = IntelligenceFragment.RemoteID.description.getter();
      v34 = v33;
      sub_1BBACD424(v5);
      v35 = sub_1BBA85E50(v32, v34, &v48);

      *(v27 + 14) = v35;
      v36 = sub_1BBB83698();
      _os_signpost_emit_with_name_impl(&dword_1BBA81000, v25, v26, v36, "RemoteCollection", "%{public, signpost.description:begin_time}llu %{public}s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1BFB174E0](v29, -1, -1);
      MEMORY[0x1BFB174E0](v27, -1, -1);

      sub_1BBAA3F38(&v53);
      return (*(v7 + 8))(v9, v46);
    }

    sub_1BBAA3F38(&v53);

    v44 = *(v7 + 8);
    v45 = v9;
  }

  else
  {
    sub_1BBA87034(v61);
    if (qword_1ED6BDEE8 != -1)
    {
      swift_once();
    }

    v38 = sub_1BBB836E8();
    __swift_project_value_buffer(v38, qword_1ED6BDEF0);
    sub_1BBB836D8();

    sub_1BBB83678();
    sub_1BBAB3C08();
    sub_1BBAB3B98();
    sub_1BBAB3C5C(v39);
    v40 = sub_1BBB836D8();
    v41 = sub_1BBB83E48();
    if (sub_1BBB83E88())
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = a1;
      v43 = sub_1BBB83698();
      _os_signpost_emit_with_name_impl(&dword_1BBA81000, v40, v41, v43, "Collection", "%{public, signpost.description:begin_time}llu", v42, 0xCu);
      MEMORY[0x1BFB174E0](v42, -1, -1);
    }

    v44 = *(v7 + 8);
    v45 = v12;
  }

  return v44(v45, v6);
}

uint64_t sub_1BBB1545C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBB15504(__int128 *a1)
{
  v3 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[7];
  v19[6] = v1[6];
  v20[0] = v6;
  *(v20 + 15) = *(v1 + 127);
  v7 = v1[3];
  v19[2] = v1[2];
  v19[3] = v7;
  v8 = v1[5];
  v19[4] = v1[4];
  v19[5] = v8;
  v9 = v1[1];
  v19[0] = *v1;
  v19[1] = v9;
  v10 = sub_1BBA87258(v19);
  v11 = sub_1BBA87034(v19);
  v12 = v11;
  if (v10 == 1)
  {
    v13 = *v11;
    MEMORY[0x1BFB16A50](1);
    v14 = v13 + *(*v13 + 88);
    swift_beginAccess();
    v15 = _s13RemoteContextV7StorageVMa(0);
    sub_1BBB15CEC(v14 + *(v15 + 20), v5, type metadata accessor for IntelligenceFragment.RemoteID);
    sub_1BBB834F8();
    sub_1BBB15D54();
    sub_1BBB83918();
    return sub_1BBACD424(v5);
  }

  else
  {
    MEMORY[0x1BFB16A50](0);
    v17[5] = v12[5];
    v17[6] = v12[6];
    v18[0] = v12[7];
    *(v18 + 15) = *(v12 + 127);
    v17[1] = v12[1];
    v17[2] = v12[2];
    v17[3] = v12[3];
    v17[4] = v12[4];
    v17[0] = *v12;
    return IntelligenceCollectionRequest.hash(into:)(a1);
  }
}

uint64_t sub_1BBB156C8()
{
  v1 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB843D8();
  v4 = v0[7];
  v18[6] = v0[6];
  v19[0] = v4;
  *(v19 + 15) = *(v0 + 127);
  v5 = v0[3];
  v18[2] = v0[2];
  v18[3] = v5;
  v6 = v0[5];
  v18[4] = v0[4];
  v18[5] = v6;
  v7 = v0[1];
  v18[0] = *v0;
  v18[1] = v7;
  v8 = sub_1BBA87258(v18);
  v9 = sub_1BBA87034(v18);
  v10 = v9;
  if (v8 == 1)
  {
    v11 = *v9;
    MEMORY[0x1BFB16A50](1);
    v12 = v11 + *(*v11 + 88);
    swift_beginAccess();
    v13 = _s13RemoteContextV7StorageVMa(0);
    sub_1BBB15CEC(v12 + *(v13 + 20), v3, type metadata accessor for IntelligenceFragment.RemoteID);
    sub_1BBB834F8();
    sub_1BBB15D54();
    sub_1BBB83918();
    sub_1BBACD424(v3);
  }

  else
  {
    MEMORY[0x1BFB16A50](0);
    v15[5] = v10[5];
    v15[6] = v10[6];
    v16[0] = v10[7];
    *(v16 + 15) = *(v10 + 127);
    v15[1] = v10[1];
    v15[2] = v10[2];
    v15[3] = v10[3];
    v15[4] = v10[4];
    v15[0] = *v10;
    IntelligenceCollectionRequest.hash(into:)(v17);
  }

  return sub_1BBB84438();
}

uint64_t sub_1BBB158A0()
{
  v1 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB843D8();
  v4 = v0[7];
  v18[6] = v0[6];
  v19[0] = v4;
  *(v19 + 15) = *(v0 + 127);
  v5 = v0[3];
  v18[2] = v0[2];
  v18[3] = v5;
  v6 = v0[5];
  v18[4] = v0[4];
  v18[5] = v6;
  v7 = v0[1];
  v18[0] = *v0;
  v18[1] = v7;
  v8 = sub_1BBA87258(v18);
  v9 = sub_1BBA87034(v18);
  v10 = v9;
  if (v8 == 1)
  {
    v11 = *v9;
    MEMORY[0x1BFB16A50](1);
    v12 = v11 + *(*v11 + 88);
    swift_beginAccess();
    v13 = _s13RemoteContextV7StorageVMa(0);
    sub_1BBB15CEC(v12 + *(v13 + 20), v3, type metadata accessor for IntelligenceFragment.RemoteID);
    sub_1BBB834F8();
    sub_1BBB15D54();
    sub_1BBB83918();
    sub_1BBACD424(v3);
  }

  else
  {
    MEMORY[0x1BFB16A50](0);
    v15[5] = v10[5];
    v15[6] = v10[6];
    v16[0] = v10[7];
    *(v16 + 15) = *(v10 + 127);
    v15[1] = v10[1];
    v15[2] = v10[2];
    v15[3] = v10[3];
    v15[4] = v10[4];
    v15[0] = *v10;
    IntelligenceCollectionRequest.hash(into:)(v17);
  }

  return sub_1BBB84438();
}

uint64_t IntelligenceFragmentCollector.hashValue.getter()
{
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v0);
  return sub_1BBB84438();
}

unint64_t sub_1BBB15AC4()
{
  result = qword_1ED6BDF48;
  if (!qword_1ED6BDF48)
  {
    type metadata accessor for IntelligenceFragmentCollector();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDF48);
  }

  return result;
}

void sub_1BBB15B80()
{
  type metadata accessor for IntelligenceFragment();
  if (v0 <= 0x3F)
  {
    sub_1BBB15C0C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BBB15C0C()
{
  if (!qword_1ED6BDE50)
  {
    v0 = sub_1BBB83E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6BDE50);
    }
  }
}

uint64_t sub_1BBB15C5C(uint64_t a1)
{
  v3 = *(a1 + 136);
  v1 = a1 + 136;
  v2 = v3;
  *v1 = v3;
  v5 = *(v1 + 4);
  result = v1 + 4;
  v6 = v5 | (*(result + 2) << 16);
  *result = v5;
  *(result + 2) = ((v2 | (v6 << 32)) >> 48) & 0x7F;
  return result;
}

unint64_t sub_1BBB15C98()
{
  result = qword_1EBC7C468;
  if (!qword_1EBC7C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C468);
  }

  return result;
}

uint64_t sub_1BBB15CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBB15D54()
{
  result = qword_1EBC7AE48;
  if (!qword_1EBC7AE48)
  {
    sub_1BBB834F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AE48);
  }

  return result;
}

uint64_t sub_1BBB15DA0(_OWORD *a1, __int128 *a2)
{
  v4 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v10 = a1[5];
  v11 = a1[7];
  v79 = a1[6];
  v80[0] = v11;
  *(v80 + 15) = *(a1 + 127);
  v12 = a1[1];
  v13 = a1[3];
  v75 = a1[2];
  v76 = v13;
  v14 = a1[3];
  v15 = a1[5];
  v77 = a1[4];
  v78 = v15;
  v16 = a1[1];
  v74[0] = *a1;
  v74[1] = v16;
  v17 = a2[5];
  v18 = a2[7];
  v87 = a2[6];
  v88[0] = v18;
  *(v88 + 15) = *(a2 + 127);
  v19 = a2[1];
  v20 = a2[3];
  v83 = a2[2];
  v84 = v20;
  v21 = a2[3];
  v22 = a2[5];
  v85 = a2[4];
  v86 = v22;
  v23 = a2[1];
  v81 = *a2;
  v82 = v23;
  v24 = a1[5];
  v25 = a1[7];
  v89[6] = a1[6];
  v90[0] = v25;
  *(v90 + 15) = *(a1 + 127);
  v26 = a1[1];
  v27 = a1[3];
  v89[2] = a1[2];
  v89[3] = v27;
  v28 = a1[4];
  v89[5] = v24;
  v89[4] = v28;
  v89[0] = *a1;
  v89[1] = v26;
  *(v91 + 15) = *(a2 + 127);
  v29 = a2[7];
  v90[8] = v87;
  v91[0] = v29;
  v90[4] = v83;
  v90[5] = v21;
  v90[7] = v17;
  v90[6] = v85;
  v90[3] = v19;
  v90[2] = v81;
  v30 = a1[7];
  v92[6] = v79;
  v93[0] = v30;
  *(v93 + 15) = *(a1 + 127);
  v92[2] = v75;
  v92[3] = v14;
  v92[4] = v77;
  v92[5] = v10;
  v92[0] = v74[0];
  v92[1] = v12;
  if (sub_1BBA87258(v92) != 1)
  {
    v39 = sub_1BBA87034(v92);
    v72 = v87;
    v73[0] = v88[0];
    *(v73 + 15) = *(v88 + 15);
    v68 = v83;
    v69 = v84;
    v70 = v85;
    v71 = v86;
    v66 = v81;
    v67 = v82;
    if (sub_1BBA87258(&v66) != 1)
    {
      v40 = sub_1BBA87034(&v66);
      v59 = v39[5];
      v60 = v39[6];
      v61[0] = v39[7];
      *(v61 + 15) = *(v39 + 127);
      v55 = v39[1];
      v56 = v39[2];
      v57 = v39[3];
      v58 = v39[4];
      v54 = *v39;
      v41 = v40[7];
      v52 = v40[6];
      v53[0] = v41;
      *(v53 + 15) = *(v40 + 127);
      v42 = v40[3];
      v48 = v40[2];
      v49 = v42;
      v43 = v40[5];
      v50 = v40[4];
      v51 = v43;
      v44 = v40[1];
      v46 = *v40;
      v47 = v44;
      sub_1BBA98F54(&v81, v64);
      sub_1BBA98F54(v74, v64);
      sub_1BBA98F54(v74, v64);
      sub_1BBA98F54(&v81, v64);
      v38 = static IntelligenceCollectionRequest.== infix(_:_:)(&v54, &v46);
      sub_1BBA8BCC4(v89, &qword_1EBC7C470);
      v62[6] = v52;
      v63[0] = v53[0];
      *(v63 + 15) = *(v53 + 15);
      v62[2] = v48;
      v62[3] = v49;
      v62[4] = v50;
      v62[5] = v51;
      v62[0] = v46;
      v62[1] = v47;
      sub_1BBA96D48(v62);
      v64[6] = v60;
      v65[0] = v61[0];
      *(v65 + 15) = *(v61 + 15);
      v64[2] = v56;
      v64[3] = v57;
      v64[4] = v58;
      v64[5] = v59;
      v64[0] = v54;
      v64[1] = v55;
      sub_1BBA96D48(v64);
      return v38 & 1;
    }

    sub_1BBA87034(&v66);
    goto LABEL_6;
  }

  v31 = *sub_1BBA87034(v92);
  v68 = v83;
  v69 = v84;
  v66 = v81;
  v67 = v82;
  *(v73 + 15) = *(v88 + 15);
  v72 = v87;
  v73[0] = v88[0];
  v70 = v85;
  v71 = v86;
  v32 = sub_1BBA87258(&v66);
  v33 = sub_1BBA87034(&v66);
  if (v32 != 1)
  {
LABEL_6:
    sub_1BBA98F54(v74, &v66);
    sub_1BBA98F54(&v81, &v66);
    sub_1BBA8BCC4(v89, &qword_1EBC7C470);
    v38 = 0;
    return v38 & 1;
  }

  v34 = *v33;
  v35 = v31 + *(*v31 + 88);
  swift_beginAccess();
  v36 = _s13RemoteContextV7StorageVMa(0);
  sub_1BBB15CEC(v35 + *(v36 + 20), v9, type metadata accessor for IntelligenceFragment.RemoteID);
  v37 = v34 + *(*v34 + 88);
  swift_beginAccess();
  sub_1BBB15CEC(v37 + *(v36 + 20), v6, type metadata accessor for IntelligenceFragment.RemoteID);
  sub_1BBA98F54(&v81, v64);
  sub_1BBA98F54(v74, v64);
  sub_1BBA98F54(v74, v64);
  sub_1BBA98F54(&v81, v64);
  v38 = sub_1BBB834C8();
  sub_1BBACD424(v6);
  sub_1BBACD424(v9);
  sub_1BBA8BCC4(v89, &qword_1EBC7C470);
  sub_1BBAA3F38(&v81);
  sub_1BBAA3F38(v74);
  return v38 & 1;
}

uint64_t sub_1BBB1629C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a8 != 1)
  {
  }

  return result;
}

uint64_t sub_1BBB162CC(int a1)
{
  v2 = v1;
  if (qword_1ED6BF170 != -1)
  {
    swift_once();
  }

  v4 = sub_1BBB83758();
  __swift_project_value_buffer(v4, qword_1ED6BF0A8);
  v5 = sub_1BBB83738();
  v6 = sub_1BBB83D58();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_1BBA81000, v5, v6, "Received agent launch notification with agent PID: %{public}d", v7, 8u);
    MEMORY[0x1BFB174E0](v7, -1, -1);
  }

  v8 = *(v2 + 32);
  os_unfair_lock_lock((v8 + 56));
  if ((*(v8 + 24) & 1) == 0 && *(v8 + 20) != a1)
  {
    if (*(v8 + 32))
    {
      sub_1BBB837B8();
    }

    *(v8 + 32) = 0;

    *(v8 + 20) = 0;
    *(v8 + 24) = 1;
  }

  os_unfair_lock_unlock((v8 + 56));
  os_unfair_lock_lock((v8 + 56));
  sub_1BBA83C0C();
  os_unfair_lock_unlock((v8 + 56));
}

uint64_t static IntelligenceSupportAgentXPCConnection.sendLaunchSentinel()()
{
  v0 = sub_1BBB83828();
  v20 = *(v0 - 8);
  v21 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BBB83878();
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BBB83848();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BBB83798();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1BBB83A88();
  xpc_connection_create_mach_service((v11 + 32), 0, 0);

  xpc_connection_set_non_launching();
  sub_1BBB837C8();
  swift_unknownObjectRetain();
  sub_1BBB83788();
  v12 = sub_1BBB83768();
  sub_1BBA83138();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E7F88], v6);

  v13 = sub_1BBB83DD8();
  (*(v7 + 8))(v9, v6);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = 0xD000000000000025;
  v14[4] = 0x80000001BBB9C3F0;
  aBlock[4] = sub_1BBB16DD8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBA83B58;
  aBlock[3] = &block_descriptor_2;
  v15 = _Block_copy(aBlock);
  sub_1BBB83858();
  aBlock[6] = MEMORY[0x1E69E7CC0];
  sub_1BBA83224();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC7CB30);
  sub_1BBA83AF4();
  v16 = v21;
  sub_1BBB83F28();
  MEMORY[0x1BFB16410](0, v5, v2, v15);
  _Block_release(v15);
  swift_unknownObjectRelease();

  (*(v20 + 8))(v2, v16);
  (*(v18 + 8))(v5, v19);

  return v12;
}

uint64_t sub_1BBB16A88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BBB837E8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1BBB16AF4()
{
  if (qword_1ED6BF170 != -1)
  {
    swift_once();
  }

  v0 = sub_1BBB83758();
  __swift_project_value_buffer(v0, qword_1ED6BF0A8);
  v1 = sub_1BBB83738();
  v2 = sub_1BBB83D38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BBA81000, v1, v2, "Sending launch sentinel", v3, 2u);
    MEMORY[0x1BFB174E0](v3, -1, -1);
  }

  sub_1BBA84270();
  return sub_1BBB837A8();
}

uint64_t IntelligenceSupportAgentXPCConnection.deinit()
{
  sub_1BBA85AE0(v0 + 16);

  return v0;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BBB16E24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_1BBB16E80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t IntelligenceElement.Collection.numberOfSections.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t IntelligenceElement.Collection.numberOfSections.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v7 = *v1;
    swift_beginAccess();
    *(v7 + 16) = a1;
    *(v7 + 24) = v4;
    *(v7 + 32) = v5;
    *(v7 + 40) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C488);
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = v4;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;

    *v1 = v9;
  }

  return result;
}

void (*IntelligenceElement.Collection.numberOfSections.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 16);
  return sub_1BBB170DC;
}

uint64_t IntelligenceElement.Collection.numberOfItems.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 24);
}

uint64_t IntelligenceElement.Collection.numberOfItems.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v7 = *v1;
    swift_beginAccess();
    *(v7 + 16) = v4;
    *(v7 + 24) = a1;
    *(v7 + 32) = v5;
    *(v7 + 40) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C488);
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = a1;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;

    *v1 = v9;
  }

  return result;
}

void (*IntelligenceElement.Collection.numberOfItems.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 24);
  return sub_1BBB172A0;
}

void sub_1BBB172B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 24));

  free(v3);
}

BOOL static IntelligenceElement.Collection.Layout.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t sub_1BBB17338(uint64_t a1)
{
  v2 = sub_1BBAB5818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB17374(uint64_t a1)
{
  v2 = sub_1BBAB5818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB173B0(uint64_t a1)
{
  v2 = sub_1BBB182E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB173EC(uint64_t a1)
{
  v2 = sub_1BBB182E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB17428(uint64_t a1)
{
  v2 = sub_1BBAB5A64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB17464(uint64_t a1)
{
  v2 = sub_1BBAB5A64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1BBB174A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t IntelligenceElement.Collection.layout.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 32);
  return result;
}

uint64_t IntelligenceElement.Collection.layout.setter(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_beginAccess();
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[5];

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v7 = *v1;
    swift_beginAccess();
    v7[2] = v5;
    v7[3] = v4;
    *(v7 + 32) = v2;
    v7[5] = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C488);
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = v4;
    *(v9 + 32) = v2;
    *(v9 + 40) = v6;

    *v1 = v9;
  }

  return result;
}

void (*IntelligenceElement.Collection.layout.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 32);
  return sub_1BBB17690;
}

void sub_1BBB17690(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  IntelligenceElement.Collection.layout.setter(v3);

  free(v2);
}

uint64_t IntelligenceElement.Collection.sections.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = *(v3 + 32);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v7 = *v1;
    swift_beginAccess();
    *(v7 + 16) = v5;
    *(v7 + 24) = v4;
    *(v7 + 32) = v6;
    *(v7 + 40) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C488);
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = v4;
    *(v9 + 32) = v6;
    *(v9 + 40) = a1;

    *v1 = v9;
  }

  return result;
}

void (*IntelligenceElement.Collection.sections.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 40);

  return sub_1BBB178A0;
}

void sub_1BBB178A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    IntelligenceElement.Collection.sections.setter(v4);
  }

  else
  {
    IntelligenceElement.Collection.sections.setter(v3);
  }

  free(v2);
}

uint64_t IntelligenceElement.Collection.init(numberOfSections:numberOfItems:layout:sections:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C488);
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v9;
  *(result + 40) = a4;
  *a5 = result;
  return result;
}

uint64_t sub_1BBB17980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10 = *v4;
  swift_beginAccess();
  v11 = *(v10 + 40);

  v12 = Array<A>.recursiveMap<A>(_:transform:)(a1, a2, a3, v11);

  if (v5)
  {
  }

  v15 = *(v10 + 16);
  v14 = *(v10 + 24);
  v16 = *(v10 + 32);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    swift_beginAccess();
    *(v10 + 16) = v15;
    *(v10 + 24) = v14;
    *(v10 + 32) = v16;
    *(v10 + 40) = v12;

    *a4 = v10;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C488);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v14;
    *(v17 + 32) = v16;
    *(v17 + 40) = v12;

    *a4 = v17;
  }

  return result;
}

uint64_t sub_1BBB17AC4()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB17B94()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB17C50()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB17D1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB18578();
  *a1 = result;
  return result;
}

void sub_1BBB17D4C(unint64_t *a1@<X8>)
{
  v2 = 0xED0000736D657449;
  v3 = 0x664F7265626D756ELL;
  v4 = 0xE600000000000000;
  v5 = 0x74756F79616CLL;
  if (*v1 != 2)
  {
    v5 = 0x736E6F6974636573;
    v4 = 0xE800000000000000;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001BBB9A870;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1BBB17DD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB18578();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB17E00(uint64_t a1)
{
  v2 = sub_1BBAB586C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB17E3C(uint64_t a1)
{
  v2 = sub_1BBAB586C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Collection.description.getter()
{
  v1 = *v0;
  sub_1BBB84028();

  swift_beginAccess();
  v2 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v2);

  v3 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1BBA86A94((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[16 * v5];
  *(v6 + 4) = 0xD000000000000012;
  *(v6 + 5) = 0x80000001BBB9C500;
  sub_1BBB84028();

  v7 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v7);

  v9 = *(v3 + 2);
  v8 = *(v3 + 3);
  if (v9 >= v8 >> 1)
  {
    v3 = sub_1BBA86A94((v8 > 1), v9 + 1, 1, v3);
  }

  *(v3 + 2) = v9 + 1;
  v10 = &v3[16 * v9];
  *(v10 + 4) = 0x664F7265626D756ELL;
  *(v10 + 5) = 0xEF203A736D657449;
  v11 = *(v1 + 32);
  v12 = 1953720684;
  if ((v11 & 1) == 0)
  {
    v12 = 0x6D6F74737563;
  }

  v13 = 0xE600000000000000;
  if (v11)
  {
    v13 = 0xE400000000000000;
  }

  if (v11 == 2)
  {
    v14 = 0x646578696DLL;
  }

  else
  {
    v14 = v12;
  }

  if (v11 == 2)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = v13;
  }

  MEMORY[0x1BFB16150](v14, v15);

  v17 = *(v3 + 2);
  v16 = *(v3 + 3);
  if (v17 >= v16 >> 1)
  {
    v3 = sub_1BBA86A94((v16 > 1), v17 + 1, 1, v3);
  }

  *(v3 + 2) = v17 + 1;
  v18 = &v3[16 * v17];
  *(v18 + 4) = 0x203A74756F79616CLL;
  *(v18 + 5) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v19 = sub_1BBB83938();
  v21 = v20;

  MEMORY[0x1BFB16150](v19, v21);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return 0x697463656C6C6F43;
}

uint64_t IntelligenceElement.Collection.Layout.description.getter()
{
  v1 = *v0;
  v2 = 1953720684;
  if ((v1 & 1) == 0)
  {
    v2 = 0x6D6F74737563;
  }

  if (v1 == 2)
  {
    return 0x646578696DLL;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BBB181DC()
{
  v1 = *v0;
  v2 = 1953720684;
  if ((v1 & 1) == 0)
  {
    v2 = 0x6D6F74737563;
  }

  if (v1 == 2)
  {
    return 0x646578696DLL;
  }

  else
  {
    return v2;
  }
}

uint64_t _s21UIIntelligenceSupport19IntelligenceElementV10CollectionV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v12 = *(v2 + 16);
  v13 = v4;
  v14 = v5;
  swift_beginAccess();
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v9 = *(v3 + 16);
  v10 = v6;
  v11 = v7;

  LOBYTE(v5) = sub_1BBB18520(&v12, &v9);

  return v5 & 1;
}

unint64_t sub_1BBB182E8()
{
  result = qword_1EBC7B018;
  if (!qword_1EBC7B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B018);
  }

  return result;
}

uint64_t sub_1BBB1834C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1BBB18360(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1BBB18380(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BBB183C8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1BBB1841C()
{
  result = qword_1EBC7C4D0;
  if (!qword_1EBC7C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C4D0);
  }

  return result;
}

unint64_t sub_1BBB18474()
{
  result = qword_1EBC7C4D8;
  if (!qword_1EBC7C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C4D8);
  }

  return result;
}

unint64_t sub_1BBB184CC()
{
  result = qword_1EBC7C4E0;
  if (!qword_1EBC7C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C4E0);
  }

  return result;
}

uint64_t sub_1BBB18520(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (v4 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    v8 = (v6 ^ v4) & 1;
    if (v6 == 2 || v8 != 0)
    {
      return 0;
    }
  }

  return sub_1BBAFF5D8(v5, v7);
}

uint64_t sub_1BBB18578()
{
  v0 = sub_1BBB84108();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BBB185C4(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = result + 32;
    do
    {
      result = sub_1BBAE2040(a2, *a3);
      v6 += 64;
      --v3;
    }

    while (v3);
  }

  return result;
}

double IntelligenceFragment.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for IntelligenceFragment();
  v3 = v2[5];
  v4 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + v2[6];
  result = 0.0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = 0u;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  v7 = (a1 + v2[7]);
  *v7 = 0x3FF0000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0x3FF0000000000000;
  v7[4] = 0;
  v7[5] = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(a1 + v2[8]) = MEMORY[0x1E69E7CC0];
  *(a1 + v2[9]) = v8;
  return result;
}

void IntelligenceFragment.requestID.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t IntelligenceFragment.requestID.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t IntelligenceFragment.remoteID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFragment() + 20);

  return sub_1BBAA4F24(a1, v3);
}

uint64_t IntelligenceFragment.processInfo.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IntelligenceFragment() + 24));
  v5 = v3[3];
  v10 = v3[2];
  v4 = v10;
  v11 = v5;
  v6 = v3[1];
  v9[0] = *v3;
  v9[1] = v6;
  *a1 = v9[0];
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1BBA8BC5C(v9, &v8, &qword_1EBC7BBE0);
}

__n128 IntelligenceFragment.processInfo.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for IntelligenceFragment() + 24));
  v4 = v3[3];
  v9[2] = v3[2];
  v9[3] = v4;
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  sub_1BBA8BCC4(v9, &qword_1EBC7BBE0);
  v6 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v6;
  result = *(a1 + 32);
  v8 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v8;
  return result;
}

uint64_t IntelligenceFragment.bundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for IntelligenceFragment() + 24));
  v2 = v1[3];
  v7[2] = v1[2];
  v8 = v2;
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  if (*(&v8 + 1) == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v8;
  }

  sub_1BBA8BC5C(v7, &v6, &qword_1EBC7BBE0);
  return v4;
}

uint64_t sub_1BBB189CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IntelligenceFragment() + 24));
  v4 = v3[3];
  v10[2] = v3[2];
  v11 = v4;
  v5 = v3[1];
  v10[0] = *v3;
  v10[1] = v5;
  v7 = *(&v11 + 1);
  v6 = v11;
  if (*(&v11 + 1) == 1)
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  return sub_1BBA8BC5C(v10, &v9, &qword_1EBC7BBE0);
}

uint64_t sub_1BBB18A48(void *a1, uint64_t a2)
{
  result = type metadata accessor for IntelligenceFragment();
  v5 = a2 + *(result + 24);
  if (*(v5 + 56) != 1)
  {
    v8 = a1;
    v6 = *a1;
    v7 = v8[1];

    *(v5 + 48) = v6;
    *(v5 + 56) = v7;
  }

  return result;
}

uint64_t IntelligenceFragment.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IntelligenceFragment() + 24);
  if (*(v5 + 56) == 1)
  {
  }

  else
  {

    *(v5 + 48) = a1;
    *(v5 + 56) = a2;
  }

  return result;
}

void (*IntelligenceFragment.bundleID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 144) = v1;
  v5 = *(type metadata accessor for IntelligenceFragment() + 24);
  *(v4 + 152) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  *(v4 + 32) = v6[2];
  *(v4 + 48) = v9;
  *v4 = v7;
  *(v4 + 16) = v8;
  v10 = *(v4 + 48);
  v11 = *(v4 + 56);
  if (v11 == 1)
  {
    v10 = 0;
    v11 = 0;
  }

  *(v4 + 128) = v10;
  *(v4 + 136) = v11;
  sub_1BBA8BC5C(v4, v4 + 64, &qword_1EBC7BBE0);
  return sub_1BBB18BE8;
}

void sub_1BBB18BE8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  v4 = *(*a1 + 144);
  if (a2)
  {
    v5 = v4 + v3;
    if (*(v4 + v3 + 56) != 1)
    {
      v7 = v2[16];
      v6 = v2[17];

      *(v5 + 48) = v7;
      *(v5 + 56) = v6;
    }

    goto LABEL_6;
  }

  v8 = v4 + v3;
  v9 = v2[17];
  if (*(v4 + v3 + 56) == 1)
  {
LABEL_6:

    goto LABEL_8;
  }

  v10 = v2[16];

  *(v8 + 48) = v10;
  *(v8 + 56) = v9;
LABEL_8:

  free(v2);
}

__n128 IntelligenceFragment.boundingBoxTransform.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFragment() + 28);
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  *(v3 + 32) = result;
  return result;
}

uint64_t IntelligenceFragment.elements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceFragment() + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntelligenceFragment.commands.getter()
{
  type metadata accessor for IntelligenceFragment();
}

uint64_t IntelligenceFragment.commands.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceFragment() + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntelligenceFragment.visitAllElements(_:)(void (*a1)(__int128 *), uint64_t a2)
{
  result = type metadata accessor for IntelligenceFragment();
  v6 = *(v2 + *(result + 32));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 32);
    while (v8 < *(v6 + 16))
    {
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      *(v18 + 9) = *(v9 + 41);
      v17[1] = v11;
      v18[0] = v12;
      v17[0] = v10;
      ++v8;
      v13 = v9[1];
      v15[0] = *v9;
      v15[1] = v13;
      v16[0] = v9[2];
      *(v16 + 9) = *(v9 + 41);
      memset(&v14[8], 0, 200);
      *v14 = MEMORY[0x1E69E7CC0];
      *&v14[208] = 1;
      *&v14[216] = 4;
      sub_1BBA9B788(v17, v19);
      sub_1BBAE5984(v14, v15, a1, a2);
      v19[10] = *&v14[160];
      v19[11] = *&v14[176];
      v20[0] = *&v14[192];
      *(v20 + 10) = *&v14[202];
      v19[6] = *&v14[96];
      v19[7] = *&v14[112];
      v19[8] = *&v14[128];
      v19[9] = *&v14[144];
      v19[2] = *&v14[32];
      v19[3] = *&v14[48];
      v19[4] = *&v14[64];
      v19[5] = *&v14[80];
      v19[0] = *v14;
      v19[1] = *&v14[16];
      sub_1BBAA53A8(v19);
      result = sub_1BBA9E174(v17);
      v9 += 4;
      if (v7 == v8)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BBB19008()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB19110@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB1BB8C();
  *a1 = result;
  return result;
}

void sub_1BBB19140(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000044;
  v4 = 0x4974736575716572;
  v5 = 0x80000001BBB9A820;
  v6 = 0xD000000000000014;
  v7 = 0x73746E656D656C65;
  if (v2 != 4)
  {
    v7 = 0x73646E616D6D6F63;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x444965746F6D6572;
  if (v2 != 1)
  {
    v9 = 0x49737365636F7270;
    v8 = 0xEB000000006F666ELL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}