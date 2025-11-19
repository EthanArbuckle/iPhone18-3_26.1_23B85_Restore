uint64_t sub_26BFE3B6C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_26C00930C();
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v29 = &v28 - v11;
  v12 = sub_26C00934C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_26C00947C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0096AC();
  v19 = v32;
  result = sub_26C0096BC();
  if (!v19)
  {
    v21 = v15;
    v32 = v10;
    v22 = v30;
    (*(v31 + 104))(v5, *MEMORY[0x277D6A898], v30);
    v23 = sub_26C0094DC();
    v24 = v29;
    sub_26C0097AC();
    (*(v31 + 8))(v5, v22);
    v25 = v28;
    (*(v21 + 32))(v28, v18, v14);
    v26 = v32;
    sub_26BFE59A8(v24, v32);
    v27 = *(_s11GeneralNameO9OtherNameVMa(0) + 20);
    (*(*(v23 - 8) + 56))(v25 + v27, 1, 1, v23);
    return sub_26BFB7A64(v26, v25 + v27);
  }

  return result;
}

uint64_t sub_26BFE3EF0(uint64_t a1)
{
  v2 = sub_26C00950C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26C00948C();
}

uint64_t sub_26BFE3FC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_26C00930C();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C00934C();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - v13;
  v32 = sub_26C0094DC();
  v15 = *(v32 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v32);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00947C();
  v19 = v33;
  result = sub_26C00976C();
  if (!v19)
  {
    v27 = v18;
    v28 = v10;
    v22 = v30;
    v21 = v31;
    v33 = v7;
    v23 = _s11GeneralNameO9OtherNameVMa(0);
    sub_26BEE2A7C(a2 + *(v23 + 20), v14);
    v24 = v32;
    if ((*(v15 + 48))(v14, 1, v32) == 1)
    {
      return sub_26BE2E258(v14, &qword_28045EE48, &unk_26C022430);
    }

    else
    {
      v25 = v27;
      (*(v15 + 32))(v27, v14, v24);
      (*(v22 + 104))(v6, *MEMORY[0x277D6A898], v21);
      v26 = v28;
      sub_26C0092EC();
      sub_26C00975C();
      (*(v29 + 8))(v26, v33);
      return (*(v15 + 8))(v25, v24);
    }
  }

  return result;
}

uint64_t sub_26BFE431C()
{
  v1 = sub_26C0094DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFE5820(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  v10 = _s11GeneralNameO9OtherNameVMa(0);
  sub_26BEE2A7C(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_26C00B07C();
    sub_26BFE5820(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v2 + 8))(v5, v1);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFE4558(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - v11;
  sub_26C00947C();
  sub_26BFE5820(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  sub_26BEE2A7C(v2 + *(a2 + 20), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return sub_26C00B07C();
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_26C00B07C();
  sub_26BFE5820(&qword_28045F0C8, MEMORY[0x277D6A988]);
  sub_26C00A3CC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26BFE4780(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - v11;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFE5820(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  sub_26BEE2A7C(v2 + *(a2 + 20), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_26C00B07C();
    sub_26BFE5820(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v5 + 8))(v8, v4);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFE49C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 20);
  v13 = sub_26C0094DC();
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  sub_26C0097FC();
  v14 = sub_26C00934C();
  (*(*(v14 - 8) + 8))(a2, v14);
  v15 = sub_26C00950C();
  (*(*(v15 - 8) + 8))(a1, v15);
  if (v4)
  {
    return sub_26BE2E258(a4 + v12, &qword_28045EE48, &unk_26C022430);
  }

  sub_26BE2E258(a4 + v12, &qword_28045EE48, &unk_26C022430);
  return sub_26BFE5940(v10, a4, _s11GeneralNameO9OtherNameVMa);
}

uint64_t sub_26BFE4D48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  sub_26C00947C();
  sub_26BFE5820(&qword_28045E920, MEMORY[0x277D6A958]);
  v10[0] = sub_26C00AEFC();
  v10[1] = v7;
  MEMORY[0x26D699090](8250, 0xE200000000000000);
  sub_26BEE2A7C(v1 + *(a1 + 20), v6);
  v8 = sub_26C00A51C();
  MEMORY[0x26D699090](v8);

  return v10[0];
}

uint64_t MLS.GeneralNames.init(derEncoded:withIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  _s11GeneralNameOMa(0);
  sub_26BFE5820(&qword_280460818, _s11GeneralNameOMa);
  v7 = sub_26C0097EC();
  if (v3)
  {
    v8 = sub_26C00934C();
    (*(*(v8 - 8) + 8))(a2, v8);
    v9 = sub_26C00950C();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v11 = v7;
    v12 = sub_26C00934C();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_26C00950C();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v11;
  }

  return result;
}

void sub_26BFE5070(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a2 + 16);
  do
  {
    if (v5 == v4)
    {
      break;
    }

    v6 = *(_s11GeneralNameOMa(0) - 8);
    v7 = v4 + 1;
    v8 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4;
    sub_26BFE5820(&qword_280460780, _s11GeneralNameOMa);
    sub_26C00976C();
    v4 = v7;
  }

  while (!v2);
}

unint64_t sub_26BFE51A0()
{
  result = qword_280460820;
  if (!qword_280460820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460820);
  }

  return result;
}

unint64_t sub_26BFE51F8()
{
  result = qword_280460828;
  if (!qword_280460828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460828);
  }

  return result;
}

uint64_t sub_26BFE524C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  _s11GeneralNameOMa(0);
  sub_26BFE5820(&qword_280460818, _s11GeneralNameOMa);
  v7 = sub_26C0097EC();
  if (v3)
  {
    v8 = sub_26C00934C();
    (*(*(v8 - 8) + 8))(a2, v8);
    v9 = sub_26C00950C();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v11 = v7;
    v12 = sub_26C00934C();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_26C00950C();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v11;
  }

  return result;
}

uint64_t sub_26BFE54D8()
{
  result = _s11GeneralNameO9OtherNameVMa(319);
  if (v1 <= 0x3F)
  {
    result = sub_26C0094DC();
    if (v2 <= 0x3F)
    {
      result = sub_26C0093DC();
      if (v3 <= 0x3F)
      {
        result = sub_26C00947C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BFE55C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C00947C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26BFE56D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26C00947C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26BFE5820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BFE5940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFE59A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFE5A18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFE5A80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_26BFE5AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  if ((sub_26C00945C() & 1) == 0)
  {
    return 0;
  }

  v17 = *(_s11GeneralNameO9OtherNameVMa(0) + 20);
  v18 = *(v13 + 48);
  sub_26BEE2A7C(a1 + v17, v16);
  sub_26BEE2A7C(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_26BE2E258(v16, &qword_28045EE48, &unk_26C022430);
      return 1;
    }

    goto LABEL_7;
  }

  sub_26BEE2A7C(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_26BE2E258(v16, &qword_28045F0D8, &unk_26C01A530);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_26BFE5820(&qword_28045F0E0, MEMORY[0x277D6A988]);
  v21 = sub_26C00A43C();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_26BE2E258(v16, &qword_28045EE48, &unk_26C022430);
  return (v21 & 1) != 0;
}

uint64_t sub_26BFE5DF8(uint64_t a1, uint64_t a2)
{
  v108 = a1;
  v3 = sub_26C00947C();
  v102 = *(v3 - 8);
  v103 = v3;
  v4 = *(v102 + 64);
  MEMORY[0x28223BE20](v3);
  v95 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C0093DC();
  v100 = *(v6 - 8);
  v101 = v6;
  v7 = *(v100 + 64);
  MEMORY[0x28223BE20](v6);
  v94 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C0094DC();
  v104 = *(v9 - 8);
  v105 = v9;
  v10 = *(v104 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v93 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v107 = &v93 - v13;
  v14 = _s11GeneralNameO9OtherNameVMa(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v106 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s11GeneralNameOMa(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v99 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v98 = &v93 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v96 = (&v93 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v97 = &v93 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v93 - v28);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v93 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = (&v93 - v34);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = (&v93 - v37);
  MEMORY[0x28223BE20](v36);
  v40 = &v93 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460878, &unk_26C0251A0);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v45 = &v93 - v44;
  v46 = (&v93 + *(v43 + 56) - v44);
  sub_26BFE5A18(v108, &v93 - v44, _s11GeneralNameOMa);
  v47 = a2;
  v48 = v46;
  sub_26BFE5A18(v47, v46, _s11GeneralNameOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v55 = v40;
    v57 = v106;
    v56 = v107;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v58 = v55;
        sub_26BFE5A18(v45, v55, _s11GeneralNameOMa);
        if (!swift_getEnumCaseMultiPayload())
        {
          sub_26BFE5940(v48, v57, _s11GeneralNameO9OtherNameVMa);
          v79 = v45;
          v65 = sub_26BFE5AE0(v58, v57);
          sub_26BFE5A80(v57, _s11GeneralNameO9OtherNameVMa);
          sub_26BFE5A80(v58, _s11GeneralNameO9OtherNameVMa);
          goto LABEL_36;
        }

        sub_26BFE5A80(v58, _s11GeneralNameO9OtherNameVMa);
        goto LABEL_42;
      }

      sub_26BFE5A18(v45, v38, _s11GeneralNameOMa);
      v71 = *v38;
      v72 = v38[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v69 = v45;
        if (v71 == *v48 && v72 == v48[1])
        {
          v73 = v48[1];

          goto LABEL_47;
        }

        v91 = v48[1];
        v92 = sub_26C00AF2C();

        if (v92)
        {
          goto LABEL_47;
        }

LABEL_52:
        sub_26BFE5A80(v69, _s11GeneralNameOMa);
        goto LABEL_43;
      }

      goto LABEL_38;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_26BFE5A18(v45, v35, _s11GeneralNameOMa);
      v59 = *v35;
      v60 = v35[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v61 = v45;
        if (v59 == *v48 && v60 == v48[1])
        {
          v62 = v48[1];
        }

        else
        {
          v89 = v48[1];
          v90 = sub_26C00AF2C();

          if ((v90 & 1) == 0)
          {
            sub_26BFE5A80(v61, _s11GeneralNameOMa);
            goto LABEL_43;
          }
        }

        v88 = v61;
LABEL_50:
        sub_26BFE5A80(v88, _s11GeneralNameOMa);
        v65 = 1;
        return v65 & 1;
      }

      goto LABEL_38;
    }

    sub_26BFE5A18(v45, v32, _s11GeneralNameOMa);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v74 = v104;
      v75 = *(v104 + 32);
      v76 = v56;
      v77 = v56;
      v78 = v48;
LABEL_35:
      v81 = v105;
      v75(v77, v78, v105);
      v79 = v45;
      v65 = sub_26C00949C();
      v82 = *(v74 + 8);
      v82(v76, v81);
      v82(v32, v81);
      goto LABEL_36;
    }

LABEL_37:
    (*(v104 + 8))(v32, v105);
LABEL_42:
    sub_26BE2E258(v45, &qword_280460878, &unk_26C0251A0);
LABEL_43:
    v65 = 0;
    return v65 & 1;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v50 = v98;
        sub_26BFE5A18(v45, v98, _s11GeneralNameOMa);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v52 = v100;
          v51 = v101;
          v53 = v94;
          (*(v100 + 32))(v94, v48, v101);
          v54 = sub_26C0093AC();
LABEL_32:
          v79 = v45;
          v65 = v54;
          v80 = *(v52 + 8);
          v80(v53, v51);
          v80(v50, v51);
LABEL_36:
          sub_26BFE5A80(v79, _s11GeneralNameOMa);
          return v65 & 1;
        }

        v84 = v100;
        v83 = v101;
      }

      else
      {
        v50 = v99;
        sub_26BFE5A18(v45, v99, _s11GeneralNameOMa);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v52 = v102;
          v51 = v103;
          v53 = v95;
          (*(v102 + 32))(v95, v48, v103);
          v54 = sub_26C00945C();
          goto LABEL_32;
        }

        v84 = v102;
        v83 = v103;
      }

      (*(v84 + 8))(v50, v83);
      goto LABEL_42;
    }

    v66 = v96;
    sub_26BFE5A18(v45, v96, _s11GeneralNameOMa);
    v68 = *v66;
    v67 = v66[1];
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v69 = v45;
      if (v68 == *v46 && v67 == v46[1])
      {
        v70 = v46[1];

LABEL_47:
        v88 = v69;
        goto LABEL_50;
      }

      v86 = v46[1];
      v87 = sub_26C00AF2C();

      if (v87)
      {
        goto LABEL_47;
      }

      goto LABEL_52;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v32 = v97;
    sub_26BFE5A18(v45, v97, _s11GeneralNameOMa);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v74 = v104;
      v75 = *(v104 + 32);
      v76 = v93;
      v77 = v93;
      v78 = v48;
      goto LABEL_35;
    }

    goto LABEL_37;
  }

  sub_26BFE5A18(v45, v29, _s11GeneralNameOMa);
  v63 = *v29;
  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_38:

    goto LABEL_42;
  }

  v64 = v45;
  v65 = sub_26BFB126C(v63, *v46);

  sub_26BFE5A80(v64, _s11GeneralNameOMa);
  return v65 & 1;
}

unint64_t sub_26BFE686C()
{
  result = qword_280460888;
  if (!qword_280460888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460888);
  }

  return result;
}

uint64_t sub_26BFE6910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_26C00934C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = _s18SignatureAlgorithmVMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFE76F8(a1, v12);
  if (qword_28045E148 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_280479188);
  if (sub_26BFD18D0(v13, v12))
  {
    goto LABEL_10;
  }

  if (qword_28045E150 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_2804791A0);
  if (sub_26BFD18D0(v14, v12))
  {
    goto LABEL_10;
  }

  if (qword_28045E158 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v9, qword_2804791B8);
  if (sub_26BFD18D0(v15, v12))
  {
LABEL_10:
    sub_26BFE775C(v12);
    sub_26C00958C();
    _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
    sub_26BFE77B8();
    sub_26C0096DC();
    if (v3)
    {
LABEL_11:
      v16 = sub_26C00959C();
      (*(*(v16 - 8) + 8))(a2, v16);
      return sub_26BFE775C(a1);
    }

    v18 = sub_26C00959C();
    (*(*(v18 - 8) + 8))(a2, v18);
    result = sub_26BFE775C(a1);
    v19 = 0;
    v20 = v36[0];
    v21 = v36[1];
    v40 = v37;
    v41 = v38;
    v42 = v39;
    v43 = 0;
  }

  else
  {
    if (qword_28045E160 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v9, qword_2804791D0);
    v24 = sub_26BFD18D0(v23, v12);
    sub_26BFE775C(v12);
    if (!v24)
    {
      v32 = sub_26BFD12E4();
      v34 = sub_26BFCD3D4(v32, v33, 0xD000000000000018, 0x800000026C02DAB0, 51);

      sub_26BED380C();
      swift_allocError();
      *v35 = v34;
      swift_willThrow();
      goto LABEL_11;
    }

    v25 = sub_26C00958C();
    sub_26BE097D4(v25, v26, v27, v28);
    v20 = v29;
    v21 = v30;
    v31 = sub_26C00959C();
    (*(*(v31 - 8) + 8))(a2, v31);
    result = sub_26BFE775C(a1);
    v19 = 1;
    LOBYTE(v36[0]) = 1;
  }

  *a3 = v20;
  *(a3 + 8) = v21;
  v22 = v41;
  *(a3 + 16) = v40;
  *(a3 + 32) = v22;
  *(a3 + 48) = v42;
  *(a3 + 64) = v19;
  return result;
}

uint64_t sub_26BFE6D24(uint64_t a1)
{
  v2 = sub_26C00978C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 64);
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v8 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v8;
  v9 = v15[0];
  if (v16)
  {
    sub_26BE00608(*&v15[0], *(&v15[0] + 1));
    v10 = (2 * *(sub_26BF2E8B4(v9, *(&v9 + 1)) + 16)) | 1;
    sub_26C00957C();
    return sub_26BFC15B0(v15);
  }

  else
  {
    sub_26C00977C();
    v14[1] = v9;
    v12 = *(a1 + 32);
    v14[2] = *(a1 + 16);
    v14[3] = v12;
    v14[4] = *(a1 + 48);
    sub_26BFE780C();
    sub_26C00976C();
    v13 = (2 * *(sub_26C00971C() + 16)) | 1;
    sub_26C00957C();
    sub_26BFC15B0(v15);
    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_26BFE6EE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v3;
  v4 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  v27 = *(a2 + 32);
  v28 = v6;
  v7 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v7;
  v8 = *(a1 + 48);
  v19 = v23;
  v20 = v8;
  v17 = v22[0];
  v18 = v2;
  v9 = *(a2 + 48);
  v14 = v27;
  v15 = v9;
  v25 = *(a1 + 64);
  v29 = *(a2 + 64);
  v21 = *(a1 + 64);
  v16 = *(a2 + 64);
  v12 = v26[0];
  v13 = v5;
  sub_26BFC5AA4(v22, v32);
  sub_26BFC5AA4(v26, v32);
  v10 = sub_26BFE73B0(&v17, &v12);
  v30[2] = v14;
  v30[3] = v15;
  v31 = v16;
  v30[0] = v12;
  v30[1] = v13;
  sub_26BFC15B0(v30);
  v32[2] = v19;
  v32[3] = v20;
  v33 = v21;
  v32[0] = v17;
  v32[1] = v18;
  sub_26BFC15B0(v32);
  return v10 & 1;
}

uint64_t sub_26BFE6FDC()
{
  if (*(v0 + 64))
  {
    return 0x4153444445;
  }

  else
  {
    return 0x4153444345;
  }
}

unint64_t sub_26BFE7004()
{
  result = qword_280460890;
  if (!qword_280460890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460890);
  }

  return result;
}

