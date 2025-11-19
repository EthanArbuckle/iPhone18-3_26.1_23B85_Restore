uint64_t CRCKError.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_27525A4A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_275258F58()
{
  sub_27525A4F0();
  sub_27525A460();
  return sub_27525A500();
}

uint64_t sub_275258FD4()
{
  sub_27525A4F0();
  sub_27525A460();
  return sub_27525A500();
}

uint64_t sub_27525902C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_27525A4A0();

  *a2 = v5 != 0;
  return result;
}

void sub_275259080(uint64_t a1@<X8>)
{
  strcpy(a1, "Missing CRDT");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t CRCKMergeable.crdt.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_27525A470();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t CRCKMergeable.crdt.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_27525A470();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

uint64_t CRCKMergeable.init(crdt:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  v7 = sub_27525A470();
  (*(*(v7 - 8) + 40))(a4, a1, v7);
  result = type metadata accessor for CRCKMergeable();
  *(a4 + *(result + 36)) = a2;
  return result;
}

char *CRCKMergeable.mergeableDeltas(for:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = v2;
  v36 = sub_27525A440();
  v35 = *(v36 - 8);
  v5 = *(v35 + 64);
  (MEMORY[0x28223BE20])();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v9 = sub_27525A470();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = (MEMORY[0x28223BE20])();
  v14 = &v32 - v13;
  v15 = *(v8 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, v3, v9);
  if ((*(v15 + 48))(v14, 1, v8) == 1)
  {
    (*(v10 + 8))(v14, v9);
    sub_275259684();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v15 + 32))(v18, v14, v8);
    v14 = *(v3 + *(a2 + 36));
    v19 = v35;
    v20 = v36;
    (*(v35 + 104))(v7, *MEMORY[0x277CFB5F0], v36);
    v21 = *(a2 + 24);
    v22 = v34;
    v23 = sub_27525A400();
    if (v22)
    {
      (*(v19 + 8))(v7, v20);
    }

    else
    {
      v25 = v23;
      v26 = v7;
      v27 = v24;
      (*(v19 + 8))(v26, v20);
      v28 = objc_allocWithZone(MEMORY[0x277CBC458]);
      sub_2752596D8(v25, v27);
      v29 = sub_27525A3E0();
      v30 = [v28 initWithData:v29 metadata:v33];

      sub_27525972C(v25, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8DD8, &qword_27525A6C0);
      v14 = swift_allocObject();
      *(v14 + 1) = xmmword_27525A6B0;
      *(v14 + 4) = v30;
      sub_27525972C(v25, v27);
    }

    (*(v15 + 8))(v18, v8);
  }

  return v14;
}

unint64_t sub_275259684()
{
  result = qword_2809B8DD0;
  if (!qword_2809B8DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B8DD0);
  }

  return result;
}

uint64_t sub_2752596D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_27525972C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRCKMergeable.merge(_:)(Swift::OpaquePointer a1)
{
  v4 = v3;
  v5 = v1;
  v59[1] = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8DE0, &qword_27525A6C8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - v9;
  v54 = v5;
  v11 = *(v5 + 16);
  v12 = sub_27525A470();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v15 = MEMORY[0x28223BE20](v12);
  v50 = &v38 - v16;
  v53 = v11;
  v17 = *(v11 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1._rawValue >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; v19 = v37)
  {
    v48 = v19;
    v49 = v2;
    v23 = 0;
    v51 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
    v52 = a1._rawValue & 0xC000000000000001;
    v43 = (v17 + 6);
    v44 = (v13 + 16);
    v41 = v10;
    v42 = v13 + 8;
    v40 = (v17 + 1);
    v39 = (v17 + 4);
    v38 = (v17 + 7);
    v46 = v21;
    rawValue = a1._rawValue;
    v45 = i;
    while (1)
    {
      if (v52)
      {
        v19 = MEMORY[0x277C70440](v23, a1._rawValue);
      }

      else
      {
        if (v23 >= *(v51 + 16))
        {
          goto LABEL_23;
        }

        v19 = *(a1._rawValue + v23 + 4);
      }

      v17 = v19;
      v10 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v59[0] = 0;
      v26 = [v19 dataWithError_];
      v27 = v59[0];
      if (!v26)
      {
        v35 = v27;
        sub_27525A3D0();

        swift_willThrow();
LABEL_20:

        goto LABEL_21;
      }

      v58 = v17;
      v28 = sub_27525A3F0();
      v13 = v29;

      sub_2752596D8(v28, v13);
      v2 = v53;
      v17 = *(v54 + 24);
      sub_27525A410();
      if (v4)
      {
        sub_27525972C(v28, v13);
        v17 = v58;
        goto LABEL_20;
      }

      v55 = v23;
      v56 = v23 + 1;
      v57 = 0;
      v30 = v49;
      v31 = v50;
      v32 = v48;
      (*v44)(v50, v49, v48);
      v10 = v43;
      v33 = *v43;
      if ((*v43)(v31, 1, v2) == 1)
      {

        sub_27525972C(v28, v13);
        v17 = v42;
        v13 = *v42;
        (*v42)(v31, v32);
        (v13)(v30, v32);
        v21 = v46;
        (*v39)(v30, v46, v2);
        v19 = (*v38)(v30, 0, 1, v2);
        v4 = v57;
        a1._rawValue = rawValue;
        v24 = v45;
        v25 = v55;
      }

      else
      {
        (*v42)(v31, v32);
        if (v33(v30, 1, v2))
        {
          v21 = v46;
          (*v40)(v46, v2);
          sub_27525972C(v28, v13);

          v2 = 1;
          v4 = v57;
          v10 = v41;
        }

        else
        {
          v10 = v41;
          v21 = v46;
          sub_27525A420();

          sub_27525972C(v28, v13);
          (*v40)(v21, v2);
          v2 = 0;
          v4 = v57;
        }

        v24 = v45;
        v25 = v55;
        v34 = sub_27525A430();
        (*(*(v34 - 8) + 56))(v10, v2, 1, v34);
        v19 = sub_275259D44(v10);
        a1._rawValue = rawValue;
      }

      v23 = v25 + 1;
      if (v56 == v24)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v37 = v19;
    i = sub_27525A490();
  }

LABEL_21:
  v36 = *MEMORY[0x277D85DE8];
}

uint64_t sub_275259D44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8DE0, &qword_27525A6C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_275259DB0()
{
  result = qword_2809B8DE8;
  if (!qword_2809B8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B8DE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRCKError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CRCKError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_275259F2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_27525A470();
  if (v3 <= 0x3F)
  {
    result = sub_27525A450();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_275259FB4(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_27525A124(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *v22 = v23;
  }

  else if (v7 >= a2)
  {
    v24 = *(v5 + 56);

    v24();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}