uint64_t sub_26BFE7058()
{
  v1 = v0[1];
  if ((v0[8] & 1) == 0)
  {
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[7];
    v8 = v0[2];
    v7 = v0[3];
    MEMORY[0x26D699B20](0);
    v9 = v7 >> 1;
    result = v9 - v8;
    if (__OFSUB__(v9, v8))
    {
      __break(1u);
    }

    else
    {
      result = MEMORY[0x26D699B20](result);
      v10 = __OFSUB__(v9, v8);
      v11 = v9 - v8;
      if (v11)
      {
        if ((v11 < 0) ^ v10 | (v11 == 0))
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v12 = (v1 + v8);
        do
        {
          v13 = *v12++;
          sub_26C00B07C();
          --v11;
        }

        while (v11);
      }

      v14 = v6 >> 1;
      result = (v6 >> 1) - v5;
      if (!__OFSUB__(v6 >> 1, v5))
      {
        result = MEMORY[0x26D699B20](result);
        v15 = __OFSUB__(v14, v5);
        v16 = v14 - v5;
        if (!v16)
        {
          return result;
        }

        if (!((v16 < 0) ^ v15 | (v16 == 0)))
        {
          v17 = (v4 + v5);
          do
          {
            v18 = *v17++;
            result = sub_26C00B07C();
            --v16;
          }

          while (v16);
          return result;
        }

LABEL_19:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v2 = *v0;
  MEMORY[0x26D699B20](1);

  return sub_26C00911C();
}

uint64_t sub_26BFE7168()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = *(v0 + 64);
  sub_26C00B05C();
  if (v8)
  {
    MEMORY[0x26D699B20](1);
    sub_26C00911C();
    return sub_26C00B0CC();
  }

  MEMORY[0x26D699B20](0);
  v9 = v4 >> 1;
  result = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    __break(1u);
    goto LABEL_15;
  }

  result = MEMORY[0x26D699B20](result);
  v11 = __OFSUB__(v9, v3);
  v12 = v9 - v3;
  if (v12)
  {
    if ((v12 < 0) ^ v11 | (v12 == 0))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v13 = (v1 + v3);
    do
    {
      v14 = *v13++;
      sub_26C00B07C();
      --v12;
    }

    while (v12);
  }

  v15 = v7 >> 1;
  result = (v7 >> 1) - v6;
  if (__OFSUB__(v7 >> 1, v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = MEMORY[0x26D699B20](result);
  v16 = __OFSUB__(v15, v6);
  v17 = v15 - v6;
  if (!v17)
  {
    return sub_26C00B0CC();
  }

  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = (v5 + v6);
    do
    {
      v19 = *v18++;
      sub_26C00B07C();
      --v17;
    }

    while (v17);
    return sub_26C00B0CC();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26BFE729C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = *(v0 + 64);
  sub_26C00B05C();
  if (v8)
  {
    MEMORY[0x26D699B20](1);
    sub_26C00911C();
    return sub_26C00B0CC();
  }

  MEMORY[0x26D699B20](0);
  v9 = v4 >> 1;
  result = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    __break(1u);
    goto LABEL_15;
  }

  result = MEMORY[0x26D699B20](result);
  v11 = __OFSUB__(v9, v3);
  v12 = v9 - v3;
  if (v12)
  {
    if ((v12 < 0) ^ v11 | (v12 == 0))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v13 = (v1 + v3);
    do
    {
      v14 = *v13++;
      sub_26C00B07C();
      --v12;
    }

    while (v12);
  }

  v15 = v7 >> 1;
  result = (v7 >> 1) - v6;
  if (__OFSUB__(v7 >> 1, v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = MEMORY[0x26D699B20](result);
  v16 = __OFSUB__(v15, v6);
  v17 = v15 - v6;
  if (!v17)
  {
    return sub_26C00B0CC();
  }

  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = (v5 + v6);
    do
    {
      v19 = *v18++;
      sub_26C00B07C();
      --v17;
    }

    while (v17);
    return sub_26C00B0CC();
  }

LABEL_17:
  __break(1u);
  return result;
}

__int128 *sub_26BFE73B0(__int128 *result, __int128 *a2)
{
  v2 = result[1];
  v3 = result[3];
  v32 = result[2];
  v33 = v3;
  v4 = result[1];
  v30 = *result;
  v31 = v4;
  v5 = a2[1];
  v6 = a2[3];
  v37 = a2[2];
  v38 = v6;
  v7 = a2[1];
  v35 = *a2;
  v36 = v7;
  v8 = result[3];
  v40[2] = v32;
  v40[3] = v8;
  v40[0] = v30;
  v40[1] = v2;
  v43 = v5;
  v44 = v37;
  v45 = a2[3];
  v34 = *(result + 64);
  v39 = *(a2 + 64);
  v41 = *(result + 64);
  v46 = *(a2 + 64);
  v42 = v35;
  v9 = *(&v30 + 1);
  if (v34)
  {
    if (v39)
    {
      v10 = v30;
      v11 = v35;
      sub_26BFC5AA4(&v35, v29);
      sub_26BFC5AA4(&v30, v29);
      v12 = sub_26BE02DEC(v10, v9, v11, *(&v11 + 1));
LABEL_24:
      sub_26BFE7690(v40);
      return (v12 & 1);
    }

LABEL_23:
    sub_26BFC5AA4(&v35, v29);
    sub_26BFC5AA4(&v30, v29);
    v12 = 0;
    goto LABEL_24;
  }

  if (v39)
  {
    goto LABEL_23;
  }

  v13 = *(&v31 + 1) >> 1;
  v14 = (*(&v31 + 1) >> 1) - v31;
  if (__OFSUB__(*(&v31 + 1) >> 1, v31))
  {
    __break(1u);
    goto LABEL_48;
  }

  v15 = *(&v36 + 1) >> 1;
  v16 = (*(&v36 + 1) >> 1) - v36;
  if (__OFSUB__(*(&v36 + 1) >> 1, v36))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v14 != v16)
  {
    goto LABEL_23;
  }

  if (v14)
  {
    result = (*(&v35 + 1) + v36);
    if (*(&v30 + 1) + v31 != *(&v35 + 1) + v36 && v31 != v13)
    {
      if (v31 >= v13)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v36 == v15)
      {
        goto LABEL_23;
      }

      v17 = 0;
      if (v36 <= v15)
      {
        v18 = *(&v36 + 1) >> 1;
      }

      else
      {
        v18 = v36;
      }

      v19 = v18 - v36;
      while (v19 != v17)
      {
        if (*(*(&v30 + 1) + v31 + v17) != *(result + v17))
        {
          goto LABEL_23;
        }

        if (~v31 + v13 == v17)
        {
          goto LABEL_25;
        }

        v20 = v31 + v17 + 1;
        if (v20 < v31 || v20 >= v13)
        {
          goto LABEL_50;
        }

        if (v16 == ++v17)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_49;
    }
  }

LABEL_25:
  v21 = *(&v33 + 1) >> 1;
  v22 = (*(&v33 + 1) >> 1) - v33;
  if (__OFSUB__(*(&v33 + 1) >> 1, v33))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v23 = *(&v38 + 1) >> 1;
  v24 = (*(&v38 + 1) >> 1) - v38;
  if (__OFSUB__(*(&v38 + 1) >> 1, v38))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v22 != v24)
  {
    goto LABEL_33;
  }

  if (!v22)
  {
LABEL_45:
    v12 = 1;
    goto LABEL_46;
  }

  v12 = 1;
  if (*(&v32 + 1) + v33 == *(&v37 + 1) + v38 || v33 == v21)
  {
    goto LABEL_46;
  }

  if (v33 < v21)
  {
    if (v38 != v23)
    {
      v25 = 0;
      if (v38 <= v23)
      {
        v26 = *(&v38 + 1) >> 1;
      }

      else
      {
        v26 = v38;
      }

      v27 = v26 - v38;
      while (v27 != v25)
      {
        if (*(*(&v32 + 1) + v33 + v25) != *(*(&v37 + 1) + v38 + v25))
        {
          goto LABEL_33;
        }

        if (~v33 + v21 == v25)
        {
          goto LABEL_45;
        }

        v28 = v33 + v25 + 1;
        if (v28 < v33 || v28 >= v21)
        {
          goto LABEL_54;
        }

        v12 = 0;
        if (v24 == ++v25)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_53;
    }

LABEL_33:
    v12 = 0;
LABEL_46:
    sub_26BFC5AA4(&v35, v29);
    sub_26BFC5AA4(&v30, v29);
    goto LABEL_24;
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_26BFE7690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460898, &qword_26C025330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFE76F8(uint64_t a1, uint64_t a2)
{
  v4 = _s18SignatureAlgorithmVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFE775C(uint64_t a1)
{
  v2 = _s18SignatureAlgorithmVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BFE77B8()
{
  result = qword_2804608A0;
  if (!qword_2804608A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804608A0);
  }

  return result;
}

unint64_t sub_26BFE780C()
{
  result = qword_2804608A8;
  if (!qword_2804608A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804608A8);
  }

  return result;
}

uint64_t sub_26BFE7864(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26BFE78B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t sub_26BFE7928()
{
  result = qword_2804608B0;
  if (!qword_2804608B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804608B0);
  }

  return result;
}

uint64_t sub_26BFE7994(uint64_t a1)
{
  v28[5] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804608D8, &qword_26C0255E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E420, &qword_26C00D180);
  if (!swift_dynamicCast())
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_26BE13204(v26);
    v5 = *v1;
    v6 = v1[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      v8 = 0;
      v9 = 0;
      if (v7 != 2)
      {
        goto LABEL_12;
      }

      v10 = v5 + 16;
      v5 = *(v5 + 16);
      v8 = *(v10 + 8);
      v9 = v8 - v5;
      if (!__OFSUB__(v8, v5))
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v7)
    {
      v8 = BYTE6(v6);
      v9 = BYTE6(v6);
      goto LABEL_12;
    }

    if (__OFSUB__(HIDWORD(v5), v5))
    {
      goto LABEL_52;
    }

    v9 = HIDWORD(v5) - v5;
    v8 = v5 >> 32;
LABEL_12:
    if (!__OFADD__(v8, a1))
    {
      if (v8 + a1 < v8)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v8 < 0)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v11 = sub_26C00905C();
      MEMORY[0x28223BE20](v11);
      result = sub_26BE113C4(sub_26BFE9FBC);
      if (v14 != a1)
      {
        v18 = 0;
        v19 = *v1;
        v20 = v1[1];
        v21 = v20 >> 62;
        if ((v20 >> 62) > 1)
        {
          if (v21 == 2)
          {
            v18 = *(v19 + 16);
          }
        }

        else if (v21)
        {
          v18 = v19;
        }

        v22 = __OFADD__(v18, v9);
        v23 = v18 + v9;
        if (!v22)
        {
          if (!__OFADD__(v23, v14))
          {
            if (v21 > 1)
            {
              if (v21 == 2)
              {
                v24 = *(v19 + 24);
              }

              else
              {
                v24 = 0;
              }
            }

            else if (v21)
            {
              v24 = v19 >> 32;
            }

            else
            {
              v24 = BYTE6(v20);
            }

            if (v24 >= v23 + v14)
            {
              result = sub_26C00906C();
              goto LABEL_42;
            }

            goto LABEL_51;
          }

LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      memset(v28, 0, 15);
      if (v13 == result)
      {
        goto LABEL_42;
      }

      if ((v13 & 0x8000000000000000) == 0 && v13 < result)
      {
        v15 = v12;
        LOBYTE(v16) = 0;
        for (i = v13 - result + 1; i != 1; ++i)
        {
          *(v28 + v16) = v15;
          v16 = v16 + 1;
          if ((v16 & 0x100) != 0)
          {
            goto LABEL_45;
          }

          if (v16 == 14)
          {
            *&v26[0] = v28[0];
            *(v26 + 6) = *(v28 + 6);
            result = sub_26C00908C();
            if (!i)
            {
              goto LABEL_42;
            }

            LOBYTE(v16) = 0;
          }

          else if (!i)
          {
            *&v26[0] = v28[0];
            *(v26 + 6) = *(v28 + 6);
            result = sub_26C00908C();
            goto LABEL_42;
          }
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
    }

    __break(1u);
    goto LABEL_47;
  }

  sub_26BE03890(v26, v28);
  v3 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  MEMORY[0x28223BE20](v3);
  sub_26C008F3C();
  result = __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_42:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t P256.Signing.ECDSASignature.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C00A12C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[2];
  v10 = a1[3];
  v12 = (v10 >> 1) - v11;
  if (__OFSUB__(v10 >> 1, v11))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v12 > 32)
  {
LABEL_5:
    v16 = *a1;
    v17 = a1[4];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v18 = 1;
    return (*(v5 + 56))(a2, v18, 1, v4);
  }

  v13 = a1[6];
  v14 = a1[7];
  v15 = (v14 >> 1) - v13;
  if (__OFSUB__(v14 >> 1, v13))
  {
    goto LABEL_15;
  }

  if (v15 > 32)
  {
    goto LABEL_5;
  }

  v33 = a1[7];
  v34 = v13;
  v38 = xmmword_26C00BBD0;
  sub_26C00907C();
  result = 32 - v12;
  if (__OFSUB__(32, v12))
  {
    goto LABEL_16;
  }

  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = a2;
  sub_26BFE7994(result);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
  v36 = v19;
  v20 = sub_26BFE9F6C(&qword_28045E418);
  v37 = v20;
  v21 = swift_allocObject();
  *&v35 = v21;
  v32 = *a1;
  *(v21 + 16) = v32;
  *(v21 + 32) = v11;
  *(v21 + 40) = v10;
  result = __swift_project_boxed_opaque_existential_1(&v35, v19);
  v22 = *(result + 16);
  if (__OFSUB__(*(result + 24) >> 1, v22))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = *(result + 8) + v22;
  swift_unknownObjectRetain_n();
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v35);
  swift_unknownObjectRelease();
  result = 32 - v15;
  if (__OFSUB__(32, v15))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_26BFE7994(result);
  v36 = v19;
  v37 = v20;
  v24 = swift_allocObject();
  *&v35 = v24;
  v32 = *(a1 + 2);
  *(v24 + 16) = v32;
  v25 = v33;
  *(v24 + 32) = v34;
  *(v24 + 40) = v25;
  result = __swift_project_boxed_opaque_existential_1(&v35, v19);
  v26 = *(result + 16);
  if (!__OFSUB__(*(result + 24) >> 1, v26))
  {
    v27 = *(result + 8) + v26;
    swift_unknownObjectRetain_n();
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    swift_unknownObjectRelease();
    v29 = *(&v38 + 1);
    v28 = v38;
    v35 = v38;
    sub_26BE00608(v38, *(&v38 + 1));
    sub_26BE016A8();
    sub_26C00A11C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_26BE00258(v28, v29);
    a2 = v31;
    (*(v5 + 32))(v31, v9, v4);
    v18 = 0;
    return (*(v5 + 56))(a2, v18, 1, v4);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t P384.Signing.ECDSASignature.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C00A20C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[2];
  v10 = a1[3];
  v12 = (v10 >> 1) - v11;
  if (__OFSUB__(v10 >> 1, v11))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v12 > 48)
  {
LABEL_5:
    v16 = *a1;
    v17 = a1[4];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v18 = 1;
    return (*(v5 + 56))(a2, v18, 1, v4);
  }

  v13 = a1[6];
  v14 = a1[7];
  v15 = (v14 >> 1) - v13;
  if (__OFSUB__(v14 >> 1, v13))
  {
    goto LABEL_15;
  }

  if (v15 > 48)
  {
    goto LABEL_5;
  }

  v33 = a1[7];
  v34 = v13;
  v38 = xmmword_26C00BBD0;
  sub_26C00907C();
  result = 48 - v12;
  if (__OFSUB__(48, v12))
  {
    goto LABEL_16;
  }

  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = a2;
  sub_26BFE7994(result);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
  v36 = v19;
  v20 = sub_26BFE9F6C(&qword_28045E418);
  v37 = v20;
  v21 = swift_allocObject();
  *&v35 = v21;
  v32 = *a1;
  *(v21 + 16) = v32;
  *(v21 + 32) = v11;
  *(v21 + 40) = v10;
  result = __swift_project_boxed_opaque_existential_1(&v35, v19);
  v22 = *(result + 16);
  if (__OFSUB__(*(result + 24) >> 1, v22))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = *(result + 8) + v22;
  swift_unknownObjectRetain_n();
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v35);
  swift_unknownObjectRelease();
  result = 48 - v15;
  if (__OFSUB__(48, v15))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_26BFE7994(result);
  v36 = v19;
  v37 = v20;
  v24 = swift_allocObject();
  *&v35 = v24;
  v32 = *(a1 + 2);
  *(v24 + 16) = v32;
  v25 = v33;
  *(v24 + 32) = v34;
  *(v24 + 40) = v25;
  result = __swift_project_boxed_opaque_existential_1(&v35, v19);
  v26 = *(result + 16);
  if (!__OFSUB__(*(result + 24) >> 1, v26))
  {
    v27 = *(result + 8) + v26;
    swift_unknownObjectRetain_n();
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    swift_unknownObjectRelease();
    v29 = *(&v38 + 1);
    v28 = v38;
    v35 = v38;
    sub_26BE00608(v38, *(&v38 + 1));
    sub_26BE016A8();
    sub_26C00A1FC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_26BE00258(v28, v29);
    a2 = v31;
    (*(v5 + 32))(v31, v9, v4);
    v18 = 0;
    return (*(v5 + 56))(a2, v18, 1, v4);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t P521.Signing.ECDSASignature.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C00A29C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[2];
  v10 = a1[3];
  v12 = (v10 >> 1) - v11;
  if (__OFSUB__(v10 >> 1, v11))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v12 > 66)
  {
LABEL_5:
    v16 = *a1;
    v17 = a1[4];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v18 = 1;
    return (*(v5 + 56))(a2, v18, 1, v4);
  }

  v13 = a1[6];
  v14 = a1[7];
  v15 = (v14 >> 1) - v13;
  if (__OFSUB__(v14 >> 1, v13))
  {
    goto LABEL_15;
  }

  if (v15 > 66)
  {
    goto LABEL_5;
  }

  v33 = a1[7];
  v34 = v13;
  v38 = xmmword_26C00BBD0;
  sub_26C00907C();
  result = 66 - v12;
  if (__OFSUB__(66, v12))
  {
    goto LABEL_16;
  }

  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = a2;
  sub_26BFE7994(result);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
  v36 = v19;
  v20 = sub_26BFE9F6C(&qword_28045E418);
  v37 = v20;
  v21 = swift_allocObject();
  *&v35 = v21;
  v32 = *a1;
  *(v21 + 16) = v32;
  *(v21 + 32) = v11;
  *(v21 + 40) = v10;
  result = __swift_project_boxed_opaque_existential_1(&v35, v19);
  v22 = *(result + 16);
  if (__OFSUB__(*(result + 24) >> 1, v22))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = *(result + 8) + v22;
  swift_unknownObjectRetain_n();
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v35);
  swift_unknownObjectRelease();
  result = 66 - v15;
  if (__OFSUB__(66, v15))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_26BFE7994(result);
  v36 = v19;
  v37 = v20;
  v24 = swift_allocObject();
  *&v35 = v24;
  v32 = *(a1 + 2);
  *(v24 + 16) = v32;
  v25 = v33;
  *(v24 + 32) = v34;
  *(v24 + 40) = v25;
  result = __swift_project_boxed_opaque_existential_1(&v35, v19);
  v26 = *(result + 16);
  if (!__OFSUB__(*(result + 24) >> 1, v26))
  {
    v27 = *(result + 8) + v26;
    swift_unknownObjectRetain_n();
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v35);
    swift_unknownObjectRelease();
    v29 = *(&v38 + 1);
    v28 = v38;
    v35 = v38;
    sub_26BE00608(v38, *(&v38 + 1));
    sub_26BE016A8();
    sub_26C00A28C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_26BE00258(v28, v29);
    a2 = v31;
    (*(v5 + 32))(v31, v9, v4);
    v18 = 0;
    return (*(v5 + 56))(a2, v18, 1, v4);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t MLS.ECDSASignature.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  return sub_26BFE8830(a1, MEMORY[0x277CC54D8], MEMORY[0x277CC54E0], a2);
}

{
  return sub_26BFE8830(a1, MEMORY[0x277CC5518], MEMORY[0x277CC5520], a2);
}

{
  return sub_26BFE8830(a1, MEMORY[0x277CC5528], MEMORY[0x277CC5530], a2);
}

uint64_t sub_26BFE8830@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  v7 = a2();
  MLS.ECDSASignature.init(rawSignatureBytes:)(v7, v8, a4);
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 8);

  return v10(a1, v9);
}

uint64_t MLS.ECDSASignature.r.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  return swift_unknownObjectRetain();
}

uint64_t MLS.ECDSASignature.r.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = swift_unknownObjectRelease();
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t MLS.ECDSASignature.s.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  return swift_unknownObjectRetain();
}

uint64_t sub_26BFE89A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t MLS.ECDSASignature.s.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[4];
  result = swift_unknownObjectRelease();
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
  return result;
}

uint64_t MLS.ECDSASignature.init(r:s:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

double MLS.ECDSASignature.init(derEncoded:withIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_26C0097FC();
  v7 = sub_26C00934C();
  (*(*(v7 - 8) + 8))(a2, v7);
  v8 = sub_26C00950C();
  (*(*(v8 - 8) + 8))(a1, v8);
  if (!v3)
  {
    *a3 = v10;
    a3[1] = v11;
    result = *&v12;
    a3[2] = v12;
    a3[3] = v13;
  }

  return result;
}

__n128 sub_26BFE8BB4@<Q0>(_OWORD *a1@<X8>)
{
  v3 = sub_26C00934C();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
  sub_26BFE9F6C(&qword_2804608D0);
  sub_26C0096AC();
  sub_26C0096BC();
  if (!v1)
  {
    sub_26C0096AC();
    sub_26C0096BC();
    result = v8;
    *a1 = v7;
    a1[1] = v8;
    a1[2] = v7;
    a1[3] = v8;
  }

  return result;
}

uint64_t sub_26BFE8D88(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v7 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
  sub_26BFE9F6C(&qword_2804608C8);
  result = sub_26C00976C();
  if (!v2)
  {
    v6 = a2[2];
    v8 = a2[3];
    return sub_26C00976C();
  }

  return result;
}

uint64_t MLS.ECDSASignature.init(rawSignatureBytes:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v28 = sub_26C00909C();
      v30 = v29;
      sub_26BE00258(v4, a2);
      v44 = sub_26BFE9068(v28, v30);
      v12 = v31;
      v14 = v32;
      v16 = v33;
LABEL_16:
      v34 = sub_26C00909C();
      v36 = v35;
      sub_26BE00258(v4, a2);
      v37 = sub_26BFE9068(v34, v36);
      v39 = v38;
      v41 = v40;
      v43 = v42;
      result = sub_26BE00258(v4, a2);
      *a3 = v44;
      a3[1] = v12;
      a3[2] = v14;
      a3[3] = v16;
      a3[4] = v37;
      a3[5] = v39;
      a3[6] = v41;
      a3[7] = v43;
      return result;
    }

    v19 = *(result + 16);
    v18 = *(result + 24);
    v20 = __OFSUB__(v18, v19);
    v21 = v18 - v19;
    if (v20)
    {
      goto LABEL_19;
    }

    v7 = v21 / 2;
    goto LABEL_9;
  }

  if (!v6)
  {
    v7 = (a2 >> 49) & 0x7F;
    v8 = sub_26C00909C();
    v10 = v9;
    sub_26BE00258(v4, a2);
    result = sub_26BFE9068(v8, v10);
    v44 = result;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = BYTE6(a2);
    goto LABEL_15;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v7 = (HIDWORD(result) - result + ((HIDWORD(result) - result) >> 31)) >> 1;
    v19 = result;
LABEL_9:
    result = sub_26BE00608(result, a2);
    if (v7 < v19)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v22 = sub_26C00909C();
    v24 = v23;
    sub_26BE00258(v4, a2);
    v44 = sub_26BFE9068(v22, v24);
    v12 = v25;
    v14 = v26;
    v16 = v27;
    if (v6 == 2)
    {
      v17 = *(v4 + 24);
    }

    else
    {
      v17 = v4 >> 32;
    }

    result = sub_26BE00608(v4, a2);
LABEL_15:
    if (v17 >= v7)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26BFE9068(unint64_t a1, unint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v32 = a1;
  if ((a2 >> 62) > 1)
  {
    v5 = 0;
    if (v4 == 2)
    {
      v5 = *(a1 + 16);
    }
  }

  else if (v4)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1 >> 32;
  v7 = BYTE6(a2);
  v30 = a1 >> 16;
  v31 = a1 >> 8;
  v28 = HIDWORD(a1);
  v29 = a1 >> 24;
  v26 = HIWORD(a1);
  v27 = a1 >> 40;
  v24 = a2 >> 8;
  v25 = HIBYTE(a1);
  v8 = a2 >> 16;
  v23 = v5;
  v9 = a2 >> 24;
  if (v4 > 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v10 = BYTE6(a2);
  if (v4)
  {
    v10 = a1 >> 32;
  }

  while (v5 != v10)
  {
    if (v4 == 2)
    {
      if (v5 < *(a1 + 16))
      {
        goto LABEL_39;
      }

      if (v5 >= *(a1 + 24))
      {
        goto LABEL_41;
      }

      v15 = sub_26C008E9C();
      if (!v15)
      {
        goto LABEL_47;
      }

      v12 = v15;
      v16 = sub_26C008ECC();
      v14 = v5 - v16;
      if (__OFSUB__(v5, v16))
      {
        goto LABEL_43;
      }

      goto LABEL_25;
    }

    if (v4 == 1)
    {
      if (v5 < v32 || v5 >= v6)
      {
        goto LABEL_40;
      }

      v11 = sub_26C008E9C();
      if (!v11)
      {
        goto LABEL_46;
      }

      v12 = v11;
      v13 = sub_26C008ECC();
      v14 = v5 - v13;
      if (__OFSUB__(v5, v13))
      {
        goto LABEL_42;
      }

LABEL_25:
      if (*(v12 + v14))
      {
        break;
      }

      goto LABEL_29;
    }

    if (v5 >= BYTE6(a2))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v33[0] = a1;
    v33[1] = v31;
    v33[2] = v30;
    v33[3] = v29;
    v33[4] = v28;
    v33[5] = v27;
    v33[6] = v26;
    v33[7] = v25;
    v33[8] = a2;
    v33[9] = v24;
    v33[10] = v8;
    v33[11] = v9;
    v33[12] = BYTE4(a2);
    v33[13] = BYTE5(a2);
    if (v33[v5])
    {
      break;
    }

LABEL_29:
    ++v5;
    if (v4 <= 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    if (v4 != 2)
    {
      if (!v23)
      {
        goto LABEL_35;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }

    v10 = *(a1 + 24);
  }

  if (v4)
  {
    v7 = a1 >> 32;
    if (v4 == 2)
    {
      v7 = *(a1 + 24);
    }
  }

  if (v7 < v5)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_35:
  v17 = sub_26C00909C();
  v19 = v18;
  sub_26BE00258(a1, a2);
  result = sub_26BF2E8B4(v17, v19);
  v21 = *MEMORY[0x277D85DE8];
  v22 = (2 * *(result + 16)) | 1;
  return result;
}

uint64_t ArraySlice<A>.init<A>(normalisingToASN1IntegerForm:)(uint64_t a1, uint64_t a2)
{
  v19[0] = a1;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  (*(v4 + 16))(v7, a1, a2);
  sub_26C00A94C();
  (*(v9 + 16))(v13, v15, AssociatedTypeWitness);
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v17 = sub_26C00AB2C();
  (*(v4 + 8))(v19[0], a2);
  (*(v9 + 8))(v15, AssociatedTypeWitness);
  return v17;
}

uint64_t static MLS.ECDSASignature.== infix(_:_:)(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  v3 = *(result + 24) >> 1;
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
    goto LABEL_47;
  }

  v4 = a2[2];
  v5 = a2[3] >> 1;
  v6 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v3 - v2 != v6)
  {
    return 0;
  }

  v7 = *(result + 8);
  v9 = *(result + 40);
  v8 = *(result + 48);
  v10 = *(result + 56);
  result = a2[1];
  v12 = a2[5];
  v11 = a2[6];
  v13 = a2[7];
  v14 = v7 + v2;
  v15 = result + v4;
  if (v3 != v2 && v14 != v15 && v2 != v3)
  {
    if (v2 >= v3)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v4 == v5)
    {
      return 0;
    }

    v28 = 0;
    if (v4 <= v5)
    {
      result = v5;
    }

    else
    {
      result = v4;
    }

    v29 = result - v4;
    while (v29 != v28)
    {
      result = *(v14 + v28);
      if (result != *(v15 + v28))
      {
        return 0;
      }

      if (~v2 + v3 == v28)
      {
        goto LABEL_12;
      }

      result = v2 + v28 + 1;
      if (result < v2 || result >= v3)
      {
        goto LABEL_49;
      }

      result = 0;
      if (v6 == ++v28)
      {
        return result;
      }
    }

    goto LABEL_48;
  }

LABEL_12:
  v18 = v10 >> 1;
  v19 = (v10 >> 1) - v8;
  if (__OFSUB__(v10 >> 1, v8))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v20 = v13 >> 1;
  v21 = v20 - v11;
  if (__OFSUB__(v20, v11))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v19 != v21)
  {
    return 0;
  }

  if (!v19)
  {
    return 1;
  }

  v22 = v9 + v8;
  v23 = v12 + v11;
  result = 1;
  if (v22 != v23 && v8 != v18)
  {
    if (v8 >= v18)
    {
LABEL_55:
      __break(1u);
      return result;
    }

    if (v11 != v20)
    {
      v24 = 0;
      if (v11 <= v20)
      {
        v25 = v20;
      }

      else
      {
        v25 = v11;
      }

      v26 = v25 - v11;
      while (v26 != v24)
      {
        if (*(v22 + v24) != *(v23 + v24))
        {
          return 0;
        }

        if (~v8 + v18 == v24)
        {
          return 1;
        }

        v27 = v8 + v24 + 1;
        if (v27 < v8 || v27 >= v18)
        {
          goto LABEL_53;
        }

        result = 0;
        if (v21 == ++v24)
        {
          return result;
        }
      }

      goto LABEL_52;
    }

    return 0;
  }

  return result;
}

uint64_t MLS.ECDSASignature.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v0[1];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  result = MEMORY[0x26D699B20](result);
  v8 = __OFSUB__(v2, v1);
  v9 = v2 - v1;
  if (v9)
  {
    if ((v9 < 0) ^ v8 | (v9 == 0))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v10 = (v4 + v1);
    do
    {
      v11 = *v10++;
      sub_26C00B07C();
      --v9;
    }

    while (v9);
  }

  v12 = v7 >> 1;
  result = v12 - v6;
  if (__OFSUB__(v12, v6))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = MEMORY[0x26D699B20](result);
  v13 = __OFSUB__(v12, v6);
  v14 = v12 - v6;
  if (!v14)
  {
    return result;
  }

  if ((v14 < 0) ^ v13 | (v14 == 0))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v15 = (v5 + v6);
  do
  {
    v16 = *v15++;
    result = sub_26C00B07C();
    --v14;
  }

  while (v14);
  return result;
}

uint64_t MLS.ECDSASignature.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  sub_26C00B05C();
  v7 = v3 >> 1;
  result = v7 - v2;
  if (__OFSUB__(v7, v2))
  {
    __break(1u);
    goto LABEL_13;
  }

  result = MEMORY[0x26D699B20](result);
  v9 = __OFSUB__(v7, v2);
  v10 = v7 - v2;
  if (v10)
  {
    if ((v10 < 0) ^ v9 | (v10 == 0))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v11 = (v1 + v2);
    do
    {
      v12 = *v11++;
      sub_26C00B07C();
      --v10;
    }

    while (v10);
  }

  v13 = v6 >> 1;
  result = v13 - v5;
  if (__OFSUB__(v13, v5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = MEMORY[0x26D699B20](result);
  v14 = __OFSUB__(v13, v5);
  v15 = v13 - v5;
  if (!v15)
  {
    return sub_26C00B0CC();
  }

  if (!((v15 < 0) ^ v14 | (v15 == 0)))
  {
    v16 = (v4 + v5);
    do
    {
      v17 = *v16++;
      sub_26C00B07C();
      --v15;
    }

    while (v15);
    return sub_26C00B0CC();
  }

LABEL_15:
  __break(1u);
  return result;
}

double sub_26BFE98D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_26C0097FC();
  v7 = sub_26C00934C();
  (*(*(v7 - 8) + 8))(a2, v7);
  v8 = sub_26C00950C();
  (*(*(v8 - 8) + 8))(a1, v8);
  if (!v3)
  {
    *a3 = v10;
    a3[1] = v11;
    result = *&v12;
    a3[2] = v12;
    a3[3] = v13;
  }

  return result;
}

uint64_t sub_26BFE9A84()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  sub_26C00B05C();
  v7 = v3 >> 1;
  result = v7 - v2;
  if (__OFSUB__(v7, v2))
  {
    __break(1u);
    goto LABEL_13;
  }

  result = MEMORY[0x26D699B20](result);
  v9 = __OFSUB__(v7, v2);
  v10 = v7 - v2;
  if (v10)
  {
    if ((v10 < 0) ^ v9 | (v10 == 0))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v11 = (v1 + v2);
    do
    {
      v12 = *v11++;
      sub_26C00B07C();
      --v10;
    }

    while (v10);
  }

  v13 = v6 >> 1;
  result = v13 - v5;
  if (__OFSUB__(v13, v5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = MEMORY[0x26D699B20](result);
  v14 = __OFSUB__(v13, v5);
  v15 = v13 - v5;
  if (!v15)
  {
    return sub_26C00B0CC();
  }

  if (!((v15 < 0) ^ v14 | (v15 == 0)))
  {
    v16 = (v4 + v5);
    do
    {
      v17 = *v16++;
      sub_26C00B07C();
      --v15;
    }

    while (v15);
    return sub_26C00B0CC();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26BFE9BF8(void *a1, void *a2)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a2[5];
  v6 = a2[6];
  v7 = a2[7];
  if ((sub_26BFE9CDC(a1[1], a1[2], a1[3], a2[1], a2[2], a2[3]) & 1) == 0)
  {
    return 0;
  }

  return sub_26BFE9CDC(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_26BFE9CDC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = a6 >> 1;
  v9 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v7 != v9)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v10 = result + a2;
  result = 1;
  if (v10 != a4 + a5 && v6 != a2)
  {
    if (v6 <= a2)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    if (v8 == a5)
    {
      return 0;
    }

    v11 = 0;
    if (a5 <= v8)
    {
      v12 = a6 >> 1;
    }

    else
    {
      v12 = a5;
    }

    v13 = v12 - a5;
    while (v13 != v11)
    {
      if (*(v10 + v11) != *(a4 + a5 + v11))
      {
        return 0;
      }

      if (~a2 + v6 == v11)
      {
        return 1;
      }

      v14 = a2 + v11 + 1;
      if (v14 < a2 || v14 >= v6)
      {
        goto LABEL_25;
      }

      result = 0;
      if (v9 == ++v11)
      {
        return result;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

void _ss10ArraySliceV8SwiftMLSs5UInt8VRszlE28normalisingToASN1IntegerFormAByAEGAG_tcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = a3;
  if (a4 >> 1 != a3)
  {
    goto LABEL_5;
  }

LABEL_2:
  v7 = v5 < v6;
  v5 = v6;
  if (v7)
  {
    __break(1u);
LABEL_5:
    if (a3 <= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = a3;
    }

    v6 = a3;
    while (v8 != v6)
    {
      if (*(a2 + v6))
      {
        goto LABEL_2;
      }

      if (v5 == ++v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_12:
  if (v5 < a3)
  {
LABEL_15:
    __break(1u);
  }
}

unint64_t sub_26BFE9E14()
{
  result = qword_2804608B8;
  if (!qword_2804608B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804608B8);
  }

  return result;
}

unint64_t sub_26BFE9E70()
{
  result = qword_2804608C0;
  if (!qword_2804608C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804608C0);
  }

  return result;
}

uint64_t sub_26BFE9EC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_26BFE9F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BFE9F6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E410, &qword_26C021270);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BFE9FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_26BFEA01C(a1, a2, *(v3 + 16), **(v3 + 32), *(*(v3 + 32) + 8));
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
  }

  return result;
}

uint64_t sub_26BFEA01C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int8 a5)
{
  if (!result)
  {
    return a4;
  }

  v5 = a2 - result - a3;
  if (!__OFSUB__(a2 - result, a3))
  {
    if (v5)
    {
      if (v5 < 1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (a4)
      {
        v6 = (result + a3);
        v7 = a4 & ~(a4 >> 63);
        v8 = ~a3 + a2 - result;
        v9 = a4 - 1;
        if (v7 < a4 - 1)
        {
          v9 = a4 & ~(a4 >> 63);
        }

        if (v8 >= v9)
        {
          v8 = v9;
        }

        if (v8 >= 0x10)
        {
          v12 = v8 + 1;
          v13 = v12 & 0xF;
          if ((v12 & 0xF) == 0)
          {
            v13 = 16;
          }

          v10 = v12 - v13;
          v11 = v10 + 1;
          v14 = (v6 + v10);
          v15 = vdupq_n_s8(a5);
          v16 = v10;
          do
          {
            *v6++ = v15;
            v16 -= 16;
          }

          while (v16);
          v6 = v14;
        }

        else
        {
          v10 = 0;
          v11 = 1;
        }

        while (v10 != v7)
        {
          v10 = v11;
          v6->i8[0] = a5;
          if (v5 != v11)
          {
            v6 = (v6 + 1);
            ++v11;
            if (a4 + 1 != v10 + 1)
            {
              continue;
            }
          }

          return a4;
        }

        goto LABEL_24;
      }
    }

    return a4;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_26BFEA138()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B20](v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFEA1AC()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B20](v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFEA254(uint64_t result)
{
  if (!result)
  {
    return 0x3176525343;
  }

  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v1 = sub_26C00AEFC();
    MEMORY[0x26D699090](v1);

    return 1985106755;
  }

  return result;
}

unint64_t sub_26BFEA2E8()
{
  result = qword_2804608E0;
  if (!qword_2804608E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804608E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O8LeafNodeVSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_26BFEA388(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_26BFEA3E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O10ParentNodeVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BFEA484(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_26BFEA4E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_26BFEA594(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 153))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 152);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26BFEA5DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 152) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_26BFEA69C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 145))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 144);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26BFEA6E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 144) = -a2;
    }
  }

  return result;
}

uint64_t *sub_26BFEA76C(uint64_t *result)
{
  v2 = *result;
  v3 = result[1];
  v4 = result[2];
  v5 = result[3];
  v6 = result[4];
  v7 = result[5];
  v8 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v9 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v9 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v9);
  if (v1)
  {
    return result;
  }

  v12 = result;
  result = sub_26BE11228(v2, v3);
  v13 = __OFADD__(v12, v9);
  v14 = v12 + v9;
  if (v13)
  {
    __break(1u);
    goto LABEL_40;
  }

  v15 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(v5);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v15 != 2)
  {
    v16 = 0;
    goto LABEL_23;
  }

  v18 = *(v4 + 16);
  v17 = *(v4 + 24);
  v16 = v17 - v18;
  if (__OFSUB__(v17, v18))
  {
    __break(1u);
LABEL_20:
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v16 = HIDWORD(v4) - v4;
  }

LABEL_23:
  v19 = sub_26BF30414(v16);
  result = sub_26BE11228(v4, v5);
  v20 = v19 + v16;
  if (__OFADD__(v19, v16))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v21 = &v14[v20];
  if (__OFADD__(v14, v20))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v22 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v22)
    {
      v23 = BYTE6(v7);
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (v22 != 2)
  {
    v23 = 0;
    goto LABEL_36;
  }

  v25 = *(v6 + 16);
  v24 = *(v6 + 24);
  v23 = v24 - v25;
  if (__OFSUB__(v24, v25))
  {
    __break(1u);
LABEL_32:
    if (__OFSUB__(HIDWORD(v6), v6))
    {
LABEL_46:
      __break(1u);
      return result;
    }

    v23 = HIDWORD(v6) - v6;
  }

LABEL_36:
  v26 = sub_26BF30414(v23);
  result = sub_26BE11228(v6, v7);
  v27 = v26 + v23;
  if (__OFADD__(v26, v23))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = &v21[v27];
  if (__OFADD__(v21, v27))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  return result;
}

uint64_t sub_26BFEA954(char *a1)
{
  v3 = v1;
  v100 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a1 + 120);
  v94 = *(a1 + 104);
  v95 = v5;
  v96 = *(a1 + 136);
  v97 = a1[152];
  v6 = *(a1 + 56);
  v90 = *(a1 + 40);
  v91 = v6;
  v7 = *(a1 + 88);
  v92 = *(a1 + 72);
  v93 = v7;
  v8 = *(a1 + 24);
  v88 = *(a1 + 8);
  v89 = v8;
  LOBYTE(v71[0]) = v4;
  v9 = MEMORY[0x277D838B0];
  v10 = MEMORY[0x277CC9C18];
  *(&v75 + 1) = MEMORY[0x277D838B0];
  *&v76 = MEMORY[0x277CC9C18];
  *&v74 = v71;
  *(&v74 + 1) = v71 + 1;
  v11 = __swift_project_boxed_opaque_existential_1(&v74, MEMORY[0x277D838B0]);
  v12 = *v11;
  v13 = v11[1];
  sub_26BFEAF00(&v88, &v83);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v74);
  v98[6] = v94;
  v98[7] = v95;
  v98[8] = v96;
  v99 = v97;
  v98[2] = v90;
  v98[3] = v91;
  v98[4] = v92;
  v98[5] = v93;
  v98[0] = v88;
  v98[1] = v89;
  if (sub_26BFEAF38(v98) != 1)
  {
    v26 = nullsub_1(v98);
    LODWORD(v71[0]) = bswap32(*v26);
    v86 = v9;
    v87 = v10;
    v83 = v71;
    v84 = v71 + 4;
    v27 = __swift_project_boxed_opaque_existential_1(&v83, v9);
    v29 = *v27;
    v28 = v27[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v83);
    v30 = *(v26 + 88);
    v31 = *(v26 + 104);
    v32 = *(v26 + 120);
    v82 = *(v26 + 136);
    v74 = *(v26 + 8);
    v33 = *(v26 + 24);
    v34 = *(v26 + 40);
    v35 = *(v26 + 72);
    v77 = *(v26 + 56);
    v78 = v35;
    v75 = v33;
    v76 = v34;
    v80 = v31;
    v81 = v32;
    v79 = v30;
    if (sub_26BE59C80(&v74) == 1)
    {
      LOBYTE(v71[0]) = 0;
      v86 = v9;
      v87 = v10;
      v83 = v71;
      v84 = v71 + 1;
      v36 = __swift_project_boxed_opaque_existential_1(&v83, v9);
      v38 = *v36;
      v37 = v36[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v83);
      sub_26BFEAF40(&v88);
      v39 = 1;
    }

    else
    {
      v71[5] = *(v26 + 88);
      v71[6] = *(v26 + 104);
      v71[7] = *(v26 + 120);
      v72 = *(v26 + 136);
      v73[0] = &v70;
      v71[1] = *(v26 + 24);
      v71[2] = *(v26 + 40);
      v71[3] = *(v26 + 56);
      v71[4] = *(v26 + 72);
      v71[0] = *(v26 + 8);
      v70 = 1;
      v73[3] = v9;
      v73[4] = v10;
      v73[1] = v71;
      v40 = __swift_project_boxed_opaque_existential_1(v73, v9);
      v41 = *v40;
      v13 = v40[1];
      sub_26BFEAF00(&v88, &v83);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(v73);
      v42 = sub_26BE7DD28(v71);
      sub_26BFEAF40(&v88);
      result = sub_26BFEAF40(&v88);
      if (v1)
      {
        goto LABEL_42;
      }

      v39 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_51;
      }
    }

    result = v39 + 5;
    if (!__OFADD__(v39, 5))
    {
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_12;
  }

  v14 = nullsub_1(v98);
  v16 = v14[4];
  v15 = v14[5];
  v13 = v14[7];
  v68 = v15;
  v69 = v14[6];
  v2 = v14[8];
  if (!v16)
  {
LABEL_12:
    LOBYTE(v74) = 0;
    v86 = v9;
    v87 = v10;
    v83 = &v74;
    v84 = &v74 + 1;
    v43 = __swift_project_boxed_opaque_existential_1(&v83, v9);
    v45 = *v43;
    v44 = v43[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v83);
    v46 = 1;
    goto LABEL_15;
  }

  v66 = v14[7];
  v67 = v14[8];
  v18 = *v14;
  v17 = v14[1];
  v19 = v14[2];
  v20 = v14[3];
  LOBYTE(v74) = 1;
  v86 = v9;
  v87 = v10;
  v83 = &v74;
  v84 = &v74 + 1;
  v21 = __swift_project_boxed_opaque_existential_1(&v83, v9);
  v22 = *v21;
  v23 = v21[1];
  sub_26BFEAF70(v18, v17, v19, v20, v16);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v83);
  v83 = v18;
  v84 = v17;
  v85 = v19;
  v86 = v20;
  v87 = v16;
  v24 = sub_26BEC1C1C(&v83);
  if (!v1)
  {
    v47 = v24;
    sub_26BE5A2DC(v18, v17, v19, v20, v16);
    v46 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v3 = 0;
    v13 = v66;
    v2 = v67;
LABEL_15:
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v49 = v69 >> 62;
    if ((v69 >> 62) > 1)
    {
      if (v49 != 2)
      {
        v50 = 0;
LABEL_27:
        v53 = sub_26BF30414(v50);
        if (v3)
        {
          sub_26BFEAF40(&v88);
          result = sub_26BE00258(v68, v69);
          goto LABEL_42;
        }

        v54 = v13;
        v55 = v53;
        sub_26BE11228(v68, v69);
        sub_26BE00258(v68, v69);
        v56 = v55 + v50;
        if (__OFADD__(v55, v50))
        {
          goto LABEL_49;
        }

        v57 = __OFADD__(v48, v56);
        v58 = v48 + v56;
        if (v57)
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v59 = v2 >> 62;
        if ((v2 >> 62) > 1)
        {
          if (v59 != 2)
          {
            v60 = 0;
            goto LABEL_43;
          }

          v62 = *(v54 + 16);
          v61 = *(v54 + 24);
          v60 = v61 - v62;
          if (!__OFSUB__(v61, v62))
          {
            goto LABEL_40;
          }

          __break(1u);
        }

        else if (!v59)
        {
          v60 = BYTE6(v2);
LABEL_43:
          v64 = sub_26BF30414(v60);
          sub_26BE11228(v54, v2);
          sub_26BE00258(v54, v2);
          sub_26BFEAF40(&v88);
          v65 = v64 + v60;
          if (__OFADD__(v64, v60))
          {
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
          }

          result = v58 + v65;
          if (!__OFADD__(v58, v65))
          {
            goto LABEL_42;
          }

          __break(1u);
          goto LABEL_47;
        }

        if (__OFSUB__(HIDWORD(v54), v54))
        {
          goto LABEL_54;
        }

        v60 = HIDWORD(v54) - v54;
LABEL_40:
        sub_26BE00608(v54, v2);
        goto LABEL_43;
      }

      v52 = *(v68 + 16);
      v51 = *(v68 + 24);
      v50 = v51 - v52;
      if (!__OFSUB__(v51, v52))
      {
LABEL_25:
        sub_26BE00608(v68, v69);
        goto LABEL_27;
      }

      __break(1u);
    }

    else if (!v49)
    {
      v50 = BYTE6(v69);
      goto LABEL_27;
    }

    if (__OFSUB__(HIDWORD(v68), v68))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v50 = HIDWORD(v68) - v68;
    goto LABEL_25;
  }

  sub_26BFEAF40(&v88);
  result = sub_26BE5A2DC(v18, v17, v19, v20, v16);
LABEL_42:
  v63 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BFEAF70(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_26BE00608(result, a2);
    sub_26BE00608(a3, a4);
  }

  return result;
}

uint64_t sub_26BFEAFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 312);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for MLS.FramedContentAuthData();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_26BFEB0AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 312) = a2;
  }

  else
  {
    v7 = type metadata accessor for MLS.FramedContentAuthData();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s23AuthenticatedContentTBMVMa()
{
  result = qword_2804608E8;
  if (!qword_2804608E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BFEB19C()
{
  result = type metadata accessor for MLS.FramedContentAuthData();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_26BFEB264(void (*a1)(_OWORD *__return_ptr, int *, _OWORD *), uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (!a5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = 0;
  v7 = a5 - 1;
  v8 = 2 * (a5 - 1);
  v89 = a6 + 32;
  v54 = 1 - a5;
  v9 = -a5;
  v55 = a5;
  v53 = v9;
  do
  {
    v10 = 0;
    v11 = v6;
    if (v6 <= a5)
    {
      v12 = a5;
    }

    else
    {
      v12 = v6;
    }

    v13 = (v6 - v12);
    v14 = 2 * v6;
    v15 = (v9 + v6);
    while (1)
    {
      if (!(v13 + v10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        sub_26BE13A3C(v67);
        v44 = v13[47];
        v13[19] = v13[46];
        v13[20] = v44;
        v66 = v86;
        v45 = v13[43];
        v13[15] = v13[42];
        v13[16] = v45;
        v46 = v13[45];
        v13[17] = v13[44];
        v13[18] = v46;
        v47 = v13[41];
        v13[13] = v13[40];
        v13[14] = v47;
        v48 = sub_26BE13A3C(v65);
        v49 = v48[2];
        v50 = v48[3];
        v51 = v48[4];
        sub_26BE00608(*v48, v48[1]);
        sub_26BE00608(v49, v50);

        sub_26BE01654();
        swift_allocError();
        *v52 = 28;
        *(v52 + 8) = 0u;
        *(v52 + 24) = 0u;
        *(v52 + 40) = 0u;
        *(v52 + 56) = 0u;
        *(v52 + 72) = 0u;
        *(v52 + 88) = 0u;
        *(v52 + 104) = 0;
        *(v52 + 112) = 23;
        swift_willThrow();
        sub_26BE2E258(&v69, &qword_28045E4C8, &unk_26C0112A0);
        return v15;
      }

      if ((v11 + v10) < 0)
      {
        goto LABEL_29;
      }

      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_30;
      }

      if (v14 > v8)
      {
        goto LABEL_25;
      }

      if (*(a6 + 16) > v14)
      {
        break;
      }

LABEL_7:
      ++v10;
      v14 += 2;
      if (!&v15[v10])
      {
        return v58;
      }
    }

    v16 = a6;
    v17 = (v89 + 136 * v14);
    v18 = v17[7];
    v87[6] = v17[6];
    v87[7] = v18;
    v88 = *(v17 + 16);
    v19 = v17[3];
    v87[2] = v17[2];
    v87[3] = v19;
    v20 = v17[5];
    v87[4] = v17[4];
    v87[5] = v20;
    v21 = v17[1];
    v87[0] = *v17;
    v87[1] = v21;
    if (sub_26BE58C10(v87) == 1)
    {
      a6 = v16;
      goto LABEL_7;
    }

    v22 = v17[5];
    v23 = v17[7];
    v13 = v60;
    v75 = v17[6];
    v76 = v23;
    v24 = v17[1];
    v25 = v17[3];
    v71 = v17[2];
    v72 = v25;
    v26 = v17[3];
    v27 = v17[5];
    v73 = v17[4];
    v74 = v27;
    v28 = v17[1];
    v69 = *v17;
    v70 = v28;
    v29 = v17[7];
    v84 = v75;
    v85 = v29;
    v80 = v71;
    v81 = v26;
    v82 = v73;
    v83 = v22;
    v77 = *(v17 + 16);
    v86 = *(v17 + 16);
    v78 = v69;
    v79 = v24;
    if (sub_26BE58C10(&v78) == 1)
    {
LABEL_25:
      v15 = v58;

      sub_26BE01654();
      swift_allocError();
      *v42 = 30;
      *(v42 + 8) = 0u;
      *(v42 + 24) = 0u;
      *(v42 + 40) = 0u;
      *(v42 + 56) = 0u;
      *(v42 + 72) = 0u;
      *(v42 + 88) = 0u;
      *(v42 + 104) = 0;
      *(v42 + 112) = 23;
      swift_willThrow();
      return v15;
    }

    v67[6] = v84;
    v67[7] = v85;
    v68 = v86;
    v67[2] = v80;
    v67[3] = v81;
    v67[4] = v82;
    v67[5] = v83;
    v67[0] = v78;
    v67[1] = v79;
    v15 = v58;
    if (sub_26BE592C4(v67) == 1)
    {
      goto LABEL_31;
    }

    v30 = v11 + v10;
    v31 = sub_26BE13A3C(v67);
    v62 = v11 + v10;
    v32 = *(v31 + 112);
    v60[6] = *(v31 + 96);
    v60[7] = v32;
    v61 = *(v31 + 128);
    v33 = *(v31 + 48);
    v60[2] = *(v31 + 32);
    v60[3] = v33;
    v34 = *(v31 + 80);
    v60[4] = *(v31 + 64);
    v60[5] = v34;
    v35 = *(v31 + 16);
    v60[0] = *v31;
    v60[1] = v35;
    v65[2] = v71;
    v65[3] = v72;
    v65[0] = v69;
    v65[1] = v70;
    v66 = v77;
    v65[6] = v75;
    v65[7] = v76;
    v65[4] = v73;
    v65[5] = v74;
    sub_26BE59BD8(v65, v59);
    a1(v63, &v62, v60);
    if (v57)
    {

      sub_26BE2E258(&v69, &qword_28045E4C8, &unk_26C0112A0);
      return v15;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_26BEEC03C(0, *(v58 + 16) + 1, 1, v58);
    }

    v37 = *(v15 + 2);
    v36 = *(v15 + 3);
    if (v37 >= v36 >> 1)
    {
      v15 = sub_26BEEC03C((v36 > 1), v37 + 1, 1, v15);
    }

    v6 = v30 + 1;
    sub_26BE2E258(&v69, &qword_28045E4C8, &unk_26C0112A0);
    *(v15 + 2) = v37 + 1;
    v38 = &v15[56 * v37];
    v39 = v63[2];
    v40 = v63[0];
    v41 = v63[1];
    *(v38 + 10) = v64;
    *(v38 + 3) = v41;
    *(v38 + 4) = v39;
    *(v38 + 2) = v40;
    a5 = v55;
    a6 = v16;
    v9 = v53;
  }

  while (v30 + v54);
  return v15;
}

uint64_t MLS.GroupState.leafNode.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + *(type metadata accessor for MLS.GroupState() + 52));

  MLS.TreeKEMPublicKey.find(leafIndex:)(&v8, a1);
}

uint64_t MLS.GroupState.epochAuthenticator.getter()
{
  v1 = v0 + *(type metadata accessor for MLS.GroupState() + 44);
  v2 = v1 + *(type metadata accessor for MLS.KeySchedule() + 40);
  sub_26C009C3C();
  return v4;
}

unint64_t sub_26BFEB860@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t a9@<X8>, uint64_t a10)
{
  v285 = a8;
  v235 = a4;
  v236 = a7;
  v229 = a3;
  v233 = a2;
  v237 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v204 = &v200 - v16;
  v205 = type metadata accessor for MLS.KeySchedule();
  v17 = *(*(v205 - 8) + 64);
  MEMORY[0x28223BE20](v205);
  v203 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for MLS.TreeKEMPrivateKey();
  v19 = *(*(v207 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v207);
  v209 = (&v200 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v206 = &v200 - v22;
  v23 = sub_26C009C8C();
  v214 = *(v23 - 8);
  v215 = v23;
  v24 = *(v214 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v202 = &v200 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v201 = (&v200 - v28);
  MEMORY[0x28223BE20](v27);
  v213 = &v200 - v29;
  v30 = type metadata accessor for MLS.GroupInfo();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v216 = (&v200 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v232) = *a1;
  v34 = a1[2];
  v220 = a1[1];
  v231 = v34;
  v234 = a1[3];
  v35 = a5[9];
  v283[7] = a5[8];
  v283[8] = v35;
  v283[9] = a5[10];
  v284 = *(a5 + 22);
  v36 = a5[5];
  v283[3] = a5[4];
  v283[4] = v36;
  v37 = a5[7];
  v283[5] = a5[6];
  v283[6] = v37;
  v38 = a5[1];
  v282 = *a5;
  v283[0] = v38;
  v39 = a5[3];
  v283[1] = a5[2];
  v283[2] = v39;
  v40 = *a6;
  v226 = a6[1];
  v227 = v40;
  v41 = a6[3];
  v219 = a6[2];
  v228 = v41;
  v42 = type metadata accessor for MLS.GroupState();
  v43 = MEMORY[0x277D84F90];
  *(a9 + v42[15]) = MEMORY[0x277D84F90];
  v44 = (a9 + v42[16]);
  v44[9] = 0u;
  v44[10] = 0u;
  v44[7] = 0u;
  v44[8] = 0u;
  v44[5] = 0u;
  v44[6] = 0u;
  v44[3] = 0u;
  v44[4] = 0u;
  v44[1] = 0u;
  v44[2] = 0u;
  v222 = v44;
  *v44 = 0u;
  v230 = v42[17];
  v45 = sub_26C001A78(v43);
  v46 = v42[18];
  *(&v217 + 1) = v45;
  v218 = v46;
  sub_26C00528C(v43);
  v47 = v42[19];
  v48 = *(v31 + 56);
  v225 = v42[20];
  v211 = v31 + 56;
  v212 = v30;
  v210 = v48;
  v48((a9 + v225), 1, 1, v30);
  v49 = v232;
  *a9 = v232;
  v50 = sub_26C004AC0(v43);
  *(a9 + 32) = v49;
  *(a9 + 40) = v50;
  *(a9 + 48) = 0;
  *(a9 + 56) = v43;
  v51 = v235;
  v52 = a9 + v42[9];
  *v52 = *a9;
  *(v52 + 8) = xmmword_26C00BBD0;
  v223 = v42;
  v224 = v52;
  v208 = xmmword_26C00BBD0;
  *(v52 + 24) = xmmword_26C00BBD0;
  v221 = v42[14];
  sub_26BE038A8(v51, a9 + v221);
  v53 = v236;

  *(a9 + v230) = v53;
  v54 = a9;
  *(a9 + v218) = v285;
  *(a9 + v47) = v237;
  v55 = *(v53 + 16);

  if (v55 || *(v285 + 16))
  {
    sub_26BFC51B4(v227, v226);
    sub_26BE2E01C(&v282);

    sub_26BE00258(v231, v234);
    sub_26BE01654();
    v56 = swift_allocError();
    *v57 = 0xD000000000000029;
    *(v57 + 8) = 0x800000026C02B3B0;
    *(v57 + 112) = 2;
    v230 = v56;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v51);
    v58 = v229;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v233);
LABEL_5:
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    goto LABEL_6;
  }

  LOWORD(v256) = v49;
  v74 = v220;
  *(&v256 + 1) = v220;
  v75 = v231;
  *&v257 = v231;
  v76 = v234;
  *(&v257 + 1) = v234;
  v77 = a5[9];
  v278 = a5[8];
  v279 = v77;
  v280 = a5[10];
  v281 = *(a5 + 22);
  v78 = a5[5];
  v274 = a5[4];
  v275 = v78;
  v79 = a5[7];
  v276 = a5[6];
  v277 = v79;
  v80 = a5[1];
  v271[0] = *a5;
  v271[1] = v80;
  v81 = a5[3];
  v272 = a5[2];
  v273 = v81;
  v82 = v217;
  v83 = MLS.KeyPackage.refHash.getter();
  if (v82)
  {
    v230 = v82;
    sub_26BFC51B4(v227, v226);
    __swift_destroy_boxed_opaque_existential_1(v235);
    __swift_destroy_boxed_opaque_existential_1(v229);
    __swift_destroy_boxed_opaque_existential_1(v233);
    sub_26BE2E01C(&v282);

    sub_26BE00258(v75, v76);
LABEL_19:
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    goto LABEL_6;
  }

  v85 = v83;
  v86 = v84;
  v87 = sub_26BF2B8A0(v83, v84);
  v89 = v88;
  v90 = v87;
  sub_26BE00258(v85, v86);
  if (v89)
  {
    sub_26BFC51B4(v227, v226);
    sub_26BE2E01C(&v282);

    sub_26BE00258(v75, v234);
    sub_26BE01654();
    v91 = swift_allocError();
    *v92 = 13;
    *(v92 + 8) = 0u;
    *(v92 + 24) = 0u;
    *(v92 + 40) = 0u;
    *(v92 + 56) = 0u;
    *(v92 + 72) = 0u;
    *(v92 + 88) = 0u;
    *(v92 + 104) = 0;
    *(v92 + 112) = 23;
    v230 = v91;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v235);
    __swift_destroy_boxed_opaque_existential_1(v229);
    __swift_destroy_boxed_opaque_existential_1(v233);
    goto LABEL_19;
  }

  v93 = v90;
  v94 = v282;
  v95 = v232;
  v96 = v229;
  if (v282 != v232)
  {
    sub_26BE2E01C(&v282);

    sub_26BE00258(v75, v234);
    sub_26BFC51B4(v227, v226);
    sub_26BE01654();
    v97 = swift_allocError();
    *v98 = v95;
    *(v98 + 2) = v94;
    *(v98 + 112) = 18;
    v230 = v97;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v235);
    v58 = v96;
    goto LABEL_4;
  }

  LOWORD(v256) = v232;
  *(&v256 + 1) = v74;
  *&v257 = v75;
  *(&v257 + 1) = v234;
  MLS.Welcome.decryptGroupSecrets(keyPackageIndex:initPriv:)(v93, v233, v271);
  v230 = 0;
  v99 = v271[0];
  v217 = v271[1];
  v218 = v272;
  LOWORD(v271[0]) = v95;
  *(&v271[0] + 1) = v74;
  *&v271[1] = v231;
  *(&v271[1] + 1) = v234;
  v256 = v99;
  sub_26BE00608(v99, *(&v99 + 1));
  v100 = v213;
  sub_26C009C5C();
  v101 = v216;
  v102 = v230;
  MLS.Welcome.decryptGroupInfo(joinerSecret:preSharedKeys:)(v100, v216);
  v103 = v219;
  if (v102)
  {
    v230 = v102;
    sub_26BFC51B4(v227, v226);
    sub_26BE00258(v99, *(&v99 + 1));
    sub_26BE132D4(v217, *(&v217 + 1));

    sub_26BE2E01C(&v282);
    __swift_destroy_boxed_opaque_existential_1(v235);
    __swift_destroy_boxed_opaque_existential_1(v229);
    __swift_destroy_boxed_opaque_existential_1(v233);
    (*(v214 + 8))(v100, v215);

    sub_26BE00258(v231, v234);
    goto LABEL_5;
  }

  v232 = *(&v99 + 1);
  v200 = v99;
  (*(v214 + 8))(v100, v215);

  sub_26BE00258(v231, v234);
  v104 = v101;
  v105 = *(v101 + 32);
  v106 = *(v104 + 40);
  v107 = *v54;
  v108 = *(v104 + 72);
  v109 = (v108 + 32);
  v110 = *(v108 + 16) + 1;
  v111 = v233;
  do
  {
    if (!--v110)
    {
      if (v226)
      {
        v234 = v106;
        goto LABEL_34;
      }

LABEL_40:
      sub_26BE2E01C(&v282);
      sub_26BE01654();
      v130 = swift_allocError();
      *v131 = 14;
      *(v131 + 8) = 0u;
      *(v131 + 24) = 0u;
      *(v131 + 40) = 0u;
      *(v131 + 56) = 0u;
      *(v131 + 72) = 0u;
      *(v131 + 88) = 0u;
      *(v131 + 104) = 0;
      *(v131 + 112) = 23;
      v230 = v130;
      swift_willThrow();
      sub_26BE00258(v200, v232);
      sub_26BE132D4(v217, *(&v217 + 1));

      __swift_destroy_boxed_opaque_existential_1(v235);
      __swift_destroy_boxed_opaque_existential_1(v229);
      v129 = v111;
      goto LABEL_41;
    }

    v112 = v109 + 12;
    v113 = *v109;
    v109 += 12;
  }

  while (v113 != 2);
  v234 = v106;
  LOWORD(v271[0]) = 2;
  *(v271 + 8) = *(v112 - 1);
  sub_26BEDFEB0(v271, &v256);
  if (v226)
  {
LABEL_34:

    goto LABEL_35;
  }

  if (!v256)
  {
    goto LABEL_40;
  }

  LOWORD(v247) = v107;
  MLS.TreeKEMPublicKey.init(ciphersuiteID:ratchetTree:)(&v247, &v256, v271);
  v230 = 0;
  v227 = LOWORD(v271[0]);
  v226 = *(&v271[0] + 1);
  v103 = v271[1];
  v228 = *(&v271[1] + 1);
LABEL_35:
  v114 = *(v54 + 40);
  v115 = *(v54 + 56);

  v116 = v226;
  v117 = v227;
  *(v54 + 32) = v227;
  *(v54 + 40) = v116;
  *(v54 + 48) = v103;
  v118 = v228;
  *(v54 + 56) = v228;
  LOWORD(v271[0]) = v117;
  *(&v271[0] + 1) = v116;
  LODWORD(v271[1]) = v103;
  *(&v271[1] + 1) = v118;
  v119 = sub_26BE592D0();
  v121 = v120;
  sub_26BE00608(v119, v120);
  v122 = sub_26BE02DEC(v119, v121, v105, v234);
  sub_26BE00258(v119, v121);
  if ((v122 & 1) == 0)
  {
    sub_26BE2E01C(&v282);
    sub_26BE01654();
    v127 = swift_allocError();
    *v128 = 35;
    *(v128 + 8) = 0u;
    *(v128 + 24) = 0u;
    *(v128 + 40) = 0u;
    *(v128 + 56) = 0u;
    *(v128 + 72) = 0u;
    *(v128 + 88) = 0u;
    *(v128 + 104) = 0;
    *(v128 + 112) = 23;
    v230 = v127;
    swift_willThrow();
    sub_26BE00258(v200, v232);
    sub_26BE132D4(v217, *(&v217 + 1));

    __swift_destroy_boxed_opaque_existential_1(v235);
    __swift_destroy_boxed_opaque_existential_1(v229);
    v129 = v233;
LABEL_41:
    __swift_destroy_boxed_opaque_existential_1(v129);
    sub_26BFF3630(v216, type metadata accessor for MLS.GroupInfo);
    goto LABEL_19;
  }

  v123 = *(v54 + 32);
  v124 = *(v54 + 40);
  v125 = *(v54 + 48);
  v234 = v54;
  v126 = *(v54 + 56);
  LOWORD(v271[0]) = v123;
  *(&v271[0] + 1) = v124;
  LODWORD(v271[1]) = v125;
  *(&v271[1] + 1) = v126;

  MLS.GroupInfo.validateSignatureAgainstTree(tree:)(v271);
  v230 = 0;

  v132 = v234;
  v133 = v225;
  sub_26BE2E258(v234 + v225, &qword_28045F090, &qword_26C01A358);
  v134 = v216;
  sub_26BFF35C8(v216, &v132[v133], type metadata accessor for MLS.GroupInfo);
  v135 = v212;
  v210(&v132[v133], 0, 1, v212);
  v136 = v134[2];
  v137 = v134[3];
  *(v132 + 2) = v136;
  *(v132 + 3) = v137;
  v138 = v134[1];
  *(v132 + 1) = v138;
  v140 = v134[6];
  v139 = v134[7];
  v141 = v224;
  v143 = v224[1];
  v142 = v224[2];
  sub_26BE00608(v138, v136);
  sub_26BE00608(v140, v139);
  sub_26BE00258(v143, v142);
  v141[1] = v140;
  v141[2] = v139;
  v144 = *(v135 + 24);
  v145 = v230;
  sub_26BE2E558();
  v60 = v145 == 0;
  v230 = v145;
  if (v145)
  {
    sub_26BE00258(v200, v232);
    sub_26BE132D4(v217, *(&v217 + 1));

    sub_26BE2E01C(&v282);
    goto LABEL_44;
  }

  v146 = v216[8];
  v147 = v234;
  *(v234 + v223[10]) = v146;
  v148 = *(v147 + 40);
  v149 = *(v147 + 48);
  v150 = *(v147 + 56);
  v265 = *(v147 + 32);
  v266 = v148;
  v267 = v149;
  v268 = v150;
  v276 = *(&v283[6] + 8);
  v277 = *(&v283[7] + 8);
  *&v278 = *(&v283[8] + 1);
  v272 = *(&v283[2] + 8);
  v273 = *(&v283[3] + 8);
  v274 = *(&v283[4] + 8);
  v275 = *(&v283[5] + 8);
  v271[0] = *(v283 + 8);
  v271[1] = *(&v283[1] + 8);

  sub_26BE00758(v283 + 8, &v256);
  v151 = v230;
  sub_26BE5000C(v271, &v269);
  v230 = v151;
  if (v151)
  {
    sub_26BE2E01C(&v282);
    sub_26BE00258(v200, v232);
    sub_26BE132D4(v217, *(&v217 + 1));

    __swift_destroy_boxed_opaque_existential_1(v235);
    __swift_destroy_boxed_opaque_existential_1(v229);
    __swift_destroy_boxed_opaque_existential_1(v233);
    v262 = v276;
    v263 = v277;
    v264 = v278;
    v258 = v272;
    v259 = v273;
    v260 = v274;
    v261 = v275;
    v256 = v271[0];
    v257 = v271[1];
    sub_26BE00854(&v256);

    goto LABEL_47;
  }

  sub_26BE2E01C(&v282);
  v262 = v276;
  v263 = v277;
  v264 = v278;
  v258 = v272;
  v259 = v273;
  v260 = v274;
  v261 = v275;
  v256 = v271[0];
  v257 = v271[1];
  sub_26BE00854(&v256);

  if (v270 != 1)
  {
    v154 = v269;
    v155 = v223[13];
    *(v234 + v155) = v269;
    LODWORD(v240) = v154;
    v252 = *(v216 + *(v212 + 28));
    v156 = v230;
    sub_26BE7BE10(&v252, &v247);
    v230 = v156;
    if (v156)
    {
      goto LABEL_52;
    }

    LODWORD(v231) = v247;
    v157 = v234[16];
    v228 = *(v234 + 5);
    LODWORD(v227) = *(v234 + 12);
    v226 = *(v234 + 7);
    v158 = *(v234 + v155);
    sub_26BE038A8(v229, &v247);
    v159 = v209;
    v160 = v157;
    *v209 = v157;
    *(v159 + 1) = v158;
    v240 = v208;
    v161 = *(v207 + 32);
    sub_26BE2BAE8(v217, *(&v217 + 1));
    sub_26C009C5C();
    v162 = MEMORY[0x277D84F90];
    *(v159 + 1) = sub_26C004AC0(MEMORY[0x277D84F90]);
    result = sub_26C004BCC(v162);
    *(v159 + 2) = result;
    if (v158 < 0)
    {
      __break(1u);
      return result;
    }

    sub_26BE038A8(&v247, &v240);
    sub_26BE4D0C0(&v240, 2 * v158);
    if (*(&v217 + 1) >> 60 != 15)
    {
      LOWORD(v240) = v160;
      *(&v240 + 1) = v228;
      LODWORD(v241) = v227;
      *(&v241 + 1) = v226;
      v252 = v231;
      v163 = v230;
      sub_26BE528E8(&v240, &v252, v217, *(&v217 + 1));
      v230 = v163;
      if (v163)
      {
        v164 = v217;
        sub_26BE132D4(v217, *(&v217 + 1));
        sub_26BE00258(v200, v232);
        sub_26BE132D4(v164, *(&v164 + 1));

        __swift_destroy_boxed_opaque_existential_1(v235);
        __swift_destroy_boxed_opaque_existential_1(v229);
        __swift_destroy_boxed_opaque_existential_1(v233);
        sub_26BFF3630(v209, type metadata accessor for MLS.TreeKEMPrivateKey);
        __swift_destroy_boxed_opaque_existential_1(&v247);
        goto LABEL_47;
      }

      sub_26BE132D4(v217, *(&v217 + 1));
    }

    __swift_destroy_boxed_opaque_existential_1(&v247);
    v165 = v206;
    sub_26BFF36F4(v209, v206, type metadata accessor for MLS.TreeKEMPrivateKey);
    v166 = v234;
    sub_26BFF36F4(v165, v234 + v223[8], type metadata accessor for MLS.TreeKEMPrivateKey);
    LODWORD(v231) = *v166;
    v167 = *(v166 + 1);
    v168 = *(v166 + 2);
    v169 = *(v166 + 5);
    v170 = *(v166 + 12);
    v171 = *(v166 + 7);
    LOWORD(v252) = v166[16];
    v253 = v169;
    v254 = v170;
    v255 = v171;
    v172 = v230;
    v173 = sub_26BE592D0();
    v230 = v172;
    if (v172)
    {
      sub_26BE00258(v200, v232);
      sub_26BE132D4(v217, *(&v217 + 1));

LABEL_60:
      __swift_destroy_boxed_opaque_existential_1(v235);
      __swift_destroy_boxed_opaque_existential_1(v229);
      __swift_destroy_boxed_opaque_existential_1(v233);
LABEL_63:
      sub_26BFF3630(v216, type metadata accessor for MLS.GroupInfo);
      v61 = 0;
      goto LABEL_64;
    }

    v175 = v173;
    v176 = v174;
    v177 = v224[1];
    v228 = v224[2];
    LOWORD(v247) = v231;
    *(&v247 + 1) = v167;
    *&v248 = v168;
    *(&v248 + 1) = v137;
    *&v249 = v173;
    *(&v249 + 1) = v174;
    *&v250 = v177;
    v178 = v177;
    *(&v250 + 1) = v228;
    v245 = v208;
    v241 = v248;
    v242 = v249;
    v243 = v250;
    v251 = v146;
    v246 = 0;
    v244 = v146;
    v240 = v247;

    sub_26BE00608(v175, v176);
    sub_26BE00608(v167, v168);
    sub_26BE00608(v178, v228);
    v179 = v230;
    sub_26BFAF494(&v240);
    v230 = v179;
    if (v179)
    {
      sub_26BE00258(v200, v232);
      sub_26BE132D4(v217, *(&v217 + 1));

      __swift_destroy_boxed_opaque_existential_1(v235);
      __swift_destroy_boxed_opaque_existential_1(v229);
      __swift_destroy_boxed_opaque_existential_1(v233);
      sub_26BE00204(&v247);
      sub_26BE00258(v245, *(&v245 + 1));
      goto LABEL_63;
    }

    v180 = v245;
    v181 = *(&v245 + 1) >> 62;
    if ((*(&v245 + 1) >> 62) > 1)
    {
      if (v181 != 2)
      {
LABEL_73:
        v183 = sub_26C00909C();
        v185 = v184;
        sub_26BE00258(v180, *(&v180 + 1));
        LOWORD(v245) = *v234;
        *&v240 = v200;
        *(&v240 + 1) = v232;
        sub_26BE00608(v200, v232);
        v186 = v201;
        sub_26C009C5C();
        v61 = 1;
        v187 = v204;
        (*(v214 + 56))(v204, 1, 1, v215);
        sub_26BE00608(v183, v185);
        v188 = v230;
        MLS.KeySchedule.init(ciphersuiteID:joinerSecret:pskSecret:context:)(&v245, v186, v187, v183, v185, v203);
        v230 = v188;
        if (!v188)
        {
          v189 = v234;
          v190 = v234 + v223[11];
          sub_26BFF36F4(v203, v190, type metadata accessor for MLS.KeySchedule);
          v191 = *(v189 + 48);
          if (*v190)
          {
            v192 = 2;
          }

          else
          {
            v192 = 1;
          }

          LOWORD(v245) = v192;
          LODWORD(v240) = v191;
          v193 = v202;
          (*(v214 + 16))(v202, &v190[*(v205 + 32)], v215);
          v194 = v230;
          MLS.GroupKeySource.init(ciphersuiteID:groupSize:encryptionSecret:)(&v245, &v240, v193, v238);
          v230 = v194;
          if (!v194)
          {
            v195 = v234 + v223[12];
            v196 = v238[5];
            *(v195 + 4) = v238[4];
            *(v195 + 5) = v196;
            *(v195 + 6) = v238[6];
            *(v195 + 14) = v239;
            v197 = v238[1];
            *v195 = v238[0];
            *(v195 + 1) = v197;
            v198 = v238[3];
            *(v195 + 2) = v238[2];
            *(v195 + 3) = v198;
            v199 = v230;
            sub_26BEAFD54(v216 + v144, v224[1], v224[2]);
            v230 = v199;
            if (v199)
            {
              sub_26BE00204(&v247);
              sub_26BE00258(v200, v232);
              sub_26BE132D4(v217, *(&v217 + 1));

              sub_26BE00258(v183, v185);
              __swift_destroy_boxed_opaque_existential_1(v235);
              __swift_destroy_boxed_opaque_existential_1(v229);
              __swift_destroy_boxed_opaque_existential_1(v233);
              sub_26BFF3630(v216, type metadata accessor for MLS.GroupInfo);
              v59 = 1;
              v62 = 1;
              goto LABEL_48;
            }

            sub_26BE00204(&v247);
            sub_26BE00258(v200, v232);
            sub_26BE132D4(v217, *(&v217 + 1));

            sub_26BE00258(v183, v185);
            __swift_destroy_boxed_opaque_existential_1(v235);
            __swift_destroy_boxed_opaque_existential_1(v229);
            __swift_destroy_boxed_opaque_existential_1(v233);
            return sub_26BFF3630(v216, type metadata accessor for MLS.GroupInfo);
          }

          sub_26BE00204(&v247);
          sub_26BE00258(v200, v232);
          sub_26BE132D4(v217, *(&v217 + 1));

          sub_26BE00258(v183, v185);
          __swift_destroy_boxed_opaque_existential_1(v235);
          __swift_destroy_boxed_opaque_existential_1(v229);
          __swift_destroy_boxed_opaque_existential_1(v233);
          sub_26BFF3630(v216, type metadata accessor for MLS.GroupInfo);
LABEL_64:
          v62 = 0;
          v59 = 1;
          goto LABEL_48;
        }

        sub_26BE00204(&v247);
        sub_26BE00258(v200, v232);
        sub_26BE132D4(v217, *(&v217 + 1));

        sub_26BE00258(v183, v185);
        goto LABEL_60;
      }

      v182 = *(v245 + 24);
    }

    else
    {
      if (!v181)
      {
        goto LABEL_73;
      }

      v182 = v245 >> 32;
    }

    if (v182 < 0)
    {
      __break(1u);
    }

    goto LABEL_73;
  }

  sub_26BE01654();
  v152 = swift_allocError();
  *v153 = 16;
  *(v153 + 8) = 0u;
  *(v153 + 24) = 0u;
  *(v153 + 40) = 0u;
  *(v153 + 56) = 0u;
  *(v153 + 72) = 0u;
  *(v153 + 88) = 0u;
  *(v153 + 104) = 0;
  *(v153 + 112) = 23;
  v230 = v152;
  swift_willThrow();
LABEL_52:
  sub_26BE00258(v200, v232);
  sub_26BE132D4(v217, *(&v217 + 1));

LABEL_44:
  __swift_destroy_boxed_opaque_existential_1(v235);
  __swift_destroy_boxed_opaque_existential_1(v229);
  __swift_destroy_boxed_opaque_existential_1(v233);
LABEL_47:
  sub_26BFF3630(v216, type metadata accessor for MLS.GroupInfo);
  v59 = 0;
  v61 = 0;
  v62 = 0;
LABEL_48:
  v54 = v234;
  sub_26BE00258(*(v234 + 1), *(v234 + 2));
LABEL_6:
  v63 = *(v54 + 40);
  v64 = *(v54 + 56);

  v65 = v223;
  if (v59)
  {
    sub_26BFF3630(v54 + v223[8], type metadata accessor for MLS.TreeKEMPrivateKey);
  }

  v66 = v224[3];
  v67 = v224[4];
  sub_26BE00258(v224[1], v224[2]);
  sub_26BE00258(v66, v67);
  if (!v60)
  {
    if (!v61)
    {
      goto LABEL_10;
    }

LABEL_14:
    sub_26BFF3630(v54 + v65[11], type metadata accessor for MLS.KeySchedule);
    if (!v62)
    {
      goto LABEL_12;
    }

LABEL_11:
    v68 = v54 + v65[12];
    v69 = *(v68 + 80);
    v274 = *(v68 + 64);
    v275 = v69;
    v276 = *(v68 + 96);
    *&v277 = *(v68 + 112);
    v70 = *(v68 + 16);
    v271[0] = *v68;
    v271[1] = v70;
    v71 = *(v68 + 48);
    v272 = *(v68 + 32);
    v273 = v71;
    sub_26BE717DC(v271);
    goto LABEL_12;
  }

  v73 = *(v54 + v65[10]);

  if (v61)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (v62)
  {
    goto LABEL_11;
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_1((v54 + v221));
  sub_26BE2E258(v222, &qword_28045E730, &qword_26C011528);

  return sub_26BE2E258(v54 + v225, &qword_28045F090, &qword_26C01A358);
}

uint64_t MLS.GroupState.init(groupID:ciphersuiteID:signaturePrivateKey:extensions:credential:client:)@<X0>(void *a1@<X0>, int *a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v106 = a5;
  v169 = a1;
  v15 = type metadata accessor for MLS.GroupState();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v99 = (&v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v17);
  v21 = *a3;
  if ((v21 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v97 = &v84 - v20;
    v105 = a2;
    v22 = *a6;
    v23 = a6[1];
    LODWORD(v98) = v21;
    LOBYTE(v154) = v21 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v154, &v107);
    if (a7)
    {
      v104 = v109;
      swift_beginAccess();
      sub_26BE295A0((a7 + 5), &v107);

      sub_26BE1118C(&v154);
      v24 = v8;
      if (v8)
      {

        sub_26BE00258(v169, v105);

        sub_26BE7162C(v22, v23);
        __swift_destroy_boxed_opaque_existential_1(a4);
        return sub_26BE29710(&v107);
      }

      sub_26BE29710(&v107);
    }

    else
    {
      v25 = v109;
      MLS.Cryptography.Ciphersuite.generateHPKEPrivateKey()(&v154);
      v24 = v8;
      if (v8)
      {
        __swift_destroy_boxed_opaque_existential_1(a4);
        sub_26BE7162C(v22, v23);

        sub_26BE00258(v169, v105);
      }

      v104 = v25;
    }

    sub_26BE03890(&v154, v168);
    sub_26BE038A8(v168, v165);
    sub_26BE038A8(a4, v162);
    v84 = v15;
    v85 = a8;
    v103 = v22;
    if (a7)
    {
      swift_beginAccess();
      v27 = a7[42];
      v26 = a7[43];
      v28 = a7[44];
      v29 = a7[45];
      v30 = a7[46];

      v96 = v26;
      v24 = 0;

      v95 = v28;
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
      v95 = MEMORY[0x277D84F90];
      v96 = MEMORY[0x277D84F90];
      v29 = MEMORY[0x277D84F90];
      v30 = &unk_287CBA1B8;
    }

    v101 = v30;
    v102 = v29;
    v87 = v27;
    v89 = a4;
    v93 = a7;
    v94 = v24;
    if ((~v23 & 0x3000000000000000) == 0)
    {
      v31 = v163;
      v32 = v164;
      __swift_project_boxed_opaque_existential_1(v162, v163);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v34 = *(AssociatedTypeWitness - 8);
      v35 = *(v34 + 64);
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v37 = &v84 - v36;
      (*(v32 + 40))(v31, v32);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v103 = (*(*(AssociatedConformanceWitness + 8) + 16))(AssociatedTypeWitness);
      v23 = v39;
      (*(v34 + 8))(v37, AssociatedTypeWitness);
    }

    v88 = v23;
    v41 = v166;
    v40 = v167;
    __swift_project_boxed_opaque_existential_1(v165, v166);
    v42 = *(v40 + 8);
    v43 = swift_getAssociatedTypeWitness();
    v92 = &v84;
    v44 = *(v43 - 8);
    v45 = *(v44 + 64);
    MEMORY[0x28223BE20](v43);
    v47 = &v84 - v46;
    (*(v42 + 32))(v41, v42);
    v48 = swift_getAssociatedConformanceWitness();
    *&v100 = (*(v48 + 16))(v43, v48);
    *(&v100 + 1) = v49;
    (*(v44 + 8))(v47, v43);
    v50 = v163;
    v51 = v164;
    __swift_project_boxed_opaque_existential_1(v162, v163);
    v52 = swift_getAssociatedTypeWitness();
    v53 = *(v52 - 8);
    v54 = *(v53 + 64);
    MEMORY[0x28223BE20](v52);
    v56 = &v84 - v55;
    (*(v51 + 40))(v50, v51);
    v57 = v88;
    v58 = swift_getAssociatedConformanceWitness();
    v59 = (*(*(v58 + 8) + 16))(v52);
    v61 = v60;
    (*(v53 + 8))(v56, v52);
    v107 = v100;
    v90 = v59;
    *&v108 = v59;
    *(&v108 + 1) = v61;
    v92 = v61;
    *&v109 = v103;
    *(&v109 + 1) = v57;
    v62 = v87;
    v64 = v95;
    v63 = v96;
    *&v110 = v87;
    *(&v110 + 1) = v96;
    *&v111 = v95;
    *(&v111 + 1) = v102;
    *&v112[0] = v101;
    v91 = xmmword_26C015F70;
    *(v112 + 8) = xmmword_26C015F70;
    BYTE8(v112[1]) = 0;
    HIDWORD(v112[1]) = *&v161[3];
    *(&v112[1] + 9) = *v161;
    v65 = MEMORY[0x277D84F90];
    *&v113[0] = MEMORY[0x277D84F90];
    v86 = xmmword_26C00BBD0;
    *(v113 + 8) = xmmword_26C00BBD0;
    v159[1] = v112[1];
    v160[0] = v113[0];
    *&v160[1] = 0xC000000000000000;
    v156 = v109;
    v157 = v110;
    v159[0] = v112[0];
    v158 = v111;
    v155 = v108;
    v154 = v100;
    v152 = xmmword_26C00DA60;
    v153 = 0;
    sub_26BE00758(&v107, &v143);
    v66 = v94;
    v67 = sub_26BE5B600(&v152);
    if (v66)
    {

      sub_26BE00258(v169, v105);

      __swift_destroy_boxed_opaque_existential_1(v89);
      __swift_destroy_boxed_opaque_existential_1(v168);
      v149 = v159[1];
      v150 = v160[0];
      v151 = *&v160[1];
      v145 = v156;
      v146 = v157;
      v148 = v159[0];
      v147 = v158;
      v144 = v155;
      v143 = v154;
      sub_26BE00854(&v143);
      v154 = v100;
      *&v155 = v90;
      *(&v155 + 1) = v92;
      *&v156 = v103;
      *(&v156 + 1) = v57;
      *&v157 = v62;
      *(&v157 + 1) = v63;
      *&v158 = v64;
      *(&v158 + 1) = v102;
      *&v159[0] = v101;
      *(v159 + 8) = v91;
      BYTE8(v159[1]) = 0;
      *(&v159[1] + 9) = *v161;
      HIDWORD(v159[1]) = *&v161[3];
      *&v160[0] = v65;
      *(v160 + 8) = v86;
      sub_26BE00854(&v154);
      __swift_destroy_boxed_opaque_existential_1(v162);
      return __swift_destroy_boxed_opaque_existential_1(v165);
    }

    else
    {
      v69 = v67;
      v70 = v68;
      v149 = v159[1];
      v150 = v160[0];
      v151 = *&v160[1];
      v145 = v156;
      v146 = v157;
      v148 = v159[0];
      v147 = v158;
      v144 = v155;
      v143 = v154;
      sub_26BE00854(&v143);
      v71 = v163;
      v72 = v164;
      __swift_project_boxed_opaque_existential_1(v162, v163);
      v73 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x65646F4E6661654CLL, 0xEB00000000534254, v69, v70, v71, v72);
      v75 = v74;
      v76 = v73;
      sub_26BE00258(v69, v70);
      sub_26BE00258(0, 0xC000000000000000);
      v134 = v98;
      sub_26BE038A8(v165, v133);
      sub_26BE038A8(v162, v132);
      v77 = v100;
      v135 = v100;
      *&v136 = v90;
      *(&v136 + 1) = v92;
      *&v137 = v103;
      *(&v137 + 1) = v57;
      *&v138 = v62;
      *(&v138 + 1) = v96;
      *&v139 = v95;
      *(&v139 + 1) = v102;
      *&v140[0] = v101;
      *(v140 + 8) = v91;
      BYTE8(v140[1]) = 0;
      *(&v140[1] + 9) = *v161;
      HIDWORD(v140[1]) = *&v161[3];
      *&v141 = MEMORY[0x277D84F90];
      v98 = v76;
      *(&v141 + 1) = v76;
      v142 = v75;
      v130[6] = v140[1];
      v130[7] = v141;
      v131 = v75;
      v130[2] = v137;
      v130[3] = v138;
      v130[4] = v139;
      v130[5] = v140[0];
      v130[0] = v100;
      v130[1] = v136;
      sub_26BE00758(&v135, &v114);
      v78 = v99;
      sub_26BFEF948(v169, v105, &v134, v133, v132, v130, v106, v99);
      v94 = 0;

      __swift_destroy_boxed_opaque_existential_1(v89);
      __swift_destroy_boxed_opaque_existential_1(v168);
      v114 = v77;
      v115 = v90;
      v116 = v92;
      v117 = v103;
      v118 = v57;
      v119 = v62;
      v120 = v96;
      v121 = v95;
      v122 = v102;
      v123 = v101;
      v124 = v91;
      v125 = 0;
      *v126 = *v161;
      *&v126[3] = *&v161[3];
      v127 = MEMORY[0x277D84F90];
      v128 = v98;
      v129 = v75;
      sub_26BE00854(&v114);
      v79 = v97;
      sub_26BFF36F4(v78, v97, type metadata accessor for MLS.GroupState);
      __swift_destroy_boxed_opaque_existential_1(v162);
      __swift_destroy_boxed_opaque_existential_1(v165);
      v80 = v79;
      v81 = v85;
      sub_26BFF36F4(v80, v85, type metadata accessor for MLS.GroupState);
      v82 = *(v84 + 76);
      v83 = *(v81 + v82);

      *(v81 + v82) = v93;
    }
  }

  return result;
}

uint64_t MLS.GroupState.credential.getter@<X0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v16 = *(v1 + 32);
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v15 = *(v1 + *(type metadata accessor for MLS.GroupState() + 52));

  MLS.TreeKEMPublicKey.find(leafIndex:)(&v15, &v20);
  if (v2)
  {
  }

  else
  {

    v11[6] = v26;
    v11[7] = v27;
    v11[2] = v22;
    v11[3] = v23;
    v11[4] = v24;
    v11[5] = v25;
    v11[0] = v20;
    v11[1] = v21;
    v13[6] = v26;
    v13[7] = v27;
    v13[2] = v22;
    v13[3] = v23;
    v13[4] = v24;
    v13[5] = v25;
    v12 = v28;
    v14 = v28;
    v13[0] = v20;
    v13[1] = v21;
    if (sub_26BE59C80(v13) == 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v8 = 15;
      v8[112] = 0;
      return swift_willThrow();
    }

    else
    {
      v9 = MLS.Credential.rawValue.getter();
      MLS.Identity.Credential.init(serializedCredential:)(v9, v10, a1);
      return sub_26BE2E258(v11, &qword_28045E6A0, &unk_26C016520);
    }
  }
}

uint64_t sub_26BFEDF98@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = *(v2 + 5);
  v7 = *(v2 + 12);
  v8 = *(v2 + 7);
  v46 = v2[16];
  v47 = v6;
  v48 = v7;
  v49 = v8;
  v45 = v5;

  MLS.TreeKEMPublicKey.find(leafIndex:)(&v45, &v50);
  if (v3)
  {
  }

  else
  {

    v33 = v56;
    v34 = v57;
    v29 = v52;
    v30 = v53;
    v31 = v54;
    v32 = v55;
    v27 = v50;
    v28 = v51;
    v42 = v56;
    v43 = v57;
    v38 = v52;
    v39 = v53;
    v40 = v54;
    v41 = v55;
    v35 = v58;
    v44 = v58;
    v36 = v50;
    v37 = v51;
    result = sub_26BE59C80(&v36);
    if (result == 1)
    {
      *(a2 + 48) = 0;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
    }

    else
    {
      v24 = v42;
      v25 = v43;
      v26 = v44;
      v20 = v38;
      v21 = v39;
      v22 = v40;
      v23 = v41;
      v10 = *v2;
      v18 = v36;
      v19 = v37;
      if ((v10 - 3) < 0xFFFFFFFE)
      {
        __break(1u);
      }

      else
      {
        v14 = v10 != 1;
        v15[6] = v33;
        v15[7] = v34;
        v16 = v35;
        v15[2] = v29;
        v15[3] = v30;
        v15[4] = v31;
        v15[5] = v32;
        v15[0] = v27;
        v15[1] = v28;
        sub_26BE00758(v15, v12);
        MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v14, v17);
        v11 = v17[0];

        v14 = v11;
        sub_26BF34320(&v14, a2);
        v12[6] = v24;
        v12[7] = v25;
        v13 = v26;
        v12[2] = v20;
        v12[3] = v21;
        v12[4] = v22;
        v12[5] = v23;
        v12[0] = v18;
        v12[1] = v19;
        sub_26BE00854(v12);
        return sub_26BE2E258(&v27, &qword_28045E6A0, &unk_26C016520);
      }
    }
  }

  return result;
}

__n128 static MLS.GroupState.externalJoin(signaturePrivateKey:keyPackage:groupInfo:tree:messageOptions:removePrior:psks:)(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, __int128 *a5, unint64_t a6, uint64_t *a7, void *a8, int *a9, uint64_t a10)
{
  v179 = a6;
  v175 = a8;
  v176 = a7;
  v177 = a4;
  v169 = a2;
  v170 = a3;
  v167 = a1;
  v226 = a10;
  v168 = type metadata accessor for MLS.GroupState.CommitOutput(0);
  v11 = *(*(v168 - 8) + 64);
  MEMORY[0x28223BE20](v168);
  v171 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v13 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v173 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MLS.GroupState.CommitTypeOptions(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26C009C8C();
  v174 = *(v19 - 8);
  v20 = *(v174 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v154 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v154 - v27;
  v29 = type metadata accessor for MLS.GroupInfo();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v154 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MLS.GroupState();
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v154 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a5[9];
  v222 = a5[8];
  v223 = v38;
  v224 = a5[10];
  v225 = *(a5 + 22);
  v39 = a5[5];
  v218 = a5[4];
  v219 = v39;
  v40 = a5[7];
  v220 = a5[6];
  v221 = v40;
  v41 = a5[1];
  v214 = *a5;
  v215 = v41;
  v42 = a5[3];
  v216 = a5[2];
  v217 = v42;
  if (*(v226 + 16))
  {
    sub_26BE01654();
    swift_allocError();
    *v43 = 0xD000000000000029;
    *(v43 + 8) = 0x800000026C02B3B0;
    *(v43 + 112) = 2;
    swift_willThrow();
    return result;
  }

  v165 = v26;
  v166 = v28;
  v162 = v23;
  v163 = v18;
  v164 = v19;
  v226 = v35;
  v161 = *v175;
  v45 = v175[1];
  v159 = v175[2];
  v160 = v45;
  v175 = v175[3];
  v46 = *a9;
  v47 = *(a9 + 4);
  v48 = v176[2];
  v49 = v176[3];
  v51 = *v176;
  v50 = v176[1];
  sub_26BE038A8(v177, &v199);
  sub_26BFF35C8(v179, v32, type metadata accessor for MLS.GroupInfo);
  v185.n128_u64[0] = v51;
  v185.n128_u64[1] = v50;
  v186.n128_u64[0] = v48;
  v186.n128_u64[1] = v49;
  sub_26BFF2B34(v51, v50);
  v52 = v178;
  sub_26BFF2114(&v199, v32, &v185, v37);
  if (!v52)
  {
    v53 = v37;
    v54 = v179;
    LODWORD(v178) = v47;
    LODWORD(v177) = v46;
    v158 = v53;
    v55 = *v53;
    if ((v55 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
      goto LABEL_31;
    }

    v56 = v55 != 1;
    v185.n128_u8[0] = v55 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v185, &v199);
    v57 = v199;
    v58 = *(&v199 + 1);
    v59 = v200;
    v60 = v201;
    sub_26BE82154(*(v54 + 72), &v199);
    v179 = *(&v199 + 1);
    if (*(&v199 + 1) >> 60 == 15)
    {
      if (qword_28045DF80 == -1)
      {
LABEL_7:
        v61 = sub_26C009A5C();
        __swift_project_value_buffer(v61, qword_280478EE8);
        v62 = sub_26C009A3C();
        v63 = sub_26C00AA0C();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *&v199 = v65;
          *v64 = 136315138;
          *(v64 + 4) = sub_26BE29740(0x61745370756F7247, 0xEA00000000006574, &v199);
          _os_log_impl(&dword_26BDFE000, v62, v63, "%s: Missing external_pub extension in GroupInfo", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v65);
          MEMORY[0x26D69A4E0](v65, -1, -1);
          MEMORY[0x26D69A4E0](v64, -1, -1);
        }

        sub_26BE01654();
        swift_allocError();
        *v66 = 0xD00000000000001CLL;
        *(v66 + 8) = 0x800000026C02DAD0;
        *(v66 + 112) = 2;
        swift_willThrow();

        sub_26BFF3630(v158, type metadata accessor for MLS.GroupState);
        return result;
      }

LABEL_31:
      swift_once();
      goto LABEL_7;
    }

    v157 = v56;
    v67 = v199;
    v176 = v60;
    if (v57)
    {
      LOBYTE(v199) = 1;
      *(&v199 + 1) = v58;
      v200 = v59;
      *&v201 = v60;
      v212 = type metadata accessor for P256EncryptionPublicKey(0);
      v213 = sub_26BFF36AC(&qword_28045E3C0, type metadata accessor for P256EncryptionPublicKey);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v211);
      v69 = v179;
      sub_26BE2BAE8(v67, v179);

      P256EncryptionPublicKey.init(data:ciphersuite:)(v67, v69, &v199, boxed_opaque_existential_1);
    }

    else
    {
      LOBYTE(v199) = 0;
      *(&v199 + 1) = v58;
      v200 = v59;
      *&v201 = v60;
      v212 = type metadata accessor for Curve25519EncryptionPublicKey(0);
      v213 = sub_26BFF36AC(&qword_28045E2D8, type metadata accessor for Curve25519EncryptionPublicKey);
      v70 = __swift_allocate_boxed_opaque_existential_1(v211);
      v71 = v179;
      sub_26BE2BAE8(v67, v179);

      Curve25519EncryptionPublicKey.init(data:ciphersuite:)(v67, v71, &v199, v70);
    }

    v156 = v67;
    v72 = v158 + *(v226 + 44);
    v73 = v212;
    v74 = v213;
    __swift_project_boxed_opaque_existential_1(v211, v212);
    v75 = v165;
    v76 = (*(v74 + 32))(v165, 0xD000000000000014, 0x800000026C02C280, *(v72 + 1), v73, v74);
    v78 = v77;
    v79 = v76;
    v80 = v164;
    (*(v174 + 32))(v166, v75, v164);
    v226 = v79;
    sub_26BE00608(v79, v78);
    v81 = sub_26BEED780(0, 1, 1, MEMORY[0x277D84F90]);
    v83 = *(v81 + 2);
    v82 = *(v81 + 3);
    if (v83 >= v82 >> 1)
    {
      v81 = sub_26BEED780((v82 > 1), v83 + 1, 1, v81);
    }

    v84 = v178;
    *&v199 = v226;
    *(&v199 + 1) = v78;
    sub_26BF32120(&v199);
    *(v81 + 2) = v83 + 1;
    v85 = &v81[184 * v83];
    v86 = v199;
    v87 = v200;
    v88 = v202;
    *(v85 + 4) = v201;
    *(v85 + 5) = v88;
    *(v85 + 2) = v86;
    *(v85 + 3) = v87;
    v89 = v203;
    v90 = v204;
    v91 = v206;
    *(v85 + 8) = v205;
    *(v85 + 9) = v91;
    *(v85 + 6) = v89;
    *(v85 + 7) = v90;
    v92 = v207;
    v93 = v208;
    v94 = v209;
    *(v85 + 26) = v210;
    *(v85 + 11) = v93;
    *(v85 + 12) = v94;
    *(v85 + 10) = v92;
    v155 = v78;
    if (v84)
    {
      v95 = v166;
    }

    else
    {
      if (qword_28045DF80 != -1)
      {
        swift_once();
      }

      v96 = sub_26C009A5C();
      __swift_project_value_buffer(v96, qword_280478EE8);
      v97 = sub_26C009A3C();
      v98 = sub_26C00AA1C();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v178 = v81;
        v101 = v100;
        v180[0] = v100;
        *v99 = 136315138;
        v185.n128_u64[0] = 0;
        v185.n128_u64[1] = 0xE000000000000000;
        sub_26C00AC1C();

        v185.n128_u64[0] = 0xD000000000000011;
        v185.n128_u64[1] = 0x800000026C02B9D0;
        LODWORD(v197) = v177;
        v102 = sub_26C00AEFC();
        MEMORY[0x26D699090](v102);

        MEMORY[0x26D699090](41, 0xE100000000000000);
        v103 = sub_26BE29740(v185.n128_i64[0], v185.n128_u64[1], v180);

        *(v99 + 4) = v103;
        _os_log_impl(&dword_26BDFE000, v97, v98, "Removing prior appearance %s from group", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v101);
        v104 = v101;
        v81 = v178;
        MEMORY[0x26D69A4E0](v104, -1, -1);
        MEMORY[0x26D69A4E0](v99, -1, -1);
      }

      v95 = v166;
      v106 = *(v81 + 2);
      v105 = *(v81 + 3);
      v80 = v164;
      if (v106 >= v105 >> 1)
      {
        v81 = sub_26BEED780((v105 > 1), v106 + 1, 1, v81);
      }

      v185.n128_u32[0] = v177;
      sub_26BE71934(&v185);
      *(v81 + 2) = v106 + 1;
      v107 = &v81[184 * v106];
      v108 = v185;
      v109 = v186;
      v110 = v188;
      *(v107 + 4) = v187;
      *(v107 + 5) = v110;
      *(v107 + 2) = v108;
      *(v107 + 3) = v109;
      v111 = v189;
      v112 = v190;
      v113 = v192;
      *(v107 + 8) = v191;
      *(v107 + 9) = v113;
      *(v107 + 6) = v111;
      *(v107 + 7) = v112;
      v114 = v193;
      v115 = v194;
      v116 = v195;
      *(v107 + 26) = v196;
      *(v107 + 11) = v115;
      *(v107 + 12) = v116;
      *(v107 + 10) = v114;
    }

    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v178 = v81;
    v117 = sub_26C009A5C();
    __swift_project_value_buffer(v117, qword_280478EE8);
    v118 = sub_26C009A3C();
    v119 = sub_26C00AA1C();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_26BDFE000, v118, v119, "Performing external commit", v120, 2u);
      v121 = v120;
      v80 = v164;
      MEMORY[0x26D69A4E0](v121, -1, -1);
    }

    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
    v123 = *(v122 + 48);
    v124 = v223;
    v125 = v163;
    *(v163 + 8) = v222;
    *(v125 + 144) = v124;
    *(v125 + 160) = v224;
    *(v125 + 176) = v225;
    v126 = v219;
    *(v125 + 64) = v218;
    *(v125 + 80) = v126;
    v127 = v221;
    *(v125 + 96) = v220;
    *(v125 + 112) = v127;
    v128 = v215;
    *v125 = v214;
    *(v125 + 16) = v128;
    v129 = v217;
    *(v125 + 32) = v216;
    *(v125 + 48) = v129;
    v130 = v174;
    (*(v174 + 16))(v125 + v123, v95, v80);
    (*(*(v122 - 8) + 56))(v125, 0, 3, v122);
    v131 = v172;
    v132 = v173;
    sub_26BFF35C8(v125, &v173[*(v172 + 20)], type metadata accessor for MLS.GroupState.CommitTypeOptions);
    *v132 = 1;
    v132[v131[6]] = 1;
    v132[v131[7]] = 0;
    v132[v131[8]] = 0;
    *&v132[v131[9]] = MEMORY[0x277D84F90];
    memset(v180, 0, 40);
    memset(v198, 0, 80);
    sub_26BE2DFC0(&v214, &v185);
    sub_26BE7162C(0, 0x3000000000000000uLL);
    v197 = xmmword_26C00DA50;
    sub_26BE3C038(v180, v198);
    sub_26BE701EC(v198[5]);
    memset(&v198[5], 0, 48);
    v133 = v157;
    LOBYTE(v180[0]) = v157;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v180, &v185);
    v181[0] = v133;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v181, v180);
    v134 = v180[1];

    v135 = sub_26BE1264C(v134);
    v137 = v136;

    v185.n128_u64[0] = v135;
    v185.n128_u64[1] = v137;
    sub_26BE00608(v135, v137);
    v138 = v162;
    sub_26C009C5C();
    v181[0] = v161;
    v182 = v160;
    v183 = v159;
    v184 = v175;
    sub_26BE638EC(v178, v138, v132, v181, &v197, v171);
    sub_26BE132D4(v156, v179);

    sub_26BE00258(v135, v137);
    sub_26BE00258(v226, v155);
    v139 = *(v130 + 8);
    v140 = v164;
    v139(v138, v164);
    sub_26BFF3630(v132, type metadata accessor for MLS.GroupState.CommitOptions);
    sub_26BFF3630(v163, type metadata accessor for MLS.GroupState.CommitTypeOptions);
    v139(v166, v140);
    sub_26BFF3630(v158, type metadata accessor for MLS.GroupState);
    sub_26BF7E1E8(&v197);
    __swift_destroy_boxed_opaque_existential_1(v211);
    v141 = v171;
    sub_26BFF35C8(v171, v167, type metadata accessor for MLS.MLSMessage);
    v142 = v168;
    sub_26BFF35C8(v141 + *(v168 + 24), v169, type metadata accessor for MLS.GroupState);
    v143 = (v141 + *(v142 + 32));
    v144 = v143[9];
    v193 = v143[8];
    v194 = v144;
    v195 = v143[10];
    v145 = v143[5];
    v189 = v143[4];
    v190 = v145;
    v146 = v143[7];
    v191 = v143[6];
    v192 = v146;
    v147 = v143[3];
    v187 = v143[2];
    v188 = v147;
    v148 = v143[1];
    v185 = *v143;
    v186 = v148;
    sub_26BE6FF30(&v185, v180);
    sub_26BFF3630(v141, type metadata accessor for MLS.GroupState.CommitOutput);
    v149 = v194;
    v150 = v170;
    v170[8] = v193;
    v150[9] = v149;
    v150[10] = v195;
    v151 = v190;
    v150[4] = v189;
    v150[5] = v151;
    v152 = v192;
    v150[6] = v191;
    v150[7] = v152;
    v153 = v186;
    *v150 = v185;
    v150[1] = v153;
    result = v188;
    v150[2] = v187;
    v150[3] = result;
  }

  return result;
}

uint64_t MLS.GroupState.groupID.getter()
{
  v1 = *(v0 + 8);
  sub_26BE00608(v1, *(v0 + 16));
  return v1;
}

uint64_t MLS.GroupState.groupID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MLS.GroupState.tree.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t MLS.GroupState.tree.setter(__int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 4);
  v5 = *(a1 + 3);
  v6 = *(v1 + 40);
  v7 = *(v1 + 56);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

uint64_t MLS.GroupState.index.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for MLS.GroupState();
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t MLS.GroupState.index.setter(int *a1)
{
  v2 = *a1;
  result = type metadata accessor for MLS.GroupState();
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t MLS.GroupState.identityPriv.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for MLS.GroupState() + 56);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_26BE03890(a1, v1 + v3);
}

uint64_t static MLS.GroupState.EpochRef.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_26BE02DEC(a1[1], a1[2], a2[1], a2[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t MLS.GroupState.EpochRef.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x26D699B60](*v0);

  return sub_26C00911C();
}

uint64_t MLS.GroupState.EpochRef.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_26C00B05C();
  MEMORY[0x26D699B60](v1);
  sub_26C00911C();
  return sub_26C00B0CC();
}

uint64_t sub_26BFEF710(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_26BE02DEC(a1[1], a1[2], a2[1], a2[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BFEF734()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_26C00B05C();
  MEMORY[0x26D699B60](v1);
  sub_26C00911C();
  return sub_26C00B0CC();
}

uint64_t sub_26BFEF798()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x26D699B60](*v0);

  return sub_26C00911C();
}

uint64_t sub_26BFEF7EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_26C00B05C();
  MEMORY[0x26D699B60](v1);
  sub_26C00911C();
  return sub_26C00B0CC();
}

uint64_t sub_26BFEF84C@<X0>(__int128 *a1@<X1>, unsigned __int16 *a2@<X2>, _OWORD *a3@<X8>)
{
  v4 = a1[7];
  v19 = a1[6];
  v20 = v4;
  v21 = *(a1 + 16);
  v5 = a1[3];
  v15 = a1[2];
  v16 = v5;
  v6 = a1[5];
  v17 = a1[4];
  v18 = v6;
  v7 = a1[1];
  v8 = *a2;
  v13 = *a1;
  v14 = v7;
  if ((v8 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v11 = v8 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v11, v12);
    v9 = v12[0];

    v11 = v9;
    return sub_26BF34320(&v11, a3);
  }

  return result;
}

uint64_t type metadata accessor for MLS.GroupState()
{
  result = qword_280460900;
  if (!qword_280460900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BFEF948@<X0>(void *a1@<X0>, int *a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, unsigned __int16 *a8@<X8>)
{
  v189 = a4;
  v190 = a5;
  v187 = a1;
  v188 = a2;
  v12 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v167 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v172 = &v160 - v17;
  v176 = sub_26C009C8C();
  v174 = *(v176 - 8);
  v18 = *(v174 + 64);
  v19 = MEMORY[0x28223BE20](v176);
  v166 = &v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v168 = &v160 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v170 = &v160 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v180 = (&v160 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v179 = &v160 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v175 = &v160 - v30;
  MEMORY[0x28223BE20](v29);
  v177 = &v160 - v31;
  v171 = type metadata accessor for MLS.KeySchedule();
  v32 = *(*(v171 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v171);
  v173 = &v160 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v169 = &v160 - v35;
  v36 = *a3;
  v37 = a6[7];
  v219 = a6[6];
  v220 = v37;
  v221 = *(a6 + 16);
  v38 = a6[3];
  v215 = a6[2];
  v216 = v38;
  v39 = a6[5];
  v217 = a6[4];
  v218 = v39;
  v40 = a6[1];
  v213 = *a6;
  v214 = v40;
  v41 = type metadata accessor for MLS.GroupState();
  v42 = MEMORY[0x277D84F90];
  *(a8 + v41[15]) = MEMORY[0x277D84F90];
  v43 = (a8 + v41[16]);
  v43[9] = 0u;
  v43[10] = 0u;
  v43[7] = 0u;
  v43[8] = 0u;
  v43[5] = 0u;
  v43[6] = 0u;
  v43[3] = 0u;
  v43[4] = 0u;
  v43[1] = 0u;
  v43[2] = 0u;
  v181 = v43;
  *v43 = 0u;
  v44 = v41[17];
  v185 = sub_26C001A78(v42);
  *(a8 + v44) = v185;
  v45 = v41[18];
  v183 = sub_26C00528C(v42);
  *(a8 + v45) = v183;
  v46 = a7;
  *(a8 + v41[19]) = 0;
  v47 = v41[20];
  v48 = type metadata accessor for MLS.GroupInfo();
  v49 = *(*(v48 - 8) + 56);
  v184 = v47;
  v49(a8 + v47, 1, 1, v48);
  *a8 = v36;
  v50 = v188;
  *(a8 + 1) = v187;
  *(a8 + 2) = v50;
  *(a8 + 3) = 0;
  v51 = sub_26C004AC0(v42);
  a8[16] = v36;
  *(a8 + 5) = v51;
  *(a8 + 12) = 0;
  *(a8 + 7) = v42;
  v52 = a8 + v41[9];
  *v52 = v36;
  *(v52 + 8) = xmmword_26C00BBD0;
  v187 = v52;
  v188 = v41;
  v178 = xmmword_26C00BBD0;
  *(v52 + 24) = xmmword_26C00BBD0;
  *(a8 + v41[10]) = v46;
  v53 = v41[13];
  *(a8 + v53) = 0;
  v54 = v41[14];
  v55 = v190;
  v182 = v54;
  sub_26BE038A8(v190, a8 + v54);
  v56 = a6[7];
  v210 = a6[6];
  v211 = v56;
  v212 = *(a6 + 16);
  v57 = a6[3];
  v206 = a6[2];
  v207 = v57;
  v58 = a6[5];
  v208 = a6[4];
  v209 = v58;
  v59 = a6[1];
  v204 = *a6;
  v205 = v59;

  v61 = v222;
  v62 = sub_26BFF3840(v60, 1);
  v222 = v61;
  v186 = v46;
  if (!v61)
  {
    v67 = v62;
    LODWORD(v165) = v36;
    v69 = v179;
    v68 = v180;

    v66 = v188;
    if ((v67 & 1) == 0)
    {
      sub_26BE00854(&v213);
      sub_26BE01654();
      v71 = swift_allocError();
      *v72 = 22;
      *(v72 + 8) = 0u;
      *(v72 + 24) = 0u;
      *(v72 + 40) = 0u;
      *(v72 + 56) = 0u;
      *(v72 + 72) = 0u;
      *(v72 + 88) = 0u;
      *(v72 + 104) = 0;
      *(v72 + 112) = 23;
      v222 = v71;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v190);
      __swift_destroy_boxed_opaque_existential_1(v189);
      goto LABEL_8;
    }

    v210 = v219;
    v211 = v220;
    v212 = v221;
    v206 = v215;
    v207 = v216;
    v208 = v217;
    v209 = v218;
    v204 = v213;
    v205 = v214;
    v70 = v222;
    MLS.TreeKEMPublicKey.addLeaf(_:)(&v204, v194);
    if (v70)
    {
      v222 = v70;
      __swift_destroy_boxed_opaque_existential_1(v190);
      __swift_destroy_boxed_opaque_existential_1(v189);
      sub_26BE00854(&v213);
LABEL_8:
      v63 = 0;
      v64 = 0;
      v65 = 0;
      goto LABEL_9;
    }

    sub_26BE00854(&v213);
    *(a8 + v53) = v194[0];
    LODWORD(v194[0]) = *(a8 + 12);
    MLS.NodeIndex.init(forRoot:)(v194, &v204);
    sub_26BE4BE9C(&v204);
    v222 = 0;
    sub_26BE00258(v82, v83);
    v84 = *(a8 + v53);
    sub_26BE038A8(v189, &v204);
    v85 = a8 + v66[8];
    *v85 = v165;
    *(v85 + 1) = v84;
    v194[0] = v178;
    v86 = &v85[*(type metadata accessor for MLS.TreeKEMPrivateKey() + 32)];
    sub_26C009C5C();
    v87 = MEMORY[0x277D84F90];
    *(v85 + 1) = sub_26C004AC0(MEMORY[0x277D84F90]);
    *(v85 + 2) = sub_26C004BCC(v87);
    if (v84 < 0)
    {
      __break(1u);
      goto LABEL_49;
    }

    sub_26BE038A8(&v204, v194);
    sub_26BE4D0C0(v194, 2 * v84);
    __swift_destroy_boxed_opaque_existential_1(&v204);
    v88 = *(a8 + 5);
    v89 = *(a8 + 12);
    v90 = *(a8 + 7);
    LOWORD(v204) = a8[16];
    *(&v204 + 1) = v88;
    LODWORD(v205) = v89;
    *(&v205 + 1) = v90;

    v91 = v222;
    v92 = MLS.TreeKEMPrivateKey.consistent(_:)(&v204);
    v222 = v91;
    if (v91)
    {
      __swift_destroy_boxed_opaque_existential_1(v190);
      __swift_destroy_boxed_opaque_existential_1(v189);

LABEL_24:
      v64 = 0;
      v65 = 0;
      v63 = 1;
      goto LABEL_9;
    }

    v93 = v92;

    if ((v93 & 1) == 0)
    {
      sub_26BE01654();
      v101 = swift_allocError();
      *v102 = 21;
      v102[112] = 0;
      v222 = v101;
      swift_willThrow();
      goto LABEL_23;
    }

    LODWORD(v163) = *a8;
    v94 = *(a8 + 1);
    v164 = *(a8 + 2);
    v95 = *(a8 + 5);
    v96 = *(a8 + 12);
    v97 = *(a8 + 7);
    v200 = a8[16];
    v201 = v95;
    v202 = v96;
    v203 = v97;
    v98 = v222;
    v99 = sub_26BE592D0();
    if (v98)
    {
      v222 = v98;
LABEL_23:
      __swift_destroy_boxed_opaque_existential_1(v190);
      __swift_destroy_boxed_opaque_existential_1(v189);
      goto LABEL_24;
    }

    v103 = v187[2];
    v162 = v187[1];
    v222 = v103;
    LOWORD(v204) = v163;
    v104 = v94;
    *(&v204 + 1) = v94;
    v105 = v164;
    v205 = v164;
    *&v206 = v99;
    *(&v206 + 1) = v100;
    *&v207 = v162;
    *(&v207 + 1) = v103;
    v198 = v178;
    v194[1] = v164;
    v195 = v206;
    v196 = v207;
    *&v208 = v186;
    v199 = 0;
    v197 = v186;
    v194[0] = v204;
    v106 = v99;
    v107 = v100;

    sub_26BE00608(v106, v107);
    sub_26BE00608(v104, v105);
    sub_26BE00608(v162, v222);
    sub_26BFAF494(v194);
    v222 = 0;
    v108 = v198;
    v109 = *(&v198 + 1) >> 62;
    v110 = v189;
    v111 = v190;
    if ((*(&v198 + 1) >> 62) > 1)
    {
      if (v109 != 2)
      {
        goto LABEL_33;
      }

      v112 = *(v198 + 24);
    }

    else
    {
      if (!v109)
      {
        goto LABEL_33;
      }

      v112 = v198 >> 32;
    }

    if (v112 < 0)
    {
      __break(1u);
    }

LABEL_33:
    v164 = sub_26C00909C();
    *&v178 = v113;
    result = sub_26BE00258(v108, *(&v108 + 1));
    if ((v165 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
      return result;
    }

    v114 = v165 != 1;
    LOBYTE(v198) = v165 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v198, v194);
    v115 = v195;
    v116 = v222;
    v117 = sub_26BE1264C(*(&v194[0] + 1));
    v222 = v116;
    if (v116)
    {
      sub_26BE00204(&v204);

      sub_26BE00258(v164, v178);
      __swift_destroy_boxed_opaque_existential_1(v111);
      __swift_destroy_boxed_opaque_existential_1(v110);
LABEL_40:
      v64 = 0;
      v65 = 0;
      v63 = 1;
      goto LABEL_3;
    }

    v163 = v115;
    *&v194[0] = v117;
    *(&v194[0] + 1) = v118;
    sub_26C009C5C();
    LOBYTE(v198) = v114;
    v119 = v164;
    v120 = v178;
    sub_26BE00608(v164, v178);
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v198, v194);
    v161 = *(&v194[0] + 1);
    v162 = v195;
    *&v198 = sub_26BE125AC(*(&v194[0] + 1));
    *(&v198 + 1) = v121;
    v122 = v69;
    sub_26C009C5C();
    v123 = v175;
    v124 = v119;
    v125 = v222;
    sub_26BEB1F1C(v194, v119, v120, v122, v175);
    v222 = v125;
    if (v125)
    {
      sub_26BE00204(&v204);
      v126 = v178;
      sub_26BE00258(v119, v178);

      sub_26BE00258(v119, v126);
      __swift_destroy_boxed_opaque_existential_1(v190);
      __swift_destroy_boxed_opaque_existential_1(v189);
      v127 = *(v174 + 8);
      v128 = v122;
      v129 = v176;
      v127(v128, v176);
      v127(v177, v129);

      goto LABEL_40;
    }

    v130 = v174;
    v131 = *(v174 + 8);
    v132 = v176;
    v179 = (v174 + 8);
    v160 = v131;
    v131(v122, v176);
    LOWORD(v198) = v165;
    v133 = *(v130 + 16);
    v134 = v123;
    v165 = v130 + 16;
    v135 = v133;
    v133(v68, v134, v132);
    *&v194[0] = sub_26BE125AC(v161);
    *(&v194[0] + 1) = v136;
    v137 = v172;
    sub_26C009C5C();
    (*(v130 + 56))(v137, 0, 1, v132);
    v138 = v222;
    MLS.KeySchedule.init(ciphersuiteID:joinerSecret:pskSecret:context:)(&v198, v68, v137, v124, v178, v173);
    v222 = v138;
    if (v138)
    {
      sub_26BE00204(&v204);

      sub_26BE00258(v164, v178);
      __swift_destroy_boxed_opaque_existential_1(v190);
      __swift_destroy_boxed_opaque_existential_1(v189);
      v139 = v176;
      v140 = v160;
      v160(v175, v176);
      v140(v177, v139);
      goto LABEL_40;
    }

    v141 = v176;
    v142 = v160;
    v160(v175, v176);
    v142(v177, v141);
    v143 = v169;
    sub_26BFF36F4(v173, v169, type metadata accessor for MLS.KeySchedule);
    v144 = a8 + v188[11];
    sub_26BFF36F4(v143, v144, type metadata accessor for MLS.KeySchedule);
    v145 = *(a8 + 12);
    if (*v144)
    {
      v146 = 2;
    }

    else
    {
      v146 = 1;
    }

    v191 = v146;
    LODWORD(v198) = v145;
    v147 = v170;
    v135(v170, v144 + *(v171 + 32), v141);
    v148 = v222;
    MLS.GroupKeySource.init(ciphersuiteID:groupSize:encryptionSecret:)(&v191, &v198, v147, v192);
    v222 = v148;
    if (v148)
    {
      sub_26BE00204(&v204);

      sub_26BE00258(v164, v178);
      __swift_destroy_boxed_opaque_existential_1(v190);
      __swift_destroy_boxed_opaque_existential_1(v189);
      v65 = 0;
      v63 = 1;
      v64 = 1;
      goto LABEL_3;
    }

    v149 = a8 + v188[12];
    v150 = v192[5];
    *(v149 + 4) = v192[4];
    *(v149 + 5) = v150;
    *(v149 + 6) = v192[6];
    *(v149 + 14) = v193;
    v151 = v192[1];
    *v149 = v192[0];
    *(v149 + 1) = v151;
    v152 = v192[3];
    *(v149 + 2) = v192[2];
    *(v149 + 3) = v152;
    v153 = v187[1];
    v180 = v187[2];
    v154 = *(v144 + 24);
    v155 = *(v144 + 32);
    LOBYTE(v194[0]) = *v144;
    *(v194 + 8) = *(v144 + 8);
    *(&v194[1] + 1) = v154;
    *&v195 = v155;
    v69 = v194;
    v135(v166, v144 + *(v171 + 48), v176);
    sub_26BFF36AC(&qword_28045E8B8, MEMORY[0x277CC5330]);

    v156 = v168;
    sub_26C009C5C();
    v157 = v222;
    MLS.Cryptography.Ciphersuite.digestMAC(_:_:)(v156, v153, v180);
    v222 = v157;
    if (v157)
    {
      sub_26BE00204(&v204);

      sub_26BE00258(v164, v178);
      __swift_destroy_boxed_opaque_existential_1(v190);
      __swift_destroy_boxed_opaque_existential_1(v189);
      v160(v168, v176);

LABEL_51:
      v63 = 1;
      v64 = 1;
      v65 = 1;
      goto LABEL_3;
    }

LABEL_49:
    v160(v168, v176);
    v158 = *(v69 + 4);

    v159 = v222;
    sub_26BE2E558();
    v222 = v159;
    if (!v159)
    {
      sub_26BE00204(&v204);

      sub_26BE00258(v164, v178);
      __swift_destroy_boxed_opaque_existential_1(v190);
      __swift_destroy_boxed_opaque_existential_1(v189);
      return sub_26BFF3630(v167, type metadata accessor for MLS.Cryptography.MACTag);
    }

    sub_26BE00204(&v204);

    sub_26BE00258(v164, v178);
    __swift_destroy_boxed_opaque_existential_1(v190);
    __swift_destroy_boxed_opaque_existential_1(v189);
    sub_26BFF3630(v167, type metadata accessor for MLS.Cryptography.MACTag);
    goto LABEL_51;
  }

  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v189);
  sub_26BE00854(&v213);
  v63 = 0;
  v64 = 0;
  v65 = 0;
LABEL_3:
  v66 = v188;
LABEL_9:
  sub_26BE00258(*(a8 + 1), *(a8 + 2));
  v73 = *(a8 + 5);
  v74 = *(a8 + 7);

  if (v63)
  {
    sub_26BFF3630(a8 + v66[8], type metadata accessor for MLS.TreeKEMPrivateKey);
  }

  v75 = v187[3];
  v76 = v187[4];
  sub_26BE00258(v187[1], v187[2]);
  sub_26BE00258(v75, v76);

  if (v64)
  {
    sub_26BFF3630(a8 + v66[11], type metadata accessor for MLS.KeySchedule);
  }

  if (v65)
  {
    v77 = a8 + v66[12];
    v78 = *(v77 + 5);
    v208 = *(v77 + 4);
    v209 = v78;
    v210 = *(v77 + 6);
    *&v211 = *(v77 + 14);
    v79 = *(v77 + 1);
    v204 = *v77;
    v205 = v79;
    v80 = *(v77 + 3);
    v206 = *(v77 + 2);
    v207 = v80;
    sub_26BE717DC(&v204);
  }

  __swift_destroy_boxed_opaque_existential_1((a8 + v182));
  sub_26BE2E258(v181, &qword_28045E730, &qword_26C011528);

  return sub_26BE2E258(a8 + v184, &qword_28045F090, &qword_26C01A358);
}

uint64_t MLS.GroupState.init(groupID:ciphersuiteID:encryptionPrivateKey:signaturePrivateKey:extensions:capabilities:credential:)@<X0>(void *a1@<X0>, int *a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v85 = a6;
  v86 = a1;
  v87 = a2;
  v79 = a9;
  v14 = type metadata accessor for MLS.GroupState();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v81 = (&v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = *a3;
  v17 = a7[1];
  *&v96 = *a7;
  *(&v96 + 1) = v17;
  v18 = a7[3];
  v97 = a7[2];
  v149 = v18;
  v94 = a7[4];
  v19 = a8[1];
  if ((~v19 & 0x3000000000000000) != 0)
  {
    *&v93 = *a8;
    *(&v93 + 1) = v19;
  }

  else
  {
    v20 = a5;
    v21 = a5[3];
    v22 = a5[4];
    __swift_project_boxed_opaque_existential_1(v20, v21);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v95 = &v78;
    v24 = *(AssociatedTypeWitness - 8);
    v25 = *(v24 + 64);
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v27 = &v78 - v26;
    (*(v22 + 40))(v21, v22);
    a5 = v20;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *&v93 = (*(*(AssociatedConformanceWitness + 8) + 16))(AssociatedTypeWitness);
    *(&v93 + 1) = v29;
    (*(v24 + 8))(v27, AssociatedTypeWitness);
  }

  v30 = a4;
  v31 = a4[3];
  v32 = a4[4];
  v88 = v30;
  v89 = a5;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v33 = *(v32 + 8);
  v34 = swift_getAssociatedTypeWitness();
  v92 = &v78;
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v78 - v37;
  (*(v33 + 32))(v31, v33);
  v39 = swift_getAssociatedConformanceWitness();
  v95 = (*(v39 + 16))(v34, v39);
  v41 = v40;
  (*(v35 + 8))(v38, v34);
  v42 = a5[3];
  v43 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v42);
  v44 = swift_getAssociatedTypeWitness();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = &v78 - v47;
  (*(v43 + 40))(v42, v43);
  v49 = swift_getAssociatedConformanceWitness();
  v50 = (*(*(v49 + 8) + 16))(v44);
  v52 = v51;
  (*(v45 + 8))(v48, v44);
  *&v142 = v95;
  *(&v142 + 1) = v41;
  v84 = v41;
  v90 = v50;
  *&v143 = v50;
  *(&v143 + 1) = v52;
  v92 = v52;
  v53 = *(&v93 + 1);
  v54 = v93;
  v144 = v93;
  v145 = v96;
  *&v146 = v97;
  *(&v146 + 1) = v149;
  v55 = v94;
  *v147 = v94;
  v91 = xmmword_26C015F70;
  *&v147[8] = xmmword_26C015F70;
  v147[24] = 0;
  *&v147[28] = *&v141[3];
  *&v147[25] = *v141;
  *v148 = MEMORY[0x277D84F90];
  v82 = xmmword_26C00BBD0;
  *&v148[8] = xmmword_26C00BBD0;
  v139[1] = *&v147[16];
  v140[0] = *v148;
  *&v140[1] = 0xC000000000000000;
  v136 = v93;
  v137 = v96;
  v138 = v146;
  v139[0] = *v147;
  v134 = v142;
  v135 = v143;
  v132 = xmmword_26C00DA60;
  v133 = 0;
  sub_26BE04890(v93, *(&v93 + 1));
  sub_26BE00758(&v142, &v123);
  v56 = v83;
  v57 = sub_26BE5B600(&v132);
  if (v56)
  {

    sub_26BE00258(v86, v87);
    sub_26BE0489C(v54, v53);
    v128 = v139[0];
    v129 = v139[1];
    v130 = v140[0];
    v124 = v135;
    v125 = v136;
    v126 = v137;
    v127 = v138;
    v131 = *&v140[1];
    v123 = v134;
    sub_26BE00854(&v123);
    v59 = v53;
    v60 = v88;
    v61 = v89;
    *&v134 = v95;
    *(&v134 + 1) = v84;
    *&v135 = v90;
    *(&v135 + 1) = v92;
    v136 = __PAIR128__(v59, v54);
    v137 = v96;
    *&v138 = v97;
    *(&v138 + 1) = v149;
    *&v139[0] = v55;
    *(v139 + 8) = v91;
    BYTE8(v139[1]) = 0;
    *(&v139[1] + 9) = *v141;
    HIDWORD(v139[1]) = *&v141[3];
    *&v140[0] = MEMORY[0x277D84F90];
    *(v140 + 8) = v82;
    sub_26BE00854(&v134);
    v68 = v61;
  }

  else
  {
    v62 = v57;
    v63 = v58;
    v128 = v139[0];
    v129 = v139[1];
    v130 = v140[0];
    v124 = v135;
    v125 = v136;
    v126 = v137;
    v127 = v138;
    v131 = *&v140[1];
    v123 = v134;
    sub_26BE00854(&v123);
    v64 = v89;
    v65 = v89[3];
    v66 = v89[4];
    __swift_project_boxed_opaque_existential_1(v89, v65);
    v67 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x65646F4E6661654CLL, 0xEB00000000534254, v62, v63, v65, v66);
    v71 = v70;
    v72 = v67;
    sub_26BE00258(v62, v63);
    sub_26BE00258(0, 0xC000000000000000);
    v114 = v80;
    v60 = v88;
    sub_26BE038A8(v88, v113);
    sub_26BE038A8(v64, v112);
    v73 = v95;
    *&v115 = v95;
    v74 = v84;
    *(&v115 + 1) = v84;
    *&v116 = v90;
    *(&v116 + 1) = v92;
    *&v93 = v54;
    v117 = __PAIR128__(*(&v93 + 1), v54);
    v118 = v96;
    *&v119 = v97;
    *(&v119 + 1) = v149;
    *&v120[0] = v94;
    *(v120 + 8) = v91;
    BYTE8(v120[1]) = 0;
    *(&v120[1] + 9) = *v141;
    HIDWORD(v120[1]) = *&v141[3];
    *&v121 = MEMORY[0x277D84F90];
    v83 = v72;
    *(&v121 + 1) = v72;
    v122 = v71;
    v110[6] = v120[1];
    v110[7] = v121;
    v111 = v71;
    v110[2] = __PAIR128__(*(&v93 + 1), v54);
    v110[3] = v96;
    v110[4] = v119;
    v110[5] = v120[0];
    v110[0] = v115;
    v110[1] = v116;
    sub_26BE00758(&v115, v98);
    v75 = v81;
    sub_26BFEF948(v86, v87, &v114, v113, v112, v110, v85, v81);
    v98[0] = v73;
    v98[1] = v74;
    v76 = v93;
    v98[2] = v90;
    v98[3] = v92;
    v77 = *(&v93 + 1);
    v99 = v93;
    v100 = v96;
    v101 = v97;
    v102 = v149;
    v103 = v94;
    v104 = v91;
    v105 = 0;
    *v106 = *v141;
    *&v106[3] = *&v141[3];
    v107 = MEMORY[0x277D84F90];
    v108 = v83;
    v109 = v71;
    sub_26BE00854(v98);
    sub_26BE0489C(v76, v77);
    sub_26BFF36F4(v75, v79, type metadata accessor for MLS.GroupState);
    v68 = v89;
  }

  __swift_destroy_boxed_opaque_existential_1(v68);
  return __swift_destroy_boxed_opaque_existential_1(v60);
}

void *MLS.GroupState.init(welcome:keyPackageSecrets:keyPackage:signaturePrivateKey:tree:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, unint64_t a6@<X8>)
{
  v7 = *result;
  if ((v7 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v10 = result[1];
    v11 = result[2];
    v12 = result[3];
    v17 = a5[1];
    v18 = *a5;
    LOBYTE(v24[0]) = v7 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v24, v25);
    v25[7] = v25[4];
    sub_26BE038A8(a2, v25);
    sub_26BE038A8(a2 + 40, v24);
    LOWORD(v23[0]) = v7;
    v23[1] = v10;
    v23[2] = v11;
    v23[3] = v12;
    sub_26BE038A8(v25, v22);
    sub_26BE038A8(v24, v21);
    sub_26BE038A8(a4, v20);
    v19[0] = v18;
    v19[1] = v17;
    v14 = MEMORY[0x277D84F90];
    v15 = sub_26C001A78(MEMORY[0x277D84F90]);
    v16 = sub_26C00528C(v14);
    sub_26BFEB860(v23, v22, v21, v20, a3, v19, v15, v16, a6, 0);

    __swift_destroy_boxed_opaque_existential_1(a4);
    sub_26BFF2B78(a2);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  return result;
}

uint64_t MLS.GroupState.init(ciphersuiteID:initPriv:leafPriv:sigPriv:keyPackage:welcome:)@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t a9@<X8>, unint64_t a10, __int128 a11)
{
  v97 = a3;
  v98 = a8;
  v94 = a4;
  v96 = a2;
  v89 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v17 = *(*(v89 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v89);
  v84 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = (&v74 - v20);
  v22 = type metadata accessor for MLS.MLSMessage(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v85 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v24);
  v126 = &v74 - v27;
  v28 = *a1;
  if ((v28 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
    return result;
  }

  v90 = result;
  v83 = a9;
  v92 = a6;
  v93 = a7;
  v91 = a10;
  LOBYTE(v101[0]) = v28 != 1;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v101, &v107);
  v29 = 0;
  v87 = v107;
  v88 = *(&v107 + 1);
  v86 = v108;
  v30 = *(&a11 + 1) >> 62;
  v31 = *(&v108 + 1);
  v32 = v109;
  if ((*(&a11 + 1) >> 62) > 1)
  {
    if (v30 != 2)
    {
      goto LABEL_8;
    }

    v29 = *(a11 + 16);
  }

  else
  {
    if (!v30)
    {
      goto LABEL_8;
    }

    v29 = a11;
  }

  sub_26BE00608(a11, *(&a11 + 1));
LABEL_8:
  v95 = v32;
  v107 = a11;
  *&v108 = v29;
  v33 = v126;
  sub_26BEE3C08(v126);
  if (v11)
  {
    *&v101[0] = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F100, &qword_26C01A558);
    v34 = sub_26C00A4FC();
    sub_26BE826C4(v34, v35, a11, *(&a11 + 1));

    swift_willThrow();
    sub_26BE00258(v92, v93);
    sub_26BE00258(v98, v91);

    sub_26BE00258(a11, *(&a11 + 1));
    sub_26BE00258(v94, a5);
    sub_26BE00258(v96, v97);
    return sub_26BE00258(v107, *(&v107 + 1));
  }

  v81 = *(&a11 + 1);
  v82 = a11;
  sub_26BE00258(v107, *(&v107 + 1));
  sub_26BFF35C8(v33, v21, type metadata accessor for MLS.MLSMessage.Inner);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_26BFF3630(v21, type metadata accessor for MLS.MLSMessage.Inner);
    sub_26BE01600();
    swift_allocError();
    *v36 = 5;
    swift_willThrow();
    sub_26BE00258(v92, v93);
    sub_26BE00258(v98, v91);

    sub_26BE00258(v82, v81);
    sub_26BE00258(v94, a5);
    sub_26BE00258(v96, v97);
    return sub_26BFF3630(v33, type metadata accessor for MLS.MLSMessage);
  }

  v76 = *v21;
  v37 = v21[1];
  v79 = v21[2];
  v80 = a5;
  v38 = v21[3];
  v77 = v37;
  v78 = v38;
  v39 = v95;
  if (v87)
  {
    LOBYTE(v107) = 1;
    v40 = v88;
    *(&v107 + 1) = v88;
    v41 = v86;
    *&v108 = v86;
    *(&v108 + 1) = v31;
    *&v109 = v95;
    v75 = type metadata accessor for P256DecryptionPrivateKey(0);
    v124 = v75;
    v74 = sub_26BFF36AC(&qword_28045E3A8, type metadata accessor for P256DecryptionPrivateKey);
    v125 = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v123);
    v44 = v96;
    v43 = v97;
    sub_26BE00608(v96, v97);

    P256DecryptionPrivateKey.init(data:ciphersuite:)(v44, v43, &v107, boxed_opaque_existential_1);
    LOBYTE(v107) = 1;
    *(&v107 + 1) = v40;
    *&v108 = v41;
    *(&v108 + 1) = v31;
    *&v109 = v39;
    v121 = v75;
    v122 = v74;
    v45 = __swift_allocate_boxed_opaque_existential_1(v120);

    v46 = v94;
    v47 = v80;
    sub_26BE00608(v94, v80);
    P256DecryptionPrivateKey.init(data:ciphersuite:)(v46, v47, &v107, v45);
  }

  else
  {
    LOBYTE(v107) = 0;
    v48 = v88;
    *(&v107 + 1) = v88;
    v41 = v86;
    *&v108 = v86;
    *(&v108 + 1) = v31;
    *&v109 = v95;
    v75 = type metadata accessor for Curve25519DecryptionPrivateKey(0);
    v124 = v75;
    v74 = sub_26BFF36AC(&qword_28045E3B0, type metadata accessor for Curve25519DecryptionPrivateKey);
    v125 = v74;
    v49 = __swift_allocate_boxed_opaque_existential_1(v123);
    v51 = v96;
    v50 = v97;
    sub_26BE00608(v96, v97);

    Curve25519DecryptionPrivateKey.init(data:ciphersuite:)(v51, v50, &v107, v49);
    LOBYTE(v107) = 0;
    *(&v107 + 1) = v48;
    *&v108 = v41;
    *(&v108 + 1) = v31;
    *&v109 = v39;
    v121 = v75;
    v122 = v74;
    v52 = __swift_allocate_boxed_opaque_existential_1(v120);

    v53 = v94;
    v54 = v80;
    sub_26BE00608(v94, v80);
    Curve25519DecryptionPrivateKey.init(data:ciphersuite:)(v53, v54, &v107, v52);
  }

  v55 = v98;
  LOBYTE(v107) = v87;
  *(&v107 + 1) = v88;
  *&v108 = v41;
  *(&v108 + 1) = v31;
  *&v109 = v95;
  MLS.Cryptography.Ciphersuite.importSignaturePrivateKey(_:deviceConstrained:)(v92, v93, 0, v119);
  v56 = 0;
  v57 = v91;
  v58 = v91 >> 62;
  if ((v91 >> 62) > 1)
  {
    v59 = v92;
    if (v58 == 2)
    {
      v56 = *(v55 + 16);
      goto LABEL_20;
    }
  }

  else
  {
    v59 = v92;
    if (v58)
    {
      v56 = v55;
LABEL_20:
      sub_26BE00608(v55, v91);
    }
  }

  *&v107 = v55;
  *(&v107 + 1) = v57;
  *&v108 = v56;
  v60 = v85;
  sub_26BEE3C08(v85);
  sub_26BE00258(v107, *(&v107 + 1));
  v61 = v84;
  sub_26BFF35C8(v60, v84, type metadata accessor for MLS.MLSMessage.Inner);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v62 = *(v61 + 144);
    v115 = *(v61 + 128);
    v116 = v62;
    v117 = *(v61 + 160);
    v118 = *(v61 + 176);
    v63 = *(v61 + 80);
    v111 = *(v61 + 64);
    v112 = v63;
    v64 = *(v61 + 112);
    v113 = *(v61 + 96);
    v114 = v64;
    v65 = *(v61 + 16);
    v107 = *v61;
    v108 = v65;
    v66 = *(v61 + 48);
    v109 = *(v61 + 32);
    v110 = v66;
    LOWORD(v106[0]) = v76;
    v67 = v78;
    v106[1] = v77;
    v68 = v79;
    v106[2] = v79;
    v106[3] = v78;
    sub_26BE038A8(v123, v105);
    sub_26BE038A8(v120, v104);
    sub_26BE038A8(v119, v103);
    v101[8] = v115;
    v101[9] = v116;
    v101[10] = v117;
    v102 = v118;
    v101[4] = v111;
    v101[5] = v112;
    v101[6] = v113;
    v101[7] = v114;
    v101[0] = v107;
    v101[1] = v108;
    v101[2] = v109;
    v101[3] = v110;
    memset(v100, 0, sizeof(v100));

    sub_26BE00608(v68, v67);
    sub_26BE2DFC0(&v107, &v99);
    v69 = MEMORY[0x277D84F90];
    v70 = sub_26C001A78(MEMORY[0x277D84F90]);
    v71 = sub_26C00528C(v69);
    sub_26BFEB860(v106, v105, v104, v103, v101, v100, v70, v71, v83, 0);
    sub_26BE00258(v59, v93);
    sub_26BE00258(v55, v57);

    sub_26BE00258(v82, v81);
    sub_26BE2E01C(&v107);

    sub_26BE00258(v79, v67);
    sub_26BE00258(v94, v80);
    sub_26BE00258(v96, v97);
    v72 = v85;
  }

  else
  {
    sub_26BFF3630(v61, type metadata accessor for MLS.MLSMessage.Inner);
    sub_26BE01600();
    swift_allocError();
    *v73 = 5;
    swift_willThrow();
    sub_26BE00258(v59, v93);
    sub_26BE00258(v55, v57);

    sub_26BE00258(v82, v81);

    sub_26BE00258(v79, v78);
    sub_26BE00258(v94, v80);
    sub_26BE00258(v96, v97);
    v72 = v60;
  }

  sub_26BFF3630(v72, type metadata accessor for MLS.MLSMessage);
  __swift_destroy_boxed_opaque_existential_1(v119);
  sub_26BFF3630(v126, type metadata accessor for MLS.MLSMessage);
  __swift_destroy_boxed_opaque_existential_1(v120);
  return __swift_destroy_boxed_opaque_existential_1(v123);
}

uint64_t sub_26BFF2114@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a1;
  v7 = sub_26C009D7C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v105 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C009C8C();
  v101 = *(v10 - 8);
  v102 = v10;
  v11 = *(v101 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v100 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v104 = &v98 - v14;
  v99 = type metadata accessor for MLS.KeySchedule();
  v15 = *(*(v99 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v99);
  v103 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v98 = &v98 - v18;
  v19 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v107 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a3;
  v23 = a3[1];
  v24 = a3[3];
  v109 = a3[2];
  *&v110 = v22;
  v108 = v24;
  v25 = type metadata accessor for MLS.GroupState();
  v26 = MEMORY[0x277D84F90];
  *(a4 + v25[15]) = MEMORY[0x277D84F90];
  v27 = (a4 + v25[16]);
  v27[9] = 0u;
  v27[10] = 0u;
  v27[7] = 0u;
  v27[8] = 0u;
  v27[5] = 0u;
  v27[6] = 0u;
  v27[3] = 0u;
  v27[4] = 0u;
  v27[1] = 0u;
  v27[2] = 0u;
  *v27 = 0u;
  v28 = v25[17];
  v113 = sub_26C001A78(v26);
  *(a4 + v28) = v113;
  v29 = v25[18];
  v111 = sub_26C00528C(v26);
  *(a4 + v29) = v111;
  *(a4 + v25[19]) = 0;
  v30 = v25[20];
  v31 = type metadata accessor for MLS.GroupInfo();
  v32 = *(*(v31 - 8) + 56);
  v112 = v30;
  v32(a4 + v30, 1, 1, v31);
  v33 = *a2;
  *a4 = *a2;
  v34 = *(a2 + 8);
  *(a4 + 8) = v34;
  v35 = *(a2 + 16);
  *(a4 + 16) = v35;
  v115 = a2;
  v36 = *(a2 + 72);
  v37 = (v36 + 32);
  v38 = *(v36 + 16) + 1;
  do
  {
    if (!--v38)
    {
      sub_26BE00608(v34, v35);
      if (v23)
      {
        goto LABEL_9;
      }

LABEL_24:
      sub_26BE01654();
      swift_allocError();
      *v73 = 14;
      *(v73 + 8) = 0u;
      *(v73 + 24) = 0u;
      *(v73 + 40) = 0u;
      *(v73 + 56) = 0u;
      *(v73 + 72) = 0u;
      *(v73 + 88) = 0u;
      *(v73 + 104) = 0;
      *(v73 + 112) = 23;
      swift_willThrow();
LABEL_25:
      __swift_destroy_boxed_opaque_existential_1(v114);
      sub_26BFF3630(v115, type metadata accessor for MLS.GroupInfo);
      sub_26BE00258(*(a4 + 8), *(a4 + 16));
      goto LABEL_26;
    }

    v39 = v37 + 12;
    v40 = *v37;
    v37 += 12;
  }

  while (v40 != 2);
  *v119 = 2;
  *&v119[8] = *(v39 - 1);
  sub_26BE00608(v34, v35);
  v41 = v126;
  sub_26BEDFEB0(v119, v125);
  if (v41)
  {
    sub_26BFC51B4(v110, v23);
    goto LABEL_25;
  }

  v126 = 0;
  if (v23)
  {
LABEL_9:
    v106 = v25;

    v43 = v107;
    v42 = v108;
    v45 = v109;
    v44 = v110;
    goto LABEL_10;
  }

  if (!v125[0])
  {
    goto LABEL_24;
  }

  v118 = v33;
  MLS.TreeKEMPublicKey.init(ciphersuiteID:ratchetTree:)(&v118, v125, v119);
  v106 = v25;
  v126 = 0;
  v44 = *v119;
  v23 = *&v119[8];
  v45 = *&v119[16];
  v42 = *&v119[24];
  v43 = v107;
LABEL_10:
  *(a4 + 32) = v44;
  *(a4 + 40) = v23;
  *(a4 + 48) = v45;
  *(a4 + 56) = v42;
  v46 = v115;
  v47 = *(v115 + 48);
  v48 = *(v115 + 56);
  sub_26BFF35C8(v115 + *(v31 + 24), v43, type metadata accessor for MLS.Cryptography.MACTag);
  *v119 = v33;
  *&v119[8] = v47;
  *&v119[16] = v48;
  v110 = xmmword_26C00BBD0;
  *&v119[24] = xmmword_26C00BBD0;
  sub_26BE00608(v47, v48);
  v49 = v126;
  sub_26BE2E558();
  v50 = v49;
  if (v49)
  {
    __swift_destroy_boxed_opaque_existential_1(v114);
    sub_26BFF3630(v43, type metadata accessor for MLS.Cryptography.MACTag);
    v51 = *&v119[24];
    v52 = *&v119[32];
    sub_26BE00258(*&v119[8], *&v119[16]);
    sub_26BE00258(v51, v52);
    sub_26BFF3630(v46, type metadata accessor for MLS.GroupInfo);
    v53 = 0;
    v54 = 0;
    v126 = v49;
    v62 = v106;
    goto LABEL_13;
  }

  sub_26BFF3630(v43, type metadata accessor for MLS.Cryptography.MACTag);
  v55 = *&v119[8];
  v56 = *&v119[24];
  v57 = v106;
  v58 = a4 + v106[9];
  *v58 = *v119;
  *(v58 + 8) = v55;
  *(v58 + 24) = v56;
  v59 = *(v46 + 64);
  v106 = v57;
  *(a4 + v57[10]) = v59;
  *v119 = v33;

  sub_26C009D4C();
  v60 = v104;
  sub_26C009C6C();
  v61 = v103;
  MLS.KeySchedule.init(ciphersuiteID:initSecret:)(v119, v60, v103);
  v109 = 0;
  v76 = v98;
  sub_26BFF36F4(v61, v98, type metadata accessor for MLS.KeySchedule);
  v62 = v106;
  v77 = (a4 + v106[11]);
  sub_26BFF36F4(v76, v77, type metadata accessor for MLS.KeySchedule);
  v78 = *(a4 + 48);
  if (*v77)
  {
    v79 = 2;
  }

  else
  {
    v79 = 1;
  }

  v118 = v79;
  LODWORD(v125[0]) = v78;
  v80 = v100;
  (*(v101 + 16))(v100, &v77[*(v99 + 32)], v102);
  MLS.GroupKeySource.init(ciphersuiteID:groupSize:encryptionSecret:)(&v118, v125, v80, v116);
  v126 = 0;
  v81 = a4 + v62[12];
  v82 = v116[5];
  *(v81 + 64) = v116[4];
  *(v81 + 80) = v82;
  *(v81 + 96) = v116[6];
  *(v81 + 112) = v117;
  v83 = v116[1];
  *v81 = v116[0];
  *(v81 + 16) = v83;
  v84 = v116[3];
  *(v81 + 32) = v116[2];
  *(v81 + 48) = v84;
  v85 = v62[13];
  *(a4 + v85) = 0;
  v86 = v114;
  sub_26BE038A8(v114, a4 + v62[14]);
  v87 = *(a4 + v85);
  v88 = a4 + v62[8];
  *v88 = v33;
  *(v88 + 4) = v87;
  *v119 = v110;
  v89 = v88 + *(type metadata accessor for MLS.TreeKEMPrivateKey() + 32);
  sub_26C009C5C();
  v90 = MEMORY[0x277D84F90];
  *(v88 + 8) = sub_26C004AC0(MEMORY[0x277D84F90]);
  *(v88 + 16) = sub_26C004BCC(v90);
  v91 = *(a4 + 40);
  v92 = *(a4 + 48);
  v93 = *(a4 + 56);
  *v119 = *(a4 + 32);
  *&v119[8] = v91;
  *&v119[16] = v92;
  *&v119[24] = v93;
  MEMORY[0x28223BE20](v91);
  *(&v98 - 2) = a4;

  v94 = v126;
  MLS.TreeKEMPublicKey.eachLeaf(_:)(sub_26BFF3690);
  if (v94)
  {
    v126 = v94;
    __swift_destroy_boxed_opaque_existential_1(v86);

    v50 = v109;
    v95 = v115;
LABEL_33:
    sub_26BFF3630(v95, type metadata accessor for MLS.GroupInfo);
    v53 = 1;
    v54 = 1;
LABEL_13:
    sub_26BE00258(*(a4 + 8), *(a4 + 16));
    v63 = *(a4 + 40);
    v64 = *(a4 + 56);

    if (v53)
    {
      sub_26BFF3630(a4 + v62[8], type metadata accessor for MLS.TreeKEMPrivateKey);
    }

    if (v50)
    {
      if (v54)
      {
        goto LABEL_17;
      }

LABEL_20:
      if (v53)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v65 = (a4 + v62[9]);
      v66 = v65[3];
      v67 = v65[4];
      sub_26BE00258(v65[1], v65[2]);
      sub_26BE00258(v66, v67);
      v68 = *(a4 + v62[10]);

      if ((v54 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_17:
      sub_26BFF3630(a4 + v62[11], type metadata accessor for MLS.KeySchedule);
      if (v53)
      {
LABEL_21:
        v69 = a4 + v62[12];
        v70 = *(v69 + 80);
        v121 = *(v69 + 64);
        v122 = v70;
        v123 = *(v69 + 96);
        v124 = *(v69 + 112);
        v71 = *(v69 + 16);
        *v119 = *v69;
        *&v119[16] = v71;
        v72 = *(v69 + 48);
        *&v119[32] = *(v69 + 32);
        v120 = v72;
        sub_26BE717DC(v119);
        __swift_destroy_boxed_opaque_existential_1((a4 + v62[14]));
      }
    }

LABEL_26:
    v74 = v112;
    sub_26BE2E258(v27, &qword_28045E730, &qword_26C011528);

    return sub_26BE2E258(a4 + v74, &qword_28045F090, &qword_26C01A358);
  }

  sub_26BEC6BA0();
  MLS.GroupState.validateLeafNodeCapabilities()();
  v97 = v115;
  v50 = v109;
  if (v96)
  {
    v126 = v96;
    __swift_destroy_boxed_opaque_existential_1(v114);
    v95 = v97;
    goto LABEL_33;
  }

  __swift_destroy_boxed_opaque_existential_1(v114);
  return sub_26BFF3630(v97, type metadata accessor for MLS.GroupInfo);
}

uint64_t sub_26BFF2B34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_26BFF2BD0()
{
  result = qword_2804608F8;
  if (!qword_2804608F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804608F8);
  }

  return result;
}

uint64_t sub_26BFF2C38(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for MLS.TreeKEMPrivateKey();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for MLS.KeySchedule();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F090, &qword_26C01A358);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[20];

  return v15(v16, a2, v14);
}

uint64_t sub_26BFF2DC4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for MLS.TreeKEMPrivateKey();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for MLS.KeySchedule();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F090, &qword_26C01A358);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[20];

  return v15(v16, a2, a2, v14);
}

void sub_26BFF2F3C()
{
  type metadata accessor for MLS.TreeKEMPrivateKey();
  if (v0 <= 0x3F)
  {
    sub_26BFF3220(319, &qword_28045E208, &type metadata for MLS.Extension.Extension, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MLS.KeySchedule();
      if (v2 <= 0x3F)
      {
        sub_26BFF31BC();
        if (v3 <= 0x3F)
        {
          sub_26BFF3220(319, &qword_280460918, &_s10GroupStateV14CachedProposalVN, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_26BFF3220(319, &qword_280460920, &_s10GroupStateV12CachedUpdateVN, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_26BFF3270(319, &qword_280460928, sub_26BEC903C);
              if (v6 <= 0x3F)
              {
                sub_26BFF3270(319, &qword_280460930, sub_26BFF32D8);
                if (v7 <= 0x3F)
                {
                  sub_26BFF332C(319, &qword_280460940, type metadata accessor for MLS.Client.Client);
                  if (v8 <= 0x3F)
                  {
                    sub_26BFF332C(319, &qword_280460948, type metadata accessor for MLS.GroupInfo);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26BFF31BC()
{
  result = qword_280460910;
  if (!qword_280460910)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280460910);
  }

  return result;
}

void sub_26BFF3220(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_26BFF3270(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_26C00A39C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26BFF32D8()
{
  result = qword_280460938;
  if (!qword_280460938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460938);
  }

  return result;
}

void sub_26BFF332C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26C00AAAC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26BFF3390(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_26BFF33D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy205_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 189) = *(a2 + 189);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_26BFF3498(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x36 && *(a1 + 205))
  {
    return (*a1 + 54);
  }

  v3 = (*(a1 + 151) & 0x30 | ((*(a1 + 199) & 0x30 | ((*(a1 + 168) >> 58) & 0xC)) >> 2)) ^ 0x3F;
  if (v3 >= 0x35)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BFF3500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x35)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 204) = 0;
    *(result + 200) = 0;
    *result = a2 - 54;
    if (a3 >= 0x36)
    {
      *(result + 205) = 1;
    }
  }

  else
  {
    if (a3 >= 0x36)
    {
      *(result + 205) = 0;
    }

    if (a2)
    {
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      v3 = (-a2 >> 4) & 3 | (4 * (-a2 & 0x3F));
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *(result + 144) = ((-a2 >> 4) & 3) << 60;
      *(result + 152) = 0;
      *(result + 160) = 0;
      *(result + 168) = (v3 << 58) & 0x3000000000000000;
      *(result + 176) = 0;
      *(result + 184) = 0;
      *(result + 192) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_26BFF35C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFF3630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BFF36AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BFF36F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFF375C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v7 = *v2++;
    v6 = v7;
    if ((v7 - 1) >= 5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26BECB8B4(0, *(v3 + 16) + 1, 1);
      }

      v5 = *(v3 + 16);
      v4 = *(v3 + 24);
      if (v5 >= v4 >> 1)
      {
        sub_26BECB8B4((v4 > 1), v5 + 1, 1);
      }

      *(v3 + 16) = v5 + 1;
      *(v3 + 2 * v5 + 32) = v6;
    }

    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_26BFF3840(uint64_t a1, char a2)
{
  v4 = v3;
  v5 = v2[6];
  v6 = v2[7];
  v8 = v2[8];
  v7 = v2[9];
  v9 = v2[10];
  v10 = *(a1 + 16);
  if (v10)
  {
    v44 = v4;
    v47 = MEMORY[0x277D84F90];

    v48 = v7;

    sub_26BECB8B4(0, v10, 0);
    v12 = v47;
    v13 = (a1 + 32);
    v14 = *(v47 + 16);
    v15 = v10;
    do
    {
      v17 = *v13;
      v13 += 12;
      v16 = v17;
      v47 = v12;
      v18 = *(v12 + 24);
      v19 = v14 + 1;
      if (v14 >= v18 >> 1)
      {
        sub_26BECB8B4((v18 > 1), v14 + 1, 1);
        v12 = v47;
      }

      *(v12 + 16) = v19;
      *(v12 + 2 * v14++ + 32) = v16;
      --v15;
    }

    while (v15);
    v4 = v44;
    v7 = v48;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
    v19 = *(MEMORY[0x277D84F90] + 16);

    if (!v19)
    {
LABEL_18:

      if (a2)
      {
        v27 = (a1 + 32);
        v28 = v10 + 1;
        while (--v28)
        {
          v29 = v27 + 12;
          v30 = *v27;
          v27 += 12;
          if (v30 == 3)
          {
            v45 = 3;
            v46 = *(v29 - 1);
            sub_26BFF740C(&v45, &v47);
            if (v4)
            {
              return v25 & 1;
            }

            v31 = v7;
            v32 = v47;
            if (v47)
            {

              v48 = v31;

              v34 = sub_26BEC7EF0(v33);

              v35 = sub_26BFF3D4C(v8, v34, sub_26BEBE83C, sub_26BFF3DF0);

              if ((v35 & 1) == 0 || (v36 = , v37 = sub_26BEC7F24(v36), , v38 = sub_26BFF3D4C(v48, v37, sub_26BEBE83C, sub_26BFF3F70), , (v38 & 1) == 0))
              {

                sub_26BEC8C80(v32);
                goto LABEL_16;
              }

              v40 = sub_26BEC7F58(v39);

              v43 = sub_26BFF3D4C(v9, v40, sub_26BEBE83C, sub_26BFF3DF0);

              sub_26BEC8C80(v32);
              if ((v43 & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            break;
          }
        }
      }

      v25 = 1;
      return v25 & 1;
    }
  }

  v20 = 0;
  while (1)
  {
    v21 = *(v12 + 32 + 2 * v20);
    if ((v21 - 1) >= 5)
    {
      break;
    }

LABEL_9:
    if (++v20 == v19)
    {
      goto LABEL_18;
    }
  }

  v22 = *(v8 + 16);
  v23 = 32;
  while (v22)
  {
    v24 = *(v8 + v23);
    v23 += 2;
    --v22;
    if (v24 == v21)
    {
      goto LABEL_9;
    }
  }

LABEL_16:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_26BFF3CE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = 0;
  v4 = *(v1 + 16);
  while (1)
  {
    v5 = *(a1 + 32 + 2 * v3);
    if ((v5 - 1) >= 5)
    {
      break;
    }

LABEL_3:
    if (++v3 == v2)
    {
      return 1;
    }
  }

  v6 = *(v4 + 16);
  v7 = (v4 + 32);
  while (v6)
  {
    v8 = *v7++;
    --v6;
    if (v8 == v5)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_26BFF3D4C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t), uint64_t (*a4)(void))
{
  v4 = *(a2 + 16);
  if (v4 == 1)
  {
    result = a3(&v11, a2);
    if ((v11 & 0x10000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = *(a1 + 16);
      v8 = (a1 + 32);
      do
      {
        v9 = v7-- != 0;
        result = v9;
        if (!v9)
        {
          break;
        }

        v10 = *v8++;
      }

      while (v10 != v11);
    }
  }

  else if (v4)
  {

    return a4();
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sub_26BFF3DF0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v20 = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18 = &v16;
  v19 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = &v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_26BFF40F0(v8, v3, a2);
  }

  else
  {
    v13 = swift_slowAlloc();
    bzero(v13, v12);
    sub_26BFF428C(v13, &v17);
    v14 = v17;
    MEMORY[0x26D69A4E0](v13, -1, -1);
    v9 = v14;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t sub_26BFF3F70(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v20 = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18 = &v16;
  v19 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = &v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_26BFF40F0(v8, v3, a2);
  }

  else
  {
    v13 = swift_slowAlloc();
    bzero(v13, v12);
    sub_26BFF423C(v13, &v17);
    v14 = v17;
    MEMORY[0x26D69A4E0](v13, -1, -1);
    v9 = v14;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t sub_26BFF40F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = a2 + 32;
  while (1)
  {
    v10 = *(v8 + 2 * v6);
    v11 = *(a3 + 40);
    sub_26C00B05C();
    sub_26C00B08C();
    result = sub_26C00B0CC();
    v13 = -1 << *(a3 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & *(v7 + 8 * (v14 >> 6))) != 0)
    {
      v17 = *(a3 + 48);
      if (*(v17 + 2 * v14) != v10)
      {
        v18 = ~v13;
        do
        {
          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = 1 << v14;
          if (((1 << v14) & *(v7 + 8 * (v14 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

        while (*(v17 + 2 * v14) != v10);
      }

      v9 = *(a1 + 8 * v15);
      *(a1 + 8 * v15) = v9 | v16;
      if ((v9 & v16) == 0)
      {
        break;
      }
    }

LABEL_4:
    if (++v6 == v3)
    {
      return 0;
    }
  }

  if (!__OFADD__(v5++, 1))
  {
    if (v5 == *(a3 + 16))
    {
      return 1;
    }

    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFF4254@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26BFF40F0(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

void MLS.Identity.Credential.telURI.getter()
{
  if ((*(v0 + 15) & 0x20) == 0)
  {
    return;
  }

  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x26D6996F0](0);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_13;
    }

    v2 = *(v1 + 32);
  }

  v3 = v2;
  if (!SecCertificateCopyURIs())
  {
LABEL_13:
    __break(1u);
    return;
  }

  type metadata accessor for CFArray(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
  if ((swift_dynamicCast() & 1) != 0 && v4 && !*(v4 + 16))
  {
  }
}

uint64_t sub_26BFF43D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((*(v2 + 15) & 0x20) != 0)
  {
    v5 = result;
    v6 = *v2;
    if ((*v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D6996F0](0);
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v7 = *(v6 + 32);
    }

    v8 = v7;
    v5();
    sub_26C00916C();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v9 = sub_26C00921C();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, v4, 1, v9);
}

void MLS.Identity.Credential.participantInfoNotAfter.getter(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for MLS.Time();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s18RCSParticipantInfoVMa();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 15) & 0x20) == 0)
  {
    v13 = sub_26C00921C();
    (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    return;
  }

  v14 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    v15 = v10;
    v16 = MEMORY[0x26D6996F0](0);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v15 = v10;
    v16 = *(v14 + 32);
  }

  v17 = v16;
  sub_26BECF754(v17);
  if (v2)
  {
  }

  else
  {
    v18 = *(v15 + 20);
    v19 = type metadata accessor for MLS.Validity();
    sub_26BEBF078(&v12[v18 + *(v19 + 20)], v7);
    Date.init(_:)(v7, a1);

    sub_26BFF55C8(v12);
    v20 = sub_26C00921C();
    (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
  }
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLS.Identity.SigningIdentity.verifyConsistentKeys()()
{
  v1 = *v0;
  v2 = v0[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    if (v1 >> 62)
    {
      if (v1 < 0)
      {
        v22 = *v0;
      }

      v10 = sub_26C00AB8C();
      if (v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_5:
        if ((v1 & 0xC000000000000001) != 0)
        {

          v11 = MEMORY[0x26D6996F0](0, v1);
          sub_26BE0489C(v1, v2);
        }

        else
        {
          if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return v10;
          }

          v11 = *(v1 + 32);
        }

        v12 = SecCertificateCopyKey(v11);
        if (v12)
        {
          v13 = v12;
          v14 = SecKeyCopyExternalRepresentation(v13, 0);
          if (v14)
          {
            v15 = v14;
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              sub_26C0090FC();
            }
          }

          v16 = v0[5];
          v17 = v0[6];
          __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
          v18 = (*(*(v17 + 8) + 16))(v16);
          v20 = v19;
          type metadata accessor for MLS.IdentityError();
          sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
          swift_allocError();
          *v21 = v18;
          v21[1] = v20;
          v21[2] = 0;
          v21[3] = 0xF000000000000000;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        else
        {
          type metadata accessor for MLS.IdentityError();
          sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        goto LABEL_20;
      }
    }

    type metadata accessor for MLS.IdentityError();
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_20:
    LOBYTE(v10) = 1;
    return v10;
  }

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = *(v4 + 8);
  v6 = *(v5 + 16);
  sub_26BE00608(v1, v2);
  v7 = v6(v3, v5);
  v9 = v8;
  LOBYTE(v5) = sub_26BE02DEC(v1, v2, v7, v8);
  sub_26BE00258(v7, v9);
  sub_26BE0489C(v1, v2);
  LOBYTE(v10) = v5 & 1;
  return v10;
}

uint64_t MLS.Identity.SigningIdentity.verifyTrust(certs:vendorId:telURI:timestamp:anchors:)(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v64 = a7;
  v66 = a1;
  trust[1] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v61 - v12;
  v14 = sub_26C00921C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v62 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v15;
  trust[0] = 0;
  v18 = *(v15 + 48);
  v65 = a6;
  v18(a6, 1, v14);
  if (a5)
  {
    a5 = sub_26C00A45C();
  }

  if (a3)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_26C00A88C();
  }

  RCSEncryption = SecPolicyCreateRCSEncryption();

  type metadata accessor for SecCertificate(0);
  v21 = sub_26C00A6EC();
  v22 = SecTrustCreateWithCertificates(v21, RCSEncryption, trust);

  v23 = trust[0];
  if (v22)
  {
    v24 = 1;
  }

  else
  {
    v24 = trust[0] == 0;
  }

  if (v24)
  {
    type metadata accessor for MLS.IdentityError();
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
    swift_allocError();
    *v25 = v22;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_36;
  }

  sub_26BE30C8C(v65, v13);
  v26 = (v18)(v13, 1, v14);
  if (v26 != 1)
  {
    v66 = RCSEncryption;
    v28 = v62;
    v29 = v63;
    (*(v63 + 32))(v62, v13, v14);
    v30 = v23;
    v31 = sub_26C00919C();
    v32 = SecTrustSetVerifyDate(v30, v31);

    if (v32)
    {
      type metadata accessor for MLS.IdentityError();
      sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
      swift_allocError();
      *v33 = v32;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v29 + 8))(v28, v14);
      goto LABEL_36;
    }

    (*(v29 + 8))(v28, v14);
    RCSEncryption = v66;
    if (!v64)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v27 = v23;
  sub_26BE2E258(v13, &qword_28045E4A8, &unk_26C00ECB0);
  if (v64)
  {
LABEL_18:
    v34 = sub_26C00A6EC();
    v35 = SecTrustSetAnchorCertificates(v23, v34);

    if (!v35)
    {
      goto LABEL_20;
    }

    type metadata accessor for MLS.IdentityError();
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
    swift_allocError();
    *v36 = v35;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_36:
    goto LABEL_37;
  }

LABEL_20:
  error = 0;
  if (!SecTrustEvaluateWithError(v23, &error))
  {
    v37 = error;
    if (error)
    {
      type metadata accessor for CFError(0);
      sub_26BFF6980(&qword_280460950, type metadata accessor for CFError);
      v38 = swift_allocError();
      *v39 = v37;
      v40 = v37;
      v41 = sub_26C008F7C();
    }

    else
    {
      v41 = 0;
    }

    v66 = RCSEncryption;
    if (qword_28045E1D8 != -1)
    {
      swift_once();
    }

    v42 = sub_26C009A5C();
    __swift_project_value_buffer(v42, qword_280479338);
    v43 = v41;
    v44 = sub_26C009A3C();
    v45 = sub_26C00AA0C();

    v46 = os_log_type_enabled(v44, v45);
    v64 = v43;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v67 = v48;
      *v47 = 136315138;
      if (v41)
      {
        v49 = [v43 description];
        v50 = v41;
        v51 = v49;
        v52 = sub_26C00A48C();
        v54 = v53;

        v41 = v50;
      }

      else
      {
        v54 = 0xED0000726F727265;
        v52 = 0x206E776F6E6B6E75;
      }

      v55 = sub_26BE29740(v52, v54, &v67);

      *(v47 + 4) = v55;
      _os_log_impl(&dword_26BDFE000, v44, v45, "RCS verification failed: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x26D69A4E0](v48, -1, -1);
      MEMORY[0x26D69A4E0](v47, -1, -1);
    }

    IsExpiredOnly = SecTrustIsExpiredOnly();
    type metadata accessor for MLS.IdentityError();
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
    swift_allocError();
    v58 = v66;
    if (IsExpiredOnly)
    {
      sub_26BE30C8C(v65, v57);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      *v57 = v41;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    goto LABEL_36;
  }

LABEL_37:
  v59 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t MLS.Identity.SigningIdentity.verify(timestamp:vendorId:telURI:anchors:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v13 = _s18RCSParticipantInfoVMa();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MLS.Identity.SigningIdentity.verifyConsistentKeys()();
  if (v18)
  {
    return 1;
  }

  if (!v17 || (*(v6 + 15) & 0x20) == 0)
  {
    goto LABEL_4;
  }

  v20 = *v6;
  if (!(v20 >> 62))
  {
    result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_4:
    type metadata accessor for MLS.IdentityError();
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return 1;
  }

  v28 = 0;
  result = sub_26C00AB8C();
  v18 = v28;
  if (!result)
  {
    goto LABEL_4;
  }

LABEL_8:
  v28 = v18;
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x26D6996F0](0, v20);
LABEL_11:
    v22 = v21;
    v23 = v28;
    sub_26BECF754(v22);
    if (!v23)
    {
      v24 = *v16;
      if ((a3 & 1) == 0 && v24 != a2)
      {
        v25 = *v16;
        type metadata accessor for MLS.IdentityError();
        sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
        swift_allocError();
        *v26 = a2;
        v26[1] = v25;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

LABEL_15:
        sub_26BFF55C8(v16);
        return 1;
      }

      MLS.Identity.SigningIdentity.verifyTrust(certs:vendorId:telURI:timestamp:anchors:)(v20, v24, 0, a4, a5, a1, a6);
      if ((sub_26BED00C4(v22, a1) & 1) == 0)
      {
        type metadata accessor for MLS.IdentityError();
        sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_15;
      }

      sub_26BFF55C8(v16);
    }

    return 1;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v20 + 32);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFF55C8(uint64_t a1)
{
  v2 = _s18RCSParticipantInfoVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFF5670(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_26BFF5700(uint64_t a1, uint64_t a2)
{
  v5 = _s18RCSParticipantInfoVMa();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v9 = *(v2 + 24);
  if (v9 == 2)
  {
    v27[3] = &type metadata for SwiftMLSFeatureFlags;
    v27[4] = sub_26BE295D8();
    LOBYTE(v27[0]) = 1;
    v10 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(v27);
    if ((v10 & 1) == 0)
    {
      return 1;
    }
  }

  else if ((v9 & 1) == 0)
  {
    return 1;
  }

  v11 = *(v2 + 16);

  result = MLS.Identity.SigningIdentity.verifyConsistentKeys()();
  v14 = v13;
  if (v13)
  {

LABEL_10:
    if (qword_28045E1D8 != -1)
    {
      swift_once();
    }

    v15 = sub_26C009A5C();
    __swift_project_value_buffer(v15, qword_280479338);
    v16 = v14;
    v17 = sub_26C009A3C();
    v18 = sub_26C00AA0C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_26BDFE000, v17, v18, "Error verifying member: %@", v19, 0xCu);
      sub_26BE2E258(v20, &qword_28045FB40, &unk_26C021280);
      MEMORY[0x26D69A4E0](v20, -1, -1);
      MEMORY[0x26D69A4E0](v19, -1, -1);
    }

    swift_willThrow();
    return 1;
  }

  if ((result & 1) == 0 || (*(a1 + 15) & 0x20) == 0)
  {
LABEL_9:

    type metadata accessor for MLS.IdentityError();
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
    v14 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_10;
  }

  v23 = *a1;
  v24 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
    result = sub_26C00AB8C();
    if (!result)
    {
      goto LABEL_9;
    }
  }

  else if (!*(v24 + 16))
  {
    goto LABEL_9;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x26D6996F0](0, v23);
    goto LABEL_21;
  }

  if (*(v24 + 16))
  {
    v25 = *(v23 + 32);
LABEL_21:
    v26 = v25;
    sub_26BECF754(v26);
    MLS.Identity.SigningIdentity.verifyTrust(certs:vendorId:telURI:timestamp:anchors:)(v23, *v8, 0, 0, 0, a2, v11);

    if ((sub_26BED00C4(v26, a2) & 1) == 0)
    {
      type metadata accessor for MLS.IdentityError();
      sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
      v14 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_26BFF55C8(v8);
      goto LABEL_10;
    }

    sub_26BFF55C8(v8);

    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFF5C10(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  v13 = *(v6 + 24);
  if (v13 == 2)
  {
    v25[3] = &type metadata for SwiftMLSFeatureFlags;
    v25[4] = sub_26BE295D8();
    LOBYTE(v25[0]) = 1;
    v14 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(v25);
    if ((v14 & 1) == 0)
    {
      return 1;
    }
  }

  else if ((v13 & 1) == 0)
  {
    return 1;
  }

  v15 = *(v6 + 16);

  MLS.Identity.SigningIdentity.verify(timestamp:vendorId:telURI:anchors:)(a2, a3, a4 & 1, a5, a6, v15);
  if (v7)
  {

    if (qword_28045E1D8 != -1)
    {
      swift_once();
    }

    v16 = sub_26C009A5C();
    __swift_project_value_buffer(v16, qword_280479338);
    v17 = v7;
    v18 = sub_26C009A3C();
    v19 = sub_26C00AA0C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v7;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26BDFE000, v18, v19, "Error verifying identity: %@", v20, 0xCu);
      sub_26BE2E258(v21, &qword_28045FB40, &unk_26C021280);
      MEMORY[0x26D69A4E0](v21, -1, -1);
      MEMORY[0x26D69A4E0](v20, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
  }

  return 1;
}